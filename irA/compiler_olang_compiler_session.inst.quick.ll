source_filename = "compiler_olang_compiler_session.inst.quick.ll"
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
%"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20" = type { i64, i32 }
%"compiler/doc:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15" = type { { i64, ptr }, { i64, ptr } }
%"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" = type { ptr, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/session:Use" = type { i64, i64, { i64, ptr } }
%"compiler/doc:Entry" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr } }
define dso_local %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20" @std_2fpair_3aPair_3cI64_2c_20compiler_2ftyped_3aLocalId_3e_2ector(ptr %v0, i64 %a0, i32 %a1) #0 {
entry:
  %r = tail call %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20" @std_2fpair_3aPair_3cI64_2c_20I32_3e_2ector(ptr %v0, i64 %a0, i32 %a1)
  ret %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20" %r
}

define dso_local void @std_2fprelude_2farray_2eArray_3ccompiler_2fdoc_3aModule_3e_2eSort_3ccompiler_2fdoc_3aModule_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1c, ptr %a1e) #0 {
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
  call void @std_2fprelude_2farray_2esortByPositions_3ccompiler_2fdoc_3aModule_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %t7, ptr %t11, ptr %t12)
  br label %bb4
bb4:
  br label %bb5
bb5:
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2farray_2esortByPositions_3ccompiler_2fdoc_3aModule_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1c, ptr %a1e) #0 {
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
  call void @std_2fprelude_2farray_2esortInsertion_3ccompiler_2fdoc_3aModule_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %t11, i64 0, i64 %t12, ptr %t17, ptr %t18)
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
  call void @__olang_check_failed(ptr @olang_loc_c022e58ec96da978_ec8311c98a19dd54)
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
  call void @__olang_check_failed(ptr @olang_loc_c022e58ec96da978_ec8311c98a19dd54)
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
  call void @__olang_check_failed(ptr @olang_loc_58e30339dc525c65_8ff29672c8905379)
  unreachable
bb22:
  %t75 = load i64, ptr %l45, !tbaa !24
  %t76 = load i64, ptr %l46, !tbaa !24
  %t77 = icmp sle i64 %t75, %t76
  br i1 %t77, label %bb24, label %bb25
bb23:
  call void @__olang_check_failed(ptr @olang_loc_58e30339dc525c65_8ff29672c8905379)
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
  call void @__olang_check_failed(ptr @olang_loc_58e30339dc525c65_8ff29672c8905379)
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
  %t167 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_0, 0
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
  call void @std_2fprelude_2farray_2esortPermute_3ccompiler_2fdoc_3aModule_3e(ptr %v0, ptr %s0, { i64, ptr } %t173, i64 %t174, { i64, ptr } %t175)
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
  call void @std_2fprelude_2farray_2esortMerge_3ccompiler_2fdoc_3aModule_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %t219, i64 %t220, i64 %t225, i64 %t226, ptr %t233, ptr %t234)
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

define dso_local void @std_2fprelude_2farray_2esortInsert_3ccompiler_2fdoc_3aModule_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i64 %a2, ptr %a3c, ptr %a3e) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca i64
  %l4 = alloca %"compiler/doc:Module"
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l13 = alloca i1
  %l14 = alloca i1
  %l15 = alloca { ptr, ptr }
  %l16 = alloca %"compiler/doc:Module"
  %l18 = alloca %"compiler/doc:Module"
  %l19 = alloca { i64, ptr }
  %l22 = alloca %"compiler/doc:Module"
  %l24 = alloca %"compiler/doc:Module"
  %l25 = alloca i1
  %l27 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l36 = alloca i64
  %l37 = alloca %"compiler/doc:Module"
  %l39 = alloca %"compiler/doc:Module"
  %s1 = alloca %olang.scope
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
  %t6 = getelementptr %"compiler/doc:Module", ptr %t5, i64 %t2
  %t7 = load %"compiler/doc:Module", ptr %t6
  store %"compiler/doc:Module" zeroinitializer, ptr %t6
  store %"compiler/doc:Module" %t7, ptr %l4
  %t9 = load i64, ptr %l2, !tbaa !24
  store i64 %t9, ptr %l5, !tbaa !24
  br label %bb1
bb1:
  store %olang.scope zeroinitializer, ptr %s1
  %t11 = load i64, ptr %l5, !tbaa !24
  %t15 = icmp sgt i64 %t11, %a1
  br i1 %t15, label %bb2, label %bb3
bb2:
  store { ptr, ptr } %pg3, ptr %l15
  %t18 = load %"compiler/doc:Module", ptr %l4
  store %"compiler/doc:Module" %t18, ptr %l16
  %t20 = call %"compiler/doc:Module" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fdoc_3aModule(ptr %s1, ptr %l16)
  store %"compiler/doc:Module" %t20, ptr %l18
  br label %bb4
bb3:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb8
bb4:
  %t21 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t21, ptr %l19, !tbaa !27
  %t22 = load i64, ptr %l5, !tbaa !24
  %t24 = sub i64 %t22, 1
  %t26 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = getelementptr %"compiler/doc:Module", ptr %t27, i64 %t24
  %t29 = load %"compiler/doc:Module", ptr %t28
  store %"compiler/doc:Module" %t29, ptr %l22
  %t31 = call %"compiler/doc:Module" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fdoc_3aModule(ptr %s1, ptr %l22)
  store %"compiler/doc:Module" %t31, ptr %l24
  br label %bb5
bb5:
  %t32 = load { ptr, ptr }, ptr %l15
  %t33 = extractvalue { ptr, ptr } %t32, 0
  %t34 = extractvalue { ptr, ptr } %t32, 1
  %t35 = load %"compiler/doc:Module", ptr %l18
  %t36 = load %"compiler/doc:Module", ptr %l24
  %t37 = call i1 %t33(ptr %t34, ptr %s1, ptr %s1, %"compiler/doc:Module" %t35, %"compiler/doc:Module" %t36)
  store i1 %t37, ptr %l25
  br label %bb6
bb6:
  %t38 = load i1, ptr %l25, !tbaa !21
  store i1 %t38, ptr %l14, !tbaa !21
  br label %bb7
bb7:
  %t39 = load i1, ptr %l14, !tbaa !21
  store i1 %t39, ptr %l13, !tbaa !21
  br label %bb8
bb8:
  %t40 = load i1, ptr %l13, !tbaa !21
  %t41 = xor i1 %t40, true
  br i1 %t41, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s1)
  br label %bb13
bb10:
  br label %bb11
bb11:
  %t43 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t43, ptr %l27, !tbaa !27
  %t44 = load i64, ptr %l5, !tbaa !24
  %t45 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t45, ptr %l29, !tbaa !27
  %t46 = load i64, ptr %l5, !tbaa !24
  %t48 = sub i64 %t46, 1
  %t50 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !27
  %t52 = getelementptr %"compiler/doc:Module", ptr %t51, i64 %t48
  %t53 = load %"compiler/doc:Module", ptr %t52
  store %"compiler/doc:Module" zeroinitializer, ptr %t52
  %t56 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !27
  %t58 = getelementptr %"compiler/doc:Module", ptr %t57, i64 %t44
  store %"compiler/doc:Module" %t53, ptr %t58
  %t59 = load i64, ptr %l5, !tbaa !24
  %t61 = sub i64 %t59, 1
  store i64 %t61, ptr %l5, !tbaa !24
  call void @__olang_scope_close(ptr %s1)
  br label %bb12
bb12:
  br label %bb1
bb13:
  %t63 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t63, ptr %l35, !tbaa !27
  %t64 = load i64, ptr %l5, !tbaa !24
  store i64 %t64, ptr %l36, !tbaa !24
  %t65 = load %"compiler/doc:Module", ptr %l4
  store %"compiler/doc:Module" %t65, ptr %l37
  %t67 = call %"compiler/doc:Module" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fdoc_3aModule(ptr %v0, ptr %l37)
  store %"compiler/doc:Module" %t67, ptr %l39
  br label %bb14
bb14:
  %t68 = load %"compiler/doc:Module", ptr %l39
  %t69 = load i64, ptr %l36, !tbaa !24
  %t70 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !27
  %t72 = getelementptr %"compiler/doc:Module", ptr %t71, i64 %t69
  store %"compiler/doc:Module" %t68, ptr %t72
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2farray_2esortInsertion_3ccompiler_2fdoc_3aModule_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i64 %a2, ptr %a3c, ptr %a3e) #0 {
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
  call void @std_2fprelude_2farray_2esortInsert_3ccompiler_2fdoc_3aModule_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %t54, i64 %t51, ptr %t61, ptr %t62)
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

