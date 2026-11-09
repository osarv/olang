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
%"compiler/types:data" = type { i32, i64, i64, i64, i64, i64, i64, i64 }
%"compiler/types:decl" = type { i64, i32, i32, i32 }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/types:body" = type { i32, i32, i32, i1, i1 }
%"compiler/types:refWalk" = type { ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/types:codeWalk" = type { ptr, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/types:DtorWalk" = type { ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
define dso_local { i64, ptr } @compiler_2ftypes_2eDemangle(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i1
  %l3 = alloca %"std/prelude/text:StringBuilder"
  %l4 = alloca i64
  %l5 = alloca i8
  %lp6 = alloca ptr
  %l11 = alloca i1
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l18 = alloca i1
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l25 = alloca %"std/prelude/text:StringBuilder"
  %l31 = alloca { i64, ptr }
  %l45 = alloca i1
  %l46 = alloca { i64, ptr }
  %l59 = alloca i1
  %l60 = alloca { i64, ptr }
  %l64 = alloca i1
  %l65 = alloca i1
  %l66 = alloca { i64, ptr }
  %l70 = alloca i1
  %l71 = alloca ptr
  %l72 = alloca { i64, ptr }
  %l76 = alloca i64
  %l77 = alloca i64
  %l78 = alloca { i64, ptr }
  %l82 = alloca i64
  %l89 = alloca i1
  %l98 = alloca { i64, ptr }
  %l100 = alloca { i64, ptr }
  %l101 = alloca i1
  %l106 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t1, ptr %l1, !tbaa !27
  store i1 false, ptr %l2, !tbaa !21
  %t3 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  %t7 = icmp eq i64 %t5, 122
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t9, ptr %l12, !tbaa !27
  %t10 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t10, 0
  store i64 %t11, ptr %l13, !tbaa !24
  %t12 = icmp sge i64 88, 0
  br i1 %t12, label %bb3, label %bb4
bb2:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb10
bb3:
  %t14 = icmp sle i64 88, 90
  br i1 %t14, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_c38cb1fa51df222a_dffb1d180717405e)
  unreachable
bb5:
  %t16 = load i64, ptr %l13, !tbaa !24
  %t17 = icmp sle i64 90, %t16
  br i1 %t17, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_c38cb1fa51df222a_dffb1d180717405e)
  unreachable
bb7:
  %t19 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !27
  %t21 = getelementptr i8, ptr %t20, i64 88
  %t22 = sub i64 90, 88
  %t23 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t24 = insertvalue { i64, ptr } %t23, ptr %t21, 1
  %t26 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t24, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d0, i32 0, i32 1) })
  store i1 %t26, ptr %l18
  br label %bb9
bb8:
  call void @__olang_check_failed(ptr @olang_loc_c38cb1fa51df222a_dffb1d180717405e)
  unreachable
bb9:
  %t27 = load i1, ptr %l18, !tbaa !21
  store i1 %t27, ptr %l11, !tbaa !21
  br label %bb10
bb10:
  %t28 = load i1, ptr %l11, !tbaa !21
  br i1 %t28, label %bb11, label %bb12
bb11:
  %t29 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t29, ptr %l19, !tbaa !27
  %t30 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t30, 0
  store i64 %t31, ptr %l20, !tbaa !24
  %t32 = icmp sge i64 0, 0
  br i1 %t32, label %bb13, label %bb14
bb12:
  br label %bb19
bb13:
  %t34 = icmp sle i64 0, 88
  br i1 %t34, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_84fae12c7c668807_3becc0cabb21395b)
  unreachable
bb15:
  %t36 = load i64, ptr %l20, !tbaa !24
  %t37 = icmp sle i64 88, %t36
  br i1 %t37, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_84fae12c7c668807_3becc0cabb21395b)
  unreachable
bb17:
  %t39 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !27
  %t41 = getelementptr i8, ptr %t40, i64 0
  %t42 = sub i64 88, 0
  %t43 = insertvalue { i64, ptr } undef, i64 %t42, 0
  %t44 = insertvalue { i64, ptr } %t43, ptr %t41, 1
  store { i64, ptr } %t44, ptr %l1, !tbaa !27
  store i1 true, ptr %l2, !tbaa !21
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_84fae12c7c668807_3becc0cabb21395b)
  unreachable
bb19:
  %t46 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t46, ptr %l25
  br label %bb20
bb20:
  %t47 = load %"std/prelude/text:StringBuilder", ptr %l25
  store %"std/prelude/text:StringBuilder" %t47, ptr %l3
  store i64 0, ptr %l4, !tbaa !24
  br label %bb21
bb21:
  %t48 = load i64, ptr %l4, !tbaa !24
  %t49 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t51 = extractvalue { i64, ptr } %t49, 0
  %t54 = icmp slt i64 %t48, %t51
  %t56 = xor i1 %t54, true
  br i1 %t56, label %bb22, label %bb23
bb22:
  br label %bb57
bb23:
  br label %bb24
bb24:
  %t58 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t58, ptr %l31, !tbaa !27
  %t59 = load i64, ptr %l4, !tbaa !24
  %t61 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !27
  %t63 = getelementptr i8, ptr %t62, i64 %t59
  %t64 = load i8, ptr %t63, !tbaa !32
  store i8 %t64, ptr %l5, !tbaa !22
  %t66 = load i8, ptr %l5, !tbaa !22
  %t68 = icmp ne i8 %t66, 95
  br i1 %t68, label %bb25, label %bb26
bb25:
  %t70 = load i8, ptr %l5, !tbaa !22
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l3, i8 %t70)
  br label %bb27
bb26:
  br label %bb28
bb27:
  %t73 = load i64, ptr %l4, !tbaa !24
  %t75 = add i64 %t73, 1
  store i64 %t75, ptr %l4, !tbaa !24
  br label %bb56
bb28:
  %t77 = load i64, ptr %l4, !tbaa !24
  %t79 = add i64 %t77, 1
  %t80 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t82 = extractvalue { i64, ptr } %t80, 0
  %t85 = icmp slt i64 %t79, %t82
  br i1 %t85, label %bb29, label %bb30
bb29:
  %t87 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t87, ptr %l46, !tbaa !27
  %t88 = load i64, ptr %l4, !tbaa !24
  %t90 = add i64 %t88, 1
  %t92 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t93 = load ptr, ptr %t92, !tbaa !27
  %t94 = getelementptr i8, ptr %t93, i64 %t90
  %t95 = load i8, ptr %t94, !tbaa !32
  %t97 = icmp eq i8 %t95, 95
  store i1 %t97, ptr %l45, !tbaa !21
  br label %bb31
bb30:
  store i1 false, ptr %l45, !tbaa !21
  br label %bb31
bb31:
  %t99 = load i1, ptr %l45, !tbaa !21
  br i1 %t99, label %bb32, label %bb33
bb32:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l3, i8 95)
  br label %bb34
bb33:
  br label %bb35
bb34:
  %t101 = load i64, ptr %l4, !tbaa !24
  %t103 = add i64 %t101, 2
  store i64 %t103, ptr %l4, !tbaa !24
  br label %bb56
bb35:
  %t105 = load i64, ptr %l4, !tbaa !24
  %t107 = add i64 %t105, 2
  %t108 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t110 = extractvalue { i64, ptr } %t108, 0
  %t113 = icmp slt i64 %t107, %t110
  br i1 %t113, label %bb36, label %bb37
bb36:
  %t115 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t115, ptr %l60, !tbaa !27
  %t116 = load i64, ptr %l4, !tbaa !24
  %t118 = add i64 %t116, 1
  %t120 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t121 = load ptr, ptr %t120, !tbaa !27
  %t122 = getelementptr i8, ptr %t121, i64 %t118
  %t123 = load i8, ptr %t122, !tbaa !32
  %t125 = call i1 @compiler_2ftypes_2esymbolHexDigit(i8 %t123)
  store i1 %t125, ptr %l64
  br label %bb38
bb37:
  store i1 false, ptr %l59, !tbaa !21
  br label %bb39
bb38:
  %t126 = load i1, ptr %l64, !tbaa !21
  store i1 %t126, ptr %l59, !tbaa !21
  br label %bb39
bb39:
  %t127 = load i1, ptr %l59, !tbaa !21
  br i1 %t127, label %bb40, label %bb41
bb40:
  %t128 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t128, ptr %l66, !tbaa !27
  %t129 = load i64, ptr %l4, !tbaa !24
  %t131 = add i64 %t129, 2
  %t133 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t134 = load ptr, ptr %t133, !tbaa !27
  %t135 = getelementptr i8, ptr %t134, i64 %t131
  %t136 = load i8, ptr %t135, !tbaa !32
  %t138 = call i1 @compiler_2ftypes_2esymbolHexDigit(i8 %t136)
  store i1 %t138, ptr %l70
  br label %bb42
bb41:
  store i1 false, ptr %l65, !tbaa !21
  br label %bb43
bb42:
  %t139 = load i1, ptr %l70, !tbaa !21
  store i1 %t139, ptr %l65, !tbaa !21
  br label %bb43
bb43:
  %t140 = load i1, ptr %l65, !tbaa !21
  br i1 %t140, label %bb44, label %bb45
bb44:
  store ptr %l3, ptr %l71, !tbaa !29
  %t141 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t141, ptr %l72, !tbaa !27
  %t142 = load i64, ptr %l4, !tbaa !24
  %t144 = add i64 %t142, 1
  %t146 = getelementptr { i64, ptr }, ptr %l72, i32 0, i32 1
  %t147 = load ptr, ptr %t146, !tbaa !27
  %t148 = getelementptr i8, ptr %t147, i64 %t144
  %t149 = load i8, ptr %t148, !tbaa !32
  %t151 = call i64 @compiler_2ftypes_2esymbolHexValue(i8 %t149)
  store i64 %t151, ptr %l76
  br label %bb46
bb45:
  br label %bb49
bb46:
  %t152 = load i64, ptr %l76, !tbaa !24
  %t153 = mul i64 %t152, 16
  store i64 %t153, ptr %l77, !tbaa !24
  %t154 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t154, ptr %l78, !tbaa !27
  %t155 = load i64, ptr %l4, !tbaa !24
  %t157 = add i64 %t155, 2
  %t159 = getelementptr { i64, ptr }, ptr %l78, i32 0, i32 1
  %t160 = load ptr, ptr %t159, !tbaa !27
  %t161 = getelementptr i8, ptr %t160, i64 %t157
  %t162 = load i8, ptr %t161, !tbaa !32
  %t164 = call i64 @compiler_2ftypes_2esymbolHexValue(i8 %t162)
  store i64 %t164, ptr %l82
  br label %bb47
bb47:
  %t165 = load i64, ptr %l77, !tbaa !24
  %t166 = load i64, ptr %l82, !tbaa !24
  %t167 = add i64 %t165, %t166
  %t169 = trunc i64 %t167 to i8
  %t171 = load ptr, ptr %l71, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %t171, i8 %t169)
  br label %bb48
bb48:
  %t173 = load i64, ptr %l4, !tbaa !24
  %t175 = add i64 %t173, 3
  store i64 %t175, ptr %l4, !tbaa !24
  br label %bb56
bb49:
  %t177 = load i1, ptr %l2, !tbaa !21
  br i1 %t177, label %bb50, label %bb51
bb50:
  %t179 = load i64, ptr %l4, !tbaa !24
  %t181 = add i64 %t179, 2
  %t182 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t184 = extractvalue { i64, ptr } %t182, 0
  %t187 = icmp sge i64 %t181, %t184
  store i1 %t187, ptr %l89, !tbaa !21
  br label %bb52
bb51:
  store i1 false, ptr %l89, !tbaa !21
  br label %bb52
bb52:
  %t189 = load i1, ptr %l89, !tbaa !21
  br i1 %t189, label %bb53, label %bb54
bb53:
  br label %bb57
bb54:
  br label %bb55
bb55:
  %t190 = load { i64, ptr }, ptr %l0, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t190, ptr %rv
  br label %ret
bb56:
  br label %bb21
bb57:
  %t194 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l3)
  store { i64, ptr } %t194, ptr %l98
  br label %bb58
bb58:
  %t195 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t195, ptr %lp6
  %t196 = load { i64, ptr }, ptr %l98, !tbaa !27
  %t197 = load ptr, ptr %lp6
  store { i64, ptr } %t196, ptr %t197, !tbaa !27
  %t198 = load ptr, ptr %lp6
  %t199 = load { i64, ptr }, ptr %t198, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) }, ptr %l100, !tbaa !27
  %t201 = load { i64, ptr }, ptr %l100, !tbaa !27
  %t202 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v1, ptr %s0, { i64, ptr } %t199, { i64, ptr } %t201)
  store i1 %t202, ptr %l101
  br label %bb59
bb59:
  %t203 = load i1, ptr %l101, !tbaa !21
  %t204 = xor i1 %t203, true
  br i1 %t204, label %bb60, label %bb61
bb60:
  %t206 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t208 = extractvalue { i64, ptr } %t206, 1
  %t209 = extractvalue { i64, ptr } %t206, 0
  %t210 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t209)
  call void @olang_textcopy(ptr %t210, ptr %t208, i64 %t209)
  %t211 = insertvalue { i64, ptr } undef, i64 %t209, 0
  %t212 = insertvalue { i64, ptr } %t211, ptr %t210, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t212, ptr %rv
  br label %ret
bb61:
  br label %bb62
bb62:
  %t214 = load i1, ptr %l2, !tbaa !21
  br i1 %t214, label %bb63, label %bb64
bb63:
  %t216 = load ptr, ptr %lp6
  %t217 = load { i64, ptr }, ptr %t216, !tbaa !27
  %t219 = extractvalue { i64, ptr } %t217, 1
  %t220 = extractvalue { i64, ptr } %t217, 0
  %t221 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t222 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  %t223 = add i64 %t220, %t222
  %t224 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t223)
  call void @olang_textcopy(ptr %t224, ptr %t219, i64 %t220)
  %t225 = getelementptr i8, ptr %t224, i64 %t220
  call void @olang_textcopy(ptr %t225, ptr %t221, i64 %t222)
  %t226 = insertvalue { i64, ptr } undef, i64 %t223, 0
  %t227 = insertvalue { i64, ptr } %t226, ptr %t224, 1
  store { i64, ptr } %t227, ptr %l106, !tbaa !27
  br label %bb65
bb64:
  %t229 = load ptr, ptr %lp6
  %t230 = load { i64, ptr }, ptr %t229, !tbaa !27
  store { i64, ptr } %t230, ptr %l106, !tbaa !27
  br label %bb65
bb65:
  call void @__olang_scope_close(ptr %s0)
  %t232 = load { i64, ptr }, ptr %l106, !tbaa !27
  store { i64, ptr } %t232, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2ftypes_2eIntWidth(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l11 = alloca i1
  %l15 = alloca i1
  %l16 = alloca { i64, ptr }
  %l19 = alloca i1
  %l20 = alloca { i64, ptr }
  %l23 = alloca i1
  %l24 = alloca { i64, ptr }
  %l33 = alloca i64
  %l36 = alloca i64
  %l54 = alloca { i64, ptr }
  %l57 = alloca i1
  %l62 = alloca { i64, ptr }
  %l73 = alloca i1
  %rv = alloca i64
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp slt i64 %t3, 2
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb3
bb2:
  %t7 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  %t11 = icmp sgt i64 %t9, 4
  store i1 %t11, ptr %l11, !tbaa !21
  br label %bb3
bb3:
  %t13 = load i1, ptr %l11, !tbaa !21
  br i1 %t13, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb9
bb5:
  %t14 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t14, ptr %l16, !tbaa !27
  %t15 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !27
  %t17 = getelementptr i8, ptr %t16, i64 0
  %t18 = load i8, ptr %t17, !tbaa !32
  %t20 = icmp ne i8 %t18, 73
  br i1 %t20, label %bb6, label %bb7
bb6:
  %t22 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t22, ptr %l20, !tbaa !27
  %t23 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !27
  %t25 = getelementptr i8, ptr %t24, i64 0
  %t26 = load i8, ptr %t25, !tbaa !32
  %t28 = icmp ne i8 %t26, 85
  store i1 %t28, ptr %l19, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb8
bb8:
  %t30 = load i1, ptr %l19, !tbaa !21
  store i1 %t30, ptr %l15, !tbaa !21
  br label %bb9
bb9:
  %t31 = load i1, ptr %l15, !tbaa !21
  br i1 %t31, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l23, !tbaa !21
  br label %bb12
bb11:
  %t32 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t32, ptr %l24, !tbaa !27
  %t33 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !27
  %t35 = getelementptr i8, ptr %t34, i64 1
  %t36 = load i8, ptr %t35, !tbaa !32
  %t38 = icmp eq i8 %t36, 48
  store i1 %t38, ptr %l23, !tbaa !21
  br label %bb12
bb12:
  %t40 = load i1, ptr %l23, !tbaa !21
  br i1 %t40, label %bb13, label %bb14
bb13:
  store i64 0, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  store i64 0, ptr %l1, !tbaa !24
  store i64 1, ptr %l2, !tbaa !24
  %t42 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t44 = extractvalue { i64, ptr } %t42, 0
  store i64 %t44, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t46 = load i64, ptr %l3, !tbaa !24
  %t47 = load i64, ptr %l2, !tbaa !24
  %t50 = icmp sgt i64 %t46, %t47
  br i1 %t50, label %bb16, label %bb17
bb16:
  %t52 = load i64, ptr %l4, !tbaa !24
  %t54 = icmp sgt i64 %t52, 0
  br i1 %t54, label %bb18, label %bb19
bb17:
  store i64 0, ptr %l33, !tbaa !24
  br label %bb21
bb18:
  %t56 = load i64, ptr %l3, !tbaa !24
  %t57 = load i64, ptr %l2, !tbaa !24
  %t60 = sub i64 %t56, %t57
  %t61 = load i64, ptr %l4, !tbaa !24
  %t64 = add i64 %t60, %t61
  %t66 = sub i64 %t64, 1
  %t67 = load i64, ptr %l4, !tbaa !24
  %t70 = sdiv i64 %t66, %t67
  store i64 %t70, ptr %l36, !tbaa !24
  br label %bb20
bb19:
  store i64 0, ptr %l36, !tbaa !24
  br label %bb20
bb20:
  %t72 = load i64, ptr %l36, !tbaa !24
  store i64 %t72, ptr %l33, !tbaa !24
  br label %bb21
bb21:
  %t73 = load i64, ptr %l33, !tbaa !24
  store i64 %t73, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb22
bb22:
  %t74 = load i64, ptr %l6, !tbaa !24
  %t75 = load i64, ptr %l5, !tbaa !24
  %t78 = icmp slt i64 %t74, %t75
  %t80 = xor i1 %t78, true
  br i1 %t80, label %bb23, label %bb24
bb23:
  br label %bb31
bb24:
  br label %bb25
bb25:
  %t82 = load i64, ptr %l2, !tbaa !24
  %t83 = load i64, ptr %l6, !tbaa !24
  %t84 = load i64, ptr %l4, !tbaa !24
  %t87 = mul i64 %t83, %t84
  %t90 = add i64 %t82, %t87
  store i64 %t90, ptr %l7, !tbaa !24
  %t92 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t92, ptr %l54, !tbaa !27
  %t93 = load i64, ptr %l7, !tbaa !24
  %t95 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !27
  %t97 = getelementptr i8, ptr %t96, i64 %t93
  %t98 = load i8, ptr %t97, !tbaa !32
  %t100 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t98)
  store i1 %t100, ptr %l57
  br label %bb26
bb26:
  %t101 = load i1, ptr %l57, !tbaa !21
  %t102 = xor i1 %t101, true
  br i1 %t102, label %bb27, label %bb28
bb27:
  store i64 0, ptr %rv
  br label %ret
bb28:
  br label %bb29
bb29:
  %t105 = load i64, ptr %l1, !tbaa !24
  %t107 = mul i64 %t105, 10
  %t108 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t108, ptr %l62, !tbaa !27
  %t109 = load i64, ptr %l7, !tbaa !24
  %t111 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t112 = load ptr, ptr %t111, !tbaa !27
  %t113 = getelementptr i8, ptr %t112, i64 %t109
  %t114 = load i8, ptr %t113, !tbaa !32
  %t116 = zext i8 %t114 to i64
  %t119 = add i64 %t107, %t116
  %t120 = zext i8 48 to i64
  %t123 = sub i64 %t119, %t120
  store i64 %t123, ptr %l1, !tbaa !24
  br label %bb30
bb30:
  %t125 = load i64, ptr %l6, !tbaa !24
  %t127 = add i64 %t125, 1
  store i64 %t127, ptr %l6, !tbaa !24
  br label %bb22
bb31:
  %t129 = load i64, ptr %l1, !tbaa !24
  %t131 = icmp slt i64 %t129, 1
  br i1 %t131, label %bb32, label %bb33
bb32:
  store i1 true, ptr %l73, !tbaa !21
  br label %bb34
bb33:
  %t133 = load i64, ptr %l1, !tbaa !24
  %t135 = icmp sgt i64 %t133, 128
  store i1 %t135, ptr %l73, !tbaa !21
  br label %bb34
bb34:
  %t137 = load i1, ptr %l73, !tbaa !21
  br i1 %t137, label %bb35, label %bb36
bb35:
  store i64 0, ptr %rv
  br label %ret
bb36:
  br label %bb37
bb37:
  %t139 = load i64, ptr %l1, !tbaa !24
  store i64 %t139, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l4 = alloca %"compiler/types:data"
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call %"compiler/types:data" @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eat(ptr %v0, ptr %a0, i32 %a1)
  store %"compiler/types:data" %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = getelementptr %"compiler/types:data", ptr %l4, i32 0, i32 1
  %t7 = load i64, ptr %t6, !tbaa !24
  store i64 %t7, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAddDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2, i32 %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l5 = alloca i32
  %l8 = alloca i64
  %l12 = alloca ptr
  %l17 = alloca %"compiler/types:decl"
  %l19 = alloca ptr
  %l20 = alloca i64
  %l25 = alloca { i64, ptr }
  %l27 = alloca ptr
  %l30 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/types:Table", ptr %t1, i32 0, i32 13
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3adecl_3e_2eLen_3ccompiler_2ftypes_3adecl_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l8
  br label %bb1
bb1:
  %t6 = load i64, ptr %l8, !tbaa !24
  %t7 = trunc i64 %t6 to i32
  store i32 %t7, ptr %l5, !tbaa !23
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/types:Table", ptr %t10, i32 0, i32 13
  store ptr %t12, ptr %l12, !tbaa !29
  %t13 = load i64, ptr %l1, !tbaa !24
  %t14 = load i32, ptr %l2, !tbaa !23
  %t21 = call %"compiler/types:decl" @compiler_2ftypes_3adecl_2ector(ptr %s0, i64 %t13, i32 %t14, i32 %a3, i32 %a4)
  store %"compiler/types:decl" %t21, ptr %l17
  br label %bb2
bb2:
  %t22 = load ptr, ptr %l12, !tbaa !29
  %t23 = load %"compiler/types:decl", ptr %l17
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3adecl_3e_2ePush_3ccompiler_2ftypes_3adecl_3e(ptr %v0, ptr %t22, %"compiler/types:decl" %t23)
  br label %bb3
bb3:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/types:Table", ptr %t24, i32 0, i32 15
  store ptr %t26, ptr %l19, !tbaa !29
  %t27 = ptrtoint ptr %v0 to i64
  store i64 %t27, ptr %l20, !tbaa !24
  %t28 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20compiler_2ftypes_3aDeclId_3e_2e0
  br i1 %t28, label %bb4, label %bb5
bb4:
  %t30 = call ptr @__olang_region_make(ptr %v0)
  %t31 = ptrtoint ptr %t30 to i64
  store i64 %t31, ptr %l20, !tbaa !24
  br label %bb5
bb5:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/types:Table", ptr %t32, i32 0, i32 14
  %t35 = load i64, ptr %l1, !tbaa !24
  %t38 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %s0, ptr %t34, i64 %t35)
  store { i64, ptr } %t38, ptr %l25
  br label %bb6
bb6:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/types:Table", ptr %t39, i32 0, i32 0
  %t42 = load ptr, ptr %t41, !tbaa !29
  store ptr %t42, ptr %l27, !tbaa !29
  %t43 = load i32, ptr %l2, !tbaa !23
  %t44 = load ptr, ptr %l27, !tbaa !29
  %t45 = call ptr @__olang_scope_or(ptr %v1, ptr %t44)
  %t46 = ptrtoint ptr %t45 to i64
  %t48 = inttoptr i64 %t46 to ptr
  %t49 = load ptr, ptr %l27, !tbaa !29
  %t51 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %t48, ptr %s0, ptr %t49, i32 %t43)
  store { i64, ptr } %t51, ptr %l30
  br label %bb7
bb7:
  %t52 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t53 = extractvalue { i64, ptr } %t52, 1
  %t54 = extractvalue { i64, ptr } %t52, 0
  %t55 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t56 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  %t57 = add i64 %t54, %t56
  %t58 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t59 = extractvalue { i64, ptr } %t58, 1
  %t60 = extractvalue { i64, ptr } %t58, 0
  %t61 = add i64 %t57, %t60
  %t62 = load i64, ptr %l20
  %t63 = inttoptr i64 %t62 to ptr
  %t64 = call ptr @__olang_scope_alloc(ptr %t63, i64 %t61)
  call void @olang_textcopy(ptr %t64, ptr %t53, i64 %t54)
  %t65 = getelementptr i8, ptr %t64, i64 %t54
  call void @olang_textcopy(ptr %t65, ptr %t55, i64 %t56)
  %t66 = getelementptr i8, ptr %t65, i64 %t56
  call void @olang_textcopy(ptr %t66, ptr %t59, i64 %t60)
  %t67 = insertvalue { i64, ptr } undef, i64 %t61, 0
  %t68 = insertvalue { i64, ptr } %t67, ptr %t64, 1
  %t70 = load i64, ptr %l20
  %t71 = inttoptr i64 %t70 to ptr
  %t72 = extractvalue { i64, ptr } %t68, 0
  %t73 = extractvalue { i64, ptr } %t68, 1
  %t74 = mul i64 %t72, 1
  %t75 = call ptr @__olang_scope_alloc(ptr %t71, i64 %t74)
  call void @llvm.memcpy.p0.p0.i64(ptr %t75, ptr %t73, i64 %t74, i1 false)
  %t76 = insertvalue { i64, ptr } undef, i64 %t72, 0
  %t77 = insertvalue { i64, ptr } %t76, ptr %t75, 1
  %t78 = load i32, ptr %l5, !tbaa !23
  %t79 = load ptr, ptr %l19, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H4604c93a4aa22278631629833c26f586(ptr %v0, ptr %v0, ptr %t79, { i64, ptr } %t77, i32 %t78)
  br label %bb8
bb8:
  %t82 = load i32, ptr %l5, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t82, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAddModule(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l7 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/types:Table", ptr %t1, i32 0, i32 14
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %t3, { i64, ptr } %a1)
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/types:Table", ptr %t7, i32 0, i32 14
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t9)
  store i64 %t11, ptr %l7
  br label %bb2
bb2:
  %t12 = load i64, ptr %l7, !tbaa !24
  %t13 = sub i64 %t12, 1
  store i64 %t13, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAlign(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l6 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/types:Table", ptr %a0, i32 0, i32 22
  %t6 = sext i32 %a1 to i64
  %t9 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t3, i64 %t6)
  store i64 %t9, ptr %l6
  br label %bb1
bb1:
  %t10 = load i64, ptr %l6, !tbaa !24
  store i64 %t10, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnonEnum(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i32
  %l5 = alloca %"std/prelude/text:StringBuilder"
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %lp10 = alloca ptr
  %l11 = alloca i64
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l28 = alloca i32
  %l29 = alloca %"std/prelude/text:StringBuilder"
  %l37 = alloca { i64, ptr }
  %l53 = alloca { i64, ptr }
  %l54 = alloca i64
  %l58 = alloca i64
  %l59 = alloca i32
  %l63 = alloca i64
  %l72 = alloca i64
  %l75 = alloca i64
  %l93 = alloca { i64, ptr }
  %l95 = alloca { i64, ptr }
  %l102 = alloca i64
  %l110 = alloca ptr
  %l111 = alloca i64
  %l123 = alloca i1
  %l127 = alloca { i64, ptr }
  %l131 = alloca i64
  %l140 = alloca i64
  %l143 = alloca i64
  %l161 = alloca { i64, ptr }
  %l163 = alloca { i64, ptr }
  %l172 = alloca ptr
  %l175 = alloca %"compiler/types:data"
  %l178 = alloca i32
  %l180 = alloca i32
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlainList(ptr %v0, ptr %t1, i32 %a2)
  store i32 %t5, ptr %l28
  br label %bb1
bb1:
  %t6 = load i32, ptr %l28, !tbaa !23
  store i32 %t6, ptr %l4, !tbaa !23
  %t7 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t7, ptr %l29
  br label %bb2
bb2:
  %t8 = load %"std/prelude/text:StringBuilder", ptr %l29
  store %"std/prelude/text:StringBuilder" %t8, ptr %l5
  %t9 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t9, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t11 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t11, 0
  store i64 %t13, ptr %l8, !tbaa !24
  br label %bb3
bb3:
  store %olang.scope zeroinitializer, ptr %s2
  %t15 = load i64, ptr %l7, !tbaa !24
  %t16 = load i64, ptr %l8, !tbaa !24
  %t19 = icmp slt i64 %t15, %t16
  %t21 = xor i1 %t19, true
  br i1 %t21, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s2)
  br label %bb9
bb5:
  br label %bb6
bb6:
  %t23 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t23, ptr %l37, !tbaa !27
  %t24 = load i64, ptr %l7, !tbaa !24
  %t26 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = getelementptr i32, ptr %t27, i64 %t24
  %t29 = load i32, ptr %t28, !tbaa !33
  %t34 = sext i32 %t29 to i64
  %t35 = call i64 @__olang_fmt_i64(ptr null, i64 %t34)
  %t36 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t37 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  %t38 = add i64 %t35, %t37
  %t39 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t38)
  %t40 = call i64 @__olang_fmt_i64(ptr %t39, i64 %t34)
  %t41 = getelementptr i8, ptr %t39, i64 %t35
  call void @olang_textcopy(ptr %t41, ptr %t36, i64 %t37)
  %t42 = insertvalue { i64, ptr } undef, i64 %t38, 0
  %t43 = insertvalue { i64, ptr } %t42, ptr %t39, 1
  %t45 = extractvalue { i64, ptr } %t43, 0
  %t46 = extractvalue { i64, ptr } %t43, 1
  %t47 = mul i64 %t45, 1
  %t48 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t47)
  call void @llvm.memcpy.p0.p0.i64(ptr %t48, ptr %t46, i64 %t47, i1 false)
  %t49 = insertvalue { i64, ptr } undef, i64 %t45, 0
  %t50 = insertvalue { i64, ptr } %t49, ptr %t48, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %l5, { i64, ptr } %t50)
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s2)
  br label %bb8
bb8:
  %t53 = load i64, ptr %l7, !tbaa !24
  %t55 = add i64 %t53, 1
  store i64 %t55, ptr %l7, !tbaa !24
  br label %bb3
bb9:
  %t57 = load i32, ptr %l4, !tbaa !23
  %t59 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t60 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t62 = sext i32 %t57 to i64
  %t63 = call i64 @__olang_fmt_i64(ptr null, i64 %t62)
  %t64 = add i64 %t60, %t63
  %t65 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t64)
  call void @olang_textcopy(ptr %t65, ptr %t59, i64 %t60)
  %t66 = getelementptr i8, ptr %t65, i64 %t60
  %t67 = call i64 @__olang_fmt_i64(ptr %t66, i64 %t62)
  %t68 = insertvalue { i64, ptr } undef, i64 %t64, 0
  %t69 = insertvalue { i64, ptr } %t68, ptr %t65, 1
  %t71 = extractvalue { i64, ptr } %t69, 0
  %t72 = extractvalue { i64, ptr } %t69, 1
  %t73 = mul i64 %t71, 1
  %t74 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t73)
  call void @llvm.memcpy.p0.p0.i64(ptr %t74, ptr %t72, i64 %t73, i1 false)
  %t75 = insertvalue { i64, ptr } undef, i64 %t71, 0
  %t76 = insertvalue { i64, ptr } %t75, ptr %t74, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l5, { i64, ptr } %t76)
  br label %bb10
bb10:
  %t80 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v0, ptr %l5)
  store { i64, ptr } %t80, ptr %l53
  br label %bb11
bb11:
  %t81 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 16, i64 8)
  store ptr %t81, ptr %lp10
  %t82 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t83 = load ptr, ptr %lp10
  store { i64, ptr } %t82, ptr %t83, !tbaa !27
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr %"compiler/types:Table", ptr %t84, i32 0, i32 10
  %t87 = load ptr, ptr %lp10
  %t88 = load { i64, ptr }, ptr %t87, !tbaa !27
  %t91 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9162e3b7f03fcbf954b681204d5f6cca(ptr %v0, ptr %v0, ptr %t86, { i64, ptr } %t88)
  %t92 = extractvalue { i32, i64 } %t91, 1
  %t93 = extractvalue { i32, i64 } %t91, 0
  store i32 %t93, ptr %l59
  %t94 = icmp ne i32 %t93, 0
  br i1 %t94, label %bb13, label %ok.95, !prof !99
ok.95:
  store i64 %t92, ptr %l58
  br label %bb12
bb12:
  %t96 = load i64, ptr %l58, !tbaa !24
  store i64 %t96, ptr %l54, !tbaa !24
  br label %bb15
bb13:
  br label %bb14
bb14:
  store i64 -1, ptr %l54, !tbaa !24
  br label %bb15
bb15:
  %t97 = load i64, ptr %l54, !tbaa !24
  store i64 %t97, ptr %l11, !tbaa !24
  %t98 = load i64, ptr %l11, !tbaa !24
  %t100 = icmp slt i64 %t98, 0
  br i1 %t100, label %bb16, label %bb17
bb16:
  %t102 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t104 = extractvalue { i64, ptr } %t102, 0
  store i64 %t104, ptr %l63, !tbaa !24
  %t105 = load i64, ptr %l63, !tbaa !24
  %t106 = icmp sge i64 %t105, 0
  br i1 %t106, label %bb18, label %bb19
bb17:
  br label %bb45
bb18:
  %t108 = load i64, ptr %l63, !tbaa !24
  %t109 = icmp sle i64 %t108, 2305843009213693951
  br i1 %t109, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_363cc534119e1b58_f5bd72046473679c)
  unreachable
bb20:
  %t111 = load i64, ptr %l63, !tbaa !24
  %t112 = mul i64 %t111, 4
  %t113 = call ptr @__olang_scope_alloc_zeroed(ptr %v0, i64 %t112)
  %t114 = insertvalue { i64, ptr } undef, i64 %t111, 0
  %t115 = insertvalue { i64, ptr } %t114, ptr %t113, 1
  store { i64, ptr } %t115, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t117 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t119 = extractvalue { i64, ptr } %t117, 0
  store i64 %t119, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t121 = load i64, ptr %l14, !tbaa !24
  %t122 = load i64, ptr %l13, !tbaa !24
  %t125 = icmp sgt i64 %t121, %t122
  br i1 %t125, label %bb22, label %bb23
bb21:
  call void @__olang_check_failed(ptr @olang_loc_363cc534119e1b58_f5bd72046473679c)
  unreachable
bb22:
  %t127 = load i64, ptr %l15, !tbaa !24
  %t129 = icmp sgt i64 %t127, 0
  br i1 %t129, label %bb24, label %bb25
bb23:
  store i64 0, ptr %l72, !tbaa !24
  br label %bb27
bb24:
  %t131 = load i64, ptr %l14, !tbaa !24
  %t132 = load i64, ptr %l13, !tbaa !24
  %t135 = sub i64 %t131, %t132
  %t136 = load i64, ptr %l15, !tbaa !24
  %t139 = add i64 %t135, %t136
  %t141 = sub i64 %t139, 1
  %t142 = load i64, ptr %l15, !tbaa !24
  %t145 = sdiv i64 %t141, %t142
  store i64 %t145, ptr %l75, !tbaa !24
  br label %bb26
bb25:
  store i64 0, ptr %l75, !tbaa !24
  br label %bb26
bb26:
  %t147 = load i64, ptr %l75, !tbaa !24
  store i64 %t147, ptr %l72, !tbaa !24
  br label %bb27
bb27:
  %t148 = load i64, ptr %l72, !tbaa !24
  store i64 %t148, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb28
bb28:
  %t149 = load i64, ptr %l17, !tbaa !24
  %t150 = load i64, ptr %l16, !tbaa !24
  %t153 = icmp slt i64 %t149, %t150
  %t155 = xor i1 %t153, true
  br i1 %t155, label %bb29, label %bb30
bb29:
  br label %bb33
bb30:
  br label %bb31
bb31:
  %t157 = load i64, ptr %l13, !tbaa !24
  %t158 = load i64, ptr %l17, !tbaa !24
  %t159 = load i64, ptr %l15, !tbaa !24
  %t162 = mul i64 %t158, %t159
  %t165 = add i64 %t157, %t162
  store i64 %t165, ptr %l18, !tbaa !24
  %t167 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t167, ptr %l93, !tbaa !27
  %t168 = load i64, ptr %l18, !tbaa !24
  %t169 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t169, ptr %l95, !tbaa !27
  %t170 = load i64, ptr %l18, !tbaa !24
  %t172 = getelementptr { i64, ptr }, ptr %l95, i32 0, i32 1
  %t173 = load ptr, ptr %t172, !tbaa !27
  %t174 = getelementptr i32, ptr %t173, i64 %t170
  %t175 = load i32, ptr %t174, !tbaa !33
  %t178 = getelementptr { i64, ptr }, ptr %l93, i32 0, i32 1
  %t179 = load ptr, ptr %t178, !tbaa !27
  %t180 = getelementptr i32, ptr %t179, i64 %t168
  store i32 %t175, ptr %t180, !tbaa !33
  br label %bb32
bb32:
  %t181 = load i64, ptr %l17, !tbaa !24
  %t183 = add i64 %t181, 1
  store i64 %t183, ptr %l17, !tbaa !24
  br label %bb28
bb33:
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t187 = getelementptr %"compiler/types:Table", ptr %t185, i32 0, i32 7
  %t189 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fsource_3aNameId_3e__H69e9af7ee32b7ff0c8685324094a29a4(ptr %v0, ptr %t187)
  store i64 %t189, ptr %l102
  br label %bb34
bb34:
  %t190 = load i64, ptr %l102, !tbaa !24
  store i64 %t190, ptr %l11, !tbaa !24
  %t191 = load ptr, ptr %l0, !tbaa !29
  %t193 = getelementptr %"compiler/types:Table", ptr %t191, i32 0, i32 7
  %t194 = load { i64, ptr }, ptr %l12, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fsource_3aNameId_3e__H41a2935585cca595f0dd127aea20d09e(ptr %v0, ptr %v0, ptr %t193, { i64, ptr } %t194)
  br label %bb35
bb35:
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t199 = getelementptr %"compiler/types:Table", ptr %t197, i32 0, i32 8
  %t200 = load i32, ptr %l4, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aListId_3e_2ePush_3ccompiler_2ftypes_3aListId_3e(ptr %v0, ptr %t199, i32 %t200)
  br label %bb36
bb36:
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t205 = getelementptr %"compiler/types:Table", ptr %t203, i32 0, i32 9
  store ptr %t205, ptr %l110, !tbaa !29
  %t206 = ptrtoint ptr %v0 to i64
  store i64 %t206, ptr %l111, !tbaa !24
  %t207 = load i1, ptr @olang_2esole_2eArray_3cArray_3ccompiler_2fsource_3aNameId_3e_26_3e_2e_2d1
  br i1 %t207, label %bb37, label %bb38
bb37:
  %t209 = call ptr @__olang_region_make(ptr %v0)
  %t210 = ptrtoint ptr %t209 to i64
  store i64 %t210, ptr %l111, !tbaa !24
  br label %bb38
bb38:
  %t211 = icmp sge i64 0, 0
  br i1 %t211, label %bb39, label %bb40
bb39:
  %t213 = icmp sle i64 0, 2305843009213693951
  br i1 %t213, label %bb41, label %bb42
bb40:
  call void @__olang_check_failed(ptr @olang_loc_a8f3bb3fba0fecc5_79768dea68ad9969)
  unreachable
bb41:
  %t215 = mul i64 0, 4
  %t216 = load i64, ptr %l111
  %t217 = inttoptr i64 %t216 to ptr
  %t218 = insertvalue { i64, ptr } undef, i64 0, 0
  %t219 = insertvalue { i64, ptr } %t218, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t220 = load ptr, ptr %l110, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fsource_3aNameId_3e__H41a2935585cca595f0dd127aea20d09e(ptr %v0, ptr %v0, ptr %t220, { i64, ptr } %t219)
  br label %bb43
bb42:
  call void @__olang_check_failed(ptr @olang_loc_a8f3bb3fba0fecc5_79768dea68ad9969)
  unreachable
bb43:
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t224 = getelementptr %"compiler/types:Table", ptr %t222, i32 0, i32 10
  %t225 = load ptr, ptr %lp10
  %t226 = load { i64, ptr }, ptr %t225, !tbaa !27
  %t227 = load i64, ptr %l11, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v0, ptr %v0, ptr %t224, { i64, ptr } %t226, i64 %t227)
  br label %bb44
bb44:
  br label %bb45
bb45:
  %t231 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t233 = extractvalue { i64, ptr } %t231, 0
  %t235 = icmp sgt i64 %t233, 0
  br i1 %t235, label %bb46, label %bb47
bb46:
  %t237 = load ptr, ptr %l0, !tbaa !29
  %t239 = getelementptr %"compiler/types:Table", ptr %t237, i32 0, i32 9
  %t240 = load i64, ptr %l11, !tbaa !24
  %t243 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fsource_3aNameId_3e__H37377f924b66ff741793959f79fef546(ptr %v0, ptr %s0, ptr %t239, i64 %t240)
  store { i64, ptr } %t243, ptr %l127
  br label %bb48
bb47:
  store i1 false, ptr %l123, !tbaa !21
  br label %bb49
bb48:
  %t244 = load { i64, ptr }, ptr %l127, !tbaa !27
  %t245 = extractvalue { i64, ptr } %t244, 0
  %t247 = icmp eq i64 %t245, 0
  store i1 %t247, ptr %l123, !tbaa !21
  br label %bb49
bb49:
  %t249 = load i1, ptr %l123, !tbaa !21
  br i1 %t249, label %bb50, label %bb51
bb50:
  %t250 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t252 = extractvalue { i64, ptr } %t250, 0
  store i64 %t252, ptr %l131, !tbaa !24
  %t253 = load i64, ptr %l131, !tbaa !24
  %t254 = icmp sge i64 %t253, 0
  br i1 %t254, label %bb52, label %bb53
bb51:
  br label %bb69
bb52:
  %t256 = load i64, ptr %l131, !tbaa !24
  %t257 = icmp sle i64 %t256, 2305843009213693951
  br i1 %t257, label %bb54, label %bb55
bb53:
  call void @__olang_check_failed(ptr @olang_loc_fab351c77a2932a6_cae3bbf023c8ab2a)
  unreachable
bb54:
  %t259 = load i64, ptr %l131, !tbaa !24
  %t260 = mul i64 %t259, 4
  %t261 = call ptr @__olang_scope_alloc_zeroed(ptr %v0, i64 %t260)
  %t262 = insertvalue { i64, ptr } undef, i64 %t259, 0
  %t263 = insertvalue { i64, ptr } %t262, ptr %t261, 1
  store { i64, ptr } %t263, ptr %l19, !tbaa !27
  store i64 0, ptr %l20, !tbaa !24
  %t265 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t267 = extractvalue { i64, ptr } %t265, 0
  store i64 %t267, ptr %l21, !tbaa !24
  store i64 1, ptr %l22, !tbaa !24
  %t269 = load i64, ptr %l21, !tbaa !24
  %t270 = load i64, ptr %l20, !tbaa !24
  %t273 = icmp sgt i64 %t269, %t270
  br i1 %t273, label %bb56, label %bb57
bb55:
  call void @__olang_check_failed(ptr @olang_loc_fab351c77a2932a6_cae3bbf023c8ab2a)
  unreachable
bb56:
  %t275 = load i64, ptr %l22, !tbaa !24
  %t277 = icmp sgt i64 %t275, 0
  br i1 %t277, label %bb58, label %bb59
bb57:
  store i64 0, ptr %l140, !tbaa !24
  br label %bb61
bb58:
  %t279 = load i64, ptr %l21, !tbaa !24
  %t280 = load i64, ptr %l20, !tbaa !24
  %t283 = sub i64 %t279, %t280
  %t284 = load i64, ptr %l22, !tbaa !24
  %t287 = add i64 %t283, %t284
  %t289 = sub i64 %t287, 1
  %t290 = load i64, ptr %l22, !tbaa !24
  %t293 = sdiv i64 %t289, %t290
  store i64 %t293, ptr %l143, !tbaa !24
  br label %bb60
bb59:
  store i64 0, ptr %l143, !tbaa !24
  br label %bb60
bb60:
  %t295 = load i64, ptr %l143, !tbaa !24
  store i64 %t295, ptr %l140, !tbaa !24
  br label %bb61
bb61:
  %t296 = load i64, ptr %l140, !tbaa !24
  store i64 %t296, ptr %l23, !tbaa !24
  store i64 0, ptr %l24, !tbaa !24
  br label %bb62
bb62:
  %t297 = load i64, ptr %l24, !tbaa !24
  %t298 = load i64, ptr %l23, !tbaa !24
  %t301 = icmp slt i64 %t297, %t298
  %t303 = xor i1 %t301, true
  br i1 %t303, label %bb63, label %bb64
bb63:
  br label %bb67
bb64:
  br label %bb65
bb65:
  %t305 = load i64, ptr %l20, !tbaa !24
  %t306 = load i64, ptr %l24, !tbaa !24
  %t307 = load i64, ptr %l22, !tbaa !24
  %t310 = mul i64 %t306, %t307
  %t313 = add i64 %t305, %t310
  store i64 %t313, ptr %l25, !tbaa !24
  %t315 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t315, ptr %l161, !tbaa !27
  %t316 = load i64, ptr %l25, !tbaa !24
  %t317 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t317, ptr %l163, !tbaa !27
  %t318 = load i64, ptr %l25, !tbaa !24
  %t320 = getelementptr { i64, ptr }, ptr %l163, i32 0, i32 1
  %t321 = load ptr, ptr %t320, !tbaa !27
  %t322 = getelementptr i32, ptr %t321, i64 %t318
  %t323 = load i32, ptr %t322, !tbaa !33
  %t326 = getelementptr { i64, ptr }, ptr %l161, i32 0, i32 1
  %t327 = load ptr, ptr %t326, !tbaa !27
  %t328 = getelementptr i32, ptr %t327, i64 %t316
  store i32 %t323, ptr %t328, !tbaa !33
  br label %bb66
bb66:
  %t329 = load i64, ptr %l24, !tbaa !24
  %t331 = add i64 %t329, 1
  store i64 %t331, ptr %l24, !tbaa !24
  br label %bb62
bb67:
  %t333 = load ptr, ptr %l0, !tbaa !29
  %t335 = getelementptr %"compiler/types:Table", ptr %t333, i32 0, i32 9
  %t336 = load i64, ptr %l11, !tbaa !24
  %t337 = load { i64, ptr }, ptr %l19, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fsource_3aNameId_3e__H6938bdf4910ae806791e4f0f97041ba1(ptr %v0, ptr %v0, ptr %t335, i64 %t336, { i64, ptr } %t337)
  br label %bb68
bb68:
  br label %bb69
bb69:
  %t341 = load ptr, ptr %l0, !tbaa !29
  store ptr %t341, ptr %l172, !tbaa !29
  %t342 = load i64, ptr %l11, !tbaa !24
  %t345 = call %"compiler/types:data" @compiler_2ftypes_3adata_2ector(ptr %s0, i32 24, i64 %t342, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0)
  store %"compiler/types:data" %t345, ptr %l175
  br label %bb70
bb70:
  %t346 = load ptr, ptr %l0, !tbaa !29
  %t347 = load i32, ptr %l4, !tbaa !23
  %t350 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2edeepest(ptr %v0, ptr %t346, i32 %t347)
  store i32 %t350, ptr %l178
  br label %bb71
bb71:
  %t351 = load i32, ptr %l178, !tbaa !23
  %t352 = add i32 %t351, 1
  %t353 = load ptr, ptr %l172, !tbaa !29
  %t354 = load %"compiler/types:data", ptr %l175
  %t356 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eintern(ptr %v0, ptr %t353, %"compiler/types:data" %t354, i32 %t352)
  store i32 %t356, ptr %l180
  br label %bb72
bb72:
  call void @__olang_scope_close(ptr %s0)
  %t357 = load i32, ptr %l180, !tbaa !23
  store i32 %t357, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnyUnique(ptr %v0, ptr %a0) #0 {
entry:
  %l3 = alloca i64
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/types:Table", ptr %a0, i32 0, i32 38
  %t5 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eLen_3cI64_2c_20Bool_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load i64, ptr %l3, !tbaa !24
  %t7 = icmp sgt i64 %t6, 0
  store i1 %t7, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l4 = alloca i64
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eB(ptr %v0, ptr %a0, i32 %a1)
  store i64 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i64, ptr %l4, !tbaa !24
  %t7 = trunc i64 %t6 to i32
  store i32 %t7, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca i32
  %l6 = alloca i1
  %l7 = alloca i32
  %l9 = alloca i32
  %l13 = alloca i32
  %l14 = alloca ptr
  %l20 = alloca %"compiler/types:data"
  %l23 = alloca i32
  %l25 = alloca i32
  %l28 = alloca i32
  %l32 = alloca ptr
  %l34 = alloca i64
  %l35 = alloca ptr
  %l38 = alloca i32
  %l40 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i32, ptr %l2, !tbaa !23
  %t3 = icmp ne i32 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i32, ptr %l2, !tbaa !23
  store i32 %t5, ptr %l7, !tbaa !23
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRunLength(ptr %v0, ptr %t6)
  store i32 %t8, ptr %l9
  br label %bb3
bb2:
  store i1 false, ptr %l6, !tbaa !21
  br label %bb4
bb3:
  %t9 = load i32, ptr %l7, !tbaa !23
  %t10 = load i32, ptr %l9, !tbaa !23
  %t11 = icmp eq i32 %t9, %t10
  store i1 %t11, ptr %l6, !tbaa !21
  br label %bb4
bb4:
  %t13 = load i1, ptr %l6, !tbaa !21
  br i1 %t13, label %bb5, label %bb6
bb5:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load i32, ptr %l1, !tbaa !23
  %t18 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %t14, i32 %t15, i32 0)
  store i32 %t18, ptr %l13
  br label %bb7
bb6:
  br label %bb8
bb7:
  call void @__olang_scope_close(ptr %s0)
  %t19 = load i32, ptr %l13, !tbaa !23
  store i32 %t19, ptr %rv
  br label %ret
bb8:
  %t20 = load ptr, ptr %l0, !tbaa !29
  store ptr %t20, ptr %l14, !tbaa !29
  %t21 = load i32, ptr %l1, !tbaa !23
  %t23 = sext i32 %t21 to i64
  %t24 = load i32, ptr %l2, !tbaa !23
  %t26 = sext i32 %t24 to i64
  %t30 = call %"compiler/types:data" @compiler_2ftypes_3adata_2ector(ptr %s0, i32 19, i64 %t23, i64 %t26, i64 0, i64 0, i64 0, i64 0, i64 0)
  store %"compiler/types:data" %t30, ptr %l20
  br label %bb9
bb9:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load i32, ptr %l1, !tbaa !23
  %t35 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2edepthOf(ptr %v0, ptr %t31, i32 %t32)
  store i32 %t35, ptr %l23
  br label %bb10
bb10:
  %t36 = load i32, ptr %l23, !tbaa !23
  %t37 = add i32 %t36, 1
  %t38 = load ptr, ptr %l14, !tbaa !29
  %t39 = load %"compiler/types:data", ptr %l20
  %t41 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eintern(ptr %v0, ptr %t38, %"compiler/types:data" %t39, i32 %t37)
  store i32 %t41, ptr %l25
  br label %bb11
bb11:
  %t42 = load i32, ptr %l25, !tbaa !23
  store i32 %t42, ptr %l3, !tbaa !23
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = load i32, ptr %l1, !tbaa !23
  %t47 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t43, i32 %t44)
  store i32 %t47, ptr %l28
  br label %bb12
bb12:
  %t48 = load i32, ptr %l1, !tbaa !23
  %t49 = load i32, ptr %l28, !tbaa !23
  %t51 = icmp ne i32 %t49, %t48
  br i1 %t51, label %bb13, label %bb14
bb13:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/types:Table", ptr %t53, i32 0, i32 27
  store ptr %t55, ptr %l32, !tbaa !29
  %t56 = load i32, ptr %l3, !tbaa !23
  %t58 = sext i32 %t56 to i64
  store i64 %t58, ptr %l34, !tbaa !24
  %t59 = load ptr, ptr %l0, !tbaa !29
  store ptr %t59, ptr %l35, !tbaa !29
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load i32, ptr %l1, !tbaa !23
  %t64 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t60, i32 %t61)
  store i32 %t64, ptr %l38
  br label %bb15
bb14:
  br label %bb18
bb15:
  %t65 = load i32, ptr %l2, !tbaa !23
  %t66 = load ptr, ptr %l35, !tbaa !29
  %t67 = load i32, ptr %l38, !tbaa !23
  %t69 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %t66, i32 %t67, i32 %t65)
  store i32 %t69, ptr %l40
  br label %bb16
bb16:
  %t70 = load ptr, ptr %l32, !tbaa !29
  %t71 = load i64, ptr %l34, !tbaa !24
  %t72 = load i32, ptr %l40, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eSetAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t70, i64 %t71, i32 %t72)
  br label %bb17
bb17:
  br label %bb18
bb18:
  %t73 = load i32, ptr %l3, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t73, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l4 = alloca %"compiler/types:body"
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call %"compiler/types:body" @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ebodyOf(ptr %v0, ptr %a0, i32 %a1)
  store %"compiler/types:body" %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = getelementptr %"compiler/types:body", ptr %l4, i32 0, i32 2
  %t7 = load i32, ptr %t6, !tbaa !23
  store i32 %t7, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBitOffsets(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %lp3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca ptr
  %l14 = alloca i32
  %l15 = alloca { i64, ptr }
  %l17 = alloca i64
  %l26 = alloca i64
  %l29 = alloca i64
  %l49 = alloca i64
  %l51 = alloca { i64, ptr }
  %l54 = alloca i64
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l11, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t6 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t2, i32 %a1)
  store i32 %t6, ptr %l14
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l11, !tbaa !29
  %t8 = load i32, ptr %l14, !tbaa !23
  %t9 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t7, i32 %t8)
  store { i64, ptr } %t9, ptr %l15
  br label %bb2
bb2:
  %t10 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t10, ptr %l2, !tbaa !27
  %t11 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t11, 0
  store i64 %t13, ptr %l17, !tbaa !24
  %t14 = load i64, ptr %l17, !tbaa !24
  %t15 = icmp sge i64 %t14, 0
  br i1 %t15, label %bb3, label %bb4
bb3:
  %t17 = load i64, ptr %l17, !tbaa !24
  %t18 = icmp sle i64 %t17, 1152921504606846975
  br i1 %t18, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_569ba1a9eae34c7a_75ec50ad0f32d156)
  unreachable
bb5:
  %t20 = load i64, ptr %l17, !tbaa !24
  %t21 = mul i64 %t20, 8
  %t22 = call ptr @__olang_scope_alloc_zeroed(ptr %v1, i64 %t21)
  %t23 = insertvalue { i64, ptr } undef, i64 %t20, 0
  %t24 = insertvalue { i64, ptr } %t23, ptr %t22, 1
  %t25 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t25, ptr %lp3
  %t27 = load ptr, ptr %lp3
  store { i64, ptr } %t24, ptr %t27, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  %t28 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t28, 0
  store i64 %t30, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t32 = load i64, ptr %l6, !tbaa !24
  %t33 = load i64, ptr %l5, !tbaa !24
  %t36 = icmp sgt i64 %t32, %t33
  br i1 %t36, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_569ba1a9eae34c7a_75ec50ad0f32d156)
  unreachable
bb7:
  %t38 = load i64, ptr %l7, !tbaa !24
  %t40 = icmp sgt i64 %t38, 0
  br i1 %t40, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb12
bb9:
  %t42 = load i64, ptr %l6, !tbaa !24
  %t43 = load i64, ptr %l5, !tbaa !24
  %t46 = sub i64 %t42, %t43
  %t47 = load i64, ptr %l7, !tbaa !24
  %t50 = add i64 %t46, %t47
  %t52 = sub i64 %t50, 1
  %t53 = load i64, ptr %l7, !tbaa !24
  %t56 = sdiv i64 %t52, %t53
  store i64 %t56, ptr %l29, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l29, !tbaa !24
  br label %bb11
bb11:
  %t58 = load i64, ptr %l29, !tbaa !24
  store i64 %t58, ptr %l26, !tbaa !24
  br label %bb12
bb12:
  %t59 = load i64, ptr %l26, !tbaa !24
  store i64 %t59, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb13
bb13:
  %t60 = load i64, ptr %l9, !tbaa !24
  %t61 = load i64, ptr %l8, !tbaa !24
  %t64 = icmp slt i64 %t60, %t61
  %t66 = xor i1 %t64, true
  br i1 %t66, label %bb14, label %bb15
bb14:
  br label %bb19
bb15:
  br label %bb16
bb16:
  %t68 = load i64, ptr %l5, !tbaa !24
  %t69 = load i64, ptr %l9, !tbaa !24
  %t70 = load i64, ptr %l7, !tbaa !24
  %t73 = mul i64 %t69, %t70
  %t76 = add i64 %t68, %t73
  store i64 %t76, ptr %l10, !tbaa !24
  %t78 = load i64, ptr %l10, !tbaa !24
  %t79 = load i64, ptr %l4, !tbaa !24
  %t81 = load ptr, ptr %lp3
  %t83 = getelementptr { i64, ptr }, ptr %t81, i32 0, i32 1
  %t84 = load ptr, ptr %t83, !tbaa !27
  %t85 = getelementptr i64, ptr %t84, i64 %t78
  store i64 %t79, ptr %t85, !tbaa !34
  %t86 = load i64, ptr %l4, !tbaa !24
  store i64 %t86, ptr %l49, !tbaa !24
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t88 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t88, ptr %l51, !tbaa !27
  %t89 = load i64, ptr %l10, !tbaa !24
  %t91 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !27
  %t93 = getelementptr i32, ptr %t92, i64 %t89
  %t94 = load i32, ptr %t93, !tbaa !33
  %t97 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2efieldBits(ptr %v0, ptr %t87, i32 %t94)
  store i64 %t97, ptr %l54
  br label %bb17
bb17:
  %t98 = load i64, ptr %l49, !tbaa !24
  %t99 = load i64, ptr %l54, !tbaa !24
  %t100 = add i64 %t98, %t99
  store i64 %t100, ptr %l4, !tbaa !24
  br label %bb18
bb18:
  %t102 = load i64, ptr %l9, !tbaa !24
  %t104 = add i64 %t102, 1
  store i64 %t104, ptr %l9, !tbaa !24
  br label %bb13
bb19:
  %t106 = load ptr, ptr %lp3
  %t107 = load { i64, ptr }, ptr %t106, !tbaa !27
  store { i64, ptr } %t107, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBorrowsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %lp3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l11 = alloca ptr
  %l14 = alloca i64
  %l15 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l21 = alloca { i64, ptr }
  %l26 = alloca i64
  %l29 = alloca i64
  %l48 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/types:Table", ptr %t1, i32 0, i32 32
  store ptr %t3, ptr %l11, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t8 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePromisesOf(ptr %v0, ptr %t4, i32 %a1)
  store i64 %t8, ptr %l14
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l11, !tbaa !29
  %t10 = load i64, ptr %l14, !tbaa !24
  %t11 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e_2eAt_3cArray_3cI64_3e_26_3e(ptr %v0, ptr %v0, ptr %t9, i64 %t10)
  store { i64, ptr } %t11, ptr %l15
  br label %bb2
bb2:
  %t12 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t12, ptr %l2, !tbaa !27
  %t13 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t13, ptr %l16, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr i64, ptr %t15, i64 1
  %t17 = load i64, ptr %t16, !tbaa !34
  store i64 %t17, ptr %l17, !tbaa !24
  %t18 = load i64, ptr %l17, !tbaa !24
  %t19 = icmp sge i64 %t18, 0
  br i1 %t19, label %bb3, label %bb4
bb3:
  %t21 = load i64, ptr %l17, !tbaa !24
  %t22 = icmp sle i64 %t21, 1152921504606846975
  br i1 %t22, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_6abff20a2e15cc04_a62c698ed99e6160)
  unreachable
bb5:
  %t24 = load i64, ptr %l17, !tbaa !24
  %t25 = mul i64 %t24, 8
  %t26 = call ptr @__olang_scope_alloc_zeroed(ptr %v1, i64 %t25)
  %t27 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t26, 1
  %t29 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t29, ptr %lp3
  %t31 = load ptr, ptr %lp3
  store { i64, ptr } %t28, ptr %t31, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t32 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t32, ptr %l21, !tbaa !27
  %t33 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !27
  %t35 = getelementptr i64, ptr %t34, i64 1
  %t36 = load i64, ptr %t35, !tbaa !34
  store i64 %t36, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t38 = load i64, ptr %l5, !tbaa !24
  %t39 = load i64, ptr %l4, !tbaa !24
  %t42 = icmp sgt i64 %t38, %t39
  br i1 %t42, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_6abff20a2e15cc04_a62c698ed99e6160)
  unreachable
bb7:
  %t44 = load i64, ptr %l6, !tbaa !24
  %t46 = icmp sgt i64 %t44, 0
  br i1 %t46, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb12
bb9:
  %t48 = load i64, ptr %l5, !tbaa !24
  %t49 = load i64, ptr %l4, !tbaa !24
  %t52 = sub i64 %t48, %t49
  %t53 = load i64, ptr %l6, !tbaa !24
  %t56 = add i64 %t52, %t53
  %t58 = sub i64 %t56, 1
  %t59 = load i64, ptr %l6, !tbaa !24
  %t62 = sdiv i64 %t58, %t59
  store i64 %t62, ptr %l29, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l29, !tbaa !24
  br label %bb11
bb11:
  %t64 = load i64, ptr %l29, !tbaa !24
  store i64 %t64, ptr %l26, !tbaa !24
  br label %bb12
bb12:
  %t65 = load i64, ptr %l26, !tbaa !24
  store i64 %t65, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb13
bb13:
  %t66 = load i64, ptr %l8, !tbaa !24
  %t67 = load i64, ptr %l7, !tbaa !24
  %t70 = icmp slt i64 %t66, %t67
  %t72 = xor i1 %t70, true
  br i1 %t72, label %bb14, label %bb15
bb14:
  br label %bb18
bb15:
  br label %bb16
bb16:
  %t74 = load i64, ptr %l4, !tbaa !24
  %t75 = load i64, ptr %l8, !tbaa !24
  %t76 = load i64, ptr %l6, !tbaa !24
  %t79 = mul i64 %t75, %t76
  %t82 = add i64 %t74, %t79
  store i64 %t82, ptr %l9, !tbaa !24
  %t84 = load i64, ptr %l9, !tbaa !24
  %t85 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t85, ptr %l48, !tbaa !27
  %t86 = load i64, ptr %l9, !tbaa !24
  %t88 = add i64 2, %t86
  %t90 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !27
  %t92 = getelementptr i64, ptr %t91, i64 %t88
  %t93 = load i64, ptr %t92, !tbaa !34
  %t95 = load ptr, ptr %lp3
  %t97 = getelementptr { i64, ptr }, ptr %t95, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !27
  %t99 = getelementptr i64, ptr %t98, i64 %t84
  store i64 %t93, ptr %t99, !tbaa !34
  br label %bb17
bb17:
  %t100 = load i64, ptr %l8, !tbaa !24
  %t102 = add i64 %t100, 1
  store i64 %t102, ptr %l8, !tbaa !24
  br label %bb13
bb18:
  %t104 = load ptr, ptr %lp3
  %t105 = load { i64, ptr }, ptr %t104, !tbaa !27
  store { i64, ptr } %t105, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eByAddress(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l6 = alloca i32
  %l9 = alloca i32
  %l10 = alloca i1
  %l17 = alloca ptr
  %l20 = alloca i32
  %l21 = alloca i32
  %l28 = alloca i32
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t1, i32 %a1)
  store i32 %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load i32, ptr %l6, !tbaa !23
  store i32 %t6, ptr %l2, !tbaa !23
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i32, ptr %l2, !tbaa !23
  %t11 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t7, i32 %t8)
  store i32 %t11, ptr %l9
  br label %bb2
bb2:
  %t12 = load i32, ptr %l9, !range !{i32 0, i32 33}
  store i32 %t12, ptr %l3
  %t13 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t15 = trunc i64 22 to i32
  %t16 = icmp eq i32 %t13, %t15
  br i1 %t16, label %bb3, label %bb4
bb3:
  br label %bb7
bb4:
  %t18 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t20 = trunc i64 23 to i32
  %t21 = icmp eq i32 %t18, %t20
  br i1 %t21, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb24
bb8:
  %t23 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t25 = trunc i64 18 to i32
  %t26 = icmp eq i32 %t23, %t25
  br i1 %t26, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb14
bb11:
  %t28 = load ptr, ptr %l0, !tbaa !29
  store ptr %t28, ptr %l17, !tbaa !29
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = load i32, ptr %l2, !tbaa !23
  %t33 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t29, i32 %t30)
  store i32 %t33, ptr %l20
  br label %bb12
bb12:
  %t34 = load ptr, ptr %l17, !tbaa !29
  %t35 = load i32, ptr %l20, !tbaa !23
  %t36 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t34, i32 %t35)
  store i32 %t36, ptr %l21
  br label %bb13
bb13:
  %t37 = load i32, ptr %l21, !range !{i32 0, i32 6}
  %t39 = trunc i64 0 to i32
  %t40 = icmp eq i32 %t37, %t39
  store i1 %t40, ptr %l10, !tbaa !21
  br label %bb24
bb14:
  %t42 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t44 = trunc i64 19 to i32
  %t45 = icmp eq i32 %t42, %t44
  br i1 %t45, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb19
bb17:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load i32, ptr %l2, !tbaa !23
  %t51 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t47, i32 %t48)
  store i32 %t51, ptr %l28
  br label %bb18
bb18:
  %t52 = load i32, ptr %l28, !tbaa !23
  %t53 = icmp ne i32 %t52, 0
  store i1 %t53, ptr %l10, !tbaa !21
  br label %bb24
bb19:
  br i1 true, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb23
bb22:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb24
bb23:
  call void @__olang_check_failed(ptr @olang_loc_c5f0a3e3912a4ce3_83ad4b8f75c0f327)
  unreachable
bb24:
  %t55 = load i1, ptr %l10, !tbaa !21
  store i1 %t55, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eC(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l4 = alloca %"compiler/types:data"
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call %"compiler/types:data" @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eat(ptr %v0, ptr %a0, i32 %a1)
  store %"compiler/types:data" %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = getelementptr %"compiler/types:data", ptr %l4, i32 0, i32 3
  %t7 = load i64, ptr %t6, !tbaa !24
  store i64 %t7, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca %"std/prelude/text:StringBuilder"
  %l8 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l3
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l3
  store %"std/prelude/text:StringBuilder" %t2, ptr %l2
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ecanon(ptr %v0, ptr %s0, ptr %v2, ptr %a0, ptr %l2, i32 %a1)
  br label %bb2
bb2:
  %t9 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l2)
  store { i64, ptr } %t9, ptr %l8
  br label %bb3
bb3:
  call void @__olang_scope_close(ptr %s0)
  %t10 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t10, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanonList(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca %"std/prelude/text:StringBuilder"
  %l8 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l3
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l3
  store %"std/prelude/text:StringBuilder" %t2, ptr %l2
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ejoined(ptr %v0, ptr %s0, ptr %v2, ptr %a0, ptr %l2, i32 %a1)
  br label %bb2
bb2:
  %t9 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l2)
  store { i64, ptr } %t9, ptr %l8
  br label %bb3
bb3:
  call void @__olang_scope_close(ptr %s0)
  %t10 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t10, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l4 = alloca %"compiler/types:body"
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call %"compiler/types:body" @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ebodyOf(ptr %v0, ptr %a0, i32 %a1)
  store %"compiler/types:body" %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = getelementptr %"compiler/types:body", ptr %l4, i32 0, i32 1
  %t7 = load i32, ptr %t6, !tbaa !23
  store i32 %t7, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eComputeLayout(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca %"compiler/types:data"
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca i64
  %l10 = alloca i32
  %l13 = alloca i64
  %l23 = alloca i32
  %l24 = alloca i64
  %l26 = alloca { i64, i64 }
  %l27 = alloca { i64, i64 }
  %l28 = alloca i32
  %l29 = alloca { i64, i64 }
  %l30 = alloca { i64, i64 }
  %l33 = alloca i32
  %l34 = alloca i64
  %l38 = alloca %"compiler/types:data"
  %l73 = alloca i64
  %l82 = alloca i64
  %l84 = alloca i64
  %l95 = alloca i32
  %l102 = alloca i64
  %l108 = alloca i64
  %l111 = alloca i64
  %l120 = alloca ptr
  %l123 = alloca i32
  %l124 = alloca i1
  %l125 = alloca i1
  %l126 = alloca ptr
  %l129 = alloca i32
  %l130 = alloca i32
  %l141 = alloca i32
  %l145 = alloca ptr
  %l148 = alloca i32
  %l149 = alloca i32
  %l156 = alloca i32
  %l159 = alloca i64
  %l160 = alloca ptr
  %l163 = alloca i32
  %l164 = alloca i64
  %l168 = alloca i64
  %l175 = alloca ptr
  %l176 = alloca i32
  %l179 = alloca i32
  %l180 = alloca { i64, i64 }
  %l185 = alloca ptr
  %l186 = alloca i32
  %l189 = alloca i32
  %l190 = alloca { i64, i64 }
  %l197 = alloca i1
  %l200 = alloca ptr
  %l203 = alloca i32
  %l204 = alloca i32
  %l209 = alloca i1
  %l210 = alloca { i64, i64 }
  %l213 = alloca { i64, i64 }
  %l214 = alloca ptr
  %l215 = alloca i32
  %l218 = alloca i32
  %l219 = alloca { i64, i64 }
  %l224 = alloca ptr
  %l225 = alloca i32
  %l228 = alloca i32
  %l229 = alloca { i64, i64 }
  %l240 = alloca i32
  %l243 = alloca i64
  %l249 = alloca i64
  %l252 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call %"compiler/types:data" @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eat(ptr %v0, ptr %t1, i32 %t2)
  store %"compiler/types:data" %t5, ptr %l38
  br label %bb1
bb1:
  %t6 = load %"compiler/types:data", ptr %l38
  store %"compiler/types:data" %t6, ptr %l2
  store i64 0, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t7 = getelementptr %"compiler/types:data", ptr %l2, i32 0, i32 0
  %t8 = load i32, ptr %t7, !range !{i32 0, i32 33}
  store i32 %t8, ptr %l5
  %t10 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t12 = trunc i64 1 to i32
  %t13 = icmp eq i32 %t10, %t12
  br i1 %t13, label %bb2, label %bb3
bb2:
  br label %bb6
bb3:
  %t15 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t17 = trunc i64 17 to i32
  %t18 = icmp eq i32 %t15, %t17
  br i1 %t18, label %bb4, label %bb5
bb4:
  br label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb166
bb7:
  %t20 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t22 = trunc i64 2 to i32
  %t23 = icmp eq i32 %t20, %t22
  br i1 %t23, label %bb8, label %bb9
bb8:
  br label %bb34
bb9:
  %t25 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t27 = trunc i64 3 to i32
  %t28 = icmp eq i32 %t25, %t27
  br i1 %t28, label %bb10, label %bb11
bb10:
  br label %bb34
bb11:
  %t30 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t32 = trunc i64 4 to i32
  %t33 = icmp eq i32 %t30, %t32
  br i1 %t33, label %bb12, label %bb13
bb12:
  br label %bb34
bb13:
  %t35 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t37 = trunc i64 5 to i32
  %t38 = icmp eq i32 %t35, %t37
  br i1 %t38, label %bb14, label %bb15
bb14:
  br label %bb34
bb15:
  %t40 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t42 = trunc i64 6 to i32
  %t43 = icmp eq i32 %t40, %t42
  br i1 %t43, label %bb16, label %bb17
bb16:
  br label %bb34
bb17:
  %t45 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t47 = trunc i64 7 to i32
  %t48 = icmp eq i32 %t45, %t47
  br i1 %t48, label %bb18, label %bb19
bb18:
  br label %bb34
bb19:
  %t50 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t52 = trunc i64 8 to i32
  %t53 = icmp eq i32 %t50, %t52
  br i1 %t53, label %bb20, label %bb21
bb20:
  br label %bb34
bb21:
  %t55 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t57 = trunc i64 9 to i32
  %t58 = icmp eq i32 %t55, %t57
  br i1 %t58, label %bb22, label %bb23
bb22:
  br label %bb34
bb23:
  %t60 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t62 = trunc i64 10 to i32
  %t63 = icmp eq i32 %t60, %t62
  br i1 %t63, label %bb24, label %bb25
bb24:
  br label %bb34
bb25:
  %t65 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t67 = trunc i64 11 to i32
  %t68 = icmp eq i32 %t65, %t67
  br i1 %t68, label %bb26, label %bb27
bb26:
  br label %bb34
bb27:
  %t70 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t72 = trunc i64 12 to i32
  %t73 = icmp eq i32 %t70, %t72
  br i1 %t73, label %bb28, label %bb29
bb28:
  br label %bb34
bb29:
  %t75 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t77 = trunc i64 13 to i32
  %t78 = icmp eq i32 %t75, %t77
  br i1 %t78, label %bb30, label %bb31
bb30:
  br label %bb34
bb31:
  %t80 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t82 = trunc i64 14 to i32
  %t83 = icmp eq i32 %t80, %t82
  br i1 %t83, label %bb32, label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb38
bb34:
  %t85 = load i32, ptr %l1, !tbaa !23
  %t86 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t89 = icmp ne i32 %t85, %t86
  br i1 %t89, label %bb35, label %bb36
bb35:
  %t91 = load i32, ptr %l1, !tbaa !23
  %t93 = sext i32 %t91 to i64
  %t95 = getelementptr [15 x i64], ptr @G_2ecompiler_2ftypes_2eprimBits, i64 0, i64 %t93
  %t96 = load i64, ptr %t95, !tbaa !34
  %t98 = sdiv i64 %t96, 8
  store i64 %t98, ptr %l73, !tbaa !24
  br label %bb37
bb36:
  store i64 1, ptr %l73, !tbaa !24
  br label %bb37
bb37:
  %t100 = load i64, ptr %l73, !tbaa !24
  store i64 %t100, ptr %l3, !tbaa !24
  %t101 = load i64, ptr %l3, !tbaa !24
  store i64 %t101, ptr %l4, !tbaa !24
  br label %bb166
bb38:
  %t103 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t105 = trunc i64 31 to i32
  %t106 = icmp eq i32 %t103, %t105
  br i1 %t106, label %bb39, label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb44
bb41:
  %t108 = getelementptr %"compiler/types:data", ptr %l2, i32 0, i32 1
  %t109 = load i64, ptr %t108, !tbaa !24
  %t111 = call i64 @compiler_2ftypes_2eIntBytes(i64 %t109)
  store i64 %t111, ptr %l82
  br label %bb42
bb42:
  %t112 = load i64, ptr %l82, !tbaa !24
  store i64 %t112, ptr %l6, !tbaa !24
  %t113 = getelementptr %"compiler/types:data", ptr %l2, i32 0, i32 1
  %t114 = load i64, ptr %t113, !tbaa !24
  %t116 = call i64 @compiler_2ftypes_2eIntBytes(i64 %t114)
  store i64 %t116, ptr %l84
  br label %bb43
bb43:
  %t117 = load i64, ptr %l84, !tbaa !24
  %t118 = load i64, ptr %l6, !tbaa !24
  store i64 %t118, ptr %l3, !tbaa !24
  store i64 %t117, ptr %l4, !tbaa !24
  br label %bb166
bb44:
  %t122 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t124 = trunc i64 16 to i32
  %t125 = icmp eq i32 %t122, %t124
  br i1 %t125, label %bb45, label %bb46
bb45:
  br label %bb47
bb46:
  br label %bb48
bb47:
  store i64 4, ptr %l3, !tbaa !24
  store i64 4, ptr %l4, !tbaa !24
  br label %bb166
bb48:
  %t131 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t133 = trunc i64 32 to i32
  %t134 = icmp eq i32 %t131, %t133
  br i1 %t134, label %bb49, label %bb50
bb49:
  br label %bb51
bb50:
  br label %bb62
bb51:
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t137 = load i32, ptr %l1, !tbaa !23
  %t140 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t136, i32 %t137)
  store i32 %t140, ptr %l95
  br label %bb52
bb52:
  %t141 = load i32, ptr %l95, !tbaa !23
  store i32 %t141, ptr %l10, !tbaa !23
  %t142 = load i32, ptr %l10, !tbaa !23
  %t144 = icmp eq i32 %t142, 5
  br i1 %t144, label %bb53, label %bb54
bb53:
  store i64 4, ptr %l3, !tbaa !24
  store i64 4, ptr %l4, !tbaa !24
  br label %bb61
bb54:
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t151 = load i32, ptr %l10, !tbaa !23
  %t154 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLayoutState(ptr %v0, ptr %t150, i32 %t151)
  store i64 %t154, ptr %l102
  br label %bb55
bb55:
  %t155 = load i64, ptr @G_2ecompiler_2ftypes_2eLaidOut, !tbaa !24
  %t156 = load i64, ptr %l102, !tbaa !24
  %t158 = icmp ne i64 %t156, %t155
  br i1 %t158, label %bb56, label %bb57
bb56:
  store i1 false, ptr %rv
  br label %ret
bb57:
  br label %bb58
bb58:
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t162 = load i32, ptr %l10, !tbaa !23
  %t165 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSize(ptr %v0, ptr %t161, i32 %t162)
  store i64 %t165, ptr %l108
  br label %bb59
bb59:
  %t166 = load i64, ptr %l108, !tbaa !24
  store i64 %t166, ptr %l13, !tbaa !24
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t168 = load i32, ptr %l10, !tbaa !23
  %t171 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAlign(ptr %v0, ptr %t167, i32 %t168)
  store i64 %t171, ptr %l111
  br label %bb60
bb60:
  %t172 = load i64, ptr %l111, !tbaa !24
  %t173 = load i64, ptr %l13, !tbaa !24
  store i64 %t173, ptr %l3, !tbaa !24
  store i64 %t172, ptr %l4, !tbaa !24
  br label %bb61
bb61:
  br label %bb166
bb62:
  %t177 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t179 = trunc i64 21 to i32
  %t180 = icmp eq i32 %t177, %t179
  br i1 %t180, label %bb63, label %bb64
bb63:
  br label %bb65
bb64:
  br label %bb66
bb65:
  store i64 16, ptr %l3, !tbaa !24
  store i64 8, ptr %l4, !tbaa !24
  br label %bb166
bb66:
  %t186 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t188 = trunc i64 20 to i32
  %t189 = icmp eq i32 %t186, %t188
  br i1 %t189, label %bb67, label %bb68
bb67:
  br label %bb69
bb68:
  br label %bb80
bb69:
  %t191 = load ptr, ptr %l0, !tbaa !29
  store ptr %t191, ptr %l120, !tbaa !29
  %t192 = load ptr, ptr %l0, !tbaa !29
  %t193 = load i32, ptr %l1, !tbaa !23
  %t196 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t192, i32 %t193)
  store i32 %t196, ptr %l123
  br label %bb70
bb70:
  %t197 = load ptr, ptr %l120, !tbaa !29
  %t198 = load i32, ptr %l123, !tbaa !23
  %t199 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2erunTimeArray(ptr %v0, ptr %t197, i32 %t198)
  store i1 %t199, ptr %l124
  br label %bb71
bb71:
  %t200 = load i1, ptr %l124, !tbaa !21
  br i1 %t200, label %bb72, label %bb73
bb72:
  store i1 true, ptr %l125, !tbaa !21
  br label %bb76
bb73:
  %t201 = load ptr, ptr %l0, !tbaa !29
  store ptr %t201, ptr %l126, !tbaa !29
  %t202 = load ptr, ptr %l0, !tbaa !29
  %t203 = load i32, ptr %l1, !tbaa !23
  %t206 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t202, i32 %t203)
  store i32 %t206, ptr %l129
  br label %bb74
bb74:
  %t207 = load ptr, ptr %l126, !tbaa !29
  %t208 = load i32, ptr %l129, !tbaa !23
  %t209 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t207, i32 %t208)
  store i32 %t209, ptr %l130
  br label %bb75
bb75:
  %t210 = load i32, ptr %l130, !range !{i32 0, i32 33}
  %t212 = trunc i64 29 to i32
  %t213 = icmp eq i32 %t210, %t212
  store i1 %t213, ptr %l125, !tbaa !21
  br label %bb76
bb76:
  %t215 = load i1, ptr %l125, !tbaa !21
  br i1 %t215, label %bb77, label %bb78
bb77:
  store i64 16, ptr %l3, !tbaa !24
  store i64 8, ptr %l4, !tbaa !24
  br label %bb79
bb78:
  store i64 8, ptr %l3, !tbaa !24
  store i64 8, ptr %l4, !tbaa !24
  br label %bb79
bb79:
  br label %bb166
bb80:
  %t224 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t226 = trunc i64 19 to i32
  %t227 = icmp eq i32 %t224, %t226
  br i1 %t227, label %bb81, label %bb82
bb81:
  br label %bb83
bb82:
  br label %bb98
bb83:
  %t229 = load ptr, ptr %l0, !tbaa !29
  %t230 = load i32, ptr %l1, !tbaa !23
  %t233 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t229, i32 %t230)
  store i32 %t233, ptr %l141
  br label %bb84
bb84:
  %t234 = load i32, ptr %l141, !tbaa !23
  %t235 = icmp eq i32 %t234, 0
  br i1 %t235, label %bb85, label %bb86
bb85:
  store i64 16, ptr %l3, !tbaa !24
  store i64 8, ptr %l4, !tbaa !24
  br label %bb97
bb86:
  %t241 = load ptr, ptr %l0, !tbaa !29
  store ptr %t241, ptr %l145, !tbaa !29
  %t242 = load ptr, ptr %l0, !tbaa !29
  %t243 = load i32, ptr %l1, !tbaa !23
  %t246 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t242, i32 %t243)
  store i32 %t246, ptr %l148
  br label %bb87
bb87:
  %t247 = load ptr, ptr %l145, !tbaa !29
  %t248 = load i32, ptr %l148, !tbaa !23
  %t249 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t247, i32 %t248)
  store i32 %t249, ptr %l149
  br label %bb88
bb88:
  %t250 = load i32, ptr %l149, !range !{i32 0, i32 33}
  %t252 = trunc i64 26 to i32
  %t253 = icmp eq i32 %t250, %t252
  %t255 = xor i1 %t253, true
  br i1 %t255, label %bb89, label %bb90
bb89:
  store i1 false, ptr %rv
  br label %ret
bb90:
  br label %bb91
bb91:
  %t258 = load ptr, ptr %l0, !tbaa !29
  %t259 = load i32, ptr %l1, !tbaa !23
  %t262 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t258, i32 %t259)
  store i32 %t262, ptr %l156
  br label %bb92
bb92:
  %t263 = load i32, ptr %l156, !tbaa !23
  store i32 %t263, ptr %l23, !tbaa !23
  %t264 = load ptr, ptr %l0, !tbaa !29
  %t265 = load i32, ptr %l23, !tbaa !23
  %t268 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSize(ptr %v0, ptr %t264, i32 %t265)
  store i64 %t268, ptr %l159
  br label %bb93
bb93:
  %t269 = load ptr, ptr %l0, !tbaa !29
  store ptr %t269, ptr %l160, !tbaa !29
  %t270 = load ptr, ptr %l0, !tbaa !29
  %t271 = load i32, ptr %l1, !tbaa !23
  %t274 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t270, i32 %t271)
  store i32 %t274, ptr %l163
  br label %bb94
bb94:
  %t275 = load ptr, ptr %l160, !tbaa !29
  %t276 = load i32, ptr %l163, !tbaa !23
  %t277 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %t275, i32 %t276)
  store i64 %t277, ptr %l164
  br label %bb95
bb95:
  %t278 = load i64, ptr %l159, !tbaa !24
  %t279 = load i64, ptr %l164, !tbaa !24
  %t280 = mul i64 %t278, %t279
  store i64 %t280, ptr %l24, !tbaa !24
  %t282 = load ptr, ptr %l0, !tbaa !29
  %t283 = load i32, ptr %l23, !tbaa !23
  %t286 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAlign(ptr %v0, ptr %t282, i32 %t283)
  store i64 %t286, ptr %l168
  br label %bb96
bb96:
  %t287 = load i64, ptr %l168, !tbaa !24
  %t288 = load i64, ptr %l24, !tbaa !24
  store i64 %t288, ptr %l3, !tbaa !24
  store i64 %t287, ptr %l4, !tbaa !24
  br label %bb97
bb97:
  br label %bb166
bb98:
  %t292 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t294 = trunc i64 22 to i32
  %t295 = icmp eq i32 %t292, %t294
  br i1 %t295, label %bb99, label %bb100
bb99:
  br label %bb103
bb100:
  %t297 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t299 = trunc i64 23 to i32
  %t300 = icmp eq i32 %t297, %t299
  br i1 %t300, label %bb101, label %bb102
bb101:
  br label %bb103
bb102:
  br label %bb106
bb103:
  %t302 = load ptr, ptr %l0, !tbaa !29
  store ptr %t302, ptr %l175, !tbaa !29
  %t303 = load i32, ptr %l1, !tbaa !23
  store i32 %t303, ptr %l176, !tbaa !23
  %t304 = load ptr, ptr %l0, !tbaa !29
  %t305 = load i32, ptr %l1, !tbaa !23
  %t308 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t304, i32 %t305)
  store i32 %t308, ptr %l179
  br label %bb104
bb104:
  %t309 = load ptr, ptr %l175, !tbaa !29
  %t310 = load i32, ptr %l176, !tbaa !23
  %t311 = load i32, ptr %l179, !tbaa !23
  %t312 = call { i64, i64 } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2elayFields(ptr %v0, ptr %t309, i32 %t310, i32 %t311)
  store { i64, i64 } %t312, ptr %l180
  br label %bb105
bb105:
  %t313 = load { i64, i64 }, ptr %l180
  store { i64, i64 } %t313, ptr %l26
  %t314 = getelementptr { i64, i64 }, ptr %l26, i32 0, i32 0
  %t315 = load i64, ptr %t314, !tbaa !24
  store i64 %t315, ptr %l3, !tbaa !24
  %t317 = getelementptr { i64, i64 }, ptr %l26, i32 0, i32 1
  %t318 = load i64, ptr %t317, !tbaa !24
  store i64 %t318, ptr %l4, !tbaa !24
  br label %bb166
bb106:
  %t320 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t322 = trunc i64 24 to i32
  %t323 = icmp eq i32 %t320, %t322
  br i1 %t323, label %bb107, label %bb108
bb107:
  br label %bb109
bb108:
  br label %bb112
bb109:
  %t325 = load ptr, ptr %l0, !tbaa !29
  store ptr %t325, ptr %l185, !tbaa !29
  %t326 = load i32, ptr %l1, !tbaa !23
  store i32 %t326, ptr %l186, !tbaa !23
  %t327 = load ptr, ptr %l0, !tbaa !29
  %t328 = load i32, ptr %l1, !tbaa !23
  %t331 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %v0, ptr %t327, i32 %t328)
  store i32 %t331, ptr %l189
  br label %bb110
bb110:
  %t332 = load ptr, ptr %l185, !tbaa !29
  %t333 = load i32, ptr %l186, !tbaa !23
  %t334 = load i32, ptr %l189, !tbaa !23
  %t335 = call { i64, i64 } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2elayEnum(ptr %v0, ptr %t332, i32 %t333, i32 %t334)
  store { i64, i64 } %t335, ptr %l190
  br label %bb111
bb111:
  %t336 = load { i64, i64 }, ptr %l190
  store { i64, i64 } %t336, ptr %l27
  %t337 = getelementptr { i64, i64 }, ptr %l27, i32 0, i32 0
  %t338 = load i64, ptr %t337, !tbaa !24
  store i64 %t338, ptr %l3, !tbaa !24
  %t340 = getelementptr { i64, i64 }, ptr %l27, i32 0, i32 1
  %t341 = load i64, ptr %t340, !tbaa !24
  store i64 %t341, ptr %l4, !tbaa !24
  br label %bb166
bb112:
  %t343 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t345 = trunc i64 18 to i32
  %t346 = icmp eq i32 %t343, %t345
  br i1 %t346, label %bb113, label %bb114
bb113:
  br label %bb115
bb114:
  br label %bb161
bb115:
  %t348 = load ptr, ptr %l0, !tbaa !29
  %t349 = load i32, ptr %l1, !tbaa !23
  %t352 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %t348, i32 %t349)
  store i1 %t352, ptr %l197
  br label %bb116
bb116:
  %t353 = load i1, ptr %l197, !tbaa !21
  %t354 = xor i1 %t353, true
  br i1 %t354, label %bb117, label %bb118
bb117:
  store i1 false, ptr %rv
  br label %ret
bb118:
  br label %bb119
bb119:
  %t357 = load ptr, ptr %l0, !tbaa !29
  store ptr %t357, ptr %l200, !tbaa !29
  %t358 = load ptr, ptr %l0, !tbaa !29
  %t359 = load i32, ptr %l1, !tbaa !23
  %t362 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t358, i32 %t359)
  store i32 %t362, ptr %l203
  br label %bb120
bb120:
  %t363 = load ptr, ptr %l200, !tbaa !29
  %t364 = load i32, ptr %l203, !tbaa !23
  %t365 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t363, i32 %t364)
  store i32 %t365, ptr %l204
  br label %bb121
bb121:
  %t366 = load i32, ptr %l204, !range !{i32 0, i32 6}
  store i32 %t366, ptr %l28
  %t367 = load i32, ptr %l28, !range !{i32 0, i32 6}
  %t369 = trunc i64 0 to i32
  %t370 = icmp eq i32 %t367, %t369
  br i1 %t370, label %bb122, label %bb123
bb122:
  br label %bb124
bb123:
  br label %bb132
bb124:
  %t372 = load ptr, ptr %l0, !tbaa !29
  %t373 = load i32, ptr %l1, !tbaa !23
  %t376 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePacked(ptr %v0, ptr %t372, i32 %t373)
  store i1 %t376, ptr %l209
  br label %bb125
bb125:
  %t377 = load i1, ptr %l209, !tbaa !21
  br i1 %t377, label %bb126, label %bb127
bb126:
  %t378 = load ptr, ptr %l0, !tbaa !29
  %t379 = load i32, ptr %l1, !tbaa !23
  %t382 = call { i64, i64 } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2elayPacked(ptr %v0, ptr %t378, i32 %t379)
  store { i64, i64 } %t382, ptr %l213
  br label %bb128
bb127:
  %t383 = load ptr, ptr %l0, !tbaa !29
  store ptr %t383, ptr %l214, !tbaa !29
  %t384 = load i32, ptr %l1, !tbaa !23
  store i32 %t384, ptr %l215, !tbaa !23
  %t385 = load ptr, ptr %l0, !tbaa !29
  %t386 = load i32, ptr %l1, !tbaa !23
  %t389 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t385, i32 %t386)
  store i32 %t389, ptr %l218
  br label %bb129
bb128:
  %t390 = load { i64, i64 }, ptr %l213
  store { i64, i64 } %t390, ptr %l210
  br label %bb131
bb129:
  %t391 = load ptr, ptr %l214, !tbaa !29
  %t392 = load i32, ptr %l215, !tbaa !23
  %t393 = load i32, ptr %l218, !tbaa !23
  %t394 = call { i64, i64 } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2elayFields(ptr %v0, ptr %t391, i32 %t392, i32 %t393)
  store { i64, i64 } %t394, ptr %l219
  br label %bb130
bb130:
  %t395 = load { i64, i64 }, ptr %l219
  store { i64, i64 } %t395, ptr %l210
  br label %bb131
bb131:
  %t396 = load { i64, i64 }, ptr %l210
  store { i64, i64 } %t396, ptr %l29
  %t397 = getelementptr { i64, i64 }, ptr %l29, i32 0, i32 0
  %t398 = load i64, ptr %t397, !tbaa !24
  store i64 %t398, ptr %l3, !tbaa !24
  %t400 = getelementptr { i64, i64 }, ptr %l29, i32 0, i32 1
  %t401 = load i64, ptr %t400, !tbaa !24
  store i64 %t401, ptr %l4, !tbaa !24
  br label %bb160
bb132:
  %t403 = load i32, ptr %l28, !range !{i32 0, i32 6}
  %t405 = trunc i64 1 to i32
  %t406 = icmp eq i32 %t403, %t405
  br i1 %t406, label %bb133, label %bb134
bb133:
  br label %bb135
bb134:
  br label %bb138
bb135:
  %t408 = load ptr, ptr %l0, !tbaa !29
  store ptr %t408, ptr %l224, !tbaa !29
  %t409 = load i32, ptr %l1, !tbaa !23
  store i32 %t409, ptr %l225, !tbaa !23
  %t410 = load ptr, ptr %l0, !tbaa !29
  %t411 = load i32, ptr %l1, !tbaa !23
  %t414 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t410, i32 %t411)
  store i32 %t414, ptr %l228
  br label %bb136
bb136:
  %t415 = load ptr, ptr %l224, !tbaa !29
  %t416 = load i32, ptr %l225, !tbaa !23
  %t417 = load i32, ptr %l228, !tbaa !23
  %t418 = call { i64, i64 } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2elayEnum(ptr %v0, ptr %t415, i32 %t416, i32 %t417)
  store { i64, i64 } %t418, ptr %l229
  br label %bb137
bb137:
  %t419 = load { i64, i64 }, ptr %l229
  store { i64, i64 } %t419, ptr %l30
  %t420 = getelementptr { i64, i64 }, ptr %l30, i32 0, i32 0
  %t421 = load i64, ptr %t420, !tbaa !24
  store i64 %t421, ptr %l3, !tbaa !24
  %t423 = getelementptr { i64, i64 }, ptr %l30, i32 0, i32 1
  %t424 = load i64, ptr %t423, !tbaa !24
  store i64 %t424, ptr %l4, !tbaa !24
  br label %bb160
bb138:
  %t426 = load i32, ptr %l28, !range !{i32 0, i32 6}
  %t428 = trunc i64 2 to i32
  %t429 = icmp eq i32 %t426, %t428
  br i1 %t429, label %bb139, label %bb140
bb139:
  br label %bb141
bb140:
  br label %bb142
bb141:
  store i64 4, ptr %l3, !tbaa !24
  store i64 4, ptr %l4, !tbaa !24
  br label %bb160
bb142:
  %t435 = load i32, ptr %l28, !range !{i32 0, i32 6}
  %t437 = trunc i64 4 to i32
  %t438 = icmp eq i32 %t435, %t437
  br i1 %t438, label %bb143, label %bb144
bb143:
  br label %bb145
bb144:
  br label %bb153
bb145:
  %t440 = load ptr, ptr %l0, !tbaa !29
  %t441 = load i32, ptr %l1, !tbaa !23
  %t444 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t440, i32 %t441)
  store i32 %t444, ptr %l240
  br label %bb146
bb146:
  %t445 = load i32, ptr %l240, !tbaa !23
  store i32 %t445, ptr %l33, !tbaa !23
  %t446 = load ptr, ptr %l0, !tbaa !29
  %t447 = load i32, ptr %l33, !tbaa !23
  %t450 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLayoutState(ptr %v0, ptr %t446, i32 %t447)
  store i64 %t450, ptr %l243
  br label %bb147
bb147:
  %t451 = load i64, ptr @G_2ecompiler_2ftypes_2eLaidOut, !tbaa !24
  %t452 = load i64, ptr %l243, !tbaa !24
  %t454 = icmp ne i64 %t452, %t451
  br i1 %t454, label %bb148, label %bb149
bb148:
  store i1 false, ptr %rv
  br label %ret
bb149:
  br label %bb150
bb150:
  %t457 = load ptr, ptr %l0, !tbaa !29
  %t458 = load i32, ptr %l33, !tbaa !23
  %t461 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSize(ptr %v0, ptr %t457, i32 %t458)
  store i64 %t461, ptr %l249
  br label %bb151
bb151:
  %t462 = load i64, ptr %l249, !tbaa !24
  store i64 %t462, ptr %l34, !tbaa !24
  %t463 = load ptr, ptr %l0, !tbaa !29
  %t464 = load i32, ptr %l33, !tbaa !23
  %t467 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAlign(ptr %v0, ptr %t463, i32 %t464)
  store i64 %t467, ptr %l252
  br label %bb152
bb152:
  %t468 = load i64, ptr %l252, !tbaa !24
  %t469 = load i64, ptr %l34, !tbaa !24
  store i64 %t469, ptr %l3, !tbaa !24
  store i64 %t468, ptr %l4, !tbaa !24
  br label %bb160
bb153:
  %t473 = load i32, ptr %l28, !range !{i32 0, i32 6}
  %t475 = trunc i64 3 to i32
  %t476 = icmp eq i32 %t473, %t475
  br i1 %t476, label %bb154, label %bb155
bb154:
  br label %bb158
bb155:
  %t478 = load i32, ptr %l28, !range !{i32 0, i32 6}
  %t480 = trunc i64 5 to i32
  %t481 = icmp eq i32 %t478, %t480
  br i1 %t481, label %bb156, label %bb157
bb156:
  br label %bb158
bb157:
  br label %bb159
bb158:
  store i1 false, ptr %rv
  br label %ret
bb159:
  call void @__olang_check_failed(ptr @olang_loc_448c58e2e97e944f_f556e6dbd0c75243)
  unreachable
bb160:
  br label %bb166
bb161:
  br i1 true, label %bb162, label %bb163
bb162:
  br label %bb164
bb163:
  br label %bb165
bb164:
  store i1 false, ptr %rv
  br label %ret
bb165:
  call void @__olang_check_failed(ptr @olang_loc_136e48f5d148640e_b95a40c005170ac2)
  unreachable
bb166:
  %t485 = load ptr, ptr %l0, !tbaa !29
  %t487 = getelementptr %"compiler/types:Table", ptr %t485, i32 0, i32 21
  %t488 = load i32, ptr %l1, !tbaa !23
  %t490 = sext i32 %t488 to i64
  %t491 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t487, i64 %t490, i64 %t491)
  br label %bb167
bb167:
  %t495 = load ptr, ptr %l0, !tbaa !29
  %t497 = getelementptr %"compiler/types:Table", ptr %t495, i32 0, i32 22
  %t498 = load i32, ptr %l1, !tbaa !23
  %t500 = sext i32 %t498 to i64
  %t501 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t497, i64 %t500, i64 %t501)
  br label %bb168
bb168:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConst(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l3 = alloca ptr
  %l8 = alloca %"compiler/types:data"
  %l9 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store ptr %a0, ptr %l3, !tbaa !29
  %t4 = sext i32 %a1 to i64
  %t9 = call %"compiler/types:data" @compiler_2ftypes_3adata_2ector(ptr %s0, i32 26, i64 %t4, i64 %a2, i64 0, i64 0, i64 0, i64 0, i64 0)
  store %"compiler/types:data" %t9, ptr %l8
  br label %bb1
bb1:
  %t10 = load ptr, ptr %l3, !tbaa !29
  %t11 = load %"compiler/types:data", ptr %l8
  %t12 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eintern(ptr %v0, ptr %t10, %"compiler/types:data" %t11, i32 1)
  store i32 %t12, ptr %l9
  br label %bb2
bb2:
  call void @__olang_scope_close(ptr %s0)
  %t13 = load i32, ptr %l9, !tbaa !23
  store i32 %t13, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstType(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l4 = alloca i64
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %a0, i32 %a1)
  store i64 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i64, ptr %l4, !tbaa !24
  %t7 = trunc i64 %t6 to i32
  store i32 %t7, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l6 = alloca %"compiler/types:decl"
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/types:Table", ptr %a0, i32 0, i32 13
  %t6 = sext i32 %a1 to i64
  %t9 = call %"compiler/types:decl" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3adecl_3e_2eAt_3ccompiler_2ftypes_3adecl_3e(ptr %v0, ptr %t3, i64 %t6)
  store %"compiler/types:decl" %t9, ptr %l6
  br label %bb1
bb1:
  %t10 = getelementptr %"compiler/types:decl", ptr %l6, i32 0, i32 2
  %t11 = load i32, ptr %t10, !range !{i32 0, i32 6}
  store i32 %t11, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l6 = alloca %"compiler/types:decl"
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/types:Table", ptr %a0, i32 0, i32 13
  %t6 = sext i32 %a1 to i64
  %t9 = call %"compiler/types:decl" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3adecl_3e_2eAt_3ccompiler_2ftypes_3adecl_3e(ptr %v0, ptr %t3, i64 %t6)
  store %"compiler/types:decl" %t9, ptr %l6
  br label %bb1
bb1:
  %t10 = getelementptr %"compiler/types:decl", ptr %l6, i32 0, i32 1
  %t11 = load i32, ptr %t10, !tbaa !23
  store i32 %t11, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l4 = alloca i64
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %a0, i32 %a1)
  store i64 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i64, ptr %l4, !tbaa !24
  %t7 = trunc i64 %t6 to i32
  store i32 %t7, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclaredUnique(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i32
  %l7 = alloca i1
  %l9 = alloca ptr
  %l12 = alloca i32
  %l14 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t1, i32 %t2)
  store i32 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t8 = trunc i64 18 to i32
  %t9 = icmp eq i32 %t6, %t8
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/types:Table", ptr %t11, i32 0, i32 38
  store ptr %t13, ptr %l9, !tbaa !29
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load i32, ptr %l1, !tbaa !23
  %t18 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t14, i32 %t15)
  store i32 %t18, ptr %l12
  br label %bb4
bb3:
  store i1 false, ptr %l7, !tbaa !21
  br label %bb6
bb4:
  %t19 = load i32, ptr %l12, !tbaa !23
  %t20 = sext i32 %t19 to i64
  %t21 = load ptr, ptr %l9, !tbaa !29
  %t23 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t21, i64 %t20)
  store i1 %t23, ptr %l14
  br label %bb5
bb5:
  %t24 = load i1, ptr %l14, !tbaa !21
  store i1 %t24, ptr %l7, !tbaa !21
  br label %bb6
bb6:
  %t25 = load i1, ptr %l7, !tbaa !21
  store i1 %t25, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDepth(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l4 = alloca i32
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2edepthOf(ptr %v0, ptr %a0, i32 %a1)
  store i32 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i32, ptr %l4, !tbaa !23
  %t7 = sext i32 %t6 to i64
  store i64 %t7, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDestructs(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l4 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2edestructs(ptr %v0, ptr %a0, i32 %a1, i64 0)
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

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l4 = alloca i64
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %a0, i32 %a1)
  store i64 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i64, ptr %l4, !tbaa !24
  %t7 = trunc i64 %t6 to i32
  store i32 %t7, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrMask(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i32
  %l7 = alloca i64
  %l10 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t1, i32 %t2)
  store i32 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t8 = trunc i64 28 to i32
  %t9 = icmp eq i32 %t6, %t8
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i32, ptr %l1, !tbaa !23
  %t15 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eB(ptr %v0, ptr %t11, i32 %t12)
  store i64 %t15, ptr %l10
  br label %bb4
bb3:
  %t16 = sub i64 0, 1
  store i64 %t16, ptr %l7, !tbaa !65
  br label %bb5
bb4:
  %t18 = load i64, ptr %l10, !tbaa !24
  store i64 %t18, ptr %l7, !tbaa !65
  br label %bb5
bb5:
  %t20 = load i64, ptr %l7, !tbaa !65
  store i64 %t20, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrSet(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l6 = alloca %"compiler/types:data"
  %l7 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store ptr %a0, ptr %l2, !tbaa !29
  %t4 = sext i32 %a1 to i64
  %t7 = call %"compiler/types:data" @compiler_2ftypes_3adata_2ector(ptr %s0, i32 30, i64 %t4, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0)
  store %"compiler/types:data" %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l2, !tbaa !29
  %t9 = load %"compiler/types:data", ptr %l6
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eintern(ptr %v0, ptr %t8, %"compiler/types:data" %t9, i32 1)
  store i32 %t10, ptr %l7
  br label %bb2
bb2:
  call void @__olang_scope_close(ptr %s0)
  %t11 = load i32, ptr %l7, !tbaa !23
  store i32 %t11, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrSetItems(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i32
  %l7 = alloca i32
  %l10 = alloca i64
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t1, i32 %t2)
  store i32 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t8 = trunc i64 30 to i32
  %t9 = icmp eq i32 %t6, %t8
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i32, ptr %l1, !tbaa !23
  %t15 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %t11, i32 %t12)
  store i64 %t15, ptr %l10
  br label %bb4
bb3:
  store i32 0, ptr %l7, !tbaa !23
  br label %bb5
bb4:
  %t16 = load i64, ptr %l10, !tbaa !24
  %t17 = trunc i64 %t16 to i32
  store i32 %t17, ptr %l7, !tbaa !23
  br label %bb5
bb5:
  %t20 = load i32, ptr %l7, !tbaa !23
  store i32 %t20, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValName(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i32
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/types:Table", ptr %a0, i32 0, i32 18
  %t7 = call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20compile_H4ee179d696ae959fbb722da89c7f46de(ptr %v0, ptr %t3, i32 %a1)
  %t8 = extractvalue { i32, i32 } %t7, 1
  %t9 = extractvalue { i32, i32 } %t7, 0
  store i32 %t9, ptr %l7
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store i32 %t8, ptr %l6
  br label %bb1
bb1:
  %t12 = load i32, ptr %l6, !tbaa !23
  store i32 %t12, ptr %l2, !tbaa !23
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i32 -1, ptr %l2, !tbaa !23
  br label %bb4
bb4:
  %t13 = load i32, ptr %l2, !tbaa !23
  store i32 %t13, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l4 = alloca i64
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eC(ptr %v0, ptr %a0, i32 %a1)
  store i64 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i64, ptr %l4, !tbaa !24
  %t7 = trunc i64 %t6 to i32
  store i32 %t7, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l4 = alloca %"compiler/types:body"
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call %"compiler/types:body" @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ebodyOf(ptr %v0, ptr %a0, i32 %a1)
  store %"compiler/types:body" %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = getelementptr %"compiler/types:body", ptr %l4, i32 0, i32 0
  %t7 = load i32, ptr %t6, !tbaa !23
  store i32 %t7, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i32, i32 } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFindDecl(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i32
  %rv = alloca { i32, i32 }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/types:Table", ptr %a0, i32 0, i32 15
  %t7 = call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H25f20ec7bc3952e7f71d4b5fc38b1e45(ptr %v0, ptr %v1, ptr %t3, { i64, ptr } %a1)
  %t8 = extractvalue { i32, i32 } %t7, 1
  %t9 = extractvalue { i32, i32 } %t7, 0
  store i32 %t9, ptr %l7
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store i32 %t8, ptr %l6
  br label %bb1
bb1:
  %t12 = load i32, ptr %l6, !tbaa !23
  store i32 %t12, ptr %l2, !tbaa !23
  br label %bb3
bb2:
  %t13 = load i32, ptr %l7, !tbaa !23
  %t14 = lshr i32 %t13, 16
  %t15 = and i32 %t13, 65535
  %t16 = icmp eq i32 %t14, 1
  %t17 = select i1 %t16, i32 1, i32 0
  %t18 = icmp eq i32 %t13, 0
  %t19 = shl i32 %t17, 16
  %t20 = or i32 %t19, %t15
  %t21 = select i1 %t18, i32 0, i32 %t20
  %t23 = insertvalue { i32, i32 } zeroinitializer, i32 %t21, 0
  store { i32, i32 } %t23, ptr %rv
  br label %ret
bb3:
  %t24 = load i32, ptr %l2, !tbaa !23
  %t25 = insertvalue { i32, i32 } zeroinitializer, i32 %t24, 1
  store { i32, i32 } %t25, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i32 }, ptr %rv
  ret { i32, i32 } %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eForeignRef(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l5 = alloca i32
  %l12 = alloca i32
  %l15 = alloca i32
  %l18 = alloca i1
  %l19 = alloca ptr
  %l22 = alloca i32
  %l23 = alloca i32
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t1, i32 %t2)
  store i32 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t8 = trunc i64 20 to i32
  %t9 = icmp eq i32 %t6, %t8
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb2, label %bb3
bb2:
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load i32, ptr %l1, !tbaa !23
  %t18 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t14, i32 %t15)
  store i32 %t18, ptr %l12
  br label %bb5
bb5:
  %t19 = load i32, ptr %l12, !tbaa !23
  store i32 %t19, ptr %l2, !tbaa !23
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load i32, ptr %l2, !tbaa !23
  %t24 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t20, i32 %t21)
  store i32 %t24, ptr %l15
  br label %bb6
bb6:
  %t25 = load i32, ptr %l15, !range !{i32 0, i32 33}
  %t27 = trunc i64 18 to i32
  %t28 = icmp eq i32 %t25, %t27
  br i1 %t28, label %bb7, label %bb8
bb7:
  %t30 = load ptr, ptr %l0, !tbaa !29
  store ptr %t30, ptr %l19, !tbaa !29
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load i32, ptr %l2, !tbaa !23
  %t35 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t31, i32 %t32)
  store i32 %t35, ptr %l22
  br label %bb9
bb8:
  store i1 false, ptr %l18, !tbaa !21
  br label %bb11
bb9:
  %t36 = load ptr, ptr %l19, !tbaa !29
  %t37 = load i32, ptr %l22, !tbaa !23
  %t38 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t36, i32 %t37)
  store i32 %t38, ptr %l23
  br label %bb10
bb10:
  %t39 = load i32, ptr %l23, !range !{i32 0, i32 6}
  %t41 = trunc i64 5 to i32
  %t42 = icmp eq i32 %t39, %t41
  store i1 %t42, ptr %l18, !tbaa !21
  br label %bb11
bb11:
  %t44 = load i1, ptr %l18, !tbaa !21
  store i1 %t44, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncNullable(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i32
  %l7 = alloca i1
  %l10 = alloca %"compiler/types:data"
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t1, i32 %t2)
  store i32 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t8 = trunc i64 21 to i32
  %t9 = icmp eq i32 %t6, %t8
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i32, ptr %l1, !tbaa !23
  %t15 = call %"compiler/types:data" @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eat(ptr %v0, ptr %t11, i32 %t12)
  store %"compiler/types:data" %t15, ptr %l10
  br label %bb4
bb3:
  store i1 false, ptr %l7, !tbaa !21
  br label %bb5
bb4:
  %t16 = getelementptr %"compiler/types:data", ptr %l10, i32 0, i32 6
  %t17 = load i64, ptr %t16, !tbaa !24
  %t18 = load i64, ptr @G_2ecompiler_2ftypes_2eNullable, !tbaa !24
  %t21 = and i64 %t17, %t18
  %t23 = icmp ne i64 %t21, 0
  store i1 %t23, ptr %l7, !tbaa !21
  br label %bb5
bb5:
  %t25 = load i1, ptr %l7, !tbaa !21
  store i1 %t25, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIntType(ptr %v0, ptr %a0, i64 %a1, i1 %a2) #0 {
entry:
  %l4 = alloca ptr
  %l5 = alloca i64
  %l7 = alloca i64
  %l9 = alloca i32
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/types:Table", ptr %a0, i32 0, i32 36
  store ptr %t3, ptr %l4, !tbaa !29
  store i64 %a1, ptr %l5, !tbaa !24
  br i1 %a2, label %bb1, label %bb2
bb1:
  store i64 128, ptr %l7, !tbaa !24
  br label %bb3
bb2:
  store i64 0, ptr %l7, !tbaa !24
  br label %bb3
bb3:
  %t7 = load i64, ptr %l5, !tbaa !24
  %t8 = load i64, ptr %l7, !tbaa !24
  %t9 = add i64 %t7, %t8
  %t10 = load ptr, ptr %l4, !tbaa !29
  %t12 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t10, i64 %t9)
  store i32 %t12, ptr %l9
  br label %bb4
bb4:
  %t13 = load i32, ptr %l9, !tbaa !23
  store i32 %t13, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l1 = alloca i32
  %l4 = alloca i1
  %l7 = alloca i1
  %l10 = alloca i32
  %rv = alloca i1
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l1, !tbaa !23
  %t3 = icmp sge i32 %t1, 3
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i32, ptr %l1, !tbaa !23
  %t7 = icmp sle i32 %t5, 10
  store i1 %t7, ptr %l4, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb3
bb3:
  %t9 = load i1, ptr %l4, !tbaa !21
  br i1 %t9, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb7
bb5:
  %t11 = load i32, ptr %l1, !tbaa !23
  %t14 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %t11)
  store i32 %t14, ptr %l10
  br label %bb6
bb6:
  %t15 = load i32, ptr %l10, !range !{i32 0, i32 33}
  %t17 = trunc i64 31 to i32
  %t18 = icmp eq i32 %t15, %t17
  store i1 %t18, ptr %l7, !tbaa !21
  br label %bb7
bb7:
  %t20 = load i1, ptr %l7, !tbaa !21
  store i1 %t20, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i32
  %l7 = alloca i1
  %l10 = alloca i64
  %l14 = alloca i1
  %l17 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t1, i32 %t2)
  store i32 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t8 = trunc i64 20 to i32
  %t9 = icmp eq i32 %t6, %t8
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i32, ptr %l1, !tbaa !23
  %t15 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t11, i32 %t12)
  store i64 %t15, ptr %l10
  br label %bb4
bb3:
  store i1 false, ptr %l7, !tbaa !21
  br label %bb5
bb4:
  %t16 = load i64, ptr @G_2ecompiler_2ftypes_2eNullable, !tbaa !24
  %t17 = load i64, ptr %l10, !tbaa !24
  %t19 = and i64 %t17, %t16
  %t21 = icmp ne i64 %t19, 0
  store i1 %t21, ptr %l7, !tbaa !21
  br label %bb5
bb5:
  %t23 = load i1, ptr %l7, !tbaa !21
  br i1 %t23, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l14, !tbaa !21
  br label %bb9
bb7:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load i32, ptr %l1, !tbaa !23
  %t28 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncNullable(ptr %v0, ptr %t24, i32 %t25)
  store i1 %t28, ptr %l17
  br label %bb8
bb8:
  %t29 = load i1, ptr %l17, !tbaa !21
  store i1 %t29, ptr %l14, !tbaa !21
  br label %bb9
bb9:
  %t30 = load i1, ptr %l14, !tbaa !21
  store i1 %t30, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNumber(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l1 = alloca i32
  %l4 = alloca i1
  %l7 = alloca i1
  %l10 = alloca i32
  %rv = alloca i1
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l1, !tbaa !23
  %t3 = icmp sge i32 %t1, 3
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i32, ptr %l1, !tbaa !23
  %t7 = icmp sle i32 %t5, 14
  store i1 %t7, ptr %l4, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb3
bb3:
  %t9 = load i1, ptr %l4, !tbaa !21
  br i1 %t9, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb7
bb5:
  %t11 = load i32, ptr %l1, !tbaa !23
  %t14 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %t11)
  store i32 %t14, ptr %l10
  br label %bb6
bb6:
  %t15 = load i32, ptr %l10, !range !{i32 0, i32 33}
  %t17 = trunc i64 31 to i32
  %t18 = icmp eq i32 %t15, %t17
  store i1 %t18, ptr %l7, !tbaa !21
  br label %bb7
bb7:
  %t20 = load i1, ptr %l7, !tbaa !21
  store i1 %t20, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l4 = alloca i32
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
  store i32 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t8 = trunc i64 20 to i32
  %t9 = icmp eq i32 %t6, %t8
  store i1 %t9, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsSpread(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i32
  %l7 = alloca i1
  %l10 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t1, i32 %t2)
  store i32 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t8 = trunc i64 20 to i32
  %t9 = icmp eq i32 %t6, %t8
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i32, ptr %l1, !tbaa !23
  %t15 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t11, i32 %t12)
  store i64 %t15, ptr %l10
  br label %bb4
bb3:
  store i1 false, ptr %l7, !tbaa !21
  br label %bb5
bb4:
  %t16 = load i64, ptr @G_2ecompiler_2ftypes_2eSpread, !tbaa !24
  %t17 = load i64, ptr %l10, !tbaa !24
  %t19 = and i64 %t17, %t16
  %t21 = icmp ne i64 %t19, 0
  store i1 %t21, ptr %l7, !tbaa !21
  br label %bb5
bb5:
  %t23 = load i1, ptr %l7, !tbaa !21
  store i1 %t23, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i1
  %l7 = alloca i1
  %l10 = alloca i32
  %l13 = alloca i1
  %l16 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l1, !tbaa !23
  %t3 = icmp sge i32 %t1, 7
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i32, ptr %l1, !tbaa !23
  %t7 = icmp sle i32 %t5, 10
  store i1 %t7, ptr %l4, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb3
bb3:
  %t9 = load i1, ptr %l4, !tbaa !21
  br i1 %t9, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb11
bb5:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load i32, ptr %l1, !tbaa !23
  %t14 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t10, i32 %t11)
  store i32 %t14, ptr %l10
  br label %bb6
bb6:
  %t15 = load i32, ptr %l10, !range !{i32 0, i32 33}
  %t17 = trunc i64 31 to i32
  %t18 = icmp eq i32 %t15, %t17
  br i1 %t18, label %bb7, label %bb8
bb7:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load i32, ptr %l1, !tbaa !23
  %t24 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eB(ptr %v0, ptr %t20, i32 %t21)
  store i64 %t24, ptr %l16
  br label %bb9
bb8:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb10
bb9:
  %t25 = load i64, ptr %l16, !tbaa !24
  %t26 = icmp eq i64 %t25, 0
  store i1 %t26, ptr %l13, !tbaa !21
  br label %bb10
bb10:
  %t28 = load i1, ptr %l13, !tbaa !21
  store i1 %t28, ptr %l7, !tbaa !21
  br label %bb11
bb11:
  %t29 = load i1, ptr %l7, !tbaa !21
  store i1 %t29, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKeepsHome(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l11 = alloca { i64, ptr }
  %l18 = alloca i64
  %l21 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t5 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKeepsOf(ptr %v0, ptr %s0, ptr %a0, i32 %a1)
  store { i64, ptr } %t5, ptr %l11
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t6, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t7 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  %t11 = sdiv i64 %t9, 3
  store i64 %t11, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t13 = load i64, ptr %l4, !tbaa !24
  %t14 = load i64, ptr %l3, !tbaa !24
  %t17 = icmp sgt i64 %t13, %t14
  br i1 %t17, label %bb2, label %bb3
bb2:
  %t19 = load i64, ptr %l5, !tbaa !24
  %t21 = icmp sgt i64 %t19, 0
  br i1 %t21, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb7
bb4:
  %t23 = load i64, ptr %l4, !tbaa !24
  %t24 = load i64, ptr %l3, !tbaa !24
  %t27 = sub i64 %t23, %t24
  %t28 = load i64, ptr %l5, !tbaa !24
  %t31 = add i64 %t27, %t28
  %t33 = sub i64 %t31, 1
  %t34 = load i64, ptr %l5, !tbaa !24
  %t37 = sdiv i64 %t33, %t34
  store i64 %t37, ptr %l21, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb6
bb6:
  %t39 = load i64, ptr %l21, !tbaa !24
  store i64 %t39, ptr %l18, !tbaa !24
  br label %bb7
bb7:
  %t40 = load i64, ptr %l18, !tbaa !24
  store i64 %t40, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb8
bb8:
  %t41 = load i64, ptr %l7, !tbaa !24
  %t42 = load i64, ptr %l6, !tbaa !24
  %t45 = icmp slt i64 %t41, %t42
  %t47 = xor i1 %t45, true
  br i1 %t47, label %bb9, label %bb10
bb9:
  br label %bb16
bb10:
  br label %bb11
bb11:
  %t49 = load i64, ptr %l3, !tbaa !24
  %t50 = load i64, ptr %l7, !tbaa !24
  %t51 = load i64, ptr %l5, !tbaa !24
  %t54 = mul i64 %t50, %t51
  %t57 = add i64 %t49, %t54
  %t61 = mul i64 3, %t57
  %t63 = add i64 %t61, 1
  %t65 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !27
  %t67 = getelementptr i64, ptr %t66, i64 %t63
  %t68 = load i64, ptr %t67, !tbaa !34
  %t69 = load i64, ptr @G_2ecompiler_2ftypes_2eKeepsHome, !tbaa !24
  %t72 = icmp eq i64 %t68, %t69
  br i1 %t72, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t75 = load i64, ptr %l7, !tbaa !24
  %t77 = add i64 %t75, 1
  store i64 %t77, ptr %l7, !tbaa !24
  br label %bb8
bb16:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKeepsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %lp4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l12 = alloca ptr
  %l15 = alloca i64
  %l16 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l23 = alloca i64
  %l32 = alloca i64
  %l35 = alloca i64
  %l54 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/types:Table", ptr %t1, i32 0, i32 32
  store ptr %t3, ptr %l12, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t8 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePromisesOf(ptr %v0, ptr %t4, i32 %a1)
  store i64 %t8, ptr %l15
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l12, !tbaa !29
  %t10 = load i64, ptr %l15, !tbaa !24
  %t11 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e_2eAt_3cArray_3cI64_3e_26_3e(ptr %v0, ptr %v0, ptr %t9, i64 %t10)
  store { i64, ptr } %t11, ptr %l16
  br label %bb2
bb2:
  %t12 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t12, ptr %l2, !tbaa !27
  %t13 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t13, ptr %l17, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr i64, ptr %t15, i64 1
  %t17 = load i64, ptr %t16, !tbaa !34
  %t19 = add i64 2, %t17
  store i64 %t19, ptr %l3, !tbaa !24
  %t21 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t21, 0
  %t24 = load i64, ptr %l3, !tbaa !24
  %t27 = sub i64 %t23, %t24
  store i64 %t27, ptr %l23, !tbaa !24
  %t28 = load i64, ptr %l23, !tbaa !24
  %t29 = icmp sge i64 %t28, 0
  br i1 %t29, label %bb3, label %bb4
bb3:
  %t31 = load i64, ptr %l23, !tbaa !24
  %t32 = icmp sle i64 %t31, 1152921504606846975
  br i1 %t32, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_62115ad0f44a3a28_1c0abcab46b514cc)
  unreachable
bb5:
  %t34 = load i64, ptr %l23, !tbaa !24
  %t35 = mul i64 %t34, 8
  %t36 = call ptr @__olang_scope_alloc_zeroed(ptr %v1, i64 %t35)
  %t37 = insertvalue { i64, ptr } undef, i64 %t34, 0
  %t38 = insertvalue { i64, ptr } %t37, ptr %t36, 1
  %t39 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t39, ptr %lp4
  %t41 = load ptr, ptr %lp4
  store { i64, ptr } %t38, ptr %t41, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t42 = load ptr, ptr %lp4
  %t43 = load { i64, ptr }, ptr %t42, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t43, 0
  store i64 %t45, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t47 = load i64, ptr %l6, !tbaa !24
  %t48 = load i64, ptr %l5, !tbaa !24
  %t51 = icmp sgt i64 %t47, %t48
  br i1 %t51, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_62115ad0f44a3a28_1c0abcab46b514cc)
  unreachable
bb7:
  %t53 = load i64, ptr %l7, !tbaa !24
  %t55 = icmp sgt i64 %t53, 0
  br i1 %t55, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l32, !tbaa !24
  br label %bb12
bb9:
  %t57 = load i64, ptr %l6, !tbaa !24
  %t58 = load i64, ptr %l5, !tbaa !24
  %t61 = sub i64 %t57, %t58
  %t62 = load i64, ptr %l7, !tbaa !24
  %t65 = add i64 %t61, %t62
  %t67 = sub i64 %t65, 1
  %t68 = load i64, ptr %l7, !tbaa !24
  %t71 = sdiv i64 %t67, %t68
  store i64 %t71, ptr %l35, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l35, !tbaa !24
  br label %bb11
bb11:
  %t73 = load i64, ptr %l35, !tbaa !24
  store i64 %t73, ptr %l32, !tbaa !24
  br label %bb12
bb12:
  %t74 = load i64, ptr %l32, !tbaa !24
  store i64 %t74, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb13
bb13:
  %t75 = load i64, ptr %l9, !tbaa !24
  %t76 = load i64, ptr %l8, !tbaa !24
  %t79 = icmp slt i64 %t75, %t76
  %t81 = xor i1 %t79, true
  br i1 %t81, label %bb14, label %bb15
bb14:
  br label %bb18
bb15:
  br label %bb16
bb16:
  %t83 = load i64, ptr %l5, !tbaa !24
  %t84 = load i64, ptr %l9, !tbaa !24
  %t85 = load i64, ptr %l7, !tbaa !24
  %t88 = mul i64 %t84, %t85
  %t91 = add i64 %t83, %t88
  store i64 %t91, ptr %l10, !tbaa !24
  %t93 = load i64, ptr %l10, !tbaa !24
  %t94 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t94, ptr %l54, !tbaa !27
  %t95 = load i64, ptr %l3, !tbaa !24
  %t96 = load i64, ptr %l10, !tbaa !24
  %t99 = add i64 %t95, %t96
  %t101 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !27
  %t103 = getelementptr i64, ptr %t102, i64 %t99
  %t104 = load i64, ptr %t103, !tbaa !34
  %t106 = load ptr, ptr %lp4
  %t108 = getelementptr { i64, ptr }, ptr %t106, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !27
  %t110 = getelementptr i64, ptr %t109, i64 %t93
  store i64 %t104, ptr %t110, !tbaa !34
  br label %bb17
bb17:
  %t111 = load i64, ptr %l9, !tbaa !24
  %t113 = add i64 %t111, 1
  store i64 %t113, ptr %l9, !tbaa !24
  br label %bb13
bb18:
  %t115 = load ptr, ptr %lp4
  %t116 = load { i64, ptr }, ptr %t115, !tbaa !27
  store { i64, ptr } %t116, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKeepsText(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, i64 %a2, i64 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l18 = alloca ptr
  %l23 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
  store i64 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l3, !tbaa !24
  %t2 = load i64, ptr @G_2ecompiler_2ftypes_2eKeepsHome, !tbaa !24
  %t5 = icmp eq i64 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  store %olang.scope zeroinitializer, ptr %s1
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i32, ptr %l1, !tbaa !23
  %t9 = load i64, ptr %l2, !tbaa !24
  %t13 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParamName(ptr %v0, ptr %s1, ptr %v2, ptr %t7, i32 %t8, i64 %t9)
  store { i64, ptr } %t13, ptr %l12
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t14 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t16 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t16, 1
  %t18 = extractvalue { i64, ptr } %t16, 0
  %t19 = add i64 %t15, %t18
  %t20 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t19)
  call void @olang_textcopy(ptr %t20, ptr %t14, i64 %t15)
  %t21 = getelementptr i8, ptr %t20, i64 %t15
  call void @olang_textcopy(ptr %t21, ptr %t17, i64 %t18)
  %t22 = insertvalue { i64, ptr } undef, i64 %t19, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t20, 1
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t23, ptr %rv
  br label %ret
bb4:
  %t25 = load i64, ptr %l4, !tbaa !24
  %t27 = icmp ne i64 %t25, 0
  br i1 %t27, label %bb5, label %bb6
bb5:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/types:Table", ptr %t29, i32 0, i32 0
  %t32 = load ptr, ptr %t31, !tbaa !29
  store ptr %t32, ptr %l18, !tbaa !29
  %t33 = load i64, ptr %l4, !tbaa !24
  %t35 = trunc i64 %t33 to i32
  %t37 = load ptr, ptr %l18, !tbaa !29
  %t38 = call ptr @__olang_scope_or(ptr %v2, ptr %t37)
  %t39 = ptrtoint ptr %t38 to i64
  %t41 = inttoptr i64 %t39 to ptr
  %t42 = load ptr, ptr %l18, !tbaa !29
  %t44 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %t41, ptr %s0, ptr %t42, i32 %t35)
  store { i64, ptr } %t44, ptr %l23
  br label %bb7
bb6:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d7, i32 0, i32 1) }, ptr %l16, !tbaa !27
  br label %bb8
bb7:
  %t45 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t46 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  %t47 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t48 = extractvalue { i64, ptr } %t47, 1
  %t49 = extractvalue { i64, ptr } %t47, 0
  %t50 = add i64 %t46, %t49
  %t51 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t50)
  call void @olang_textcopy(ptr %t51, ptr %t45, i64 %t46)
  %t52 = getelementptr i8, ptr %t51, i64 %t46
  call void @olang_textcopy(ptr %t52, ptr %t48, i64 %t49)
  %t53 = insertvalue { i64, ptr } undef, i64 %t50, 0
  %t54 = insertvalue { i64, ptr } %t53, ptr %t51, 1
  %t56 = extractvalue { i64, ptr } %t54, 0
  %t57 = extractvalue { i64, ptr } %t54, 1
  %t58 = mul i64 %t56, 1
  %t59 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t58)
  call void @llvm.memcpy.p0.p0.i64(ptr %t59, ptr %t57, i64 %t58, i1 false)
  %t60 = insertvalue { i64, ptr } undef, i64 %t56, 0
  %t61 = insertvalue { i64, ptr } %t60, ptr %t59, 1
  store { i64, ptr } %t61, ptr %l16, !tbaa !27
  br label %bb8
bb8:
  %t63 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t63, ptr %l5, !tbaa !27
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load i32, ptr %l1, !tbaa !23
  %t66 = load i64, ptr %l2, !tbaa !24
  %t70 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParamName(ptr %v0, ptr %s0, ptr %v2, ptr %t64, i32 %t65, i64 %t66)
  store { i64, ptr } %t70, ptr %l29
  br label %bb9
bb9:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = load i32, ptr %l1, !tbaa !23
  %t73 = load i64, ptr %l3, !tbaa !24
  %t77 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParamName(ptr %v0, ptr %s0, ptr %v2, ptr %t71, i32 %t72, i64 %t73)
  store { i64, ptr } %t77, ptr %l33
  br label %bb10
bb10:
  %t78 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t79 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t80 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  %t81 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t82 = extractvalue { i64, ptr } %t81, 1
  %t83 = extractvalue { i64, ptr } %t81, 0
  %t84 = add i64 %t80, %t83
  %t85 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t86 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  %t87 = add i64 %t84, %t86
  %t88 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t89 = extractvalue { i64, ptr } %t88, 1
  %t90 = extractvalue { i64, ptr } %t88, 0
  %t91 = add i64 %t87, %t90
  %t93 = extractvalue { i64, ptr } %t78, 1
  %t94 = extractvalue { i64, ptr } %t78, 0
  %t95 = add i64 %t91, %t94
  %t96 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t95)
  call void @olang_textcopy(ptr %t96, ptr %t79, i64 %t80)
  %t97 = getelementptr i8, ptr %t96, i64 %t80
  call void @olang_textcopy(ptr %t97, ptr %t82, i64 %t83)
  %t98 = getelementptr i8, ptr %t97, i64 %t83
  call void @olang_textcopy(ptr %t98, ptr %t85, i64 %t86)
  %t99 = getelementptr i8, ptr %t98, i64 %t86
  call void @olang_textcopy(ptr %t99, ptr %t89, i64 %t90)
  %t100 = getelementptr i8, ptr %t99, i64 %t90
  call void @olang_textcopy(ptr %t100, ptr %t93, i64 %t94)
  %t101 = insertvalue { i64, ptr } undef, i64 %t95, 0
  %t102 = insertvalue { i64, ptr } %t101, ptr %t96, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t102, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l4 = alloca %"compiler/types:data"
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call %"compiler/types:data" @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eat(ptr %v0, ptr %a0, i32 %a1)
  store %"compiler/types:data" %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = getelementptr %"compiler/types:data", ptr %l4, i32 0, i32 0
  %t7 = load i32, ptr %t6, !range !{i32 0, i32 33}
  store i32 %t7, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLayoutState(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l6 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/types:Table", ptr %a0, i32 0, i32 20
  %t6 = sext i32 %a1 to i64
  %t9 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t3, i64 %t6)
  store i64 %t9, ptr %l6
  br label %bb1
bb1:
  %t10 = load i64, ptr %l6, !tbaa !24
  store i64 %t10, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList1(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l4 = alloca { i64, ptr }
  %l5 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = mul i64 1, 4
  %t4 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t3)
  %t5 = insertvalue { i64, ptr } undef, i64 1, 0
  %t6 = insertvalue { i64, ptr } %t5, ptr %t4, 1
  store { i64, ptr } %t6, ptr %l4, !tbaa !27
  %t8 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !27
  %t10 = getelementptr i32, ptr %t9, i64 0
  store i32 %a1, ptr %t10, !tbaa !33
  %t12 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t13 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %a0, { i64, ptr } %t12)
  store i32 %t13, ptr %l5
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  %t14 = load i32, ptr %l5, !tbaa !23
  store i32 %t14, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLlvm(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca i1
  %l14 = alloca { i64, ptr }
  %l16 = alloca ptr
  %l17 = alloca i64
  %l18 = alloca i64
  %l22 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i32, ptr %l1, !tbaa !23
  %t3 = sext i32 %t1 to i64
  store i64 %t3, ptr %l2, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/types:Table", ptr %t5, i32 0, i32 26
  %t8 = load i64, ptr %l2, !tbaa !24
  %t11 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t7, i64 %t8)
  store { i64, ptr } %t11, ptr %l8
  br label %bb1
bb1:
  %t12 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t13 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t12, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d11, i32 0, i32 1) })
  store i1 %t13, ptr %l9
  br label %bb2
bb2:
  %t14 = load i1, ptr %l9, !tbaa !21
  %t15 = xor i1 %t14, true
  br i1 %t15, label %bb3, label %bb4
bb3:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/types:Table", ptr %t17, i32 0, i32 26
  %t20 = load i64, ptr %l2, !tbaa !24
  %t23 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %t19, i64 %t20)
  store { i64, ptr } %t23, ptr %l14
  br label %bb5
bb4:
  br label %bb6
bb5:
  call void @__olang_scope_close(ptr %s0)
  %t24 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t24, ptr %rv
  br label %ret
bb6:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/types:Table", ptr %t25, i32 0, i32 26
  store ptr %t27, ptr %l16, !tbaa !29
  %t28 = load i64, ptr %l2, !tbaa !24
  store i64 %t28, ptr %l17, !tbaa !24
  %t29 = ptrtoint ptr %v0 to i64
  store i64 %t29, ptr %l18, !tbaa !24
  %t30 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t30, label %bb7, label %bb8
bb7:
  %t32 = call ptr @__olang_region_make(ptr %v0)
  %t33 = ptrtoint ptr %t32 to i64
  store i64 %t33, ptr %l18, !tbaa !24
  br label %bb8
bb8:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load i32, ptr %l1, !tbaa !23
  %t36 = load i64, ptr %l18
  %t37 = inttoptr i64 %t36 to ptr
  %t40 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2espellLlvm(ptr %v0, ptr %t37, ptr %v2, ptr %t34, i32 %t35)
  store { i64, ptr } %t40, ptr %l22
  br label %bb9
bb9:
  %t41 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t42 = load i64, ptr %l18
  %t43 = inttoptr i64 %t42 to ptr
  %t44 = extractvalue { i64, ptr } %t41, 0
  %t45 = extractvalue { i64, ptr } %t41, 1
  %t46 = mul i64 %t44, 1
  %t47 = call ptr @__olang_scope_alloc(ptr %t43, i64 %t46)
  call void @llvm.memcpy.p0.p0.i64(ptr %t47, ptr %t45, i64 %t46, i1 false)
  %t48 = insertvalue { i64, ptr } undef, i64 %t44, 0
  %t49 = insertvalue { i64, ptr } %t48, ptr %t47, 1
  %t50 = load ptr, ptr %l16, !tbaa !29
  %t51 = load i64, ptr %l17, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_Haae4fbc3ba15583a49040d883d2248d1(ptr %v0, ptr %v0, ptr %t50, i64 %t51, { i64, ptr } %t49)
  br label %bb10
bb10:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/types:Table", ptr %t53, i32 0, i32 26
  %t56 = load i64, ptr %l2, !tbaa !24
  %t59 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %t55, i64 %t56)
  store { i64, ptr } %t59, ptr %l27
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s0)
  %t60 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t60, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eMarkEnds(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/types:Table", ptr %a0, i32 0, i32 42
  %t6 = sext i32 %a1 to i64
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t3, i64 %t6, i1 true)
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eMarkPacked(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/types:Table", ptr %a0, i32 0, i32 39
  %t6 = sext i32 %a1 to i64
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t3, i64 %t6, i1 true)
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNameErrVal(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l6 = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/types:Table", ptr %t1, i32 0, i32 18
  %t4 = load i32, ptr %l1, !tbaa !23
  %t7 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20compile_H830566a038befb7310211b752210e58f(ptr %v0, ptr %t3, i32 %t4)
  store i1 %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = load i1, ptr %l6, !tbaa !21
  %t9 = xor i1 %t8, true
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/types:Table", ptr %t11, i32 0, i32 18
  %t14 = load i32, ptr %l1, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20compile_H010f1f1ff4e5a3a6ef2d904187315b0d(ptr %v0, ptr %t13, i32 %t14, i32 %a2)
  br label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb5
bb5:
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamed(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i32
  %l6 = alloca i32
  %l7 = alloca ptr
  %l13 = alloca %"compiler/types:data"
  %l16 = alloca i32
  %l18 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlainList(ptr %v0, ptr %t1, i32 %a2)
  store i32 %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load i32, ptr %l6, !tbaa !23
  store i32 %t6, ptr %l3, !tbaa !23
  %t7 = load ptr, ptr %l0, !tbaa !29
  store ptr %t7, ptr %l7, !tbaa !29
  %t10 = sext i32 %a1 to i64
  %t11 = load i32, ptr %l3, !tbaa !23
  %t13 = sext i32 %t11 to i64
  %t17 = call %"compiler/types:data" @compiler_2ftypes_3adata_2ector(ptr %s0, i32 18, i64 %t10, i64 %t13, i64 0, i64 0, i64 0, i64 0, i64 0)
  store %"compiler/types:data" %t17, ptr %l13
  br label %bb2
bb2:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load i32, ptr %l3, !tbaa !23
  %t22 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2edeepest(ptr %v0, ptr %t18, i32 %t19)
  store i32 %t22, ptr %l16
  br label %bb3
bb3:
  %t23 = load i32, ptr %l16, !tbaa !23
  %t24 = add i32 %t23, 1
  %t25 = load ptr, ptr %l7, !tbaa !29
  %t26 = load %"compiler/types:data", ptr %l13
  %t28 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eintern(ptr %v0, ptr %t25, %"compiler/types:data" %t26, i32 %t24)
  store i32 %t28, ptr %l18
  br label %bb4
bb4:
  call void @__olang_scope_close(ptr %s0)
  %t29 = load i32, ptr %l18, !tbaa !23
  store i32 %t29, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamesOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i32
  %l7 = alloca { i64, ptr }
  %l9 = alloca ptr
  %l12 = alloca %"compiler/types:data"
  %l14 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t1, i32 %t2)
  store i32 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t8 = trunc i64 21 to i32
  %t9 = icmp eq i32 %t6, %t8
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/types:Table", ptr %t11, i32 0, i32 30
  store ptr %t13, ptr %l9, !tbaa !29
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load i32, ptr %l1, !tbaa !23
  %t18 = call %"compiler/types:data" @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eat(ptr %v0, ptr %t14, i32 %t15)
  store %"compiler/types:data" %t18, ptr %l12
  br label %bb4
bb3:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/types:Table", ptr %t19, i32 0, i32 30
  %t23 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e_2eAt_3cArray_3cI64_3e_26_3e(ptr %v0, ptr %v1, ptr %t21, i64 0)
  store { i64, ptr } %t23, ptr %l17
  br label %bb6
bb4:
  %t24 = getelementptr %"compiler/types:data", ptr %l12, i32 0, i32 5
  %t25 = load i64, ptr %t24, !tbaa !24
  %t26 = load ptr, ptr %l9, !tbaa !29
  %t28 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e_2eAt_3cArray_3cI64_3e_26_3e(ptr %v0, ptr %v1, ptr %t26, i64 %t25)
  store { i64, ptr } %t28, ptr %l14
  br label %bb5
bb5:
  %t29 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t29, ptr %l7, !tbaa !27
  br label %bb7
bb6:
  %t30 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t30, ptr %l7, !tbaa !27
  br label %bb7
bb7:
  %t31 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t31, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnsParts(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l4 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eownsParts(ptr %v0, ptr %a0, i32 %a1, i64 0)
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

define dso_local i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParamNames(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l15 = alloca i64
  %l24 = alloca i64
  %l27 = alloca i64
  %l45 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l52 = alloca i64
  %l56 = alloca i64
  %l57 = alloca i32
  %l63 = alloca i64
  %rv = alloca i64
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
  store i64 0, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  store i64 %t10, ptr %l15, !tbaa !24
  %t11 = load i64, ptr %l15, !tbaa !24
  %t12 = icmp sge i64 %t11, 0
  br i1 %t12, label %bb4, label %bb5
bb4:
  %t14 = load i64, ptr %l15, !tbaa !24
  %t15 = icmp sle i64 %t14, 1152921504606846975
  br i1 %t15, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_6b6356ebbaa556b4_537d1793e4121070)
  unreachable
bb6:
  %t17 = load i64, ptr %l15, !tbaa !24
  %t18 = mul i64 %t17, 8
  %t19 = call ptr @__olang_scope_alloc_zeroed(ptr %v0, i64 %t18)
  %t20 = insertvalue { i64, ptr } undef, i64 %t17, 0
  %t21 = insertvalue { i64, ptr } %t20, ptr %t19, 1
  store { i64, ptr } %t21, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t23 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t25 = extractvalue { i64, ptr } %t23, 0
  store i64 %t25, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t27 = load i64, ptr %l4, !tbaa !24
  %t28 = load i64, ptr %l3, !tbaa !24
  %t31 = icmp sgt i64 %t27, %t28
  br i1 %t31, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_6b6356ebbaa556b4_537d1793e4121070)
  unreachable
bb8:
  %t33 = load i64, ptr %l5, !tbaa !24
  %t35 = icmp sgt i64 %t33, 0
  br i1 %t35, label %bb10, label %bb11
bb9:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb13
bb10:
  %t37 = load i64, ptr %l4, !tbaa !24
  %t38 = load i64, ptr %l3, !tbaa !24
  %t41 = sub i64 %t37, %t38
  %t42 = load i64, ptr %l5, !tbaa !24
  %t45 = add i64 %t41, %t42
  %t47 = sub i64 %t45, 1
  %t48 = load i64, ptr %l5, !tbaa !24
  %t51 = sdiv i64 %t47, %t48
  store i64 %t51, ptr %l27, !tbaa !24
  br label %bb12
bb11:
  store i64 0, ptr %l27, !tbaa !24
  br label %bb12
bb12:
  %t53 = load i64, ptr %l27, !tbaa !24
  store i64 %t53, ptr %l24, !tbaa !24
  br label %bb13
bb13:
  %t54 = load i64, ptr %l24, !tbaa !24
  store i64 %t54, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb14
bb14:
  %t55 = load i64, ptr %l7, !tbaa !24
  %t56 = load i64, ptr %l6, !tbaa !24
  %t59 = icmp slt i64 %t55, %t56
  %t61 = xor i1 %t59, true
  br i1 %t61, label %bb15, label %bb16
bb15:
  br label %bb19
bb16:
  br label %bb17
bb17:
  %t63 = load i64, ptr %l3, !tbaa !24
  %t64 = load i64, ptr %l7, !tbaa !24
  %t65 = load i64, ptr %l5, !tbaa !24
  %t68 = mul i64 %t64, %t65
  %t71 = add i64 %t63, %t68
  store i64 %t71, ptr %l8, !tbaa !24
  %t73 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t73, ptr %l45, !tbaa !27
  %t74 = load i64, ptr %l8, !tbaa !24
  %t75 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t75, ptr %l47, !tbaa !27
  %t76 = load i64, ptr %l8, !tbaa !24
  %t78 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !27
  %t80 = getelementptr i64, ptr %t79, i64 %t76
  %t81 = load i64, ptr %t80, !tbaa !34
  %t84 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !27
  %t86 = getelementptr i64, ptr %t85, i64 %t74
  store i64 %t81, ptr %t86, !tbaa !34
  br label %bb18
bb18:
  %t87 = load i64, ptr %l7, !tbaa !24
  %t89 = add i64 %t87, 1
  store i64 %t89, ptr %l7, !tbaa !24
  br label %bb14
bb19:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/types:Table", ptr %t91, i32 0, i32 31
  %t94 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t97 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cArray_3cI64_3e_26_2c_20I64_3e_2eGet_3cArray_3cI64_3e_26_2c_20I64_3e(ptr %v0, ptr %v0, ptr %t93, { i64, ptr } %t94)
  %t98 = extractvalue { i32, i64 } %t97, 1
  %t99 = extractvalue { i32, i64 } %t97, 0
  store i32 %t99, ptr %l57
  %t100 = icmp ne i32 %t99, 0
  br i1 %t100, label %bb21, label %ok.101, !prof !99
ok.101:
  store i64 %t98, ptr %l56
  br label %bb20
bb20:
  %t102 = load i64, ptr %l56, !tbaa !24
  store i64 %t102, ptr %l52, !tbaa !24
  br label %bb23
bb21:
  br label %bb22
bb22:
  store i64 -1, ptr %l52, !tbaa !24
  br label %bb23
bb23:
  %t103 = load i64, ptr %l52, !tbaa !24
  store i64 %t103, ptr %l9, !tbaa !24
  %t104 = load i64, ptr %l9, !tbaa !24
  %t106 = icmp sge i64 %t104, 0
  br i1 %t106, label %bb24, label %bb25
bb24:
  %t108 = load i64, ptr %l9, !tbaa !24
  store i64 %t108, ptr %rv
  br label %ret
bb25:
  br label %bb26
bb26:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/types:Table", ptr %t110, i32 0, i32 30
  %t114 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e_2eLen_3cArray_3cI64_3e_26_3e(ptr %v0, ptr %t112)
  store i64 %t114, ptr %l63
  br label %bb27
bb27:
  %t115 = load i64, ptr %l63, !tbaa !24
  store i64 %t115, ptr %l9, !tbaa !24
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t118 = getelementptr %"compiler/types:Table", ptr %t116, i32 0, i32 30
  %t119 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e_2ePush_3cArray_3cI64_3e_26_3e(ptr %v0, ptr %v0, ptr %t118, { i64, ptr } %t119)
  br label %bb28
bb28:
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t124 = getelementptr %"compiler/types:Table", ptr %t122, i32 0, i32 31
  %t125 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t126 = load i64, ptr %l9, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cArray_3cI64_3e_26_2c_20I64_3e_2ePut_3cArray_3cI64_3e_26_2c_20I64_3e(ptr %v0, ptr %v0, ptr %t124, { i64, ptr } %t125, i64 %t126)
  br label %bb29
bb29:
  %t130 = load i64, ptr %l9, !tbaa !24
  store i64 %t130, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePassing(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i32
  %l7 = alloca %"std/prelude/text:StringBuilder"
  %l8 = alloca ptr
  %l11 = alloca i32
  %l12 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l24 = alloca i1
  %l28 = alloca i32
  %l36 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
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
  %t3 = load ptr, ptr %l0, !tbaa !29
  store ptr %t3, ptr %l8, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t8 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t4, i32 %a1)
  store i32 %t8, ptr %l11
  br label %bb2
bb2:
  %t9 = load ptr, ptr %l8, !tbaa !29
  %t10 = load i32, ptr %l11, !tbaa !23
  %t11 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t9, i32 %t10)
  store { i64, ptr } %t11, ptr %l12
  br label %bb3
bb3:
  %t12 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t12, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t13 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t15 = extractvalue { i64, ptr } %t13, 0
  store i64 %t15, ptr %l5, !tbaa !24
  br label %bb4
bb4:
  %t17 = load i64, ptr %l4, !tbaa !24
  %t18 = load i64, ptr %l5, !tbaa !24
  %t21 = icmp slt i64 %t17, %t18
  %t23 = xor i1 %t21, true
  br i1 %t23, label %bb5, label %bb6
bb5:
  br label %bb20
bb6:
  br label %bb7
bb7:
  %t25 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t25, ptr %l19, !tbaa !27
  %t26 = load i64, ptr %l4, !tbaa !24
  %t28 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !27
  %t30 = getelementptr i32, ptr %t29, i64 %t26
  %t31 = load i32, ptr %t30, !tbaa !33
  store i32 %t31, ptr %l6, !tbaa !23
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t34 = load i32, ptr %l6, !tbaa !23
  %t37 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eViaMemory(ptr %v0, ptr %t33, i32 %t34)
  store i1 %t37, ptr %l24
  br label %bb8
bb8:
  %t38 = load i1, ptr %l24, !tbaa !21
  br i1 %t38, label %bb9, label %bb10
bb9:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l2, i8 109)
  br label %bb11
bb10:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load i32, ptr %l6, !tbaa !23
  %t44 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t40, i32 %t41)
  store i32 %t44, ptr %l28
  br label %bb12
bb11:
  br label %bb18
bb12:
  %t45 = load i32, ptr %l28, !range !{i32 0, i32 33}
  %t47 = trunc i64 21 to i32
  %t48 = icmp eq i32 %t45, %t47
  br i1 %t48, label %bb13, label %bb14
bb13:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l2, i8 115)
  br label %bb15
bb14:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l2, i8 118)
  br label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb17
bb17:
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t52 = load i64, ptr %l4, !tbaa !24
  %t54 = add i64 %t52, 1
  store i64 %t54, ptr %l4, !tbaa !24
  br label %bb4
bb20:
  %t57 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l2)
  store { i64, ptr } %t57, ptr %l36
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s0)
  %t58 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t58, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePayloadSize(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l6 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/types:Table", ptr %a0, i32 0, i32 25
  %t6 = sext i32 %a1 to i64
  %t9 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t3, i64 %t6)
  store i64 %t9, ptr %l6
  br label %bb1
bb1:
  %t10 = load i64, ptr %l6, !tbaa !24
  store i64 %t10, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l4 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eB(ptr %v0, ptr %a0, i32 %a1)
  store i64 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i64, ptr %l4, !tbaa !24
  store i64 %t6, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePromisesOf(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i32
  %l7 = alloca i64
  %l10 = alloca %"compiler/types:data"
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t1, i32 %t2)
  store i32 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t8 = trunc i64 21 to i32
  %t9 = icmp eq i32 %t6, %t8
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i32, ptr %l1, !tbaa !23
  %t15 = call %"compiler/types:data" @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eat(ptr %v0, ptr %t11, i32 %t12)
  store %"compiler/types:data" %t15, ptr %l10
  br label %bb4
bb3:
  store i64 0, ptr %l7, !tbaa !24
  br label %bb5
bb4:
  %t16 = getelementptr %"compiler/types:data", ptr %l10, i32 0, i32 7
  %t17 = load i64, ptr %t16, !tbaa !24
  store i64 %t17, ptr %l7, !tbaa !24
  br label %bb5
bb5:
  %t19 = load i64, ptr %l7, !tbaa !24
  store i64 %t19, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRecord(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca ptr
  %l8 = alloca %"compiler/types:data"
  %l11 = alloca i32
  %l13 = alloca i32
  %l16 = alloca i32
  %l21 = alloca ptr
  %l23 = alloca i64
  %l26 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l4, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t4 = sext i32 %t2 to i64
  %t7 = call %"compiler/types:data" @compiler_2ftypes_3adata_2ector(ptr %s0, i32 23, i64 %t4, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0)
  store %"compiler/types:data" %t7, ptr %l8
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t9 = load i32, ptr %l1, !tbaa !23
  %t12 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2edeepest(ptr %v0, ptr %t8, i32 %t9)
  store i32 %t12, ptr %l11
  br label %bb2
bb2:
  %t13 = load i32, ptr %l11, !tbaa !23
  %t14 = add i32 %t13, 1
  %t15 = load ptr, ptr %l4, !tbaa !29
  %t16 = load %"compiler/types:data", ptr %l8
  %t18 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eintern(ptr %v0, ptr %t15, %"compiler/types:data" %t16, i32 %t14)
  store i32 %t18, ptr %l13
  br label %bb3
bb3:
  %t19 = load i32, ptr %l13, !tbaa !23
  store i32 %t19, ptr %l2, !tbaa !23
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load i32, ptr %l1, !tbaa !23
  %t24 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlainList(ptr %v0, ptr %t20, i32 %t21)
  store i32 %t24, ptr %l16
  br label %bb4
bb4:
  %t25 = load i32, ptr %l16, !tbaa !23
  store i32 %t25, ptr %l3, !tbaa !23
  %t26 = load i32, ptr %l3, !tbaa !23
  %t27 = load i32, ptr %l1, !tbaa !23
  %t30 = icmp ne i32 %t26, %t27
  br i1 %t30, label %bb5, label %bb6
bb5:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/types:Table", ptr %t32, i32 0, i32 27
  store ptr %t34, ptr %l21, !tbaa !29
  %t35 = load i32, ptr %l2, !tbaa !23
  %t37 = sext i32 %t35 to i64
  store i64 %t37, ptr %l23, !tbaa !24
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t39 = load i32, ptr %l3, !tbaa !23
  %t42 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRecord(ptr %v0, ptr %t38, i32 %t39)
  store i32 %t42, ptr %l26
  br label %bb7
bb6:
  br label %bb9
bb7:
  %t43 = load ptr, ptr %l21, !tbaa !29
  %t44 = load i64, ptr %l23, !tbaa !24
  %t45 = load i32, ptr %l26, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eSetAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t43, i64 %t44, i32 %t45)
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t46 = load i32, ptr %l2, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t46, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca ptr
  %l9 = alloca %"compiler/types:data"
  %l12 = alloca i32
  %l14 = alloca i32
  %l17 = alloca i32
  %l21 = alloca ptr
  %l23 = alloca i64
  %l24 = alloca ptr
  %l27 = alloca i32
  %l29 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l4, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t4 = sext i32 %t2 to i64
  %t5 = load i64, ptr %l2, !tbaa !24
  %t9 = call %"compiler/types:data" @compiler_2ftypes_3adata_2ector(ptr %s0, i32 20, i64 %t4, i64 %t5, i64 0, i64 0, i64 0, i64 0, i64 0)
  store %"compiler/types:data" %t9, ptr %l9
  br label %bb1
bb1:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load i32, ptr %l1, !tbaa !23
  %t14 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2edepthOf(ptr %v0, ptr %t10, i32 %t11)
  store i32 %t14, ptr %l12
  br label %bb2
bb2:
  %t15 = load i32, ptr %l12, !tbaa !23
  %t16 = add i32 %t15, 1
  %t17 = load ptr, ptr %l4, !tbaa !29
  %t18 = load %"compiler/types:data", ptr %l9
  %t20 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eintern(ptr %v0, ptr %t17, %"compiler/types:data" %t18, i32 %t16)
  store i32 %t20, ptr %l14
  br label %bb3
bb3:
  %t21 = load i32, ptr %l14, !tbaa !23
  store i32 %t21, ptr %l3, !tbaa !23
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load i32, ptr %l1, !tbaa !23
  %t26 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t22, i32 %t23)
  store i32 %t26, ptr %l17
  br label %bb4
bb4:
  %t27 = load i32, ptr %l1, !tbaa !23
  %t28 = load i32, ptr %l17, !tbaa !23
  %t30 = icmp ne i32 %t28, %t27
  br i1 %t30, label %bb5, label %bb6
bb5:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/types:Table", ptr %t32, i32 0, i32 27
  store ptr %t34, ptr %l21, !tbaa !29
  %t35 = load i32, ptr %l3, !tbaa !23
  %t37 = sext i32 %t35 to i64
  store i64 %t37, ptr %l23, !tbaa !24
  %t38 = load ptr, ptr %l0, !tbaa !29
  store ptr %t38, ptr %l24, !tbaa !29
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load i32, ptr %l1, !tbaa !23
  %t43 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t39, i32 %t40)
  store i32 %t43, ptr %l27
  br label %bb7
bb6:
  br label %bb10
bb7:
  %t44 = load i64, ptr %l2, !tbaa !24
  %t45 = load ptr, ptr %l24, !tbaa !29
  %t46 = load i32, ptr %l27, !tbaa !23
  %t48 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t45, i32 %t46, i64 %t44)
  store i32 %t48, ptr %l29
  br label %bb8
bb8:
  %t49 = load ptr, ptr %l21, !tbaa !29
  %t50 = load i64, ptr %l23, !tbaa !24
  %t51 = load i32, ptr %l29, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eSetAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t49, i64 %t50, i32 %t51)
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t52 = load i32, ptr %l3, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t52, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRefInto(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca %"compiler/types:refWalk"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca %"compiler/types:refWalk"
  %l14 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l5
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l3
  %t3 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2evalueParts(ptr %v0, ptr %s0, ptr %t3, i32 %a2, ptr %l3)
  br label %bb2
bb2:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t11 = call %"compiler/types:refWalk" @compiler_2ftypes_3arefWalk_2ector(ptr %v0, ptr %s0, ptr %s0, ptr %t8, ptr %l3)
  store %"compiler/types:refWalk" %t11, ptr %l11
  br label %bb3
bb3:
  %t12 = load %"compiler/types:refWalk", ptr %l11
  store %"compiler/types:refWalk" %t12, ptr %l4
  %t16 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3arefWalk_2ereaches(ptr %s0, ptr %v0, ptr %s0, ptr %l4, i32 %a1)
  store i1 %t16, ptr %l14
  br label %bb4
bb4:
  call void @__olang_scope_close(ptr %s0)
  %t17 = load i1, ptr %l14, !tbaa !21
  store i1 %t17, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l4 = alloca i64
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %a0, i32 %a1)
  store i64 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i64, ptr %l4, !tbaa !24
  %t7 = trunc i64 %t6 to i32
  store i32 %t7, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRefunc(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i32 %a5, i64 %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca i32
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca i64
  %l15 = alloca i1
  %l18 = alloca i32
  %l21 = alloca i64
  %l22 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l7, !tbaa !29
  store i32 %a2, ptr %l8, !tbaa !23
  store i32 %a3, ptr %l9, !tbaa !23
  store i32 %a4, ptr %l10, !tbaa !23
  store i32 %a5, ptr %l11, !tbaa !23
  store i64 %a6, ptr %l12, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i32, ptr %l1, !tbaa !23
  %t11 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncNullable(ptr %v0, ptr %t7, i32 %t8)
  store i1 %t11, ptr %l15
  br label %bb1
bb1:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load i32, ptr %l1, !tbaa !23
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncTag(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t16, ptr %l18
  br label %bb2
bb2:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load i32, ptr %l1, !tbaa !23
  %t21 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePromisesOf(ptr %v0, ptr %t17, i32 %t18)
  store i64 %t21, ptr %l21
  br label %bb3
bb3:
  %t22 = load ptr, ptr %l7, !tbaa !29
  %t23 = load i32, ptr %l8, !tbaa !23
  %t24 = load i32, ptr %l9, !tbaa !23
  %t25 = load i32, ptr %l10, !tbaa !23
  %t26 = load i32, ptr %l11, !tbaa !23
  %t27 = load i64, ptr %l12, !tbaa !24
  %t28 = load i1, ptr %l15, !tbaa !21
  %t29 = load i32, ptr %l18, !tbaa !23
  %t30 = load i64, ptr %l21, !tbaa !24
  %t31 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t22, i32 %t23, i32 %t24, i32 %t25, i32 %t26, i64 %t27, i1 %t28, i32 %t29, i64 %t30)
  store i32 %t31, ptr %l22
  br label %bb4
bb4:
  %t32 = load i32, ptr %l22, !tbaa !23
  store i32 %t32, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l5 = alloca i32
  %l8 = alloca i32
  %l12 = alloca i32
  %l13 = alloca i32
  %l17 = alloca i32
  %l20 = alloca i1
  %l21 = alloca ptr
  %l24 = alloca i32
  %l25 = alloca i32
  %l28 = alloca i1
  %l31 = alloca i1
  %l35 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t1, i32 %t2)
  store i32 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t8 = trunc i64 32 to i32
  %t9 = icmp eq i32 %t6, %t8
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/types:Table", ptr %t11, i32 0, i32 19
  %t14 = load i32, ptr %l1, !tbaa !23
  %t17 = call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20compile_H08d487c91a3409a786f6b7c534acefc5(ptr %v0, ptr %t13, i32 %t14)
  %t18 = extractvalue { i32, i32 } %t17, 1
  %t19 = extractvalue { i32, i32 } %t17, 0
  store i32 %t19, ptr %l13
  %t20 = icmp ne i32 %t19, 0
  br i1 %t20, label %bb5, label %ok.21, !prof !99
ok.21:
  store i32 %t18, ptr %l12
  br label %bb4
bb3:
  br label %bb8
bb4:
  %t22 = load i32, ptr %l12, !tbaa !23
  store i32 %t22, ptr %l8, !tbaa !23
  br label %bb7
bb5:
  br label %bb6
bb6:
  store i32 5, ptr %l8, !tbaa !23
  br label %bb7
bb7:
  %t23 = load i32, ptr %l8, !tbaa !23
  store i32 %t23, ptr %rv
  br label %ret
bb8:
  %t24 = load i32, ptr %l1, !tbaa !23
  store i32 %t24, ptr %l2, !tbaa !23
  br label %bb9
bb9:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load i32, ptr %l2, !tbaa !23
  %t30 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t26, i32 %t27)
  store i32 %t30, ptr %l17
  br label %bb10
bb10:
  %t31 = load i32, ptr %l17, !range !{i32 0, i32 33}
  %t33 = trunc i64 18 to i32
  %t34 = icmp eq i32 %t31, %t33
  br i1 %t34, label %bb11, label %bb12
bb11:
  %t36 = load ptr, ptr %l0, !tbaa !29
  store ptr %t36, ptr %l21, !tbaa !29
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load i32, ptr %l2, !tbaa !23
  %t41 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t37, i32 %t38)
  store i32 %t41, ptr %l24
  br label %bb13
bb12:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb15
bb13:
  %t42 = load ptr, ptr %l21, !tbaa !29
  %t43 = load i32, ptr %l24, !tbaa !23
  %t44 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t42, i32 %t43)
  store i32 %t44, ptr %l25
  br label %bb14
bb14:
  %t45 = load i32, ptr %l25, !range !{i32 0, i32 6}
  %t47 = trunc i64 4 to i32
  %t48 = icmp eq i32 %t45, %t47
  store i1 %t48, ptr %l20, !tbaa !21
  br label %bb15
bb15:
  %t50 = load i1, ptr %l20, !tbaa !21
  br i1 %t50, label %bb16, label %bb17
bb16:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = load i32, ptr %l2, !tbaa !23
  %t55 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %t51, i32 %t52)
  store i1 %t55, ptr %l31
  br label %bb18
bb17:
  store i1 false, ptr %l28, !tbaa !21
  br label %bb19
bb18:
  %t56 = load i1, ptr %l31, !tbaa !21
  store i1 %t56, ptr %l28, !tbaa !21
  br label %bb19
bb19:
  %t57 = load i1, ptr %l28, !tbaa !21
  %t58 = xor i1 %t57, true
  br i1 %t58, label %bb20, label %bb21
bb20:
  br label %bb25
bb21:
  br label %bb22
bb22:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load i32, ptr %l2, !tbaa !23
  %t64 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t60, i32 %t61)
  store i32 %t64, ptr %l35
  br label %bb23
bb23:
  %t65 = load i32, ptr %l35, !tbaa !23
  store i32 %t65, ptr %l2, !tbaa !23
  br label %bb24
bb24:
  br label %bb9
bb25:
  %t66 = load i32, ptr %l2, !tbaa !23
  store i32 %t66, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l4 = alloca i64
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eB(ptr %v0, ptr %a0, i32 %a1)
  store i64 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i64, ptr %l4, !tbaa !24
  %t7 = trunc i64 %t6 to i32
  store i32 %t7, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResultFrom(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l8 = alloca i32
  %l10 = alloca { i64, ptr }
  %l14 = alloca i1
  %l17 = alloca i1
  %l18 = alloca { i64, ptr }
  %l26 = alloca i64
  %l27 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/types:Table", ptr %t1, i32 0, i32 28
  store ptr %t3, ptr %l5, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t8 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesOf(ptr %v0, ptr %t4, i32 %a1)
  store i32 %t8, ptr %l8
  br label %bb1
bb1:
  %t9 = load i32, ptr %l8, !tbaa !23
  %t10 = sext i32 %t9 to i64
  %t11 = load ptr, ptr %l5, !tbaa !29
  %t13 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e_2eAt_3cArray_3cI64_3e_26_3e(ptr %v0, ptr %v0, ptr %t11, i64 %t10)
  store { i64, ptr } %t13, ptr %l10
  br label %bb2
bb2:
  %t14 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t14, ptr %l3, !tbaa !27
  %t15 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t15, 0
  %t19 = icmp sgt i64 %t17, 0
  br i1 %t19, label %bb3, label %bb4
bb3:
  %t21 = load i64, ptr %l2, !tbaa !24
  %t23 = icmp sge i64 %t21, 0
  store i1 %t23, ptr %l14, !tbaa !21
  br label %bb5
bb4:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb5
bb5:
  %t25 = load i1, ptr %l14, !tbaa !21
  br i1 %t25, label %bb6, label %bb7
bb6:
  %t26 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t26, ptr %l18, !tbaa !27
  %t27 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = getelementptr i64, ptr %t28, i64 1
  %t30 = load i64, ptr %t29, !tbaa !34
  %t32 = add i64 2, %t30
  %t33 = load i64, ptr %l2, !tbaa !24
  %t36 = add i64 %t32, %t33
  %t37 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t37, 0
  %t42 = icmp slt i64 %t36, %t39
  store i1 %t42, ptr %l17, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb8
bb8:
  %t44 = load i1, ptr %l17, !tbaa !21
  br i1 %t44, label %bb9, label %bb10
bb9:
  %t45 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t45, ptr %l27, !tbaa !27
  %t46 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t46, ptr %l28, !tbaa !27
  %t47 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !27
  %t49 = getelementptr i64, ptr %t48, i64 1
  %t50 = load i64, ptr %t49, !tbaa !34
  %t52 = add i64 2, %t50
  %t53 = load i64, ptr %l2, !tbaa !24
  %t56 = add i64 %t52, %t53
  %t58 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !27
  %t60 = getelementptr i64, ptr %t59, i64 %t56
  %t61 = load i64, ptr %t60, !tbaa !34
  store i64 %t61, ptr %l26, !tbaa !24
  br label %bb11
bb10:
  %t63 = load i64, ptr @G_2ecompiler_2ftypes_2eOwnScope, !tbaa !24
  store i64 %t63, ptr %l26, !tbaa !24
  br label %bb11
bb11:
  %t65 = load i64, ptr %l26, !tbaa !24
  store i64 %t65, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRunLength(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca ptr
  %l3 = alloca %"compiler/types:data"
  %l4 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store ptr %a0, ptr %l1, !tbaa !29
  %t3 = call %"compiler/types:data" @compiler_2ftypes_3adata_2ector(ptr %s0, i32 26, i64 0, i64 -1, i64 0, i64 0, i64 0, i64 0, i64 0)
  store %"compiler/types:data" %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l1, !tbaa !29
  %t5 = load %"compiler/types:data", ptr %l3
  %t6 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eintern(ptr %v0, ptr %t4, %"compiler/types:data" %t5, i32 1)
  store i32 %t6, ptr %l4
  br label %bb2
bb2:
  call void @__olang_scope_close(ptr %s0)
  %t7 = load i32, ptr %l4, !tbaa !23
  store i32 %t7, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRunsCopy(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca i64
  %l6 = alloca i1
  %l9 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/types:Table", ptr %t1, i32 0, i32 37
  %t5 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eLen_3cI64_2c_20Bool_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i64, ptr %l4, !tbaa !24
  %t7 = icmp sgt i64 %t6, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t13 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2erunsCopy(ptr %v0, ptr %t9, i32 %a1, i64 0)
  store i1 %t13, ptr %l9
  br label %bb4
bb3:
  store i1 false, ptr %l6, !tbaa !21
  br label %bb5
bb4:
  %t14 = load i1, ptr %l9, !tbaa !21
  store i1 %t14, ptr %l6, !tbaa !21
  br label %bb5
bb5:
  %t15 = load i1, ptr %l6, !tbaa !21
  store i1 %t15, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopeVarsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i1
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l22 = alloca i64
  %l27 = alloca [1 x i64]
  %l28 = alloca { i64, ptr }
  %l29 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l30 = alloca ptr
  %l33 = alloca i32
  %l34 = alloca { i64, ptr }
  %l40 = alloca i64
  %l43 = alloca i64
  %l64 = alloca i64
  %l67 = alloca i1
  %l69 = alloca { i64, ptr }
  %l72 = alloca i1
  %l80 = alloca i1
  %l86 = alloca { i64, ptr }
  %l92 = alloca i64
  %l95 = alloca i64
  %l116 = alloca i64
  %l120 = alloca i1
  %l124 = alloca i1
  %l128 = alloca i1
  %l129 = alloca i1
  %l133 = alloca i1
  %l140 = alloca { i64, ptr }
  %l141 = alloca { i64, ptr }
  %l142 = alloca i64
  %l143 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRole(ptr %v0, ptr %t1, i32 %t2)
  store i64 %t5, ptr %l22
  br label %bb1
bb1:
  %t6 = load i64, ptr %l22, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  %t7 = load i64, ptr %l2, !tbaa !24
  %t8 = load i64, ptr @G_2ecompiler_2ftypes_2eRoleDtor, !tbaa !24
  %t11 = icmp eq i64 %t7, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load i64, ptr @G_2ecompiler_2ftypes_2eClosingVar, !tbaa !24
  %t15 = insertvalue [1 x i64] undef, i64 %t13, 0
  store [1 x i64] %t15, ptr %l27
  %t16 = mul i64 1, 8
  %t17 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t16)
  %t18 = insertvalue { i64, ptr } undef, i64 1, 0
  %t19 = insertvalue { i64, ptr } %t18, ptr %t17, 1
  store { i64, ptr } %t19, ptr %l28, !tbaa !27
  %t20 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = mul i64 1, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t21, ptr %l27, i64 %t22, i1 false)
  call void @__olang_scope_close(ptr %s0)
  %t23 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t23, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t24 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t24, ptr %l29
  br label %bb5
bb5:
  %t25 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l29
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t25, ptr %l3
  %t26 = load ptr, ptr %l0, !tbaa !29
  store ptr %t26, ptr %l30, !tbaa !29
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load i32, ptr %l1, !tbaa !23
  %t31 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t27, i32 %t28)
  store i32 %t31, ptr %l33
  br label %bb6
bb6:
  %t32 = load ptr, ptr %l30, !tbaa !29
  %t33 = load i32, ptr %l33, !tbaa !23
  %t34 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t32, i32 %t33)
  store { i64, ptr } %t34, ptr %l34
  br label %bb7
bb7:
  %t35 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t35, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t36 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t38 = extractvalue { i64, ptr } %t36, 0
  store i64 %t38, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t40 = load i64, ptr %l6, !tbaa !24
  %t41 = load i64, ptr %l5, !tbaa !24
  %t44 = icmp sgt i64 %t40, %t41
  br i1 %t44, label %bb8, label %bb9
bb8:
  %t46 = load i64, ptr %l7, !tbaa !24
  %t48 = icmp sgt i64 %t46, 0
  br i1 %t48, label %bb10, label %bb11
bb9:
  store i64 0, ptr %l40, !tbaa !24
  br label %bb13
bb10:
  %t50 = load i64, ptr %l6, !tbaa !24
  %t51 = load i64, ptr %l5, !tbaa !24
  %t54 = sub i64 %t50, %t51
  %t55 = load i64, ptr %l7, !tbaa !24
  %t58 = add i64 %t54, %t55
  %t60 = sub i64 %t58, 1
  %t61 = load i64, ptr %l7, !tbaa !24
  %t64 = sdiv i64 %t60, %t61
  store i64 %t64, ptr %l43, !tbaa !24
  br label %bb12
bb11:
  store i64 0, ptr %l43, !tbaa !24
  br label %bb12
bb12:
  %t66 = load i64, ptr %l43, !tbaa !24
  store i64 %t66, ptr %l40, !tbaa !24
  br label %bb13
bb13:
  %t67 = load i64, ptr %l40, !tbaa !24
  store i64 %t67, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb14
bb14:
  %t68 = load i64, ptr %l9, !tbaa !24
  %t69 = load i64, ptr %l8, !tbaa !24
  %t72 = icmp slt i64 %t68, %t69
  %t74 = xor i1 %t72, true
  br i1 %t74, label %bb15, label %bb16
bb15:
  br label %bb28
bb16:
  br label %bb17
bb17:
  %t76 = load i64, ptr %l5, !tbaa !24
  %t77 = load i64, ptr %l9, !tbaa !24
  %t78 = load i64, ptr %l7, !tbaa !24
  %t81 = mul i64 %t77, %t78
  %t84 = add i64 %t76, %t81
  store i64 %t84, ptr %l10, !tbaa !24
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t87 = load i32, ptr %l1, !tbaa !23
  %t88 = load i64, ptr %l10, !tbaa !24
  %t92 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShareOf(ptr %v0, ptr %t86, i32 %t87, i64 %t88)
  store i64 %t92, ptr %l64
  br label %bb18
bb18:
  %t93 = load i64, ptr @G_2ecompiler_2ftypes_2eOwnScope, !tbaa !24
  %t94 = load i64, ptr %l64, !tbaa !24
  %t96 = icmp eq i64 %t94, %t93
  br i1 %t96, label %bb19, label %bb20
bb19:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t99 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t99, ptr %l69, !tbaa !27
  %t100 = load i64, ptr %l10, !tbaa !24
  %t102 = getelementptr { i64, ptr }, ptr %l69, i32 0, i32 1
  %t103 = load ptr, ptr %t102, !tbaa !27
  %t104 = getelementptr i32, ptr %t103, i64 %t100
  %t105 = load i32, ptr %t104, !tbaa !33
  %t108 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %t98, i32 %t105)
  store i1 %t108, ptr %l72
  br label %bb21
bb20:
  store i1 false, ptr %l67, !tbaa !21
  br label %bb22
bb21:
  %t109 = load i1, ptr %l72, !tbaa !21
  store i1 %t109, ptr %l67, !tbaa !21
  br label %bb22
bb22:
  %t110 = load i1, ptr %l67, !tbaa !21
  br i1 %t110, label %bb23, label %bb24
bb23:
  %t111 = load i64, ptr %l10, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l3, i64 %t111)
  br label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb26
bb26:
  br label %bb27
bb27:
  %t114 = load i64, ptr %l9, !tbaa !24
  %t116 = add i64 %t114, 1
  store i64 %t116, ptr %l9, !tbaa !24
  br label %bb14
bb28:
  %t118 = load i64, ptr %l2, !tbaa !24
  %t119 = load i64, ptr @G_2ecompiler_2ftypes_2eRoleCtor, !tbaa !24
  %t122 = icmp eq i64 %t118, %t119
  br i1 %t122, label %bb29, label %bb30
bb29:
  store i1 true, ptr %l80, !tbaa !21
  br label %bb31
bb30:
  %t124 = load i64, ptr %l2, !tbaa !24
  %t125 = load i64, ptr @G_2ecompiler_2ftypes_2eRoleTail, !tbaa !24
  %t128 = icmp eq i64 %t124, %t125
  store i1 %t128, ptr %l80, !tbaa !21
  br label %bb31
bb31:
  %t130 = load i1, ptr %l80, !tbaa !21
  store i1 %t130, ptr %l11, !tbaa !21
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t132 = load i32, ptr %l1, !tbaa !23
  %t135 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResults(ptr %v0, ptr %s0, ptr %t131, i32 %t132)
  store { i64, ptr } %t135, ptr %l86
  br label %bb32
bb32:
  %t136 = load { i64, ptr }, ptr %l86, !tbaa !27
  store { i64, ptr } %t136, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t137 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t139 = extractvalue { i64, ptr } %t137, 0
  store i64 %t139, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t141 = load i64, ptr %l14, !tbaa !24
  %t142 = load i64, ptr %l13, !tbaa !24
  %t145 = icmp sgt i64 %t141, %t142
  br i1 %t145, label %bb33, label %bb34
bb33:
  %t147 = load i64, ptr %l15, !tbaa !24
  %t149 = icmp sgt i64 %t147, 0
  br i1 %t149, label %bb35, label %bb36
bb34:
  store i64 0, ptr %l92, !tbaa !24
  br label %bb38
bb35:
  %t151 = load i64, ptr %l14, !tbaa !24
  %t152 = load i64, ptr %l13, !tbaa !24
  %t155 = sub i64 %t151, %t152
  %t156 = load i64, ptr %l15, !tbaa !24
  %t159 = add i64 %t155, %t156
  %t161 = sub i64 %t159, 1
  %t162 = load i64, ptr %l15, !tbaa !24
  %t165 = sdiv i64 %t161, %t162
  store i64 %t165, ptr %l95, !tbaa !24
  br label %bb37
bb36:
  store i64 0, ptr %l95, !tbaa !24
  br label %bb37
bb37:
  %t167 = load i64, ptr %l95, !tbaa !24
  store i64 %t167, ptr %l92, !tbaa !24
  br label %bb38
bb38:
  %t168 = load i64, ptr %l92, !tbaa !24
  store i64 %t168, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb39
bb39:
  %t169 = load i64, ptr %l17, !tbaa !24
  %t170 = load i64, ptr %l16, !tbaa !24
  %t173 = icmp slt i64 %t169, %t170
  %t175 = xor i1 %t173, true
  br i1 %t175, label %bb40, label %bb41
bb40:
  br label %bb59
bb41:
  br label %bb42
bb42:
  %t177 = load i64, ptr %l13, !tbaa !24
  %t178 = load i64, ptr %l17, !tbaa !24
  %t179 = load i64, ptr %l15, !tbaa !24
  %t182 = mul i64 %t178, %t179
  %t185 = add i64 %t177, %t182
  store i64 %t185, ptr %l18, !tbaa !24
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t188 = load i32, ptr %l1, !tbaa !23
  %t189 = load i64, ptr %l18, !tbaa !24
  %t193 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResultFrom(ptr %v0, ptr %t187, i32 %t188, i64 %t189)
  store i64 %t193, ptr %l116
  br label %bb43
bb43:
  %t194 = load i64, ptr %l116, !tbaa !24
  store i64 %t194, ptr %l19, !tbaa !24
  %t195 = load i64, ptr %l19, !tbaa !24
  %t196 = load i64, ptr @G_2ecompiler_2ftypes_2eOwnScope, !tbaa !24
  %t199 = icmp eq i64 %t195, %t196
  br i1 %t199, label %bb44, label %bb45
bb44:
  store i1 true, ptr %l120, !tbaa !21
  br label %bb46
bb45:
  %t201 = load i64, ptr %l19, !tbaa !24
  %t202 = load i64, ptr @G_2ecompiler_2ftypes_2eFromTypeVar, !tbaa !24
  %t205 = icmp eq i64 %t201, %t202
  store i1 %t205, ptr %l120, !tbaa !21
  br label %bb46
bb46:
  %t207 = load i1, ptr %l120, !tbaa !21
  br i1 %t207, label %bb47, label %bb48
bb47:
  %t208 = load ptr, ptr %l0, !tbaa !29
  %t209 = load i64, ptr %l18, !tbaa !24
  %t211 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t212 = load ptr, ptr %t211, !tbaa !27
  %t213 = getelementptr i32, ptr %t212, i64 %t209
  %t214 = load i32, ptr %t213, !tbaa !33
  %t217 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %t208, i32 %t214)
  store i1 %t217, ptr %l128
  br label %bb49
bb48:
  store i1 false, ptr %l124, !tbaa !21
  br label %bb54
bb49:
  %t218 = load i1, ptr %l128, !tbaa !21
  br i1 %t218, label %bb50, label %bb51
bb50:
  store i1 true, ptr %l129, !tbaa !21
  br label %bb53
bb51:
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t220 = load i64, ptr %l18, !tbaa !24
  %t222 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t223 = load ptr, ptr %t222, !tbaa !27
  %t224 = getelementptr i32, ptr %t223, i64 %t220
  %t225 = load i32, ptr %t224, !tbaa !33
  %t228 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2erunTimeArray(ptr %v0, ptr %t219, i32 %t225)
  store i1 %t228, ptr %l133
  br label %bb52
bb52:
  %t229 = load i1, ptr %l133, !tbaa !21
  store i1 %t229, ptr %l129, !tbaa !21
  br label %bb53
bb53:
  %t230 = load i1, ptr %l129, !tbaa !21
  store i1 %t230, ptr %l124, !tbaa !21
  br label %bb54
bb54:
  %t231 = load i1, ptr %l124, !tbaa !21
  br i1 %t231, label %bb55, label %bb56
bb55:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb57
bb56:
  br label %bb57
bb57:
  br label %bb58
bb58:
  %t232 = load i64, ptr %l17, !tbaa !24
  %t234 = add i64 %t232, 1
  store i64 %t234, ptr %l17, !tbaa !24
  br label %bb39
bb59:
  %t236 = load i1, ptr %l11, !tbaa !21
  br i1 %t236, label %bb60, label %bb61
bb60:
  %t238 = load i64, ptr @G_2ecompiler_2ftypes_2eResultVar, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l3, i64 %t238)
  br label %bb62
bb61:
  br label %bb63
bb62:
  br label %bb63
bb63:
  %t242 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %s0, ptr %s0, ptr %l3)
  store { i64, ptr } %t242, ptr %l140
  br label %bb64
bb64:
  %t243 = load { i64, ptr }, ptr %l140, !tbaa !27
  store { i64, ptr } %t243, ptr %l141, !tbaa !27
  %t244 = load { i64, ptr }, ptr %l141, !tbaa !27
  %t245 = extractvalue { i64, ptr } %t244, 0
  store i64 %t245, ptr %l142, !tbaa !24
  %t246 = load i64, ptr %l142, !tbaa !24
  %t247 = mul i64 %t246, 8
  %t248 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t247)
  %t249 = insertvalue { i64, ptr } undef, i64 %t246, 0
  %t250 = insertvalue { i64, ptr } %t249, ptr %t248, 1
  store { i64, ptr } %t250, ptr %l143, !tbaa !27
  %t251 = getelementptr { i64, ptr }, ptr %l143, i32 0, i32 1
  %t252 = load ptr, ptr %t251, !tbaa !27
  %t253 = getelementptr { i64, ptr }, ptr %l141, i32 0, i32 1
  %t254 = load ptr, ptr %t253, !tbaa !27
  %t255 = load i64, ptr %l142, !tbaa !24
  %t256 = mul i64 %t255, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t252, ptr %t254, i64 %t256, i1 false)
  %t257 = load { i64, ptr }, ptr %l143, !tbaa !27
  store { i64, ptr } %t257, ptr %l141, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t258 = load { i64, ptr }, ptr %l141, !tbaa !27
  store { i64, ptr } %t258, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopes(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i1
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i32
  %l39 = alloca { i64, ptr }
  %l43 = alloca i1
  %l56 = alloca { i64, ptr }
  %l60 = alloca i1
  %l73 = alloca i64
  %l80 = alloca { i64, ptr }
  %l82 = alloca { i64, ptr }
  %l89 = alloca i64
  %l92 = alloca i64
  %l110 = alloca { i64, ptr }
  %l113 = alloca { i64, ptr }
  %l123 = alloca i64
  %l126 = alloca i64
  %l144 = alloca { i64, ptr }
  %l150 = alloca { i64, ptr }
  %l155 = alloca i32
  %l159 = alloca i32
  %l160 = alloca i32
  %l166 = alloca i64
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t2 = load i64, ptr @G_2ecompiler_2ftypes_2eRoleFn, !tbaa !24
  %t5 = icmp eq i64 %t1, %t2
  store i1 %t5, ptr %l4, !tbaa !21
  %t7 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t7, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t9 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 0
  store i64 %t11, ptr %l7, !tbaa !24
  br label %bb1
bb1:
  %t13 = load i64, ptr %l6, !tbaa !24
  %t14 = load i64, ptr %l7, !tbaa !24
  %t17 = icmp slt i64 %t13, %t14
  %t19 = xor i1 %t17, true
  br i1 %t19, label %bb2, label %bb3
bb2:
  br label %bb9
bb3:
  br label %bb4
bb4:
  %t21 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t21, ptr %l39, !tbaa !27
  %t22 = load i64, ptr %l6, !tbaa !24
  %t24 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr i64, ptr %t25, i64 %t22
  %t27 = load i64, ptr %t26, !tbaa !34
  store i64 %t27, ptr %l8, !tbaa !24
  %t29 = load i1, ptr %l4, !tbaa !21
  br i1 %t29, label %bb5, label %bb6
bb5:
  %t31 = load i64, ptr %l8, !tbaa !24
  %t32 = load i64, ptr @G_2ecompiler_2ftypes_2eOwnScope, !tbaa !24
  %t35 = icmp eq i64 %t31, %t32
  store i1 %t35, ptr %l43, !tbaa !21
  br label %bb7
bb6:
  store i1 false, ptr %l43, !tbaa !21
  br label %bb7
bb7:
  %t37 = load i1, ptr %l43, !tbaa !21
  store i1 %t37, ptr %l4, !tbaa !21
  br label %bb8
bb8:
  %t38 = load i64, ptr %l6, !tbaa !24
  %t40 = add i64 %t38, 1
  store i64 %t40, ptr %l6, !tbaa !24
  br label %bb1
bb9:
  %t42 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t42, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t44 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t46 = extractvalue { i64, ptr } %t44, 0
  store i64 %t46, ptr %l11, !tbaa !24
  br label %bb10
bb10:
  %t48 = load i64, ptr %l10, !tbaa !24
  %t49 = load i64, ptr %l11, !tbaa !24
  %t52 = icmp slt i64 %t48, %t49
  %t54 = xor i1 %t52, true
  br i1 %t54, label %bb11, label %bb12
bb11:
  br label %bb18
bb12:
  br label %bb13
bb13:
  %t56 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t56, ptr %l56, !tbaa !27
  %t57 = load i64, ptr %l10, !tbaa !24
  %t59 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !27
  %t61 = getelementptr i64, ptr %t60, i64 %t57
  %t62 = load i64, ptr %t61, !tbaa !34
  store i64 %t62, ptr %l12, !tbaa !24
  %t64 = load i1, ptr %l4, !tbaa !21
  br i1 %t64, label %bb14, label %bb15
bb14:
  %t66 = load i64, ptr %l12, !tbaa !24
  %t67 = load i64, ptr @G_2ecompiler_2ftypes_2eOwnScope, !tbaa !24
  %t70 = icmp eq i64 %t66, %t67
  store i1 %t70, ptr %l60, !tbaa !21
  br label %bb16
bb15:
  store i1 false, ptr %l60, !tbaa !21
  br label %bb16
bb16:
  %t72 = load i1, ptr %l60, !tbaa !21
  store i1 %t72, ptr %l4, !tbaa !21
  br label %bb17
bb17:
  %t73 = load i64, ptr %l10, !tbaa !24
  %t75 = add i64 %t73, 1
  store i64 %t75, ptr %l10, !tbaa !24
  br label %bb10
bb18:
  %t77 = load i1, ptr %l4, !tbaa !21
  br i1 %t77, label %bb19, label %bb20
bb19:
  store i32 0, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t80 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t82 = extractvalue { i64, ptr } %t80, 0
  %t84 = add i64 2, %t82
  %t85 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t87 = extractvalue { i64, ptr } %t85, 0
  %t90 = add i64 %t84, %t87
  store i64 %t90, ptr %l73, !tbaa !24
  %t91 = load i64, ptr %l73, !tbaa !24
  %t92 = icmp sge i64 %t91, 0
  br i1 %t92, label %bb22, label %bb23
bb22:
  %t94 = load i64, ptr %l73, !tbaa !24
  %t95 = icmp sle i64 %t94, 1152921504606846975
  br i1 %t95, label %bb24, label %bb25
bb23:
  call void @__olang_check_failed(ptr @olang_loc_63e623ceae63df16_2a862fe3f0344bd2)
  unreachable
bb24:
  %t97 = load i64, ptr %l73, !tbaa !24
  %t98 = mul i64 %t97, 8
  %t99 = call ptr @__olang_scope_alloc_zeroed(ptr %v0, i64 %t98)
  %t100 = insertvalue { i64, ptr } undef, i64 %t97, 0
  %t101 = insertvalue { i64, ptr } %t100, ptr %t99, 1
  store { i64, ptr } %t101, ptr %l13, !tbaa !27
  %t103 = load i64, ptr %l1, !tbaa !24
  %t105 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t107 = extractvalue { i64, ptr } %t105, 0
  %t109 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t109, ptr %l80, !tbaa !27
  %t112 = getelementptr { i64, ptr }, ptr %l80, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !27
  %t114 = getelementptr i64, ptr %t113, i64 0
  store i64 %t103, ptr %t114, !tbaa !34
  %t115 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t115, ptr %l82, !tbaa !27
  %t118 = getelementptr { i64, ptr }, ptr %l82, i32 0, i32 1
  %t119 = load ptr, ptr %t118, !tbaa !27
  %t120 = getelementptr i64, ptr %t119, i64 1
  store i64 %t107, ptr %t120, !tbaa !34
  store i64 0, ptr %l16, !tbaa !24
  %t121 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t123 = extractvalue { i64, ptr } %t121, 0
  store i64 %t123, ptr %l17, !tbaa !24
  store i64 1, ptr %l18, !tbaa !24
  %t125 = load i64, ptr %l17, !tbaa !24
  %t126 = load i64, ptr %l16, !tbaa !24
  %t129 = icmp sgt i64 %t125, %t126
  br i1 %t129, label %bb26, label %bb27
bb25:
  call void @__olang_check_failed(ptr @olang_loc_63e623ceae63df16_2a862fe3f0344bd2)
  unreachable
bb26:
  %t131 = load i64, ptr %l18, !tbaa !24
  %t133 = icmp sgt i64 %t131, 0
  br i1 %t133, label %bb28, label %bb29
bb27:
  store i64 0, ptr %l89, !tbaa !24
  br label %bb31
bb28:
  %t135 = load i64, ptr %l17, !tbaa !24
  %t136 = load i64, ptr %l16, !tbaa !24
  %t139 = sub i64 %t135, %t136
  %t140 = load i64, ptr %l18, !tbaa !24
  %t143 = add i64 %t139, %t140
  %t145 = sub i64 %t143, 1
  %t146 = load i64, ptr %l18, !tbaa !24
  %t149 = sdiv i64 %t145, %t146
  store i64 %t149, ptr %l92, !tbaa !24
  br label %bb30
bb29:
  store i64 0, ptr %l92, !tbaa !24
  br label %bb30
bb30:
  %t151 = load i64, ptr %l92, !tbaa !24
  store i64 %t151, ptr %l89, !tbaa !24
  br label %bb31
bb31:
  %t152 = load i64, ptr %l89, !tbaa !24
  store i64 %t152, ptr %l19, !tbaa !24
  store i64 0, ptr %l20, !tbaa !24
  br label %bb32
bb32:
  %t153 = load i64, ptr %l20, !tbaa !24
  %t154 = load i64, ptr %l19, !tbaa !24
  %t157 = icmp slt i64 %t153, %t154
  %t159 = xor i1 %t157, true
  br i1 %t159, label %bb33, label %bb34
bb33:
  br label %bb37
bb34:
  br label %bb35
bb35:
  %t161 = load i64, ptr %l16, !tbaa !24
  %t162 = load i64, ptr %l20, !tbaa !24
  %t163 = load i64, ptr %l18, !tbaa !24
  %t166 = mul i64 %t162, %t163
  %t169 = add i64 %t161, %t166
  store i64 %t169, ptr %l21, !tbaa !24
  %t171 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t171, ptr %l110, !tbaa !27
  %t172 = load i64, ptr %l21, !tbaa !24
  %t174 = add i64 2, %t172
  %t175 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t175, ptr %l113, !tbaa !27
  %t176 = load i64, ptr %l21, !tbaa !24
  %t178 = getelementptr { i64, ptr }, ptr %l113, i32 0, i32 1
  %t179 = load ptr, ptr %t178, !tbaa !27
  %t180 = getelementptr i64, ptr %t179, i64 %t176
  %t181 = load i64, ptr %t180, !tbaa !34
  %t184 = getelementptr { i64, ptr }, ptr %l110, i32 0, i32 1
  %t185 = load ptr, ptr %t184, !tbaa !27
  %t186 = getelementptr i64, ptr %t185, i64 %t174
  store i64 %t181, ptr %t186, !tbaa !34
  br label %bb36
bb36:
  %t187 = load i64, ptr %l20, !tbaa !24
  %t189 = add i64 %t187, 1
  store i64 %t189, ptr %l20, !tbaa !24
  br label %bb32
bb37:
  store i64 0, ptr %l22, !tbaa !24
  %t191 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t193 = extractvalue { i64, ptr } %t191, 0
  store i64 %t193, ptr %l23, !tbaa !24
  store i64 1, ptr %l24, !tbaa !24
  %t195 = load i64, ptr %l23, !tbaa !24
  %t196 = load i64, ptr %l22, !tbaa !24
  %t199 = icmp sgt i64 %t195, %t196
  br i1 %t199, label %bb38, label %bb39
bb38:
  %t201 = load i64, ptr %l24, !tbaa !24
  %t203 = icmp sgt i64 %t201, 0
  br i1 %t203, label %bb40, label %bb41
bb39:
  store i64 0, ptr %l123, !tbaa !24
  br label %bb43
bb40:
  %t205 = load i64, ptr %l23, !tbaa !24
  %t206 = load i64, ptr %l22, !tbaa !24
  %t209 = sub i64 %t205, %t206
  %t210 = load i64, ptr %l24, !tbaa !24
  %t213 = add i64 %t209, %t210
  %t215 = sub i64 %t213, 1
  %t216 = load i64, ptr %l24, !tbaa !24
  %t219 = sdiv i64 %t215, %t216
  store i64 %t219, ptr %l126, !tbaa !24
  br label %bb42
bb41:
  store i64 0, ptr %l126, !tbaa !24
  br label %bb42
bb42:
  %t221 = load i64, ptr %l126, !tbaa !24
  store i64 %t221, ptr %l123, !tbaa !24
  br label %bb43
bb43:
  %t222 = load i64, ptr %l123, !tbaa !24
  store i64 %t222, ptr %l25, !tbaa !24
  store i64 0, ptr %l26, !tbaa !24
  br label %bb44
bb44:
  %t223 = load i64, ptr %l26, !tbaa !24
  %t224 = load i64, ptr %l25, !tbaa !24
  %t227 = icmp slt i64 %t223, %t224
  %t229 = xor i1 %t227, true
  br i1 %t229, label %bb45, label %bb46
bb45:
  br label %bb49
bb46:
  br label %bb47
bb47:
  %t231 = load i64, ptr %l22, !tbaa !24
  %t232 = load i64, ptr %l26, !tbaa !24
  %t233 = load i64, ptr %l24, !tbaa !24
  %t236 = mul i64 %t232, %t233
  %t239 = add i64 %t231, %t236
  store i64 %t239, ptr %l27, !tbaa !24
  %t241 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t241, ptr %l144, !tbaa !27
  %t242 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t244 = extractvalue { i64, ptr } %t242, 0
  %t246 = add i64 2, %t244
  %t247 = load i64, ptr %l27, !tbaa !24
  %t250 = add i64 %t246, %t247
  %t251 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t251, ptr %l150, !tbaa !27
  %t252 = load i64, ptr %l27, !tbaa !24
  %t254 = getelementptr { i64, ptr }, ptr %l150, i32 0, i32 1
  %t255 = load ptr, ptr %t254, !tbaa !27
  %t256 = getelementptr i64, ptr %t255, i64 %t252
  %t257 = load i64, ptr %t256, !tbaa !34
  %t260 = getelementptr { i64, ptr }, ptr %l144, i32 0, i32 1
  %t261 = load ptr, ptr %t260, !tbaa !27
  %t262 = getelementptr i64, ptr %t261, i64 %t250
  store i64 %t257, ptr %t262, !tbaa !34
  br label %bb48
bb48:
  %t263 = load i64, ptr %l26, !tbaa !24
  %t265 = add i64 %t263, 1
  store i64 %t265, ptr %l26, !tbaa !24
  br label %bb44
bb49:
  %t267 = load ptr, ptr %l0, !tbaa !29
  %t269 = getelementptr %"compiler/types:Table", ptr %t267, i32 0, i32 29
  %t270 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t273 = call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cArray_3cI64_3e_26_2c_20compiler_2ftype_H6f9f964c6e47aa337ef4265757211d88(ptr %v0, ptr %v0, ptr %t269, { i64, ptr } %t270)
  %t274 = extractvalue { i32, i32 } %t273, 1
  %t275 = extractvalue { i32, i32 } %t273, 0
  store i32 %t275, ptr %l160
  %t276 = icmp ne i32 %t275, 0
  br i1 %t276, label %bb51, label %ok.277, !prof !99
ok.277:
  store i32 %t274, ptr %l159
  br label %bb50
bb50:
  %t278 = load i32, ptr %l159, !tbaa !23
  store i32 %t278, ptr %l155, !tbaa !23
  br label %bb53
bb51:
  br label %bb52
bb52:
  store i32 -1, ptr %l155, !tbaa !23
  br label %bb53
bb53:
  %t279 = load i32, ptr %l155, !tbaa !23
  store i32 %t279, ptr %l28, !tbaa !23
  %t280 = load i32, ptr %l28, !tbaa !23
  %t282 = icmp sge i32 %t280, 0
  br i1 %t282, label %bb54, label %bb55
bb54:
  %t284 = load i32, ptr %l28, !tbaa !23
  store i32 %t284, ptr %rv
  br label %ret
bb55:
  br label %bb56
bb56:
  %t286 = load ptr, ptr %l0, !tbaa !29
  %t288 = getelementptr %"compiler/types:Table", ptr %t286, i32 0, i32 28
  %t290 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e_2eLen_3cArray_3cI64_3e_26_3e(ptr %v0, ptr %t288)
  store i64 %t290, ptr %l166
  br label %bb57
bb57:
  %t291 = load i64, ptr %l166, !tbaa !24
  %t292 = trunc i64 %t291 to i32
  store i32 %t292, ptr %l28, !tbaa !23
  %t295 = load ptr, ptr %l0, !tbaa !29
  %t297 = getelementptr %"compiler/types:Table", ptr %t295, i32 0, i32 28
  %t298 = load { i64, ptr }, ptr %l13, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e_2ePush_3cArray_3cI64_3e_26_3e(ptr %v0, ptr %v0, ptr %t297, { i64, ptr } %t298)
  br label %bb58
bb58:
  %t301 = load ptr, ptr %l0, !tbaa !29
  %t303 = getelementptr %"compiler/types:Table", ptr %t301, i32 0, i32 29
  %t304 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t305 = load i32, ptr %l28, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cArray_3cI64_3e_26_2c_20compiler_2ftype_H453784843b408e8ae093d39318df1aed(ptr %v0, ptr %v0, ptr %t303, { i64, ptr } %t304, i32 %t305)
  br label %bb59
bb59:
  %t309 = load i32, ptr %l28, !tbaa !23
  store i32 %t309, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSetEmptyBody(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l3 = alloca ptr
  %l4 = alloca i32
  %l6 = alloca %"compiler/types:body"
  %s0 = alloca %olang.scope
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"compiler/types:Table", ptr %a0, i32 0, i32 16
  store ptr %t3, ptr %l3, !tbaa !29
  store i32 %a1, ptr %l4, !tbaa !23
  %t5 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t7 = call %"compiler/types:body" @compiler_2ftypes_3abody_2ector(ptr %s0, i32 0, i32 0, i32 %t5, i1 false, i1 true)
  store %"compiler/types:body" %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l3, !tbaa !29
  %t9 = load i32, ptr %l4, !tbaa !23
  %t10 = load %"compiler/types:body", ptr %l6
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20compile_H00ad3ea0211b1c1ed775c1e06d3ea587(ptr %v0, ptr %t8, i32 %t9, %"compiler/types:body" %t10)
  br label %bb2
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSetEnumBody(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l12 = alloca i64
  %l21 = alloca i64
  %l24 = alloca i64
  %l42 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l54 = alloca ptr
  %l55 = alloca i32
  %l58 = alloca %"compiler/types:body"
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l12, !tbaa !24
  %t4 = load i64, ptr %l12, !tbaa !24
  %t5 = icmp sge i64 %t4, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load i64, ptr %l12, !tbaa !24
  %t8 = icmp sle i64 %t7, 2305843009213693951
  br i1 %t8, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_f7eaf3fe8a46d3da_9f187abb7d2da27e)
  unreachable
bb3:
  %t10 = load i64, ptr %l12, !tbaa !24
  %t11 = mul i64 %t10, 4
  %t12 = call ptr @__olang_scope_alloc_zeroed(ptr %v0, i64 %t11)
  %t13 = insertvalue { i64, ptr } undef, i64 %t10, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr %t12, 1
  store { i64, ptr } %t14, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t16 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t16, 0
  store i64 %t18, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t20 = load i64, ptr %l6, !tbaa !24
  %t21 = load i64, ptr %l5, !tbaa !24
  %t24 = icmp sgt i64 %t20, %t21
  br i1 %t24, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_f7eaf3fe8a46d3da_9f187abb7d2da27e)
  unreachable
bb5:
  %t26 = load i64, ptr %l7, !tbaa !24
  %t28 = icmp sgt i64 %t26, 0
  br i1 %t28, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb10
bb7:
  %t30 = load i64, ptr %l6, !tbaa !24
  %t31 = load i64, ptr %l5, !tbaa !24
  %t34 = sub i64 %t30, %t31
  %t35 = load i64, ptr %l7, !tbaa !24
  %t38 = add i64 %t34, %t35
  %t40 = sub i64 %t38, 1
  %t41 = load i64, ptr %l7, !tbaa !24
  %t44 = sdiv i64 %t40, %t41
  store i64 %t44, ptr %l24, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb9
bb9:
  %t46 = load i64, ptr %l24, !tbaa !24
  store i64 %t46, ptr %l21, !tbaa !24
  br label %bb10
bb10:
  %t47 = load i64, ptr %l21, !tbaa !24
  store i64 %t47, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb11
bb11:
  %t48 = load i64, ptr %l9, !tbaa !24
  %t49 = load i64, ptr %l8, !tbaa !24
  %t52 = icmp slt i64 %t48, %t49
  %t54 = xor i1 %t52, true
  br i1 %t54, label %bb12, label %bb13
bb12:
  br label %bb16
bb13:
  br label %bb14
bb14:
  %t56 = load i64, ptr %l5, !tbaa !24
  %t57 = load i64, ptr %l9, !tbaa !24
  %t58 = load i64, ptr %l7, !tbaa !24
  %t61 = mul i64 %t57, %t58
  %t64 = add i64 %t56, %t61
  store i64 %t64, ptr %l10, !tbaa !24
  %t66 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t66, ptr %l42, !tbaa !27
  %t67 = load i64, ptr %l10, !tbaa !24
  %t68 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t68, ptr %l44, !tbaa !27
  %t69 = load i64, ptr %l10, !tbaa !24
  %t71 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !27
  %t73 = getelementptr i32, ptr %t72, i64 %t69
  %t74 = load i32, ptr %t73, !tbaa !33
  %t77 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !27
  %t79 = getelementptr i32, ptr %t78, i64 %t67
  store i32 %t74, ptr %t79, !tbaa !33
  br label %bb15
bb15:
  %t80 = load i64, ptr %l9, !tbaa !24
  %t82 = add i64 %t80, 1
  store i64 %t82, ptr %l9, !tbaa !24
  br label %bb11
bb16:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr %"compiler/types:Table", ptr %t84, i32 0, i32 17
  %t87 = load i32, ptr %l1, !tbaa !23
  %t88 = load { i64, ptr }, ptr %l4, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Array_3_Hd895f0b253f779909e5758cb24860698(ptr %v0, ptr %v0, ptr %t86, i32 %t87, { i64, ptr } %t88)
  br label %bb17
bb17:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/types:Table", ptr %t92, i32 0, i32 16
  store ptr %t94, ptr %l54, !tbaa !29
  %t95 = load i32, ptr %l1, !tbaa !23
  store i32 %t95, ptr %l55, !tbaa !23
  %t97 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t100 = call %"compiler/types:body" @compiler_2ftypes_3abody_2ector(ptr %s0, i32 0, i32 %a3, i32 %t97, i1 false, i1 true)
  store %"compiler/types:body" %t100, ptr %l58
  br label %bb18
bb18:
  %t101 = load ptr, ptr %l54, !tbaa !29
  %t102 = load i32, ptr %l55, !tbaa !23
  %t103 = load %"compiler/types:body", ptr %l58
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20compile_H00ad3ea0211b1c1ed775c1e06d3ea587(ptr %v0, ptr %t101, i32 %t102, %"compiler/types:body" %t103)
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSetLayoutState(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/types:Table", ptr %a0, i32 0, i32 20
  %t6 = sext i32 %a1 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t3, i64 %t6, i64 %a2)
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSetStructBody(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i1 %a3) #0 {
entry:
  %l5 = alloca ptr
  %l6 = alloca i32
  %l10 = alloca %"compiler/types:body"
  %s0 = alloca %olang.scope
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"compiler/types:Table", ptr %a0, i32 0, i32 16
  store ptr %t3, ptr %l5, !tbaa !29
  store i32 %a1, ptr %l6, !tbaa !23
  %t6 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t11 = call %"compiler/types:body" @compiler_2ftypes_3abody_2ector(ptr %s0, i32 %a2, i32 0, i32 %t6, i1 %a3, i1 true)
  store %"compiler/types:body" %t11, ptr %l10
  br label %bb1
bb1:
  %t12 = load ptr, ptr %l5, !tbaa !29
  %t13 = load i32, ptr %l6, !tbaa !23
  %t14 = load %"compiler/types:body", ptr %l10
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20compile_H00ad3ea0211b1c1ed775c1e06d3ea587(ptr %v0, ptr %t12, i32 %t13, %"compiler/types:body" %t14)
  br label %bb2
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeNames(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/types:Table", ptr %t1, i32 0, i32 7
  store ptr %t3, ptr %l3, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t8 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %t4, i32 %a1)
  store i64 %t8, ptr %l6
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l3, !tbaa !29
  %t10 = load i64, ptr %l6, !tbaa !24
  %t11 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fsource_3aNameId_3e__H37377f924b66ff741793959f79fef546(ptr %v0, ptr %v1, ptr %t9, i64 %t10)
  store { i64, ptr } %t11, ptr %l7
  br label %bb2
bb2:
  %t12 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t12, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSize(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l6 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/types:Table", ptr %a0, i32 0, i32 21
  %t6 = sext i32 %a1 to i64
  %t9 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t3, i64 %t6)
  store i64 %t9, ptr %l6
  br label %bb1
bb1:
  %t10 = load i64, ptr %l6, !tbaa !24
  store i64 %t10, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eStructBody(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca { i64, ptr }
  %l13 = alloca ptr
  %l16 = alloca i32
  %l17 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l2, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t3 = load i32, ptr %l1, !tbaa !23
  %t6 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t2, i32 %t3)
  store i32 %t6, ptr %l5
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l2, !tbaa !29
  %t8 = load i32, ptr %l5, !tbaa !23
  %t9 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t7, i32 %t8)
  store { i64, ptr } %t9, ptr %l6
  br label %bb2
bb2:
  %t10 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t10, 0
  %t13 = icmp eq i64 %t11, 0
  br i1 %t13, label %bb3, label %bb4
bb3:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d12, i32 0, i32 1) }, ptr %l9, !tbaa !27
  %t15 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t15, ptr %l10, !tbaa !27
  %t16 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t16, 0
  store i64 %t17, ptr %l11, !tbaa !24
  %t18 = load i64, ptr %l11, !tbaa !24
  %t19 = mul i64 %t18, 1
  %t20 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t19)
  %t21 = insertvalue { i64, ptr } undef, i64 %t18, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t20, 1
  store { i64, ptr } %t22, ptr %l12, !tbaa !27
  %t23 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !27
  %t25 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = load i64, ptr %l11, !tbaa !24
  %t28 = mul i64 %t27, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t24, ptr %t26, i64 %t28, i1 false)
  %t29 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t29, ptr %l10, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t30 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t30, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t31 = load ptr, ptr %l0, !tbaa !29
  store ptr %t31, ptr %l13, !tbaa !29
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load i32, ptr %l1, !tbaa !23
  %t36 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t32, i32 %t33)
  store i32 %t36, ptr %l16
  br label %bb6
bb6:
  %t37 = load ptr, ptr %l13, !tbaa !29
  %t38 = load i32, ptr %l16, !tbaa !23
  %t39 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eaggregate(ptr %v0, ptr %v1, ptr %v2, ptr %t37, i32 %t38)
  store { i64, ptr } %t39, ptr %l17
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s0)
  %t40 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t40, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eUnique(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i1
  %l3 = alloca i1
  %l6 = alloca i64
  %l13 = alloca i1
  %l14 = alloca i1
  %l19 = alloca i1
  %l20 = alloca i32
  %l26 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/types:Table", ptr %t1, i32 0, i32 38
  %t5 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eLen_3cI64_2c_20Bool_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load i64, ptr %l6, !tbaa !24
  %t7 = icmp eq i64 %t6, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/types:Table", ptr %t10, i32 0, i32 43
  %t13 = load i32, ptr %l1, !tbaa !23
  %t15 = sext i32 %t13 to i64
  %t18 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t12, i64 %t15)
  store i1 %t18, ptr %l13
  br label %bb5
bb5:
  %t19 = load i1, ptr %l13, !tbaa !21
  br i1 %t19, label %bb6, label %bb7
bb6:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/types:Table", ptr %t20, i32 0, i32 43
  %t23 = load i32, ptr %l1, !tbaa !23
  %t25 = sext i32 %t23 to i64
  %t28 = call { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eGet_3cI64_2c_20Bool_3e(ptr %v0, ptr %t22, i64 %t25)
  %t29 = extractvalue { i32, i1 } %t28, 1
  %t30 = extractvalue { i32, i1 } %t28, 0
  store i32 %t30, ptr %l20
  %t31 = icmp ne i32 %t30, 0
  br i1 %t31, label %bb9, label %ok.32, !prof !99
ok.32:
  store i1 %t29, ptr %l19
  br label %bb8
bb7:
  br label %bb12
bb8:
  %t33 = load i1, ptr %l19, !tbaa !21
  store i1 %t33, ptr %l14, !tbaa !21
  br label %bb11
bb9:
  br label %bb10
bb10:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb11
bb11:
  %t34 = load i1, ptr %l14, !tbaa !21
  store i1 %t34, ptr %rv
  br label %ret
bb12:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/types:Table", ptr %t35, i32 0, i32 35
  %t38 = load i1, ptr %t37, !tbaa !21
  store i1 %t38, ptr %l2, !tbaa !21
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/types:Table", ptr %t40, i32 0, i32 35
  store i1 false, ptr %t42, !tbaa !21
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = load i32, ptr %l1, !tbaa !23
  %t47 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eunique(ptr %v0, ptr %t43, i32 %t44, i64 0)
  store i1 %t47, ptr %l26
  br label %bb13
bb13:
  %t48 = load i1, ptr %l26, !tbaa !21
  store i1 %t48, ptr %l3, !tbaa !21
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/types:Table", ptr %t49, i32 0, i32 35
  %t52 = load i1, ptr %t51, !tbaa !21
  %t54 = xor i1 %t52, true
  br i1 %t54, label %bb14, label %bb15
bb14:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/types:Table", ptr %t56, i32 0, i32 43
  %t59 = load i32, ptr %l1, !tbaa !23
  %t61 = sext i32 %t59 to i64
  %t62 = load i1, ptr %l3, !tbaa !21
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t58, i64 %t61, i1 %t62)
  br label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb17
bb17:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load i1, ptr %l2, !tbaa !21
  %t70 = getelementptr %"compiler/types:Table", ptr %t66, i32 0, i32 35
  store i1 %t67, ptr %t70, !tbaa !21
  %t71 = load i1, ptr %l3, !tbaa !21
  store i1 %t71, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eUntagged(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i32
  %l8 = alloca ptr
  %l11 = alloca i32
  %l14 = alloca i32
  %l17 = alloca i32
  %l20 = alloca i32
  %l23 = alloca i64
  %l26 = alloca i1
  %l29 = alloca i64
  %l30 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncTag(ptr %v0, ptr %t1, i32 %t2)
  store i32 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t7 = load i32, ptr %l4, !tbaa !23
  %t9 = icmp eq i32 %t7, %t6
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load i32, ptr %l1, !tbaa !23
  store i32 %t11, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t13 = load ptr, ptr %l0, !tbaa !29
  store ptr %t13, ptr %l8, !tbaa !29
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load i32, ptr %l1, !tbaa !23
  %t18 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t14, i32 %t15)
  store i32 %t18, ptr %l11
  br label %bb5
bb5:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = load i32, ptr %l1, !tbaa !23
  %t23 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t19, i32 %t20)
  store i32 %t23, ptr %l14
  br label %bb6
bb6:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load i32, ptr %l1, !tbaa !23
  %t28 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t24, i32 %t25)
  store i32 %t28, ptr %l17
  br label %bb7
bb7:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = load i32, ptr %l1, !tbaa !23
  %t33 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesOf(ptr %v0, ptr %t29, i32 %t30)
  store i32 %t33, ptr %l20
  br label %bb8
bb8:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load i32, ptr %l1, !tbaa !23
  %t38 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamesIdOf(ptr %v0, ptr %t34, i32 %t35)
  store i64 %t38, ptr %l23
  br label %bb9
bb9:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load i32, ptr %l1, !tbaa !23
  %t43 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncNullable(ptr %v0, ptr %t39, i32 %t40)
  store i1 %t43, ptr %l26
  br label %bb10
bb10:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t45 = load i32, ptr %l1, !tbaa !23
  %t48 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePromisesOf(ptr %v0, ptr %t44, i32 %t45)
  store i64 %t48, ptr %l29
  br label %bb11
bb11:
  %t49 = load ptr, ptr %l8, !tbaa !29
  %t50 = load i32, ptr %l11, !tbaa !23
  %t51 = load i32, ptr %l14, !tbaa !23
  %t52 = load i32, ptr %l17, !tbaa !23
  %t53 = load i32, ptr %l20, !tbaa !23
  %t54 = load i64, ptr %l23, !tbaa !24
  %t55 = load i1, ptr %l26, !tbaa !21
  %t56 = load i64, ptr %l29, !tbaa !24
  %t57 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t49, i32 %t50, i32 %t51, i32 %t52, i32 %t53, i64 %t54, i1 %t55, i32 0, i64 %t56)
  store i32 %t57, ptr %l30
  br label %bb12
bb12:
  %t58 = load i32, ptr %l30, !tbaa !23
  store i32 %t58, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eValueParts(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %lp2 = alloca ptr
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l3
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t2, ptr %lp2
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t4 = load ptr, ptr %lp2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  %t7 = load ptr, ptr %lp2
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2evalueParts(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %t7)
  br label %bb2
bb2:
  %t11 = load ptr, ptr %lp2
  %t12 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t11
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eVar(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l4 = alloca ptr
  %l9 = alloca %"compiler/types:data"
  %l10 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store ptr %a0, ptr %l4, !tbaa !29
  %t9 = call %"compiler/types:data" @compiler_2ftypes_3adata_2ector(ptr %s0, i32 25, i64 %a1, i64 %a2, i64 %a3, i64 0, i64 0, i64 0, i64 0)
  store %"compiler/types:data" %t9, ptr %l9
  br label %bb1
bb1:
  %t10 = load ptr, ptr %l4, !tbaa !29
  %t11 = load %"compiler/types:data", ptr %l9
  %t12 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eintern(ptr %v0, ptr %t10, %"compiler/types:data" %t11, i32 1)
  store i32 %t12, ptr %l10
  br label %bb2
bb2:
  call void @__olang_scope_close(ptr %s0)
  %t13 = load i32, ptr %l10, !tbaa !23
  store i32 %t13, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eViaMemory(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i1
  %l5 = alloca i1
  %l8 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eByAddress(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i1, ptr %l4, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i32, ptr %l1, !tbaa !23
  %t11 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSize(ptr %v0, ptr %t7, i32 %t8)
  store i64 %t11, ptr %l8
  br label %bb4
bb3:
  store i1 false, ptr %l5, !tbaa !21
  br label %bb5
bb4:
  %t12 = load i64, ptr @G_2ecompiler_2ftypes_2eBigAggregate, !tbaa !24
  %t13 = load i64, ptr %l8, !tbaa !24
  %t15 = icmp sgt i64 %t13, %t12
  store i1 %t15, ptr %l5, !tbaa !21
  br label %bb5
bb5:
  %t17 = load i1, ptr %l5, !tbaa !21
  store i1 %t17, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eaggregate(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca %"std/prelude/text:StringBuilder"
  %l14 = alloca { i64, ptr }
  %l20 = alloca i64
  %l23 = alloca i64
  %l44 = alloca ptr
  %l46 = alloca { i64, ptr }
  %l49 = alloca { i64, ptr }
  %l54 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l10
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l10
  store %"std/prelude/text:StringBuilder" %t2, ptr %l2
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l2, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d13, i32 0, i32 1) })
  br label %bb2
bb2:
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t8 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t4, i32 %a1)
  store { i64, ptr } %t8, ptr %l14
  br label %bb3
bb3:
  %t9 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t9, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t10 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t10, 0
  store i64 %t12, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t14 = load i64, ptr %l5, !tbaa !24
  %t15 = load i64, ptr %l4, !tbaa !24
  %t18 = icmp sgt i64 %t14, %t15
  br i1 %t18, label %bb4, label %bb5
bb4:
  %t20 = load i64, ptr %l6, !tbaa !24
  %t22 = icmp sgt i64 %t20, 0
  br i1 %t22, label %bb6, label %bb7
bb5:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb9
bb6:
  %t24 = load i64, ptr %l5, !tbaa !24
  %t25 = load i64, ptr %l4, !tbaa !24
  %t28 = sub i64 %t24, %t25
  %t29 = load i64, ptr %l6, !tbaa !24
  %t32 = add i64 %t28, %t29
  %t34 = sub i64 %t32, 1
  %t35 = load i64, ptr %l6, !tbaa !24
  %t38 = sdiv i64 %t34, %t35
  store i64 %t38, ptr %l23, !tbaa !24
  br label %bb8
bb7:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb8
bb8:
  %t40 = load i64, ptr %l23, !tbaa !24
  store i64 %t40, ptr %l20, !tbaa !24
  br label %bb9
bb9:
  %t41 = load i64, ptr %l20, !tbaa !24
  store i64 %t41, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb10
bb10:
  %t42 = load i64, ptr %l8, !tbaa !24
  %t43 = load i64, ptr %l7, !tbaa !24
  %t46 = icmp slt i64 %t42, %t43
  %t48 = xor i1 %t46, true
  br i1 %t48, label %bb11, label %bb12
bb11:
  br label %bb21
bb12:
  br label %bb13
bb13:
  %t50 = load i64, ptr %l4, !tbaa !24
  %t51 = load i64, ptr %l8, !tbaa !24
  %t52 = load i64, ptr %l6, !tbaa !24
  %t55 = mul i64 %t51, %t52
  %t58 = add i64 %t50, %t55
  store i64 %t58, ptr %l9, !tbaa !24
  %t60 = load i64, ptr %l9, !tbaa !24
  %t62 = icmp sgt i64 %t60, 0
  br i1 %t62, label %bb14, label %bb15
bb14:
  store %olang.scope zeroinitializer, ptr %s3
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s3, ptr %l2, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d14, i32 0, i32 1) })
  br label %bb16
bb15:
  br label %bb17
bb16:
  call void @__olang_scope_close(ptr %s3)
  br label %bb17
bb17:
  store ptr %l2, ptr %l44, !tbaa !29
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t66, ptr %l46, !tbaa !27
  %t67 = load i64, ptr %l9, !tbaa !24
  %t69 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !27
  %t71 = getelementptr i32, ptr %t70, i64 %t67
  %t72 = load i32, ptr %t71, !tbaa !33
  %t75 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLlvm(ptr %v0, ptr %v0, ptr %v2, ptr %t65, i32 %t72)
  store { i64, ptr } %t75, ptr %l49
  br label %bb18
bb18:
  %t76 = load ptr, ptr %l44, !tbaa !29
  %t77 = load { i64, ptr }, ptr %l49, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v0, ptr %t76, { i64, ptr } %t77)
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t78 = load i64, ptr %l8, !tbaa !24
  %t80 = add i64 %t78, 1
  store i64 %t80, ptr %l8, !tbaa !24
  br label %bb10
bb21:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l2, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d15, i32 0, i32 1) })
  br label %bb22
bb22:
  %t84 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l2)
  store { i64, ptr } %t84, ptr %l54
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s0)
  %t85 = load { i64, ptr }, ptr %l54, !tbaa !27
  store { i64, ptr } %t85, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"compiler/types:data" @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eat(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l6 = alloca %"compiler/types:data"
  %rv = alloca %"compiler/types:data"
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/types:Table", ptr %a0, i32 0, i32 1
  %t6 = sext i32 %a1 to i64
  %t9 = call %"compiler/types:data" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3adata_3e_2eAt_3ccompiler_2ftypes_3adata_3e(ptr %v0, ptr %t3, i64 %t6)
  store %"compiler/types:data" %t9, ptr %l6
  br label %bb1
bb1:
  %t10 = load %"compiler/types:data", ptr %l6
  store %"compiler/types:data" %t10, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/types:data", ptr %rv
  ret %"compiler/types:data" %rr
}

define dso_local %"compiler/types:body" @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ebodyOf(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca %"compiler/types:body"
  %l6 = alloca %"compiler/types:body"
  %l7 = alloca i32
  %l9 = alloca %"compiler/types:body"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/types:body"
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"compiler/types:Table", ptr %a0, i32 0, i32 16
  %t7 = call { i32, %"compiler/types:body" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20compile_Hede57d818a9c1e0bef22465b1936f190(ptr %v0, ptr %t3, i32 %a1)
  %t8 = extractvalue { i32, %"compiler/types:body" } %t7, 1
  %t9 = extractvalue { i32, %"compiler/types:body" } %t7, 0
  store i32 %t9, ptr %l7
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store %"compiler/types:body" %t8, ptr %l6
  br label %bb1
bb1:
  %t12 = load %"compiler/types:body", ptr %l6
  store %"compiler/types:body" %t12, ptr %l2
  br label %bb5
bb2:
  br label %bb3
bb3:
  %t13 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t15 = call %"compiler/types:body" @compiler_2ftypes_3abody_2ector(ptr %s0, i32 0, i32 0, i32 %t13, i1 false, i1 false)
  store %"compiler/types:body" %t15, ptr %l9
  br label %bb4
bb4:
  %t16 = load %"compiler/types:body", ptr %l9
  store %"compiler/types:body" %t16, ptr %l2
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  %t17 = load %"compiler/types:body", ptr %l2
  store %"compiler/types:body" %t17, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/types:body", ptr %rv
  ret %"compiler/types:body" %rr
}

define dso_local void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ecanon(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca %"compiler/types:data"
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i32
  %l16 = alloca i1
  %l17 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca { i64, ptr }
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  %l34 = alloca i64
  %l35 = alloca i64
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca i64
  %l39 = alloca i64
  %l40 = alloca i32
  %l43 = alloca %"compiler/types:data"
  %l59 = alloca ptr
  %l60 = alloca ptr
  %l63 = alloca i32
  %l64 = alloca ptr
  %l67 = alloca i64
  %l98 = alloca ptr
  %l102 = alloca { i64, ptr }
  %l108 = alloca ptr
  %l111 = alloca { i64, ptr }
  %l119 = alloca i32
  %l120 = alloca ptr
  %l122 = alloca ptr
  %l125 = alloca i64
  %l126 = alloca { i64, ptr }
  %l128 = alloca ptr
  %l130 = alloca ptr
  %l133 = alloca i32
  %l135 = alloca { i64, ptr }
  %l136 = alloca ptr
  %l139 = alloca i32
  %l140 = alloca { i64, ptr }
  %l145 = alloca i1
  %l147 = alloca { i64, ptr }
  %l151 = alloca i32
  %l154 = alloca i1
  %l156 = alloca { i64, ptr }
  %l160 = alloca i32
  %l171 = alloca i64
  %l174 = alloca i64
  %l194 = alloca ptr
  %l196 = alloca { i64, ptr }
  %l199 = alloca i32
  %l202 = alloca { i64, ptr }
  %l205 = alloca { i64, ptr }
  %l214 = alloca ptr
  %l215 = alloca ptr
  %l218 = alloca i32
  %l221 = alloca i32
  %l224 = alloca ptr
  %l225 = alloca ptr
  %l228 = alloca i32
  %l234 = alloca i64
  %l240 = alloca ptr
  %l241 = alloca ptr
  %l242 = alloca ptr
  %l245 = alloca i32
  %l246 = alloca i32
  %l252 = alloca ptr
  %l253 = alloca ptr
  %l256 = alloca i32
  %l257 = alloca ptr
  %l262 = alloca { i64, ptr }
  %l265 = alloca ptr
  %l270 = alloca { i64, ptr }
  %l283 = alloca ptr
  %l284 = alloca ptr
  %l287 = alloca i32
  %l291 = alloca i32
  %l297 = alloca i32
  %l300 = alloca ptr
  %l302 = alloca { i64, ptr }
  %l308 = alloca ptr
  %l311 = alloca i32
  %l312 = alloca { i64, ptr }
  %l320 = alloca i1
  %l321 = alloca { i64, ptr }
  %l338 = alloca i1
  %l345 = alloca { i64, ptr }
  %l351 = alloca i64
  %l354 = alloca i64
  %l375 = alloca ptr
  %l377 = alloca ptr
  %l378 = alloca { i64, ptr }
  %l384 = alloca { i64, ptr }
  %l393 = alloca { i64, ptr }
  %l400 = alloca i64
  %l403 = alloca i64
  %l425 = alloca { i64, ptr }
  %l436 = alloca ptr
  %l437 = alloca ptr
  %l440 = alloca i32
  %l445 = alloca ptr
  %l446 = alloca ptr
  %l449 = alloca i32
  %l456 = alloca { i64, ptr }
  %l457 = alloca ptr
  %l460 = alloca i32
  %l461 = alloca { i64, ptr }
  %l467 = alloca i64
  %l470 = alloca i64
  %l491 = alloca ptr
  %l493 = alloca ptr
  %l494 = alloca { i64, ptr }
  %l498 = alloca { i64, ptr }
  %l499 = alloca { i64, ptr }
  %l504 = alloca ptr
  %l505 = alloca ptr
  %l507 = alloca { i64, ptr }
  %l510 = alloca i32
  %l526 = alloca i32
  %l530 = alloca ptr
  %l533 = alloca { i64, ptr }
  %l536 = alloca i1
  %l537 = alloca i1
  %l540 = alloca ptr
  %l542 = alloca { i64, ptr }
  %l550 = alloca ptr
  %l553 = alloca { i64, ptr }
  %l559 = alloca ptr
  %l560 = alloca ptr
  %l563 = alloca i32
  %l567 = alloca ptr
  %l568 = alloca ptr
  %l571 = alloca i32
  %l576 = alloca ptr
  %l577 = alloca ptr
  %l578 = alloca ptr
  %l581 = alloca i32
  %l582 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %s21 = alloca %olang.scope
  %s22 = alloca %olang.scope
  %s24 = alloca %olang.scope
  %s26 = alloca %olang.scope
  %s28 = alloca %olang.scope
  %s31 = alloca %olang.scope
  %s34 = alloca %olang.scope
  %s36 = alloca %olang.scope
  %s41 = alloca %olang.scope
  %s42 = alloca %olang.scope
  %s44 = alloca %olang.scope
  %s48 = alloca %olang.scope
  %s51 = alloca %olang.scope
  %s53 = alloca %olang.scope
  %s54 = alloca %olang.scope
  %s56 = alloca %olang.scope
  %s58 = alloca %olang.scope
  %s59 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l2, !tbaa !23
  %t5 = call %"compiler/types:data" @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eat(ptr %v0, ptr %t1, i32 %t2)
  store %"compiler/types:data" %t5, ptr %l43
  br label %bb1
bb1:
  %t6 = load %"compiler/types:data", ptr %l43
  store %"compiler/types:data" %t6, ptr %l3
  %t7 = getelementptr %"compiler/types:data", ptr %l3, i32 0, i32 0
  %t8 = load i32, ptr %t7, !range !{i32 0, i32 33}
  store i32 %t8, ptr %l4
  %t10 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t12 = trunc i64 0 to i32
  %t13 = icmp eq i32 %t10, %t12
  br i1 %t13, label %bb2, label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb6
bb4:
  store %olang.scope zeroinitializer, ptr %s1
  %t15 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s1, ptr %t15, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) })
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s1)
  br label %bb367
bb6:
  %t17 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t19 = trunc i64 15 to i32
  %t20 = icmp eq i32 %t17, %t19
  br i1 %t20, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb11
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t22 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s2, ptr %t22, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d17, i32 0, i32 1) })
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb367
bb11:
  %t24 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t26 = trunc i64 16 to i32
  %t27 = icmp eq i32 %t24, %t26
  br i1 %t27, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb16
bb14:
  store %olang.scope zeroinitializer, ptr %s3
  %t29 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s3, ptr %t29, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d18, i32 0, i32 1) })
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s3)
  br label %bb367
bb16:
  %t31 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t33 = trunc i64 17 to i32
  %t34 = icmp eq i32 %t31, %t33
  br i1 %t34, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb21
bb19:
  store %olang.scope zeroinitializer, ptr %s4
  %t36 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s4, ptr %t36, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d19, i32 0, i32 1) })
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s4)
  br label %bb367
bb21:
  %t38 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t40 = trunc i64 28 to i32
  %t41 = icmp eq i32 %t38, %t40
  br i1 %t41, label %bb22, label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb29
bb24:
  store %olang.scope zeroinitializer, ptr %s5
  %t43 = load ptr, ptr %l0, !tbaa !29
  store ptr %t43, ptr %l59, !tbaa !29
  %t44 = load ptr, ptr %l1, !tbaa !29
  store ptr %t44, ptr %l60, !tbaa !29
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load i32, ptr %l2, !tbaa !23
  %t49 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t45, i32 %t46)
  store i32 %t49, ptr %l63
  br label %bb25
bb25:
  %t50 = load ptr, ptr %l59, !tbaa !29
  %t51 = load ptr, ptr %l60, !tbaa !29
  %t52 = load i32, ptr %l63, !tbaa !23
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ecanon(ptr %v0, ptr %v1, ptr %v2, ptr %t50, ptr %t51, i32 %t52)
  br label %bb26
bb26:
  %t53 = load ptr, ptr %l1, !tbaa !29
  store ptr %t53, ptr %l64, !tbaa !29
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load i32, ptr %l2, !tbaa !23
  %t58 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrMask(ptr %v0, ptr %t54, i32 %t55)
  store i64 %t58, ptr %l67
  br label %bb27
bb27:
  %t59 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t60 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  %t61 = load i64, ptr %l67, !tbaa !65
  %t62 = call i64 @__olang_fmt_u64(ptr null, i64 %t61)
  %t63 = add i64 %t60, %t62
  %t64 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t63)
  call void @olang_textcopy(ptr %t64, ptr %t59, i64 %t60)
  %t65 = getelementptr i8, ptr %t64, i64 %t60
  %t66 = call i64 @__olang_fmt_u64(ptr %t65, i64 %t61)
  %t67 = insertvalue { i64, ptr } undef, i64 %t63, 0
  %t68 = insertvalue { i64, ptr } %t67, ptr %t64, 1
  %t70 = extractvalue { i64, ptr } %t68, 0
  %t71 = extractvalue { i64, ptr } %t68, 1
  %t72 = mul i64 %t70, 1
  %t73 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t72)
  call void @llvm.memcpy.p0.p0.i64(ptr %t73, ptr %t71, i64 %t72, i1 false)
  %t74 = insertvalue { i64, ptr } undef, i64 %t70, 0
  %t75 = insertvalue { i64, ptr } %t74, ptr %t73, 1
  %t76 = load ptr, ptr %l64, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s5, ptr %t76, { i64, ptr } %t75)
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s5)
  br label %bb367
bb29:
  %t78 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t80 = trunc i64 1 to i32
  %t81 = icmp eq i32 %t78, %t80
  br i1 %t81, label %bb30, label %bb31
bb30:
  br label %bb58
bb31:
  %t83 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t85 = trunc i64 2 to i32
  %t86 = icmp eq i32 %t83, %t85
  br i1 %t86, label %bb32, label %bb33
bb32:
  br label %bb58
bb33:
  %t88 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t90 = trunc i64 3 to i32
  %t91 = icmp eq i32 %t88, %t90
  br i1 %t91, label %bb34, label %bb35
bb34:
  br label %bb58
bb35:
  %t93 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t95 = trunc i64 4 to i32
  %t96 = icmp eq i32 %t93, %t95
  br i1 %t96, label %bb36, label %bb37
bb36:
  br label %bb58
bb37:
  %t98 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t100 = trunc i64 5 to i32
  %t101 = icmp eq i32 %t98, %t100
  br i1 %t101, label %bb38, label %bb39
bb38:
  br label %bb58
bb39:
  %t103 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t105 = trunc i64 6 to i32
  %t106 = icmp eq i32 %t103, %t105
  br i1 %t106, label %bb40, label %bb41
bb40:
  br label %bb58
bb41:
  %t108 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t110 = trunc i64 7 to i32
  %t111 = icmp eq i32 %t108, %t110
  br i1 %t111, label %bb42, label %bb43
bb42:
  br label %bb58
bb43:
  %t113 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t115 = trunc i64 8 to i32
  %t116 = icmp eq i32 %t113, %t115
  br i1 %t116, label %bb44, label %bb45
bb44:
  br label %bb58
bb45:
  %t118 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t120 = trunc i64 9 to i32
  %t121 = icmp eq i32 %t118, %t120
  br i1 %t121, label %bb46, label %bb47
bb46:
  br label %bb58
bb47:
  %t123 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t125 = trunc i64 10 to i32
  %t126 = icmp eq i32 %t123, %t125
  br i1 %t126, label %bb48, label %bb49
bb48:
  br label %bb58
bb49:
  %t128 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t130 = trunc i64 11 to i32
  %t131 = icmp eq i32 %t128, %t130
  br i1 %t131, label %bb50, label %bb51
bb50:
  br label %bb58
bb51:
  %t133 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t135 = trunc i64 12 to i32
  %t136 = icmp eq i32 %t133, %t135
  br i1 %t136, label %bb52, label %bb53
bb52:
  br label %bb58
bb53:
  %t138 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t140 = trunc i64 13 to i32
  %t141 = icmp eq i32 %t138, %t140
  br i1 %t141, label %bb54, label %bb55
bb54:
  br label %bb58
bb55:
  %t143 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t145 = trunc i64 14 to i32
  %t146 = icmp eq i32 %t143, %t145
  br i1 %t146, label %bb56, label %bb57
bb56:
  br label %bb58
bb57:
  br label %bb63
bb58:
  %t148 = load ptr, ptr %l1, !tbaa !29
  store ptr %t148, ptr %l98, !tbaa !29
  %t149 = load i32, ptr %l2, !tbaa !23
  %t150 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t153 = icmp eq i32 %t149, %t150
  br i1 %t153, label %bb59, label %bb60
bb59:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d21, i32 0, i32 1) }, ptr %l102, !tbaa !27
  br label %bb61
bb60:
  %t155 = load i32, ptr %l2, !tbaa !23
  %t157 = sext i32 %t155 to i64
  %t159 = getelementptr [15 x { i64, ptr }], ptr @G_2ecompiler_2ftypes_2eprimNames, i64 0, i64 %t157
  %t160 = load { i64, ptr }, ptr %t159, !tbaa !37
  store { i64, ptr } %t160, ptr %l102, !tbaa !27
  br label %bb61
bb61:
  %t162 = load ptr, ptr @__olang_prog_scope
  %t163 = load ptr, ptr %l98, !tbaa !29
  %t164 = load { i64, ptr }, ptr %l102, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %t162, ptr %t163, { i64, ptr } %t164)
  br label %bb62
bb62:
  br label %bb367
bb63:
  %t165 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t167 = trunc i64 31 to i32
  %t168 = icmp eq i32 %t165, %t167
  br i1 %t168, label %bb64, label %bb65
bb64:
  br label %bb66
bb65:
  br label %bb71
bb66:
  store %olang.scope zeroinitializer, ptr %s8
  %t170 = load ptr, ptr %l1, !tbaa !29
  store ptr %t170, ptr %l108, !tbaa !29
  %t171 = getelementptr %"compiler/types:data", ptr %l3, i32 0, i32 2
  %t172 = load i64, ptr %t171, !tbaa !24
  %t174 = icmp eq i64 %t172, 1
  br i1 %t174, label %bb67, label %bb68
bb67:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d22, i32 0, i32 1) }, ptr %l111, !tbaa !27
  br label %bb69
bb68:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d23, i32 0, i32 1) }, ptr %l111, !tbaa !27
  br label %bb69
bb69:
  %t176 = getelementptr %"compiler/types:data", ptr %l3, i32 0, i32 1
  %t177 = load i64, ptr %t176, !tbaa !24
  %t178 = load { i64, ptr }, ptr %l111, !tbaa !27
  %t179 = extractvalue { i64, ptr } %t178, 1
  %t180 = extractvalue { i64, ptr } %t178, 0
  %t182 = call i64 @__olang_fmt_i64(ptr null, i64 %t177)
  %t183 = add i64 %t180, %t182
  %t184 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t183)
  call void @olang_textcopy(ptr %t184, ptr %t179, i64 %t180)
  %t185 = getelementptr i8, ptr %t184, i64 %t180
  %t186 = call i64 @__olang_fmt_i64(ptr %t185, i64 %t177)
  %t187 = insertvalue { i64, ptr } undef, i64 %t183, 0
  %t188 = insertvalue { i64, ptr } %t187, ptr %t184, 1
  %t190 = extractvalue { i64, ptr } %t188, 0
  %t191 = extractvalue { i64, ptr } %t188, 1
  %t192 = mul i64 %t190, 1
  %t193 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t192)
  call void @llvm.memcpy.p0.p0.i64(ptr %t193, ptr %t191, i64 %t192, i1 false)
  %t194 = insertvalue { i64, ptr } undef, i64 %t190, 0
  %t195 = insertvalue { i64, ptr } %t194, ptr %t193, 1
  %t196 = load ptr, ptr %l108, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s8, ptr %t196, { i64, ptr } %t195)
  br label %bb70
bb70:
  call void @__olang_scope_close(ptr %s8)
  br label %bb367
bb71:
  %t198 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t200 = trunc i64 18 to i32
  %t201 = icmp eq i32 %t198, %t200
  br i1 %t201, label %bb72, label %bb73
bb72:
  br label %bb74
bb73:
  br label %bb122
bb74:
  store %olang.scope zeroinitializer, ptr %s10
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t204 = load i32, ptr %l2, !tbaa !23
  %t207 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t203, i32 %t204)
  store i32 %t207, ptr %l119
  br label %bb75
bb75:
  %t208 = load i32, ptr %l119, !tbaa !23
  store i32 %t208, ptr %l5, !tbaa !23
  %t209 = load ptr, ptr %l1, !tbaa !29
  store ptr %t209, ptr %l120, !tbaa !29
  %t210 = load ptr, ptr %l0, !tbaa !29
  %t212 = getelementptr %"compiler/types:Table", ptr %t210, i32 0, i32 14
  store ptr %t212, ptr %l122, !tbaa !29
  %t213 = load ptr, ptr %l0, !tbaa !29
  %t214 = load i32, ptr %l5, !tbaa !23
  %t217 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t213, i32 %t214)
  store i64 %t217, ptr %l125
  br label %bb76
bb76:
  %t218 = load ptr, ptr %l122, !tbaa !29
  %t219 = load i64, ptr %l125, !tbaa !24
  %t220 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t218, i64 %t219)
  store { i64, ptr } %t220, ptr %l126
  br label %bb77
bb77:
  %t221 = load ptr, ptr %l120, !tbaa !29
  %t222 = load { i64, ptr }, ptr %l126, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %v0, ptr %t221, { i64, ptr } %t222)
  br label %bb78
bb78:
  %t223 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t223, i8 58)
  br label %bb79
bb79:
  %t225 = load ptr, ptr %l1, !tbaa !29
  store ptr %t225, ptr %l128, !tbaa !29
  %t226 = load ptr, ptr %l0, !tbaa !29
  %t228 = getelementptr %"compiler/types:Table", ptr %t226, i32 0, i32 0
  %t229 = load ptr, ptr %t228, !tbaa !29
  store ptr %t229, ptr %l130, !tbaa !29
  %t230 = load ptr, ptr %l0, !tbaa !29
  %t231 = load i32, ptr %l5, !tbaa !23
  %t234 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t230, i32 %t231)
  store i32 %t234, ptr %l133
  br label %bb80
bb80:
  %t235 = load ptr, ptr %l130, !tbaa !29
  %t236 = call ptr @__olang_scope_or(ptr %v2, ptr %t235)
  %t237 = ptrtoint ptr %t236 to i64
  %t239 = inttoptr i64 %t237 to ptr
  %t240 = load ptr, ptr %l130, !tbaa !29
  %t241 = load i32, ptr %l133, !tbaa !23
  %t242 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %t239, ptr %s10, ptr %t240, i32 %t241)
  store { i64, ptr } %t242, ptr %l135
  br label %bb81
bb81:
  %t243 = load ptr, ptr %l128, !tbaa !29
  %t244 = load { i64, ptr }, ptr %l135, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s10, ptr %t243, { i64, ptr } %t244)
  br label %bb82
bb82:
  %t245 = load ptr, ptr %l0, !tbaa !29
  store ptr %t245, ptr %l136, !tbaa !29
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t247 = load i32, ptr %l2, !tbaa !23
  %t250 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t246, i32 %t247)
  store i32 %t250, ptr %l139
  br label %bb83
bb83:
  %t251 = load ptr, ptr %l136, !tbaa !29
  %t252 = load i32, ptr %l139, !tbaa !23
  %t253 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t251, i32 %t252)
  store { i64, ptr } %t253, ptr %l140
  br label %bb84
bb84:
  %t254 = load { i64, ptr }, ptr %l140, !tbaa !27
  store { i64, ptr } %t254, ptr %l6, !tbaa !27
  %t255 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t257 = extractvalue { i64, ptr } %t255, 0
  store i64 %t257, ptr %l7, !tbaa !24
  %t259 = load i64, ptr %l7, !tbaa !24
  %t261 = icmp sgt i64 %t259, 0
  br i1 %t261, label %bb85, label %bb86
bb85:
  %t263 = load ptr, ptr %l0, !tbaa !29
  %t264 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t264, ptr %l147, !tbaa !27
  %t265 = load i64, ptr %l7, !tbaa !24
  %t267 = sub i64 %t265, 1
  %t269 = getelementptr { i64, ptr }, ptr %l147, i32 0, i32 1
  %t270 = load ptr, ptr %t269, !tbaa !27
  %t271 = getelementptr i32, ptr %t270, i64 %t267
  %t272 = load i32, ptr %t271, !tbaa !33
  %t275 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t263, i32 %t272)
  store i32 %t275, ptr %l151
  br label %bb87
bb86:
  store i1 false, ptr %l145, !tbaa !21
  br label %bb88
bb87:
  %t276 = load i32, ptr %l151, !range !{i32 0, i32 33}
  %t278 = trunc i64 30 to i32
  %t279 = icmp eq i32 %t276, %t278
  store i1 %t279, ptr %l145, !tbaa !21
  br label %bb88
bb88:
  %t281 = load i1, ptr %l145, !tbaa !21
  br i1 %t281, label %bb89, label %bb90
bb89:
  %t282 = load ptr, ptr %l0, !tbaa !29
  %t283 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t283, ptr %l156, !tbaa !27
  %t284 = load i64, ptr %l7, !tbaa !24
  %t286 = sub i64 %t284, 1
  %t288 = getelementptr { i64, ptr }, ptr %l156, i32 0, i32 1
  %t289 = load ptr, ptr %t288, !tbaa !27
  %t290 = getelementptr i32, ptr %t289, i64 %t286
  %t291 = load i32, ptr %t290, !tbaa !33
  %t294 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrSetItems(ptr %v0, ptr %t282, i32 %t291)
  store i32 %t294, ptr %l160
  br label %bb91
bb90:
  store i1 false, ptr %l154, !tbaa !21
  br label %bb92
bb91:
  %t295 = load i32, ptr %l160, !tbaa !23
  %t296 = icmp eq i32 %t295, 0
  store i1 %t296, ptr %l154, !tbaa !21
  br label %bb92
bb92:
  %t298 = load i1, ptr %l154, !tbaa !21
  br i1 %t298, label %bb93, label %bb94
bb93:
  %t299 = load i64, ptr %l7, !tbaa !24
  %t301 = sub i64 %t299, 1
  store i64 %t301, ptr %l7, !tbaa !24
  br label %bb95
bb94:
  br label %bb95
bb95:
  %t303 = load i64, ptr %l7, !tbaa !24
  %t305 = icmp sgt i64 %t303, 0
  br i1 %t305, label %bb96, label %bb97
bb96:
  %t307 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t307, i8 60)
  br label %bb98
bb97:
  br label %bb121
bb98:
  store i64 0, ptr %l8, !tbaa !24
  %t309 = load i64, ptr %l7, !tbaa !24
  store i64 %t309, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t311 = load i64, ptr %l9, !tbaa !24
  %t312 = load i64, ptr %l8, !tbaa !24
  %t315 = icmp sgt i64 %t311, %t312
  br i1 %t315, label %bb99, label %bb100
bb99:
  %t317 = load i64, ptr %l10, !tbaa !24
  %t319 = icmp sgt i64 %t317, 0
  br i1 %t319, label %bb101, label %bb102
bb100:
  store i64 0, ptr %l171, !tbaa !24
  br label %bb104
bb101:
  %t321 = load i64, ptr %l9, !tbaa !24
  %t322 = load i64, ptr %l8, !tbaa !24
  %t325 = sub i64 %t321, %t322
  %t326 = load i64, ptr %l10, !tbaa !24
  %t329 = add i64 %t325, %t326
  %t331 = sub i64 %t329, 1
  %t332 = load i64, ptr %l10, !tbaa !24
  %t335 = sdiv i64 %t331, %t332
  store i64 %t335, ptr %l174, !tbaa !24
  br label %bb103
bb102:
  store i64 0, ptr %l174, !tbaa !24
  br label %bb103
bb103:
  %t337 = load i64, ptr %l174, !tbaa !24
  store i64 %t337, ptr %l171, !tbaa !24
  br label %bb104
bb104:
  %t338 = load i64, ptr %l171, !tbaa !24
  store i64 %t338, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb105
bb105:
  %t339 = load i64, ptr %l12, !tbaa !24
  %t340 = load i64, ptr %l11, !tbaa !24
  %t343 = icmp slt i64 %t339, %t340
  %t345 = xor i1 %t343, true
  br i1 %t345, label %bb106, label %bb107
bb106:
  br label %bb119
bb107:
  br label %bb108
bb108:
  %t347 = load i64, ptr %l8, !tbaa !24
  %t348 = load i64, ptr %l12, !tbaa !24
  %t349 = load i64, ptr %l10, !tbaa !24
  %t352 = mul i64 %t348, %t349
  %t355 = add i64 %t347, %t352
  store i64 %t355, ptr %l13, !tbaa !24
  %t357 = load i64, ptr %l13, !tbaa !24
  %t359 = icmp sgt i64 %t357, 0
  br i1 %t359, label %bb109, label %bb110
bb109:
  store %olang.scope zeroinitializer, ptr %s15
  %t361 = load ptr, ptr %l1, !tbaa !29
  store ptr %t361, ptr %l194, !tbaa !29
  %t362 = load ptr, ptr %l0, !tbaa !29
  %t363 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t363, ptr %l196, !tbaa !27
  %t364 = load i64, ptr %l13, !tbaa !24
  %t366 = getelementptr { i64, ptr }, ptr %l196, i32 0, i32 1
  %t367 = load ptr, ptr %t366, !tbaa !27
  %t368 = getelementptr i32, ptr %t367, i64 %t364
  %t369 = load i32, ptr %t368, !tbaa !33
  %t372 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t362, i32 %t369)
  store i32 %t372, ptr %l199
  br label %bb111
bb110:
  br label %bb116
bb111:
  %t373 = load i32, ptr %l199, !range !{i32 0, i32 33}
  %t375 = trunc i64 30 to i32
  %t376 = icmp eq i32 %t373, %t375
  br i1 %t376, label %bb112, label %bb113
bb112:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d24, i32 0, i32 1) }, ptr %l202, !tbaa !27
  br label %bb114
bb113:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d25, i32 0, i32 1) }, ptr %l202, !tbaa !27
  br label %bb114
bb114:
  %t378 = load ptr, ptr %l194, !tbaa !29
  %t379 = load { i64, ptr }, ptr %l202, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s15, ptr %t378, { i64, ptr } %t379)
  br label %bb115
bb115:
  call void @__olang_scope_close(ptr %s15)
  br label %bb116
bb116:
  %t380 = load ptr, ptr %l0, !tbaa !29
  %t381 = load ptr, ptr %l1, !tbaa !29
  %t382 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t382, ptr %l205, !tbaa !27
  %t383 = load i64, ptr %l13, !tbaa !24
  %t385 = getelementptr { i64, ptr }, ptr %l205, i32 0, i32 1
  %t386 = load ptr, ptr %t385, !tbaa !27
  %t387 = getelementptr i32, ptr %t386, i64 %t383
  %t388 = load i32, ptr %t387, !tbaa !33
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ecanon(ptr %v0, ptr %v1, ptr %v2, ptr %t380, ptr %t381, i32 %t388)
  br label %bb117
bb117:
  br label %bb118
bb118:
  %t392 = load i64, ptr %l12, !tbaa !24
  %t394 = add i64 %t392, 1
  store i64 %t394, ptr %l12, !tbaa !24
  br label %bb105
bb119:
  %t396 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t396, i8 62)
  br label %bb120
bb120:
  br label %bb121
bb121:
  call void @__olang_scope_close(ptr %s10)
  br label %bb367
bb122:
  %t398 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t400 = trunc i64 19 to i32
  %t401 = icmp eq i32 %t398, %t400
  br i1 %t401, label %bb123, label %bb124
bb123:
  br label %bb125
bb124:
  br label %bb137
bb125:
  store %olang.scope zeroinitializer, ptr %s17
  %t403 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s17, ptr %t403, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d26, i32 0, i32 1) })
  br label %bb126
bb126:
  %t405 = load ptr, ptr %l0, !tbaa !29
  store ptr %t405, ptr %l214, !tbaa !29
  %t406 = load ptr, ptr %l1, !tbaa !29
  store ptr %t406, ptr %l215, !tbaa !29
  %t407 = load ptr, ptr %l0, !tbaa !29
  %t408 = load i32, ptr %l2, !tbaa !23
  %t411 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t407, i32 %t408)
  store i32 %t411, ptr %l218
  br label %bb127
bb127:
  %t412 = load ptr, ptr %l214, !tbaa !29
  %t413 = load ptr, ptr %l215, !tbaa !29
  %t414 = load i32, ptr %l218, !tbaa !23
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ecanon(ptr %v0, ptr %v1, ptr %v2, ptr %t412, ptr %t413, i32 %t414)
  br label %bb128
bb128:
  %t415 = load ptr, ptr %l0, !tbaa !29
  %t416 = load i32, ptr %l2, !tbaa !23
  %t419 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t415, i32 %t416)
  store i32 %t419, ptr %l221
  br label %bb129
bb129:
  %t420 = load i32, ptr %l221, !tbaa !23
  %t421 = icmp ne i32 %t420, 0
  br i1 %t421, label %bb130, label %bb131
bb130:
  store %olang.scope zeroinitializer, ptr %s18
  %t423 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s18, ptr %t423, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d27, i32 0, i32 1) })
  br label %bb132
bb131:
  br label %bb135
bb132:
  %t425 = load ptr, ptr %l0, !tbaa !29
  store ptr %t425, ptr %l224, !tbaa !29
  %t426 = load ptr, ptr %l1, !tbaa !29
  store ptr %t426, ptr %l225, !tbaa !29
  %t427 = load ptr, ptr %l0, !tbaa !29
  %t428 = load i32, ptr %l2, !tbaa !23
  %t431 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t427, i32 %t428)
  store i32 %t431, ptr %l228
  br label %bb133
bb133:
  %t432 = load ptr, ptr %l224, !tbaa !29
  %t433 = load ptr, ptr %l225, !tbaa !29
  %t434 = load i32, ptr %l228, !tbaa !23
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ecanon(ptr %v0, ptr %v1, ptr %v2, ptr %t432, ptr %t433, i32 %t434)
  br label %bb134
bb134:
  call void @__olang_scope_close(ptr %s18)
  br label %bb135
bb135:
  %t435 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t435, i8 62)
  br label %bb136
bb136:
  call void @__olang_scope_close(ptr %s17)
  br label %bb367
bb137:
  %t437 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t439 = trunc i64 20 to i32
  %t440 = icmp eq i32 %t437, %t439
  br i1 %t440, label %bb138, label %bb139
bb138:
  br label %bb140
bb139:
  br label %bb159
bb140:
  store %olang.scope zeroinitializer, ptr %s19
  %t442 = load ptr, ptr %l0, !tbaa !29
  %t443 = load i32, ptr %l2, !tbaa !23
  %t446 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t442, i32 %t443)
  store i64 %t446, ptr %l234
  br label %bb141
bb141:
  %t447 = load i64, ptr %l234, !tbaa !24
  store i64 %t447, ptr %l14, !tbaa !24
  %t448 = load i64, ptr %l14, !tbaa !24
  %t449 = load i64, ptr @G_2ecompiler_2ftypes_2eSpread, !tbaa !24
  %t452 = and i64 %t448, %t449
  %t454 = icmp ne i64 %t452, 0
  br i1 %t454, label %bb142, label %bb143
bb142:
  store %olang.scope zeroinitializer, ptr %s20
  %t456 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s20, ptr %t456, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d28, i32 0, i32 1) })
  br label %bb144
bb143:
  br label %bb148
bb144:
  %t458 = load ptr, ptr %l0, !tbaa !29
  store ptr %t458, ptr %l240, !tbaa !29
  %t459 = load ptr, ptr %l1, !tbaa !29
  store ptr %t459, ptr %l241, !tbaa !29
  %t460 = load ptr, ptr %l0, !tbaa !29
  store ptr %t460, ptr %l242, !tbaa !29
  %t461 = load ptr, ptr %l0, !tbaa !29
  %t462 = load i32, ptr %l2, !tbaa !23
  %t465 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t461, i32 %t462)
  store i32 %t465, ptr %l245
  br label %bb145
bb145:
  %t466 = load ptr, ptr %l242, !tbaa !29
  %t467 = load i32, ptr %l245, !tbaa !23
  %t468 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t466, i32 %t467)
  store i32 %t468, ptr %l246
  br label %bb146
bb146:
  %t469 = load ptr, ptr %l240, !tbaa !29
  %t470 = load ptr, ptr %l241, !tbaa !29
  %t471 = load i32, ptr %l246, !tbaa !23
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ecanon(ptr %v0, ptr %v1, ptr %v2, ptr %t469, ptr %t470, i32 %t471)
  br label %bb147
bb147:
  call void @__olang_scope_close(ptr %s20)
  call void @__olang_scope_close(ptr %s19)
  br label %ret
bb148:
  %t472 = load i64, ptr %l14, !tbaa !24
  %t473 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t476 = and i64 %t472, %t473
  %t478 = icmp ne i64 %t476, 0
  br i1 %t478, label %bb149, label %bb150
bb149:
  store %olang.scope zeroinitializer, ptr %s21
  %t480 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s21, ptr %t480, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d29, i32 0, i32 1) })
  br label %bb151
bb150:
  br label %bb152
bb151:
  call void @__olang_scope_close(ptr %s21)
  br label %bb152
bb152:
  %t482 = load ptr, ptr %l0, !tbaa !29
  store ptr %t482, ptr %l252, !tbaa !29
  %t483 = load ptr, ptr %l1, !tbaa !29
  store ptr %t483, ptr %l253, !tbaa !29
  %t484 = load ptr, ptr %l0, !tbaa !29
  %t485 = load i32, ptr %l2, !tbaa !23
  %t488 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t484, i32 %t485)
  store i32 %t488, ptr %l256
  br label %bb153
bb153:
  %t489 = load ptr, ptr %l252, !tbaa !29
  %t490 = load ptr, ptr %l253, !tbaa !29
  %t491 = load i32, ptr %l256, !tbaa !23
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ecanon(ptr %v0, ptr %v1, ptr %v2, ptr %t489, ptr %t490, i32 %t491)
  br label %bb154
bb154:
  %t492 = load ptr, ptr %l1, !tbaa !29
  store ptr %t492, ptr %l257, !tbaa !29
  %t493 = load i64, ptr %l14, !tbaa !24
  %t494 = load i64, ptr @G_2ecompiler_2ftypes_2eNullable, !tbaa !24
  %t497 = and i64 %t493, %t494
  %t499 = icmp ne i64 %t497, 0
  br i1 %t499, label %bb155, label %bb156
bb155:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d30, i32 0, i32 1) }, ptr %l262, !tbaa !27
  br label %bb157
bb156:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d31, i32 0, i32 1) }, ptr %l262, !tbaa !27
  br label %bb157
bb157:
  %t501 = load ptr, ptr %l257, !tbaa !29
  %t502 = load { i64, ptr }, ptr %l262, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s19, ptr %t501, { i64, ptr } %t502)
  br label %bb158
bb158:
  call void @__olang_scope_close(ptr %s19)
  br label %bb367
bb159:
  %t503 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t505 = trunc i64 21 to i32
  %t506 = icmp eq i32 %t503, %t505
  br i1 %t506, label %bb160, label %bb161
bb160:
  br label %bb162
bb161:
  br label %bb260
bb162:
  store %olang.scope zeroinitializer, ptr %s22
  %t508 = load ptr, ptr %l1, !tbaa !29
  store ptr %t508, ptr %l265, !tbaa !29
  %t509 = getelementptr %"compiler/types:data", ptr %l3, i32 0, i32 6
  %t510 = load i64, ptr %t509, !tbaa !24
  %t511 = load i64, ptr @G_2ecompiler_2ftypes_2eNullable, !tbaa !24
  %t514 = and i64 %t510, %t511
  %t516 = icmp ne i64 %t514, 0
  br i1 %t516, label %bb163, label %bb164
bb163:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d32, i32 0, i32 1) }, ptr %l270, !tbaa !27
  br label %bb165
bb164:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d33, i32 0, i32 1) }, ptr %l270, !tbaa !27
  br label %bb165
bb165:
  %t518 = load ptr, ptr %l265, !tbaa !29
  %t519 = load { i64, ptr }, ptr %l270, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s22, ptr %t518, { i64, ptr } %t519)
  br label %bb166
bb166:
  %t520 = getelementptr %"compiler/types:data", ptr %l3, i32 0, i32 6
  %t521 = load i64, ptr %t520, !tbaa !24
  %t523 = ashr i64 %t521, 8
  %t525 = icmp ne i64 %t523, 0
  br i1 %t525, label %bb167, label %bb168
bb167:
  %t527 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t527, i8 91)
  br label %bb169
bb168:
  br label %bb172
bb169:
  %t529 = load ptr, ptr %l0, !tbaa !29
  %t530 = load ptr, ptr %l1, !tbaa !29
  %t531 = getelementptr %"compiler/types:data", ptr %l3, i32 0, i32 6
  %t532 = load i64, ptr %t531, !tbaa !24
  %t534 = ashr i64 %t532, 8
  %t536 = trunc i64 %t534 to i32
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ecanon(ptr %v0, ptr %v1, ptr %v2, ptr %t529, ptr %t530, i32 %t536)
  br label %bb170
bb170:
  %t541 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t541, i8 93)
  br label %bb171
bb171:
  br label %bb172
bb172:
  %t543 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t543, i8 40)
  br label %bb173
bb173:
  %t545 = load ptr, ptr %l0, !tbaa !29
  store ptr %t545, ptr %l283, !tbaa !29
  %t546 = load ptr, ptr %l1, !tbaa !29
  store ptr %t546, ptr %l284, !tbaa !29
  %t547 = load ptr, ptr %l0, !tbaa !29
  %t548 = load i32, ptr %l2, !tbaa !23
  %t551 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t547, i32 %t548)
  store i32 %t551, ptr %l287
  br label %bb174
bb174:
  %t552 = load ptr, ptr %l283, !tbaa !29
  %t553 = load ptr, ptr %l284, !tbaa !29
  %t554 = load i32, ptr %l287, !tbaa !23
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ejoined(ptr %v0, ptr %v1, ptr %v2, ptr %t552, ptr %t553, i32 %t554)
  br label %bb175
bb175:
  %t555 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t555, i8 41)
  br label %bb176
bb176:
  %t557 = load ptr, ptr %l0, !tbaa !29
  %t558 = load i32, ptr %l2, !tbaa !23
  %t561 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t557, i32 %t558)
  store i32 %t561, ptr %l291
  br label %bb177
bb177:
  %t562 = load i32, ptr %l291, !tbaa !23
  store i32 %t562, ptr %l15, !tbaa !23
  %t563 = load i32, ptr %l15, !tbaa !23
  %t564 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t567 = icmp ne i32 %t563, %t564
  br i1 %t567, label %bb178, label %bb179
bb178:
  store %olang.scope zeroinitializer, ptr %s24
  %t569 = load ptr, ptr %l0, !tbaa !29
  %t570 = load i32, ptr %l15, !tbaa !23
  %t573 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t569, i32 %t570)
  store i32 %t573, ptr %l297
  br label %bb180
bb179:
  br label %bb190
bb180:
  %t574 = load i32, ptr %l297, !range !{i32 0, i32 33}
  %t576 = trunc i64 21 to i32
  %t577 = icmp eq i32 %t574, %t576
  store i1 %t577, ptr %l16, !tbaa !21
  %t579 = load ptr, ptr %l1, !tbaa !29
  store ptr %t579, ptr %l300, !tbaa !29
  %t580 = load i1, ptr %l16, !tbaa !21
  br i1 %t580, label %bb181, label %bb182
bb181:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d34, i32 0, i32 1) }, ptr %l302, !tbaa !27
  br label %bb183
bb182:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d35, i32 0, i32 1) }, ptr %l302, !tbaa !27
  br label %bb183
bb183:
  %t582 = load ptr, ptr %l300, !tbaa !29
  %t583 = load { i64, ptr }, ptr %l302, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s24, ptr %t582, { i64, ptr } %t583)
  br label %bb184
bb184:
  %t584 = load ptr, ptr %l0, !tbaa !29
  %t585 = load ptr, ptr %l1, !tbaa !29
  %t586 = load i32, ptr %l15, !tbaa !23
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ecanon(ptr %v0, ptr %v1, ptr %v2, ptr %t584, ptr %t585, i32 %t586)
  br label %bb185
bb185:
  %t590 = load i1, ptr %l16, !tbaa !21
  br i1 %t590, label %bb186, label %bb187
bb186:
  %t592 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t592, i8 41)
  br label %bb188
bb187:
  br label %bb189
bb188:
  br label %bb189
bb189:
  call void @__olang_scope_close(ptr %s24)
  br label %bb190
bb190:
  %t594 = load ptr, ptr %l0, !tbaa !29
  store ptr %t594, ptr %l308, !tbaa !29
  %t595 = load ptr, ptr %l0, !tbaa !29
  %t596 = load i32, ptr %l2, !tbaa !23
  %t599 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t595, i32 %t596)
  store i32 %t599, ptr %l311
  br label %bb191
bb191:
  %t600 = load ptr, ptr %l308, !tbaa !29
  %t601 = load i32, ptr %l311, !tbaa !23
  %t602 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t600, i32 %t601)
  store { i64, ptr } %t602, ptr %l312
  br label %bb192
bb192:
  %t603 = load { i64, ptr }, ptr %l312, !tbaa !27
  store { i64, ptr } %t603, ptr %l17, !tbaa !27
  %t604 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t606 = extractvalue { i64, ptr } %t604, 0
  %t608 = icmp sgt i64 %t606, 0
  br i1 %t608, label %bb193, label %bb194
bb193:
  store %olang.scope zeroinitializer, ptr %s26
  %t610 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s26, ptr %t610, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d36, i32 0, i32 1) })
  br label %bb195
bb194:
  br label %bb203
bb195:
  %t612 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t614 = extractvalue { i64, ptr } %t612, 0
  %t616 = icmp eq i64 %t614, 1
  br i1 %t616, label %bb196, label %bb197
bb196:
  %t618 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t618, ptr %l321, !tbaa !27
  %t619 = getelementptr { i64, ptr }, ptr %l321, i32 0, i32 1
  %t620 = load ptr, ptr %t619, !tbaa !27
  %t621 = getelementptr i32, ptr %t620, i64 0
  %t622 = load i32, ptr %t621, !tbaa !33
  %t623 = load i32, ptr @G_2ecompiler_2ftypes_2eDefaultErrT, !tbaa !23
  %t626 = icmp eq i32 %t622, %t623
  store i1 %t626, ptr %l320, !tbaa !21
  br label %bb198
bb197:
  store i1 false, ptr %l320, !tbaa !21
  br label %bb198
bb198:
  %t628 = load i1, ptr %l320, !tbaa !21
  %t629 = xor i1 %t628, true
  br i1 %t629, label %bb199, label %bb200
bb199:
  %t631 = load ptr, ptr %l0, !tbaa !29
  %t632 = load ptr, ptr %l1, !tbaa !29
  %t633 = load { i64, ptr }, ptr %l17, !tbaa !27
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ecanonErrs(ptr %v0, ptr %v1, ptr %v0, ptr %v2, ptr %t631, ptr %t632, { i64, ptr } %t633)
  br label %bb201
bb200:
  br label %bb202
bb201:
  br label %bb202
bb202:
  call void @__olang_scope_close(ptr %s26)
  br label %bb203
bb203:
  %t637 = getelementptr %"compiler/types:data", ptr %l3, i32 0, i32 7
  %t638 = load i64, ptr %t637, !tbaa !24
  %t640 = icmp ne i64 %t638, 0
  br i1 %t640, label %bb204, label %bb205
bb204:
  store %olang.scope zeroinitializer, ptr %s28
  %t642 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s28, ptr %t642, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d37, i32 0, i32 1) })
  br label %bb206
bb205:
  br label %bb209
bb206:
  %t644 = load ptr, ptr %l0, !tbaa !29
  %t645 = load ptr, ptr %l1, !tbaa !29
  %t646 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ecanonPromises(ptr %v0, ptr %v1, ptr %v2, ptr %t644, ptr %t645, i32 %t646)
  br label %bb207
bb207:
  %t650 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t650, i8 93)
  br label %bb208
bb208:
  call void @__olang_scope_close(ptr %s28)
  br label %bb209
bb209:
  %t652 = load ptr, ptr %l0, !tbaa !29
  %t654 = getelementptr %"compiler/types:Table", ptr %t652, i32 0, i32 3
  %t655 = load i1, ptr %t654, !tbaa !21
  br i1 %t655, label %bb210, label %bb211
bb210:
  %t657 = getelementptr %"compiler/types:data", ptr %l3, i32 0, i32 5
  %t658 = load i64, ptr %t657, !tbaa !24
  %t660 = icmp ne i64 %t658, 0
  store i1 %t660, ptr %l338, !tbaa !21
  br label %bb212
bb211:
  store i1 false, ptr %l338, !tbaa !21
  br label %bb212
bb212:
  %t662 = load i1, ptr %l338, !tbaa !21
  br i1 %t662, label %bb213, label %bb214
bb213:
  %t663 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t663, i8 123)
  br label %bb215
bb214:
  br label %bb236
bb215:
  %t665 = load ptr, ptr %l0, !tbaa !29
  %t667 = getelementptr %"compiler/types:Table", ptr %t665, i32 0, i32 30
  %t668 = getelementptr %"compiler/types:data", ptr %l3, i32 0, i32 5
  %t669 = load i64, ptr %t668, !tbaa !24
  %t672 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e_2eAt_3cArray_3cI64_3e_26_3e(ptr %v0, ptr %v0, ptr %t667, i64 %t669)
  store { i64, ptr } %t672, ptr %l345
  br label %bb216
bb216:
  %t673 = load { i64, ptr }, ptr %l345, !tbaa !27
  store { i64, ptr } %t673, ptr %l18, !tbaa !27
  store i64 0, ptr %l19, !tbaa !24
  %t674 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t676 = extractvalue { i64, ptr } %t674, 0
  store i64 %t676, ptr %l20, !tbaa !24
  store i64 1, ptr %l21, !tbaa !24
  %t678 = load i64, ptr %l20, !tbaa !24
  %t679 = load i64, ptr %l19, !tbaa !24
  %t682 = icmp sgt i64 %t678, %t679
  br i1 %t682, label %bb217, label %bb218
bb217:
  %t684 = load i64, ptr %l21, !tbaa !24
  %t686 = icmp sgt i64 %t684, 0
  br i1 %t686, label %bb219, label %bb220
bb218:
  store i64 0, ptr %l351, !tbaa !24
  br label %bb222
bb219:
  %t688 = load i64, ptr %l20, !tbaa !24
  %t689 = load i64, ptr %l19, !tbaa !24
  %t692 = sub i64 %t688, %t689
  %t693 = load i64, ptr %l21, !tbaa !24
  %t696 = add i64 %t692, %t693
  %t698 = sub i64 %t696, 1
  %t699 = load i64, ptr %l21, !tbaa !24
  %t702 = sdiv i64 %t698, %t699
  store i64 %t702, ptr %l354, !tbaa !24
  br label %bb221
bb220:
  store i64 0, ptr %l354, !tbaa !24
  br label %bb221
bb221:
  %t704 = load i64, ptr %l354, !tbaa !24
  store i64 %t704, ptr %l351, !tbaa !24
  br label %bb222
bb222:
  %t705 = load i64, ptr %l351, !tbaa !24
  store i64 %t705, ptr %l22, !tbaa !24
  store i64 0, ptr %l23, !tbaa !24
  br label %bb223
bb223:
  store %olang.scope zeroinitializer, ptr %s31
  %t706 = load i64, ptr %l23, !tbaa !24
  %t707 = load i64, ptr %l22, !tbaa !24
  %t710 = icmp slt i64 %t706, %t707
  %t712 = xor i1 %t710, true
  br i1 %t712, label %bb224, label %bb225
bb224:
  call void @__olang_scope_close(ptr %s31)
  br label %bb234
bb225:
  br label %bb226
bb226:
  %t714 = load i64, ptr %l19, !tbaa !24
  %t715 = load i64, ptr %l23, !tbaa !24
  %t716 = load i64, ptr %l21, !tbaa !24
  %t719 = mul i64 %t715, %t716
  %t722 = add i64 %t714, %t719
  store i64 %t722, ptr %l24, !tbaa !24
  %t724 = load i64, ptr %l24, !tbaa !24
  %t726 = icmp sgt i64 %t724, 0
  br i1 %t726, label %bb227, label %bb228
bb227:
  %t728 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t728, i8 44)
  br label %bb229
bb228:
  br label %bb230
bb229:
  br label %bb230
bb230:
  %t730 = load ptr, ptr %l1, !tbaa !29
  store ptr %t730, ptr %l375, !tbaa !29
  %t731 = load ptr, ptr %l0, !tbaa !29
  %t733 = getelementptr %"compiler/types:Table", ptr %t731, i32 0, i32 0
  %t734 = load ptr, ptr %t733, !tbaa !29
  store ptr %t734, ptr %l377, !tbaa !29
  %t735 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t735, ptr %l378, !tbaa !27
  %t736 = load i64, ptr %l24, !tbaa !24
  %t738 = getelementptr { i64, ptr }, ptr %l378, i32 0, i32 1
  %t739 = load ptr, ptr %t738, !tbaa !27
  %t740 = getelementptr i64, ptr %t739, i64 %t736
  %t741 = load i64, ptr %t740, !tbaa !34
  %t743 = trunc i64 %t741 to i32
  %t745 = load ptr, ptr %l377, !tbaa !29
  %t746 = call ptr @__olang_scope_or(ptr %v2, ptr %t745)
  %t747 = ptrtoint ptr %t746 to i64
  %t749 = inttoptr i64 %t747 to ptr
  %t750 = load ptr, ptr %l377, !tbaa !29
  %t752 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %t749, ptr %s31, ptr %t750, i32 %t743)
  store { i64, ptr } %t752, ptr %l384
  br label %bb231
bb231:
  %t753 = load ptr, ptr %l375, !tbaa !29
  %t754 = load { i64, ptr }, ptr %l384, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s31, ptr %t753, { i64, ptr } %t754)
  br label %bb232
bb232:
  call void @__olang_scope_close(ptr %s31)
  br label %bb233
bb233:
  %t755 = load i64, ptr %l23, !tbaa !24
  %t757 = add i64 %t755, 1
  store i64 %t757, ptr %l23, !tbaa !24
  br label %bb223
bb234:
  %t759 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t759, i8 125)
  br label %bb235
bb235:
  br label %bb236
bb236:
  %t761 = getelementptr %"compiler/types:data", ptr %l3, i32 0, i32 4
  %t762 = load i64, ptr %t761, !tbaa !24
  %t764 = icmp ne i64 %t762, 0
  br i1 %t764, label %bb237, label %bb238
bb237:
  store %olang.scope zeroinitializer, ptr %s34
  %t766 = load ptr, ptr %l0, !tbaa !29
  %t768 = getelementptr %"compiler/types:Table", ptr %t766, i32 0, i32 28
  %t769 = getelementptr %"compiler/types:data", ptr %l3, i32 0, i32 4
  %t770 = load i64, ptr %t769, !tbaa !24
  %t773 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e_2eAt_3cArray_3cI64_3e_26_3e(ptr %v0, ptr %v0, ptr %t768, i64 %t770)
  store { i64, ptr } %t773, ptr %l393
  br label %bb239
bb238:
  br label %bb259
bb239:
  %t774 = load { i64, ptr }, ptr %l393, !tbaa !27
  store { i64, ptr } %t774, ptr %l25, !tbaa !27
  %t775 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s34, ptr %t775, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d38, i32 0, i32 1) })
  br label %bb240
bb240:
  store i64 0, ptr %l26, !tbaa !24
  %t777 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t779 = extractvalue { i64, ptr } %t777, 0
  store i64 %t779, ptr %l27, !tbaa !24
  store i64 1, ptr %l28, !tbaa !24
  %t781 = load i64, ptr %l27, !tbaa !24
  %t782 = load i64, ptr %l26, !tbaa !24
  %t785 = icmp sgt i64 %t781, %t782
  br i1 %t785, label %bb241, label %bb242
bb241:
  %t787 = load i64, ptr %l28, !tbaa !24
  %t789 = icmp sgt i64 %t787, 0
  br i1 %t789, label %bb243, label %bb244
bb242:
  store i64 0, ptr %l400, !tbaa !24
  br label %bb246
bb243:
  %t791 = load i64, ptr %l27, !tbaa !24
  %t792 = load i64, ptr %l26, !tbaa !24
  %t795 = sub i64 %t791, %t792
  %t796 = load i64, ptr %l28, !tbaa !24
  %t799 = add i64 %t795, %t796
  %t801 = sub i64 %t799, 1
  %t802 = load i64, ptr %l28, !tbaa !24
  %t805 = sdiv i64 %t801, %t802
  store i64 %t805, ptr %l403, !tbaa !24
  br label %bb245
bb244:
  store i64 0, ptr %l403, !tbaa !24
  br label %bb245
bb245:
  %t807 = load i64, ptr %l403, !tbaa !24
  store i64 %t807, ptr %l400, !tbaa !24
  br label %bb246
bb246:
  %t808 = load i64, ptr %l400, !tbaa !24
  store i64 %t808, ptr %l29, !tbaa !24
  store i64 0, ptr %l30, !tbaa !24
  br label %bb247
bb247:
  store %olang.scope zeroinitializer, ptr %s36
  %t809 = load i64, ptr %l30, !tbaa !24
  %t810 = load i64, ptr %l29, !tbaa !24
  %t813 = icmp slt i64 %t809, %t810
  %t815 = xor i1 %t813, true
  br i1 %t815, label %bb248, label %bb249
bb248:
  call void @__olang_scope_close(ptr %s36)
  br label %bb257
bb249:
  br label %bb250
bb250:
  %t817 = load i64, ptr %l26, !tbaa !24
  %t818 = load i64, ptr %l30, !tbaa !24
  %t819 = load i64, ptr %l28, !tbaa !24
  %t822 = mul i64 %t818, %t819
  %t825 = add i64 %t817, %t822
  store i64 %t825, ptr %l31, !tbaa !24
  %t827 = load i64, ptr %l31, !tbaa !24
  %t829 = icmp sgt i64 %t827, 0
  br i1 %t829, label %bb251, label %bb252
bb251:
  %t831 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t831, i8 44)
  br label %bb253
bb252:
  br label %bb254
bb253:
  br label %bb254
bb254:
  %t833 = load ptr, ptr %l1, !tbaa !29
  %t834 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t834, ptr %l425, !tbaa !27
  %t835 = load i64, ptr %l31, !tbaa !24
  %t837 = getelementptr { i64, ptr }, ptr %l425, i32 0, i32 1
  %t838 = load ptr, ptr %t837, !tbaa !27
  %t839 = getelementptr i64, ptr %t838, i64 %t835
  %t840 = load i64, ptr %t839, !tbaa !34
  %t842 = call i64 @__olang_fmt_i64(ptr null, i64 %t840)
  %t843 = call ptr @__olang_scope_alloc(ptr %s36, i64 %t842)
  %t844 = call i64 @__olang_fmt_i64(ptr %t843, i64 %t840)
  %t845 = insertvalue { i64, ptr } undef, i64 %t842, 0
  %t846 = insertvalue { i64, ptr } %t845, ptr %t843, 1
  %t848 = extractvalue { i64, ptr } %t846, 0
  %t849 = extractvalue { i64, ptr } %t846, 1
  %t850 = mul i64 %t848, 1
  %t851 = call ptr @__olang_scope_alloc(ptr %s36, i64 %t850)
  call void @llvm.memcpy.p0.p0.i64(ptr %t851, ptr %t849, i64 %t850, i1 false)
  %t852 = insertvalue { i64, ptr } undef, i64 %t848, 0
  %t853 = insertvalue { i64, ptr } %t852, ptr %t851, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s36, ptr %t833, { i64, ptr } %t853)
  br label %bb255
bb255:
  call void @__olang_scope_close(ptr %s36)
  br label %bb256
bb256:
  %t856 = load i64, ptr %l30, !tbaa !24
  %t858 = add i64 %t856, 1
  store i64 %t858, ptr %l30, !tbaa !24
  br label %bb247
bb257:
  %t860 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t860, i8 93)
  br label %bb258
bb258:
  call void @__olang_scope_close(ptr %s34)
  br label %bb259
bb259:
  call void @__olang_scope_close(ptr %s22)
  br label %bb367
bb260:
  %t862 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t864 = trunc i64 22 to i32
  %t865 = icmp eq i32 %t862, %t864
  br i1 %t865, label %bb261, label %bb262
bb261:
  br label %bb263
bb262:
  br label %bb268
bb263:
  %t867 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t867, i8 40)
  br label %bb264
bb264:
  %t869 = load ptr, ptr %l0, !tbaa !29
  store ptr %t869, ptr %l436, !tbaa !29
  %t870 = load ptr, ptr %l1, !tbaa !29
  store ptr %t870, ptr %l437, !tbaa !29
  %t871 = load ptr, ptr %l0, !tbaa !29
  %t872 = load i32, ptr %l2, !tbaa !23
  %t875 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t871, i32 %t872)
  store i32 %t875, ptr %l440
  br label %bb265
bb265:
  %t876 = load ptr, ptr %l436, !tbaa !29
  %t877 = load ptr, ptr %l437, !tbaa !29
  %t878 = load i32, ptr %l440, !tbaa !23
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ejoined(ptr %v0, ptr %v1, ptr %v2, ptr %t876, ptr %t877, i32 %t878)
  br label %bb266
bb266:
  %t879 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t879, i8 41)
  br label %bb267
bb267:
  br label %bb367
bb268:
  %t881 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t883 = trunc i64 23 to i32
  %t884 = icmp eq i32 %t881, %t883
  br i1 %t884, label %bb269, label %bb270
bb269:
  br label %bb271
bb270:
  br label %bb276
bb271:
  store %olang.scope zeroinitializer, ptr %s41
  %t886 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s41, ptr %t886, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d39, i32 0, i32 1) })
  br label %bb272
bb272:
  %t888 = load ptr, ptr %l0, !tbaa !29
  store ptr %t888, ptr %l445, !tbaa !29
  %t889 = load ptr, ptr %l1, !tbaa !29
  store ptr %t889, ptr %l446, !tbaa !29
  %t890 = load ptr, ptr %l0, !tbaa !29
  %t891 = load i32, ptr %l2, !tbaa !23
  %t894 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t890, i32 %t891)
  store i32 %t894, ptr %l449
  br label %bb273
bb273:
  %t895 = load ptr, ptr %l445, !tbaa !29
  %t896 = load ptr, ptr %l446, !tbaa !29
  %t897 = load i32, ptr %l449, !tbaa !23
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ejoined(ptr %v0, ptr %v1, ptr %v2, ptr %t895, ptr %t896, i32 %t897)
  br label %bb274
bb274:
  %t898 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t898, i8 41)
  br label %bb275
bb275:
  call void @__olang_scope_close(ptr %s41)
  br label %bb367
bb276:
  %t900 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t902 = trunc i64 24 to i32
  %t903 = icmp eq i32 %t900, %t902
  br i1 %t903, label %bb277, label %bb278
bb277:
  br label %bb279
bb278:
  br label %bb310
bb279:
  store %olang.scope zeroinitializer, ptr %s42
  %t905 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s42, ptr %t905, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d40, i32 0, i32 1) })
  br label %bb280
bb280:
  %t907 = load ptr, ptr %l0, !tbaa !29
  %t908 = load i32, ptr %l2, !tbaa !23
  %t911 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeNames(ptr %v0, ptr %v0, ptr %t907, i32 %t908)
  store { i64, ptr } %t911, ptr %l456
  br label %bb281
bb281:
  %t912 = load { i64, ptr }, ptr %l456, !tbaa !27
  store { i64, ptr } %t912, ptr %l32, !tbaa !27
  %t913 = load ptr, ptr %l0, !tbaa !29
  store ptr %t913, ptr %l457, !tbaa !29
  %t914 = load ptr, ptr %l0, !tbaa !29
  %t915 = load i32, ptr %l2, !tbaa !23
  %t918 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %v0, ptr %t914, i32 %t915)
  store i32 %t918, ptr %l460
  br label %bb282
bb282:
  %t919 = load ptr, ptr %l457, !tbaa !29
  %t920 = load i32, ptr %l460, !tbaa !23
  %t921 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t919, i32 %t920)
  store { i64, ptr } %t921, ptr %l461
  br label %bb283
bb283:
  %t922 = load { i64, ptr }, ptr %l461, !tbaa !27
  store { i64, ptr } %t922, ptr %l33, !tbaa !27
  store i64 0, ptr %l34, !tbaa !24
  %t923 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t925 = extractvalue { i64, ptr } %t923, 0
  store i64 %t925, ptr %l35, !tbaa !24
  store i64 1, ptr %l36, !tbaa !24
  %t927 = load i64, ptr %l35, !tbaa !24
  %t928 = load i64, ptr %l34, !tbaa !24
  %t931 = icmp sgt i64 %t927, %t928
  br i1 %t931, label %bb284, label %bb285
bb284:
  %t933 = load i64, ptr %l36, !tbaa !24
  %t935 = icmp sgt i64 %t933, 0
  br i1 %t935, label %bb286, label %bb287
bb285:
  store i64 0, ptr %l467, !tbaa !24
  br label %bb289
bb286:
  %t937 = load i64, ptr %l35, !tbaa !24
  %t938 = load i64, ptr %l34, !tbaa !24
  %t941 = sub i64 %t937, %t938
  %t942 = load i64, ptr %l36, !tbaa !24
  %t945 = add i64 %t941, %t942
  %t947 = sub i64 %t945, 1
  %t948 = load i64, ptr %l36, !tbaa !24
  %t951 = sdiv i64 %t947, %t948
  store i64 %t951, ptr %l470, !tbaa !24
  br label %bb288
bb287:
  store i64 0, ptr %l470, !tbaa !24
  br label %bb288
bb288:
  %t953 = load i64, ptr %l470, !tbaa !24
  store i64 %t953, ptr %l467, !tbaa !24
  br label %bb289
bb289:
  %t954 = load i64, ptr %l467, !tbaa !24
  store i64 %t954, ptr %l37, !tbaa !24
  store i64 0, ptr %l38, !tbaa !24
  br label %bb290
bb290:
  store %olang.scope zeroinitializer, ptr %s44
  %t955 = load i64, ptr %l38, !tbaa !24
  %t956 = load i64, ptr %l37, !tbaa !24
  %t959 = icmp slt i64 %t955, %t956
  %t961 = xor i1 %t959, true
  br i1 %t961, label %bb291, label %bb292
bb291:
  call void @__olang_scope_close(ptr %s44)
  br label %bb308
bb292:
  br label %bb293
bb293:
  %t963 = load i64, ptr %l34, !tbaa !24
  %t964 = load i64, ptr %l38, !tbaa !24
  %t965 = load i64, ptr %l36, !tbaa !24
  %t968 = mul i64 %t964, %t965
  %t971 = add i64 %t963, %t968
  store i64 %t971, ptr %l39, !tbaa !24
  %t973 = load i64, ptr %l39, !tbaa !24
  %t975 = icmp sgt i64 %t973, 0
  br i1 %t975, label %bb294, label %bb295
bb294:
  %t977 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t977, i8 32)
  br label %bb296
bb295:
  br label %bb297
bb296:
  br label %bb297
bb297:
  %t979 = load ptr, ptr %l1, !tbaa !29
  store ptr %t979, ptr %l491, !tbaa !29
  %t980 = load ptr, ptr %l0, !tbaa !29
  %t982 = getelementptr %"compiler/types:Table", ptr %t980, i32 0, i32 0
  %t983 = load ptr, ptr %t982, !tbaa !29
  store ptr %t983, ptr %l493, !tbaa !29
  %t984 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t984, ptr %l494, !tbaa !27
  %t985 = load i64, ptr %l39, !tbaa !24
  %t987 = getelementptr { i64, ptr }, ptr %l494, i32 0, i32 1
  %t988 = load ptr, ptr %t987, !tbaa !27
  %t989 = getelementptr i32, ptr %t988, i64 %t985
  %t990 = load i32, ptr %t989, !tbaa !33
  %t991 = load ptr, ptr %l493, !tbaa !29
  %t992 = call ptr @__olang_scope_or(ptr %v2, ptr %t991)
  %t993 = ptrtoint ptr %t992 to i64
  %t995 = inttoptr i64 %t993 to ptr
  %t996 = load ptr, ptr %l493, !tbaa !29
  %t998 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %t995, ptr %s44, ptr %t996, i32 %t990)
  store { i64, ptr } %t998, ptr %l498
  br label %bb298
bb298:
  %t999 = load ptr, ptr %l491, !tbaa !29
  %t1000 = load { i64, ptr }, ptr %l498, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s44, ptr %t999, { i64, ptr } %t1000)
  br label %bb299
bb299:
  %t1001 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t1001, ptr %l499, !tbaa !27
  %t1002 = load i64, ptr %l39, !tbaa !24
  %t1004 = getelementptr { i64, ptr }, ptr %l499, i32 0, i32 1
  %t1005 = load ptr, ptr %t1004, !tbaa !27
  %t1006 = getelementptr i32, ptr %t1005, i64 %t1002
  %t1007 = load i32, ptr %t1006, !tbaa !33
  %t1009 = icmp ne i32 %t1007, 0
  br i1 %t1009, label %bb300, label %bb301
bb300:
  %t1011 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t1011, i8 40)
  br label %bb302
bb301:
  br label %bb306
bb302:
  %t1013 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1013, ptr %l504, !tbaa !29
  %t1014 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1014, ptr %l505, !tbaa !29
  %t1015 = load ptr, ptr %l0, !tbaa !29
  %t1016 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t1016, ptr %l507, !tbaa !27
  %t1017 = load i64, ptr %l39, !tbaa !24
  %t1019 = getelementptr { i64, ptr }, ptr %l507, i32 0, i32 1
  %t1020 = load ptr, ptr %t1019, !tbaa !27
  %t1021 = getelementptr i32, ptr %t1020, i64 %t1017
  %t1022 = load i32, ptr %t1021, !tbaa !33
  %t1025 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t1015, i32 %t1022)
  store i32 %t1025, ptr %l510
  br label %bb303
bb303:
  %t1026 = load ptr, ptr %l504, !tbaa !29
  %t1027 = load ptr, ptr %l505, !tbaa !29
  %t1028 = load i32, ptr %l510, !tbaa !23
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ejoined(ptr %v0, ptr %v1, ptr %v2, ptr %t1026, ptr %t1027, i32 %t1028)
  br label %bb304
bb304:
  %t1029 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t1029, i8 41)
  br label %bb305
bb305:
  br label %bb306
bb306:
  call void @__olang_scope_close(ptr %s44)
  br label %bb307
bb307:
  %t1031 = load i64, ptr %l38, !tbaa !24
  %t1033 = add i64 %t1031, 1
  store i64 %t1033, ptr %l38, !tbaa !24
  br label %bb290
bb308:
  %t1035 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t1035, i8 125)
  br label %bb309
bb309:
  call void @__olang_scope_close(ptr %s42)
  br label %bb367
bb310:
  %t1037 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t1039 = trunc i64 25 to i32
  %t1040 = icmp eq i32 %t1037, %t1039
  br i1 %t1040, label %bb311, label %bb312
bb311:
  br label %bb313
bb312:
  br label %bb315
bb313:
  store %olang.scope zeroinitializer, ptr %s48
  %t1042 = load ptr, ptr %l1, !tbaa !29
  %t1043 = getelementptr %"compiler/types:data", ptr %l3, i32 0, i32 1
  %t1044 = load i64, ptr %t1043, !tbaa !24
  %t1045 = getelementptr %"compiler/types:data", ptr %l3, i32 0, i32 2
  %t1046 = load i64, ptr %t1045, !tbaa !24
  %t1047 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d41, i32 0, i32 1) }, 1
  %t1048 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d41, i32 0, i32 1) }, 0
  %t1050 = call i64 @__olang_fmt_i64(ptr null, i64 %t1044)
  %t1051 = add i64 %t1048, %t1050
  %t1052 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d42, i32 0, i32 1) }, 1
  %t1053 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d42, i32 0, i32 1) }, 0
  %t1054 = add i64 %t1051, %t1053
  %t1056 = call i64 @__olang_fmt_i64(ptr null, i64 %t1046)
  %t1057 = add i64 %t1054, %t1056
  %t1058 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d43, i32 0, i32 1) }, 1
  %t1059 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d43, i32 0, i32 1) }, 0
  %t1060 = add i64 %t1057, %t1059
  %t1061 = call ptr @__olang_scope_alloc(ptr %s48, i64 %t1060)
  call void @olang_textcopy(ptr %t1061, ptr %t1047, i64 %t1048)
  %t1062 = getelementptr i8, ptr %t1061, i64 %t1048
  %t1063 = call i64 @__olang_fmt_i64(ptr %t1062, i64 %t1044)
  %t1064 = getelementptr i8, ptr %t1062, i64 %t1050
  call void @olang_textcopy(ptr %t1064, ptr %t1052, i64 %t1053)
  %t1065 = getelementptr i8, ptr %t1064, i64 %t1053
  %t1066 = call i64 @__olang_fmt_i64(ptr %t1065, i64 %t1046)
  %t1067 = getelementptr i8, ptr %t1065, i64 %t1056
  call void @olang_textcopy(ptr %t1067, ptr %t1058, i64 %t1059)
  %t1068 = insertvalue { i64, ptr } undef, i64 %t1060, 0
  %t1069 = insertvalue { i64, ptr } %t1068, ptr %t1061, 1
  %t1071 = extractvalue { i64, ptr } %t1069, 0
  %t1072 = extractvalue { i64, ptr } %t1069, 1
  %t1073 = mul i64 %t1071, 1
  %t1074 = call ptr @__olang_scope_alloc(ptr %s48, i64 %t1073)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1074, ptr %t1072, i64 %t1073, i1 false)
  %t1075 = insertvalue { i64, ptr } undef, i64 %t1071, 0
  %t1076 = insertvalue { i64, ptr } %t1075, ptr %t1074, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s48, ptr %t1042, { i64, ptr } %t1076)
  br label %bb314
bb314:
  call void @__olang_scope_close(ptr %s48)
  br label %bb367
bb315:
  %t1079 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t1081 = trunc i64 26 to i32
  %t1082 = icmp eq i32 %t1079, %t1081
  br i1 %t1082, label %bb316, label %bb317
bb316:
  br label %bb318
bb317:
  br label %bb337
bb318:
  %t1084 = load ptr, ptr %l0, !tbaa !29
  %t1085 = load i32, ptr %l2, !tbaa !23
  %t1088 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstType(ptr %v0, ptr %t1084, i32 %t1085)
  store i32 %t1088, ptr %l526
  br label %bb319
bb319:
  %t1089 = load i32, ptr %l526, !tbaa !23
  store i32 %t1089, ptr %l40, !tbaa !23
  %t1090 = load i32, ptr %l40, !tbaa !23
  %t1091 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t1094 = icmp eq i32 %t1090, %t1091
  br i1 %t1094, label %bb320, label %bb321
bb320:
  store %olang.scope zeroinitializer, ptr %s51
  %t1096 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1096, ptr %l530, !tbaa !29
  %t1097 = getelementptr %"compiler/types:data", ptr %l3, i32 0, i32 2
  %t1098 = load i64, ptr %t1097, !tbaa !24
  %t1100 = icmp ne i64 %t1098, 0
  br i1 %t1100, label %bb322, label %bb323
bb321:
  %t1102 = load ptr, ptr %l0, !tbaa !29
  %t1103 = load i32, ptr %l40, !tbaa !23
  %t1106 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %t1102, i32 %t1103)
  store i1 %t1106, ptr %l536
  br label %bb326
bb322:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d44, i32 0, i32 1) }, ptr %l533, !tbaa !27
  br label %bb324
bb323:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d45, i32 0, i32 1) }, ptr %l533, !tbaa !27
  br label %bb324
bb324:
  %t1107 = load ptr, ptr %l530, !tbaa !29
  %t1108 = load { i64, ptr }, ptr %l533, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s51, ptr %t1107, { i64, ptr } %t1108)
  br label %bb325
bb325:
  call void @__olang_scope_close(ptr %s51)
  br label %bb336
bb326:
  %t1109 = load i1, ptr %l536, !tbaa !21
  br i1 %t1109, label %bb327, label %bb328
bb327:
  %t1110 = getelementptr %"compiler/types:data", ptr %l3, i32 0, i32 2
  %t1111 = load i64, ptr %t1110, !tbaa !24
  %t1113 = icmp slt i64 %t1111, 0
  store i1 %t1113, ptr %l537, !tbaa !21
  br label %bb329
bb328:
  store i1 false, ptr %l537, !tbaa !21
  br label %bb329
bb329:
  %t1115 = load i1, ptr %l537, !tbaa !21
  br i1 %t1115, label %bb330, label %bb331
bb330:
  store %olang.scope zeroinitializer, ptr %s53
  %t1116 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1116, ptr %l540, !tbaa !29
  %t1117 = getelementptr %"compiler/types:data", ptr %l3, i32 0, i32 2
  %t1118 = load i64, ptr %t1117, !tbaa !24
  %t1120 = call { i64, ptr } @compiler_2ftypes_2eUnsignedText(ptr %s53, i64 %t1118)
  store { i64, ptr } %t1120, ptr %l542
  br label %bb332
bb331:
  store %olang.scope zeroinitializer, ptr %s54
  %t1121 = load ptr, ptr %l1, !tbaa !29
  %t1122 = getelementptr %"compiler/types:data", ptr %l3, i32 0, i32 2
  %t1123 = load i64, ptr %t1122, !tbaa !24
  %t1125 = call i64 @__olang_fmt_i64(ptr null, i64 %t1123)
  %t1126 = call ptr @__olang_scope_alloc(ptr %s54, i64 %t1125)
  %t1127 = call i64 @__olang_fmt_i64(ptr %t1126, i64 %t1123)
  %t1128 = insertvalue { i64, ptr } undef, i64 %t1125, 0
  %t1129 = insertvalue { i64, ptr } %t1128, ptr %t1126, 1
  %t1131 = extractvalue { i64, ptr } %t1129, 0
  %t1132 = extractvalue { i64, ptr } %t1129, 1
  %t1133 = mul i64 %t1131, 1
  %t1134 = call ptr @__olang_scope_alloc(ptr %s54, i64 %t1133)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1134, ptr %t1132, i64 %t1133, i1 false)
  %t1135 = insertvalue { i64, ptr } undef, i64 %t1131, 0
  %t1136 = insertvalue { i64, ptr } %t1135, ptr %t1134, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s54, ptr %t1121, { i64, ptr } %t1136)
  br label %bb334
bb332:
  %t1139 = load { i64, ptr }, ptr %l542, !tbaa !27
  %t1140 = extractvalue { i64, ptr } %t1139, 0
  %t1141 = extractvalue { i64, ptr } %t1139, 1
  %t1142 = mul i64 %t1140, 1
  %t1143 = call ptr @__olang_scope_alloc(ptr %s53, i64 %t1142)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1143, ptr %t1141, i64 %t1142, i1 false)
  %t1144 = insertvalue { i64, ptr } undef, i64 %t1140, 0
  %t1145 = insertvalue { i64, ptr } %t1144, ptr %t1143, 1
  %t1146 = load ptr, ptr %l540, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s53, ptr %t1146, { i64, ptr } %t1145)
  br label %bb333
bb333:
  call void @__olang_scope_close(ptr %s53)
  br label %bb335
bb334:
  call void @__olang_scope_close(ptr %s54)
  br label %bb335
bb335:
  br label %bb336
bb336:
  br label %bb367
bb337:
  %t1148 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t1150 = trunc i64 27 to i32
  %t1151 = icmp eq i32 %t1148, %t1150
  br i1 %t1151, label %bb338, label %bb339
bb338:
  br label %bb340
bb339:
  br label %bb343
bb340:
  store %olang.scope zeroinitializer, ptr %s56
  %t1153 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1153, ptr %l550, !tbaa !29
  %t1154 = load ptr, ptr %l0, !tbaa !29
  %t1155 = load i32, ptr %l2, !tbaa !23
  %t1158 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePattern(ptr %v0, ptr %s56, ptr %t1154, i32 %t1155)
  store { i64, ptr } %t1158, ptr %l553
  br label %bb341
bb341:
  %t1159 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d46, i32 0, i32 1) }, 1
  %t1160 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d46, i32 0, i32 1) }, 0
  %t1161 = load { i64, ptr }, ptr %l553, !tbaa !27
  %t1162 = extractvalue { i64, ptr } %t1161, 1
  %t1163 = extractvalue { i64, ptr } %t1161, 0
  %t1164 = add i64 %t1160, %t1163
  %t1165 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d47, i32 0, i32 1) }, 1
  %t1166 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d47, i32 0, i32 1) }, 0
  %t1167 = add i64 %t1164, %t1166
  %t1168 = call ptr @__olang_scope_alloc(ptr %s56, i64 %t1167)
  call void @olang_textcopy(ptr %t1168, ptr %t1159, i64 %t1160)
  %t1169 = getelementptr i8, ptr %t1168, i64 %t1160
  call void @olang_textcopy(ptr %t1169, ptr %t1162, i64 %t1163)
  %t1170 = getelementptr i8, ptr %t1169, i64 %t1163
  call void @olang_textcopy(ptr %t1170, ptr %t1165, i64 %t1166)
  %t1171 = insertvalue { i64, ptr } undef, i64 %t1167, 0
  %t1172 = insertvalue { i64, ptr } %t1171, ptr %t1168, 1
  %t1174 = extractvalue { i64, ptr } %t1172, 0
  %t1175 = extractvalue { i64, ptr } %t1172, 1
  %t1176 = mul i64 %t1174, 1
  %t1177 = call ptr @__olang_scope_alloc(ptr %s56, i64 %t1176)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1177, ptr %t1175, i64 %t1176, i1 false)
  %t1178 = insertvalue { i64, ptr } undef, i64 %t1174, 0
  %t1179 = insertvalue { i64, ptr } %t1178, ptr %t1177, 1
  %t1180 = load ptr, ptr %l550, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s56, ptr %t1180, { i64, ptr } %t1179)
  br label %bb342
bb342:
  call void @__olang_scope_close(ptr %s56)
  br label %bb367
bb343:
  %t1182 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t1184 = trunc i64 29 to i32
  %t1185 = icmp eq i32 %t1182, %t1184
  br i1 %t1185, label %bb344, label %bb345
bb344:
  br label %bb346
bb345:
  br label %bb350
bb346:
  store %olang.scope zeroinitializer, ptr %s58
  %t1187 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s58, ptr %t1187, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d48, i32 0, i32 1) })
  br label %bb347
bb347:
  %t1189 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1189, ptr %l559, !tbaa !29
  %t1190 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1190, ptr %l560, !tbaa !29
  %t1191 = load ptr, ptr %l0, !tbaa !29
  %t1192 = load i32, ptr %l2, !tbaa !23
  %t1195 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnyTrait(ptr %v0, ptr %t1191, i32 %t1192)
  store i32 %t1195, ptr %l563
  br label %bb348
bb348:
  %t1196 = load ptr, ptr %l559, !tbaa !29
  %t1197 = load ptr, ptr %l560, !tbaa !29
  %t1198 = load i32, ptr %l563, !tbaa !23
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ecanon(ptr %v0, ptr %v1, ptr %v2, ptr %t1196, ptr %t1197, i32 %t1198)
  br label %bb349
bb349:
  call void @__olang_scope_close(ptr %s58)
  br label %bb367
bb350:
  %t1199 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t1201 = trunc i64 32 to i32
  %t1202 = icmp eq i32 %t1199, %t1201
  br i1 %t1202, label %bb351, label %bb352
bb351:
  br label %bb353
bb352:
  br label %bb358
bb353:
  store %olang.scope zeroinitializer, ptr %s59
  %t1204 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s59, ptr %t1204, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d49, i32 0, i32 1) })
  br label %bb354
bb354:
  %t1206 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1206, ptr %l567, !tbaa !29
  %t1207 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1207, ptr %l568, !tbaa !29
  %t1208 = load ptr, ptr %l0, !tbaa !29
  %t1209 = load i32, ptr %l2, !tbaa !23
  %t1212 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %t1208, i32 %t1209)
  store i32 %t1212, ptr %l571
  br label %bb355
bb355:
  %t1213 = load ptr, ptr %l567, !tbaa !29
  %t1214 = load ptr, ptr %l568, !tbaa !29
  %t1215 = load i32, ptr %l571, !tbaa !23
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ejoined(ptr %v0, ptr %v1, ptr %v2, ptr %t1213, ptr %t1214, i32 %t1215)
  br label %bb356
bb356:
  %t1216 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t1216, i8 125)
  br label %bb357
bb357:
  call void @__olang_scope_close(ptr %s59)
  br label %bb367
bb358:
  %t1218 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t1220 = trunc i64 30 to i32
  %t1221 = icmp eq i32 %t1218, %t1220
  br i1 %t1221, label %bb359, label %bb360
bb359:
  br label %bb361
bb360:
  br label %bb366
bb361:
  %t1223 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t1223, i8 63)
  br label %bb362
bb362:
  %t1225 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1225, ptr %l576, !tbaa !29
  %t1226 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1226, ptr %l577, !tbaa !29
  %t1227 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1227, ptr %l578, !tbaa !29
  %t1228 = load ptr, ptr %l0, !tbaa !29
  %t1229 = load i32, ptr %l2, !tbaa !23
  %t1232 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrSetItems(ptr %v0, ptr %t1228, i32 %t1229)
  store i32 %t1232, ptr %l581
  br label %bb363
bb363:
  %t1233 = load ptr, ptr %l578, !tbaa !29
  %t1234 = load i32, ptr %l581, !tbaa !23
  %t1235 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t1233, i32 %t1234)
  store { i64, ptr } %t1235, ptr %l582
  br label %bb364
bb364:
  %t1236 = load ptr, ptr %l576, !tbaa !29
  %t1237 = load ptr, ptr %l577, !tbaa !29
  %t1238 = load { i64, ptr }, ptr %l582, !tbaa !27
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ecanonErrs(ptr %v0, ptr %v1, ptr %v0, ptr %v2, ptr %t1236, ptr %t1237, { i64, ptr } %t1238)
  br label %bb365
bb365:
  br label %bb367
bb366:
  call void @__olang_check_failed(ptr @olang_loc_bd4ce41e1f7e504b_596b58263987420f)
  unreachable
bb367:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ecanonErrs(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, ptr } %a2) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l14 = alloca i64
  %l17 = alloca i64
  %l35 = alloca ptr
  %l38 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  store ptr %a1, ptr %l1
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
  store %olang.scope zeroinitializer, ptr %s2
  %t33 = load i64, ptr %l7, !tbaa !24
  %t34 = load i64, ptr %l6, !tbaa !24
  %t37 = icmp slt i64 %t33, %t34
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s2)
  br label %bb17
bb9:
  br label %bb10
bb10:
  %t41 = load i64, ptr %l3, !tbaa !24
  %t42 = load i64, ptr %l7, !tbaa !24
  %t43 = load i64, ptr %l5, !tbaa !24
  %t46 = mul i64 %t42, %t43
  %t49 = add i64 %t41, %t46
  store i64 %t49, ptr %l8, !tbaa !24
  %t51 = load ptr, ptr %l1, !tbaa !29
  store ptr %t51, ptr %l35, !tbaa !29
  %t52 = load i64, ptr %l8, !tbaa !24
  %t54 = icmp sgt i64 %t52, 0
  br i1 %t54, label %bb11, label %bb12
bb11:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d50, i32 0, i32 1) }, ptr %l38, !tbaa !27
  br label %bb13
bb12:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d51, i32 0, i32 1) }, ptr %l38, !tbaa !27
  br label %bb13
bb13:
  %t56 = load ptr, ptr %l35, !tbaa !29
  %t57 = load { i64, ptr }, ptr %l38, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s2, ptr %t56, { i64, ptr } %t57)
  br label %bb14
bb14:
  %t59 = load ptr, ptr %l1, !tbaa !29
  %t60 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t60, ptr %l41, !tbaa !27
  %t61 = load i64, ptr %l8, !tbaa !24
  %t63 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !27
  %t65 = getelementptr i32, ptr %t64, i64 %t61
  %t66 = load i32, ptr %t65, !tbaa !33
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ecanon(ptr %v0, ptr %v1, ptr %v3, ptr %a0, ptr %t59, i32 %t66)
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s2)
  br label %bb16
bb16:
  %t70 = load i64, ptr %l7, !tbaa !24
  %t72 = add i64 %t70, 1
  store i64 %t72, ptr %l7, !tbaa !24
  br label %bb7
bb17:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ecanonPromises(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l24 = alloca i64
  %l25 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l27 = alloca i64
  %l28 = alloca { i64, ptr }
  %l34 = alloca i64
  %l37 = alloca i64
  %l56 = alloca i64
  %l66 = alloca { i64, ptr }
  %l67 = alloca { i64, ptr }
  %l69 = alloca i64
  %l71 = alloca i64
  %l72 = alloca { i64, ptr }
  %l77 = alloca { i64, ptr }
  %l85 = alloca { i64, ptr }
  %l93 = alloca { i64, ptr }
  %l94 = alloca { i64, ptr }
  %l96 = alloca i64
  %l98 = alloca i64
  %l99 = alloca { i64, ptr }
  %l104 = alloca { i64, ptr }
  %l111 = alloca i64
  %l114 = alloca i64
  %l139 = alloca { i64, ptr }
  %l140 = alloca { i64, ptr }
  %l142 = alloca i64
  %l144 = alloca i64
  %l145 = alloca { i64, ptr }
  %l164 = alloca ptr
  %l166 = alloca ptr
  %l174 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s15 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l2, !tbaa !23
  %t5 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePromiseWords(ptr %v0, ptr %t1, i32 %t2)
  store i64 %t5, ptr %l24
  br label %bb1
bb1:
  %t6 = load i64, ptr %l24, !tbaa !24
  store i64 %t6, ptr %l3, !tbaa !24
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d52, i32 0, i32 1) }, ptr %l25, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t7, ptr %l26, !tbaa !27
  %t8 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t8, 0
  store i64 %t9, ptr %l27, !tbaa !24
  %t10 = load i64, ptr %l27, !tbaa !24
  %t11 = mul i64 %t10, 1
  %t12 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t11)
  %t13 = insertvalue { i64, ptr } undef, i64 %t10, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr %t12, 1
  store { i64, ptr } %t14, ptr %l28, !tbaa !27
  %t15 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !27
  %t17 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !27
  %t19 = load i64, ptr %l27, !tbaa !24
  %t20 = mul i64 %t19, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t16, ptr %t18, i64 %t20, i1 false)
  %t21 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t21, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t22 = load [8 x { i64, ptr }], ptr @G_2ecompiler_2ftypes_2ePromiseNames
  store i64 8, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t25 = load i64, ptr %l6, !tbaa !24
  %t26 = load i64, ptr %l5, !tbaa !24
  %t29 = icmp sgt i64 %t25, %t26
  br i1 %t29, label %bb2, label %bb3
bb2:
  %t31 = load i64, ptr %l7, !tbaa !24
  %t33 = icmp sgt i64 %t31, 0
  br i1 %t33, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l34, !tbaa !24
  br label %bb7
bb4:
  %t35 = load i64, ptr %l6, !tbaa !24
  %t36 = load i64, ptr %l5, !tbaa !24
  %t39 = sub i64 %t35, %t36
  %t40 = load i64, ptr %l7, !tbaa !24
  %t43 = add i64 %t39, %t40
  %t45 = sub i64 %t43, 1
  %t46 = load i64, ptr %l7, !tbaa !24
  %t49 = sdiv i64 %t45, %t46
  store i64 %t49, ptr %l37, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l37, !tbaa !24
  br label %bb6
bb6:
  %t51 = load i64, ptr %l37, !tbaa !24
  store i64 %t51, ptr %l34, !tbaa !24
  br label %bb7
bb7:
  %t52 = load i64, ptr %l34, !tbaa !24
  store i64 %t52, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t53 = load i64, ptr %l9, !tbaa !24
  %t54 = load i64, ptr %l8, !tbaa !24
  %t57 = icmp slt i64 %t53, %t54
  %t59 = xor i1 %t57, true
  br i1 %t59, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb20
bb10:
  br label %bb11
bb11:
  %t61 = load i64, ptr %l5, !tbaa !24
  %t62 = load i64, ptr %l9, !tbaa !24
  %t63 = load i64, ptr %l7, !tbaa !24
  %t66 = mul i64 %t62, %t63
  %t69 = add i64 %t61, %t66
  store i64 %t69, ptr %l10, !tbaa !24
  %t71 = load i64, ptr %l3, !tbaa !24
  %t72 = load i64, ptr %l10, !tbaa !24
  store i64 %t72, ptr %l56, !tbaa !24
  %t73 = load i64, ptr %l56, !tbaa !24
  %t74 = load i64, ptr %l56, !tbaa !24
  %t75 = shl i64 1, %t74
  %t78 = and i64 %t71, %t75
  %t80 = icmp eq i64 %t78, 0
  br i1 %t80, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s2)
  br label %bb19
bb13:
  br label %bb14
bb14:
  %t82 = load ptr, ptr %l1, !tbaa !29
  %t83 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t84 = load i64, ptr %l10, !tbaa !24
  %t86 = getelementptr [8 x { i64, ptr }], ptr @G_2ecompiler_2ftypes_2ePromiseNames, i64 0, i64 %t84
  %t87 = load { i64, ptr }, ptr %t86, !tbaa !37
  %t89 = extractvalue { i64, ptr } %t83, 1
  %t90 = extractvalue { i64, ptr } %t83, 0
  %t92 = extractvalue { i64, ptr } %t87, 1
  %t93 = extractvalue { i64, ptr } %t87, 0
  %t94 = add i64 %t90, %t93
  %t95 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t94)
  call void @olang_textcopy(ptr %t95, ptr %t89, i64 %t90)
  %t96 = getelementptr i8, ptr %t95, i64 %t90
  call void @olang_textcopy(ptr %t96, ptr %t92, i64 %t93)
  %t97 = insertvalue { i64, ptr } undef, i64 %t94, 0
  %t98 = insertvalue { i64, ptr } %t97, ptr %t95, 1
  %t100 = extractvalue { i64, ptr } %t98, 0
  %t101 = extractvalue { i64, ptr } %t98, 1
  %t102 = mul i64 %t100, 1
  %t103 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t102)
  call void @llvm.memcpy.p0.p0.i64(ptr %t103, ptr %t101, i64 %t102, i1 false)
  %t104 = insertvalue { i64, ptr } undef, i64 %t100, 0
  %t105 = insertvalue { i64, ptr } %t104, ptr %t103, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s2, ptr %t82, { i64, ptr } %t105)
  br label %bb15
bb15:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d53, i32 0, i32 1) }, ptr %l66, !tbaa !27
  %t108 = load { i64, ptr }, ptr %l66, !tbaa !27
  store { i64, ptr } %t108, ptr %l67, !tbaa !27
  %t109 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t110 = extractvalue { i64, ptr } %t109, 0
  %t111 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t112 = extractvalue { i64, ptr } %t111, 0
  store i64 %t112, ptr %l69, !tbaa !24
  %t114 = load i64, ptr %l69, !tbaa !24
  %t115 = icmp eq i64 %t110, %t114
  br i1 %t115, label %bb16, label %bb17
bb16:
  %t117 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t118 = load ptr, ptr %t117, !tbaa !27
  %t119 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !27
  %t121 = load i64, ptr %l69, !tbaa !24
  %t122 = mul i64 %t121, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t118, ptr %t120, i64 %t122, i1 false)
  br label %bb18
bb17:
  %t123 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t124 = extractvalue { i64, ptr } %t123, 0
  store i64 %t124, ptr %l71, !tbaa !24
  %t125 = load i64, ptr %l71, !tbaa !24
  %t126 = mul i64 %t125, 1
  %t127 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t126)
  %t128 = insertvalue { i64, ptr } undef, i64 %t125, 0
  %t129 = insertvalue { i64, ptr } %t128, ptr %t127, 1
  store { i64, ptr } %t129, ptr %l72, !tbaa !27
  %t130 = getelementptr { i64, ptr }, ptr %l72, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !27
  %t132 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t133 = load ptr, ptr %t132, !tbaa !27
  %t134 = load i64, ptr %l71, !tbaa !24
  %t135 = mul i64 %t134, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t131, ptr %t133, i64 %t135, i1 false)
  %t136 = load { i64, ptr }, ptr %l72, !tbaa !27
  store { i64, ptr } %t136, ptr %l4, !tbaa !27
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s2)
  br label %bb19
bb19:
  %t137 = load i64, ptr %l9, !tbaa !24
  %t139 = add i64 %t137, 1
  store i64 %t139, ptr %l9, !tbaa !24
  br label %bb8
bb20:
  store %olang.scope zeroinitializer, ptr %s6
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t142 = load i32, ptr %l2, !tbaa !23
  %t145 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBorrowsOf(ptr %v0, ptr %s6, ptr %t141, i32 %t142)
  store { i64, ptr } %t145, ptr %l77
  br label %bb21
bb21:
  %t146 = load { i64, ptr }, ptr %l77, !tbaa !27
  %t147 = extractvalue { i64, ptr } %t146, 0
  %t148 = extractvalue { i64, ptr } %t146, 1
  %t149 = mul i64 %t147, 8
  %t150 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t149)
  call void @llvm.memcpy.p0.p0.i64(ptr %t150, ptr %t148, i64 %t149, i1 false)
  %t151 = insertvalue { i64, ptr } undef, i64 %t147, 0
  %t152 = insertvalue { i64, ptr } %t151, ptr %t150, 1
  store { i64, ptr } %t152, ptr %l11, !tbaa !27
  store i64 0, ptr %l12, !tbaa !24
  %t154 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t156 = extractvalue { i64, ptr } %t154, 0
  store i64 %t156, ptr %l13, !tbaa !24
  br label %bb22
bb22:
  store %olang.scope zeroinitializer, ptr %s7
  %t158 = load i64, ptr %l12, !tbaa !24
  %t159 = load i64, ptr %l13, !tbaa !24
  %t162 = icmp slt i64 %t158, %t159
  %t164 = xor i1 %t162, true
  br i1 %t164, label %bb23, label %bb24
bb23:
  call void @__olang_scope_close(ptr %s7)
  br label %bb31
bb24:
  br label %bb25
bb25:
  %t166 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t166, ptr %l85, !tbaa !27
  %t167 = load i64, ptr %l12, !tbaa !24
  %t169 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t170 = load ptr, ptr %t169, !tbaa !27
  %t171 = getelementptr i64, ptr %t170, i64 %t167
  %t172 = load i64, ptr %t171, !tbaa !34
  %t174 = load ptr, ptr %l1, !tbaa !29
  %t175 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t178 = extractvalue { i64, ptr } %t175, 1
  %t179 = extractvalue { i64, ptr } %t175, 0
  %t180 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d54, i32 0, i32 1) }, 1
  %t181 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d54, i32 0, i32 1) }, 0
  %t182 = add i64 %t179, %t181
  %t184 = call i64 @__olang_fmt_i64(ptr null, i64 %t172)
  %t185 = add i64 %t182, %t184
  %t186 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t185)
  call void @olang_textcopy(ptr %t186, ptr %t178, i64 %t179)
  %t187 = getelementptr i8, ptr %t186, i64 %t179
  call void @olang_textcopy(ptr %t187, ptr %t180, i64 %t181)
  %t188 = getelementptr i8, ptr %t187, i64 %t181
  %t189 = call i64 @__olang_fmt_i64(ptr %t188, i64 %t172)
  %t190 = insertvalue { i64, ptr } undef, i64 %t185, 0
  %t191 = insertvalue { i64, ptr } %t190, ptr %t186, 1
  %t193 = extractvalue { i64, ptr } %t191, 0
  %t194 = extractvalue { i64, ptr } %t191, 1
  %t195 = mul i64 %t193, 1
  %t196 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t195)
  call void @llvm.memcpy.p0.p0.i64(ptr %t196, ptr %t194, i64 %t195, i1 false)
  %t197 = insertvalue { i64, ptr } undef, i64 %t193, 0
  %t198 = insertvalue { i64, ptr } %t197, ptr %t196, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s7, ptr %t174, { i64, ptr } %t198)
  br label %bb26
bb26:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d55, i32 0, i32 1) }, ptr %l93, !tbaa !27
  %t201 = load { i64, ptr }, ptr %l93, !tbaa !27
  store { i64, ptr } %t201, ptr %l94, !tbaa !27
  %t202 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t203 = extractvalue { i64, ptr } %t202, 0
  %t204 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t205 = extractvalue { i64, ptr } %t204, 0
  store i64 %t205, ptr %l96, !tbaa !24
  %t207 = load i64, ptr %l96, !tbaa !24
  %t208 = icmp eq i64 %t203, %t207
  br i1 %t208, label %bb27, label %bb28
bb27:
  %t210 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t211 = load ptr, ptr %t210, !tbaa !27
  %t212 = getelementptr { i64, ptr }, ptr %l94, i32 0, i32 1
  %t213 = load ptr, ptr %t212, !tbaa !27
  %t214 = load i64, ptr %l96, !tbaa !24
  %t215 = mul i64 %t214, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t211, ptr %t213, i64 %t215, i1 false)
  br label %bb29
bb28:
  %t216 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t217 = extractvalue { i64, ptr } %t216, 0
  store i64 %t217, ptr %l98, !tbaa !24
  %t218 = load i64, ptr %l98, !tbaa !24
  %t219 = mul i64 %t218, 1
  %t220 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t219)
  %t221 = insertvalue { i64, ptr } undef, i64 %t218, 0
  %t222 = insertvalue { i64, ptr } %t221, ptr %t220, 1
  store { i64, ptr } %t222, ptr %l99, !tbaa !27
  %t223 = getelementptr { i64, ptr }, ptr %l99, i32 0, i32 1
  %t224 = load ptr, ptr %t223, !tbaa !27
  %t225 = getelementptr { i64, ptr }, ptr %l94, i32 0, i32 1
  %t226 = load ptr, ptr %t225, !tbaa !27
  %t227 = load i64, ptr %l98, !tbaa !24
  %t228 = mul i64 %t227, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t224, ptr %t226, i64 %t228, i1 false)
  %t229 = load { i64, ptr }, ptr %l99, !tbaa !27
  store { i64, ptr } %t229, ptr %l4, !tbaa !27
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s7)
  br label %bb30
bb30:
  %t230 = load i64, ptr %l12, !tbaa !24
  %t232 = add i64 %t230, 1
  store i64 %t232, ptr %l12, !tbaa !24
  br label %bb22
bb31:
  call void @__olang_scope_close(ptr %s6)
  %t234 = load ptr, ptr %l0, !tbaa !29
  %t235 = load i32, ptr %l2, !tbaa !23
  %t238 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKeepsOf(ptr %v0, ptr %s0, ptr %t234, i32 %t235)
  store { i64, ptr } %t238, ptr %l104
  br label %bb32
bb32:
  %t239 = load { i64, ptr }, ptr %l104, !tbaa !27
  store { i64, ptr } %t239, ptr %l15, !tbaa !27
  store i64 0, ptr %l16, !tbaa !24
  %t240 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t242 = extractvalue { i64, ptr } %t240, 0
  %t244 = sdiv i64 %t242, 3
  store i64 %t244, ptr %l17, !tbaa !24
  store i64 1, ptr %l18, !tbaa !24
  %t246 = load i64, ptr %l17, !tbaa !24
  %t247 = load i64, ptr %l16, !tbaa !24
  %t250 = icmp sgt i64 %t246, %t247
  br i1 %t250, label %bb33, label %bb34
bb33:
  %t252 = load i64, ptr %l18, !tbaa !24
  %t254 = icmp sgt i64 %t252, 0
  br i1 %t254, label %bb35, label %bb36
bb34:
  store i64 0, ptr %l111, !tbaa !24
  br label %bb38
bb35:
  %t256 = load i64, ptr %l17, !tbaa !24
  %t257 = load i64, ptr %l16, !tbaa !24
  %t260 = sub i64 %t256, %t257
  %t261 = load i64, ptr %l18, !tbaa !24
  %t264 = add i64 %t260, %t261
  %t266 = sub i64 %t264, 1
  %t267 = load i64, ptr %l18, !tbaa !24
  %t270 = sdiv i64 %t266, %t267
  store i64 %t270, ptr %l114, !tbaa !24
  br label %bb37
bb36:
  store i64 0, ptr %l114, !tbaa !24
  br label %bb37
bb37:
  %t272 = load i64, ptr %l114, !tbaa !24
  store i64 %t272, ptr %l111, !tbaa !24
  br label %bb38
bb38:
  %t273 = load i64, ptr %l111, !tbaa !24
  store i64 %t273, ptr %l19, !tbaa !24
  store i64 0, ptr %l20, !tbaa !24
  br label %bb39
bb39:
  store %olang.scope zeroinitializer, ptr %s11
  %t274 = load i64, ptr %l20, !tbaa !24
  %t275 = load i64, ptr %l19, !tbaa !24
  %t278 = icmp slt i64 %t274, %t275
  %t280 = xor i1 %t278, true
  br i1 %t280, label %bb40, label %bb41
bb40:
  call void @__olang_scope_close(ptr %s11)
  br label %bb57
bb41:
  br label %bb42
bb42:
  %t282 = load i64, ptr %l16, !tbaa !24
  %t283 = load i64, ptr %l20, !tbaa !24
  %t284 = load i64, ptr %l18, !tbaa !24
  %t287 = mul i64 %t283, %t284
  %t290 = add i64 %t282, %t287
  store i64 %t290, ptr %l21, !tbaa !24
  %t292 = load ptr, ptr %l1, !tbaa !29
  %t293 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t294 = load i64, ptr %l21, !tbaa !24
  %t296 = mul i64 3, %t294
  %t298 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t299 = load ptr, ptr %t298, !tbaa !27
  %t300 = getelementptr i64, ptr %t299, i64 %t296
  %t301 = load i64, ptr %t300, !tbaa !34
  %t303 = extractvalue { i64, ptr } %t293, 1
  %t304 = extractvalue { i64, ptr } %t293, 0
  %t305 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d56, i32 0, i32 1) }, 1
  %t306 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d56, i32 0, i32 1) }, 0
  %t307 = add i64 %t304, %t306
  %t309 = call i64 @__olang_fmt_i64(ptr null, i64 %t301)
  %t310 = add i64 %t307, %t309
  %t311 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t310)
  call void @olang_textcopy(ptr %t311, ptr %t303, i64 %t304)
  %t312 = getelementptr i8, ptr %t311, i64 %t304
  call void @olang_textcopy(ptr %t312, ptr %t305, i64 %t306)
  %t313 = getelementptr i8, ptr %t312, i64 %t306
  %t314 = call i64 @__olang_fmt_i64(ptr %t313, i64 %t301)
  %t315 = insertvalue { i64, ptr } undef, i64 %t310, 0
  %t316 = insertvalue { i64, ptr } %t315, ptr %t311, 1
  %t318 = extractvalue { i64, ptr } %t316, 0
  %t319 = extractvalue { i64, ptr } %t316, 1
  %t320 = mul i64 %t318, 1
  %t321 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t320)
  call void @llvm.memcpy.p0.p0.i64(ptr %t321, ptr %t319, i64 %t320, i1 false)
  %t322 = insertvalue { i64, ptr } undef, i64 %t318, 0
  %t323 = insertvalue { i64, ptr } %t322, ptr %t321, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s11, ptr %t292, { i64, ptr } %t323)
  br label %bb43
bb43:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d57, i32 0, i32 1) }, ptr %l139, !tbaa !27
  %t326 = load { i64, ptr }, ptr %l139, !tbaa !27
  store { i64, ptr } %t326, ptr %l140, !tbaa !27
  %t327 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t328 = extractvalue { i64, ptr } %t327, 0
  %t329 = load { i64, ptr }, ptr %l140, !tbaa !27
  %t330 = extractvalue { i64, ptr } %t329, 0
  store i64 %t330, ptr %l142, !tbaa !24
  %t332 = load i64, ptr %l142, !tbaa !24
  %t333 = icmp eq i64 %t328, %t332
  br i1 %t333, label %bb44, label %bb45
bb44:
  %t335 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t336 = load ptr, ptr %t335, !tbaa !27
  %t337 = getelementptr { i64, ptr }, ptr %l140, i32 0, i32 1
  %t338 = load ptr, ptr %t337, !tbaa !27
  %t339 = load i64, ptr %l142, !tbaa !24
  %t340 = mul i64 %t339, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t336, ptr %t338, i64 %t340, i1 false)
  br label %bb46
bb45:
  %t341 = load { i64, ptr }, ptr %l140, !tbaa !27
  %t342 = extractvalue { i64, ptr } %t341, 0
  store i64 %t342, ptr %l144, !tbaa !24
  %t343 = load i64, ptr %l144, !tbaa !24
  %t344 = mul i64 %t343, 1
  %t345 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t344)
  %t346 = insertvalue { i64, ptr } undef, i64 %t343, 0
  %t347 = insertvalue { i64, ptr } %t346, ptr %t345, 1
  store { i64, ptr } %t347, ptr %l145, !tbaa !27
  %t348 = getelementptr { i64, ptr }, ptr %l145, i32 0, i32 1
  %t349 = load ptr, ptr %t348, !tbaa !27
  %t350 = getelementptr { i64, ptr }, ptr %l140, i32 0, i32 1
  %t351 = load ptr, ptr %t350, !tbaa !27
  %t352 = load i64, ptr %l144, !tbaa !24
  %t353 = mul i64 %t352, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t349, ptr %t351, i64 %t353, i1 false)
  %t354 = load { i64, ptr }, ptr %l145, !tbaa !27
  store { i64, ptr } %t354, ptr %l4, !tbaa !27
  br label %bb46
bb46:
  %t355 = load i64, ptr %l21, !tbaa !24
  %t357 = mul i64 3, %t355
  %t359 = add i64 %t357, 1
  %t361 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t362 = load ptr, ptr %t361, !tbaa !27
  %t363 = getelementptr i64, ptr %t362, i64 %t359
  %t364 = load i64, ptr %t363, !tbaa !34
  %t365 = load i64, ptr @G_2ecompiler_2ftypes_2eKeepsHome, !tbaa !24
  %t368 = icmp eq i64 %t364, %t365
  br i1 %t368, label %bb47, label %bb48
bb47:
  call void @__olang_scope_close(ptr %s11)
  br label %bb56
bb48:
  br label %bb49
bb49:
  %t370 = load ptr, ptr %l1, !tbaa !29
  %t371 = load i64, ptr %l21, !tbaa !24
  %t373 = mul i64 3, %t371
  %t375 = add i64 %t373, 1
  %t377 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t378 = load ptr, ptr %t377, !tbaa !27
  %t379 = getelementptr i64, ptr %t378, i64 %t375
  %t380 = load i64, ptr %t379, !tbaa !34
  %t381 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d58, i32 0, i32 1) }, 1
  %t382 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d58, i32 0, i32 1) }, 0
  %t384 = call i64 @__olang_fmt_i64(ptr null, i64 %t380)
  %t385 = add i64 %t382, %t384
  %t386 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t385)
  call void @olang_textcopy(ptr %t386, ptr %t381, i64 %t382)
  %t387 = getelementptr i8, ptr %t386, i64 %t382
  %t388 = call i64 @__olang_fmt_i64(ptr %t387, i64 %t380)
  %t389 = insertvalue { i64, ptr } undef, i64 %t385, 0
  %t390 = insertvalue { i64, ptr } %t389, ptr %t386, 1
  %t392 = extractvalue { i64, ptr } %t390, 0
  %t393 = extractvalue { i64, ptr } %t390, 1
  %t394 = mul i64 %t392, 1
  %t395 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t394)
  call void @llvm.memcpy.p0.p0.i64(ptr %t395, ptr %t393, i64 %t394, i1 false)
  %t396 = insertvalue { i64, ptr } undef, i64 %t392, 0
  %t397 = insertvalue { i64, ptr } %t396, ptr %t395, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s11, ptr %t370, { i64, ptr } %t397)
  br label %bb50
bb50:
  %t400 = load i64, ptr %l21, !tbaa !24
  %t402 = mul i64 3, %t400
  %t404 = add i64 %t402, 2
  %t406 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t407 = load ptr, ptr %t406, !tbaa !27
  %t408 = getelementptr i64, ptr %t407, i64 %t404
  %t409 = load i64, ptr %t408, !tbaa !34
  %t411 = icmp ne i64 %t409, 0
  br i1 %t411, label %bb51, label %bb52
bb51:
  store %olang.scope zeroinitializer, ptr %s15
  %t413 = load ptr, ptr %l1, !tbaa !29
  store ptr %t413, ptr %l164, !tbaa !29
  %t414 = load ptr, ptr %l0, !tbaa !29
  %t416 = getelementptr %"compiler/types:Table", ptr %t414, i32 0, i32 0
  %t417 = load ptr, ptr %t416, !tbaa !29
  store ptr %t417, ptr %l166, !tbaa !29
  %t418 = load i64, ptr %l21, !tbaa !24
  %t420 = mul i64 3, %t418
  %t422 = add i64 %t420, 2
  %t424 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t425 = load ptr, ptr %t424, !tbaa !27
  %t426 = getelementptr i64, ptr %t425, i64 %t422
  %t427 = load i64, ptr %t426, !tbaa !34
  %t429 = trunc i64 %t427 to i32
  %t431 = load ptr, ptr %l166, !tbaa !29
  %t432 = call ptr @__olang_scope_or(ptr %v2, ptr %t431)
  %t433 = ptrtoint ptr %t432 to i64
  %t435 = inttoptr i64 %t433 to ptr
  %t436 = load ptr, ptr %l166, !tbaa !29
  %t438 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %t435, ptr %s15, ptr %t436, i32 %t429)
  store { i64, ptr } %t438, ptr %l174
  br label %bb53
bb52:
  br label %bb55
bb53:
  %t439 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d59, i32 0, i32 1) }, 1
  %t440 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d59, i32 0, i32 1) }, 0
  %t441 = load { i64, ptr }, ptr %l174, !tbaa !27
  %t442 = extractvalue { i64, ptr } %t441, 1
  %t443 = extractvalue { i64, ptr } %t441, 0
  %t444 = add i64 %t440, %t443
  %t445 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t444)
  call void @olang_textcopy(ptr %t445, ptr %t439, i64 %t440)
  %t446 = getelementptr i8, ptr %t445, i64 %t440
  call void @olang_textcopy(ptr %t446, ptr %t442, i64 %t443)
  %t447 = insertvalue { i64, ptr } undef, i64 %t444, 0
  %t448 = insertvalue { i64, ptr } %t447, ptr %t445, 1
  %t450 = extractvalue { i64, ptr } %t448, 0
  %t451 = extractvalue { i64, ptr } %t448, 1
  %t452 = mul i64 %t450, 1
  %t453 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t452)
  call void @llvm.memcpy.p0.p0.i64(ptr %t453, ptr %t451, i64 %t452, i1 false)
  %t454 = insertvalue { i64, ptr } undef, i64 %t450, 0
  %t455 = insertvalue { i64, ptr } %t454, ptr %t453, 1
  %t456 = load ptr, ptr %l164, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s15, ptr %t456, { i64, ptr } %t455)
  br label %bb54
bb54:
  call void @__olang_scope_close(ptr %s15)
  br label %bb55
bb55:
  call void @__olang_scope_close(ptr %s11)
  br label %bb56
bb56:
  %t458 = load i64, ptr %l20, !tbaa !24
  %t460 = add i64 %t458, 1
  store i64 %t460, ptr %l20, !tbaa !24
  br label %bb39
bb57:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2edestructs(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca %"compiler/types:body"
  %l6 = alloca %"compiler/types:body"
  %l9 = alloca i1
  %l12 = alloca i64
  %l14 = alloca i1
  %l16 = alloca ptr
  %l19 = alloca i32
  %l21 = alloca i1
  %l27 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call %"compiler/types:body" @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ebodyOf(ptr %v0, ptr %t1, i32 %t2)
  store %"compiler/types:body" %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load %"compiler/types:body", ptr %l6
  store %"compiler/types:body" %t6, ptr %l3
  %t7 = getelementptr %"compiler/types:body", ptr %l3, i32 0, i32 3
  %t8 = load i1, ptr %t7, !tbaa !21
  %t10 = xor i1 %t8, true
  br i1 %t10, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb5
bb3:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/types:Table", ptr %t12, i32 0, i32 42
  %t16 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eLen_3cI64_2c_20Bool_3e(ptr %v0, ptr %t14)
  store i64 %t16, ptr %l12
  br label %bb4
bb4:
  %t17 = load i64, ptr %l12, !tbaa !24
  %t18 = icmp eq i64 %t17, 0
  store i1 %t18, ptr %l9, !tbaa !21
  br label %bb5
bb5:
  %t20 = load i1, ptr %l9, !tbaa !21
  br i1 %t20, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l14, !tbaa !21
  br label %bb10
bb7:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/types:Table", ptr %t21, i32 0, i32 42
  store ptr %t23, ptr %l16, !tbaa !29
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load i32, ptr %l1, !tbaa !23
  %t28 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t24, i32 %t25)
  store i32 %t28, ptr %l19
  br label %bb8
bb8:
  %t29 = load i32, ptr %l19, !tbaa !23
  %t30 = sext i32 %t29 to i64
  %t31 = load ptr, ptr %l16, !tbaa !29
  %t33 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t31, i64 %t30)
  store i1 %t33, ptr %l21
  br label %bb9
bb9:
  %t34 = load i1, ptr %l21, !tbaa !21
  %t35 = xor i1 %t34, true
  store i1 %t35, ptr %l14, !tbaa !21
  br label %bb10
bb10:
  %t37 = load i1, ptr %l14, !tbaa !21
  br i1 %t37, label %bb11, label %bb12
bb11:
  %t38 = getelementptr %"compiler/types:body", ptr %l3, i32 0, i32 3
  %t39 = load i1, ptr %t38, !tbaa !21
  store i1 %t39, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load i32, ptr %l1, !tbaa !23
  %t47 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eholdsDropping(ptr %v0, ptr %t41, i32 %t42, i64 %a2)
  store i1 %t47, ptr %l27
  br label %bb14
bb14:
  %t48 = load i1, ptr %l27, !tbaa !21
  store i1 %t48, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eholdsDropping(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca ptr
  %l11 = alloca i32
  %l12 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l24 = alloca i1
  %l27 = alloca i1
  %l32 = alloca i1
  %l36 = alloca i32
  %l39 = alloca i32
  %l42 = alloca i1
  %l43 = alloca ptr
  %l46 = alloca i32
  %l49 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l8, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t6 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t2, i32 %a1)
  store i32 %t6, ptr %l11
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l8, !tbaa !29
  %t8 = load i32, ptr %l11, !tbaa !23
  %t9 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t7, i32 %t8)
  store { i64, ptr } %t9, ptr %l12
  br label %bb2
bb2:
  %t10 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t10, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t11 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t11, 0
  store i64 %t13, ptr %l5, !tbaa !24
  br label %bb3
bb3:
  %t15 = load i64, ptr %l4, !tbaa !24
  %t16 = load i64, ptr %l5, !tbaa !24
  %t19 = icmp slt i64 %t15, %t16
  %t21 = xor i1 %t19, true
  br i1 %t21, label %bb4, label %bb5
bb4:
  br label %bb29
bb5:
  br label %bb6
bb6:
  %t23 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t23, ptr %l19, !tbaa !27
  %t24 = load i64, ptr %l4, !tbaa !24
  %t26 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = getelementptr i32, ptr %t27, i64 %t24
  %t29 = load i32, ptr %t28, !tbaa !33
  store i32 %t29, ptr %l6, !tbaa !23
  %t31 = load i32, ptr %l6, !tbaa !23
  %t33 = icmp eq i32 %t31, 0
  br i1 %t33, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb10
bb8:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load i32, ptr %l6, !tbaa !23
  %t39 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t35, i32 %t36)
  store i1 %t39, ptr %l27
  br label %bb9
bb9:
  %t40 = load i1, ptr %l27, !tbaa !21
  store i1 %t40, ptr %l24, !tbaa !21
  br label %bb10
bb10:
  %t41 = load i1, ptr %l24, !tbaa !21
  br i1 %t41, label %bb11, label %bb12
bb11:
  br label %bb28
bb12:
  br label %bb13
bb13:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load i32, ptr %l6, !tbaa !23
  %t44 = load i64, ptr %l2, !tbaa !24
  %t46 = add i64 %t44, 1
  %t50 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eneedsDrop(ptr %v0, ptr %t42, i32 %t43, i64 %t46)
  store i1 %t50, ptr %l32
  br label %bb14
bb14:
  %t51 = load i1, ptr %l32, !tbaa !21
  br i1 %t51, label %bb15, label %bb16
bb15:
  store i1 true, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load i32, ptr %l6, !tbaa !23
  %t57 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t53, i32 %t54)
  store i32 %t57, ptr %l36
  br label %bb18
bb18:
  %t58 = load i32, ptr %l36, !tbaa !23
  store i32 %t58, ptr %l7, !tbaa !23
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t60 = load i32, ptr %l7, !tbaa !23
  %t63 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t59, i32 %t60)
  store i32 %t63, ptr %l39
  br label %bb19
bb19:
  %t64 = load i32, ptr %l39, !range !{i32 0, i32 33}
  %t66 = trunc i64 19 to i32
  %t67 = icmp eq i32 %t64, %t66
  br i1 %t67, label %bb20, label %bb21
bb20:
  %t69 = load ptr, ptr %l0, !tbaa !29
  store ptr %t69, ptr %l43, !tbaa !29
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load i32, ptr %l7, !tbaa !23
  %t74 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t70, i32 %t71)
  store i32 %t74, ptr %l46
  br label %bb22
bb21:
  store i1 false, ptr %l42, !tbaa !21
  br label %bb24
bb22:
  %t75 = load i64, ptr %l2, !tbaa !24
  %t77 = add i64 %t75, 2
  %t78 = load ptr, ptr %l43, !tbaa !29
  %t79 = load i32, ptr %l46, !tbaa !23
  %t81 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eneedsDrop(ptr %v0, ptr %t78, i32 %t79, i64 %t77)
  store i1 %t81, ptr %l49
  br label %bb23
bb23:
  %t82 = load i1, ptr %l49, !tbaa !21
  store i1 %t82, ptr %l42, !tbaa !21
  br label %bb24
bb24:
  %t83 = load i1, ptr %l42, !tbaa !21
  br i1 %t83, label %bb25, label %bb26
bb25:
  store i1 true, ptr %rv
  br label %ret
bb26:
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t85 = load i64, ptr %l4, !tbaa !24
  %t87 = add i64 %t85, 1
  store i64 %t87, ptr %l4, !tbaa !24
  br label %bb3
bb29:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i8 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eholdsState(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l5 = alloca i64
  %l8 = alloca i64
  %l10 = alloca i8
  %l14 = alloca i8
  %rv = alloca i8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t3 = sext i32 %a1 to i64
  store i64 %t3, ptr %l2, !tbaa !24
  %t5 = load i64, ptr %l2, !tbaa !24
  store i64 %t5, ptr %l5, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/types:Table", ptr %t6, i32 0, i32 34
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eLen_3cU8_3e(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l8
  br label %bb1
bb1:
  %t11 = load i64, ptr %l5, !tbaa !24
  %t12 = load i64, ptr %l8, !tbaa !24
  %t13 = icmp slt i64 %t11, %t12
  br i1 %t13, label %bb2, label %bb3
bb2:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/types:Table", ptr %t15, i32 0, i32 34
  %t18 = load i64, ptr %l2, !tbaa !24
  %t21 = call i8 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eAt_3cU8_3e(ptr %v0, ptr %t17, i64 %t18)
  store i8 %t21, ptr %l14
  br label %bb4
bb3:
  store i8 0, ptr %l10, !tbaa !22
  br label %bb5
bb4:
  %t22 = load i8, ptr %l14, !tbaa !22
  store i8 %t22, ptr %l10, !tbaa !22
  br label %bb5
bb5:
  %t23 = load i8, ptr %l10, !tbaa !22
  store i8 %t23, ptr %rv
  br label %ret
ret:
  %rr = load i8, ptr %rv
  ret i8 %rr
}

define dso_local void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ejoined(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l12 = alloca { i64, ptr }
  %l18 = alloca i64
  %l21 = alloca i64
  %l44 = alloca { i64, ptr }
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t1, i32 %a2)
  store { i64, ptr } %t5, ptr %l12
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t6, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t7 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  store i64 %t9, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t11 = load i64, ptr %l5, !tbaa !24
  %t12 = load i64, ptr %l4, !tbaa !24
  %t15 = icmp sgt i64 %t11, %t12
  br i1 %t15, label %bb2, label %bb3
bb2:
  %t17 = load i64, ptr %l6, !tbaa !24
  %t19 = icmp sgt i64 %t17, 0
  br i1 %t19, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb7
bb4:
  %t21 = load i64, ptr %l5, !tbaa !24
  %t22 = load i64, ptr %l4, !tbaa !24
  %t25 = sub i64 %t21, %t22
  %t26 = load i64, ptr %l6, !tbaa !24
  %t29 = add i64 %t25, %t26
  %t31 = sub i64 %t29, 1
  %t32 = load i64, ptr %l6, !tbaa !24
  %t35 = sdiv i64 %t31, %t32
  store i64 %t35, ptr %l21, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb6
bb6:
  %t37 = load i64, ptr %l21, !tbaa !24
  store i64 %t37, ptr %l18, !tbaa !24
  br label %bb7
bb7:
  %t38 = load i64, ptr %l18, !tbaa !24
  store i64 %t38, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb8
bb8:
  %t39 = load i64, ptr %l8, !tbaa !24
  %t40 = load i64, ptr %l7, !tbaa !24
  %t43 = icmp slt i64 %t39, %t40
  %t45 = xor i1 %t43, true
  br i1 %t45, label %bb9, label %bb10
bb9:
  br label %bb18
bb10:
  br label %bb11
bb11:
  %t47 = load i64, ptr %l4, !tbaa !24
  %t48 = load i64, ptr %l8, !tbaa !24
  %t49 = load i64, ptr %l6, !tbaa !24
  %t52 = mul i64 %t48, %t49
  %t55 = add i64 %t47, %t52
  store i64 %t55, ptr %l9, !tbaa !24
  %t57 = load i64, ptr %l9, !tbaa !24
  %t59 = icmp sgt i64 %t57, 0
  br i1 %t59, label %bb12, label %bb13
bb12:
  store %olang.scope zeroinitializer, ptr %s3
  %t61 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s3, ptr %t61, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d60, i32 0, i32 1) })
  br label %bb14
bb13:
  br label %bb15
bb14:
  call void @__olang_scope_close(ptr %s3)
  br label %bb15
bb15:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t64 = load ptr, ptr %l1, !tbaa !29
  %t65 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t65, ptr %l44, !tbaa !27
  %t66 = load i64, ptr %l9, !tbaa !24
  %t68 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !27
  %t70 = getelementptr i32, ptr %t69, i64 %t66
  %t71 = load i32, ptr %t70, !tbaa !33
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ecanon(ptr %v0, ptr %v1, ptr %v2, ptr %t63, ptr %t64, i32 %t71)
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t75 = load i64, ptr %l8, !tbaa !24
  %t77 = add i64 %t75, 1
  store i64 %t77, ptr %l8, !tbaa !24
  br label %bb8
bb18:
  br label %ret
ret:
  ret void
}

define dso_local { i64, i64 } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2elayEnum(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i32
  %l8 = alloca i64
  %l11 = alloca i1
  %l16 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l28 = alloca i1
  %l31 = alloca i64
  %l36 = alloca i64
  %rv = alloca { i64, i64 }
  store ptr %a0, ptr %l0
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l2, !tbaa !23
  %t5 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasPayload(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l11
  br label %bb1
bb1:
  %t6 = load i1, ptr %l11, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = insertvalue { i64, i64 } undef, i64 4, 0
  %t10 = insertvalue { i64, i64 } %t9, i64 4, 1
  store { i64, i64 } %t10, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  store i64 0, ptr %l3, !tbaa !24
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load i32, ptr %l2, !tbaa !23
  %t16 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t12, i32 %t13)
  store { i64, ptr } %t16, ptr %l16
  br label %bb5
bb5:
  %t17 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t17, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t18 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t20 = extractvalue { i64, ptr } %t18, 0
  store i64 %t20, ptr %l6, !tbaa !24
  br label %bb6
bb6:
  %t22 = load i64, ptr %l5, !tbaa !24
  %t23 = load i64, ptr %l6, !tbaa !24
  %t26 = icmp slt i64 %t22, %t23
  %t28 = xor i1 %t26, true
  br i1 %t28, label %bb7, label %bb8
bb7:
  br label %bb19
bb8:
  br label %bb9
bb9:
  %t30 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t30, ptr %l23, !tbaa !27
  %t31 = load i64, ptr %l5, !tbaa !24
  %t33 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !27
  %t35 = getelementptr i32, ptr %t34, i64 %t31
  %t36 = load i32, ptr %t35, !tbaa !33
  store i32 %t36, ptr %l7, !tbaa !23
  %t38 = load i32, ptr %l7, !tbaa !23
  %t40 = icmp ne i32 %t38, 0
  br i1 %t40, label %bb10, label %bb11
bb10:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load i32, ptr %l7, !tbaa !23
  %t46 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSize(ptr %v0, ptr %t42, i32 %t43)
  store i64 %t46, ptr %l31
  br label %bb12
bb11:
  store i1 false, ptr %l28, !tbaa !21
  br label %bb13
bb12:
  %t47 = load i64, ptr %l3, !tbaa !24
  %t48 = load i64, ptr %l31, !tbaa !24
  %t50 = icmp sgt i64 %t48, %t47
  store i1 %t50, ptr %l28, !tbaa !21
  br label %bb13
bb13:
  %t52 = load i1, ptr %l28, !tbaa !21
  br i1 %t52, label %bb14, label %bb15
bb14:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load i32, ptr %l7, !tbaa !23
  %t57 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSize(ptr %v0, ptr %t53, i32 %t54)
  store i64 %t57, ptr %l36
  br label %bb16
bb15:
  br label %bb17
bb16:
  %t58 = load i64, ptr %l36, !tbaa !24
  store i64 %t58, ptr %l3, !tbaa !24
  br label %bb17
bb17:
  br label %bb18
bb18:
  %t59 = load i64, ptr %l5, !tbaa !24
  %t61 = add i64 %t59, 1
  store i64 %t61, ptr %l5, !tbaa !24
  br label %bb6
bb19:
  %t63 = load i64, ptr %l3, !tbaa !24
  %t65 = add i64 %t63, 7
  %t67 = sdiv i64 %t65, 8
  %t69 = mul i64 %t67, 8
  store i64 %t69, ptr %l8, !tbaa !24
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/types:Table", ptr %t71, i32 0, i32 25
  %t76 = sext i32 %a1 to i64
  %t77 = load i64, ptr %l8, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t73, i64 %t76, i64 %t77)
  br label %bb20
bb20:
  %t81 = load i64, ptr %l8, !tbaa !24
  %t83 = add i64 8, %t81
  %t85 = insertvalue { i64, i64 } undef, i64 %t83, 0
  %t86 = insertvalue { i64, i64 } %t85, i64 8, 1
  store { i64, i64 } %t86, ptr %rv
  br label %ret
ret:
  %rr = load { i64, i64 }, ptr %rv
  ret { i64, i64 } %rr
}

define dso_local { i64, i64 } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2elayFields(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i32
  %l9 = alloca i64
  %l11 = alloca ptr
  %l13 = alloca i64
  %l16 = alloca i64
  %l19 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l31 = alloca i64
  %l47 = alloca i64
  %l50 = alloca i64
  %rv = alloca { i64, i64 }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/types:Table", ptr %t1, i32 0, i32 23
  store ptr %t3, ptr %l11, !tbaa !29
  %t6 = sext i32 %a1 to i64
  store i64 %t6, ptr %l13, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/types:Table", ptr %t7, i32 0, i32 24
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t9)
  store i64 %t11, ptr %l16
  br label %bb1
bb1:
  %t12 = load ptr, ptr %l11, !tbaa !29
  %t13 = load i64, ptr %l13, !tbaa !24
  %t14 = load i64, ptr %l16, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t12, i64 %t13, i64 %t14)
  br label %bb2
bb2:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t19 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t15, i32 %a2)
  store { i64, ptr } %t19, ptr %l19
  br label %bb3
bb3:
  %t20 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t20, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t21 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t21, 0
  store i64 %t23, ptr %l7, !tbaa !24
  br label %bb4
bb4:
  %t25 = load i64, ptr %l6, !tbaa !24
  %t26 = load i64, ptr %l7, !tbaa !24
  %t29 = icmp slt i64 %t25, %t26
  %t31 = xor i1 %t29, true
  br i1 %t31, label %bb5, label %bb6
bb5:
  br label %bb15
bb6:
  br label %bb7
bb7:
  %t33 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t33, ptr %l26, !tbaa !27
  %t34 = load i64, ptr %l6, !tbaa !24
  %t36 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !27
  %t38 = getelementptr i32, ptr %t37, i64 %t34
  %t39 = load i32, ptr %t38, !tbaa !33
  store i32 %t39, ptr %l8, !tbaa !23
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load i32, ptr %l8, !tbaa !23
  %t45 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAlign(ptr %v0, ptr %t41, i32 %t42)
  store i64 %t45, ptr %l31
  br label %bb8
bb8:
  %t46 = load i64, ptr %l31, !tbaa !24
  store i64 %t46, ptr %l9, !tbaa !24
  %t47 = load i64, ptr %l9, !tbaa !24
  %t48 = load i64, ptr %l4, !tbaa !24
  %t51 = icmp sgt i64 %t47, %t48
  br i1 %t51, label %bb9, label %bb10
bb9:
  %t53 = load i64, ptr %l9, !tbaa !24
  store i64 %t53, ptr %l4, !tbaa !24
  br label %bb11
bb10:
  br label %bb11
bb11:
  %t55 = load i64, ptr %l3, !tbaa !24
  %t56 = load i64, ptr %l9, !tbaa !24
  %t59 = add i64 %t55, %t56
  %t61 = sub i64 %t59, 1
  %t62 = load i64, ptr %l9, !tbaa !24
  %t65 = sdiv i64 %t61, %t62
  %t66 = load i64, ptr %l9, !tbaa !24
  %t69 = mul i64 %t65, %t66
  store i64 %t69, ptr %l3, !tbaa !24
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/types:Table", ptr %t71, i32 0, i32 24
  %t74 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t73, i64 %t74)
  br label %bb12
bb12:
  %t77 = load i64, ptr %l3, !tbaa !24
  store i64 %t77, ptr %l47, !tbaa !24
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t79 = load i32, ptr %l8, !tbaa !23
  %t82 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSize(ptr %v0, ptr %t78, i32 %t79)
  store i64 %t82, ptr %l50
  br label %bb13
bb13:
  %t83 = load i64, ptr %l47, !tbaa !24
  %t84 = load i64, ptr %l50, !tbaa !24
  %t85 = add i64 %t83, %t84
  store i64 %t85, ptr %l3, !tbaa !24
  br label %bb14
bb14:
  %t87 = load i64, ptr %l6, !tbaa !24
  %t89 = add i64 %t87, 1
  store i64 %t89, ptr %l6, !tbaa !24
  br label %bb4
bb15:
  %t91 = load i64, ptr %l3, !tbaa !24
  %t92 = load i64, ptr %l4, !tbaa !24
  %t95 = add i64 %t91, %t92
  %t97 = sub i64 %t95, 1
  %t98 = load i64, ptr %l4, !tbaa !24
  %t101 = sdiv i64 %t97, %t98
  %t102 = load i64, ptr %l4, !tbaa !24
  %t105 = mul i64 %t101, %t102
  %t106 = load i64, ptr %l4, !tbaa !24
  %t108 = insertvalue { i64, i64 } undef, i64 %t105, 0
  %t110 = insertvalue { i64, i64 } %t108, i64 %t106, 1
  store { i64, i64 } %t110, ptr %rv
  br label %ret
ret:
  %rr = load { i64, i64 }, ptr %rv
  ret { i64, i64 } %rr
}

define dso_local i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2enamedPackedBits(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i32
  %l12 = alloca i1
  %l15 = alloca ptr
  %l18 = alloca i32
  %l19 = alloca i32
  %l24 = alloca i1
  %l27 = alloca ptr
  %l30 = alloca i32
  %l31 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l43 = alloca i64
  %l55 = alloca ptr
  %l58 = alloca i32
  %l59 = alloca i1
  %l63 = alloca i32
  %l67 = alloca ptr
  %l70 = alloca i32
  %l71 = alloca i64
  %l72 = alloca ptr
  %l75 = alloca i32
  %l76 = alloca { i64, ptr }
  %l78 = alloca i64
  %s8 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l12
  br label %bb1
bb1:
  %t6 = load i1, ptr %l12, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i64 -1, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l15, !tbaa !29
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i32, ptr %l1, !tbaa !23
  %t15 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t11, i32 %t12)
  store i32 %t15, ptr %l18
  br label %bb5
bb5:
  %t16 = load ptr, ptr %l15, !tbaa !29
  %t17 = load i32, ptr %l18, !tbaa !23
  %t18 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t16, i32 %t17)
  store i32 %t18, ptr %l19
  br label %bb6
bb6:
  %t19 = load i32, ptr %l19, !range !{i32 0, i32 6}
  store i32 %t19, ptr %l2
  %t20 = load i32, ptr %l2, !range !{i32 0, i32 6}
  %t22 = trunc i64 0 to i32
  %t23 = icmp eq i32 %t20, %t22
  br i1 %t23, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb26
bb9:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load i32, ptr %l1, !tbaa !23
  %t29 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePacked(ptr %v0, ptr %t25, i32 %t26)
  store i1 %t29, ptr %l24
  br label %bb10
bb10:
  %t30 = load i1, ptr %l24, !tbaa !21
  %t31 = xor i1 %t30, true
  br i1 %t31, label %bb11, label %bb12
bb11:
  store i64 -1, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  store i64 0, ptr %l3, !tbaa !24
  %t34 = load ptr, ptr %l0, !tbaa !29
  store ptr %t34, ptr %l27, !tbaa !29
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load i32, ptr %l1, !tbaa !23
  %t39 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t35, i32 %t36)
  store i32 %t39, ptr %l30
  br label %bb14
bb14:
  %t40 = load ptr, ptr %l27, !tbaa !29
  %t41 = load i32, ptr %l30, !tbaa !23
  %t42 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t40, i32 %t41)
  store { i64, ptr } %t42, ptr %l31
  br label %bb15
bb15:
  %t43 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t43, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t44 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t46 = extractvalue { i64, ptr } %t44, 0
  store i64 %t46, ptr %l6, !tbaa !24
  br label %bb16
bb16:
  %t48 = load i64, ptr %l5, !tbaa !24
  %t49 = load i64, ptr %l6, !tbaa !24
  %t52 = icmp slt i64 %t48, %t49
  %t54 = xor i1 %t52, true
  br i1 %t54, label %bb17, label %bb18
bb17:
  br label %bb25
bb18:
  br label %bb19
bb19:
  %t56 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t56, ptr %l38, !tbaa !27
  %t57 = load i64, ptr %l5, !tbaa !24
  %t59 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !27
  %t61 = getelementptr i32, ptr %t60, i64 %t57
  %t62 = load i32, ptr %t61, !tbaa !33
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t68 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePackedBits(ptr %v0, ptr %t64, i32 %t62)
  store i64 %t68, ptr %l43
  br label %bb20
bb20:
  %t69 = load i64, ptr %l43, !tbaa !24
  store i64 %t69, ptr %l8, !tbaa !24
  %t70 = load i64, ptr %l8, !tbaa !24
  %t72 = icmp slt i64 %t70, 0
  br i1 %t72, label %bb21, label %bb22
bb21:
  store i64 -1, ptr %rv
  br label %ret
bb22:
  br label %bb23
bb23:
  %t75 = load i64, ptr %l3, !tbaa !24
  %t76 = load i64, ptr %l8, !tbaa !24
  %t79 = add i64 %t75, %t76
  store i64 %t79, ptr %l3, !tbaa !24
  br label %bb24
bb24:
  %t81 = load i64, ptr %l5, !tbaa !24
  %t83 = add i64 %t81, 1
  store i64 %t83, ptr %l5, !tbaa !24
  br label %bb16
bb25:
  %t85 = load i64, ptr %l3, !tbaa !24
  store i64 %t85, ptr %rv
  br label %ret
bb26:
  %t87 = load i32, ptr %l2, !range !{i32 0, i32 6}
  %t89 = trunc i64 1 to i32
  %t90 = icmp eq i32 %t87, %t89
  br i1 %t90, label %bb27, label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb44
bb29:
  store %olang.scope zeroinitializer, ptr %s8
  %t92 = load ptr, ptr %l0, !tbaa !29
  store ptr %t92, ptr %l55, !tbaa !29
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t94 = load i32, ptr %l1, !tbaa !23
  %t97 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t93, i32 %t94)
  store i32 %t97, ptr %l58
  br label %bb30
bb30:
  %t98 = load ptr, ptr %l55, !tbaa !29
  %t99 = load i32, ptr %l58, !tbaa !23
  %t100 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasPayload(ptr %v0, ptr %t98, i32 %t99)
  store i1 %t100, ptr %l59
  br label %bb31
bb31:
  %t101 = load i1, ptr %l59, !tbaa !21
  br i1 %t101, label %bb32, label %bb33
bb32:
  call void @__olang_scope_close(ptr %s8)
  store i64 -1, ptr %rv
  br label %ret
bb33:
  br label %bb34
bb34:
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t104 = load i32, ptr %l1, !tbaa !23
  %t107 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRawType(ptr %v0, ptr %t103, i32 %t104)
  store i32 %t107, ptr %l63
  br label %bb35
bb35:
  %t108 = load i32, ptr %l63, !tbaa !23
  store i32 %t108, ptr %l9, !tbaa !23
  %t109 = load i32, ptr %l9, !tbaa !23
  %t110 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t113 = icmp ne i32 %t109, %t110
  br i1 %t113, label %bb36, label %bb37
bb36:
  %t115 = load ptr, ptr %l0, !tbaa !29
  store ptr %t115, ptr %l67, !tbaa !29
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t117 = load i32, ptr %l9, !tbaa !23
  %t120 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t116, i32 %t117)
  store i32 %t120, ptr %l70
  br label %bb38
bb37:
  br label %bb40
bb38:
  %t121 = load ptr, ptr %l67, !tbaa !29
  %t122 = load i32, ptr %l70, !tbaa !23
  %t123 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t121, i32 %t122)
  store i64 %t123, ptr %l71
  br label %bb39
bb39:
  call void @__olang_scope_close(ptr %s8)
  %t124 = load i64, ptr %l71, !tbaa !24
  store i64 %t124, ptr %rv
  br label %ret
bb40:
  %t125 = load ptr, ptr %l0, !tbaa !29
  store ptr %t125, ptr %l72, !tbaa !29
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t127 = load i32, ptr %l1, !tbaa !23
  %t130 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t126, i32 %t127)
  store i32 %t130, ptr %l75
  br label %bb41
bb41:
  %t131 = load ptr, ptr %l72, !tbaa !29
  %t132 = load i32, ptr %l75, !tbaa !23
  %t133 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s8, ptr %t131, i32 %t132)
  store { i64, ptr } %t133, ptr %l76
  br label %bb42
bb42:
  %t134 = load { i64, ptr }, ptr %l76, !tbaa !27
  %t135 = extractvalue { i64, ptr } %t134, 0
  %t137 = call i64 @compiler_2ftypes_2eCaseBits(i64 %t135)
  store i64 %t137, ptr %l78
  br label %bb43
bb43:
  call void @__olang_scope_close(ptr %s8)
  %t138 = load i64, ptr %l78, !tbaa !24
  store i64 %t138, ptr %rv
  br label %ret
bb44:
  br i1 true, label %bb45, label %bb46
bb45:
  br label %bb47
bb46:
  br label %bb48
bb47:
  store i64 -1, ptr %rv
  br label %ret
bb48:
  call void @__olang_check_failed(ptr @olang_loc_a62d6e91a590f0f5_b15c9cb812bc8769)
  unreachable
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eownsParts(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %l11 = alloca i32
  %l14 = alloca i32
  %l17 = alloca ptr
  %l20 = alloca i32
  %l21 = alloca i1
  %l22 = alloca i1
  %l23 = alloca ptr
  %l26 = alloca i32
  %l29 = alloca i1
  %l32 = alloca ptr
  %l35 = alloca i32
  %l37 = alloca i1
  %l40 = alloca ptr
  %l43 = alloca i32
  %l45 = alloca i1
  %l49 = alloca ptr
  %l52 = alloca i32
  %l54 = alloca i1
  %l58 = alloca i1
  %l61 = alloca ptr
  %l64 = alloca i32
  %l65 = alloca i32
  %l66 = alloca i1
  %l69 = alloca ptr
  %l72 = alloca i32
  %l74 = alloca i1
  %l77 = alloca ptr
  %l80 = alloca i32
  %l82 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = icmp sgt i64 %t1, 16
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t6, i32 %a1)
  store i32 %t10, ptr %l11
  br label %bb4
bb4:
  %t11 = load i32, ptr %l11, !tbaa !23
  store i32 %t11, ptr %l3, !tbaa !23
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load i32, ptr %l3, !tbaa !23
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t16, ptr %l14
  br label %bb5
bb5:
  %t17 = load i32, ptr %l14, !range !{i32 0, i32 33}
  store i32 %t17, ptr %l4
  %t18 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t20 = trunc i64 19 to i32
  %t21 = icmp eq i32 %t18, %t20
  br i1 %t21, label %bb6, label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb16
bb8:
  %t23 = load ptr, ptr %l0, !tbaa !29
  store ptr %t23, ptr %l17, !tbaa !29
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load i32, ptr %l3, !tbaa !23
  %t28 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t24, i32 %t25)
  store i32 %t28, ptr %l20
  br label %bb9
bb9:
  %t29 = load ptr, ptr %l17, !tbaa !29
  %t30 = load i32, ptr %l20, !tbaa !23
  %t31 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnedPart(ptr %v0, ptr %t29, i32 %t30)
  store i1 %t31, ptr %l21
  br label %bb10
bb10:
  %t32 = load i1, ptr %l21, !tbaa !21
  br i1 %t32, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb15
bb12:
  %t33 = load ptr, ptr %l0, !tbaa !29
  store ptr %t33, ptr %l23, !tbaa !29
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load i32, ptr %l3, !tbaa !23
  %t38 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t34, i32 %t35)
  store i32 %t38, ptr %l26
  br label %bb13
bb13:
  %t39 = load i64, ptr %l2, !tbaa !24
  %t41 = add i64 %t39, 1
  %t42 = load ptr, ptr %l23, !tbaa !29
  %t43 = load i32, ptr %l26, !tbaa !23
  %t45 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eownsParts(ptr %v0, ptr %t42, i32 %t43, i64 %t41)
  store i1 %t45, ptr %l29
  br label %bb14
bb14:
  %t46 = load i1, ptr %l29, !tbaa !21
  store i1 %t46, ptr %l22, !tbaa !21
  br label %bb15
bb15:
  %t47 = load i1, ptr %l22, !tbaa !21
  store i1 %t47, ptr %rv
  br label %ret
bb16:
  %t48 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t50 = trunc i64 23 to i32
  %t51 = icmp eq i32 %t48, %t50
  br i1 %t51, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb22
bb19:
  %t53 = load ptr, ptr %l0, !tbaa !29
  store ptr %t53, ptr %l32, !tbaa !29
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load i32, ptr %l3, !tbaa !23
  %t58 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t54, i32 %t55)
  store i32 %t58, ptr %l35
  br label %bb20
bb20:
  %t59 = load i64, ptr %l2, !tbaa !24
  %t60 = load ptr, ptr %l32, !tbaa !29
  %t61 = load i32, ptr %l35, !tbaa !23
  %t63 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2epartsOwn(ptr %v0, ptr %t60, i32 %t61, i64 %t59)
  store i1 %t63, ptr %l37
  br label %bb21
bb21:
  %t64 = load i1, ptr %l37, !tbaa !21
  store i1 %t64, ptr %rv
  br label %ret
bb22:
  %t65 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t67 = trunc i64 24 to i32
  %t68 = icmp eq i32 %t65, %t67
  br i1 %t68, label %bb23, label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb28
bb25:
  %t70 = load ptr, ptr %l0, !tbaa !29
  store ptr %t70, ptr %l40, !tbaa !29
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = load i32, ptr %l3, !tbaa !23
  %t75 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %v0, ptr %t71, i32 %t72)
  store i32 %t75, ptr %l43
  br label %bb26
bb26:
  %t76 = load i64, ptr %l2, !tbaa !24
  %t77 = load ptr, ptr %l40, !tbaa !29
  %t78 = load i32, ptr %l43, !tbaa !23
  %t80 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2epartsOwn(ptr %v0, ptr %t77, i32 %t78, i64 %t76)
  store i1 %t80, ptr %l45
  br label %bb27
bb27:
  %t81 = load i1, ptr %l45, !tbaa !21
  store i1 %t81, ptr %rv
  br label %ret
bb28:
  %t82 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t84 = trunc i64 18 to i32
  %t85 = icmp eq i32 %t82, %t84
  br i1 %t85, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb60
bb31:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/types:Table", ptr %t87, i32 0, i32 37
  store ptr %t89, ptr %l49, !tbaa !29
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t91 = load i32, ptr %l3, !tbaa !23
  %t94 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t90, i32 %t91)
  store i32 %t94, ptr %l52
  br label %bb32
bb32:
  %t95 = load i32, ptr %l52, !tbaa !23
  %t96 = sext i32 %t95 to i64
  %t97 = load ptr, ptr %l49, !tbaa !29
  %t99 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t97, i64 %t96)
  store i1 %t99, ptr %l54
  br label %bb33
bb33:
  %t100 = load i1, ptr %l54, !tbaa !21
  br i1 %t100, label %bb34, label %bb35
bb34:
  store i1 true, ptr %rv
  br label %ret
bb35:
  br label %bb36
bb36:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t103 = load i32, ptr %l3, !tbaa !23
  %t106 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %t102, i32 %t103)
  store i1 %t106, ptr %l58
  br label %bb37
bb37:
  %t107 = load i1, ptr %l58, !tbaa !21
  %t108 = xor i1 %t107, true
  br i1 %t108, label %bb38, label %bb39
bb38:
  store i1 false, ptr %rv
  br label %ret
bb39:
  br label %bb40
bb40:
  %t111 = load ptr, ptr %l0, !tbaa !29
  store ptr %t111, ptr %l61, !tbaa !29
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t113 = load i32, ptr %l3, !tbaa !23
  %t116 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t112, i32 %t113)
  store i32 %t116, ptr %l64
  br label %bb41
bb41:
  %t117 = load ptr, ptr %l61, !tbaa !29
  %t118 = load i32, ptr %l64, !tbaa !23
  %t119 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t117, i32 %t118)
  store i32 %t119, ptr %l65
  br label %bb42
bb42:
  %t120 = load i32, ptr %l65, !range !{i32 0, i32 6}
  store i32 %t120, ptr %l5
  %t121 = load i32, ptr %l5, !range !{i32 0, i32 6}
  %t123 = trunc i64 0 to i32
  %t124 = icmp eq i32 %t121, %t123
  br i1 %t124, label %bb43, label %bb44
bb43:
  br label %bb45
bb44:
  br label %bb48
bb45:
  %t126 = load ptr, ptr %l0, !tbaa !29
  store ptr %t126, ptr %l69, !tbaa !29
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t128 = load i32, ptr %l3, !tbaa !23
  %t131 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t127, i32 %t128)
  store i32 %t131, ptr %l72
  br label %bb46
bb46:
  %t132 = load i64, ptr %l2, !tbaa !24
  %t133 = load ptr, ptr %l69, !tbaa !29
  %t134 = load i32, ptr %l72, !tbaa !23
  %t136 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2epartsOwn(ptr %v0, ptr %t133, i32 %t134, i64 %t132)
  store i1 %t136, ptr %l74
  br label %bb47
bb47:
  %t137 = load i1, ptr %l74, !tbaa !21
  store i1 %t137, ptr %l66, !tbaa !21
  br label %bb59
bb48:
  %t138 = load i32, ptr %l5, !range !{i32 0, i32 6}
  %t140 = trunc i64 1 to i32
  %t141 = icmp eq i32 %t138, %t140
  br i1 %t141, label %bb49, label %bb50
bb49:
  br label %bb51
bb50:
  br label %bb54
bb51:
  %t143 = load ptr, ptr %l0, !tbaa !29
  store ptr %t143, ptr %l77, !tbaa !29
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t145 = load i32, ptr %l3, !tbaa !23
  %t148 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t144, i32 %t145)
  store i32 %t148, ptr %l80
  br label %bb52
bb52:
  %t149 = load i64, ptr %l2, !tbaa !24
  %t150 = load ptr, ptr %l77, !tbaa !29
  %t151 = load i32, ptr %l80, !tbaa !23
  %t153 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2epartsOwn(ptr %v0, ptr %t150, i32 %t151, i64 %t149)
  store i1 %t153, ptr %l82
  br label %bb53
bb53:
  %t154 = load i1, ptr %l82, !tbaa !21
  store i1 %t154, ptr %l66, !tbaa !21
  br label %bb59
bb54:
  br i1 true, label %bb55, label %bb56
bb55:
  br label %bb57
bb56:
  br label %bb58
bb57:
  store i1 false, ptr %l66, !tbaa !21
  br label %bb59
bb58:
  call void @__olang_check_failed(ptr @olang_loc_34afd997c56f8665_d97bdd2c594f3b01)
  unreachable
bb59:
  %t155 = load i1, ptr %l66, !tbaa !21
  store i1 %t155, ptr %rv
  br label %ret
bb60:
  br i1 true, label %bb61, label %bb62
bb61:
  br label %bb63
bb62:
  br label %bb64
bb63:
  store i1 false, ptr %rv
  br label %ret
bb64:
  call void @__olang_check_failed(ptr @olang_loc_dfad6825423c7f34_db691f90aea39770)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2epartsDrop(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i32
  %l9 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l21 = alloca i1
  %l24 = alloca i1
  %l26 = alloca i1
  %l31 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t1, i32 %a1)
  store { i64, ptr } %t5, ptr %l9
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t6, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t7 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  store i64 %t9, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  %t11 = load i64, ptr %l4, !tbaa !24
  %t12 = load i64, ptr %l5, !tbaa !24
  %t15 = icmp slt i64 %t11, %t12
  %t17 = xor i1 %t15, true
  br i1 %t17, label %bb3, label %bb4
bb3:
  br label %bb18
bb4:
  br label %bb5
bb5:
  %t19 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t19, ptr %l16, !tbaa !27
  %t20 = load i64, ptr %l4, !tbaa !24
  %t22 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = getelementptr i32, ptr %t23, i64 %t20
  %t25 = load i32, ptr %t24, !tbaa !33
  store i32 %t25, ptr %l6, !tbaa !23
  %t27 = load i32, ptr %l6, !tbaa !23
  %t29 = icmp ne i32 %t27, 0
  br i1 %t29, label %bb6, label %bb7
bb6:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load i32, ptr %l6, !tbaa !23
  %t35 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t31, i32 %t32)
  store i1 %t35, ptr %l24
  br label %bb8
bb7:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb9
bb8:
  %t36 = load i1, ptr %l24, !tbaa !21
  %t37 = xor i1 %t36, true
  store i1 %t37, ptr %l21, !tbaa !21
  br label %bb9
bb9:
  %t39 = load i1, ptr %l21, !tbaa !21
  br i1 %t39, label %bb10, label %bb11
bb10:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load i32, ptr %l6, !tbaa !23
  %t44 = add i64 %a2, 1
  %t48 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eneedsDrop(ptr %v0, ptr %t40, i32 %t41, i64 %t44)
  store i1 %t48, ptr %l31
  br label %bb12
bb11:
  store i1 false, ptr %l26, !tbaa !21
  br label %bb13
bb12:
  %t49 = load i1, ptr %l31, !tbaa !21
  store i1 %t49, ptr %l26, !tbaa !21
  br label %bb13
bb13:
  %t50 = load i1, ptr %l26, !tbaa !21
  br i1 %t50, label %bb14, label %bb15
bb14:
  store i1 true, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t52 = load i64, ptr %l4, !tbaa !24
  %t54 = add i64 %t52, 1
  store i64 %t54, ptr %l4, !tbaa !24
  br label %bb2
bb18:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2epartsUnique(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i32
  %l10 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l27 = alloca i1
  %l29 = alloca i1
  %l34 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t1, i32 %a1)
  store { i64, ptr } %t5, ptr %l10
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t6, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t7 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  store i64 %t9, ptr %l6, !tbaa !24
  br label %bb2
bb2:
  %t11 = load i64, ptr %l5, !tbaa !24
  %t12 = load i64, ptr %l6, !tbaa !24
  %t15 = icmp slt i64 %t11, %t12
  %t17 = xor i1 %t15, true
  br i1 %t17, label %bb3, label %bb4
bb3:
  br label %bb21
bb4:
  br label %bb5
bb5:
  %t19 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t19, ptr %l17, !tbaa !27
  %t20 = load i64, ptr %l5, !tbaa !24
  %t22 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = getelementptr i32, ptr %t23, i64 %t20
  %t25 = load i32, ptr %t24, !tbaa !33
  store i32 %t25, ptr %l7, !tbaa !23
  %t27 = load i32, ptr %l7, !tbaa !23
  %t29 = icmp eq i32 %t27, 0
  br i1 %t29, label %bb6, label %bb7
bb6:
  %t33 = xor i1 %a3, true
  br i1 %t33, label %bb8, label %bb9
bb7:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load i32, ptr %l7, !tbaa !23
  %t39 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t35, i32 %t36)
  store i1 %t39, ptr %l27
  br label %bb11
bb8:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/types:Table", ptr %t40, i32 0, i32 35
  store i1 true, ptr %t42, !tbaa !21
  br label %bb10
bb9:
  br label %bb10
bb10:
  br label %bb19
bb11:
  %t43 = load i1, ptr %l27, !tbaa !21
  %t44 = xor i1 %t43, true
  br i1 %t44, label %bb12, label %bb13
bb12:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load i32, ptr %l7, !tbaa !23
  %t50 = add i64 %a2, 1
  %t54 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eunique(ptr %v0, ptr %t46, i32 %t47, i64 %t50)
  store i1 %t54, ptr %l34
  br label %bb14
bb13:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb15
bb14:
  %t55 = load i1, ptr %l34, !tbaa !21
  store i1 %t55, ptr %l29, !tbaa !21
  br label %bb15
bb15:
  %t56 = load i1, ptr %l29, !tbaa !21
  br i1 %t56, label %bb16, label %bb17
bb16:
  store i1 true, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t58 = load i64, ptr %l5, !tbaa !24
  %t60 = add i64 %t58, 1
  store i64 %t60, ptr %l5, !tbaa !24
  br label %bb2
bb21:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2erunTimeArray(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l5 = alloca i32
  %l8 = alloca i32
  %l11 = alloca i1
  %l14 = alloca i32
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t1, i32 %a1)
  store i32 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i32, ptr %l5, !tbaa !23
  store i32 %t6, ptr %l2, !tbaa !23
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i32, ptr %l2, !tbaa !23
  %t11 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t7, i32 %t8)
  store i32 %t11, ptr %l8
  br label %bb2
bb2:
  %t12 = load i32, ptr %l8, !range !{i32 0, i32 33}
  %t14 = trunc i64 19 to i32
  %t15 = icmp eq i32 %t12, %t14
  br i1 %t15, label %bb3, label %bb4
bb3:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load i32, ptr %l2, !tbaa !23
  %t21 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t17, i32 %t18)
  store i32 %t21, ptr %l14
  br label %bb5
bb4:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb6
bb5:
  %t22 = load i32, ptr %l14, !tbaa !23
  %t23 = icmp eq i32 %t22, 0
  store i1 %t23, ptr %l11, !tbaa !21
  br label %bb6
bb6:
  %t25 = load i1, ptr %l11, !tbaa !21
  store i1 %t25, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2erunsCopy(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %l11 = alloca i1
  %l15 = alloca i32
  %l18 = alloca i1
  %l22 = alloca i32
  %l25 = alloca ptr
  %l28 = alloca i32
  %l31 = alloca i1
  %l34 = alloca ptr
  %l37 = alloca i32
  %l39 = alloca i1
  %l42 = alloca ptr
  %l45 = alloca i32
  %l47 = alloca i1
  %l52 = alloca i1
  %l55 = alloca ptr
  %l58 = alloca i32
  %l59 = alloca i32
  %l60 = alloca i1
  %l63 = alloca ptr
  %l66 = alloca i32
  %l68 = alloca i1
  %l71 = alloca ptr
  %l74 = alloca i32
  %l76 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = icmp sgt i64 %t1, 16
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load i32, ptr %l1, !tbaa !23
  %t10 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclaresCopy(ptr %v0, ptr %t6, i32 %t7)
  store i1 %t10, ptr %l11
  br label %bb4
bb4:
  %t11 = load i1, ptr %l11, !tbaa !21
  br i1 %t11, label %bb5, label %bb6
bb5:
  store i1 true, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load i32, ptr %l1, !tbaa !23
  %t17 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t13, i32 %t14)
  store i32 %t17, ptr %l15
  br label %bb8
bb8:
  %t18 = load i32, ptr %l15, !tbaa !23
  store i32 %t18, ptr %l3, !tbaa !23
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = load i32, ptr %l3, !tbaa !23
  %t23 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclaresCopy(ptr %v0, ptr %t19, i32 %t20)
  store i1 %t23, ptr %l18
  br label %bb9
bb9:
  %t24 = load i1, ptr %l18, !tbaa !21
  br i1 %t24, label %bb10, label %bb11
bb10:
  store i1 true, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load i32, ptr %l3, !tbaa !23
  %t30 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t26, i32 %t27)
  store i32 %t30, ptr %l22
  br label %bb13
bb13:
  %t31 = load i32, ptr %l22, !range !{i32 0, i32 33}
  store i32 %t31, ptr %l4
  %t32 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t34 = trunc i64 19 to i32
  %t35 = icmp eq i32 %t32, %t34
  br i1 %t35, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb19
bb16:
  %t37 = load ptr, ptr %l0, !tbaa !29
  store ptr %t37, ptr %l25, !tbaa !29
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t39 = load i32, ptr %l3, !tbaa !23
  %t42 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t38, i32 %t39)
  store i32 %t42, ptr %l28
  br label %bb17
bb17:
  %t43 = load i64, ptr %l2, !tbaa !24
  %t45 = add i64 %t43, 1
  %t46 = load ptr, ptr %l25, !tbaa !29
  %t47 = load i32, ptr %l28, !tbaa !23
  %t49 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2erunsCopy(ptr %v0, ptr %t46, i32 %t47, i64 %t45)
  store i1 %t49, ptr %l31
  br label %bb18
bb18:
  %t50 = load i1, ptr %l31, !tbaa !21
  store i1 %t50, ptr %rv
  br label %ret
bb19:
  %t51 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t53 = trunc i64 23 to i32
  %t54 = icmp eq i32 %t51, %t53
  br i1 %t54, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb25
bb22:
  %t56 = load ptr, ptr %l0, !tbaa !29
  store ptr %t56, ptr %l34, !tbaa !29
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load i32, ptr %l3, !tbaa !23
  %t61 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t57, i32 %t58)
  store i32 %t61, ptr %l37
  br label %bb23
bb23:
  %t62 = load i64, ptr %l2, !tbaa !24
  %t63 = load ptr, ptr %l34, !tbaa !29
  %t64 = load i32, ptr %l37, !tbaa !23
  %t66 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2epartsRunCopy(ptr %v0, ptr %t63, i32 %t64, i64 %t62)
  store i1 %t66, ptr %l39
  br label %bb24
bb24:
  %t67 = load i1, ptr %l39, !tbaa !21
  store i1 %t67, ptr %rv
  br label %ret
bb25:
  %t68 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t70 = trunc i64 24 to i32
  %t71 = icmp eq i32 %t68, %t70
  br i1 %t71, label %bb26, label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb31
bb28:
  %t73 = load ptr, ptr %l0, !tbaa !29
  store ptr %t73, ptr %l42, !tbaa !29
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load i32, ptr %l3, !tbaa !23
  %t78 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %v0, ptr %t74, i32 %t75)
  store i32 %t78, ptr %l45
  br label %bb29
bb29:
  %t79 = load i64, ptr %l2, !tbaa !24
  %t80 = load ptr, ptr %l42, !tbaa !29
  %t81 = load i32, ptr %l45, !tbaa !23
  %t83 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2epartsRunCopy(ptr %v0, ptr %t80, i32 %t81, i64 %t79)
  store i1 %t83, ptr %l47
  br label %bb30
bb30:
  %t84 = load i1, ptr %l47, !tbaa !21
  store i1 %t84, ptr %rv
  br label %ret
bb31:
  %t85 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t87 = trunc i64 18 to i32
  %t88 = icmp eq i32 %t85, %t87
  br i1 %t88, label %bb32, label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb58
bb34:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t91 = load i32, ptr %l3, !tbaa !23
  %t94 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %t90, i32 %t91)
  store i1 %t94, ptr %l52
  br label %bb35
bb35:
  %t95 = load i1, ptr %l52, !tbaa !21
  %t96 = xor i1 %t95, true
  br i1 %t96, label %bb36, label %bb37
bb36:
  store i1 false, ptr %rv
  br label %ret
bb37:
  br label %bb38
bb38:
  %t99 = load ptr, ptr %l0, !tbaa !29
  store ptr %t99, ptr %l55, !tbaa !29
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t101 = load i32, ptr %l3, !tbaa !23
  %t104 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t100, i32 %t101)
  store i32 %t104, ptr %l58
  br label %bb39
bb39:
  %t105 = load ptr, ptr %l55, !tbaa !29
  %t106 = load i32, ptr %l58, !tbaa !23
  %t107 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t105, i32 %t106)
  store i32 %t107, ptr %l59
  br label %bb40
bb40:
  %t108 = load i32, ptr %l59, !range !{i32 0, i32 6}
  store i32 %t108, ptr %l5
  %t109 = load i32, ptr %l5, !range !{i32 0, i32 6}
  %t111 = trunc i64 0 to i32
  %t112 = icmp eq i32 %t109, %t111
  br i1 %t112, label %bb41, label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb46
bb43:
  %t114 = load ptr, ptr %l0, !tbaa !29
  store ptr %t114, ptr %l63, !tbaa !29
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t116 = load i32, ptr %l3, !tbaa !23
  %t119 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t115, i32 %t116)
  store i32 %t119, ptr %l66
  br label %bb44
bb44:
  %t120 = load i64, ptr %l2, !tbaa !24
  %t121 = load ptr, ptr %l63, !tbaa !29
  %t122 = load i32, ptr %l66, !tbaa !23
  %t124 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2epartsRunCopy(ptr %v0, ptr %t121, i32 %t122, i64 %t120)
  store i1 %t124, ptr %l68
  br label %bb45
bb45:
  %t125 = load i1, ptr %l68, !tbaa !21
  store i1 %t125, ptr %l60, !tbaa !21
  br label %bb57
bb46:
  %t126 = load i32, ptr %l5, !range !{i32 0, i32 6}
  %t128 = trunc i64 1 to i32
  %t129 = icmp eq i32 %t126, %t128
  br i1 %t129, label %bb47, label %bb48
bb47:
  br label %bb49
bb48:
  br label %bb52
bb49:
  %t131 = load ptr, ptr %l0, !tbaa !29
  store ptr %t131, ptr %l71, !tbaa !29
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t133 = load i32, ptr %l3, !tbaa !23
  %t136 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t132, i32 %t133)
  store i32 %t136, ptr %l74
  br label %bb50
bb50:
  %t137 = load i64, ptr %l2, !tbaa !24
  %t138 = load ptr, ptr %l71, !tbaa !29
  %t139 = load i32, ptr %l74, !tbaa !23
  %t141 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2epartsRunCopy(ptr %v0, ptr %t138, i32 %t139, i64 %t137)
  store i1 %t141, ptr %l76
  br label %bb51
bb51:
  %t142 = load i1, ptr %l76, !tbaa !21
  store i1 %t142, ptr %l60, !tbaa !21
  br label %bb57
bb52:
  br i1 true, label %bb53, label %bb54
bb53:
  br label %bb55
bb54:
  br label %bb56
bb55:
  store i1 false, ptr %l60, !tbaa !21
  br label %bb57
bb56:
  call void @__olang_check_failed(ptr @olang_loc_937d2117677220f7_4e71d8f6c64016c3)
  unreachable
bb57:
  %t143 = load i1, ptr %l60, !tbaa !21
  store i1 %t143, ptr %rv
  br label %ret
bb58:
  br i1 true, label %bb59, label %bb60
bb59:
  br label %bb61
bb60:
  br label %bb62
bb61:
  store i1 false, ptr %rv
  br label %ret
bb62:
  call void @__olang_check_failed(ptr @olang_loc_b2a5ea58cae3bcd6_127532dafa8fcf42)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2espellLlvm(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca %"compiler/types:data"
  %l3 = alloca i32
  %l6 = alloca %"compiler/types:data"
  %l8 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l53 = alloca i32
  %l55 = alloca { i64, ptr }
  %l56 = alloca { i64, ptr }
  %l58 = alloca ptr
  %l61 = alloca i32
  %l62 = alloca { i64, ptr }
  %l66 = alloca { i64, ptr }
  %l70 = alloca { i64, ptr }
  %l74 = alloca ptr
  %l77 = alloca i32
  %l78 = alloca i1
  %l79 = alloca { i64, ptr }
  %l80 = alloca { i64, ptr }
  %l82 = alloca ptr
  %l85 = alloca i32
  %l86 = alloca i32
  %l89 = alloca { i64, ptr }
  %l90 = alloca { i64, ptr }
  %l92 = alloca { i64, ptr }
  %l98 = alloca { i64, ptr }
  %l103 = alloca ptr
  %l106 = alloca i32
  %l107 = alloca { i64, ptr }
  %l112 = alloca { i64, ptr }
  %l117 = alloca { i64, ptr }
  %l118 = alloca { i64, ptr }
  %l120 = alloca i64
  %l121 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call %"compiler/types:data" @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eat(ptr %v0, ptr %t1, i32 %t2)
  store %"compiler/types:data" %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load %"compiler/types:data", ptr %l6
  store %"compiler/types:data" %t6, ptr %l2
  %t7 = getelementptr %"compiler/types:data", ptr %l2, i32 0, i32 0
  %t8 = load i32, ptr %t7, !range !{i32 0, i32 33}
  store i32 %t8, ptr %l3
  %t10 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t12 = trunc i64 1 to i32
  %t13 = icmp eq i32 %t10, %t12
  br i1 %t13, label %bb2, label %bb3
bb2:
  br label %bb30
bb3:
  %t15 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t17 = trunc i64 2 to i32
  %t18 = icmp eq i32 %t15, %t17
  br i1 %t18, label %bb4, label %bb5
bb4:
  br label %bb30
bb5:
  %t20 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t22 = trunc i64 3 to i32
  %t23 = icmp eq i32 %t20, %t22
  br i1 %t23, label %bb6, label %bb7
bb6:
  br label %bb30
bb7:
  %t25 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t27 = trunc i64 4 to i32
  %t28 = icmp eq i32 %t25, %t27
  br i1 %t28, label %bb8, label %bb9
bb8:
  br label %bb30
bb9:
  %t30 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t32 = trunc i64 5 to i32
  %t33 = icmp eq i32 %t30, %t32
  br i1 %t33, label %bb10, label %bb11
bb10:
  br label %bb30
bb11:
  %t35 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t37 = trunc i64 6 to i32
  %t38 = icmp eq i32 %t35, %t37
  br i1 %t38, label %bb12, label %bb13
bb12:
  br label %bb30
bb13:
  %t40 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t42 = trunc i64 7 to i32
  %t43 = icmp eq i32 %t40, %t42
  br i1 %t43, label %bb14, label %bb15
bb14:
  br label %bb30
bb15:
  %t45 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t47 = trunc i64 8 to i32
  %t48 = icmp eq i32 %t45, %t47
  br i1 %t48, label %bb16, label %bb17
bb16:
  br label %bb30
bb17:
  %t50 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t52 = trunc i64 9 to i32
  %t53 = icmp eq i32 %t50, %t52
  br i1 %t53, label %bb18, label %bb19
bb18:
  br label %bb30
bb19:
  %t55 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t57 = trunc i64 10 to i32
  %t58 = icmp eq i32 %t55, %t57
  br i1 %t58, label %bb20, label %bb21
bb20:
  br label %bb30
bb21:
  %t60 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t62 = trunc i64 11 to i32
  %t63 = icmp eq i32 %t60, %t62
  br i1 %t63, label %bb22, label %bb23
bb22:
  br label %bb30
bb23:
  %t65 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t67 = trunc i64 12 to i32
  %t68 = icmp eq i32 %t65, %t67
  br i1 %t68, label %bb24, label %bb25
bb24:
  br label %bb30
bb25:
  %t70 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t72 = trunc i64 13 to i32
  %t73 = icmp eq i32 %t70, %t72
  br i1 %t73, label %bb26, label %bb27
bb26:
  br label %bb30
bb27:
  %t75 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t77 = trunc i64 14 to i32
  %t78 = icmp eq i32 %t75, %t77
  br i1 %t78, label %bb28, label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb31
bb30:
  %t80 = load i32, ptr %l1, !tbaa !23
  %t82 = sext i32 %t80 to i64
  %t84 = getelementptr [15 x { i64, ptr }], ptr @G_2ecompiler_2ftypes_2eprimLlvm, i64 0, i64 %t82
  %t85 = load { i64, ptr }, ptr %t84, !tbaa !37
  %t87 = extractvalue { i64, ptr } %t85, 1
  %t88 = extractvalue { i64, ptr } %t85, 0
  %t89 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t88)
  call void @olang_textcopy(ptr %t89, ptr %t87, i64 %t88)
  %t90 = insertvalue { i64, ptr } undef, i64 %t88, 0
  %t91 = insertvalue { i64, ptr } %t90, ptr %t89, 1
  store { i64, ptr } %t91, ptr %l8, !tbaa !27
  br label %bb99
bb31:
  %t93 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t95 = trunc i64 31 to i32
  %t96 = icmp eq i32 %t93, %t95
  br i1 %t96, label %bb32, label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb35
bb34:
  %t98 = getelementptr %"compiler/types:data", ptr %l2, i32 0, i32 1
  %t99 = load i64, ptr %t98, !tbaa !24
  %t100 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d61, i32 0, i32 1) }, 1
  %t101 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d61, i32 0, i32 1) }, 0
  %t103 = call i64 @__olang_fmt_i64(ptr null, i64 %t99)
  %t104 = add i64 %t101, %t103
  %t105 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t104)
  call void @olang_textcopy(ptr %t105, ptr %t100, i64 %t101)
  %t106 = getelementptr i8, ptr %t105, i64 %t101
  %t107 = call i64 @__olang_fmt_i64(ptr %t106, i64 %t99)
  %t108 = insertvalue { i64, ptr } undef, i64 %t104, 0
  %t109 = insertvalue { i64, ptr } %t108, ptr %t105, 1
  store { i64, ptr } %t109, ptr %l8, !tbaa !27
  br label %bb99
bb35:
  %t111 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t113 = trunc i64 16 to i32
  %t114 = icmp eq i32 %t111, %t113
  br i1 %t114, label %bb36, label %bb37
bb36:
  br label %bb38
bb37:
  br label %bb39
bb38:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d62, i32 0, i32 1) }, ptr %l47, !tbaa !27
  %t116 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t116, ptr %l8, !tbaa !27
  br label %bb99
bb39:
  %t118 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t120 = trunc i64 32 to i32
  %t121 = icmp eq i32 %t118, %t120
  br i1 %t121, label %bb40, label %bb41
bb40:
  br label %bb42
bb41:
  br label %bb49
bb42:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t124 = load i32, ptr %l1, !tbaa !23
  %t127 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t123, i32 %t124)
  store i32 %t127, ptr %l53
  br label %bb43
bb43:
  %t128 = load i32, ptr %l53, !tbaa !23
  %t129 = icmp eq i32 %t128, 5
  br i1 %t129, label %bb44, label %bb45
bb44:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d63, i32 0, i32 1) }, ptr %l56, !tbaa !27
  %t131 = load { i64, ptr }, ptr %l56, !tbaa !27
  store { i64, ptr } %t131, ptr %l55, !tbaa !27
  br label %bb48
bb45:
  %t133 = load ptr, ptr %l0, !tbaa !29
  store ptr %t133, ptr %l58, !tbaa !29
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t135 = load i32, ptr %l1, !tbaa !23
  %t138 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t134, i32 %t135)
  store i32 %t138, ptr %l61
  br label %bb46
bb46:
  %t139 = load ptr, ptr %l58, !tbaa !29
  %t140 = load i32, ptr %l61, !tbaa !23
  %t141 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLlvm(ptr %v0, ptr %v1, ptr %v2, ptr %t139, i32 %t140)
  store { i64, ptr } %t141, ptr %l62
  br label %bb47
bb47:
  %t142 = load { i64, ptr }, ptr %l62, !tbaa !27
  store { i64, ptr } %t142, ptr %l55, !tbaa !27
  br label %bb48
bb48:
  %t144 = load { i64, ptr }, ptr %l55, !tbaa !27
  store { i64, ptr } %t144, ptr %l8, !tbaa !27
  br label %bb99
bb49:
  %t145 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t147 = trunc i64 17 to i32
  %t148 = icmp eq i32 %t145, %t147
  br i1 %t148, label %bb50, label %bb51
bb50:
  br label %bb52
bb51:
  br label %bb53
bb52:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d64, i32 0, i32 1) }, ptr %l66, !tbaa !27
  %t150 = load { i64, ptr }, ptr %l66, !tbaa !27
  store { i64, ptr } %t150, ptr %l8, !tbaa !27
  br label %bb99
bb53:
  %t152 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t154 = trunc i64 21 to i32
  %t155 = icmp eq i32 %t152, %t154
  br i1 %t155, label %bb54, label %bb55
bb54:
  br label %bb56
bb55:
  br label %bb57
bb56:
  store { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d65, i32 0, i32 1) }, ptr %l70, !tbaa !27
  %t157 = load { i64, ptr }, ptr %l70, !tbaa !27
  store { i64, ptr } %t157, ptr %l8, !tbaa !27
  br label %bb99
bb57:
  %t159 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t161 = trunc i64 20 to i32
  %t162 = icmp eq i32 %t159, %t161
  br i1 %t162, label %bb58, label %bb59
bb58:
  br label %bb60
bb59:
  br label %bb71
bb60:
  %t164 = load ptr, ptr %l0, !tbaa !29
  store ptr %t164, ptr %l74, !tbaa !29
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t166 = load i32, ptr %l1, !tbaa !23
  %t169 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t165, i32 %t166)
  store i32 %t169, ptr %l77
  br label %bb61
bb61:
  %t170 = load ptr, ptr %l74, !tbaa !29
  %t171 = load i32, ptr %l77, !tbaa !23
  %t172 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2erunTimeArray(ptr %v0, ptr %t170, i32 %t171)
  store i1 %t172, ptr %l78
  br label %bb62
bb62:
  %t173 = load i1, ptr %l78, !tbaa !21
  br i1 %t173, label %bb63, label %bb64
bb63:
  store { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d66, i32 0, i32 1) }, ptr %l80, !tbaa !27
  %t174 = load { i64, ptr }, ptr %l80, !tbaa !27
  store { i64, ptr } %t174, ptr %l79, !tbaa !27
  br label %bb70
bb64:
  %t176 = load ptr, ptr %l0, !tbaa !29
  store ptr %t176, ptr %l82, !tbaa !29
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t178 = load i32, ptr %l1, !tbaa !23
  %t181 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t177, i32 %t178)
  store i32 %t181, ptr %l85
  br label %bb65
bb65:
  %t182 = load ptr, ptr %l82, !tbaa !29
  %t183 = load i32, ptr %l85, !tbaa !23
  %t184 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t182, i32 %t183)
  store i32 %t184, ptr %l86
  br label %bb66
bb66:
  %t185 = load i32, ptr %l86, !range !{i32 0, i32 33}
  %t187 = trunc i64 29 to i32
  %t188 = icmp eq i32 %t185, %t187
  br i1 %t188, label %bb67, label %bb68
bb67:
  store { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d67, i32 0, i32 1) }, ptr %l90, !tbaa !27
  %t190 = load { i64, ptr }, ptr %l90, !tbaa !27
  store { i64, ptr } %t190, ptr %l89, !tbaa !27
  br label %bb69
bb68:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d68, i32 0, i32 1) }, ptr %l92, !tbaa !27
  %t192 = load { i64, ptr }, ptr %l92, !tbaa !27
  store { i64, ptr } %t192, ptr %l89, !tbaa !27
  br label %bb69
bb69:
  %t194 = load { i64, ptr }, ptr %l89, !tbaa !27
  store { i64, ptr } %t194, ptr %l79, !tbaa !27
  br label %bb70
bb70:
  %t195 = load { i64, ptr }, ptr %l79, !tbaa !27
  store { i64, ptr } %t195, ptr %l8, !tbaa !27
  br label %bb99
bb71:
  %t196 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t198 = trunc i64 19 to i32
  %t199 = icmp eq i32 %t196, %t198
  br i1 %t199, label %bb72, label %bb73
bb72:
  br label %bb74
bb73:
  br label %bb76
bb74:
  %t201 = load ptr, ptr %l0, !tbaa !29
  %t202 = load i32, ptr %l1, !tbaa !23
  %t205 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2earrayLlvm(ptr %v0, ptr %v1, ptr %v2, ptr %t201, i32 %t202)
  store { i64, ptr } %t205, ptr %l98
  br label %bb75
bb75:
  %t206 = load { i64, ptr }, ptr %l98, !tbaa !27
  store { i64, ptr } %t206, ptr %l8, !tbaa !27
  br label %bb99
bb76:
  %t207 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t209 = trunc i64 22 to i32
  %t210 = icmp eq i32 %t207, %t209
  br i1 %t210, label %bb77, label %bb78
bb77:
  br label %bb81
bb78:
  %t212 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t214 = trunc i64 23 to i32
  %t215 = icmp eq i32 %t212, %t214
  br i1 %t215, label %bb79, label %bb80
bb79:
  br label %bb81
bb80:
  br label %bb84
bb81:
  %t217 = load ptr, ptr %l0, !tbaa !29
  store ptr %t217, ptr %l103, !tbaa !29
  %t218 = load ptr, ptr %l0, !tbaa !29
  %t219 = load i32, ptr %l1, !tbaa !23
  %t222 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t218, i32 %t219)
  store i32 %t222, ptr %l106
  br label %bb82
bb82:
  %t223 = load ptr, ptr %l103, !tbaa !29
  %t224 = load i32, ptr %l106, !tbaa !23
  %t225 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eaggregate(ptr %v0, ptr %v1, ptr %v2, ptr %t223, i32 %t224)
  store { i64, ptr } %t225, ptr %l107
  br label %bb83
bb83:
  %t226 = load { i64, ptr }, ptr %l107, !tbaa !27
  store { i64, ptr } %t226, ptr %l8, !tbaa !27
  br label %bb99
bb84:
  %t227 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t229 = trunc i64 24 to i32
  %t230 = icmp eq i32 %t227, %t229
  br i1 %t230, label %bb85, label %bb86
bb85:
  br label %bb87
bb86:
  br label %bb89
bb87:
  %t232 = load ptr, ptr %l0, !tbaa !29
  %t233 = load i32, ptr %l1, !tbaa !23
  %t236 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eenumLlvm(ptr %v0, ptr %v1, ptr %t232, i32 %t233)
  store { i64, ptr } %t236, ptr %l112
  br label %bb88
bb88:
  %t237 = load { i64, ptr }, ptr %l112, !tbaa !27
  store { i64, ptr } %t237, ptr %l8, !tbaa !27
  br label %bb99
bb89:
  %t238 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t240 = trunc i64 18 to i32
  %t241 = icmp eq i32 %t238, %t240
  br i1 %t241, label %bb90, label %bb91
bb90:
  br label %bb92
bb91:
  br label %bb94
bb92:
  %t243 = load ptr, ptr %l0, !tbaa !29
  %t244 = load i32, ptr %l1, !tbaa !23
  %t247 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2enamedLlvm(ptr %v0, ptr %v1, ptr %v2, ptr %t243, i32 %t244)
  store { i64, ptr } %t247, ptr %l117
  br label %bb93
bb93:
  %t248 = load { i64, ptr }, ptr %l117, !tbaa !27
  store { i64, ptr } %t248, ptr %l8, !tbaa !27
  br label %bb99
bb94:
  br i1 true, label %bb95, label %bb96
bb95:
  br label %bb97
bb96:
  br label %bb98
bb97:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d69, i32 0, i32 1) }, ptr %l118, !tbaa !27
  %t249 = load { i64, ptr }, ptr %l118, !tbaa !27
  store { i64, ptr } %t249, ptr %l8, !tbaa !27
  br label %bb99
bb98:
  call void @__olang_check_failed(ptr @olang_loc_bbfcd5581dbe335b_bbf57adf6fe10b0f)
  unreachable
bb99:
  %t251 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t252 = extractvalue { i64, ptr } %t251, 0
  store i64 %t252, ptr %l120, !tbaa !24
  %t253 = load i64, ptr %l120, !tbaa !24
  %t254 = mul i64 %t253, 1
  %t255 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t254)
  %t256 = insertvalue { i64, ptr } undef, i64 %t253, 0
  %t257 = insertvalue { i64, ptr } %t256, ptr %t255, 1
  store { i64, ptr } %t257, ptr %l121, !tbaa !27
  %t258 = getelementptr { i64, ptr }, ptr %l121, i32 0, i32 1
  %t259 = load ptr, ptr %t258, !tbaa !27
  %t260 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t261 = load ptr, ptr %t260, !tbaa !27
  %t262 = load i64, ptr %l120, !tbaa !24
  %t263 = mul i64 %t262, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t259, ptr %t261, i64 %t263, i1 false)
  %t264 = load { i64, ptr }, ptr %l121, !tbaa !27
  store { i64, ptr } %t264, ptr %l8, !tbaa !27
  %t265 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t265, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eunique(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca i32
  %l10 = alloca i32
  %l14 = alloca ptr
  %l17 = alloca i32
  %l19 = alloca i1
  %l23 = alloca i1
  %l27 = alloca i1
  %l31 = alloca ptr
  %l34 = alloca i32
  %l35 = alloca i32
  %l36 = alloca i1
  %l39 = alloca ptr
  %l42 = alloca i32
  %l44 = alloca i1
  %l47 = alloca ptr
  %l50 = alloca i32
  %l52 = alloca i1
  %l55 = alloca ptr
  %l58 = alloca i32
  %l61 = alloca i1
  %l64 = alloca i32
  %l65 = alloca i1
  %l68 = alloca ptr
  %l71 = alloca i32
  %l74 = alloca i1
  %l77 = alloca ptr
  %l80 = alloca i32
  %l82 = alloca i1
  %l85 = alloca ptr
  %l88 = alloca i32
  %l90 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = icmp sgt i64 %t1, 16
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load i32, ptr %l1, !tbaa !23
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t6, i32 %t7)
  store i32 %t10, ptr %l10
  br label %bb4
bb4:
  %t11 = load i32, ptr %l10, !range !{i32 0, i32 33}
  %t13 = trunc i64 18 to i32
  %t14 = icmp eq i32 %t11, %t13
  br i1 %t14, label %bb5, label %bb6
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/types:Table", ptr %t16, i32 0, i32 38
  store ptr %t18, ptr %l14, !tbaa !29
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = load i32, ptr %l1, !tbaa !23
  %t23 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t19, i32 %t20)
  store i32 %t23, ptr %l17
  br label %bb7
bb6:
  br label %bb45
bb7:
  %t24 = load i32, ptr %l17, !tbaa !23
  %t25 = sext i32 %t24 to i64
  %t26 = load ptr, ptr %l14, !tbaa !29
  %t28 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t26, i64 %t25)
  store i1 %t28, ptr %l19
  br label %bb8
bb8:
  %t29 = load i1, ptr %l19, !tbaa !21
  br i1 %t29, label %bb9, label %bb10
bb9:
  store i1 true, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load i32, ptr %l1, !tbaa !23
  %t35 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclaresCopy(ptr %v0, ptr %t31, i32 %t32)
  store i1 %t35, ptr %l23
  br label %bb12
bb12:
  %t36 = load i1, ptr %l23, !tbaa !21
  br i1 %t36, label %bb13, label %bb14
bb13:
  store i1 false, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t39 = load i32, ptr %l1, !tbaa !23
  %t42 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %t38, i32 %t39)
  store i1 %t42, ptr %l27
  br label %bb16
bb16:
  %t43 = load i1, ptr %l27, !tbaa !21
  %t44 = xor i1 %t43, true
  br i1 %t44, label %bb17, label %bb18
bb17:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/types:Table", ptr %t46, i32 0, i32 35
  store i1 true, ptr %t48, !tbaa !21
  store i1 false, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t50 = load ptr, ptr %l0, !tbaa !29
  store ptr %t50, ptr %l31, !tbaa !29
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = load i32, ptr %l1, !tbaa !23
  %t55 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t51, i32 %t52)
  store i32 %t55, ptr %l34
  br label %bb20
bb20:
  %t56 = load ptr, ptr %l31, !tbaa !29
  %t57 = load i32, ptr %l34, !tbaa !23
  %t58 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t56, i32 %t57)
  store i32 %t58, ptr %l35
  br label %bb21
bb21:
  %t59 = load i32, ptr %l35, !range !{i32 0, i32 6}
  store i32 %t59, ptr %l3
  %t60 = load i32, ptr %l3, !range !{i32 0, i32 6}
  %t62 = trunc i64 0 to i32
  %t63 = icmp eq i32 %t60, %t62
  br i1 %t63, label %bb22, label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb27
bb24:
  %t65 = load ptr, ptr %l0, !tbaa !29
  store ptr %t65, ptr %l39, !tbaa !29
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load i32, ptr %l1, !tbaa !23
  %t70 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t66, i32 %t67)
  store i32 %t70, ptr %l42
  br label %bb25
bb25:
  %t71 = load i64, ptr %l2, !tbaa !24
  %t72 = load ptr, ptr %l39, !tbaa !29
  %t73 = load i32, ptr %l42, !tbaa !23
  %t75 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2epartsUnique(ptr %v0, ptr %t72, i32 %t73, i64 %t71, i1 false)
  store i1 %t75, ptr %l44
  br label %bb26
bb26:
  %t76 = load i1, ptr %l44, !tbaa !21
  store i1 %t76, ptr %l36, !tbaa !21
  br label %bb44
bb27:
  %t77 = load i32, ptr %l3, !range !{i32 0, i32 6}
  %t79 = trunc i64 1 to i32
  %t80 = icmp eq i32 %t77, %t79
  br i1 %t80, label %bb28, label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb33
bb30:
  %t82 = load ptr, ptr %l0, !tbaa !29
  store ptr %t82, ptr %l47, !tbaa !29
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t84 = load i32, ptr %l1, !tbaa !23
  %t87 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t83, i32 %t84)
  store i32 %t87, ptr %l50
  br label %bb31
bb31:
  %t88 = load i64, ptr %l2, !tbaa !24
  %t89 = load ptr, ptr %l47, !tbaa !29
  %t90 = load i32, ptr %l50, !tbaa !23
  %t92 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2epartsUnique(ptr %v0, ptr %t89, i32 %t90, i64 %t88, i1 true)
  store i1 %t92, ptr %l52
  br label %bb32
bb32:
  %t93 = load i1, ptr %l52, !tbaa !21
  store i1 %t93, ptr %l36, !tbaa !21
  br label %bb44
bb33:
  %t94 = load i32, ptr %l3, !range !{i32 0, i32 6}
  %t96 = trunc i64 4 to i32
  %t97 = icmp eq i32 %t94, %t96
  br i1 %t97, label %bb34, label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb39
bb36:
  %t99 = load ptr, ptr %l0, !tbaa !29
  store ptr %t99, ptr %l55, !tbaa !29
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t101 = load i32, ptr %l1, !tbaa !23
  %t104 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t100, i32 %t101)
  store i32 %t104, ptr %l58
  br label %bb37
bb37:
  %t105 = load i64, ptr %l2, !tbaa !24
  %t107 = add i64 %t105, 1
  %t108 = load ptr, ptr %l55, !tbaa !29
  %t109 = load i32, ptr %l58, !tbaa !23
  %t111 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eunique(ptr %v0, ptr %t108, i32 %t109, i64 %t107)
  store i1 %t111, ptr %l61
  br label %bb38
bb38:
  %t112 = load i1, ptr %l61, !tbaa !21
  store i1 %t112, ptr %l36, !tbaa !21
  br label %bb44
bb39:
  br i1 true, label %bb40, label %bb41
bb40:
  br label %bb42
bb41:
  br label %bb43
bb42:
  store i1 false, ptr %l36, !tbaa !21
  br label %bb44
bb43:
  call void @__olang_check_failed(ptr @olang_loc_983e1053235c526f_18c94ea801ade2a3)
  unreachable
bb44:
  %t113 = load i1, ptr %l36, !tbaa !21
  store i1 %t113, ptr %rv
  br label %ret
bb45:
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t115 = load i32, ptr %l1, !tbaa !23
  %t118 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t114, i32 %t115)
  store i32 %t118, ptr %l64
  br label %bb46
bb46:
  %t119 = load i32, ptr %l64, !range !{i32 0, i32 33}
  store i32 %t119, ptr %l4
  %t120 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t122 = trunc i64 19 to i32
  %t123 = icmp eq i32 %t120, %t122
  br i1 %t123, label %bb47, label %bb48
bb47:
  br label %bb49
bb48:
  br label %bb52
bb49:
  %t125 = load ptr, ptr %l0, !tbaa !29
  store ptr %t125, ptr %l68, !tbaa !29
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t127 = load i32, ptr %l1, !tbaa !23
  %t130 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t126, i32 %t127)
  store i32 %t130, ptr %l71
  br label %bb50
bb50:
  %t131 = load i64, ptr %l2, !tbaa !24
  %t133 = add i64 %t131, 1
  %t134 = load ptr, ptr %l68, !tbaa !29
  %t135 = load i32, ptr %l71, !tbaa !23
  %t137 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eunique(ptr %v0, ptr %t134, i32 %t135, i64 %t133)
  store i1 %t137, ptr %l74
  br label %bb51
bb51:
  %t138 = load i1, ptr %l74, !tbaa !21
  store i1 %t138, ptr %l65, !tbaa !21
  br label %bb69
bb52:
  %t139 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t141 = trunc i64 23 to i32
  %t142 = icmp eq i32 %t139, %t141
  br i1 %t142, label %bb53, label %bb54
bb53:
  br label %bb55
bb54:
  br label %bb58
bb55:
  %t144 = load ptr, ptr %l0, !tbaa !29
  store ptr %t144, ptr %l77, !tbaa !29
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t146 = load i32, ptr %l1, !tbaa !23
  %t149 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t145, i32 %t146)
  store i32 %t149, ptr %l80
  br label %bb56
bb56:
  %t150 = load i64, ptr %l2, !tbaa !24
  %t151 = load ptr, ptr %l77, !tbaa !29
  %t152 = load i32, ptr %l80, !tbaa !23
  %t154 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2epartsUnique(ptr %v0, ptr %t151, i32 %t152, i64 %t150, i1 false)
  store i1 %t154, ptr %l82
  br label %bb57
bb57:
  %t155 = load i1, ptr %l82, !tbaa !21
  store i1 %t155, ptr %l65, !tbaa !21
  br label %bb69
bb58:
  %t156 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t158 = trunc i64 24 to i32
  %t159 = icmp eq i32 %t156, %t158
  br i1 %t159, label %bb59, label %bb60
bb59:
  br label %bb61
bb60:
  br label %bb64
bb61:
  %t161 = load ptr, ptr %l0, !tbaa !29
  store ptr %t161, ptr %l85, !tbaa !29
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t163 = load i32, ptr %l1, !tbaa !23
  %t166 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %v0, ptr %t162, i32 %t163)
  store i32 %t166, ptr %l88
  br label %bb62
bb62:
  %t167 = load i64, ptr %l2, !tbaa !24
  %t168 = load ptr, ptr %l85, !tbaa !29
  %t169 = load i32, ptr %l88, !tbaa !23
  %t171 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2epartsUnique(ptr %v0, ptr %t168, i32 %t169, i64 %t167, i1 true)
  store i1 %t171, ptr %l90
  br label %bb63
bb63:
  %t172 = load i1, ptr %l90, !tbaa !21
  store i1 %t172, ptr %l65, !tbaa !21
  br label %bb69
bb64:
  br i1 true, label %bb65, label %bb66
bb65:
  br label %bb67
bb66:
  br label %bb68
bb67:
  store i1 false, ptr %l65, !tbaa !21
  br label %bb69
bb68:
  call void @__olang_check_failed(ptr @olang_loc_427e8c4f545bd5ae_655f412a6751c1a2)
  unreachable
bb69:
  %t173 = load i1, ptr %l65, !tbaa !21
  store i1 %t173, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2evalueParts(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %l8 = alloca i32
  %l11 = alloca i1
  %l16 = alloca i32
  %l19 = alloca ptr
  %l22 = alloca i32
  %l28 = alloca ptr
  %l31 = alloca i32
  %l35 = alloca ptr
  %l38 = alloca i32
  %l44 = alloca i1
  %l46 = alloca ptr
  %l49 = alloca i32
  %l50 = alloca i32
  %l53 = alloca ptr
  %l56 = alloca i32
  %l60 = alloca ptr
  %l63 = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t1, i32 %a1)
  store i32 %t5, ptr %l8
  br label %bb1
bb1:
  %t6 = load i32, ptr %l8, !tbaa !23
  store i32 %t6, ptr %l3, !tbaa !23
  %t7 = load ptr, ptr %l2, !tbaa !29
  %t8 = load i32, ptr %l3, !tbaa !23
  %t11 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eHas_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t7, i32 %t8)
  store i1 %t11, ptr %l11
  br label %bb2
bb2:
  %t12 = load i1, ptr %l11, !tbaa !21
  br i1 %t12, label %bb3, label %bb4
bb3:
  br label %ret
bb4:
  br label %bb5
bb5:
  %t13 = load ptr, ptr %l2, !tbaa !29
  %t14 = load i32, ptr %l3, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t13, i32 %t14)
  br label %bb6
bb6:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load i32, ptr %l3, !tbaa !23
  %t21 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t17, i32 %t18)
  store i32 %t21, ptr %l16
  br label %bb7
bb7:
  %t22 = load i32, ptr %l16, !range !{i32 0, i32 33}
  store i32 %t22, ptr %l4
  %t23 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t25 = trunc i64 19 to i32
  %t26 = icmp eq i32 %t23, %t25
  br i1 %t26, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb13
bb10:
  %t28 = load ptr, ptr %l0, !tbaa !29
  store ptr %t28, ptr %l19, !tbaa !29
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = load i32, ptr %l3, !tbaa !23
  %t33 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t29, i32 %t30)
  store i32 %t33, ptr %l22
  br label %bb11
bb11:
  %t34 = load ptr, ptr %l2, !tbaa !29
  %t35 = load ptr, ptr %l19, !tbaa !29
  %t36 = load i32, ptr %l22, !tbaa !23
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2evalueParts(ptr %v0, ptr %v1, ptr %t35, i32 %t36, ptr %t34)
  br label %bb12
bb12:
  br label %bb59
bb13:
  %t38 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t40 = trunc i64 22 to i32
  %t41 = icmp eq i32 %t38, %t40
  br i1 %t41, label %bb14, label %bb15
bb14:
  br label %bb18
bb15:
  %t43 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t45 = trunc i64 23 to i32
  %t46 = icmp eq i32 %t43, %t45
  br i1 %t46, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb21
bb18:
  %t48 = load ptr, ptr %l0, !tbaa !29
  store ptr %t48, ptr %l28, !tbaa !29
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load i32, ptr %l3, !tbaa !23
  %t53 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t49, i32 %t50)
  store i32 %t53, ptr %l31
  br label %bb19
bb19:
  %t54 = load ptr, ptr %l2, !tbaa !29
  %t55 = load ptr, ptr %l28, !tbaa !29
  %t56 = load i32, ptr %l31, !tbaa !23
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2evaluePartsOf(ptr %v0, ptr %v1, ptr %t55, i32 %t56, ptr %t54)
  br label %bb20
bb20:
  br label %bb59
bb21:
  %t58 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t60 = trunc i64 24 to i32
  %t61 = icmp eq i32 %t58, %t60
  br i1 %t61, label %bb22, label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb27
bb24:
  %t63 = load ptr, ptr %l0, !tbaa !29
  store ptr %t63, ptr %l35, !tbaa !29
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load i32, ptr %l3, !tbaa !23
  %t68 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %v0, ptr %t64, i32 %t65)
  store i32 %t68, ptr %l38
  br label %bb25
bb25:
  %t69 = load ptr, ptr %l2, !tbaa !29
  %t70 = load ptr, ptr %l35, !tbaa !29
  %t71 = load i32, ptr %l38, !tbaa !23
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2evaluePartsOf(ptr %v0, ptr %v1, ptr %t70, i32 %t71, ptr %t69)
  br label %bb26
bb26:
  br label %bb59
bb27:
  %t73 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t75 = trunc i64 18 to i32
  %t76 = icmp eq i32 %t73, %t75
  br i1 %t76, label %bb28, label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb54
bb30:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t79 = load i32, ptr %l3, !tbaa !23
  %t82 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %t78, i32 %t79)
  store i1 %t82, ptr %l44
  br label %bb31
bb31:
  %t83 = load i1, ptr %l44, !tbaa !21
  %t84 = xor i1 %t83, true
  br i1 %t84, label %bb32, label %bb33
bb32:
  br label %ret
bb33:
  br label %bb34
bb34:
  %t86 = load ptr, ptr %l0, !tbaa !29
  store ptr %t86, ptr %l46, !tbaa !29
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t88 = load i32, ptr %l3, !tbaa !23
  %t91 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t87, i32 %t88)
  store i32 %t91, ptr %l49
  br label %bb35
bb35:
  %t92 = load ptr, ptr %l46, !tbaa !29
  %t93 = load i32, ptr %l49, !tbaa !23
  %t94 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t92, i32 %t93)
  store i32 %t94, ptr %l50
  br label %bb36
bb36:
  %t95 = load i32, ptr %l50, !range !{i32 0, i32 6}
  store i32 %t95, ptr %l5
  %t96 = load i32, ptr %l5, !range !{i32 0, i32 6}
  %t98 = trunc i64 0 to i32
  %t99 = icmp eq i32 %t96, %t98
  br i1 %t99, label %bb37, label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb42
bb39:
  %t101 = load ptr, ptr %l0, !tbaa !29
  store ptr %t101, ptr %l53, !tbaa !29
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t103 = load i32, ptr %l3, !tbaa !23
  %t106 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t102, i32 %t103)
  store i32 %t106, ptr %l56
  br label %bb40
bb40:
  %t107 = load ptr, ptr %l2, !tbaa !29
  %t108 = load ptr, ptr %l53, !tbaa !29
  %t109 = load i32, ptr %l56, !tbaa !23
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2evaluePartsOf(ptr %v0, ptr %v1, ptr %t108, i32 %t109, ptr %t107)
  br label %bb41
bb41:
  br label %bb53
bb42:
  %t111 = load i32, ptr %l5, !range !{i32 0, i32 6}
  %t113 = trunc i64 1 to i32
  %t114 = icmp eq i32 %t111, %t113
  br i1 %t114, label %bb43, label %bb44
bb43:
  br label %bb45
bb44:
  br label %bb48
bb45:
  %t116 = load ptr, ptr %l0, !tbaa !29
  store ptr %t116, ptr %l60, !tbaa !29
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t118 = load i32, ptr %l3, !tbaa !23
  %t121 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t117, i32 %t118)
  store i32 %t121, ptr %l63
  br label %bb46
bb46:
  %t122 = load ptr, ptr %l2, !tbaa !29
  %t123 = load ptr, ptr %l60, !tbaa !29
  %t124 = load i32, ptr %l63, !tbaa !23
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2evaluePartsOf(ptr %v0, ptr %v1, ptr %t123, i32 %t124, ptr %t122)
  br label %bb47
bb47:
  br label %bb53
bb48:
  br i1 true, label %bb49, label %bb50
bb49:
  br label %bb51
bb50:
  br label %bb52
bb51:
  br label %bb53
bb52:
  call void @__olang_check_failed(ptr @olang_loc_67164133c3d62985_23e986a03672eb11)
  unreachable
bb53:
  br label %bb59
bb54:
  br i1 true, label %bb55, label %bb56
bb55:
  br label %bb57
bb56:
  br label %bb58
bb57:
  br label %bb59
bb58:
  call void @__olang_check_failed(ptr @olang_loc_e75b62ac711792d4_a1f22b7e9dd80a80)
  unreachable
bb59:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3acodeWalk_2enamed(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca i32
  %l6 = alloca ptr
  %l9 = alloca i1
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l16 = alloca i32
  %l18 = alloca i32
  %l19 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca ptr
  %l26 = alloca i32
  %l27 = alloca i1
  %l30 = alloca ptr
  %l31 = alloca ptr
  %l34 = alloca i32
  %l35 = alloca i1
  %l38 = alloca ptr
  %l39 = alloca ptr
  %l42 = alloca i32
  %l43 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/types:codeWalk", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  store ptr %t6, ptr %l6, !tbaa !29
  %t7 = load i32, ptr %l1, !tbaa !23
  %t8 = load ptr, ptr %l6, !tbaa !29
  %t9 = call ptr @__olang_scope_or(ptr %v1, ptr %t8)
  %t10 = ptrtoint ptr %t9 to i64
  %t12 = inttoptr i64 %t10 to ptr
  %t13 = load ptr, ptr %l6, !tbaa !29
  %t15 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %t12, ptr %t13, i32 %t7)
  store i1 %t15, ptr %l9
  br label %bb1
bb1:
  %t16 = load i1, ptr %l9, !tbaa !21
  %t17 = xor i1 %t16, true
  br i1 %t17, label %bb2, label %bb3
bb2:
  store i1 true, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t20 = load ptr, ptr %l2, !tbaa !29
  store ptr %t20, ptr %l12, !tbaa !29
  %t21 = load ptr, ptr %l2, !tbaa !29
  store ptr %t21, ptr %l13, !tbaa !29
  %t22 = load i32, ptr %l1, !tbaa !23
  %t23 = load ptr, ptr %l13, !tbaa !29
  %t24 = call ptr @__olang_scope_or(ptr %v1, ptr %t23)
  %t25 = ptrtoint ptr %t24 to i64
  %t27 = inttoptr i64 %t25 to ptr
  %t28 = load ptr, ptr %l13, !tbaa !29
  %t30 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %t27, ptr %t28, i32 %t22)
  store i32 %t30, ptr %l16
  br label %bb5
bb5:
  %t31 = load ptr, ptr %l12, !tbaa !29
  %t32 = call ptr @__olang_scope_or(ptr %v1, ptr %t31)
  %t33 = ptrtoint ptr %t32 to i64
  %t35 = inttoptr i64 %t33 to ptr
  %t36 = load ptr, ptr %l12, !tbaa !29
  %t37 = load i32, ptr %l16, !tbaa !23
  %t38 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %t35, ptr %t36, i32 %t37)
  store i32 %t38, ptr %l18
  br label %bb6
bb6:
  %t39 = load i32, ptr %l18, !range !{i32 0, i32 6}
  store i32 %t39, ptr %l3
  %t40 = load i32, ptr %l3, !range !{i32 0, i32 6}
  %t42 = trunc i64 0 to i32
  %t43 = icmp eq i32 %t40, %t42
  br i1 %t43, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb12
bb9:
  %t45 = load ptr, ptr %l0, !tbaa !29
  store ptr %t45, ptr %l22, !tbaa !29
  %t46 = load ptr, ptr %l2, !tbaa !29
  store ptr %t46, ptr %l23, !tbaa !29
  %t47 = load i32, ptr %l1, !tbaa !23
  %t48 = load ptr, ptr %l23, !tbaa !29
  %t49 = call ptr @__olang_scope_or(ptr %v1, ptr %t48)
  %t50 = ptrtoint ptr %t49 to i64
  %t52 = inttoptr i64 %t50 to ptr
  %t53 = load ptr, ptr %l23, !tbaa !29
  %t55 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %t52, ptr %t53, i32 %t47)
  store i32 %t55, ptr %l26
  br label %bb10
bb10:
  %t56 = load ptr, ptr %l22, !tbaa !29
  %t57 = load i32, ptr %l26, !tbaa !23
  %t58 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3acodeWalk_2esome(ptr %v0, ptr %v1, ptr %t56, i32 %t57)
  store i1 %t58, ptr %l27
  br label %bb11
bb11:
  %t59 = load i1, ptr %l27, !tbaa !21
  store i1 %t59, ptr %l19, !tbaa !21
  br label %bb29
bb12:
  %t60 = load i32, ptr %l3, !range !{i32 0, i32 6}
  %t62 = trunc i64 1 to i32
  %t63 = icmp eq i32 %t60, %t62
  br i1 %t63, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb18
bb15:
  %t65 = load ptr, ptr %l0, !tbaa !29
  store ptr %t65, ptr %l30, !tbaa !29
  %t66 = load ptr, ptr %l2, !tbaa !29
  store ptr %t66, ptr %l31, !tbaa !29
  %t67 = load i32, ptr %l1, !tbaa !23
  %t68 = load ptr, ptr %l31, !tbaa !29
  %t69 = call ptr @__olang_scope_or(ptr %v1, ptr %t68)
  %t70 = ptrtoint ptr %t69 to i64
  %t72 = inttoptr i64 %t70 to ptr
  %t73 = load ptr, ptr %l31, !tbaa !29
  %t75 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %t72, ptr %t73, i32 %t67)
  store i32 %t75, ptr %l34
  br label %bb16
bb16:
  %t76 = load ptr, ptr %l30, !tbaa !29
  %t77 = load i32, ptr %l34, !tbaa !23
  %t78 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3acodeWalk_2esome(ptr %v0, ptr %v1, ptr %t76, i32 %t77)
  store i1 %t78, ptr %l35
  br label %bb17
bb17:
  %t79 = load i1, ptr %l35, !tbaa !21
  store i1 %t79, ptr %l19, !tbaa !21
  br label %bb29
bb18:
  %t80 = load i32, ptr %l3, !range !{i32 0, i32 6}
  %t82 = trunc i64 4 to i32
  %t83 = icmp eq i32 %t80, %t82
  br i1 %t83, label %bb19, label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb24
bb21:
  %t85 = load ptr, ptr %l0, !tbaa !29
  store ptr %t85, ptr %l38, !tbaa !29
  %t86 = load ptr, ptr %l2, !tbaa !29
  store ptr %t86, ptr %l39, !tbaa !29
  %t87 = load i32, ptr %l1, !tbaa !23
  %t88 = load ptr, ptr %l39, !tbaa !29
  %t89 = call ptr @__olang_scope_or(ptr %v1, ptr %t88)
  %t90 = ptrtoint ptr %t89 to i64
  %t92 = inttoptr i64 %t90 to ptr
  %t93 = load ptr, ptr %l39, !tbaa !29
  %t95 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %t92, ptr %t93, i32 %t87)
  store i32 %t95, ptr %l42
  br label %bb22
bb22:
  %t96 = load ptr, ptr %l38, !tbaa !29
  %t97 = load i32, ptr %l42, !tbaa !23
  %t98 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3acodeWalk_2ereaches(ptr %v0, ptr %v1, ptr %t96, i32 %t97)
  store i1 %t98, ptr %l43
  br label %bb23
bb23:
  %t99 = load i1, ptr %l43, !tbaa !21
  store i1 %t99, ptr %l19, !tbaa !21
  br label %bb29
bb24:
  br i1 true, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb29
bb28:
  call void @__olang_check_failed(ptr @olang_loc_99f937c00427181_9a6d61fc7809e035)
  unreachable
bb29:
  %t100 = load i1, ptr %l19, !tbaa !21
  store i1 %t100, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3acodeWalk_2ereaches(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca i32
  %l6 = alloca ptr
  %l9 = alloca i1
  %l10 = alloca i1
  %l14 = alloca i1
  %l16 = alloca ptr
  %l19 = alloca i32
  %l22 = alloca i1
  %l25 = alloca i1
  %l31 = alloca i1
  %l34 = alloca i1
  %l35 = alloca ptr
  %l38 = alloca i64
  %l46 = alloca i1
  %l49 = alloca ptr
  %l50 = alloca ptr
  %l53 = alloca i32
  %l54 = alloca i1
  %l57 = alloca ptr
  %l58 = alloca ptr
  %l61 = alloca i32
  %l62 = alloca i1
  %l67 = alloca ptr
  %l68 = alloca ptr
  %l71 = alloca i32
  %l72 = alloca i1
  %l75 = alloca ptr
  %l76 = alloca ptr
  %l79 = alloca i32
  %l80 = alloca i1
  %l85 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/types:codeWalk", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  store ptr %t6, ptr %l6, !tbaa !29
  %t7 = load i32, ptr %l1, !tbaa !23
  %t8 = load ptr, ptr %l6, !tbaa !29
  %t9 = call ptr @__olang_scope_or(ptr %v1, ptr %t8)
  %t10 = ptrtoint ptr %t9 to i64
  %t12 = inttoptr i64 %t10 to ptr
  %t13 = load ptr, ptr %l6, !tbaa !29
  %t15 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eForeignRef(ptr %t12, ptr %t13, i32 %t7)
  store i1 %t15, ptr %l9
  br label %bb1
bb1:
  %t16 = load i1, ptr %l9, !tbaa !21
  br i1 %t16, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb5
bb3:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/types:codeWalk", ptr %t17, i32 0, i32 2
  %t20 = load i32, ptr %l1, !tbaa !23
  %t23 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eHas_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t19, i32 %t20)
  store i1 %t23, ptr %l14
  br label %bb4
bb4:
  %t24 = load i1, ptr %l14, !tbaa !21
  store i1 %t24, ptr %l10, !tbaa !21
  br label %bb5
bb5:
  %t25 = load i1, ptr %l10, !tbaa !21
  br i1 %t25, label %bb6, label %bb7
bb6:
  store i1 false, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t27 = load ptr, ptr %l2, !tbaa !29
  store ptr %t27, ptr %l16, !tbaa !29
  %t28 = load i32, ptr %l1, !tbaa !23
  %t29 = load ptr, ptr %l16, !tbaa !29
  %t30 = call ptr @__olang_scope_or(ptr %v1, ptr %t29)
  %t31 = ptrtoint ptr %t30 to i64
  %t33 = inttoptr i64 %t31 to ptr
  %t34 = load ptr, ptr %l16, !tbaa !29
  %t36 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %t33, ptr %t34, i32 %t28)
  store i32 %t36, ptr %l19
  br label %bb9
bb9:
  %t37 = load i32, ptr %l19, !range !{i32 0, i32 33}
  store i32 %t37, ptr %l3
  %t38 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t40 = trunc i64 21 to i32
  %t41 = icmp eq i32 %t38, %t40
  br i1 %t41, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb12
bb11:
  %t43 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t45 = trunc i64 25 to i32
  %t46 = icmp eq i32 %t43, %t45
  store i1 %t46, ptr %l22, !tbaa !21
  br label %bb12
bb12:
  %t48 = load i1, ptr %l22, !tbaa !21
  br i1 %t48, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l25, !tbaa !21
  br label %bb15
bb14:
  %t49 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t51 = trunc i64 29 to i32
  %t52 = icmp eq i32 %t49, %t51
  store i1 %t52, ptr %l25, !tbaa !21
  br label %bb15
bb15:
  %t54 = load i1, ptr %l25, !tbaa !21
  br i1 %t54, label %bb16, label %bb17
bb16:
  store i1 true, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/types:codeWalk", ptr %t56, i32 0, i32 1
  %t59 = load i1, ptr %t58, !tbaa !21
  br i1 %t59, label %bb19, label %bb20
bb19:
  %t61 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t63 = trunc i64 20 to i32
  %t64 = icmp eq i32 %t61, %t63
  store i1 %t64, ptr %l31, !tbaa !21
  br label %bb21
bb20:
  store i1 false, ptr %l31, !tbaa !21
  br label %bb21
bb21:
  %t66 = load i1, ptr %l31, !tbaa !21
  br i1 %t66, label %bb22, label %bb23
bb22:
  %t67 = load ptr, ptr %l2, !tbaa !29
  store ptr %t67, ptr %l35, !tbaa !29
  %t68 = load i32, ptr %l1, !tbaa !23
  %t69 = load ptr, ptr %l35, !tbaa !29
  %t70 = call ptr @__olang_scope_or(ptr %v1, ptr %t69)
  %t71 = ptrtoint ptr %t70 to i64
  %t73 = inttoptr i64 %t71 to ptr
  %t74 = load ptr, ptr %l35, !tbaa !29
  %t76 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %t73, ptr %t74, i32 %t68)
  store i64 %t76, ptr %l38
  br label %bb24
bb23:
  store i1 false, ptr %l34, !tbaa !21
  br label %bb25
bb24:
  %t77 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t78 = load i64, ptr %l38, !tbaa !24
  %t80 = and i64 %t78, %t77
  %t82 = icmp ne i64 %t80, 0
  store i1 %t82, ptr %l34, !tbaa !21
  br label %bb25
bb25:
  %t84 = load i1, ptr %l34, !tbaa !21
  br i1 %t84, label %bb26, label %bb27
bb26:
  store i1 true, ptr %rv
  br label %ret
bb27:
  br label %bb28
bb28:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/types:codeWalk", ptr %t86, i32 0, i32 2
  %t89 = load i32, ptr %l1, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t88, i32 %t89)
  br label %bb29
bb29:
  %t92 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t94 = trunc i64 20 to i32
  %t95 = icmp eq i32 %t92, %t94
  br i1 %t95, label %bb30, label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb35
bb32:
  %t97 = load ptr, ptr %l0, !tbaa !29
  store ptr %t97, ptr %l49, !tbaa !29
  %t98 = load ptr, ptr %l2, !tbaa !29
  store ptr %t98, ptr %l50, !tbaa !29
  %t99 = load i32, ptr %l1, !tbaa !23
  %t100 = load ptr, ptr %l50, !tbaa !29
  %t101 = call ptr @__olang_scope_or(ptr %v1, ptr %t100)
  %t102 = ptrtoint ptr %t101 to i64
  %t104 = inttoptr i64 %t102 to ptr
  %t105 = load ptr, ptr %l50, !tbaa !29
  %t107 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %t104, ptr %t105, i32 %t99)
  store i32 %t107, ptr %l53
  br label %bb33
bb33:
  %t108 = load ptr, ptr %l49, !tbaa !29
  %t109 = load i32, ptr %l53, !tbaa !23
  %t110 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3acodeWalk_2ereaches(ptr %v0, ptr %v1, ptr %t108, i32 %t109)
  store i1 %t110, ptr %l54
  br label %bb34
bb34:
  %t111 = load i1, ptr %l54, !tbaa !21
  store i1 %t111, ptr %l46, !tbaa !21
  br label %bb65
bb35:
  %t112 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t114 = trunc i64 19 to i32
  %t115 = icmp eq i32 %t112, %t114
  br i1 %t115, label %bb36, label %bb37
bb36:
  br label %bb38
bb37:
  br label %bb41
bb38:
  %t117 = load ptr, ptr %l0, !tbaa !29
  store ptr %t117, ptr %l57, !tbaa !29
  %t118 = load ptr, ptr %l2, !tbaa !29
  store ptr %t118, ptr %l58, !tbaa !29
  %t119 = load i32, ptr %l1, !tbaa !23
  %t120 = load ptr, ptr %l58, !tbaa !29
  %t121 = call ptr @__olang_scope_or(ptr %v1, ptr %t120)
  %t122 = ptrtoint ptr %t121 to i64
  %t124 = inttoptr i64 %t122 to ptr
  %t125 = load ptr, ptr %l58, !tbaa !29
  %t127 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %t124, ptr %t125, i32 %t119)
  store i32 %t127, ptr %l61
  br label %bb39
bb39:
  %t128 = load ptr, ptr %l57, !tbaa !29
  %t129 = load i32, ptr %l61, !tbaa !23
  %t130 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3acodeWalk_2ereaches(ptr %v0, ptr %v1, ptr %t128, i32 %t129)
  store i1 %t130, ptr %l62
  br label %bb40
bb40:
  %t131 = load i1, ptr %l62, !tbaa !21
  store i1 %t131, ptr %l46, !tbaa !21
  br label %bb65
bb41:
  %t132 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t134 = trunc i64 22 to i32
  %t135 = icmp eq i32 %t132, %t134
  br i1 %t135, label %bb42, label %bb43
bb42:
  br label %bb46
bb43:
  %t137 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t139 = trunc i64 23 to i32
  %t140 = icmp eq i32 %t137, %t139
  br i1 %t140, label %bb44, label %bb45
bb44:
  br label %bb46
bb45:
  br label %bb49
bb46:
  %t142 = load ptr, ptr %l0, !tbaa !29
  store ptr %t142, ptr %l67, !tbaa !29
  %t143 = load ptr, ptr %l2, !tbaa !29
  store ptr %t143, ptr %l68, !tbaa !29
  %t144 = load i32, ptr %l1, !tbaa !23
  %t145 = load ptr, ptr %l68, !tbaa !29
  %t146 = call ptr @__olang_scope_or(ptr %v1, ptr %t145)
  %t147 = ptrtoint ptr %t146 to i64
  %t149 = inttoptr i64 %t147 to ptr
  %t150 = load ptr, ptr %l68, !tbaa !29
  %t152 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %t149, ptr %t150, i32 %t144)
  store i32 %t152, ptr %l71
  br label %bb47
bb47:
  %t153 = load ptr, ptr %l67, !tbaa !29
  %t154 = load i32, ptr %l71, !tbaa !23
  %t155 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3acodeWalk_2esome(ptr %v0, ptr %v1, ptr %t153, i32 %t154)
  store i1 %t155, ptr %l72
  br label %bb48
bb48:
  %t156 = load i1, ptr %l72, !tbaa !21
  store i1 %t156, ptr %l46, !tbaa !21
  br label %bb65
bb49:
  %t157 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t159 = trunc i64 24 to i32
  %t160 = icmp eq i32 %t157, %t159
  br i1 %t160, label %bb50, label %bb51
bb50:
  br label %bb52
bb51:
  br label %bb55
bb52:
  %t162 = load ptr, ptr %l0, !tbaa !29
  store ptr %t162, ptr %l75, !tbaa !29
  %t163 = load ptr, ptr %l2, !tbaa !29
  store ptr %t163, ptr %l76, !tbaa !29
  %t164 = load i32, ptr %l1, !tbaa !23
  %t165 = load ptr, ptr %l76, !tbaa !29
  %t166 = call ptr @__olang_scope_or(ptr %v1, ptr %t165)
  %t167 = ptrtoint ptr %t166 to i64
  %t169 = inttoptr i64 %t167 to ptr
  %t170 = load ptr, ptr %l76, !tbaa !29
  %t172 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %t169, ptr %t170, i32 %t164)
  store i32 %t172, ptr %l79
  br label %bb53
bb53:
  %t173 = load ptr, ptr %l75, !tbaa !29
  %t174 = load i32, ptr %l79, !tbaa !23
  %t175 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3acodeWalk_2esome(ptr %v0, ptr %v1, ptr %t173, i32 %t174)
  store i1 %t175, ptr %l80
  br label %bb54
bb54:
  %t176 = load i1, ptr %l80, !tbaa !21
  store i1 %t176, ptr %l46, !tbaa !21
  br label %bb65
bb55:
  %t177 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t179 = trunc i64 18 to i32
  %t180 = icmp eq i32 %t177, %t179
  br i1 %t180, label %bb56, label %bb57
bb56:
  br label %bb58
bb57:
  br label %bb60
bb58:
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t183 = load i32, ptr %l1, !tbaa !23
  %t186 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3acodeWalk_2enamed(ptr %v0, ptr %v1, ptr %t182, i32 %t183)
  store i1 %t186, ptr %l85
  br label %bb59
bb59:
  %t187 = load i1, ptr %l85, !tbaa !21
  store i1 %t187, ptr %l46, !tbaa !21
  br label %bb65
bb60:
  br i1 true, label %bb61, label %bb62
bb61:
  br label %bb63
bb62:
  br label %bb64
bb63:
  store i1 false, ptr %l46, !tbaa !21
  br label %bb65
bb64:
  call void @__olang_check_failed(ptr @olang_loc_60c82cde6ffdb5d3_c68082b86ff4ff17)
  unreachable
bb65:
  %t188 = load i1, ptr %l46, !tbaa !21
  store i1 %t188, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3arefWalk_2enamed(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca i32
  %l6 = alloca ptr
  %l9 = alloca i1
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l16 = alloca i32
  %l18 = alloca i32
  %l19 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca ptr
  %l26 = alloca i32
  %l27 = alloca i1
  %l30 = alloca ptr
  %l31 = alloca ptr
  %l34 = alloca i32
  %l35 = alloca i1
  %l38 = alloca ptr
  %l39 = alloca ptr
  %l42 = alloca i32
  %l43 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/types:refWalk", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  store ptr %t6, ptr %l6, !tbaa !29
  %t7 = load i32, ptr %l1, !tbaa !23
  %t8 = load ptr, ptr %l6, !tbaa !29
  %t9 = call ptr @__olang_scope_or(ptr %v1, ptr %t8)
  %t10 = ptrtoint ptr %t9 to i64
  %t12 = inttoptr i64 %t10 to ptr
  %t13 = load ptr, ptr %l6, !tbaa !29
  %t15 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %t12, ptr %t13, i32 %t7)
  store i1 %t15, ptr %l9
  br label %bb1
bb1:
  %t16 = load i1, ptr %l9, !tbaa !21
  %t17 = xor i1 %t16, true
  br i1 %t17, label %bb2, label %bb3
bb2:
  store i1 true, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t20 = load ptr, ptr %l2, !tbaa !29
  store ptr %t20, ptr %l12, !tbaa !29
  %t21 = load ptr, ptr %l2, !tbaa !29
  store ptr %t21, ptr %l13, !tbaa !29
  %t22 = load i32, ptr %l1, !tbaa !23
  %t23 = load ptr, ptr %l13, !tbaa !29
  %t24 = call ptr @__olang_scope_or(ptr %v1, ptr %t23)
  %t25 = ptrtoint ptr %t24 to i64
  %t27 = inttoptr i64 %t25 to ptr
  %t28 = load ptr, ptr %l13, !tbaa !29
  %t30 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %t27, ptr %t28, i32 %t22)
  store i32 %t30, ptr %l16
  br label %bb5
bb5:
  %t31 = load ptr, ptr %l12, !tbaa !29
  %t32 = call ptr @__olang_scope_or(ptr %v1, ptr %t31)
  %t33 = ptrtoint ptr %t32 to i64
  %t35 = inttoptr i64 %t33 to ptr
  %t36 = load ptr, ptr %l12, !tbaa !29
  %t37 = load i32, ptr %l16, !tbaa !23
  %t38 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %t35, ptr %t36, i32 %t37)
  store i32 %t38, ptr %l18
  br label %bb6
bb6:
  %t39 = load i32, ptr %l18, !range !{i32 0, i32 6}
  store i32 %t39, ptr %l3
  %t40 = load i32, ptr %l3, !range !{i32 0, i32 6}
  %t42 = trunc i64 0 to i32
  %t43 = icmp eq i32 %t40, %t42
  br i1 %t43, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb12
bb9:
  %t45 = load ptr, ptr %l0, !tbaa !29
  store ptr %t45, ptr %l22, !tbaa !29
  %t46 = load ptr, ptr %l2, !tbaa !29
  store ptr %t46, ptr %l23, !tbaa !29
  %t47 = load i32, ptr %l1, !tbaa !23
  %t48 = load ptr, ptr %l23, !tbaa !29
  %t49 = call ptr @__olang_scope_or(ptr %v1, ptr %t48)
  %t50 = ptrtoint ptr %t49 to i64
  %t52 = inttoptr i64 %t50 to ptr
  %t53 = load ptr, ptr %l23, !tbaa !29
  %t55 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %t52, ptr %t53, i32 %t47)
  store i32 %t55, ptr %l26
  br label %bb10
bb10:
  %t56 = load ptr, ptr %l22, !tbaa !29
  %t57 = load i32, ptr %l26, !tbaa !23
  %t58 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3arefWalk_2esome(ptr %v0, ptr %v1, ptr %v2, ptr %t56, i32 %t57)
  store i1 %t58, ptr %l27
  br label %bb11
bb11:
  %t59 = load i1, ptr %l27, !tbaa !21
  store i1 %t59, ptr %l19, !tbaa !21
  br label %bb29
bb12:
  %t60 = load i32, ptr %l3, !range !{i32 0, i32 6}
  %t62 = trunc i64 1 to i32
  %t63 = icmp eq i32 %t60, %t62
  br i1 %t63, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb18
bb15:
  %t65 = load ptr, ptr %l0, !tbaa !29
  store ptr %t65, ptr %l30, !tbaa !29
  %t66 = load ptr, ptr %l2, !tbaa !29
  store ptr %t66, ptr %l31, !tbaa !29
  %t67 = load i32, ptr %l1, !tbaa !23
  %t68 = load ptr, ptr %l31, !tbaa !29
  %t69 = call ptr @__olang_scope_or(ptr %v1, ptr %t68)
  %t70 = ptrtoint ptr %t69 to i64
  %t72 = inttoptr i64 %t70 to ptr
  %t73 = load ptr, ptr %l31, !tbaa !29
  %t75 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %t72, ptr %t73, i32 %t67)
  store i32 %t75, ptr %l34
  br label %bb16
bb16:
  %t76 = load ptr, ptr %l30, !tbaa !29
  %t77 = load i32, ptr %l34, !tbaa !23
  %t78 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3arefWalk_2esome(ptr %v0, ptr %v1, ptr %v2, ptr %t76, i32 %t77)
  store i1 %t78, ptr %l35
  br label %bb17
bb17:
  %t79 = load i1, ptr %l35, !tbaa !21
  store i1 %t79, ptr %l19, !tbaa !21
  br label %bb29
bb18:
  %t80 = load i32, ptr %l3, !range !{i32 0, i32 6}
  %t82 = trunc i64 4 to i32
  %t83 = icmp eq i32 %t80, %t82
  br i1 %t83, label %bb19, label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb24
bb21:
  %t85 = load ptr, ptr %l0, !tbaa !29
  store ptr %t85, ptr %l38, !tbaa !29
  %t86 = load ptr, ptr %l2, !tbaa !29
  store ptr %t86, ptr %l39, !tbaa !29
  %t87 = load i32, ptr %l1, !tbaa !23
  %t88 = load ptr, ptr %l39, !tbaa !29
  %t89 = call ptr @__olang_scope_or(ptr %v1, ptr %t88)
  %t90 = ptrtoint ptr %t89 to i64
  %t92 = inttoptr i64 %t90 to ptr
  %t93 = load ptr, ptr %l39, !tbaa !29
  %t95 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %t92, ptr %t93, i32 %t87)
  store i32 %t95, ptr %l42
  br label %bb22
bb22:
  %t96 = load ptr, ptr %l38, !tbaa !29
  %t97 = load i32, ptr %l42, !tbaa !23
  %t98 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3arefWalk_2ereaches(ptr %v0, ptr %v1, ptr %v2, ptr %t96, i32 %t97)
  store i1 %t98, ptr %l43
  br label %bb23
bb23:
  %t99 = load i1, ptr %l43, !tbaa !21
  store i1 %t99, ptr %l19, !tbaa !21
  br label %bb29
bb24:
  br i1 true, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb29
bb28:
  call void @__olang_check_failed(ptr @olang_loc_322c78cc145e2005_c2be1492b317e4d9)
  unreachable
bb29:
  %t100 = load i1, ptr %l19, !tbaa !21
  store i1 %t100, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3arefWalk_2ereaches(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca i32
  %l6 = alloca ptr
  %l9 = alloca i1
  %l10 = alloca i1
  %l14 = alloca i1
  %l16 = alloca ptr
  %l19 = alloca i32
  %l22 = alloca i1
  %l25 = alloca i1
  %l28 = alloca i1
  %l35 = alloca i1
  %l38 = alloca ptr
  %l39 = alloca ptr
  %l42 = alloca i32
  %l43 = alloca i1
  %l44 = alloca i1
  %l45 = alloca ptr
  %l46 = alloca ptr
  %l49 = alloca i32
  %l50 = alloca i1
  %l53 = alloca ptr
  %l54 = alloca ptr
  %l57 = alloca i32
  %l58 = alloca i1
  %l63 = alloca ptr
  %l64 = alloca ptr
  %l67 = alloca i32
  %l68 = alloca i1
  %l71 = alloca ptr
  %l72 = alloca ptr
  %l75 = alloca i32
  %l76 = alloca i1
  %l81 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/types:refWalk", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  store ptr %t6, ptr %l6, !tbaa !29
  %t7 = load i32, ptr %l1, !tbaa !23
  %t8 = load ptr, ptr %l6, !tbaa !29
  %t9 = call ptr @__olang_scope_or(ptr %v1, ptr %t8)
  %t10 = ptrtoint ptr %t9 to i64
  %t12 = inttoptr i64 %t10 to ptr
  %t13 = load ptr, ptr %l6, !tbaa !29
  %t15 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eForeignRef(ptr %t12, ptr %t13, i32 %t7)
  store i1 %t15, ptr %l9
  br label %bb1
bb1:
  %t16 = load i1, ptr %l9, !tbaa !21
  br i1 %t16, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb5
bb3:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/types:refWalk", ptr %t17, i32 0, i32 2
  %t20 = load i32, ptr %l1, !tbaa !23
  %t23 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eHas_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t19, i32 %t20)
  store i1 %t23, ptr %l14
  br label %bb4
bb4:
  %t24 = load i1, ptr %l14, !tbaa !21
  store i1 %t24, ptr %l10, !tbaa !21
  br label %bb5
bb5:
  %t25 = load i1, ptr %l10, !tbaa !21
  br i1 %t25, label %bb6, label %bb7
bb6:
  store i1 false, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t27 = load ptr, ptr %l2, !tbaa !29
  store ptr %t27, ptr %l16, !tbaa !29
  %t28 = load i32, ptr %l1, !tbaa !23
  %t29 = load ptr, ptr %l16, !tbaa !29
  %t30 = call ptr @__olang_scope_or(ptr %v1, ptr %t29)
  %t31 = ptrtoint ptr %t30 to i64
  %t33 = inttoptr i64 %t31 to ptr
  %t34 = load ptr, ptr %l16, !tbaa !29
  %t36 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %t33, ptr %t34, i32 %t28)
  store i32 %t36, ptr %l19
  br label %bb9
bb9:
  %t37 = load i32, ptr %l19, !range !{i32 0, i32 33}
  store i32 %t37, ptr %l3
  %t38 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t40 = trunc i64 21 to i32
  %t41 = icmp eq i32 %t38, %t40
  br i1 %t41, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb12
bb11:
  %t43 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t45 = trunc i64 25 to i32
  %t46 = icmp eq i32 %t43, %t45
  store i1 %t46, ptr %l22, !tbaa !21
  br label %bb12
bb12:
  %t48 = load i1, ptr %l22, !tbaa !21
  br i1 %t48, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l25, !tbaa !21
  br label %bb15
bb14:
  %t49 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t51 = trunc i64 29 to i32
  %t52 = icmp eq i32 %t49, %t51
  store i1 %t52, ptr %l25, !tbaa !21
  br label %bb15
bb15:
  %t54 = load i1, ptr %l25, !tbaa !21
  br i1 %t54, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l28, !tbaa !21
  br label %bb18
bb17:
  %t55 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t57 = trunc i64 0 to i32
  %t58 = icmp eq i32 %t55, %t57
  store i1 %t58, ptr %l28, !tbaa !21
  br label %bb18
bb18:
  %t60 = load i1, ptr %l28, !tbaa !21
  br i1 %t60, label %bb19, label %bb20
bb19:
  store i1 true, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/types:refWalk", ptr %t62, i32 0, i32 2
  %t65 = load i32, ptr %l1, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t64, i32 %t65)
  br label %bb22
bb22:
  %t68 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t70 = trunc i64 20 to i32
  %t71 = icmp eq i32 %t68, %t70
  br i1 %t71, label %bb23, label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb33
bb25:
  %t73 = load ptr, ptr %l0, !tbaa !29
  store ptr %t73, ptr %l38, !tbaa !29
  %t74 = load ptr, ptr %l2, !tbaa !29
  store ptr %t74, ptr %l39, !tbaa !29
  %t75 = load i32, ptr %l1, !tbaa !23
  %t76 = load ptr, ptr %l39, !tbaa !29
  %t77 = call ptr @__olang_scope_or(ptr %v1, ptr %t76)
  %t78 = ptrtoint ptr %t77 to i64
  %t80 = inttoptr i64 %t78 to ptr
  %t81 = load ptr, ptr %l39, !tbaa !29
  %t83 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %t80, ptr %t81, i32 %t75)
  store i32 %t83, ptr %l42
  br label %bb26
bb26:
  %t84 = load ptr, ptr %l38, !tbaa !29
  %t85 = load i32, ptr %l42, !tbaa !23
  %t86 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3arefWalk_2elands(ptr %v0, ptr %v1, ptr %v2, ptr %t84, i32 %t85)
  store i1 %t86, ptr %l43
  br label %bb27
bb27:
  %t87 = load i1, ptr %l43, !tbaa !21
  br i1 %t87, label %bb28, label %bb29
bb28:
  store i1 true, ptr %l44, !tbaa !21
  br label %bb32
bb29:
  %t88 = load ptr, ptr %l0, !tbaa !29
  store ptr %t88, ptr %l45, !tbaa !29
  %t89 = load ptr, ptr %l2, !tbaa !29
  store ptr %t89, ptr %l46, !tbaa !29
  %t90 = load i32, ptr %l1, !tbaa !23
  %t91 = load ptr, ptr %l46, !tbaa !29
  %t92 = call ptr @__olang_scope_or(ptr %v1, ptr %t91)
  %t93 = ptrtoint ptr %t92 to i64
  %t95 = inttoptr i64 %t93 to ptr
  %t96 = load ptr, ptr %l46, !tbaa !29
  %t98 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %t95, ptr %t96, i32 %t90)
  store i32 %t98, ptr %l49
  br label %bb30
bb30:
  %t99 = load ptr, ptr %l45, !tbaa !29
  %t100 = load i32, ptr %l49, !tbaa !23
  %t101 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3arefWalk_2ereaches(ptr %v0, ptr %v1, ptr %v2, ptr %t99, i32 %t100)
  store i1 %t101, ptr %l50
  br label %bb31
bb31:
  %t102 = load i1, ptr %l50, !tbaa !21
  store i1 %t102, ptr %l44, !tbaa !21
  br label %bb32
bb32:
  %t103 = load i1, ptr %l44, !tbaa !21
  store i1 %t103, ptr %l35, !tbaa !21
  br label %bb63
bb33:
  %t104 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t106 = trunc i64 19 to i32
  %t107 = icmp eq i32 %t104, %t106
  br i1 %t107, label %bb34, label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb39
bb36:
  %t109 = load ptr, ptr %l0, !tbaa !29
  store ptr %t109, ptr %l53, !tbaa !29
  %t110 = load ptr, ptr %l2, !tbaa !29
  store ptr %t110, ptr %l54, !tbaa !29
  %t111 = load i32, ptr %l1, !tbaa !23
  %t112 = load ptr, ptr %l54, !tbaa !29
  %t113 = call ptr @__olang_scope_or(ptr %v1, ptr %t112)
  %t114 = ptrtoint ptr %t113 to i64
  %t116 = inttoptr i64 %t114 to ptr
  %t117 = load ptr, ptr %l54, !tbaa !29
  %t119 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %t116, ptr %t117, i32 %t111)
  store i32 %t119, ptr %l57
  br label %bb37
bb37:
  %t120 = load ptr, ptr %l53, !tbaa !29
  %t121 = load i32, ptr %l57, !tbaa !23
  %t122 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3arefWalk_2ereaches(ptr %v0, ptr %v1, ptr %v2, ptr %t120, i32 %t121)
  store i1 %t122, ptr %l58
  br label %bb38
bb38:
  %t123 = load i1, ptr %l58, !tbaa !21
  store i1 %t123, ptr %l35, !tbaa !21
  br label %bb63
bb39:
  %t124 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t126 = trunc i64 22 to i32
  %t127 = icmp eq i32 %t124, %t126
  br i1 %t127, label %bb40, label %bb41
bb40:
  br label %bb44
bb41:
  %t129 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t131 = trunc i64 23 to i32
  %t132 = icmp eq i32 %t129, %t131
  br i1 %t132, label %bb42, label %bb43
bb42:
  br label %bb44
bb43:
  br label %bb47
bb44:
  %t134 = load ptr, ptr %l0, !tbaa !29
  store ptr %t134, ptr %l63, !tbaa !29
  %t135 = load ptr, ptr %l2, !tbaa !29
  store ptr %t135, ptr %l64, !tbaa !29
  %t136 = load i32, ptr %l1, !tbaa !23
  %t137 = load ptr, ptr %l64, !tbaa !29
  %t138 = call ptr @__olang_scope_or(ptr %v1, ptr %t137)
  %t139 = ptrtoint ptr %t138 to i64
  %t141 = inttoptr i64 %t139 to ptr
  %t142 = load ptr, ptr %l64, !tbaa !29
  %t144 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %t141, ptr %t142, i32 %t136)
  store i32 %t144, ptr %l67
  br label %bb45
bb45:
  %t145 = load ptr, ptr %l63, !tbaa !29
  %t146 = load i32, ptr %l67, !tbaa !23
  %t147 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3arefWalk_2esome(ptr %v0, ptr %v1, ptr %v2, ptr %t145, i32 %t146)
  store i1 %t147, ptr %l68
  br label %bb46
bb46:
  %t148 = load i1, ptr %l68, !tbaa !21
  store i1 %t148, ptr %l35, !tbaa !21
  br label %bb63
bb47:
  %t149 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t151 = trunc i64 24 to i32
  %t152 = icmp eq i32 %t149, %t151
  br i1 %t152, label %bb48, label %bb49
bb48:
  br label %bb50
bb49:
  br label %bb53
bb50:
  %t154 = load ptr, ptr %l0, !tbaa !29
  store ptr %t154, ptr %l71, !tbaa !29
  %t155 = load ptr, ptr %l2, !tbaa !29
  store ptr %t155, ptr %l72, !tbaa !29
  %t156 = load i32, ptr %l1, !tbaa !23
  %t157 = load ptr, ptr %l72, !tbaa !29
  %t158 = call ptr @__olang_scope_or(ptr %v1, ptr %t157)
  %t159 = ptrtoint ptr %t158 to i64
  %t161 = inttoptr i64 %t159 to ptr
  %t162 = load ptr, ptr %l72, !tbaa !29
  %t164 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %t161, ptr %t162, i32 %t156)
  store i32 %t164, ptr %l75
  br label %bb51
bb51:
  %t165 = load ptr, ptr %l71, !tbaa !29
  %t166 = load i32, ptr %l75, !tbaa !23
  %t167 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3arefWalk_2esome(ptr %v0, ptr %v1, ptr %v2, ptr %t165, i32 %t166)
  store i1 %t167, ptr %l76
  br label %bb52
bb52:
  %t168 = load i1, ptr %l76, !tbaa !21
  store i1 %t168, ptr %l35, !tbaa !21
  br label %bb63
bb53:
  %t169 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t171 = trunc i64 18 to i32
  %t172 = icmp eq i32 %t169, %t171
  br i1 %t172, label %bb54, label %bb55
bb54:
  br label %bb56
bb55:
  br label %bb58
bb56:
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t175 = load i32, ptr %l1, !tbaa !23
  %t178 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3arefWalk_2enamed(ptr %v0, ptr %v1, ptr %v2, ptr %t174, i32 %t175)
  store i1 %t178, ptr %l81
  br label %bb57
bb57:
  %t179 = load i1, ptr %l81, !tbaa !21
  store i1 %t179, ptr %l35, !tbaa !21
  br label %bb63
bb58:
  br i1 true, label %bb59, label %bb60
bb59:
  br label %bb61
bb60:
  br label %bb62
bb61:
  store i1 false, ptr %l35, !tbaa !21
  br label %bb63
bb62:
  call void @__olang_check_failed(ptr @olang_loc_d452eab293f44e67_f9a4b0317fd8e9b)
  unreachable
bb63:
  %t180 = load i1, ptr %l35, !tbaa !21
  store i1 %t180, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, i64 } @compiler_2ftypes_2ehash128(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i8
  %l15 = alloca { i64, ptr }
  %rv = alloca { i64, i64 }
  br label %start
start:
  br label %bb0
bb0:
  store i64 -3750763034362895579, ptr %l1, !tbaa !65
  store i64 7809847782465536322, ptr %l2, !tbaa !65
  store i64 1099511628211, ptr %l3, !tbaa !65
  store { i64, ptr } %a0, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  store i64 %t5, ptr %l6, !tbaa !24
  br label %bb1
bb1:
  %t7 = load i64, ptr %l5, !tbaa !24
  %t8 = load i64, ptr %l6, !tbaa !24
  %t11 = icmp slt i64 %t7, %t8
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  br label %bb6
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t15, ptr %l15, !tbaa !27
  %t16 = load i64, ptr %l5, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr i8, ptr %t19, i64 %t16
  %t21 = load i8, ptr %t20, !tbaa !32
  store i8 %t21, ptr %l7, !tbaa !22
  %t23 = load i64, ptr %l1, !tbaa !65
  %t24 = load i8, ptr %l7, !tbaa !22
  %t27 = zext i8 %t24 to i64
  %t30 = xor i64 %t23, %t27
  %t31 = load i64, ptr %l3, !tbaa !65
  %t34 = mul i64 %t30, %t31
  store i64 %t34, ptr %l1, !tbaa !65
  %t36 = load i64, ptr %l2, !tbaa !65
  %t37 = load i8, ptr %l7, !tbaa !22
  %t40 = zext i8 %t37 to i64
  %t43 = xor i64 %t36, %t40
  %t44 = load i64, ptr %l3, !tbaa !65
  %t47 = mul i64 %t43, %t44
  store i64 %t47, ptr %l2, !tbaa !65
  %t49 = load i64, ptr %l2, !tbaa !65
  %t50 = load i64, ptr %l2, !tbaa !65
  %t52 = lshr i64 %t50, 29
  %t55 = xor i64 %t49, %t52
  store i64 %t55, ptr %l2, !tbaa !65
  br label %bb5
bb5:
  %t57 = load i64, ptr %l5, !tbaa !24
  %t59 = add i64 %t57, 1
  store i64 %t59, ptr %l5, !tbaa !24
  br label %bb1
bb6:
  %t61 = load i64, ptr %l1, !tbaa !65
  %t62 = load i64, ptr %l2, !tbaa !65
  %t64 = insertvalue { i64, i64 } undef, i64 %t61, 0
  %t66 = insertvalue { i64, i64 } %t64, i64 %t62, 1
  store { i64, i64 } %t66, ptr %rv
  br label %ret
ret:
  %rr = load { i64, i64 }, ptr %rv
  ret { i64, i64 } %rr
}

define dso_local { i64, ptr } @compiler_2ftypes_2ehex2(ptr %v0, i8 %a0) #0 {
entry:
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = zext i8 %a0 to i64
  store i64 %t3, ptr %l2, !tbaa !24
  %t4 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s0, i64 16)
  %t5 = extractvalue { i32, i64 } %t4, 1
  %t6 = extractvalue { i32, i64 } %t4, 0
  store i32 %t6, ptr %l4
  %t7 = icmp ne i32 %t6, 0
  br i1 %t7, label %bb2, label %ok.8, !prof !99
ok.8:
  store i64 %t5, ptr %l3
  br label %bb1
bb1:
  %t9 = load i64, ptr %l2, !tbaa !24
  %t10 = load i64, ptr %l3, !tbaa !24
  %t11 = call { i64, ptr } @std_2fprelude_2ftext_2eI64_2eFormat(ptr %v0, i64 %t9, i64 %t10)
  store { i64, ptr } %t11, ptr %l5
  br label %bb3
bb2:
  call void @__olang_check_failed(ptr @olang_loc_a384a4bbbe0ebea1_23bacf7041e0bcc5)
  unreachable
bb3:
  %t12 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t12, 0
  %t14 = extractvalue { i64, ptr } %t12, 1
  %t15 = mul i64 %t13, 1
  %t16 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t15)
  call void @llvm.memcpy.p0.p0.i64(ptr %t16, ptr %t14, i64 %t15, i1 false)
  %t17 = insertvalue { i64, ptr } undef, i64 %t13, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t16, 1
  %t20 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2ePadStart(ptr %v0, ptr %v0, { i64, ptr } %t18, i64 2, i8 48)
  store { i64, ptr } %t20, ptr %l7
  br label %bb4
bb4:
  %t21 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t22 = extractvalue { i64, ptr } %t21, 0
  store i64 %t22, ptr %l8, !tbaa !24
  %t23 = load i64, ptr %l8, !tbaa !24
  %t24 = mul i64 %t23, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t24)
  %t26 = insertvalue { i64, ptr } undef, i64 %t23, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  store { i64, ptr } %t27, ptr %l9, !tbaa !27
  %t28 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !27
  %t30 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !27
  %t32 = load i64, ptr %l8, !tbaa !24
  %t33 = mul i64 %t32, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t29, ptr %t31, i64 %t33, i1 false)
  call void @__olang_scope_close(ptr %s0)
  %t34 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t34, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2ftypes_2epushPayloads(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i32
  %l13 = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a0, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  store i64 %t5, ptr %l4, !tbaa !24
  br label %bb1
bb1:
  %t7 = load i64, ptr %l3, !tbaa !24
  %t8 = load i64, ptr %l4, !tbaa !24
  %t11 = icmp slt i64 %t7, %t8
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  br label %bb10
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t15, ptr %l13, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr i32, ptr %t19, i64 %t16
  %t21 = load i32, ptr %t20, !tbaa !33
  store i32 %t21, ptr %l5, !tbaa !23
  %t23 = load i32, ptr %l5, !tbaa !23
  %t25 = icmp ne i32 %t23, 0
  br i1 %t25, label %bb5, label %bb6
bb5:
  %t28 = load i32, ptr %l5, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %a1, i32 %t28)
  br label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t31 = load i64, ptr %l3, !tbaa !24
  %t33 = add i64 %t31, 1
  store i64 %t33, ptr %l3, !tbaa !24
  br label %bb1
bb10:
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/types:DtorWalk" @compiler_2ftypes_3aDtorWalk_2ector(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l1 = alloca ptr
  %l4 = alloca i64
  %l6 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"compiler/types:DtorWalk"
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l1, !tbaa !29
  %t3 = ptrtoint ptr %v1 to i64
  store i64 %t3, ptr %l4, !tbaa !24
  %t4 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aDtorWalk_2e1
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = call ptr @__olang_region_make(ptr %v1)
  %t7 = ptrtoint ptr %t6 to i64
  store i64 %t7, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t8 = load i64, ptr %l4
  %t9 = inttoptr i64 %t8 to ptr
  %t10 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e(ptr %t9)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t10, ptr %l6
  br label %bb3
bb3:
  %t11 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aDtorWalk_2e1
  br i1 %t11, label %bb4, label %bb5
bb4:
  %t13 = load i64, ptr %l4
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l6, i32 0, i32 2
  %t16 = load { i64, ptr }, ptr %t15
  %t17 = extractvalue { i64, ptr } %t16, 1
  %t18 = call ptr @__olang_region_or(ptr %t17, ptr null)
  %t19 = icmp ne ptr %t18, null
  %t20 = select i1 %t19, ptr %t18, ptr null
  %t21 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l6, i32 0, i32 1
  %t22 = load { i64, ptr }, ptr %t21
  %t23 = extractvalue { i64, ptr } %t22, 1
  %t24 = call ptr @__olang_region_or(ptr %t23, ptr null)
  %t25 = icmp ne ptr %t24, null
  %t26 = select i1 %t25, ptr %t24, ptr %t20
  %t27 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l6, i32 0, i32 0
  %t28 = load { i64, ptr }, ptr %t27
  %t29 = extractvalue { i64, ptr } %t28, 1
  %t30 = call ptr @__olang_region_or(ptr %t29, ptr null)
  %t31 = icmp ne ptr %t30, null
  %t32 = select i1 %t31, ptr %t30, ptr %t26
  %t33 = icmp eq ptr %t32, %t14
  call void @__olang_region_settle(ptr %t14, i1 %t33)
  br label %bb5
bb5:
  %t34 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l6
  %t35 = load ptr, ptr %l1, !tbaa !29
  %t36 = insertvalue %"compiler/types:DtorWalk" undef, ptr %t35, 0
  %t38 = insertvalue %"compiler/types:DtorWalk" %t36, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t34, 1
  store %"compiler/types:DtorWalk" %t38, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/types:DtorWalk", ptr %rv
  ret %"compiler/types:DtorWalk" %rr
}

define dso_local void @compiler_2ftypes_3aTable_2ector(ptr %out, ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l4 = alloca i1
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l17 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l18 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l19 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l20 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l22 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l23 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l24 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l25 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l26 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l27 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l28 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l29 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l30 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l31 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l32 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l33 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l34 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l35 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l36 = alloca i1
  %l37 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l38 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l39 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l40 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l41 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l42 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l43 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l46 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l47 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l48 = alloca i64
  %l50 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l52 = alloca i64
  %l54 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l56 = alloca i64
  %l58 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l60 = alloca i64
  %l62 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l64 = alloca i64
  %l66 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l68 = alloca i64
  %l70 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l72 = alloca i64
  %l74 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l76 = alloca i64
  %l78 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l80 = alloca i64
  %l82 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l84 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l85 = alloca i64
  %l87 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l89 = alloca i64
  %l91 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l93 = alloca i64
  %l95 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l97 = alloca i64
  %l99 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l101 = alloca i64
  %l103 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l105 = alloca i64
  %l107 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l109 = alloca i64
  %l111 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l113 = alloca i64
  %l115 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l117 = alloca i64
  %l119 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l121 = alloca i64
  %l123 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l125 = alloca i64
  %l127 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l129 = alloca i64
  %l131 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l133 = alloca i64
  %l135 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l137 = alloca i64
  %l139 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l141 = alloca i64
  %l143 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l145 = alloca i64
  %l147 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l149 = alloca i64
  %l151 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l153 = alloca i64
  %l155 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l157 = alloca i64
  %l159 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l161 = alloca i64
  %l163 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l165 = alloca i64
  %l167 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l169 = alloca i64
  %l171 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l173 = alloca i64
  %l175 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l177 = alloca i64
  %l179 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l181 = alloca i64
  %l183 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l185 = alloca i64
  %l187 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l189 = alloca i64
  %l191 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l193 = alloca i64
  %l195 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l197 = alloca i64
  %l199 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l201 = alloca %"compiler/types:Table"
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l1, !tbaa !29
  %t3 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3adata_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %l46
  br label %bb1
bb1:
  %t4 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l46
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l2
  %t5 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3adata_2c_20compiler_2ftypes_3aTypeId_3e(ptr %v1)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t5, ptr %l47
  br label %bb2
bb2:
  %t6 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l47
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t6, ptr %l3
  store i1 false, ptr %l4, !tbaa !21
  %t7 = ptrtoint ptr %v1 to i64
  store i64 %t7, ptr %l48, !tbaa !24
  %t8 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e4
  br i1 %t8, label %bb3, label %bb4
bb3:
  %t10 = call ptr @__olang_region_make(ptr %v1)
  %t11 = ptrtoint ptr %t10 to i64
  store i64 %t11, ptr %l48, !tbaa !24
  br label %bb4
bb4:
  %t12 = load i64, ptr %l48
  %t13 = inttoptr i64 %t12 to ptr
  %t14 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI32_3e_2ector(ptr %t13, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l50
  br label %bb5
bb5:
  %t15 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e4
  br i1 %t15, label %bb6, label %bb7
bb6:
  %t17 = load i64, ptr %l48
  %t18 = inttoptr i64 %t17 to ptr
  %t19 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l50, i32 0, i32 0
  %t20 = load { i64, ptr }, ptr %t19
  %t21 = extractvalue { i64, ptr } %t20, 1
  %t22 = call ptr @__olang_region_or(ptr %t21, ptr null)
  %t23 = icmp ne ptr %t22, null
  %t24 = select i1 %t23, ptr %t22, ptr null
  %t25 = icmp eq ptr %t24, %t18
  call void @__olang_region_settle(ptr %t18, i1 %t25)
  br label %bb7
bb7:
  %t26 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l50
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t26, ptr %l5
  %t27 = ptrtoint ptr %v1 to i64
  store i64 %t27, ptr %l52, !tbaa !24
  %t28 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e5
  br i1 %t28, label %bb8, label %bb9
bb8:
  %t30 = call ptr @__olang_region_make(ptr %v1)
  %t31 = ptrtoint ptr %t30 to i64
  store i64 %t31, ptr %l52, !tbaa !24
  br label %bb9
bb9:
  %t32 = load i64, ptr %l52
  %t33 = inttoptr i64 %t32 to ptr
  %t34 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2ftypes_3aTypeId_3e_26_3e_2ector(ptr %t33, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t34, ptr %l54
  br label %bb10
bb10:
  %t35 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e5
  br i1 %t35, label %bb11, label %bb12
bb11:
  %t37 = load i64, ptr %l52
  %t38 = inttoptr i64 %t37 to ptr
  %t39 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l54, i32 0, i32 0
  %t40 = load { i64, ptr }, ptr %t39
  %t41 = extractvalue { i64, ptr } %t40, 1
  %t42 = call ptr @__olang_region_or(ptr %t41, ptr null)
  %t43 = icmp ne ptr %t42, null
  %t44 = select i1 %t43, ptr %t42, ptr null
  %t45 = icmp eq ptr %t44, %t38
  call void @__olang_region_settle(ptr %t38, i1 %t45)
  br label %bb12
bb12:
  %t46 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l54
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t46, ptr %l6
  %t47 = ptrtoint ptr %v1 to i64
  store i64 %t47, ptr %l56, !tbaa !24
  %t48 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e6
  br i1 %t48, label %bb13, label %bb14
bb13:
  %t50 = call ptr @__olang_region_make(ptr %v1)
  %t51 = ptrtoint ptr %t50 to i64
  store i64 %t51, ptr %l56, !tbaa !24
  br label %bb14
bb14:
  %t52 = load i64, ptr %l56
  %t53 = inttoptr i64 %t52 to ptr
  %t54 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cArray_3ccompiler_2ftypes_3_H67866d893b0e235fefa60e815142be68(ptr %t53)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t54, ptr %l58
  br label %bb15
bb15:
  %t55 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e6
  br i1 %t55, label %bb16, label %bb17
bb16:
  %t57 = load i64, ptr %l56
  %t58 = inttoptr i64 %t57 to ptr
  %t59 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l58, i32 0, i32 2
  %t60 = load { i64, ptr }, ptr %t59
  %t61 = extractvalue { i64, ptr } %t60, 1
  %t62 = call ptr @__olang_region_or(ptr %t61, ptr null)
  %t63 = icmp ne ptr %t62, null
  %t64 = select i1 %t63, ptr %t62, ptr null
  %t65 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l58, i32 0, i32 1
  %t66 = load { i64, ptr }, ptr %t65
  %t67 = extractvalue { i64, ptr } %t66, 1
  %t68 = call ptr @__olang_region_or(ptr %t67, ptr null)
  %t69 = icmp ne ptr %t68, null
  %t70 = select i1 %t69, ptr %t68, ptr %t64
  %t71 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l58, i32 0, i32 0
  %t72 = load { i64, ptr }, ptr %t71
  %t73 = extractvalue { i64, ptr } %t72, 1
  %t74 = call ptr @__olang_region_or(ptr %t73, ptr null)
  %t75 = icmp ne ptr %t74, null
  %t76 = select i1 %t75, ptr %t74, ptr %t70
  %t77 = icmp eq ptr %t76, %t58
  call void @__olang_region_settle(ptr %t58, i1 %t77)
  br label %bb17
bb17:
  %t78 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l58
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t78, ptr %l7
  %t79 = ptrtoint ptr %v1 to i64
  store i64 %t79, ptr %l60, !tbaa !24
  %t80 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e7
  br i1 %t80, label %bb18, label %bb19
bb18:
  %t82 = call ptr @__olang_region_make(ptr %v1)
  %t83 = ptrtoint ptr %t82 to i64
  store i64 %t83, ptr %l60, !tbaa !24
  br label %bb19
bb19:
  %t84 = load i64, ptr %l60
  %t85 = inttoptr i64 %t84 to ptr
  %t86 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fsource_3aNameId_3e_26_3e_2ector(ptr %t85, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t86, ptr %l62
  br label %bb20
bb20:
  %t87 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e7
  br i1 %t87, label %bb21, label %bb22
bb21:
  %t89 = load i64, ptr %l60
  %t90 = inttoptr i64 %t89 to ptr
  %t91 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l62, i32 0, i32 0
  %t92 = load { i64, ptr }, ptr %t91
  %t93 = extractvalue { i64, ptr } %t92, 1
  %t94 = call ptr @__olang_region_or(ptr %t93, ptr null)
  %t95 = icmp ne ptr %t94, null
  %t96 = select i1 %t95, ptr %t94, ptr null
  %t97 = icmp eq ptr %t96, %t90
  call void @__olang_region_settle(ptr %t90, i1 %t97)
  br label %bb22
bb22:
  %t98 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l62
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t98, ptr %l8
  %t99 = ptrtoint ptr %v1 to i64
  store i64 %t99, ptr %l64, !tbaa !24
  %t100 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e8
  br i1 %t100, label %bb23, label %bb24
bb23:
  %t102 = call ptr @__olang_region_make(ptr %v1)
  %t103 = ptrtoint ptr %t102 to i64
  store i64 %t103, ptr %l64, !tbaa !24
  br label %bb24
bb24:
  %t104 = load i64, ptr %l64
  %t105 = inttoptr i64 %t104 to ptr
  %t106 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aListId_3e_2ector(ptr %t105, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t106, ptr %l66
  br label %bb25
bb25:
  %t107 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e8
  br i1 %t107, label %bb26, label %bb27
bb26:
  %t109 = load i64, ptr %l64
  %t110 = inttoptr i64 %t109 to ptr
  %t111 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l66, i32 0, i32 0
  %t112 = load { i64, ptr }, ptr %t111
  %t113 = extractvalue { i64, ptr } %t112, 1
  %t114 = call ptr @__olang_region_or(ptr %t113, ptr null)
  %t115 = icmp ne ptr %t114, null
  %t116 = select i1 %t115, ptr %t114, ptr null
  %t117 = icmp eq ptr %t116, %t110
  call void @__olang_region_settle(ptr %t110, i1 %t117)
  br label %bb27
bb27:
  %t118 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l66
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t118, ptr %l9
  %t119 = ptrtoint ptr %v1 to i64
  store i64 %t119, ptr %l68, !tbaa !24
  %t120 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e9
  br i1 %t120, label %bb28, label %bb29
bb28:
  %t122 = call ptr @__olang_region_make(ptr %v1)
  %t123 = ptrtoint ptr %t122 to i64
  store i64 %t123, ptr %l68, !tbaa !24
  br label %bb29
bb29:
  %t124 = load i64, ptr %l68
  %t125 = inttoptr i64 %t124 to ptr
  %t126 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fsource_3aNameId_3e_26_3e_2ector(ptr %t125, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t126, ptr %l70
  br label %bb30
bb30:
  %t127 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e9
  br i1 %t127, label %bb31, label %bb32
bb31:
  %t129 = load i64, ptr %l68
  %t130 = inttoptr i64 %t129 to ptr
  %t131 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l70, i32 0, i32 0
  %t132 = load { i64, ptr }, ptr %t131
  %t133 = extractvalue { i64, ptr } %t132, 1
  %t134 = call ptr @__olang_region_or(ptr %t133, ptr null)
  %t135 = icmp ne ptr %t134, null
  %t136 = select i1 %t135, ptr %t134, ptr null
  %t137 = icmp eq ptr %t136, %t130
  call void @__olang_region_settle(ptr %t130, i1 %t137)
  br label %bb32
bb32:
  %t138 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l70
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t138, ptr %l10
  %t139 = ptrtoint ptr %v1 to i64
  store i64 %t139, ptr %l72, !tbaa !24
  %t140 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e10
  br i1 %t140, label %bb33, label %bb34
bb33:
  %t142 = call ptr @__olang_region_make(ptr %v1)
  %t143 = ptrtoint ptr %t142 to i64
  store i64 %t143, ptr %l72, !tbaa !24
  br label %bb34
bb34:
  %t144 = load i64, ptr %l72
  %t145 = inttoptr i64 %t144 to ptr
  %t146 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e(ptr %t145)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t146, ptr %l74
  br label %bb35
bb35:
  %t147 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e10
  br i1 %t147, label %bb36, label %bb37
bb36:
  %t149 = load i64, ptr %l72
  %t150 = inttoptr i64 %t149 to ptr
  %t151 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l74, i32 0, i32 2
  %t152 = load { i64, ptr }, ptr %t151
  %t153 = extractvalue { i64, ptr } %t152, 1
  %t154 = call ptr @__olang_region_or(ptr %t153, ptr null)
  %t155 = icmp ne ptr %t154, null
  %t156 = select i1 %t155, ptr %t154, ptr null
  %t157 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l74, i32 0, i32 1
  %t158 = load { i64, ptr }, ptr %t157
  %t159 = extractvalue { i64, ptr } %t158, 1
  %t160 = call ptr @__olang_region_or(ptr %t159, ptr null)
  %t161 = icmp ne ptr %t160, null
  %t162 = select i1 %t161, ptr %t160, ptr %t156
  %t163 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l74, i32 0, i32 0
  %t164 = load { i64, ptr }, ptr %t163
  %t165 = extractvalue { i64, ptr } %t164, 1
  %t166 = call ptr @__olang_region_or(ptr %t165, ptr null)
  %t167 = icmp ne ptr %t166, null
  %t168 = select i1 %t167, ptr %t166, ptr %t162
  %t169 = icmp eq ptr %t168, %t150
  call void @__olang_region_settle(ptr %t150, i1 %t169)
  br label %bb37
bb37:
  %t170 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l74
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t170, ptr %l11
  %t171 = ptrtoint ptr %v1 to i64
  store i64 %t171, ptr %l76, !tbaa !24
  %t172 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e11
  br i1 %t172, label %bb38, label %bb39
bb38:
  %t174 = call ptr @__olang_region_make(ptr %v1)
  %t175 = ptrtoint ptr %t174 to i64
  store i64 %t175, ptr %l76, !tbaa !24
  br label %bb39
bb39:
  %t176 = load i64, ptr %l76
  %t177 = inttoptr i64 %t176 to ptr
  %t178 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t177, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t178, ptr %l78
  br label %bb40
bb40:
  %t179 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e11
  br i1 %t179, label %bb41, label %bb42
bb41:
  %t181 = load i64, ptr %l76
  %t182 = inttoptr i64 %t181 to ptr
  %t183 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l78, i32 0, i32 0
  %t184 = load { i64, ptr }, ptr %t183
  %t185 = extractvalue { i64, ptr } %t184, 1
  %t186 = call ptr @__olang_region_or(ptr %t185, ptr null)
  %t187 = icmp ne ptr %t186, null
  %t188 = select i1 %t187, ptr %t186, ptr null
  %t189 = icmp eq ptr %t188, %t182
  call void @__olang_region_settle(ptr %t182, i1 %t189)
  br label %bb42
bb42:
  %t190 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l78
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t190, ptr %l12
  %t191 = ptrtoint ptr %v1 to i64
  store i64 %t191, ptr %l80, !tbaa !24
  %t192 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e12
  br i1 %t192, label %bb43, label %bb44
bb43:
  %t194 = call ptr @__olang_region_make(ptr %v1)
  %t195 = ptrtoint ptr %t194 to i64
  store i64 %t195, ptr %l80, !tbaa !24
  br label %bb44
bb44:
  %t196 = load i64, ptr %l80
  %t197 = inttoptr i64 %t196 to ptr
  %t198 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e(ptr %t197)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t198, ptr %l82
  br label %bb45
bb45:
  %t199 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e12
  br i1 %t199, label %bb46, label %bb47
bb46:
  %t201 = load i64, ptr %l80
  %t202 = inttoptr i64 %t201 to ptr
  %t203 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l82, i32 0, i32 2
  %t204 = load { i64, ptr }, ptr %t203
  %t205 = extractvalue { i64, ptr } %t204, 1
  %t206 = call ptr @__olang_region_or(ptr %t205, ptr null)
  %t207 = icmp ne ptr %t206, null
  %t208 = select i1 %t207, ptr %t206, ptr null
  %t209 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l82, i32 0, i32 1
  %t210 = load { i64, ptr }, ptr %t209
  %t211 = extractvalue { i64, ptr } %t210, 1
  %t212 = call ptr @__olang_region_or(ptr %t211, ptr null)
  %t213 = icmp ne ptr %t212, null
  %t214 = select i1 %t213, ptr %t212, ptr %t208
  %t215 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l82, i32 0, i32 0
  %t216 = load { i64, ptr }, ptr %t215
  %t217 = extractvalue { i64, ptr } %t216, 1
  %t218 = call ptr @__olang_region_or(ptr %t217, ptr null)
  %t219 = icmp ne ptr %t218, null
  %t220 = select i1 %t219, ptr %t218, ptr %t214
  %t221 = icmp eq ptr %t220, %t202
  call void @__olang_region_settle(ptr %t202, i1 %t221)
  br label %bb47
bb47:
  %t222 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l82
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t222, ptr %l13
  %t223 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3adecl_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t223, ptr %l84
  br label %bb48
bb48:
  %t224 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l84
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t224, ptr %l14
  %t225 = ptrtoint ptr %v1 to i64
  store i64 %t225, ptr %l85, !tbaa !24
  %t226 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e14
  br i1 %t226, label %bb49, label %bb50
bb49:
  %t228 = call ptr @__olang_region_make(ptr %v1)
  %t229 = ptrtoint ptr %t228 to i64
  store i64 %t229, ptr %l85, !tbaa !24
  br label %bb50
bb50:
  %t230 = load i64, ptr %l85
  %t231 = inttoptr i64 %t230 to ptr
  %t232 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t231, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t232, ptr %l87
  br label %bb51
bb51:
  %t233 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e14
  br i1 %t233, label %bb52, label %bb53
bb52:
  %t235 = load i64, ptr %l85
  %t236 = inttoptr i64 %t235 to ptr
  %t237 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l87, i32 0, i32 0
  %t238 = load { i64, ptr }, ptr %t237
  %t239 = extractvalue { i64, ptr } %t238, 1
  %t240 = call ptr @__olang_region_or(ptr %t239, ptr null)
  %t241 = icmp ne ptr %t240, null
  %t242 = select i1 %t241, ptr %t240, ptr null
  %t243 = icmp eq ptr %t242, %t236
  call void @__olang_region_settle(ptr %t236, i1 %t243)
  br label %bb53
bb53:
  %t244 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l87
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t244, ptr %l15
  %t245 = ptrtoint ptr %v1 to i64
  store i64 %t245, ptr %l89, !tbaa !24
  %t246 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e15
  br i1 %t246, label %bb54, label %bb55
bb54:
  %t248 = call ptr @__olang_region_make(ptr %v1)
  %t249 = ptrtoint ptr %t248 to i64
  store i64 %t249, ptr %l89, !tbaa !24
  br label %bb55
bb55:
  %t250 = load i64, ptr %l89
  %t251 = inttoptr i64 %t250 to ptr
  %t252 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aStr_Hdaf48aaf31e9845c659408ae38f7f59c(ptr %t251)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t252, ptr %l91
  br label %bb56
bb56:
  %t253 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e15
  br i1 %t253, label %bb57, label %bb58
bb57:
  %t255 = load i64, ptr %l89
  %t256 = inttoptr i64 %t255 to ptr
  %t257 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l91, i32 0, i32 2
  %t258 = load { i64, ptr }, ptr %t257
  %t259 = extractvalue { i64, ptr } %t258, 1
  %t260 = call ptr @__olang_region_or(ptr %t259, ptr null)
  %t261 = icmp ne ptr %t260, null
  %t262 = select i1 %t261, ptr %t260, ptr null
  %t263 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l91, i32 0, i32 1
  %t264 = load { i64, ptr }, ptr %t263
  %t265 = extractvalue { i64, ptr } %t264, 1
  %t266 = call ptr @__olang_region_or(ptr %t265, ptr null)
  %t267 = icmp ne ptr %t266, null
  %t268 = select i1 %t267, ptr %t266, ptr %t262
  %t269 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l91, i32 0, i32 0
  %t270 = load { i64, ptr }, ptr %t269
  %t271 = extractvalue { i64, ptr } %t270, 1
  %t272 = call ptr @__olang_region_or(ptr %t271, ptr null)
  %t273 = icmp ne ptr %t272, null
  %t274 = select i1 %t273, ptr %t272, ptr %t268
  %t275 = icmp eq ptr %t274, %t256
  call void @__olang_region_settle(ptr %t256, i1 %t275)
  br label %bb58
bb58:
  %t276 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l91
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t276, ptr %l16
  %t277 = ptrtoint ptr %v1 to i64
  store i64 %t277, ptr %l93, !tbaa !24
  %t278 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e16
  br i1 %t278, label %bb59, label %bb60
bb59:
  %t280 = call ptr @__olang_region_make(ptr %v1)
  %t281 = ptrtoint ptr %t280 to i64
  store i64 %t281, ptr %l93, !tbaa !24
  br label %bb60
bb60:
  %t282 = load i64, ptr %l93
  %t283 = inttoptr i64 %t282 to ptr
  %t284 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20compiler_2ftypes_3abody_3e(ptr %t283)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t284, ptr %l95
  br label %bb61
bb61:
  %t285 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e16
  br i1 %t285, label %bb62, label %bb63
bb62:
  %t287 = load i64, ptr %l93
  %t288 = inttoptr i64 %t287 to ptr
  %t289 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l95, i32 0, i32 2
  %t290 = load { i64, ptr }, ptr %t289
  %t291 = extractvalue { i64, ptr } %t290, 1
  %t292 = call ptr @__olang_region_or(ptr %t291, ptr null)
  %t293 = icmp ne ptr %t292, null
  %t294 = select i1 %t293, ptr %t292, ptr null
  %t295 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l95, i32 0, i32 1
  %t296 = load { i64, ptr }, ptr %t295
  %t297 = extractvalue { i64, ptr } %t296, 1
  %t298 = call ptr @__olang_region_or(ptr %t297, ptr null)
  %t299 = icmp ne ptr %t298, null
  %t300 = select i1 %t299, ptr %t298, ptr %t294
  %t301 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l95, i32 0, i32 0
  %t302 = load { i64, ptr }, ptr %t301
  %t303 = extractvalue { i64, ptr } %t302, 1
  %t304 = call ptr @__olang_region_or(ptr %t303, ptr null)
  %t305 = icmp ne ptr %t304, null
  %t306 = select i1 %t305, ptr %t304, ptr %t300
  %t307 = icmp eq ptr %t306, %t288
  call void @__olang_region_settle(ptr %t288, i1 %t307)
  br label %bb63
bb63:
  %t308 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l95
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t308, ptr %l17
  %t309 = ptrtoint ptr %v1 to i64
  store i64 %t309, ptr %l97, !tbaa !24
  %t310 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e17
  br i1 %t310, label %bb64, label %bb65
bb64:
  %t312 = call ptr @__olang_region_make(ptr %v1)
  %t313 = ptrtoint ptr %t312 to i64
  store i64 %t313, ptr %l97, !tbaa !24
  br label %bb65
bb65:
  %t314 = load i64, ptr %l97
  %t315 = inttoptr i64 %t314 to ptr
  %t316 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId__Hbfe39cc2b71dbabe830cee24ccf915b6(ptr %t315)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t316, ptr %l99
  br label %bb66
bb66:
  %t317 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e17
  br i1 %t317, label %bb67, label %bb68
bb67:
  %t319 = load i64, ptr %l97
  %t320 = inttoptr i64 %t319 to ptr
  %t321 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l99, i32 0, i32 2
  %t322 = load { i64, ptr }, ptr %t321
  %t323 = extractvalue { i64, ptr } %t322, 1
  %t324 = call ptr @__olang_region_or(ptr %t323, ptr null)
  %t325 = icmp ne ptr %t324, null
  %t326 = select i1 %t325, ptr %t324, ptr null
  %t327 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l99, i32 0, i32 1
  %t328 = load { i64, ptr }, ptr %t327
  %t329 = extractvalue { i64, ptr } %t328, 1
  %t330 = call ptr @__olang_region_or(ptr %t329, ptr null)
  %t331 = icmp ne ptr %t330, null
  %t332 = select i1 %t331, ptr %t330, ptr %t326
  %t333 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l99, i32 0, i32 0
  %t334 = load { i64, ptr }, ptr %t333
  %t335 = extractvalue { i64, ptr } %t334, 1
  %t336 = call ptr @__olang_region_or(ptr %t335, ptr null)
  %t337 = icmp ne ptr %t336, null
  %t338 = select i1 %t337, ptr %t336, ptr %t332
  %t339 = icmp eq ptr %t338, %t320
  call void @__olang_region_settle(ptr %t320, i1 %t339)
  br label %bb68
bb68:
  %t340 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l99
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t340, ptr %l18
  %t341 = ptrtoint ptr %v1 to i64
  store i64 %t341, ptr %l101, !tbaa !24
  %t342 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e18
  br i1 %t342, label %bb69, label %bb70
bb69:
  %t344 = call ptr @__olang_region_make(ptr %v1)
  %t345 = ptrtoint ptr %t344 to i64
  store i64 %t345, ptr %l101, !tbaa !24
  br label %bb70
bb70:
  %t346 = load i64, ptr %l101
  %t347 = inttoptr i64 %t346 to ptr
  %t348 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId__Hb60d9b83e890412eba8d9d5191d2497d(ptr %t347)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t348, ptr %l103
  br label %bb71
bb71:
  %t349 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e18
  br i1 %t349, label %bb72, label %bb73
bb72:
  %t351 = load i64, ptr %l101
  %t352 = inttoptr i64 %t351 to ptr
  %t353 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l103, i32 0, i32 2
  %t354 = load { i64, ptr }, ptr %t353
  %t355 = extractvalue { i64, ptr } %t354, 1
  %t356 = call ptr @__olang_region_or(ptr %t355, ptr null)
  %t357 = icmp ne ptr %t356, null
  %t358 = select i1 %t357, ptr %t356, ptr null
  %t359 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l103, i32 0, i32 1
  %t360 = load { i64, ptr }, ptr %t359
  %t361 = extractvalue { i64, ptr } %t360, 1
  %t362 = call ptr @__olang_region_or(ptr %t361, ptr null)
  %t363 = icmp ne ptr %t362, null
  %t364 = select i1 %t363, ptr %t362, ptr %t358
  %t365 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l103, i32 0, i32 0
  %t366 = load { i64, ptr }, ptr %t365
  %t367 = extractvalue { i64, ptr } %t366, 1
  %t368 = call ptr @__olang_region_or(ptr %t367, ptr null)
  %t369 = icmp ne ptr %t368, null
  %t370 = select i1 %t369, ptr %t368, ptr %t364
  %t371 = icmp eq ptr %t370, %t352
  call void @__olang_region_settle(ptr %t352, i1 %t371)
  br label %bb73
bb73:
  %t372 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l103
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t372, ptr %l19
  %t373 = ptrtoint ptr %v1 to i64
  store i64 %t373, ptr %l105, !tbaa !24
  %t374 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e19
  br i1 %t374, label %bb74, label %bb75
bb74:
  %t376 = call ptr @__olang_region_make(ptr %v1)
  %t377 = ptrtoint ptr %t376 to i64
  store i64 %t377, ptr %l105, !tbaa !24
  br label %bb75
bb75:
  %t378 = load i64, ptr %l105
  %t379 = inttoptr i64 %t378 to ptr
  %t380 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId__Hc9d5028d9efd264605c80efeddc4ccf9(ptr %t379)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t380, ptr %l107
  br label %bb76
bb76:
  %t381 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e19
  br i1 %t381, label %bb77, label %bb78
bb77:
  %t383 = load i64, ptr %l105
  %t384 = inttoptr i64 %t383 to ptr
  %t385 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l107, i32 0, i32 2
  %t386 = load { i64, ptr }, ptr %t385
  %t387 = extractvalue { i64, ptr } %t386, 1
  %t388 = call ptr @__olang_region_or(ptr %t387, ptr null)
  %t389 = icmp ne ptr %t388, null
  %t390 = select i1 %t389, ptr %t388, ptr null
  %t391 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l107, i32 0, i32 1
  %t392 = load { i64, ptr }, ptr %t391
  %t393 = extractvalue { i64, ptr } %t392, 1
  %t394 = call ptr @__olang_region_or(ptr %t393, ptr null)
  %t395 = icmp ne ptr %t394, null
  %t396 = select i1 %t395, ptr %t394, ptr %t390
  %t397 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l107, i32 0, i32 0
  %t398 = load { i64, ptr }, ptr %t397
  %t399 = extractvalue { i64, ptr } %t398, 1
  %t400 = call ptr @__olang_region_or(ptr %t399, ptr null)
  %t401 = icmp ne ptr %t400, null
  %t402 = select i1 %t401, ptr %t400, ptr %t396
  %t403 = icmp eq ptr %t402, %t384
  call void @__olang_region_settle(ptr %t384, i1 %t403)
  br label %bb78
bb78:
  %t404 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l107
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t404, ptr %l20
  %t405 = ptrtoint ptr %v1 to i64
  store i64 %t405, ptr %l109, !tbaa !24
  %t406 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e20
  br i1 %t406, label %bb79, label %bb80
bb79:
  %t408 = call ptr @__olang_region_make(ptr %v1)
  %t409 = ptrtoint ptr %t408 to i64
  store i64 %t409, ptr %l109, !tbaa !24
  br label %bb80
bb80:
  %t410 = load i64, ptr %l109
  %t411 = inttoptr i64 %t410 to ptr
  %t412 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t411, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t412, ptr %l111
  br label %bb81
bb81:
  %t413 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e20
  br i1 %t413, label %bb82, label %bb83
bb82:
  %t415 = load i64, ptr %l109
  %t416 = inttoptr i64 %t415 to ptr
  %t417 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l111, i32 0, i32 0
  %t418 = load { i64, ptr }, ptr %t417
  %t419 = extractvalue { i64, ptr } %t418, 1
  %t420 = call ptr @__olang_region_or(ptr %t419, ptr null)
  %t421 = icmp ne ptr %t420, null
  %t422 = select i1 %t421, ptr %t420, ptr null
  %t423 = icmp eq ptr %t422, %t416
  call void @__olang_region_settle(ptr %t416, i1 %t423)
  br label %bb83
bb83:
  %t424 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l111
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t424, ptr %l21
  %t425 = ptrtoint ptr %v1 to i64
  store i64 %t425, ptr %l113, !tbaa !24
  %t426 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e21
  br i1 %t426, label %bb84, label %bb85
bb84:
  %t428 = call ptr @__olang_region_make(ptr %v1)
  %t429 = ptrtoint ptr %t428 to i64
  store i64 %t429, ptr %l113, !tbaa !24
  br label %bb85
bb85:
  %t430 = load i64, ptr %l113
  %t431 = inttoptr i64 %t430 to ptr
  %t432 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t431, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t432, ptr %l115
  br label %bb86
bb86:
  %t433 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e21
  br i1 %t433, label %bb87, label %bb88
bb87:
  %t435 = load i64, ptr %l113
  %t436 = inttoptr i64 %t435 to ptr
  %t437 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l115, i32 0, i32 0
  %t438 = load { i64, ptr }, ptr %t437
  %t439 = extractvalue { i64, ptr } %t438, 1
  %t440 = call ptr @__olang_region_or(ptr %t439, ptr null)
  %t441 = icmp ne ptr %t440, null
  %t442 = select i1 %t441, ptr %t440, ptr null
  %t443 = icmp eq ptr %t442, %t436
  call void @__olang_region_settle(ptr %t436, i1 %t443)
  br label %bb88
bb88:
  %t444 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l115
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t444, ptr %l22
  %t445 = ptrtoint ptr %v1 to i64
  store i64 %t445, ptr %l117, !tbaa !24
  %t446 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e22
  br i1 %t446, label %bb89, label %bb90
bb89:
  %t448 = call ptr @__olang_region_make(ptr %v1)
  %t449 = ptrtoint ptr %t448 to i64
  store i64 %t449, ptr %l117, !tbaa !24
  br label %bb90
bb90:
  %t450 = load i64, ptr %l117
  %t451 = inttoptr i64 %t450 to ptr
  %t452 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t451, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t452, ptr %l119
  br label %bb91
bb91:
  %t453 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e22
  br i1 %t453, label %bb92, label %bb93
bb92:
  %t455 = load i64, ptr %l117
  %t456 = inttoptr i64 %t455 to ptr
  %t457 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l119, i32 0, i32 0
  %t458 = load { i64, ptr }, ptr %t457
  %t459 = extractvalue { i64, ptr } %t458, 1
  %t460 = call ptr @__olang_region_or(ptr %t459, ptr null)
  %t461 = icmp ne ptr %t460, null
  %t462 = select i1 %t461, ptr %t460, ptr null
  %t463 = icmp eq ptr %t462, %t456
  call void @__olang_region_settle(ptr %t456, i1 %t463)
  br label %bb93
bb93:
  %t464 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l119
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t464, ptr %l23
  %t465 = ptrtoint ptr %v1 to i64
  store i64 %t465, ptr %l121, !tbaa !24
  %t466 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e23
  br i1 %t466, label %bb94, label %bb95
bb94:
  %t468 = call ptr @__olang_region_make(ptr %v1)
  %t469 = ptrtoint ptr %t468 to i64
  store i64 %t469, ptr %l121, !tbaa !24
  br label %bb95
bb95:
  %t470 = load i64, ptr %l121
  %t471 = inttoptr i64 %t470 to ptr
  %t472 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t471, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t472, ptr %l123
  br label %bb96
bb96:
  %t473 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e23
  br i1 %t473, label %bb97, label %bb98
bb97:
  %t475 = load i64, ptr %l121
  %t476 = inttoptr i64 %t475 to ptr
  %t477 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l123, i32 0, i32 0
  %t478 = load { i64, ptr }, ptr %t477
  %t479 = extractvalue { i64, ptr } %t478, 1
  %t480 = call ptr @__olang_region_or(ptr %t479, ptr null)
  %t481 = icmp ne ptr %t480, null
  %t482 = select i1 %t481, ptr %t480, ptr null
  %t483 = icmp eq ptr %t482, %t476
  call void @__olang_region_settle(ptr %t476, i1 %t483)
  br label %bb98
bb98:
  %t484 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l123
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t484, ptr %l24
  %t485 = ptrtoint ptr %v1 to i64
  store i64 %t485, ptr %l125, !tbaa !24
  %t486 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e24
  br i1 %t486, label %bb99, label %bb100
bb99:
  %t488 = call ptr @__olang_region_make(ptr %v1)
  %t489 = ptrtoint ptr %t488 to i64
  store i64 %t489, ptr %l125, !tbaa !24
  br label %bb100
bb100:
  %t490 = load i64, ptr %l125
  %t491 = inttoptr i64 %t490 to ptr
  %t492 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t491, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t492, ptr %l127
  br label %bb101
bb101:
  %t493 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e24
  br i1 %t493, label %bb102, label %bb103
bb102:
  %t495 = load i64, ptr %l125
  %t496 = inttoptr i64 %t495 to ptr
  %t497 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l127, i32 0, i32 0
  %t498 = load { i64, ptr }, ptr %t497
  %t499 = extractvalue { i64, ptr } %t498, 1
  %t500 = call ptr @__olang_region_or(ptr %t499, ptr null)
  %t501 = icmp ne ptr %t500, null
  %t502 = select i1 %t501, ptr %t500, ptr null
  %t503 = icmp eq ptr %t502, %t496
  call void @__olang_region_settle(ptr %t496, i1 %t503)
  br label %bb103
bb103:
  %t504 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l127
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t504, ptr %l25
  %t505 = ptrtoint ptr %v1 to i64
  store i64 %t505, ptr %l129, !tbaa !24
  %t506 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e25
  br i1 %t506, label %bb104, label %bb105
bb104:
  %t508 = call ptr @__olang_region_make(ptr %v1)
  %t509 = ptrtoint ptr %t508 to i64
  store i64 %t509, ptr %l129, !tbaa !24
  br label %bb105
bb105:
  %t510 = load i64, ptr %l129
  %t511 = inttoptr i64 %t510 to ptr
  %t512 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t511, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t512, ptr %l131
  br label %bb106
bb106:
  %t513 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e25
  br i1 %t513, label %bb107, label %bb108
bb107:
  %t515 = load i64, ptr %l129
  %t516 = inttoptr i64 %t515 to ptr
  %t517 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l131, i32 0, i32 0
  %t518 = load { i64, ptr }, ptr %t517
  %t519 = extractvalue { i64, ptr } %t518, 1
  %t520 = call ptr @__olang_region_or(ptr %t519, ptr null)
  %t521 = icmp ne ptr %t520, null
  %t522 = select i1 %t521, ptr %t520, ptr null
  %t523 = icmp eq ptr %t522, %t516
  call void @__olang_region_settle(ptr %t516, i1 %t523)
  br label %bb108
bb108:
  %t524 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l131
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t524, ptr %l26
  %t525 = ptrtoint ptr %v1 to i64
  store i64 %t525, ptr %l133, !tbaa !24
  %t526 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e26
  br i1 %t526, label %bb109, label %bb110
bb109:
  %t528 = call ptr @__olang_region_make(ptr %v1)
  %t529 = ptrtoint ptr %t528 to i64
  store i64 %t529, ptr %l133, !tbaa !24
  br label %bb110
bb110:
  %t530 = load i64, ptr %l133
  %t531 = inttoptr i64 %t530 to ptr
  %t532 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t531, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t532, ptr %l135
  br label %bb111
bb111:
  %t533 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e26
  br i1 %t533, label %bb112, label %bb113
bb112:
  %t535 = load i64, ptr %l133
  %t536 = inttoptr i64 %t535 to ptr
  %t537 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l135, i32 0, i32 0
  %t538 = load { i64, ptr }, ptr %t537
  %t539 = extractvalue { i64, ptr } %t538, 1
  %t540 = call ptr @__olang_region_or(ptr %t539, ptr null)
  %t541 = icmp ne ptr %t540, null
  %t542 = select i1 %t541, ptr %t540, ptr null
  %t543 = icmp eq ptr %t542, %t536
  call void @__olang_region_settle(ptr %t536, i1 %t543)
  br label %bb113
bb113:
  %t544 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l135
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t544, ptr %l27
  %t545 = ptrtoint ptr %v1 to i64
  store i64 %t545, ptr %l137, !tbaa !24
  %t546 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e27
  br i1 %t546, label %bb114, label %bb115
bb114:
  %t548 = call ptr @__olang_region_make(ptr %v1)
  %t549 = ptrtoint ptr %t548 to i64
  store i64 %t549, ptr %l137, !tbaa !24
  br label %bb115
bb115:
  %t550 = load i64, ptr %l137
  %t551 = inttoptr i64 %t550 to ptr
  %t552 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %t551, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t552, ptr %l139
  br label %bb116
bb116:
  %t553 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e27
  br i1 %t553, label %bb117, label %bb118
bb117:
  %t555 = load i64, ptr %l137
  %t556 = inttoptr i64 %t555 to ptr
  %t557 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l139, i32 0, i32 0
  %t558 = load { i64, ptr }, ptr %t557
  %t559 = extractvalue { i64, ptr } %t558, 1
  %t560 = call ptr @__olang_region_or(ptr %t559, ptr null)
  %t561 = icmp ne ptr %t560, null
  %t562 = select i1 %t561, ptr %t560, ptr null
  %t563 = icmp eq ptr %t562, %t556
  call void @__olang_region_settle(ptr %t556, i1 %t563)
  br label %bb118
bb118:
  %t564 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l139
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t564, ptr %l28
  %t565 = ptrtoint ptr %v1 to i64
  store i64 %t565, ptr %l141, !tbaa !24
  %t566 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e28
  br i1 %t566, label %bb119, label %bb120
bb119:
  %t568 = call ptr @__olang_region_make(ptr %v1)
  %t569 = ptrtoint ptr %t568 to i64
  store i64 %t569, ptr %l141, !tbaa !24
  br label %bb120
bb120:
  %t570 = load i64, ptr %l141
  %t571 = inttoptr i64 %t570 to ptr
  %t572 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e_2ector(ptr %t571, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t572, ptr %l143
  br label %bb121
bb121:
  %t573 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e28
  br i1 %t573, label %bb122, label %bb123
bb122:
  %t575 = load i64, ptr %l141
  %t576 = inttoptr i64 %t575 to ptr
  %t577 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l143, i32 0, i32 0
  %t578 = load { i64, ptr }, ptr %t577
  %t579 = extractvalue { i64, ptr } %t578, 1
  %t580 = call ptr @__olang_region_or(ptr %t579, ptr null)
  %t581 = icmp ne ptr %t580, null
  %t582 = select i1 %t581, ptr %t580, ptr null
  %t583 = icmp eq ptr %t582, %t576
  call void @__olang_region_settle(ptr %t576, i1 %t583)
  br label %bb123
bb123:
  %t584 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l143
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t584, ptr %l29
  %t585 = ptrtoint ptr %v1 to i64
  store i64 %t585, ptr %l145, !tbaa !24
  %t586 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e29
  br i1 %t586, label %bb124, label %bb125
bb124:
  %t588 = call ptr @__olang_region_make(ptr %v1)
  %t589 = ptrtoint ptr %t588 to i64
  store i64 %t589, ptr %l145, !tbaa !24
  br label %bb125
bb125:
  %t590 = load i64, ptr %l145
  %t591 = inttoptr i64 %t590 to ptr
  %t592 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cArray_3cI64_3e_26_2c_20compiler_2ftypes_3aScopesId_3e(ptr %t591)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t592, ptr %l147
  br label %bb126
bb126:
  %t593 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e29
  br i1 %t593, label %bb127, label %bb128
bb127:
  %t595 = load i64, ptr %l145
  %t596 = inttoptr i64 %t595 to ptr
  %t597 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l147, i32 0, i32 2
  %t598 = load { i64, ptr }, ptr %t597
  %t599 = extractvalue { i64, ptr } %t598, 1
  %t600 = call ptr @__olang_region_or(ptr %t599, ptr null)
  %t601 = icmp ne ptr %t600, null
  %t602 = select i1 %t601, ptr %t600, ptr null
  %t603 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l147, i32 0, i32 1
  %t604 = load { i64, ptr }, ptr %t603
  %t605 = extractvalue { i64, ptr } %t604, 1
  %t606 = call ptr @__olang_region_or(ptr %t605, ptr null)
  %t607 = icmp ne ptr %t606, null
  %t608 = select i1 %t607, ptr %t606, ptr %t602
  %t609 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l147, i32 0, i32 0
  %t610 = load { i64, ptr }, ptr %t609
  %t611 = extractvalue { i64, ptr } %t610, 1
  %t612 = call ptr @__olang_region_or(ptr %t611, ptr null)
  %t613 = icmp ne ptr %t612, null
  %t614 = select i1 %t613, ptr %t612, ptr %t608
  %t615 = icmp eq ptr %t614, %t596
  call void @__olang_region_settle(ptr %t596, i1 %t615)
  br label %bb128
bb128:
  %t616 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l147
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t616, ptr %l30
  %t617 = ptrtoint ptr %v1 to i64
  store i64 %t617, ptr %l149, !tbaa !24
  %t618 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e30
  br i1 %t618, label %bb129, label %bb130
bb129:
  %t620 = call ptr @__olang_region_make(ptr %v1)
  %t621 = ptrtoint ptr %t620 to i64
  store i64 %t621, ptr %l149, !tbaa !24
  br label %bb130
bb130:
  %t622 = load i64, ptr %l149
  %t623 = inttoptr i64 %t622 to ptr
  %t624 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e_2ector(ptr %t623, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t624, ptr %l151
  br label %bb131
bb131:
  %t625 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e30
  br i1 %t625, label %bb132, label %bb133
bb132:
  %t627 = load i64, ptr %l149
  %t628 = inttoptr i64 %t627 to ptr
  %t629 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l151, i32 0, i32 0
  %t630 = load { i64, ptr }, ptr %t629
  %t631 = extractvalue { i64, ptr } %t630, 1
  %t632 = call ptr @__olang_region_or(ptr %t631, ptr null)
  %t633 = icmp ne ptr %t632, null
  %t634 = select i1 %t633, ptr %t632, ptr null
  %t635 = icmp eq ptr %t634, %t628
  call void @__olang_region_settle(ptr %t628, i1 %t635)
  br label %bb133
bb133:
  %t636 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l151
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t636, ptr %l31
  %t637 = ptrtoint ptr %v1 to i64
  store i64 %t637, ptr %l153, !tbaa !24
  %t638 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e31
  br i1 %t638, label %bb134, label %bb135
bb134:
  %t640 = call ptr @__olang_region_make(ptr %v1)
  %t641 = ptrtoint ptr %t640 to i64
  store i64 %t641, ptr %l153, !tbaa !24
  br label %bb135
bb135:
  %t642 = load i64, ptr %l153
  %t643 = inttoptr i64 %t642 to ptr
  %t644 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cArray_3cI64_3e_26_2c_20I64_3e(ptr %t643)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t644, ptr %l155
  br label %bb136
bb136:
  %t645 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e31
  br i1 %t645, label %bb137, label %bb138
bb137:
  %t647 = load i64, ptr %l153
  %t648 = inttoptr i64 %t647 to ptr
  %t649 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l155, i32 0, i32 2
  %t650 = load { i64, ptr }, ptr %t649
  %t651 = extractvalue { i64, ptr } %t650, 1
  %t652 = call ptr @__olang_region_or(ptr %t651, ptr null)
  %t653 = icmp ne ptr %t652, null
  %t654 = select i1 %t653, ptr %t652, ptr null
  %t655 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l155, i32 0, i32 1
  %t656 = load { i64, ptr }, ptr %t655
  %t657 = extractvalue { i64, ptr } %t656, 1
  %t658 = call ptr @__olang_region_or(ptr %t657, ptr null)
  %t659 = icmp ne ptr %t658, null
  %t660 = select i1 %t659, ptr %t658, ptr %t654
  %t661 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l155, i32 0, i32 0
  %t662 = load { i64, ptr }, ptr %t661
  %t663 = extractvalue { i64, ptr } %t662, 1
  %t664 = call ptr @__olang_region_or(ptr %t663, ptr null)
  %t665 = icmp ne ptr %t664, null
  %t666 = select i1 %t665, ptr %t664, ptr %t660
  %t667 = icmp eq ptr %t666, %t648
  call void @__olang_region_settle(ptr %t648, i1 %t667)
  br label %bb138
bb138:
  %t668 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l155
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t668, ptr %l32
  %t669 = ptrtoint ptr %v1 to i64
  store i64 %t669, ptr %l157, !tbaa !24
  %t670 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e32
  br i1 %t670, label %bb139, label %bb140
bb139:
  %t672 = call ptr @__olang_region_make(ptr %v1)
  %t673 = ptrtoint ptr %t672 to i64
  store i64 %t673, ptr %l157, !tbaa !24
  br label %bb140
bb140:
  %t674 = load i64, ptr %l157
  %t675 = inttoptr i64 %t674 to ptr
  %t676 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e_2ector(ptr %t675, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t676, ptr %l159
  br label %bb141
bb141:
  %t677 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e32
  br i1 %t677, label %bb142, label %bb143
bb142:
  %t679 = load i64, ptr %l157
  %t680 = inttoptr i64 %t679 to ptr
  %t681 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l159, i32 0, i32 0
  %t682 = load { i64, ptr }, ptr %t681
  %t683 = extractvalue { i64, ptr } %t682, 1
  %t684 = call ptr @__olang_region_or(ptr %t683, ptr null)
  %t685 = icmp ne ptr %t684, null
  %t686 = select i1 %t685, ptr %t684, ptr null
  %t687 = icmp eq ptr %t686, %t680
  call void @__olang_region_settle(ptr %t680, i1 %t687)
  br label %bb143
bb143:
  %t688 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l159
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t688, ptr %l33
  %t689 = ptrtoint ptr %v1 to i64
  store i64 %t689, ptr %l161, !tbaa !24
  %t690 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e33
  br i1 %t690, label %bb144, label %bb145
bb144:
  %t692 = call ptr @__olang_region_make(ptr %v1)
  %t693 = ptrtoint ptr %t692 to i64
  store i64 %t693, ptr %l161, !tbaa !24
  br label %bb145
bb145:
  %t694 = load i64, ptr %l161
  %t695 = inttoptr i64 %t694 to ptr
  %t696 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cArray_3cI64_3e_26_2c_20I64_3e(ptr %t695)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t696, ptr %l163
  br label %bb146
bb146:
  %t697 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e33
  br i1 %t697, label %bb147, label %bb148
bb147:
  %t699 = load i64, ptr %l161
  %t700 = inttoptr i64 %t699 to ptr
  %t701 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l163, i32 0, i32 2
  %t702 = load { i64, ptr }, ptr %t701
  %t703 = extractvalue { i64, ptr } %t702, 1
  %t704 = call ptr @__olang_region_or(ptr %t703, ptr null)
  %t705 = icmp ne ptr %t704, null
  %t706 = select i1 %t705, ptr %t704, ptr null
  %t707 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l163, i32 0, i32 1
  %t708 = load { i64, ptr }, ptr %t707
  %t709 = extractvalue { i64, ptr } %t708, 1
  %t710 = call ptr @__olang_region_or(ptr %t709, ptr null)
  %t711 = icmp ne ptr %t710, null
  %t712 = select i1 %t711, ptr %t710, ptr %t706
  %t713 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l163, i32 0, i32 0
  %t714 = load { i64, ptr }, ptr %t713
  %t715 = extractvalue { i64, ptr } %t714, 1
  %t716 = call ptr @__olang_region_or(ptr %t715, ptr null)
  %t717 = icmp ne ptr %t716, null
  %t718 = select i1 %t717, ptr %t716, ptr %t712
  %t719 = icmp eq ptr %t718, %t700
  call void @__olang_region_settle(ptr %t700, i1 %t719)
  br label %bb148
bb148:
  %t720 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l163
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t720, ptr %l34
  %t721 = ptrtoint ptr %v1 to i64
  store i64 %t721, ptr %l165, !tbaa !24
  %t722 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e34
  br i1 %t722, label %bb149, label %bb150
bb149:
  %t724 = call ptr @__olang_region_make(ptr %v1)
  %t725 = ptrtoint ptr %t724 to i64
  store i64 %t725, ptr %l165, !tbaa !24
  br label %bb150
bb150:
  %t726 = load i64, ptr %l165
  %t727 = inttoptr i64 %t726 to ptr
  %t728 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU8_3e_2ector(ptr %t727, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t728, ptr %l167
  br label %bb151
bb151:
  %t729 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e34
  br i1 %t729, label %bb152, label %bb153
bb152:
  %t731 = load i64, ptr %l165
  %t732 = inttoptr i64 %t731 to ptr
  %t733 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l167, i32 0, i32 0
  %t734 = load { i64, ptr }, ptr %t733
  %t735 = extractvalue { i64, ptr } %t734, 1
  %t736 = call ptr @__olang_region_or(ptr %t735, ptr null)
  %t737 = icmp ne ptr %t736, null
  %t738 = select i1 %t737, ptr %t736, ptr null
  %t739 = icmp eq ptr %t738, %t732
  call void @__olang_region_settle(ptr %t732, i1 %t739)
  br label %bb153
bb153:
  %t740 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l167
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t740, ptr %l35
  store i1 false, ptr %l36, !tbaa !21
  %t741 = ptrtoint ptr %v1 to i64
  store i64 %t741, ptr %l169, !tbaa !24
  %t742 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e36
  br i1 %t742, label %bb154, label %bb155
bb154:
  %t744 = call ptr @__olang_region_make(ptr %v1)
  %t745 = ptrtoint ptr %t744 to i64
  store i64 %t745, ptr %l169, !tbaa !24
  br label %bb155
bb155:
  %t746 = load i64, ptr %l169
  %t747 = inttoptr i64 %t746 to ptr
  %t748 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %t747, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t748, ptr %l171
  br label %bb156
bb156:
  %t749 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e36
  br i1 %t749, label %bb157, label %bb158
bb157:
  %t751 = load i64, ptr %l169
  %t752 = inttoptr i64 %t751 to ptr
  %t753 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l171, i32 0, i32 0
  %t754 = load { i64, ptr }, ptr %t753
  %t755 = extractvalue { i64, ptr } %t754, 1
  %t756 = call ptr @__olang_region_or(ptr %t755, ptr null)
  %t757 = icmp ne ptr %t756, null
  %t758 = select i1 %t757, ptr %t756, ptr null
  %t759 = icmp eq ptr %t758, %t752
  call void @__olang_region_settle(ptr %t752, i1 %t759)
  br label %bb158
bb158:
  %t760 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l171
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t760, ptr %l37
  %t761 = ptrtoint ptr %v1 to i64
  store i64 %t761, ptr %l173, !tbaa !24
  %t762 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e37
  br i1 %t762, label %bb159, label %bb160
bb159:
  %t764 = call ptr @__olang_region_make(ptr %v1)
  %t765 = ptrtoint ptr %t764 to i64
  store i64 %t765, ptr %l173, !tbaa !24
  br label %bb160
bb160:
  %t766 = load i64, ptr %l173
  %t767 = inttoptr i64 %t766 to ptr
  %t768 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t767)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t768, ptr %l175
  br label %bb161
bb161:
  %t769 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e37
  br i1 %t769, label %bb162, label %bb163
bb162:
  %t771 = load i64, ptr %l173
  %t772 = inttoptr i64 %t771 to ptr
  %t773 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l175, i32 0, i32 2
  %t774 = load { i64, ptr }, ptr %t773
  %t775 = extractvalue { i64, ptr } %t774, 1
  %t776 = call ptr @__olang_region_or(ptr %t775, ptr null)
  %t777 = icmp ne ptr %t776, null
  %t778 = select i1 %t777, ptr %t776, ptr null
  %t779 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l175, i32 0, i32 1
  %t780 = load { i64, ptr }, ptr %t779
  %t781 = extractvalue { i64, ptr } %t780, 1
  %t782 = call ptr @__olang_region_or(ptr %t781, ptr null)
  %t783 = icmp ne ptr %t782, null
  %t784 = select i1 %t783, ptr %t782, ptr %t778
  %t785 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l175, i32 0, i32 0
  %t786 = load { i64, ptr }, ptr %t785
  %t787 = extractvalue { i64, ptr } %t786, 1
  %t788 = call ptr @__olang_region_or(ptr %t787, ptr null)
  %t789 = icmp ne ptr %t788, null
  %t790 = select i1 %t789, ptr %t788, ptr %t784
  %t791 = icmp eq ptr %t790, %t772
  call void @__olang_region_settle(ptr %t772, i1 %t791)
  br label %bb163
bb163:
  %t792 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l175
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t792, ptr %l38
  %t793 = ptrtoint ptr %v1 to i64
  store i64 %t793, ptr %l177, !tbaa !24
  %t794 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e38
  br i1 %t794, label %bb164, label %bb165
bb164:
  %t796 = call ptr @__olang_region_make(ptr %v1)
  %t797 = ptrtoint ptr %t796 to i64
  store i64 %t797, ptr %l177, !tbaa !24
  br label %bb165
bb165:
  %t798 = load i64, ptr %l177
  %t799 = inttoptr i64 %t798 to ptr
  %t800 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t799)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t800, ptr %l179
  br label %bb166
bb166:
  %t801 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e38
  br i1 %t801, label %bb167, label %bb168
bb167:
  %t803 = load i64, ptr %l177
  %t804 = inttoptr i64 %t803 to ptr
  %t805 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l179, i32 0, i32 2
  %t806 = load { i64, ptr }, ptr %t805
  %t807 = extractvalue { i64, ptr } %t806, 1
  %t808 = call ptr @__olang_region_or(ptr %t807, ptr null)
  %t809 = icmp ne ptr %t808, null
  %t810 = select i1 %t809, ptr %t808, ptr null
  %t811 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l179, i32 0, i32 1
  %t812 = load { i64, ptr }, ptr %t811
  %t813 = extractvalue { i64, ptr } %t812, 1
  %t814 = call ptr @__olang_region_or(ptr %t813, ptr null)
  %t815 = icmp ne ptr %t814, null
  %t816 = select i1 %t815, ptr %t814, ptr %t810
  %t817 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l179, i32 0, i32 0
  %t818 = load { i64, ptr }, ptr %t817
  %t819 = extractvalue { i64, ptr } %t818, 1
  %t820 = call ptr @__olang_region_or(ptr %t819, ptr null)
  %t821 = icmp ne ptr %t820, null
  %t822 = select i1 %t821, ptr %t820, ptr %t816
  %t823 = icmp eq ptr %t822, %t804
  call void @__olang_region_settle(ptr %t804, i1 %t823)
  br label %bb168
bb168:
  %t824 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l179
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t824, ptr %l39
  %t825 = ptrtoint ptr %v1 to i64
  store i64 %t825, ptr %l181, !tbaa !24
  %t826 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e39
  br i1 %t826, label %bb169, label %bb170
bb169:
  %t828 = call ptr @__olang_region_make(ptr %v1)
  %t829 = ptrtoint ptr %t828 to i64
  store i64 %t829, ptr %l181, !tbaa !24
  br label %bb170
bb170:
  %t830 = load i64, ptr %l181
  %t831 = inttoptr i64 %t830 to ptr
  %t832 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t831)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t832, ptr %l183
  br label %bb171
bb171:
  %t833 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e39
  br i1 %t833, label %bb172, label %bb173
bb172:
  %t835 = load i64, ptr %l181
  %t836 = inttoptr i64 %t835 to ptr
  %t837 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l183, i32 0, i32 2
  %t838 = load { i64, ptr }, ptr %t837
  %t839 = extractvalue { i64, ptr } %t838, 1
  %t840 = call ptr @__olang_region_or(ptr %t839, ptr null)
  %t841 = icmp ne ptr %t840, null
  %t842 = select i1 %t841, ptr %t840, ptr null
  %t843 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l183, i32 0, i32 1
  %t844 = load { i64, ptr }, ptr %t843
  %t845 = extractvalue { i64, ptr } %t844, 1
  %t846 = call ptr @__olang_region_or(ptr %t845, ptr null)
  %t847 = icmp ne ptr %t846, null
  %t848 = select i1 %t847, ptr %t846, ptr %t842
  %t849 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l183, i32 0, i32 0
  %t850 = load { i64, ptr }, ptr %t849
  %t851 = extractvalue { i64, ptr } %t850, 1
  %t852 = call ptr @__olang_region_or(ptr %t851, ptr null)
  %t853 = icmp ne ptr %t852, null
  %t854 = select i1 %t853, ptr %t852, ptr %t848
  %t855 = icmp eq ptr %t854, %t836
  call void @__olang_region_settle(ptr %t836, i1 %t855)
  br label %bb173
bb173:
  %t856 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l183
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t856, ptr %l40
  %t857 = ptrtoint ptr %v1 to i64
  store i64 %t857, ptr %l185, !tbaa !24
  %t858 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e40
  br i1 %t858, label %bb174, label %bb175
bb174:
  %t860 = call ptr @__olang_region_make(ptr %v1)
  %t861 = ptrtoint ptr %t860 to i64
  store i64 %t861, ptr %l185, !tbaa !24
  br label %bb175
bb175:
  %t862 = load i64, ptr %l185
  %t863 = inttoptr i64 %t862 to ptr
  %t864 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aTypeId_3e(ptr %t863)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t864, ptr %l187
  br label %bb176
bb176:
  %t865 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e40
  br i1 %t865, label %bb177, label %bb178
bb177:
  %t867 = load i64, ptr %l185
  %t868 = inttoptr i64 %t867 to ptr
  %t869 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l187, i32 0, i32 2
  %t870 = load { i64, ptr }, ptr %t869
  %t871 = extractvalue { i64, ptr } %t870, 1
  %t872 = call ptr @__olang_region_or(ptr %t871, ptr null)
  %t873 = icmp ne ptr %t872, null
  %t874 = select i1 %t873, ptr %t872, ptr null
  %t875 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l187, i32 0, i32 1
  %t876 = load { i64, ptr }, ptr %t875
  %t877 = extractvalue { i64, ptr } %t876, 1
  %t878 = call ptr @__olang_region_or(ptr %t877, ptr null)
  %t879 = icmp ne ptr %t878, null
  %t880 = select i1 %t879, ptr %t878, ptr %t874
  %t881 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l187, i32 0, i32 0
  %t882 = load { i64, ptr }, ptr %t881
  %t883 = extractvalue { i64, ptr } %t882, 1
  %t884 = call ptr @__olang_region_or(ptr %t883, ptr null)
  %t885 = icmp ne ptr %t884, null
  %t886 = select i1 %t885, ptr %t884, ptr %t880
  %t887 = icmp eq ptr %t886, %t868
  call void @__olang_region_settle(ptr %t868, i1 %t887)
  br label %bb178
bb178:
  %t888 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l187
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t888, ptr %l41
  %t889 = ptrtoint ptr %v1 to i64
  store i64 %t889, ptr %l189, !tbaa !24
  %t890 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e41
  br i1 %t890, label %bb179, label %bb180
bb179:
  %t892 = call ptr @__olang_region_make(ptr %v1)
  %t893 = ptrtoint ptr %t892 to i64
  store i64 %t893, ptr %l189, !tbaa !24
  br label %bb180
bb180:
  %t894 = load i64, ptr %l189
  %t895 = inttoptr i64 %t894 to ptr
  %t896 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3cI64_3e_26_3e(ptr %t895)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t896, ptr %l191
  br label %bb181
bb181:
  %t897 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e41
  br i1 %t897, label %bb182, label %bb183
bb182:
  %t899 = load i64, ptr %l189
  %t900 = inttoptr i64 %t899 to ptr
  %t901 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l191, i32 0, i32 2
  %t902 = load { i64, ptr }, ptr %t901
  %t903 = extractvalue { i64, ptr } %t902, 1
  %t904 = call ptr @__olang_region_or(ptr %t903, ptr null)
  %t905 = icmp ne ptr %t904, null
  %t906 = select i1 %t905, ptr %t904, ptr null
  %t907 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l191, i32 0, i32 1
  %t908 = load { i64, ptr }, ptr %t907
  %t909 = extractvalue { i64, ptr } %t908, 1
  %t910 = call ptr @__olang_region_or(ptr %t909, ptr null)
  %t911 = icmp ne ptr %t910, null
  %t912 = select i1 %t911, ptr %t910, ptr %t906
  %t913 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l191, i32 0, i32 0
  %t914 = load { i64, ptr }, ptr %t913
  %t915 = extractvalue { i64, ptr } %t914, 1
  %t916 = call ptr @__olang_region_or(ptr %t915, ptr null)
  %t917 = icmp ne ptr %t916, null
  %t918 = select i1 %t917, ptr %t916, ptr %t912
  %t919 = icmp eq ptr %t918, %t900
  call void @__olang_region_settle(ptr %t900, i1 %t919)
  br label %bb183
bb183:
  %t920 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l191
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t920, ptr %l42
  %t921 = ptrtoint ptr %v1 to i64
  store i64 %t921, ptr %l193, !tbaa !24
  %t922 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e42
  br i1 %t922, label %bb184, label %bb185
bb184:
  %t924 = call ptr @__olang_region_make(ptr %v1)
  %t925 = ptrtoint ptr %t924 to i64
  store i64 %t925, ptr %l193, !tbaa !24
  br label %bb185
bb185:
  %t926 = load i64, ptr %l193
  %t927 = inttoptr i64 %t926 to ptr
  %t928 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t927)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t928, ptr %l195
  br label %bb186
bb186:
  %t929 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e42
  br i1 %t929, label %bb187, label %bb188
bb187:
  %t931 = load i64, ptr %l193
  %t932 = inttoptr i64 %t931 to ptr
  %t933 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l195, i32 0, i32 2
  %t934 = load { i64, ptr }, ptr %t933
  %t935 = extractvalue { i64, ptr } %t934, 1
  %t936 = call ptr @__olang_region_or(ptr %t935, ptr null)
  %t937 = icmp ne ptr %t936, null
  %t938 = select i1 %t937, ptr %t936, ptr null
  %t939 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l195, i32 0, i32 1
  %t940 = load { i64, ptr }, ptr %t939
  %t941 = extractvalue { i64, ptr } %t940, 1
  %t942 = call ptr @__olang_region_or(ptr %t941, ptr null)
  %t943 = icmp ne ptr %t942, null
  %t944 = select i1 %t943, ptr %t942, ptr %t938
  %t945 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l195, i32 0, i32 0
  %t946 = load { i64, ptr }, ptr %t945
  %t947 = extractvalue { i64, ptr } %t946, 1
  %t948 = call ptr @__olang_region_or(ptr %t947, ptr null)
  %t949 = icmp ne ptr %t948, null
  %t950 = select i1 %t949, ptr %t948, ptr %t944
  %t951 = icmp eq ptr %t950, %t932
  call void @__olang_region_settle(ptr %t932, i1 %t951)
  br label %bb188
bb188:
  %t952 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l195
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t952, ptr %l43
  %t953 = ptrtoint ptr %v1 to i64
  store i64 %t953, ptr %l197, !tbaa !24
  %t954 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e43
  br i1 %t954, label %bb189, label %bb190
bb189:
  %t956 = call ptr @__olang_region_make(ptr %v1)
  %t957 = ptrtoint ptr %t956 to i64
  store i64 %t957, ptr %l197, !tbaa !24
  br label %bb190
bb190:
  %t958 = load i64, ptr %l197
  %t959 = inttoptr i64 %t958 to ptr
  %t960 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t959)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t960, ptr %l199
  br label %bb191
bb191:
  %t961 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3aTable_2e43
  br i1 %t961, label %bb192, label %bb193
bb192:
  %t963 = load i64, ptr %l197
  %t964 = inttoptr i64 %t963 to ptr
  %t965 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l199, i32 0, i32 2
  %t966 = load { i64, ptr }, ptr %t965
  %t967 = extractvalue { i64, ptr } %t966, 1
  %t968 = call ptr @__olang_region_or(ptr %t967, ptr null)
  %t969 = icmp ne ptr %t968, null
  %t970 = select i1 %t969, ptr %t968, ptr null
  %t971 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l199, i32 0, i32 1
  %t972 = load { i64, ptr }, ptr %t971
  %t973 = extractvalue { i64, ptr } %t972, 1
  %t974 = call ptr @__olang_region_or(ptr %t973, ptr null)
  %t975 = icmp ne ptr %t974, null
  %t976 = select i1 %t975, ptr %t974, ptr %t970
  %t977 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l199, i32 0, i32 0
  %t978 = load { i64, ptr }, ptr %t977
  %t979 = extractvalue { i64, ptr } %t978, 1
  %t980 = call ptr @__olang_region_or(ptr %t979, ptr null)
  %t981 = icmp ne ptr %t980, null
  %t982 = select i1 %t981, ptr %t980, ptr %t976
  %t983 = icmp eq ptr %t982, %t964
  call void @__olang_region_settle(ptr %t964, i1 %t983)
  br label %bb193
bb193:
  %t984 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l199
  %t985 = getelementptr %"compiler/types:Table", ptr %l201, i32 0, i32 0
  %t986 = load ptr, ptr %l1, !tbaa !29
  store ptr %t986, ptr %t985, !tbaa !29
  %t987 = getelementptr %"compiler/types:Table", ptr %l201, i32 0, i32 1
  %t988 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t988, ptr %t987
  %t989 = getelementptr %"compiler/types:Table", ptr %l201, i32 0, i32 2
  %t990 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l3
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t990, ptr %t989
  %t991 = getelementptr %"compiler/types:Table", ptr %l201, i32 0, i32 3
  %t992 = load i1, ptr %l4, !tbaa !21
  store i1 %t992, ptr %t991, !tbaa !21
  %t993 = getelementptr %"compiler/types:Table", ptr %l201, i32 0, i32 4
  %t994 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t994, ptr %t993
  %t995 = getelementptr %"compiler/types:Table", ptr %l201, i32 0, i32 5
  %t996 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t996, ptr %t995
  %t997 = getelementptr %"compiler/types:Table", ptr %l201, i32 0, i32 6
  %t998 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l7
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t998, ptr %t997
  %t999 = getelementptr %"compiler/types:Table", ptr %l201, i32 0, i32 7
  %t1000 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1000, ptr %t999
  %t1001 = getelementptr %"compiler/types:Table", ptr %l201, i32 0, i32 8
  %t1002 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1002, ptr %t1001
  %t1003 = getelementptr %"compiler/types:Table", ptr %l201, i32 0, i32 9
  %t1004 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1004, ptr %t1003
  %t1005 = getelementptr %"compiler/types:Table", ptr %l201, i32 0, i32 10
  %t1006 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l11
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1006, ptr %t1005
  %t1007 = getelementptr %"compiler/types:Table", ptr %l201, i32 0, i32 11
  %t1008 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1008, ptr %t1007
  %t1009 = getelementptr %"compiler/types:Table", ptr %l201, i32 0, i32 12
  %t1010 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l13
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1010, ptr %t1009
  %t1011 = getelementptr %"compiler/types:Table", ptr %l201, i32 0, i32 13
  %t1012 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1012, ptr %t1011
  %t1013 = getelementptr %"compiler/types:Table", ptr %l201, i32 0, i32 14
  %t1014 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1014, ptr %t1013
  %t1015 = getelementptr %"compiler/types:Table", ptr %l201, i32 0, i32 15
  %t1016 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l16
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1016, ptr %t1015
  %t1017 = getelementptr %"compiler/types:Table", ptr %l201, i32 0, i32 16
  %t1018 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l17
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1018, ptr %t1017
  %t1019 = getelementptr %"compiler/types:Table", ptr %l201, i32 0, i32 17
  %t1020 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l18
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1020, ptr %t1019
  %t1021 = getelementptr %"compiler/types:Table", ptr %l201, i32 0, i32 18
  %t1022 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l19
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1022, ptr %t1021
  %t1023 = getelementptr %"compiler/types:Table", ptr %l201, i32 0, i32 19
  %t1024 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l20
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1024, ptr %t1023
  %t1025 = getelementptr %"compiler/types:Table", ptr %l201, i32 0, i32 20
  %t1026 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1026, ptr %t1025
  %t1027 = getelementptr %"compiler/types:Table", ptr %l201, i32 0, i32 21
  %t1028 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l22
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1028, ptr %t1027
  %t1029 = getelementptr %"compiler/types:Table", ptr %l201, i32 0, i32 22
  %t1030 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l23
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1030, ptr %t1029
  %t1031 = getelementptr %"compiler/types:Table", ptr %l201, i32 0, i32 23
  %t1032 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l24
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1032, ptr %t1031
  %t1033 = getelementptr %"compiler/types:Table", ptr %l201, i32 0, i32 24
  %t1034 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l25
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1034, ptr %t1033
  %t1035 = getelementptr %"compiler/types:Table", ptr %l201, i32 0, i32 25
  %t1036 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l26
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1036, ptr %t1035
  %t1037 = getelementptr %"compiler/types:Table", ptr %l201, i32 0, i32 26
  %t1038 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1038, ptr %t1037
  %t1039 = getelementptr %"compiler/types:Table", ptr %l201, i32 0, i32 27
  %t1040 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l28
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1040, ptr %t1039
  %t1041 = getelementptr %"compiler/types:Table", ptr %l201, i32 0, i32 28
  %t1042 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l29
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1042, ptr %t1041
  %t1043 = getelementptr %"compiler/types:Table", ptr %l201, i32 0, i32 29
  %t1044 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l30
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1044, ptr %t1043
  %t1045 = getelementptr %"compiler/types:Table", ptr %l201, i32 0, i32 30
  %t1046 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l31
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1046, ptr %t1045
  %t1047 = getelementptr %"compiler/types:Table", ptr %l201, i32 0, i32 31
  %t1048 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l32
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1048, ptr %t1047
  %t1049 = getelementptr %"compiler/types:Table", ptr %l201, i32 0, i32 32
  %t1050 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l33
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1050, ptr %t1049
  %t1051 = getelementptr %"compiler/types:Table", ptr %l201, i32 0, i32 33
  %t1052 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l34
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1052, ptr %t1051
  %t1053 = getelementptr %"compiler/types:Table", ptr %l201, i32 0, i32 34
  %t1054 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l35
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1054, ptr %t1053
  %t1055 = getelementptr %"compiler/types:Table", ptr %l201, i32 0, i32 35
  %t1056 = load i1, ptr %l36, !tbaa !21
  store i1 %t1056, ptr %t1055, !tbaa !21
  %t1057 = getelementptr %"compiler/types:Table", ptr %l201, i32 0, i32 36
  %t1058 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l37
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1058, ptr %t1057
  %t1059 = getelementptr %"compiler/types:Table", ptr %l201, i32 0, i32 37
  %t1060 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l38
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1060, ptr %t1059
  %t1061 = getelementptr %"compiler/types:Table", ptr %l201, i32 0, i32 38
  %t1062 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l39
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1062, ptr %t1061
  %t1063 = getelementptr %"compiler/types:Table", ptr %l201, i32 0, i32 39
  %t1064 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l40
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1064, ptr %t1063
  %t1065 = getelementptr %"compiler/types:Table", ptr %l201, i32 0, i32 40
  %t1066 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l41
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1066, ptr %t1065
  %t1067 = getelementptr %"compiler/types:Table", ptr %l201, i32 0, i32 41
  %t1068 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l42
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1068, ptr %t1067
  %t1069 = getelementptr %"compiler/types:Table", ptr %l201, i32 0, i32 42
  %t1070 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l43
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1070, ptr %t1069
  %t1071 = getelementptr %"compiler/types:Table", ptr %l201, i32 0, i32 43
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t984, ptr %t1071
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l201, i64 2096, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/types:body" @compiler_2ftypes_3abody_2ector(ptr %v0, i32 %a0, i32 %a1, i32 %a2, i1 %a3, i1 %a4) #0 {
entry:
  %rv = alloca %"compiler/types:body"
  br label %start
start:
  br label %bb0
bb0:
  %t12 = insertvalue %"compiler/types:body" undef, i32 %a0, 0
  %t14 = insertvalue %"compiler/types:body" %t12, i32 %a1, 1
  %t16 = insertvalue %"compiler/types:body" %t14, i32 %a2, 2
  %t18 = insertvalue %"compiler/types:body" %t16, i1 %a3, 3
  %t20 = insertvalue %"compiler/types:body" %t18, i1 %a4, 4
  store %"compiler/types:body" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/types:body", ptr %rv
  ret %"compiler/types:body" %rr
}

define dso_local %"compiler/types:codeWalk" @compiler_2ftypes_3acodeWalk_2ector(ptr %v0, ptr %v1, ptr %a0, i1 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca i1
  %l7 = alloca i64
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/types:codeWalk"
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l2, !tbaa !29
  store i1 %a1, ptr %l3, !tbaa !21
  %t5 = ptrtoint ptr %v1 to i64
  store i64 %t5, ptr %l7, !tbaa !24
  %t6 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3acodeWalk_2e2
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = call ptr @__olang_region_make(ptr %v1)
  %t9 = ptrtoint ptr %t8 to i64
  store i64 %t9, ptr %l7, !tbaa !24
  br label %bb2
bb2:
  %t10 = load i64, ptr %l7
  %t11 = inttoptr i64 %t10 to ptr
  %t12 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %t11, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t12, ptr %l9
  br label %bb3
bb3:
  %t13 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3acodeWalk_2e2
  br i1 %t13, label %bb4, label %bb5
bb4:
  %t15 = load i64, ptr %l7
  %t16 = inttoptr i64 %t15 to ptr
  %t17 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9, i32 0, i32 0
  %t18 = load { i64, ptr }, ptr %t17
  %t19 = extractvalue { i64, ptr } %t18, 1
  %t20 = call ptr @__olang_region_or(ptr %t19, ptr null)
  %t21 = icmp ne ptr %t20, null
  %t22 = select i1 %t21, ptr %t20, ptr null
  %t23 = icmp eq ptr %t22, %t16
  call void @__olang_region_settle(ptr %t16, i1 %t23)
  br label %bb5
bb5:
  %t24 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  %t25 = load ptr, ptr %l2, !tbaa !29
  %t26 = insertvalue %"compiler/types:codeWalk" undef, ptr %t25, 0
  %t27 = load i1, ptr %l3, !tbaa !21
  %t28 = insertvalue %"compiler/types:codeWalk" %t26, i1 %t27, 1
  %t30 = insertvalue %"compiler/types:codeWalk" %t28, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t24, 2
  store %"compiler/types:codeWalk" %t30, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/types:codeWalk", ptr %rv
  ret %"compiler/types:codeWalk" %rr
}

define dso_local %"compiler/types:data" @compiler_2ftypes_3adata_2ector(ptr %v0, i32 %a0, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7) #0 {
entry:
  %rv = alloca %"compiler/types:data"
  br label %start
start:
  br label %bb0
bb0:
  %t18 = insertvalue %"compiler/types:data" undef, i32 %a0, 0
  %t20 = insertvalue %"compiler/types:data" %t18, i64 %a1, 1
  %t22 = insertvalue %"compiler/types:data" %t20, i64 %a2, 2
  %t24 = insertvalue %"compiler/types:data" %t22, i64 %a3, 3
  %t26 = insertvalue %"compiler/types:data" %t24, i64 %a4, 4
  %t28 = insertvalue %"compiler/types:data" %t26, i64 %a5, 5
  %t30 = insertvalue %"compiler/types:data" %t28, i64 %a6, 6
  %t32 = insertvalue %"compiler/types:data" %t30, i64 %a7, 7
  store %"compiler/types:data" %t32, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/types:data", ptr %rv
  ret %"compiler/types:data" %rr
}

define dso_local %"compiler/types:decl" @compiler_2ftypes_3adecl_2ector(ptr %v0, i64 %a0, i32 %a1, i32 %a2, i32 %a3) #0 {
entry:
  %rv = alloca %"compiler/types:decl"
  br label %start
start:
  br label %bb0
bb0:
  %t10 = insertvalue %"compiler/types:decl" undef, i64 %a0, 0
  %t12 = insertvalue %"compiler/types:decl" %t10, i32 %a1, 1
  %t14 = insertvalue %"compiler/types:decl" %t12, i32 %a2, 2
  %t16 = insertvalue %"compiler/types:decl" %t14, i32 %a3, 3
  store %"compiler/types:decl" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/types:decl", ptr %rv
  ret %"compiler/types:decl" %rr
}

define dso_local %"compiler/types:refWalk" @compiler_2ftypes_3arefWalk_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l7 = alloca i64
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/types:refWalk"
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l2, !tbaa !29
  store ptr %a1, ptr %l3, !tbaa !29
  %t5 = ptrtoint ptr %v2 to i64
  store i64 %t5, ptr %l7, !tbaa !24
  %t6 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3arefWalk_2e2
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = call ptr @__olang_region_make(ptr %v2)
  %t9 = ptrtoint ptr %t8 to i64
  store i64 %t9, ptr %l7, !tbaa !24
  br label %bb2
bb2:
  %t10 = load i64, ptr %l7
  %t11 = inttoptr i64 %t10 to ptr
  %t12 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %t11, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t12, ptr %l9
  br label %bb3
bb3:
  %t13 = load i1, ptr @olang_2esole_2ecompiler_2ftypes_3arefWalk_2e2
  br i1 %t13, label %bb4, label %bb5
bb4:
  %t15 = load i64, ptr %l7
  %t16 = inttoptr i64 %t15 to ptr
  %t17 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9, i32 0, i32 0
  %t18 = load { i64, ptr }, ptr %t17
  %t19 = extractvalue { i64, ptr } %t18, 1
  %t20 = call ptr @__olang_region_or(ptr %t19, ptr null)
  %t21 = icmp ne ptr %t20, null
  %t22 = select i1 %t21, ptr %t20, ptr null
  %t23 = icmp eq ptr %t22, %t16
  call void @__olang_region_settle(ptr %t16, i1 %t23)
  br label %bb5
bb5:
  %t24 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  %t25 = load ptr, ptr %l2, !tbaa !29
  %t26 = insertvalue %"compiler/types:refWalk" undef, ptr %t25, 0
  %t27 = load ptr, ptr %l3, !tbaa !29
  %t28 = insertvalue %"compiler/types:refWalk" %t26, ptr %t27, 1
  %t30 = insertvalue %"compiler/types:refWalk" %t28, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t24, 2
  store %"compiler/types:refWalk" %t30, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/types:refWalk", ptr %rv
  ret %"compiler/types:refWalk" %rr
}

declare void @__olang_check_failed(ptr) cold noreturn
@.d0 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"_H" }>, align 8
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
@.d1 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
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
@.d2 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"..." }>, align 8
@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20compiler_2ftypes_3aDeclId_3e_2e0 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
declare ptr @__olang_scope_or(ptr, ptr)
@.d3 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
declare i64 @__olang_fmt_i64(ptr, i64)
@.d4 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"," }>, align 8
@.d5 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@olang_2esole_2eArray_3cArray_3ccompiler_2fsource_3aNameId_3e_26_3e_2e_2d1 = weak hidden constant i1 false
@__olang_empty_array = external constant [16 x i64]
@.d6 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"keeps " }>, align 8
@.d7 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d8 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d9 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"keeps " }>, align 8
@.d10 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" in " }>, align 8
@.d11 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d12 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"{ }" }>, align 8
@.d13 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"{ " }>, align 8
@.d14 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d15 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" }" }>, align 8
@.d16 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"?" }>, align 8
@.d17 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d18 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"default" }>, align 8
@.d19 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"noreturn" }>, align 8
@.d20 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".#" }>, align 8
declare i64 @__olang_fmt_u64(ptr, i64)
@.d21 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"void" }>, align 8
@__olang_prog_scope = external thread_local(initialexec) global ptr
@.d22 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"I" }>, align 8
@.d23 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"U" }>, align 8
@.d24 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d25 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d26 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Array<" }>, align 8
@.d27 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d28 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"..." }>, align 8
@.d29 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"mut " }>, align 8
@.d30 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"?&" }>, align 8
@.d31 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"&" }>, align 8
@.d32 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"fn?" }>, align 8
@.d33 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"fn" }>, align 8
@.d34 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" (" }>, align 8
@.d35 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d36 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" ?" }>, align 8
@.d37 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" ![" }>, align 8
@.d38 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" ~[" }>, align 8
@.d39 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"struct(" }>, align 8
@.d40 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"enum{" }>, align 8
@.d41 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"<" }>, align 8
@.d42 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d43 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c">" }>, align 8
@.d44 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"true" }>, align 8
@.d45 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"false" }>, align 8
@.d46 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"<" }>, align 8
@.d47 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c">" }>, align 8
@.d48 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"any " }>, align 8
@.d49 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"error{" }>, align 8
@.d50 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" + " }>, align 8
@.d51 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d52 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d53 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d54 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"borrows " }>, align 8
@.d55 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d56 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"keeps " }>, align 8
@.d57 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d58 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" in " }>, align 8
@.d59 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d60 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d61 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"i" }>, align 8
@.d62 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"i32" }>, align 8
@.d63 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"i32" }>, align 8
@.d64 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"void" }>, align 8
@.d65 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"{ ptr, ptr }" }>, align 8
@.d66 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"{ i64, ptr }" }>, align 8
@.d67 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"{ ptr, ptr }" }>, align 8
@.d68 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d69 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"?" }>, align 8
@olang_2esole_2ecompiler_2ftypes_3aDtorWalk_2e1 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_2ector(ptr %v0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1, ptr %l0
  br label %bb1
bb1:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %rv
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %rr
}

declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3adata_2c_20compiler_2ftypes_3aTypeId_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3adata_2c_20compiler_2ftypes_3aTypeId_3e_2ector(ptr %v0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1, ptr %l0
  br label %bb1
bb1:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %rv
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %rr
}

@olang_2esole_2ecompiler_2ftypes_3aTable_2e4 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftypes_3aTable_2e5 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftypes_3aTable_2e6 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cArray_3ccompiler_2ftypes_3_H67866d893b0e235fefa60e815142be68(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cArray_3ccompiler_2ftypes_3aTypeId_3e_26_2c_20compiler_2ftypes_3aListId_3e_2ector(ptr %v0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1, ptr %l0
  br label %bb1
bb1:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %rv
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %rr
}

@olang_2esole_2ecompiler_2ftypes_3aTable_2e7 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftypes_3aTable_2e8 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftypes_3aTable_2e9 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftypes_3aTable_2e10 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2ector(ptr %v0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1, ptr %l0
  br label %bb1
bb1:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %rv
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %rr
}

@olang_2esole_2ecompiler_2ftypes_3aTable_2e11 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftypes_3aTable_2e12 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftypes_3aTable_2e14 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftypes_3aTable_2e15 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aStr_Hdaf48aaf31e9845c659408ae38f7f59c(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20compiler_2ftypes_3aDeclId_3e_2ector(ptr %v0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1, ptr %l0
  br label %bb1
bb1:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %rv
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %rr
}

@olang_2esole_2ecompiler_2ftypes_3aTable_2e16 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20compiler_2ftypes_3abody_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20compiler_2ftypes_3abody_3e_2ector(ptr %v0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1, ptr %l0
  br label %bb1
bb1:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %rv
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %rr
}

@olang_2esole_2ecompiler_2ftypes_3aTable_2e17 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId__Hbfe39cc2b71dbabe830cee24ccf915b6(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Array_3ccompiler_2fsource_3aNameId_3e_26_3e_2ector(ptr %v0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1, ptr %l0
  br label %bb1
bb1:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %rv
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %rr
}

@olang_2esole_2ecompiler_2ftypes_3aTable_2e18 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId__Hb60d9b83e890412eba8d9d5191d2497d(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20compiler_2ftypes_3aDeclId_3e_2ector(ptr %v0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1, ptr %l0
  br label %bb1
bb1:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %rv
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %rr
}

@olang_2esole_2ecompiler_2ftypes_3aTable_2e19 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId__Hc9d5028d9efd264605c80efeddc4ccf9(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20compiler_2ftypes_3aTypeId_3e_2ector(ptr %v0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1, ptr %l0
  br label %bb1
bb1:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %rv
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %rr
}

@olang_2esole_2ecompiler_2ftypes_3aTable_2e20 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftypes_3aTable_2e21 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftypes_3aTable_2e22 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftypes_3aTable_2e23 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftypes_3aTable_2e24 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftypes_3aTable_2e25 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftypes_3aTable_2e26 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftypes_3aTable_2e27 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftypes_3aTable_2e28 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftypes_3aTable_2e29 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cArray_3cI64_3e_26_2c_20compiler_2ftypes_3aScopesId_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cArray_3cI64_3e_26_2c_20compiler_2ftypes_3aScopesId_3e_2ector(ptr %v0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1, ptr %l0
  br label %bb1
bb1:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %rv
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %rr
}

@olang_2esole_2ecompiler_2ftypes_3aTable_2e30 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftypes_3aTable_2e31 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cArray_3cI64_3e_26_2c_20I64_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cArray_3cI64_3e_26_2c_20I64_3e_2ector(ptr %v0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1, ptr %l0
  br label %bb1
bb1:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %rv
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %rr
}

@olang_2esole_2ecompiler_2ftypes_3aTable_2e32 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftypes_3aTable_2e33 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftypes_3aTable_2e34 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftypes_3aTable_2e36 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftypes_3aTable_2e37 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ector(ptr %v0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1, ptr %l0
  br label %bb1
bb1:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %rv
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %rr
}

@olang_2esole_2ecompiler_2ftypes_3aTable_2e38 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftypes_3aTable_2e39 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftypes_3aTable_2e40 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aTypeId_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aTypeId_3e_2ector(ptr %v0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1, ptr %l0
  br label %bb1
bb1:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %rv
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %rr
}

@olang_2esole_2ecompiler_2ftypes_3aTable_2e41 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3cI64_3e_26_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3cI64_3e_26_3e_2ector(ptr %v0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1, ptr %l0
  br label %bb1
bb1:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %rv
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %rr
}

@olang_2esole_2ecompiler_2ftypes_3aTable_2e42 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftypes_3aTable_2e43 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftypes_3acodeWalk_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftypes_3arefWalk_2e2 = weak hidden constant i1 false
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
@olang_loc_c38cb1fa51df222a_dffb1d180717405e = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_84fae12c7c668807_3becc0cabb21395b = external constant [0 x i8]
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare i1 @compiler_2ftypes_2esymbolHexDigit(i8 %a0)
declare i64 @compiler_2ftypes_2esymbolHexValue(i8 %a0)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3adecl_3e_2eLen_3ccompiler_2ftypes_3adecl_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3adecl_3e_2ePush_3ccompiler_2ftypes_3adecl_3e(ptr %v0, ptr %a0, %"compiler/types:decl" %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H4604c93a4aa22278631629833c26f586(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i32 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlainList(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9162e3b7f03fcbf954b681204d5f6cca(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_363cc534119e1b58_f5bd72046473679c = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fsource_3aNameId_3e__H69e9af7ee32b7ff0c8685324094a29a4(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fsource_3aNameId_3e__H41a2935585cca595f0dd127aea20d09e(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aListId_3e_2ePush_3ccompiler_2ftypes_3aListId_3e(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_a8f3bb3fba0fecc5_79768dea68ad9969 = external constant [0 x i8]
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fsource_3aNameId_3e__H37377f924b66ff741793959f79fef546(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_fab351c77a2932a6_cae3bbf023c8ab2a = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fsource_3aNameId_3e__H6938bdf4910ae806791e4f0f97041ba1(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2edeepest(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eintern(ptr %v0, ptr %a0, %"compiler/types:data" %a1, i32 %a2)
declare i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eLen_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eB(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2edepthOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eSetAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_569ba1a9eae34c7a_75ec50ad0f32d156 = external constant [0 x i8]
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2efieldBits(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e_2eAt_3cArray_3cI64_3e_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_6abff20a2e15cc04_a62c698ed99e6160 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_c5f0a3e3912a4ce3_83ad4b8f75c0f327 = external constant [0 x i8]
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eprimBits = available_externally constant <{ [120 x i8] }> <{ [120 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\20\00\00\00\00\00\00\00\40\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\20\00\00\00\00\00\00\00\40\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\20\00\00\00\00\00\00\00\40\00\00\00\00\00\00\00" }>, align 64
declare i64 @compiler_2ftypes_2eIntBytes(i64 %a0)
@G_2ecompiler_2ftypes_2eLaidOut = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePacked(ptr %v0, ptr %a0, i32 %a1)
declare { i64, i64 } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2elayPacked(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_448c58e2e97e944f_f556e6dbd0c75243 = external constant [0 x i8]
@olang_loc_136e48f5d148640e_b95a40c005170ac2 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare %"compiler/types:decl" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3adecl_3e_2eAt_3ccompiler_2ftypes_3adecl_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20compile_H4ee179d696ae959fbb722da89c7f46de(ptr %v0, ptr %a0, i32 %a1)
declare { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H25f20ec7bc3952e7f71d4b5fc38b1e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@G_2ecompiler_2ftypes_2eNullable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2ftypes_2eSpread = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eKeepsHome = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
@olang_loc_62115ad0f44a3a28_1c0abcab46b514cc = external constant [0 x i8]
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParamName(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_Haae4fbc3ba15583a49040d883d2248d1(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20compile_H830566a038befb7310211b752210e58f(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20compile_H010f1f1ff4e5a3a6ef2d904187315b0d(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@olang_loc_6b6356ebbaa556b4_537d1793e4121070 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cArray_3cI64_3e_26_2c_20I64_3e_2eGet_3cArray_3cI64_3e_26_2c_20I64_3e(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e_2eLen_3cArray_3cI64_3e_26_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e_2ePush_3cArray_3cI64_3e_26_3e(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cArray_3cI64_3e_26_2c_20I64_3e_2ePut_3cArray_3cI64_3e_26_2c_20I64_3e(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %v0, i64 %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncTag(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i64 %a5, i1 %a6, i32 %a7, i64 %a8)
declare { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20compile_H08d487c91a3409a786f6b7c534acefc5(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eOwnScope = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRole(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eRoleDtor = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eClosingVar = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FE\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShareOf(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2ftypes_2eRoleCtor = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eRoleTail = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResults(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eFromTypeVar = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FE\FF\FF\FF\FF\FF\FF\FF" }>, align 8
@G_2ecompiler_2ftypes_2eResultVar = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %v0, ptr %v1, ptr %a0)
@G_2ecompiler_2ftypes_2eRoleFn = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@olang_loc_63e623ceae63df16_2a862fe3f0344bd2 = external constant [0 x i8]
declare { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cArray_3cI64_3e_26_2c_20compiler_2ftype_H6f9f964c6e47aa337ef4265757211d88(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cArray_3cI64_3e_26_2c_20compiler_2ftype_H453784843b408e8ae093d39318df1aed(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i32 %a2)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20compile_H00ad3ea0211b1c1ed775c1e06d3ea587(ptr %v0, ptr %a0, i32 %a1, %"compiler/types:body" %a2)
@olang_loc_f7eaf3fe8a46d3da_9f187abb7d2da27e = external constant [0 x i8]
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Array_3_Hd895f0b253f779909e5758cb24860698(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2)
declare { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eGet_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamesIdOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eBigAggregate = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\80\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/types:data" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3adata_3e_2eAt_3ccompiler_2ftypes_3adata_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i32, %"compiler/types:body" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20compile_Hede57d818a9c1e0bef22465b1936f190(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eprimNames = external constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }>
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eDefaultErrT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
declare { i64, ptr } @compiler_2ftypes_2eUnsignedText(ptr %v0, i64 %a0)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePattern(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnyTrait(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_bd4ce41e1f7e504b_596b58263987420f = external constant [0 x i8]
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePromiseWords(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2ePromiseNames = external constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }>
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eneedsDrop(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eLen_3cU8_3e(ptr %v0, ptr %a0)
declare i8 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eAt_3cU8_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasPayload(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePackedBits(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRawType(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2eCaseBits(i64 %a0)
@olang_loc_a62d6e91a590f0f5_b15c9cb812bc8769 = external constant [0 x i8]
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnedPart(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2epartsOwn(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@olang_loc_34afd997c56f8665_d97bdd2c594f3b01 = external constant [0 x i8]
@olang_loc_dfad6825423c7f34_db691f90aea39770 = external constant [0 x i8]
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclaresCopy(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2epartsRunCopy(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@olang_loc_937d2117677220f7_4e71d8f6c64016c3 = external constant [0 x i8]
@olang_loc_b2a5ea58cae3bcd6_127532dafa8fcf42 = external constant [0 x i8]
@G_2ecompiler_2ftypes_2eprimLlvm = external constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }>
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2earrayLlvm(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eenumLlvm(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2enamedLlvm(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
@olang_loc_bbfcd5581dbe335b_bbf57adf6fe10b0f = external constant [0 x i8]
@olang_loc_983e1053235c526f_18c94ea801ade2a3 = external constant [0 x i8]
@olang_loc_427e8c4f545bd5ae_655f412a6751c1a2 = external constant [0 x i8]
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eHas_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2evaluePartsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2)
@olang_loc_67164133c3d62985_23e986a03672eb11 = external constant [0 x i8]
@olang_loc_e75b62ac711792d4_a1f22b7e9dd80a80 = external constant [0 x i8]
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3acodeWalk_2esome(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_99f937c00427181_9a6d61fc7809e035 = external constant [0 x i8]
@olang_loc_60c82cde6ffdb5d3_c68082b86ff4ff17 = external constant [0 x i8]
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3arefWalk_2esome(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
@olang_loc_322c78cc145e2005_c2be1492b317e4d9 = external constant [0 x i8]
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3arefWalk_2elands(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
@olang_loc_d452eab293f44e67_f9a4b0317fd8e9b = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %v0, i64 %a0)
declare { i64, ptr } @std_2fprelude_2ftext_2eI64_2eFormat(ptr %v0, i64 %a0, i64 %a1)
@olang_loc_a384a4bbbe0ebea1_23bacf7041e0bcc5 = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2ePadStart(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i8 %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3adata_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI32_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2ftypes_3aTypeId_3e_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fsource_3aNameId_3e_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aListId_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3adecl_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU8_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3adata_2c_20compiler_2ftypes_3aTypeId_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cArray_3ccompiler_2ftypes_3aTypeId_3e_26_2c_20compiler_2ftypes_3aListId_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20compiler_2ftypes_3aDeclId_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20compiler_2ftypes_3abody_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Array_3ccompiler_2fsource_3aNameId_3e_26_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20compiler_2ftypes_3aDeclId_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20compiler_2ftypes_3aTypeId_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cArray_3cI64_3e_26_2c_20compiler_2ftypes_3aScopesId_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cArray_3cI64_3e_26_2c_20I64_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aTypeId_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3cI64_3e_26_3e_2ector(ptr %v0)

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
