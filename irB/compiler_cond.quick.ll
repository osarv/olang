source_filename = "compiler_cond.quick.ll"
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
%"compiler/cond:Decision" = type { i32, i1 }
%"compiler/cond:Value" = type { i32, i64, double, i64, i64, i1, i1 }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/cond:Consts" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scan:Tokens" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/token:Token" = type { i32, i8, i32, i32 }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/cond:Eval" = type { { i64, ptr }, ptr, ptr, ptr, i1, i1, i1, %"compiler/source:Span", %"compiler/diagmsg:Msg", i64, i64, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/cond:Global" = type { { i64, ptr }, %"compiler/source:Span", i1, { i64, ptr }, ptr, i1 }
%"compiler/ast:Chain" = type { { i64, ptr }, { i64, ptr } }
%"compiler/cond:Scope" = type { i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
@G_2ecompiler_2fcond_2eLiteralIntBits = constant <{ [8 x i8] }> <{ [8 x i8] c"\40\00\00\00\00\00\00\00" }>, align 8
define dso_local %"compiler/cond:Decision" @compiler_2fcond_2eDecision_2eundecided(i32 %a0) #0 {
entry:
  %l2 = alloca %"compiler/cond:Decision"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/cond:Decision"
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call %"compiler/cond:Decision" @compiler_2fcond_3aDecision_2ector(ptr %s0, i32 %a0, i1 false)
  store %"compiler/cond:Decision" %t3, ptr %l2
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  %t4 = load %"compiler/cond:Decision", ptr %l2
  store %"compiler/cond:Decision" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/cond:Decision", ptr %rv
  ret %"compiler/cond:Decision" %rr
}

define dso_local %"compiler/cond:Value" @compiler_2fcond_2eValue_2ebool(i1 %a0) #0 {
entry:
  %l1 = alloca i32
  %l3 = alloca i64
  %l4 = alloca %"compiler/cond:Value"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/cond:Value"
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store i32 1, ptr %l1
  br i1 %a0, label %bb1, label %bb2
bb1:
  store i64 1, ptr %l3, !tbaa !24
  br label %bb3
bb2:
  store i64 0, ptr %l3, !tbaa !24
  br label %bb3
bb3:
  %t3 = load i32, ptr %l1, !range !{i32 0, i32 5}
  %t4 = load i64, ptr %l3, !tbaa !24
  %t5 = call %"compiler/cond:Value" @compiler_2fcond_3aValue_2ector(ptr %s0, i32 %t3, i64 %t4, double 0x0000000000000000, i64 0, i64 0, i1 false, i1 false)
  store %"compiler/cond:Value" %t5, ptr %l4
  br label %bb4
bb4:
  call void @__olang_scope_close(ptr %s0)
  %t6 = load %"compiler/cond:Value", ptr %l4
  store %"compiler/cond:Value" %t6, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/cond:Value", ptr %rv
  ret %"compiler/cond:Value" %rr
}

define dso_local %"compiler/cond:Value" @compiler_2fcond_2eValue_2edeclaredKind(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca i1
  %l4 = alloca %"compiler/cond:Value"
  %l6 = alloca i1
  %l8 = alloca %"compiler/cond:Value"
  %l10 = alloca i1
  %l12 = alloca %"compiler/cond:Value"
  %l14 = alloca i1
  %l16 = alloca %"compiler/cond:Value"
  %l18 = alloca i1
  %l20 = alloca %"compiler/cond:Value"
  %l22 = alloca i1
  %l24 = alloca %"compiler/cond:Value"
  %l26 = alloca i1
  %l28 = alloca %"compiler/cond:Value"
  %l30 = alloca i1
  %l32 = alloca %"compiler/cond:Value"
  %l34 = alloca i1
  %l35 = alloca i1
  %l37 = alloca i1
  %l39 = alloca %"compiler/cond:Value"
  %l41 = alloca i1
  %l43 = alloca %"compiler/cond:Value"
  %l45 = alloca i1
  %l47 = alloca %"compiler/cond:Value"
  %l49 = alloca i1
  %l51 = alloca %"compiler/cond:Value"
  %l53 = alloca i1
  %l55 = alloca %"compiler/cond:Value"
  %l57 = alloca %"compiler/cond:Value"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/cond:Value"
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d0, i32 0, i32 1) })
  store i1 %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load i1, ptr %l2, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  %t6 = call %"compiler/cond:Value" @compiler_2fcond_2eValue_2eshape(i32 2, i64 8, i1 false)
  store %"compiler/cond:Value" %t6, ptr %l4
  br label %bb4
bb3:
  br label %bb5
bb4:
  call void @__olang_scope_close(ptr %s0)
  %t7 = load %"compiler/cond:Value", ptr %l4
  store %"compiler/cond:Value" %t7, ptr %rv
  br label %ret
bb5:
  %t8 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t10 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t8, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d1, i32 0, i32 1) })
  store i1 %t10, ptr %l6
  br label %bb6
bb6:
  %t11 = load i1, ptr %l6, !tbaa !21
  br i1 %t11, label %bb7, label %bb8
bb7:
  %t13 = call %"compiler/cond:Value" @compiler_2fcond_2eValue_2eshape(i32 2, i64 16, i1 false)
  store %"compiler/cond:Value" %t13, ptr %l8
  br label %bb9
bb8:
  br label %bb10
bb9:
  call void @__olang_scope_close(ptr %s0)
  %t14 = load %"compiler/cond:Value", ptr %l8
  store %"compiler/cond:Value" %t14, ptr %rv
  br label %ret
bb10:
  %t15 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t17 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t15, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d2, i32 0, i32 1) })
  store i1 %t17, ptr %l10
  br label %bb11
bb11:
  %t18 = load i1, ptr %l10, !tbaa !21
  br i1 %t18, label %bb12, label %bb13
bb12:
  %t20 = call %"compiler/cond:Value" @compiler_2fcond_2eValue_2eshape(i32 2, i64 32, i1 false)
  store %"compiler/cond:Value" %t20, ptr %l12
  br label %bb14
bb13:
  br label %bb15
bb14:
  call void @__olang_scope_close(ptr %s0)
  %t21 = load %"compiler/cond:Value", ptr %l12
  store %"compiler/cond:Value" %t21, ptr %rv
  br label %ret
bb15:
  %t22 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t24 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t22, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store i1 %t24, ptr %l14
  br label %bb16
bb16:
  %t25 = load i1, ptr %l14, !tbaa !21
  br i1 %t25, label %bb17, label %bb18
bb17:
  %t27 = call %"compiler/cond:Value" @compiler_2fcond_2eValue_2eshape(i32 2, i64 64, i1 false)
  store %"compiler/cond:Value" %t27, ptr %l16
  br label %bb19
bb18:
  br label %bb20
bb19:
  call void @__olang_scope_close(ptr %s0)
  %t28 = load %"compiler/cond:Value", ptr %l16
  store %"compiler/cond:Value" %t28, ptr %rv
  br label %ret
bb20:
  %t29 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t31 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t29, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d4, i32 0, i32 1) })
  store i1 %t31, ptr %l18
  br label %bb21
bb21:
  %t32 = load i1, ptr %l18, !tbaa !21
  br i1 %t32, label %bb22, label %bb23
bb22:
  %t34 = call %"compiler/cond:Value" @compiler_2fcond_2eValue_2eshape(i32 2, i64 8, i1 true)
  store %"compiler/cond:Value" %t34, ptr %l20
  br label %bb24
bb23:
  br label %bb25
bb24:
  call void @__olang_scope_close(ptr %s0)
  %t35 = load %"compiler/cond:Value", ptr %l20
  store %"compiler/cond:Value" %t35, ptr %rv
  br label %ret
bb25:
  %t36 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t38 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t36, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d5, i32 0, i32 1) })
  store i1 %t38, ptr %l22
  br label %bb26
bb26:
  %t39 = load i1, ptr %l22, !tbaa !21
  br i1 %t39, label %bb27, label %bb28
bb27:
  %t41 = call %"compiler/cond:Value" @compiler_2fcond_2eValue_2eshape(i32 2, i64 16, i1 true)
  store %"compiler/cond:Value" %t41, ptr %l24
  br label %bb29
bb28:
  br label %bb30
bb29:
  call void @__olang_scope_close(ptr %s0)
  %t42 = load %"compiler/cond:Value", ptr %l24
  store %"compiler/cond:Value" %t42, ptr %rv
  br label %ret
bb30:
  %t43 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t45 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t43, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d6, i32 0, i32 1) })
  store i1 %t45, ptr %l26
  br label %bb31
bb31:
  %t46 = load i1, ptr %l26, !tbaa !21
  br i1 %t46, label %bb32, label %bb33
bb32:
  %t48 = call %"compiler/cond:Value" @compiler_2fcond_2eValue_2eshape(i32 2, i64 32, i1 true)
  store %"compiler/cond:Value" %t48, ptr %l28
  br label %bb34
bb33:
  br label %bb35
bb34:
  call void @__olang_scope_close(ptr %s0)
  %t49 = load %"compiler/cond:Value", ptr %l28
  store %"compiler/cond:Value" %t49, ptr %rv
  br label %ret
bb35:
  %t50 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t52 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t50, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d7, i32 0, i32 1) })
  store i1 %t52, ptr %l30
  br label %bb36
bb36:
  %t53 = load i1, ptr %l30, !tbaa !21
  br i1 %t53, label %bb37, label %bb38
bb37:
  %t55 = call %"compiler/cond:Value" @compiler_2fcond_2eValue_2eshape(i32 2, i64 64, i1 true)
  store %"compiler/cond:Value" %t55, ptr %l32
  br label %bb39
bb38:
  br label %bb40
bb39:
  call void @__olang_scope_close(ptr %s0)
  %t56 = load %"compiler/cond:Value", ptr %l32
  store %"compiler/cond:Value" %t56, ptr %rv
  br label %ret
bb40:
  %t57 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t59 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t57, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d8, i32 0, i32 1) })
  store i1 %t59, ptr %l34
  br label %bb41
bb41:
  %t60 = load i1, ptr %l34, !tbaa !21
  br i1 %t60, label %bb42, label %bb43
bb42:
  store i1 true, ptr %l35, !tbaa !21
  br label %bb45
bb43:
  %t61 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t63 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t61, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d9, i32 0, i32 1) })
  store i1 %t63, ptr %l37
  br label %bb44
bb44:
  %t64 = load i1, ptr %l37, !tbaa !21
  store i1 %t64, ptr %l35, !tbaa !21
  br label %bb45
bb45:
  %t65 = load i1, ptr %l35, !tbaa !21
  br i1 %t65, label %bb46, label %bb47
bb46:
  %t67 = call %"compiler/cond:Value" @compiler_2fcond_2eValue_2eshape(i32 3, i64 16, i1 false)
  store %"compiler/cond:Value" %t67, ptr %l39
  br label %bb48
bb47:
  br label %bb49
bb48:
  call void @__olang_scope_close(ptr %s0)
  %t68 = load %"compiler/cond:Value", ptr %l39
  store %"compiler/cond:Value" %t68, ptr %rv
  br label %ret
bb49:
  %t69 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t71 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t69, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d10, i32 0, i32 1) })
  store i1 %t71, ptr %l41
  br label %bb50
bb50:
  %t72 = load i1, ptr %l41, !tbaa !21
  br i1 %t72, label %bb51, label %bb52
bb51:
  %t74 = call %"compiler/cond:Value" @compiler_2fcond_2eValue_2eshape(i32 3, i64 32, i1 false)
  store %"compiler/cond:Value" %t74, ptr %l43
  br label %bb53
bb52:
  br label %bb54
bb53:
  call void @__olang_scope_close(ptr %s0)
  %t75 = load %"compiler/cond:Value", ptr %l43
  store %"compiler/cond:Value" %t75, ptr %rv
  br label %ret
bb54:
  %t76 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t78 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t76, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d11, i32 0, i32 1) })
  store i1 %t78, ptr %l45
  br label %bb55
bb55:
  %t79 = load i1, ptr %l45, !tbaa !21
  br i1 %t79, label %bb56, label %bb57
bb56:
  %t81 = call %"compiler/cond:Value" @compiler_2fcond_2eValue_2eshape(i32 3, i64 64, i1 false)
  store %"compiler/cond:Value" %t81, ptr %l47
  br label %bb58
bb57:
  br label %bb59
bb58:
  call void @__olang_scope_close(ptr %s0)
  %t82 = load %"compiler/cond:Value", ptr %l47
  store %"compiler/cond:Value" %t82, ptr %rv
  br label %ret
bb59:
  %t83 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t85 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t83, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d12, i32 0, i32 1) })
  store i1 %t85, ptr %l49
  br label %bb60
bb60:
  %t86 = load i1, ptr %l49, !tbaa !21
  br i1 %t86, label %bb61, label %bb62
bb61:
  %t88 = call %"compiler/cond:Value" @compiler_2fcond_2eValue_2eshape(i32 1, i64 0, i1 false)
  store %"compiler/cond:Value" %t88, ptr %l51
  br label %bb63
bb62:
  br label %bb64
bb63:
  call void @__olang_scope_close(ptr %s0)
  %t89 = load %"compiler/cond:Value", ptr %l51
  store %"compiler/cond:Value" %t89, ptr %rv
  br label %ret
bb64:
  %t90 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t92 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t90, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d13, i32 0, i32 1) })
  store i1 %t92, ptr %l53
  br label %bb65
bb65:
  %t93 = load i1, ptr %l53, !tbaa !21
  br i1 %t93, label %bb66, label %bb67
bb66:
  %t95 = call %"compiler/cond:Value" @compiler_2fcond_2eValue_2eshape(i32 4, i64 0, i1 false)
  store %"compiler/cond:Value" %t95, ptr %l55
  br label %bb68
bb67:
  br label %bb69
bb68:
  call void @__olang_scope_close(ptr %s0)
  %t96 = load %"compiler/cond:Value", ptr %l55
  store %"compiler/cond:Value" %t96, ptr %rv
  br label %ret
bb69:
  %t98 = call %"compiler/cond:Value" @compiler_2fcond_2eValue_2eshape(i32 0, i64 0, i1 false)
  store %"compiler/cond:Value" %t98, ptr %l57
  br label %bb70
bb70:
  call void @__olang_scope_close(ptr %s0)
  %t99 = load %"compiler/cond:Value", ptr %l57
  store %"compiler/cond:Value" %t99, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/cond:Value", ptr %rv
  ret %"compiler/cond:Value" %rr
}

define dso_local %"compiler/cond:Value" @compiler_2fcond_2eValue_2enone() #0 {
entry:
  %l1 = alloca %"compiler/cond:Value"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/cond:Value"
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t2 = call %"compiler/cond:Value" @compiler_2fcond_3aValue_2ector(ptr %s0, i32 0, i64 0, double 0x0000000000000000, i64 0, i64 0, i1 false, i1 false)
  store %"compiler/cond:Value" %t2, ptr %l1
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  %t3 = load %"compiler/cond:Value", ptr %l1
  store %"compiler/cond:Value" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/cond:Value", ptr %rv
  ret %"compiler/cond:Value" %rr
}

define dso_local %"compiler/cond:Value" @compiler_2fcond_2eValue_2eshape(i32 %a0, i64 %a1, i1 %a2) #0 {
entry:
  %l6 = alloca %"compiler/cond:Value"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/cond:Value"
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t7 = call %"compiler/cond:Value" @compiler_2fcond_3aValue_2ector(ptr %s0, i32 %a0, i64 0, double 0x0000000000000000, i64 0, i64 %a1, i1 %a2, i1 false)
  store %"compiler/cond:Value" %t7, ptr %l6
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  %t8 = load %"compiler/cond:Value", ptr %l6
  store %"compiler/cond:Value" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/cond:Value", ptr %rv
  ret %"compiler/cond:Value" %rr
}

define dso_local { i32, double } @compiler_2fcond_2easFloat(%"compiler/cond:Value" %a0) #0 {
entry:
  %l0 = alloca %"compiler/cond:Value"
  %l3 = alloca i1
  %l6 = alloca i1
  %rv = alloca { i32, double }
  store %"compiler/cond:Value" %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/cond:Value", ptr %l0, i32 0, i32 4
  %t2 = load i64, ptr %t1, !tbaa !24
  %t4 = icmp ne i64 %t2, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb3
bb2:
  %t6 = getelementptr %"compiler/cond:Value", ptr %l0, i32 0, i32 1
  %t7 = load i64, ptr %t6, !tbaa !24
  %t9 = icmp sgt i64 %t7, 9007199254740992
  store i1 %t9, ptr %l3, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l3, !tbaa !21
  br i1 %t11, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb6
bb5:
  %t12 = getelementptr %"compiler/cond:Value", ptr %l0, i32 0, i32 1
  %t13 = load i64, ptr %t12, !tbaa !24
  %t15 = icmp slt i64 %t13, -9007199254740992
  store i1 %t15, ptr %l6, !tbaa !21
  br label %bb6
bb6:
  %t17 = load i1, ptr %l6, !tbaa !21
  br i1 %t17, label %bb7, label %bb8
bb7:
  %t19 = insertvalue { i32, double } zeroinitializer, i32 65536, 0
  store { i32, double } %t19, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t20 = getelementptr %"compiler/cond:Value", ptr %l0, i32 0, i32 1
  %t21 = load i64, ptr %t20, !tbaa !24
  %t23 = sitofp i64 %t21 to double
  %t25 = insertvalue { i32, double } zeroinitializer, double %t23, 1
  store { i32, double } %t25, ptr %rv
  br label %ret
ret:
  %rr = load { i32, double }, ptr %rv
  ret { i32, double } %rr
}

define dso_local i32 @compiler_2fcond_2ebadDefine(ptr %v0, ptr %v1, ptr %a0, %"compiler/diagmsg:Msg" %a1) #0 {
entry:
  %l5 = alloca i64
  %rv = alloca i32
  %t2 = alloca { i64, [3 x i64] }, align 8
  br label %start
start:
  br label %bb0
bb0:
  store { i64, [3 x i64] } zeroinitializer, ptr %t2
  %t3 = getelementptr { i64, [3 x i64] }, ptr %t2, i32 0, i32 0
  store i64 0, ptr %t3
  %t4 = load { i64, [3 x i64] }, ptr %t2
  %t9 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %t4, %"compiler/diagmsg:Msg" %a1)
  store i64 %t9, ptr %l5
  br label %bb1
bb1:
  store i32 65536, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fcond_2ebuildType(%"compiler/cond:Value" %a0) #0 {
entry:
  %l0 = alloca %"compiler/cond:Value"
  %l1 = alloca i32
  %l3 = alloca i1
  %l15 = alloca i1
  %l20 = alloca i1
  %rv = alloca i1
  store %"compiler/cond:Value" %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/cond:Value", ptr %l0, i32 0, i32 0
  %t2 = load i32, ptr %t1, !range !{i32 0, i32 5}
  store i32 %t2, ptr %l1
  %t4 = load i32, ptr %l1, !range !{i32 0, i32 5}
  %t6 = trunc i64 1 to i32
  %t7 = icmp eq i32 %t4, %t6
  br i1 %t7, label %bb1, label %bb2
bb1:
  br label %bb5
bb2:
  %t9 = load i32, ptr %l1, !range !{i32 0, i32 5}
  %t11 = trunc i64 4 to i32
  %t12 = icmp eq i32 %t9, %t11
  br i1 %t12, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb6
bb5:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb25
bb6:
  %t14 = load i32, ptr %l1, !range !{i32 0, i32 5}
  %t16 = trunc i64 3 to i32
  %t17 = icmp eq i32 %t14, %t16
  br i1 %t17, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  %t19 = getelementptr %"compiler/cond:Value", ptr %l0, i32 0, i32 4
  %t20 = load i64, ptr %t19, !tbaa !24
  %t22 = icmp eq i64 %t20, 64
  store i1 %t22, ptr %l3, !tbaa !21
  br label %bb25
bb10:
  %t24 = load i32, ptr %l1, !range !{i32 0, i32 5}
  %t26 = trunc i64 2 to i32
  %t27 = icmp eq i32 %t24, %t26
  br i1 %t27, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb20
bb13:
  %t29 = getelementptr %"compiler/cond:Value", ptr %l0, i32 0, i32 5
  %t30 = load i1, ptr %t29, !tbaa !21
  br i1 %t30, label %bb14, label %bb15
bb14:
  %t32 = getelementptr %"compiler/cond:Value", ptr %l0, i32 0, i32 4
  %t33 = load i64, ptr %t32, !tbaa !24
  %t35 = icmp eq i64 %t33, 64
  store i1 %t35, ptr %l15, !tbaa !21
  br label %bb19
bb15:
  %t37 = getelementptr %"compiler/cond:Value", ptr %l0, i32 0, i32 4
  %t38 = load i64, ptr %t37, !tbaa !24
  %t40 = icmp eq i64 %t38, 32
  br i1 %t40, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb18
bb17:
  %t42 = getelementptr %"compiler/cond:Value", ptr %l0, i32 0, i32 4
  %t43 = load i64, ptr %t42, !tbaa !24
  %t45 = icmp eq i64 %t43, 64
  store i1 %t45, ptr %l20, !tbaa !21
  br label %bb18
bb18:
  %t47 = load i1, ptr %l20, !tbaa !21
  store i1 %t47, ptr %l15, !tbaa !21
  br label %bb19
bb19:
  %t48 = load i1, ptr %l15, !tbaa !21
  store i1 %t48, ptr %l3, !tbaa !21
  br label %bb25
bb20:
  br i1 true, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  store i1 false, ptr %l3, !tbaa !21
  br label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_a57e25c843e3c84f_6f669dc60e0f5ddb)
  unreachable
bb25:
  %t49 = load i1, ptr %l3, !tbaa !21
  store i1 %t49, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eBuiltins(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, i64 %a4, i64 %a5, i1 %a6, i1 %a7, i1 %a8) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca i32
  %l13 = alloca i64
  %l14 = alloca %"compiler/cond:Value"
  %l16 = alloca i1
  %l18 = alloca ptr
  %l19 = alloca i32
  %l22 = alloca i64
  %l23 = alloca %"compiler/cond:Value"
  %l25 = alloca i1
  %l27 = alloca ptr
  %l28 = alloca i32
  %l31 = alloca i64
  %l32 = alloca %"compiler/cond:Value"
  %l34 = alloca i1
  %l36 = alloca ptr
  %l40 = alloca %"compiler/cond:Value"
  %l43 = alloca ptr
  %l46 = alloca %"compiler/cond:Value"
  %l49 = alloca ptr
  %l51 = alloca %"compiler/cond:Value"
  %l52 = alloca ptr
  %l54 = alloca %"compiler/cond:Value"
  %l55 = alloca ptr
  %l57 = alloca %"compiler/cond:Value"
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  store i64 %a4, ptr %l4
  store i64 %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l9, !tbaa !29
  store i32 4, ptr %l10
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t3 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t6 = call i64 @compiler_2fcond_2ecompiler_2fcond_3aConsts_2etext(ptr %v0, ptr %v1, ptr %t2, { i64, ptr } %t3)
  store i64 %t6, ptr %l13
  br label %bb1
bb1:
  %t7 = load i32, ptr %l10, !range !{i32 0, i32 5}
  %t8 = load i64, ptr %l13, !tbaa !24
  %t9 = call %"compiler/cond:Value" @compiler_2fcond_3aValue_2ector(ptr %s0, i32 %t7, i64 0, double 0x0000000000000000, i64 %t8, i64 0, i1 false, i1 false)
  store %"compiler/cond:Value" %t9, ptr %l14
  br label %bb2
bb2:
  %t10 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t12 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t10, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d14, i32 0, i32 1) })
  store i1 %t12, ptr %l16
  br label %bb3
bb3:
  %t13 = load i1, ptr %l16, !tbaa !21
  %t14 = xor i1 %t13, true
  %t15 = load ptr, ptr %l9, !tbaa !29
  %t16 = load %"compiler/cond:Value", ptr %l14
  call void @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eadd(ptr %v0, ptr %s0, ptr %t15, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d15, i32 0, i32 1) }, %"compiler/cond:Value" %t16, i1 true, i1 false, i1 %t14)
  br label %bb4
bb4:
  %t18 = load ptr, ptr %l0, !tbaa !29
  store ptr %t18, ptr %l18, !tbaa !29
  store i32 4, ptr %l19
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t23 = call i64 @compiler_2fcond_2ecompiler_2fcond_3aConsts_2etext(ptr %v0, ptr %v2, ptr %t19, { i64, ptr } %t20)
  store i64 %t23, ptr %l22
  br label %bb5
bb5:
  %t24 = load i32, ptr %l19, !range !{i32 0, i32 5}
  %t25 = load i64, ptr %l22, !tbaa !24
  %t26 = call %"compiler/cond:Value" @compiler_2fcond_3aValue_2ector(ptr %s0, i32 %t24, i64 0, double 0x0000000000000000, i64 %t25, i64 0, i1 false, i1 false)
  store %"compiler/cond:Value" %t26, ptr %l23
  br label %bb6
bb6:
  %t27 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t29 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t27, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d16, i32 0, i32 1) })
  store i1 %t29, ptr %l25
  br label %bb7
bb7:
  %t30 = load i1, ptr %l25, !tbaa !21
  %t31 = xor i1 %t30, true
  %t32 = load ptr, ptr %l18, !tbaa !29
  %t33 = load %"compiler/cond:Value", ptr %l23
  call void @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eadd(ptr %v0, ptr %s0, ptr %t32, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d17, i32 0, i32 1) }, %"compiler/cond:Value" %t33, i1 true, i1 false, i1 %t31)
  br label %bb8
bb8:
  %t35 = load ptr, ptr %l0, !tbaa !29
  store ptr %t35, ptr %l27, !tbaa !29
  store i32 4, ptr %l28
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t40 = call i64 @compiler_2fcond_2ecompiler_2fcond_3aConsts_2etext(ptr %v0, ptr %v3, ptr %t36, { i64, ptr } %t37)
  store i64 %t40, ptr %l31
  br label %bb9
bb9:
  %t41 = load i32, ptr %l28, !range !{i32 0, i32 5}
  %t42 = load i64, ptr %l31, !tbaa !24
  %t43 = call %"compiler/cond:Value" @compiler_2fcond_3aValue_2ector(ptr %s0, i32 %t41, i64 0, double 0x0000000000000000, i64 %t42, i64 0, i1 false, i1 false)
  store %"compiler/cond:Value" %t43, ptr %l32
  br label %bb10
bb10:
  %t44 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t46 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v3, ptr %s0, { i64, ptr } %t44, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d18, i32 0, i32 1) })
  store i1 %t46, ptr %l34
  br label %bb11
bb11:
  %t47 = load i1, ptr %l34, !tbaa !21
  %t48 = xor i1 %t47, true
  %t49 = load ptr, ptr %l27, !tbaa !29
  %t50 = load %"compiler/cond:Value", ptr %l32
  call void @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eadd(ptr %v0, ptr %s0, ptr %t49, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d19, i32 0, i32 1) }, %"compiler/cond:Value" %t50, i1 true, i1 false, i1 %t48)
  br label %bb12
bb12:
  %t52 = load ptr, ptr %l0, !tbaa !29
  store ptr %t52, ptr %l36, !tbaa !29
  %t53 = load i64, ptr %l4, !tbaa !24
  %t54 = load i64, ptr @G_2ecompiler_2fcond_2eLiteralIntBits, !tbaa !24
  %t58 = call %"compiler/cond:Value" @compiler_2fcond_3aValue_2ector(ptr %s0, i32 2, i64 %t53, double 0x0000000000000000, i64 0, i64 %t54, i1 false, i1 false)
  store %"compiler/cond:Value" %t58, ptr %l40
  br label %bb13
bb13:
  %t59 = load i64, ptr %l4, !tbaa !24
  %t61 = icmp sgt i64 %t59, 0
  %t62 = load ptr, ptr %l36, !tbaa !29
  %t63 = load %"compiler/cond:Value", ptr %l40
  call void @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eadd(ptr %v0, ptr %s0, ptr %t62, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d20, i32 0, i32 1) }, %"compiler/cond:Value" %t63, i1 true, i1 false, i1 %t61)
  br label %bb14
bb14:
  %t65 = load ptr, ptr %l0, !tbaa !29
  store ptr %t65, ptr %l43, !tbaa !29
  %t66 = load i64, ptr %l5, !tbaa !24
  %t68 = icmp eq i64 %t66, 1
  %t70 = call %"compiler/cond:Value" @compiler_2fcond_2eValue_2ebool(i1 %t68)
  store %"compiler/cond:Value" %t70, ptr %l46
  br label %bb15
bb15:
  %t71 = load i64, ptr %l5, !tbaa !24
  %t73 = icmp sge i64 %t71, 0
  %t74 = load ptr, ptr %l43, !tbaa !29
  %t75 = load %"compiler/cond:Value", ptr %l46
  call void @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eadd(ptr %v0, ptr %s0, ptr %t74, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d21, i32 0, i32 1) }, %"compiler/cond:Value" %t75, i1 true, i1 false, i1 %t73)
  br label %bb16
bb16:
  %t77 = load ptr, ptr %l0, !tbaa !29
  store ptr %t77, ptr %l49, !tbaa !29
  %t80 = call %"compiler/cond:Value" @compiler_2fcond_2eValue_2ebool(i1 %a6)
  store %"compiler/cond:Value" %t80, ptr %l51
  br label %bb17
bb17:
  %t81 = load ptr, ptr %l49, !tbaa !29
  %t82 = load %"compiler/cond:Value", ptr %l51
  call void @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eadd(ptr %v0, ptr %s0, ptr %t81, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d22, i32 0, i32 1) }, %"compiler/cond:Value" %t82, i1 true, i1 false, i1 true)
  br label %bb18
bb18:
  %t83 = load ptr, ptr %l0, !tbaa !29
  store ptr %t83, ptr %l52, !tbaa !29
  %t86 = call %"compiler/cond:Value" @compiler_2fcond_2eValue_2ebool(i1 %a7)
  store %"compiler/cond:Value" %t86, ptr %l54
  br label %bb19
bb19:
  %t87 = load ptr, ptr %l52, !tbaa !29
  %t88 = load %"compiler/cond:Value", ptr %l54
  call void @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eadd(ptr %v0, ptr %s0, ptr %t87, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d23, i32 0, i32 1) }, %"compiler/cond:Value" %t88, i1 true, i1 false, i1 true)
  br label %bb20
bb20:
  %t89 = load ptr, ptr %l0, !tbaa !29
  store ptr %t89, ptr %l55, !tbaa !29
  %t92 = call %"compiler/cond:Value" @compiler_2fcond_2eValue_2ebool(i1 %a8)
  store %"compiler/cond:Value" %t92, ptr %l57
  br label %bb21
bb21:
  %t93 = load ptr, ptr %l55, !tbaa !29
  %t94 = load %"compiler/cond:Value", ptr %l57
  call void @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eadd(ptr %v0, ptr %s0, ptr %t93, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d24, i32 0, i32 1) }, %"compiler/cond:Value" %t94, i1 true, i1 false, i1 true)
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eDefine(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, ptr %a2) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i32
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca i64
  %l24 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l27 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l36 = alloca { i64, ptr }
  %l38 = alloca i64
  %l41 = alloca i64
  %l42 = alloca i64
  %l49 = alloca i32
  %l59 = alloca ptr
  %l61 = alloca %"compiler/diagmsg:Msg"
  %l62 = alloca i32
  %l64 = alloca ptr
  %l67 = alloca %"compiler/diagmsg:Msg"
  %l68 = alloca i32
  %l70 = alloca ptr
  %l73 = alloca %"compiler/diagmsg:Msg"
  %l74 = alloca i32
  %l76 = alloca ptr
  %l78 = alloca %"compiler/diagmsg:Msg"
  %l79 = alloca i32
  %l81 = alloca ptr
  %l84 = alloca %"compiler/diagmsg:Msg"
  %l85 = alloca i32
  %l87 = alloca ptr
  %l90 = alloca %"compiler/diagmsg:Msg"
  %l91 = alloca i32
  %l93 = alloca ptr
  %l96 = alloca %"compiler/diagmsg:Msg"
  %l97 = alloca i32
  %l99 = alloca ptr
  %l102 = alloca %"compiler/diagmsg:Msg"
  %l103 = alloca i32
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %rv = alloca i32
  store { i64, ptr } %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t4 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v1, { i64, ptr } %t1, i8 61)
  %t5 = extractvalue { i32, i64 } %t4, 1
  %t6 = extractvalue { i32, i64 } %t4, 0
  store i32 %t6, ptr %l10
  %t7 = icmp ne i32 %t6, 0
  br i1 %t7, label %bb2, label %ok.8, !prof !99
ok.8:
  store i64 %t5, ptr %l9
  br label %bb1
bb1:
  %t9 = load i64, ptr %l9, !tbaa !24
  store i64 %t9, ptr %l6, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  %t10 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t10, 0
  store i64 %t12, ptr %l6, !tbaa !24
  br label %bb4
bb4:
  %t14 = load i64, ptr %l6, !tbaa !24
  store i64 %t14, ptr %l3, !tbaa !24
  %t15 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t15, ptr %l13, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  store i64 %t16, ptr %l14, !tbaa !24
  %t17 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t17, 0
  store i64 %t18, ptr %l15, !tbaa !24
  %t19 = icmp sge i64 0, 0
  br i1 %t19, label %bb5, label %bb6
bb5:
  %t21 = load i64, ptr %l14, !tbaa !24
  %t22 = icmp sle i64 0, %t21
  br i1 %t22, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_2f3f750ce3a7cf22_a8bd497d0b471fc6)
  unreachable
bb7:
  %t24 = load i64, ptr %l14, !tbaa !24
  %t25 = load i64, ptr %l15, !tbaa !24
  %t26 = icmp sle i64 %t24, %t25
  br i1 %t26, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_2f3f750ce3a7cf22_a8bd497d0b471fc6)
  unreachable
bb9:
  %t28 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !27
  %t30 = load i64, ptr %l14, !tbaa !24
  %t31 = getelementptr i8, ptr %t29, i64 0
  %t32 = sub i64 %t30, 0
  %t33 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t34 = insertvalue { i64, ptr } %t33, ptr %t31, 1
  store { i64, ptr } %t34, ptr %l4, !tbaa !27
  %t36 = load i64, ptr %l3, !tbaa !24
  %t37 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t37, 0
  %t42 = icmp slt i64 %t36, %t39
  br i1 %t42, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_2f3f750ce3a7cf22_a8bd497d0b471fc6)
  unreachable
bb11:
  %t44 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t44, ptr %l25, !tbaa !27
  %t45 = load i64, ptr %l3, !tbaa !24
  %t47 = add i64 %t45, 1
  store i64 %t47, ptr %l27, !tbaa !24
  %t48 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t51 = extractvalue { i64, ptr } %t48, 0
  store i64 %t51, ptr %l30, !tbaa !24
  %t52 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t53 = extractvalue { i64, ptr } %t52, 0
  store i64 %t53, ptr %l31, !tbaa !24
  %t54 = load i64, ptr %l27, !tbaa !24
  %t55 = icmp sge i64 %t54, 0
  br i1 %t55, label %bb13, label %bb14
bb12:
  %t57 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t57, ptr %l36, !tbaa !27
  %t58 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t60 = extractvalue { i64, ptr } %t58, 0
  store i64 %t60, ptr %l38, !tbaa !24
  %t61 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t64 = extractvalue { i64, ptr } %t61, 0
  store i64 %t64, ptr %l41, !tbaa !24
  %t65 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t66 = extractvalue { i64, ptr } %t65, 0
  store i64 %t66, ptr %l42, !tbaa !24
  %t67 = load i64, ptr %l38, !tbaa !24
  %t68 = icmp sge i64 %t67, 0
  br i1 %t68, label %bb19, label %bb20
bb13:
  %t70 = load i64, ptr %l27, !tbaa !24
  %t71 = load i64, ptr %l30, !tbaa !24
  %t72 = icmp sle i64 %t70, %t71
  br i1 %t72, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_4bc53af292f25c9f_867e818f05a97a3)
  unreachable
bb15:
  %t74 = load i64, ptr %l30, !tbaa !24
  %t75 = load i64, ptr %l31, !tbaa !24
  %t76 = icmp sle i64 %t74, %t75
  br i1 %t76, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_4bc53af292f25c9f_867e818f05a97a3)
  unreachable
bb17:
  %t78 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !27
  %t80 = load i64, ptr %l27, !tbaa !24
  %t81 = load i64, ptr %l30, !tbaa !24
  %t82 = getelementptr i8, ptr %t79, i64 %t80
  %t83 = sub i64 %t81, %t80
  %t84 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t85 = insertvalue { i64, ptr } %t84, ptr %t82, 1
  store { i64, ptr } %t85, ptr %l24, !tbaa !27
  br label %bb25
bb18:
  call void @__olang_check_failed(ptr @olang_loc_4bc53af292f25c9f_867e818f05a97a3)
  unreachable
bb19:
  %t87 = load i64, ptr %l38, !tbaa !24
  %t88 = load i64, ptr %l41, !tbaa !24
  %t89 = icmp sle i64 %t87, %t88
  br i1 %t89, label %bb21, label %bb22
bb20:
  call void @__olang_check_failed(ptr @olang_loc_4bc53af292f25c9f_867e818f05a97a3)
  unreachable
bb21:
  %t91 = load i64, ptr %l41, !tbaa !24
  %t92 = load i64, ptr %l42, !tbaa !24
  %t93 = icmp sle i64 %t91, %t92
  br i1 %t93, label %bb23, label %bb24
bb22:
  call void @__olang_check_failed(ptr @olang_loc_4bc53af292f25c9f_867e818f05a97a3)
  unreachable
bb23:
  %t95 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !27
  %t97 = load i64, ptr %l38, !tbaa !24
  %t98 = load i64, ptr %l41, !tbaa !24
  %t99 = getelementptr i8, ptr %t96, i64 %t97
  %t100 = sub i64 %t98, %t97
  %t101 = insertvalue { i64, ptr } undef, i64 %t100, 0
  %t102 = insertvalue { i64, ptr } %t101, ptr %t99, 1
  store { i64, ptr } %t102, ptr %l24, !tbaa !27
  br label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_4bc53af292f25c9f_867e818f05a97a3)
  unreachable
bb25:
  %t104 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t104, ptr %l5, !tbaa !27
  %t106 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t109 = call i32 @compiler_2fcond_2ecompiler_2fcond_3aConsts_2edefine(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %t106)
  store i32 %t109, ptr %l49
  %t110 = icmp ne i32 %t109, 0
  br i1 %t110, label %bb27, label %ok.111, !prof !99
ok.111:
  br label %bb26
bb26:
  br label %bb84
bb27:
  %t112 = load i32, ptr %l49, !tbaa !23
  %t113 = icmp eq i32 %t112, 65536
  br i1 %t113, label %bb28, label %bb29
bb28:
  br label %bb30
bb29:
  %t115 = load i32, ptr %l49, !tbaa !23
  %t116 = icmp eq i32 %t115, 65537
  br i1 %t116, label %bb31, label %bb32
bb30:
  store %olang.scope zeroinitializer, ptr %s1
  %t118 = load ptr, ptr %l2, !tbaa !29
  store ptr %t118, ptr %l59, !tbaa !29
  %t119 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t121 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDefineShape(ptr %v1, ptr %s1, { i64, ptr } %t119)
  store %"compiler/diagmsg:Msg" %t121, ptr %l61
  br label %bb52
bb31:
  br label %bb33
bb32:
  %t122 = load i32, ptr %l49, !tbaa !23
  %t123 = icmp eq i32 %t122, 65538
  br i1 %t123, label %bb34, label %bb35
bb33:
  store %olang.scope zeroinitializer, ptr %s2
  %t125 = load ptr, ptr %l2, !tbaa !29
  store ptr %t125, ptr %l64, !tbaa !29
  %t126 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t127 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t130 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDefineNotName(ptr %v1, ptr %v1, ptr %s2, { i64, ptr } %t126, { i64, ptr } %t127)
  store %"compiler/diagmsg:Msg" %t130, ptr %l67
  br label %bb56
bb34:
  br label %bb36
bb35:
  %t131 = load i32, ptr %l49, !tbaa !23
  %t132 = icmp eq i32 %t131, 65539
  br i1 %t132, label %bb37, label %bb38
bb36:
  store %olang.scope zeroinitializer, ptr %s3
  %t134 = load ptr, ptr %l2, !tbaa !29
  store ptr %t134, ptr %l70, !tbaa !29
  %t135 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t136 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t139 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDefineTwice(ptr %v1, ptr %v1, ptr %s3, { i64, ptr } %t135, { i64, ptr } %t136)
  store %"compiler/diagmsg:Msg" %t139, ptr %l73
  br label %bb60
bb37:
  br label %bb39
bb38:
  %t140 = load i32, ptr %l49, !tbaa !23
  %t141 = icmp eq i32 %t140, 65540
  br i1 %t141, label %bb40, label %bb41
bb39:
  store %olang.scope zeroinitializer, ptr %s4
  %t143 = load ptr, ptr %l2, !tbaa !29
  store ptr %t143, ptr %l76, !tbaa !29
  %t144 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t146 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDefineBuiltin(ptr %v1, ptr %s4, { i64, ptr } %t144)
  store %"compiler/diagmsg:Msg" %t146, ptr %l78
  br label %bb64
bb40:
  br label %bb42
bb41:
  %t147 = load i32, ptr %l49, !tbaa !23
  %t148 = icmp eq i32 %t147, 65541
  br i1 %t148, label %bb43, label %bb44
bb42:
  store %olang.scope zeroinitializer, ptr %s5
  %t150 = load ptr, ptr %l2, !tbaa !29
  store ptr %t150, ptr %l81, !tbaa !29
  %t151 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t152 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t155 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDefineBadNumber(ptr %v1, ptr %v1, ptr %s5, { i64, ptr } %t151, { i64, ptr } %t152)
  store %"compiler/diagmsg:Msg" %t155, ptr %l84
  br label %bb68
bb43:
  br label %bb45
bb44:
  %t156 = load i32, ptr %l49, !tbaa !23
  %t157 = icmp eq i32 %t156, 65542
  br i1 %t157, label %bb46, label %bb47
bb45:
  store %olang.scope zeroinitializer, ptr %s6
  %t159 = load ptr, ptr %l2, !tbaa !29
  store ptr %t159, ptr %l87, !tbaa !29
  %t160 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t161 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t164 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDefineIntRange(ptr %v1, ptr %v1, ptr %s6, { i64, ptr } %t160, { i64, ptr } %t161)
  store %"compiler/diagmsg:Msg" %t164, ptr %l90
  br label %bb72
bb46:
  br label %bb48
bb47:
  %t165 = load i32, ptr %l49, !tbaa !23
  %t166 = icmp eq i32 %t165, 65543
  br i1 %t166, label %bb49, label %bb50
bb48:
  store %olang.scope zeroinitializer, ptr %s7
  %t168 = load ptr, ptr %l2, !tbaa !29
  store ptr %t168, ptr %l93, !tbaa !29
  %t169 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t170 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t173 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDefineNegRange(ptr %v1, ptr %v1, ptr %s7, { i64, ptr } %t169, { i64, ptr } %t170)
  store %"compiler/diagmsg:Msg" %t173, ptr %l96
  br label %bb76
bb49:
  br label %bb51
bb50:
  %t174 = load i32, ptr %l49, !tbaa !23
  %t175 = lshr i32 %t174, 16
  %t176 = and i32 %t174, 65535
  %t177 = icmp eq i32 %t175, 1
  %t178 = select i1 %t177, i32 0, i32 0
  %t179 = icmp eq i32 %t174, 0
  %t180 = shl i32 %t178, 16
  %t181 = or i32 %t180, %t176
  %t182 = select i1 %t179, i32 0, i32 %t181
  store i32 %t182, ptr %rv
  br label %ret
bb51:
  store %olang.scope zeroinitializer, ptr %s8
  %t184 = load ptr, ptr %l2, !tbaa !29
  store ptr %t184, ptr %l99, !tbaa !29
  %t185 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t186 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t189 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDefineFloatRange(ptr %v1, ptr %v1, ptr %s8, { i64, ptr } %t185, { i64, ptr } %t186)
  store %"compiler/diagmsg:Msg" %t189, ptr %l102
  br label %bb80
bb52:
  %t190 = load ptr, ptr %l59, !tbaa !29
  %t191 = load %"compiler/diagmsg:Msg", ptr %l61
  %t192 = call i32 @compiler_2fcond_2ebadDefine(ptr %v2, ptr %s1, ptr %t190, %"compiler/diagmsg:Msg" %t191)
  store i32 %t192, ptr %l62
  %t193 = icmp ne i32 %t192, 0
  br i1 %t193, label %bb54, label %ok.194, !prof !99
ok.194:
  br label %bb53
bb53:
  br label %bb55
bb54:
  %t195 = load i32, ptr %l62, !tbaa !23
  %t196 = lshr i32 %t195, 16
  %t197 = and i32 %t195, 65535
  %t198 = icmp eq i32 %t196, 1
  %t199 = select i1 %t198, i32 1, i32 0
  %t200 = icmp eq i32 %t195, 0
  %t201 = shl i32 %t199, 16
  %t202 = or i32 %t201, %t197
  %t203 = select i1 %t200, i32 0, i32 %t202
  call void @__olang_scope_close(ptr %s1)
  store i32 %t203, ptr %rv
  br label %ret
bb55:
  call void @__olang_scope_close(ptr %s1)
  br label %bb84
bb56:
  %t205 = load ptr, ptr %l64, !tbaa !29
  %t206 = load %"compiler/diagmsg:Msg", ptr %l67
  %t207 = call i32 @compiler_2fcond_2ebadDefine(ptr %v2, ptr %s2, ptr %t205, %"compiler/diagmsg:Msg" %t206)
  store i32 %t207, ptr %l68
  %t208 = icmp ne i32 %t207, 0
  br i1 %t208, label %bb58, label %ok.209, !prof !99
ok.209:
  br label %bb57
bb57:
  br label %bb59
bb58:
  %t210 = load i32, ptr %l68, !tbaa !23
  %t211 = lshr i32 %t210, 16
  %t212 = and i32 %t210, 65535
  %t213 = icmp eq i32 %t211, 1
  %t214 = select i1 %t213, i32 1, i32 0
  %t215 = icmp eq i32 %t210, 0
  %t216 = shl i32 %t214, 16
  %t217 = or i32 %t216, %t212
  %t218 = select i1 %t215, i32 0, i32 %t217
  call void @__olang_scope_close(ptr %s2)
  store i32 %t218, ptr %rv
  br label %ret
bb59:
  call void @__olang_scope_close(ptr %s2)
  br label %bb84
bb60:
  %t220 = load ptr, ptr %l70, !tbaa !29
  %t221 = load %"compiler/diagmsg:Msg", ptr %l73
  %t222 = call i32 @compiler_2fcond_2ebadDefine(ptr %v2, ptr %s3, ptr %t220, %"compiler/diagmsg:Msg" %t221)
  store i32 %t222, ptr %l74
  %t223 = icmp ne i32 %t222, 0
  br i1 %t223, label %bb62, label %ok.224, !prof !99
ok.224:
  br label %bb61
bb61:
  br label %bb63
bb62:
  %t225 = load i32, ptr %l74, !tbaa !23
  %t226 = lshr i32 %t225, 16
  %t227 = and i32 %t225, 65535
  %t228 = icmp eq i32 %t226, 1
  %t229 = select i1 %t228, i32 1, i32 0
  %t230 = icmp eq i32 %t225, 0
  %t231 = shl i32 %t229, 16
  %t232 = or i32 %t231, %t227
  %t233 = select i1 %t230, i32 0, i32 %t232
  call void @__olang_scope_close(ptr %s3)
  store i32 %t233, ptr %rv
  br label %ret
bb63:
  call void @__olang_scope_close(ptr %s3)
  br label %bb84
bb64:
  %t235 = load ptr, ptr %l76, !tbaa !29
  %t236 = load %"compiler/diagmsg:Msg", ptr %l78
  %t237 = call i32 @compiler_2fcond_2ebadDefine(ptr %v2, ptr %s4, ptr %t235, %"compiler/diagmsg:Msg" %t236)
  store i32 %t237, ptr %l79
  %t238 = icmp ne i32 %t237, 0
  br i1 %t238, label %bb66, label %ok.239, !prof !99
ok.239:
  br label %bb65
bb65:
  br label %bb67
bb66:
  %t240 = load i32, ptr %l79, !tbaa !23
  %t241 = lshr i32 %t240, 16
  %t242 = and i32 %t240, 65535
  %t243 = icmp eq i32 %t241, 1
  %t244 = select i1 %t243, i32 1, i32 0
  %t245 = icmp eq i32 %t240, 0
  %t246 = shl i32 %t244, 16
  %t247 = or i32 %t246, %t242
  %t248 = select i1 %t245, i32 0, i32 %t247
  call void @__olang_scope_close(ptr %s4)
  store i32 %t248, ptr %rv
  br label %ret
bb67:
  call void @__olang_scope_close(ptr %s4)
  br label %bb84
bb68:
  %t250 = load ptr, ptr %l81, !tbaa !29
  %t251 = load %"compiler/diagmsg:Msg", ptr %l84
  %t252 = call i32 @compiler_2fcond_2ebadDefine(ptr %v2, ptr %s5, ptr %t250, %"compiler/diagmsg:Msg" %t251)
  store i32 %t252, ptr %l85
  %t253 = icmp ne i32 %t252, 0
  br i1 %t253, label %bb70, label %ok.254, !prof !99
ok.254:
  br label %bb69
bb69:
  br label %bb71
bb70:
  %t255 = load i32, ptr %l85, !tbaa !23
  %t256 = lshr i32 %t255, 16
  %t257 = and i32 %t255, 65535
  %t258 = icmp eq i32 %t256, 1
  %t259 = select i1 %t258, i32 1, i32 0
  %t260 = icmp eq i32 %t255, 0
  %t261 = shl i32 %t259, 16
  %t262 = or i32 %t261, %t257
  %t263 = select i1 %t260, i32 0, i32 %t262
  call void @__olang_scope_close(ptr %s5)
  store i32 %t263, ptr %rv
  br label %ret
bb71:
  call void @__olang_scope_close(ptr %s5)
  br label %bb84
bb72:
  %t265 = load ptr, ptr %l87, !tbaa !29
  %t266 = load %"compiler/diagmsg:Msg", ptr %l90
  %t267 = call i32 @compiler_2fcond_2ebadDefine(ptr %v2, ptr %s6, ptr %t265, %"compiler/diagmsg:Msg" %t266)
  store i32 %t267, ptr %l91
  %t268 = icmp ne i32 %t267, 0
  br i1 %t268, label %bb74, label %ok.269, !prof !99
ok.269:
  br label %bb73
bb73:
  br label %bb75
bb74:
  %t270 = load i32, ptr %l91, !tbaa !23
  %t271 = lshr i32 %t270, 16
  %t272 = and i32 %t270, 65535
  %t273 = icmp eq i32 %t271, 1
  %t274 = select i1 %t273, i32 1, i32 0
  %t275 = icmp eq i32 %t270, 0
  %t276 = shl i32 %t274, 16
  %t277 = or i32 %t276, %t272
  %t278 = select i1 %t275, i32 0, i32 %t277
  call void @__olang_scope_close(ptr %s6)
  store i32 %t278, ptr %rv
  br label %ret
bb75:
  call void @__olang_scope_close(ptr %s6)
  br label %bb84
bb76:
  %t280 = load ptr, ptr %l93, !tbaa !29
  %t281 = load %"compiler/diagmsg:Msg", ptr %l96
  %t282 = call i32 @compiler_2fcond_2ebadDefine(ptr %v2, ptr %s7, ptr %t280, %"compiler/diagmsg:Msg" %t281)
  store i32 %t282, ptr %l97
  %t283 = icmp ne i32 %t282, 0
  br i1 %t283, label %bb78, label %ok.284, !prof !99
ok.284:
  br label %bb77
bb77:
  br label %bb79
bb78:
  %t285 = load i32, ptr %l97, !tbaa !23
  %t286 = lshr i32 %t285, 16
  %t287 = and i32 %t285, 65535
  %t288 = icmp eq i32 %t286, 1
  %t289 = select i1 %t288, i32 1, i32 0
  %t290 = icmp eq i32 %t285, 0
  %t291 = shl i32 %t289, 16
  %t292 = or i32 %t291, %t287
  %t293 = select i1 %t290, i32 0, i32 %t292
  call void @__olang_scope_close(ptr %s7)
  store i32 %t293, ptr %rv
  br label %ret
bb79:
  call void @__olang_scope_close(ptr %s7)
  br label %bb84
bb80:
  %t295 = load ptr, ptr %l99, !tbaa !29
  %t296 = load %"compiler/diagmsg:Msg", ptr %l102
  %t297 = call i32 @compiler_2fcond_2ebadDefine(ptr %v2, ptr %s8, ptr %t295, %"compiler/diagmsg:Msg" %t296)
  store i32 %t297, ptr %l103
  %t298 = icmp ne i32 %t297, 0
  br i1 %t298, label %bb82, label %ok.299, !prof !99
ok.299:
  br label %bb81
bb81:
  br label %bb83
bb82:
  %t300 = load i32, ptr %l103, !tbaa !23
  %t301 = lshr i32 %t300, 16
  %t302 = and i32 %t300, 65535
  %t303 = icmp eq i32 %t301, 1
  %t304 = select i1 %t303, i32 1, i32 0
  %t305 = icmp eq i32 %t300, 0
  %t306 = shl i32 %t304, 16
  %t307 = or i32 %t306, %t302
  %t308 = select i1 %t305, i32 0, i32 %t307
  call void @__olang_scope_close(ptr %s8)
  store i32 %t308, ptr %rv
  br label %ret
bb83:
  call void @__olang_scope_close(ptr %s8)
  br label %bb84
bb84:
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eDefined(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i32
  %l10 = alloca i1
  %l14 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call { i32, i64 } @compiler_2fcond_2ecompiler_2fcond_3aConsts_2efind(ptr %v0, ptr %v1, ptr %t1, { i64, ptr } %a1)
  %t6 = extractvalue { i32, i64 } %t5, 1
  %t7 = extractvalue { i32, i64 } %t5, 0
  store i32 %t7, ptr %l7
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb2, label %ok.9, !prof !99
ok.9:
  store i64 %t6, ptr %l6
  br label %bb1
bb1:
  %t10 = load i64, ptr %l6, !tbaa !24
  store i64 %t10, ptr %l3, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i64 -1, ptr %l3, !tbaa !24
  br label %bb4
bb4:
  %t11 = load i64, ptr %l3, !tbaa !24
  store i64 %t11, ptr %l2, !tbaa !24
  %t12 = load i64, ptr %l2, !tbaa !24
  %t14 = icmp sge i64 %t12, 0
  br i1 %t14, label %bb5, label %bb6
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/cond:Consts", ptr %t16, i32 0, i32 2
  %t19 = load i64, ptr %l2, !tbaa !24
  %t22 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t18, i64 %t19)
  store i1 %t22, ptr %l14
  br label %bb7
bb6:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb8
bb7:
  %t23 = load i1, ptr %l14, !tbaa !21
  %t24 = xor i1 %t23, true
  store i1 %t24, ptr %l10, !tbaa !21
  br label %bb8
bb8:
  %t26 = load i1, ptr %l10, !tbaa !21
  store i1 %t26, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eFingerprint(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/prelude/text:StringBuilder"
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca %"compiler/cond:Value"
  %l9 = alloca { i64, ptr }
  %l10 = alloca %"std/prelude/text:StringBuilder"
  %l13 = alloca i64
  %l17 = alloca i64
  %l20 = alloca i64
  %l41 = alloca %"compiler/cond:Value"
  %l44 = alloca i1
  %l45 = alloca i64
  %l48 = alloca i64
  %l50 = alloca { i64, ptr }
  %l54 = alloca { i64, ptr }
  %l55 = alloca ptr
  %l59 = alloca { i64, ptr }
  %l60 = alloca %"compiler/cond:Value"
  %l61 = alloca { i64, ptr }
  %l65 = alloca { i64, ptr }
  %l69 = alloca i1
  %l73 = alloca i1
  %l75 = alloca { i64, ptr }
  %l80 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.builder
  %s3room = alloca [64 x i8], align 8
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
  store %"std/prelude/text:StringBuilder" %t2, ptr %l1
  store i64 0, ptr %l2, !tbaa !24
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/cond:Consts", ptr %t3, i32 0, i32 0
  %t7 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t5)
  store i64 %t7, ptr %l13
  br label %bb2
bb2:
  %t8 = load i64, ptr %l13, !tbaa !24
  store i64 %t8, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t9 = load i64, ptr %l3, !tbaa !24
  %t10 = load i64, ptr %l2, !tbaa !24
  %t13 = icmp sgt i64 %t9, %t10
  br i1 %t13, label %bb3, label %bb4
bb3:
  %t15 = load i64, ptr %l4, !tbaa !24
  %t17 = icmp sgt i64 %t15, 0
  br i1 %t17, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb8
bb5:
  %t19 = load i64, ptr %l3, !tbaa !24
  %t20 = load i64, ptr %l2, !tbaa !24
  %t23 = sub i64 %t19, %t20
  %t24 = load i64, ptr %l4, !tbaa !24
  %t27 = add i64 %t23, %t24
  %t29 = sub i64 %t27, 1
  %t30 = load i64, ptr %l4, !tbaa !24
  %t33 = sdiv i64 %t29, %t30
  store i64 %t33, ptr %l20, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb7
bb7:
  %t35 = load i64, ptr %l20, !tbaa !24
  store i64 %t35, ptr %l17, !tbaa !24
  br label %bb8
bb8:
  %t36 = load i64, ptr %l17, !tbaa !24
  store i64 %t36, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb9
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t37 = load i64, ptr %l6, !tbaa !24
  %t38 = load i64, ptr %l5, !tbaa !24
  %t41 = icmp slt i64 %t37, %t38
  %t43 = xor i1 %t41, true
  br i1 %t43, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb29
bb11:
  br label %bb12
bb12:
  %t45 = load i64, ptr %l2, !tbaa !24
  %t46 = load i64, ptr %l6, !tbaa !24
  %t47 = load i64, ptr %l4, !tbaa !24
  %t50 = mul i64 %t46, %t47
  %t53 = add i64 %t45, %t50
  store i64 %t53, ptr %l7, !tbaa !24
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/cond:Consts", ptr %t55, i32 0, i32 1
  %t58 = load i64, ptr %l7, !tbaa !24
  %t61 = call %"compiler/cond:Value" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcond_3aValue_3e_2eAt_3ccompiler_2fcond_3aValue_3e(ptr %v0, ptr %t57, i64 %t58)
  store %"compiler/cond:Value" %t61, ptr %l41
  br label %bb13
bb13:
  %t62 = load %"compiler/cond:Value", ptr %l41
  store %"compiler/cond:Value" %t62, ptr %l8
  %t63 = getelementptr %"compiler/cond:Value", ptr %l8, i32 0, i32 0
  %t64 = load i32, ptr %t63, !range !{i32 0, i32 5}
  %t66 = trunc i64 4 to i32
  %t67 = icmp eq i32 %t64, %t66
  br i1 %t67, label %bb14, label %bb15
bb14:
  %t69 = getelementptr %"compiler/cond:Value", ptr %l8, i32 0, i32 3
  %t70 = load i64, ptr %t69, !tbaa !24
  store i64 %t70, ptr %l45, !tbaa !24
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/cond:Consts", ptr %t71, i32 0, i32 6
  %t75 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t73)
  store i64 %t75, ptr %l48
  br label %bb16
bb15:
  store i1 false, ptr %l44, !tbaa !21
  br label %bb17
bb16:
  %t76 = load i64, ptr %l45, !tbaa !24
  %t77 = load i64, ptr %l48, !tbaa !24
  %t78 = icmp slt i64 %t76, %t77
  store i1 %t78, ptr %l44, !tbaa !21
  br label %bb17
bb17:
  %t80 = load i1, ptr %l44, !tbaa !21
  br i1 %t80, label %bb18, label %bb19
bb18:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/cond:Consts", ptr %t81, i32 0, i32 6
  %t84 = getelementptr %"compiler/cond:Value", ptr %l8, i32 0, i32 3
  %t85 = load i64, ptr %t84, !tbaa !24
  %t88 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %s2, ptr %t83, i64 %t85)
  store { i64, ptr } %t88, ptr %l54
  br label %bb20
bb19:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d25, i32 0, i32 1) }, ptr %l50, !tbaa !27
  br label %bb21
bb20:
  %t89 = load { i64, ptr }, ptr %l54, !tbaa !27
  store { i64, ptr } %t89, ptr %l50, !tbaa !27
  br label %bb21
bb21:
  %t90 = load { i64, ptr }, ptr %l50, !tbaa !27
  store { i64, ptr } %t90, ptr %l9, !tbaa !27
  store ptr %l1, ptr %l55, !tbaa !29
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/cond:Consts", ptr %t91, i32 0, i32 0
  %t94 = load i64, ptr %l7, !tbaa !24
  %t97 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %s2, ptr %t93, i64 %t94)
  store { i64, ptr } %t97, ptr %l59
  br label %bb22
bb22:
  %t98 = load %"compiler/cond:Value", ptr %l8
  store %"compiler/cond:Value" %t98, ptr %l60
  %t99 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t99, ptr %l61, !tbaa !27
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/cond:Consts", ptr %t100, i32 0, i32 5
  %t103 = load i64, ptr %l7, !tbaa !24
  %t106 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %s2, ptr %t102, i64 %t103)
  store { i64, ptr } %t106, ptr %l65
  br label %bb23
bb23:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"compiler/cond:Consts", ptr %t107, i32 0, i32 4
  %t110 = load i64, ptr %l7, !tbaa !24
  %t113 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t109, i64 %t110)
  store i1 %t113, ptr %l69
  br label %bb24
bb24:
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t116 = getelementptr %"compiler/cond:Consts", ptr %t114, i32 0, i32 3
  %t117 = load i64, ptr %l7, !tbaa !24
  %t120 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t116, i64 %t117)
  store i1 %t120, ptr %l73
  br label %bb25
bb25:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s3
  store ptr %s3room, ptr %s3
  %t121 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t122 = extractvalue { i64, ptr } %t121, 1
  %t123 = extractvalue { i64, ptr } %t121, 0
  call void @__olang_sb_put(ptr %s3, ptr %t122, i64 %t123)
  %t124 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t125 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s3, ptr %t124, i64 %t125)
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2fcond_3aValue(ptr %s3, ptr %l60, i64 0)
  br label %bb26
bb26:
  %t127 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t128 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s3, ptr %t127, i64 %t128)
  %t129 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t130 = extractvalue { i64, ptr } %t129, 1
  %t131 = extractvalue { i64, ptr } %t129, 0
  call void @__olang_sb_put(ptr %s3, ptr %t130, i64 %t131)
  %t132 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t133 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s3, ptr %t132, i64 %t133)
  %t134 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t135 = extractvalue { i64, ptr } %t134, 1
  %t136 = extractvalue { i64, ptr } %t134, 0
  call void @__olang_sb_put(ptr %s3, ptr %t135, i64 %t136)
  %t137 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t138 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s3, ptr %t137, i64 %t138)
  %t139 = load i1, ptr %l69, !tbaa !21
  %t140 = select i1 %t139, ptr @.c28, ptr @.c29
  %t141 = select i1 %t139, i64 4, i64 5
  call void @__olang_sb_put(ptr %s3, ptr %t140, i64 %t141)
  %t142 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t143 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s3, ptr %t142, i64 %t143)
  %t144 = load i1, ptr %l73, !tbaa !21
  %t145 = select i1 %t144, ptr @.c28, ptr @.c29
  %t146 = select i1 %t144, i64 4, i64 5
  call void @__olang_sb_put(ptr %s3, ptr %t145, i64 %t146)
  %t147 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 1
  %t148 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s3, ptr %t147, i64 %t148)
  %t149 = load ptr, ptr %s3
  %t150 = getelementptr %olang.builder, ptr %s3, i32 0, i32 1
  %t151 = load i64, ptr %t150
  %t152 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t151)
  call void @olang_textcopy(ptr %t152, ptr %t149, i64 %t151)
  %t153 = insertvalue { i64, ptr } undef, i64 %t151, 0
  %t154 = insertvalue { i64, ptr } %t153, ptr %t152, 1
  store { i64, ptr } %t154, ptr %l75, !tbaa !27
  %t155 = getelementptr %olang.builder, ptr %s3, i32 0, i32 3
  %t156 = load ptr, ptr %t155
  %t157 = icmp ne ptr %t156, null
  br i1 %t157, label %sbgrew.158, label %sbdone.159
sbgrew.158:
  call void @__olang_sb_done(ptr %s3)
  br label %sbdone.159
sbdone.159:
  %t160 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t161 = extractvalue { i64, ptr } %t160, 0
  %t162 = extractvalue { i64, ptr } %t160, 1
  %t163 = mul i64 %t161, 1
  %t164 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t163)
  call void @llvm.memcpy.p0.p0.i64(ptr %t164, ptr %t162, i64 %t163, i1 false)
  %t165 = insertvalue { i64, ptr } undef, i64 %t161, 0
  %t166 = insertvalue { i64, ptr } %t165, ptr %t164, 1
  %t167 = load ptr, ptr %l55, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %t167, { i64, ptr } %t166)
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s2)
  br label %bb28
bb28:
  %t169 = load i64, ptr %l6, !tbaa !24
  %t171 = add i64 %t169, 1
  store i64 %t171, ptr %l6, !tbaa !24
  br label %bb9
bb29:
  %t174 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l1)
  store { i64, ptr } %t174, ptr %l80
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s0)
  %t175 = load { i64, ptr }, ptr %l80, !tbaa !27
  store { i64, ptr } %t175, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eFits(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca %"compiler/cond:Value"
  %l5 = alloca i1
  %l6 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i32
  %l15 = alloca %"compiler/cond:Value"
  %l19 = alloca i1
  %l20 = alloca i1
  %l22 = alloca i1
  %l26 = alloca i1
  %l30 = alloca i1
  %l33 = alloca i1
  %l36 = alloca i1
  %l38 = alloca i1
  %l40 = alloca i1
  %l43 = alloca i1
  %l47 = alloca i1
  %l50 = alloca i1
  %l52 = alloca i1
  %l56 = alloca i1
  %l59 = alloca i1
  %l62 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call { i32, i64 } @compiler_2fcond_2ecompiler_2fcond_3aConsts_2efind(ptr %v0, ptr %v1, ptr %t1, { i64, ptr } %a1)
  %t6 = extractvalue { i32, i64 } %t5, 1
  %t7 = extractvalue { i32, i64 } %t5, 0
  store i32 %t7, ptr %l10
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb2, label %ok.9, !prof !99
ok.9:
  store i64 %t6, ptr %l9
  br label %bb1
bb1:
  %t10 = load i64, ptr %l9, !tbaa !24
  store i64 %t10, ptr %l6, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb4:
  %t12 = load i64, ptr %l6, !tbaa !24
  store i64 %t12, ptr %l3, !tbaa !24
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/cond:Consts", ptr %t13, i32 0, i32 1
  %t16 = load i64, ptr %l3, !tbaa !24
  %t19 = call %"compiler/cond:Value" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcond_3aValue_3e_2eAt_3ccompiler_2fcond_3aValue_3e(ptr %v0, ptr %t15, i64 %t16)
  store %"compiler/cond:Value" %t19, ptr %l15
  br label %bb5
bb5:
  %t20 = load %"compiler/cond:Value", ptr %l15
  store %"compiler/cond:Value" %t20, ptr %l4
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/cond:Consts", ptr %t21, i32 0, i32 3
  %t24 = load i64, ptr %l3, !tbaa !24
  %t27 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t23, i64 %t24)
  store i1 %t27, ptr %l19
  br label %bb6
bb6:
  %t28 = load i1, ptr %l19, !tbaa !21
  store i1 %t28, ptr %l5, !tbaa !21
  %t29 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t31 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t29, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d31, i32 0, i32 1) })
  store i1 %t31, ptr %l22
  br label %bb7
bb7:
  %t32 = load i1, ptr %l22, !tbaa !21
  br i1 %t32, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  %t33 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 0
  %t34 = load i32, ptr %t33, !range !{i32 0, i32 5}
  %t36 = trunc i64 1 to i32
  %t37 = icmp eq i32 %t34, %t36
  store i1 %t37, ptr %l20, !tbaa !21
  br label %bb63
bb11:
  %t39 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t41 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t39, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d32, i32 0, i32 1) })
  store i1 %t41, ptr %l26
  br label %bb12
bb12:
  %t42 = load i1, ptr %l26, !tbaa !21
  br i1 %t42, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  %t43 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 0
  %t44 = load i32, ptr %t43, !range !{i32 0, i32 5}
  %t46 = trunc i64 4 to i32
  %t47 = icmp eq i32 %t44, %t46
  store i1 %t47, ptr %l20, !tbaa !21
  br label %bb63
bb16:
  %t49 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t51 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t49, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d33, i32 0, i32 1) })
  store i1 %t51, ptr %l30
  br label %bb17
bb17:
  %t52 = load i1, ptr %l30, !tbaa !21
  br i1 %t52, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb28
bb20:
  %t53 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 0
  %t54 = load i32, ptr %t53, !range !{i32 0, i32 5}
  %t56 = trunc i64 2 to i32
  %t57 = icmp eq i32 %t54, %t56
  br i1 %t57, label %bb21, label %bb22
bb21:
  %t59 = load i1, ptr %l5, !tbaa !21
  %t61 = xor i1 %t59, true
  store i1 %t61, ptr %l33, !tbaa !21
  br label %bb23
bb22:
  store i1 false, ptr %l33, !tbaa !21
  br label %bb23
bb23:
  %t63 = load i1, ptr %l33, !tbaa !21
  br i1 %t63, label %bb24, label %bb25
bb24:
  %t64 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 1
  %t65 = load i64, ptr %t64, !tbaa !24
  %t67 = call i1 @compiler_2fcond_2efits(i64 %t65, i64 32, i1 false)
  store i1 %t67, ptr %l38
  br label %bb26
bb25:
  store i1 false, ptr %l36, !tbaa !21
  br label %bb27
bb26:
  %t68 = load i1, ptr %l38, !tbaa !21
  store i1 %t68, ptr %l36, !tbaa !21
  br label %bb27
bb27:
  %t69 = load i1, ptr %l36, !tbaa !21
  store i1 %t69, ptr %l20, !tbaa !21
  br label %bb63
bb28:
  %t70 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t72 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t70, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d34, i32 0, i32 1) })
  store i1 %t72, ptr %l40
  br label %bb29
bb29:
  %t73 = load i1, ptr %l40, !tbaa !21
  br i1 %t73, label %bb30, label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb36
bb32:
  %t74 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 0
  %t75 = load i32, ptr %t74, !range !{i32 0, i32 5}
  %t77 = trunc i64 2 to i32
  %t78 = icmp eq i32 %t75, %t77
  br i1 %t78, label %bb33, label %bb34
bb33:
  %t80 = load i1, ptr %l5, !tbaa !21
  %t82 = xor i1 %t80, true
  store i1 %t82, ptr %l43, !tbaa !21
  br label %bb35
bb34:
  store i1 false, ptr %l43, !tbaa !21
  br label %bb35
bb35:
  %t84 = load i1, ptr %l43, !tbaa !21
  store i1 %t84, ptr %l20, !tbaa !21
  br label %bb63
bb36:
  %t85 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t87 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t85, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d35, i32 0, i32 1) })
  store i1 %t87, ptr %l47
  br label %bb37
bb37:
  %t88 = load i1, ptr %l47, !tbaa !21
  br i1 %t88, label %bb38, label %bb39
bb38:
  br label %bb40
bb39:
  br label %bb47
bb40:
  %t89 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 0
  %t90 = load i32, ptr %t89, !range !{i32 0, i32 5}
  %t92 = trunc i64 2 to i32
  %t93 = icmp eq i32 %t90, %t92
  br i1 %t93, label %bb41, label %bb42
bb41:
  %t95 = load i1, ptr %l5, !tbaa !21
  br i1 %t95, label %bb43, label %bb44
bb42:
  store i1 false, ptr %l50, !tbaa !21
  br label %bb46
bb43:
  store i1 true, ptr %l52, !tbaa !21
  br label %bb45
bb44:
  %t97 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 1
  %t98 = load i64, ptr %t97, !tbaa !24
  %t100 = icmp sge i64 %t98, 0
  store i1 %t100, ptr %l52, !tbaa !21
  br label %bb45
bb45:
  %t102 = load i1, ptr %l52, !tbaa !21
  store i1 %t102, ptr %l50, !tbaa !21
  br label %bb46
bb46:
  %t103 = load i1, ptr %l50, !tbaa !21
  store i1 %t103, ptr %l20, !tbaa !21
  br label %bb63
bb47:
  %t104 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t106 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t104, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d36, i32 0, i32 1) })
  store i1 %t106, ptr %l56
  br label %bb48
bb48:
  %t107 = load i1, ptr %l56, !tbaa !21
  br i1 %t107, label %bb49, label %bb50
bb49:
  br label %bb51
bb50:
  br label %bb58
bb51:
  %t108 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 0
  %t109 = load i32, ptr %t108, !range !{i32 0, i32 5}
  %t111 = trunc i64 3 to i32
  %t112 = icmp eq i32 %t109, %t111
  br i1 %t112, label %bb52, label %bb53
bb52:
  store i1 true, ptr %l59, !tbaa !21
  br label %bb57
bb53:
  %t114 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 0
  %t115 = load i32, ptr %t114, !range !{i32 0, i32 5}
  %t117 = trunc i64 2 to i32
  %t118 = icmp eq i32 %t115, %t117
  br i1 %t118, label %bb54, label %bb55
bb54:
  %t120 = load i1, ptr %l5, !tbaa !21
  %t122 = xor i1 %t120, true
  store i1 %t122, ptr %l62, !tbaa !21
  br label %bb56
bb55:
  store i1 false, ptr %l62, !tbaa !21
  br label %bb56
bb56:
  %t124 = load i1, ptr %l62, !tbaa !21
  store i1 %t124, ptr %l59, !tbaa !21
  br label %bb57
bb57:
  %t125 = load i1, ptr %l59, !tbaa !21
  store i1 %t125, ptr %l20, !tbaa !21
  br label %bb63
bb58:
  br i1 true, label %bb59, label %bb60
bb59:
  br label %bb61
bb60:
  br label %bb62
bb61:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb63
bb62:
  call void @__olang_check_failed(ptr @olang_loc_1b6b73656135f28c_5e0b436694761b68)
  unreachable
bb63:
  call void @__olang_scope_close(ptr %s0)
  %t126 = load i1, ptr %l20, !tbaa !21
  store i1 %t126, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eHas(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i32
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call { i32, i64 } @compiler_2fcond_2ecompiler_2fcond_3aConsts_2efind(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
  %t6 = extractvalue { i32, i64 } %t5, 1
  %t7 = extractvalue { i32, i64 } %t5, 0
  store i32 %t7, ptr %l6
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb2, label %ok.9, !prof !99
ok.9:
  store i64 %t6, ptr %l5
  br label %bb1
bb1:
  %t10 = load i64, ptr %l5, !tbaa !24
  store i64 %t10, ptr %l2, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i64 -1, ptr %l2, !tbaa !24
  br label %bb4
bb4:
  %t11 = load i64, ptr %l2, !tbaa !24
  %t12 = icmp sge i64 %t11, 0
  store i1 %t12, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eIsBuiltin(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i32
  %l10 = alloca i1
  %l14 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call { i32, i64 } @compiler_2fcond_2ecompiler_2fcond_3aConsts_2efind(ptr %v0, ptr %v1, ptr %t1, { i64, ptr } %a1)
  %t6 = extractvalue { i32, i64 } %t5, 1
  %t7 = extractvalue { i32, i64 } %t5, 0
  store i32 %t7, ptr %l7
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb2, label %ok.9, !prof !99
ok.9:
  store i64 %t6, ptr %l6
  br label %bb1
bb1:
  %t10 = load i64, ptr %l6, !tbaa !24
  store i64 %t10, ptr %l3, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i64 -1, ptr %l3, !tbaa !24
  br label %bb4
bb4:
  %t11 = load i64, ptr %l3, !tbaa !24
  store i64 %t11, ptr %l2, !tbaa !24
  %t12 = load i64, ptr %l2, !tbaa !24
  %t14 = icmp sge i64 %t12, 0
  br i1 %t14, label %bb5, label %bb6
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/cond:Consts", ptr %t16, i32 0, i32 2
  %t19 = load i64, ptr %l2, !tbaa !24
  %t22 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t18, i64 %t19)
  store i1 %t22, ptr %l14
  br label %bb7
bb6:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb8
bb7:
  %t23 = load i1, ptr %l14, !tbaa !21
  store i1 %t23, ptr %l10, !tbaa !21
  br label %bb8
bb8:
  %t24 = load i1, ptr %l10, !tbaa !21
  store i1 %t24, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eRaw(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i32
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca { i64, ptr }
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
  %t5 = call { i32, i64 } @compiler_2fcond_2ecompiler_2fcond_3aConsts_2efind(ptr %v0, ptr %v1, ptr %t1, { i64, ptr } %a1)
  %t6 = extractvalue { i32, i64 } %t5, 1
  %t7 = extractvalue { i32, i64 } %t5, 0
  store i32 %t7, ptr %l7
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb2, label %ok.9, !prof !99
ok.9:
  store i64 %t6, ptr %l6
  br label %bb1
bb1:
  %t10 = load i64, ptr %l6, !tbaa !24
  store i64 %t10, ptr %l3, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d37, i32 0, i32 1) }, ptr %l8, !tbaa !27
  %t11 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t11, ptr %l9, !tbaa !27
  %t12 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t12, 0
  store i64 %t13, ptr %l10, !tbaa !24
  %t14 = load i64, ptr %l10, !tbaa !24
  %t15 = mul i64 %t14, 1
  %t16 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t15)
  %t17 = insertvalue { i64, ptr } undef, i64 %t14, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t16, 1
  store { i64, ptr } %t18, ptr %l11, !tbaa !27
  %t19 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !27
  %t21 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = load i64, ptr %l10, !tbaa !24
  %t24 = mul i64 %t23, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t20, ptr %t22, i64 %t24, i1 false)
  %t25 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t25, ptr %l9, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t26 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t26, ptr %rv
  br label %ret
bb4:
  %t27 = load i64, ptr %l3, !tbaa !24
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/cond:Consts", ptr %t28, i32 0, i32 5
  %t34 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %s0, ptr %t30, i64 %t27)
  store { i64, ptr } %t34, ptr %l15
  br label %bb5
bb5:
  %t35 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t36 = extractvalue { i64, ptr } %t35, 1
  %t37 = extractvalue { i64, ptr } %t35, 0
  %t38 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t37)
  call void @olang_textcopy(ptr %t38, ptr %t36, i64 %t37)
  %t39 = insertvalue { i64, ptr } undef, i64 %t37, 0
  %t40 = insertvalue { i64, ptr } %t39, ptr %t38, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t40, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i32, %"compiler/cond:Value" } @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eValueOf(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca %"compiler/cond:Value"
  %l4 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i32
  %l13 = alloca %"compiler/cond:Value"
  %l14 = alloca i32
  %l15 = alloca i64
  %l16 = alloca double
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i1
  %l23 = alloca i1
  %l24 = alloca %"compiler/cond:Value"
  %s0 = alloca %olang.scope
  %rv = alloca { i32, %"compiler/cond:Value" }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call { i32, i64 } @compiler_2fcond_2ecompiler_2fcond_3aConsts_2efind(ptr %v0, ptr %v1, ptr %t1, { i64, ptr } %a1)
  %t6 = extractvalue { i32, i64 } %t5, 1
  %t7 = extractvalue { i32, i64 } %t5, 0
  store i32 %t7, ptr %l8
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb2, label %ok.9, !prof !99
ok.9:
  store i64 %t6, ptr %l7
  br label %bb1
bb1:
  %t10 = load i64, ptr %l7, !tbaa !24
  store i64 %t10, ptr %l4, !tbaa !24
  br label %bb3
bb2:
  %t11 = load i32, ptr %l8, !tbaa !23
  %t12 = lshr i32 %t11, 16
  %t13 = and i32 %t11, 65535
  %t14 = icmp eq i32 %t12, 1
  %t15 = select i1 %t14, i32 1, i32 0
  %t16 = icmp eq i32 %t11, 0
  %t17 = shl i32 %t15, 16
  %t18 = or i32 %t17, %t13
  %t19 = select i1 %t16, i32 0, i32 %t18
  call void @__olang_scope_close(ptr %s0)
  %t21 = insertvalue { i32, %"compiler/cond:Value" } zeroinitializer, i32 %t19, 0
  store { i32, %"compiler/cond:Value" } %t21, ptr %rv
  br label %ret
bb3:
  %t22 = load i64, ptr %l4, !tbaa !24
  store i64 %t22, ptr %l2, !tbaa !24
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/cond:Consts", ptr %t23, i32 0, i32 1
  %t26 = load i64, ptr %l2, !tbaa !24
  %t29 = call %"compiler/cond:Value" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcond_3aValue_3e_2eAt_3ccompiler_2fcond_3aValue_3e(ptr %v0, ptr %t25, i64 %t26)
  store %"compiler/cond:Value" %t29, ptr %l13
  br label %bb4
bb4:
  %t30 = load %"compiler/cond:Value", ptr %l13
  store %"compiler/cond:Value" %t30, ptr %l3
  %t31 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 0
  %t32 = load i32, ptr %t31, !range !{i32 0, i32 5}
  store i32 %t32, ptr %l14
  %t33 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 1
  %t34 = load i64, ptr %t33, !tbaa !24
  store i64 %t34, ptr %l15, !tbaa !24
  %t35 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 2
  %t36 = load double, ptr %t35, !tbaa !26
  store double %t36, ptr %l16, !tbaa !26
  %t37 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 3
  %t38 = load i64, ptr %t37, !tbaa !24
  store i64 %t38, ptr %l17, !tbaa !24
  %t39 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 4
  %t40 = load i64, ptr %t39, !tbaa !24
  store i64 %t40, ptr %l18, !tbaa !24
  %t41 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 5
  %t42 = load i1, ptr %t41, !tbaa !21
  store i1 %t42, ptr %l19, !tbaa !21
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/cond:Consts", ptr %t43, i32 0, i32 3
  %t46 = load i64, ptr %l2, !tbaa !24
  %t49 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t45, i64 %t46)
  store i1 %t49, ptr %l23
  br label %bb5
bb5:
  %t50 = load i32, ptr %l14, !range !{i32 0, i32 5}
  %t51 = load i64, ptr %l15, !tbaa !24
  %t52 = load double, ptr %l16, !tbaa !26
  %t53 = load i64, ptr %l17, !tbaa !24
  %t54 = load i64, ptr %l18, !tbaa !24
  %t55 = load i1, ptr %l19, !tbaa !21
  %t56 = load i1, ptr %l23, !tbaa !21
  %t57 = call %"compiler/cond:Value" @compiler_2fcond_3aValue_2ector(ptr %s0, i32 %t50, i64 %t51, double %t52, i64 %t53, i64 %t54, i1 %t55, i1 %t56)
  store %"compiler/cond:Value" %t57, ptr %l24
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s0)
  %t58 = load %"compiler/cond:Value", ptr %l24
  %t59 = insertvalue { i32, %"compiler/cond:Value" } zeroinitializer, %"compiler/cond:Value" %t58, 1
  store { i32, %"compiler/cond:Value" } %t59, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"compiler/cond:Value" }, ptr %rv
  ret { i32, %"compiler/cond:Value" } %rr
}

define dso_local void @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eadd(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, %"compiler/cond:Value" %a2, i1 %a3, i1 %a4, i1 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/cond:Consts", ptr %t1, i32 0, i32 0
  store ptr %t3, ptr %l7, !tbaa !29
  %t4 = ptrtoint ptr %v0 to i64
  store i64 %t4, ptr %l8, !tbaa !24
  %t5 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = call ptr @__olang_region_make(ptr %v0)
  %t8 = ptrtoint ptr %t7 to i64
  store i64 %t8, ptr %l8, !tbaa !24
  br label %bb2
bb2:
  %t11 = extractvalue { i64, ptr } %a1, 1
  %t12 = extractvalue { i64, ptr } %a1, 0
  %t13 = load i64, ptr %l8
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t11, i64 %t12)
  %t16 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t17 = insertvalue { i64, ptr } %t16, ptr %t15, 1
  %t19 = load i64, ptr %l8
  %t20 = inttoptr i64 %t19 to ptr
  %t21 = extractvalue { i64, ptr } %t17, 0
  %t22 = extractvalue { i64, ptr } %t17, 1
  %t23 = mul i64 %t21, 1
  %t24 = call ptr @__olang_scope_alloc(ptr %t20, i64 %t23)
  call void @llvm.memcpy.p0.p0.i64(ptr %t24, ptr %t22, i64 %t23, i1 false)
  %t25 = insertvalue { i64, ptr } undef, i64 %t21, 0
  %t26 = insertvalue { i64, ptr } %t25, ptr %t24, 1
  %t27 = load ptr, ptr %l7, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t27, { i64, ptr } %t26)
  br label %bb3
bb3:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/cond:Consts", ptr %t29, i32 0, i32 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcond_3aValue_3e_2ePush_3ccompiler_2fcond_3aValue_3e(ptr %v0, ptr %t31, %"compiler/cond:Value" %a2)
  br label %bb4
bb4:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/cond:Consts", ptr %t35, i32 0, i32 2
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t37, i1 %a3)
  br label %bb5
bb5:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/cond:Consts", ptr %t41, i32 0, i32 3
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t43, i1 %a4)
  br label %bb6
bb6:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/cond:Consts", ptr %t47, i32 0, i32 4
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t49, i1 %a5)
  br label %bb7
bb7:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/cond:Consts", ptr %t53, i32 0, i32 5
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t55, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d38, i32 0, i32 1) })
  br label %bb8
bb8:
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fcond_2ecompiler_2fcond_3aConsts_2edefine(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca %"compiler/cond:Value"
  %l7 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i32
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca i64
  %l20 = alloca { i64, ptr }
  %l22 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l32 = alloca i1
  %l35 = alloca i64
  %l38 = alloca i64
  %l39 = alloca i32
  %l45 = alloca i1
  %l48 = alloca %"compiler/cond:Value"
  %l51 = alloca %"compiler/cond:Value"
  %l52 = alloca i32
  %l59 = alloca ptr
  %l62 = alloca i64
  %l63 = alloca i64
  %l64 = alloca i64
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t4 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v1, { i64, ptr } %t1, i8 61)
  %t5 = extractvalue { i32, i64 } %t4, 1
  %t6 = extractvalue { i32, i64 } %t4, 0
  store i32 %t6, ptr %l11
  %t7 = icmp ne i32 %t6, 0
  br i1 %t7, label %bb2, label %ok.8, !prof !99
ok.8:
  store i64 %t5, ptr %l10
  br label %bb1
bb1:
  %t9 = load i64, ptr %l10, !tbaa !24
  store i64 %t9, ptr %l7, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i32 65536, ptr %rv
  br label %ret
bb4:
  %t11 = load i64, ptr %l7, !tbaa !24
  store i64 %t11, ptr %l2, !tbaa !24
  %t12 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t12, ptr %l13, !tbaa !27
  %t13 = load i64, ptr %l2, !tbaa !24
  store i64 %t13, ptr %l14, !tbaa !24
  %t14 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t15 = extractvalue { i64, ptr } %t14, 0
  store i64 %t15, ptr %l15, !tbaa !24
  %t16 = icmp sge i64 0, 0
  br i1 %t16, label %bb5, label %bb6
bb5:
  %t18 = load i64, ptr %l14, !tbaa !24
  %t19 = icmp sle i64 0, %t18
  br i1 %t19, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_4ddddffe7822a0c2_24314aefc1643326)
  unreachable
bb7:
  %t21 = load i64, ptr %l14, !tbaa !24
  %t22 = load i64, ptr %l15, !tbaa !24
  %t23 = icmp sle i64 %t21, %t22
  br i1 %t23, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_4ddddffe7822a0c2_24314aefc1643326)
  unreachable
bb9:
  %t25 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = load i64, ptr %l14, !tbaa !24
  %t28 = getelementptr i8, ptr %t26, i64 0
  %t29 = sub i64 %t27, 0
  %t30 = insertvalue { i64, ptr } undef, i64 %t29, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t28, 1
  store { i64, ptr } %t31, ptr %l3, !tbaa !27
  %t33 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t33, ptr %l20, !tbaa !27
  %t34 = load i64, ptr %l2, !tbaa !24
  %t36 = add i64 %t34, 1
  store i64 %t36, ptr %l22, !tbaa !24
  %t37 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t37, 0
  store i64 %t40, ptr %l25, !tbaa !24
  %t41 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t42 = extractvalue { i64, ptr } %t41, 0
  store i64 %t42, ptr %l26, !tbaa !24
  %t43 = load i64, ptr %l22, !tbaa !24
  %t44 = icmp sge i64 %t43, 0
  br i1 %t44, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_4ddddffe7822a0c2_24314aefc1643326)
  unreachable
bb11:
  %t46 = load i64, ptr %l22, !tbaa !24
  %t47 = load i64, ptr %l25, !tbaa !24
  %t48 = icmp sle i64 %t46, %t47
  br i1 %t48, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_e3c5df648a43e2bf_f2e642f3433cb83)
  unreachable
bb13:
  %t50 = load i64, ptr %l25, !tbaa !24
  %t51 = load i64, ptr %l26, !tbaa !24
  %t52 = icmp sle i64 %t50, %t51
  br i1 %t52, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_e3c5df648a43e2bf_f2e642f3433cb83)
  unreachable
bb15:
  %t54 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = load i64, ptr %l22, !tbaa !24
  %t57 = load i64, ptr %l25, !tbaa !24
  %t58 = getelementptr i8, ptr %t55, i64 %t56
  %t59 = sub i64 %t57, %t56
  %t60 = insertvalue { i64, ptr } undef, i64 %t59, 0
  %t61 = insertvalue { i64, ptr } %t60, ptr %t58, 1
  store { i64, ptr } %t61, ptr %l4, !tbaa !27
  %t63 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t65 = call i1 @compiler_2fcond_2eisName(ptr %v1, { i64, ptr } %t63)
  store i1 %t65, ptr %l32
  br label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_e3c5df648a43e2bf_f2e642f3433cb83)
  unreachable
bb17:
  %t66 = load i1, ptr %l32, !tbaa !21
  %t67 = xor i1 %t66, true
  br i1 %t67, label %bb18, label %bb19
bb18:
  store i32 65537, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t74 = call { i32, i64 } @compiler_2fcond_2ecompiler_2fcond_3aConsts_2efind(ptr %v0, ptr %v1, ptr %t70, { i64, ptr } %t71)
  %t75 = extractvalue { i32, i64 } %t74, 1
  %t76 = extractvalue { i32, i64 } %t74, 0
  store i32 %t76, ptr %l39
  %t77 = icmp ne i32 %t76, 0
  br i1 %t77, label %bb22, label %ok.78, !prof !99
ok.78:
  store i64 %t75, ptr %l38
  br label %bb21
bb21:
  %t79 = load i64, ptr %l38, !tbaa !24
  store i64 %t79, ptr %l35, !tbaa !24
  br label %bb24
bb22:
  br label %bb23
bb23:
  store i64 -1, ptr %l35, !tbaa !24
  br label %bb24
bb24:
  %t80 = load i64, ptr %l35, !tbaa !24
  store i64 %t80, ptr %l5, !tbaa !24
  %t81 = load i64, ptr %l5, !tbaa !24
  %t83 = icmp sge i64 %t81, 0
  br i1 %t83, label %bb25, label %bb26
bb25:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/cond:Consts", ptr %t85, i32 0, i32 2
  %t88 = load i64, ptr %l5, !tbaa !24
  %t91 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t87, i64 %t88)
  store i1 %t91, ptr %l45
  br label %bb27
bb26:
  br label %bb31
bb27:
  %t92 = load i1, ptr %l45, !tbaa !21
  br i1 %t92, label %bb28, label %bb29
bb28:
  store i32 65539, ptr %rv
  br label %ret
bb29:
  br label %bb30
bb30:
  store i32 65538, ptr %rv
  br label %ret
bb31:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t96 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t99 = call { i32, %"compiler/cond:Value" } @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eliteral(ptr %v0, ptr %v1, ptr %t95, { i64, ptr } %t96)
  %t100 = extractvalue { i32, %"compiler/cond:Value" } %t99, 1
  %t101 = extractvalue { i32, %"compiler/cond:Value" } %t99, 0
  store i32 %t101, ptr %l52
  %t102 = icmp ne i32 %t101, 0
  br i1 %t102, label %bb33, label %ok.103, !prof !99
ok.103:
  store %"compiler/cond:Value" %t100, ptr %l51
  br label %bb32
bb32:
  %t104 = load %"compiler/cond:Value", ptr %l51
  store %"compiler/cond:Value" %t104, ptr %l48
  br label %bb34
bb33:
  %t105 = load i32, ptr %l52, !tbaa !23
  %t106 = lshr i32 %t105, 16
  %t107 = and i32 %t105, 65535
  %t108 = icmp eq i32 %t106, 1
  %t109 = select i1 %t108, i32 1, i32 0
  %t110 = icmp eq i32 %t105, 0
  %t111 = shl i32 %t109, 16
  %t112 = or i32 %t111, %t107
  %t113 = select i1 %t110, i32 0, i32 %t112
  store i32 %t113, ptr %rv
  br label %ret
bb34:
  %t115 = load %"compiler/cond:Value", ptr %l48
  store %"compiler/cond:Value" %t115, ptr %l6
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t117 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t118 = load %"compiler/cond:Value", ptr %l6
  %t119 = getelementptr %"compiler/cond:Value", ptr %l6, i32 0, i32 6
  %t120 = load i1, ptr %t119, !tbaa !21
  call void @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eadd(ptr %v0, ptr %v1, ptr %t116, { i64, ptr } %t117, %"compiler/cond:Value" %t118, i1 false, i1 %t120, i1 true)
  br label %bb35
bb35:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = getelementptr %"compiler/cond:Consts", ptr %t125, i32 0, i32 5
  store ptr %t127, ptr %l59, !tbaa !29
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t130 = getelementptr %"compiler/cond:Consts", ptr %t128, i32 0, i32 5
  %t132 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t130)
  store i64 %t132, ptr %l62
  br label %bb36
bb36:
  %t133 = load i64, ptr %l62, !tbaa !24
  %t134 = sub i64 %t133, 1
  store i64 %t134, ptr %l63, !tbaa !24
  %t135 = ptrtoint ptr %v0 to i64
  store i64 %t135, ptr %l64, !tbaa !24
  %t136 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t136, label %bb37, label %bb38
bb37:
  %t138 = call ptr @__olang_region_make(ptr %v0)
  %t139 = ptrtoint ptr %t138 to i64
  store i64 %t139, ptr %l64, !tbaa !24
  br label %bb38
bb38:
  %t140 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t142 = extractvalue { i64, ptr } %t140, 1
  %t143 = extractvalue { i64, ptr } %t140, 0
  %t144 = load i64, ptr %l64
  %t145 = inttoptr i64 %t144 to ptr
  %t146 = call ptr @__olang_scope_alloc(ptr %t145, i64 %t143)
  call void @olang_textcopy(ptr %t146, ptr %t142, i64 %t143)
  %t147 = insertvalue { i64, ptr } undef, i64 %t143, 0
  %t148 = insertvalue { i64, ptr } %t147, ptr %t146, 1
  %t150 = load i64, ptr %l64
  %t151 = inttoptr i64 %t150 to ptr
  %t152 = extractvalue { i64, ptr } %t148, 0
  %t153 = extractvalue { i64, ptr } %t148, 1
  %t154 = mul i64 %t152, 1
  %t155 = call ptr @__olang_scope_alloc(ptr %t151, i64 %t154)
  call void @llvm.memcpy.p0.p0.i64(ptr %t155, ptr %t153, i64 %t154, i1 false)
  %t156 = insertvalue { i64, ptr } undef, i64 %t152, 0
  %t157 = insertvalue { i64, ptr } %t156, ptr %t155, 1
  %t158 = load ptr, ptr %l59, !tbaa !29
  %t159 = load i64, ptr %l63, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_Haae4fbc3ba15583a49040d883d2248d1(ptr %v0, ptr %v0, ptr %t158, i64 %t159, { i64, ptr } %t157)
  br label %bb39
bb39:
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i32, i64 } @compiler_2fcond_2ecompiler_2fcond_3aConsts_2efind(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l10 = alloca i64
  %l14 = alloca i64
  %l17 = alloca i64
  %l38 = alloca { i64, ptr }
  %l40 = alloca i1
  %rv = alloca { i32, i64 }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/cond:Consts", ptr %t1, i32 0, i32 0
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l10
  br label %bb1
bb1:
  %t6 = load i64, ptr %l10, !tbaa !24
  store i64 %t6, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t7 = load i64, ptr %l3, !tbaa !24
  %t8 = load i64, ptr %l2, !tbaa !24
  %t11 = icmp sgt i64 %t7, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load i64, ptr %l4, !tbaa !24
  %t15 = icmp sgt i64 %t13, 0
  br i1 %t15, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l14, !tbaa !24
  br label %bb7
bb4:
  %t17 = load i64, ptr %l3, !tbaa !24
  %t18 = load i64, ptr %l2, !tbaa !24
  %t21 = sub i64 %t17, %t18
  %t22 = load i64, ptr %l4, !tbaa !24
  %t25 = add i64 %t21, %t22
  %t27 = sub i64 %t25, 1
  %t28 = load i64, ptr %l4, !tbaa !24
  %t31 = sdiv i64 %t27, %t28
  store i64 %t31, ptr %l17, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb6
bb6:
  %t33 = load i64, ptr %l17, !tbaa !24
  store i64 %t33, ptr %l14, !tbaa !24
  br label %bb7
bb7:
  %t34 = load i64, ptr %l14, !tbaa !24
  store i64 %t34, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb8
bb8:
  %t35 = load i64, ptr %l6, !tbaa !24
  %t36 = load i64, ptr %l5, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb9, label %bb10
bb9:
  br label %bb18
bb10:
  br label %bb11
bb11:
  %t43 = load i64, ptr %l2, !tbaa !24
  %t44 = load i64, ptr %l6, !tbaa !24
  %t45 = load i64, ptr %l4, !tbaa !24
  %t48 = mul i64 %t44, %t45
  %t51 = add i64 %t43, %t48
  store i64 %t51, ptr %l7, !tbaa !24
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/cond:Consts", ptr %t53, i32 0, i32 0
  %t56 = load i64, ptr %l7, !tbaa !24
  %t59 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t55, i64 %t56)
  store { i64, ptr } %t59, ptr %l38
  br label %bb12
bb12:
  %t61 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t63 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %t61, { i64, ptr } %a1)
  store i1 %t63, ptr %l40
  br label %bb13
bb13:
  %t64 = load i1, ptr %l40, !tbaa !21
  br i1 %t64, label %bb14, label %bb15
bb14:
  %t65 = load i64, ptr %l7, !tbaa !24
  %t67 = insertvalue { i32, i64 } zeroinitializer, i64 %t65, 1
  store { i32, i64 } %t67, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t68 = load i64, ptr %l6, !tbaa !24
  %t70 = add i64 %t68, 1
  store i64 %t70, ptr %l6, !tbaa !24
  br label %bb8
bb18:
  %t73 = insertvalue { i32, i64 } zeroinitializer, i32 65536, 0
  store { i32, i64 } %t73, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i64 }, ptr %rv
  ret { i32, i64 } %rr
}

define dso_local { i32, %"compiler/cond:Value" } @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eliteral(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i1
  %l3 = alloca { i64, ptr }
  %l4 = alloca i1
  %l5 = alloca %"compiler/scan:Tokens"
  %l7 = alloca i32
  %l8 = alloca double
  %l9 = alloca i64
  %l10 = alloca i64
  %l12 = alloca i1
  %l13 = alloca i1
  %l15 = alloca i1
  %l17 = alloca i1
  %l18 = alloca %"compiler/cond:Value"
  %l22 = alloca i1
  %l23 = alloca { i64, ptr }
  %l26 = alloca i1
  %l27 = alloca { i64, ptr }
  %l33 = alloca i32
  %l34 = alloca ptr
  %l35 = alloca { i64, ptr }
  %l38 = alloca i64
  %l39 = alloca i64
  %l44 = alloca i64
  %l45 = alloca %"compiler/cond:Value"
  %l49 = alloca i1
  %l50 = alloca { i64, ptr }
  %l54 = alloca { i64, ptr }
  %l55 = alloca { i64, ptr }
  %l58 = alloca i64
  %l59 = alloca i64
  %l64 = alloca { i64, ptr }
  %l67 = alloca i64
  %l68 = alloca i64
  %l76 = alloca i1
  %l77 = alloca { i64, ptr }
  %l80 = alloca i1
  %l81 = alloca { i64, ptr }
  %l84 = alloca i1
  %l85 = alloca { i64, ptr }
  %l88 = alloca i1
  %l89 = alloca { i64, ptr }
  %l92 = alloca i1
  %l93 = alloca { i64, ptr }
  %l97 = alloca %"compiler/scan:Tokens"
  %l101 = alloca i1
  %l105 = alloca i1
  %l106 = alloca { i64, ptr }
  %l109 = alloca i1
  %l110 = alloca { i64, ptr }
  %l117 = alloca i32
  %l118 = alloca { i64, ptr }
  %l124 = alloca i1
  %l130 = alloca i32
  %l133 = alloca i64
  %l134 = alloca %"compiler/cond:Value"
  %l137 = alloca double
  %l139 = alloca { i64, ptr }
  %l141 = alloca double
  %l142 = alloca i32
  %l149 = alloca i32
  %l151 = alloca double
  %l155 = alloca %"compiler/cond:Value"
  %l156 = alloca i64
  %l157 = alloca { i64, ptr }
  %l158 = alloca i64
  %l159 = alloca i32
  %l160 = alloca i64
  %l161 = alloca i32
  %l166 = alloca i32
  %l168 = alloca i64
  %l173 = alloca %"compiler/cond:Value"
  %l184 = alloca %"compiler/cond:Value"
  %l191 = alloca %"compiler/cond:Value"
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %rv = alloca { i32, %"compiler/cond:Value" }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d39, i32 0, i32 1) })
  store i1 %t3, ptr %l12
  br label %bb1
bb1:
  %t4 = load i1, ptr %l12, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l13, !tbaa !21
  br label %bb5
bb3:
  %t5 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t7 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t5, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d40, i32 0, i32 1) })
  store i1 %t7, ptr %l15
  br label %bb4
bb4:
  %t8 = load i1, ptr %l15, !tbaa !21
  store i1 %t8, ptr %l13, !tbaa !21
  br label %bb5
bb5:
  %t9 = load i1, ptr %l13, !tbaa !21
  br i1 %t9, label %bb6, label %bb7
bb6:
  store %olang.scope zeroinitializer, ptr %s1
  %t10 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t12 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s1, { i64, ptr } %t10, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d41, i32 0, i32 1) })
  store i1 %t12, ptr %l17
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t13 = load i1, ptr %l17, !tbaa !21
  %t14 = call %"compiler/cond:Value" @compiler_2fcond_2eValue_2ebool(i1 %t13)
  store %"compiler/cond:Value" %t14, ptr %l18
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t15 = load %"compiler/cond:Value", ptr %l18
  %t16 = insertvalue { i32, %"compiler/cond:Value" } zeroinitializer, %"compiler/cond:Value" %t15, 1
  store { i32, %"compiler/cond:Value" } %t16, ptr %rv
  br label %ret
bb10:
  %t17 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t17, 0
  %t21 = icmp sge i64 %t19, 2
  br i1 %t21, label %bb11, label %bb12
bb11:
  %t23 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t23, ptr %l23, !tbaa !27
  %t24 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr i8, ptr %t25, i64 0
  %t27 = load i8, ptr %t26, !tbaa !32
  %t29 = icmp eq i8 %t27, 34
  store i1 %t29, ptr %l22, !tbaa !21
  br label %bb13
bb12:
  store i1 false, ptr %l22, !tbaa !21
  br label %bb13
bb13:
  %t31 = load i1, ptr %l22, !tbaa !21
  br i1 %t31, label %bb14, label %bb15
bb14:
  %t32 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t32, ptr %l27, !tbaa !27
  %t33 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t33, 0
  %t37 = sub i64 %t35, 1
  %t39 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !27
  %t41 = getelementptr i8, ptr %t40, i64 %t37
  %t42 = load i8, ptr %t41, !tbaa !32
  %t44 = icmp eq i8 %t42, 34
  store i1 %t44, ptr %l26, !tbaa !21
  br label %bb16
bb15:
  store i1 false, ptr %l26, !tbaa !21
  br label %bb16
bb16:
  %t46 = load i1, ptr %l26, !tbaa !21
  br i1 %t46, label %bb17, label %bb18
bb17:
  store %olang.scope zeroinitializer, ptr %s2
  store i32 4, ptr %l33
  %t47 = load ptr, ptr %l0, !tbaa !29
  store ptr %t47, ptr %l34, !tbaa !29
  %t48 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t48, ptr %l35, !tbaa !27
  %t49 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t51 = extractvalue { i64, ptr } %t49, 0
  %t53 = sub i64 %t51, 1
  store i64 %t53, ptr %l38, !tbaa !24
  %t54 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t55 = extractvalue { i64, ptr } %t54, 0
  store i64 %t55, ptr %l39, !tbaa !24
  %t56 = icmp sge i64 1, 0
  br i1 %t56, label %bb19, label %bb20
bb18:
  br label %bb27
bb19:
  %t58 = load i64, ptr %l38, !tbaa !24
  %t59 = icmp sle i64 1, %t58
  br i1 %t59, label %bb21, label %bb22
bb20:
  call void @__olang_check_failed(ptr @olang_loc_5ac00ef93c3b70de_d182aac4a1481962)
  unreachable
bb21:
  %t61 = load i64, ptr %l38, !tbaa !24
  %t62 = load i64, ptr %l39, !tbaa !24
  %t63 = icmp sle i64 %t61, %t62
  br i1 %t63, label %bb23, label %bb24
bb22:
  call void @__olang_check_failed(ptr @olang_loc_5ac00ef93c3b70de_d182aac4a1481962)
  unreachable
bb23:
  %t65 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !27
  %t67 = load i64, ptr %l38, !tbaa !24
  %t68 = getelementptr i8, ptr %t66, i64 1
  %t69 = sub i64 %t67, 1
  %t70 = insertvalue { i64, ptr } undef, i64 %t69, 0
  %t71 = insertvalue { i64, ptr } %t70, ptr %t68, 1
  %t72 = load ptr, ptr %l34, !tbaa !29
  %t74 = call i64 @compiler_2fcond_2ecompiler_2fcond_3aConsts_2etext(ptr %v0, ptr %v1, ptr %t72, { i64, ptr } %t71)
  store i64 %t74, ptr %l44
  br label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_5ac00ef93c3b70de_d182aac4a1481962)
  unreachable
bb25:
  %t75 = load i32, ptr %l33, !range !{i32 0, i32 5}
  %t76 = load i64, ptr %l44, !tbaa !24
  %t77 = call %"compiler/cond:Value" @compiler_2fcond_3aValue_2ector(ptr %s2, i32 %t75, i64 0, double 0x0000000000000000, i64 %t76, i64 0, i1 false, i1 false)
  store %"compiler/cond:Value" %t77, ptr %l45
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t78 = load %"compiler/cond:Value", ptr %l45
  %t79 = insertvalue { i32, %"compiler/cond:Value" } zeroinitializer, %"compiler/cond:Value" %t78, 1
  store { i32, %"compiler/cond:Value" } %t79, ptr %rv
  br label %ret
bb27:
  %t80 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t82 = extractvalue { i64, ptr } %t80, 0
  %t84 = icmp sgt i64 %t82, 0
  br i1 %t84, label %bb28, label %bb29
bb28:
  %t86 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t86, ptr %l50, !tbaa !27
  %t87 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !27
  %t89 = getelementptr i8, ptr %t88, i64 0
  %t90 = load i8, ptr %t89, !tbaa !32
  %t92 = icmp eq i8 %t90, 45
  store i1 %t92, ptr %l49, !tbaa !21
  br label %bb30
bb29:
  store i1 false, ptr %l49, !tbaa !21
  br label %bb30
bb30:
  %t94 = load i1, ptr %l49, !tbaa !21
  store i1 %t94, ptr %l2, !tbaa !21
  %t95 = load i1, ptr %l2, !tbaa !21
  br i1 %t95, label %bb31, label %bb32
bb31:
  %t97 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t97, ptr %l55, !tbaa !27
  %t98 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t101 = extractvalue { i64, ptr } %t98, 0
  store i64 %t101, ptr %l58, !tbaa !24
  %t102 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t103 = extractvalue { i64, ptr } %t102, 0
  store i64 %t103, ptr %l59, !tbaa !24
  %t104 = icmp sge i64 1, 0
  br i1 %t104, label %bb33, label %bb34
bb32:
  %t106 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t106, ptr %l64, !tbaa !27
  %t107 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t110 = extractvalue { i64, ptr } %t107, 0
  store i64 %t110, ptr %l67, !tbaa !24
  %t111 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t112 = extractvalue { i64, ptr } %t111, 0
  store i64 %t112, ptr %l68, !tbaa !24
  %t113 = icmp sge i64 0, 0
  br i1 %t113, label %bb39, label %bb40
bb33:
  %t115 = load i64, ptr %l58, !tbaa !24
  %t116 = icmp sle i64 1, %t115
  br i1 %t116, label %bb35, label %bb36
bb34:
  call void @__olang_check_failed(ptr @olang_loc_b6b1b2abf04569db_4e32416677f050df)
  unreachable
bb35:
  %t118 = load i64, ptr %l58, !tbaa !24
  %t119 = load i64, ptr %l59, !tbaa !24
  %t120 = icmp sle i64 %t118, %t119
  br i1 %t120, label %bb37, label %bb38
bb36:
  call void @__olang_check_failed(ptr @olang_loc_b6b1b2abf04569db_4e32416677f050df)
  unreachable
bb37:
  %t122 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t123 = load ptr, ptr %t122, !tbaa !27
  %t124 = load i64, ptr %l58, !tbaa !24
  %t125 = getelementptr i8, ptr %t123, i64 1
  %t126 = sub i64 %t124, 1
  %t127 = insertvalue { i64, ptr } undef, i64 %t126, 0
  %t128 = insertvalue { i64, ptr } %t127, ptr %t125, 1
  store { i64, ptr } %t128, ptr %l54, !tbaa !27
  br label %bb45
bb38:
  call void @__olang_check_failed(ptr @olang_loc_b6b1b2abf04569db_4e32416677f050df)
  unreachable
bb39:
  %t130 = load i64, ptr %l67, !tbaa !24
  %t131 = icmp sle i64 0, %t130
  br i1 %t131, label %bb41, label %bb42
bb40:
  call void @__olang_check_failed(ptr @olang_loc_b6b1b2abf04569db_4e32416677f050df)
  unreachable
bb41:
  %t133 = load i64, ptr %l67, !tbaa !24
  %t134 = load i64, ptr %l68, !tbaa !24
  %t135 = icmp sle i64 %t133, %t134
  br i1 %t135, label %bb43, label %bb44
bb42:
  call void @__olang_check_failed(ptr @olang_loc_b6b1b2abf04569db_4e32416677f050df)
  unreachable
bb43:
  %t137 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t138 = load ptr, ptr %t137, !tbaa !27
  %t139 = load i64, ptr %l67, !tbaa !24
  %t140 = getelementptr i8, ptr %t138, i64 0
  %t141 = sub i64 %t139, 0
  %t142 = insertvalue { i64, ptr } undef, i64 %t141, 0
  %t143 = insertvalue { i64, ptr } %t142, ptr %t140, 1
  store { i64, ptr } %t143, ptr %l54, !tbaa !27
  br label %bb45
bb44:
  call void @__olang_check_failed(ptr @olang_loc_b6b1b2abf04569db_4e32416677f050df)
  unreachable
bb45:
  %t145 = load { i64, ptr }, ptr %l54, !tbaa !27
  store { i64, ptr } %t145, ptr %l3, !tbaa !27
  %t146 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t148 = extractvalue { i64, ptr } %t146, 0
  %t150 = icmp sge i64 %t148, 2
  br i1 %t150, label %bb46, label %bb47
bb46:
  %t152 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t152, ptr %l77, !tbaa !27
  %t153 = getelementptr { i64, ptr }, ptr %l77, i32 0, i32 1
  %t154 = load ptr, ptr %t153, !tbaa !27
  %t155 = getelementptr i8, ptr %t154, i64 0
  %t156 = load i8, ptr %t155, !tbaa !32
  %t158 = icmp eq i8 %t156, 48
  store i1 %t158, ptr %l76, !tbaa !21
  br label %bb48
bb47:
  store i1 false, ptr %l76, !tbaa !21
  br label %bb48
bb48:
  %t160 = load i1, ptr %l76, !tbaa !21
  br i1 %t160, label %bb49, label %bb50
bb49:
  %t161 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t161, ptr %l81, !tbaa !27
  %t162 = getelementptr { i64, ptr }, ptr %l81, i32 0, i32 1
  %t163 = load ptr, ptr %t162, !tbaa !27
  %t164 = getelementptr i8, ptr %t163, i64 1
  %t165 = load i8, ptr %t164, !tbaa !32
  %t167 = icmp eq i8 %t165, 120
  br i1 %t167, label %bb51, label %bb52
bb50:
  store i1 false, ptr %l80, !tbaa !21
  br label %bb60
bb51:
  store i1 true, ptr %l84, !tbaa !21
  br label %bb53
bb52:
  %t169 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t169, ptr %l85, !tbaa !27
  %t170 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t171 = load ptr, ptr %t170, !tbaa !27
  %t172 = getelementptr i8, ptr %t171, i64 1
  %t173 = load i8, ptr %t172, !tbaa !32
  %t175 = icmp eq i8 %t173, 88
  store i1 %t175, ptr %l84, !tbaa !21
  br label %bb53
bb53:
  %t177 = load i1, ptr %l84, !tbaa !21
  br i1 %t177, label %bb54, label %bb55
bb54:
  store i1 true, ptr %l88, !tbaa !21
  br label %bb56
bb55:
  %t178 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t178, ptr %l89, !tbaa !27
  %t179 = getelementptr { i64, ptr }, ptr %l89, i32 0, i32 1
  %t180 = load ptr, ptr %t179, !tbaa !27
  %t181 = getelementptr i8, ptr %t180, i64 1
  %t182 = load i8, ptr %t181, !tbaa !32
  %t184 = icmp eq i8 %t182, 98
  store i1 %t184, ptr %l88, !tbaa !21
  br label %bb56
bb56:
  %t186 = load i1, ptr %l88, !tbaa !21
  br i1 %t186, label %bb57, label %bb58
bb57:
  store i1 true, ptr %l92, !tbaa !21
  br label %bb59
bb58:
  %t187 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t187, ptr %l93, !tbaa !27
  %t188 = getelementptr { i64, ptr }, ptr %l93, i32 0, i32 1
  %t189 = load ptr, ptr %t188, !tbaa !27
  %t190 = getelementptr i8, ptr %t189, i64 1
  %t191 = load i8, ptr %t190, !tbaa !32
  %t193 = icmp eq i8 %t191, 66
  store i1 %t193, ptr %l92, !tbaa !21
  br label %bb59
bb59:
  %t195 = load i1, ptr %l92, !tbaa !21
  store i1 %t195, ptr %l80, !tbaa !21
  br label %bb60
bb60:
  %t196 = load i1, ptr %l80, !tbaa !21
  store i1 %t196, ptr %l4, !tbaa !21
  %t197 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t199 = call %"compiler/scan:Tokens" @compiler_2fscan_2eTokens_2eScan(ptr %v1, ptr %s0, { i64, ptr } %t197)
  store %"compiler/scan:Tokens" %t199, ptr %l97
  br label %bb61
bb61:
  %t200 = load %"compiler/scan:Tokens", ptr %l97
  store %"compiler/scan:Tokens" %t200, ptr %l5
  %t201 = getelementptr %"compiler/scan:Tokens", ptr %l5, i32 0, i32 0
  %t202 = load { i64, ptr }, ptr %t201, !tbaa !27
  %t204 = extractvalue { i64, ptr } %t202, 0
  %t206 = icmp sge i64 %t204, 2
  br i1 %t206, label %bb62, label %bb63
bb62:
  %t208 = getelementptr %"compiler/scan:Tokens", ptr %l5, i32 0, i32 3
  %t209 = load { i64, ptr }, ptr %t208, !tbaa !27
  %t211 = extractvalue { i64, ptr } %t209, 0
  %t213 = icmp eq i64 %t211, 0
  store i1 %t213, ptr %l101, !tbaa !21
  br label %bb64
bb63:
  store i1 false, ptr %l101, !tbaa !21
  br label %bb64
bb64:
  %t215 = load i1, ptr %l101, !tbaa !21
  br i1 %t215, label %bb65, label %bb66
bb65:
  %t216 = getelementptr %"compiler/scan:Tokens", ptr %l5, i32 0, i32 0
  %t217 = load { i64, ptr }, ptr %t216, !tbaa !27
  store { i64, ptr } %t217, ptr %l106, !tbaa !27
  %t218 = getelementptr { i64, ptr }, ptr %l106, i32 0, i32 1
  %t219 = load ptr, ptr %t218, !tbaa !27
  %t220 = getelementptr %"compiler/token:Token", ptr %t219, i64 0
  %t221 = getelementptr %"compiler/token:Token", ptr %t220, i32 0, i32 2
  %t222 = load i32, ptr %t221, !tbaa !23
  %t224 = icmp eq i32 %t222, 0
  store i1 %t224, ptr %l105, !tbaa !21
  br label %bb67
bb66:
  store i1 false, ptr %l105, !tbaa !21
  br label %bb67
bb67:
  %t226 = load i1, ptr %l105, !tbaa !21
  br i1 %t226, label %bb68, label %bb69
bb68:
  %t227 = getelementptr %"compiler/scan:Tokens", ptr %l5, i32 0, i32 0
  %t228 = load { i64, ptr }, ptr %t227, !tbaa !27
  store { i64, ptr } %t228, ptr %l110, !tbaa !27
  %t229 = getelementptr { i64, ptr }, ptr %l110, i32 0, i32 1
  %t230 = load ptr, ptr %t229, !tbaa !27
  %t231 = getelementptr %"compiler/token:Token", ptr %t230, i64 0
  %t232 = getelementptr %"compiler/token:Token", ptr %t231, i32 0, i32 3
  %t233 = load i32, ptr %t232, !tbaa !23
  %t234 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t236 = extractvalue { i64, ptr } %t234, 0
  %t238 = trunc i64 %t236 to i32
  %t241 = icmp eq i32 %t233, %t238
  store i1 %t241, ptr %l109, !tbaa !21
  br label %bb70
bb69:
  store i1 false, ptr %l109, !tbaa !21
  br label %bb70
bb70:
  %t243 = load i1, ptr %l109, !tbaa !21
  br i1 %t243, label %bb71, label %bb72
bb71:
  %t246 = getelementptr %"compiler/scan:Tokens", ptr %l5, i32 0, i32 0
  %t247 = load { i64, ptr }, ptr %t246, !tbaa !27
  store { i64, ptr } %t247, ptr %l118, !tbaa !27
  %t248 = getelementptr { i64, ptr }, ptr %l118, i32 0, i32 1
  %t249 = load ptr, ptr %t248, !tbaa !27
  %t250 = getelementptr %"compiler/token:Token", ptr %t249, i64 0
  %t251 = getelementptr %"compiler/token:Token", ptr %t250, i32 0, i32 0
  %t252 = load i32, ptr %t251, !range !{i32 0, i32 114}
  store i32 %t252, ptr %l117
  br label %bb73
bb72:
  store i32 0, ptr %l117
  br label %bb73
bb73:
  %t255 = load i32, ptr %l117, !range !{i32 0, i32 114}
  store i32 %t255, ptr %l7
  %t256 = load i32, ptr %l7, !range !{i32 0, i32 114}
  %t258 = trunc i64 2 to i32
  %t259 = icmp eq i32 %t256, %t258
  %t261 = xor i1 %t259, true
  br i1 %t261, label %bb74, label %bb75
bb74:
  %t263 = load i32, ptr %l7, !range !{i32 0, i32 114}
  %t265 = trunc i64 3 to i32
  %t266 = icmp eq i32 %t263, %t265
  %t268 = xor i1 %t266, true
  store i1 %t268, ptr %l124, !tbaa !21
  br label %bb76
bb75:
  store i1 false, ptr %l124, !tbaa !21
  br label %bb76
bb76:
  %t270 = load i1, ptr %l124, !tbaa !21
  br i1 %t270, label %bb77, label %bb78
bb77:
  store %olang.scope zeroinitializer, ptr %s3
  %t271 = load i1, ptr %l4, !tbaa !21
  br i1 %t271, label %bb79, label %bb80
bb78:
  br label %bb84
bb79:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t274 = insertvalue { i32, %"compiler/cond:Value" } zeroinitializer, i32 65540, 0
  store { i32, %"compiler/cond:Value" } %t274, ptr %rv
  br label %ret
bb80:
  br label %bb81
bb81:
  store i32 4, ptr %l130
  %t275 = load ptr, ptr %l0, !tbaa !29
  %t276 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t279 = call i64 @compiler_2fcond_2ecompiler_2fcond_3aConsts_2etext(ptr %v0, ptr %v1, ptr %t275, { i64, ptr } %t276)
  store i64 %t279, ptr %l133
  br label %bb82
bb82:
  %t280 = load i32, ptr %l130, !range !{i32 0, i32 5}
  %t281 = load i64, ptr %l133, !tbaa !24
  %t282 = call %"compiler/cond:Value" @compiler_2fcond_3aValue_2ector(ptr %s3, i32 %t280, i64 0, double 0x0000000000000000, i64 %t281, i64 0, i1 false, i1 false)
  store %"compiler/cond:Value" %t282, ptr %l134
  br label %bb83
bb83:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t283 = load %"compiler/cond:Value", ptr %l134
  %t284 = insertvalue { i32, %"compiler/cond:Value" } zeroinitializer, %"compiler/cond:Value" %t283, 1
  store { i32, %"compiler/cond:Value" } %t284, ptr %rv
  br label %ret
bb84:
  %t285 = load i32, ptr %l7, !range !{i32 0, i32 114}
  %t287 = trunc i64 3 to i32
  %t288 = icmp eq i32 %t285, %t287
  br i1 %t288, label %bb85, label %bb86
bb85:
  store %olang.scope zeroinitializer, ptr %s5
  %t290 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t292 = call { i64, ptr } @compiler_2fcond_2estripped(ptr %v1, ptr %s5, { i64, ptr } %t290)
  store { i64, ptr } %t292, ptr %l139
  br label %bb87
bb86:
  br label %bb99
bb87:
  %t293 = load { i64, ptr }, ptr %l139, !tbaa !27
  %t294 = extractvalue { i64, ptr } %t293, 0
  %t295 = extractvalue { i64, ptr } %t293, 1
  %t296 = mul i64 %t294, 1
  %t297 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t296)
  call void @llvm.memcpy.p0.p0.i64(ptr %t297, ptr %t295, i64 %t296, i1 false)
  %t298 = insertvalue { i64, ptr } undef, i64 %t294, 0
  %t299 = insertvalue { i64, ptr } %t298, ptr %t297, 1
  %t301 = call { i32, double } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseFloat(ptr %s5, { i64, ptr } %t299)
  %t302 = extractvalue { i32, double } %t301, 1
  %t303 = extractvalue { i32, double } %t301, 0
  store i32 %t303, ptr %l142
  %t304 = icmp ne i32 %t303, 0
  br i1 %t304, label %bb89, label %ok.305, !prof !99
ok.305:
  store double %t302, ptr %l141
  br label %bb88
bb88:
  %t306 = load double, ptr %l141, !tbaa !26
  store double %t306, ptr %l137, !tbaa !26
  br label %bb91
bb89:
  br label %bb90
bb90:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  %t308 = insertvalue { i32, %"compiler/cond:Value" } zeroinitializer, i32 65543, 0
  store { i32, %"compiler/cond:Value" } %t308, ptr %rv
  br label %ret
bb91:
  %t309 = load double, ptr %l137, !tbaa !26
  store double %t309, ptr %l8, !tbaa !26
  %t310 = load double, ptr %l8, !tbaa !26
  %t311 = load double, ptr %l8, !tbaa !26
  %t314 = fsub double %t310, %t311
  %t316 = fcmp une double %t314, 0x0000000000000000
  br i1 %t316, label %bb92, label %bb93
bb92:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  %t319 = insertvalue { i32, %"compiler/cond:Value" } zeroinitializer, i32 65543, 0
  store { i32, %"compiler/cond:Value" } %t319, ptr %rv
  br label %ret
bb93:
  br label %bb94
bb94:
  store i32 3, ptr %l149
  %t320 = load i1, ptr %l2, !tbaa !21
  br i1 %t320, label %bb95, label %bb96
bb95:
  %t322 = load double, ptr %l8, !tbaa !26
  %t324 = fneg double %t322
  store double %t324, ptr %l151, !tbaa !26
  br label %bb97
bb96:
  %t326 = load double, ptr %l8, !tbaa !26
  store double %t326, ptr %l151, !tbaa !26
  br label %bb97
bb97:
  %t328 = load i32, ptr %l149, !range !{i32 0, i32 5}
  %t329 = load double, ptr %l151, !tbaa !26
  %t330 = call %"compiler/cond:Value" @compiler_2fcond_3aValue_2ector(ptr %s5, i32 %t328, i64 0, double %t329, i64 0, i64 64, i1 false, i1 false)
  store %"compiler/cond:Value" %t330, ptr %l155
  br label %bb98
bb98:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  %t331 = load %"compiler/cond:Value", ptr %l155
  %t332 = insertvalue { i32, %"compiler/cond:Value" } zeroinitializer, %"compiler/cond:Value" %t331, 1
  store { i32, %"compiler/cond:Value" } %t332, ptr %rv
  br label %ret
bb99:
  %t333 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t333, ptr %l157, !tbaa !27
  %t334 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s0, i64 0)
  %t335 = extractvalue { i32, i64 } %t334, 1
  %t336 = extractvalue { i32, i64 } %t334, 0
  store i32 %t336, ptr %l159
  %t337 = icmp ne i32 %t336, 0
  br i1 %t337, label %bb101, label %ok.338, !prof !99
ok.338:
  store i64 %t335, ptr %l158
  br label %bb100
bb100:
  %t339 = load { i64, ptr }, ptr %l157, !tbaa !27
  %t340 = load i64, ptr %l158, !tbaa !24
  %t341 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseUint(ptr %v1, { i64, ptr } %t339, i64 %t340)
  %t342 = extractvalue { i32, i64 } %t341, 1
  %t343 = extractvalue { i32, i64 } %t341, 0
  store i32 %t343, ptr %l161
  %t344 = icmp ne i32 %t343, 0
  br i1 %t344, label %bb104, label %ok.345, !prof !99
ok.345:
  store i64 %t342, ptr %l160
  br label %bb103
bb101:
  br label %bb102
bb102:
  call void @__olang_scope_close(ptr %s0)
  %t347 = insertvalue { i32, %"compiler/cond:Value" } zeroinitializer, i32 65541, 0
  store { i32, %"compiler/cond:Value" } %t347, ptr %rv
  br label %ret
bb103:
  %t348 = load i64, ptr %l160, !tbaa !65
  store i64 %t348, ptr %l156, !tbaa !65
  br label %bb105
bb104:
  br label %bb102
bb105:
  %t349 = load i64, ptr %l156, !tbaa !65
  store i64 %t349, ptr %l9, !tbaa !65
  %t350 = load i1, ptr %l4, !tbaa !21
  br i1 %t350, label %bb106, label %bb107
bb106:
  store %olang.scope zeroinitializer, ptr %s9
  %t352 = load i64, ptr %l9, !tbaa !65
  store i64 %t352, ptr %l10, !tbaa !24
  store i32 2, ptr %l166
  %t355 = load i1, ptr %l2, !tbaa !21
  br i1 %t355, label %bb108, label %bb109
bb107:
  br label %bb112
bb108:
  %t357 = load i64, ptr %l10, !tbaa !24
  %t359 = sub i64 0, %t357
  store i64 %t359, ptr %l168, !tbaa !24
  br label %bb110
bb109:
  %t361 = load i64, ptr %l10, !tbaa !24
  store i64 %t361, ptr %l168, !tbaa !24
  br label %bb110
bb110:
  %t363 = load i64, ptr @G_2ecompiler_2fcond_2eLiteralIntBits, !tbaa !24
  %t364 = load i32, ptr %l166, !range !{i32 0, i32 5}
  %t365 = load i64, ptr %l168, !tbaa !24
  %t367 = call %"compiler/cond:Value" @compiler_2fcond_3aValue_2ector(ptr %s9, i32 %t364, i64 %t365, double 0x0000000000000000, i64 0, i64 %t363, i1 false, i1 false)
  store %"compiler/cond:Value" %t367, ptr %l173
  br label %bb111
bb111:
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s0)
  %t368 = load %"compiler/cond:Value", ptr %l173
  %t369 = insertvalue { i32, %"compiler/cond:Value" } zeroinitializer, %"compiler/cond:Value" %t368, 1
  store { i32, %"compiler/cond:Value" } %t369, ptr %rv
  br label %ret
bb112:
  %t370 = load i1, ptr %l2, !tbaa !21
  br i1 %t370, label %bb113, label %bb114
bb113:
  store %olang.scope zeroinitializer, ptr %s10
  %t372 = load i64, ptr %l9, !tbaa !65
  %t373 = add i64 9223372036854775807, 1
  %t376 = icmp ugt i64 %t372, %t373
  br i1 %t376, label %bb115, label %bb116
bb114:
  br label %bb119
bb115:
  call void @__olang_scope_close(ptr %s10)
  call void @__olang_scope_close(ptr %s0)
  %t379 = insertvalue { i32, %"compiler/cond:Value" } zeroinitializer, i32 65542, 0
  store { i32, %"compiler/cond:Value" } %t379, ptr %rv
  br label %ret
bb116:
  br label %bb117
bb117:
  %t380 = load i64, ptr %l9, !tbaa !65
  %t383 = sub i64 0, %t380
  %t384 = load i64, ptr @G_2ecompiler_2fcond_2eLiteralIntBits, !tbaa !24
  %t388 = call %"compiler/cond:Value" @compiler_2fcond_3aValue_2ector(ptr %s10, i32 2, i64 %t383, double 0x0000000000000000, i64 0, i64 %t384, i1 false, i1 false)
  store %"compiler/cond:Value" %t388, ptr %l184
  br label %bb118
bb118:
  call void @__olang_scope_close(ptr %s10)
  call void @__olang_scope_close(ptr %s0)
  %t389 = load %"compiler/cond:Value", ptr %l184
  %t390 = insertvalue { i32, %"compiler/cond:Value" } zeroinitializer, %"compiler/cond:Value" %t389, 1
  store { i32, %"compiler/cond:Value" } %t390, ptr %rv
  br label %ret
bb119:
  %t391 = load i64, ptr %l9, !tbaa !65
  %t393 = load i64, ptr @G_2ecompiler_2fcond_2eLiteralIntBits, !tbaa !24
  %t394 = load i64, ptr %l9, !tbaa !65
  %t396 = icmp ugt i64 %t394, 9223372036854775807
  %t401 = call %"compiler/cond:Value" @compiler_2fcond_3aValue_2ector(ptr %s0, i32 2, i64 %t391, double 0x0000000000000000, i64 0, i64 %t393, i1 false, i1 %t396)
  store %"compiler/cond:Value" %t401, ptr %l191
  br label %bb120
bb120:
  call void @__olang_scope_close(ptr %s0)
  %t402 = load %"compiler/cond:Value", ptr %l191
  %t403 = insertvalue { i32, %"compiler/cond:Value" } zeroinitializer, %"compiler/cond:Value" %t402, 1
  store { i32, %"compiler/cond:Value" } %t403, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"compiler/cond:Value" }, ptr %rv
  ret { i32, %"compiler/cond:Value" } %rr
}

define dso_local i64 @compiler_2fcond_2ecompiler_2fcond_3aConsts_2etext(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l11 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/cond:Consts", ptr %t1, i32 0, i32 6
  store ptr %t3, ptr %l3, !tbaa !29
  %t4 = ptrtoint ptr %v0 to i64
  store i64 %t4, ptr %l4, !tbaa !24
  %t5 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = call ptr @__olang_region_make(ptr %v0)
  %t8 = ptrtoint ptr %t7 to i64
  store i64 %t8, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t11 = extractvalue { i64, ptr } %a1, 1
  %t12 = extractvalue { i64, ptr } %a1, 0
  %t13 = load i64, ptr %l4
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t11, i64 %t12)
  %t16 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t17 = insertvalue { i64, ptr } %t16, ptr %t15, 1
  %t19 = load i64, ptr %l4
  %t20 = inttoptr i64 %t19 to ptr
  %t21 = extractvalue { i64, ptr } %t17, 0
  %t22 = extractvalue { i64, ptr } %t17, 1
  %t23 = mul i64 %t21, 1
  %t24 = call ptr @__olang_scope_alloc(ptr %t20, i64 %t23)
  call void @llvm.memcpy.p0.p0.i64(ptr %t24, ptr %t22, i64 %t23, i1 false)
  %t25 = insertvalue { i64, ptr } undef, i64 %t21, 0
  %t26 = insertvalue { i64, ptr } %t25, ptr %t24, 1
  %t27 = load ptr, ptr %l3, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t27, { i64, ptr } %t26)
  br label %bb3
bb3:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/cond:Consts", ptr %t29, i32 0, i32 6
  %t33 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t31)
  store i64 %t33, ptr %l11
  br label %bb4
bb4:
  %t34 = load i64, ptr %l11, !tbaa !24
  %t35 = sub i64 %t34, 1
  store i64 %t35, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { %"compiler/source:Span", %"compiler/diagmsg:Msg" } @compiler_2fcond_2ecompiler_2fcond_3aEval_2eError(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %rv = alloca { %"compiler/source:Span", %"compiler/diagmsg:Msg" }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/cond:Eval", ptr %t1, i32 0, i32 7
  %t4 = load %"compiler/source:Span", ptr %t3
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/cond:Eval", ptr %t5, i32 0, i32 8
  %t8 = load %"compiler/diagmsg:Msg", ptr %t7
  %t10 = insertvalue { %"compiler/source:Span", %"compiler/diagmsg:Msg" } undef, %"compiler/source:Span" %t4, 0
  %t12 = insertvalue { %"compiler/source:Span", %"compiler/diagmsg:Msg" } %t10, %"compiler/diagmsg:Msg" %t8, 1
  store { %"compiler/source:Span", %"compiler/diagmsg:Msg" } %t12, ptr %rv
  br label %ret
ret:
  %rr = load { %"compiler/source:Span", %"compiler/diagmsg:Msg" }, ptr %rv
  ret { %"compiler/source:Span", %"compiler/diagmsg:Msg" } %rr
}

define dso_local %"compiler/cond:Decision" @compiler_2fcond_2ecompiler_2fcond_3aEval_2eLocal(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/cond:Value"
  %l5 = alloca %"compiler/cond:Value"
  %l10 = alloca i1
  %l14 = alloca i1
  %l16 = alloca %"compiler/cond:Decision"
  %l19 = alloca i32
  %l22 = alloca %"compiler/cond:Decision"
  %l27 = alloca %"compiler/cond:Decision"
  %l34 = alloca %"compiler/cond:Decision"
  %l38 = alloca %"compiler/cond:Decision"
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca %"compiler/cond:Decision"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t5 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2eexpr(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  store %"compiler/cond:Value" %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load %"compiler/cond:Value", ptr %l5
  store %"compiler/cond:Value" %t6, ptr %l2
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/cond:Eval", ptr %t7, i32 0, i32 4
  %t10 = load i1, ptr %t9, !tbaa !21
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/cond:Eval", ptr %t12, i32 0, i32 6
  %t15 = load i1, ptr %t14, !tbaa !21
  br i1 %t15, label %bb4, label %bb5
bb3:
  br label %bb16
bb4:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb7
bb5:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load ptr, ptr %l1, !tbaa !29
  %t22 = call i1 @compiler_2fcond_2ecompiler_2fcond_3aEval_2ementionsLocal(ptr %v0, ptr %v1, ptr %t17, ptr %t18)
  store i1 %t22, ptr %l14
  br label %bb6
bb6:
  %t23 = load i1, ptr %l14, !tbaa !21
  store i1 %t23, ptr %l10, !tbaa !21
  br label %bb7
bb7:
  %t24 = load i1, ptr %l10, !tbaa !21
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t26 = call %"compiler/cond:Decision" @compiler_2fcond_2eDecision_2eundecided(i32 3)
  store %"compiler/cond:Decision" %t26, ptr %l16
  br label %bb10
bb9:
  br label %bb11
bb10:
  call void @__olang_scope_close(ptr %s0)
  %t27 = load %"compiler/cond:Decision", ptr %l16
  store %"compiler/cond:Decision" %t27, ptr %rv
  br label %ret
bb11:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/cond:Eval", ptr %t28, i32 0, i32 5
  %t31 = load i1, ptr %t30, !tbaa !21
  br i1 %t31, label %bb12, label %bb13
bb12:
  store i32 1, ptr %l19
  br label %bb14
bb13:
  store i32 3, ptr %l19
  br label %bb14
bb14:
  %t35 = load i32, ptr %l19, !range !{i32 0, i32 5}
  %t36 = call %"compiler/cond:Decision" @compiler_2fcond_2eDecision_2eundecided(i32 %t35)
  store %"compiler/cond:Decision" %t36, ptr %l22
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s0)
  %t37 = load %"compiler/cond:Decision", ptr %l22
  store %"compiler/cond:Decision" %t37, ptr %rv
  br label %ret
bb16:
  %t38 = getelementptr %"compiler/cond:Value", ptr %l2, i32 0, i32 0
  %t39 = load i32, ptr %t38, !range !{i32 0, i32 5}
  %t41 = trunc i64 1 to i32
  %t42 = icmp eq i32 %t39, %t41
  %t44 = xor i1 %t42, true
  br i1 %t44, label %bb17, label %bb18
bb17:
  %t47 = call %"compiler/cond:Decision" @compiler_2fcond_2eDecision_2eundecided(i32 3)
  store %"compiler/cond:Decision" %t47, ptr %l27
  br label %bb19
bb18:
  br label %bb20
bb19:
  call void @__olang_scope_close(ptr %s0)
  %t48 = load %"compiler/cond:Decision", ptr %l27
  store %"compiler/cond:Decision" %t48, ptr %rv
  br label %ret
bb20:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/cond:Eval", ptr %t49, i32 0, i32 11
  %t52 = load i1, ptr %t51, !tbaa !21
  %t54 = xor i1 %t52, true
  br i1 %t54, label %bb21, label %bb22
bb21:
  store %olang.scope zeroinitializer, ptr %s4
  %t56 = getelementptr %"compiler/cond:Value", ptr %l2, i32 0, i32 1
  %t57 = load i64, ptr %t56, !tbaa !24
  %t59 = icmp ne i64 %t57, 0
  %t62 = call %"compiler/cond:Decision" @compiler_2fcond_3aDecision_2ector(ptr %s4, i32 4, i1 %t59)
  store %"compiler/cond:Decision" %t62, ptr %l34
  br label %bb23
bb22:
  br label %bb24
bb23:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  %t63 = load %"compiler/cond:Decision", ptr %l34
  store %"compiler/cond:Decision" %t63, ptr %rv
  br label %ret
bb24:
  %t64 = getelementptr %"compiler/cond:Value", ptr %l2, i32 0, i32 1
  %t65 = load i64, ptr %t64, !tbaa !24
  %t67 = icmp ne i64 %t65, 0
  %t70 = call %"compiler/cond:Decision" @compiler_2fcond_3aDecision_2ector(ptr %s0, i32 0, i1 %t67)
  store %"compiler/cond:Decision" %t70, ptr %l38
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s0)
  %t71 = load %"compiler/cond:Decision", ptr %l38
  store %"compiler/cond:Decision" %t71, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/cond:Decision", ptr %rv
  ret %"compiler/cond:Decision" %rr
}

define dso_local %"compiler/cond:Decision" @compiler_2fcond_2ecompiler_2fcond_3aEval_2eTop(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/cond:Value"
  %l5 = alloca %"compiler/cond:Value"
  %l9 = alloca i1
  %l13 = alloca ptr
  %l16 = alloca %"compiler/source:Span"
  %l17 = alloca ptr
  %l20 = alloca %"compiler/source:Span"
  %l21 = alloca { i64, ptr }
  %l23 = alloca %"compiler/diagmsg:Msg"
  %l24 = alloca %"compiler/cond:Value"
  %l29 = alloca i32
  %l32 = alloca %"compiler/cond:Decision"
  %l36 = alloca %"compiler/cond:Decision"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/cond:Decision"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t5 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2eexpr(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  store %"compiler/cond:Value" %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load %"compiler/cond:Value", ptr %l5
  store %"compiler/cond:Value" %t6, ptr %l2
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/cond:Eval", ptr %t7, i32 0, i32 4
  %t10 = load i1, ptr %t9, !tbaa !21
  %t12 = xor i1 %t10, true
  br i1 %t12, label %bb2, label %bb3
bb2:
  %t14 = getelementptr %"compiler/cond:Value", ptr %l2, i32 0, i32 0
  %t15 = load i32, ptr %t14, !range !{i32 0, i32 5}
  %t17 = trunc i64 1 to i32
  %t18 = icmp eq i32 %t15, %t17
  %t20 = xor i1 %t18, true
  store i1 %t20, ptr %l9, !tbaa !21
  br label %bb4
bb3:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb4
bb4:
  %t22 = load i1, ptr %l9, !tbaa !21
  br i1 %t22, label %bb5, label %bb6
bb5:
  %t23 = load ptr, ptr %l0, !tbaa !29
  store ptr %t23, ptr %l13, !tbaa !29
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t28 = call %"compiler/source:Span" @compiler_2fcond_2ecompiler_2fcond_3aEval_2efirst(ptr %v0, ptr %v1, ptr %t24, ptr %t25)
  store %"compiler/source:Span" %t28, ptr %l16
  br label %bb7
bb6:
  br label %bb12
bb7:
  %t29 = load ptr, ptr %l0, !tbaa !29
  store ptr %t29, ptr %l17, !tbaa !29
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t34 = call %"compiler/source:Span" @compiler_2fcond_2ecompiler_2fcond_3aEval_2efirst(ptr %v0, ptr %v1, ptr %t30, ptr %t31)
  store %"compiler/source:Span" %t34, ptr %l20
  br label %bb8
bb8:
  %t35 = load ptr, ptr %l17, !tbaa !29
  %t36 = load %"compiler/source:Span", ptr %l20
  %t37 = call { i64, ptr } @compiler_2fcond_2ecompiler_2fcond_3aEval_2etokText(ptr %v0, ptr %v0, ptr %t35, %"compiler/source:Span" %t36)
  store { i64, ptr } %t37, ptr %l21
  br label %bb9
bb9:
  %t38 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t38, 0
  %t40 = extractvalue { i64, ptr } %t38, 1
  %t41 = mul i64 %t39, 1
  %t42 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t41)
  call void @llvm.memcpy.p0.p0.i64(ptr %t42, ptr %t40, i64 %t41, i1 false)
  %t43 = insertvalue { i64, ptr } undef, i64 %t39, 0
  %t44 = insertvalue { i64, ptr } %t43, ptr %t42, 1
  %t46 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondNotBool(ptr %v0, ptr %v0, { i64, ptr } %t44)
  store %"compiler/diagmsg:Msg" %t46, ptr %l23
  br label %bb10
bb10:
  %t47 = load ptr, ptr %l13, !tbaa !29
  %t48 = load %"compiler/source:Span", ptr %l16
  %t49 = load %"compiler/diagmsg:Msg", ptr %l23
  %t50 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2efail(ptr %v0, ptr %v0, ptr %t47, %"compiler/source:Span" %t48, %"compiler/diagmsg:Msg" %t49)
  store %"compiler/cond:Value" %t50, ptr %l24
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/cond:Eval", ptr %t51, i32 0, i32 4
  %t54 = load i1, ptr %t53, !tbaa !21
  br i1 %t54, label %bb13, label %bb14
bb13:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/cond:Eval", ptr %t56, i32 0, i32 5
  %t59 = load i1, ptr %t58, !tbaa !21
  br i1 %t59, label %bb15, label %bb16
bb14:
  br label %bb19
bb15:
  store i32 1, ptr %l29
  br label %bb17
bb16:
  store i32 2, ptr %l29
  br label %bb17
bb17:
  %t63 = load i32, ptr %l29, !range !{i32 0, i32 5}
  %t64 = call %"compiler/cond:Decision" @compiler_2fcond_2eDecision_2eundecided(i32 %t63)
  store %"compiler/cond:Decision" %t64, ptr %l32
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s0)
  %t65 = load %"compiler/cond:Decision", ptr %l32
  store %"compiler/cond:Decision" %t65, ptr %rv
  br label %ret
bb19:
  %t66 = getelementptr %"compiler/cond:Value", ptr %l2, i32 0, i32 1
  %t67 = load i64, ptr %t66, !tbaa !24
  %t69 = icmp ne i64 %t67, 0
  %t72 = call %"compiler/cond:Decision" @compiler_2fcond_3aDecision_2ector(ptr %s0, i32 0, i1 %t69)
  store %"compiler/cond:Decision" %t72, ptr %l36
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s0)
  %t73 = load %"compiler/cond:Decision", ptr %l36
  store %"compiler/cond:Decision" %t73, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/cond:Decision", ptr %rv
  ret %"compiler/cond:Decision" %rr
}

define dso_local i64 @compiler_2fcond_2ecompiler_2fcond_3aEval_2eaddText(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l11 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/cond:Eval", ptr %t1, i32 0, i32 12
  store ptr %t3, ptr %l3, !tbaa !29
  %t4 = ptrtoint ptr %v0 to i64
  store i64 %t4, ptr %l4, !tbaa !24
  %t5 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = call ptr @__olang_region_make(ptr %v0)
  %t8 = ptrtoint ptr %t7 to i64
  store i64 %t8, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t11 = extractvalue { i64, ptr } %a1, 1
  %t12 = extractvalue { i64, ptr } %a1, 0
  %t13 = load i64, ptr %l4
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t11, i64 %t12)
  %t16 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t17 = insertvalue { i64, ptr } %t16, ptr %t15, 1
  %t19 = load i64, ptr %l4
  %t20 = inttoptr i64 %t19 to ptr
  %t21 = extractvalue { i64, ptr } %t17, 0
  %t22 = extractvalue { i64, ptr } %t17, 1
  %t23 = mul i64 %t21, 1
  %t24 = call ptr @__olang_scope_alloc(ptr %t20, i64 %t23)
  call void @llvm.memcpy.p0.p0.i64(ptr %t24, ptr %t22, i64 %t23, i1 false)
  %t25 = insertvalue { i64, ptr } undef, i64 %t21, 0
  %t26 = insertvalue { i64, ptr } %t25, ptr %t24, 1
  %t27 = load ptr, ptr %l3, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t27, { i64, ptr } %t26)
  br label %bb3
bb3:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/cond:Eval", ptr %t29, i32 0, i32 12
  %t33 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t31)
  store i64 %t33, ptr %l11
  br label %bb4
bb4:
  %t34 = load i64, ptr %l11, !tbaa !24
  %t35 = sub i64 %t34, 1
  store i64 %t35, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fcond_2ecompiler_2fcond_3aEval_2eanyLocal(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l13 = alloca { i64, ptr }
  %l19 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a1, ptr %l2, !tbaa !27
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
  %t20 = getelementptr ptr, ptr %t19, i64 %t16
  %t21 = load ptr, ptr %t20, !tbaa !39
  %t28 = call i1 @compiler_2fcond_2ecompiler_2fcond_3aEval_2ementionsLocal(ptr %v0, ptr %v1, ptr %a0, ptr %t21)
  store i1 %t28, ptr %l19
  br label %bb5
bb5:
  %t29 = load i1, ptr %l19, !tbaa !21
  br i1 %t29, label %bb6, label %bb7
bb6:
  store i1 true, ptr %rv
  br label %ret
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
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2earith(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, %"compiler/cond:Value" %a3, %"compiler/cond:Value" %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i32
  %l3 = alloca %"compiler/cond:Value"
  %l4 = alloca %"compiler/cond:Value"
  %l5 = alloca %"compiler/cond:Value"
  %l6 = alloca i64
  %l7 = alloca i1
  %l8 = alloca i64
  %l9 = alloca i1
  %l10 = alloca double
  %l11 = alloca double
  %l12 = alloca i64
  %l16 = alloca i1
  %l19 = alloca %"compiler/cond:Value"
  %l21 = alloca i1
  %l23 = alloca i1
  %l25 = alloca i1
  %l27 = alloca ptr
  %l28 = alloca %"compiler/source:Span"
  %l31 = alloca { i64, ptr }
  %l33 = alloca %"compiler/diagmsg:Msg"
  %l34 = alloca %"compiler/cond:Value"
  %l37 = alloca i1
  %l40 = alloca %"compiler/cond:Value"
  %l43 = alloca %"compiler/cond:Value"
  %l44 = alloca i32
  %l45 = alloca ptr
  %l46 = alloca %"compiler/source:Span"
  %l49 = alloca { i64, ptr }
  %l51 = alloca %"compiler/diagmsg:Msg"
  %l52 = alloca %"compiler/cond:Value"
  %l62 = alloca i1
  %l66 = alloca i1
  %l69 = alloca i1
  %l80 = alloca i1
  %l84 = alloca i1
  %l87 = alloca i1
  %l98 = alloca i1
  %l104 = alloca i1
  %l107 = alloca i1
  %l112 = alloca i1
  %l115 = alloca i1
  %l120 = alloca %"compiler/cond:Value"
  %l123 = alloca i64
  %l131 = alloca i1
  %l132 = alloca i64
  %l135 = alloca i64
  %l139 = alloca i1
  %l143 = alloca %"compiler/cond:Value"
  %l148 = alloca %"compiler/cond:Value"
  %l151 = alloca i1
  %l154 = alloca i1
  %l157 = alloca i1
  %l160 = alloca ptr
  %l161 = alloca %"compiler/source:Span"
  %l164 = alloca { i64, ptr }
  %l166 = alloca %"compiler/diagmsg:Msg"
  %l167 = alloca %"compiler/cond:Value"
  %l172 = alloca double
  %l174 = alloca double
  %l175 = alloca i32
  %l178 = alloca %"compiler/cond:Value"
  %l181 = alloca double
  %l183 = alloca double
  %l184 = alloca i32
  %l187 = alloca %"compiler/cond:Value"
  %l192 = alloca %"compiler/cond:Value"
  %l195 = alloca i1
  %l198 = alloca i64
  %l201 = alloca double
  %l207 = alloca double
  %l213 = alloca double
  %l223 = alloca %"compiler/cond:Value"
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca %"compiler/cond:Value"
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a2, ptr %l2
  store %"compiler/cond:Value" %a3, ptr %l3
  store %"compiler/cond:Value" %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 0
  %t2 = load i32, ptr %t1, !range !{i32 0, i32 5}
  %t4 = trunc i64 0 to i32
  %t5 = icmp eq i32 %t2, %t4
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb3
bb2:
  %t7 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 0
  %t8 = load i32, ptr %t7, !range !{i32 0, i32 5}
  %t10 = trunc i64 0 to i32
  %t11 = icmp eq i32 %t8, %t10
  store i1 %t11, ptr %l16, !tbaa !21
  br label %bb3
bb3:
  %t13 = load i1, ptr %l16, !tbaa !21
  br i1 %t13, label %bb4, label %bb5
bb4:
  %t14 = call %"compiler/cond:Value" @compiler_2fcond_2eValue_2enone()
  store %"compiler/cond:Value" %t14, ptr %l19
  br label %bb6
bb5:
  br label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  %t15 = load %"compiler/cond:Value", ptr %l19
  store %"compiler/cond:Value" %t15, ptr %rv
  br label %ret
bb7:
  %t16 = load %"compiler/cond:Value", ptr %l3
  %t18 = call i1 @compiler_2fcond_2enumeric(%"compiler/cond:Value" %t16)
  store i1 %t18, ptr %l21
  br label %bb8
bb8:
  %t19 = load i1, ptr %l21, !tbaa !21
  %t20 = xor i1 %t19, true
  br i1 %t20, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l23, !tbaa !21
  br label %bb12
bb10:
  %t22 = load %"compiler/cond:Value", ptr %l4
  %t24 = call i1 @compiler_2fcond_2enumeric(%"compiler/cond:Value" %t22)
  store i1 %t24, ptr %l25
  br label %bb11
bb11:
  %t25 = load i1, ptr %l25, !tbaa !21
  %t26 = xor i1 %t25, true
  store i1 %t26, ptr %l23, !tbaa !21
  br label %bb12
bb12:
  %t28 = load i1, ptr %l23, !tbaa !21
  br i1 %t28, label %bb13, label %bb14
bb13:
  %t29 = load ptr, ptr %l0, !tbaa !29
  store ptr %t29, ptr %l27, !tbaa !29
  %t30 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t30, ptr %l28
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load %"compiler/source:Span", ptr %l1
  %t35 = call { i64, ptr } @compiler_2fcond_2ecompiler_2fcond_3aEval_2etokText(ptr %v0, ptr %v0, ptr %t31, %"compiler/source:Span" %t32)
  store { i64, ptr } %t35, ptr %l31
  br label %bb15
bb14:
  br label %bb18
bb15:
  %t36 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t36, 0
  %t38 = extractvalue { i64, ptr } %t36, 1
  %t39 = mul i64 %t37, 1
  %t40 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t39)
  call void @llvm.memcpy.p0.p0.i64(ptr %t40, ptr %t38, i64 %t39, i1 false)
  %t41 = insertvalue { i64, ptr } undef, i64 %t37, 0
  %t42 = insertvalue { i64, ptr } %t41, ptr %t40, 1
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondTypes(ptr %v0, ptr %v0, { i64, ptr } %t42)
  store %"compiler/diagmsg:Msg" %t44, ptr %l33
  br label %bb16
bb16:
  %t45 = load ptr, ptr %l27, !tbaa !29
  %t46 = load %"compiler/source:Span", ptr %l28
  %t47 = load %"compiler/diagmsg:Msg", ptr %l33
  %t48 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2efail(ptr %v0, ptr %v0, ptr %t45, %"compiler/source:Span" %t46, %"compiler/diagmsg:Msg" %t47)
  store %"compiler/cond:Value" %t48, ptr %l34
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s0)
  %t49 = load %"compiler/cond:Value", ptr %l34
  store %"compiler/cond:Value" %t49, ptr %rv
  br label %ret
bb18:
  %t50 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 0
  %t51 = load i32, ptr %t50, !range !{i32 0, i32 5}
  %t53 = trunc i64 2 to i32
  %t54 = icmp eq i32 %t51, %t53
  br i1 %t54, label %bb19, label %bb20
bb19:
  %t56 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 0
  %t57 = load i32, ptr %t56, !range !{i32 0, i32 5}
  %t59 = trunc i64 2 to i32
  %t60 = icmp eq i32 %t57, %t59
  store i1 %t60, ptr %l37, !tbaa !21
  br label %bb21
bb20:
  store i1 false, ptr %l37, !tbaa !21
  br label %bb21
bb21:
  %t62 = load i1, ptr %l37, !tbaa !21
  br i1 %t62, label %bb22, label %bb23
bb22:
  store %olang.scope zeroinitializer, ptr %s3
  %t63 = load %"compiler/cond:Value", ptr %l3
  %t64 = load %"compiler/cond:Value", ptr %l4
  %t67 = call { i32, %"compiler/cond:Value" } @compiler_2fcond_2emeet(%"compiler/cond:Value" %t63, %"compiler/cond:Value" %t64)
  %t68 = extractvalue { i32, %"compiler/cond:Value" } %t67, 1
  %t69 = extractvalue { i32, %"compiler/cond:Value" } %t67, 0
  store i32 %t69, ptr %l44
  %t70 = icmp ne i32 %t69, 0
  br i1 %t70, label %bb25, label %ok.71, !prof !99
ok.71:
  store %"compiler/cond:Value" %t68, ptr %l43
  br label %bb24
bb23:
  br label %bb100
bb24:
  %t72 = load %"compiler/cond:Value", ptr %l43
  store %"compiler/cond:Value" %t72, ptr %l40
  br label %bb30
bb25:
  br label %bb26
bb26:
  %t73 = load ptr, ptr %l0, !tbaa !29
  store ptr %t73, ptr %l45, !tbaa !29
  %t74 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t74, ptr %l46
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load %"compiler/source:Span", ptr %l1
  %t79 = call { i64, ptr } @compiler_2fcond_2ecompiler_2fcond_3aEval_2etokText(ptr %v0, ptr %v0, ptr %t75, %"compiler/source:Span" %t76)
  store { i64, ptr } %t79, ptr %l49
  br label %bb27
bb27:
  %t80 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t81 = extractvalue { i64, ptr } %t80, 0
  %t82 = extractvalue { i64, ptr } %t80, 1
  %t83 = mul i64 %t81, 1
  %t84 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t83)
  call void @llvm.memcpy.p0.p0.i64(ptr %t84, ptr %t82, i64 %t83, i1 false)
  %t85 = insertvalue { i64, ptr } undef, i64 %t81, 0
  %t86 = insertvalue { i64, ptr } %t85, ptr %t84, 1
  %t88 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondNoMeet(ptr %v0, ptr %v0, { i64, ptr } %t86)
  store %"compiler/diagmsg:Msg" %t88, ptr %l51
  br label %bb28
bb28:
  %t89 = load ptr, ptr %l45, !tbaa !29
  %t90 = load %"compiler/source:Span", ptr %l46
  %t91 = load %"compiler/diagmsg:Msg", ptr %l51
  %t92 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2efail(ptr %v0, ptr %v0, ptr %t89, %"compiler/source:Span" %t90, %"compiler/diagmsg:Msg" %t91)
  store %"compiler/cond:Value" %t92, ptr %l52
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t93 = load %"compiler/cond:Value", ptr %l52
  store %"compiler/cond:Value" %t93, ptr %rv
  br label %ret
bb30:
  %t94 = load %"compiler/cond:Value", ptr %l40
  store %"compiler/cond:Value" %t94, ptr %l5
  %t95 = getelementptr %"compiler/cond:Value", ptr %l5, i32 0, i32 4
  %t96 = load i64, ptr %t95, !tbaa !24
  store i64 %t96, ptr %l6, !tbaa !24
  %t98 = getelementptr %"compiler/cond:Value", ptr %l5, i32 0, i32 5
  %t99 = load i1, ptr %t98, !tbaa !21
  store i1 %t99, ptr %l7, !tbaa !21
  store i64 0, ptr %l8, !tbaa !24
  store i1 false, ptr %l9, !tbaa !21
  %t101 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t103 = trunc i64 68 to i32
  %t104 = icmp eq i32 %t101, %t103
  br i1 %t104, label %bb31, label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb43
bb33:
  %t106 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 1
  %t107 = load i64, ptr %t106, !tbaa !24
  %t108 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 1
  %t109 = load i64, ptr %t108, !tbaa !24
  %t112 = add i64 %t107, %t109
  store i64 %t112, ptr %l8, !tbaa !24
  %t114 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 1
  %t115 = load i64, ptr %t114, !tbaa !24
  %t117 = icmp sgt i64 %t115, 0
  br i1 %t117, label %bb34, label %bb35
bb34:
  %t119 = load i64, ptr %l8, !tbaa !24
  %t120 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 1
  %t121 = load i64, ptr %t120, !tbaa !24
  %t124 = icmp slt i64 %t119, %t121
  store i1 %t124, ptr %l62, !tbaa !21
  br label %bb36
bb35:
  store i1 false, ptr %l62, !tbaa !21
  br label %bb36
bb36:
  %t126 = load i1, ptr %l62, !tbaa !21
  br i1 %t126, label %bb37, label %bb38
bb37:
  store i1 true, ptr %l66, !tbaa !21
  br label %bb42
bb38:
  %t127 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 1
  %t128 = load i64, ptr %t127, !tbaa !24
  %t130 = icmp slt i64 %t128, 0
  br i1 %t130, label %bb39, label %bb40
bb39:
  %t132 = load i64, ptr %l8, !tbaa !24
  %t133 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 1
  %t134 = load i64, ptr %t133, !tbaa !24
  %t137 = icmp sgt i64 %t132, %t134
  store i1 %t137, ptr %l69, !tbaa !21
  br label %bb41
bb40:
  store i1 false, ptr %l69, !tbaa !21
  br label %bb41
bb41:
  %t139 = load i1, ptr %l69, !tbaa !21
  store i1 %t139, ptr %l66, !tbaa !21
  br label %bb42
bb42:
  %t140 = load i1, ptr %l66, !tbaa !21
  store i1 %t140, ptr %l9, !tbaa !21
  br label %bb87
bb43:
  %t141 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t143 = trunc i64 69 to i32
  %t144 = icmp eq i32 %t141, %t143
  br i1 %t144, label %bb44, label %bb45
bb44:
  br label %bb46
bb45:
  br label %bb56
bb46:
  %t146 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 1
  %t147 = load i64, ptr %t146, !tbaa !24
  %t148 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 1
  %t149 = load i64, ptr %t148, !tbaa !24
  %t152 = sub i64 %t147, %t149
  store i64 %t152, ptr %l8, !tbaa !24
  %t154 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 1
  %t155 = load i64, ptr %t154, !tbaa !24
  %t157 = icmp slt i64 %t155, 0
  br i1 %t157, label %bb47, label %bb48
bb47:
  %t159 = load i64, ptr %l8, !tbaa !24
  %t160 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 1
  %t161 = load i64, ptr %t160, !tbaa !24
  %t164 = icmp slt i64 %t159, %t161
  store i1 %t164, ptr %l80, !tbaa !21
  br label %bb49
bb48:
  store i1 false, ptr %l80, !tbaa !21
  br label %bb49
bb49:
  %t166 = load i1, ptr %l80, !tbaa !21
  br i1 %t166, label %bb50, label %bb51
bb50:
  store i1 true, ptr %l84, !tbaa !21
  br label %bb55
bb51:
  %t167 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 1
  %t168 = load i64, ptr %t167, !tbaa !24
  %t170 = icmp sgt i64 %t168, 0
  br i1 %t170, label %bb52, label %bb53
bb52:
  %t172 = load i64, ptr %l8, !tbaa !24
  %t173 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 1
  %t174 = load i64, ptr %t173, !tbaa !24
  %t177 = icmp sgt i64 %t172, %t174
  store i1 %t177, ptr %l87, !tbaa !21
  br label %bb54
bb53:
  store i1 false, ptr %l87, !tbaa !21
  br label %bb54
bb54:
  %t179 = load i1, ptr %l87, !tbaa !21
  store i1 %t179, ptr %l84, !tbaa !21
  br label %bb55
bb55:
  %t180 = load i1, ptr %l84, !tbaa !21
  store i1 %t180, ptr %l9, !tbaa !21
  br label %bb87
bb56:
  %t181 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t183 = trunc i64 70 to i32
  %t184 = icmp eq i32 %t181, %t183
  br i1 %t184, label %bb57, label %bb58
bb57:
  br label %bb59
bb58:
  br label %bb69
bb59:
  %t186 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 1
  %t187 = load i64, ptr %t186, !tbaa !24
  %t188 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 1
  %t189 = load i64, ptr %t188, !tbaa !24
  %t192 = mul i64 %t187, %t189
  store i64 %t192, ptr %l8, !tbaa !24
  %t194 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 1
  %t195 = load i64, ptr %t194, !tbaa !24
  %t197 = icmp ne i64 %t195, 0
  br i1 %t197, label %bb60, label %bb61
bb60:
  %t199 = load i64, ptr %l8, !tbaa !24
  %t200 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 1
  %t201 = load i64, ptr %t200, !tbaa !24
  %t204 = sdiv i64 %t199, %t201
  %t205 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 1
  %t206 = load i64, ptr %t205, !tbaa !24
  %t209 = icmp ne i64 %t204, %t206
  br i1 %t209, label %bb62, label %bb63
bb61:
  store i1 false, ptr %l98, !tbaa !21
  br label %bb68
bb62:
  store i1 true, ptr %l104, !tbaa !21
  br label %bb67
bb63:
  %t211 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 1
  %t212 = load i64, ptr %t211, !tbaa !24
  %t214 = icmp eq i64 %t212, -1
  br i1 %t214, label %bb64, label %bb65
bb64:
  %t216 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 1
  %t217 = load i64, ptr %t216, !tbaa !24
  %t219 = icmp eq i64 %t217, -9223372036854775808
  store i1 %t219, ptr %l107, !tbaa !21
  br label %bb66
bb65:
  store i1 false, ptr %l107, !tbaa !21
  br label %bb66
bb66:
  %t221 = load i1, ptr %l107, !tbaa !21
  store i1 %t221, ptr %l104, !tbaa !21
  br label %bb67
bb67:
  %t222 = load i1, ptr %l104, !tbaa !21
  store i1 %t222, ptr %l98, !tbaa !21
  br label %bb68
bb68:
  %t223 = load i1, ptr %l98, !tbaa !21
  store i1 %t223, ptr %l9, !tbaa !21
  br label %bb87
bb69:
  br i1 true, label %bb70, label %bb71
bb70:
  br label %bb72
bb71:
  br label %bb86
bb72:
  %t224 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 1
  %t225 = load i64, ptr %t224, !tbaa !24
  %t227 = icmp eq i64 %t225, 0
  br i1 %t227, label %bb73, label %bb74
bb73:
  store i1 true, ptr %l112, !tbaa !21
  br label %bb78
bb74:
  %t229 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 1
  %t230 = load i64, ptr %t229, !tbaa !24
  %t232 = icmp eq i64 %t230, -9223372036854775808
  br i1 %t232, label %bb75, label %bb76
bb75:
  %t234 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 1
  %t235 = load i64, ptr %t234, !tbaa !24
  %t237 = icmp eq i64 %t235, -1
  store i1 %t237, ptr %l115, !tbaa !21
  br label %bb77
bb76:
  store i1 false, ptr %l115, !tbaa !21
  br label %bb77
bb77:
  %t239 = load i1, ptr %l115, !tbaa !21
  store i1 %t239, ptr %l112, !tbaa !21
  br label %bb78
bb78:
  %t240 = load i1, ptr %l112, !tbaa !21
  br i1 %t240, label %bb79, label %bb80
bb79:
  %t241 = load ptr, ptr %l0, !tbaa !29
  %t242 = load %"compiler/source:Span", ptr %l1
  %t245 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2edefer(ptr %v0, ptr %t241, %"compiler/source:Span" %t242)
  store %"compiler/cond:Value" %t245, ptr %l120
  br label %bb81
bb80:
  br label %bb82
bb81:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t246 = load %"compiler/cond:Value", ptr %l120
  store %"compiler/cond:Value" %t246, ptr %rv
  br label %ret
bb82:
  %t247 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t249 = trunc i64 72 to i32
  %t250 = icmp eq i32 %t247, %t249
  br i1 %t250, label %bb83, label %bb84
bb83:
  %t252 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 1
  %t253 = load i64, ptr %t252, !tbaa !24
  %t254 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 1
  %t255 = load i64, ptr %t254, !tbaa !24
  %t258 = sdiv i64 %t253, %t255
  store i64 %t258, ptr %l123, !tbaa !24
  br label %bb85
bb84:
  %t260 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 1
  %t261 = load i64, ptr %t260, !tbaa !24
  %t262 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 1
  %t263 = load i64, ptr %t262, !tbaa !24
  %t266 = srem i64 %t261, %t263
  store i64 %t266, ptr %l123, !tbaa !24
  br label %bb85
bb85:
  %t268 = load i64, ptr %l123, !tbaa !24
  store i64 %t268, ptr %l8, !tbaa !24
  br label %bb87
bb86:
  call void @__olang_check_failed(ptr @olang_loc_a5b50ffc6e80595c_88be7d164d57caa8)
  unreachable
bb87:
  %t269 = load i1, ptr %l9, !tbaa !21
  br i1 %t269, label %bb88, label %bb89
bb88:
  store i1 true, ptr %l131, !tbaa !21
  br label %bb94
bb89:
  %t271 = load i64, ptr %l8, !tbaa !24
  store i64 %t271, ptr %l132, !tbaa !24
  %t272 = load i64, ptr %l6, !tbaa !24
  %t274 = icmp ne i64 %t272, 0
  br i1 %t274, label %bb90, label %bb91
bb90:
  %t276 = load i64, ptr %l6, !tbaa !24
  store i64 %t276, ptr %l135, !tbaa !24
  br label %bb92
bb91:
  %t278 = load i64, ptr @G_2ecompiler_2fcond_2eLiteralIntBits, !tbaa !24
  store i64 %t278, ptr %l135, !tbaa !24
  br label %bb92
bb92:
  %t280 = load i1, ptr %l7, !tbaa !21
  %t281 = load i64, ptr %l132, !tbaa !24
  %t282 = load i64, ptr %l135, !tbaa !24
  %t284 = call i1 @compiler_2fcond_2efits(i64 %t281, i64 %t282, i1 %t280)
  store i1 %t284, ptr %l139
  br label %bb93
bb93:
  %t285 = load i1, ptr %l139, !tbaa !21
  %t286 = xor i1 %t285, true
  store i1 %t286, ptr %l131, !tbaa !21
  br label %bb94
bb94:
  %t288 = load i1, ptr %l131, !tbaa !21
  br i1 %t288, label %bb95, label %bb96
bb95:
  %t289 = load ptr, ptr %l0, !tbaa !29
  %t290 = load %"compiler/source:Span", ptr %l1
  %t293 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2edefer(ptr %v0, ptr %t289, %"compiler/source:Span" %t290)
  store %"compiler/cond:Value" %t293, ptr %l143
  br label %bb97
bb96:
  br label %bb98
bb97:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t294 = load %"compiler/cond:Value", ptr %l143
  store %"compiler/cond:Value" %t294, ptr %rv
  br label %ret
bb98:
  %t295 = load i64, ptr %l8, !tbaa !24
  %t296 = load i64, ptr %l6, !tbaa !24
  %t297 = load i1, ptr %l7, !tbaa !21
  %t302 = call %"compiler/cond:Value" @compiler_2fcond_3aValue_2ector(ptr %s3, i32 2, i64 %t295, double 0x0000000000000000, i64 0, i64 %t296, i1 %t297, i1 false)
  store %"compiler/cond:Value" %t302, ptr %l148
  br label %bb99
bb99:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t303 = load %"compiler/cond:Value", ptr %l148
  store %"compiler/cond:Value" %t303, ptr %rv
  br label %ret
bb100:
  %t304 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 0
  %t305 = load i32, ptr %t304, !range !{i32 0, i32 5}
  %t307 = trunc i64 2 to i32
  %t308 = icmp eq i32 %t305, %t307
  br i1 %t308, label %bb101, label %bb102
bb101:
  %t310 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 4
  %t311 = load i64, ptr %t310, !tbaa !24
  %t313 = icmp ne i64 %t311, 0
  store i1 %t313, ptr %l151, !tbaa !21
  br label %bb103
bb102:
  store i1 false, ptr %l151, !tbaa !21
  br label %bb103
bb103:
  %t315 = load i1, ptr %l151, !tbaa !21
  br i1 %t315, label %bb104, label %bb105
bb104:
  store i1 true, ptr %l154, !tbaa !21
  br label %bb109
bb105:
  %t316 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 0
  %t317 = load i32, ptr %t316, !range !{i32 0, i32 5}
  %t319 = trunc i64 2 to i32
  %t320 = icmp eq i32 %t317, %t319
  br i1 %t320, label %bb106, label %bb107
bb106:
  %t322 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 4
  %t323 = load i64, ptr %t322, !tbaa !24
  %t325 = icmp ne i64 %t323, 0
  store i1 %t325, ptr %l157, !tbaa !21
  br label %bb108
bb107:
  store i1 false, ptr %l157, !tbaa !21
  br label %bb108
bb108:
  %t327 = load i1, ptr %l157, !tbaa !21
  store i1 %t327, ptr %l154, !tbaa !21
  br label %bb109
bb109:
  %t328 = load i1, ptr %l154, !tbaa !21
  br i1 %t328, label %bb110, label %bb111
bb110:
  %t329 = load ptr, ptr %l0, !tbaa !29
  store ptr %t329, ptr %l160, !tbaa !29
  %t330 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t330, ptr %l161
  %t331 = load ptr, ptr %l0, !tbaa !29
  %t332 = load %"compiler/source:Span", ptr %l1
  %t335 = call { i64, ptr } @compiler_2fcond_2ecompiler_2fcond_3aEval_2etokText(ptr %v0, ptr %v0, ptr %t331, %"compiler/source:Span" %t332)
  store { i64, ptr } %t335, ptr %l164
  br label %bb112
bb111:
  br label %bb115
bb112:
  %t336 = load { i64, ptr }, ptr %l164, !tbaa !27
  %t337 = extractvalue { i64, ptr } %t336, 0
  %t338 = extractvalue { i64, ptr } %t336, 1
  %t339 = mul i64 %t337, 1
  %t340 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t339)
  call void @llvm.memcpy.p0.p0.i64(ptr %t340, ptr %t338, i64 %t339, i1 false)
  %t341 = insertvalue { i64, ptr } undef, i64 %t337, 0
  %t342 = insertvalue { i64, ptr } %t341, ptr %t340, 1
  %t344 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondNoMeet(ptr %v0, ptr %v0, { i64, ptr } %t342)
  store %"compiler/diagmsg:Msg" %t344, ptr %l166
  br label %bb113
bb113:
  %t345 = load ptr, ptr %l160, !tbaa !29
  %t346 = load %"compiler/source:Span", ptr %l161
  %t347 = load %"compiler/diagmsg:Msg", ptr %l166
  %t348 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2efail(ptr %v0, ptr %v0, ptr %t345, %"compiler/source:Span" %t346, %"compiler/diagmsg:Msg" %t347)
  store %"compiler/cond:Value" %t348, ptr %l167
  br label %bb114
bb114:
  call void @__olang_scope_close(ptr %s0)
  %t349 = load %"compiler/cond:Value", ptr %l167
  store %"compiler/cond:Value" %t349, ptr %rv
  br label %ret
bb115:
  %t350 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 2
  %t351 = load double, ptr %t350, !tbaa !26
  store double %t351, ptr %l10, !tbaa !26
  %t353 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 2
  %t354 = load double, ptr %t353, !tbaa !26
  store double %t354, ptr %l11, !tbaa !26
  %t356 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 0
  %t357 = load i32, ptr %t356, !range !{i32 0, i32 5}
  %t359 = trunc i64 2 to i32
  %t360 = icmp eq i32 %t357, %t359
  br i1 %t360, label %bb116, label %bb117
bb116:
  %t362 = load %"compiler/cond:Value", ptr %l3
  %t364 = call { i32, double } @compiler_2fcond_2easFloat(%"compiler/cond:Value" %t362)
  %t365 = extractvalue { i32, double } %t364, 1
  %t366 = extractvalue { i32, double } %t364, 0
  store i32 %t366, ptr %l175
  %t367 = icmp ne i32 %t366, 0
  br i1 %t367, label %bb119, label %ok.368, !prof !99
ok.368:
  store double %t365, ptr %l174
  br label %bb118
bb117:
  br label %bb123
bb118:
  %t369 = load double, ptr %l174, !tbaa !26
  store double %t369, ptr %l172, !tbaa !26
  br label %bb122
bb119:
  br label %bb120
bb120:
  %t370 = load ptr, ptr %l0, !tbaa !29
  %t371 = load %"compiler/source:Span", ptr %l1
  %t374 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2edefer(ptr %v0, ptr %t370, %"compiler/source:Span" %t371)
  store %"compiler/cond:Value" %t374, ptr %l178
  br label %bb121
bb121:
  call void @__olang_scope_close(ptr %s0)
  %t375 = load %"compiler/cond:Value", ptr %l178
  store %"compiler/cond:Value" %t375, ptr %rv
  br label %ret
bb122:
  %t376 = load double, ptr %l172, !tbaa !26
  store double %t376, ptr %l10, !tbaa !26
  br label %bb123
bb123:
  %t377 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 0
  %t378 = load i32, ptr %t377, !range !{i32 0, i32 5}
  %t380 = trunc i64 2 to i32
  %t381 = icmp eq i32 %t378, %t380
  br i1 %t381, label %bb124, label %bb125
bb124:
  %t383 = load %"compiler/cond:Value", ptr %l4
  %t385 = call { i32, double } @compiler_2fcond_2easFloat(%"compiler/cond:Value" %t383)
  %t386 = extractvalue { i32, double } %t385, 1
  %t387 = extractvalue { i32, double } %t385, 0
  store i32 %t387, ptr %l184
  %t388 = icmp ne i32 %t387, 0
  br i1 %t388, label %bb127, label %ok.389, !prof !99
ok.389:
  store double %t386, ptr %l183
  br label %bb126
bb125:
  br label %bb131
bb126:
  %t390 = load double, ptr %l183, !tbaa !26
  store double %t390, ptr %l181, !tbaa !26
  br label %bb130
bb127:
  br label %bb128
bb128:
  %t391 = load ptr, ptr %l0, !tbaa !29
  %t392 = load %"compiler/source:Span", ptr %l1
  %t395 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2edefer(ptr %v0, ptr %t391, %"compiler/source:Span" %t392)
  store %"compiler/cond:Value" %t395, ptr %l187
  br label %bb129
bb129:
  call void @__olang_scope_close(ptr %s0)
  %t396 = load %"compiler/cond:Value", ptr %l187
  store %"compiler/cond:Value" %t396, ptr %rv
  br label %ret
bb130:
  %t397 = load double, ptr %l181, !tbaa !26
  store double %t397, ptr %l11, !tbaa !26
  br label %bb131
bb131:
  %t398 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t400 = trunc i64 73 to i32
  %t401 = icmp eq i32 %t398, %t400
  br i1 %t401, label %bb132, label %bb133
bb132:
  %t403 = load ptr, ptr %l0, !tbaa !29
  %t404 = load %"compiler/source:Span", ptr %l1
  %t407 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2edefer(ptr %v0, ptr %t403, %"compiler/source:Span" %t404)
  store %"compiler/cond:Value" %t407, ptr %l192
  br label %bb134
bb133:
  br label %bb135
bb134:
  call void @__olang_scope_close(ptr %s0)
  %t408 = load %"compiler/cond:Value", ptr %l192
  store %"compiler/cond:Value" %t408, ptr %rv
  br label %ret
bb135:
  %t409 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 4
  %t410 = load i64, ptr %t409, !tbaa !24
  %t412 = icmp ne i64 %t410, 0
  br i1 %t412, label %bb136, label %bb137
bb136:
  store i1 true, ptr %l195, !tbaa !21
  br label %bb138
bb137:
  %t414 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 4
  %t415 = load i64, ptr %t414, !tbaa !24
  %t417 = icmp ne i64 %t415, 0
  store i1 %t417, ptr %l195, !tbaa !21
  br label %bb138
bb138:
  %t419 = load i1, ptr %l195, !tbaa !21
  br i1 %t419, label %bb139, label %bb140
bb139:
  store i64 64, ptr %l198, !tbaa !24
  br label %bb141
bb140:
  store i64 0, ptr %l198, !tbaa !24
  br label %bb141
bb141:
  %t420 = load i64, ptr %l198, !tbaa !24
  store i64 %t420, ptr %l12, !tbaa !24
  %t421 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t423 = trunc i64 68 to i32
  %t424 = icmp eq i32 %t421, %t423
  br i1 %t424, label %bb142, label %bb143
bb142:
  %t426 = load double, ptr %l10, !tbaa !26
  %t427 = load double, ptr %l11, !tbaa !26
  %t430 = fadd double %t426, %t427
  store double %t430, ptr %l201, !tbaa !26
  br label %bb150
bb143:
  %t432 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t434 = trunc i64 69 to i32
  %t435 = icmp eq i32 %t432, %t434
  br i1 %t435, label %bb144, label %bb145
bb144:
  %t437 = load double, ptr %l10, !tbaa !26
  %t438 = load double, ptr %l11, !tbaa !26
  %t441 = fsub double %t437, %t438
  store double %t441, ptr %l207, !tbaa !26
  br label %bb149
bb145:
  %t443 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t445 = trunc i64 70 to i32
  %t446 = icmp eq i32 %t443, %t445
  br i1 %t446, label %bb146, label %bb147
bb146:
  %t448 = load double, ptr %l10, !tbaa !26
  %t449 = load double, ptr %l11, !tbaa !26
  %t452 = fmul double %t448, %t449
  store double %t452, ptr %l213, !tbaa !26
  br label %bb148
bb147:
  %t454 = load double, ptr %l10, !tbaa !26
  %t455 = load double, ptr %l11, !tbaa !26
  %t458 = fdiv double %t454, %t455
  store double %t458, ptr %l213, !tbaa !26
  br label %bb148
bb148:
  %t460 = load double, ptr %l213, !tbaa !26
  store double %t460, ptr %l207, !tbaa !26
  br label %bb149
bb149:
  %t461 = load double, ptr %l207, !tbaa !26
  store double %t461, ptr %l201, !tbaa !26
  br label %bb150
bb150:
  %t462 = load double, ptr %l201, !tbaa !26
  %t464 = load i64, ptr %l12, !tbaa !24
  %t468 = call %"compiler/cond:Value" @compiler_2fcond_3aValue_2ector(ptr %s0, i32 3, i64 0, double %t462, i64 0, i64 %t464, i1 false, i1 false)
  store %"compiler/cond:Value" %t468, ptr %l223
  br label %bb151
bb151:
  call void @__olang_scope_close(ptr %s0)
  %t469 = load %"compiler/cond:Value", ptr %l223
  store %"compiler/cond:Value" %t469, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/cond:Value", ptr %rv
  ret %"compiler/cond:Value" %rr
}

define dso_local %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2easDeclared(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, %"compiler/cond:Value" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca %"compiler/cond:Value"
  %l4 = alloca %"compiler/cond:Value"
  %l5 = alloca i32
  %l11 = alloca i1
  %l14 = alloca i1
  %l22 = alloca %"compiler/cond:Value"
  %l29 = alloca %"compiler/cond:Value"
  %l33 = alloca %"compiler/cond:Value"
  %l35 = alloca %"compiler/cond:Value"
  %l43 = alloca %"compiler/cond:Value"
  %l50 = alloca %"compiler/cond:Value"
  %l55 = alloca %"compiler/cond:Value"
  %l59 = alloca %"compiler/cond:Value"
  %l64 = alloca %"compiler/cond:Value"
  %l68 = alloca %"compiler/cond:Value"
  %l71 = alloca i1
  %l74 = alloca %"compiler/cond:Value"
  %l78 = alloca %"compiler/cond:Value"
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca %"compiler/cond:Value"
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store %"compiler/cond:Value" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 0
  %t2 = load i32, ptr %t1, !range !{i32 0, i32 5}
  %t4 = trunc i64 0 to i32
  %t5 = icmp eq i32 %t2, %t4
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load %"compiler/cond:Value", ptr %l3
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/cond:Value" %t7, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t9 = load ptr, ptr %l2, !tbaa !29
  %t11 = getelementptr %"compiler/cond:Global", ptr %t9, i32 0, i32 3
  %t12 = load { i64, ptr }, ptr %t11, !tbaa !27
  %t14 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t12, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d42, i32 0, i32 1) })
  store i1 %t14, ptr %l11
  br label %bb4
bb4:
  %t15 = load i1, ptr %l11, !tbaa !21
  br i1 %t15, label %bb5, label %bb6
bb5:
  %t16 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 0
  %t17 = load i32, ptr %t16, !range !{i32 0, i32 5}
  %t19 = trunc i64 2 to i32
  %t20 = icmp eq i32 %t17, %t19
  br i1 %t20, label %bb7, label %bb8
bb6:
  br label %bb18
bb7:
  %t22 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 4
  %t23 = load i64, ptr %t22, !tbaa !24
  %t25 = icmp eq i64 %t23, 0
  store i1 %t25, ptr %l14, !tbaa !21
  br label %bb9
bb8:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb9
bb9:
  %t27 = load i1, ptr %l14, !tbaa !21
  br i1 %t27, label %bb10, label %bb11
bb10:
  store %olang.scope zeroinitializer, ptr %s3
  %t28 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 0
  %t29 = load i32, ptr %t28, !range !{i32 0, i32 5}
  %t30 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 1
  %t31 = load i64, ptr %t30, !tbaa !24
  %t32 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 2
  %t33 = load double, ptr %t32, !tbaa !26
  %t34 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 3
  %t35 = load i64, ptr %t34, !tbaa !24
  %t36 = load i64, ptr @G_2ecompiler_2fcond_2eLiteralIntBits, !tbaa !24
  %t42 = call %"compiler/cond:Value" @compiler_2fcond_3aValue_2ector(ptr %s3, i32 %t29, i64 %t31, double %t33, i64 %t35, i64 %t36, i1 false, i1 false)
  store %"compiler/cond:Value" %t42, ptr %l22
  br label %bb12
bb11:
  br label %bb13
bb12:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t43 = load %"compiler/cond:Value", ptr %l22
  store %"compiler/cond:Value" %t43, ptr %rv
  br label %ret
bb13:
  %t44 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 0
  %t45 = load i32, ptr %t44, !range !{i32 0, i32 5}
  %t47 = trunc i64 3 to i32
  %t48 = icmp eq i32 %t45, %t47
  br i1 %t48, label %bb14, label %bb15
bb14:
  store %olang.scope zeroinitializer, ptr %s4
  %t50 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 0
  %t51 = load i32, ptr %t50, !range !{i32 0, i32 5}
  %t52 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 1
  %t53 = load i64, ptr %t52, !tbaa !24
  %t54 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 2
  %t55 = load double, ptr %t54, !tbaa !26
  %t56 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 3
  %t57 = load i64, ptr %t56, !tbaa !24
  %t62 = call %"compiler/cond:Value" @compiler_2fcond_3aValue_2ector(ptr %s4, i32 %t51, i64 %t53, double %t55, i64 %t57, i64 64, i1 false, i1 false)
  store %"compiler/cond:Value" %t62, ptr %l29
  br label %bb16
bb15:
  br label %bb17
bb16:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  %t63 = load %"compiler/cond:Value", ptr %l29
  store %"compiler/cond:Value" %t63, ptr %rv
  br label %ret
bb17:
  %t64 = load %"compiler/cond:Value", ptr %l3
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/cond:Value" %t64, ptr %rv
  br label %ret
bb18:
  %t66 = load ptr, ptr %l2, !tbaa !29
  %t68 = getelementptr %"compiler/cond:Global", ptr %t66, i32 0, i32 3
  %t69 = load { i64, ptr }, ptr %t68, !tbaa !27
  %t71 = call %"compiler/cond:Value" @compiler_2fcond_2eValue_2edeclaredKind(ptr %v1, { i64, ptr } %t69)
  store %"compiler/cond:Value" %t71, ptr %l33
  br label %bb19
bb19:
  %t72 = load %"compiler/cond:Value", ptr %l33
  store %"compiler/cond:Value" %t72, ptr %l4
  %t73 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 0
  %t74 = load i32, ptr %t73, !range !{i32 0, i32 5}
  store i32 %t74, ptr %l5
  %t76 = load i32, ptr %l5, !range !{i32 0, i32 5}
  %t78 = trunc i64 2 to i32
  %t79 = icmp eq i32 %t76, %t78
  br i1 %t79, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb24
bb22:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = load %"compiler/source:Span", ptr %l1
  %t83 = load %"compiler/cond:Value", ptr %l3
  %t84 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 4
  %t85 = load i64, ptr %t84, !tbaa !24
  %t86 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 5
  %t87 = load i1, ptr %t86, !tbaa !21
  %t93 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2eintDeclared(ptr %v0, ptr %t81, %"compiler/source:Span" %t82, %"compiler/cond:Value" %t83, i64 %t85, i1 %t87)
  store %"compiler/cond:Value" %t93, ptr %l43
  br label %bb23
bb23:
  %t94 = load %"compiler/cond:Value", ptr %l43
  store %"compiler/cond:Value" %t94, ptr %l35
  br label %bb57
bb24:
  %t95 = load i32, ptr %l5, !range !{i32 0, i32 5}
  %t97 = trunc i64 3 to i32
  %t98 = icmp eq i32 %t95, %t97
  br i1 %t98, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb29
bb27:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t101 = load %"compiler/source:Span", ptr %l1
  %t102 = load %"compiler/cond:Value", ptr %l3
  %t103 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 4
  %t104 = load i64, ptr %t103, !tbaa !24
  %t109 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2efloatDeclared(ptr %v0, ptr %t100, %"compiler/source:Span" %t101, %"compiler/cond:Value" %t102, i64 %t104)
  store %"compiler/cond:Value" %t109, ptr %l50
  br label %bb28
bb28:
  %t110 = load %"compiler/cond:Value", ptr %l50
  store %"compiler/cond:Value" %t110, ptr %l35
  br label %bb57
bb29:
  %t111 = load i32, ptr %l5, !range !{i32 0, i32 5}
  %t113 = trunc i64 1 to i32
  %t114 = icmp eq i32 %t111, %t113
  br i1 %t114, label %bb30, label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb37
bb32:
  %t116 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 0
  %t117 = load i32, ptr %t116, !range !{i32 0, i32 5}
  %t119 = trunc i64 1 to i32
  %t120 = icmp eq i32 %t117, %t119
  br i1 %t120, label %bb33, label %bb34
bb33:
  %t122 = load %"compiler/cond:Value", ptr %l3
  store %"compiler/cond:Value" %t122, ptr %l55
  br label %bb36
bb34:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t125 = load %"compiler/source:Span", ptr %l1
  %t128 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2edefer(ptr %v0, ptr %t124, %"compiler/source:Span" %t125)
  store %"compiler/cond:Value" %t128, ptr %l59
  br label %bb35
bb35:
  %t129 = load %"compiler/cond:Value", ptr %l59
  store %"compiler/cond:Value" %t129, ptr %l55
  br label %bb36
bb36:
  %t130 = load %"compiler/cond:Value", ptr %l55
  store %"compiler/cond:Value" %t130, ptr %l35
  br label %bb57
bb37:
  %t131 = load i32, ptr %l5, !range !{i32 0, i32 5}
  %t133 = trunc i64 4 to i32
  %t134 = icmp eq i32 %t131, %t133
  br i1 %t134, label %bb38, label %bb39
bb38:
  br label %bb40
bb39:
  br label %bb45
bb40:
  %t136 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 0
  %t137 = load i32, ptr %t136, !range !{i32 0, i32 5}
  %t139 = trunc i64 4 to i32
  %t140 = icmp eq i32 %t137, %t139
  br i1 %t140, label %bb41, label %bb42
bb41:
  %t142 = load %"compiler/cond:Value", ptr %l3
  store %"compiler/cond:Value" %t142, ptr %l64
  br label %bb44
bb42:
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t145 = load %"compiler/source:Span", ptr %l1
  %t148 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2edefer(ptr %v0, ptr %t144, %"compiler/source:Span" %t145)
  store %"compiler/cond:Value" %t148, ptr %l68
  br label %bb43
bb43:
  %t149 = load %"compiler/cond:Value", ptr %l68
  store %"compiler/cond:Value" %t149, ptr %l64
  br label %bb44
bb44:
  %t150 = load %"compiler/cond:Value", ptr %l64
  store %"compiler/cond:Value" %t150, ptr %l35
  br label %bb57
bb45:
  br i1 true, label %bb46, label %bb47
bb46:
  br label %bb48
bb47:
  br label %bb56
bb48:
  %t151 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 0
  %t152 = load i32, ptr %t151, !range !{i32 0, i32 5}
  %t154 = trunc i64 4 to i32
  %t155 = icmp eq i32 %t152, %t154
  br i1 %t155, label %bb49, label %bb50
bb49:
  store i1 true, ptr %l71, !tbaa !21
  br label %bb51
bb50:
  %t157 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 0
  %t158 = load i32, ptr %t157, !range !{i32 0, i32 5}
  %t160 = trunc i64 1 to i32
  %t161 = icmp eq i32 %t158, %t160
  store i1 %t161, ptr %l71, !tbaa !21
  br label %bb51
bb51:
  %t163 = load i1, ptr %l71, !tbaa !21
  br i1 %t163, label %bb52, label %bb53
bb52:
  %t164 = load %"compiler/cond:Value", ptr %l3
  store %"compiler/cond:Value" %t164, ptr %l74
  br label %bb55
bb53:
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t167 = load %"compiler/source:Span", ptr %l1
  %t170 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2edefer(ptr %v0, ptr %t166, %"compiler/source:Span" %t167)
  store %"compiler/cond:Value" %t170, ptr %l78
  br label %bb54
bb54:
  %t171 = load %"compiler/cond:Value", ptr %l78
  store %"compiler/cond:Value" %t171, ptr %l74
  br label %bb55
bb55:
  %t172 = load %"compiler/cond:Value", ptr %l74
  store %"compiler/cond:Value" %t172, ptr %l35
  br label %bb57
bb56:
  call void @__olang_check_failed(ptr @olang_loc_274101562a710104_e9b847c59a86b198)
  unreachable
bb57:
  call void @__olang_scope_close(ptr %s0)
  %t173 = load %"compiler/cond:Value", ptr %l35
  store %"compiler/cond:Value" %t173, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/cond:Value", ptr %rv
  ret %"compiler/cond:Value" %rr
}

define dso_local %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2ebinary(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca ptr
  %l8 = alloca %"compiler/source:Span"
  %l10 = alloca %"compiler/source:Span"
  %l20 = alloca %"compiler/cond:Value"
  %l33 = alloca ptr
  %l34 = alloca %"compiler/source:Span"
  %l35 = alloca i32
  %l38 = alloca %"compiler/cond:Value"
  %l41 = alloca %"compiler/cond:Value"
  %l42 = alloca %"compiler/cond:Value"
  %l53 = alloca ptr
  %l54 = alloca %"compiler/source:Span"
  %l55 = alloca i32
  %l58 = alloca %"compiler/cond:Value"
  %l61 = alloca %"compiler/cond:Value"
  %l62 = alloca %"compiler/cond:Value"
  %l65 = alloca %"compiler/cond:Value"
  %l68 = alloca %"compiler/cond:Value"
  %rv = alloca %"compiler/cond:Value"
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a2, ptr %l2
  store ptr %a3, ptr %l3
  store ptr %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l6, !tbaa !29
  %t2 = load ptr, ptr %l3, !tbaa !29
  %t4 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t2)
  store %"compiler/source:Span" %t4, ptr %l8
  br label %bb1
bb1:
  %t5 = getelementptr %"compiler/source:Span", ptr %l8, i32 0, i32 1
  %t6 = load i32, ptr %t5, !tbaa !23
  %t7 = load ptr, ptr %l6, !tbaa !29
  %t9 = call %"compiler/source:Span" @compiler_2fcond_2ecompiler_2fcond_3aEval_2etokenAt(ptr %v0, ptr %t7, i32 %t6)
  store %"compiler/source:Span" %t9, ptr %l10
  br label %bb2
bb2:
  %t10 = load %"compiler/source:Span", ptr %l10
  store %"compiler/source:Span" %t10, ptr %l5
  %t11 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t13 = trunc i64 45 to i32
  %t14 = icmp eq i32 %t11, %t13
  br i1 %t14, label %bb3, label %bb4
bb3:
  br label %bb7
bb4:
  %t16 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t18 = trunc i64 46 to i32
  %t19 = icmp eq i32 %t16, %t18
  br i1 %t19, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb9
bb7:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load %"compiler/source:Span", ptr %l5
  %t23 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t24 = load ptr, ptr %l3, !tbaa !29
  %t25 = load ptr, ptr %l4, !tbaa !29
  %t31 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2elogic(ptr %v0, ptr %v1, ptr %v2, ptr %t21, %"compiler/source:Span" %t22, i32 %t23, ptr %t24, ptr %t25)
  store %"compiler/cond:Value" %t31, ptr %l20
  br label %bb8
bb8:
  %t32 = load %"compiler/cond:Value", ptr %l20
  store %"compiler/cond:Value" %t32, ptr %rv
  br label %ret
bb9:
  %t33 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t35 = trunc i64 94 to i32
  %t36 = icmp eq i32 %t33, %t35
  br i1 %t36, label %bb10, label %bb11
bb10:
  br label %bb22
bb11:
  %t38 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t40 = trunc i64 95 to i32
  %t41 = icmp eq i32 %t38, %t40
  br i1 %t41, label %bb12, label %bb13
bb12:
  br label %bb22
bb13:
  %t43 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t45 = trunc i64 97 to i32
  %t46 = icmp eq i32 %t43, %t45
  br i1 %t46, label %bb14, label %bb15
bb14:
  br label %bb22
bb15:
  %t48 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t50 = trunc i64 98 to i32
  %t51 = icmp eq i32 %t48, %t50
  br i1 %t51, label %bb16, label %bb17
bb16:
  br label %bb22
bb17:
  %t53 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t55 = trunc i64 99 to i32
  %t56 = icmp eq i32 %t53, %t55
  br i1 %t56, label %bb18, label %bb19
bb18:
  br label %bb22
bb19:
  %t58 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t60 = trunc i64 100 to i32
  %t61 = icmp eq i32 %t58, %t60
  br i1 %t61, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb26
bb22:
  %t63 = load ptr, ptr %l0, !tbaa !29
  store ptr %t63, ptr %l33, !tbaa !29
  %t64 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t64, ptr %l34
  %t65 = load i32, ptr %l2, !range !{i32 0, i32 114}
  store i32 %t65, ptr %l35
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load ptr, ptr %l3, !tbaa !29
  %t70 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2eexpr(ptr %v0, ptr %v1, ptr %t66, ptr %t67)
  store %"compiler/cond:Value" %t70, ptr %l38
  br label %bb23
bb23:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = load ptr, ptr %l4, !tbaa !29
  %t75 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2eexpr(ptr %v0, ptr %v2, ptr %t71, ptr %t72)
  store %"compiler/cond:Value" %t75, ptr %l41
  br label %bb24
bb24:
  %t76 = load ptr, ptr %l33, !tbaa !29
  %t77 = load %"compiler/source:Span", ptr %l34
  %t78 = load i32, ptr %l35, !range !{i32 0, i32 114}
  %t79 = load %"compiler/cond:Value", ptr %l38
  %t80 = load %"compiler/cond:Value", ptr %l41
  %t81 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2ecompare(ptr %v0, ptr %t76, %"compiler/source:Span" %t77, i32 %t78, %"compiler/cond:Value" %t79, %"compiler/cond:Value" %t80)
  store %"compiler/cond:Value" %t81, ptr %l42
  br label %bb25
bb25:
  %t82 = load %"compiler/cond:Value", ptr %l42
  store %"compiler/cond:Value" %t82, ptr %rv
  br label %ret
bb26:
  %t83 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t85 = trunc i64 68 to i32
  %t86 = icmp eq i32 %t83, %t85
  br i1 %t86, label %bb27, label %bb28
bb27:
  br label %bb37
bb28:
  %t88 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t90 = trunc i64 69 to i32
  %t91 = icmp eq i32 %t88, %t90
  br i1 %t91, label %bb29, label %bb30
bb29:
  br label %bb37
bb30:
  %t93 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t95 = trunc i64 70 to i32
  %t96 = icmp eq i32 %t93, %t95
  br i1 %t96, label %bb31, label %bb32
bb31:
  br label %bb37
bb32:
  %t98 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t100 = trunc i64 72 to i32
  %t101 = icmp eq i32 %t98, %t100
  br i1 %t101, label %bb33, label %bb34
bb33:
  br label %bb37
bb34:
  %t103 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t105 = trunc i64 73 to i32
  %t106 = icmp eq i32 %t103, %t105
  br i1 %t106, label %bb35, label %bb36
bb35:
  br label %bb37
bb36:
  br label %bb41
bb37:
  %t108 = load ptr, ptr %l0, !tbaa !29
  store ptr %t108, ptr %l53, !tbaa !29
  %t109 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t109, ptr %l54
  %t110 = load i32, ptr %l2, !range !{i32 0, i32 114}
  store i32 %t110, ptr %l55
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t112 = load ptr, ptr %l3, !tbaa !29
  %t115 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2eexpr(ptr %v0, ptr %v1, ptr %t111, ptr %t112)
  store %"compiler/cond:Value" %t115, ptr %l58
  br label %bb38
bb38:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t117 = load ptr, ptr %l4, !tbaa !29
  %t120 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2eexpr(ptr %v0, ptr %v2, ptr %t116, ptr %t117)
  store %"compiler/cond:Value" %t120, ptr %l61
  br label %bb39
bb39:
  %t121 = load ptr, ptr %l53, !tbaa !29
  %t122 = load %"compiler/source:Span", ptr %l54
  %t123 = load i32, ptr %l55, !range !{i32 0, i32 114}
  %t124 = load %"compiler/cond:Value", ptr %l58
  %t125 = load %"compiler/cond:Value", ptr %l61
  %t126 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2earith(ptr %v0, ptr %t121, %"compiler/source:Span" %t122, i32 %t123, %"compiler/cond:Value" %t124, %"compiler/cond:Value" %t125)
  store %"compiler/cond:Value" %t126, ptr %l62
  br label %bb40
bb40:
  %t127 = load %"compiler/cond:Value", ptr %l62
  store %"compiler/cond:Value" %t127, ptr %rv
  br label %ret
bb41:
  br i1 true, label %bb42, label %bb43
bb42:
  br label %bb44
bb43:
  br label %bb47
bb44:
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t129 = load ptr, ptr %l3, !tbaa !29
  %t132 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2eexpr(ptr %v0, ptr %v1, ptr %t128, ptr %t129)
  store %"compiler/cond:Value" %t132, ptr %l65
  br label %bb45
bb45:
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t134 = load %"compiler/source:Span", ptr %l5
  %t137 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2edefer(ptr %v0, ptr %t133, %"compiler/source:Span" %t134)
  store %"compiler/cond:Value" %t137, ptr %l68
  br label %bb46
bb46:
  %t138 = load %"compiler/cond:Value", ptr %l68
  store %"compiler/cond:Value" %t138, ptr %rv
  br label %ret
bb47:
  call void @__olang_check_failed(ptr @olang_loc_5546f0ea7c9d5f01_1e107de9ea891e15)
  unreachable
ret:
  %rr = load %"compiler/cond:Value", ptr %rv
  ret %"compiler/cond:Value" %rr
}

define dso_local %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2ecompare(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, %"compiler/cond:Value" %a3, %"compiler/cond:Value" %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i32
  %l3 = alloca %"compiler/cond:Value"
  %l4 = alloca %"compiler/cond:Value"
  %l5 = alloca i1
  %l6 = alloca i64
  %l7 = alloca double
  %l8 = alloca double
  %l11 = alloca i1
  %l17 = alloca %"compiler/cond:Value"
  %l18 = alloca %"compiler/cond:Value"
  %l19 = alloca %"compiler/cond:Value"
  %l22 = alloca i1
  %l27 = alloca i1
  %l30 = alloca i1
  %l35 = alloca { i64, ptr }
  %l39 = alloca { i64, ptr }
  %l40 = alloca i1
  %l41 = alloca i64
  %l44 = alloca i1
  %l47 = alloca i1
  %l52 = alloca i64
  %l55 = alloca i1
  %l58 = alloca %"compiler/cond:Value"
  %l61 = alloca %"compiler/cond:Value"
  %l62 = alloca i32
  %l63 = alloca ptr
  %l64 = alloca %"compiler/source:Span"
  %l67 = alloca { i64, ptr }
  %l69 = alloca %"compiler/diagmsg:Msg"
  %l70 = alloca %"compiler/cond:Value"
  %l74 = alloca i64
  %l78 = alloca i64
  %l80 = alloca i1
  %l81 = alloca i1
  %l83 = alloca i1
  %l86 = alloca i1
  %l89 = alloca i1
  %l92 = alloca i1
  %l95 = alloca ptr
  %l96 = alloca %"compiler/source:Span"
  %l99 = alloca { i64, ptr }
  %l101 = alloca %"compiler/diagmsg:Msg"
  %l102 = alloca %"compiler/cond:Value"
  %l107 = alloca double
  %l109 = alloca double
  %l110 = alloca i32
  %l113 = alloca %"compiler/cond:Value"
  %l116 = alloca double
  %l118 = alloca double
  %l119 = alloca i32
  %l122 = alloca %"compiler/cond:Value"
  %l126 = alloca i1
  %l132 = alloca %"compiler/cond:Value"
  %l136 = alloca i64
  %l140 = alloca i64
  %l141 = alloca ptr
  %l142 = alloca %"compiler/source:Span"
  %l145 = alloca { i64, ptr }
  %l147 = alloca %"compiler/diagmsg:Msg"
  %l148 = alloca %"compiler/cond:Value"
  %l149 = alloca %"compiler/cond:Value"
  %l154 = alloca %"compiler/cond:Value"
  %l159 = alloca %"compiler/cond:Value"
  %l164 = alloca %"compiler/cond:Value"
  %l169 = alloca %"compiler/cond:Value"
  %l174 = alloca %"compiler/cond:Value"
  %l177 = alloca %"compiler/cond:Value"
  %rv = alloca %"compiler/cond:Value"
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a2, ptr %l2
  store %"compiler/cond:Value" %a3, ptr %l3
  store %"compiler/cond:Value" %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 0
  %t2 = load i32, ptr %t1, !range !{i32 0, i32 5}
  %t4 = trunc i64 0 to i32
  %t5 = icmp eq i32 %t2, %t4
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb3
bb2:
  %t7 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 0
  %t8 = load i32, ptr %t7, !range !{i32 0, i32 5}
  %t10 = trunc i64 0 to i32
  %t11 = icmp eq i32 %t8, %t10
  store i1 %t11, ptr %l11, !tbaa !21
  br label %bb3
bb3:
  %t13 = load i1, ptr %l11, !tbaa !21
  br i1 %t13, label %bb4, label %bb5
bb4:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/cond:Eval", ptr %t14, i32 0, i32 10
  %t17 = load i64, ptr %t16, !tbaa !24
  %t19 = icmp sgt i64 %t17, 0
  br i1 %t19, label %bb6, label %bb7
bb5:
  br label %bb11
bb6:
  %t21 = call %"compiler/cond:Value" @compiler_2fcond_2eValue_2ebool(i1 false)
  store %"compiler/cond:Value" %t21, ptr %l18
  br label %bb8
bb7:
  %t22 = call %"compiler/cond:Value" @compiler_2fcond_2eValue_2enone()
  store %"compiler/cond:Value" %t22, ptr %l19
  br label %bb9
bb8:
  %t23 = load %"compiler/cond:Value", ptr %l18
  store %"compiler/cond:Value" %t23, ptr %l17
  br label %bb10
bb9:
  %t24 = load %"compiler/cond:Value", ptr %l19
  store %"compiler/cond:Value" %t24, ptr %l17
  br label %bb10
bb10:
  %t25 = load %"compiler/cond:Value", ptr %l17
  store %"compiler/cond:Value" %t25, ptr %rv
  br label %ret
bb11:
  %t26 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t28 = trunc i64 94 to i32
  %t29 = icmp eq i32 %t26, %t28
  br i1 %t29, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb14
bb13:
  %t31 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t33 = trunc i64 95 to i32
  %t34 = icmp eq i32 %t31, %t33
  store i1 %t34, ptr %l22, !tbaa !21
  br label %bb14
bb14:
  %t36 = load i1, ptr %l22, !tbaa !21
  store i1 %t36, ptr %l5, !tbaa !21
  store i64 0, ptr %l6, !tbaa !24
  %t37 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 0
  %t38 = load i32, ptr %t37, !range !{i32 0, i32 5}
  %t40 = trunc i64 4 to i32
  %t41 = icmp eq i32 %t38, %t40
  br i1 %t41, label %bb15, label %bb16
bb15:
  %t43 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 0
  %t44 = load i32, ptr %t43, !range !{i32 0, i32 5}
  %t46 = trunc i64 4 to i32
  %t47 = icmp eq i32 %t44, %t46
  store i1 %t47, ptr %l27, !tbaa !21
  br label %bb17
bb16:
  store i1 false, ptr %l27, !tbaa !21
  br label %bb17
bb17:
  %t49 = load i1, ptr %l27, !tbaa !21
  br i1 %t49, label %bb18, label %bb19
bb18:
  %t50 = load i1, ptr %l5, !tbaa !21
  store i1 %t50, ptr %l30, !tbaa !21
  br label %bb20
bb19:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb20
bb20:
  %t52 = load i1, ptr %l30, !tbaa !21
  br i1 %t52, label %bb21, label %bb22
bb21:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/cond:Eval", ptr %t53, i32 0, i32 12
  %t56 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 3
  %t57 = load i64, ptr %t56, !tbaa !24
  %t60 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t55, i64 %t57)
  store { i64, ptr } %t60, ptr %l35
  br label %bb23
bb22:
  %t61 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 0
  %t62 = load i32, ptr %t61, !range !{i32 0, i32 5}
  %t64 = trunc i64 1 to i32
  %t65 = icmp eq i32 %t62, %t64
  br i1 %t65, label %bb29, label %bb30
bb23:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/cond:Eval", ptr %t67, i32 0, i32 12
  %t70 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 3
  %t71 = load i64, ptr %t70, !tbaa !24
  %t74 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t69, i64 %t71)
  store { i64, ptr } %t74, ptr %l39
  br label %bb24
bb24:
  %t75 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t76 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t77 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v0, { i64, ptr } %t75, { i64, ptr } %t76)
  store i1 %t77, ptr %l40
  br label %bb25
bb25:
  %t78 = load i1, ptr %l40, !tbaa !21
  br i1 %t78, label %bb26, label %bb27
bb26:
  store i64 0, ptr %l41, !tbaa !24
  br label %bb28
bb27:
  store i64 1, ptr %l41, !tbaa !24
  br label %bb28
bb28:
  %t79 = load i64, ptr %l41, !tbaa !24
  store i64 %t79, ptr %l6, !tbaa !24
  br label %bb115
bb29:
  %t80 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 0
  %t81 = load i32, ptr %t80, !range !{i32 0, i32 5}
  %t83 = trunc i64 1 to i32
  %t84 = icmp eq i32 %t81, %t83
  store i1 %t84, ptr %l44, !tbaa !21
  br label %bb31
bb30:
  store i1 false, ptr %l44, !tbaa !21
  br label %bb31
bb31:
  %t86 = load i1, ptr %l44, !tbaa !21
  br i1 %t86, label %bb32, label %bb33
bb32:
  %t87 = load i1, ptr %l5, !tbaa !21
  store i1 %t87, ptr %l47, !tbaa !21
  br label %bb34
bb33:
  store i1 false, ptr %l47, !tbaa !21
  br label %bb34
bb34:
  %t89 = load i1, ptr %l47, !tbaa !21
  br i1 %t89, label %bb35, label %bb36
bb35:
  %t90 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 1
  %t91 = load i64, ptr %t90, !tbaa !24
  %t92 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 1
  %t93 = load i64, ptr %t92, !tbaa !24
  %t96 = icmp eq i64 %t91, %t93
  br i1 %t96, label %bb37, label %bb38
bb36:
  %t98 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 0
  %t99 = load i32, ptr %t98, !range !{i32 0, i32 5}
  %t101 = trunc i64 2 to i32
  %t102 = icmp eq i32 %t99, %t101
  br i1 %t102, label %bb40, label %bb41
bb37:
  store i64 0, ptr %l52, !tbaa !24
  br label %bb39
bb38:
  store i64 1, ptr %l52, !tbaa !24
  br label %bb39
bb39:
  %t104 = load i64, ptr %l52, !tbaa !24
  store i64 %t104, ptr %l6, !tbaa !24
  br label %bb114
bb40:
  %t105 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 0
  %t106 = load i32, ptr %t105, !range !{i32 0, i32 5}
  %t108 = trunc i64 2 to i32
  %t109 = icmp eq i32 %t106, %t108
  store i1 %t109, ptr %l55, !tbaa !21
  br label %bb42
bb41:
  store i1 false, ptr %l55, !tbaa !21
  br label %bb42
bb42:
  %t111 = load i1, ptr %l55, !tbaa !21
  br i1 %t111, label %bb43, label %bb44
bb43:
  %t112 = load %"compiler/cond:Value", ptr %l3
  %t113 = load %"compiler/cond:Value", ptr %l4
  %t116 = call { i32, %"compiler/cond:Value" } @compiler_2fcond_2emeet(%"compiler/cond:Value" %t112, %"compiler/cond:Value" %t113)
  %t117 = extractvalue { i32, %"compiler/cond:Value" } %t116, 1
  %t118 = extractvalue { i32, %"compiler/cond:Value" } %t116, 0
  store i32 %t118, ptr %l62
  %t119 = icmp ne i32 %t118, 0
  br i1 %t119, label %bb46, label %ok.120, !prof !99
ok.120:
  store %"compiler/cond:Value" %t117, ptr %l61
  br label %bb45
bb44:
  %t121 = load %"compiler/cond:Value", ptr %l3
  %t123 = call i1 @compiler_2fcond_2enumeric(%"compiler/cond:Value" %t121)
  store i1 %t123, ptr %l80
  br label %bb58
bb45:
  %t124 = load %"compiler/cond:Value", ptr %l61
  store %"compiler/cond:Value" %t124, ptr %l58
  br label %bb51
bb46:
  br label %bb47
bb47:
  %t125 = load ptr, ptr %l0, !tbaa !29
  store ptr %t125, ptr %l63, !tbaa !29
  %t126 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t126, ptr %l64
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t128 = load %"compiler/source:Span", ptr %l1
  %t131 = call { i64, ptr } @compiler_2fcond_2ecompiler_2fcond_3aEval_2etokText(ptr %v0, ptr %v0, ptr %t127, %"compiler/source:Span" %t128)
  store { i64, ptr } %t131, ptr %l67
  br label %bb48
bb48:
  %t132 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t133 = extractvalue { i64, ptr } %t132, 0
  %t134 = extractvalue { i64, ptr } %t132, 1
  %t135 = mul i64 %t133, 1
  %t136 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t135)
  call void @llvm.memcpy.p0.p0.i64(ptr %t136, ptr %t134, i64 %t135, i1 false)
  %t137 = insertvalue { i64, ptr } undef, i64 %t133, 0
  %t138 = insertvalue { i64, ptr } %t137, ptr %t136, 1
  %t140 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondNoMeet(ptr %v0, ptr %v0, { i64, ptr } %t138)
  store %"compiler/diagmsg:Msg" %t140, ptr %l69
  br label %bb49
bb49:
  %t141 = load ptr, ptr %l63, !tbaa !29
  %t142 = load %"compiler/source:Span", ptr %l64
  %t143 = load %"compiler/diagmsg:Msg", ptr %l69
  %t144 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2efail(ptr %v0, ptr %v0, ptr %t141, %"compiler/source:Span" %t142, %"compiler/diagmsg:Msg" %t143)
  store %"compiler/cond:Value" %t144, ptr %l70
  br label %bb50
bb50:
  %t145 = load %"compiler/cond:Value", ptr %l70
  store %"compiler/cond:Value" %t145, ptr %rv
  br label %ret
bb51:
  %t146 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 1
  %t147 = load i64, ptr %t146, !tbaa !24
  %t148 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 1
  %t149 = load i64, ptr %t148, !tbaa !24
  %t152 = icmp slt i64 %t147, %t149
  br i1 %t152, label %bb52, label %bb53
bb52:
  store i64 -1, ptr %l74, !tbaa !24
  br label %bb57
bb53:
  %t154 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 1
  %t155 = load i64, ptr %t154, !tbaa !24
  %t156 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 1
  %t157 = load i64, ptr %t156, !tbaa !24
  %t160 = icmp sgt i64 %t155, %t157
  br i1 %t160, label %bb54, label %bb55
bb54:
  store i64 1, ptr %l78, !tbaa !24
  br label %bb56
bb55:
  store i64 0, ptr %l78, !tbaa !24
  br label %bb56
bb56:
  %t162 = load i64, ptr %l78, !tbaa !24
  store i64 %t162, ptr %l74, !tbaa !24
  br label %bb57
bb57:
  %t163 = load i64, ptr %l74, !tbaa !24
  store i64 %t163, ptr %l6, !tbaa !24
  br label %bb113
bb58:
  %t164 = load i1, ptr %l80, !tbaa !21
  br i1 %t164, label %bb59, label %bb60
bb59:
  %t165 = load %"compiler/cond:Value", ptr %l4
  %t167 = call i1 @compiler_2fcond_2enumeric(%"compiler/cond:Value" %t165)
  store i1 %t167, ptr %l83
  br label %bb61
bb60:
  store i1 false, ptr %l81, !tbaa !21
  br label %bb62
bb61:
  %t168 = load i1, ptr %l83, !tbaa !21
  store i1 %t168, ptr %l81, !tbaa !21
  br label %bb62
bb62:
  %t169 = load i1, ptr %l81, !tbaa !21
  br i1 %t169, label %bb63, label %bb64
bb63:
  %t170 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 0
  %t171 = load i32, ptr %t170, !range !{i32 0, i32 5}
  %t173 = trunc i64 2 to i32
  %t174 = icmp eq i32 %t171, %t173
  br i1 %t174, label %bb65, label %bb66
bb64:
  %t176 = load ptr, ptr %l0, !tbaa !29
  store ptr %t176, ptr %l141, !tbaa !29
  %t177 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t177, ptr %l142
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t179 = load %"compiler/source:Span", ptr %l1
  %t182 = call { i64, ptr } @compiler_2fcond_2ecompiler_2fcond_3aEval_2etokText(ptr %v0, ptr %v0, ptr %t178, %"compiler/source:Span" %t179)
  store { i64, ptr } %t182, ptr %l145
  br label %bb109
bb65:
  %t183 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 4
  %t184 = load i64, ptr %t183, !tbaa !24
  %t186 = icmp ne i64 %t184, 0
  store i1 %t186, ptr %l86, !tbaa !21
  br label %bb67
bb66:
  store i1 false, ptr %l86, !tbaa !21
  br label %bb67
bb67:
  %t188 = load i1, ptr %l86, !tbaa !21
  br i1 %t188, label %bb68, label %bb69
bb68:
  store i1 true, ptr %l89, !tbaa !21
  br label %bb73
bb69:
  %t189 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 0
  %t190 = load i32, ptr %t189, !range !{i32 0, i32 5}
  %t192 = trunc i64 2 to i32
  %t193 = icmp eq i32 %t190, %t192
  br i1 %t193, label %bb70, label %bb71
bb70:
  %t195 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 4
  %t196 = load i64, ptr %t195, !tbaa !24
  %t198 = icmp ne i64 %t196, 0
  store i1 %t198, ptr %l92, !tbaa !21
  br label %bb72
bb71:
  store i1 false, ptr %l92, !tbaa !21
  br label %bb72
bb72:
  %t200 = load i1, ptr %l92, !tbaa !21
  store i1 %t200, ptr %l89, !tbaa !21
  br label %bb73
bb73:
  %t201 = load i1, ptr %l89, !tbaa !21
  br i1 %t201, label %bb74, label %bb75
bb74:
  %t202 = load ptr, ptr %l0, !tbaa !29
  store ptr %t202, ptr %l95, !tbaa !29
  %t203 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t203, ptr %l96
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t205 = load %"compiler/source:Span", ptr %l1
  %t208 = call { i64, ptr } @compiler_2fcond_2ecompiler_2fcond_3aEval_2etokText(ptr %v0, ptr %v0, ptr %t204, %"compiler/source:Span" %t205)
  store { i64, ptr } %t208, ptr %l99
  br label %bb76
bb75:
  br label %bb79
bb76:
  %t209 = load { i64, ptr }, ptr %l99, !tbaa !27
  %t210 = extractvalue { i64, ptr } %t209, 0
  %t211 = extractvalue { i64, ptr } %t209, 1
  %t212 = mul i64 %t210, 1
  %t213 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t212)
  call void @llvm.memcpy.p0.p0.i64(ptr %t213, ptr %t211, i64 %t212, i1 false)
  %t214 = insertvalue { i64, ptr } undef, i64 %t210, 0
  %t215 = insertvalue { i64, ptr } %t214, ptr %t213, 1
  %t217 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondNoMeet(ptr %v0, ptr %v0, { i64, ptr } %t215)
  store %"compiler/diagmsg:Msg" %t217, ptr %l101
  br label %bb77
bb77:
  %t218 = load ptr, ptr %l95, !tbaa !29
  %t219 = load %"compiler/source:Span", ptr %l96
  %t220 = load %"compiler/diagmsg:Msg", ptr %l101
  %t221 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2efail(ptr %v0, ptr %v0, ptr %t218, %"compiler/source:Span" %t219, %"compiler/diagmsg:Msg" %t220)
  store %"compiler/cond:Value" %t221, ptr %l102
  br label %bb78
bb78:
  %t222 = load %"compiler/cond:Value", ptr %l102
  store %"compiler/cond:Value" %t222, ptr %rv
  br label %ret
bb79:
  %t223 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 2
  %t224 = load double, ptr %t223, !tbaa !26
  store double %t224, ptr %l7, !tbaa !26
  %t226 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 2
  %t227 = load double, ptr %t226, !tbaa !26
  store double %t227, ptr %l8, !tbaa !26
  %t229 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 0
  %t230 = load i32, ptr %t229, !range !{i32 0, i32 5}
  %t232 = trunc i64 2 to i32
  %t233 = icmp eq i32 %t230, %t232
  br i1 %t233, label %bb80, label %bb81
bb80:
  %t235 = load %"compiler/cond:Value", ptr %l3
  %t237 = call { i32, double } @compiler_2fcond_2easFloat(%"compiler/cond:Value" %t235)
  %t238 = extractvalue { i32, double } %t237, 1
  %t239 = extractvalue { i32, double } %t237, 0
  store i32 %t239, ptr %l110
  %t240 = icmp ne i32 %t239, 0
  br i1 %t240, label %bb83, label %ok.241, !prof !99
ok.241:
  store double %t238, ptr %l109
  br label %bb82
bb81:
  br label %bb87
bb82:
  %t242 = load double, ptr %l109, !tbaa !26
  store double %t242, ptr %l107, !tbaa !26
  br label %bb86
bb83:
  br label %bb84
bb84:
  %t243 = load ptr, ptr %l0, !tbaa !29
  %t244 = load %"compiler/source:Span", ptr %l1
  %t247 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2edefer(ptr %v0, ptr %t243, %"compiler/source:Span" %t244)
  store %"compiler/cond:Value" %t247, ptr %l113
  br label %bb85
bb85:
  %t248 = load %"compiler/cond:Value", ptr %l113
  store %"compiler/cond:Value" %t248, ptr %rv
  br label %ret
bb86:
  %t249 = load double, ptr %l107, !tbaa !26
  store double %t249, ptr %l7, !tbaa !26
  br label %bb87
bb87:
  %t250 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 0
  %t251 = load i32, ptr %t250, !range !{i32 0, i32 5}
  %t253 = trunc i64 2 to i32
  %t254 = icmp eq i32 %t251, %t253
  br i1 %t254, label %bb88, label %bb89
bb88:
  %t256 = load %"compiler/cond:Value", ptr %l4
  %t258 = call { i32, double } @compiler_2fcond_2easFloat(%"compiler/cond:Value" %t256)
  %t259 = extractvalue { i32, double } %t258, 1
  %t260 = extractvalue { i32, double } %t258, 0
  store i32 %t260, ptr %l119
  %t261 = icmp ne i32 %t260, 0
  br i1 %t261, label %bb91, label %ok.262, !prof !99
ok.262:
  store double %t259, ptr %l118
  br label %bb90
bb89:
  br label %bb95
bb90:
  %t263 = load double, ptr %l118, !tbaa !26
  store double %t263, ptr %l116, !tbaa !26
  br label %bb94
bb91:
  br label %bb92
bb92:
  %t264 = load ptr, ptr %l0, !tbaa !29
  %t265 = load %"compiler/source:Span", ptr %l1
  %t268 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2edefer(ptr %v0, ptr %t264, %"compiler/source:Span" %t265)
  store %"compiler/cond:Value" %t268, ptr %l122
  br label %bb93
bb93:
  %t269 = load %"compiler/cond:Value", ptr %l122
  store %"compiler/cond:Value" %t269, ptr %rv
  br label %ret
bb94:
  %t270 = load double, ptr %l116, !tbaa !26
  store double %t270, ptr %l8, !tbaa !26
  br label %bb95
bb95:
  %t271 = load double, ptr %l7, !tbaa !26
  %t272 = load double, ptr %l7, !tbaa !26
  %t275 = fcmp une double %t271, %t272
  br i1 %t275, label %bb96, label %bb97
bb96:
  store i1 true, ptr %l126, !tbaa !21
  br label %bb98
bb97:
  %t277 = load double, ptr %l8, !tbaa !26
  %t278 = load double, ptr %l8, !tbaa !26
  %t281 = fcmp une double %t277, %t278
  store i1 %t281, ptr %l126, !tbaa !21
  br label %bb98
bb98:
  %t283 = load i1, ptr %l126, !tbaa !21
  br i1 %t283, label %bb99, label %bb100
bb99:
  %t284 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t286 = trunc i64 95 to i32
  %t287 = icmp eq i32 %t284, %t286
  %t289 = call %"compiler/cond:Value" @compiler_2fcond_2eValue_2ebool(i1 %t287)
  store %"compiler/cond:Value" %t289, ptr %l132
  br label %bb101
bb100:
  br label %bb102
bb101:
  %t290 = load %"compiler/cond:Value", ptr %l132
  store %"compiler/cond:Value" %t290, ptr %rv
  br label %ret
bb102:
  %t291 = load double, ptr %l7, !tbaa !26
  %t292 = load double, ptr %l8, !tbaa !26
  %t295 = fcmp olt double %t291, %t292
  br i1 %t295, label %bb103, label %bb104
bb103:
  store i64 -1, ptr %l136, !tbaa !24
  br label %bb108
bb104:
  %t297 = load double, ptr %l7, !tbaa !26
  %t298 = load double, ptr %l8, !tbaa !26
  %t301 = fcmp ogt double %t297, %t298
  br i1 %t301, label %bb105, label %bb106
bb105:
  store i64 1, ptr %l140, !tbaa !24
  br label %bb107
bb106:
  store i64 0, ptr %l140, !tbaa !24
  br label %bb107
bb107:
  %t303 = load i64, ptr %l140, !tbaa !24
  store i64 %t303, ptr %l136, !tbaa !24
  br label %bb108
bb108:
  %t304 = load i64, ptr %l136, !tbaa !24
  store i64 %t304, ptr %l6, !tbaa !24
  br label %bb112
bb109:
  %t305 = load { i64, ptr }, ptr %l145, !tbaa !27
  %t306 = extractvalue { i64, ptr } %t305, 0
  %t307 = extractvalue { i64, ptr } %t305, 1
  %t308 = mul i64 %t306, 1
  %t309 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t308)
  call void @llvm.memcpy.p0.p0.i64(ptr %t309, ptr %t307, i64 %t308, i1 false)
  %t310 = insertvalue { i64, ptr } undef, i64 %t306, 0
  %t311 = insertvalue { i64, ptr } %t310, ptr %t309, 1
  %t313 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondTypes(ptr %v0, ptr %v0, { i64, ptr } %t311)
  store %"compiler/diagmsg:Msg" %t313, ptr %l147
  br label %bb110
bb110:
  %t314 = load ptr, ptr %l141, !tbaa !29
  %t315 = load %"compiler/source:Span", ptr %l142
  %t316 = load %"compiler/diagmsg:Msg", ptr %l147
  %t317 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2efail(ptr %v0, ptr %v0, ptr %t314, %"compiler/source:Span" %t315, %"compiler/diagmsg:Msg" %t316)
  store %"compiler/cond:Value" %t317, ptr %l148
  br label %bb111
bb111:
  %t318 = load %"compiler/cond:Value", ptr %l148
  store %"compiler/cond:Value" %t318, ptr %rv
  br label %ret
bb112:
  br label %bb113
bb113:
  br label %bb114
bb114:
  br label %bb115
bb115:
  %t319 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t321 = trunc i64 94 to i32
  %t322 = icmp eq i32 %t319, %t321
  br i1 %t322, label %bb116, label %bb117
bb116:
  br label %bb118
bb117:
  br label %bb120
bb118:
  %t324 = load i64, ptr %l6, !tbaa !24
  %t326 = icmp eq i64 %t324, 0
  %t328 = call %"compiler/cond:Value" @compiler_2fcond_2eValue_2ebool(i1 %t326)
  store %"compiler/cond:Value" %t328, ptr %l154
  br label %bb119
bb119:
  %t329 = load %"compiler/cond:Value", ptr %l154
  store %"compiler/cond:Value" %t329, ptr %l149
  br label %bb146
bb120:
  %t330 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t332 = trunc i64 95 to i32
  %t333 = icmp eq i32 %t330, %t332
  br i1 %t333, label %bb121, label %bb122
bb121:
  br label %bb123
bb122:
  br label %bb125
bb123:
  %t335 = load i64, ptr %l6, !tbaa !24
  %t337 = icmp ne i64 %t335, 0
  %t339 = call %"compiler/cond:Value" @compiler_2fcond_2eValue_2ebool(i1 %t337)
  store %"compiler/cond:Value" %t339, ptr %l159
  br label %bb124
bb124:
  %t340 = load %"compiler/cond:Value", ptr %l159
  store %"compiler/cond:Value" %t340, ptr %l149
  br label %bb146
bb125:
  %t341 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t343 = trunc i64 97 to i32
  %t344 = icmp eq i32 %t341, %t343
  br i1 %t344, label %bb126, label %bb127
bb126:
  br label %bb128
bb127:
  br label %bb130
bb128:
  %t346 = load i64, ptr %l6, !tbaa !24
  %t348 = icmp slt i64 %t346, 0
  %t350 = call %"compiler/cond:Value" @compiler_2fcond_2eValue_2ebool(i1 %t348)
  store %"compiler/cond:Value" %t350, ptr %l164
  br label %bb129
bb129:
  %t351 = load %"compiler/cond:Value", ptr %l164
  store %"compiler/cond:Value" %t351, ptr %l149
  br label %bb146
bb130:
  %t352 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t354 = trunc i64 98 to i32
  %t355 = icmp eq i32 %t352, %t354
  br i1 %t355, label %bb131, label %bb132
bb131:
  br label %bb133
bb132:
  br label %bb135
bb133:
  %t357 = load i64, ptr %l6, !tbaa !24
  %t359 = icmp sle i64 %t357, 0
  %t361 = call %"compiler/cond:Value" @compiler_2fcond_2eValue_2ebool(i1 %t359)
  store %"compiler/cond:Value" %t361, ptr %l169
  br label %bb134
bb134:
  %t362 = load %"compiler/cond:Value", ptr %l169
  store %"compiler/cond:Value" %t362, ptr %l149
  br label %bb146
bb135:
  %t363 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t365 = trunc i64 99 to i32
  %t366 = icmp eq i32 %t363, %t365
  br i1 %t366, label %bb136, label %bb137
bb136:
  br label %bb138
bb137:
  br label %bb140
bb138:
  %t368 = load i64, ptr %l6, !tbaa !24
  %t370 = icmp sgt i64 %t368, 0
  %t372 = call %"compiler/cond:Value" @compiler_2fcond_2eValue_2ebool(i1 %t370)
  store %"compiler/cond:Value" %t372, ptr %l174
  br label %bb139
bb139:
  %t373 = load %"compiler/cond:Value", ptr %l174
  store %"compiler/cond:Value" %t373, ptr %l149
  br label %bb146
bb140:
  br i1 true, label %bb141, label %bb142
bb141:
  br label %bb143
bb142:
  br label %bb145
bb143:
  %t374 = load i64, ptr %l6, !tbaa !24
  %t376 = icmp sge i64 %t374, 0
  %t378 = call %"compiler/cond:Value" @compiler_2fcond_2eValue_2ebool(i1 %t376)
  store %"compiler/cond:Value" %t378, ptr %l177
  br label %bb144
bb144:
  %t379 = load %"compiler/cond:Value", ptr %l177
  store %"compiler/cond:Value" %t379, ptr %l149
  br label %bb146
bb145:
  call void @__olang_check_failed(ptr @olang_loc_82ba276e77283333_2c83aa9106e5aedf)
  unreachable
bb146:
  %t380 = load %"compiler/cond:Value", ptr %l149
  store %"compiler/cond:Value" %t380, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/cond:Value", ptr %rv
  ret %"compiler/cond:Value" %rr
}

define dso_local %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2econstValue(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/cond:Value"
  %l7 = alloca %"compiler/cond:Value"
  %l12 = alloca i32
  %l13 = alloca i64
  %l14 = alloca double
  %l15 = alloca ptr
  %l20 = alloca { i64, ptr }
  %l21 = alloca i64
  %l24 = alloca %"compiler/cond:Value"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/cond:Value"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/cond:Eval", ptr %t1, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/cond:Consts", ptr %t4, i32 0, i32 1
  %t10 = call %"compiler/cond:Value" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcond_3aValue_3e_2eAt_3ccompiler_2fcond_3aValue_3e(ptr %v0, ptr %t6, i64 %a1)
  store %"compiler/cond:Value" %t10, ptr %l7
  br label %bb1
bb1:
  %t11 = load %"compiler/cond:Value", ptr %l7
  store %"compiler/cond:Value" %t11, ptr %l2
  %t12 = getelementptr %"compiler/cond:Value", ptr %l2, i32 0, i32 0
  %t13 = load i32, ptr %t12, !range !{i32 0, i32 5}
  %t15 = trunc i64 4 to i32
  %t16 = icmp eq i32 %t13, %t15
  %t18 = xor i1 %t16, true
  br i1 %t18, label %bb2, label %bb3
bb2:
  %t20 = load %"compiler/cond:Value", ptr %l2
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/cond:Value" %t20, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t22 = getelementptr %"compiler/cond:Value", ptr %l2, i32 0, i32 0
  %t23 = load i32, ptr %t22, !range !{i32 0, i32 5}
  store i32 %t23, ptr %l12
  %t24 = getelementptr %"compiler/cond:Value", ptr %l2, i32 0, i32 1
  %t25 = load i64, ptr %t24, !tbaa !24
  store i64 %t25, ptr %l13, !tbaa !24
  %t26 = getelementptr %"compiler/cond:Value", ptr %l2, i32 0, i32 2
  %t27 = load double, ptr %t26, !tbaa !26
  store double %t27, ptr %l14, !tbaa !26
  %t28 = load ptr, ptr %l0, !tbaa !29
  store ptr %t28, ptr %l15, !tbaa !29
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/cond:Eval", ptr %t29, i32 0, i32 3
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t34 = getelementptr %"compiler/cond:Consts", ptr %t32, i32 0, i32 6
  %t35 = getelementptr %"compiler/cond:Value", ptr %l2, i32 0, i32 3
  %t36 = load i64, ptr %t35, !tbaa !24
  %t39 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t34, i64 %t36)
  store { i64, ptr } %t39, ptr %l20
  br label %bb5
bb5:
  %t40 = load ptr, ptr %l15, !tbaa !29
  %t41 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t42 = call i64 @compiler_2fcond_2ecompiler_2fcond_3aEval_2eaddText(ptr %v0, ptr %v0, ptr %t40, { i64, ptr } %t41)
  store i64 %t42, ptr %l21
  br label %bb6
bb6:
  %t43 = getelementptr %"compiler/cond:Value", ptr %l2, i32 0, i32 4
  %t44 = load i64, ptr %t43, !tbaa !24
  %t45 = getelementptr %"compiler/cond:Value", ptr %l2, i32 0, i32 5
  %t46 = load i1, ptr %t45, !tbaa !21
  %t47 = load i32, ptr %l12, !range !{i32 0, i32 5}
  %t48 = load i64, ptr %l13, !tbaa !24
  %t49 = load double, ptr %l14, !tbaa !26
  %t50 = load i64, ptr %l21, !tbaa !24
  %t53 = call %"compiler/cond:Value" @compiler_2fcond_3aValue_2ector(ptr %s0, i32 %t47, i64 %t48, double %t49, i64 %t50, i64 %t44, i1 %t46, i1 false)
  store %"compiler/cond:Value" %t53, ptr %l24
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s0)
  %t54 = load %"compiler/cond:Value", ptr %l24
  store %"compiler/cond:Value" %t54, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/cond:Value", ptr %rv
  ret %"compiler/cond:Value" %rr
}

define dso_local %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2edefer(ptr %v0, ptr %a0, %"compiler/source:Span" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l5 = alloca %"compiler/cond:Value"
  %l10 = alloca ptr
  %l11 = alloca %"compiler/source:Span"
  %l14 = alloca { i64, ptr }
  %l16 = alloca %"compiler/diagmsg:Msg"
  %l17 = alloca %"compiler/cond:Value"
  %rv = alloca %"compiler/cond:Value"
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/cond:Eval", ptr %t1, i32 0, i32 10
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp sgt i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = call %"compiler/cond:Value" @compiler_2fcond_2eValue_2enone()
  store %"compiler/cond:Value" %t8, ptr %l5
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t9 = load %"compiler/cond:Value", ptr %l5
  store %"compiler/cond:Value" %t9, ptr %rv
  br label %ret
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/cond:Eval", ptr %t10, i32 0, i32 4
  %t13 = load i1, ptr %t12, !tbaa !21
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb5, label %bb6
bb5:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/cond:Eval", ptr %t17, i32 0, i32 5
  store i1 true, ptr %t19, !tbaa !21
  br label %bb7
bb6:
  br label %bb7
bb7:
  %t20 = load ptr, ptr %l0, !tbaa !29
  store ptr %t20, ptr %l10, !tbaa !29
  %t21 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t21, ptr %l11
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load %"compiler/source:Span", ptr %l1
  %t26 = call { i64, ptr } @compiler_2fcond_2ecompiler_2fcond_3aEval_2etokText(ptr %v0, ptr %v0, ptr %t22, %"compiler/source:Span" %t23)
  store { i64, ptr } %t26, ptr %l14
  br label %bb8
bb8:
  %t27 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t28 = extractvalue { i64, ptr } %t27, 0
  %t29 = extractvalue { i64, ptr } %t27, 1
  %t30 = mul i64 %t28, 1
  %t31 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t30)
  call void @llvm.memcpy.p0.p0.i64(ptr %t31, ptr %t29, i64 %t30, i1 false)
  %t32 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t33 = insertvalue { i64, ptr } %t32, ptr %t31, 1
  %t35 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondName(ptr %v0, ptr %v0, { i64, ptr } %t33)
  store %"compiler/diagmsg:Msg" %t35, ptr %l16
  br label %bb9
bb9:
  %t36 = load ptr, ptr %l10, !tbaa !29
  %t37 = load %"compiler/source:Span", ptr %l11
  %t38 = load %"compiler/diagmsg:Msg", ptr %l16
  %t39 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2efail(ptr %v0, ptr %v0, ptr %t36, %"compiler/source:Span" %t37, %"compiler/diagmsg:Msg" %t38)
  store %"compiler/cond:Value" %t39, ptr %l17
  br label %bb10
bb10:
  %t40 = load %"compiler/cond:Value", ptr %l17
  store %"compiler/cond:Value" %t40, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/cond:Value", ptr %rv
  ret %"compiler/cond:Value" %rr
}

define dso_local %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2edefinedValue(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l3 = alloca i64
  %l4 = alloca %"compiler/cond:Value"
  %l5 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i32
  %l13 = alloca %"compiler/cond:Value"
  %l18 = alloca i1
  %l21 = alloca %"compiler/cond:Value"
  %l24 = alloca %"compiler/cond:Value"
  %l29 = alloca %"compiler/cond:Value"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/cond:Value"
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/cond:Eval", ptr %t1, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t8 = call { i32, i64 } @compiler_2fcond_2ecompiler_2fcond_3aConsts_2efind(ptr %v0, ptr %v1, ptr %t4, { i64, ptr } %a2)
  %t9 = extractvalue { i32, i64 } %t8, 1
  %t10 = extractvalue { i32, i64 } %t8, 0
  store i32 %t10, ptr %l10
  %t11 = icmp ne i32 %t10, 0
  br i1 %t11, label %bb2, label %ok.12, !prof !99
ok.12:
  store i64 %t9, ptr %l9
  br label %bb1
bb1:
  %t13 = load i64, ptr %l9, !tbaa !24
  store i64 %t13, ptr %l5, !tbaa !24
  br label %bb5
bb2:
  br label %bb3
bb3:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load %"compiler/source:Span", ptr %l1
  %t18 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2edefer(ptr %v0, ptr %t14, %"compiler/source:Span" %t15)
  store %"compiler/cond:Value" %t18, ptr %l13
  br label %bb4
bb4:
  call void @__olang_scope_close(ptr %s0)
  %t19 = load %"compiler/cond:Value", ptr %l13
  store %"compiler/cond:Value" %t19, ptr %rv
  br label %ret
bb5:
  %t20 = load i64, ptr %l5, !tbaa !24
  store i64 %t20, ptr %l3, !tbaa !24
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/cond:Eval", ptr %t21, i32 0, i32 3
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t26 = getelementptr %"compiler/cond:Consts", ptr %t24, i32 0, i32 3
  %t27 = load i64, ptr %l3, !tbaa !24
  %t30 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t26, i64 %t27)
  store i1 %t30, ptr %l18
  br label %bb6
bb6:
  %t31 = load i1, ptr %l18, !tbaa !21
  br i1 %t31, label %bb7, label %bb8
bb7:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load %"compiler/source:Span", ptr %l1
  %t36 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2edefer(ptr %v0, ptr %t32, %"compiler/source:Span" %t33)
  store %"compiler/cond:Value" %t36, ptr %l21
  br label %bb9
bb8:
  br label %bb10
bb9:
  call void @__olang_scope_close(ptr %s0)
  %t37 = load %"compiler/cond:Value", ptr %l21
  store %"compiler/cond:Value" %t37, ptr %rv
  br label %ret
bb10:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t39 = load i64, ptr %l3, !tbaa !24
  %t42 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2econstValue(ptr %v0, ptr %t38, i64 %t39)
  store %"compiler/cond:Value" %t42, ptr %l24
  br label %bb11
bb11:
  %t43 = load %"compiler/cond:Value", ptr %l24
  store %"compiler/cond:Value" %t43, ptr %l4
  %t44 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 0
  %t45 = load i32, ptr %t44, !range !{i32 0, i32 5}
  %t46 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 1
  %t47 = load i64, ptr %t46, !tbaa !24
  %t48 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 2
  %t49 = load double, ptr %t48, !tbaa !26
  %t50 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 3
  %t51 = load i64, ptr %t50, !tbaa !24
  %t56 = call %"compiler/cond:Value" @compiler_2fcond_3aValue_2ector(ptr %s0, i32 %t45, i64 %t47, double %t49, i64 %t51, i64 0, i1 false, i1 false)
  store %"compiler/cond:Value" %t56, ptr %l29
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s0)
  %t57 = load %"compiler/cond:Value", ptr %l29
  store %"compiler/cond:Value" %t57, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/cond:Value", ptr %rv
  ret %"compiler/cond:Value" %rr
}

define dso_local %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2eexpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca %"compiler/source:Span"
  %l8 = alloca i32
  %l9 = alloca ptr
  %l10 = alloca %"compiler/source:Span"
  %l11 = alloca i32
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca %"compiler/cond:Value"
  %l15 = alloca ptr
  %l16 = alloca i1
  %l26 = alloca %"compiler/cond:Value"
  %l27 = alloca ptr
  %l28 = alloca i1
  %l38 = alloca %"compiler/cond:Value"
  %l39 = alloca ptr
  %l40 = alloca i1
  %l47 = alloca %"compiler/cond:Value"
  %l48 = alloca ptr
  %l49 = alloca i1
  %l62 = alloca %"compiler/cond:Value"
  %l63 = alloca ptr
  %l64 = alloca i1
  %l80 = alloca %"compiler/cond:Value"
  %l81 = alloca ptr
  %l84 = alloca %"compiler/source:Span"
  %l85 = alloca %"compiler/cond:Value"
  %rv = alloca %"compiler/cond:Value"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l15, !tbaa !29
  store i1 false, ptr %l16, !tbaa !21
  %t2 = load ptr, ptr %l15, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l15, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 1
  store i1 %t8, ptr %l16, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l16, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32 }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l2
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32 }, ptr %t18, i32 0, i32 1
  %t20 = load i32, ptr %t19, !range !{i32 0, i32 114}
  store i32 %t20, ptr %l3
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load %"compiler/source:Span", ptr %l2
  %t24 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t28 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2eliteral(ptr %v0, ptr %t22, %"compiler/source:Span" %t23, i32 %t24)
  store %"compiler/cond:Value" %t28, ptr %l26
  br label %bb6
bb6:
  %t29 = load %"compiler/cond:Value", ptr %l26
  store %"compiler/cond:Value" %t29, ptr %l14
  br label %bb42
bb7:
  %t30 = load ptr, ptr %l1, !tbaa !29
  store ptr %t30, ptr %l27, !tbaa !29
  store i1 false, ptr %l28, !tbaa !21
  %t31 = load ptr, ptr %l27, !tbaa !29
  %t32 = icmp ne ptr %t31, null
  br i1 %t32, label %bb8, label %bb9
bb8:
  %t34 = load ptr, ptr %l27, !tbaa !29
  %t35 = load i64, ptr %t34, !range !{i64 0, i64 30}
  %t37 = icmp eq i64 %t35, 0
  store i1 %t37, ptr %l28, !tbaa !21
  br label %bb9
bb9:
  %t38 = load i1, ptr %l28, !tbaa !21
  br i1 %t38, label %bb10, label %bb11
bb10:
  %t39 = load ptr, ptr %l1, !tbaa !29
  %t41 = getelementptr { i64, [4 x i64] }, ptr %t39, i32 0, i32 1
  %t42 = getelementptr { %"compiler/source:Span", i32 }, ptr %t41, i32 0, i32 0
  %t43 = load %"compiler/source:Span", ptr %t42
  store %"compiler/source:Span" %t43, ptr %l4
  %t45 = load ptr, ptr %l1, !tbaa !29
  %t47 = getelementptr { i64, [4 x i64] }, ptr %t45, i32 0, i32 1
  %t48 = getelementptr { %"compiler/source:Span", i32 }, ptr %t47, i32 0, i32 1
  %t49 = load i32, ptr %t48
  store i32 %t49, ptr %l5, !tbaa !23
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = load %"compiler/source:Span", ptr %l4
  %t53 = load i32, ptr %l5, !tbaa !23
  %t57 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2ename(ptr %v0, ptr %t51, %"compiler/source:Span" %t52, i32 %t53)
  store %"compiler/cond:Value" %t57, ptr %l38
  br label %bb13
bb13:
  %t58 = load %"compiler/cond:Value", ptr %l38
  store %"compiler/cond:Value" %t58, ptr %l14
  br label %bb42
bb14:
  %t59 = load ptr, ptr %l1, !tbaa !29
  store ptr %t59, ptr %l39, !tbaa !29
  store i1 false, ptr %l40, !tbaa !21
  %t60 = load ptr, ptr %l39, !tbaa !29
  %t61 = icmp ne ptr %t60, null
  br i1 %t61, label %bb15, label %bb16
bb15:
  %t63 = load ptr, ptr %l39, !tbaa !29
  %t64 = load i64, ptr %t63, !range !{i64 0, i64 30}
  %t66 = icmp eq i64 %t64, 2
  store i1 %t66, ptr %l40, !tbaa !21
  br label %bb16
bb16:
  %t67 = load i1, ptr %l40, !tbaa !21
  br i1 %t67, label %bb17, label %bb18
bb17:
  %t68 = load ptr, ptr %l1, !tbaa !29
  %t70 = getelementptr { i64, [4 x i64] }, ptr %t68, i32 0, i32 1
  %t71 = getelementptr { %"compiler/source:Span", ptr }, ptr %t70, i32 0, i32 1
  %t72 = load ptr, ptr %t71
  store ptr %t72, ptr %l6, !tbaa !29
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load ptr, ptr %l6, !tbaa !29
  %t78 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2eexpr(ptr %v0, ptr %v1, ptr %t74, ptr %t75)
  store %"compiler/cond:Value" %t78, ptr %l47
  br label %bb20
bb20:
  %t79 = load %"compiler/cond:Value", ptr %l47
  store %"compiler/cond:Value" %t79, ptr %l14
  br label %bb42
bb21:
  %t80 = load ptr, ptr %l1, !tbaa !29
  store ptr %t80, ptr %l48, !tbaa !29
  store i1 false, ptr %l49, !tbaa !21
  %t81 = load ptr, ptr %l48, !tbaa !29
  %t82 = icmp ne ptr %t81, null
  br i1 %t82, label %bb22, label %bb23
bb22:
  %t84 = load ptr, ptr %l48, !tbaa !29
  %t85 = load i64, ptr %t84, !range !{i64 0, i64 30}
  %t87 = icmp eq i64 %t85, 3
  store i1 %t87, ptr %l49, !tbaa !21
  br label %bb23
bb23:
  %t88 = load i1, ptr %l49, !tbaa !21
  br i1 %t88, label %bb24, label %bb25
bb24:
  %t89 = load ptr, ptr %l1, !tbaa !29
  %t91 = getelementptr { i64, [4 x i64] }, ptr %t89, i32 0, i32 1
  %t92 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t91, i32 0, i32 0
  %t93 = load %"compiler/source:Span", ptr %t92
  store %"compiler/source:Span" %t93, ptr %l7
  %t95 = load ptr, ptr %l1, !tbaa !29
  %t97 = getelementptr { i64, [4 x i64] }, ptr %t95, i32 0, i32 1
  %t98 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t97, i32 0, i32 1
  %t99 = load i32, ptr %t98, !range !{i32 0, i32 114}
  store i32 %t99, ptr %l8
  %t101 = load ptr, ptr %l1, !tbaa !29
  %t103 = getelementptr { i64, [4 x i64] }, ptr %t101, i32 0, i32 1
  %t104 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t103, i32 0, i32 2
  %t105 = load ptr, ptr %t104
  store ptr %t105, ptr %l9, !tbaa !29
  br label %bb26
bb25:
  br label %bb28
bb26:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load %"compiler/source:Span", ptr %l7
  %t109 = load i32, ptr %l8, !range !{i32 0, i32 114}
  %t110 = load ptr, ptr %l9, !tbaa !29
  %t115 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2eunary(ptr %v0, ptr %v1, ptr %t107, %"compiler/source:Span" %t108, i32 %t109, ptr %t110)
  store %"compiler/cond:Value" %t115, ptr %l62
  br label %bb27
bb27:
  %t116 = load %"compiler/cond:Value", ptr %l62
  store %"compiler/cond:Value" %t116, ptr %l14
  br label %bb42
bb28:
  %t117 = load ptr, ptr %l1, !tbaa !29
  store ptr %t117, ptr %l63, !tbaa !29
  store i1 false, ptr %l64, !tbaa !21
  %t118 = load ptr, ptr %l63, !tbaa !29
  %t119 = icmp ne ptr %t118, null
  br i1 %t119, label %bb29, label %bb30
bb29:
  %t121 = load ptr, ptr %l63, !tbaa !29
  %t122 = load i64, ptr %t121, !range !{i64 0, i64 30}
  %t124 = icmp eq i64 %t122, 5
  store i1 %t124, ptr %l64, !tbaa !21
  br label %bb30
bb30:
  %t125 = load i1, ptr %l64, !tbaa !21
  br i1 %t125, label %bb31, label %bb32
bb31:
  %t126 = load ptr, ptr %l1, !tbaa !29
  %t128 = getelementptr { i64, [4 x i64] }, ptr %t126, i32 0, i32 1
  %t129 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t128, i32 0, i32 0
  %t130 = load %"compiler/source:Span", ptr %t129
  store %"compiler/source:Span" %t130, ptr %l10
  %t132 = load ptr, ptr %l1, !tbaa !29
  %t134 = getelementptr { i64, [4 x i64] }, ptr %t132, i32 0, i32 1
  %t135 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t134, i32 0, i32 1
  %t136 = load i32, ptr %t135, !range !{i32 0, i32 114}
  store i32 %t136, ptr %l11
  %t138 = load ptr, ptr %l1, !tbaa !29
  %t140 = getelementptr { i64, [4 x i64] }, ptr %t138, i32 0, i32 1
  %t141 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t140, i32 0, i32 2
  %t142 = load ptr, ptr %t141
  store ptr %t142, ptr %l12, !tbaa !29
  %t144 = load ptr, ptr %l1, !tbaa !29
  %t146 = getelementptr { i64, [4 x i64] }, ptr %t144, i32 0, i32 1
  %t147 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t146, i32 0, i32 3
  %t148 = load ptr, ptr %t147
  store ptr %t148, ptr %l13, !tbaa !29
  br label %bb33
bb32:
  br label %bb35
bb33:
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t151 = load %"compiler/source:Span", ptr %l10
  %t152 = load i32, ptr %l11, !range !{i32 0, i32 114}
  %t153 = load ptr, ptr %l12, !tbaa !29
  %t154 = load ptr, ptr %l13, !tbaa !29
  %t160 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2ebinary(ptr %v0, ptr %v1, ptr %v1, ptr %t150, %"compiler/source:Span" %t151, i32 %t152, ptr %t153, ptr %t154)
  store %"compiler/cond:Value" %t160, ptr %l80
  br label %bb34
bb34:
  %t161 = load %"compiler/cond:Value", ptr %l80
  store %"compiler/cond:Value" %t161, ptr %l14
  br label %bb42
bb35:
  br i1 true, label %bb36, label %bb37
bb36:
  br label %bb38
bb37:
  br label %bb41
bb38:
  %t162 = load ptr, ptr %l0, !tbaa !29
  store ptr %t162, ptr %l81, !tbaa !29
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t164 = load ptr, ptr %l1, !tbaa !29
  %t167 = call %"compiler/source:Span" @compiler_2fcond_2ecompiler_2fcond_3aEval_2efirst(ptr %v0, ptr %v1, ptr %t163, ptr %t164)
  store %"compiler/source:Span" %t167, ptr %l84
  br label %bb39
bb39:
  %t168 = load ptr, ptr %l81, !tbaa !29
  %t169 = load %"compiler/source:Span", ptr %l84
  %t170 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2edefer(ptr %v0, ptr %t168, %"compiler/source:Span" %t169)
  store %"compiler/cond:Value" %t170, ptr %l85
  br label %bb40
bb40:
  %t171 = load %"compiler/cond:Value", ptr %l85
  store %"compiler/cond:Value" %t171, ptr %l14
  br label %bb42
bb41:
  call void @__olang_check_failed(ptr @olang_loc_4f7f4596ea7a5dcf_15046327e746a0a3)
  unreachable
bb42:
  %t172 = load %"compiler/cond:Value", ptr %l14
  store %"compiler/cond:Value" %t172, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/cond:Value", ptr %rv
  ret %"compiler/cond:Value" %rr
}

define dso_local %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2efail(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/diagmsg:Msg" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l9 = alloca ptr
  %l11 = alloca %"compiler/diagmsg:Msg"
  %l14 = alloca %"compiler/cond:Value"
  %rv = alloca %"compiler/cond:Value"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/cond:Eval", ptr %t1, i32 0, i32 4
  %t4 = load i1, ptr %t3, !tbaa !21
  %t6 = xor i1 %t4, true
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/cond:Eval", ptr %t8, i32 0, i32 4
  store i1 true, ptr %t10, !tbaa !21
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/cond:Eval", ptr %t11, i32 0, i32 7
  store %"compiler/source:Span" %a1, ptr %t15
  %t16 = load ptr, ptr %l0, !tbaa !29
  store ptr %t16, ptr %l9, !tbaa !29
  %t18 = load ptr, ptr %l9, !tbaa !29
  %t19 = getelementptr %"compiler/cond:Eval", ptr %t18, i32 0, i32 8
  %t20 = load %"compiler/diagmsg:Msg", ptr %t19
  store %"compiler/diagmsg:Msg" %t20, ptr %l11
  %t22 = load ptr, ptr %l9, !tbaa !29
  %t23 = getelementptr %"compiler/cond:Eval", ptr %t22, i32 0, i32 8
  store %"compiler/diagmsg:Msg" %a2, ptr %t23
  %t24 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e1
  br i1 %t24, label %bb3, label %bb4
bb2:
  br label %bb7
bb3:
  %t26 = getelementptr %"compiler/diagmsg:Msg", ptr %l11, i32 0, i32 1
  %t27 = load { i64, ptr }, ptr %t26
  %t28 = extractvalue { i64, ptr } %t27, 1
  call void @__olang_region_release(ptr %t28)
  store { i64, ptr } zeroinitializer, ptr %t26
  br label %bb4
bb4:
  %t29 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t29, label %bb5, label %bb6
bb5:
  %t31 = getelementptr %"compiler/diagmsg:Msg", ptr %l11, i32 0, i32 2
  %t32 = load { i64, ptr }, ptr %t31
  %t33 = extractvalue { i64, ptr } %t32, 1
  call void @__olang_region_release(ptr %t33)
  store { i64, ptr } zeroinitializer, ptr %t31
  br label %bb6
bb6:
  br label %bb7
bb7:
  %t34 = call %"compiler/cond:Value" @compiler_2fcond_2eValue_2enone()
  store %"compiler/cond:Value" %t34, ptr %l14
  br label %bb8
bb8:
  %t35 = load %"compiler/cond:Value", ptr %l14
  store %"compiler/cond:Value" %t35, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/cond:Value", ptr %rv
  ret %"compiler/cond:Value" %rr
}

define dso_local %"compiler/source:Span" @compiler_2fcond_2ecompiler_2fcond_3aEval_2efirst(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca %"compiler/source:Span"
  %l8 = alloca %"compiler/source:Span"
  %l9 = alloca ptr
  %l10 = alloca i1
  %l17 = alloca %"compiler/source:Span"
  %l18 = alloca ptr
  %l19 = alloca i1
  %l26 = alloca { i64, ptr }
  %l28 = alloca %"compiler/source:Span"
  %l29 = alloca ptr
  %l30 = alloca i1
  %l37 = alloca %"compiler/source:Span"
  %l38 = alloca ptr
  %l39 = alloca i1
  %l44 = alloca ptr
  %l45 = alloca i1
  %l50 = alloca ptr
  %l51 = alloca i1
  %l58 = alloca %"compiler/source:Span"
  %l59 = alloca ptr
  %l60 = alloca i1
  %l65 = alloca ptr
  %l66 = alloca i1
  %l71 = alloca ptr
  %l72 = alloca i1
  %l79 = alloca %"compiler/source:Span"
  %l80 = alloca ptr
  %l81 = alloca i1
  %l86 = alloca ptr
  %l87 = alloca i1
  %l93 = alloca ptr
  %l95 = alloca %"compiler/source:Span"
  %l97 = alloca %"compiler/source:Span"
  %rv = alloca %"compiler/source:Span"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l9, !tbaa !29
  store i1 false, ptr %l10, !tbaa !21
  %t2 = load ptr, ptr %l9, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l9, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 5
  store i1 %t8, ptr %l10, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l10, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t20 = call %"compiler/source:Span" @compiler_2fcond_2ecompiler_2fcond_3aEval_2efirst(ptr %v0, ptr %v1, ptr %t16, ptr %t17)
  store %"compiler/source:Span" %t20, ptr %l17
  br label %bb6
bb6:
  %t21 = load %"compiler/source:Span", ptr %l17
  store %"compiler/source:Span" %t21, ptr %l8
  br label %bb68
bb7:
  %t22 = load ptr, ptr %l1, !tbaa !29
  store ptr %t22, ptr %l18, !tbaa !29
  store i1 false, ptr %l19, !tbaa !21
  %t23 = load ptr, ptr %l18, !tbaa !29
  %t24 = icmp ne ptr %t23, null
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t26 = load ptr, ptr %l18, !tbaa !29
  %t27 = load i64, ptr %t26, !range !{i64 0, i64 30}
  %t29 = icmp eq i64 %t27, 7
  store i1 %t29, ptr %l19, !tbaa !21
  br label %bb9
bb9:
  %t30 = load i1, ptr %l19, !tbaa !21
  br i1 %t30, label %bb10, label %bb11
bb10:
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t33 = getelementptr { i64, [4 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { %"compiler/source:Span", ptr }, ptr %t33, i32 0, i32 1
  %t35 = load ptr, ptr %t34
  store ptr %t35, ptr %l3, !tbaa !29
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load ptr, ptr %l3, !tbaa !29
  %t40 = getelementptr %"compiler/ast:Chain", ptr %t38, i32 0, i32 1
  %t41 = load { i64, ptr }, ptr %t40, !tbaa !27
  store { i64, ptr } %t41, ptr %l26, !tbaa !27
  %t42 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !27
  %t44 = getelementptr ptr, ptr %t43, i64 0
  %t45 = load ptr, ptr %t44, !tbaa !39
  %t48 = call %"compiler/source:Span" @compiler_2fcond_2ecompiler_2fcond_3aEval_2efirst(ptr %v0, ptr %v1, ptr %t37, ptr %t45)
  store %"compiler/source:Span" %t48, ptr %l28
  br label %bb13
bb13:
  %t49 = load %"compiler/source:Span", ptr %l28
  store %"compiler/source:Span" %t49, ptr %l8
  br label %bb68
bb14:
  %t50 = load ptr, ptr %l1, !tbaa !29
  store ptr %t50, ptr %l29, !tbaa !29
  store i1 false, ptr %l30, !tbaa !21
  %t51 = load ptr, ptr %l29, !tbaa !29
  %t52 = icmp ne ptr %t51, null
  br i1 %t52, label %bb15, label %bb16
bb15:
  %t54 = load ptr, ptr %l29, !tbaa !29
  %t55 = load i64, ptr %t54, !range !{i64 0, i64 30}
  %t57 = icmp eq i64 %t55, 8
  store i1 %t57, ptr %l30, !tbaa !21
  br label %bb16
bb16:
  %t58 = load i1, ptr %l30, !tbaa !21
  br i1 %t58, label %bb17, label %bb18
bb17:
  %t59 = load ptr, ptr %l1, !tbaa !29
  %t61 = getelementptr { i64, [4 x i64] }, ptr %t59, i32 0, i32 1
  %t62 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t61, i32 0, i32 1
  %t63 = load ptr, ptr %t62
  store ptr %t63, ptr %l4, !tbaa !29
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load ptr, ptr %l4, !tbaa !29
  %t69 = call %"compiler/source:Span" @compiler_2fcond_2ecompiler_2fcond_3aEval_2efirst(ptr %v0, ptr %v1, ptr %t65, ptr %t66)
  store %"compiler/source:Span" %t69, ptr %l37
  br label %bb20
bb20:
  %t70 = load %"compiler/source:Span", ptr %l37
  store %"compiler/source:Span" %t70, ptr %l8
  br label %bb68
bb21:
  %t71 = load ptr, ptr %l1, !tbaa !29
  store ptr %t71, ptr %l38, !tbaa !29
  store i1 false, ptr %l39, !tbaa !21
  %t72 = load ptr, ptr %l38, !tbaa !29
  %t73 = icmp ne ptr %t72, null
  br i1 %t73, label %bb22, label %bb23
bb22:
  %t75 = load ptr, ptr %l38, !tbaa !29
  %t76 = load i64, ptr %t75, !range !{i64 0, i64 30}
  %t78 = icmp eq i64 %t76, 12
  store i1 %t78, ptr %l39, !tbaa !21
  br label %bb23
bb23:
  %t79 = load i1, ptr %l39, !tbaa !21
  br i1 %t79, label %bb24, label %bb25
bb24:
  %t80 = load ptr, ptr %l1, !tbaa !29
  %t82 = getelementptr { i64, [4 x i64] }, ptr %t80, i32 0, i32 1
  %t83 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t82, i32 0, i32 1
  %t84 = load ptr, ptr %t83
  store ptr %t84, ptr %l5, !tbaa !29
  br label %bb34
bb25:
  %t86 = load ptr, ptr %l1, !tbaa !29
  store ptr %t86, ptr %l44, !tbaa !29
  store i1 false, ptr %l45, !tbaa !21
  %t87 = load ptr, ptr %l44, !tbaa !29
  %t88 = icmp ne ptr %t87, null
  br i1 %t88, label %bb26, label %bb27
bb26:
  %t90 = load ptr, ptr %l44, !tbaa !29
  %t91 = load i64, ptr %t90, !range !{i64 0, i64 30}
  %t93 = icmp eq i64 %t91, 14
  store i1 %t93, ptr %l45, !tbaa !21
  br label %bb27
bb27:
  %t94 = load i1, ptr %l45, !tbaa !21
  br i1 %t94, label %bb28, label %bb29
bb28:
  %t95 = load ptr, ptr %l1, !tbaa !29
  %t97 = getelementptr { i64, [4 x i64] }, ptr %t95, i32 0, i32 1
  %t98 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t97, i32 0, i32 1
  %t99 = load ptr, ptr %t98
  store ptr %t99, ptr %l5, !tbaa !29
  br label %bb34
bb29:
  %t101 = load ptr, ptr %l1, !tbaa !29
  store ptr %t101, ptr %l50, !tbaa !29
  store i1 false, ptr %l51, !tbaa !21
  %t102 = load ptr, ptr %l50, !tbaa !29
  %t103 = icmp ne ptr %t102, null
  br i1 %t103, label %bb30, label %bb31
bb30:
  %t105 = load ptr, ptr %l50, !tbaa !29
  %t106 = load i64, ptr %t105, !range !{i64 0, i64 30}
  %t108 = icmp eq i64 %t106, 15
  store i1 %t108, ptr %l51, !tbaa !21
  br label %bb31
bb31:
  %t109 = load i1, ptr %l51, !tbaa !21
  br i1 %t109, label %bb32, label %bb33
bb32:
  %t110 = load ptr, ptr %l1, !tbaa !29
  %t112 = getelementptr { i64, [4 x i64] }, ptr %t110, i32 0, i32 1
  %t113 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t112, i32 0, i32 1
  %t114 = load ptr, ptr %t113
  store ptr %t114, ptr %l5, !tbaa !29
  br label %bb34
bb33:
  br label %bb36
bb34:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t117 = load ptr, ptr %l5, !tbaa !29
  %t120 = call %"compiler/source:Span" @compiler_2fcond_2ecompiler_2fcond_3aEval_2efirst(ptr %v0, ptr %v1, ptr %t116, ptr %t117)
  store %"compiler/source:Span" %t120, ptr %l58
  br label %bb35
bb35:
  %t121 = load %"compiler/source:Span", ptr %l58
  store %"compiler/source:Span" %t121, ptr %l8
  br label %bb68
bb36:
  %t122 = load ptr, ptr %l1, !tbaa !29
  store ptr %t122, ptr %l59, !tbaa !29
  store i1 false, ptr %l60, !tbaa !21
  %t123 = load ptr, ptr %l59, !tbaa !29
  %t124 = icmp ne ptr %t123, null
  br i1 %t124, label %bb37, label %bb38
bb37:
  %t126 = load ptr, ptr %l59, !tbaa !29
  %t127 = load i64, ptr %t126, !range !{i64 0, i64 30}
  %t129 = icmp eq i64 %t127, 10
  store i1 %t129, ptr %l60, !tbaa !21
  br label %bb38
bb38:
  %t130 = load i1, ptr %l60, !tbaa !21
  br i1 %t130, label %bb39, label %bb40
bb39:
  %t131 = load ptr, ptr %l1, !tbaa !29
  %t133 = getelementptr { i64, [4 x i64] }, ptr %t131, i32 0, i32 1
  %t134 = getelementptr { %"compiler/source:Span", ptr, ptr, i1 }, ptr %t133, i32 0, i32 1
  %t135 = load ptr, ptr %t134
  store ptr %t135, ptr %l6, !tbaa !29
  br label %bb49
bb40:
  %t137 = load ptr, ptr %l1, !tbaa !29
  store ptr %t137, ptr %l65, !tbaa !29
  store i1 false, ptr %l66, !tbaa !21
  %t138 = load ptr, ptr %l65, !tbaa !29
  %t139 = icmp ne ptr %t138, null
  br i1 %t139, label %bb41, label %bb42
bb41:
  %t141 = load ptr, ptr %l65, !tbaa !29
  %t142 = load i64, ptr %t141, !range !{i64 0, i64 30}
  %t144 = icmp eq i64 %t142, 9
  store i1 %t144, ptr %l66, !tbaa !21
  br label %bb42
bb42:
  %t145 = load i1, ptr %l66, !tbaa !21
  br i1 %t145, label %bb43, label %bb44
bb43:
  %t146 = load ptr, ptr %l1, !tbaa !29
  %t148 = getelementptr { i64, [4 x i64] }, ptr %t146, i32 0, i32 1
  %t149 = getelementptr { %"compiler/source:Span", ptr, ptr, i1 }, ptr %t148, i32 0, i32 1
  %t150 = load ptr, ptr %t149
  store ptr %t150, ptr %l6, !tbaa !29
  br label %bb49
bb44:
  %t152 = load ptr, ptr %l1, !tbaa !29
  store ptr %t152, ptr %l71, !tbaa !29
  store i1 false, ptr %l72, !tbaa !21
  %t153 = load ptr, ptr %l71, !tbaa !29
  %t154 = icmp ne ptr %t153, null
  br i1 %t154, label %bb45, label %bb46
bb45:
  %t156 = load ptr, ptr %l71, !tbaa !29
  %t157 = load i64, ptr %t156, !range !{i64 0, i64 30}
  %t159 = icmp eq i64 %t157, 11
  store i1 %t159, ptr %l72, !tbaa !21
  br label %bb46
bb46:
  %t160 = load i1, ptr %l72, !tbaa !21
  br i1 %t160, label %bb47, label %bb48
bb47:
  %t161 = load ptr, ptr %l1, !tbaa !29
  %t163 = getelementptr { i64, [4 x i64] }, ptr %t161, i32 0, i32 1
  %t164 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t163, i32 0, i32 1
  %t165 = load ptr, ptr %t164
  store ptr %t165, ptr %l6, !tbaa !29
  br label %bb49
bb48:
  br label %bb51
bb49:
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t168 = load ptr, ptr %l6, !tbaa !29
  %t171 = call %"compiler/source:Span" @compiler_2fcond_2ecompiler_2fcond_3aEval_2efirst(ptr %v0, ptr %v1, ptr %t167, ptr %t168)
  store %"compiler/source:Span" %t171, ptr %l79
  br label %bb50
bb50:
  %t172 = load %"compiler/source:Span", ptr %l79
  store %"compiler/source:Span" %t172, ptr %l8
  br label %bb68
bb51:
  %t173 = load ptr, ptr %l1, !tbaa !29
  store ptr %t173, ptr %l80, !tbaa !29
  store i1 false, ptr %l81, !tbaa !21
  %t174 = load ptr, ptr %l80, !tbaa !29
  %t175 = icmp ne ptr %t174, null
  br i1 %t175, label %bb52, label %bb53
bb52:
  %t177 = load ptr, ptr %l80, !tbaa !29
  %t178 = load i64, ptr %t177, !range !{i64 0, i64 30}
  %t180 = icmp eq i64 %t178, 1
  store i1 %t180, ptr %l81, !tbaa !21
  br label %bb53
bb53:
  %t181 = load i1, ptr %l81, !tbaa !21
  br i1 %t181, label %bb54, label %bb55
bb54:
  %t182 = load ptr, ptr %l1, !tbaa !29
  %t184 = getelementptr { i64, [4 x i64] }, ptr %t182, i32 0, i32 1
  %t185 = getelementptr { %"compiler/source:Span", i32 }, ptr %t184, i32 0, i32 0
  %t186 = load %"compiler/source:Span", ptr %t185
  store %"compiler/source:Span" %t186, ptr %l7
  br label %bb60
bb55:
  %t188 = load ptr, ptr %l1, !tbaa !29
  store ptr %t188, ptr %l86, !tbaa !29
  store i1 false, ptr %l87, !tbaa !21
  %t189 = load ptr, ptr %l86, !tbaa !29
  %t190 = icmp ne ptr %t189, null
  br i1 %t190, label %bb56, label %bb57
bb56:
  %t192 = load ptr, ptr %l86, !tbaa !29
  %t193 = load i64, ptr %t192, !range !{i64 0, i64 30}
  %t195 = icmp eq i64 %t193, 0
  store i1 %t195, ptr %l87, !tbaa !21
  br label %bb57
bb57:
  %t196 = load i1, ptr %l87, !tbaa !21
  br i1 %t196, label %bb58, label %bb59
bb58:
  %t197 = load ptr, ptr %l1, !tbaa !29
  %t199 = getelementptr { i64, [4 x i64] }, ptr %t197, i32 0, i32 1
  %t200 = getelementptr { %"compiler/source:Span", i32 }, ptr %t199, i32 0, i32 0
  %t201 = load %"compiler/source:Span", ptr %t200
  store %"compiler/source:Span" %t201, ptr %l7
  br label %bb60
bb59:
  br label %bb61
bb60:
  %t203 = load %"compiler/source:Span", ptr %l7
  store %"compiler/source:Span" %t203, ptr %l8
  br label %bb68
bb61:
  br i1 true, label %bb62, label %bb63
bb62:
  br label %bb64
bb63:
  br label %bb67
bb64:
  %t205 = load ptr, ptr %l0, !tbaa !29
  store ptr %t205, ptr %l93, !tbaa !29
  %t206 = load ptr, ptr %l1, !tbaa !29
  %t208 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t206)
  store %"compiler/source:Span" %t208, ptr %l95
  br label %bb65
bb65:
  %t209 = getelementptr %"compiler/source:Span", ptr %l95, i32 0, i32 0
  %t210 = load i32, ptr %t209, !tbaa !23
  %t211 = load ptr, ptr %l93, !tbaa !29
  %t213 = call %"compiler/source:Span" @compiler_2fcond_2ecompiler_2fcond_3aEval_2etokenAt(ptr %v0, ptr %t211, i32 %t210)
  store %"compiler/source:Span" %t213, ptr %l97
  br label %bb66
bb66:
  %t214 = load %"compiler/source:Span", ptr %l97
  store %"compiler/source:Span" %t214, ptr %l8
  br label %bb68
bb67:
  call void @__olang_check_failed(ptr @olang_loc_c6445e8eb561a5e0_a28b098f67507e74)
  unreachable
bb68:
  %t215 = load %"compiler/source:Span", ptr %l8
  store %"compiler/source:Span" %t215, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2efloatDeclared(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, %"compiler/cond:Value" %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/cond:Value"
  %l8 = alloca %"compiler/cond:Value"
  %l13 = alloca i1
  %l16 = alloca i1
  %l21 = alloca %"compiler/cond:Value"
  %l25 = alloca %"compiler/cond:Value"
  %l31 = alloca %"compiler/cond:Value"
  %l34 = alloca %"compiler/cond:Value"
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca %"compiler/cond:Value"
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store %"compiler/cond:Value" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = icmp ne i64 %a3, 64
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t6 = load %"compiler/source:Span", ptr %l1
  %t9 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2edefer(ptr %v0, ptr %t5, %"compiler/source:Span" %t6)
  store %"compiler/cond:Value" %t9, ptr %l8
  br label %bb3
bb2:
  br label %bb4
bb3:
  call void @__olang_scope_close(ptr %s0)
  %t10 = load %"compiler/cond:Value", ptr %l8
  store %"compiler/cond:Value" %t10, ptr %rv
  br label %ret
bb4:
  %t11 = getelementptr %"compiler/cond:Value", ptr %l2, i32 0, i32 0
  %t12 = load i32, ptr %t11, !range !{i32 0, i32 5}
  %t14 = trunc i64 2 to i32
  %t15 = icmp eq i32 %t12, %t14
  br i1 %t15, label %bb5, label %bb6
bb5:
  store %olang.scope zeroinitializer, ptr %s2
  %t17 = getelementptr %"compiler/cond:Value", ptr %l2, i32 0, i32 4
  %t18 = load i64, ptr %t17, !tbaa !24
  %t20 = icmp ne i64 %t18, 0
  br i1 %t20, label %bb7, label %bb8
bb6:
  br label %bb18
bb7:
  store i1 true, ptr %l13, !tbaa !21
  br label %bb9
bb8:
  %t22 = getelementptr %"compiler/cond:Value", ptr %l2, i32 0, i32 1
  %t23 = load i64, ptr %t22, !tbaa !24
  %t25 = icmp sgt i64 %t23, 9007199254740992
  store i1 %t25, ptr %l13, !tbaa !21
  br label %bb9
bb9:
  %t27 = load i1, ptr %l13, !tbaa !21
  br i1 %t27, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb12
bb11:
  %t28 = getelementptr %"compiler/cond:Value", ptr %l2, i32 0, i32 1
  %t29 = load i64, ptr %t28, !tbaa !24
  %t31 = icmp slt i64 %t29, -9007199254740992
  store i1 %t31, ptr %l16, !tbaa !21
  br label %bb12
bb12:
  %t33 = load i1, ptr %l16, !tbaa !21
  br i1 %t33, label %bb13, label %bb14
bb13:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load %"compiler/source:Span", ptr %l1
  %t38 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2edefer(ptr %v0, ptr %t34, %"compiler/source:Span" %t35)
  store %"compiler/cond:Value" %t38, ptr %l21
  br label %bb15
bb14:
  br label %bb16
bb15:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t39 = load %"compiler/cond:Value", ptr %l21
  store %"compiler/cond:Value" %t39, ptr %rv
  br label %ret
bb16:
  %t40 = getelementptr %"compiler/cond:Value", ptr %l2, i32 0, i32 1
  %t41 = load i64, ptr %t40, !tbaa !24
  %t43 = sitofp i64 %t41 to double
  %t46 = call %"compiler/cond:Value" @compiler_2fcond_3aValue_2ector(ptr %s2, i32 3, i64 0, double %t43, i64 0, i64 64, i1 false, i1 false)
  store %"compiler/cond:Value" %t46, ptr %l25
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t47 = load %"compiler/cond:Value", ptr %l25
  store %"compiler/cond:Value" %t47, ptr %rv
  br label %ret
bb18:
  %t48 = getelementptr %"compiler/cond:Value", ptr %l2, i32 0, i32 0
  %t49 = load i32, ptr %t48, !range !{i32 0, i32 5}
  %t51 = trunc i64 3 to i32
  %t52 = icmp eq i32 %t49, %t51
  %t54 = xor i1 %t52, true
  br i1 %t54, label %bb19, label %bb20
bb19:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = load %"compiler/source:Span", ptr %l1
  %t60 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2edefer(ptr %v0, ptr %t56, %"compiler/source:Span" %t57)
  store %"compiler/cond:Value" %t60, ptr %l31
  br label %bb21
bb20:
  br label %bb22
bb21:
  call void @__olang_scope_close(ptr %s0)
  %t61 = load %"compiler/cond:Value", ptr %l31
  store %"compiler/cond:Value" %t61, ptr %rv
  br label %ret
bb22:
  %t62 = getelementptr %"compiler/cond:Value", ptr %l2, i32 0, i32 2
  %t63 = load double, ptr %t62, !tbaa !26
  %t66 = call %"compiler/cond:Value" @compiler_2fcond_3aValue_2ector(ptr %s0, i32 3, i64 0, double %t63, i64 0, i64 64, i1 false, i1 false)
  store %"compiler/cond:Value" %t66, ptr %l34
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s0)
  %t67 = load %"compiler/cond:Value", ptr %l34
  store %"compiler/cond:Value" %t67, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/cond:Value", ptr %rv
  ret %"compiler/cond:Value" %rr
}

define dso_local %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2eglobal(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca i1
  %l4 = alloca %"compiler/cond:Value"
  %l5 = alloca i1
  %l6 = alloca i1
  %l7 = alloca i1
  %l8 = alloca %"compiler/source:Span"
  %l9 = alloca %"compiler/diagmsg:Msg"
  %l13 = alloca %"compiler/cond:Value"
  %l14 = alloca i1
  %l15 = alloca i1
  %l16 = alloca %"compiler/diagmsg:Msg"
  %l23 = alloca %"compiler/cond:Value"
  %l24 = alloca %"compiler/cond:Value"
  %l28 = alloca ptr
  %l29 = alloca %"compiler/source:Span"
  %l32 = alloca { i64, ptr }
  %l34 = alloca %"compiler/diagmsg:Msg"
  %l35 = alloca %"compiler/cond:Value"
  %l38 = alloca ptr
  %l39 = alloca %"compiler/source:Span"
  %l42 = alloca { i64, ptr }
  %l44 = alloca %"compiler/diagmsg:Msg"
  %l45 = alloca %"compiler/cond:Value"
  %l50 = alloca i1
  %l55 = alloca i1
  %l58 = alloca %"compiler/cond:Value"
  %l63 = alloca i1
  %l66 = alloca i1
  %l68 = alloca i1
  %l73 = alloca i1
  %l79 = alloca ptr
  %l80 = alloca %"compiler/source:Span"
  %l81 = alloca ptr
  %l86 = alloca %"compiler/cond:Value"
  %l87 = alloca %"compiler/cond:Value"
  %l104 = alloca ptr
  %l110 = alloca %"compiler/cond:Value"
  %l111 = alloca ptr
  %l133 = alloca ptr
  %l135 = alloca %"compiler/diagmsg:Msg"
  %l141 = alloca i1
  %l145 = alloca %"compiler/cond:Value"
  %l148 = alloca ptr
  %l149 = alloca %"compiler/source:Span"
  %l151 = alloca %"compiler/diagmsg:Msg"
  %l154 = alloca { i64, ptr }
  %l156 = alloca %"compiler/diagmsg:Msg"
  %l159 = alloca { i64, ptr }
  %l161 = alloca %"compiler/diagmsg:Msg"
  %l162 = alloca %"compiler/cond:Value"
  %l165 = alloca %"compiler/cond:Value"
  %l171 = alloca %"compiler/cond:Value"
  %l176 = alloca %"compiler/cond:Value"
  %l181 = alloca i1
  %l184 = alloca i1
  %l185 = alloca i1
  %l187 = alloca i1
  %l197 = alloca %"compiler/cond:Value"
  %l203 = alloca i1
  %l208 = alloca i1
  %l211 = alloca i1
  %l216 = alloca %"compiler/cond:Value"
  %l220 = alloca %"compiler/cond:Value"
  %l221 = alloca i32
  %l223 = alloca i32
  %l225 = alloca i1
  %l229 = alloca %"compiler/cond:Value"
  %l232 = alloca i1
  %l236 = alloca i1
  %l240 = alloca %"compiler/cond:Value"
  %l247 = alloca %"compiler/cond:Value"
  %s0 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %rv = alloca %"compiler/cond:Value"
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/cond:Eval", ptr %t1, i32 0, i32 9
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp sgt i64 %t4, 64
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load ptr, ptr %l0, !tbaa !29
  store ptr %t8, ptr %l28, !tbaa !29
  %t9 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t9, ptr %l29
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load %"compiler/source:Span", ptr %l1
  %t14 = call { i64, ptr } @compiler_2fcond_2ecompiler_2fcond_3aEval_2etokText(ptr %v0, ptr %v0, ptr %t10, %"compiler/source:Span" %t11)
  store { i64, ptr } %t14, ptr %l32
  br label %bb3
bb2:
  br label %bb6
bb3:
  %t15 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t15, 0
  %t17 = extractvalue { i64, ptr } %t15, 1
  %t18 = mul i64 %t16, 1
  %t19 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t18)
  call void @llvm.memcpy.p0.p0.i64(ptr %t19, ptr %t17, i64 %t18, i1 false)
  %t20 = insertvalue { i64, ptr } undef, i64 %t16, 0
  %t21 = insertvalue { i64, ptr } %t20, ptr %t19, 1
  %t23 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondCycle(ptr %v0, ptr %v0, { i64, ptr } %t21)
  store %"compiler/diagmsg:Msg" %t23, ptr %l34
  br label %bb4
bb4:
  %t24 = load ptr, ptr %l28, !tbaa !29
  %t25 = load %"compiler/source:Span", ptr %l29
  %t26 = load %"compiler/diagmsg:Msg", ptr %l34
  %t27 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2efail(ptr %v0, ptr %v0, ptr %t24, %"compiler/source:Span" %t25, %"compiler/diagmsg:Msg" %t26)
  store %"compiler/cond:Value" %t27, ptr %l35
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  %t28 = load %"compiler/cond:Value", ptr %l35
  store %"compiler/cond:Value" %t28, ptr %rv
  br label %ret
bb6:
  %t29 = load ptr, ptr %l2, !tbaa !29
  %t31 = getelementptr %"compiler/cond:Global", ptr %t29, i32 0, i32 2
  %t32 = load i1, ptr %t31, !tbaa !21
  br i1 %t32, label %bb7, label %bb8
bb7:
  %t34 = load ptr, ptr %l0, !tbaa !29
  store ptr %t34, ptr %l38, !tbaa !29
  %t35 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t35, ptr %l39
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load %"compiler/source:Span", ptr %l1
  %t40 = call { i64, ptr } @compiler_2fcond_2ecompiler_2fcond_3aEval_2etokText(ptr %v0, ptr %v0, ptr %t36, %"compiler/source:Span" %t37)
  store { i64, ptr } %t40, ptr %l42
  br label %bb9
bb8:
  br label %bb12
bb9:
  %t41 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t42 = extractvalue { i64, ptr } %t41, 0
  %t43 = extractvalue { i64, ptr } %t41, 1
  %t44 = mul i64 %t42, 1
  %t45 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t44)
  call void @llvm.memcpy.p0.p0.i64(ptr %t45, ptr %t43, i64 %t44, i1 false)
  %t46 = insertvalue { i64, ptr } undef, i64 %t42, 0
  %t47 = insertvalue { i64, ptr } %t46, ptr %t45, 1
  %t49 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondMutable(ptr %v0, ptr %v0, { i64, ptr } %t47)
  store %"compiler/diagmsg:Msg" %t49, ptr %l44
  br label %bb10
bb10:
  %t50 = load ptr, ptr %l38, !tbaa !29
  %t51 = load %"compiler/source:Span", ptr %l39
  %t52 = load %"compiler/diagmsg:Msg", ptr %l44
  %t53 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2eruntimeValue(ptr %v0, ptr %v0, ptr %t50, %"compiler/source:Span" %t51, %"compiler/diagmsg:Msg" %t52, i1 false)
  store %"compiler/cond:Value" %t53, ptr %l45
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s0)
  %t54 = load %"compiler/cond:Value", ptr %l45
  store %"compiler/cond:Value" %t54, ptr %rv
  br label %ret
bb12:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/cond:Eval", ptr %t55, i32 0, i32 2
  %t58 = load ptr, ptr %t57, !tbaa !29
  %t60 = getelementptr %"compiler/cond:Scope", ptr %t58, i32 0, i32 0
  %t61 = load i1, ptr %t60, !tbaa !21
  %t63 = xor i1 %t61, true
  br i1 %t63, label %bb13, label %bb14
bb13:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/cond:Eval", ptr %t65, i32 0, i32 3
  %t68 = load ptr, ptr %t67, !tbaa !29
  %t69 = load ptr, ptr %l2, !tbaa !29
  %t71 = getelementptr %"compiler/cond:Global", ptr %t69, i32 0, i32 0
  %t72 = load { i64, ptr }, ptr %t71, !tbaa !27
  %t75 = call i1 @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eDefined(ptr %v0, ptr %v1, ptr %t68, { i64, ptr } %t72)
  store i1 %t75, ptr %l55
  br label %bb15
bb14:
  store i1 false, ptr %l50, !tbaa !21
  br label %bb16
bb15:
  %t76 = load i1, ptr %l55, !tbaa !21
  store i1 %t76, ptr %l50, !tbaa !21
  br label %bb16
bb16:
  %t77 = load i1, ptr %l50, !tbaa !21
  store i1 %t77, ptr %l3, !tbaa !21
  %t78 = load ptr, ptr %l2, !tbaa !29
  %t80 = getelementptr %"compiler/cond:Global", ptr %t78, i32 0, i32 3
  %t81 = load { i64, ptr }, ptr %t80, !tbaa !27
  %t83 = call %"compiler/cond:Value" @compiler_2fcond_2eValue_2edeclaredKind(ptr %v1, { i64, ptr } %t81)
  store %"compiler/cond:Value" %t83, ptr %l58
  br label %bb17
bb17:
  %t84 = load %"compiler/cond:Value", ptr %l58
  store %"compiler/cond:Value" %t84, ptr %l4
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/cond:Eval", ptr %t85, i32 0, i32 2
  %t88 = load ptr, ptr %t87, !tbaa !29
  %t90 = getelementptr %"compiler/cond:Scope", ptr %t88, i32 0, i32 0
  %t91 = load i1, ptr %t90, !tbaa !21
  %t93 = xor i1 %t91, true
  br i1 %t93, label %bb18, label %bb19
bb18:
  %t95 = load ptr, ptr %l2, !tbaa !29
  %t97 = getelementptr %"compiler/cond:Global", ptr %t95, i32 0, i32 3
  %t98 = load { i64, ptr }, ptr %t97, !tbaa !27
  %t100 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t98, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d43, i32 0, i32 1) })
  store i1 %t100, ptr %l66
  br label %bb20
bb19:
  store i1 false, ptr %l63, !tbaa !21
  br label %bb21
bb20:
  %t101 = load i1, ptr %l66, !tbaa !21
  %t102 = xor i1 %t101, true
  store i1 %t102, ptr %l63, !tbaa !21
  br label %bb21
bb21:
  %t104 = load i1, ptr %l63, !tbaa !21
  br i1 %t104, label %bb22, label %bb23
bb22:
  %t105 = getelementptr %"compiler/cond:Value", ptr %l4, i32 0, i32 0
  %t106 = load i32, ptr %t105, !range !{i32 0, i32 5}
  %t108 = trunc i64 0 to i32
  %t109 = icmp eq i32 %t106, %t108
  %t111 = xor i1 %t109, true
  store i1 %t111, ptr %l68, !tbaa !21
  br label %bb24
bb23:
  store i1 false, ptr %l68, !tbaa !21
  br label %bb24
bb24:
  %t113 = load i1, ptr %l68, !tbaa !21
  br i1 %t113, label %bb25, label %bb26
bb25:
  %t114 = load %"compiler/cond:Value", ptr %l4
  %t116 = call i1 @compiler_2fcond_2ebuildType(%"compiler/cond:Value" %t114)
  store i1 %t116, ptr %l73
  br label %bb27
bb26:
  br label %bb39
bb27:
  %t117 = load i1, ptr %l73, !tbaa !21
  br i1 %t117, label %bb28, label %bb29
bb28:
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = getelementptr %"compiler/cond:Eval", ptr %t118, i32 0, i32 10
  %t121 = load i64, ptr %t120, !tbaa !24
  %t123 = icmp eq i64 %t121, 0
  br i1 %t123, label %bb30, label %bb31
bb29:
  br label %bb38
bb30:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = getelementptr %"compiler/cond:Eval", ptr %t125, i32 0, i32 11
  store i1 true, ptr %t127, !tbaa !21
  br label %bb32
bb31:
  br label %bb32
bb32:
  %t128 = load i1, ptr %l3, !tbaa !21
  br i1 %t128, label %bb33, label %bb34
bb33:
  %t130 = load ptr, ptr %l0, !tbaa !29
  store ptr %t130, ptr %l79, !tbaa !29
  %t131 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t131, ptr %l80
  %t132 = load ptr, ptr %l2, !tbaa !29
  store ptr %t132, ptr %l81, !tbaa !29
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t134 = load %"compiler/source:Span", ptr %l1
  %t135 = load ptr, ptr %l2, !tbaa !29
  %t137 = getelementptr %"compiler/cond:Global", ptr %t135, i32 0, i32 0
  %t138 = load { i64, ptr }, ptr %t137, !tbaa !27
  %t142 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2edefinedValue(ptr %v0, ptr %v1, ptr %t133, %"compiler/source:Span" %t134, { i64, ptr } %t138)
  store %"compiler/cond:Value" %t142, ptr %l86
  br label %bb35
bb34:
  br label %bb37
bb35:
  %t143 = load ptr, ptr %l79, !tbaa !29
  %t144 = load %"compiler/source:Span", ptr %l80
  %t145 = load ptr, ptr %l81, !tbaa !29
  %t146 = load %"compiler/cond:Value", ptr %l86
  %t147 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2easDeclared(ptr %v0, ptr %v1, ptr %t143, %"compiler/source:Span" %t144, ptr %t145, %"compiler/cond:Value" %t146)
  store %"compiler/cond:Value" %t147, ptr %l87
  br label %bb36
bb36:
  call void @__olang_scope_close(ptr %s0)
  %t148 = load %"compiler/cond:Value", ptr %l87
  store %"compiler/cond:Value" %t148, ptr %rv
  br label %ret
bb37:
  br label %bb38
bb38:
  br label %bb39
bb39:
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t151 = getelementptr %"compiler/cond:Eval", ptr %t149, i32 0, i32 4
  %t152 = load i1, ptr %t151, !tbaa !21
  store i1 %t152, ptr %l5, !tbaa !21
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr %"compiler/cond:Eval", ptr %t154, i32 0, i32 5
  %t157 = load i1, ptr %t156, !tbaa !21
  store i1 %t157, ptr %l6, !tbaa !21
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t161 = getelementptr %"compiler/cond:Eval", ptr %t159, i32 0, i32 6
  %t162 = load i1, ptr %t161, !tbaa !21
  store i1 %t162, ptr %l7, !tbaa !21
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t166 = getelementptr %"compiler/cond:Eval", ptr %t164, i32 0, i32 7
  %t167 = load %"compiler/source:Span", ptr %t166
  store %"compiler/source:Span" %t167, ptr %l8
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t171 = getelementptr %"compiler/cond:Eval", ptr %t169, i32 0, i32 8
  %t172 = load %"compiler/diagmsg:Msg", ptr %t171
  store %"compiler/diagmsg:Msg" %t172, ptr %l9
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t178 = getelementptr %"compiler/cond:Eval", ptr %t174, i32 0, i32 4
  store i1 false, ptr %t178, !tbaa !21
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t183 = getelementptr %"compiler/cond:Eval", ptr %t179, i32 0, i32 5
  store i1 false, ptr %t183, !tbaa !21
  %t184 = load ptr, ptr %l0, !tbaa !29
  %t188 = getelementptr %"compiler/cond:Eval", ptr %t184, i32 0, i32 6
  store i1 false, ptr %t188, !tbaa !21
  %t189 = load ptr, ptr %l0, !tbaa !29
  store ptr %t189, ptr %l104, !tbaa !29
  %t190 = load ptr, ptr %l104, !tbaa !29
  %t191 = getelementptr %"compiler/cond:Eval", ptr %t190, i32 0, i32 9
  %t192 = load i64, ptr %t191, !tbaa !24
  %t194 = add i64 %t192, 1
  %t196 = load ptr, ptr %l104, !tbaa !29
  %t197 = getelementptr %"compiler/cond:Eval", ptr %t196, i32 0, i32 9
  store i64 %t194, ptr %t197, !tbaa !24
  %t198 = load ptr, ptr %l0, !tbaa !29
  %t199 = load ptr, ptr %l2, !tbaa !29
  %t201 = getelementptr %"compiler/cond:Global", ptr %t199, i32 0, i32 4
  %t202 = load ptr, ptr %t201, !tbaa !29
  %t205 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2eexpr(ptr %v0, ptr %v1, ptr %t198, ptr %t202)
  store %"compiler/cond:Value" %t205, ptr %l110
  br label %bb40
bb40:
  %t206 = load %"compiler/cond:Value", ptr %l110
  store %"compiler/cond:Value" %t206, ptr %l13
  %t207 = load ptr, ptr %l0, !tbaa !29
  store ptr %t207, ptr %l111, !tbaa !29
  %t208 = load ptr, ptr %l111, !tbaa !29
  %t209 = getelementptr %"compiler/cond:Eval", ptr %t208, i32 0, i32 9
  %t210 = load i64, ptr %t209, !tbaa !24
  %t212 = sub i64 %t210, 1
  %t214 = load ptr, ptr %l111, !tbaa !29
  %t215 = getelementptr %"compiler/cond:Eval", ptr %t214, i32 0, i32 9
  store i64 %t212, ptr %t215, !tbaa !24
  %t216 = load ptr, ptr %l0, !tbaa !29
  %t218 = getelementptr %"compiler/cond:Eval", ptr %t216, i32 0, i32 4
  %t219 = load i1, ptr %t218, !tbaa !21
  store i1 %t219, ptr %l14, !tbaa !21
  %t221 = load ptr, ptr %l0, !tbaa !29
  %t223 = getelementptr %"compiler/cond:Eval", ptr %t221, i32 0, i32 5
  %t224 = load i1, ptr %t223, !tbaa !21
  store i1 %t224, ptr %l15, !tbaa !21
  %t226 = load ptr, ptr %l0, !tbaa !29
  %t228 = getelementptr %"compiler/cond:Eval", ptr %t226, i32 0, i32 8
  %t229 = load %"compiler/diagmsg:Msg", ptr %t228
  store %"compiler/diagmsg:Msg" %t229, ptr %l16
  %t231 = load i1, ptr %l5, !tbaa !21
  %t233 = load i1, ptr %l6, !tbaa !21
  %t235 = load i1, ptr %l7, !tbaa !21
  %t237 = load %"compiler/source:Span", ptr %l8
  %t239 = load %"compiler/diagmsg:Msg", ptr %l9
  %t241 = load ptr, ptr %l0, !tbaa !29
  %t245 = getelementptr %"compiler/cond:Eval", ptr %t241, i32 0, i32 4
  store i1 %t231, ptr %t245, !tbaa !21
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t250 = getelementptr %"compiler/cond:Eval", ptr %t246, i32 0, i32 5
  store i1 %t233, ptr %t250, !tbaa !21
  %t251 = load ptr, ptr %l0, !tbaa !29
  %t255 = getelementptr %"compiler/cond:Eval", ptr %t251, i32 0, i32 6
  store i1 %t235, ptr %t255, !tbaa !21
  %t256 = load ptr, ptr %l0, !tbaa !29
  %t260 = getelementptr %"compiler/cond:Eval", ptr %t256, i32 0, i32 7
  store %"compiler/source:Span" %t237, ptr %t260
  %t261 = load ptr, ptr %l0, !tbaa !29
  store ptr %t261, ptr %l133, !tbaa !29
  %t263 = load ptr, ptr %l133, !tbaa !29
  %t264 = getelementptr %"compiler/cond:Eval", ptr %t263, i32 0, i32 8
  %t265 = load %"compiler/diagmsg:Msg", ptr %t264
  store %"compiler/diagmsg:Msg" %t265, ptr %l135
  %t267 = load ptr, ptr %l133, !tbaa !29
  %t268 = getelementptr %"compiler/cond:Eval", ptr %t267, i32 0, i32 8
  store %"compiler/diagmsg:Msg" %t239, ptr %t268
  %t269 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e1
  br i1 %t269, label %bb41, label %bb42
bb41:
  %t271 = getelementptr %"compiler/diagmsg:Msg", ptr %l135, i32 0, i32 1
  %t272 = load { i64, ptr }, ptr %t271
  %t273 = extractvalue { i64, ptr } %t272, 1
  call void @__olang_region_release(ptr %t273)
  store { i64, ptr } zeroinitializer, ptr %t271
  br label %bb42
bb42:
  %t274 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t274, label %bb43, label %bb44
bb43:
  %t276 = getelementptr %"compiler/diagmsg:Msg", ptr %l135, i32 0, i32 2
  %t277 = load { i64, ptr }, ptr %t276
  %t278 = extractvalue { i64, ptr } %t277, 1
  call void @__olang_region_release(ptr %t278)
  store { i64, ptr } zeroinitializer, ptr %t276
  br label %bb44
bb44:
  %t279 = load i1, ptr %l14, !tbaa !21
  br i1 %t279, label %bb45, label %bb46
bb45:
  %t281 = load ptr, ptr %l0, !tbaa !29
  %t283 = getelementptr %"compiler/cond:Eval", ptr %t281, i32 0, i32 4
  %t284 = load i1, ptr %t283, !tbaa !21
  br i1 %t284, label %bb47, label %bb48
bb46:
  br label %bb63
bb47:
  store i1 true, ptr %l141, !tbaa !21
  br label %bb49
bb48:
  %t286 = load ptr, ptr %l0, !tbaa !29
  %t288 = getelementptr %"compiler/cond:Eval", ptr %t286, i32 0, i32 10
  %t289 = load i64, ptr %t288, !tbaa !24
  %t291 = icmp sgt i64 %t289, 0
  store i1 %t291, ptr %l141, !tbaa !21
  br label %bb49
bb49:
  %t293 = load i1, ptr %l141, !tbaa !21
  br i1 %t293, label %bb50, label %bb51
bb50:
  %t294 = call %"compiler/cond:Value" @compiler_2fcond_2eValue_2enone()
  store %"compiler/cond:Value" %t294, ptr %l145
  br label %bb52
bb51:
  br label %bb53
bb52:
  call void @__olang_scope_close(ptr %s0)
  %t295 = load %"compiler/cond:Value", ptr %l145
  store %"compiler/cond:Value" %t295, ptr %rv
  br label %ret
bb53:
  %t296 = getelementptr %"compiler/diagmsg:Msg", ptr %l16, i32 0, i32 0
  %t297 = load i32, ptr %t296, !range !{i32 0, i32 884}
  %t299 = trunc i64 93 to i32
  %t300 = icmp eq i32 %t297, %t299
  %t302 = load ptr, ptr %l0, !tbaa !29
  store ptr %t302, ptr %l148, !tbaa !29
  %t303 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t303, ptr %l149
  br i1 %t300, label %bb54, label %bb55
bb54:
  %t306 = load ptr, ptr %l0, !tbaa !29
  %t307 = load %"compiler/source:Span", ptr %l1
  %t310 = call { i64, ptr } @compiler_2fcond_2ecompiler_2fcond_3aEval_2etokText(ptr %v0, ptr %v0, ptr %t306, %"compiler/source:Span" %t307)
  store { i64, ptr } %t310, ptr %l154
  br label %bb56
bb55:
  %t311 = load ptr, ptr %l0, !tbaa !29
  %t312 = load %"compiler/source:Span", ptr %l1
  %t315 = call { i64, ptr } @compiler_2fcond_2ecompiler_2fcond_3aEval_2etokText(ptr %v0, ptr %v0, ptr %t311, %"compiler/source:Span" %t312)
  store { i64, ptr } %t315, ptr %l159
  br label %bb58
bb56:
  %t316 = load { i64, ptr }, ptr %l154, !tbaa !27
  %t317 = extractvalue { i64, ptr } %t316, 0
  %t318 = extractvalue { i64, ptr } %t316, 1
  %t319 = mul i64 %t317, 1
  %t320 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t319)
  call void @llvm.memcpy.p0.p0.i64(ptr %t320, ptr %t318, i64 %t319, i1 false)
  %t321 = insertvalue { i64, ptr } undef, i64 %t317, 0
  %t322 = insertvalue { i64, ptr } %t321, ptr %t320, 1
  %t324 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondCycle(ptr %v0, ptr %v0, { i64, ptr } %t322)
  store %"compiler/diagmsg:Msg" %t324, ptr %l156
  br label %bb57
bb57:
  %t325 = load %"compiler/diagmsg:Msg", ptr %l156
  store %"compiler/diagmsg:Msg" %t325, ptr %l151
  br label %bb60
bb58:
  %t326 = load { i64, ptr }, ptr %l159, !tbaa !27
  %t327 = extractvalue { i64, ptr } %t326, 0
  %t328 = extractvalue { i64, ptr } %t326, 1
  %t329 = mul i64 %t327, 1
  %t330 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t329)
  call void @llvm.memcpy.p0.p0.i64(ptr %t330, ptr %t328, i64 %t329, i1 false)
  %t331 = insertvalue { i64, ptr } undef, i64 %t327, 0
  %t332 = insertvalue { i64, ptr } %t331, ptr %t330, 1
  %t334 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondGlobalInit(ptr %v0, ptr %v0, { i64, ptr } %t332)
  store %"compiler/diagmsg:Msg" %t334, ptr %l161
  br label %bb59
bb59:
  %t335 = load %"compiler/diagmsg:Msg", ptr %l161
  store %"compiler/diagmsg:Msg" %t335, ptr %l151
  br label %bb60
bb60:
  %t336 = load ptr, ptr %l148, !tbaa !29
  %t337 = load %"compiler/source:Span", ptr %l149
  %t338 = load %"compiler/diagmsg:Msg", ptr %l151
  %t339 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2efail(ptr %v0, ptr %v0, ptr %t336, %"compiler/source:Span" %t337, %"compiler/diagmsg:Msg" %t338)
  store %"compiler/cond:Value" %t339, ptr %l162
  br label %bb61
bb61:
  %t340 = load ptr, ptr %l0, !tbaa !29
  %t341 = load i1, ptr %l15, !tbaa !21
  %t344 = getelementptr %"compiler/cond:Eval", ptr %t340, i32 0, i32 5
  store i1 %t341, ptr %t344, !tbaa !21
  %t345 = call %"compiler/cond:Value" @compiler_2fcond_2eValue_2enone()
  store %"compiler/cond:Value" %t345, ptr %l165
  br label %bb62
bb62:
  call void @__olang_scope_close(ptr %s0)
  %t346 = load %"compiler/cond:Value", ptr %l165
  store %"compiler/cond:Value" %t346, ptr %rv
  br label %ret
bb63:
  %t347 = load ptr, ptr %l2, !tbaa !29
  %t349 = getelementptr %"compiler/cond:Global", ptr %t347, i32 0, i32 5
  %t350 = load i1, ptr %t349, !tbaa !21
  %t352 = xor i1 %t350, true
  br i1 %t352, label %bb64, label %bb65
bb64:
  %t354 = load ptr, ptr %l0, !tbaa !29
  %t355 = load %"compiler/source:Span", ptr %l1
  %t358 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2edefer(ptr %v0, ptr %t354, %"compiler/source:Span" %t355)
  store %"compiler/cond:Value" %t358, ptr %l171
  br label %bb66
bb65:
  br label %bb67
bb66:
  call void @__olang_scope_close(ptr %s0)
  %t359 = load %"compiler/cond:Value", ptr %l171
  store %"compiler/cond:Value" %t359, ptr %rv
  br label %ret
bb67:
  %t360 = load ptr, ptr %l0, !tbaa !29
  %t361 = load %"compiler/source:Span", ptr %l1
  %t362 = load ptr, ptr %l2, !tbaa !29
  %t363 = load %"compiler/cond:Value", ptr %l13
  %t368 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2easDeclared(ptr %v0, ptr %v1, ptr %t360, %"compiler/source:Span" %t361, ptr %t362, %"compiler/cond:Value" %t363)
  store %"compiler/cond:Value" %t368, ptr %l176
  br label %bb68
bb68:
  %t369 = load %"compiler/cond:Value", ptr %l176
  store %"compiler/cond:Value" %t369, ptr %l23
  %t370 = load ptr, ptr %l0, !tbaa !29
  %t372 = getelementptr %"compiler/cond:Eval", ptr %t370, i32 0, i32 2
  %t373 = load ptr, ptr %t372, !tbaa !29
  %t375 = getelementptr %"compiler/cond:Scope", ptr %t373, i32 0, i32 0
  %t376 = load i1, ptr %t375, !tbaa !21
  %t378 = xor i1 %t376, true
  br i1 %t378, label %bb69, label %bb70
bb69:
  %t380 = load ptr, ptr %l2, !tbaa !29
  %t382 = getelementptr %"compiler/cond:Global", ptr %t380, i32 0, i32 3
  %t383 = load { i64, ptr }, ptr %t382, !tbaa !27
  %t385 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t383, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d44, i32 0, i32 1) })
  store i1 %t385, ptr %l184
  br label %bb71
bb70:
  store i1 false, ptr %l181, !tbaa !21
  br label %bb72
bb71:
  %t386 = load i1, ptr %l184, !tbaa !21
  store i1 %t386, ptr %l181, !tbaa !21
  br label %bb72
bb72:
  %t387 = load i1, ptr %l181, !tbaa !21
  br i1 %t387, label %bb73, label %bb74
bb73:
  %t388 = load %"compiler/cond:Value", ptr %l23
  %t390 = call i1 @compiler_2fcond_2ebuildType(%"compiler/cond:Value" %t388)
  store i1 %t390, ptr %l187
  br label %bb75
bb74:
  store i1 false, ptr %l185, !tbaa !21
  br label %bb76
bb75:
  %t391 = load i1, ptr %l187, !tbaa !21
  store i1 %t391, ptr %l185, !tbaa !21
  br label %bb76
bb76:
  %t392 = load i1, ptr %l185, !tbaa !21
  br i1 %t392, label %bb77, label %bb78
bb77:
  %t393 = load ptr, ptr %l0, !tbaa !29
  %t395 = getelementptr %"compiler/cond:Eval", ptr %t393, i32 0, i32 10
  %t396 = load i64, ptr %t395, !tbaa !24
  %t398 = icmp eq i64 %t396, 0
  br i1 %t398, label %bb79, label %bb80
bb78:
  br label %bb120
bb79:
  %t400 = load ptr, ptr %l0, !tbaa !29
  %t402 = getelementptr %"compiler/cond:Eval", ptr %t400, i32 0, i32 11
  store i1 true, ptr %t402, !tbaa !21
  br label %bb81
bb80:
  br label %bb81
bb81:
  %t403 = load i1, ptr %l3, !tbaa !21
  br i1 %t403, label %bb82, label %bb83
bb82:
  store %olang.scope zeroinitializer, ptr %s12
  %t405 = load ptr, ptr %l0, !tbaa !29
  %t406 = load %"compiler/source:Span", ptr %l1
  %t407 = load ptr, ptr %l2, !tbaa !29
  %t409 = getelementptr %"compiler/cond:Global", ptr %t407, i32 0, i32 0
  %t410 = load { i64, ptr }, ptr %t409, !tbaa !27
  %t414 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2edefinedValue(ptr %v0, ptr %v1, ptr %t405, %"compiler/source:Span" %t406, { i64, ptr } %t410)
  store %"compiler/cond:Value" %t414, ptr %l197
  br label %bb84
bb83:
  br label %bb119
bb84:
  %t415 = load %"compiler/cond:Value", ptr %l197
  store %"compiler/cond:Value" %t415, ptr %l24
  %t416 = getelementptr %"compiler/cond:Value", ptr %l24, i32 0, i32 0
  %t417 = load i32, ptr %t416, !range !{i32 0, i32 5}
  %t419 = trunc i64 0 to i32
  %t420 = icmp eq i32 %t417, %t419
  br i1 %t420, label %bb85, label %bb86
bb85:
  %t422 = load %"compiler/cond:Value", ptr %l24
  call void @__olang_scope_close(ptr %s12)
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/cond:Value" %t422, ptr %rv
  br label %ret
bb86:
  br label %bb87
bb87:
  %t424 = getelementptr %"compiler/cond:Value", ptr %l23, i32 0, i32 0
  %t425 = load i32, ptr %t424, !range !{i32 0, i32 5}
  %t427 = trunc i64 3 to i32
  %t428 = icmp eq i32 %t425, %t427
  br i1 %t428, label %bb88, label %bb89
bb88:
  %t430 = getelementptr %"compiler/cond:Value", ptr %l24, i32 0, i32 0
  %t431 = load i32, ptr %t430, !range !{i32 0, i32 5}
  %t433 = trunc i64 2 to i32
  %t434 = icmp eq i32 %t431, %t433
  store i1 %t434, ptr %l203, !tbaa !21
  br label %bb90
bb89:
  store i1 false, ptr %l203, !tbaa !21
  br label %bb90
bb90:
  %t436 = load i1, ptr %l203, !tbaa !21
  br i1 %t436, label %bb91, label %bb92
bb91:
  store %olang.scope zeroinitializer, ptr %s14
  %t437 = getelementptr %"compiler/cond:Value", ptr %l24, i32 0, i32 4
  %t438 = load i64, ptr %t437, !tbaa !24
  %t440 = icmp eq i64 %t438, 0
  br i1 %t440, label %bb93, label %bb94
bb92:
  br label %bb104
bb93:
  %t442 = getelementptr %"compiler/cond:Value", ptr %l24, i32 0, i32 1
  %t443 = load i64, ptr %t442, !tbaa !24
  %t445 = icmp sgt i64 %t443, 9007199254740992
  br i1 %t445, label %bb95, label %bb96
bb94:
  store i1 false, ptr %l208, !tbaa !21
  br label %bb98
bb95:
  store i1 true, ptr %l211, !tbaa !21
  br label %bb97
bb96:
  %t447 = getelementptr %"compiler/cond:Value", ptr %l24, i32 0, i32 1
  %t448 = load i64, ptr %t447, !tbaa !24
  %t450 = icmp slt i64 %t448, -9007199254740992
  store i1 %t450, ptr %l211, !tbaa !21
  br label %bb97
bb97:
  %t452 = load i1, ptr %l211, !tbaa !21
  store i1 %t452, ptr %l208, !tbaa !21
  br label %bb98
bb98:
  %t453 = load i1, ptr %l208, !tbaa !21
  br i1 %t453, label %bb99, label %bb100
bb99:
  %t454 = load ptr, ptr %l0, !tbaa !29
  %t455 = load %"compiler/source:Span", ptr %l1
  %t458 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2edefer(ptr %v0, ptr %t454, %"compiler/source:Span" %t455)
  store %"compiler/cond:Value" %t458, ptr %l216
  br label %bb101
bb100:
  br label %bb102
bb101:
  call void @__olang_scope_close(ptr %s14)
  call void @__olang_scope_close(ptr %s12)
  call void @__olang_scope_close(ptr %s0)
  %t459 = load %"compiler/cond:Value", ptr %l216
  store %"compiler/cond:Value" %t459, ptr %rv
  br label %ret
bb102:
  %t460 = getelementptr %"compiler/cond:Value", ptr %l24, i32 0, i32 1
  %t461 = load i64, ptr %t460, !tbaa !24
  %t463 = sitofp i64 %t461 to double
  %t466 = call %"compiler/cond:Value" @compiler_2fcond_3aValue_2ector(ptr %s14, i32 3, i64 0, double %t463, i64 0, i64 0, i1 false, i1 false)
  store %"compiler/cond:Value" %t466, ptr %l220
  br label %bb103
bb103:
  %t467 = load %"compiler/cond:Value", ptr %l220
  store %"compiler/cond:Value" %t467, ptr %l24
  call void @__olang_scope_close(ptr %s14)
  br label %bb104
bb104:
  %t468 = getelementptr %"compiler/cond:Value", ptr %l24, i32 0, i32 0
  %t469 = load i32, ptr %t468, !range !{i32 0, i32 5}
  store i32 %t469, ptr %l221
  %t470 = getelementptr %"compiler/cond:Value", ptr %l23, i32 0, i32 0
  %t471 = load i32, ptr %t470, !range !{i32 0, i32 5}
  store i32 %t471, ptr %l223
  %t474 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fcond_3aValueKind(ptr %l221, ptr %l223)
  store i1 %t474, ptr %l225
  br label %bb105
bb105:
  %t475 = load i1, ptr %l225, !tbaa !21
  %t476 = xor i1 %t475, true
  br i1 %t476, label %bb106, label %bb107
bb106:
  %t478 = load ptr, ptr %l0, !tbaa !29
  %t479 = load %"compiler/source:Span", ptr %l1
  %t482 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2edefer(ptr %v0, ptr %t478, %"compiler/source:Span" %t479)
  store %"compiler/cond:Value" %t482, ptr %l229
  br label %bb108
bb107:
  br label %bb109
bb108:
  call void @__olang_scope_close(ptr %s12)
  call void @__olang_scope_close(ptr %s0)
  %t483 = load %"compiler/cond:Value", ptr %l229
  store %"compiler/cond:Value" %t483, ptr %rv
  br label %ret
bb109:
  %t484 = getelementptr %"compiler/cond:Value", ptr %l24, i32 0, i32 0
  %t485 = load i32, ptr %t484, !range !{i32 0, i32 5}
  %t487 = trunc i64 2 to i32
  %t488 = icmp eq i32 %t485, %t487
  br i1 %t488, label %bb110, label %bb111
bb110:
  %t490 = getelementptr %"compiler/cond:Value", ptr %l24, i32 0, i32 1
  %t491 = load i64, ptr %t490, !tbaa !24
  %t492 = getelementptr %"compiler/cond:Value", ptr %l23, i32 0, i32 4
  %t493 = load i64, ptr %t492, !tbaa !24
  %t494 = getelementptr %"compiler/cond:Value", ptr %l23, i32 0, i32 5
  %t495 = load i1, ptr %t494, !tbaa !21
  %t499 = call i1 @compiler_2fcond_2efits(i64 %t491, i64 %t493, i1 %t495)
  store i1 %t499, ptr %l236
  br label %bb112
bb111:
  store i1 false, ptr %l232, !tbaa !21
  br label %bb113
bb112:
  %t500 = load i1, ptr %l236, !tbaa !21
  %t501 = xor i1 %t500, true
  store i1 %t501, ptr %l232, !tbaa !21
  br label %bb113
bb113:
  %t503 = load i1, ptr %l232, !tbaa !21
  br i1 %t503, label %bb114, label %bb115
bb114:
  %t504 = load ptr, ptr %l0, !tbaa !29
  %t505 = load %"compiler/source:Span", ptr %l1
  %t508 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2edefer(ptr %v0, ptr %t504, %"compiler/source:Span" %t505)
  store %"compiler/cond:Value" %t508, ptr %l240
  br label %bb116
bb115:
  br label %bb117
bb116:
  call void @__olang_scope_close(ptr %s12)
  call void @__olang_scope_close(ptr %s0)
  %t509 = load %"compiler/cond:Value", ptr %l240
  store %"compiler/cond:Value" %t509, ptr %rv
  br label %ret
bb117:
  %t510 = getelementptr %"compiler/cond:Value", ptr %l24, i32 0, i32 0
  %t511 = load i32, ptr %t510, !range !{i32 0, i32 5}
  %t512 = getelementptr %"compiler/cond:Value", ptr %l24, i32 0, i32 1
  %t513 = load i64, ptr %t512, !tbaa !24
  %t514 = getelementptr %"compiler/cond:Value", ptr %l24, i32 0, i32 2
  %t515 = load double, ptr %t514, !tbaa !26
  %t516 = getelementptr %"compiler/cond:Value", ptr %l24, i32 0, i32 3
  %t517 = load i64, ptr %t516, !tbaa !24
  %t518 = getelementptr %"compiler/cond:Value", ptr %l23, i32 0, i32 4
  %t519 = load i64, ptr %t518, !tbaa !24
  %t520 = getelementptr %"compiler/cond:Value", ptr %l23, i32 0, i32 5
  %t521 = load i1, ptr %t520, !tbaa !21
  %t528 = call %"compiler/cond:Value" @compiler_2fcond_3aValue_2ector(ptr %s12, i32 %t511, i64 %t513, double %t515, i64 %t517, i64 %t519, i1 %t521, i1 false)
  store %"compiler/cond:Value" %t528, ptr %l247
  br label %bb118
bb118:
  call void @__olang_scope_close(ptr %s12)
  call void @__olang_scope_close(ptr %s0)
  %t529 = load %"compiler/cond:Value", ptr %l247
  store %"compiler/cond:Value" %t529, ptr %rv
  br label %ret
bb119:
  br label %bb120
bb120:
  %t530 = load %"compiler/cond:Value", ptr %l23
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/cond:Value" %t530, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/cond:Value", ptr %rv
  ret %"compiler/cond:Value" %rr
}

define dso_local %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2eintDeclared(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, %"compiler/cond:Value" %a2, i64 %a3, i1 %a4) #0 {
entry:
  %l2 = alloca %"compiler/cond:Value"
  %l3 = alloca i64
  %l4 = alloca i1
  %l8 = alloca i1
  %l12 = alloca i1
  %l16 = alloca %"compiler/cond:Value"
  %l21 = alloca %"compiler/cond:Value"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/cond:Value"
  store %"compiler/cond:Value" %a2, ptr %l2
  store i64 %a3, ptr %l3
  store i1 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = getelementptr %"compiler/cond:Value", ptr %l2, i32 0, i32 0
  %t2 = load i32, ptr %t1, !range !{i32 0, i32 5}
  %t4 = trunc i64 2 to i32
  %t5 = icmp eq i32 %t2, %t4
  %t7 = xor i1 %t5, true
  br i1 %t7, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb4
bb2:
  %t9 = getelementptr %"compiler/cond:Value", ptr %l2, i32 0, i32 1
  %t10 = load i64, ptr %t9, !tbaa !24
  %t11 = load i64, ptr %l3, !tbaa !24
  %t12 = load i1, ptr %l4, !tbaa !21
  %t16 = call i1 @compiler_2fcond_2efits(i64 %t10, i64 %t11, i1 %t12)
  store i1 %t16, ptr %l12
  br label %bb3
bb3:
  %t17 = load i1, ptr %l12, !tbaa !21
  %t18 = xor i1 %t17, true
  store i1 %t18, ptr %l8, !tbaa !21
  br label %bb4
bb4:
  %t20 = load i1, ptr %l8, !tbaa !21
  br i1 %t20, label %bb5, label %bb6
bb5:
  %t25 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2edefer(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
  store %"compiler/cond:Value" %t25, ptr %l16
  br label %bb7
bb6:
  br label %bb8
bb7:
  call void @__olang_scope_close(ptr %s0)
  %t26 = load %"compiler/cond:Value", ptr %l16
  store %"compiler/cond:Value" %t26, ptr %rv
  br label %ret
bb8:
  %t27 = getelementptr %"compiler/cond:Value", ptr %l2, i32 0, i32 1
  %t28 = load i64, ptr %t27, !tbaa !24
  %t29 = load i64, ptr %l3, !tbaa !24
  %t30 = load i1, ptr %l4, !tbaa !21
  %t35 = call %"compiler/cond:Value" @compiler_2fcond_3aValue_2ector(ptr %s0, i32 2, i64 %t28, double 0x0000000000000000, i64 0, i64 %t29, i1 %t30, i1 false)
  store %"compiler/cond:Value" %t35, ptr %l21
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s0)
  %t36 = load %"compiler/cond:Value", ptr %l21
  store %"compiler/cond:Value" %t36, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/cond:Value", ptr %rv
  ret %"compiler/cond:Value" %rr
}

define dso_local i1 @compiler_2fcond_2ecompiler_2fcond_3aEval_2eisFixed(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca i64
  %l8 = alloca i64
  %l10 = alloca i64
  %l15 = alloca i32
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/cond:Eval", ptr %a0, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/cond:Scope", ptr %t4, i32 0, i32 3
  store ptr %t6, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t8 = load i64, ptr %l3, !tbaa !24
  store i64 %t8, ptr %l8, !tbaa !24
  %t9 = load ptr, ptr %l2, !tbaa !29
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t9)
  store i64 %t11, ptr %l10
  br label %bb2
bb2:
  %t12 = load i64, ptr %l8, !tbaa !24
  %t13 = load i64, ptr %l10, !tbaa !24
  %t14 = icmp slt i64 %t12, %t13
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb3, label %bb4
bb3:
  br label %bb11
bb4:
  br label %bb5
bb5:
  %t18 = load ptr, ptr %l2, !tbaa !29
  %t19 = load i64, ptr %l3, !tbaa !24
  %t22 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eAt_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t18, i64 %t19)
  store i32 %t22, ptr %l15
  br label %bb6
bb6:
  %t23 = load i32, ptr %l15, !tbaa !23
  %t28 = icmp eq i32 %t23, %a1
  br i1 %t28, label %bb7, label %bb8
bb7:
  store i1 true, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t31 = load i64, ptr %l3, !tbaa !24
  %t33 = add i64 %t31, 1
  store i64 %t33, ptr %l3, !tbaa !24
  br label %bb1
bb11:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcond_2ecompiler_2fcond_3aEval_2eisLocal(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca i64
  %l7 = alloca i1
  %l12 = alloca i64
  %l14 = alloca i64
  %l19 = alloca i32
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i1 @compiler_2fcond_2ecompiler_2fcond_3aEval_2eisFixed(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l7
  br label %bb1
bb1:
  %t6 = load i1, ptr %l7, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/cond:Eval", ptr %t8, i32 0, i32 2
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t13 = getelementptr %"compiler/cond:Scope", ptr %t11, i32 0, i32 2
  store ptr %t13, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb5
bb5:
  %t15 = load i64, ptr %l3, !tbaa !24
  store i64 %t15, ptr %l12, !tbaa !24
  %t16 = load ptr, ptr %l2, !tbaa !29
  %t18 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t16)
  store i64 %t18, ptr %l14
  br label %bb6
bb6:
  %t19 = load i64, ptr %l12, !tbaa !24
  %t20 = load i64, ptr %l14, !tbaa !24
  %t21 = icmp slt i64 %t19, %t20
  %t23 = xor i1 %t21, true
  br i1 %t23, label %bb7, label %bb8
bb7:
  br label %bb15
bb8:
  br label %bb9
bb9:
  %t25 = load ptr, ptr %l2, !tbaa !29
  %t26 = load i64, ptr %l3, !tbaa !24
  %t29 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eAt_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t25, i64 %t26)
  store i32 %t29, ptr %l19
  br label %bb10
bb10:
  %t30 = load i32, ptr %l19, !tbaa !23
  %t32 = load i32, ptr %l1, !tbaa !23
  %t35 = icmp eq i32 %t30, %t32
  br i1 %t35, label %bb11, label %bb12
bb11:
  store i1 true, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t38 = load i64, ptr %l3, !tbaa !24
  %t40 = add i64 %t38, 1
  store i64 %t40, ptr %l3, !tbaa !24
  br label %bb5
bb15:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2eliteral(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l6 = alloca double
  %l8 = alloca { i64, ptr }
  %l10 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l21 = alloca i1
  %l22 = alloca %"compiler/cond:Value"
  %l25 = alloca i64
  %l26 = alloca { i64, ptr }
  %l27 = alloca i64
  %l28 = alloca i32
  %l29 = alloca i64
  %l30 = alloca i32
  %l33 = alloca %"compiler/cond:Value"
  %l37 = alloca i1
  %l38 = alloca { i64, ptr }
  %l41 = alloca i1
  %l42 = alloca { i64, ptr }
  %l45 = alloca i1
  %l46 = alloca { i64, ptr }
  %l48 = alloca i1
  %l52 = alloca i1
  %l57 = alloca %"compiler/cond:Value"
  %l61 = alloca %"compiler/cond:Value"
  %l64 = alloca double
  %l66 = alloca { i64, ptr }
  %l68 = alloca double
  %l69 = alloca i32
  %l72 = alloca %"compiler/cond:Value"
  %l79 = alloca %"compiler/cond:Value"
  %l82 = alloca %"compiler/cond:Value"
  %l85 = alloca i32
  %l86 = alloca ptr
  %l88 = alloca { i64, ptr }
  %l90 = alloca i64
  %l91 = alloca %"compiler/cond:Value"
  %l94 = alloca %"compiler/cond:Value"
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %rv = alloca %"compiler/cond:Value"
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/cond:Eval", ptr %t1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l8, !tbaa !27
  %t5 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t6 = load i32, ptr %t5, !tbaa !23
  %t8 = sext i32 %t6 to i64
  store i64 %t8, ptr %l10, !tbaa !24
  %t9 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 1
  %t10 = load i32, ptr %t9, !tbaa !23
  %t12 = sext i32 %t10 to i64
  store i64 %t12, ptr %l12, !tbaa !24
  %t13 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t13, 0
  store i64 %t14, ptr %l13, !tbaa !24
  %t15 = load i64, ptr %l10, !tbaa !24
  %t16 = icmp sge i64 %t15, 0
  br i1 %t16, label %bb1, label %bb2
bb1:
  %t18 = load i64, ptr %l10, !tbaa !24
  %t19 = load i64, ptr %l12, !tbaa !24
  %t20 = icmp sle i64 %t18, %t19
  br i1 %t20, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_f112bf10a44ab894_cc7246c1c5f7ae68)
  unreachable
bb3:
  %t22 = load i64, ptr %l12, !tbaa !24
  %t23 = load i64, ptr %l13, !tbaa !24
  %t24 = icmp sle i64 %t22, %t23
  br i1 %t24, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_f112bf10a44ab894_cc7246c1c5f7ae68)
  unreachable
bb5:
  %t26 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = load i64, ptr %l10, !tbaa !24
  %t29 = load i64, ptr %l12, !tbaa !24
  %t30 = getelementptr i8, ptr %t27, i64 %t28
  %t31 = sub i64 %t29, %t28
  %t32 = insertvalue { i64, ptr } undef, i64 %t31, 0
  %t33 = insertvalue { i64, ptr } %t32, ptr %t30, 1
  store { i64, ptr } %t33, ptr %l3, !tbaa !27
  %t35 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t37 = trunc i64 6 to i32
  %t38 = icmp eq i32 %t35, %t37
  br i1 %t38, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_f112bf10a44ab894_cc7246c1c5f7ae68)
  unreachable
bb7:
  br label %bb9
bb8:
  br label %bb12
bb9:
  store %olang.scope zeroinitializer, ptr %s1
  %t40 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t42 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s1, { i64, ptr } %t40, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d45, i32 0, i32 1) })
  store i1 %t42, ptr %l21
  br label %bb10
bb10:
  %t43 = load i1, ptr %l21, !tbaa !21
  %t44 = call %"compiler/cond:Value" @compiler_2fcond_2eValue_2ebool(i1 %t43)
  store %"compiler/cond:Value" %t44, ptr %l22
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s1)
  %t45 = load %"compiler/cond:Value", ptr %l22
  store %"compiler/cond:Value" %t45, ptr %rv
  br label %ret
bb12:
  %t46 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t48 = trunc i64 2 to i32
  %t49 = icmp eq i32 %t46, %t48
  br i1 %t49, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb41
bb15:
  store %olang.scope zeroinitializer, ptr %s2
  %t51 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t51, ptr %l26, !tbaa !27
  %t52 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s2, i64 0)
  %t53 = extractvalue { i32, i64 } %t52, 1
  %t54 = extractvalue { i32, i64 } %t52, 0
  store i32 %t54, ptr %l28
  %t55 = icmp ne i32 %t54, 0
  br i1 %t55, label %bb17, label %ok.56, !prof !99
ok.56:
  store i64 %t53, ptr %l27
  br label %bb16
bb16:
  %t57 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t58 = load i64, ptr %l27, !tbaa !24
  %t59 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseUint(ptr %v0, { i64, ptr } %t57, i64 %t58)
  %t60 = extractvalue { i32, i64 } %t59, 1
  %t61 = extractvalue { i32, i64 } %t59, 0
  store i32 %t61, ptr %l30
  %t62 = icmp ne i32 %t61, 0
  br i1 %t62, label %bb20, label %ok.63, !prof !99
ok.63:
  store i64 %t60, ptr %l29
  br label %bb19
bb17:
  br label %bb18
bb18:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load %"compiler/source:Span", ptr %l1
  %t68 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2edefer(ptr %v0, ptr %t64, %"compiler/source:Span" %t65)
  store %"compiler/cond:Value" %t68, ptr %l33
  br label %bb21
bb19:
  %t69 = load i64, ptr %l29, !tbaa !65
  store i64 %t69, ptr %l25, !tbaa !65
  br label %bb22
bb20:
  br label %bb18
bb21:
  call void @__olang_scope_close(ptr %s2)
  %t70 = load %"compiler/cond:Value", ptr %l33
  store %"compiler/cond:Value" %t70, ptr %rv
  br label %ret
bb22:
  %t71 = load i64, ptr %l25, !tbaa !65
  store i64 %t71, ptr %l4, !tbaa !65
  %t72 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t74 = extractvalue { i64, ptr } %t72, 0
  %t76 = icmp sgt i64 %t74, 2
  br i1 %t76, label %bb23, label %bb24
bb23:
  %t78 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t78, ptr %l38, !tbaa !27
  %t79 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !27
  %t81 = getelementptr i8, ptr %t80, i64 0
  %t82 = load i8, ptr %t81, !tbaa !32
  %t84 = icmp eq i8 %t82, 48
  store i1 %t84, ptr %l37, !tbaa !21
  br label %bb25
bb24:
  store i1 false, ptr %l37, !tbaa !21
  br label %bb25
bb25:
  %t86 = load i1, ptr %l37, !tbaa !21
  br i1 %t86, label %bb26, label %bb27
bb26:
  %t87 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t87, ptr %l42, !tbaa !27
  %t88 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !27
  %t90 = getelementptr i8, ptr %t89, i64 1
  %t91 = load i8, ptr %t90, !tbaa !32
  %t93 = icmp ne i8 %t91, 46
  store i1 %t93, ptr %l41, !tbaa !21
  br label %bb28
bb27:
  store i1 false, ptr %l41, !tbaa !21
  br label %bb28
bb28:
  %t95 = load i1, ptr %l41, !tbaa !21
  br i1 %t95, label %bb29, label %bb30
bb29:
  %t96 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t96, ptr %l46, !tbaa !27
  %t97 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !27
  %t99 = getelementptr i8, ptr %t98, i64 1
  %t100 = load i8, ptr %t99, !tbaa !32
  %t102 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t100)
  store i1 %t102, ptr %l48
  br label %bb31
bb30:
  store i1 false, ptr %l45, !tbaa !21
  br label %bb32
bb31:
  %t103 = load i1, ptr %l48, !tbaa !21
  %t104 = xor i1 %t103, true
  store i1 %t104, ptr %l45, !tbaa !21
  br label %bb32
bb32:
  %t106 = load i1, ptr %l45, !tbaa !21
  %t109 = xor i1 %t106, true
  br i1 %t109, label %bb33, label %bb34
bb33:
  %t111 = load i64, ptr %l4, !tbaa !65
  %t113 = icmp ugt i64 %t111, 9223372036854775807
  store i1 %t113, ptr %l52, !tbaa !21
  br label %bb35
bb34:
  store i1 false, ptr %l52, !tbaa !21
  br label %bb35
bb35:
  %t115 = load i1, ptr %l52, !tbaa !21
  br i1 %t115, label %bb36, label %bb37
bb36:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t117 = load %"compiler/source:Span", ptr %l1
  %t120 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2edefer(ptr %v0, ptr %t116, %"compiler/source:Span" %t117)
  store %"compiler/cond:Value" %t120, ptr %l57
  br label %bb38
bb37:
  br label %bb39
bb38:
  call void @__olang_scope_close(ptr %s2)
  %t121 = load %"compiler/cond:Value", ptr %l57
  store %"compiler/cond:Value" %t121, ptr %rv
  br label %ret
bb39:
  %t122 = load i64, ptr %l4, !tbaa !65
  %t126 = call %"compiler/cond:Value" @compiler_2fcond_3aValue_2ector(ptr %s2, i32 2, i64 %t122, double 0x0000000000000000, i64 0, i64 0, i1 false, i1 false)
  store %"compiler/cond:Value" %t126, ptr %l61
  br label %bb40
bb40:
  call void @__olang_scope_close(ptr %s2)
  %t127 = load %"compiler/cond:Value", ptr %l61
  store %"compiler/cond:Value" %t127, ptr %rv
  br label %ret
bb41:
  %t128 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t130 = trunc i64 3 to i32
  %t131 = icmp eq i32 %t128, %t130
  br i1 %t131, label %bb42, label %bb43
bb42:
  br label %bb44
bb43:
  br label %bb56
bb44:
  store %olang.scope zeroinitializer, ptr %s5
  %t133 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t135 = call { i64, ptr } @compiler_2fcond_2estripped(ptr %v0, ptr %s5, { i64, ptr } %t133)
  store { i64, ptr } %t135, ptr %l66
  br label %bb45
bb45:
  %t136 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t137 = extractvalue { i64, ptr } %t136, 0
  %t138 = extractvalue { i64, ptr } %t136, 1
  %t139 = mul i64 %t137, 1
  %t140 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t139)
  call void @llvm.memcpy.p0.p0.i64(ptr %t140, ptr %t138, i64 %t139, i1 false)
  %t141 = insertvalue { i64, ptr } undef, i64 %t137, 0
  %t142 = insertvalue { i64, ptr } %t141, ptr %t140, 1
  %t144 = call { i32, double } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseFloat(ptr %s5, { i64, ptr } %t142)
  %t145 = extractvalue { i32, double } %t144, 1
  %t146 = extractvalue { i32, double } %t144, 0
  store i32 %t146, ptr %l69
  %t147 = icmp ne i32 %t146, 0
  br i1 %t147, label %bb47, label %ok.148, !prof !99
ok.148:
  store double %t145, ptr %l68
  br label %bb46
bb46:
  %t149 = load double, ptr %l68, !tbaa !26
  store double %t149, ptr %l64, !tbaa !26
  br label %bb50
bb47:
  br label %bb48
bb48:
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t151 = load %"compiler/source:Span", ptr %l1
  %t154 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2edefer(ptr %v0, ptr %t150, %"compiler/source:Span" %t151)
  store %"compiler/cond:Value" %t154, ptr %l72
  br label %bb49
bb49:
  call void @__olang_scope_close(ptr %s5)
  %t155 = load %"compiler/cond:Value", ptr %l72
  store %"compiler/cond:Value" %t155, ptr %rv
  br label %ret
bb50:
  %t156 = load double, ptr %l64, !tbaa !26
  store double %t156, ptr %l6, !tbaa !26
  %t157 = load double, ptr %l6, !tbaa !26
  %t158 = load double, ptr %l6, !tbaa !26
  %t161 = fsub double %t157, %t158
  %t163 = fcmp une double %t161, 0x0000000000000000
  br i1 %t163, label %bb51, label %bb52
bb51:
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t166 = load %"compiler/source:Span", ptr %l1
  %t169 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2edefer(ptr %v0, ptr %t165, %"compiler/source:Span" %t166)
  store %"compiler/cond:Value" %t169, ptr %l79
  br label %bb53
bb52:
  br label %bb54
bb53:
  call void @__olang_scope_close(ptr %s5)
  %t170 = load %"compiler/cond:Value", ptr %l79
  store %"compiler/cond:Value" %t170, ptr %rv
  br label %ret
bb54:
  %t171 = load double, ptr %l6, !tbaa !26
  %t174 = call %"compiler/cond:Value" @compiler_2fcond_3aValue_2ector(ptr %s5, i32 3, i64 0, double %t171, i64 0, i64 0, i1 false, i1 false)
  store %"compiler/cond:Value" %t174, ptr %l82
  br label %bb55
bb55:
  call void @__olang_scope_close(ptr %s5)
  %t175 = load %"compiler/cond:Value", ptr %l82
  store %"compiler/cond:Value" %t175, ptr %rv
  br label %ret
bb56:
  %t176 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t178 = trunc i64 5 to i32
  %t179 = icmp eq i32 %t176, %t178
  br i1 %t179, label %bb57, label %bb58
bb57:
  br label %bb59
bb58:
  br label %bb63
bb59:
  store %olang.scope zeroinitializer, ptr %s8
  store i32 4, ptr %l85
  %t181 = load ptr, ptr %l0, !tbaa !29
  store ptr %t181, ptr %l86, !tbaa !29
  %t182 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t184 = call { i64, ptr } @compiler_2fscan_2eLiteralText(ptr %v0, ptr %s8, { i64, ptr } %t182)
  store { i64, ptr } %t184, ptr %l88
  br label %bb60
bb60:
  %t185 = load { i64, ptr }, ptr %l88, !tbaa !27
  %t186 = extractvalue { i64, ptr } %t185, 0
  %t187 = extractvalue { i64, ptr } %t185, 1
  %t188 = mul i64 %t186, 1
  %t189 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t188)
  call void @llvm.memcpy.p0.p0.i64(ptr %t189, ptr %t187, i64 %t188, i1 false)
  %t190 = insertvalue { i64, ptr } undef, i64 %t186, 0
  %t191 = insertvalue { i64, ptr } %t190, ptr %t189, 1
  %t192 = load ptr, ptr %l86, !tbaa !29
  %t194 = call i64 @compiler_2fcond_2ecompiler_2fcond_3aEval_2eaddText(ptr %v0, ptr %s8, ptr %t192, { i64, ptr } %t191)
  store i64 %t194, ptr %l90
  br label %bb61
bb61:
  %t195 = load i32, ptr %l85, !range !{i32 0, i32 5}
  %t196 = load i64, ptr %l90, !tbaa !24
  %t197 = call %"compiler/cond:Value" @compiler_2fcond_3aValue_2ector(ptr %s8, i32 %t195, i64 0, double 0x0000000000000000, i64 %t196, i64 0, i1 false, i1 false)
  store %"compiler/cond:Value" %t197, ptr %l91
  br label %bb62
bb62:
  call void @__olang_scope_close(ptr %s8)
  %t198 = load %"compiler/cond:Value", ptr %l91
  store %"compiler/cond:Value" %t198, ptr %rv
  br label %ret
bb63:
  br i1 true, label %bb64, label %bb65
bb64:
  br label %bb66
bb65:
  br label %bb68
bb66:
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t200 = load %"compiler/source:Span", ptr %l1
  %t203 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2edefer(ptr %v0, ptr %t199, %"compiler/source:Span" %t200)
  store %"compiler/cond:Value" %t203, ptr %l94
  br label %bb67
bb67:
  %t204 = load %"compiler/cond:Value", ptr %l94
  store %"compiler/cond:Value" %t204, ptr %rv
  br label %ret
bb68:
  call void @__olang_check_failed(ptr @olang_loc_f4ea2c1e339850b2_91ab7669be26b6c6)
  unreachable
ret:
  %rr = load %"compiler/cond:Value", ptr %rv
  ret %"compiler/cond:Value" %rr
}

define dso_local %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2elogic(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i32
  %l5 = alloca %"compiler/cond:Value"
  %l6 = alloca i1
  %l7 = alloca %"compiler/cond:Value"
  %l10 = alloca %"compiler/cond:Value"
  %l14 = alloca i1
  %l17 = alloca i1
  %l18 = alloca i64
  %l21 = alloca i64
  %l24 = alloca ptr
  %l29 = alloca %"compiler/cond:Value"
  %l31 = alloca ptr
  %l38 = alloca i1
  %l42 = alloca i1
  %l46 = alloca i1
  %l50 = alloca ptr
  %l51 = alloca %"compiler/source:Span"
  %l54 = alloca { i64, ptr }
  %l56 = alloca %"compiler/diagmsg:Msg"
  %l57 = alloca %"compiler/cond:Value"
  %l60 = alloca i1
  %l63 = alloca %"compiler/cond:Value"
  %l68 = alloca i1
  %l71 = alloca %"compiler/cond:Value"
  %l74 = alloca i1
  %l77 = alloca %"compiler/cond:Value"
  %rv = alloca %"compiler/cond:Value"
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2eexpr(ptr %v0, ptr %v1, ptr %t1, ptr %a3)
  store %"compiler/cond:Value" %t5, ptr %l10
  br label %bb1
bb1:
  %t6 = load %"compiler/cond:Value", ptr %l10
  store %"compiler/cond:Value" %t6, ptr %l5
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/cond:Eval", ptr %t7, i32 0, i32 4
  %t10 = load i1, ptr %t9, !tbaa !21
  %t12 = xor i1 %t10, true
  br i1 %t12, label %bb2, label %bb3
bb2:
  %t14 = getelementptr %"compiler/cond:Value", ptr %l5, i32 0, i32 0
  %t15 = load i32, ptr %t14, !range !{i32 0, i32 5}
  %t17 = trunc i64 1 to i32
  %t18 = icmp eq i32 %t15, %t17
  store i1 %t18, ptr %l14, !tbaa !21
  br label %bb4
bb3:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb4
bb4:
  %t20 = load i1, ptr %l14, !tbaa !21
  br i1 %t20, label %bb5, label %bb6
bb5:
  %t21 = getelementptr %"compiler/cond:Value", ptr %l5, i32 0, i32 1
  %t22 = load i64, ptr %t21, !tbaa !24
  store i64 %t22, ptr %l18, !tbaa !24
  %t23 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t25 = trunc i64 46 to i32
  %t26 = icmp eq i32 %t23, %t25
  br i1 %t26, label %bb7, label %bb8
bb6:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb10
bb7:
  store i64 1, ptr %l21, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb9
bb9:
  %t28 = load i64, ptr %l18, !tbaa !24
  %t29 = load i64, ptr %l21, !tbaa !24
  %t30 = icmp eq i64 %t28, %t29
  store i1 %t30, ptr %l17, !tbaa !21
  br label %bb10
bb10:
  %t32 = load i1, ptr %l17, !tbaa !21
  store i1 %t32, ptr %l6, !tbaa !21
  %t33 = load i1, ptr %l6, !tbaa !21
  br i1 %t33, label %bb11, label %bb12
bb11:
  %t35 = load ptr, ptr %l0, !tbaa !29
  store ptr %t35, ptr %l24, !tbaa !29
  %t36 = load ptr, ptr %l24, !tbaa !29
  %t37 = getelementptr %"compiler/cond:Eval", ptr %t36, i32 0, i32 10
  %t38 = load i64, ptr %t37, !tbaa !24
  %t40 = add i64 %t38, 1
  %t42 = load ptr, ptr %l24, !tbaa !29
  %t43 = getelementptr %"compiler/cond:Eval", ptr %t42, i32 0, i32 10
  store i64 %t40, ptr %t43, !tbaa !24
  br label %bb13
bb12:
  br label %bb13
bb13:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t48 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2eexpr(ptr %v0, ptr %v2, ptr %t44, ptr %a4)
  store %"compiler/cond:Value" %t48, ptr %l29
  br label %bb14
bb14:
  %t49 = load %"compiler/cond:Value", ptr %l29
  store %"compiler/cond:Value" %t49, ptr %l7
  %t50 = load i1, ptr %l6, !tbaa !21
  br i1 %t50, label %bb15, label %bb16
bb15:
  %t52 = load ptr, ptr %l0, !tbaa !29
  store ptr %t52, ptr %l31, !tbaa !29
  %t53 = load ptr, ptr %l31, !tbaa !29
  %t54 = getelementptr %"compiler/cond:Eval", ptr %t53, i32 0, i32 10
  %t55 = load i64, ptr %t54, !tbaa !24
  %t57 = sub i64 %t55, 1
  %t59 = load ptr, ptr %l31, !tbaa !29
  %t60 = getelementptr %"compiler/cond:Eval", ptr %t59, i32 0, i32 10
  store i64 %t57, ptr %t60, !tbaa !24
  %t61 = load %"compiler/cond:Value", ptr %l5
  store %"compiler/cond:Value" %t61, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t63 = getelementptr %"compiler/cond:Value", ptr %l5, i32 0, i32 0
  %t64 = load i32, ptr %t63, !range !{i32 0, i32 5}
  %t66 = trunc i64 0 to i32
  %t67 = icmp eq i32 %t64, %t66
  %t69 = xor i1 %t67, true
  br i1 %t69, label %bb18, label %bb19
bb18:
  %t71 = getelementptr %"compiler/cond:Value", ptr %l5, i32 0, i32 0
  %t72 = load i32, ptr %t71, !range !{i32 0, i32 5}
  %t74 = trunc i64 1 to i32
  %t75 = icmp eq i32 %t72, %t74
  %t77 = xor i1 %t75, true
  store i1 %t77, ptr %l38, !tbaa !21
  br label %bb20
bb19:
  store i1 false, ptr %l38, !tbaa !21
  br label %bb20
bb20:
  %t79 = load i1, ptr %l38, !tbaa !21
  br i1 %t79, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l42, !tbaa !21
  br label %bb26
bb22:
  %t80 = getelementptr %"compiler/cond:Value", ptr %l7, i32 0, i32 0
  %t81 = load i32, ptr %t80, !range !{i32 0, i32 5}
  %t83 = trunc i64 0 to i32
  %t84 = icmp eq i32 %t81, %t83
  %t86 = xor i1 %t84, true
  br i1 %t86, label %bb23, label %bb24
bb23:
  %t88 = getelementptr %"compiler/cond:Value", ptr %l7, i32 0, i32 0
  %t89 = load i32, ptr %t88, !range !{i32 0, i32 5}
  %t91 = trunc i64 1 to i32
  %t92 = icmp eq i32 %t89, %t91
  %t94 = xor i1 %t92, true
  store i1 %t94, ptr %l46, !tbaa !21
  br label %bb25
bb24:
  store i1 false, ptr %l46, !tbaa !21
  br label %bb25
bb25:
  %t96 = load i1, ptr %l46, !tbaa !21
  store i1 %t96, ptr %l42, !tbaa !21
  br label %bb26
bb26:
  %t97 = load i1, ptr %l42, !tbaa !21
  br i1 %t97, label %bb27, label %bb28
bb27:
  %t98 = load ptr, ptr %l0, !tbaa !29
  store ptr %t98, ptr %l50, !tbaa !29
  %t99 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t99, ptr %l51
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t101 = load %"compiler/source:Span", ptr %l1
  %t104 = call { i64, ptr } @compiler_2fcond_2ecompiler_2fcond_3aEval_2etokText(ptr %v0, ptr %v0, ptr %t100, %"compiler/source:Span" %t101)
  store { i64, ptr } %t104, ptr %l54
  br label %bb29
bb28:
  br label %bb32
bb29:
  %t105 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t106 = extractvalue { i64, ptr } %t105, 0
  %t107 = extractvalue { i64, ptr } %t105, 1
  %t108 = mul i64 %t106, 1
  %t109 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t108)
  call void @llvm.memcpy.p0.p0.i64(ptr %t109, ptr %t107, i64 %t108, i1 false)
  %t110 = insertvalue { i64, ptr } undef, i64 %t106, 0
  %t111 = insertvalue { i64, ptr } %t110, ptr %t109, 1
  %t113 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondTypes(ptr %v0, ptr %v0, { i64, ptr } %t111)
  store %"compiler/diagmsg:Msg" %t113, ptr %l56
  br label %bb30
bb30:
  %t114 = load ptr, ptr %l50, !tbaa !29
  %t115 = load %"compiler/source:Span", ptr %l51
  %t116 = load %"compiler/diagmsg:Msg", ptr %l56
  %t117 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2efail(ptr %v0, ptr %v0, ptr %t114, %"compiler/source:Span" %t115, %"compiler/diagmsg:Msg" %t116)
  store %"compiler/cond:Value" %t117, ptr %l57
  br label %bb31
bb31:
  %t118 = load %"compiler/cond:Value", ptr %l57
  store %"compiler/cond:Value" %t118, ptr %rv
  br label %ret
bb32:
  %t119 = getelementptr %"compiler/cond:Value", ptr %l5, i32 0, i32 0
  %t120 = load i32, ptr %t119, !range !{i32 0, i32 5}
  %t122 = trunc i64 0 to i32
  %t123 = icmp eq i32 %t120, %t122
  br i1 %t123, label %bb33, label %bb34
bb33:
  store i1 true, ptr %l60, !tbaa !21
  br label %bb35
bb34:
  %t125 = getelementptr %"compiler/cond:Value", ptr %l7, i32 0, i32 0
  %t126 = load i32, ptr %t125, !range !{i32 0, i32 5}
  %t128 = trunc i64 0 to i32
  %t129 = icmp eq i32 %t126, %t128
  store i1 %t129, ptr %l60, !tbaa !21
  br label %bb35
bb35:
  %t131 = load i1, ptr %l60, !tbaa !21
  br i1 %t131, label %bb36, label %bb37
bb36:
  %t132 = call %"compiler/cond:Value" @compiler_2fcond_2eValue_2enone()
  store %"compiler/cond:Value" %t132, ptr %l63
  br label %bb38
bb37:
  br label %bb39
bb38:
  %t133 = load %"compiler/cond:Value", ptr %l63
  store %"compiler/cond:Value" %t133, ptr %rv
  br label %ret
bb39:
  %t134 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t136 = trunc i64 46 to i32
  %t137 = icmp eq i32 %t134, %t136
  br i1 %t137, label %bb40, label %bb41
bb40:
  %t139 = getelementptr %"compiler/cond:Value", ptr %l5, i32 0, i32 1
  %t140 = load i64, ptr %t139, !tbaa !24
  %t142 = icmp ne i64 %t140, 0
  br i1 %t142, label %bb42, label %bb43
bb41:
  br label %bb46
bb42:
  store i1 true, ptr %l68, !tbaa !21
  br label %bb44
bb43:
  %t144 = getelementptr %"compiler/cond:Value", ptr %l7, i32 0, i32 1
  %t145 = load i64, ptr %t144, !tbaa !24
  %t147 = icmp ne i64 %t145, 0
  store i1 %t147, ptr %l68, !tbaa !21
  br label %bb44
bb44:
  %t149 = load i1, ptr %l68, !tbaa !21
  %t150 = call %"compiler/cond:Value" @compiler_2fcond_2eValue_2ebool(i1 %t149)
  store %"compiler/cond:Value" %t150, ptr %l71
  br label %bb45
bb45:
  %t151 = load %"compiler/cond:Value", ptr %l71
  store %"compiler/cond:Value" %t151, ptr %rv
  br label %ret
bb46:
  %t152 = getelementptr %"compiler/cond:Value", ptr %l5, i32 0, i32 1
  %t153 = load i64, ptr %t152, !tbaa !24
  %t155 = icmp ne i64 %t153, 0
  br i1 %t155, label %bb47, label %bb48
bb47:
  %t157 = getelementptr %"compiler/cond:Value", ptr %l7, i32 0, i32 1
  %t158 = load i64, ptr %t157, !tbaa !24
  %t160 = icmp ne i64 %t158, 0
  store i1 %t160, ptr %l74, !tbaa !21
  br label %bb49
bb48:
  store i1 false, ptr %l74, !tbaa !21
  br label %bb49
bb49:
  %t162 = load i1, ptr %l74, !tbaa !21
  %t163 = call %"compiler/cond:Value" @compiler_2fcond_2eValue_2ebool(i1 %t162)
  store %"compiler/cond:Value" %t163, ptr %l77
  br label %bb50
bb50:
  %t164 = load %"compiler/cond:Value", ptr %l77
  store %"compiler/cond:Value" %t164, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/cond:Value", ptr %rv
  ret %"compiler/cond:Value" %rr
}

define dso_local i1 @compiler_2fcond_2ecompiler_2fcond_3aEval_2ementionsLocal(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l8 = alloca ptr
  %l9 = alloca { i64, ptr }
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca ptr
  %l17 = alloca ptr
  %l18 = alloca ptr
  %l19 = alloca ptr
  %l20 = alloca { i64, ptr }
  %l24 = alloca i1
  %l25 = alloca ptr
  %l26 = alloca i1
  %l33 = alloca i1
  %l34 = alloca ptr
  %l35 = alloca i1
  %l40 = alloca ptr
  %l41 = alloca i1
  %l46 = alloca ptr
  %l47 = alloca i1
  %l52 = alloca ptr
  %l53 = alloca i1
  %l58 = alloca ptr
  %l59 = alloca i1
  %l67 = alloca i1
  %l68 = alloca ptr
  %l69 = alloca i1
  %l79 = alloca i1
  %l80 = alloca i1
  %l84 = alloca i1
  %l85 = alloca ptr
  %l86 = alloca i1
  %l96 = alloca i1
  %l97 = alloca i1
  %l100 = alloca i1
  %l101 = alloca ptr
  %l102 = alloca i1
  %l112 = alloca i1
  %l113 = alloca i1
  %l116 = alloca i1
  %l117 = alloca ptr
  %l118 = alloca i1
  %l126 = alloca i1
  %l127 = alloca ptr
  %l128 = alloca i1
  %l140 = alloca i1
  %l141 = alloca i1
  %l145 = alloca i1
  %l146 = alloca i1
  %l150 = alloca i1
  %l151 = alloca ptr
  %l152 = alloca i1
  %l157 = alloca ptr
  %l158 = alloca i1
  %l163 = alloca ptr
  %l164 = alloca i1
  %l169 = alloca ptr
  %l170 = alloca i1
  %l175 = alloca ptr
  %l176 = alloca i1
  %l184 = alloca i1
  %l185 = alloca ptr
  %l186 = alloca i1
  %l193 = alloca ptr
  %l194 = alloca i1
  %l204 = alloca i1
  %l205 = alloca i1
  %l209 = alloca i1
  %l210 = alloca ptr
  %l211 = alloca i1
  %l223 = alloca i1
  %l224 = alloca i1
  %l227 = alloca i1
  %l228 = alloca i1
  %l231 = alloca i1
  %l232 = alloca ptr
  %l233 = alloca i1
  %l238 = alloca ptr
  %l239 = alloca i1
  %l244 = alloca ptr
  %l245 = alloca i1
  %l250 = alloca ptr
  %l251 = alloca i1
  %l258 = alloca i1
  %l259 = alloca ptr
  %l260 = alloca i1
  %l263 = alloca ptr
  %l264 = alloca i1
  %l267 = alloca ptr
  %l268 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l1, !tbaa !29
  store ptr %t6, ptr %l25, !tbaa !29
  store i1 false, ptr %l26, !tbaa !21
  %t7 = load ptr, ptr %l25, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb4, label %bb5
bb4:
  %t10 = load ptr, ptr %l25, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 30}
  %t13 = icmp eq i64 %t11, 0
  store i1 %t13, ptr %l26, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l26, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr { i64, [4 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { %"compiler/source:Span", i32 }, ptr %t17, i32 0, i32 1
  %t19 = load i32, ptr %t18
  store i32 %t19, ptr %l2, !tbaa !23
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load i32, ptr %l2, !tbaa !23
  %t25 = call i1 @compiler_2fcond_2ecompiler_2fcond_3aEval_2eisLocal(ptr %v0, ptr %t21, i32 %t22)
  store i1 %t25, ptr %l33
  br label %bb9
bb9:
  %t26 = load i1, ptr %l33, !tbaa !21
  store i1 %t26, ptr %l24, !tbaa !21
  br label %bb179
bb10:
  %t27 = load ptr, ptr %l1, !tbaa !29
  store ptr %t27, ptr %l34, !tbaa !29
  store i1 false, ptr %l35, !tbaa !21
  %t28 = load ptr, ptr %l34, !tbaa !29
  %t29 = icmp ne ptr %t28, null
  br i1 %t29, label %bb11, label %bb12
bb11:
  %t31 = load ptr, ptr %l34, !tbaa !29
  %t32 = load i64, ptr %t31, !range !{i64 0, i64 30}
  %t34 = icmp eq i64 %t32, 2
  store i1 %t34, ptr %l35, !tbaa !21
  br label %bb12
bb12:
  %t35 = load i1, ptr %l35, !tbaa !21
  br i1 %t35, label %bb13, label %bb14
bb13:
  %t36 = load ptr, ptr %l1, !tbaa !29
  %t38 = getelementptr { i64, [4 x i64] }, ptr %t36, i32 0, i32 1
  %t39 = getelementptr { %"compiler/source:Span", ptr }, ptr %t38, i32 0, i32 1
  %t40 = load ptr, ptr %t39
  store ptr %t40, ptr %l3, !tbaa !29
  br label %bb31
bb14:
  %t42 = load ptr, ptr %l1, !tbaa !29
  store ptr %t42, ptr %l40, !tbaa !29
  store i1 false, ptr %l41, !tbaa !21
  %t43 = load ptr, ptr %l40, !tbaa !29
  %t44 = icmp ne ptr %t43, null
  br i1 %t44, label %bb15, label %bb16
bb15:
  %t46 = load ptr, ptr %l40, !tbaa !29
  %t47 = load i64, ptr %t46, !range !{i64 0, i64 30}
  %t49 = icmp eq i64 %t47, 26
  store i1 %t49, ptr %l41, !tbaa !21
  br label %bb16
bb16:
  %t50 = load i1, ptr %l41, !tbaa !21
  br i1 %t50, label %bb17, label %bb18
bb17:
  %t51 = load ptr, ptr %l1, !tbaa !29
  %t53 = getelementptr { i64, [4 x i64] }, ptr %t51, i32 0, i32 1
  %t54 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t53, i32 0, i32 2
  %t55 = load ptr, ptr %t54
  store ptr %t55, ptr %l3, !tbaa !29
  br label %bb31
bb18:
  %t57 = load ptr, ptr %l1, !tbaa !29
  store ptr %t57, ptr %l46, !tbaa !29
  store i1 false, ptr %l47, !tbaa !21
  %t58 = load ptr, ptr %l46, !tbaa !29
  %t59 = icmp ne ptr %t58, null
  br i1 %t59, label %bb19, label %bb20
bb19:
  %t61 = load ptr, ptr %l46, !tbaa !29
  %t62 = load i64, ptr %t61, !range !{i64 0, i64 30}
  %t64 = icmp eq i64 %t62, 28
  store i1 %t64, ptr %l47, !tbaa !21
  br label %bb20
bb20:
  %t65 = load i1, ptr %l47, !tbaa !21
  br i1 %t65, label %bb21, label %bb22
bb21:
  %t66 = load ptr, ptr %l1, !tbaa !29
  %t68 = getelementptr { i64, [4 x i64] }, ptr %t66, i32 0, i32 1
  %t69 = getelementptr { %"compiler/source:Span", ptr }, ptr %t68, i32 0, i32 1
  %t70 = load ptr, ptr %t69
  store ptr %t70, ptr %l3, !tbaa !29
  br label %bb31
bb22:
  %t72 = load ptr, ptr %l1, !tbaa !29
  store ptr %t72, ptr %l52, !tbaa !29
  store i1 false, ptr %l53, !tbaa !21
  %t73 = load ptr, ptr %l52, !tbaa !29
  %t74 = icmp ne ptr %t73, null
  br i1 %t74, label %bb23, label %bb24
bb23:
  %t76 = load ptr, ptr %l52, !tbaa !29
  %t77 = load i64, ptr %t76, !range !{i64 0, i64 30}
  %t79 = icmp eq i64 %t77, 3
  store i1 %t79, ptr %l53, !tbaa !21
  br label %bb24
bb24:
  %t80 = load i1, ptr %l53, !tbaa !21
  br i1 %t80, label %bb25, label %bb26
bb25:
  %t81 = load ptr, ptr %l1, !tbaa !29
  %t83 = getelementptr { i64, [4 x i64] }, ptr %t81, i32 0, i32 1
  %t84 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t83, i32 0, i32 2
  %t85 = load ptr, ptr %t84
  store ptr %t85, ptr %l3, !tbaa !29
  br label %bb31
bb26:
  %t87 = load ptr, ptr %l1, !tbaa !29
  store ptr %t87, ptr %l58, !tbaa !29
  store i1 false, ptr %l59, !tbaa !21
  %t88 = load ptr, ptr %l58, !tbaa !29
  %t89 = icmp ne ptr %t88, null
  br i1 %t89, label %bb27, label %bb28
bb27:
  %t91 = load ptr, ptr %l58, !tbaa !29
  %t92 = load i64, ptr %t91, !range !{i64 0, i64 30}
  %t94 = icmp eq i64 %t92, 14
  store i1 %t94, ptr %l59, !tbaa !21
  br label %bb28
bb28:
  %t95 = load i1, ptr %l59, !tbaa !21
  br i1 %t95, label %bb29, label %bb30
bb29:
  %t96 = load ptr, ptr %l1, !tbaa !29
  %t98 = getelementptr { i64, [4 x i64] }, ptr %t96, i32 0, i32 1
  %t99 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t98, i32 0, i32 1
  %t100 = load ptr, ptr %t99
  store ptr %t100, ptr %l3, !tbaa !29
  br label %bb31
bb30:
  br label %bb33
bb31:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t103 = load ptr, ptr %l3, !tbaa !29
  %t107 = call i1 @compiler_2fcond_2ecompiler_2fcond_3aEval_2ementionsLocal(ptr %v0, ptr %v1, ptr %t102, ptr %t103)
  store i1 %t107, ptr %l67
  br label %bb32
bb32:
  %t108 = load i1, ptr %l67, !tbaa !21
  store i1 %t108, ptr %l24, !tbaa !21
  br label %bb179
bb33:
  %t109 = load ptr, ptr %l1, !tbaa !29
  store ptr %t109, ptr %l68, !tbaa !29
  store i1 false, ptr %l69, !tbaa !21
  %t110 = load ptr, ptr %l68, !tbaa !29
  %t111 = icmp ne ptr %t110, null
  br i1 %t111, label %bb34, label %bb35
bb34:
  %t113 = load ptr, ptr %l68, !tbaa !29
  %t114 = load i64, ptr %t113, !range !{i64 0, i64 30}
  %t116 = icmp eq i64 %t114, 5
  store i1 %t116, ptr %l69, !tbaa !21
  br label %bb35
bb35:
  %t117 = load i1, ptr %l69, !tbaa !21
  br i1 %t117, label %bb36, label %bb37
bb36:
  %t118 = load ptr, ptr %l1, !tbaa !29
  %t120 = getelementptr { i64, [4 x i64] }, ptr %t118, i32 0, i32 1
  %t121 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t120, i32 0, i32 2
  %t122 = load ptr, ptr %t121
  store ptr %t122, ptr %l4, !tbaa !29
  %t124 = load ptr, ptr %l1, !tbaa !29
  %t126 = getelementptr { i64, [4 x i64] }, ptr %t124, i32 0, i32 1
  %t127 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t126, i32 0, i32 3
  %t128 = load ptr, ptr %t127
  store ptr %t128, ptr %l5, !tbaa !29
  br label %bb38
bb37:
  br label %bb44
bb38:
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t131 = load ptr, ptr %l4, !tbaa !29
  %t135 = call i1 @compiler_2fcond_2ecompiler_2fcond_3aEval_2ementionsLocal(ptr %v0, ptr %v1, ptr %t130, ptr %t131)
  store i1 %t135, ptr %l79
  br label %bb39
bb39:
  %t136 = load i1, ptr %l79, !tbaa !21
  br i1 %t136, label %bb40, label %bb41
bb40:
  store i1 true, ptr %l80, !tbaa !21
  br label %bb43
bb41:
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t138 = load ptr, ptr %l5, !tbaa !29
  %t142 = call i1 @compiler_2fcond_2ecompiler_2fcond_3aEval_2ementionsLocal(ptr %v0, ptr %v1, ptr %t137, ptr %t138)
  store i1 %t142, ptr %l84
  br label %bb42
bb42:
  %t143 = load i1, ptr %l84, !tbaa !21
  store i1 %t143, ptr %l80, !tbaa !21
  br label %bb43
bb43:
  %t144 = load i1, ptr %l80, !tbaa !21
  store i1 %t144, ptr %l24, !tbaa !21
  br label %bb179
bb44:
  %t145 = load ptr, ptr %l1, !tbaa !29
  store ptr %t145, ptr %l85, !tbaa !29
  store i1 false, ptr %l86, !tbaa !21
  %t146 = load ptr, ptr %l85, !tbaa !29
  %t147 = icmp ne ptr %t146, null
  br i1 %t147, label %bb45, label %bb46
bb45:
  %t149 = load ptr, ptr %l85, !tbaa !29
  %t150 = load i64, ptr %t149, !range !{i64 0, i64 30}
  %t152 = icmp eq i64 %t150, 12
  store i1 %t152, ptr %l86, !tbaa !21
  br label %bb46
bb46:
  %t153 = load i1, ptr %l86, !tbaa !21
  br i1 %t153, label %bb47, label %bb48
bb47:
  %t154 = load ptr, ptr %l1, !tbaa !29
  %t156 = getelementptr { i64, [4 x i64] }, ptr %t154, i32 0, i32 1
  %t157 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t156, i32 0, i32 1
  %t158 = load ptr, ptr %t157
  store ptr %t158, ptr %l6, !tbaa !29
  %t160 = load ptr, ptr %l1, !tbaa !29
  %t162 = getelementptr { i64, [4 x i64] }, ptr %t160, i32 0, i32 1
  %t163 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t162, i32 0, i32 2
  %t164 = load { i64, ptr }, ptr %t163
  store { i64, ptr } %t164, ptr %l7, !tbaa !27
  br label %bb49
bb48:
  br label %bb55
bb49:
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t167 = load ptr, ptr %l6, !tbaa !29
  %t171 = call i1 @compiler_2fcond_2ecompiler_2fcond_3aEval_2ementionsLocal(ptr %v0, ptr %v1, ptr %t166, ptr %t167)
  store i1 %t171, ptr %l96
  br label %bb50
bb50:
  %t172 = load i1, ptr %l96, !tbaa !21
  br i1 %t172, label %bb51, label %bb52
bb51:
  store i1 true, ptr %l97, !tbaa !21
  br label %bb54
bb52:
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t174 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t177 = call i1 @compiler_2fcond_2ecompiler_2fcond_3aEval_2eanyLocal(ptr %v0, ptr %v1, ptr %t173, { i64, ptr } %t174)
  store i1 %t177, ptr %l100
  br label %bb53
bb53:
  %t178 = load i1, ptr %l100, !tbaa !21
  store i1 %t178, ptr %l97, !tbaa !21
  br label %bb54
bb54:
  %t179 = load i1, ptr %l97, !tbaa !21
  store i1 %t179, ptr %l24, !tbaa !21
  br label %bb179
bb55:
  %t180 = load ptr, ptr %l1, !tbaa !29
  store ptr %t180, ptr %l101, !tbaa !29
  store i1 false, ptr %l102, !tbaa !21
  %t181 = load ptr, ptr %l101, !tbaa !29
  %t182 = icmp ne ptr %t181, null
  br i1 %t182, label %bb56, label %bb57
bb56:
  %t184 = load ptr, ptr %l101, !tbaa !29
  %t185 = load i64, ptr %t184, !range !{i64 0, i64 30}
  %t187 = icmp eq i64 %t185, 15
  store i1 %t187, ptr %l102, !tbaa !21
  br label %bb57
bb57:
  %t188 = load i1, ptr %l102, !tbaa !21
  br i1 %t188, label %bb58, label %bb59
bb58:
  %t189 = load ptr, ptr %l1, !tbaa !29
  %t191 = getelementptr { i64, [4 x i64] }, ptr %t189, i32 0, i32 1
  %t192 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t191, i32 0, i32 1
  %t193 = load ptr, ptr %t192
  store ptr %t193, ptr %l8, !tbaa !29
  %t195 = load ptr, ptr %l1, !tbaa !29
  %t197 = getelementptr { i64, [4 x i64] }, ptr %t195, i32 0, i32 1
  %t198 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t197, i32 0, i32 2
  %t199 = load { i64, ptr }, ptr %t198
  store { i64, ptr } %t199, ptr %l9, !tbaa !27
  br label %bb60
bb59:
  br label %bb66
bb60:
  %t201 = load ptr, ptr %l0, !tbaa !29
  %t202 = load ptr, ptr %l8, !tbaa !29
  %t206 = call i1 @compiler_2fcond_2ecompiler_2fcond_3aEval_2ementionsLocal(ptr %v0, ptr %v1, ptr %t201, ptr %t202)
  store i1 %t206, ptr %l112
  br label %bb61
bb61:
  %t207 = load i1, ptr %l112, !tbaa !21
  br i1 %t207, label %bb62, label %bb63
bb62:
  store i1 true, ptr %l113, !tbaa !21
  br label %bb65
bb63:
  %t208 = load ptr, ptr %l0, !tbaa !29
  %t209 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t212 = call i1 @compiler_2fcond_2ecompiler_2fcond_3aEval_2eanyLocal(ptr %v0, ptr %v1, ptr %t208, { i64, ptr } %t209)
  store i1 %t212, ptr %l116
  br label %bb64
bb64:
  %t213 = load i1, ptr %l116, !tbaa !21
  store i1 %t213, ptr %l113, !tbaa !21
  br label %bb65
bb65:
  %t214 = load i1, ptr %l113, !tbaa !21
  store i1 %t214, ptr %l24, !tbaa !21
  br label %bb179
bb66:
  %t215 = load ptr, ptr %l1, !tbaa !29
  store ptr %t215, ptr %l117, !tbaa !29
  store i1 false, ptr %l118, !tbaa !21
  %t216 = load ptr, ptr %l117, !tbaa !29
  %t217 = icmp ne ptr %t216, null
  br i1 %t217, label %bb67, label %bb68
bb67:
  %t219 = load ptr, ptr %l117, !tbaa !29
  %t220 = load i64, ptr %t219, !range !{i64 0, i64 30}
  %t222 = icmp eq i64 %t220, 7
  store i1 %t222, ptr %l118, !tbaa !21
  br label %bb68
bb68:
  %t223 = load i1, ptr %l118, !tbaa !21
  br i1 %t223, label %bb69, label %bb70
bb69:
  %t224 = load ptr, ptr %l1, !tbaa !29
  %t226 = getelementptr { i64, [4 x i64] }, ptr %t224, i32 0, i32 1
  %t227 = getelementptr { %"compiler/source:Span", ptr }, ptr %t226, i32 0, i32 1
  %t228 = load ptr, ptr %t227
  store ptr %t228, ptr %l10, !tbaa !29
  br label %bb71
bb70:
  br label %bb73
bb71:
  %t230 = load ptr, ptr %l0, !tbaa !29
  %t231 = load ptr, ptr %l10, !tbaa !29
  %t233 = getelementptr %"compiler/ast:Chain", ptr %t231, i32 0, i32 1
  %t234 = load { i64, ptr }, ptr %t233, !tbaa !27
  %t237 = call i1 @compiler_2fcond_2ecompiler_2fcond_3aEval_2eanyLocal(ptr %v0, ptr %v1, ptr %t230, { i64, ptr } %t234)
  store i1 %t237, ptr %l126
  br label %bb72
bb72:
  %t238 = load i1, ptr %l126, !tbaa !21
  store i1 %t238, ptr %l24, !tbaa !21
  br label %bb179
bb73:
  %t239 = load ptr, ptr %l1, !tbaa !29
  store ptr %t239, ptr %l127, !tbaa !29
  store i1 false, ptr %l128, !tbaa !21
  %t240 = load ptr, ptr %l127, !tbaa !29
  %t241 = icmp ne ptr %t240, null
  br i1 %t241, label %bb74, label %bb75
bb74:
  %t243 = load ptr, ptr %l127, !tbaa !29
  %t244 = load i64, ptr %t243, !range !{i64 0, i64 30}
  %t246 = icmp eq i64 %t244, 8
  store i1 %t246, ptr %l128, !tbaa !21
  br label %bb75
bb75:
  %t247 = load i1, ptr %l128, !tbaa !21
  br i1 %t247, label %bb76, label %bb77
bb76:
  %t248 = load ptr, ptr %l1, !tbaa !29
  %t250 = getelementptr { i64, [4 x i64] }, ptr %t248, i32 0, i32 1
  %t251 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t250, i32 0, i32 1
  %t252 = load ptr, ptr %t251
  store ptr %t252, ptr %l11, !tbaa !29
  %t254 = load ptr, ptr %l1, !tbaa !29
  %t256 = getelementptr { i64, [4 x i64] }, ptr %t254, i32 0, i32 1
  %t257 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t256, i32 0, i32 2
  %t258 = load ptr, ptr %t257
  store ptr %t258, ptr %l12, !tbaa !29
  %t260 = load ptr, ptr %l1, !tbaa !29
  %t262 = getelementptr { i64, [4 x i64] }, ptr %t260, i32 0, i32 1
  %t263 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t262, i32 0, i32 3
  %t264 = load ptr, ptr %t263
  store ptr %t264, ptr %l13, !tbaa !29
  br label %bb78
bb77:
  br label %bb88
bb78:
  %t266 = load ptr, ptr %l0, !tbaa !29
  %t267 = load ptr, ptr %l11, !tbaa !29
  %t271 = call i1 @compiler_2fcond_2ecompiler_2fcond_3aEval_2ementionsLocal(ptr %v0, ptr %v1, ptr %t266, ptr %t267)
  store i1 %t271, ptr %l140
  br label %bb79
bb79:
  %t272 = load i1, ptr %l140, !tbaa !21
  br i1 %t272, label %bb80, label %bb81
bb80:
  store i1 true, ptr %l141, !tbaa !21
  br label %bb83
bb81:
  %t273 = load ptr, ptr %l0, !tbaa !29
  %t274 = load ptr, ptr %l12, !tbaa !29
  %t278 = call i1 @compiler_2fcond_2ecompiler_2fcond_3aEval_2ementionsLocal(ptr %v0, ptr %v1, ptr %t273, ptr %t274)
  store i1 %t278, ptr %l145
  br label %bb82
bb82:
  %t279 = load i1, ptr %l145, !tbaa !21
  store i1 %t279, ptr %l141, !tbaa !21
  br label %bb83
bb83:
  %t280 = load i1, ptr %l141, !tbaa !21
  br i1 %t280, label %bb84, label %bb85
bb84:
  store i1 true, ptr %l146, !tbaa !21
  br label %bb87
bb85:
  %t281 = load ptr, ptr %l0, !tbaa !29
  %t282 = load ptr, ptr %l13, !tbaa !29
  %t286 = call i1 @compiler_2fcond_2ecompiler_2fcond_3aEval_2ementionsLocal(ptr %v0, ptr %v1, ptr %t281, ptr %t282)
  store i1 %t286, ptr %l150
  br label %bb86
bb86:
  %t287 = load i1, ptr %l150, !tbaa !21
  store i1 %t287, ptr %l146, !tbaa !21
  br label %bb87
bb87:
  %t288 = load i1, ptr %l146, !tbaa !21
  store i1 %t288, ptr %l24, !tbaa !21
  br label %bb179
bb88:
  %t289 = load ptr, ptr %l1, !tbaa !29
  store ptr %t289, ptr %l151, !tbaa !29
  store i1 false, ptr %l152, !tbaa !21
  %t290 = load ptr, ptr %l151, !tbaa !29
  %t291 = icmp ne ptr %t290, null
  br i1 %t291, label %bb89, label %bb90
bb89:
  %t293 = load ptr, ptr %l151, !tbaa !29
  %t294 = load i64, ptr %t293, !range !{i64 0, i64 30}
  %t296 = icmp eq i64 %t294, 4
  store i1 %t296, ptr %l152, !tbaa !21
  br label %bb90
bb90:
  %t297 = load i1, ptr %l152, !tbaa !21
  br i1 %t297, label %bb91, label %bb92
bb91:
  %t298 = load ptr, ptr %l1, !tbaa !29
  %t300 = getelementptr { i64, [4 x i64] }, ptr %t298, i32 0, i32 1
  %t301 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t300, i32 0, i32 2
  %t302 = load ptr, ptr %t301
  store ptr %t302, ptr %l14, !tbaa !29
  br label %bb109
bb92:
  %t304 = load ptr, ptr %l1, !tbaa !29
  store ptr %t304, ptr %l157, !tbaa !29
  store i1 false, ptr %l158, !tbaa !21
  %t305 = load ptr, ptr %l157, !tbaa !29
  %t306 = icmp ne ptr %t305, null
  br i1 %t306, label %bb93, label %bb94
bb93:
  %t308 = load ptr, ptr %l157, !tbaa !29
  %t309 = load i64, ptr %t308, !range !{i64 0, i64 30}
  %t311 = icmp eq i64 %t309, 9
  store i1 %t311, ptr %l158, !tbaa !21
  br label %bb94
bb94:
  %t312 = load i1, ptr %l158, !tbaa !21
  br i1 %t312, label %bb95, label %bb96
bb95:
  %t313 = load ptr, ptr %l1, !tbaa !29
  %t315 = getelementptr { i64, [4 x i64] }, ptr %t313, i32 0, i32 1
  %t316 = getelementptr { %"compiler/source:Span", ptr, ptr, i1 }, ptr %t315, i32 0, i32 1
  %t317 = load ptr, ptr %t316
  store ptr %t317, ptr %l14, !tbaa !29
  br label %bb109
bb96:
  %t319 = load ptr, ptr %l1, !tbaa !29
  store ptr %t319, ptr %l163, !tbaa !29
  store i1 false, ptr %l164, !tbaa !21
  %t320 = load ptr, ptr %l163, !tbaa !29
  %t321 = icmp ne ptr %t320, null
  br i1 %t321, label %bb97, label %bb98
bb97:
  %t323 = load ptr, ptr %l163, !tbaa !29
  %t324 = load i64, ptr %t323, !range !{i64 0, i64 30}
  %t326 = icmp eq i64 %t324, 11
  store i1 %t326, ptr %l164, !tbaa !21
  br label %bb98
bb98:
  %t327 = load i1, ptr %l164, !tbaa !21
  br i1 %t327, label %bb99, label %bb100
bb99:
  %t328 = load ptr, ptr %l1, !tbaa !29
  %t330 = getelementptr { i64, [4 x i64] }, ptr %t328, i32 0, i32 1
  %t331 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t330, i32 0, i32 1
  %t332 = load ptr, ptr %t331
  store ptr %t332, ptr %l14, !tbaa !29
  br label %bb109
bb100:
  %t334 = load ptr, ptr %l1, !tbaa !29
  store ptr %t334, ptr %l169, !tbaa !29
  store i1 false, ptr %l170, !tbaa !21
  %t335 = load ptr, ptr %l169, !tbaa !29
  %t336 = icmp ne ptr %t335, null
  br i1 %t336, label %bb101, label %bb102
bb101:
  %t338 = load ptr, ptr %l169, !tbaa !29
  %t339 = load i64, ptr %t338, !range !{i64 0, i64 30}
  %t341 = icmp eq i64 %t339, 13
  store i1 %t341, ptr %l170, !tbaa !21
  br label %bb102
bb102:
  %t342 = load i1, ptr %l170, !tbaa !21
  br i1 %t342, label %bb103, label %bb104
bb103:
  %t343 = load ptr, ptr %l1, !tbaa !29
  %t345 = getelementptr { i64, [4 x i64] }, ptr %t343, i32 0, i32 1
  %t346 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t345, i32 0, i32 1
  %t347 = load ptr, ptr %t346
  store ptr %t347, ptr %l14, !tbaa !29
  br label %bb109
bb104:
  %t349 = load ptr, ptr %l1, !tbaa !29
  store ptr %t349, ptr %l175, !tbaa !29
  store i1 false, ptr %l176, !tbaa !21
  %t350 = load ptr, ptr %l175, !tbaa !29
  %t351 = icmp ne ptr %t350, null
  br i1 %t351, label %bb105, label %bb106
bb105:
  %t353 = load ptr, ptr %l175, !tbaa !29
  %t354 = load i64, ptr %t353, !range !{i64 0, i64 30}
  %t356 = icmp eq i64 %t354, 21
  store i1 %t356, ptr %l176, !tbaa !21
  br label %bb106
bb106:
  %t357 = load i1, ptr %l176, !tbaa !21
  br i1 %t357, label %bb107, label %bb108
bb107:
  %t358 = load ptr, ptr %l1, !tbaa !29
  %t360 = getelementptr { i64, [4 x i64] }, ptr %t358, i32 0, i32 1
  %t361 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t360, i32 0, i32 1
  %t362 = load ptr, ptr %t361
  store ptr %t362, ptr %l14, !tbaa !29
  br label %bb109
bb108:
  br label %bb111
bb109:
  %t364 = load ptr, ptr %l0, !tbaa !29
  %t365 = load ptr, ptr %l14, !tbaa !29
  %t369 = call i1 @compiler_2fcond_2ecompiler_2fcond_3aEval_2ementionsLocal(ptr %v0, ptr %v1, ptr %t364, ptr %t365)
  store i1 %t369, ptr %l184
  br label %bb110
bb110:
  %t370 = load i1, ptr %l184, !tbaa !21
  store i1 %t370, ptr %l24, !tbaa !21
  br label %bb179
bb111:
  %t371 = load ptr, ptr %l1, !tbaa !29
  store ptr %t371, ptr %l185, !tbaa !29
  store i1 false, ptr %l186, !tbaa !21
  %t372 = load ptr, ptr %l185, !tbaa !29
  %t373 = icmp ne ptr %t372, null
  br i1 %t373, label %bb112, label %bb113
bb112:
  %t375 = load ptr, ptr %l185, !tbaa !29
  %t376 = load i64, ptr %t375, !range !{i64 0, i64 30}
  %t378 = icmp eq i64 %t376, 6
  store i1 %t378, ptr %l186, !tbaa !21
  br label %bb113
bb113:
  %t379 = load i1, ptr %l186, !tbaa !21
  br i1 %t379, label %bb114, label %bb115
bb114:
  %t380 = load ptr, ptr %l1, !tbaa !29
  %t382 = getelementptr { i64, [4 x i64] }, ptr %t380, i32 0, i32 1
  %t383 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t382, i32 0, i32 1
  %t384 = load ptr, ptr %t383
  store ptr %t384, ptr %l15, !tbaa !29
  %t386 = load ptr, ptr %l1, !tbaa !29
  %t388 = getelementptr { i64, [4 x i64] }, ptr %t386, i32 0, i32 1
  %t389 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t388, i32 0, i32 2
  %t390 = load ptr, ptr %t389
  store ptr %t390, ptr %l16, !tbaa !29
  br label %bb120
bb115:
  %t392 = load ptr, ptr %l1, !tbaa !29
  store ptr %t392, ptr %l193, !tbaa !29
  store i1 false, ptr %l194, !tbaa !21
  %t393 = load ptr, ptr %l193, !tbaa !29
  %t394 = icmp ne ptr %t393, null
  br i1 %t394, label %bb116, label %bb117
bb116:
  %t396 = load ptr, ptr %l193, !tbaa !29
  %t397 = load i64, ptr %t396, !range !{i64 0, i64 30}
  %t399 = icmp eq i64 %t397, 10
  store i1 %t399, ptr %l194, !tbaa !21
  br label %bb117
bb117:
  %t400 = load i1, ptr %l194, !tbaa !21
  br i1 %t400, label %bb118, label %bb119
bb118:
  %t401 = load ptr, ptr %l1, !tbaa !29
  %t403 = getelementptr { i64, [4 x i64] }, ptr %t401, i32 0, i32 1
  %t404 = getelementptr { %"compiler/source:Span", ptr, ptr, i1 }, ptr %t403, i32 0, i32 1
  %t405 = load ptr, ptr %t404
  store ptr %t405, ptr %l15, !tbaa !29
  %t407 = load ptr, ptr %l1, !tbaa !29
  %t409 = getelementptr { i64, [4 x i64] }, ptr %t407, i32 0, i32 1
  %t410 = getelementptr { %"compiler/source:Span", ptr, ptr, i1 }, ptr %t409, i32 0, i32 2
  %t411 = load ptr, ptr %t410
  store ptr %t411, ptr %l16, !tbaa !29
  br label %bb120
bb119:
  br label %bb126
bb120:
  %t413 = load ptr, ptr %l0, !tbaa !29
  %t414 = load ptr, ptr %l15, !tbaa !29
  %t418 = call i1 @compiler_2fcond_2ecompiler_2fcond_3aEval_2ementionsLocal(ptr %v0, ptr %v1, ptr %t413, ptr %t414)
  store i1 %t418, ptr %l204
  br label %bb121
bb121:
  %t419 = load i1, ptr %l204, !tbaa !21
  br i1 %t419, label %bb122, label %bb123
bb122:
  store i1 true, ptr %l205, !tbaa !21
  br label %bb125
bb123:
  %t420 = load ptr, ptr %l0, !tbaa !29
  %t421 = load ptr, ptr %l16, !tbaa !29
  %t425 = call i1 @compiler_2fcond_2ecompiler_2fcond_3aEval_2ementionsLocal(ptr %v0, ptr %v1, ptr %t420, ptr %t421)
  store i1 %t425, ptr %l209
  br label %bb124
bb124:
  %t426 = load i1, ptr %l209, !tbaa !21
  store i1 %t426, ptr %l205, !tbaa !21
  br label %bb125
bb125:
  %t427 = load i1, ptr %l205, !tbaa !21
  store i1 %t427, ptr %l24, !tbaa !21
  br label %bb179
bb126:
  %t428 = load ptr, ptr %l1, !tbaa !29
  store ptr %t428, ptr %l210, !tbaa !29
  store i1 false, ptr %l211, !tbaa !21
  %t429 = load ptr, ptr %l210, !tbaa !29
  %t430 = icmp ne ptr %t429, null
  br i1 %t430, label %bb127, label %bb128
bb127:
  %t432 = load ptr, ptr %l210, !tbaa !29
  %t433 = load i64, ptr %t432, !range !{i64 0, i64 30}
  %t435 = icmp eq i64 %t433, 16
  store i1 %t435, ptr %l211, !tbaa !21
  br label %bb128
bb128:
  %t436 = load i1, ptr %l211, !tbaa !21
  br i1 %t436, label %bb129, label %bb130
bb129:
  %t437 = load ptr, ptr %l1, !tbaa !29
  %t439 = getelementptr { i64, [4 x i64] }, ptr %t437, i32 0, i32 1
  %t440 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t439, i32 0, i32 1
  %t441 = load ptr, ptr %t440
  store ptr %t441, ptr %l17, !tbaa !29
  %t443 = load ptr, ptr %l1, !tbaa !29
  %t445 = getelementptr { i64, [4 x i64] }, ptr %t443, i32 0, i32 1
  %t446 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t445, i32 0, i32 2
  %t447 = load ptr, ptr %t446
  store ptr %t447, ptr %l18, !tbaa !29
  %t449 = load ptr, ptr %l1, !tbaa !29
  %t451 = getelementptr { i64, [4 x i64] }, ptr %t449, i32 0, i32 1
  %t452 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t451, i32 0, i32 3
  %t453 = load ptr, ptr %t452
  store ptr %t453, ptr %l19, !tbaa !29
  br label %bb131
bb130:
  br label %bb141
bb131:
  %t455 = load ptr, ptr %l0, !tbaa !29
  %t456 = load ptr, ptr %l17, !tbaa !29
  %t460 = call i1 @compiler_2fcond_2ecompiler_2fcond_3aEval_2ementionsLocal(ptr %v0, ptr %v1, ptr %t455, ptr %t456)
  store i1 %t460, ptr %l223
  br label %bb132
bb132:
  %t461 = load i1, ptr %l223, !tbaa !21
  br i1 %t461, label %bb133, label %bb134
bb133:
  store i1 true, ptr %l224, !tbaa !21
  br label %bb136
bb134:
  %t462 = load ptr, ptr %l0, !tbaa !29
  %t463 = load ptr, ptr %l18, !tbaa !29
  %t466 = call i1 @compiler_2fcond_2ecompiler_2fcond_3aEval_2ementionsLocal(ptr %v0, ptr %v1, ptr %t462, ptr %t463)
  store i1 %t466, ptr %l227
  br label %bb135
bb135:
  %t467 = load i1, ptr %l227, !tbaa !21
  store i1 %t467, ptr %l224, !tbaa !21
  br label %bb136
bb136:
  %t468 = load i1, ptr %l224, !tbaa !21
  br i1 %t468, label %bb137, label %bb138
bb137:
  store i1 true, ptr %l228, !tbaa !21
  br label %bb140
bb138:
  %t469 = load ptr, ptr %l0, !tbaa !29
  %t470 = load ptr, ptr %l19, !tbaa !29
  %t473 = call i1 @compiler_2fcond_2ecompiler_2fcond_3aEval_2ementionsLocal(ptr %v0, ptr %v1, ptr %t469, ptr %t470)
  store i1 %t473, ptr %l231
  br label %bb139
bb139:
  %t474 = load i1, ptr %l231, !tbaa !21
  store i1 %t474, ptr %l228, !tbaa !21
  br label %bb140
bb140:
  %t475 = load i1, ptr %l228, !tbaa !21
  store i1 %t475, ptr %l24, !tbaa !21
  br label %bb179
bb141:
  %t476 = load ptr, ptr %l1, !tbaa !29
  store ptr %t476, ptr %l232, !tbaa !29
  store i1 false, ptr %l233, !tbaa !21
  %t477 = load ptr, ptr %l232, !tbaa !29
  %t478 = icmp ne ptr %t477, null
  br i1 %t478, label %bb142, label %bb143
bb142:
  %t480 = load ptr, ptr %l232, !tbaa !29
  %t481 = load i64, ptr %t480, !range !{i64 0, i64 30}
  %t483 = icmp eq i64 %t481, 17
  store i1 %t483, ptr %l233, !tbaa !21
  br label %bb143
bb143:
  %t484 = load i1, ptr %l233, !tbaa !21
  br i1 %t484, label %bb144, label %bb145
bb144:
  %t485 = load ptr, ptr %l1, !tbaa !29
  %t487 = getelementptr { i64, [4 x i64] }, ptr %t485, i32 0, i32 1
  %t488 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t487, i32 0, i32 2
  %t489 = load { i64, ptr }, ptr %t488
  store { i64, ptr } %t489, ptr %l20, !tbaa !27
  br label %bb158
bb145:
  %t491 = load ptr, ptr %l1, !tbaa !29
  store ptr %t491, ptr %l238, !tbaa !29
  store i1 false, ptr %l239, !tbaa !21
  %t492 = load ptr, ptr %l238, !tbaa !29
  %t493 = icmp ne ptr %t492, null
  br i1 %t493, label %bb146, label %bb147
bb146:
  %t495 = load ptr, ptr %l238, !tbaa !29
  %t496 = load i64, ptr %t495, !range !{i64 0, i64 30}
  %t498 = icmp eq i64 %t496, 18
  store i1 %t498, ptr %l239, !tbaa !21
  br label %bb147
bb147:
  %t499 = load i1, ptr %l239, !tbaa !21
  br i1 %t499, label %bb148, label %bb149
bb148:
  %t500 = load ptr, ptr %l1, !tbaa !29
  %t502 = getelementptr { i64, [4 x i64] }, ptr %t500, i32 0, i32 1
  %t503 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t502, i32 0, i32 1
  %t504 = load { i64, ptr }, ptr %t503
  store { i64, ptr } %t504, ptr %l20, !tbaa !27
  br label %bb158
bb149:
  %t506 = load ptr, ptr %l1, !tbaa !29
  store ptr %t506, ptr %l244, !tbaa !29
  store i1 false, ptr %l245, !tbaa !21
  %t507 = load ptr, ptr %l244, !tbaa !29
  %t508 = icmp ne ptr %t507, null
  br i1 %t508, label %bb150, label %bb151
bb150:
  %t510 = load ptr, ptr %l244, !tbaa !29
  %t511 = load i64, ptr %t510, !range !{i64 0, i64 30}
  %t513 = icmp eq i64 %t511, 29
  store i1 %t513, ptr %l245, !tbaa !21
  br label %bb151
bb151:
  %t514 = load i1, ptr %l245, !tbaa !21
  br i1 %t514, label %bb152, label %bb153
bb152:
  %t515 = load ptr, ptr %l1, !tbaa !29
  %t517 = getelementptr { i64, [4 x i64] }, ptr %t515, i32 0, i32 1
  %t518 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t517, i32 0, i32 1
  %t519 = load { i64, ptr }, ptr %t518
  store { i64, ptr } %t519, ptr %l20, !tbaa !27
  br label %bb158
bb153:
  %t521 = load ptr, ptr %l1, !tbaa !29
  store ptr %t521, ptr %l250, !tbaa !29
  store i1 false, ptr %l251, !tbaa !21
  %t522 = load ptr, ptr %l250, !tbaa !29
  %t523 = icmp ne ptr %t522, null
  br i1 %t523, label %bb154, label %bb155
bb154:
  %t525 = load ptr, ptr %l250, !tbaa !29
  %t526 = load i64, ptr %t525, !range !{i64 0, i64 30}
  %t528 = icmp eq i64 %t526, 20
  store i1 %t528, ptr %l251, !tbaa !21
  br label %bb155
bb155:
  %t529 = load i1, ptr %l251, !tbaa !21
  br i1 %t529, label %bb156, label %bb157
bb156:
  %t530 = load ptr, ptr %l1, !tbaa !29
  %t532 = getelementptr { i64, [4 x i64] }, ptr %t530, i32 0, i32 1
  %t533 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t532, i32 0, i32 1
  %t534 = load { i64, ptr }, ptr %t533
  store { i64, ptr } %t534, ptr %l20, !tbaa !27
  br label %bb158
bb157:
  br label %bb160
bb158:
  %t536 = load ptr, ptr %l0, !tbaa !29
  %t537 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t540 = call i1 @compiler_2fcond_2ecompiler_2fcond_3aEval_2eanyLocal(ptr %v0, ptr %v1, ptr %t536, { i64, ptr } %t537)
  store i1 %t540, ptr %l258
  br label %bb159
bb159:
  %t541 = load i1, ptr %l258, !tbaa !21
  store i1 %t541, ptr %l24, !tbaa !21
  br label %bb179
bb160:
  %t542 = load ptr, ptr %l1, !tbaa !29
  store ptr %t542, ptr %l259, !tbaa !29
  store i1 false, ptr %l260, !tbaa !21
  %t543 = load ptr, ptr %l259, !tbaa !29
  %t544 = icmp ne ptr %t543, null
  br i1 %t544, label %bb161, label %bb162
bb161:
  %t546 = load ptr, ptr %l259, !tbaa !29
  %t547 = load i64, ptr %t546, !range !{i64 0, i64 30}
  %t549 = icmp eq i64 %t547, 19
  store i1 %t549, ptr %l260, !tbaa !21
  br label %bb162
bb162:
  %t550 = load i1, ptr %l260, !tbaa !21
  br i1 %t550, label %bb163, label %bb164
bb163:
  br label %bb173
bb164:
  %t551 = load ptr, ptr %l1, !tbaa !29
  store ptr %t551, ptr %l263, !tbaa !29
  store i1 false, ptr %l264, !tbaa !21
  %t552 = load ptr, ptr %l263, !tbaa !29
  %t553 = icmp ne ptr %t552, null
  br i1 %t553, label %bb165, label %bb166
bb165:
  %t555 = load ptr, ptr %l263, !tbaa !29
  %t556 = load i64, ptr %t555, !range !{i64 0, i64 30}
  %t558 = icmp eq i64 %t556, 22
  store i1 %t558, ptr %l264, !tbaa !21
  br label %bb166
bb166:
  %t559 = load i1, ptr %l264, !tbaa !21
  br i1 %t559, label %bb167, label %bb168
bb167:
  br label %bb173
bb168:
  %t560 = load ptr, ptr %l1, !tbaa !29
  store ptr %t560, ptr %l267, !tbaa !29
  store i1 false, ptr %l268, !tbaa !21
  %t561 = load ptr, ptr %l267, !tbaa !29
  %t562 = icmp ne ptr %t561, null
  br i1 %t562, label %bb169, label %bb170
bb169:
  %t564 = load ptr, ptr %l267, !tbaa !29
  %t565 = load i64, ptr %t564, !range !{i64 0, i64 30}
  %t567 = icmp eq i64 %t565, 23
  store i1 %t567, ptr %l268, !tbaa !21
  br label %bb170
bb170:
  %t568 = load i1, ptr %l268, !tbaa !21
  br i1 %t568, label %bb171, label %bb172
bb171:
  br label %bb173
bb172:
  br label %bb174
bb173:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb179
bb174:
  br i1 true, label %bb175, label %bb176
bb175:
  br label %bb177
bb176:
  br label %bb178
bb177:
  store i1 false, ptr %l24, !tbaa !21
  br label %bb179
bb178:
  call void @__olang_check_failed(ptr @olang_loc_b9c07b13268e7f30_2a98a88387235e7c)
  unreachable
bb179:
  %t569 = load i1, ptr %l24, !tbaa !21
  store i1 %t569, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2ename(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca %"compiler/cond:Value"
  %l9 = alloca i1
  %l12 = alloca %"compiler/cond:Value"
  %l15 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca %"compiler/source:Span"
  %l20 = alloca { i64, ptr }
  %l22 = alloca %"compiler/diagmsg:Msg"
  %l23 = alloca %"compiler/cond:Value"
  %l27 = alloca { i64, ptr }
  %l28 = alloca ptr
  %l32 = alloca ptr
  %l33 = alloca i32
  %l40 = alloca %"compiler/cond:Value"
  %l41 = alloca i64
  %l45 = alloca i64
  %l46 = alloca i32
  %l53 = alloca i1
  %l54 = alloca i1
  %l59 = alloca i1
  %l63 = alloca %"compiler/cond:Value"
  %l66 = alloca %"compiler/cond:Value"
  %l74 = alloca %"compiler/cond:Value"
  %rv = alloca %"compiler/cond:Value"
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l2, !tbaa !23
  %t5 = call i1 @compiler_2fcond_2ecompiler_2fcond_3aEval_2eisFixed(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l9
  br label %bb1
bb1:
  %t6 = load i1, ptr %l9, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load %"compiler/source:Span", ptr %l1
  %t11 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2edefer(ptr %v0, ptr %t7, %"compiler/source:Span" %t8)
  store %"compiler/cond:Value" %t11, ptr %l12
  br label %bb4
bb3:
  br label %bb5
bb4:
  %t12 = load %"compiler/cond:Value", ptr %l12
  store %"compiler/cond:Value" %t12, ptr %rv
  br label %ret
bb5:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load i32, ptr %l2, !tbaa !23
  %t17 = call i1 @compiler_2fcond_2ecompiler_2fcond_3aEval_2eisLocal(ptr %v0, ptr %t13, i32 %t14)
  store i1 %t17, ptr %l15
  br label %bb6
bb6:
  %t18 = load i1, ptr %l15, !tbaa !21
  br i1 %t18, label %bb7, label %bb8
bb7:
  %t19 = load ptr, ptr %l0, !tbaa !29
  store ptr %t19, ptr %l16, !tbaa !29
  %t20 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t20, ptr %l17
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load %"compiler/source:Span", ptr %l1
  %t25 = call { i64, ptr } @compiler_2fcond_2ecompiler_2fcond_3aEval_2etokText(ptr %v0, ptr %v0, ptr %t21, %"compiler/source:Span" %t22)
  store { i64, ptr } %t25, ptr %l20
  br label %bb9
bb8:
  br label %bb12
bb9:
  %t26 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t27 = extractvalue { i64, ptr } %t26, 0
  %t28 = extractvalue { i64, ptr } %t26, 1
  %t29 = mul i64 %t27, 1
  %t30 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t29)
  call void @llvm.memcpy.p0.p0.i64(ptr %t30, ptr %t28, i64 %t29, i1 false)
  %t31 = insertvalue { i64, ptr } undef, i64 %t27, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t30, 1
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondName(ptr %v0, ptr %v0, { i64, ptr } %t32)
  store %"compiler/diagmsg:Msg" %t34, ptr %l22
  br label %bb10
bb10:
  %t35 = load ptr, ptr %l16, !tbaa !29
  %t36 = load %"compiler/source:Span", ptr %l17
  %t37 = load %"compiler/diagmsg:Msg", ptr %l22
  %t38 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2eruntimeValue(ptr %v0, ptr %v0, ptr %t35, %"compiler/source:Span" %t36, %"compiler/diagmsg:Msg" %t37, i1 true)
  store %"compiler/cond:Value" %t38, ptr %l23
  br label %bb11
bb11:
  %t39 = load %"compiler/cond:Value", ptr %l23
  store %"compiler/cond:Value" %t39, ptr %rv
  br label %ret
bb12:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/cond:Eval", ptr %t40, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !29
  %t44 = load i32, ptr %l2, !tbaa !23
  %t47 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t43, i32 %t44)
  store { i64, ptr } %t47, ptr %l27
  br label %bb13
bb13:
  %t48 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t48, ptr %l3, !tbaa !27
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/cond:Eval", ptr %t49, i32 0, i32 2
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t53 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t56 = call { i32, ptr } @compiler_2fcond_2ecompiler_2fcond_3aScope_2efind(ptr %v0, ptr %v0, ptr %v0, ptr %t52, { i64, ptr } %t53)
  %t57 = extractvalue { i32, ptr } %t56, 1
  %t58 = extractvalue { i32, ptr } %t56, 0
  store i32 %t58, ptr %l33
  %t59 = icmp ne i32 %t58, 0
  br i1 %t59, label %bb15, label %ok.60, !prof !99
ok.60:
  store ptr %t57, ptr %l32
  br label %bb14
bb14:
  %t61 = load ptr, ptr %l32, !tbaa !29
  store ptr %t61, ptr %l28, !tbaa !29
  br label %bb17
bb15:
  br label %bb16
bb16:
  store ptr null, ptr %l28, !tbaa !29
  br label %bb17
bb17:
  %t62 = load ptr, ptr %l28, !tbaa !29
  store ptr %t62, ptr %l4, !tbaa !29
  %t63 = load ptr, ptr %l4, !tbaa !29
  %t65 = icmp eq ptr %t63, null
  %t67 = xor i1 %t65, true
  br i1 %t67, label %bb18, label %bb19
bb18:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load %"compiler/source:Span", ptr %l1
  %t71 = load ptr, ptr %l4, !tbaa !29
  %t75 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2eglobal(ptr %v0, ptr %v0, ptr %t69, %"compiler/source:Span" %t70, ptr %t71)
  store %"compiler/cond:Value" %t75, ptr %l40
  br label %bb20
bb19:
  br label %bb21
bb20:
  %t76 = load %"compiler/cond:Value", ptr %l40
  store %"compiler/cond:Value" %t76, ptr %rv
  br label %ret
bb21:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/cond:Eval", ptr %t77, i32 0, i32 3
  %t80 = load ptr, ptr %t79, !tbaa !29
  %t81 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t84 = call { i32, i64 } @compiler_2fcond_2ecompiler_2fcond_3aConsts_2efind(ptr %v0, ptr %v0, ptr %t80, { i64, ptr } %t81)
  %t85 = extractvalue { i32, i64 } %t84, 1
  %t86 = extractvalue { i32, i64 } %t84, 0
  store i32 %t86, ptr %l46
  %t87 = icmp ne i32 %t86, 0
  br i1 %t87, label %bb23, label %ok.88, !prof !99
ok.88:
  store i64 %t85, ptr %l45
  br label %bb22
bb22:
  %t89 = load i64, ptr %l45, !tbaa !24
  store i64 %t89, ptr %l41, !tbaa !24
  br label %bb25
bb23:
  br label %bb24
bb24:
  store i64 -1, ptr %l41, !tbaa !24
  br label %bb25
bb25:
  %t90 = load i64, ptr %l41, !tbaa !24
  store i64 %t90, ptr %l5, !tbaa !24
  %t91 = load i64, ptr %l5, !tbaa !24
  %t93 = icmp sge i64 %t91, 0
  br i1 %t93, label %bb26, label %bb27
bb26:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"compiler/cond:Eval", ptr %t95, i32 0, i32 3
  %t98 = load ptr, ptr %t97, !tbaa !29
  %t100 = getelementptr %"compiler/cond:Consts", ptr %t98, i32 0, i32 3
  %t101 = load i64, ptr %l5, !tbaa !24
  %t104 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t100, i64 %t101)
  store i1 %t104, ptr %l53
  br label %bb28
bb27:
  br label %bb41
bb28:
  %t105 = load i1, ptr %l53, !tbaa !21
  br i1 %t105, label %bb29, label %bb30
bb29:
  store i1 true, ptr %l54, !tbaa !21
  br label %bb32
bb30:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"compiler/cond:Eval", ptr %t106, i32 0, i32 3
  %t109 = load ptr, ptr %t108, !tbaa !29
  %t111 = getelementptr %"compiler/cond:Consts", ptr %t109, i32 0, i32 4
  %t112 = load i64, ptr %l5, !tbaa !24
  %t115 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t111, i64 %t112)
  store i1 %t115, ptr %l59
  br label %bb31
bb31:
  %t116 = load i1, ptr %l59, !tbaa !21
  %t117 = xor i1 %t116, true
  store i1 %t117, ptr %l54, !tbaa !21
  br label %bb32
bb32:
  %t119 = load i1, ptr %l54, !tbaa !21
  br i1 %t119, label %bb33, label %bb34
bb33:
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t121 = load %"compiler/source:Span", ptr %l1
  %t124 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2edefer(ptr %v0, ptr %t120, %"compiler/source:Span" %t121)
  store %"compiler/cond:Value" %t124, ptr %l63
  br label %bb35
bb34:
  br label %bb36
bb35:
  %t125 = load %"compiler/cond:Value", ptr %l63
  store %"compiler/cond:Value" %t125, ptr %rv
  br label %ret
bb36:
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t127 = load i64, ptr %l5, !tbaa !24
  %t130 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2econstValue(ptr %v0, ptr %t126, i64 %t127)
  store %"compiler/cond:Value" %t130, ptr %l66
  br label %bb37
bb37:
  %t131 = load %"compiler/cond:Value", ptr %l66
  store %"compiler/cond:Value" %t131, ptr %l6
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t134 = getelementptr %"compiler/cond:Eval", ptr %t132, i32 0, i32 10
  %t135 = load i64, ptr %t134, !tbaa !24
  %t137 = icmp eq i64 %t135, 0
  br i1 %t137, label %bb38, label %bb39
bb38:
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t141 = getelementptr %"compiler/cond:Eval", ptr %t139, i32 0, i32 11
  store i1 true, ptr %t141, !tbaa !21
  br label %bb40
bb39:
  br label %bb40
bb40:
  %t142 = load %"compiler/cond:Value", ptr %l6
  store %"compiler/cond:Value" %t142, ptr %rv
  br label %ret
bb41:
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t145 = load %"compiler/source:Span", ptr %l1
  %t148 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2edefer(ptr %v0, ptr %t144, %"compiler/source:Span" %t145)
  store %"compiler/cond:Value" %t148, ptr %l74
  br label %bb42
bb42:
  %t149 = load %"compiler/cond:Value", ptr %l74
  store %"compiler/cond:Value" %t149, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/cond:Value", ptr %rv
  ret %"compiler/cond:Value" %rr
}

define dso_local %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2eruntimeValue(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/diagmsg:Msg" %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l7 = alloca %"compiler/cond:Value"
  %l9 = alloca i1
  %l17 = alloca %"compiler/cond:Value"
  %rv = alloca %"compiler/cond:Value"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/cond:Eval", ptr %t1, i32 0, i32 10
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp sgt i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = call %"compiler/cond:Value" @compiler_2fcond_2eValue_2enone()
  store %"compiler/cond:Value" %t8, ptr %l7
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t9 = load %"compiler/cond:Value", ptr %l7
  store %"compiler/cond:Value" %t9, ptr %rv
  br label %ret
bb4:
  br i1 %a3, label %bb5, label %bb6
bb5:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/cond:Eval", ptr %t12, i32 0, i32 4
  %t15 = load i1, ptr %t14, !tbaa !21
  %t17 = xor i1 %t15, true
  store i1 %t17, ptr %l9, !tbaa !21
  br label %bb7
bb6:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb7
bb7:
  %t19 = load i1, ptr %l9, !tbaa !21
  br i1 %t19, label %bb8, label %bb9
bb8:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/cond:Eval", ptr %t20, i32 0, i32 6
  store i1 true, ptr %t22, !tbaa !21
  br label %bb10
bb9:
  br label %bb10
bb10:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t29 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2efail(ptr %v0, ptr %v1, ptr %t23, %"compiler/source:Span" %a1, %"compiler/diagmsg:Msg" %a2)
  store %"compiler/cond:Value" %t29, ptr %l17
  br label %bb11
bb11:
  %t30 = load %"compiler/cond:Value", ptr %l17
  store %"compiler/cond:Value" %t30, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/cond:Value", ptr %rv
  ret %"compiler/cond:Value" %rr
}

define dso_local { i64, ptr } @compiler_2fcond_2ecompiler_2fcond_3aEval_2etokText(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1) #0 {
entry:
  %l1 = alloca %"compiler/source:Span"
  %l3 = alloca { i64, ptr }
  %l5 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l13 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store %"compiler/source:Span" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/cond:Eval", ptr %a0, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l3, !tbaa !27
  %t5 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t6 = load i32, ptr %t5, !tbaa !23
  %t8 = sext i32 %t6 to i64
  store i64 %t8, ptr %l5, !tbaa !24
  %t9 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 1
  %t10 = load i32, ptr %t9, !tbaa !23
  %t12 = sext i32 %t10 to i64
  store i64 %t12, ptr %l7, !tbaa !24
  %t13 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t13, 0
  store i64 %t14, ptr %l8, !tbaa !24
  %t15 = load i64, ptr %l5, !tbaa !24
  %t16 = icmp sge i64 %t15, 0
  br i1 %t16, label %bb1, label %bb2
bb1:
  %t18 = load i64, ptr %l5, !tbaa !24
  %t19 = load i64, ptr %l7, !tbaa !24
  %t20 = icmp sle i64 %t18, %t19
  br i1 %t20, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_a2ac67dda58979b2_83eb4d620334066e)
  unreachable
bb3:
  %t22 = load i64, ptr %l7, !tbaa !24
  %t23 = load i64, ptr %l8, !tbaa !24
  %t24 = icmp sle i64 %t22, %t23
  br i1 %t24, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_a2ac67dda58979b2_83eb4d620334066e)
  unreachable
bb5:
  %t26 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = load i64, ptr %l5, !tbaa !24
  %t29 = load i64, ptr %l7, !tbaa !24
  %t30 = getelementptr i8, ptr %t27, i64 %t28
  %t31 = sub i64 %t29, %t28
  %t32 = insertvalue { i64, ptr } undef, i64 %t31, 0
  %t33 = insertvalue { i64, ptr } %t32, ptr %t30, 1
  %t35 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v1, { i64, ptr } %t33)
  store { i64, ptr } %t35, ptr %l13
  br label %bb7
bb6:
  call void @__olang_check_failed(ptr @olang_loc_a2ac67dda58979b2_83eb4d620334066e)
  unreachable
bb7:
  %t36 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t36, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"compiler/source:Span" @compiler_2fcond_2ecompiler_2fcond_3aEval_2etokenAt(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l11 = alloca i1
  %l13 = alloca { i64, ptr }
  %l17 = alloca i1
  %l19 = alloca { i64, ptr }
  %l23 = alloca i1
  %l25 = alloca { i64, ptr }
  %l29 = alloca i1
  %l31 = alloca { i64, ptr }
  %l44 = alloca i1
  %l46 = alloca { i64, ptr }
  %l49 = alloca i1
  %l50 = alloca i1
  %l52 = alloca { i64, ptr }
  %l55 = alloca i1
  %l56 = alloca i1
  %l58 = alloca { i64, ptr }
  %l67 = alloca i1
  %l69 = alloca { i64, ptr }
  %l72 = alloca i1
  %l73 = alloca i1
  %l75 = alloca { i64, ptr }
  %l78 = alloca i1
  %l79 = alloca i1
  %l81 = alloca { i64, ptr }
  %l93 = alloca i1
  %l98 = alloca i1
  %l99 = alloca { i64, ptr }
  %l101 = alloca { i64, ptr }
  %l102 = alloca i64
  %l104 = alloca i64
  %l105 = alloca i64
  %l111 = alloca i1
  %l124 = alloca %"compiler/source:Span"
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca %"compiler/source:Span"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = sext i32 %a1 to i64
  store i64 %t3, ptr %l2, !tbaa !24
  br label %bb1
bb1:
  %t5 = load i64, ptr %l2, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/cond:Eval", ptr %t6, i32 0, i32 0
  %t9 = load { i64, ptr }, ptr %t8, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 0
  %t14 = icmp slt i64 %t5, %t11
  br i1 %t14, label %bb2, label %bb3
bb2:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/cond:Eval", ptr %t16, i32 0, i32 0
  %t19 = load { i64, ptr }, ptr %t18, !tbaa !27
  store { i64, ptr } %t19, ptr %l13, !tbaa !27
  %t20 = load i64, ptr %l2, !tbaa !24
  %t22 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = getelementptr i8, ptr %t23, i64 %t20
  %t25 = load i8, ptr %t24, !tbaa !32
  %t27 = icmp eq i8 %t25, 32
  br i1 %t27, label %bb4, label %bb5
bb3:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb13
bb4:
  store i1 true, ptr %l17, !tbaa !21
  br label %bb6
bb5:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/cond:Eval", ptr %t29, i32 0, i32 0
  %t32 = load { i64, ptr }, ptr %t31, !tbaa !27
  store { i64, ptr } %t32, ptr %l19, !tbaa !27
  %t33 = load i64, ptr %l2, !tbaa !24
  %t35 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !27
  %t37 = getelementptr i8, ptr %t36, i64 %t33
  %t38 = load i8, ptr %t37, !tbaa !32
  %t40 = icmp eq i8 %t38, 9
  store i1 %t40, ptr %l17, !tbaa !21
  br label %bb6
bb6:
  %t42 = load i1, ptr %l17, !tbaa !21
  br i1 %t42, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l23, !tbaa !21
  br label %bb9
bb8:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/cond:Eval", ptr %t43, i32 0, i32 0
  %t46 = load { i64, ptr }, ptr %t45, !tbaa !27
  store { i64, ptr } %t46, ptr %l25, !tbaa !27
  %t47 = load i64, ptr %l2, !tbaa !24
  %t49 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !27
  %t51 = getelementptr i8, ptr %t50, i64 %t47
  %t52 = load i8, ptr %t51, !tbaa !32
  %t54 = icmp eq i8 %t52, 10
  store i1 %t54, ptr %l23, !tbaa !21
  br label %bb9
bb9:
  %t56 = load i1, ptr %l23, !tbaa !21
  br i1 %t56, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l29, !tbaa !21
  br label %bb12
bb11:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/cond:Eval", ptr %t57, i32 0, i32 0
  %t60 = load { i64, ptr }, ptr %t59, !tbaa !27
  store { i64, ptr } %t60, ptr %l31, !tbaa !27
  %t61 = load i64, ptr %l2, !tbaa !24
  %t63 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !27
  %t65 = getelementptr i8, ptr %t64, i64 %t61
  %t66 = load i8, ptr %t65, !tbaa !32
  %t68 = icmp eq i8 %t66, 40
  store i1 %t68, ptr %l29, !tbaa !21
  br label %bb12
bb12:
  %t70 = load i1, ptr %l29, !tbaa !21
  store i1 %t70, ptr %l11, !tbaa !21
  br label %bb13
bb13:
  %t71 = load i1, ptr %l11, !tbaa !21
  %t72 = xor i1 %t71, true
  br i1 %t72, label %bb14, label %bb15
bb14:
  br label %bb18
bb15:
  br label %bb16
bb16:
  %t74 = load i64, ptr %l2, !tbaa !24
  %t76 = add i64 %t74, 1
  store i64 %t76, ptr %l2, !tbaa !24
  br label %bb17
bb17:
  br label %bb1
bb18:
  %t78 = load i64, ptr %l2, !tbaa !24
  store i64 %t78, ptr %l3, !tbaa !24
  %t80 = load i64, ptr %l3, !tbaa !24
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/cond:Eval", ptr %t81, i32 0, i32 0
  %t84 = load { i64, ptr }, ptr %t83, !tbaa !27
  %t86 = extractvalue { i64, ptr } %t84, 0
  %t89 = icmp slt i64 %t80, %t86
  br i1 %t89, label %bb19, label %bb20
bb19:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/cond:Eval", ptr %t91, i32 0, i32 0
  %t94 = load { i64, ptr }, ptr %t93, !tbaa !27
  store { i64, ptr } %t94, ptr %l46, !tbaa !27
  %t95 = load i64, ptr %l3, !tbaa !24
  %t97 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !27
  %t99 = getelementptr i8, ptr %t98, i64 %t95
  %t100 = load i8, ptr %t99, !tbaa !32
  %t102 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t100)
  store i1 %t102, ptr %l49
  br label %bb21
bb20:
  store i1 false, ptr %l44, !tbaa !21
  br label %bb29
bb21:
  %t103 = load i1, ptr %l49, !tbaa !21
  br i1 %t103, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l50, !tbaa !21
  br label %bb25
bb23:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/cond:Eval", ptr %t104, i32 0, i32 0
  %t107 = load { i64, ptr }, ptr %t106, !tbaa !27
  store { i64, ptr } %t107, ptr %l52, !tbaa !27
  %t108 = load i64, ptr %l3, !tbaa !24
  %t110 = getelementptr { i64, ptr }, ptr %l52, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr i8, ptr %t111, i64 %t108
  %t113 = load i8, ptr %t112, !tbaa !32
  %t115 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t113)
  store i1 %t115, ptr %l55
  br label %bb24
bb24:
  %t116 = load i1, ptr %l55, !tbaa !21
  store i1 %t116, ptr %l50, !tbaa !21
  br label %bb25
bb25:
  %t117 = load i1, ptr %l50, !tbaa !21
  br i1 %t117, label %bb26, label %bb27
bb26:
  store i1 true, ptr %l56, !tbaa !21
  br label %bb28
bb27:
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = getelementptr %"compiler/cond:Eval", ptr %t118, i32 0, i32 0
  %t121 = load { i64, ptr }, ptr %t120, !tbaa !27
  store { i64, ptr } %t121, ptr %l58, !tbaa !27
  %t122 = load i64, ptr %l3, !tbaa !24
  %t124 = getelementptr { i64, ptr }, ptr %l58, i32 0, i32 1
  %t125 = load ptr, ptr %t124, !tbaa !27
  %t126 = getelementptr i8, ptr %t125, i64 %t122
  %t127 = load i8, ptr %t126, !tbaa !32
  %t129 = icmp eq i8 %t127, 95
  store i1 %t129, ptr %l56, !tbaa !21
  br label %bb28
bb28:
  %t131 = load i1, ptr %l56, !tbaa !21
  store i1 %t131, ptr %l44, !tbaa !21
  br label %bb29
bb29:
  %t132 = load i1, ptr %l44, !tbaa !21
  br i1 %t132, label %bb30, label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb49
bb32:
  %t133 = load i64, ptr %l3, !tbaa !24
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t136 = getelementptr %"compiler/cond:Eval", ptr %t134, i32 0, i32 0
  %t137 = load { i64, ptr }, ptr %t136, !tbaa !27
  %t139 = extractvalue { i64, ptr } %t137, 0
  %t142 = icmp slt i64 %t133, %t139
  br i1 %t142, label %bb33, label %bb34
bb33:
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t146 = getelementptr %"compiler/cond:Eval", ptr %t144, i32 0, i32 0
  %t147 = load { i64, ptr }, ptr %t146, !tbaa !27
  store { i64, ptr } %t147, ptr %l69, !tbaa !27
  %t148 = load i64, ptr %l3, !tbaa !24
  %t150 = getelementptr { i64, ptr }, ptr %l69, i32 0, i32 1
  %t151 = load ptr, ptr %t150, !tbaa !27
  %t152 = getelementptr i8, ptr %t151, i64 %t148
  %t153 = load i8, ptr %t152, !tbaa !32
  %t155 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t153)
  store i1 %t155, ptr %l72
  br label %bb35
bb34:
  store i1 false, ptr %l67, !tbaa !21
  br label %bb43
bb35:
  %t156 = load i1, ptr %l72, !tbaa !21
  br i1 %t156, label %bb36, label %bb37
bb36:
  store i1 true, ptr %l73, !tbaa !21
  br label %bb39
bb37:
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t159 = getelementptr %"compiler/cond:Eval", ptr %t157, i32 0, i32 0
  %t160 = load { i64, ptr }, ptr %t159, !tbaa !27
  store { i64, ptr } %t160, ptr %l75, !tbaa !27
  %t161 = load i64, ptr %l3, !tbaa !24
  %t163 = getelementptr { i64, ptr }, ptr %l75, i32 0, i32 1
  %t164 = load ptr, ptr %t163, !tbaa !27
  %t165 = getelementptr i8, ptr %t164, i64 %t161
  %t166 = load i8, ptr %t165, !tbaa !32
  %t168 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t166)
  store i1 %t168, ptr %l78
  br label %bb38
bb38:
  %t169 = load i1, ptr %l78, !tbaa !21
  store i1 %t169, ptr %l73, !tbaa !21
  br label %bb39
bb39:
  %t170 = load i1, ptr %l73, !tbaa !21
  br i1 %t170, label %bb40, label %bb41
bb40:
  store i1 true, ptr %l79, !tbaa !21
  br label %bb42
bb41:
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t173 = getelementptr %"compiler/cond:Eval", ptr %t171, i32 0, i32 0
  %t174 = load { i64, ptr }, ptr %t173, !tbaa !27
  store { i64, ptr } %t174, ptr %l81, !tbaa !27
  %t175 = load i64, ptr %l3, !tbaa !24
  %t177 = getelementptr { i64, ptr }, ptr %l81, i32 0, i32 1
  %t178 = load ptr, ptr %t177, !tbaa !27
  %t179 = getelementptr i8, ptr %t178, i64 %t175
  %t180 = load i8, ptr %t179, !tbaa !32
  %t182 = icmp eq i8 %t180, 95
  store i1 %t182, ptr %l79, !tbaa !21
  br label %bb42
bb42:
  %t184 = load i1, ptr %l79, !tbaa !21
  store i1 %t184, ptr %l67, !tbaa !21
  br label %bb43
bb43:
  %t185 = load i1, ptr %l67, !tbaa !21
  %t186 = xor i1 %t185, true
  br i1 %t186, label %bb44, label %bb45
bb44:
  br label %bb48
bb45:
  br label %bb46
bb46:
  %t188 = load i64, ptr %l3, !tbaa !24
  %t190 = add i64 %t188, 1
  store i64 %t190, ptr %l3, !tbaa !24
  br label %bb47
bb47:
  br label %bb32
bb48:
  br label %bb71
bb49:
  store %olang.scope zeroinitializer, ptr %s5
  %t192 = load i64, ptr %l3, !tbaa !24
  %t193 = load ptr, ptr %l0, !tbaa !29
  %t195 = getelementptr %"compiler/cond:Eval", ptr %t193, i32 0, i32 0
  %t196 = load { i64, ptr }, ptr %t195, !tbaa !27
  %t198 = extractvalue { i64, ptr } %t196, 0
  %t201 = icmp slt i64 %t192, %t198
  br i1 %t201, label %bb50, label %bb51
bb50:
  %t203 = load i64, ptr %l3, !tbaa !24
  %t204 = load i64, ptr %l2, !tbaa !24
  %t206 = add i64 %t204, 2
  %t209 = icmp slt i64 %t203, %t206
  store i1 %t209, ptr %l93, !tbaa !21
  br label %bb52
bb51:
  store i1 false, ptr %l93, !tbaa !21
  br label %bb52
bb52:
  %t211 = load i1, ptr %l93, !tbaa !21
  br i1 %t211, label %bb53, label %bb54
bb53:
  store { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d46, i32 0, i32 1) }, ptr %l99, !tbaa !27
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t214 = getelementptr %"compiler/cond:Eval", ptr %t212, i32 0, i32 0
  %t215 = load { i64, ptr }, ptr %t214, !tbaa !27
  store { i64, ptr } %t215, ptr %l101, !tbaa !27
  %t216 = load i64, ptr %l3, !tbaa !24
  store i64 %t216, ptr %l102, !tbaa !24
  %t217 = load i64, ptr %l3, !tbaa !24
  %t219 = add i64 %t217, 1
  store i64 %t219, ptr %l104, !tbaa !24
  %t220 = load { i64, ptr }, ptr %l101, !tbaa !27
  %t221 = extractvalue { i64, ptr } %t220, 0
  store i64 %t221, ptr %l105, !tbaa !24
  %t222 = load i64, ptr %l102, !tbaa !24
  %t223 = icmp sge i64 %t222, 0
  br i1 %t223, label %bb55, label %bb56
bb54:
  store i1 false, ptr %l98, !tbaa !21
  br label %bb62
bb55:
  %t225 = load i64, ptr %l102, !tbaa !24
  %t226 = load i64, ptr %l104, !tbaa !24
  %t227 = icmp sle i64 %t225, %t226
  br i1 %t227, label %bb57, label %bb58
bb56:
  call void @__olang_check_failed(ptr @olang_loc_eb7ac349c2b76455_935b96b70fca2c61)
  unreachable
bb57:
  %t229 = load i64, ptr %l104, !tbaa !24
  %t230 = load i64, ptr %l105, !tbaa !24
  %t231 = icmp sle i64 %t229, %t230
  br i1 %t231, label %bb59, label %bb60
bb58:
  call void @__olang_check_failed(ptr @olang_loc_eb7ac349c2b76455_935b96b70fca2c61)
  unreachable
bb59:
  %t233 = getelementptr { i64, ptr }, ptr %l101, i32 0, i32 1
  %t234 = load ptr, ptr %t233, !tbaa !27
  %t235 = load i64, ptr %l102, !tbaa !24
  %t236 = load i64, ptr %l104, !tbaa !24
  %t237 = getelementptr i8, ptr %t234, i64 %t235
  %t238 = sub i64 %t236, %t235
  %t239 = insertvalue { i64, ptr } undef, i64 %t238, 0
  %t240 = insertvalue { i64, ptr } %t239, ptr %t237, 1
  %t242 = load { i64, ptr }, ptr %l99, !tbaa !27
  %t244 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %s5, ptr %v0, { i64, ptr } %t242, { i64, ptr } %t240)
  store i1 %t244, ptr %l111
  br label %bb61
bb60:
  call void @__olang_check_failed(ptr @olang_loc_eb7ac349c2b76455_935b96b70fca2c61)
  unreachable
bb61:
  %t245 = load i1, ptr %l111, !tbaa !21
  store i1 %t245, ptr %l98, !tbaa !21
  br label %bb62
bb62:
  %t246 = load i1, ptr %l98, !tbaa !21
  %t247 = xor i1 %t246, true
  br i1 %t247, label %bb63, label %bb64
bb63:
  call void @__olang_scope_close(ptr %s5)
  br label %bb67
bb64:
  br label %bb65
bb65:
  %t249 = load i64, ptr %l3, !tbaa !24
  %t251 = add i64 %t249, 1
  store i64 %t251, ptr %l3, !tbaa !24
  call void @__olang_scope_close(ptr %s5)
  br label %bb66
bb66:
  br label %bb49
bb67:
  %t253 = load i64, ptr %l3, !tbaa !24
  %t254 = load i64, ptr %l2, !tbaa !24
  %t257 = icmp eq i64 %t253, %t254
  br i1 %t257, label %bb68, label %bb69
bb68:
  %t259 = load i64, ptr %l2, !tbaa !24
  %t261 = add i64 %t259, 1
  store i64 %t261, ptr %l3, !tbaa !24
  br label %bb70
bb69:
  br label %bb70
bb70:
  br label %bb71
bb71:
  %t263 = load i64, ptr %l2, !tbaa !24
  %t265 = trunc i64 %t263 to i32
  %t266 = load i64, ptr %l3, !tbaa !24
  %t268 = trunc i64 %t266 to i32
  %t271 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 %t265, i32 %t268)
  store %"compiler/source:Span" %t271, ptr %l124
  br label %bb72
bb72:
  call void @__olang_scope_close(ptr %s0)
  %t272 = load %"compiler/source:Span", ptr %l124
  store %"compiler/source:Span" %t272, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2eunary(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca %"compiler/cond:Value"
  %l6 = alloca %"compiler/cond:Value"
  %l7 = alloca i32
  %l8 = alloca i32
  %l11 = alloca i32
  %l13 = alloca %"compiler/source:Span"
  %l18 = alloca %"compiler/cond:Value"
  %l25 = alloca ptr
  %l26 = alloca %"compiler/source:Span"
  %l29 = alloca { i64, ptr }
  %l31 = alloca %"compiler/diagmsg:Msg"
  %l32 = alloca %"compiler/cond:Value"
  %l35 = alloca %"compiler/cond:Value"
  %l41 = alloca %"compiler/cond:Value"
  %l44 = alloca %"compiler/cond:Value"
  %l54 = alloca %"compiler/cond:Value"
  %l58 = alloca ptr
  %l59 = alloca %"compiler/source:Span"
  %l62 = alloca { i64, ptr }
  %l64 = alloca %"compiler/diagmsg:Msg"
  %l65 = alloca %"compiler/cond:Value"
  %l68 = alloca i1
  %l73 = alloca i1
  %l77 = alloca %"compiler/cond:Value"
  %l83 = alloca %"compiler/cond:Value"
  %s0 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca %"compiler/cond:Value"
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t2 = load i32, ptr %t1, !tbaa !23
  store i32 %t2, ptr %l7, !tbaa !23
  %t3 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t4 = load i32, ptr %t3, !tbaa !23
  store i32 %t4, ptr %l8, !tbaa !23
  %t5 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t7 = trunc i64 48 to i32
  %t8 = icmp eq i32 %t5, %t7
  br i1 %t8, label %bb1, label %bb2
bb1:
  store i32 3, ptr %l11, !tbaa !23
  br label %bb3
bb2:
  store i32 1, ptr %l11, !tbaa !23
  br label %bb3
bb3:
  %t10 = load i32, ptr %l8, !tbaa !23
  %t11 = load i32, ptr %l11, !tbaa !23
  %t12 = add i32 %t10, %t11
  %t13 = load i32, ptr %l7, !tbaa !23
  %t15 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 %t13, i32 %t12)
  store %"compiler/source:Span" %t15, ptr %l13
  br label %bb4
bb4:
  %t16 = load %"compiler/source:Span", ptr %l13
  store %"compiler/source:Span" %t16, ptr %l4
  %t17 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t19 = trunc i64 48 to i32
  %t20 = icmp eq i32 %t17, %t19
  br i1 %t20, label %bb5, label %bb6
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load ptr, ptr %l3, !tbaa !29
  %t26 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2eexpr(ptr %v0, ptr %v1, ptr %t22, ptr %t23)
  store %"compiler/cond:Value" %t26, ptr %l18
  br label %bb7
bb6:
  br label %bb18
bb7:
  %t27 = load %"compiler/cond:Value", ptr %l18
  store %"compiler/cond:Value" %t27, ptr %l5
  %t28 = getelementptr %"compiler/cond:Value", ptr %l5, i32 0, i32 0
  %t29 = load i32, ptr %t28, !range !{i32 0, i32 5}
  %t31 = trunc i64 0 to i32
  %t32 = icmp eq i32 %t29, %t31
  br i1 %t32, label %bb8, label %bb9
bb8:
  %t34 = load %"compiler/cond:Value", ptr %l5
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/cond:Value" %t34, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t36 = getelementptr %"compiler/cond:Value", ptr %l5, i32 0, i32 0
  %t37 = load i32, ptr %t36, !range !{i32 0, i32 5}
  %t39 = trunc i64 1 to i32
  %t40 = icmp eq i32 %t37, %t39
  %t42 = xor i1 %t40, true
  br i1 %t42, label %bb11, label %bb12
bb11:
  %t44 = load ptr, ptr %l0, !tbaa !29
  store ptr %t44, ptr %l25, !tbaa !29
  %t45 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t45, ptr %l26
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load %"compiler/source:Span", ptr %l4
  %t50 = call { i64, ptr } @compiler_2fcond_2ecompiler_2fcond_3aEval_2etokText(ptr %v0, ptr %v0, ptr %t46, %"compiler/source:Span" %t47)
  store { i64, ptr } %t50, ptr %l29
  br label %bb13
bb12:
  br label %bb16
bb13:
  %t51 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t52 = extractvalue { i64, ptr } %t51, 0
  %t53 = extractvalue { i64, ptr } %t51, 1
  %t54 = mul i64 %t52, 1
  %t55 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t54)
  call void @llvm.memcpy.p0.p0.i64(ptr %t55, ptr %t53, i64 %t54, i1 false)
  %t56 = insertvalue { i64, ptr } undef, i64 %t52, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t55, 1
  %t59 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondTypes(ptr %v0, ptr %v0, { i64, ptr } %t57)
  store %"compiler/diagmsg:Msg" %t59, ptr %l31
  br label %bb14
bb14:
  %t60 = load ptr, ptr %l25, !tbaa !29
  %t61 = load %"compiler/source:Span", ptr %l26
  %t62 = load %"compiler/diagmsg:Msg", ptr %l31
  %t63 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2efail(ptr %v0, ptr %v0, ptr %t60, %"compiler/source:Span" %t61, %"compiler/diagmsg:Msg" %t62)
  store %"compiler/cond:Value" %t63, ptr %l32
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s0)
  %t64 = load %"compiler/cond:Value", ptr %l32
  store %"compiler/cond:Value" %t64, ptr %rv
  br label %ret
bb16:
  %t65 = getelementptr %"compiler/cond:Value", ptr %l5, i32 0, i32 1
  %t66 = load i64, ptr %t65, !tbaa !24
  %t68 = icmp eq i64 %t66, 0
  %t70 = call %"compiler/cond:Value" @compiler_2fcond_2eValue_2ebool(i1 %t68)
  store %"compiler/cond:Value" %t70, ptr %l35
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s0)
  %t71 = load %"compiler/cond:Value", ptr %l35
  store %"compiler/cond:Value" %t71, ptr %rv
  br label %ret
bb18:
  %t72 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t74 = trunc i64 69 to i32
  %t75 = icmp eq i32 %t72, %t74
  %t77 = xor i1 %t75, true
  br i1 %t77, label %bb19, label %bb20
bb19:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load %"compiler/source:Span", ptr %l4
  %t83 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2edefer(ptr %v0, ptr %t79, %"compiler/source:Span" %t80)
  store %"compiler/cond:Value" %t83, ptr %l41
  br label %bb21
bb20:
  br label %bb22
bb21:
  call void @__olang_scope_close(ptr %s0)
  %t84 = load %"compiler/cond:Value", ptr %l41
  store %"compiler/cond:Value" %t84, ptr %rv
  br label %ret
bb22:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load ptr, ptr %l3, !tbaa !29
  %t89 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2eexpr(ptr %v0, ptr %v1, ptr %t85, ptr %t86)
  store %"compiler/cond:Value" %t89, ptr %l44
  br label %bb23
bb23:
  %t90 = load %"compiler/cond:Value", ptr %l44
  store %"compiler/cond:Value" %t90, ptr %l6
  %t91 = getelementptr %"compiler/cond:Value", ptr %l6, i32 0, i32 0
  %t92 = load i32, ptr %t91, !range !{i32 0, i32 5}
  %t94 = trunc i64 0 to i32
  %t95 = icmp eq i32 %t92, %t94
  br i1 %t95, label %bb24, label %bb25
bb24:
  %t97 = load %"compiler/cond:Value", ptr %l6
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/cond:Value" %t97, ptr %rv
  br label %ret
bb25:
  br label %bb26
bb26:
  %t99 = getelementptr %"compiler/cond:Value", ptr %l6, i32 0, i32 0
  %t100 = load i32, ptr %t99, !range !{i32 0, i32 5}
  %t102 = trunc i64 3 to i32
  %t103 = icmp eq i32 %t100, %t102
  br i1 %t103, label %bb27, label %bb28
bb27:
  store %olang.scope zeroinitializer, ptr %s6
  %t105 = getelementptr %"compiler/cond:Value", ptr %l6, i32 0, i32 2
  %t106 = load double, ptr %t105, !tbaa !26
  %t108 = fneg double %t106
  %t109 = getelementptr %"compiler/cond:Value", ptr %l6, i32 0, i32 4
  %t110 = load i64, ptr %t109, !tbaa !24
  %t114 = call %"compiler/cond:Value" @compiler_2fcond_3aValue_2ector(ptr %s6, i32 3, i64 0, double %t108, i64 0, i64 %t110, i1 false, i1 false)
  store %"compiler/cond:Value" %t114, ptr %l54
  br label %bb29
bb28:
  br label %bb30
bb29:
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  %t115 = load %"compiler/cond:Value", ptr %l54
  store %"compiler/cond:Value" %t115, ptr %rv
  br label %ret
bb30:
  %t116 = getelementptr %"compiler/cond:Value", ptr %l6, i32 0, i32 0
  %t117 = load i32, ptr %t116, !range !{i32 0, i32 5}
  %t119 = trunc i64 2 to i32
  %t120 = icmp eq i32 %t117, %t119
  %t122 = xor i1 %t120, true
  br i1 %t122, label %bb31, label %bb32
bb31:
  %t124 = load ptr, ptr %l0, !tbaa !29
  store ptr %t124, ptr %l58, !tbaa !29
  %t125 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t125, ptr %l59
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t127 = load %"compiler/source:Span", ptr %l4
  %t130 = call { i64, ptr } @compiler_2fcond_2ecompiler_2fcond_3aEval_2etokText(ptr %v0, ptr %v0, ptr %t126, %"compiler/source:Span" %t127)
  store { i64, ptr } %t130, ptr %l62
  br label %bb33
bb32:
  br label %bb36
bb33:
  %t131 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t132 = extractvalue { i64, ptr } %t131, 0
  %t133 = extractvalue { i64, ptr } %t131, 1
  %t134 = mul i64 %t132, 1
  %t135 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t134)
  call void @llvm.memcpy.p0.p0.i64(ptr %t135, ptr %t133, i64 %t134, i1 false)
  %t136 = insertvalue { i64, ptr } undef, i64 %t132, 0
  %t137 = insertvalue { i64, ptr } %t136, ptr %t135, 1
  %t139 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondTypes(ptr %v0, ptr %v0, { i64, ptr } %t137)
  store %"compiler/diagmsg:Msg" %t139, ptr %l64
  br label %bb34
bb34:
  %t140 = load ptr, ptr %l58, !tbaa !29
  %t141 = load %"compiler/source:Span", ptr %l59
  %t142 = load %"compiler/diagmsg:Msg", ptr %l64
  %t143 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2efail(ptr %v0, ptr %v0, ptr %t140, %"compiler/source:Span" %t141, %"compiler/diagmsg:Msg" %t142)
  store %"compiler/cond:Value" %t143, ptr %l65
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s0)
  %t144 = load %"compiler/cond:Value", ptr %l65
  store %"compiler/cond:Value" %t144, ptr %rv
  br label %ret
bb36:
  %t145 = getelementptr %"compiler/cond:Value", ptr %l6, i32 0, i32 1
  %t146 = load i64, ptr %t145, !tbaa !24
  %t148 = icmp eq i64 %t146, -9223372036854775808
  br i1 %t148, label %bb37, label %bb38
bb37:
  store i1 true, ptr %l68, !tbaa !21
  br label %bb40
bb38:
  %t150 = getelementptr %"compiler/cond:Value", ptr %l6, i32 0, i32 1
  %t151 = load i64, ptr %t150, !tbaa !24
  %t153 = sub i64 0, %t151
  %t154 = getelementptr %"compiler/cond:Value", ptr %l6, i32 0, i32 4
  %t155 = load i64, ptr %t154, !tbaa !24
  %t156 = getelementptr %"compiler/cond:Value", ptr %l6, i32 0, i32 5
  %t157 = load i1, ptr %t156, !tbaa !21
  %t161 = call i1 @compiler_2fcond_2efits(i64 %t153, i64 %t155, i1 %t157)
  store i1 %t161, ptr %l73
  br label %bb39
bb39:
  %t162 = load i1, ptr %l73, !tbaa !21
  %t163 = xor i1 %t162, true
  store i1 %t163, ptr %l68, !tbaa !21
  br label %bb40
bb40:
  %t165 = load i1, ptr %l68, !tbaa !21
  br i1 %t165, label %bb41, label %bb42
bb41:
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t167 = load %"compiler/source:Span", ptr %l4
  %t170 = call %"compiler/cond:Value" @compiler_2fcond_2ecompiler_2fcond_3aEval_2edefer(ptr %v0, ptr %t166, %"compiler/source:Span" %t167)
  store %"compiler/cond:Value" %t170, ptr %l77
  br label %bb43
bb42:
  br label %bb44
bb43:
  call void @__olang_scope_close(ptr %s0)
  %t171 = load %"compiler/cond:Value", ptr %l77
  store %"compiler/cond:Value" %t171, ptr %rv
  br label %ret
bb44:
  %t172 = getelementptr %"compiler/cond:Value", ptr %l6, i32 0, i32 1
  %t173 = load i64, ptr %t172, !tbaa !24
  %t175 = sub i64 0, %t173
  %t176 = getelementptr %"compiler/cond:Value", ptr %l6, i32 0, i32 4
  %t177 = load i64, ptr %t176, !tbaa !24
  %t178 = getelementptr %"compiler/cond:Value", ptr %l6, i32 0, i32 5
  %t179 = load i1, ptr %t178, !tbaa !21
  %t184 = call %"compiler/cond:Value" @compiler_2fcond_3aValue_2ector(ptr %s0, i32 2, i64 %t175, double 0x0000000000000000, i64 0, i64 %t177, i1 %t179, i1 false)
  store %"compiler/cond:Value" %t184, ptr %l83
  br label %bb45
bb45:
  call void @__olang_scope_close(ptr %s0)
  %t185 = load %"compiler/cond:Value", ptr %l83
  store %"compiler/cond:Value" %t185, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/cond:Value", ptr %rv
  ret %"compiler/cond:Value" %rr
}

define dso_local void @compiler_2fcond_2ecompiler_2fcond_3aScope_2eAdd(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l7 = alloca i64
  %l9 = alloca i64
  %l14 = alloca ptr
  %l19 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/cond:Scope", ptr %t1, i32 0, i32 1
  store ptr %t3, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t5 = load i64, ptr %l3, !tbaa !24
  store i64 %t5, ptr %l7, !tbaa !24
  %t6 = load ptr, ptr %l2, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcond_3aGlobal_26_3e_2eLen_3ccompiler_2fcond_3aGlobal_26_3e(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l9
  br label %bb2
bb2:
  %t9 = load i64, ptr %l7, !tbaa !24
  %t10 = load i64, ptr %l9, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  br label %bb12
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l2, !tbaa !29
  %t16 = load i64, ptr %l3, !tbaa !24
  %t19 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcond_3aGlobal_26_3e_2eAt_3ccompiler_2fcond_3aGlobal_26_3e(ptr %v0, ptr %v0, ptr %t15, i64 %t16)
  store ptr %t19, ptr %l14
  br label %bb6
bb6:
  %t20 = load ptr, ptr %l14, !tbaa !29
  %t23 = getelementptr %"compiler/cond:Global", ptr %t20, i32 0, i32 0
  %t24 = load { i64, ptr }, ptr %t23, !tbaa !27
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr %"compiler/cond:Global", ptr %t25, i32 0, i32 0
  %t28 = load { i64, ptr }, ptr %t27, !tbaa !27
  %t31 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %t24, { i64, ptr } %t28)
  store i1 %t31, ptr %l19
  br label %bb7
bb7:
  %t32 = load i1, ptr %l19, !tbaa !21
  br i1 %t32, label %bb8, label %bb9
bb8:
  br label %ret
bb9:
  br label %bb10
bb10:
  br label %bb11
bb11:
  %t33 = load i64, ptr %l3, !tbaa !24
  %t35 = add i64 %t33, 1
  store i64 %t35, ptr %l3, !tbaa !24
  br label %bb1
bb12:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/cond:Scope", ptr %t37, i32 0, i32 1
  %t40 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcond_3aGlobal_26_3e_2ePush_3ccompiler_2fcond_3aGlobal_26_3e(ptr %v0, ptr %v1, ptr %t39, ptr %t40)
  br label %bb13
bb13:
  br label %ret
ret:
  ret void
}

define dso_local { i32, ptr } @compiler_2fcond_2ecompiler_2fcond_3aScope_2efind(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca ptr
  %l7 = alloca i64
  %l9 = alloca i64
  %l14 = alloca ptr
  %l18 = alloca i1
  %rv = alloca { i32, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/cond:Scope", ptr %a0, i32 0, i32 1
  store ptr %t3, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t5 = load i64, ptr %l3, !tbaa !24
  store i64 %t5, ptr %l7, !tbaa !24
  %t6 = load ptr, ptr %l2, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcond_3aGlobal_26_3e_2eLen_3ccompiler_2fcond_3aGlobal_26_3e(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l9
  br label %bb2
bb2:
  %t9 = load i64, ptr %l7, !tbaa !24
  %t10 = load i64, ptr %l9, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  br label %bb12
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l2, !tbaa !29
  %t16 = load i64, ptr %l3, !tbaa !24
  %t19 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcond_3aGlobal_26_3e_2eAt_3ccompiler_2fcond_3aGlobal_26_3e(ptr %v0, ptr %v0, ptr %t15, i64 %t16)
  store ptr %t19, ptr %l14
  br label %bb6
bb6:
  %t20 = load ptr, ptr %l14, !tbaa !29
  store ptr %t20, ptr %l4, !tbaa !29
  %t21 = load ptr, ptr %l4, !tbaa !29
  %t23 = getelementptr %"compiler/cond:Global", ptr %t21, i32 0, i32 0
  %t24 = load { i64, ptr }, ptr %t23, !tbaa !27
  %t28 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %t24, { i64, ptr } %a1)
  store i1 %t28, ptr %l18
  br label %bb7
bb7:
  %t29 = load i1, ptr %l18, !tbaa !21
  br i1 %t29, label %bb8, label %bb9
bb8:
  %t30 = load ptr, ptr %l4, !tbaa !29
  %t32 = insertvalue { i32, ptr } zeroinitializer, ptr %t30, 1
  store { i32, ptr } %t32, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  br label %bb11
bb11:
  %t33 = load i64, ptr %l3, !tbaa !24
  %t35 = add i64 %t33, 1
  store i64 %t35, ptr %l3, !tbaa !24
  br label %bb1
bb12:
  %t38 = insertvalue { i32, ptr } zeroinitializer, i32 65536, 0
  store { i32, ptr } %t38, ptr %rv
  br label %ret
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local i1 @compiler_2fcond_2efits(i64 %a0, i64 %a1, i1 %a2) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca i64
  %l3 = alloca i64
  %l10 = alloca i1
  %l13 = alloca i1
  %l15 = alloca i64
  %l22 = alloca i64
  %l28 = alloca i1
  %rv = alloca i1
  store i64 %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp eq i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  br i1 %a2, label %bb4, label %bb5
bb4:
  %t8 = load i64, ptr %l0, !tbaa !24
  %t10 = icmp sge i64 %t8, 0
  br i1 %t10, label %bb6, label %bb7
bb5:
  br label %bb12
bb6:
  %t12 = load i64, ptr %l1, !tbaa !24
  %t14 = icmp eq i64 %t12, 64
  br i1 %t14, label %bb8, label %bb9
bb7:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb11
bb8:
  store i1 true, ptr %l13, !tbaa !21
  br label %bb10
bb9:
  %t16 = load i64, ptr %l0, !tbaa !24
  %t17 = load i64, ptr %l1, !tbaa !24
  store i64 %t17, ptr %l15, !tbaa !24
  %t18 = load i64, ptr %l15, !tbaa !24
  %t19 = load i64, ptr %l15, !tbaa !24
  %t20 = shl i64 1, %t19
  %t23 = icmp slt i64 %t16, %t20
  store i1 %t23, ptr %l13, !tbaa !21
  br label %bb10
bb10:
  %t25 = load i1, ptr %l13, !tbaa !21
  store i1 %t25, ptr %l10, !tbaa !21
  br label %bb11
bb11:
  %t26 = load i1, ptr %l10, !tbaa !21
  store i1 %t26, ptr %rv
  br label %ret
bb12:
  %t27 = load i64, ptr %l1, !tbaa !24
  %t29 = icmp eq i64 %t27, 64
  br i1 %t29, label %bb13, label %bb14
bb13:
  store i1 true, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t32 = load i64, ptr %l1, !tbaa !24
  %t34 = sub i64 %t32, 1
  store i64 %t34, ptr %l22, !tbaa !24
  %t35 = load i64, ptr %l22, !tbaa !24
  %t36 = load i64, ptr %l22, !tbaa !24
  %t37 = shl i64 1, %t36
  store i64 %t37, ptr %l3, !tbaa !24
  %t39 = load i64, ptr %l0, !tbaa !24
  %t40 = load i64, ptr %l3, !tbaa !24
  %t42 = sub i64 0, %t40
  %t45 = icmp sge i64 %t39, %t42
  br i1 %t45, label %bb16, label %bb17
bb16:
  %t47 = load i64, ptr %l0, !tbaa !24
  %t48 = load i64, ptr %l3, !tbaa !24
  %t51 = icmp slt i64 %t47, %t48
  store i1 %t51, ptr %l28, !tbaa !21
  br label %bb18
bb17:
  store i1 false, ptr %l28, !tbaa !21
  br label %bb18
bb18:
  %t53 = load i1, ptr %l28, !tbaa !21
  store i1 %t53, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcond_2eflows(i64 %a0, i1 %a1, i64 %a2, i1 %a3) #0 {
entry:
  %l1 = alloca i1
  %l3 = alloca i1
  %l11 = alloca i1
  %l13 = alloca i1
  %rv = alloca i1
  store i1 %a1, ptr %l1
  store i1 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t5 = icmp sge i64 %a0, %a2
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = load i1, ptr %l1, !tbaa !21
  %t9 = load i1, ptr %l3, !tbaa !21
  %t12 = icmp eq i1 %t8, %t9
  br i1 %t12, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb9
bb5:
  %t14 = load i1, ptr %l1, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  %t16 = load i1, ptr %l3, !tbaa !21
  %t18 = xor i1 %t16, true
  store i1 %t18, ptr %l13, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb8
bb8:
  %t20 = load i1, ptr %l13, !tbaa !21
  store i1 %t20, ptr %l11, !tbaa !21
  br label %bb9
bb9:
  %t21 = load i1, ptr %l11, !tbaa !21
  store i1 %t21, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcond_2eisName(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i8
  %l19 = alloca { i64, ptr }
  %l23 = alloca i1
  %l24 = alloca i1
  %l29 = alloca i1
  %l32 = alloca i1
  %l34 = alloca i1
  %l42 = alloca i32
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp eq i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t8, ptr %l1, !tbaa !27
  store i64 0, ptr %l2, !tbaa !24
  %t10 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t10, 0
  store i64 %t12, ptr %l3, !tbaa !24
  br label %bb4
bb4:
  %t14 = load i64, ptr %l2, !tbaa !24
  %t15 = load i64, ptr %l3, !tbaa !24
  %t18 = icmp slt i64 %t14, %t15
  %t20 = xor i1 %t18, true
  br i1 %t20, label %bb5, label %bb6
bb5:
  br label %bb23
bb6:
  br label %bb7
bb7:
  %t22 = load i64, ptr %l2, !tbaa !24
  store i64 %t22, ptr %l4, !tbaa !24
  %t24 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t24, ptr %l19, !tbaa !27
  %t25 = load i64, ptr %l2, !tbaa !24
  %t27 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = getelementptr i8, ptr %t28, i64 %t25
  %t30 = load i8, ptr %t29, !tbaa !32
  store i8 %t30, ptr %l5, !tbaa !22
  %t32 = load i8, ptr %l5, !tbaa !22
  %t34 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t32)
  store i1 %t34, ptr %l23
  br label %bb8
bb8:
  %t35 = load i1, ptr %l23, !tbaa !21
  br i1 %t35, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb11
bb10:
  %t36 = load i8, ptr %l5, !tbaa !22
  %t38 = icmp eq i8 %t36, 95
  store i1 %t38, ptr %l24, !tbaa !21
  br label %bb11
bb11:
  %t40 = load i1, ptr %l24, !tbaa !21
  %t43 = xor i1 %t40, true
  br i1 %t43, label %bb12, label %bb13
bb12:
  %t45 = load i64, ptr %l4, !tbaa !24
  %t47 = icmp sgt i64 %t45, 0
  br i1 %t47, label %bb14, label %bb15
bb13:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb18
bb14:
  %t49 = load i8, ptr %l5, !tbaa !22
  %t51 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t49)
  store i1 %t51, ptr %l34
  br label %bb16
bb15:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb17
bb16:
  %t52 = load i1, ptr %l34, !tbaa !21
  store i1 %t52, ptr %l32, !tbaa !21
  br label %bb17
bb17:
  %t53 = load i1, ptr %l32, !tbaa !21
  %t54 = xor i1 %t53, true
  store i1 %t54, ptr %l29, !tbaa !21
  br label %bb18
bb18:
  %t56 = load i1, ptr %l29, !tbaa !21
  br i1 %t56, label %bb19, label %bb20
bb19:
  store i1 false, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  br label %bb22
bb22:
  %t58 = load i64, ptr %l2, !tbaa !24
  %t60 = add i64 %t58, 1
  store i64 %t60, ptr %l2, !tbaa !24
  br label %bb4
bb23:
  %t62 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t63 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t65 = extractvalue { i64, ptr } %t63, 0
  %t68 = call i32 @compiler_2ftoken_2eTok_2eKeyword(ptr %v0, { i64, ptr } %t62, i64 0, i64 %t65)
  store i32 %t68, ptr %l42
  br label %bb24
bb24:
  %t69 = load i32, ptr %l42, !range !{i32 0, i32 114}
  %t71 = trunc i64 1 to i32
  %t72 = icmp eq i32 %t69, %t71
  store i1 %t72, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i32, %"compiler/cond:Value" } @compiler_2fcond_2emeet(%"compiler/cond:Value" %a0, %"compiler/cond:Value" %a1) #0 {
entry:
  %l0 = alloca %"compiler/cond:Value"
  %l1 = alloca %"compiler/cond:Value"
  %l2 = alloca %"compiler/cond:Value"
  %l3 = alloca %"compiler/cond:Value"
  %l6 = alloca i1
  %l12 = alloca i1
  %l19 = alloca %"compiler/cond:Value"
  %l24 = alloca i1
  %l28 = alloca %"compiler/cond:Value"
  %l33 = alloca i1
  %l37 = alloca %"compiler/cond:Value"
  %l41 = alloca i1
  %l46 = alloca %"compiler/cond:Value"
  %l51 = alloca %"compiler/cond:Value"
  %l57 = alloca i1
  %l61 = alloca %"compiler/cond:Value"
  %l65 = alloca i1
  %l67 = alloca i1
  %l71 = alloca i1
  %l78 = alloca %"compiler/cond:Value"
  %l80 = alloca %"compiler/cond:Value"
  %rv = alloca { i32, %"compiler/cond:Value" }
  store %"compiler/cond:Value" %a0, ptr %l0
  store %"compiler/cond:Value" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/cond:Value", ptr %l0, i32 0, i32 4
  %t2 = load i64, ptr %t1, !tbaa !24
  %t4 = icmp ne i64 %t2, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr %"compiler/cond:Value", ptr %l1, i32 0, i32 4
  %t7 = load i64, ptr %t6, !tbaa !24
  %t9 = icmp ne i64 %t7, 0
  store i1 %t9, ptr %l6, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l6, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l6, !tbaa !21
  br i1 %t11, label %bb4, label %bb5
bb4:
  %t12 = getelementptr %"compiler/cond:Value", ptr %l0, i32 0, i32 4
  %t13 = load i64, ptr %t12, !tbaa !24
  %t14 = getelementptr %"compiler/cond:Value", ptr %l1, i32 0, i32 4
  %t15 = load i64, ptr %t14, !tbaa !24
  %t18 = icmp eq i64 %t13, %t15
  br i1 %t18, label %bb6, label %bb7
bb5:
  br label %bb23
bb6:
  %t20 = getelementptr %"compiler/cond:Value", ptr %l0, i32 0, i32 5
  %t21 = load i1, ptr %t20, !tbaa !21
  %t22 = getelementptr %"compiler/cond:Value", ptr %l1, i32 0, i32 5
  %t23 = load i1, ptr %t22, !tbaa !21
  %t26 = icmp eq i1 %t21, %t23
  store i1 %t26, ptr %l12, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb8
bb8:
  %t28 = load i1, ptr %l12, !tbaa !21
  br i1 %t28, label %bb9, label %bb10
bb9:
  %t29 = getelementptr %"compiler/cond:Value", ptr %l0, i32 0, i32 4
  %t30 = load i64, ptr %t29, !tbaa !24
  %t31 = getelementptr %"compiler/cond:Value", ptr %l0, i32 0, i32 5
  %t32 = load i1, ptr %t31, !tbaa !21
  %t36 = call %"compiler/cond:Value" @compiler_2fcond_2eValue_2eshape(i32 2, i64 %t30, i1 %t32)
  store %"compiler/cond:Value" %t36, ptr %l19
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t37 = load %"compiler/cond:Value", ptr %l19
  %t38 = insertvalue { i32, %"compiler/cond:Value" } zeroinitializer, %"compiler/cond:Value" %t37, 1
  store { i32, %"compiler/cond:Value" } %t38, ptr %rv
  br label %ret
bb12:
  %t39 = getelementptr %"compiler/cond:Value", ptr %l0, i32 0, i32 4
  %t40 = load i64, ptr %t39, !tbaa !24
  %t41 = getelementptr %"compiler/cond:Value", ptr %l0, i32 0, i32 5
  %t42 = load i1, ptr %t41, !tbaa !21
  %t43 = getelementptr %"compiler/cond:Value", ptr %l1, i32 0, i32 4
  %t44 = load i64, ptr %t43, !tbaa !24
  %t45 = getelementptr %"compiler/cond:Value", ptr %l1, i32 0, i32 5
  %t46 = load i1, ptr %t45, !tbaa !21
  %t51 = call i1 @compiler_2fcond_2eflows(i64 %t40, i1 %t42, i64 %t44, i1 %t46)
  store i1 %t51, ptr %l24
  br label %bb13
bb13:
  %t52 = load i1, ptr %l24, !tbaa !21
  br i1 %t52, label %bb14, label %bb15
bb14:
  %t53 = getelementptr %"compiler/cond:Value", ptr %l1, i32 0, i32 4
  %t54 = load i64, ptr %t53, !tbaa !24
  %t55 = getelementptr %"compiler/cond:Value", ptr %l1, i32 0, i32 5
  %t56 = load i1, ptr %t55, !tbaa !21
  %t60 = call %"compiler/cond:Value" @compiler_2fcond_2eValue_2eshape(i32 2, i64 %t54, i1 %t56)
  store %"compiler/cond:Value" %t60, ptr %l28
  br label %bb16
bb15:
  br label %bb17
bb16:
  %t61 = load %"compiler/cond:Value", ptr %l28
  %t62 = insertvalue { i32, %"compiler/cond:Value" } zeroinitializer, %"compiler/cond:Value" %t61, 1
  store { i32, %"compiler/cond:Value" } %t62, ptr %rv
  br label %ret
bb17:
  %t63 = getelementptr %"compiler/cond:Value", ptr %l1, i32 0, i32 4
  %t64 = load i64, ptr %t63, !tbaa !24
  %t65 = getelementptr %"compiler/cond:Value", ptr %l1, i32 0, i32 5
  %t66 = load i1, ptr %t65, !tbaa !21
  %t67 = getelementptr %"compiler/cond:Value", ptr %l0, i32 0, i32 4
  %t68 = load i64, ptr %t67, !tbaa !24
  %t69 = getelementptr %"compiler/cond:Value", ptr %l0, i32 0, i32 5
  %t70 = load i1, ptr %t69, !tbaa !21
  %t75 = call i1 @compiler_2fcond_2eflows(i64 %t64, i1 %t66, i64 %t68, i1 %t70)
  store i1 %t75, ptr %l33
  br label %bb18
bb18:
  %t76 = load i1, ptr %l33, !tbaa !21
  br i1 %t76, label %bb19, label %bb20
bb19:
  %t77 = getelementptr %"compiler/cond:Value", ptr %l0, i32 0, i32 4
  %t78 = load i64, ptr %t77, !tbaa !24
  %t79 = getelementptr %"compiler/cond:Value", ptr %l0, i32 0, i32 5
  %t80 = load i1, ptr %t79, !tbaa !21
  %t84 = call %"compiler/cond:Value" @compiler_2fcond_2eValue_2eshape(i32 2, i64 %t78, i1 %t80)
  store %"compiler/cond:Value" %t84, ptr %l37
  br label %bb21
bb20:
  br label %bb22
bb21:
  %t85 = load %"compiler/cond:Value", ptr %l37
  %t86 = insertvalue { i32, %"compiler/cond:Value" } zeroinitializer, %"compiler/cond:Value" %t85, 1
  store { i32, %"compiler/cond:Value" } %t86, ptr %rv
  br label %ret
bb22:
  %t88 = insertvalue { i32, %"compiler/cond:Value" } zeroinitializer, i32 65536, 0
  store { i32, %"compiler/cond:Value" } %t88, ptr %rv
  br label %ret
bb23:
  %t89 = getelementptr %"compiler/cond:Value", ptr %l0, i32 0, i32 4
  %t90 = load i64, ptr %t89, !tbaa !24
  %t92 = icmp ne i64 %t90, 0
  br i1 %t92, label %bb24, label %bb25
bb24:
  store i1 true, ptr %l41, !tbaa !21
  br label %bb26
bb25:
  %t94 = getelementptr %"compiler/cond:Value", ptr %l1, i32 0, i32 4
  %t95 = load i64, ptr %t94, !tbaa !24
  %t97 = icmp ne i64 %t95, 0
  store i1 %t97, ptr %l41, !tbaa !21
  br label %bb26
bb26:
  %t99 = load i1, ptr %l41, !tbaa !21
  br i1 %t99, label %bb27, label %bb28
bb27:
  %t100 = getelementptr %"compiler/cond:Value", ptr %l0, i32 0, i32 4
  %t101 = load i64, ptr %t100, !tbaa !24
  %t103 = icmp ne i64 %t101, 0
  br i1 %t103, label %bb29, label %bb30
bb28:
  br label %bb51
bb29:
  %t105 = load %"compiler/cond:Value", ptr %l0
  store %"compiler/cond:Value" %t105, ptr %l46
  br label %bb31
bb30:
  %t107 = load %"compiler/cond:Value", ptr %l1
  store %"compiler/cond:Value" %t107, ptr %l46
  br label %bb31
bb31:
  %t109 = load %"compiler/cond:Value", ptr %l46
  store %"compiler/cond:Value" %t109, ptr %l2
  %t110 = getelementptr %"compiler/cond:Value", ptr %l0, i32 0, i32 4
  %t111 = load i64, ptr %t110, !tbaa !24
  %t113 = icmp ne i64 %t111, 0
  br i1 %t113, label %bb32, label %bb33
bb32:
  %t115 = load %"compiler/cond:Value", ptr %l1
  store %"compiler/cond:Value" %t115, ptr %l51
  br label %bb34
bb33:
  %t117 = load %"compiler/cond:Value", ptr %l0
  store %"compiler/cond:Value" %t117, ptr %l51
  br label %bb34
bb34:
  %t119 = load %"compiler/cond:Value", ptr %l51
  store %"compiler/cond:Value" %t119, ptr %l3
  %t120 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 1
  %t121 = load i64, ptr %t120, !tbaa !24
  %t122 = getelementptr %"compiler/cond:Value", ptr %l2, i32 0, i32 4
  %t123 = load i64, ptr %t122, !tbaa !24
  %t124 = getelementptr %"compiler/cond:Value", ptr %l2, i32 0, i32 5
  %t125 = load i1, ptr %t124, !tbaa !21
  %t129 = call i1 @compiler_2fcond_2efits(i64 %t121, i64 %t123, i1 %t125)
  store i1 %t129, ptr %l57
  br label %bb35
bb35:
  %t130 = load i1, ptr %l57, !tbaa !21
  br i1 %t130, label %bb36, label %bb37
bb36:
  %t131 = getelementptr %"compiler/cond:Value", ptr %l2, i32 0, i32 4
  %t132 = load i64, ptr %t131, !tbaa !24
  %t133 = getelementptr %"compiler/cond:Value", ptr %l2, i32 0, i32 5
  %t134 = load i1, ptr %t133, !tbaa !21
  %t138 = call %"compiler/cond:Value" @compiler_2fcond_2eValue_2eshape(i32 2, i64 %t132, i1 %t134)
  store %"compiler/cond:Value" %t138, ptr %l61
  br label %bb38
bb37:
  br label %bb39
bb38:
  %t139 = load %"compiler/cond:Value", ptr %l61
  %t140 = insertvalue { i32, %"compiler/cond:Value" } zeroinitializer, %"compiler/cond:Value" %t139, 1
  store { i32, %"compiler/cond:Value" } %t140, ptr %rv
  br label %ret
bb39:
  %t141 = getelementptr %"compiler/cond:Value", ptr %l2, i32 0, i32 4
  %t142 = load i64, ptr %t141, !tbaa !24
  %t143 = getelementptr %"compiler/cond:Value", ptr %l2, i32 0, i32 5
  %t144 = load i1, ptr %t143, !tbaa !21
  %t145 = load i64, ptr @G_2ecompiler_2fcond_2eLiteralIntBits, !tbaa !24
  %t149 = call i1 @compiler_2fcond_2eflows(i64 %t142, i1 %t144, i64 %t145, i1 false)
  store i1 %t149, ptr %l65
  br label %bb40
bb40:
  %t150 = load i1, ptr %l65, !tbaa !21
  %t151 = xor i1 %t150, true
  br i1 %t151, label %bb41, label %bb42
bb41:
  %t153 = getelementptr %"compiler/cond:Value", ptr %l2, i32 0, i32 4
  %t154 = load i64, ptr %t153, !tbaa !24
  %t155 = load i64, ptr @G_2ecompiler_2fcond_2eLiteralIntBits, !tbaa !24
  %t158 = icmp eq i64 %t154, %t155
  br i1 %t158, label %bb43, label %bb44
bb42:
  store i1 false, ptr %l67, !tbaa !21
  br label %bb46
bb43:
  %t160 = getelementptr %"compiler/cond:Value", ptr %l2, i32 0, i32 5
  %t161 = load i1, ptr %t160, !tbaa !21
  %t163 = xor i1 %t161, true
  store i1 %t163, ptr %l71, !tbaa !21
  br label %bb45
bb44:
  store i1 false, ptr %l71, !tbaa !21
  br label %bb45
bb45:
  %t165 = load i1, ptr %l71, !tbaa !21
  %t166 = xor i1 %t165, true
  store i1 %t166, ptr %l67, !tbaa !21
  br label %bb46
bb46:
  %t168 = load i1, ptr %l67, !tbaa !21
  br i1 %t168, label %bb47, label %bb48
bb47:
  %t170 = insertvalue { i32, %"compiler/cond:Value" } zeroinitializer, i32 65536, 0
  store { i32, %"compiler/cond:Value" } %t170, ptr %rv
  br label %ret
bb48:
  br label %bb49
bb49:
  %t171 = load i64, ptr @G_2ecompiler_2fcond_2eLiteralIntBits, !tbaa !24
  %t174 = call %"compiler/cond:Value" @compiler_2fcond_2eValue_2eshape(i32 2, i64 %t171, i1 false)
  store %"compiler/cond:Value" %t174, ptr %l78
  br label %bb50
bb50:
  %t175 = load %"compiler/cond:Value", ptr %l78
  %t176 = insertvalue { i32, %"compiler/cond:Value" } zeroinitializer, %"compiler/cond:Value" %t175, 1
  store { i32, %"compiler/cond:Value" } %t176, ptr %rv
  br label %ret
bb51:
  %t178 = call %"compiler/cond:Value" @compiler_2fcond_2eValue_2eshape(i32 2, i64 0, i1 false)
  store %"compiler/cond:Value" %t178, ptr %l80
  br label %bb52
bb52:
  %t179 = load %"compiler/cond:Value", ptr %l80
  %t180 = insertvalue { i32, %"compiler/cond:Value" } zeroinitializer, %"compiler/cond:Value" %t179, 1
  store { i32, %"compiler/cond:Value" } %t180, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"compiler/cond:Value" }, ptr %rv
  ret { i32, %"compiler/cond:Value" } %rr
}

define dso_local i1 @compiler_2fcond_2enumeric(%"compiler/cond:Value" %a0) #0 {
entry:
  %l0 = alloca %"compiler/cond:Value"
  %l3 = alloca i1
  %rv = alloca i1
  store %"compiler/cond:Value" %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/cond:Value", ptr %l0, i32 0, i32 0
  %t2 = load i32, ptr %t1, !range !{i32 0, i32 5}
  %t4 = trunc i64 2 to i32
  %t5 = icmp eq i32 %t2, %t4
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb3
bb2:
  %t7 = getelementptr %"compiler/cond:Value", ptr %l0, i32 0, i32 0
  %t8 = load i32, ptr %t7, !range !{i32 0, i32 5}
  %t10 = trunc i64 3 to i32
  %t11 = icmp eq i32 %t8, %t10
  store i1 %t11, ptr %l3, !tbaa !21
  br label %bb3
bb3:
  %t13 = load i1, ptr %l3, !tbaa !21
  store i1 %t13, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fcond_2estripped(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/text:StringBuilder"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i8
  %l6 = alloca %"std/prelude/text:StringBuilder"
  %l14 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
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
  %t9 = load i64, ptr %l3, !tbaa !24
  %t10 = load i64, ptr %l4, !tbaa !24
  %t13 = icmp slt i64 %t9, %t10
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb3, label %bb4
bb3:
  br label %bb11
bb4:
  br label %bb5
bb5:
  %t17 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t17, ptr %l14, !tbaa !27
  %t18 = load i64, ptr %l3, !tbaa !24
  %t20 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr i8, ptr %t21, i64 %t18
  %t23 = load i8, ptr %t22, !tbaa !32
  store i8 %t23, ptr %l5, !tbaa !22
  %t25 = load i8, ptr %l5, !tbaa !22
  %t27 = icmp ne i8 %t25, 95
  br i1 %t27, label %bb6, label %bb7
bb6:
  %t29 = load i8, ptr %l5, !tbaa !22
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 %t29)
  br label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t32 = load i64, ptr %l3, !tbaa !24
  %t34 = add i64 %t32, 1
  store i64 %t34, ptr %l3, !tbaa !24
  br label %bb2
bb11:
  %t37 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l1)
  store { i64, ptr } %t37, ptr %l24
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s0)
  %t38 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t38, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fcond_3aConsts_2ector(ptr %out, ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca i64
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca i64
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca i64
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca i64
  %l22 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l24 = alloca i64
  %l26 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l28 = alloca i64
  %l30 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l32 = alloca %"compiler/cond:Consts"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = ptrtoint ptr %v0 to i64
  store i64 %t1, ptr %l7, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fcond_3aConsts_2e0
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v0)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l7, !tbaa !24
  br label %bb2
bb2:
  %t6 = load i64, ptr %l7
  %t7 = inttoptr i64 %t6 to ptr
  %t8 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t7, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %l9
  br label %bb3
bb3:
  %t9 = load i1, ptr @olang_2esole_2ecompiler_2fcond_3aConsts_2e0
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t11 = load i64, ptr %l7
  %t12 = inttoptr i64 %t11 to ptr
  %t13 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9, i32 0, i32 0
  %t14 = load { i64, ptr }, ptr %t13
  %t15 = extractvalue { i64, ptr } %t14, 1
  %t16 = call ptr @__olang_region_or(ptr %t15, ptr null)
  %t17 = icmp ne ptr %t16, null
  %t18 = select i1 %t17, ptr %t16, ptr null
  %t19 = icmp eq ptr %t18, %t12
  call void @__olang_region_settle(ptr %t12, i1 %t19)
  br label %bb5
bb5:
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %l0
  %t21 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcond_3aValue_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t21, ptr %l11
  br label %bb6
bb6:
  %t22 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t22, ptr %l1
  %t23 = ptrtoint ptr %v0 to i64
  store i64 %t23, ptr %l12, !tbaa !24
  %t24 = load i1, ptr @olang_2esole_2ecompiler_2fcond_3aConsts_2e2
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t26 = call ptr @__olang_region_make(ptr %v0)
  %t27 = ptrtoint ptr %t26 to i64
  store i64 %t27, ptr %l12, !tbaa !24
  br label %bb8
bb8:
  %t28 = load i64, ptr %l12
  %t29 = inttoptr i64 %t28 to ptr
  %t30 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t29, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t30, ptr %l14
  br label %bb9
bb9:
  %t31 = load i1, ptr @olang_2esole_2ecompiler_2fcond_3aConsts_2e2
  br i1 %t31, label %bb10, label %bb11
bb10:
  %t33 = load i64, ptr %l12
  %t34 = inttoptr i64 %t33 to ptr
  %t35 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14, i32 0, i32 0
  %t36 = load { i64, ptr }, ptr %t35
  %t37 = extractvalue { i64, ptr } %t36, 1
  %t38 = call ptr @__olang_region_or(ptr %t37, ptr null)
  %t39 = icmp ne ptr %t38, null
  %t40 = select i1 %t39, ptr %t38, ptr null
  %t41 = icmp eq ptr %t40, %t34
  call void @__olang_region_settle(ptr %t34, i1 %t41)
  br label %bb11
bb11:
  %t42 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t42, ptr %l2
  %t43 = ptrtoint ptr %v0 to i64
  store i64 %t43, ptr %l16, !tbaa !24
  %t44 = load i1, ptr @olang_2esole_2ecompiler_2fcond_3aConsts_2e3
  br i1 %t44, label %bb12, label %bb13
bb12:
  %t46 = call ptr @__olang_region_make(ptr %v0)
  %t47 = ptrtoint ptr %t46 to i64
  store i64 %t47, ptr %l16, !tbaa !24
  br label %bb13
bb13:
  %t48 = load i64, ptr %l16
  %t49 = inttoptr i64 %t48 to ptr
  %t50 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t49, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t50, ptr %l18
  br label %bb14
bb14:
  %t51 = load i1, ptr @olang_2esole_2ecompiler_2fcond_3aConsts_2e3
  br i1 %t51, label %bb15, label %bb16
bb15:
  %t53 = load i64, ptr %l16
  %t54 = inttoptr i64 %t53 to ptr
  %t55 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18, i32 0, i32 0
  %t56 = load { i64, ptr }, ptr %t55
  %t57 = extractvalue { i64, ptr } %t56, 1
  %t58 = call ptr @__olang_region_or(ptr %t57, ptr null)
  %t59 = icmp ne ptr %t58, null
  %t60 = select i1 %t59, ptr %t58, ptr null
  %t61 = icmp eq ptr %t60, %t54
  call void @__olang_region_settle(ptr %t54, i1 %t61)
  br label %bb16
bb16:
  %t62 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t62, ptr %l3
  %t63 = ptrtoint ptr %v0 to i64
  store i64 %t63, ptr %l20, !tbaa !24
  %t64 = load i1, ptr @olang_2esole_2ecompiler_2fcond_3aConsts_2e4
  br i1 %t64, label %bb17, label %bb18
bb17:
  %t66 = call ptr @__olang_region_make(ptr %v0)
  %t67 = ptrtoint ptr %t66 to i64
  store i64 %t67, ptr %l20, !tbaa !24
  br label %bb18
bb18:
  %t68 = load i64, ptr %l20
  %t69 = inttoptr i64 %t68 to ptr
  %t70 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t69, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t70, ptr %l22
  br label %bb19
bb19:
  %t71 = load i1, ptr @olang_2esole_2ecompiler_2fcond_3aConsts_2e4
  br i1 %t71, label %bb20, label %bb21
bb20:
  %t73 = load i64, ptr %l20
  %t74 = inttoptr i64 %t73 to ptr
  %t75 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l22, i32 0, i32 0
  %t76 = load { i64, ptr }, ptr %t75
  %t77 = extractvalue { i64, ptr } %t76, 1
  %t78 = call ptr @__olang_region_or(ptr %t77, ptr null)
  %t79 = icmp ne ptr %t78, null
  %t80 = select i1 %t79, ptr %t78, ptr null
  %t81 = icmp eq ptr %t80, %t74
  call void @__olang_region_settle(ptr %t74, i1 %t81)
  br label %bb21
bb21:
  %t82 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l22
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t82, ptr %l4
  %t83 = ptrtoint ptr %v0 to i64
  store i64 %t83, ptr %l24, !tbaa !24
  %t84 = load i1, ptr @olang_2esole_2ecompiler_2fcond_3aConsts_2e5
  br i1 %t84, label %bb22, label %bb23
bb22:
  %t86 = call ptr @__olang_region_make(ptr %v0)
  %t87 = ptrtoint ptr %t86 to i64
  store i64 %t87, ptr %l24, !tbaa !24
  br label %bb23
bb23:
  %t88 = load i64, ptr %l24
  %t89 = inttoptr i64 %t88 to ptr
  %t90 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t89, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t90, ptr %l26
  br label %bb24
bb24:
  %t91 = load i1, ptr @olang_2esole_2ecompiler_2fcond_3aConsts_2e5
  br i1 %t91, label %bb25, label %bb26
bb25:
  %t93 = load i64, ptr %l24
  %t94 = inttoptr i64 %t93 to ptr
  %t95 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l26, i32 0, i32 0
  %t96 = load { i64, ptr }, ptr %t95
  %t97 = extractvalue { i64, ptr } %t96, 1
  %t98 = call ptr @__olang_region_or(ptr %t97, ptr null)
  %t99 = icmp ne ptr %t98, null
  %t100 = select i1 %t99, ptr %t98, ptr null
  %t101 = icmp eq ptr %t100, %t94
  call void @__olang_region_settle(ptr %t94, i1 %t101)
  br label %bb26
bb26:
  %t102 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l26
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t102, ptr %l5
  %t103 = ptrtoint ptr %v0 to i64
  store i64 %t103, ptr %l28, !tbaa !24
  %t104 = load i1, ptr @olang_2esole_2ecompiler_2fcond_3aConsts_2e6
  br i1 %t104, label %bb27, label %bb28
bb27:
  %t106 = call ptr @__olang_region_make(ptr %v0)
  %t107 = ptrtoint ptr %t106 to i64
  store i64 %t107, ptr %l28, !tbaa !24
  br label %bb28
bb28:
  %t108 = load i64, ptr %l28
  %t109 = inttoptr i64 %t108 to ptr
  %t110 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t109, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t110, ptr %l30
  br label %bb29
bb29:
  %t111 = load i1, ptr @olang_2esole_2ecompiler_2fcond_3aConsts_2e6
  br i1 %t111, label %bb30, label %bb31
bb30:
  %t113 = load i64, ptr %l28
  %t114 = inttoptr i64 %t113 to ptr
  %t115 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l30, i32 0, i32 0
  %t116 = load { i64, ptr }, ptr %t115
  %t117 = extractvalue { i64, ptr } %t116, 1
  %t118 = call ptr @__olang_region_or(ptr %t117, ptr null)
  %t119 = icmp ne ptr %t118, null
  %t120 = select i1 %t119, ptr %t118, ptr null
  %t121 = icmp eq ptr %t120, %t114
  call void @__olang_region_settle(ptr %t114, i1 %t121)
  br label %bb31
bb31:
  %t122 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l30
  %t123 = getelementptr %"compiler/cond:Consts", ptr %l32, i32 0, i32 0
  %t124 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t124, ptr %t123
  %t125 = getelementptr %"compiler/cond:Consts", ptr %l32, i32 0, i32 1
  %t126 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t126, ptr %t125
  %t127 = getelementptr %"compiler/cond:Consts", ptr %l32, i32 0, i32 2
  %t128 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t128, ptr %t127
  %t129 = getelementptr %"compiler/cond:Consts", ptr %l32, i32 0, i32 3
  %t130 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t130, ptr %t129
  %t131 = getelementptr %"compiler/cond:Consts", ptr %l32, i32 0, i32 4
  %t132 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t132, ptr %t131
  %t133 = getelementptr %"compiler/cond:Consts", ptr %l32, i32 0, i32 5
  %t134 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t134, ptr %t133
  %t135 = getelementptr %"compiler/cond:Consts", ptr %l32, i32 0, i32 6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t122, ptr %t135
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l32, i64 224, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/cond:Decision" @compiler_2fcond_3aDecision_2ector(ptr %v0, i32 %a0, i1 %a1) #0 {
entry:
  %rv = alloca %"compiler/cond:Decision"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"compiler/cond:Decision" undef, i32 %a0, 0
  %t8 = insertvalue %"compiler/cond:Decision" %t6, i1 %a1, 1
  store %"compiler/cond:Decision" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/cond:Decision", ptr %rv
  ret %"compiler/cond:Decision" %rr
}

define dso_local void @compiler_2fcond_3aEval_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, ptr %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l4 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i1
  %l9 = alloca i1
  %l10 = alloca i1
  %l11 = alloca %"compiler/source:Span"
  %l12 = alloca %"compiler/diagmsg:Msg"
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i1
  %l21 = alloca %"compiler/source:Span"
  %l22 = alloca %"compiler/diagmsg:Msg"
  %l23 = alloca i64
  %l25 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l27 = alloca %"compiler/cond:Eval"
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a0, ptr %l4, !tbaa !27
  store ptr %a1, ptr %l5, !tbaa !29
  store ptr %a2, ptr %l6, !tbaa !29
  store ptr %a3, ptr %l7, !tbaa !29
  store i1 false, ptr %l8, !tbaa !21
  store i1 false, ptr %l9, !tbaa !21
  store i1 false, ptr %l10, !tbaa !21
  %t9 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v4, i32 0, i32 0)
  store %"compiler/source:Span" %t9, ptr %l21
  br label %bb1
bb1:
  %t10 = load %"compiler/source:Span", ptr %l21
  store %"compiler/source:Span" %t10, ptr %l11
  %t11 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondNotBool(ptr %v4, ptr %v4, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d47, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t11, ptr %l22
  br label %bb2
bb2:
  %t12 = load %"compiler/diagmsg:Msg", ptr %l22
  store %"compiler/diagmsg:Msg" %t12, ptr %l12
  store i64 0, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  store i1 false, ptr %l15, !tbaa !21
  %t13 = ptrtoint ptr %v4 to i64
  store i64 %t13, ptr %l23, !tbaa !24
  %t14 = load i1, ptr @olang_2esole_2ecompiler_2fcond_3aEval_2e12
  br i1 %t14, label %bb3, label %bb4
bb3:
  %t16 = call ptr @__olang_region_make(ptr %v4)
  %t17 = ptrtoint ptr %t16 to i64
  store i64 %t17, ptr %l23, !tbaa !24
  br label %bb4
bb4:
  %t18 = load i64, ptr %l23
  %t19 = inttoptr i64 %t18 to ptr
  %t20 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t19, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %l25
  br label %bb5
bb5:
  %t21 = load i1, ptr @olang_2esole_2ecompiler_2fcond_3aEval_2e12
  br i1 %t21, label %bb6, label %bb7
bb6:
  %t23 = load i64, ptr %l23
  %t24 = inttoptr i64 %t23 to ptr
  %t25 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l25, i32 0, i32 0
  %t26 = load { i64, ptr }, ptr %t25
  %t27 = extractvalue { i64, ptr } %t26, 1
  %t28 = call ptr @__olang_region_or(ptr %t27, ptr null)
  %t29 = icmp ne ptr %t28, null
  %t30 = select i1 %t29, ptr %t28, ptr null
  %t31 = icmp eq ptr %t30, %t24
  call void @__olang_region_settle(ptr %t24, i1 %t31)
  br label %bb7
bb7:
  %t32 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l25
  %t33 = getelementptr %"compiler/cond:Eval", ptr %l27, i32 0, i32 0
  %t34 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t34, ptr %t33, !tbaa !27
  %t35 = getelementptr %"compiler/cond:Eval", ptr %l27, i32 0, i32 1
  %t36 = load ptr, ptr %l5, !tbaa !29
  store ptr %t36, ptr %t35, !tbaa !29
  %t37 = getelementptr %"compiler/cond:Eval", ptr %l27, i32 0, i32 2
  %t38 = load ptr, ptr %l6, !tbaa !29
  store ptr %t38, ptr %t37, !tbaa !29
  %t39 = getelementptr %"compiler/cond:Eval", ptr %l27, i32 0, i32 3
  %t40 = load ptr, ptr %l7, !tbaa !29
  store ptr %t40, ptr %t39, !tbaa !29
  %t41 = getelementptr %"compiler/cond:Eval", ptr %l27, i32 0, i32 4
  %t42 = load i1, ptr %l8, !tbaa !21
  store i1 %t42, ptr %t41, !tbaa !21
  %t43 = getelementptr %"compiler/cond:Eval", ptr %l27, i32 0, i32 5
  %t44 = load i1, ptr %l9, !tbaa !21
  store i1 %t44, ptr %t43, !tbaa !21
  %t45 = getelementptr %"compiler/cond:Eval", ptr %l27, i32 0, i32 6
  %t46 = load i1, ptr %l10, !tbaa !21
  store i1 %t46, ptr %t45, !tbaa !21
  %t47 = getelementptr %"compiler/cond:Eval", ptr %l27, i32 0, i32 7
  %t48 = load %"compiler/source:Span", ptr %l11
  store %"compiler/source:Span" %t48, ptr %t47
  %t49 = getelementptr %"compiler/cond:Eval", ptr %l27, i32 0, i32 8
  %t50 = load %"compiler/diagmsg:Msg", ptr %l12
  store %"compiler/diagmsg:Msg" %t50, ptr %t49
  %t51 = getelementptr %"compiler/cond:Eval", ptr %l27, i32 0, i32 9
  %t52 = load i64, ptr %l13, !tbaa !24
  store i64 %t52, ptr %t51, !tbaa !24
  %t53 = getelementptr %"compiler/cond:Eval", ptr %l27, i32 0, i32 10
  %t54 = load i64, ptr %l14, !tbaa !24
  store i64 %t54, ptr %t53, !tbaa !24
  %t55 = getelementptr %"compiler/cond:Eval", ptr %l27, i32 0, i32 11
  %t56 = load i1, ptr %l15, !tbaa !21
  store i1 %t56, ptr %t55, !tbaa !21
  %t57 = getelementptr %"compiler/cond:Eval", ptr %l27, i32 0, i32 12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t32, ptr %t57
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l27, i64 152, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/cond:Global" @compiler_2fcond_3aGlobal_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, %"compiler/source:Span" %a1, i1 %a2, { i64, ptr } %a3, ptr %a4, i1 %a5) #0 {
entry:
  %rv = alloca %"compiler/cond:Global"
  br label %start
start:
  br label %bb0
bb0:
  %t14 = insertvalue %"compiler/cond:Global" undef, { i64, ptr } %a0, 0
  %t16 = insertvalue %"compiler/cond:Global" %t14, %"compiler/source:Span" %a1, 1
  %t18 = insertvalue %"compiler/cond:Global" %t16, i1 %a2, 2
  %t20 = insertvalue %"compiler/cond:Global" %t18, { i64, ptr } %a3, 3
  %t22 = insertvalue %"compiler/cond:Global" %t20, ptr %a4, 4
  %t24 = insertvalue %"compiler/cond:Global" %t22, i1 %a5, 5
  store %"compiler/cond:Global" %t24, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/cond:Global", ptr %rv
  ret %"compiler/cond:Global" %rr
}

define dso_local %"compiler/cond:Scope" @compiler_2fcond_3aScope_2ector(ptr %v0, i1 %a0) #0 {
entry:
  %l1 = alloca i1
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca i64
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca i64
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/cond:Scope"
  br label %start
start:
  br label %bb0
bb0:
  store i1 %a0, ptr %l1, !tbaa !21
  %t3 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcond_3aGlobal_26_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %l6
  br label %bb1
bb1:
  %t4 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l2
  %t5 = ptrtoint ptr %v0 to i64
  store i64 %t5, ptr %l7, !tbaa !24
  %t6 = load i1, ptr @olang_2esole_2ecompiler_2fcond_3aScope_2e2
  br i1 %t6, label %bb2, label %bb3
bb2:
  %t8 = call ptr @__olang_region_make(ptr %v0)
  %t9 = ptrtoint ptr %t8 to i64
  store i64 %t9, ptr %l7, !tbaa !24
  br label %bb3
bb3:
  %t10 = load i64, ptr %l7
  %t11 = inttoptr i64 %t10 to ptr
  %t12 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %t11, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t12, ptr %l9
  br label %bb4
bb4:
  %t13 = load i1, ptr @olang_2esole_2ecompiler_2fcond_3aScope_2e2
  br i1 %t13, label %bb5, label %bb6
bb5:
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
  br label %bb6
bb6:
  %t24 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t24, ptr %l3
  %t25 = ptrtoint ptr %v0 to i64
  store i64 %t25, ptr %l11, !tbaa !24
  %t26 = load i1, ptr @olang_2esole_2ecompiler_2fcond_3aScope_2e3
  br i1 %t26, label %bb7, label %bb8
bb7:
  %t28 = call ptr @__olang_region_make(ptr %v0)
  %t29 = ptrtoint ptr %t28 to i64
  store i64 %t29, ptr %l11, !tbaa !24
  br label %bb8
bb8:
  %t30 = load i64, ptr %l11
  %t31 = inttoptr i64 %t30 to ptr
  %t32 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %t31, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t32, ptr %l13
  br label %bb9
bb9:
  %t33 = load i1, ptr @olang_2esole_2ecompiler_2fcond_3aScope_2e3
  br i1 %t33, label %bb10, label %bb11
bb10:
  %t35 = load i64, ptr %l11
  %t36 = inttoptr i64 %t35 to ptr
  %t37 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13, i32 0, i32 0
  %t38 = load { i64, ptr }, ptr %t37
  %t39 = extractvalue { i64, ptr } %t38, 1
  %t40 = call ptr @__olang_region_or(ptr %t39, ptr null)
  %t41 = icmp ne ptr %t40, null
  %t42 = select i1 %t41, ptr %t40, ptr null
  %t43 = icmp eq ptr %t42, %t36
  call void @__olang_region_settle(ptr %t36, i1 %t43)
  br label %bb11
bb11:
  %t44 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  %t45 = load i1, ptr %l1, !tbaa !21
  %t46 = insertvalue %"compiler/cond:Scope" undef, i1 %t45, 0
  %t47 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  %t48 = insertvalue %"compiler/cond:Scope" %t46, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t47, 1
  %t49 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t50 = insertvalue %"compiler/cond:Scope" %t48, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t49, 2
  %t52 = insertvalue %"compiler/cond:Scope" %t50, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t44, 3
  store %"compiler/cond:Scope" %t52, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/cond:Scope", ptr %rv
  ret %"compiler/cond:Scope" %rr
}

define dso_local %"compiler/cond:Value" @compiler_2fcond_3aValue_2ector(ptr %v0, i32 %a0, i64 %a1, double %a2, i64 %a3, i64 %a4, i1 %a5, i1 %a6) #0 {
entry:
  %rv = alloca %"compiler/cond:Value"
  br label %start
start:
  br label %bb0
bb0:
  %t16 = insertvalue %"compiler/cond:Value" undef, i32 %a0, 0
  %t18 = insertvalue %"compiler/cond:Value" %t16, i64 %a1, 1
  %t20 = insertvalue %"compiler/cond:Value" %t18, double %a2, 2
  %t22 = insertvalue %"compiler/cond:Value" %t20, i64 %a3, 3
  %t24 = insertvalue %"compiler/cond:Value" %t22, i64 %a4, 4
  %t26 = insertvalue %"compiler/cond:Value" %t24, i1 %a5, 5
  %t28 = insertvalue %"compiler/cond:Value" %t26, i1 %a6, 6
  store %"compiler/cond:Value" %t28, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/cond:Value", ptr %rv
  ret %"compiler/cond:Value" %rr
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
@.d0 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"I8" }>, align 8
@.d1 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I16" }>, align 8
@.d2 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I32" }>, align 8
@.d3 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
@.d4 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"U8" }>, align 8
@.d5 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"U16" }>, align 8
@.d6 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"U32" }>, align 8
@.d7 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"U64" }>, align 8
@.d8 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"F16" }>, align 8
@.d9 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"BF16" }>, align 8
@.d10 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"F32" }>, align 8
@.d11 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"F64" }>, align 8
@.d12 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Bool" }>, align 8
@.d13 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"String" }>, align 8
declare void @__olang_check_failed(ptr) cold noreturn
@.d14 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d15 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"TargetOs" }>, align 8
@.d16 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d17 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"TargetArch" }>, align 8
@.d18 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d19 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"TargetCpu" }>, align 8
@.d20 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"TargetVectorBits" }>, align 8
@.d21 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"TargetHasFma" }>, align 8
@.d22 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"DebugBuild" }>, align 8
@.d23 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"RaceBuild" }>, align 8
@.d24 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"TestBuild" }>, align 8
@.d25 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare void @__olang_sb_put(ptr, ptr, i64)
@.d26 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"=" }>, align 8
define linkonce_odr void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2fcond_3aValue(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d48, i32 0, i32 1) }, 1
  %t2 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d48, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t1, i64 %t2)
  %t3 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d49, i32 0, i32 1) }, 1
  %t4 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d49, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t3, i64 %t4)
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/cond:Value", ptr %t5, i32 0, i32 0
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2fcond_3aValueKind(ptr %v0, ptr %t6, i64 %a1)
  br label %bb1
bb1:
  %t9 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d50, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d50, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t9, i64 %t10)
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/cond:Value", ptr %t11, i32 0, i32 1
  %t13 = load i64, ptr %t12, !tbaa !24
  %t15 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t16 = call i64 @__olang_fmt_i64(ptr %t15, i64 %t13)
  call void @__olang_sb_add(ptr %v0, i64 %t16)
  %t17 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d50, i32 0, i32 1) }, 1
  %t18 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d50, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t17, i64 %t18)
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/cond:Value", ptr %t19, i32 0, i32 2
  %t21 = load double, ptr %t20, !tbaa !26
  %t23 = call ptr @__olang_sb_room(ptr %v0, i64 48)
  %t24 = call i64 @__olang_fmt_float(ptr %t23, i64 48, double %t21, i32 0)
  call void @__olang_sb_add(ptr %v0, i64 %t24)
  %t25 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d50, i32 0, i32 1) }, 1
  %t26 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d50, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t25, i64 %t26)
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/cond:Value", ptr %t27, i32 0, i32 3
  %t29 = load i64, ptr %t28, !tbaa !24
  %t31 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t32 = call i64 @__olang_fmt_i64(ptr %t31, i64 %t29)
  call void @__olang_sb_add(ptr %v0, i64 %t32)
  %t33 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d50, i32 0, i32 1) }, 1
  %t34 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d50, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t33, i64 %t34)
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/cond:Value", ptr %t35, i32 0, i32 4
  %t37 = load i64, ptr %t36, !tbaa !24
  %t39 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t40 = call i64 @__olang_fmt_i64(ptr %t39, i64 %t37)
  call void @__olang_sb_add(ptr %v0, i64 %t40)
  %t41 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d50, i32 0, i32 1) }, 1
  %t42 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d50, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t41, i64 %t42)
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/cond:Value", ptr %t43, i32 0, i32 5
  %t45 = load i1, ptr %t44, !tbaa !21
  %t47 = select i1 %t45, ptr @.c28, ptr @.c29
  %t48 = select i1 %t45, i64 4, i64 5
  call void @__olang_sb_put(ptr %v0, ptr %t47, i64 %t48)
  %t49 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d50, i32 0, i32 1) }, 1
  %t50 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d50, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t49, i64 %t50)
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/cond:Value", ptr %t51, i32 0, i32 6
  %t53 = load i1, ptr %t52, !tbaa !21
  %t55 = select i1 %t53, ptr @.c28, ptr @.c29
  %t56 = select i1 %t53, i64 4, i64 5
  call void @__olang_sb_put(ptr %v0, ptr %t55, i64 %t56)
  %t57 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d51, i32 0, i32 1) }, 1
  %t58 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d51, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t57, i64 %t58)
  br label %ret
ret:
  ret void
}

@.d27 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.c28 = private unnamed_addr constant [5 x i8] c"true\00"
@.c29 = private unnamed_addr constant [6 x i8] c"false\00"
@.d30 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
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
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@.d31 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Bool" }>, align 8
@.d32 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"String" }>, align 8
@.d33 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I32" }>, align 8
@.d34 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
@.d35 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"U64" }>, align 8
@.d36 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"F64" }>, align 8
@.d37 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d38 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d39 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"true" }>, align 8
@.d40 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"false" }>, align 8
@.d41 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"true" }>, align 8
@.d42 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e1 = weak hidden constant i1 false
declare void @__olang_region_release(ptr) noinline
@olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2 = weak hidden constant i1 false
@.d43 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d44 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fcond_3aValueKind(ptr %a0, ptr %a1) #0 {
entry:
  %l2 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store i1 true, ptr %l2, !tbaa !21
  %t2 = load i32, ptr %a0, !range !{i32 0, i32 5}
  %t3 = sext i32 %t2 to i64
  %t5 = load i32, ptr %a1, !range !{i32 0, i32 5}
  %t6 = sext i32 %t5 to i64
  %t9 = icmp eq i64 %t3, %t6
  br i1 %t9, label %bb2, label %bb1
bb1:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb3
bb2:
  br label %bb3
bb3:
  %t11 = load i1, ptr %l2, !tbaa !21
  store i1 %t11, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@.d45 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"true" }>, align 8
@.d46 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"=!<>+-*/%" }>, align 8
@olang_2esole_2ecompiler_2fcond_3aConsts_2e0 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
@olang_2esole_2ecompiler_2fcond_3aConsts_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcond_3aConsts_2e3 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcond_3aConsts_2e4 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcond_3aConsts_2e5 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcond_3aConsts_2e6 = weak hidden constant i1 false
@.d47 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fcond_3aEval_2e12 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcond_3aScope_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcond_3aScope_2e3 = weak hidden constant i1 false
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
@.d48 = private unnamed_addr constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"cond.Value" }>, align 8
@.d49 = private unnamed_addr constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
define linkonce_odr void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2fcond_3aValueKind(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l1 = alloca i64
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load i32, ptr %a0, !range !{i32 0, i32 5}
  %t3 = sext i32 %t2 to i64
  switch i64 %t3, label %bb1 [ i64 0, label %bb2 i64 1, label %bb3 i64 2, label %bb4 i64 3, label %bb5 i64 4, label %bb6 ]
bb1:
  br label %ret
bb2:
  %t5 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d52, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d52, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t5, i64 %t6)
  br label %bb1
bb3:
  %t7 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d53, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d53, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t7, i64 %t8)
  br label %bb1
bb4:
  %t9 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d54, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d54, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t9, i64 %t10)
  br label %bb1
bb5:
  %t11 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d55, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d55, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t11, i64 %t12)
  br label %bb1
bb6:
  %t13 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d56, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d56, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t13, i64 %t14)
  br label %bb1
ret:
  ret void
}

@.d50 = private unnamed_addr constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
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
declare i64 @__olang_fmt_i64(ptr, i64)
declare void @__olang_sb_add(ptr, i64)
declare i64 @__olang_fmt_float(ptr, i64, double, i32)
@.d51 = private unnamed_addr constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
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
@.d52 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"cond.ValueKind.None" }>, align 8
@.d53 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"cond.ValueKind.Bool" }>, align 8
@.d54 = private unnamed_addr constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"cond.ValueKind.Int" }>, align 8
@.d55 = private unnamed_addr constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"cond.ValueKind.Float" }>, align 8
@.d56 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"cond.ValueKind.Text" }>, align 8
declare ptr @__olang_sb_grow(ptr, i64) noinline
declare noalias ptr @__olang_scope_alloc_slow(ptr, i64, i64) noinline
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
@olang_loc_a57e25c843e3c84f_6f669dc60e0f5ddb = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v0, { i64, ptr } %a0, i8 %a1)
@olang_loc_2f3f750ce3a7cf22_a8bd497d0b471fc6 = external constant [0 x i8]
@olang_loc_4bc53af292f25c9f_867e818f05a97a3 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDefineShape(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDefineNotName(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDefineTwice(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDefineBuiltin(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDefineBadNumber(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDefineIntRange(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDefineNegRange(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDefineFloatRange(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare %"compiler/cond:Value" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcond_3aValue_3e_2eAt_3ccompiler_2fcond_3aValue_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_1b6b73656135f28c_5e0b436694761b68 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcond_3aValue_3e_2ePush_3ccompiler_2fcond_3aValue_3e(ptr %v0, ptr %a0, %"compiler/cond:Value" %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %a0, i1 %a1)
@olang_loc_4ddddffe7822a0c2_24314aefc1643326 = external constant [0 x i8]
@olang_loc_e3c5df648a43e2bf_f2e642f3433cb83 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_Haae4fbc3ba15583a49040d883d2248d1(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
@olang_loc_5ac00ef93c3b70de_d182aac4a1481962 = external constant [0 x i8]
@olang_loc_b6b1b2abf04569db_4e32416677f050df = external constant [0 x i8]
declare %"compiler/scan:Tokens" @compiler_2fscan_2eTokens_2eScan(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, double } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseFloat(ptr %v0, { i64, ptr } %a0)
declare { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %v0, i64 %a0)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseUint(ptr %v0, { i64, ptr } %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondNotBool(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondTypes(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondNoMeet(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_a5b50ffc6e80595c_88be7d164d57caa8 = external constant [0 x i8]
@olang_loc_274101562a710104_e9b847c59a86b198 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %a0)
@olang_loc_5546f0ea7c9d5f01_1e107de9ea891e15 = external constant [0 x i8]
@olang_loc_82ba276e77283333_2c83aa9106e5aedf = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondName(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_4f7f4596ea7a5dcf_15046327e746a0a3 = external constant [0 x i8]
@olang_loc_c6445e8eb561a5e0_a28b098f67507e74 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondCycle(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondMutable(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondGlobalInit(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eAt_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_f112bf10a44ab894_cc7246c1c5f7ae68 = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
declare { i64, ptr } @compiler_2fscan_2eLiteralText(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_f4ea2c1e339850b2_91ab7669be26b6c6 = external constant [0 x i8]
@olang_loc_b9c07b13268e7f30_2a98a88387235e7c = external constant [0 x i8]
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_a2ac67dda58979b2_83eb4d620334066e = external constant [0 x i8]
declare { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %a0)
@olang_loc_eb7ac349c2b76455_935b96b70fca2c61 = external constant [0 x i8]
declare i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcond_3aGlobal_26_3e_2eLen_3ccompiler_2fcond_3aGlobal_26_3e(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcond_3aGlobal_26_3e_2eAt_3ccompiler_2fcond_3aGlobal_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcond_3aGlobal_26_3e_2ePush_3ccompiler_2fcond_3aGlobal_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2ftoken_2eTok_2eKeyword(ptr %v0, { i64, ptr } %a0, i64 %a1, i64 %a2)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcond_3aValue_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcond_3aGlobal_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %v0, i64 %a0)

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