define dso_local void @std_2fprelude_2farray_2esortMerge_3ccompiler_2fdoc_3aModule_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i64 %a2, i64 %a3, ptr %a4c, ptr %a4e) #0 {
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
  %l40 = alloca { ptr, ptr }
  %l41 = alloca { i64, ptr }
  %l43 = alloca %"compiler/doc:Module"
  %l45 = alloca %"compiler/doc:Module"
  %l46 = alloca { i64, ptr }
  %l48 = alloca %"compiler/doc:Module"
  %l50 = alloca %"compiler/doc:Module"
  %l51 = alloca i1
  %l61 = alloca i64
  %l64 = alloca i64
  %l102 = alloca i1
  %l103 = alloca { ptr, ptr }
  %l104 = alloca { i64, ptr }
  %l106 = alloca %"compiler/doc:Module"
  %l108 = alloca %"compiler/doc:Module"
  %l109 = alloca { i64, ptr }
  %l111 = alloca %"compiler/doc:Module"
  %l113 = alloca %"compiler/doc:Module"
  %l114 = alloca i1
  %l156 = alloca i1
  %l157 = alloca { ptr, ptr }
  %l158 = alloca { i64, ptr }
  %l162 = alloca %"compiler/doc:Module"
  %l164 = alloca %"compiler/doc:Module"
  %l165 = alloca { i64, ptr }
  %l167 = alloca %"compiler/doc:Module"
  %l169 = alloca %"compiler/doc:Module"
  %l170 = alloca i1
  %l181 = alloca i1
  %l192 = alloca i1
  %l204 = alloca i1
  %s2 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s14 = alloca %olang.scope
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
  br label %bb29
bb3:
  store %olang.scope zeroinitializer, ptr %s2
  %t13 = load i64, ptr %l5, !tbaa !24
  %t14 = load i64, ptr %l6, !tbaa !24
  %t17 = icmp slt i64 %t13, %t14
  %t19 = xor i1 %t17, true
  br i1 %t19, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s2)
  br label %bb15
bb5:
  br label %bb6
bb6:
  %t21 = load i64, ptr %l5, !tbaa !24
  %t22 = load i64, ptr %l6, !tbaa !24
  %t25 = add i64 %t21, %t22
  %t27 = sdiv i64 %t25, 2
  store i64 %t27, ptr %l7, !tbaa !24
  %t29 = load { ptr, ptr }, ptr %l4
  store { ptr, ptr } %t29, ptr %l40
  %t30 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t30, ptr %l41, !tbaa !27
  %t31 = load i64, ptr %l7, !tbaa !24
  %t33 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !27
  %t35 = getelementptr %"compiler/doc:Module", ptr %t34, i64 %t31
  %t36 = load %"compiler/doc:Module", ptr %t35
  store %"compiler/doc:Module" %t36, ptr %l43
  %t38 = call %"compiler/doc:Module" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fdoc_3aModule(ptr %s2, ptr %l43)
  store %"compiler/doc:Module" %t38, ptr %l45
  br label %bb7
bb7:
  %t39 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t39, ptr %l46, !tbaa !27
  %t40 = load i64, ptr %l1, !tbaa !24
  %t42 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !27
  %t44 = getelementptr %"compiler/doc:Module", ptr %t43, i64 %t40
  %t45 = load %"compiler/doc:Module", ptr %t44
  store %"compiler/doc:Module" %t45, ptr %l48
  %t47 = call %"compiler/doc:Module" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fdoc_3aModule(ptr %s2, ptr %l48)
  store %"compiler/doc:Module" %t47, ptr %l50
  br label %bb8
bb8:
  %t48 = load { ptr, ptr }, ptr %l40
  %t49 = extractvalue { ptr, ptr } %t48, 0
  %t50 = extractvalue { ptr, ptr } %t48, 1
  %t51 = load %"compiler/doc:Module", ptr %l45
  %t52 = load %"compiler/doc:Module", ptr %l50
  %t53 = call i1 %t49(ptr %t50, ptr %s2, ptr %s2, %"compiler/doc:Module" %t51, %"compiler/doc:Module" %t52)
  store i1 %t53, ptr %l51
  br label %bb9
bb9:
  %t54 = load i1, ptr %l51, !tbaa !21
  store i1 %t54, ptr %l39, !tbaa !21
  br label %bb10
bb10:
  %t55 = load i1, ptr %l39, !tbaa !21
  br i1 %t55, label %bb11, label %bb12
bb11:
  %t56 = load i64, ptr %l7, !tbaa !24
  %t58 = add i64 %t56, 1
  store i64 %t58, ptr %l5, !tbaa !24
  br label %bb13
bb12:
  %t60 = load i64, ptr %l7, !tbaa !24
  store i64 %t60, ptr %l6, !tbaa !24
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s2)
  br label %bb14
bb14:
  br label %bb3
bb15:
  %t62 = load i64, ptr %l1, !tbaa !24
  store i64 %t62, ptr %l8, !tbaa !24
  %t64 = load i64, ptr %l5, !tbaa !24
  %t66 = sub i64 %t64, 1
  store i64 %t66, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t68 = load i64, ptr %l9, !tbaa !24
  %t69 = load i64, ptr %l8, !tbaa !24
  %t72 = icmp sgt i64 %t68, %t69
  br i1 %t72, label %bb16, label %bb17
bb16:
  %t74 = load i64, ptr %l10, !tbaa !24
  %t76 = icmp sgt i64 %t74, 0
  br i1 %t76, label %bb18, label %bb19
bb17:
  store i64 0, ptr %l61, !tbaa !24
  br label %bb21
bb18:
  %t78 = load i64, ptr %l9, !tbaa !24
  %t79 = load i64, ptr %l8, !tbaa !24
  %t82 = sub i64 %t78, %t79
  %t83 = load i64, ptr %l10, !tbaa !24
  %t86 = add i64 %t82, %t83
  %t88 = sub i64 %t86, 1
  %t89 = load i64, ptr %l10, !tbaa !24
  %t92 = sdiv i64 %t88, %t89
  store i64 %t92, ptr %l64, !tbaa !24
  br label %bb20
bb19:
  store i64 0, ptr %l64, !tbaa !24
  br label %bb20
bb20:
  %t94 = load i64, ptr %l64, !tbaa !24
  store i64 %t94, ptr %l61, !tbaa !24
  br label %bb21
bb21:
  %t95 = load i64, ptr %l61, !tbaa !24
  store i64 %t95, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb22
bb22:
  %t96 = load i64, ptr %l12, !tbaa !24
  %t97 = load i64, ptr %l11, !tbaa !24
  %t100 = icmp slt i64 %t96, %t97
  %t102 = xor i1 %t100, true
  br i1 %t102, label %bb23, label %bb24
bb23:
  br label %bb28
bb24:
  br label %bb25
bb25:
  %t104 = load i64, ptr %l8, !tbaa !24
  %t105 = load i64, ptr %l12, !tbaa !24
  %t106 = load i64, ptr %l10, !tbaa !24
  %t109 = mul i64 %t105, %t106
  %t112 = add i64 %t104, %t109
  store i64 %t112, ptr %l13, !tbaa !24
  %t114 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t115 = load i64, ptr %l13, !tbaa !24
  %t116 = load i64, ptr %l13, !tbaa !24
  %t118 = add i64 %t116, 1
  call void @std_2fprelude_2farray_2esortSwap_3ccompiler_2fdoc_3aModule_3e(ptr %v0, { i64, ptr } %t114, i64 %t115, i64 %t118)
  br label %bb26
bb26:
  br label %bb27
bb27:
  %t122 = load i64, ptr %l12, !tbaa !24
  %t124 = add i64 %t122, 1
  store i64 %t124, ptr %l12, !tbaa !24
  br label %bb22
bb28:
  br label %ret
bb29:
  %t126 = load i64, ptr %l3, !tbaa !24
  %t127 = load i64, ptr %l2, !tbaa !24
  %t130 = sub i64 %t126, %t127
  %t132 = icmp eq i64 %t130, 1
  br i1 %t132, label %bb30, label %bb31
bb30:
  %t134 = load i64, ptr %l1, !tbaa !24
  store i64 %t134, ptr %l14, !tbaa !24
  %t136 = load i64, ptr %l2, !tbaa !24
  store i64 %t136, ptr %l15, !tbaa !24
  br label %bb32
bb31:
  br label %bb52
bb32:
  store %olang.scope zeroinitializer, ptr %s9
  %t138 = load i64, ptr %l14, !tbaa !24
  %t139 = load i64, ptr %l15, !tbaa !24
  %t142 = icmp slt i64 %t138, %t139
  %t144 = xor i1 %t142, true
  br i1 %t144, label %bb33, label %bb34
bb33:
  call void @__olang_scope_close(ptr %s9)
  br label %bb44
bb34:
  br label %bb35
bb35:
  %t146 = load i64, ptr %l14, !tbaa !24
  %t147 = load i64, ptr %l15, !tbaa !24
  %t150 = add i64 %t146, %t147
  %t152 = sdiv i64 %t150, 2
  store i64 %t152, ptr %l16, !tbaa !24
  %t154 = load { ptr, ptr }, ptr %l4
  store { ptr, ptr } %t154, ptr %l103
  %t155 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t155, ptr %l104, !tbaa !27
  %t156 = load i64, ptr %l2, !tbaa !24
  %t158 = getelementptr { i64, ptr }, ptr %l104, i32 0, i32 1
  %t159 = load ptr, ptr %t158, !tbaa !27
  %t160 = getelementptr %"compiler/doc:Module", ptr %t159, i64 %t156
  %t161 = load %"compiler/doc:Module", ptr %t160
  store %"compiler/doc:Module" %t161, ptr %l106
  %t163 = call %"compiler/doc:Module" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fdoc_3aModule(ptr %s9, ptr %l106)
  store %"compiler/doc:Module" %t163, ptr %l108
  br label %bb36
bb36:
  %t164 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t164, ptr %l109, !tbaa !27
  %t165 = load i64, ptr %l16, !tbaa !24
  %t167 = getelementptr { i64, ptr }, ptr %l109, i32 0, i32 1
  %t168 = load ptr, ptr %t167, !tbaa !27
  %t169 = getelementptr %"compiler/doc:Module", ptr %t168, i64 %t165
  %t170 = load %"compiler/doc:Module", ptr %t169
  store %"compiler/doc:Module" %t170, ptr %l111
  %t172 = call %"compiler/doc:Module" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fdoc_3aModule(ptr %s9, ptr %l111)
  store %"compiler/doc:Module" %t172, ptr %l113
  br label %bb37
bb37:
  %t173 = load { ptr, ptr }, ptr %l103
  %t174 = extractvalue { ptr, ptr } %t173, 0
  %t175 = extractvalue { ptr, ptr } %t173, 1
  %t176 = load %"compiler/doc:Module", ptr %l108
  %t177 = load %"compiler/doc:Module", ptr %l113
  %t178 = call i1 %t174(ptr %t175, ptr %s9, ptr %s9, %"compiler/doc:Module" %t176, %"compiler/doc:Module" %t177)
  store i1 %t178, ptr %l114
  br label %bb38
bb38:
  %t179 = load i1, ptr %l114, !tbaa !21
  store i1 %t179, ptr %l102, !tbaa !21
  br label %bb39
bb39:
  %t180 = load i1, ptr %l102, !tbaa !21
  %t181 = xor i1 %t180, true
  br i1 %t181, label %bb40, label %bb41
bb40:
  %t183 = load i64, ptr %l16, !tbaa !24
  %t185 = add i64 %t183, 1
  store i64 %t185, ptr %l14, !tbaa !24
  br label %bb42
bb41:
  %t187 = load i64, ptr %l16, !tbaa !24
  store i64 %t187, ptr %l15, !tbaa !24
  br label %bb42
bb42:
  call void @__olang_scope_close(ptr %s9)
  br label %bb43
bb43:
  br label %bb32
bb44:
  %t189 = load i64, ptr %l2, !tbaa !24
  store i64 %t189, ptr %l17, !tbaa !24
  br label %bb45
bb45:
  %t191 = load i64, ptr %l17, !tbaa !24
  %t192 = load i64, ptr %l14, !tbaa !24
  %t195 = icmp sgt i64 %t191, %t192
  %t197 = xor i1 %t195, true
  br i1 %t197, label %bb46, label %bb47
bb46:
  br label %bb51
bb47:
  br label %bb48
bb48:
  %t199 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t200 = load i64, ptr %l17, !tbaa !24
  %t201 = load i64, ptr %l17, !tbaa !24
  %t203 = sub i64 %t201, 1
  call void @std_2fprelude_2farray_2esortSwap_3ccompiler_2fdoc_3aModule_3e(ptr %v0, { i64, ptr } %t199, i64 %t200, i64 %t203)
  br label %bb49
bb49:
  %t207 = load i64, ptr %l17, !tbaa !24
  %t209 = sub i64 %t207, 1
  store i64 %t209, ptr %l17, !tbaa !24
  br label %bb50
bb50:
  br label %bb45
bb51:
  br label %ret
bb52:
  %t211 = load i64, ptr %l1, !tbaa !24
  %t212 = load i64, ptr %l3, !tbaa !24
  %t215 = add i64 %t211, %t212
  %t217 = sdiv i64 %t215, 2
  store i64 %t217, ptr %l18, !tbaa !24
  %t219 = load i64, ptr %l18, !tbaa !24
  %t220 = load i64, ptr %l2, !tbaa !24
  %t223 = add i64 %t219, %t220
  store i64 %t223, ptr %l19, !tbaa !24
  %t225 = load i64, ptr %l1, !tbaa !24
  store i64 %t225, ptr %l20, !tbaa !24
  %t227 = load i64, ptr %l2, !tbaa !24
  store i64 %t227, ptr %l21, !tbaa !24
  %t229 = load i64, ptr %l2, !tbaa !24
  %t230 = load i64, ptr %l18, !tbaa !24
  %t233 = icmp sgt i64 %t229, %t230
  br i1 %t233, label %bb53, label %bb54
bb53:
  %t235 = load i64, ptr %l19, !tbaa !24
  %t236 = load i64, ptr %l3, !tbaa !24
  %t239 = sub i64 %t235, %t236
  store i64 %t239, ptr %l20, !tbaa !24
  %t241 = load i64, ptr %l18, !tbaa !24
  store i64 %t241, ptr %l21, !tbaa !24
  br label %bb55
bb54:
  br label %bb55
bb55:
  %t243 = load i64, ptr %l19, !tbaa !24
  %t245 = sub i64 %t243, 1
  store i64 %t245, ptr %l22, !tbaa !24
  br label %bb56
bb56:
  store %olang.scope zeroinitializer, ptr %s14
  %t247 = load i64, ptr %l20, !tbaa !24
  %t248 = load i64, ptr %l21, !tbaa !24
  %t251 = icmp slt i64 %t247, %t248
  %t253 = xor i1 %t251, true
  br i1 %t253, label %bb57, label %bb58
bb57:
  call void @__olang_scope_close(ptr %s14)
  br label %bb68
bb58:
  br label %bb59
bb59:
  %t255 = load i64, ptr %l20, !tbaa !24
  %t256 = load i64, ptr %l21, !tbaa !24
  %t259 = add i64 %t255, %t256
  %t261 = sdiv i64 %t259, 2
  store i64 %t261, ptr %l23, !tbaa !24
  %t263 = load { ptr, ptr }, ptr %l4
  store { ptr, ptr } %t263, ptr %l157
  %t264 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t264, ptr %l158, !tbaa !27
  %t265 = load i64, ptr %l22, !tbaa !24
  %t266 = load i64, ptr %l23, !tbaa !24
  %t269 = sub i64 %t265, %t266
  %t271 = getelementptr { i64, ptr }, ptr %l158, i32 0, i32 1
  %t272 = load ptr, ptr %t271, !tbaa !27
  %t273 = getelementptr %"compiler/doc:Module", ptr %t272, i64 %t269
  %t274 = load %"compiler/doc:Module", ptr %t273
  store %"compiler/doc:Module" %t274, ptr %l162
  %t276 = call %"compiler/doc:Module" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fdoc_3aModule(ptr %s14, ptr %l162)
  store %"compiler/doc:Module" %t276, ptr %l164
  br label %bb60
bb60:
  %t277 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t277, ptr %l165, !tbaa !27
  %t278 = load i64, ptr %l23, !tbaa !24
  %t280 = getelementptr { i64, ptr }, ptr %l165, i32 0, i32 1
  %t281 = load ptr, ptr %t280, !tbaa !27
  %t282 = getelementptr %"compiler/doc:Module", ptr %t281, i64 %t278
  %t283 = load %"compiler/doc:Module", ptr %t282
  store %"compiler/doc:Module" %t283, ptr %l167
  %t285 = call %"compiler/doc:Module" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fdoc_3aModule(ptr %s14, ptr %l167)
  store %"compiler/doc:Module" %t285, ptr %l169
  br label %bb61
bb61:
  %t286 = load { ptr, ptr }, ptr %l157
  %t287 = extractvalue { ptr, ptr } %t286, 0
  %t288 = extractvalue { ptr, ptr } %t286, 1
  %t289 = load %"compiler/doc:Module", ptr %l164
  %t290 = load %"compiler/doc:Module", ptr %l169
  %t291 = call i1 %t287(ptr %t288, ptr %s14, ptr %s14, %"compiler/doc:Module" %t289, %"compiler/doc:Module" %t290)
  store i1 %t291, ptr %l170
  br label %bb62
bb62:
  %t292 = load i1, ptr %l170, !tbaa !21
  store i1 %t292, ptr %l156, !tbaa !21
  br label %bb63
bb63:
  %t293 = load i1, ptr %l156, !tbaa !21
  %t294 = xor i1 %t293, true
  br i1 %t294, label %bb64, label %bb65
bb64:
  %t296 = load i64, ptr %l23, !tbaa !24
  %t298 = add i64 %t296, 1
  store i64 %t298, ptr %l20, !tbaa !24
  br label %bb66
bb65:
  %t300 = load i64, ptr %l23, !tbaa !24
  store i64 %t300, ptr %l21, !tbaa !24
  br label %bb66
bb66:
  call void @__olang_scope_close(ptr %s14)
  br label %bb67
bb67:
  br label %bb56
bb68:
  %t302 = load i64, ptr %l19, !tbaa !24
  %t303 = load i64, ptr %l20, !tbaa !24
  %t306 = sub i64 %t302, %t303
  store i64 %t306, ptr %l24, !tbaa !24
  %t308 = load i64, ptr %l20, !tbaa !24
  %t309 = load i64, ptr %l2, !tbaa !24
  %t312 = icmp slt i64 %t308, %t309
  br i1 %t312, label %bb69, label %bb70
bb69:
  %t314 = load i64, ptr %l2, !tbaa !24
  %t315 = load i64, ptr %l24, !tbaa !24
  %t318 = icmp slt i64 %t314, %t315
  store i1 %t318, ptr %l181, !tbaa !21
  br label %bb71
bb70:
  store i1 false, ptr %l181, !tbaa !21
  br label %bb71
bb71:
  %t320 = load i1, ptr %l181, !tbaa !21
  br i1 %t320, label %bb72, label %bb73
bb72:
  %t321 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t322 = load i64, ptr %l20, !tbaa !24
  %t323 = load i64, ptr %l2, !tbaa !24
  %t324 = load i64, ptr %l24, !tbaa !24
  call void @std_2fprelude_2farray_2esortRotate_3ccompiler_2fdoc_3aModule_3e(ptr %v0, { i64, ptr } %t321, i64 %t322, i64 %t323, i64 %t324)
  br label %bb74
bb73:
  br label %bb75
bb74:
  br label %bb75
bb75:
  %t329 = load i64, ptr %l1, !tbaa !24
  %t330 = load i64, ptr %l20, !tbaa !24
  %t333 = icmp slt i64 %t329, %t330
  br i1 %t333, label %bb76, label %bb77
bb76:
  %t335 = load i64, ptr %l20, !tbaa !24
  %t336 = load i64, ptr %l18, !tbaa !24
  %t339 = icmp slt i64 %t335, %t336
  store i1 %t339, ptr %l192, !tbaa !21
  br label %bb78
bb77:
  store i1 false, ptr %l192, !tbaa !21
  br label %bb78
bb78:
  %t341 = load i1, ptr %l192, !tbaa !21
  br i1 %t341, label %bb79, label %bb80
bb79:
  %t342 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t343 = load i64, ptr %l1, !tbaa !24
  %t344 = load i64, ptr %l20, !tbaa !24
  %t345 = load i64, ptr %l18, !tbaa !24
  %t346 = load { ptr, ptr }, ptr %l4
  %t352 = extractvalue { ptr, ptr } %t346, 0
  %t353 = extractvalue { ptr, ptr } %t346, 1
  call void @std_2fprelude_2farray_2esortMerge_3ccompiler_2fdoc_3aModule_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %t342, i64 %t343, i64 %t344, i64 %t345, ptr %t352, ptr %t353)
  br label %bb81
bb80:
  br label %bb83
bb81:
  br label %bb82
bb82:
  br label %bb83
bb83:
  %t354 = load i64, ptr %l18, !tbaa !24
  %t355 = load i64, ptr %l24, !tbaa !24
  %t358 = icmp slt i64 %t354, %t355
  br i1 %t358, label %bb84, label %bb85
bb84:
  %t360 = load i64, ptr %l24, !tbaa !24
  %t361 = load i64, ptr %l3, !tbaa !24
  %t364 = icmp slt i64 %t360, %t361
  store i1 %t364, ptr %l204, !tbaa !21
  br label %bb86
bb85:
  store i1 false, ptr %l204, !tbaa !21
  br label %bb86
bb86:
  %t366 = load i1, ptr %l204, !tbaa !21
  br i1 %t366, label %bb87, label %bb88
bb87:
  %t367 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t368 = load i64, ptr %l18, !tbaa !24
  %t369 = load i64, ptr %l24, !tbaa !24
  %t370 = load i64, ptr %l3, !tbaa !24
  %t371 = load { ptr, ptr }, ptr %l4
  %t377 = extractvalue { ptr, ptr } %t371, 0
  %t378 = extractvalue { ptr, ptr } %t371, 1
  call void @std_2fprelude_2farray_2esortMerge_3ccompiler_2fdoc_3aModule_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %t367, i64 %t368, i64 %t369, i64 %t370, ptr %t377, ptr %t378)
  br label %bb89
bb88:
  br label %bb91
bb89:
  br label %bb90
bb90:
  br label %bb91
bb91:
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2farray_2esortPermute_3ccompiler_2fdoc_3aModule_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, { i64, ptr } %a2) #0 {
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
  %l9 = alloca %"compiler/doc:Module"
  %l10 = alloca i64
  %l11 = alloca i64
  %l17 = alloca i64
  %l20 = alloca i64
  %l38 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l51 = alloca { i64, ptr }
  %l54 = alloca { i64, ptr }
  %l64 = alloca { i64, ptr }
  %l67 = alloca i64
  %l68 = alloca %"compiler/doc:Module"
  %l70 = alloca %"compiler/doc:Module"
  %l71 = alloca { i64, ptr }
  %l75 = alloca { i64, ptr }
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
  br label %bb22
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
  br label %bb21
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
  %t76 = getelementptr %"compiler/doc:Module", ptr %t75, i64 %t72
  %t77 = load %"compiler/doc:Module", ptr %t76
  store %"compiler/doc:Module" zeroinitializer, ptr %t76
  store %"compiler/doc:Module" %t77, ptr %l9
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
  store i64 %t116, ptr %l67, !tbaa !24
  %t117 = load %"compiler/doc:Module", ptr %l9
  store %"compiler/doc:Module" %t117, ptr %l68
  %t119 = call %"compiler/doc:Module" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fdoc_3aModule(ptr %v0, ptr %l68)
  store %"compiler/doc:Module" %t119, ptr %l70
  br label %bb17
bb16:
  br label %bb18
bb17:
  %t120 = load %"compiler/doc:Module", ptr %l70
  %t121 = load i64, ptr %l67, !tbaa !24
  %t122 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t123 = load ptr, ptr %t122, !tbaa !27
  %t124 = getelementptr %"compiler/doc:Module", ptr %t123, i64 %t121
  store %"compiler/doc:Module" %t120, ptr %t124
  br label %bb20
bb18:
  %t125 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t125, ptr %l71, !tbaa !27
  %t126 = load i64, ptr %l1, !tbaa !24
  %t127 = load i64, ptr %l10, !tbaa !24
  %t130 = add i64 %t126, %t127
  %t131 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t131, ptr %l75, !tbaa !27
  %t132 = load i64, ptr %l11, !tbaa !24
  %t134 = getelementptr { i64, ptr }, ptr %l75, i32 0, i32 1
  %t135 = load ptr, ptr %t134, !tbaa !27
  %t136 = getelementptr %"compiler/doc:Module", ptr %t135, i64 %t132
  %t137 = load %"compiler/doc:Module", ptr %t136
  store %"compiler/doc:Module" zeroinitializer, ptr %t136
  %t140 = getelementptr { i64, ptr }, ptr %l71, i32 0, i32 1
  %t141 = load ptr, ptr %t140, !tbaa !27
  %t142 = getelementptr %"compiler/doc:Module", ptr %t141, i64 %t130
  store %"compiler/doc:Module" %t137, ptr %t142
  %t143 = load i64, ptr %l11, !tbaa !24
  %t144 = load i64, ptr %l1, !tbaa !24
  %t147 = sub i64 %t143, %t144
  store i64 %t147, ptr %l10, !tbaa !24
  br label %bb19
bb19:
  br label %bb14
bb20:
  br label %bb21
bb21:
  %t149 = load i64, ptr %l7, !tbaa !24
  %t151 = add i64 %t149, 1
  store i64 %t151, ptr %l7, !tbaa !24
  br label %bb7
bb22:
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2farray_2esortRotate_3ccompiler_2fdoc_3aModule_3e(ptr %v0, { i64, ptr } %a0, i64 %a1, i64 %a2, i64 %a3) #0 {
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
  call void @std_2fprelude_2farray_2esortSwap_3ccompiler_2fdoc_3aModule_3e(ptr %v0, { i64, ptr } %t83, i64 %t92, i64 %t97)
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
  call void @std_2fprelude_2farray_2esortSwap_3ccompiler_2fdoc_3aModule_3e(ptr %v0, { i64, ptr } %t151, i64 %t160, i64 %t173)
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
  call void @std_2fprelude_2farray_2esortSwap_3ccompiler_2fdoc_3aModule_3e(ptr %v0, { i64, ptr } %t235, i64 %t244, i64 %t249)
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

define dso_local void @std_2fprelude_2farray_2esortSwap_3ccompiler_2fdoc_3aModule_3e(ptr %v0, { i64, ptr } %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca i64
  %l4 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca %"compiler/doc:Module"
  %l16 = alloca %"compiler/doc:Module"
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
  %t6 = getelementptr %"compiler/doc:Module", ptr %t5, i64 %t2
  %t7 = load %"compiler/doc:Module", ptr %t6
  store %"compiler/doc:Module" zeroinitializer, ptr %t6
  %t9 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t9, ptr %l7, !tbaa !27
  %t10 = load i64, ptr %l1, !tbaa !24
  %t11 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t11, ptr %l9, !tbaa !27
  %t12 = load i64, ptr %l2, !tbaa !24
  %t14 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr %"compiler/doc:Module", ptr %t15, i64 %t12
  %t17 = load %"compiler/doc:Module", ptr %t16
  store %"compiler/doc:Module" zeroinitializer, ptr %t16
  %t20 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr %"compiler/doc:Module", ptr %t21, i64 %t10
  store %"compiler/doc:Module" %t17, ptr %t22
  %t23 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t23, ptr %l12, !tbaa !27
  %t24 = load i64, ptr %l2, !tbaa !24
  store i64 %t24, ptr %l13, !tbaa !24
  store %"compiler/doc:Module" %t7, ptr %l14
  %t27 = call %"compiler/doc:Module" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fdoc_3aModule(ptr %v0, ptr %l14)
  store %"compiler/doc:Module" %t27, ptr %l16
  br label %bb1
bb1:
  %t28 = load %"compiler/doc:Module", ptr %l16
  %t29 = load i64, ptr %l13, !tbaa !24
  %t30 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !27
  %t32 = getelementptr %"compiler/doc:Module", ptr %t31, i64 %t29
  store %"compiler/doc:Module" %t28, ptr %t32
  br label %ret
ret:
  ret void
}

define dso_local { i32, %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3cstd_2fprelude_2ftext_3aString_26_2_H2ebf6f1d68886862a568a520c713bfce(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l11 = alloca ptr
  %l17 = alloca i1
  %l26 = alloca %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15"
  %rv = alloca { i32, %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15" }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  br label %bb1
bb1:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %t5, i32 0, i32 0
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t10 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t8, i32 0, i32 3
  %t11 = load i64, ptr %t10, !tbaa !24
  %t14 = icmp slt i64 %t4, %t11
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb2, label %bb3
bb2:
  br label %bb11
bb3:
  br label %bb4
bb4:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %t18, i32 0, i32 1
  %t21 = load i64, ptr %t20, !tbaa !24
  store i64 %t21, ptr %l1, !tbaa !24
  %t23 = load ptr, ptr %l0, !tbaa !29
  store ptr %t23, ptr %l11, !tbaa !29
  %t24 = load ptr, ptr %l11, !tbaa !29
  %t25 = getelementptr %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %t24, i32 0, i32 1
  %t26 = load i64, ptr %t25, !tbaa !24
  %t28 = add i64 %t26, 1
  %t30 = load ptr, ptr %l11, !tbaa !29
  %t31 = getelementptr %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %t30, i32 0, i32 1
  store i64 %t28, ptr %t31, !tbaa !24
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %t32, i32 0, i32 0
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t36 = load i64, ptr %l1, !tbaa !24
  %t39 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H068cfedf7407289d149ee3c6f4c8aa20(ptr %v0, ptr %t35, i64 %t36)
  store i1 %t39, ptr %l17
  br label %bb5
bb5:
  %t40 = load i1, ptr %l17, !tbaa !21
  br i1 %t40, label %bb6, label %bb7
bb6:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %t41, i32 0, i32 0
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t45 = load i64, ptr %l1, !tbaa !24
  %t47 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t44, i32 0, i32 0
  %t49 = getelementptr { i64, ptr }, ptr %t47, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !27
  %t51 = getelementptr %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15", ptr %t50, i64 %t45
  %t52 = getelementptr %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15", ptr %t51, i32 0, i32 0
  %t53 = load { i64, ptr }, ptr %t52, !tbaa !27
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %t54, i32 0, i32 0
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t58 = load i64, ptr %l1, !tbaa !24
  %t60 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t57, i32 0, i32 0
  %t62 = getelementptr { i64, ptr }, ptr %t60, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !27
  %t64 = getelementptr %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15", ptr %t63, i64 %t58
  %t65 = getelementptr %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15", ptr %t64, i32 0, i32 1
  %t66 = load { i64, ptr }, ptr %t65, !tbaa !27
  %t69 = call %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15" @std_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20Array_3cU8_3e_26_3e_2ector(ptr %v0, ptr %v0, ptr %v1, { i64, ptr } %t53, { i64, ptr } %t66)
  store %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15" %t69, ptr %l26
  br label %bb8
bb7:
  br label %bb9
bb8:
  %t70 = load %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15", ptr %l26
  %t71 = insertvalue { i32, %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15" } zeroinitializer, %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15" %t70, 1
  store { i32, %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15" } %t71, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  br label %bb1
bb11:
  %t73 = insertvalue { i32, %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15" } zeroinitializer, i32 65536, 0
  store { i32, %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15" } %t73, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15" }, ptr %rv
  ret { i32, %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15" } %rr
}

define dso_local %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H233962476a3191cb30d917b30cae0288(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %r = tail call %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eIter_3cI64_2c_20I64_3e(ptr %v0, ptr %v1, ptr %a0)
  ret %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %r
}

define dso_local %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_3aMapIter_3cstd_2fprelude_2ftext_3aString_26_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %r = tail call %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_3aMapIter_3cI64_2c_20I64_3e_2ector(ptr %v0, ptr %v1, ptr %a0)
  ret %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %r
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2ePushAll_3cU8_3e(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  tail call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2ePushA_Hec8f055c349635c8d43431a73666f84f(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
  ret void
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eTruncate_3cU8_3e(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  tail call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2eTrunc_Hdb40e008e45c3217ff19be25d205c76e(ptr %v0, ptr %a0, i64 %a1)
  ret void
}

define dso_local { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eView_3cU8_3e(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l1, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t2, i32 0, i32 1
  %t5 = load i64, ptr %t4, !tbaa !24
  store i64 %t5, ptr %l3, !tbaa !24
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t7 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t6, i32 0, i32 0
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t8, 0
  store i64 %t9, ptr %l4, !tbaa !24
  %t10 = icmp sge i64 0, 0
  br i1 %t10, label %bb1, label %bb2
bb1:
  %t12 = load i64, ptr %l3, !tbaa !24
  %t13 = icmp sle i64 0, %t12
  br i1 %t13, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_c08f9e79b7d9f7b8_bc17d02fc6a9f16c)
  unreachable
bb3:
  %t15 = load i64, ptr %l3, !tbaa !24
  %t16 = load i64, ptr %l4, !tbaa !24
  %t17 = icmp sle i64 %t15, %t16
  br i1 %t17, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_c08f9e79b7d9f7b8_bc17d02fc6a9f16c)
  unreachable
bb5:
  %t19 = load ptr, ptr %l1, !tbaa !29
  %t20 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t19, i32 0, i32 0
  %t21 = getelementptr { i64, ptr }, ptr %t20, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = load i64, ptr %l3, !tbaa !24
  %t24 = getelementptr i8, ptr %t22, i64 0
  %t25 = sub i64 %t23, 0
  %t26 = insertvalue { i64, ptr } undef, i64 %t25, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t24, 1
  store { i64, ptr } %t27, ptr %rv
  br label %ret
bb6:
  call void @__olang_check_failed(ptr @olang_loc_c08f9e79b7d9f7b8_bc17d02fc6a9f16c)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdoc_3aModule_3e_2ePush_3ccompiler_2fdoc_3aModule_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/doc:Module" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l12 = alloca ptr
  %l14 = alloca i64
  %l15 = alloca %"compiler/doc:Module"
  %l17 = alloca %"compiler/doc:Module"
  %l18 = alloca ptr
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
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdoc_3aModule_3e_2eroom_3ccompiler_2fdoc_3aModule_3e(ptr %v0, ptr %t15, i64 %t21)
  br label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb4
bb4:
  %t24 = load ptr, ptr %l0, !tbaa !29
  store ptr %t24, ptr %l12, !tbaa !29
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t25, i32 0, i32 1
  %t28 = load i64, ptr %t27, !tbaa !24
  store i64 %t28, ptr %l14, !tbaa !24
  store %"compiler/doc:Module" %a1, ptr %l15
  %t31 = call %"compiler/doc:Module" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fdoc_3aModule(ptr %v0, ptr %l15)
  store %"compiler/doc:Module" %t31, ptr %l17
  br label %bb5
bb5:
  %t32 = load %"compiler/doc:Module", ptr %l17
  %t33 = load ptr, ptr %l12, !tbaa !29
  %t34 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t33, i32 0, i32 0
  %t35 = load i64, ptr %l14, !tbaa !24
  %t36 = getelementptr { i64, ptr }, ptr %t34, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !27
  %t38 = getelementptr %"compiler/doc:Module", ptr %t37, i64 %t35
  store %"compiler/doc:Module" %t32, ptr %t38
  %t39 = load ptr, ptr %l0, !tbaa !29
  store ptr %t39, ptr %l18, !tbaa !29
  %t40 = load ptr, ptr %l18, !tbaa !29
  %t41 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t40, i32 0, i32 1
  %t42 = load i64, ptr %t41, !tbaa !24
  %t44 = add i64 %t42, 1
  %t46 = load ptr, ptr %l18, !tbaa !29
  %t47 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t46, i32 0, i32 1
  store i64 %t44, ptr %t47, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdoc_3aModule_3e_2eSort_3cco_Hfcfbe33647fb7db48e9022f22b0d44cf(ptr %v0, ptr %v1, ptr %a0, ptr %a1c, ptr %a1e) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  store ptr %a0, ptr %l0
  %pf1 = insertvalue { ptr, ptr } undef, ptr %a1c, 0
  %pg1 = insertvalue { ptr, ptr } %pf1, ptr %a1e, 1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l2, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t2, i32 0, i32 1
  %t5 = load i64, ptr %t4, !tbaa !24
  store i64 %t5, ptr %l4, !tbaa !24
  %t6 = load ptr, ptr %l2, !tbaa !29
  %t7 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t6, i32 0, i32 0
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t8, 0
  store i64 %t9, ptr %l5, !tbaa !24
  %t10 = icmp sge i64 0, 0
  br i1 %t10, label %bb1, label %bb2
bb1:
  %t12 = load i64, ptr %l4, !tbaa !24
  %t13 = icmp sle i64 0, %t12
  br i1 %t13, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_dc190d91cfba07b_c092ed77a04a119f)
  unreachable
bb3:
  %t15 = load i64, ptr %l4, !tbaa !24
  %t16 = load i64, ptr %l5, !tbaa !24
  %t17 = icmp sle i64 %t15, %t16
  br i1 %t17, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_dc190d91cfba07b_c092ed77a04a119f)
  unreachable
bb5:
  %t19 = load ptr, ptr %l2, !tbaa !29
  %t20 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t19, i32 0, i32 0
  %t21 = getelementptr { i64, ptr }, ptr %t20, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = load i64, ptr %l4, !tbaa !24
  %t24 = getelementptr %"compiler/doc:Module", ptr %t22, i64 0
  %t25 = sub i64 %t23, 0
  %t26 = insertvalue { i64, ptr } undef, i64 %t25, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t24, 1
  %t31 = extractvalue { ptr, ptr } %pg1, 0
  %t32 = extractvalue { ptr, ptr } %pg1, 1
  call void @std_2fprelude_2farray_2eArray_3ccompiler_2fdoc_3aModule_3e_2eSort_3ccompiler_2fdoc_3aModule_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %t27, ptr %t31, ptr %t32)
  br label %bb7
bb6:
  call void @__olang_check_failed(ptr @olang_loc_dc190d91cfba07b_c092ed77a04a119f)
  unreachable
bb7:
  br label %bb8
bb8:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdoc_3aModule_3e_2eToArray_3ccompiler_2fdoc_3aModule_3e(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l15 = alloca i64
  %l17 = alloca %"compiler/doc:Module"
  %l20 = alloca { i64, ptr }
  %l21 = alloca i64
  %l24 = alloca %"compiler/doc:Module"
  %l30 = alloca i64
  %l33 = alloca i64
  %l51 = alloca { i64, ptr }
  %l52 = alloca i64
  %l55 = alloca %"compiler/doc:Module"
  %l57 = alloca %"compiler/doc:Module"
  %rv = alloca { i64, ptr }
  %t37 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp eq i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = icmp sge i64 0, 0
  br i1 %t8, label %bb3, label %bb4
bb2:
  br label %bb7
bb3:
  %t10 = icmp sle i64 0, 115292150460684697
  br i1 %t10, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_71b15b09f79ee26d_302669a3f0377e79)
  unreachable
bb5:
  %t12 = mul i64 0, 80
  %t13 = insertvalue { i64, ptr } undef, i64 0, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t14, ptr %rv
  br label %ret
bb6:
  call void @__olang_check_failed(ptr @olang_loc_71b15b09f79ee26d_302669a3f0377e79)
  unreachable
bb7:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t16, i32 0, i32 1
  %t19 = load i64, ptr %t18, !tbaa !24
  store i64 %t19, ptr %l15, !tbaa !24
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t20, i32 0, i32 0
  %t23 = getelementptr { i64, ptr }, ptr %t22, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !27
  %t25 = getelementptr %"compiler/doc:Module", ptr %t24, i64 0
  %t26 = load %"compiler/doc:Module", ptr %t25
  store %"compiler/doc:Module" %t26, ptr %l17
  %t27 = load i64, ptr %l15, !tbaa !24
  %t28 = icmp sge i64 %t27, 0
  br i1 %t28, label %bb8, label %bb9
bb8:
  %t30 = load i64, ptr %l15, !tbaa !24
  %t31 = icmp sle i64 %t30, 115292150460684697
  br i1 %t31, label %bb10, label %bb11
bb9:
  call void @__olang_check_failed(ptr @olang_loc_c29104ce98cd7d40_f96243c7193eaec)
  unreachable
bb10:
  %t33 = load i64, ptr %l15, !tbaa !24
  %t34 = mul i64 %t33, 80
  %t35 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t34)
  %t36 = load %"compiler/doc:Module", ptr %l17
  store i64 0, ptr %t37
  br label %fill.38
fill.38:
  %t41 = load i64, ptr %t37
  %t42 = icmp slt i64 %t41, %t33
  br i1 %t42, label %fillb.39, label %filld.40
fillb.39:
  %t43 = getelementptr %"compiler/doc:Module", ptr %t35, i64 %t41
  store %"compiler/doc:Module" %t36, ptr %t43
  %t44 = add i64 %t41, 1
  store i64 %t44, ptr %t37
  br label %fill.38
filld.40:
  %t45 = insertvalue { i64, ptr } undef, i64 %t33, 0
  %t46 = insertvalue { i64, ptr } %t45, ptr %t35, 1
  store { i64, ptr } %t46, ptr %l20, !tbaa !27
  store i64 0, ptr %l21, !tbaa !24
  br label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_c29104ce98cd7d40_f96243c7193eaec)
  unreachable
bb12:
  %t47 = load i64, ptr %l21, !tbaa !24
  %t48 = load i64, ptr %l15, !tbaa !24
  %t49 = icmp slt i64 %t47, %t48
  br i1 %t49, label %bb13, label %bb14
bb13:
  %t52 = call %"compiler/doc:Module" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fdoc_3aModule(ptr %v1, ptr %l17)
  store %"compiler/doc:Module" %t52, ptr %l24
  br label %bb15
bb14:
  %t53 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t53, ptr %l1, !tbaa !27
  store i64 0, ptr %l2, !tbaa !24
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t54, i32 0, i32 1
  %t57 = load i64, ptr %t56, !tbaa !24
  store i64 %t57, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t59 = load i64, ptr %l3, !tbaa !24
  %t60 = load i64, ptr %l2, !tbaa !24
  %t63 = icmp sgt i64 %t59, %t60
  br i1 %t63, label %bb16, label %bb17
bb15:
  %t65 = load %"compiler/doc:Module", ptr %l24
  %t66 = load i64, ptr %l21, !tbaa !24
  %t67 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !27
  %t69 = getelementptr %"compiler/doc:Module", ptr %t68, i64 %t66
  store %"compiler/doc:Module" %t65, ptr %t69
  %t70 = load i64, ptr %l21, !tbaa !24
  %t71 = add i64 %t70, 1
  store i64 %t71, ptr %l21, !tbaa !24
  br label %bb12
bb16:
  %t72 = load i64, ptr %l4, !tbaa !24
  %t74 = icmp sgt i64 %t72, 0
  br i1 %t74, label %bb18, label %bb19
bb17:
  store i64 0, ptr %l30, !tbaa !24
  br label %bb21
bb18:
  %t76 = load i64, ptr %l3, !tbaa !24
  %t77 = load i64, ptr %l2, !tbaa !24
  %t80 = sub i64 %t76, %t77
  %t81 = load i64, ptr %l4, !tbaa !24
  %t84 = add i64 %t80, %t81
  %t86 = sub i64 %t84, 1
  %t87 = load i64, ptr %l4, !tbaa !24
  %t90 = sdiv i64 %t86, %t87
  store i64 %t90, ptr %l33, !tbaa !24
  br label %bb20
bb19:
  store i64 0, ptr %l33, !tbaa !24
  br label %bb20
bb20:
  %t92 = load i64, ptr %l33, !tbaa !24
  store i64 %t92, ptr %l30, !tbaa !24
  br label %bb21
bb21:
  %t93 = load i64, ptr %l30, !tbaa !24
  store i64 %t93, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb22
bb22:
  %t94 = load i64, ptr %l6, !tbaa !24
  %t95 = load i64, ptr %l5, !tbaa !24
  %t98 = icmp slt i64 %t94, %t95
  %t100 = xor i1 %t98, true
  br i1 %t100, label %bb23, label %bb24
bb23:
  br label %bb28
bb24:
  br label %bb25
bb25:
  %t102 = load i64, ptr %l2, !tbaa !24
  %t103 = load i64, ptr %l6, !tbaa !24
  %t104 = load i64, ptr %l4, !tbaa !24
  %t107 = mul i64 %t103, %t104
  %t110 = add i64 %t102, %t107
  store i64 %t110, ptr %l7, !tbaa !24
  %t112 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t112, ptr %l51, !tbaa !27
  %t113 = load i64, ptr %l7, !tbaa !24
  store i64 %t113, ptr %l52, !tbaa !24
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t115 = load i64, ptr %l7, !tbaa !24
  %t117 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t114, i32 0, i32 0
  %t119 = getelementptr { i64, ptr }, ptr %t117, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !27
  %t121 = getelementptr %"compiler/doc:Module", ptr %t120, i64 %t115
  %t122 = load %"compiler/doc:Module", ptr %t121
  store %"compiler/doc:Module" %t122, ptr %l55
  %t124 = call %"compiler/doc:Module" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fdoc_3aModule(ptr %v1, ptr %l55)
  store %"compiler/doc:Module" %t124, ptr %l57
  br label %bb26
bb26:
  %t125 = load %"compiler/doc:Module", ptr %l57
  %t126 = load i64, ptr %l52, !tbaa !24
  %t127 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t128 = load ptr, ptr %t127, !tbaa !27
  %t129 = getelementptr %"compiler/doc:Module", ptr %t128, i64 %t126
  store %"compiler/doc:Module" %t125, ptr %t129
  br label %bb27
bb27:
  %t130 = load i64, ptr %l6, !tbaa !24
  %t132 = add i64 %t130, 1
  store i64 %t132, ptr %l6, !tbaa !24
  br label %bb22
bb28:
  %t134 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t134, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdoc_3aModule_3e_2eroom_3ccompiler_2fdoc_3aModule_3e(ptr %v0, ptr %a0, i64 %a1) noinline cold #0 {
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
  call void @__olang_check_failed(ptr @olang_loc_353cb9f815b03dbe_d78b28504d5fbc62)
  unreachable
bb15:
  %t71 = load i64, ptr %l36, !tbaa !24
  %t72 = load i64, ptr %l37, !tbaa !24
  %t73 = icmp sle i64 %t71, %t72
  br i1 %t73, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_353cb9f815b03dbe_d78b28504d5fbc62)
  unreachable
bb17:
  %t75 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = load i64, ptr %l36, !tbaa !24
  %t78 = getelementptr %"compiler/doc:Module", ptr %t76, i64 0
  %t79 = sub i64 %t77, 0
  %t80 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t78, 1
  store { i64, ptr } %t81, ptr %l4, !tbaa !27
  %t83 = load i64, ptr %l2, !tbaa !24
  %t87 = mul i64 %t83, 80
  %t88 = call ptr @__olang_scope_alloc_zeroed(ptr %v0, i64 %t87)
  %t89 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t88, 1
  store { i64, ptr } %t90, ptr %l44, !tbaa !27
  store i64 0, ptr %l45, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_353cb9f815b03dbe_d78b28504d5fbc62)
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
  %t106 = getelementptr %"compiler/doc:Module", ptr %t105, i64 %t102
  %t107 = load %"compiler/doc:Module", ptr %t106
  store %"compiler/doc:Module" zeroinitializer, ptr %t106
  %t109 = load i64, ptr %l45, !tbaa !24
  %t110 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr %"compiler/doc:Module", ptr %t111, i64 %t109
  store %"compiler/doc:Module" %t107, ptr %t112
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

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsession_3aUse_3e_2ePush_3ccompiler_2fsession_3aUse_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/session:Use" %a1) #0 {
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
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsession_3aUse_3e_2eroom_3ccompiler_2fsession_3aUse_3e(ptr %v0, ptr %t15, i64 %t21)
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
  %t36 = getelementptr %"compiler/session:Use", ptr %t35, i64 %t28
  store %"compiler/session:Use" %a1, ptr %t36
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

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsession_3aUse_3e_2eroom_3ccompiler_2fsession_3aUse_3e(ptr %v0, ptr %a0, i64 %a1) noinline cold #0 {
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
  call void @__olang_check_failed(ptr @olang_loc_b14bf40ea480b614_26de4cf54edeeb08)
  unreachable
bb15:
  %t71 = load i64, ptr %l36, !tbaa !24
  %t72 = load i64, ptr %l37, !tbaa !24
  %t73 = icmp sle i64 %t71, %t72
  br i1 %t73, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_b14bf40ea480b614_26de4cf54edeeb08)
  unreachable
bb17:
  %t75 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = load i64, ptr %l36, !tbaa !24
  %t78 = getelementptr %"compiler/session:Use", ptr %t76, i64 0
  %t79 = sub i64 %t77, 0
  %t80 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t78, 1
  store { i64, ptr } %t81, ptr %l4, !tbaa !27
  %t83 = load i64, ptr %l2, !tbaa !24
  %t87 = mul i64 %t83, 32
  %t88 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t87)
  %t89 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t88, 1
  store { i64, ptr } %t90, ptr %l44, !tbaa !27
  store i64 0, ptr %l45, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_b14bf40ea480b614_26de4cf54edeeb08)
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
  %t106 = getelementptr %"compiler/session:Use", ptr %t105, i64 %t102
  %t107 = load %"compiler/session:Use", ptr %t106
  %t109 = load i64, ptr %l45, !tbaa !24
  %t110 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr %"compiler/session:Use", ptr %t111, i64 %t109
  store %"compiler/session:Use" %t107, ptr %t112
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

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fdoc_3aModule_3e_2ector(ptr %v0, i64 %a0) #0 {
entry:
  %r = tail call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector(ptr %v0, i64 %a0)
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %r
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsession_3aUse_3e_2ector(ptr %v0, i64 %a0) #0 {
entry:
  %r = tail call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector(ptr %v0, i64 %a0)
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %r
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
declare void @__olang_check_failed(ptr) cold noreturn
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
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
define internal i1 @olang_lambda_0(ptr %env, i64 %a0, i64 %a1) #0 {
entry:
  %l3 = alloca { i64, ptr }
  %l4 = alloca i1
  %l5 = alloca { ptr, ptr }
  %l6 = alloca { i64, ptr }
  %l8 = alloca %"compiler/doc:Module"
  %l10 = alloca %"compiler/doc:Module"
  %l11 = alloca { i64, ptr }
  %l13 = alloca %"compiler/doc:Module"
  %l15 = alloca %"compiler/doc:Module"
  %l16 = alloca i1
  %s0 = alloca %olang.scope
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
  store %olang.scope zeroinitializer, ptr %s0
  store { ptr, ptr } %cv0, ptr %l5
  %t2 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t2, ptr %l6, !tbaa !27
  %t5 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t6 = load ptr, ptr %t5, !tbaa !27
  %t7 = getelementptr %"compiler/doc:Module", ptr %t6, i64 %a0
  %t8 = load %"compiler/doc:Module", ptr %t7
  store %"compiler/doc:Module" %t8, ptr %l8
  %t10 = call %"compiler/doc:Module" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fdoc_3aModule(ptr %s0, ptr %l8)
  store %"compiler/doc:Module" %t10, ptr %l10
  br label %bb1
bb1:
  %t11 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t11, ptr %l11, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr %"compiler/doc:Module", ptr %t15, i64 %a1
  %t17 = load %"compiler/doc:Module", ptr %t16
  store %"compiler/doc:Module" %t17, ptr %l13
  %t19 = call %"compiler/doc:Module" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fdoc_3aModule(ptr %s0, ptr %l13)
  store %"compiler/doc:Module" %t19, ptr %l15
  br label %bb2
bb2:
  %t20 = load { ptr, ptr }, ptr %l5
  %t21 = extractvalue { ptr, ptr } %t20, 0
  %t22 = extractvalue { ptr, ptr } %t20, 1
  %t23 = load %"compiler/doc:Module", ptr %l10
  %t24 = load %"compiler/doc:Module", ptr %l15
  %t25 = call i1 %t21(ptr %t22, ptr %s0, ptr %s0, %"compiler/doc:Module" %t23, %"compiler/doc:Module" %t24)
  store i1 %t25, ptr %l16
  br label %bb3
bb3:
  %t26 = load i1, ptr %l16, !tbaa !21
  store i1 %t26, ptr %l4, !tbaa !21
  br label %bb4
bb4:
  call void @__olang_scope_close(ptr %s0)
  %t27 = load i1, ptr %l4, !tbaa !21
  store i1 %t27, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define linkonce_odr %"compiler/doc:Module" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fdoc_3aModule(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/doc:Module"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/doc:Module"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/doc:Module", ptr %a0
  store %"compiler/doc:Module" %t2, ptr %l1
  %t3 = getelementptr %"compiler/doc:Module", ptr %l1, i32 0, i32 3
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdoc_3aEntry_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"compiler/doc:Module", ptr %l1, i32 0, i32 3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = load %"compiler/doc:Module", ptr %l1
  store %"compiler/doc:Module" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/doc:Module", ptr %rv
  ret %"compiler/doc:Module" %rr
}

@__olang_empty_array = external constant [16 x i64]
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
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdoc_3aEntry_3e(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca { i64, ptr }
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3ccompiler_2fdoc_3aEntry_3e(ptr %v0, { i64, ptr } %t4)
  store { i64, ptr } %t6, ptr %l3
  br label %bb1
bb1:
  %t7 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t8 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1, i32 0, i32 0
  store { i64, ptr } %t7, ptr %t8, !tbaa !27
  %t9 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
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
@__olang_prog_scope = external thread_local(initialexec) global ptr
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
define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3ccompiler_2fdoc_3aEntry_3e(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"compiler/doc:Entry"
  %rv = alloca { i64, ptr }
  %t16 = alloca %"compiler/doc:Entry", align 8
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t2 = extractvalue { i64, ptr } %t1, 0
  store i64 %t2, ptr %l1, !tbaa !24
  %t3 = load i64, ptr %l1, !tbaa !24
  %t4 = mul i64 %t3, 152
  %t5 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t4)
  %t6 = insertvalue { i64, ptr } undef, i64 %t3, 0
  %t7 = insertvalue { i64, ptr } %t6, ptr %t5, 1
  store { i64, ptr } %t7, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t8 = load i64, ptr %l3, !tbaa !24
  %t9 = load i64, ptr %l1, !tbaa !24
  %t10 = icmp slt i64 %t8, %t9
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = load i64, ptr %l3, !tbaa !24
  %t13 = getelementptr { i64, ptr }, ptr %l0, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !27
  %t15 = getelementptr %"compiler/doc:Entry", ptr %t14, i64 %t12
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fdoc_3aEntry(ptr %t16, ptr %v0, ptr %t15)
  call void @llvm.memmove.p0.p0.i64(ptr %l6, ptr %t16, i64 152, i1 false)
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load i64, ptr %l3, !tbaa !24
  %t20 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr %"compiler/doc:Entry", ptr %t21, i64 %t19
  call void @llvm.memmove.p0.p0.i64(ptr %t22, ptr %l6, i64 152, i1 false)
  %t23 = load i64, ptr %l3, !tbaa !24
  %t24 = add i64 %t23, 1
  store i64 %t24, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

declare noalias ptr @__olang_scope_alloc_slow(ptr, i64, i64) noinline
declare ptr @__olang_scope_mine_slow(ptr) noinline
define linkonce_odr void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fdoc_3aEntry(ptr %out, ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/doc:Entry"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  call void @llvm.memmove.p0.p0.i64(ptr %l1, ptr %a0, i64 152, i1 false)
  %t2 = getelementptr %"compiler/doc:Entry", ptr %l1, i32 0, i32 5
  %t4 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdoc_3aEntry_3e(ptr %v0, ptr %t2)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l3
  br label %bb1
bb1:
  %t5 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t6 = getelementptr %"compiler/doc:Entry", ptr %l1, i32 0, i32 5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %t6
  %t7 = getelementptr %"compiler/doc:Entry", ptr %l1, i32 0, i32 7
  %t9 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdoc_3aExample_3e(ptr %v0, ptr %t7)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %l5
  br label %bb2
bb2:
  %t10 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t11 = getelementptr %"compiler/doc:Entry", ptr %l1, i32 0, i32 7
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %t11
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l1, i64 152, i1 false)
  br label %ret
ret:
  ret void
}

declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdoc_3aExample_3e(ptr %v0, ptr %a0) #0 {
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
  %t8 = mul i64 %t7, 32
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 32
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

declare %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20" @std_2fpair_3aPair_3cI64_2c_20I32_3e_2ector(ptr %v0, i64 %a0, i32 %a1)
@G_2estd_2fprelude_2farray_2esortRun = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\18\00\00\00\00\00\00\00" }>, align 8
@G_2estd_2fprelude_2farray_2esortBlock = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\30\00\00\00\00\00\00" }>, align 8
@olang_loc_c022e58ec96da978_ec8311c98a19dd54 = external constant [0 x i8]
@olang_loc_58e30339dc525c65_8ff29672c8905379 = external constant [0 x i8]
declare void @std_2fprelude_2farray_2esortMergeBuffered_3cI64_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1c, ptr %a1e)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H068cfedf7407289d149ee3c6f4c8aa20(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15" @std_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20Array_3cU8_3e_26_3e_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eIter_3cI64_2c_20I64_3e(ptr %v0, ptr %v1, ptr %a0)
declare %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_3aMapIter_3cI64_2c_20I64_3e_2ector(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2ePushA_Hec8f055c349635c8d43431a73666f84f(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2eTrunc_Hdb40e008e45c3217ff19be25d205c76e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_c08f9e79b7d9f7b8_bc17d02fc6a9f16c = external constant [0 x i8]
@olang_loc_dc190d91cfba07b_c092ed77a04a119f = external constant [0 x i8]
@olang_loc_71b15b09f79ee26d_302669a3f0377e79 = external constant [0 x i8]
@olang_loc_c29104ce98cd7d40_f96243c7193eaec = external constant [0 x i8]
@olang_loc_353cb9f815b03dbe_d78b28504d5fbc62 = external constant [0 x i8]
@olang_loc_b14bf40ea480b614_26de4cf54edeeb08 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector(ptr %v0, i64 %a0)

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
