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
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/msgs:Nearest" = type { { i64, ptr }, { i64, ptr }, i64 }
define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnyCaseTwice(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 191, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } %a0, 1
  %t9 = extractvalue { i64, ptr } %a0, 0
  %t10 = extractvalue { i64, ptr } { i64 60, ptr getelementptr inbounds (<{ i64, [60 x i8] }>, ptr @.d0, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 60, ptr getelementptr inbounds (<{ i64, [60 x i8] }>, ptr @.d0, i32 0, i32 1) }, 0
  %t12 = add i64 %t9, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t8, i64 %t9)
  %t16 = getelementptr i8, ptr %t15, i64 %t9
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d1, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnyMethodObligations(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca i64
  %l11 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 186, ptr %l3
  %t1 = ptrtoint ptr %v3 to i64
  store i64 %t1, ptr %l4, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v3)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t13 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  %t14 = add i64 %t11, %t13
  %t16 = extractvalue { i64, ptr } %a1, 1
  %t17 = extractvalue { i64, ptr } %a1, 0
  %t18 = add i64 %t14, %t17
  %t19 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t21 = add i64 %t18, %t20
  %t23 = extractvalue { i64, ptr } %a2, 1
  %t24 = extractvalue { i64, ptr } %a2, 0
  %t25 = add i64 %t21, %t24
  %t26 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t27 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t28 = add i64 %t25, %t27
  %t29 = load i64, ptr %l4
  %t30 = inttoptr i64 %t29 to ptr
  %t31 = call ptr @__olang_scope_alloc(ptr %t30, i64 %t28)
  call void @olang_textcopy(ptr %t31, ptr %t10, i64 %t11)
  %t32 = getelementptr i8, ptr %t31, i64 %t11
  call void @olang_textcopy(ptr %t32, ptr %t12, i64 %t13)
  %t33 = getelementptr i8, ptr %t32, i64 %t13
  call void @olang_textcopy(ptr %t33, ptr %t16, i64 %t17)
  %t34 = getelementptr i8, ptr %t33, i64 %t17
  call void @olang_textcopy(ptr %t34, ptr %t19, i64 %t20)
  %t35 = getelementptr i8, ptr %t34, i64 %t20
  call void @olang_textcopy(ptr %t35, ptr %t23, i64 %t24)
  %t36 = getelementptr i8, ptr %t35, i64 %t24
  call void @olang_textcopy(ptr %t36, ptr %t26, i64 %t27)
  %t37 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t38 = insertvalue { i64, ptr } %t37, ptr %t31, 1
  %t40 = load i64, ptr %l4
  %t41 = inttoptr i64 %t40 to ptr
  %t42 = extractvalue { i64, ptr } %t38, 0
  %t43 = extractvalue { i64, ptr } %t38, 1
  %t44 = mul i64 %t42, 1
  %t45 = call ptr @__olang_scope_alloc(ptr %t41, i64 %t44)
  call void @llvm.memcpy.p0.p0.i64(ptr %t45, ptr %t43, i64 %t44, i1 false)
  %t46 = insertvalue { i64, ptr } undef, i64 %t42, 0
  %t47 = insertvalue { i64, ptr } %t46, ptr %t45, 1
  %t48 = load i32, ptr %l3, !range !{i32 0, i32 906}
  %t50 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, ptr %v3, ptr %v3, i32 %t48, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d7, i32 0, i32 1) }, { i64, ptr } %t47, { i64, ptr } { i64 111, ptr getelementptr inbounds (<{ i64, [111 x i8] }>, ptr @.d8, i32 0, i32 1) }, { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d9, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t50, ptr %l11
  br label %bb3
bb3:
  %t51 = load %"compiler/diagmsg:Msg", ptr %l11
  store %"compiler/diagmsg:Msg" %t51, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnyMethodScopes(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca i32
  %l4 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l16 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store i32 185, ptr %l3
  %t1 = ptrtoint ptr %v3 to i64
  store i64 %t1, ptr %l4, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v3)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t8 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t13 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  %t14 = add i64 %t11, %t13
  %t16 = extractvalue { i64, ptr } %a1, 1
  %t17 = extractvalue { i64, ptr } %a1, 0
  %t18 = add i64 %t14, %t17
  %t19 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  %t21 = add i64 %t18, %t20
  %t23 = extractvalue { i64, ptr } %t8, 1
  %t24 = extractvalue { i64, ptr } %t8, 0
  %t25 = add i64 %t21, %t24
  %t26 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t27 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  %t28 = add i64 %t25, %t27
  %t29 = load i64, ptr %l4
  %t30 = inttoptr i64 %t29 to ptr
  %t31 = call ptr @__olang_scope_alloc(ptr %t30, i64 %t28)
  call void @olang_textcopy(ptr %t31, ptr %t10, i64 %t11)
  %t32 = getelementptr i8, ptr %t31, i64 %t11
  call void @olang_textcopy(ptr %t32, ptr %t12, i64 %t13)
  %t33 = getelementptr i8, ptr %t32, i64 %t13
  call void @olang_textcopy(ptr %t33, ptr %t16, i64 %t17)
  %t34 = getelementptr i8, ptr %t33, i64 %t17
  call void @olang_textcopy(ptr %t34, ptr %t19, i64 %t20)
  %t35 = getelementptr i8, ptr %t34, i64 %t20
  call void @olang_textcopy(ptr %t35, ptr %t23, i64 %t24)
  %t36 = getelementptr i8, ptr %t35, i64 %t24
  call void @olang_textcopy(ptr %t36, ptr %t26, i64 %t27)
  %t37 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t38 = insertvalue { i64, ptr } %t37, ptr %t31, 1
  %t40 = load i64, ptr %l4
  %t41 = inttoptr i64 %t40 to ptr
  %t42 = extractvalue { i64, ptr } %t38, 0
  %t43 = extractvalue { i64, ptr } %t38, 1
  %t44 = mul i64 %t42, 1
  %t45 = call ptr @__olang_scope_alloc(ptr %t41, i64 %t44)
  call void @llvm.memcpy.p0.p0.i64(ptr %t45, ptr %t43, i64 %t44, i1 false)
  %t46 = insertvalue { i64, ptr } undef, i64 %t42, 0
  %t47 = insertvalue { i64, ptr } %t46, ptr %t45, 1
  store { i64, ptr } %t47, ptr %l10, !tbaa !27
  %t48 = ptrtoint ptr %v3 to i64
  store i64 %t48, ptr %l11, !tbaa !24
  %t49 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e3
  br i1 %t49, label %bb3, label %bb4
bb3:
  %t51 = call ptr @__olang_region_make(ptr %v3)
  %t52 = ptrtoint ptr %t51 to i64
  store i64 %t52, ptr %l11, !tbaa !24
  br label %bb4
bb4:
  %t53 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t54 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t55 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
  %t57 = extractvalue { i64, ptr } %t53, 1
  %t58 = extractvalue { i64, ptr } %t53, 0
  %t59 = add i64 %t55, %t58
  %t60 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t61 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  %t62 = add i64 %t59, %t61
  %t63 = load i64, ptr %l11
  %t64 = inttoptr i64 %t63 to ptr
  %t65 = call ptr @__olang_scope_alloc(ptr %t64, i64 %t62)
  call void @olang_textcopy(ptr %t65, ptr %t54, i64 %t55)
  %t66 = getelementptr i8, ptr %t65, i64 %t55
  call void @olang_textcopy(ptr %t66, ptr %t57, i64 %t58)
  %t67 = getelementptr i8, ptr %t66, i64 %t58
  call void @olang_textcopy(ptr %t67, ptr %t60, i64 %t61)
  %t68 = insertvalue { i64, ptr } undef, i64 %t62, 0
  %t69 = insertvalue { i64, ptr } %t68, ptr %t65, 1
  %t71 = load i64, ptr %l11
  %t72 = inttoptr i64 %t71 to ptr
  %t73 = extractvalue { i64, ptr } %t69, 0
  %t74 = extractvalue { i64, ptr } %t69, 1
  %t75 = mul i64 %t73, 1
  %t76 = call ptr @__olang_scope_alloc(ptr %t72, i64 %t75)
  call void @llvm.memcpy.p0.p0.i64(ptr %t76, ptr %t74, i64 %t75, i1 false)
  %t77 = insertvalue { i64, ptr } undef, i64 %t73, 0
  %t78 = insertvalue { i64, ptr } %t77, ptr %t76, 1
  %t79 = load i32, ptr %l3, !range !{i32 0, i32 906}
  %t80 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t82 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, ptr %v3, ptr %v3, i32 %t79, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d15, i32 0, i32 1) }, { i64, ptr } %t80, { i64, ptr } %t78, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t82, ptr %l16
  br label %bb5
bb5:
  %t83 = load %"compiler/diagmsg:Msg", ptr %l16
  store %"compiler/diagmsg:Msg" %t83, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnyNoCopy(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 188, ptr %l2
  %t1 = ptrtoint ptr %v2 to i64
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v2)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t9 = extractvalue { i64, ptr } %a0, 1
  %t10 = extractvalue { i64, ptr } %a0, 0
  %t11 = extractvalue { i64, ptr } { i64 51, ptr getelementptr inbounds (<{ i64, [51 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 51, ptr getelementptr inbounds (<{ i64, [51 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t15 = extractvalue { i64, ptr } %a1, 1
  %t16 = extractvalue { i64, ptr } %a1, 0
  %t17 = add i64 %t13, %t16
  %t18 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  %t20 = add i64 %t17, %t19
  %t21 = load i64, ptr %l3
  %t22 = inttoptr i64 %t21 to ptr
  %t23 = call ptr @__olang_scope_alloc(ptr %t22, i64 %t20)
  call void @olang_textcopy(ptr %t23, ptr %t9, i64 %t10)
  %t24 = getelementptr i8, ptr %t23, i64 %t10
  call void @olang_textcopy(ptr %t24, ptr %t11, i64 %t12)
  %t25 = getelementptr i8, ptr %t24, i64 %t12
  call void @olang_textcopy(ptr %t25, ptr %t15, i64 %t16)
  %t26 = getelementptr i8, ptr %t25, i64 %t16
  call void @olang_textcopy(ptr %t26, ptr %t18, i64 %t19)
  %t27 = insertvalue { i64, ptr } undef, i64 %t20, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t23, 1
  %t30 = load i64, ptr %l3
  %t31 = inttoptr i64 %t30 to ptr
  %t32 = extractvalue { i64, ptr } %t28, 0
  %t33 = extractvalue { i64, ptr } %t28, 1
  %t34 = mul i64 %t32, 1
  %t35 = call ptr @__olang_scope_alloc(ptr %t31, i64 %t34)
  call void @llvm.memcpy.p0.p0.i64(ptr %t35, ptr %t33, i64 %t34, i1 false)
  %t36 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t35, 1
  %t38 = load i32, ptr %l2, !range !{i32 0, i32 906}
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, i32 %t38, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d18, i32 0, i32 1) }, { i64, ptr } %t37, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d19, i32 0, i32 1) }, { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d20, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t40, ptr %l9
  br label %bb3
bb3:
  %t41 = load %"compiler/diagmsg:Msg", ptr %l9
  store %"compiler/diagmsg:Msg" %t41, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnyNotMember(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l3 = alloca i32
  %l4 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l16 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i32 184, ptr %l3
  %t1 = ptrtoint ptr %v3 to i64
  store i64 %t1, ptr %l4, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v3)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t7 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t9 = extractvalue { i64, ptr } %a0, 1
  %t10 = extractvalue { i64, ptr } %a0, 0
  %t11 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t15 = extractvalue { i64, ptr } %t7, 1
  %t16 = extractvalue { i64, ptr } %t7, 0
  %t17 = add i64 %t13, %t16
  %t18 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  %t20 = add i64 %t17, %t19
  %t21 = load i64, ptr %l4
  %t22 = inttoptr i64 %t21 to ptr
  %t23 = call ptr @__olang_scope_alloc(ptr %t22, i64 %t20)
  call void @olang_textcopy(ptr %t23, ptr %t9, i64 %t10)
  %t24 = getelementptr i8, ptr %t23, i64 %t10
  call void @olang_textcopy(ptr %t24, ptr %t11, i64 %t12)
  %t25 = getelementptr i8, ptr %t24, i64 %t12
  call void @olang_textcopy(ptr %t25, ptr %t15, i64 %t16)
  %t26 = getelementptr i8, ptr %t25, i64 %t16
  call void @olang_textcopy(ptr %t26, ptr %t18, i64 %t19)
  %t27 = insertvalue { i64, ptr } undef, i64 %t20, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t23, 1
  %t30 = load i64, ptr %l4
  %t31 = inttoptr i64 %t30 to ptr
  %t32 = extractvalue { i64, ptr } %t28, 0
  %t33 = extractvalue { i64, ptr } %t28, 1
  %t34 = mul i64 %t32, 1
  %t35 = call ptr @__olang_scope_alloc(ptr %t31, i64 %t34)
  call void @llvm.memcpy.p0.p0.i64(ptr %t35, ptr %t33, i64 %t34, i1 false)
  %t36 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t35, 1
  store { i64, ptr } %t37, ptr %l9, !tbaa !27
  %t38 = ptrtoint ptr %v3 to i64
  store i64 %t38, ptr %l10, !tbaa !24
  %t39 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e3
  br i1 %t39, label %bb3, label %bb4
bb3:
  %t41 = call ptr @__olang_region_make(ptr %v3)
  %t42 = ptrtoint ptr %t41 to i64
  store i64 %t42, ptr %l10, !tbaa !24
  br label %bb4
bb4:
  %t43 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t46 = extractvalue { i64, ptr } %t43, 1
  %t47 = extractvalue { i64, ptr } %t43, 0
  %t48 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d23, i32 0, i32 1) }, 1
  %t49 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d23, i32 0, i32 1) }, 0
  %t50 = add i64 %t47, %t49
  %t52 = extractvalue { i64, ptr } %a2, 1
  %t53 = extractvalue { i64, ptr } %a2, 0
  %t54 = add i64 %t50, %t53
  %t55 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d24, i32 0, i32 1) }, 1
  %t56 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d24, i32 0, i32 1) }, 0
  %t57 = add i64 %t54, %t56
  %t58 = load i64, ptr %l10
  %t59 = inttoptr i64 %t58 to ptr
  %t60 = call ptr @__olang_scope_alloc(ptr %t59, i64 %t57)
  call void @olang_textcopy(ptr %t60, ptr %t46, i64 %t47)
  %t61 = getelementptr i8, ptr %t60, i64 %t47
  call void @olang_textcopy(ptr %t61, ptr %t48, i64 %t49)
  %t62 = getelementptr i8, ptr %t61, i64 %t49
  call void @olang_textcopy(ptr %t62, ptr %t52, i64 %t53)
  %t63 = getelementptr i8, ptr %t62, i64 %t53
  call void @olang_textcopy(ptr %t63, ptr %t55, i64 %t56)
  %t64 = insertvalue { i64, ptr } undef, i64 %t57, 0
  %t65 = insertvalue { i64, ptr } %t64, ptr %t60, 1
  %t67 = load i64, ptr %l10
  %t68 = inttoptr i64 %t67 to ptr
  %t69 = extractvalue { i64, ptr } %t65, 0
  %t70 = extractvalue { i64, ptr } %t65, 1
  %t71 = mul i64 %t69, 1
  %t72 = call ptr @__olang_scope_alloc(ptr %t68, i64 %t71)
  call void @llvm.memcpy.p0.p0.i64(ptr %t72, ptr %t70, i64 %t71, i1 false)
  %t73 = insertvalue { i64, ptr } undef, i64 %t69, 0
  %t74 = insertvalue { i64, ptr } %t73, ptr %t72, 1
  %t75 = load i32, ptr %l3, !range !{i32 0, i32 906}
  %t76 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t78 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, ptr %v3, ptr %v3, i32 %t75, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d25, i32 0, i32 1) }, { i64, ptr } %t76, { i64, ptr } %t74, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t78, ptr %l16
  br label %bb5
bb5:
  %t79 = load %"compiler/diagmsg:Msg", ptr %l16
  store %"compiler/diagmsg:Msg" %t79, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnyOpenInspected(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 189, ptr %l2
  %t1 = ptrtoint ptr %v2 to i64
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v2)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t9 = extractvalue { i64, ptr } %a0, 1
  %t10 = extractvalue { i64, ptr } %a0, 0
  %t11 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t15 = extractvalue { i64, ptr } %a1, 1
  %t16 = extractvalue { i64, ptr } %a1, 0
  %t17 = add i64 %t13, %t16
  %t18 = extractvalue { i64, ptr } { i64 51, ptr getelementptr inbounds (<{ i64, [51 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 51, ptr getelementptr inbounds (<{ i64, [51 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  %t20 = add i64 %t17, %t19
  %t21 = load i64, ptr %l3
  %t22 = inttoptr i64 %t21 to ptr
  %t23 = call ptr @__olang_scope_alloc(ptr %t22, i64 %t20)
  call void @olang_textcopy(ptr %t23, ptr %t9, i64 %t10)
  %t24 = getelementptr i8, ptr %t23, i64 %t10
  call void @olang_textcopy(ptr %t24, ptr %t11, i64 %t12)
  %t25 = getelementptr i8, ptr %t24, i64 %t12
  call void @olang_textcopy(ptr %t25, ptr %t15, i64 %t16)
  %t26 = getelementptr i8, ptr %t25, i64 %t16
  call void @olang_textcopy(ptr %t26, ptr %t18, i64 %t19)
  %t27 = insertvalue { i64, ptr } undef, i64 %t20, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t23, 1
  %t30 = load i64, ptr %l3
  %t31 = inttoptr i64 %t30 to ptr
  %t32 = extractvalue { i64, ptr } %t28, 0
  %t33 = extractvalue { i64, ptr } %t28, 1
  %t34 = mul i64 %t32, 1
  %t35 = call ptr @__olang_scope_alloc(ptr %t31, i64 %t34)
  call void @llvm.memcpy.p0.p0.i64(ptr %t35, ptr %t33, i64 %t34, i1 false)
  %t36 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t35, 1
  %t38 = load i32, ptr %l2, !range !{i32 0, i32 906}
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, i32 %t38, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d28, i32 0, i32 1) }, { i64, ptr } %t37, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d29, i32 0, i32 1) }, { i64, ptr } { i64 43, ptr getelementptr inbounds (<{ i64, [43 x i8] }>, ptr @.d30, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t40, ptr %l9
  br label %bb3
bb3:
  %t41 = load %"compiler/diagmsg:Msg", ptr %l9
  store %"compiler/diagmsg:Msg" %t41, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnyUnmetMethod(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca i64
  %l11 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 183, ptr %l3
  %t1 = ptrtoint ptr %v3 to i64
  store i64 %t1, ptr %l4, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v3)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d31, i32 0, i32 1) }, 1
  %t13 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d31, i32 0, i32 1) }, 0
  %t14 = add i64 %t11, %t13
  %t16 = extractvalue { i64, ptr } %a1, 1
  %t17 = extractvalue { i64, ptr } %a1, 0
  %t18 = add i64 %t14, %t17
  %t19 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d32, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d32, i32 0, i32 1) }, 0
  %t21 = add i64 %t18, %t20
  %t23 = extractvalue { i64, ptr } %a2, 1
  %t24 = extractvalue { i64, ptr } %a2, 0
  %t25 = add i64 %t21, %t24
  %t26 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d33, i32 0, i32 1) }, 1
  %t27 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d33, i32 0, i32 1) }, 0
  %t28 = add i64 %t25, %t27
  %t29 = load i64, ptr %l4
  %t30 = inttoptr i64 %t29 to ptr
  %t31 = call ptr @__olang_scope_alloc(ptr %t30, i64 %t28)
  call void @olang_textcopy(ptr %t31, ptr %t10, i64 %t11)
  %t32 = getelementptr i8, ptr %t31, i64 %t11
  call void @olang_textcopy(ptr %t32, ptr %t12, i64 %t13)
  %t33 = getelementptr i8, ptr %t32, i64 %t13
  call void @olang_textcopy(ptr %t33, ptr %t16, i64 %t17)
  %t34 = getelementptr i8, ptr %t33, i64 %t17
  call void @olang_textcopy(ptr %t34, ptr %t19, i64 %t20)
  %t35 = getelementptr i8, ptr %t34, i64 %t20
  call void @olang_textcopy(ptr %t35, ptr %t23, i64 %t24)
  %t36 = getelementptr i8, ptr %t35, i64 %t24
  call void @olang_textcopy(ptr %t36, ptr %t26, i64 %t27)
  %t37 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t38 = insertvalue { i64, ptr } %t37, ptr %t31, 1
  %t40 = load i64, ptr %l4
  %t41 = inttoptr i64 %t40 to ptr
  %t42 = extractvalue { i64, ptr } %t38, 0
  %t43 = extractvalue { i64, ptr } %t38, 1
  %t44 = mul i64 %t42, 1
  %t45 = call ptr @__olang_scope_alloc(ptr %t41, i64 %t44)
  call void @llvm.memcpy.p0.p0.i64(ptr %t45, ptr %t43, i64 %t44, i1 false)
  %t46 = insertvalue { i64, ptr } undef, i64 %t42, 0
  %t47 = insertvalue { i64, ptr } %t46, ptr %t45, 1
  %t48 = load i32, ptr %l3, !range !{i32 0, i32 906}
  %t50 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, ptr %v3, ptr %v3, i32 %t48, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d34, i32 0, i32 1) }, { i64, ptr } %t47, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t50, ptr %l11
  br label %bb3
bb3:
  %t51 = load %"compiler/diagmsg:Msg", ptr %l11
  store %"compiler/diagmsg:Msg" %t51, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eApiNoFiles(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 887, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d35, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d36, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d36, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l2
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  call void @olang_textcopy(ptr %t18, ptr %t7, i64 %t8)
  %t19 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t18, 1
  %t24 = load i64, ptr %l2
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d37, i32 0, i32 1) }, { i64, ptr } %t31, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t34, ptr %l7
  br label %bb3
bb3:
  %t35 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t35, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eApiNoSide(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 886, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d38, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d38, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 55, ptr getelementptr inbounds (<{ i64, [55 x i8] }>, ptr @.d39, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 55, ptr getelementptr inbounds (<{ i64, [55 x i8] }>, ptr @.d39, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l2
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  call void @olang_textcopy(ptr %t18, ptr %t7, i64 %t8)
  %t19 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t18, 1
  %t24 = load i64, ptr %l2
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d40, i32 0, i32 1) }, { i64, ptr } %t31, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t34, ptr %l7
  br label %bb3
bb3:
  %t35 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t35, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eApiUsage(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 895, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d41, i32 0, i32 1) }, { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d42, i32 0, i32 1) }, { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d43, i32 0, i32 1) }, { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d44, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArgCountRange(ptr %v0, i64 %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca i64
  %l11 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 368, ptr %l3
  %t1 = ptrtoint ptr %v0 to i64
  store i64 %t1, ptr %l4, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v0)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t9 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d45, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d45, i32 0, i32 1) }, 0
  %t12 = call i64 @__olang_fmt_i64(ptr null, i64 %a0)
  %t13 = add i64 %t10, %t12
  %t14 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d46, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d46, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = call i64 @__olang_fmt_i64(ptr null, i64 %a1)
  %t19 = add i64 %t16, %t18
  %t20 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d47, i32 0, i32 1) }, 1
  %t21 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d47, i32 0, i32 1) }, 0
  %t22 = add i64 %t19, %t21
  %t24 = call i64 @__olang_fmt_i64(ptr null, i64 %a2)
  %t25 = add i64 %t22, %t24
  %t26 = load i64, ptr %l4
  %t27 = inttoptr i64 %t26 to ptr
  %t28 = call ptr @__olang_scope_alloc(ptr %t27, i64 %t25)
  call void @olang_textcopy(ptr %t28, ptr %t9, i64 %t10)
  %t29 = getelementptr i8, ptr %t28, i64 %t10
  %t30 = call i64 @__olang_fmt_i64(ptr %t29, i64 %a0)
  %t31 = getelementptr i8, ptr %t29, i64 %t12
  call void @olang_textcopy(ptr %t31, ptr %t14, i64 %t15)
  %t32 = getelementptr i8, ptr %t31, i64 %t15
  %t33 = call i64 @__olang_fmt_i64(ptr %t32, i64 %a1)
  %t34 = getelementptr i8, ptr %t32, i64 %t18
  call void @olang_textcopy(ptr %t34, ptr %t20, i64 %t21)
  %t35 = getelementptr i8, ptr %t34, i64 %t21
  %t36 = call i64 @__olang_fmt_i64(ptr %t35, i64 %a2)
  %t37 = insertvalue { i64, ptr } undef, i64 %t25, 0
  %t38 = insertvalue { i64, ptr } %t37, ptr %t28, 1
  %t40 = load i64, ptr %l4
  %t41 = inttoptr i64 %t40 to ptr
  %t42 = extractvalue { i64, ptr } %t38, 0
  %t43 = extractvalue { i64, ptr } %t38, 1
  %t44 = mul i64 %t42, 1
  %t45 = call ptr @__olang_scope_alloc(ptr %t41, i64 %t44)
  call void @llvm.memcpy.p0.p0.i64(ptr %t45, ptr %t43, i64 %t44, i1 false)
  %t46 = insertvalue { i64, ptr } undef, i64 %t42, 0
  %t47 = insertvalue { i64, ptr } %t46, ptr %t45, 1
  %t48 = load i32, ptr %l3, !range !{i32 0, i32 906}
  %t50 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 %t48, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d48, i32 0, i32 1) }, { i64, ptr } %t47, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t50, ptr %l11
  br label %bb3
bb3:
  %t51 = load %"compiler/diagmsg:Msg", ptr %l11
  store %"compiler/diagmsg:Msg" %t51, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArrayIsNull(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 522, ptr %l2
  %t1 = ptrtoint ptr %v2 to i64
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e4
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v2)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d49, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d49, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t15 = extractvalue { i64, ptr } %a1, 1
  %t16 = extractvalue { i64, ptr } %a1, 0
  %t17 = add i64 %t13, %t16
  %t18 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d50, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d50, i32 0, i32 1) }, 0
  %t20 = add i64 %t17, %t19
  %t21 = load i64, ptr %l3
  %t22 = inttoptr i64 %t21 to ptr
  %t23 = call ptr @__olang_scope_alloc(ptr %t22, i64 %t20)
  call void @olang_textcopy(ptr %t23, ptr %t8, i64 %t9)
  %t24 = getelementptr i8, ptr %t23, i64 %t9
  call void @olang_textcopy(ptr %t24, ptr %t11, i64 %t12)
  %t25 = getelementptr i8, ptr %t24, i64 %t12
  call void @olang_textcopy(ptr %t25, ptr %t15, i64 %t16)
  %t26 = getelementptr i8, ptr %t25, i64 %t16
  call void @olang_textcopy(ptr %t26, ptr %t18, i64 %t19)
  %t27 = insertvalue { i64, ptr } undef, i64 %t20, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t23, 1
  %t30 = load i64, ptr %l3
  %t31 = inttoptr i64 %t30 to ptr
  %t32 = extractvalue { i64, ptr } %t28, 0
  %t33 = extractvalue { i64, ptr } %t28, 1
  %t34 = mul i64 %t32, 1
  %t35 = call ptr @__olang_scope_alloc(ptr %t31, i64 %t34)
  call void @llvm.memcpy.p0.p0.i64(ptr %t35, ptr %t33, i64 %t34, i1 false)
  %t36 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t35, 1
  %t38 = load i32, ptr %l2, !range !{i32 0, i32 906}
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, i32 %t38, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d51, i32 0, i32 1) }, { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d52, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d53, i32 0, i32 1) }, { i64, ptr } %t37)
  store %"compiler/diagmsg:Msg" %t40, ptr %l9
  br label %bb3
bb3:
  %t41 = load %"compiler/diagmsg:Msg", ptr %l9
  store %"compiler/diagmsg:Msg" %t41, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArrayOneIndex(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 242, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } %a0, 1
  %t9 = extractvalue { i64, ptr } %a0, 0
  %t10 = extractvalue { i64, ptr } { i64 61, ptr getelementptr inbounds (<{ i64, [61 x i8] }>, ptr @.d54, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 61, ptr getelementptr inbounds (<{ i64, [61 x i8] }>, ptr @.d54, i32 0, i32 1) }, 0
  %t12 = add i64 %t9, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t8, i64 %t9)
  %t16 = getelementptr i8, ptr %t15, i64 %t9
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d55, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArrayRunTimeIntoFixed(ptr %v0, i64 %a0) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca i32
  %l2 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l12 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  store i64 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i32 339, ptr %l1
  %t1 = ptrtoint ptr %v0 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v0)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t6 = load i64, ptr %l0, !tbaa !24
  %t7 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d56, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d56, i32 0, i32 1) }, 0
  %t10 = call i64 @__olang_fmt_i64(ptr null, i64 %t6)
  %t11 = add i64 %t8, %t10
  %t12 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d57, i32 0, i32 1) }, 1
  %t13 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d57, i32 0, i32 1) }, 0
  %t14 = add i64 %t11, %t13
  %t15 = load i64, ptr %l2
  %t16 = inttoptr i64 %t15 to ptr
  %t17 = call ptr @__olang_scope_alloc(ptr %t16, i64 %t14)
  call void @olang_textcopy(ptr %t17, ptr %t7, i64 %t8)
  %t18 = getelementptr i8, ptr %t17, i64 %t8
  %t19 = call i64 @__olang_fmt_i64(ptr %t18, i64 %t6)
  %t20 = getelementptr i8, ptr %t18, i64 %t10
  call void @olang_textcopy(ptr %t20, ptr %t12, i64 %t13)
  %t21 = insertvalue { i64, ptr } undef, i64 %t14, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t17, 1
  %t24 = load i64, ptr %l2
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  store { i64, ptr } %t31, ptr %l6, !tbaa !27
  %t32 = ptrtoint ptr %v0 to i64
  store i64 %t32, ptr %l7, !tbaa !24
  %t33 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e4
  br i1 %t33, label %bb3, label %bb4
bb3:
  %t35 = call ptr @__olang_region_make(ptr %v0)
  %t36 = ptrtoint ptr %t35 to i64
  store i64 %t36, ptr %l7, !tbaa !24
  br label %bb4
bb4:
  %t37 = load i64, ptr %l0, !tbaa !24
  %t38 = extractvalue { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d58, i32 0, i32 1) }, 1
  %t39 = extractvalue { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d58, i32 0, i32 1) }, 0
  %t41 = call i64 @__olang_fmt_i64(ptr null, i64 %t37)
  %t42 = add i64 %t39, %t41
  %t43 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d59, i32 0, i32 1) }, 1
  %t44 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d59, i32 0, i32 1) }, 0
  %t45 = add i64 %t42, %t44
  %t46 = load i64, ptr %l7
  %t47 = inttoptr i64 %t46 to ptr
  %t48 = call ptr @__olang_scope_alloc(ptr %t47, i64 %t45)
  call void @olang_textcopy(ptr %t48, ptr %t38, i64 %t39)
  %t49 = getelementptr i8, ptr %t48, i64 %t39
  %t50 = call i64 @__olang_fmt_i64(ptr %t49, i64 %t37)
  %t51 = getelementptr i8, ptr %t49, i64 %t41
  call void @olang_textcopy(ptr %t51, ptr %t43, i64 %t44)
  %t52 = insertvalue { i64, ptr } undef, i64 %t45, 0
  %t53 = insertvalue { i64, ptr } %t52, ptr %t48, 1
  %t55 = load i64, ptr %l7
  %t56 = inttoptr i64 %t55 to ptr
  %t57 = extractvalue { i64, ptr } %t53, 0
  %t58 = extractvalue { i64, ptr } %t53, 1
  %t59 = mul i64 %t57, 1
  %t60 = call ptr @__olang_scope_alloc(ptr %t56, i64 %t59)
  call void @llvm.memcpy.p0.p0.i64(ptr %t60, ptr %t58, i64 %t59, i1 false)
  %t61 = insertvalue { i64, ptr } undef, i64 %t57, 0
  %t62 = insertvalue { i64, ptr } %t61, ptr %t60, 1
  %t63 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t64 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t66 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 %t63, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d60, i32 0, i32 1) }, { i64, ptr } %t64, { i64, ptr } { i64 45, ptr getelementptr inbounds (<{ i64, [45 x i8] }>, ptr @.d61, i32 0, i32 1) }, { i64, ptr } %t62)
  store %"compiler/diagmsg:Msg" %t66, ptr %l12
  br label %bb5
bb5:
  %t67 = load %"compiler/diagmsg:Msg", ptr %l12
  store %"compiler/diagmsg:Msg" %t67, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAsCanFail(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 160, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d62, i32 0, i32 1) }, { i64, ptr } { i64 45, ptr getelementptr inbounds (<{ i64, [45 x i8] }>, ptr @.d63, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d64, i32 0, i32 1) }, { i64, ptr } { i64 57, ptr getelementptr inbounds (<{ i64, [57 x i8] }>, ptr @.d65, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAsNothing(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 526, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d66, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d66, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 57, ptr getelementptr inbounds (<{ i64, [57 x i8] }>, ptr @.d67, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 57, ptr getelementptr inbounds (<{ i64, [57 x i8] }>, ptr @.d67, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l2
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  call void @olang_textcopy(ptr %t18, ptr %t7, i64 %t8)
  %t19 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t18, 1
  %t24 = load i64, ptr %l2
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d68, i32 0, i32 1) }, { i64, ptr } %t31, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t34, ptr %l7
  br label %bb3
bb3:
  %t35 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t35, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAssertFalse(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 731, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d69, i32 0, i32 1) }, { i64, ptr } { i64 50, ptr getelementptr inbounds (<{ i64, [50 x i8] }>, ptr @.d70, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAssertMsgError(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 735, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d71, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d71, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d72, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d72, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l2
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  call void @olang_textcopy(ptr %t18, ptr %t7, i64 %t8)
  %t19 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t18, 1
  %t24 = load i64, ptr %l2
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d73, i32 0, i32 1) }, { i64, ptr } %t31, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t34, ptr %l7
  br label %bb3
bb3:
  %t35 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t35, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAssertMsgReturns(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 734, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } %a0, 1
  %t9 = extractvalue { i64, ptr } %a0, 0
  %t10 = extractvalue { i64, ptr } { i64 79, ptr getelementptr inbounds (<{ i64, [79 x i8] }>, ptr @.d74, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 79, ptr getelementptr inbounds (<{ i64, [79 x i8] }>, ptr @.d74, i32 0, i32 1) }, 0
  %t12 = add i64 %t9, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t8, i64 %t9)
  %t16 = getelementptr i8, ptr %t15, i64 %t9
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d75, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAssertStale(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 744, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e3
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } %a0, 1
  %t9 = extractvalue { i64, ptr } %a0, 0
  %t10 = load i64, ptr %l2
  %t11 = inttoptr i64 %t10 to ptr
  %t12 = call ptr @__olang_scope_alloc(ptr %t11, i64 %t9)
  call void @olang_textcopy(ptr %t12, ptr %t8, i64 %t9)
  %t13 = insertvalue { i64, ptr } undef, i64 %t9, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr %t12, 1
  %t16 = load i64, ptr %l2
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = extractvalue { i64, ptr } %t14, 0
  %t19 = extractvalue { i64, ptr } %t14, 1
  %t20 = mul i64 %t18, 1
  %t21 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t20)
  call void @llvm.memcpy.p0.p0.i64(ptr %t21, ptr %t19, i64 %t20, i1 false)
  %t22 = insertvalue { i64, ptr } undef, i64 %t18, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t21, 1
  %t24 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t26 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t24, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d76, i32 0, i32 1) }, { i64, ptr } { i64 63, ptr getelementptr inbounds (<{ i64, [63 x i8] }>, ptr @.d77, i32 0, i32 1) }, { i64, ptr } %t23, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t26, ptr %l7
  br label %bb3
bb3:
  %t27 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t27, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAssignListCount(ptr %v0, i64 %a0, i64 %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 580, ptr %l2
  %t1 = ptrtoint ptr %v0 to i64
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v0)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t9 = call i64 @__olang_fmt_i64(ptr null, i64 %a0)
  %t10 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d78, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d78, i32 0, i32 1) }, 0
  %t12 = add i64 %t9, %t11
  %t14 = call i64 @__olang_fmt_i64(ptr null, i64 %a1)
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l3
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  %t19 = call i64 @__olang_fmt_i64(ptr %t18, i64 %a0)
  %t20 = getelementptr i8, ptr %t18, i64 %t9
  call void @olang_textcopy(ptr %t20, ptr %t10, i64 %t11)
  %t21 = getelementptr i8, ptr %t20, i64 %t11
  %t22 = call i64 @__olang_fmt_i64(ptr %t21, i64 %a1)
  %t23 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t24 = insertvalue { i64, ptr } %t23, ptr %t18, 1
  %t26 = load i64, ptr %l3
  %t27 = inttoptr i64 %t26 to ptr
  %t28 = extractvalue { i64, ptr } %t24, 0
  %t29 = extractvalue { i64, ptr } %t24, 1
  %t30 = mul i64 %t28, 1
  %t31 = call ptr @__olang_scope_alloc(ptr %t27, i64 %t30)
  call void @llvm.memcpy.p0.p0.i64(ptr %t31, ptr %t29, i64 %t30, i1 false)
  %t32 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t33 = insertvalue { i64, ptr } %t32, ptr %t31, 1
  %t34 = load i32, ptr %l2, !range !{i32 0, i32 906}
  %t36 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 %t34, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d79, i32 0, i32 1) }, { i64, ptr } %t33, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t36, ptr %l9
  br label %bb3
bb3:
  %t37 = load %"compiler/diagmsg:Msg", ptr %l9
  store %"compiler/diagmsg:Msg" %t37, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAttrType(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 861, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 56, ptr getelementptr inbounds (<{ i64, [56 x i8] }>, ptr @.d80, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 56, ptr getelementptr inbounds (<{ i64, [56 x i8] }>, ptr @.d80, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t7, i64 %t8)
  %t16 = getelementptr i8, ptr %t15, i64 %t8
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d81, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } { i64 50, ptr getelementptr inbounds (<{ i64, [50 x i8] }>, ptr @.d82, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAxisCount(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca i64
  %l11 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 902, ptr %l3
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l4, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d83, i32 0, i32 1) }, 1
  %t13 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d83, i32 0, i32 1) }, 0
  %t14 = add i64 %t11, %t13
  %t16 = call i64 @__olang_fmt_i64(ptr null, i64 %a1)
  %t17 = add i64 %t14, %t16
  %t18 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d84, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d84, i32 0, i32 1) }, 0
  %t20 = add i64 %t17, %t19
  %t22 = call i64 @__olang_fmt_i64(ptr null, i64 %a2)
  %t23 = add i64 %t20, %t22
  %t24 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d85, i32 0, i32 1) }, 1
  %t25 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d85, i32 0, i32 1) }, 0
  %t26 = add i64 %t23, %t25
  %t27 = load i64, ptr %l4
  %t28 = inttoptr i64 %t27 to ptr
  %t29 = call ptr @__olang_scope_alloc(ptr %t28, i64 %t26)
  call void @olang_textcopy(ptr %t29, ptr %t10, i64 %t11)
  %t30 = getelementptr i8, ptr %t29, i64 %t11
  call void @olang_textcopy(ptr %t30, ptr %t12, i64 %t13)
  %t31 = getelementptr i8, ptr %t30, i64 %t13
  %t32 = call i64 @__olang_fmt_i64(ptr %t31, i64 %a1)
  %t33 = getelementptr i8, ptr %t31, i64 %t16
  call void @olang_textcopy(ptr %t33, ptr %t18, i64 %t19)
  %t34 = getelementptr i8, ptr %t33, i64 %t19
  %t35 = call i64 @__olang_fmt_i64(ptr %t34, i64 %a2)
  %t36 = getelementptr i8, ptr %t34, i64 %t22
  call void @olang_textcopy(ptr %t36, ptr %t24, i64 %t25)
  %t37 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t38 = insertvalue { i64, ptr } %t37, ptr %t29, 1
  %t40 = load i64, ptr %l4
  %t41 = inttoptr i64 %t40 to ptr
  %t42 = extractvalue { i64, ptr } %t38, 0
  %t43 = extractvalue { i64, ptr } %t38, 1
  %t44 = mul i64 %t42, 1
  %t45 = call ptr @__olang_scope_alloc(ptr %t41, i64 %t44)
  call void @llvm.memcpy.p0.p0.i64(ptr %t45, ptr %t43, i64 %t44, i1 false)
  %t46 = insertvalue { i64, ptr } undef, i64 %t42, 0
  %t47 = insertvalue { i64, ptr } %t46, ptr %t45, 1
  %t48 = load i32, ptr %l3, !range !{i32 0, i32 906}
  %t50 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t48, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d86, i32 0, i32 1) }, { i64, ptr } %t47, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d87, i32 0, i32 1) }, { i64, ptr } { i64 100, ptr getelementptr inbounds (<{ i64, [100 x i8] }>, ptr @.d88, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t50, ptr %l11
  br label %bb3
bb3:
  %t51 = load %"compiler/diagmsg:Msg", ptr %l11
  store %"compiler/diagmsg:Msg" %t51, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBecomeBorrows(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 778, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d89, i32 0, i32 1) }, { i64, ptr } { i64 59, ptr getelementptr inbounds (<{ i64, [59 x i8] }>, ptr @.d90, i32 0, i32 1) }, { i64, ptr } { i64 54, ptr getelementptr inbounds (<{ i64, [54 x i8] }>, ptr @.d91, i32 0, i32 1) }, { i64, ptr } { i64 73, ptr getelementptr inbounds (<{ i64, [73 x i8] }>, ptr @.d92, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBecomeDestructor(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 777, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e3
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 60, ptr getelementptr inbounds (<{ i64, [60 x i8] }>, ptr @.d93, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 60, ptr getelementptr inbounds (<{ i64, [60 x i8] }>, ptr @.d93, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d94, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d94, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l2
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  call void @olang_textcopy(ptr %t18, ptr %t7, i64 %t8)
  %t19 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t18, 1
  %t24 = load i64, ptr %l2
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d95, i32 0, i32 1) }, { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d96, i32 0, i32 1) }, { i64, ptr } %t31, { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d97, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t34, ptr %l7
  br label %bb3
bb3:
  %t35 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t35, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBecomeInside(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 771, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e3
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 50, ptr getelementptr inbounds (<{ i64, [50 x i8] }>, ptr @.d98, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 50, ptr getelementptr inbounds (<{ i64, [50 x i8] }>, ptr @.d98, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t7, i64 %t8)
  %t16 = getelementptr i8, ptr %t15, i64 %t8
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d99, i32 0, i32 1) }, { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d100, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d101, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBecomeNotCall(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 773, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d102, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d102, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t7, i64 %t8)
  %t16 = getelementptr i8, ptr %t15, i64 %t8
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d103, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } { i64 49, ptr getelementptr inbounds (<{ i64, [49 x i8] }>, ptr @.d104, i32 0, i32 1) }, { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d105, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBecomeSignature(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l13 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 774, ptr %l2
  %t1 = ptrtoint ptr %v2 to i64
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v2)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 67, ptr getelementptr inbounds (<{ i64, [67 x i8] }>, ptr @.d106, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 67, ptr getelementptr inbounds (<{ i64, [67 x i8] }>, ptr @.d106, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = load i64, ptr %l3
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t7, i64 %t8)
  %t16 = getelementptr i8, ptr %t15, i64 %t8
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l3
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  store { i64, ptr } %t27, ptr %l7, !tbaa !27
  %t28 = ptrtoint ptr %v2 to i64
  store i64 %t28, ptr %l8, !tbaa !24
  %t29 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e3
  br i1 %t29, label %bb3, label %bb4
bb3:
  %t31 = call ptr @__olang_region_make(ptr %v2)
  %t32 = ptrtoint ptr %t31 to i64
  store i64 %t32, ptr %l8, !tbaa !24
  br label %bb4
bb4:
  %t34 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d107, i32 0, i32 1) }, 1
  %t35 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d107, i32 0, i32 1) }, 0
  %t37 = extractvalue { i64, ptr } %a1, 1
  %t38 = extractvalue { i64, ptr } %a1, 0
  %t39 = add i64 %t35, %t38
  %t40 = load i64, ptr %l8
  %t41 = inttoptr i64 %t40 to ptr
  %t42 = call ptr @__olang_scope_alloc(ptr %t41, i64 %t39)
  call void @olang_textcopy(ptr %t42, ptr %t34, i64 %t35)
  %t43 = getelementptr i8, ptr %t42, i64 %t35
  call void @olang_textcopy(ptr %t43, ptr %t37, i64 %t38)
  %t44 = insertvalue { i64, ptr } undef, i64 %t39, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t42, 1
  %t47 = load i64, ptr %l8
  %t48 = inttoptr i64 %t47 to ptr
  %t49 = extractvalue { i64, ptr } %t45, 0
  %t50 = extractvalue { i64, ptr } %t45, 1
  %t51 = mul i64 %t49, 1
  %t52 = call ptr @__olang_scope_alloc(ptr %t48, i64 %t51)
  call void @llvm.memcpy.p0.p0.i64(ptr %t52, ptr %t50, i64 %t51, i1 false)
  %t53 = insertvalue { i64, ptr } undef, i64 %t49, 0
  %t54 = insertvalue { i64, ptr } %t53, ptr %t52, 1
  %t55 = load i32, ptr %l2, !range !{i32 0, i32 906}
  %t56 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t58 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, i32 %t55, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d108, i32 0, i32 1) }, { i64, ptr } %t56, { i64, ptr } %t54, { i64, ptr } { i64 55, ptr getelementptr inbounds (<{ i64, [55 x i8] }>, ptr @.d109, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t58, ptr %l13
  br label %bb5
bb5:
  %t59 = load %"compiler/diagmsg:Msg", ptr %l13
  store %"compiler/diagmsg:Msg" %t59, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBenchFuzz(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 10, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d110, i32 0, i32 1) }, { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d111, i32 0, i32 1) }, { i64, ptr } { i64 84, ptr getelementptr inbounds (<{ i64, [84 x i8] }>, ptr @.d112, i32 0, i32 1) }, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d113, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBlockNotClosed(ptr %v0, ptr %v1, i64 %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 83, ptr %l2
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d114, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d114, i32 0, i32 1) }, 0
  %t11 = call i64 @__olang_fmt_i64(ptr null, i64 %a0)
  %t12 = add i64 %t9, %t11
  %t13 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d115, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d115, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t17 = extractvalue { i64, ptr } %a1, 1
  %t18 = extractvalue { i64, ptr } %a1, 0
  %t19 = add i64 %t15, %t18
  %t20 = load i64, ptr %l3
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t19)
  call void @olang_textcopy(ptr %t22, ptr %t8, i64 %t9)
  %t23 = getelementptr i8, ptr %t22, i64 %t9
  %t24 = call i64 @__olang_fmt_i64(ptr %t23, i64 %a0)
  %t25 = getelementptr i8, ptr %t23, i64 %t11
  call void @olang_textcopy(ptr %t25, ptr %t13, i64 %t14)
  %t26 = getelementptr i8, ptr %t25, i64 %t14
  call void @olang_textcopy(ptr %t26, ptr %t17, i64 %t18)
  %t27 = insertvalue { i64, ptr } undef, i64 %t19, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t22, 1
  %t30 = load i64, ptr %l3
  %t31 = inttoptr i64 %t30 to ptr
  %t32 = extractvalue { i64, ptr } %t28, 0
  %t33 = extractvalue { i64, ptr } %t28, 1
  %t34 = mul i64 %t32, 1
  %t35 = call ptr @__olang_scope_alloc(ptr %t31, i64 %t34)
  call void @llvm.memcpy.p0.p0.i64(ptr %t35, ptr %t33, i64 %t34, i1 false)
  %t36 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t35, 1
  %t38 = load i32, ptr %l2, !range !{i32 0, i32 906}
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t38, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d116, i32 0, i32 1) }, { i64, ptr } %t37, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t40, ptr %l9
  br label %bb3
bb3:
  %t41 = load %"compiler/diagmsg:Msg", ptr %l9
  store %"compiler/diagmsg:Msg" %t41, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBorrowSplitValue(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 373, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d117, i32 0, i32 1) }, { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d118, i32 0, i32 1) }, { i64, ptr } { i64 50, ptr getelementptr inbounds (<{ i64, [50 x i8] }>, ptr @.d119, i32 0, i32 1) }, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d120, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBoundTwice(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 606, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } %a0, 1
  %t9 = extractvalue { i64, ptr } %a0, 0
  %t10 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d121, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d121, i32 0, i32 1) }, 0
  %t12 = add i64 %t9, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t8, i64 %t9)
  %t16 = getelementptr i8, ptr %t15, i64 %t9
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d122, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuilderNotValue(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 315, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d123, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d123, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 48, ptr getelementptr inbounds (<{ i64, [48 x i8] }>, ptr @.d124, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 48, ptr getelementptr inbounds (<{ i64, [48 x i8] }>, ptr @.d124, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l2
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  call void @olang_textcopy(ptr %t18, ptr %t7, i64 %t8)
  %t19 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t18, 1
  %t24 = load i64, ptr %l2
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d125, i32 0, i32 1) }, { i64, ptr } %t31, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d126, i32 0, i32 1) }, { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d127, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t34, ptr %l7
  br label %bb3
bb3:
  %t35 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t35, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuilderPrivate(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 314, ptr %l2
  %t1 = ptrtoint ptr %v2 to i64
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v2)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t9 = extractvalue { i64, ptr } %a0, 1
  %t10 = extractvalue { i64, ptr } %a0, 0
  %t11 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d128, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d128, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t15 = extractvalue { i64, ptr } %a1, 1
  %t16 = extractvalue { i64, ptr } %a1, 0
  %t17 = add i64 %t13, %t16
  %t18 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d129, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d129, i32 0, i32 1) }, 0
  %t20 = add i64 %t17, %t19
  %t21 = load i64, ptr %l3
  %t22 = inttoptr i64 %t21 to ptr
  %t23 = call ptr @__olang_scope_alloc(ptr %t22, i64 %t20)
  call void @olang_textcopy(ptr %t23, ptr %t9, i64 %t10)
  %t24 = getelementptr i8, ptr %t23, i64 %t10
  call void @olang_textcopy(ptr %t24, ptr %t11, i64 %t12)
  %t25 = getelementptr i8, ptr %t24, i64 %t12
  call void @olang_textcopy(ptr %t25, ptr %t15, i64 %t16)
  %t26 = getelementptr i8, ptr %t25, i64 %t16
  call void @olang_textcopy(ptr %t26, ptr %t18, i64 %t19)
  %t27 = insertvalue { i64, ptr } undef, i64 %t20, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t23, 1
  %t30 = load i64, ptr %l3
  %t31 = inttoptr i64 %t30 to ptr
  %t32 = extractvalue { i64, ptr } %t28, 0
  %t33 = extractvalue { i64, ptr } %t28, 1
  %t34 = mul i64 %t32, 1
  %t35 = call ptr @__olang_scope_alloc(ptr %t31, i64 %t34)
  call void @llvm.memcpy.p0.p0.i64(ptr %t35, ptr %t33, i64 %t34, i1 false)
  %t36 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t35, 1
  %t38 = load i32, ptr %l2, !range !{i32 0, i32 906}
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, i32 %t38, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d130, i32 0, i32 1) }, { i64, ptr } %t37, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t40, ptr %l9
  br label %bb3
bb3:
  %t41 = load %"compiler/diagmsg:Msg", ptr %l9
  store %"compiler/diagmsg:Msg" %t41, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCFileNotFound(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 225, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d131, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d131, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t7, i64 %t8)
  %t16 = getelementptr i8, ptr %t15, i64 %t8
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d132, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCImportFailed(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l13 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 226, ptr %l2
  %t1 = ptrtoint ptr %v2 to i64
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v2)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d133, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d133, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d134, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d134, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l3
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  call void @olang_textcopy(ptr %t18, ptr %t7, i64 %t8)
  %t19 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t18, 1
  %t24 = load i64, ptr %l3
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  store { i64, ptr } %t31, ptr %l7, !tbaa !27
  %t32 = ptrtoint ptr %v2 to i64
  store i64 %t32, ptr %l8, !tbaa !24
  %t33 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e3
  br i1 %t33, label %bb3, label %bb4
bb3:
  %t35 = call ptr @__olang_region_make(ptr %v2)
  %t36 = ptrtoint ptr %t35 to i64
  store i64 %t36, ptr %l8, !tbaa !24
  br label %bb4
bb4:
  %t39 = extractvalue { i64, ptr } %a1, 1
  %t40 = extractvalue { i64, ptr } %a1, 0
  %t41 = load i64, ptr %l8
  %t42 = inttoptr i64 %t41 to ptr
  %t43 = call ptr @__olang_scope_alloc(ptr %t42, i64 %t40)
  call void @olang_textcopy(ptr %t43, ptr %t39, i64 %t40)
  %t44 = insertvalue { i64, ptr } undef, i64 %t40, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t43, 1
  %t47 = load i64, ptr %l8
  %t48 = inttoptr i64 %t47 to ptr
  %t49 = extractvalue { i64, ptr } %t45, 0
  %t50 = extractvalue { i64, ptr } %t45, 1
  %t51 = mul i64 %t49, 1
  %t52 = call ptr @__olang_scope_alloc(ptr %t48, i64 %t51)
  call void @llvm.memcpy.p0.p0.i64(ptr %t52, ptr %t50, i64 %t51, i1 false)
  %t53 = insertvalue { i64, ptr } undef, i64 %t49, 0
  %t54 = insertvalue { i64, ptr } %t53, ptr %t52, 1
  %t55 = load i32, ptr %l2, !range !{i32 0, i32 906}
  %t56 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t58 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, i32 %t55, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d135, i32 0, i32 1) }, { i64, ptr } %t56, { i64, ptr } %t54, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t58, ptr %l13
  br label %bb5
bb5:
  %t59 = load %"compiler/diagmsg:Msg", ptr %l13
  store %"compiler/diagmsg:Msg" %t59, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCannotRun(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 22, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d136, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d136, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t7, i64 %t8)
  %t16 = getelementptr i8, ptr %t15, i64 %t8
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d137, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaseIsPrivate(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 525, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d138, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d138, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d139, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d139, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l2
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  call void @olang_textcopy(ptr %t18, ptr %t7, i64 %t8)
  %t19 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t18, 1
  %t24 = load i64, ptr %l2
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d140, i32 0, i32 1) }, { i64, ptr } %t31, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t34, ptr %l7
  br label %bb3
bb3:
  %t35 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t35, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaseTestNotEnum(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 509, ptr %l2
  %t1 = ptrtoint ptr %v2 to i64
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v2)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t9 = extractvalue { i64, ptr } %a0, 1
  %t10 = extractvalue { i64, ptr } %a0, 0
  %t11 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d141, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d141, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t15 = extractvalue { i64, ptr } %a1, 1
  %t16 = extractvalue { i64, ptr } %a1, 0
  %t17 = add i64 %t13, %t16
  %t18 = load i64, ptr %l3
  %t19 = inttoptr i64 %t18 to ptr
  %t20 = call ptr @__olang_scope_alloc(ptr %t19, i64 %t17)
  call void @olang_textcopy(ptr %t20, ptr %t9, i64 %t10)
  %t21 = getelementptr i8, ptr %t20, i64 %t10
  call void @olang_textcopy(ptr %t21, ptr %t11, i64 %t12)
  %t22 = getelementptr i8, ptr %t21, i64 %t12
  call void @olang_textcopy(ptr %t22, ptr %t15, i64 %t16)
  %t23 = insertvalue { i64, ptr } undef, i64 %t17, 0
  %t24 = insertvalue { i64, ptr } %t23, ptr %t20, 1
  %t26 = load i64, ptr %l3
  %t27 = inttoptr i64 %t26 to ptr
  %t28 = extractvalue { i64, ptr } %t24, 0
  %t29 = extractvalue { i64, ptr } %t24, 1
  %t30 = mul i64 %t28, 1
  %t31 = call ptr @__olang_scope_alloc(ptr %t27, i64 %t30)
  call void @llvm.memcpy.p0.p0.i64(ptr %t31, ptr %t29, i64 %t30, i1 false)
  %t32 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t33 = insertvalue { i64, ptr } %t32, ptr %t31, 1
  %t34 = load i32, ptr %l2, !range !{i32 0, i32 906}
  %t36 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, i32 %t34, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d142, i32 0, i32 1) }, { i64, ptr } %t33, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t36, ptr %l9
  br label %bb3
bb3:
  %t37 = load %"compiler/diagmsg:Msg", ptr %l9
  store %"compiler/diagmsg:Msg" %t37, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCatchNameInTask(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 803, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e4
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d143, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d143, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d144, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d144, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l2
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  call void @olang_textcopy(ptr %t18, ptr %t7, i64 %t8)
  %t19 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t18, 1
  %t24 = load i64, ptr %l2
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d145, i32 0, i32 1) }, { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d146, i32 0, i32 1) }, { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d147, i32 0, i32 1) }, { i64, ptr } %t31)
  store %"compiler/diagmsg:Msg" %t34, ptr %l7
  br label %bb3
bb3:
  %t35 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t35, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCatchNameUnused(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 801, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } %a0, 1
  %t9 = extractvalue { i64, ptr } %a0, 0
  %t10 = extractvalue { i64, ptr } { i64 75, ptr getelementptr inbounds (<{ i64, [75 x i8] }>, ptr @.d148, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 75, ptr getelementptr inbounds (<{ i64, [75 x i8] }>, ptr @.d148, i32 0, i32 1) }, 0
  %t12 = add i64 %t9, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t8, i64 %t9)
  %t16 = getelementptr i8, ptr %t15, i64 %t9
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d149, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCharNewline(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 71, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d150, i32 0, i32 1) }, { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d151, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eClauseLastValue(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 557, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 66, ptr getelementptr inbounds (<{ i64, [66 x i8] }>, ptr @.d152, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 66, ptr getelementptr inbounds (<{ i64, [66 x i8] }>, ptr @.d152, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d153, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d153, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l2
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  call void @olang_textcopy(ptr %t18, ptr %t7, i64 %t8)
  %t19 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t18, 1
  %t24 = load i64, ptr %l2
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d154, i32 0, i32 1) }, { i64, ptr } %t31, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t34, ptr %l7
  br label %bb3
bb3:
  %t35 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t35, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eComprehensionReferences(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 563, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d155, i32 0, i32 1) }, { i64, ptr } { i64 90, ptr getelementptr inbounds (<{ i64, [90 x i8] }>, ptr @.d156, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eComptimeForElem(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 869, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 60, ptr getelementptr inbounds (<{ i64, [60 x i8] }>, ptr @.d157, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 60, ptr getelementptr inbounds (<{ i64, [60 x i8] }>, ptr @.d157, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t7, i64 %t8)
  %t16 = getelementptr i8, ptr %t15, i64 %t8
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d158, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d159, i32 0, i32 1) }, { i64, ptr } { i64 54, ptr getelementptr inbounds (<{ i64, [54 x i8] }>, ptr @.d160, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eComptimeForSource(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 868, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 48, ptr getelementptr inbounds (<{ i64, [48 x i8] }>, ptr @.d161, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 48, ptr getelementptr inbounds (<{ i64, [48 x i8] }>, ptr @.d161, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t7, i64 %t8)
  %t16 = getelementptr i8, ptr %t15, i64 %t8
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d162, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d163, i32 0, i32 1) }, { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d164, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eComptimeForUnknown(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 870, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e3
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } %a0, 1
  %t9 = extractvalue { i64, ptr } %a0, 0
  %t10 = load i64, ptr %l2
  %t11 = inttoptr i64 %t10 to ptr
  %t12 = call ptr @__olang_scope_alloc(ptr %t11, i64 %t9)
  call void @olang_textcopy(ptr %t12, ptr %t8, i64 %t9)
  %t13 = insertvalue { i64, ptr } undef, i64 %t9, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr %t12, 1
  %t16 = load i64, ptr %l2
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = extractvalue { i64, ptr } %t14, 0
  %t19 = extractvalue { i64, ptr } %t14, 1
  %t20 = mul i64 %t18, 1
  %t21 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t20)
  call void @llvm.memcpy.p0.p0.i64(ptr %t21, ptr %t19, i64 %t20, i1 false)
  %t22 = insertvalue { i64, ptr } undef, i64 %t18, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t21, 1
  %t24 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t26 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t24, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d165, i32 0, i32 1) }, { i64, ptr } { i64 60, ptr getelementptr inbounds (<{ i64, [60 x i8] }>, ptr @.d166, i32 0, i32 1) }, { i64, ptr } %t23, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t26, ptr %l7
  br label %bb3
bb3:
  %t27 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t27, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eComptimeNotBaked(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 866, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e3
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } %a0, 1
  %t9 = extractvalue { i64, ptr } %a0, 0
  %t10 = load i64, ptr %l2
  %t11 = inttoptr i64 %t10 to ptr
  %t12 = call ptr @__olang_scope_alloc(ptr %t11, i64 %t9)
  call void @olang_textcopy(ptr %t12, ptr %t8, i64 %t9)
  %t13 = insertvalue { i64, ptr } undef, i64 %t9, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr %t12, 1
  %t16 = load i64, ptr %l2
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = extractvalue { i64, ptr } %t14, 0
  %t19 = extractvalue { i64, ptr } %t14, 1
  %t20 = mul i64 %t18, 1
  %t21 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t20)
  call void @llvm.memcpy.p0.p0.i64(ptr %t21, ptr %t19, i64 %t20, i1 false)
  %t22 = insertvalue { i64, ptr } undef, i64 %t18, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t21, 1
  %t24 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t26 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t24, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d167, i32 0, i32 1) }, { i64, ptr } { i64 48, ptr getelementptr inbounds (<{ i64, [48 x i8] }>, ptr @.d168, i32 0, i32 1) }, { i64, ptr } %t23, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t26, ptr %l7
  br label %bb3
bb3:
  %t27 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t27, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondCycle(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 96, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } %a0, 1
  %t9 = extractvalue { i64, ptr } %a0, 0
  %t10 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d169, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d169, i32 0, i32 1) }, 0
  %t12 = add i64 %t9, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t8, i64 %t9)
  %t16 = getelementptr i8, ptr %t15, i64 %t9
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d170, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondDecidedNotBool(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 765, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d171, i32 0, i32 1) }, { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d172, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondName(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 93, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } %a0, 1
  %t9 = extractvalue { i64, ptr } %a0, 0
  %t10 = extractvalue { i64, ptr } { i64 62, ptr getelementptr inbounds (<{ i64, [62 x i8] }>, ptr @.d173, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 62, ptr getelementptr inbounds (<{ i64, [62 x i8] }>, ptr @.d173, i32 0, i32 1) }, 0
  %t12 = add i64 %t9, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t8, i64 %t9)
  %t16 = getelementptr i8, ptr %t15, i64 %t9
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d174, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondNotBool(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 99, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d175, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d175, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d176, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d176, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l2
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  call void @olang_textcopy(ptr %t18, ptr %t7, i64 %t8)
  %t19 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t18, 1
  %t24 = load i64, ptr %l2
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d177, i32 0, i32 1) }, { i64, ptr } %t31, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t34, ptr %l7
  br label %bb3
bb3:
  %t35 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t35, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondNotBoolType(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 477, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d178, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d178, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t7, i64 %t8)
  %t16 = getelementptr i8, ptr %t15, i64 %t8
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d179, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondTooDeep(ptr %v0, i64 %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 746, ptr %l1
  %t1 = ptrtoint ptr %v0 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v0)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 64, ptr getelementptr inbounds (<{ i64, [64 x i8] }>, ptr @.d180, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 64, ptr getelementptr inbounds (<{ i64, [64 x i8] }>, ptr @.d180, i32 0, i32 1) }, 0
  %t10 = call i64 @__olang_fmt_i64(ptr null, i64 %a0)
  %t11 = add i64 %t8, %t10
  %t12 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d181, i32 0, i32 1) }, 1
  %t13 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d181, i32 0, i32 1) }, 0
  %t14 = add i64 %t11, %t13
  %t15 = load i64, ptr %l2
  %t16 = inttoptr i64 %t15 to ptr
  %t17 = call ptr @__olang_scope_alloc(ptr %t16, i64 %t14)
  call void @olang_textcopy(ptr %t17, ptr %t7, i64 %t8)
  %t18 = getelementptr i8, ptr %t17, i64 %t8
  %t19 = call i64 @__olang_fmt_i64(ptr %t18, i64 %a0)
  %t20 = getelementptr i8, ptr %t18, i64 %t10
  call void @olang_textcopy(ptr %t20, ptr %t12, i64 %t13)
  %t21 = insertvalue { i64, ptr } undef, i64 %t14, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t17, 1
  %t24 = load i64, ptr %l2
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d182, i32 0, i32 1) }, { i64, ptr } %t31, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t34, ptr %l7
  br label %bb3
bb3:
  %t35 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t35, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondUndecidable(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 762, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e3
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } %a0, 1
  %t9 = extractvalue { i64, ptr } %a0, 0
  %t10 = load i64, ptr %l2
  %t11 = inttoptr i64 %t10 to ptr
  %t12 = call ptr @__olang_scope_alloc(ptr %t11, i64 %t9)
  call void @olang_textcopy(ptr %t12, ptr %t8, i64 %t9)
  %t13 = insertvalue { i64, ptr } undef, i64 %t9, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr %t12, 1
  %t16 = load i64, ptr %l2
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = extractvalue { i64, ptr } %t14, 0
  %t19 = extractvalue { i64, ptr } %t14, 1
  %t20 = mul i64 %t18, 1
  %t21 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t20)
  call void @llvm.memcpy.p0.p0.i64(ptr %t21, ptr %t19, i64 %t20, i1 false)
  %t22 = insertvalue { i64, ptr } undef, i64 %t18, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t21, 1
  %t24 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t26 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t24, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d183, i32 0, i32 1) }, { i64, ptr } { i64 58, ptr getelementptr inbounds (<{ i64, [58 x i8] }>, ptr @.d184, i32 0, i32 1) }, { i64, ptr } %t23, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t26, ptr %l7
  br label %bb3
bb3:
  %t27 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t27, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondUnseen(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 763, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d185, i32 0, i32 1) }, { i64, ptr } { i64 92, ptr getelementptr inbounds (<{ i64, [92 x i8] }>, ptr @.d186, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eConstToMutRef(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 229, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e4
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d187, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d187, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t7, i64 %t8)
  %t16 = getelementptr i8, ptr %t15, i64 %t8
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d188, i32 0, i32 1) }, { i64, ptr } { i64 62, ptr getelementptr inbounds (<{ i64, [62 x i8] }>, ptr @.d189, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d190, i32 0, i32 1) }, { i64, ptr } %t27)
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eConstraintNotTrait(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 167, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } %a0, 1
  %t9 = extractvalue { i64, ptr } %a0, 0
  %t10 = extractvalue { i64, ptr } { i64 55, ptr getelementptr inbounds (<{ i64, [55 x i8] }>, ptr @.d191, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 55, ptr getelementptr inbounds (<{ i64, [55 x i8] }>, ptr @.d191, i32 0, i32 1) }, 0
  %t12 = add i64 %t9, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t8, i64 %t9)
  %t16 = getelementptr i8, ptr %t15, i64 %t9
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d192, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } { i64 75, ptr getelementptr inbounds (<{ i64, [75 x i8] }>, ptr @.d193, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eConstraintUnmetHash(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca i64
  %l11 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 152, ptr %l3
  %t1 = ptrtoint ptr %v3 to i64
  store i64 %t1, ptr %l4, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v3)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d194, i32 0, i32 1) }, 1
  %t13 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d194, i32 0, i32 1) }, 0
  %t14 = add i64 %t11, %t13
  %t16 = extractvalue { i64, ptr } %a1, 1
  %t17 = extractvalue { i64, ptr } %a1, 0
  %t18 = add i64 %t14, %t17
  %t19 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d195, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d195, i32 0, i32 1) }, 0
  %t21 = add i64 %t18, %t20
  %t23 = extractvalue { i64, ptr } %a2, 1
  %t24 = extractvalue { i64, ptr } %a2, 0
  %t25 = add i64 %t21, %t24
  %t26 = load i64, ptr %l4
  %t27 = inttoptr i64 %t26 to ptr
  %t28 = call ptr @__olang_scope_alloc(ptr %t27, i64 %t25)
  call void @olang_textcopy(ptr %t28, ptr %t10, i64 %t11)
  %t29 = getelementptr i8, ptr %t28, i64 %t11
  call void @olang_textcopy(ptr %t29, ptr %t12, i64 %t13)
  %t30 = getelementptr i8, ptr %t29, i64 %t13
  call void @olang_textcopy(ptr %t30, ptr %t16, i64 %t17)
  %t31 = getelementptr i8, ptr %t30, i64 %t17
  call void @olang_textcopy(ptr %t31, ptr %t19, i64 %t20)
  %t32 = getelementptr i8, ptr %t31, i64 %t20
  call void @olang_textcopy(ptr %t32, ptr %t23, i64 %t24)
  %t33 = insertvalue { i64, ptr } undef, i64 %t25, 0
  %t34 = insertvalue { i64, ptr } %t33, ptr %t28, 1
  %t36 = load i64, ptr %l4
  %t37 = inttoptr i64 %t36 to ptr
  %t38 = extractvalue { i64, ptr } %t34, 0
  %t39 = extractvalue { i64, ptr } %t34, 1
  %t40 = mul i64 %t38, 1
  %t41 = call ptr @__olang_scope_alloc(ptr %t37, i64 %t40)
  call void @llvm.memcpy.p0.p0.i64(ptr %t41, ptr %t39, i64 %t40, i1 false)
  %t42 = insertvalue { i64, ptr } undef, i64 %t38, 0
  %t43 = insertvalue { i64, ptr } %t42, ptr %t41, 1
  %t44 = load i32, ptr %l3, !range !{i32 0, i32 906}
  %t46 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, ptr %v3, ptr %v3, i32 %t44, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d196, i32 0, i32 1) }, { i64, ptr } %t43, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d197, i32 0, i32 1) }, { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d198, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t46, ptr %l11
  br label %bb3
bb3:
  %t47 = load %"compiler/diagmsg:Msg", ptr %l11
  store %"compiler/diagmsg:Msg" %t47, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eConversionRepresentation(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 405, ptr %l2
  %t1 = ptrtoint ptr %v2 to i64
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v2)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t9 = extractvalue { i64, ptr } %a0, 1
  %t10 = extractvalue { i64, ptr } %a0, 0
  %t11 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d199, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d199, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t15 = extractvalue { i64, ptr } %a1, 1
  %t16 = extractvalue { i64, ptr } %a1, 0
  %t17 = add i64 %t13, %t16
  %t18 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d200, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d200, i32 0, i32 1) }, 0
  %t20 = add i64 %t17, %t19
  %t21 = load i64, ptr %l3
  %t22 = inttoptr i64 %t21 to ptr
  %t23 = call ptr @__olang_scope_alloc(ptr %t22, i64 %t20)
  call void @olang_textcopy(ptr %t23, ptr %t9, i64 %t10)
  %t24 = getelementptr i8, ptr %t23, i64 %t10
  call void @olang_textcopy(ptr %t24, ptr %t11, i64 %t12)
  %t25 = getelementptr i8, ptr %t24, i64 %t12
  call void @olang_textcopy(ptr %t25, ptr %t15, i64 %t16)
  %t26 = getelementptr i8, ptr %t25, i64 %t16
  call void @olang_textcopy(ptr %t26, ptr %t18, i64 %t19)
  %t27 = insertvalue { i64, ptr } undef, i64 %t20, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t23, 1
  %t30 = load i64, ptr %l3
  %t31 = inttoptr i64 %t30 to ptr
  %t32 = extractvalue { i64, ptr } %t28, 0
  %t33 = extractvalue { i64, ptr } %t28, 1
  %t34 = mul i64 %t32, 1
  %t35 = call ptr @__olang_scope_alloc(ptr %t31, i64 %t34)
  call void @llvm.memcpy.p0.p0.i64(ptr %t35, ptr %t33, i64 %t34, i1 false)
  %t36 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t35, 1
  %t38 = load i32, ptr %l2, !range !{i32 0, i32 906}
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, i32 %t38, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d201, i32 0, i32 1) }, { i64, ptr } %t37, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t40, ptr %l9
  br label %bb3
bb3:
  %t41 = load %"compiler/diagmsg:Msg", ptr %l9
  store %"compiler/diagmsg:Msg" %t41, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCtorVarsNotInferable(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 385, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d202, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d202, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 65, ptr getelementptr inbounds (<{ i64, [65 x i8] }>, ptr @.d203, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 65, ptr getelementptr inbounds (<{ i64, [65 x i8] }>, ptr @.d203, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l2
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  call void @olang_textcopy(ptr %t18, ptr %t7, i64 %t8)
  %t19 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t18, 1
  %t24 = load i64, ptr %l2
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d204, i32 0, i32 1) }, { i64, ptr } %t31, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t34, ptr %l7
  br label %bb3
bb3:
  %t35 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t35, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDeclFromNull(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 360, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d205, i32 0, i32 1) }, { i64, ptr } { i64 92, ptr getelementptr inbounds (<{ i64, [92 x i8] }>, ptr @.d206, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDefaultInStatement(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 554, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d207, i32 0, i32 1) }, { i64, ptr } { i64 67, ptr getelementptr inbounds (<{ i64, [67 x i8] }>, ptr @.d208, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDefaultNeedsCatch(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 559, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d209, i32 0, i32 1) }, { i64, ptr } { i64 54, ptr getelementptr inbounds (<{ i64, [54 x i8] }>, ptr @.d210, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDeferErrorEscapes(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 539, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d211, i32 0, i32 1) }, { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d212, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDeferLoopJump(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 714, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } %a0, 1
  %t9 = extractvalue { i64, ptr } %a0, 0
  %t10 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d213, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d213, i32 0, i32 1) }, 0
  %t12 = add i64 %t9, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t8, i64 %t9)
  %t16 = getelementptr i8, ptr %t15, i64 %t9
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d214, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d215, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDefineBuiltin(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 53, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d216, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d216, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t7, i64 %t8)
  %t16 = getelementptr i8, ptr %t15, i64 %t8
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d217, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDefineMissing(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 45, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d218, i32 0, i32 1) }, { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d219, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDestructNotName(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 581, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d220, i32 0, i32 1) }, { i64, ptr } { i64 83, ptr getelementptr inbounds (<{ i64, [83 x i8] }>, ptr @.d221, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local i64 @compiler_2fmsgs_2eDistance(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
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
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l35 = alloca i1
  %l42 = alloca i64
  %l48 = alloca i64
  %l58 = alloca i64
  %l61 = alloca i64
  %l89 = alloca i64
  %l92 = alloca i64
  %l117 = alloca i64
  %l120 = alloca i64
  %l140 = alloca i64
  %l141 = alloca { i64, ptr }
  %l145 = alloca i8
  %l146 = alloca { i64, ptr }
  %l150 = alloca i8
  %l152 = alloca i64
  %l164 = alloca i64
  %l167 = alloca i64
  %l171 = alloca i64
  %l182 = alloca i64
  %l185 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp sgt i64 %t3, 60
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l35, !tbaa !21
  br label %bb3
bb2:
  %t7 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  %t11 = icmp sgt i64 %t9, 60
  store i1 %t11, ptr %l35, !tbaa !21
  br label %bb3
bb3:
  %t13 = load i1, ptr %l35, !tbaa !21
  br i1 %t13, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s0)
  store i64 99, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t15 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t15, 0
  %t19 = add i64 %t17, 1
  store i64 %t19, ptr %l42, !tbaa !24
  %t20 = load i64, ptr %l42, !tbaa !24
  %t21 = icmp sge i64 %t20, 0
  br i1 %t21, label %bb7, label %bb8
bb7:
  %t23 = load i64, ptr %l42, !tbaa !24
  %t24 = icmp sle i64 %t23, 1152921504606846975
  br i1 %t24, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_d93addea5b815da9_e849c161ff4e7de5)
  unreachable
bb9:
  %t26 = load i64, ptr %l42, !tbaa !24
  %t27 = mul i64 %t26, 8
  %t28 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t27)
  %t29 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t30 = insertvalue { i64, ptr } %t29, ptr %t28, 1
  store { i64, ptr } %t30, ptr %l2, !tbaa !27
  %t32 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t32, 0
  %t36 = add i64 %t34, 1
  store i64 %t36, ptr %l48, !tbaa !24
  %t37 = load i64, ptr %l48, !tbaa !24
  %t38 = icmp sge i64 %t37, 0
  br i1 %t38, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_d93addea5b815da9_e849c161ff4e7de5)
  unreachable
bb11:
  %t40 = load i64, ptr %l48, !tbaa !24
  %t41 = icmp sle i64 %t40, 1152921504606846975
  br i1 %t41, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_fced1ba34c6512dc_349b310d7afbfd78)
  unreachable
bb13:
  %t43 = load i64, ptr %l48, !tbaa !24
  %t44 = mul i64 %t43, 8
  %t45 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t44)
  %t46 = insertvalue { i64, ptr } undef, i64 %t43, 0
  %t47 = insertvalue { i64, ptr } %t46, ptr %t45, 1
  store { i64, ptr } %t47, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t49 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t51 = extractvalue { i64, ptr } %t49, 0
  %t53 = add i64 %t51, 1
  store i64 %t53, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t55 = load i64, ptr %l5, !tbaa !24
  %t56 = load i64, ptr %l4, !tbaa !24
  %t59 = icmp sgt i64 %t55, %t56
  br i1 %t59, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_fced1ba34c6512dc_349b310d7afbfd78)
  unreachable
bb15:
  %t61 = load i64, ptr %l6, !tbaa !24
  %t63 = icmp sgt i64 %t61, 0
  br i1 %t63, label %bb17, label %bb18
bb16:
  store i64 0, ptr %l58, !tbaa !24
  br label %bb20
bb17:
  %t65 = load i64, ptr %l5, !tbaa !24
  %t66 = load i64, ptr %l4, !tbaa !24
  %t69 = sub i64 %t65, %t66
  %t70 = load i64, ptr %l6, !tbaa !24
  %t73 = add i64 %t69, %t70
  %t75 = sub i64 %t73, 1
  %t76 = load i64, ptr %l6, !tbaa !24
  %t79 = sdiv i64 %t75, %t76
  store i64 %t79, ptr %l61, !tbaa !24
  br label %bb19
bb18:
  store i64 0, ptr %l61, !tbaa !24
  br label %bb19
bb19:
  %t81 = load i64, ptr %l61, !tbaa !24
  store i64 %t81, ptr %l58, !tbaa !24
  br label %bb20
bb20:
  %t82 = load i64, ptr %l58, !tbaa !24
  store i64 %t82, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb21
bb21:
  %t83 = load i64, ptr %l8, !tbaa !24
  %t84 = load i64, ptr %l7, !tbaa !24
  %t87 = icmp slt i64 %t83, %t84
  %t89 = xor i1 %t87, true
  br i1 %t89, label %bb22, label %bb23
bb22:
  br label %bb26
bb23:
  br label %bb24
bb24:
  %t91 = load i64, ptr %l4, !tbaa !24
  %t92 = load i64, ptr %l8, !tbaa !24
  %t93 = load i64, ptr %l6, !tbaa !24
  %t96 = mul i64 %t92, %t93
  %t99 = add i64 %t91, %t96
  store i64 %t99, ptr %l9, !tbaa !24
  %t101 = load i64, ptr %l9, !tbaa !24
  %t102 = load i64, ptr %l9, !tbaa !24
  %t105 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t106 = load ptr, ptr %t105, !tbaa !27
  %t107 = getelementptr i64, ptr %t106, i64 %t101
  store i64 %t102, ptr %t107, !tbaa !34
  br label %bb25
bb25:
  %t108 = load i64, ptr %l8, !tbaa !24
  %t110 = add i64 %t108, 1
  store i64 %t110, ptr %l8, !tbaa !24
  br label %bb21
bb26:
  store i64 1, ptr %l10, !tbaa !24
  %t112 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t114 = extractvalue { i64, ptr } %t112, 0
  %t116 = add i64 %t114, 1
  store i64 %t116, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t118 = load i64, ptr %l11, !tbaa !24
  %t119 = load i64, ptr %l10, !tbaa !24
  %t122 = icmp sgt i64 %t118, %t119
  br i1 %t122, label %bb27, label %bb28
bb27:
  %t124 = load i64, ptr %l12, !tbaa !24
  %t126 = icmp sgt i64 %t124, 0
  br i1 %t126, label %bb29, label %bb30
bb28:
  store i64 0, ptr %l89, !tbaa !24
  br label %bb32
bb29:
  %t128 = load i64, ptr %l11, !tbaa !24
  %t129 = load i64, ptr %l10, !tbaa !24
  %t132 = sub i64 %t128, %t129
  %t133 = load i64, ptr %l12, !tbaa !24
  %t136 = add i64 %t132, %t133
  %t138 = sub i64 %t136, 1
  %t139 = load i64, ptr %l12, !tbaa !24
  %t142 = sdiv i64 %t138, %t139
  store i64 %t142, ptr %l92, !tbaa !24
  br label %bb31
bb30:
  store i64 0, ptr %l92, !tbaa !24
  br label %bb31
bb31:
  %t144 = load i64, ptr %l92, !tbaa !24
  store i64 %t144, ptr %l89, !tbaa !24
  br label %bb32
bb32:
  %t145 = load i64, ptr %l89, !tbaa !24
  store i64 %t145, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb33
bb33:
  %t146 = load i64, ptr %l14, !tbaa !24
  %t147 = load i64, ptr %l13, !tbaa !24
  %t150 = icmp slt i64 %t146, %t147
  %t152 = xor i1 %t150, true
  br i1 %t152, label %bb34, label %bb35
bb34:
  br label %bb73
bb35:
  br label %bb36
bb36:
  %t154 = load i64, ptr %l10, !tbaa !24
  %t155 = load i64, ptr %l14, !tbaa !24
  %t156 = load i64, ptr %l12, !tbaa !24
  %t159 = mul i64 %t155, %t156
  %t162 = add i64 %t154, %t159
  store i64 %t162, ptr %l15, !tbaa !24
  %t164 = load i64, ptr %l15, !tbaa !24
  %t166 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t167 = load ptr, ptr %t166, !tbaa !27
  %t168 = getelementptr i64, ptr %t167, i64 0
  store i64 %t164, ptr %t168, !tbaa !34
  store i64 1, ptr %l16, !tbaa !24
  %t169 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t171 = extractvalue { i64, ptr } %t169, 0
  %t173 = add i64 %t171, 1
  store i64 %t173, ptr %l17, !tbaa !24
  store i64 1, ptr %l18, !tbaa !24
  %t175 = load i64, ptr %l17, !tbaa !24
  %t176 = load i64, ptr %l16, !tbaa !24
  %t179 = icmp sgt i64 %t175, %t176
  br i1 %t179, label %bb37, label %bb38
bb37:
  %t181 = load i64, ptr %l18, !tbaa !24
  %t183 = icmp sgt i64 %t181, 0
  br i1 %t183, label %bb39, label %bb40
bb38:
  store i64 0, ptr %l117, !tbaa !24
  br label %bb42
bb39:
  %t185 = load i64, ptr %l17, !tbaa !24
  %t186 = load i64, ptr %l16, !tbaa !24
  %t189 = sub i64 %t185, %t186
  %t190 = load i64, ptr %l18, !tbaa !24
  %t193 = add i64 %t189, %t190
  %t195 = sub i64 %t193, 1
  %t196 = load i64, ptr %l18, !tbaa !24
  %t199 = sdiv i64 %t195, %t196
  store i64 %t199, ptr %l120, !tbaa !24
  br label %bb41
bb40:
  store i64 0, ptr %l120, !tbaa !24
  br label %bb41
bb41:
  %t201 = load i64, ptr %l120, !tbaa !24
  store i64 %t201, ptr %l117, !tbaa !24
  br label %bb42
bb42:
  %t202 = load i64, ptr %l117, !tbaa !24
  store i64 %t202, ptr %l19, !tbaa !24
  store i64 0, ptr %l20, !tbaa !24
  br label %bb43
bb43:
  %t203 = load i64, ptr %l20, !tbaa !24
  %t204 = load i64, ptr %l19, !tbaa !24
  %t207 = icmp slt i64 %t203, %t204
  %t209 = xor i1 %t207, true
  br i1 %t209, label %bb44, label %bb45
bb44:
  br label %bb59
bb45:
  br label %bb46
bb46:
  %t211 = load i64, ptr %l16, !tbaa !24
  %t212 = load i64, ptr %l20, !tbaa !24
  %t213 = load i64, ptr %l18, !tbaa !24
  %t216 = mul i64 %t212, %t213
  %t219 = add i64 %t211, %t216
  store i64 %t219, ptr %l21, !tbaa !24
  %t221 = load i64, ptr %l21, !tbaa !24
  %t223 = sub i64 %t221, 1
  %t225 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t226 = load ptr, ptr %t225, !tbaa !27
  %t227 = getelementptr i64, ptr %t226, i64 %t223
  %t228 = load i64, ptr %t227, !tbaa !34
  store i64 %t228, ptr %l140, !tbaa !24
  %t229 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t229, ptr %l141, !tbaa !27
  %t230 = load i64, ptr %l15, !tbaa !24
  %t232 = sub i64 %t230, 1
  %t234 = getelementptr { i64, ptr }, ptr %l141, i32 0, i32 1
  %t235 = load ptr, ptr %t234, !tbaa !27
  %t236 = getelementptr i8, ptr %t235, i64 %t232
  %t237 = load i8, ptr %t236, !tbaa !32
  %t239 = call i8 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eToLower(i8 %t237)
  store i8 %t239, ptr %l145
  br label %bb47
bb47:
  %t240 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t240, ptr %l146, !tbaa !27
  %t241 = load i64, ptr %l21, !tbaa !24
  %t243 = sub i64 %t241, 1
  %t245 = getelementptr { i64, ptr }, ptr %l146, i32 0, i32 1
  %t246 = load ptr, ptr %t245, !tbaa !27
  %t247 = getelementptr i8, ptr %t246, i64 %t243
  %t248 = load i8, ptr %t247, !tbaa !32
  %t250 = call i8 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eToLower(i8 %t248)
  store i8 %t250, ptr %l150
  br label %bb48
bb48:
  %t251 = load i8, ptr %l145, !tbaa !22
  %t252 = load i8, ptr %l150, !tbaa !22
  %t253 = icmp eq i8 %t251, %t252
  br i1 %t253, label %bb49, label %bb50
bb49:
  store i64 0, ptr %l152, !tbaa !24
  br label %bb51
bb50:
  store i64 1, ptr %l152, !tbaa !24
  br label %bb51
bb51:
  %t255 = load i64, ptr %l140, !tbaa !24
  %t256 = load i64, ptr %l152, !tbaa !24
  %t257 = add i64 %t255, %t256
  store i64 %t257, ptr %l22, !tbaa !24
  %t259 = load i64, ptr %l21, !tbaa !24
  %t261 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t262 = load ptr, ptr %t261, !tbaa !27
  %t263 = getelementptr i64, ptr %t262, i64 %t259
  %t264 = load i64, ptr %t263, !tbaa !34
  %t266 = add i64 %t264, 1
  store i64 %t266, ptr %l23, !tbaa !24
  %t268 = load i64, ptr %l21, !tbaa !24
  %t270 = sub i64 %t268, 1
  %t272 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t273 = load ptr, ptr %t272, !tbaa !27
  %t274 = getelementptr i64, ptr %t273, i64 %t270
  %t275 = load i64, ptr %t274, !tbaa !34
  %t277 = add i64 %t275, 1
  store i64 %t277, ptr %l24, !tbaa !24
  %t279 = load i64, ptr %l22, !tbaa !24
  %t280 = load i64, ptr %l23, !tbaa !24
  %t283 = icmp slt i64 %t279, %t280
  br i1 %t283, label %bb52, label %bb53
bb52:
  %t285 = load i64, ptr %l22, !tbaa !24
  store i64 %t285, ptr %l164, !tbaa !24
  br label %bb54
bb53:
  %t287 = load i64, ptr %l23, !tbaa !24
  store i64 %t287, ptr %l164, !tbaa !24
  br label %bb54
bb54:
  %t289 = load i64, ptr %l164, !tbaa !24
  store i64 %t289, ptr %l25, !tbaa !24
  %t290 = load i64, ptr %l21, !tbaa !24
  store i64 %t290, ptr %l167, !tbaa !24
  %t291 = load i64, ptr %l25, !tbaa !24
  %t292 = load i64, ptr %l24, !tbaa !24
  %t295 = icmp slt i64 %t291, %t292
  br i1 %t295, label %bb55, label %bb56
bb55:
  %t297 = load i64, ptr %l25, !tbaa !24
  store i64 %t297, ptr %l171, !tbaa !24
  br label %bb57
bb56:
  %t299 = load i64, ptr %l24, !tbaa !24
  store i64 %t299, ptr %l171, !tbaa !24
  br label %bb57
bb57:
  %t301 = load i64, ptr %l171, !tbaa !24
  %t302 = load i64, ptr %l167, !tbaa !24
  %t303 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t304 = load ptr, ptr %t303, !tbaa !27
  %t305 = getelementptr i64, ptr %t304, i64 %t302
  store i64 %t301, ptr %t305, !tbaa !34
  br label %bb58
bb58:
  %t306 = load i64, ptr %l20, !tbaa !24
  %t308 = add i64 %t306, 1
  store i64 %t308, ptr %l20, !tbaa !24
  br label %bb43
bb59:
  store i64 0, ptr %l26, !tbaa !24
  %t310 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t312 = extractvalue { i64, ptr } %t310, 0
  %t314 = add i64 %t312, 1
  store i64 %t314, ptr %l27, !tbaa !24
  store i64 1, ptr %l28, !tbaa !24
  %t316 = load i64, ptr %l27, !tbaa !24
  %t317 = load i64, ptr %l26, !tbaa !24
  %t320 = icmp sgt i64 %t316, %t317
  br i1 %t320, label %bb60, label %bb61
bb60:
  %t322 = load i64, ptr %l28, !tbaa !24
  %t324 = icmp sgt i64 %t322, 0
  br i1 %t324, label %bb62, label %bb63
bb61:
  store i64 0, ptr %l182, !tbaa !24
  br label %bb65
bb62:
  %t326 = load i64, ptr %l27, !tbaa !24
  %t327 = load i64, ptr %l26, !tbaa !24
  %t330 = sub i64 %t326, %t327
  %t331 = load i64, ptr %l28, !tbaa !24
  %t334 = add i64 %t330, %t331
  %t336 = sub i64 %t334, 1
  %t337 = load i64, ptr %l28, !tbaa !24
  %t340 = sdiv i64 %t336, %t337
  store i64 %t340, ptr %l185, !tbaa !24
  br label %bb64
bb63:
  store i64 0, ptr %l185, !tbaa !24
  br label %bb64
bb64:
  %t342 = load i64, ptr %l185, !tbaa !24
  store i64 %t342, ptr %l182, !tbaa !24
  br label %bb65
bb65:
  %t343 = load i64, ptr %l182, !tbaa !24
  store i64 %t343, ptr %l29, !tbaa !24
  store i64 0, ptr %l30, !tbaa !24
  br label %bb66
bb66:
  %t344 = load i64, ptr %l30, !tbaa !24
  %t345 = load i64, ptr %l29, !tbaa !24
  %t348 = icmp slt i64 %t344, %t345
  %t350 = xor i1 %t348, true
  br i1 %t350, label %bb67, label %bb68
bb67:
  br label %bb71
bb68:
  br label %bb69
bb69:
  %t352 = load i64, ptr %l26, !tbaa !24
  %t353 = load i64, ptr %l30, !tbaa !24
  %t354 = load i64, ptr %l28, !tbaa !24
  %t357 = mul i64 %t353, %t354
  %t360 = add i64 %t352, %t357
  store i64 %t360, ptr %l31, !tbaa !24
  %t362 = load i64, ptr %l31, !tbaa !24
  %t363 = load i64, ptr %l31, !tbaa !24
  %t365 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t366 = load ptr, ptr %t365, !tbaa !27
  %t367 = getelementptr i64, ptr %t366, i64 %t363
  %t368 = load i64, ptr %t367, !tbaa !34
  %t371 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t372 = load ptr, ptr %t371, !tbaa !27
  %t373 = getelementptr i64, ptr %t372, i64 %t362
  store i64 %t368, ptr %t373, !tbaa !34
  br label %bb70
bb70:
  %t374 = load i64, ptr %l30, !tbaa !24
  %t376 = add i64 %t374, 1
  store i64 %t376, ptr %l30, !tbaa !24
  br label %bb66
bb71:
  br label %bb72
bb72:
  %t378 = load i64, ptr %l14, !tbaa !24
  %t380 = add i64 %t378, 1
  store i64 %t380, ptr %l14, !tbaa !24
  br label %bb33
bb73:
  %t382 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t384 = extractvalue { i64, ptr } %t382, 0
  %t386 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t387 = load ptr, ptr %t386, !tbaa !27
  %t388 = getelementptr i64, ptr %t387, i64 %t384
  %t389 = load i64, ptr %t388, !tbaa !34
  call void @__olang_scope_close(ptr %s0)
  store i64 %t389, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDivisorProven(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 467, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d222, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d222, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d223, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d223, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l2
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  call void @olang_textcopy(ptr %t18, ptr %t7, i64 %t8)
  %t19 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t18, 1
  %t24 = load i64, ptr %l2
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d224, i32 0, i32 1) }, { i64, ptr } %t31, { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d225, i32 0, i32 1) }, { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d226, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t34, ptr %l7
  br label %bb3
bb3:
  %t35 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t35, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDropCycle(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 277, ptr %l2
  %t1 = ptrtoint ptr %v2 to i64
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v2)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d227, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d227, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d228, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d228, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d229, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d229, i32 0, i32 1) }, 0
  %t23 = add i64 %t20, %t22
  %t24 = load i64, ptr %l3
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t23)
  call void @olang_textcopy(ptr %t26, ptr %t8, i64 %t9)
  %t27 = getelementptr i8, ptr %t26, i64 %t9
  call void @olang_textcopy(ptr %t27, ptr %t11, i64 %t12)
  %t28 = getelementptr i8, ptr %t27, i64 %t12
  call void @olang_textcopy(ptr %t28, ptr %t14, i64 %t15)
  %t29 = getelementptr i8, ptr %t28, i64 %t15
  call void @olang_textcopy(ptr %t29, ptr %t18, i64 %t19)
  %t30 = getelementptr i8, ptr %t29, i64 %t19
  call void @olang_textcopy(ptr %t30, ptr %t21, i64 %t22)
  %t31 = insertvalue { i64, ptr } undef, i64 %t23, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t26, 1
  %t34 = load i64, ptr %l3
  %t35 = inttoptr i64 %t34 to ptr
  %t36 = extractvalue { i64, ptr } %t32, 0
  %t37 = extractvalue { i64, ptr } %t32, 1
  %t38 = mul i64 %t36, 1
  %t39 = call ptr @__olang_scope_alloc(ptr %t35, i64 %t38)
  call void @llvm.memcpy.p0.p0.i64(ptr %t39, ptr %t37, i64 %t38, i1 false)
  %t40 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t39, 1
  %t42 = load i32, ptr %l2, !range !{i32 0, i32 906}
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d230, i32 0, i32 1) }, { i64, ptr } %t41, { i64, ptr } { i64 93, ptr getelementptr inbounds (<{ i64, [93 x i8] }>, ptr @.d231, i32 0, i32 1) }, { i64, ptr } { i64 92, ptr getelementptr inbounds (<{ i64, [92 x i8] }>, ptr @.d232, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t44, ptr %l9
  br label %bb3
bb3:
  %t45 = load %"compiler/diagmsg:Msg", ptr %l9
  store %"compiler/diagmsg:Msg" %t45, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDropTempRegistered(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca i32
  %l3 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l18 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i32 279, ptr %l2
  %t1 = ptrtoint ptr %v2 to i64
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v2)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t6 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t7 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d233, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d233, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %t6, 1
  %t11 = extractvalue { i64, ptr } %t6, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d234, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d234, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l3
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  call void @olang_textcopy(ptr %t18, ptr %t7, i64 %t8)
  %t19 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t18, 1
  %t24 = load i64, ptr %l3
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  store { i64, ptr } %t31, ptr %l7, !tbaa !27
  %t32 = ptrtoint ptr %v2 to i64
  store i64 %t32, ptr %l8, !tbaa !24
  %t33 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e3
  br i1 %t33, label %bb3, label %bb4
bb3:
  %t35 = call ptr @__olang_region_make(ptr %v2)
  %t36 = ptrtoint ptr %t35 to i64
  store i64 %t36, ptr %l8, !tbaa !24
  br label %bb4
bb4:
  %t37 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t38 = extractvalue { i64, ptr } { i64 92, ptr getelementptr inbounds (<{ i64, [92 x i8] }>, ptr @.d235, i32 0, i32 1) }, 1
  %t39 = extractvalue { i64, ptr } { i64 92, ptr getelementptr inbounds (<{ i64, [92 x i8] }>, ptr @.d235, i32 0, i32 1) }, 0
  %t41 = extractvalue { i64, ptr } %t37, 1
  %t42 = extractvalue { i64, ptr } %t37, 0
  %t43 = add i64 %t39, %t42
  %t44 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d236, i32 0, i32 1) }, 1
  %t45 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d236, i32 0, i32 1) }, 0
  %t46 = add i64 %t43, %t45
  %t47 = load i64, ptr %l8
  %t48 = inttoptr i64 %t47 to ptr
  %t49 = call ptr @__olang_scope_alloc(ptr %t48, i64 %t46)
  call void @olang_textcopy(ptr %t49, ptr %t38, i64 %t39)
  %t50 = getelementptr i8, ptr %t49, i64 %t39
  call void @olang_textcopy(ptr %t50, ptr %t41, i64 %t42)
  %t51 = getelementptr i8, ptr %t50, i64 %t42
  call void @olang_textcopy(ptr %t51, ptr %t44, i64 %t45)
  %t52 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t53 = insertvalue { i64, ptr } %t52, ptr %t49, 1
  %t55 = load i64, ptr %l8
  %t56 = inttoptr i64 %t55 to ptr
  %t57 = extractvalue { i64, ptr } %t53, 0
  %t58 = extractvalue { i64, ptr } %t53, 1
  %t59 = mul i64 %t57, 1
  %t60 = call ptr @__olang_scope_alloc(ptr %t56, i64 %t59)
  call void @llvm.memcpy.p0.p0.i64(ptr %t60, ptr %t58, i64 %t59, i1 false)
  %t61 = insertvalue { i64, ptr } undef, i64 %t57, 0
  %t62 = insertvalue { i64, ptr } %t61, ptr %t60, 1
  store { i64, ptr } %t62, ptr %l12, !tbaa !27
  %t63 = ptrtoint ptr %v2 to i64
  store i64 %t63, ptr %l13, !tbaa !24
  %t64 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e4
  br i1 %t64, label %bb5, label %bb6
bb5:
  %t66 = call ptr @__olang_region_make(ptr %v2)
  %t67 = ptrtoint ptr %t66 to i64
  store i64 %t67, ptr %l13, !tbaa !24
  br label %bb6
bb6:
  %t69 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d237, i32 0, i32 1) }, 1
  %t70 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d237, i32 0, i32 1) }, 0
  %t72 = extractvalue { i64, ptr } %a1, 1
  %t73 = extractvalue { i64, ptr } %a1, 0
  %t74 = add i64 %t70, %t73
  %t75 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d238, i32 0, i32 1) }, 1
  %t76 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d238, i32 0, i32 1) }, 0
  %t77 = add i64 %t74, %t76
  %t78 = load i64, ptr %l13
  %t79 = inttoptr i64 %t78 to ptr
  %t80 = call ptr @__olang_scope_alloc(ptr %t79, i64 %t77)
  call void @olang_textcopy(ptr %t80, ptr %t69, i64 %t70)
  %t81 = getelementptr i8, ptr %t80, i64 %t70
  call void @olang_textcopy(ptr %t81, ptr %t72, i64 %t73)
  %t82 = getelementptr i8, ptr %t81, i64 %t73
  call void @olang_textcopy(ptr %t82, ptr %t75, i64 %t76)
  %t83 = insertvalue { i64, ptr } undef, i64 %t77, 0
  %t84 = insertvalue { i64, ptr } %t83, ptr %t80, 1
  %t86 = load i64, ptr %l13
  %t87 = inttoptr i64 %t86 to ptr
  %t88 = extractvalue { i64, ptr } %t84, 0
  %t89 = extractvalue { i64, ptr } %t84, 1
  %t90 = mul i64 %t88, 1
  %t91 = call ptr @__olang_scope_alloc(ptr %t87, i64 %t90)
  call void @llvm.memcpy.p0.p0.i64(ptr %t91, ptr %t89, i64 %t90, i1 false)
  %t92 = insertvalue { i64, ptr } undef, i64 %t88, 0
  %t93 = insertvalue { i64, ptr } %t92, ptr %t91, 1
  %t94 = load i32, ptr %l2, !range !{i32 0, i32 906}
  %t95 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t96 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t98 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, i32 %t94, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d239, i32 0, i32 1) }, { i64, ptr } %t95, { i64, ptr } %t96, { i64, ptr } %t93)
  store %"compiler/diagmsg:Msg" %t98, ptr %l18
  br label %bb7
bb7:
  %t99 = load %"compiler/diagmsg:Msg", ptr %l18
  store %"compiler/diagmsg:Msg" %t99, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eElemOutlived(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 587, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d240, i32 0, i32 1) }, { i64, ptr } { i64 87, ptr getelementptr inbounds (<{ i64, [87 x i8] }>, ptr @.d241, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eElemsNotSeq(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 491, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e3
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } %a0, 1
  %t9 = extractvalue { i64, ptr } %a0, 0
  %t10 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d242, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d242, i32 0, i32 1) }, 0
  %t12 = add i64 %t9, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t8, i64 %t9)
  %t16 = getelementptr i8, ptr %t15, i64 %t9
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d243, i32 0, i32 1) }, { i64, ptr } { i64 70, ptr getelementptr inbounds (<{ i64, [70 x i8] }>, ptr @.d244, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eEmbedNotRead(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 543, ptr %l2
  %t1 = ptrtoint ptr %v2 to i64
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v2)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d245, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d245, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d246, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d246, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = load i64, ptr %l3
  %t22 = inttoptr i64 %t21 to ptr
  %t23 = call ptr @__olang_scope_alloc(ptr %t22, i64 %t20)
  call void @olang_textcopy(ptr %t23, ptr %t8, i64 %t9)
  %t24 = getelementptr i8, ptr %t23, i64 %t9
  call void @olang_textcopy(ptr %t24, ptr %t11, i64 %t12)
  %t25 = getelementptr i8, ptr %t24, i64 %t12
  call void @olang_textcopy(ptr %t25, ptr %t14, i64 %t15)
  %t26 = getelementptr i8, ptr %t25, i64 %t15
  call void @olang_textcopy(ptr %t26, ptr %t18, i64 %t19)
  %t27 = insertvalue { i64, ptr } undef, i64 %t20, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t23, 1
  %t30 = load i64, ptr %l3
  %t31 = inttoptr i64 %t30 to ptr
  %t32 = extractvalue { i64, ptr } %t28, 0
  %t33 = extractvalue { i64, ptr } %t28, 1
  %t34 = mul i64 %t32, 1
  %t35 = call ptr @__olang_scope_alloc(ptr %t31, i64 %t34)
  call void @llvm.memcpy.p0.p0.i64(ptr %t35, ptr %t33, i64 %t34, i1 false)
  %t36 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t35, 1
  %t38 = load i32, ptr %l2, !range !{i32 0, i32 906}
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, i32 %t38, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d247, i32 0, i32 1) }, { i64, ptr } %t37, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t40, ptr %l9
  br label %bb3
bb3:
  %t41 = load %"compiler/diagmsg:Msg", ptr %l9
  store %"compiler/diagmsg:Msg" %t41, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eEmbedPathUnknown(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 540, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d248, i32 0, i32 1) }, { i64, ptr } { i64 81, ptr getelementptr inbounds (<{ i64, [81 x i8] }>, ptr @.d249, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eEnumCaseInUse(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 197, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d250, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d250, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d251, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d251, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l2
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  call void @olang_textcopy(ptr %t18, ptr %t7, i64 %t8)
  %t19 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t18, 1
  %t24 = load i64, ptr %l2
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d252, i32 0, i32 1) }, { i64, ptr } %t31, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t34, ptr %l7
  br label %bb3
bb3:
  %t35 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t35, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrComparedNotError(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca i64
  %l11 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 805, ptr %l3
  %t1 = ptrtoint ptr %v3 to i64
  store i64 %t1, ptr %l4, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v3)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d253, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d253, i32 0, i32 1) }, 0
  %t12 = extractvalue { i64, ptr } %a0, 1
  %t13 = extractvalue { i64, ptr } %a0, 0
  %t14 = add i64 %t10, %t13
  %t15 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d254, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d254, i32 0, i32 1) }, 0
  %t17 = add i64 %t14, %t16
  %t19 = extractvalue { i64, ptr } %a1, 1
  %t20 = extractvalue { i64, ptr } %a1, 0
  %t21 = add i64 %t17, %t20
  %t22 = extractvalue { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d255, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d255, i32 0, i32 1) }, 0
  %t24 = add i64 %t21, %t23
  %t26 = extractvalue { i64, ptr } %a2, 1
  %t27 = extractvalue { i64, ptr } %a2, 0
  %t28 = add i64 %t24, %t27
  %t29 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d253, i32 0, i32 1) }, 1
  %t30 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d253, i32 0, i32 1) }, 0
  %t31 = add i64 %t28, %t30
  %t32 = load i64, ptr %l4
  %t33 = inttoptr i64 %t32 to ptr
  %t34 = call ptr @__olang_scope_alloc(ptr %t33, i64 %t31)
  call void @olang_textcopy(ptr %t34, ptr %t9, i64 %t10)
  %t35 = getelementptr i8, ptr %t34, i64 %t10
  call void @olang_textcopy(ptr %t35, ptr %t12, i64 %t13)
  %t36 = getelementptr i8, ptr %t35, i64 %t13
  call void @olang_textcopy(ptr %t36, ptr %t15, i64 %t16)
  %t37 = getelementptr i8, ptr %t36, i64 %t16
  call void @olang_textcopy(ptr %t37, ptr %t19, i64 %t20)
  %t38 = getelementptr i8, ptr %t37, i64 %t20
  call void @olang_textcopy(ptr %t38, ptr %t22, i64 %t23)
  %t39 = getelementptr i8, ptr %t38, i64 %t23
  call void @olang_textcopy(ptr %t39, ptr %t26, i64 %t27)
  %t40 = getelementptr i8, ptr %t39, i64 %t27
  call void @olang_textcopy(ptr %t40, ptr %t29, i64 %t30)
  %t41 = insertvalue { i64, ptr } undef, i64 %t31, 0
  %t42 = insertvalue { i64, ptr } %t41, ptr %t34, 1
  %t44 = load i64, ptr %l4
  %t45 = inttoptr i64 %t44 to ptr
  %t46 = extractvalue { i64, ptr } %t42, 0
  %t47 = extractvalue { i64, ptr } %t42, 1
  %t48 = mul i64 %t46, 1
  %t49 = call ptr @__olang_scope_alloc(ptr %t45, i64 %t48)
  call void @llvm.memcpy.p0.p0.i64(ptr %t49, ptr %t47, i64 %t48, i1 false)
  %t50 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr %t49, 1
  %t52 = load i32, ptr %l3, !range !{i32 0, i32 906}
  %t54 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, ptr %v3, ptr %v3, i32 %t52, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d256, i32 0, i32 1) }, { i64, ptr } %t51, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t54, ptr %l11
  br label %bb3
bb3:
  %t55 = load %"compiler/diagmsg:Msg", ptr %l11
  store %"compiler/diagmsg:Msg" %t55, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrSetArgUnwanted(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 207, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } %a0, 1
  %t9 = extractvalue { i64, ptr } %a0, 0
  %t10 = extractvalue { i64, ptr } { i64 59, ptr getelementptr inbounds (<{ i64, [59 x i8] }>, ptr @.d257, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 59, ptr getelementptr inbounds (<{ i64, [59 x i8] }>, ptr @.d257, i32 0, i32 1) }, 0
  %t12 = add i64 %t9, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t8, i64 %t9)
  %t16 = getelementptr i8, ptr %t15, i64 %t9
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d258, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrorAfterQuestion(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 91, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d259, i32 0, i32 1) }, { i64, ptr } { i64 85, ptr getelementptr inbounds (<{ i64, [85 x i8] }>, ptr @.d260, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrorMethodGiven(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 825, ptr %l2
  %t1 = ptrtoint ptr %v2 to i64
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v2)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d261, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d261, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a1, 1
  %t12 = extractvalue { i64, ptr } %a1, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d262, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d262, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a0, 1
  %t19 = extractvalue { i64, ptr } %a0, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d263, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d263, i32 0, i32 1) }, 0
  %t23 = add i64 %t20, %t22
  %t24 = load i64, ptr %l3
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t23)
  call void @olang_textcopy(ptr %t26, ptr %t8, i64 %t9)
  %t27 = getelementptr i8, ptr %t26, i64 %t9
  call void @olang_textcopy(ptr %t27, ptr %t11, i64 %t12)
  %t28 = getelementptr i8, ptr %t27, i64 %t12
  call void @olang_textcopy(ptr %t28, ptr %t14, i64 %t15)
  %t29 = getelementptr i8, ptr %t28, i64 %t15
  call void @olang_textcopy(ptr %t29, ptr %t18, i64 %t19)
  %t30 = getelementptr i8, ptr %t29, i64 %t19
  call void @olang_textcopy(ptr %t30, ptr %t21, i64 %t22)
  %t31 = insertvalue { i64, ptr } undef, i64 %t23, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t26, 1
  %t34 = load i64, ptr %l3
  %t35 = inttoptr i64 %t34 to ptr
  %t36 = extractvalue { i64, ptr } %t32, 0
  %t37 = extractvalue { i64, ptr } %t32, 1
  %t38 = mul i64 %t36, 1
  %t39 = call ptr @__olang_scope_alloc(ptr %t35, i64 %t38)
  call void @llvm.memcpy.p0.p0.i64(ptr %t39, ptr %t37, i64 %t38, i1 false)
  %t40 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t39, 1
  %t42 = load i32, ptr %l2, !range !{i32 0, i32 906}
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d264, i32 0, i32 1) }, { i64, ptr } %t41, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d265, i32 0, i32 1) }, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d266, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t44, ptr %l9
  br label %bb3
bb3:
  %t45 = load %"compiler/diagmsg:Msg", ptr %l9
  store %"compiler/diagmsg:Msg" %t45, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrorUndeclared(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 657, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d267, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d267, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d268, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d268, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l2
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  call void @olang_textcopy(ptr %t18, ptr %t7, i64 %t8)
  %t19 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t18, 1
  %t24 = load i64, ptr %l2
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d269, i32 0, i32 1) }, { i64, ptr } %t31, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t34, ptr %l7
  br label %bb3
bb3:
  %t35 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t35, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrorWordTooFar(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 653, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d270, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d270, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d271, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d271, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l2
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  call void @olang_textcopy(ptr %t18, ptr %t7, i64 %t8)
  %t19 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t18, 1
  %t24 = load i64, ptr %l2
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d272, i32 0, i32 1) }, { i64, ptr } %t31, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d273, i32 0, i32 1) }, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d274, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t34, ptr %l7
  br label %bb3
bb3:
  %t35 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t35, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eExpected(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 82, ptr %l2
  %t1 = ptrtoint ptr %v2 to i64
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v2)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d275, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d275, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d276, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d276, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = load i64, ptr %l3
  %t22 = inttoptr i64 %t21 to ptr
  %t23 = call ptr @__olang_scope_alloc(ptr %t22, i64 %t20)
  call void @olang_textcopy(ptr %t23, ptr %t8, i64 %t9)
  %t24 = getelementptr i8, ptr %t23, i64 %t9
  call void @olang_textcopy(ptr %t24, ptr %t11, i64 %t12)
  %t25 = getelementptr i8, ptr %t24, i64 %t12
  call void @olang_textcopy(ptr %t25, ptr %t14, i64 %t15)
  %t26 = getelementptr i8, ptr %t25, i64 %t15
  call void @olang_textcopy(ptr %t26, ptr %t18, i64 %t19)
  %t27 = insertvalue { i64, ptr } undef, i64 %t20, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t23, 1
  %t30 = load i64, ptr %l3
  %t31 = inttoptr i64 %t30 to ptr
  %t32 = extractvalue { i64, ptr } %t28, 0
  %t33 = extractvalue { i64, ptr } %t28, 1
  %t34 = mul i64 %t32, 1
  %t35 = call ptr @__olang_scope_alloc(ptr %t31, i64 %t34)
  call void @llvm.memcpy.p0.p0.i64(ptr %t35, ptr %t33, i64 %t34, i1 false)
  %t36 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t35, 1
  %t38 = load i32, ptr %l2, !range !{i32 0, i32 906}
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, i32 %t38, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d277, i32 0, i32 1) }, { i64, ptr } %t37, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t40, ptr %l9
  br label %bb3
bb3:
  %t41 = load %"compiler/diagmsg:Msg", ptr %l9
  store %"compiler/diagmsg:Msg" %t41, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eExplainNoItem(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 35, ptr %l2
  %t1 = ptrtoint ptr %v2 to i64
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v2)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d278, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d278, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d279, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d279, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = load i64, ptr %l3
  %t22 = inttoptr i64 %t21 to ptr
  %t23 = call ptr @__olang_scope_alloc(ptr %t22, i64 %t20)
  call void @olang_textcopy(ptr %t23, ptr %t8, i64 %t9)
  %t24 = getelementptr i8, ptr %t23, i64 %t9
  call void @olang_textcopy(ptr %t24, ptr %t11, i64 %t12)
  %t25 = getelementptr i8, ptr %t24, i64 %t12
  call void @olang_textcopy(ptr %t25, ptr %t14, i64 %t15)
  %t26 = getelementptr i8, ptr %t25, i64 %t15
  call void @olang_textcopy(ptr %t26, ptr %t18, i64 %t19)
  %t27 = insertvalue { i64, ptr } undef, i64 %t20, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t23, 1
  %t30 = load i64, ptr %l3
  %t31 = inttoptr i64 %t30 to ptr
  %t32 = extractvalue { i64, ptr } %t28, 0
  %t33 = extractvalue { i64, ptr } %t28, 1
  %t34 = mul i64 %t32, 1
  %t35 = call ptr @__olang_scope_alloc(ptr %t31, i64 %t34)
  call void @llvm.memcpy.p0.p0.i64(ptr %t35, ptr %t33, i64 %t34, i1 false)
  %t36 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t35, 1
  %t38 = load i32, ptr %l2, !range !{i32 0, i32 906}
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, i32 %t38, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d280, i32 0, i32 1) }, { i64, ptr } %t37, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t40, ptr %l9
  br label %bb3
bb3:
  %t41 = load %"compiler/diagmsg:Msg", ptr %l9
  store %"compiler/diagmsg:Msg" %t41, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eExportGeneric(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 210, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d281, i32 0, i32 1) }, { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d282, i32 0, i32 1) }, { i64, ptr } { i64 65, ptr getelementptr inbounds (<{ i64, [65 x i8] }>, ptr @.d283, i32 0, i32 1) }, { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d284, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eExportObligation(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 214, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 58, ptr getelementptr inbounds (<{ i64, [58 x i8] }>, ptr @.d285, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 58, ptr getelementptr inbounds (<{ i64, [58 x i8] }>, ptr @.d285, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d286, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d286, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l2
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  call void @olang_textcopy(ptr %t18, ptr %t7, i64 %t8)
  %t19 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t18, 1
  %t24 = load i64, ptr %l2
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d287, i32 0, i32 1) }, { i64, ptr } %t31, { i64, ptr } { i64 60, ptr getelementptr inbounds (<{ i64, [60 x i8] }>, ptr @.d288, i32 0, i32 1) }, { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d289, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t34, ptr %l7
  br label %bb3
bb3:
  %t35 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t35, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eExtendsNotBase(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 238, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d290, i32 0, i32 1) }, { i64, ptr } { i64 54, ptr getelementptr inbounds (<{ i64, [54 x i8] }>, ptr @.d291, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eExternResult(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 216, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } %a0, 1
  %t9 = extractvalue { i64, ptr } %a0, 0
  %t10 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d292, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d292, i32 0, i32 1) }, 0
  %t12 = add i64 %t9, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t8, i64 %t9)
  %t16 = getelementptr i8, ptr %t15, i64 %t9
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d293, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } { i64 109, ptr getelementptr inbounds (<{ i64, [109 x i8] }>, ptr @.d294, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eExternType(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 208, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } %a0, 1
  %t9 = extractvalue { i64, ptr } %a0, 0
  %t10 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d295, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d295, i32 0, i32 1) }, 0
  %t12 = add i64 %t9, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t8, i64 %t9)
  %t16 = getelementptr i8, ptr %t15, i64 %t9
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d296, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } { i64 157, ptr getelementptr inbounds (<{ i64, [157 x i8] }>, ptr @.d297, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFieldSetPrecompiled(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 376, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d298, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d298, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d299, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d299, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l2
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  call void @olang_textcopy(ptr %t18, ptr %t7, i64 %t8)
  %t19 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t18, 1
  %t24 = load i64, ptr %l2
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d300, i32 0, i32 1) }, { i64, ptr } %t31, { i64, ptr } { i64 156, ptr getelementptr inbounds (<{ i64, [156 x i8] }>, ptr @.d301, i32 0, i32 1) }, { i64, ptr } { i64 75, ptr getelementptr inbounds (<{ i64, [75 x i8] }>, ptr @.d302, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t34, ptr %l7
  br label %bb3
bb3:
  %t35 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t35, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFlagAmongResults(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 829, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d303, i32 0, i32 1) }, { i64, ptr } { i64 53, ptr getelementptr inbounds (<{ i64, [53 x i8] }>, ptr @.d304, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d305, i32 0, i32 1) }, { i64, ptr } { i64 77, ptr getelementptr inbounds (<{ i64, [77 x i8] }>, ptr @.d306, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFlagWithOutParam(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 830, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 45, ptr getelementptr inbounds (<{ i64, [45 x i8] }>, ptr @.d307, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 45, ptr getelementptr inbounds (<{ i64, [45 x i8] }>, ptr @.d307, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d308, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d308, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l2
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  call void @olang_textcopy(ptr %t18, ptr %t7, i64 %t8)
  %t19 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t18, 1
  %t24 = load i64, ptr %l2
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d309, i32 0, i32 1) }, { i64, ptr } %t31, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d310, i32 0, i32 1) }, { i64, ptr } { i64 56, ptr getelementptr inbounds (<{ i64, [56 x i8] }>, ptr @.d311, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t34, ptr %l7
  br label %bb3
bb3:
  %t35 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t35, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFloatLiteralRange(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 470, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } %a0, 1
  %t9 = extractvalue { i64, ptr } %a0, 0
  %t10 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d312, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d312, i32 0, i32 1) }, 0
  %t12 = add i64 %t9, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t8, i64 %t9)
  %t16 = getelementptr i8, ptr %t15, i64 %t9
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d313, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFormatterMissing(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 23, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d314, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d314, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t7, i64 %t8)
  %t16 = getelementptr i8, ptr %t15, i64 %t8
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d315, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFromCaseName(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 794, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d316, i32 0, i32 1) }, { i64, ptr } { i64 57, ptr getelementptr inbounds (<{ i64, [57 x i8] }>, ptr @.d317, i32 0, i32 1) }, { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d318, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFuncDeclBare(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i32
  %l2 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l13 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i32 178, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t6 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t6, 1
  %t9 = extractvalue { i64, ptr } %t6, 0
  %t10 = extractvalue { i64, ptr } { i64 43, ptr getelementptr inbounds (<{ i64, [43 x i8] }>, ptr @.d319, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 43, ptr getelementptr inbounds (<{ i64, [43 x i8] }>, ptr @.d319, i32 0, i32 1) }, 0
  %t12 = add i64 %t9, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t8, i64 %t9)
  %t16 = getelementptr i8, ptr %t15, i64 %t9
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  store { i64, ptr } %t27, ptr %l6, !tbaa !27
  %t28 = ptrtoint ptr %v1 to i64
  store i64 %t28, ptr %l7, !tbaa !24
  %t29 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e4
  br i1 %t29, label %bb3, label %bb4
bb3:
  %t31 = call ptr @__olang_region_make(ptr %v1)
  %t32 = ptrtoint ptr %t31 to i64
  store i64 %t32, ptr %l7, !tbaa !24
  br label %bb4
bb4:
  %t33 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t34 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t35 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d320, i32 0, i32 1) }, 1
  %t36 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d320, i32 0, i32 1) }, 0
  %t38 = extractvalue { i64, ptr } %t33, 1
  %t39 = extractvalue { i64, ptr } %t33, 0
  %t40 = add i64 %t36, %t39
  %t41 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d321, i32 0, i32 1) }, 1
  %t42 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d321, i32 0, i32 1) }, 0
  %t43 = add i64 %t40, %t42
  %t45 = extractvalue { i64, ptr } %t34, 1
  %t46 = extractvalue { i64, ptr } %t34, 0
  %t47 = add i64 %t43, %t46
  %t48 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d322, i32 0, i32 1) }, 1
  %t49 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d322, i32 0, i32 1) }, 0
  %t50 = add i64 %t47, %t49
  %t51 = load i64, ptr %l7
  %t52 = inttoptr i64 %t51 to ptr
  %t53 = call ptr @__olang_scope_alloc(ptr %t52, i64 %t50)
  call void @olang_textcopy(ptr %t53, ptr %t35, i64 %t36)
  %t54 = getelementptr i8, ptr %t53, i64 %t36
  call void @olang_textcopy(ptr %t54, ptr %t38, i64 %t39)
  %t55 = getelementptr i8, ptr %t54, i64 %t39
  call void @olang_textcopy(ptr %t55, ptr %t41, i64 %t42)
  %t56 = getelementptr i8, ptr %t55, i64 %t42
  call void @olang_textcopy(ptr %t56, ptr %t45, i64 %t46)
  %t57 = getelementptr i8, ptr %t56, i64 %t46
  call void @olang_textcopy(ptr %t57, ptr %t48, i64 %t49)
  %t58 = insertvalue { i64, ptr } undef, i64 %t50, 0
  %t59 = insertvalue { i64, ptr } %t58, ptr %t53, 1
  %t61 = load i64, ptr %l7
  %t62 = inttoptr i64 %t61 to ptr
  %t63 = extractvalue { i64, ptr } %t59, 0
  %t64 = extractvalue { i64, ptr } %t59, 1
  %t65 = mul i64 %t63, 1
  %t66 = call ptr @__olang_scope_alloc(ptr %t62, i64 %t65)
  call void @llvm.memcpy.p0.p0.i64(ptr %t66, ptr %t64, i64 %t65, i1 false)
  %t67 = insertvalue { i64, ptr } undef, i64 %t63, 0
  %t68 = insertvalue { i64, ptr } %t67, ptr %t66, 1
  %t69 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t70 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t72 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t69, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d323, i32 0, i32 1) }, { i64, ptr } %t70, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d324, i32 0, i32 1) }, { i64, ptr } %t68)
  store %"compiler/diagmsg:Msg" %t72, ptr %l13
  br label %bb5
bb5:
  %t73 = load %"compiler/diagmsg:Msg", ptr %l13
  store %"compiler/diagmsg:Msg" %t73, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFuncDeclMismatch(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l15 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 179, ptr %l3
  %t1 = ptrtoint ptr %v3 to i64
  store i64 %t1, ptr %l4, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v3)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d325, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d325, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d326, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d326, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = load i64, ptr %l4
  %t22 = inttoptr i64 %t21 to ptr
  %t23 = call ptr @__olang_scope_alloc(ptr %t22, i64 %t20)
  call void @olang_textcopy(ptr %t23, ptr %t8, i64 %t9)
  %t24 = getelementptr i8, ptr %t23, i64 %t9
  call void @olang_textcopy(ptr %t24, ptr %t11, i64 %t12)
  %t25 = getelementptr i8, ptr %t24, i64 %t12
  call void @olang_textcopy(ptr %t25, ptr %t14, i64 %t15)
  %t26 = getelementptr i8, ptr %t25, i64 %t15
  call void @olang_textcopy(ptr %t26, ptr %t18, i64 %t19)
  %t27 = insertvalue { i64, ptr } undef, i64 %t20, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t23, 1
  %t30 = load i64, ptr %l4
  %t31 = inttoptr i64 %t30 to ptr
  %t32 = extractvalue { i64, ptr } %t28, 0
  %t33 = extractvalue { i64, ptr } %t28, 1
  %t34 = mul i64 %t32, 1
  %t35 = call ptr @__olang_scope_alloc(ptr %t31, i64 %t34)
  call void @llvm.memcpy.p0.p0.i64(ptr %t35, ptr %t33, i64 %t34, i1 false)
  %t36 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t35, 1
  store { i64, ptr } %t37, ptr %l9, !tbaa !27
  %t38 = ptrtoint ptr %v3 to i64
  store i64 %t38, ptr %l10, !tbaa !24
  %t39 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e4
  br i1 %t39, label %bb3, label %bb4
bb3:
  %t41 = call ptr @__olang_region_make(ptr %v3)
  %t42 = ptrtoint ptr %t41 to i64
  store i64 %t42, ptr %l10, !tbaa !24
  br label %bb4
bb4:
  %t44 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d327, i32 0, i32 1) }, 1
  %t45 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d327, i32 0, i32 1) }, 0
  %t47 = extractvalue { i64, ptr } %a2, 1
  %t48 = extractvalue { i64, ptr } %a2, 0
  %t49 = add i64 %t45, %t48
  %t50 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d328, i32 0, i32 1) }, 1
  %t51 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d328, i32 0, i32 1) }, 0
  %t52 = add i64 %t49, %t51
  %t53 = load i64, ptr %l10
  %t54 = inttoptr i64 %t53 to ptr
  %t55 = call ptr @__olang_scope_alloc(ptr %t54, i64 %t52)
  call void @olang_textcopy(ptr %t55, ptr %t44, i64 %t45)
  %t56 = getelementptr i8, ptr %t55, i64 %t45
  call void @olang_textcopy(ptr %t56, ptr %t47, i64 %t48)
  %t57 = getelementptr i8, ptr %t56, i64 %t48
  call void @olang_textcopy(ptr %t57, ptr %t50, i64 %t51)
  %t58 = insertvalue { i64, ptr } undef, i64 %t52, 0
  %t59 = insertvalue { i64, ptr } %t58, ptr %t55, 1
  %t61 = load i64, ptr %l10
  %t62 = inttoptr i64 %t61 to ptr
  %t63 = extractvalue { i64, ptr } %t59, 0
  %t64 = extractvalue { i64, ptr } %t59, 1
  %t65 = mul i64 %t63, 1
  %t66 = call ptr @__olang_scope_alloc(ptr %t62, i64 %t65)
  call void @llvm.memcpy.p0.p0.i64(ptr %t66, ptr %t64, i64 %t65, i1 false)
  %t67 = insertvalue { i64, ptr } undef, i64 %t63, 0
  %t68 = insertvalue { i64, ptr } %t67, ptr %t66, 1
  %t69 = load i32, ptr %l3, !range !{i32 0, i32 906}
  %t70 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t72 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, ptr %v3, ptr %v3, i32 %t69, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d329, i32 0, i32 1) }, { i64, ptr } %t70, { i64, ptr } { i64 45, ptr getelementptr inbounds (<{ i64, [45 x i8] }>, ptr @.d330, i32 0, i32 1) }, { i64, ptr } %t68)
  store %"compiler/diagmsg:Msg" %t72, ptr %l15
  br label %bb5
bb5:
  %t73 = load %"compiler/diagmsg:Msg", ptr %l15
  store %"compiler/diagmsg:Msg" %t73, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFuncValueObligations(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l13 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 684, ptr %l2
  %t1 = ptrtoint ptr %v2 to i64
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v2)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d331, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d331, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 66, ptr getelementptr inbounds (<{ i64, [66 x i8] }>, ptr @.d332, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 66, ptr getelementptr inbounds (<{ i64, [66 x i8] }>, ptr @.d332, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l3
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  call void @olang_textcopy(ptr %t18, ptr %t7, i64 %t8)
  %t19 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t18, 1
  %t24 = load i64, ptr %l3
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  store { i64, ptr } %t31, ptr %l7, !tbaa !27
  %t32 = ptrtoint ptr %v2 to i64
  store i64 %t32, ptr %l8, !tbaa !24
  %t33 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e3
  br i1 %t33, label %bb3, label %bb4
bb3:
  %t35 = call ptr @__olang_region_make(ptr %v2)
  %t36 = ptrtoint ptr %t35 to i64
  store i64 %t36, ptr %l8, !tbaa !24
  br label %bb4
bb4:
  %t39 = extractvalue { i64, ptr } %a1, 1
  %t40 = extractvalue { i64, ptr } %a1, 0
  %t41 = extractvalue { i64, ptr } { i64 61, ptr getelementptr inbounds (<{ i64, [61 x i8] }>, ptr @.d333, i32 0, i32 1) }, 1
  %t42 = extractvalue { i64, ptr } { i64 61, ptr getelementptr inbounds (<{ i64, [61 x i8] }>, ptr @.d333, i32 0, i32 1) }, 0
  %t43 = add i64 %t40, %t42
  %t44 = load i64, ptr %l8
  %t45 = inttoptr i64 %t44 to ptr
  %t46 = call ptr @__olang_scope_alloc(ptr %t45, i64 %t43)
  call void @olang_textcopy(ptr %t46, ptr %t39, i64 %t40)
  %t47 = getelementptr i8, ptr %t46, i64 %t40
  call void @olang_textcopy(ptr %t47, ptr %t41, i64 %t42)
  %t48 = insertvalue { i64, ptr } undef, i64 %t43, 0
  %t49 = insertvalue { i64, ptr } %t48, ptr %t46, 1
  %t51 = load i64, ptr %l8
  %t52 = inttoptr i64 %t51 to ptr
  %t53 = extractvalue { i64, ptr } %t49, 0
  %t54 = extractvalue { i64, ptr } %t49, 1
  %t55 = mul i64 %t53, 1
  %t56 = call ptr @__olang_scope_alloc(ptr %t52, i64 %t55)
  call void @llvm.memcpy.p0.p0.i64(ptr %t56, ptr %t54, i64 %t55, i1 false)
  %t57 = insertvalue { i64, ptr } undef, i64 %t53, 0
  %t58 = insertvalue { i64, ptr } %t57, ptr %t56, 1
  %t59 = load i32, ptr %l2, !range !{i32 0, i32 906}
  %t60 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t62 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, i32 %t59, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d334, i32 0, i32 1) }, { i64, ptr } %t60, { i64, ptr } %t58, { i64, ptr } { i64 57, ptr getelementptr inbounds (<{ i64, [57 x i8] }>, ptr @.d335, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t62, ptr %l13
  br label %bb5
bb5:
  %t63 = load %"compiler/diagmsg:Msg", ptr %l13
  store %"compiler/diagmsg:Msg" %t63, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFuzzNoTest(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 13, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d336, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d336, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d337, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d337, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l2
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  call void @olang_textcopy(ptr %t18, ptr %t7, i64 %t8)
  %t19 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t18, 1
  %t24 = load i64, ptr %l2
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d338, i32 0, i32 1) }, { i64, ptr } %t31, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d339, i32 0, i32 1) }, { i64, ptr } { i64 68, ptr getelementptr inbounds (<{ i64, [68 x i8] }>, ptr @.d340, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t34, ptr %l7
  br label %bb3
bb3:
  %t35 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t35, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGenErrorNotDeclared(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i32
  %l2 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l17 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i32 546, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t6 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t6, 1
  %t9 = extractvalue { i64, ptr } %t6, 0
  %t10 = extractvalue { i64, ptr } { i64 60, ptr getelementptr inbounds (<{ i64, [60 x i8] }>, ptr @.d341, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 60, ptr getelementptr inbounds (<{ i64, [60 x i8] }>, ptr @.d341, i32 0, i32 1) }, 0
  %t12 = add i64 %t9, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t8, i64 %t9)
  %t16 = getelementptr i8, ptr %t15, i64 %t9
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  store { i64, ptr } %t27, ptr %l6, !tbaa !27
  %t28 = ptrtoint ptr %v1 to i64
  store i64 %t28, ptr %l7, !tbaa !24
  %t29 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e3
  br i1 %t29, label %bb3, label %bb4
bb3:
  %t31 = call ptr @__olang_region_make(ptr %v1)
  %t32 = ptrtoint ptr %t31 to i64
  store i64 %t32, ptr %l7, !tbaa !24
  br label %bb4
bb4:
  %t33 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t34 = extractvalue { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d342, i32 0, i32 1) }, 1
  %t35 = extractvalue { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d342, i32 0, i32 1) }, 0
  %t37 = extractvalue { i64, ptr } %t33, 1
  %t38 = extractvalue { i64, ptr } %t33, 0
  %t39 = add i64 %t35, %t38
  %t40 = load i64, ptr %l7
  %t41 = inttoptr i64 %t40 to ptr
  %t42 = call ptr @__olang_scope_alloc(ptr %t41, i64 %t39)
  call void @olang_textcopy(ptr %t42, ptr %t34, i64 %t35)
  %t43 = getelementptr i8, ptr %t42, i64 %t35
  call void @olang_textcopy(ptr %t43, ptr %t37, i64 %t38)
  %t44 = insertvalue { i64, ptr } undef, i64 %t39, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t42, 1
  %t47 = load i64, ptr %l7
  %t48 = inttoptr i64 %t47 to ptr
  %t49 = extractvalue { i64, ptr } %t45, 0
  %t50 = extractvalue { i64, ptr } %t45, 1
  %t51 = mul i64 %t49, 1
  %t52 = call ptr @__olang_scope_alloc(ptr %t48, i64 %t51)
  call void @llvm.memcpy.p0.p0.i64(ptr %t52, ptr %t50, i64 %t51, i1 false)
  %t53 = insertvalue { i64, ptr } undef, i64 %t49, 0
  %t54 = insertvalue { i64, ptr } %t53, ptr %t52, 1
  store { i64, ptr } %t54, ptr %l11, !tbaa !27
  %t55 = ptrtoint ptr %v1 to i64
  store i64 %t55, ptr %l12, !tbaa !24
  %t56 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e4
  br i1 %t56, label %bb5, label %bb6
bb5:
  %t58 = call ptr @__olang_region_make(ptr %v1)
  %t59 = ptrtoint ptr %t58 to i64
  store i64 %t59, ptr %l12, !tbaa !24
  br label %bb6
bb6:
  %t60 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t61 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d343, i32 0, i32 1) }, 1
  %t62 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d343, i32 0, i32 1) }, 0
  %t64 = extractvalue { i64, ptr } %t60, 1
  %t65 = extractvalue { i64, ptr } %t60, 0
  %t66 = add i64 %t62, %t65
  %t67 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d344, i32 0, i32 1) }, 1
  %t68 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d344, i32 0, i32 1) }, 0
  %t69 = add i64 %t66, %t68
  %t70 = load i64, ptr %l12
  %t71 = inttoptr i64 %t70 to ptr
  %t72 = call ptr @__olang_scope_alloc(ptr %t71, i64 %t69)
  call void @olang_textcopy(ptr %t72, ptr %t61, i64 %t62)
  %t73 = getelementptr i8, ptr %t72, i64 %t62
  call void @olang_textcopy(ptr %t73, ptr %t64, i64 %t65)
  %t74 = getelementptr i8, ptr %t73, i64 %t65
  call void @olang_textcopy(ptr %t74, ptr %t67, i64 %t68)
  %t75 = insertvalue { i64, ptr } undef, i64 %t69, 0
  %t76 = insertvalue { i64, ptr } %t75, ptr %t72, 1
  %t78 = load i64, ptr %l12
  %t79 = inttoptr i64 %t78 to ptr
  %t80 = extractvalue { i64, ptr } %t76, 0
  %t81 = extractvalue { i64, ptr } %t76, 1
  %t82 = mul i64 %t80, 1
  %t83 = call ptr @__olang_scope_alloc(ptr %t79, i64 %t82)
  call void @llvm.memcpy.p0.p0.i64(ptr %t83, ptr %t81, i64 %t82, i1 false)
  %t84 = insertvalue { i64, ptr } undef, i64 %t80, 0
  %t85 = insertvalue { i64, ptr } %t84, ptr %t83, 1
  %t86 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t87 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t88 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t90 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t86, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d345, i32 0, i32 1) }, { i64, ptr } %t87, { i64, ptr } %t88, { i64, ptr } %t85)
  store %"compiler/diagmsg:Msg" %t90, ptr %l17
  br label %bb7
bb7:
  %t91 = load %"compiler/diagmsg:Msg", ptr %l17
  store %"compiler/diagmsg:Msg" %t91, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGenErrors(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 638, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 79, ptr getelementptr inbounds (<{ i64, [79 x i8] }>, ptr @.d346, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 79, ptr getelementptr inbounds (<{ i64, [79 x i8] }>, ptr @.d346, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d347, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d347, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l2
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  call void @olang_textcopy(ptr %t18, ptr %t7, i64 %t8)
  %t19 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t18, 1
  %t24 = load i64, ptr %l2
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d348, i32 0, i32 1) }, { i64, ptr } %t31, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t34, ptr %l7
  br label %bb3
bb3:
  %t35 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t35, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGenReturnValue(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 637, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d349, i32 0, i32 1) }, { i64, ptr } { i64 73, ptr getelementptr inbounds (<{ i64, [73 x i8] }>, ptr @.d350, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGenYieldsBorrow(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i32
  %l2 = alloca i64
  %l5 = alloca i1
  %l7 = alloca { i64, ptr }
  %l13 = alloca %"compiler/diagmsg:Msg"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/diagmsg:Msg"
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store i32 640, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t6 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t8 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t6, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d351, i32 0, i32 1) })
  store i1 %t8, ptr %l5
  br label %bb3
bb3:
  %t9 = load i1, ptr %l5, !tbaa !21
  %t10 = xor i1 %t9, true
  br i1 %t10, label %bb4, label %bb5
bb4:
  %t12 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t13 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d352, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d352, i32 0, i32 1) }, 0
  %t16 = extractvalue { i64, ptr } %t12, 1
  %t17 = extractvalue { i64, ptr } %t12, 0
  %t18 = add i64 %t14, %t17
  %t19 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d352, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d352, i32 0, i32 1) }, 0
  %t21 = add i64 %t18, %t20
  %t22 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t21)
  call void @olang_textcopy(ptr %t22, ptr %t13, i64 %t14)
  %t23 = getelementptr i8, ptr %t22, i64 %t14
  call void @olang_textcopy(ptr %t23, ptr %t16, i64 %t17)
  %t24 = getelementptr i8, ptr %t23, i64 %t17
  call void @olang_textcopy(ptr %t24, ptr %t19, i64 %t20)
  %t25 = insertvalue { i64, ptr } undef, i64 %t21, 0
  %t26 = insertvalue { i64, ptr } %t25, ptr %t22, 1
  %t28 = extractvalue { i64, ptr } %t26, 0
  %t29 = extractvalue { i64, ptr } %t26, 1
  %t30 = mul i64 %t28, 1
  %t31 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t30)
  call void @llvm.memcpy.p0.p0.i64(ptr %t31, ptr %t29, i64 %t30, i1 false)
  %t32 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t33 = insertvalue { i64, ptr } %t32, ptr %t31, 1
  store { i64, ptr } %t33, ptr %l7, !tbaa !27
  br label %bb6
bb5:
  store { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d353, i32 0, i32 1) }, ptr %l7, !tbaa !27
  br label %bb6
bb6:
  %t35 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d354, i32 0, i32 1) }, 1
  %t36 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d354, i32 0, i32 1) }, 0
  %t37 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t38 = extractvalue { i64, ptr } %t37, 1
  %t39 = extractvalue { i64, ptr } %t37, 0
  %t40 = add i64 %t36, %t39
  %t41 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d355, i32 0, i32 1) }, 1
  %t42 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d355, i32 0, i32 1) }, 0
  %t43 = add i64 %t40, %t42
  %t44 = load i64, ptr %l2
  %t45 = inttoptr i64 %t44 to ptr
  %t46 = call ptr @__olang_scope_alloc(ptr %t45, i64 %t43)
  call void @olang_textcopy(ptr %t46, ptr %t35, i64 %t36)
  %t47 = getelementptr i8, ptr %t46, i64 %t36
  call void @olang_textcopy(ptr %t47, ptr %t38, i64 %t39)
  %t48 = getelementptr i8, ptr %t47, i64 %t39
  call void @olang_textcopy(ptr %t48, ptr %t41, i64 %t42)
  %t49 = insertvalue { i64, ptr } undef, i64 %t43, 0
  %t50 = insertvalue { i64, ptr } %t49, ptr %t46, 1
  %t52 = load i64, ptr %l2
  %t53 = inttoptr i64 %t52 to ptr
  %t54 = extractvalue { i64, ptr } %t50, 0
  %t55 = extractvalue { i64, ptr } %t50, 1
  %t56 = mul i64 %t54, 1
  %t57 = call ptr @__olang_scope_alloc(ptr %t53, i64 %t56)
  call void @llvm.memcpy.p0.p0.i64(ptr %t57, ptr %t55, i64 %t56, i1 false)
  %t58 = insertvalue { i64, ptr } undef, i64 %t54, 0
  %t59 = insertvalue { i64, ptr } %t58, ptr %t57, 1
  %t60 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t62 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t60, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d356, i32 0, i32 1) }, { i64, ptr } %t59, { i64, ptr } { i64 45, ptr getelementptr inbounds (<{ i64, [45 x i8] }>, ptr @.d357, i32 0, i32 1) }, { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d358, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t62, ptr %l13
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s0)
  %t63 = load %"compiler/diagmsg:Msg", ptr %l13
  store %"compiler/diagmsg:Msg" %t63, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGlobalsCycle(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 767, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 71, ptr getelementptr inbounds (<{ i64, [71 x i8] }>, ptr @.d359, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 71, ptr getelementptr inbounds (<{ i64, [71 x i8] }>, ptr @.d359, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t7, i64 %t8)
  %t16 = getelementptr i8, ptr %t15, i64 %t8
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d360, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGuardNotBool(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 612, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d361, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d361, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t7, i64 %t8)
  %t16 = getelementptr i8, ptr %t15, i64 %t8
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d362, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImmutWrite(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 255, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d363, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d363, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 61, ptr getelementptr inbounds (<{ i64, [61 x i8] }>, ptr @.d364, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 61, ptr getelementptr inbounds (<{ i64, [61 x i8] }>, ptr @.d364, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l2
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  call void @olang_textcopy(ptr %t18, ptr %t7, i64 %t8)
  %t19 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t18, 1
  %t24 = load i64, ptr %l2
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d365, i32 0, i32 1) }, { i64, ptr } %t31, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t34, ptr %l7
  br label %bb3
bb3:
  %t35 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t35, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportLockNotACommit(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 101, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d366, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d366, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d367, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d367, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l2
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  call void @olang_textcopy(ptr %t18, ptr %t7, i64 %t8)
  %t19 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t18, 1
  %t24 = load i64, ptr %l2
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d368, i32 0, i32 1) }, { i64, ptr } %t31, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t34, ptr %l7
  br label %bb3
bb3:
  %t35 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t35, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportReachedTwice(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 115, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } %a0, 1
  %t9 = extractvalue { i64, ptr } %a0, 0
  %t10 = extractvalue { i64, ptr } { i64 61, ptr getelementptr inbounds (<{ i64, [61 x i8] }>, ptr @.d369, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 61, ptr getelementptr inbounds (<{ i64, [61 x i8] }>, ptr @.d369, i32 0, i32 1) }, 0
  %t12 = add i64 %t9, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t8, i64 %t9)
  %t16 = getelementptr i8, ptr %t15, i64 %t9
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d370, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportRemoteBadName(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 100, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d371, i32 0, i32 1) }, { i64, ptr } { i64 51, ptr getelementptr inbounds (<{ i64, [51 x i8] }>, ptr @.d372, i32 0, i32 1) }, { i64, ptr } { i64 83, ptr getelementptr inbounds (<{ i64, [83 x i8] }>, ptr @.d373, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportRemoteNeedsFile(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 108, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d374, i32 0, i32 1) }, { i64, ptr } { i64 74, ptr getelementptr inbounds (<{ i64, [74 x i8] }>, ptr @.d375, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eIncdecInExpression(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 482, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } %a0, 1
  %t9 = extractvalue { i64, ptr } %a0, 0
  %t10 = extractvalue { i64, ptr } { i64 55, ptr getelementptr inbounds (<{ i64, [55 x i8] }>, ptr @.d376, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 55, ptr getelementptr inbounds (<{ i64, [55 x i8] }>, ptr @.d376, i32 0, i32 1) }, 0
  %t12 = add i64 %t9, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t8, i64 %t9)
  %t16 = getelementptr i8, ptr %t15, i64 %t9
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d377, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eInstallNoFiles(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 37, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d378, i32 0, i32 1) }, { i64, ptr } { i64 70, ptr getelementptr inbounds (<{ i64, [70 x i8] }>, ptr @.d379, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eInstanceOutlivesArg(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i32
  %l2 = alloca i64
  %l5 = alloca i1
  %l7 = alloca { i64, ptr }
  %l13 = alloca %"compiler/diagmsg:Msg"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/diagmsg:Msg"
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store i32 590, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e4
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t6 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t8 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t6, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d380, i32 0, i32 1) })
  store i1 %t8, ptr %l5
  br label %bb3
bb3:
  %t9 = load i1, ptr %l5, !tbaa !21
  %t10 = xor i1 %t9, true
  br i1 %t10, label %bb4, label %bb5
bb4:
  %t12 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t13 = extractvalue { i64, ptr } { i64 50, ptr getelementptr inbounds (<{ i64, [50 x i8] }>, ptr @.d381, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 50, ptr getelementptr inbounds (<{ i64, [50 x i8] }>, ptr @.d381, i32 0, i32 1) }, 0
  %t16 = extractvalue { i64, ptr } %t12, 1
  %t17 = extractvalue { i64, ptr } %t12, 0
  %t18 = add i64 %t14, %t17
  %t19 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d382, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d382, i32 0, i32 1) }, 0
  %t21 = add i64 %t18, %t20
  %t22 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t21)
  call void @olang_textcopy(ptr %t22, ptr %t13, i64 %t14)
  %t23 = getelementptr i8, ptr %t22, i64 %t14
  call void @olang_textcopy(ptr %t23, ptr %t16, i64 %t17)
  %t24 = getelementptr i8, ptr %t23, i64 %t17
  call void @olang_textcopy(ptr %t24, ptr %t19, i64 %t20)
  %t25 = insertvalue { i64, ptr } undef, i64 %t21, 0
  %t26 = insertvalue { i64, ptr } %t25, ptr %t22, 1
  %t28 = extractvalue { i64, ptr } %t26, 0
  %t29 = extractvalue { i64, ptr } %t26, 1
  %t30 = mul i64 %t28, 1
  %t31 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t30)
  call void @llvm.memcpy.p0.p0.i64(ptr %t31, ptr %t29, i64 %t30, i1 false)
  %t32 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t33 = insertvalue { i64, ptr } %t32, ptr %t31, 1
  store { i64, ptr } %t33, ptr %l7, !tbaa !27
  br label %bb6
bb5:
  store { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d383, i32 0, i32 1) }, ptr %l7, !tbaa !27
  br label %bb6
bb6:
  %t35 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d384, i32 0, i32 1) }, 1
  %t36 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d384, i32 0, i32 1) }, 0
  %t37 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t38 = extractvalue { i64, ptr } %t37, 1
  %t39 = extractvalue { i64, ptr } %t37, 0
  %t40 = add i64 %t36, %t39
  %t41 = load i64, ptr %l2
  %t42 = inttoptr i64 %t41 to ptr
  %t43 = call ptr @__olang_scope_alloc(ptr %t42, i64 %t40)
  call void @olang_textcopy(ptr %t43, ptr %t35, i64 %t36)
  %t44 = getelementptr i8, ptr %t43, i64 %t36
  call void @olang_textcopy(ptr %t44, ptr %t38, i64 %t39)
  %t45 = insertvalue { i64, ptr } undef, i64 %t40, 0
  %t46 = insertvalue { i64, ptr } %t45, ptr %t43, 1
  %t48 = load i64, ptr %l2
  %t49 = inttoptr i64 %t48 to ptr
  %t50 = extractvalue { i64, ptr } %t46, 0
  %t51 = extractvalue { i64, ptr } %t46, 1
  %t52 = mul i64 %t50, 1
  %t53 = call ptr @__olang_scope_alloc(ptr %t49, i64 %t52)
  call void @llvm.memcpy.p0.p0.i64(ptr %t53, ptr %t51, i64 %t52, i1 false)
  %t54 = insertvalue { i64, ptr } undef, i64 %t50, 0
  %t55 = insertvalue { i64, ptr } %t54, ptr %t53, 1
  %t56 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t58 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t56, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d385, i32 0, i32 1) }, { i64, ptr } { i64 63, ptr getelementptr inbounds (<{ i64, [63 x i8] }>, ptr @.d386, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d387, i32 0, i32 1) }, { i64, ptr } %t55)
  store %"compiler/diagmsg:Msg" %t58, ptr %l13
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s0)
  %t59 = load %"compiler/diagmsg:Msg", ptr %l13
  store %"compiler/diagmsg:Msg" %t59, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eInvalidReferenceTarget(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 168, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } %a0, 1
  %t9 = extractvalue { i64, ptr } %a0, 0
  %t10 = extractvalue { i64, ptr } { i64 63, ptr getelementptr inbounds (<{ i64, [63 x i8] }>, ptr @.d388, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 63, ptr getelementptr inbounds (<{ i64, [63 x i8] }>, ptr @.d388, i32 0, i32 1) }, 0
  %t12 = add i64 %t9, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t8, i64 %t9)
  %t16 = getelementptr i8, ptr %t15, i64 %t9
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d389, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eIsAsNotEnum(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 527, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 51, ptr getelementptr inbounds (<{ i64, [51 x i8] }>, ptr @.d390, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 51, ptr getelementptr inbounds (<{ i64, [51 x i8] }>, ptr @.d390, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t7, i64 %t8)
  %t16 = getelementptr i8, ptr %t15, i64 %t8
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d391, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eKeywordAsName(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 85, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } %a0, 1
  %t9 = extractvalue { i64, ptr } %a0, 0
  %t10 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d392, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d392, i32 0, i32 1) }, 0
  %t12 = add i64 %t9, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t8, i64 %t9)
  %t16 = getelementptr i8, ptr %t15, i64 %t9
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d393, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLambdaCapturesItself(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l13 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i32 418, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t6 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t8 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d394, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d394, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %t6, 1
  %t12 = extractvalue { i64, ptr } %t6, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 105, ptr getelementptr inbounds (<{ i64, [105 x i8] }>, ptr @.d395, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 105, ptr getelementptr inbounds (<{ i64, [105 x i8] }>, ptr @.d395, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %t7, 1
  %t19 = extractvalue { i64, ptr } %t7, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d396, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d396, i32 0, i32 1) }, 0
  %t23 = add i64 %t20, %t22
  %t24 = load i64, ptr %l2
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t23)
  call void @olang_textcopy(ptr %t26, ptr %t8, i64 %t9)
  %t27 = getelementptr i8, ptr %t26, i64 %t9
  call void @olang_textcopy(ptr %t27, ptr %t11, i64 %t12)
  %t28 = getelementptr i8, ptr %t27, i64 %t12
  call void @olang_textcopy(ptr %t28, ptr %t14, i64 %t15)
  %t29 = getelementptr i8, ptr %t28, i64 %t15
  call void @olang_textcopy(ptr %t29, ptr %t18, i64 %t19)
  %t30 = getelementptr i8, ptr %t29, i64 %t19
  call void @olang_textcopy(ptr %t30, ptr %t21, i64 %t22)
  %t31 = insertvalue { i64, ptr } undef, i64 %t23, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t26, 1
  %t34 = load i64, ptr %l2
  %t35 = inttoptr i64 %t34 to ptr
  %t36 = extractvalue { i64, ptr } %t32, 0
  %t37 = extractvalue { i64, ptr } %t32, 1
  %t38 = mul i64 %t36, 1
  %t39 = call ptr @__olang_scope_alloc(ptr %t35, i64 %t38)
  call void @llvm.memcpy.p0.p0.i64(ptr %t39, ptr %t37, i64 %t38, i1 false)
  %t40 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t39, 1
  store { i64, ptr } %t41, ptr %l7, !tbaa !27
  %t42 = ptrtoint ptr %v1 to i64
  store i64 %t42, ptr %l8, !tbaa !24
  %t43 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e4
  br i1 %t43, label %bb3, label %bb4
bb3:
  %t45 = call ptr @__olang_region_make(ptr %v1)
  %t46 = ptrtoint ptr %t45 to i64
  store i64 %t46, ptr %l8, !tbaa !24
  br label %bb4
bb4:
  %t47 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t48 = extractvalue { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d397, i32 0, i32 1) }, 1
  %t49 = extractvalue { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d397, i32 0, i32 1) }, 0
  %t51 = extractvalue { i64, ptr } %t47, 1
  %t52 = extractvalue { i64, ptr } %t47, 0
  %t53 = add i64 %t49, %t52
  %t54 = extractvalue { i64, ptr } { i64 146, ptr getelementptr inbounds (<{ i64, [146 x i8] }>, ptr @.d398, i32 0, i32 1) }, 1
  %t55 = extractvalue { i64, ptr } { i64 146, ptr getelementptr inbounds (<{ i64, [146 x i8] }>, ptr @.d398, i32 0, i32 1) }, 0
  %t56 = add i64 %t53, %t55
  %t57 = load i64, ptr %l8
  %t58 = inttoptr i64 %t57 to ptr
  %t59 = call ptr @__olang_scope_alloc(ptr %t58, i64 %t56)
  call void @olang_textcopy(ptr %t59, ptr %t48, i64 %t49)
  %t60 = getelementptr i8, ptr %t59, i64 %t49
  call void @olang_textcopy(ptr %t60, ptr %t51, i64 %t52)
  %t61 = getelementptr i8, ptr %t60, i64 %t52
  call void @olang_textcopy(ptr %t61, ptr %t54, i64 %t55)
  %t62 = insertvalue { i64, ptr } undef, i64 %t56, 0
  %t63 = insertvalue { i64, ptr } %t62, ptr %t59, 1
  %t65 = load i64, ptr %l8
  %t66 = inttoptr i64 %t65 to ptr
  %t67 = extractvalue { i64, ptr } %t63, 0
  %t68 = extractvalue { i64, ptr } %t63, 1
  %t69 = mul i64 %t67, 1
  %t70 = call ptr @__olang_scope_alloc(ptr %t66, i64 %t69)
  call void @llvm.memcpy.p0.p0.i64(ptr %t70, ptr %t68, i64 %t69, i1 false)
  %t71 = insertvalue { i64, ptr } undef, i64 %t67, 0
  %t72 = insertvalue { i64, ptr } %t71, ptr %t70, 1
  %t73 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t74 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t76 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t73, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d399, i32 0, i32 1) }, { i64, ptr } %t74, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d400, i32 0, i32 1) }, { i64, ptr } %t72)
  store %"compiler/diagmsg:Msg" %t76, ptr %l13
  br label %bb5
bb5:
  %t77 = load %"compiler/diagmsg:Msg", ptr %l13
  store %"compiler/diagmsg:Msg" %t77, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLambdaKeepsOuter(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i32
  %l2 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l13 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i32 690, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t6 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t7 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d401, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d401, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %t6, 1
  %t11 = extractvalue { i64, ptr } %t6, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d402, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d402, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l2
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  call void @olang_textcopy(ptr %t18, ptr %t7, i64 %t8)
  %t19 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t18, 1
  %t24 = load i64, ptr %l2
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  store { i64, ptr } %t31, ptr %l6, !tbaa !27
  %t32 = ptrtoint ptr %v1 to i64
  store i64 %t32, ptr %l7, !tbaa !24
  %t33 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e3
  br i1 %t33, label %bb3, label %bb4
bb3:
  %t35 = call ptr @__olang_region_make(ptr %v1)
  %t36 = ptrtoint ptr %t35 to i64
  store i64 %t36, ptr %l7, !tbaa !24
  br label %bb4
bb4:
  %t37 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t38 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t39 = extractvalue { i64, ptr } { i64 55, ptr getelementptr inbounds (<{ i64, [55 x i8] }>, ptr @.d403, i32 0, i32 1) }, 1
  %t40 = extractvalue { i64, ptr } { i64 55, ptr getelementptr inbounds (<{ i64, [55 x i8] }>, ptr @.d403, i32 0, i32 1) }, 0
  %t42 = extractvalue { i64, ptr } %t37, 1
  %t43 = extractvalue { i64, ptr } %t37, 0
  %t44 = add i64 %t40, %t43
  %t45 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d404, i32 0, i32 1) }, 1
  %t46 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d404, i32 0, i32 1) }, 0
  %t47 = add i64 %t44, %t46
  %t49 = extractvalue { i64, ptr } %t38, 1
  %t50 = extractvalue { i64, ptr } %t38, 0
  %t51 = add i64 %t47, %t50
  %t52 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d405, i32 0, i32 1) }, 1
  %t53 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d405, i32 0, i32 1) }, 0
  %t54 = add i64 %t51, %t53
  %t55 = load i64, ptr %l7
  %t56 = inttoptr i64 %t55 to ptr
  %t57 = call ptr @__olang_scope_alloc(ptr %t56, i64 %t54)
  call void @olang_textcopy(ptr %t57, ptr %t39, i64 %t40)
  %t58 = getelementptr i8, ptr %t57, i64 %t40
  call void @olang_textcopy(ptr %t58, ptr %t42, i64 %t43)
  %t59 = getelementptr i8, ptr %t58, i64 %t43
  call void @olang_textcopy(ptr %t59, ptr %t45, i64 %t46)
  %t60 = getelementptr i8, ptr %t59, i64 %t46
  call void @olang_textcopy(ptr %t60, ptr %t49, i64 %t50)
  %t61 = getelementptr i8, ptr %t60, i64 %t50
  call void @olang_textcopy(ptr %t61, ptr %t52, i64 %t53)
  %t62 = insertvalue { i64, ptr } undef, i64 %t54, 0
  %t63 = insertvalue { i64, ptr } %t62, ptr %t57, 1
  %t65 = load i64, ptr %l7
  %t66 = inttoptr i64 %t65 to ptr
  %t67 = extractvalue { i64, ptr } %t63, 0
  %t68 = extractvalue { i64, ptr } %t63, 1
  %t69 = mul i64 %t67, 1
  %t70 = call ptr @__olang_scope_alloc(ptr %t66, i64 %t69)
  call void @llvm.memcpy.p0.p0.i64(ptr %t70, ptr %t68, i64 %t69, i1 false)
  %t71 = insertvalue { i64, ptr } undef, i64 %t67, 0
  %t72 = insertvalue { i64, ptr } %t71, ptr %t70, 1
  %t73 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t74 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t76 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t73, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d406, i32 0, i32 1) }, { i64, ptr } %t74, { i64, ptr } %t72, { i64, ptr } { i64 71, ptr getelementptr inbounds (<{ i64, [71 x i8] }>, ptr @.d407, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t76, ptr %l13
  br label %bb5
bb5:
  %t77 = load %"compiler/diagmsg:Msg", ptr %l13
  store %"compiler/diagmsg:Msg" %t77, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLaneLengths(ptr %v0, i64 %a0, i64 %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 875, ptr %l2
  %t1 = ptrtoint ptr %v0 to i64
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v0)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d408, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d408, i32 0, i32 1) }, 0
  %t11 = call i64 @__olang_fmt_i64(ptr null, i64 %a0)
  %t12 = add i64 %t9, %t11
  %t13 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d409, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d409, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t17 = call i64 @__olang_fmt_i64(ptr null, i64 %a1)
  %t18 = add i64 %t15, %t17
  %t19 = extractvalue { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d410, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d410, i32 0, i32 1) }, 0
  %t21 = add i64 %t18, %t20
  %t22 = load i64, ptr %l3
  %t23 = inttoptr i64 %t22 to ptr
  %t24 = call ptr @__olang_scope_alloc(ptr %t23, i64 %t21)
  call void @olang_textcopy(ptr %t24, ptr %t8, i64 %t9)
  %t25 = getelementptr i8, ptr %t24, i64 %t9
  %t26 = call i64 @__olang_fmt_i64(ptr %t25, i64 %a0)
  %t27 = getelementptr i8, ptr %t25, i64 %t11
  call void @olang_textcopy(ptr %t27, ptr %t13, i64 %t14)
  %t28 = getelementptr i8, ptr %t27, i64 %t14
  %t29 = call i64 @__olang_fmt_i64(ptr %t28, i64 %a1)
  %t30 = getelementptr i8, ptr %t28, i64 %t17
  call void @olang_textcopy(ptr %t30, ptr %t19, i64 %t20)
  %t31 = insertvalue { i64, ptr } undef, i64 %t21, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t24, 1
  %t34 = load i64, ptr %l3
  %t35 = inttoptr i64 %t34 to ptr
  %t36 = extractvalue { i64, ptr } %t32, 0
  %t37 = extractvalue { i64, ptr } %t32, 1
  %t38 = mul i64 %t36, 1
  %t39 = call ptr @__olang_scope_alloc(ptr %t35, i64 %t38)
  call void @llvm.memcpy.p0.p0.i64(ptr %t39, ptr %t37, i64 %t38, i1 false)
  %t40 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t39, 1
  %t42 = load i32, ptr %l2, !range !{i32 0, i32 906}
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 %t42, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d411, i32 0, i32 1) }, { i64, ptr } %t41, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t44, ptr %l9
  br label %bb3
bb3:
  %t45 = load %"compiler/diagmsg:Msg", ptr %l9
  store %"compiler/diagmsg:Msg" %t45, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLengthNotInferable(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l13 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 383, ptr %l2
  %t1 = ptrtoint ptr %v2 to i64
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v2)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d412, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d412, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 58, ptr getelementptr inbounds (<{ i64, [58 x i8] }>, ptr @.d413, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 58, ptr getelementptr inbounds (<{ i64, [58 x i8] }>, ptr @.d413, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l3
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  call void @olang_textcopy(ptr %t18, ptr %t7, i64 %t8)
  %t19 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t18, 1
  %t24 = load i64, ptr %l3
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  store { i64, ptr } %t31, ptr %l7, !tbaa !27
  %t32 = ptrtoint ptr %v2 to i64
  store i64 %t32, ptr %l8, !tbaa !24
  %t33 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e3
  br i1 %t33, label %bb3, label %bb4
bb3:
  %t35 = call ptr @__olang_region_make(ptr %v2)
  %t36 = ptrtoint ptr %t35 to i64
  store i64 %t36, ptr %l8, !tbaa !24
  br label %bb4
bb4:
  %t38 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d414, i32 0, i32 1) }, 1
  %t39 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d414, i32 0, i32 1) }, 0
  %t41 = extractvalue { i64, ptr } %a1, 1
  %t42 = extractvalue { i64, ptr } %a1, 0
  %t43 = add i64 %t39, %t42
  %t44 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d415, i32 0, i32 1) }, 1
  %t45 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d415, i32 0, i32 1) }, 0
  %t46 = add i64 %t43, %t45
  %t47 = load i64, ptr %l8
  %t48 = inttoptr i64 %t47 to ptr
  %t49 = call ptr @__olang_scope_alloc(ptr %t48, i64 %t46)
  call void @olang_textcopy(ptr %t49, ptr %t38, i64 %t39)
  %t50 = getelementptr i8, ptr %t49, i64 %t39
  call void @olang_textcopy(ptr %t50, ptr %t41, i64 %t42)
  %t51 = getelementptr i8, ptr %t50, i64 %t42
  call void @olang_textcopy(ptr %t51, ptr %t44, i64 %t45)
  %t52 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t53 = insertvalue { i64, ptr } %t52, ptr %t49, 1
  %t55 = load i64, ptr %l8
  %t56 = inttoptr i64 %t55 to ptr
  %t57 = extractvalue { i64, ptr } %t53, 0
  %t58 = extractvalue { i64, ptr } %t53, 1
  %t59 = mul i64 %t57, 1
  %t60 = call ptr @__olang_scope_alloc(ptr %t56, i64 %t59)
  call void @llvm.memcpy.p0.p0.i64(ptr %t60, ptr %t58, i64 %t59, i1 false)
  %t61 = insertvalue { i64, ptr } undef, i64 %t57, 0
  %t62 = insertvalue { i64, ptr } %t61, ptr %t60, 1
  %t63 = load i32, ptr %l2, !range !{i32 0, i32 906}
  %t64 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t66 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, i32 %t63, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d416, i32 0, i32 1) }, { i64, ptr } %t64, { i64, ptr } %t62, { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d417, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t66, ptr %l13
  br label %bb5
bb5:
  %t67 = load %"compiler/diagmsg:Msg", ptr %l13
  store %"compiler/diagmsg:Msg" %t67, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLineBodyNotSimple(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 42, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 45, ptr getelementptr inbounds (<{ i64, [45 x i8] }>, ptr @.d418, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 45, ptr getelementptr inbounds (<{ i64, [45 x i8] }>, ptr @.d418, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d419, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d419, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l2
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  call void @olang_textcopy(ptr %t18, ptr %t7, i64 %t8)
  %t19 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t18, 1
  %t24 = load i64, ptr %l2
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d420, i32 0, i32 1) }, { i64, ptr } %t31, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t34, ptr %l7
  br label %bb3
bb3:
  %t35 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t35, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLineBodyOnLine(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 41, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d421, i32 0, i32 1) }, { i64, ptr } { i64 72, ptr getelementptr inbounds (<{ i64, [72 x i8] }>, ptr @.d422, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLiteralEntries(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 570, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d423, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d423, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 61, ptr getelementptr inbounds (<{ i64, [61 x i8] }>, ptr @.d424, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 61, ptr getelementptr inbounds (<{ i64, [61 x i8] }>, ptr @.d424, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l2
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  call void @olang_textcopy(ptr %t18, ptr %t7, i64 %t8)
  %t19 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t18, 1
  %t24 = load i64, ptr %l2
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d425, i32 0, i32 1) }, { i64, ptr } %t31, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t34, ptr %l7
  br label %bb3
bb3:
  %t35 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t35, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLiteralExprNoValue(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 459, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d426, i32 0, i32 1) }, { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d427, i32 0, i32 1) }, { i64, ptr } { i64 62, ptr getelementptr inbounds (<{ i64, [62 x i8] }>, ptr @.d428, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLiteralExprRange(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 344, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 45, ptr getelementptr inbounds (<{ i64, [45 x i8] }>, ptr @.d429, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 45, ptr getelementptr inbounds (<{ i64, [45 x i8] }>, ptr @.d429, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t7, i64 %t8)
  %t16 = getelementptr i8, ptr %t15, i64 %t8
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d430, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLiteralMixed(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, { i64, ptr } %a4) #0 {
entry:
  %l5 = alloca i32
  %l6 = alloca i64
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l19 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 568, ptr %l5
  %t1 = ptrtoint ptr %v5 to i64
  store i64 %t1, ptr %l6, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v5)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l6, !tbaa !24
  br label %bb2
bb2:
  %t10 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d431, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d431, i32 0, i32 1) }, 0
  %t13 = extractvalue { i64, ptr } %a0, 1
  %t14 = extractvalue { i64, ptr } %a0, 0
  %t15 = add i64 %t11, %t14
  %t16 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d432, i32 0, i32 1) }, 1
  %t17 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d432, i32 0, i32 1) }, 0
  %t18 = add i64 %t15, %t17
  %t20 = extractvalue { i64, ptr } %a1, 1
  %t21 = extractvalue { i64, ptr } %a1, 0
  %t22 = add i64 %t18, %t21
  %t23 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d433, i32 0, i32 1) }, 1
  %t24 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d433, i32 0, i32 1) }, 0
  %t25 = add i64 %t22, %t24
  %t27 = extractvalue { i64, ptr } %a2, 1
  %t28 = extractvalue { i64, ptr } %a2, 0
  %t29 = add i64 %t25, %t28
  %t30 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d432, i32 0, i32 1) }, 1
  %t31 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d432, i32 0, i32 1) }, 0
  %t32 = add i64 %t29, %t31
  %t34 = extractvalue { i64, ptr } %a3, 1
  %t35 = extractvalue { i64, ptr } %a3, 0
  %t36 = add i64 %t32, %t35
  %t37 = load i64, ptr %l6
  %t38 = inttoptr i64 %t37 to ptr
  %t39 = call ptr @__olang_scope_alloc(ptr %t38, i64 %t36)
  call void @olang_textcopy(ptr %t39, ptr %t10, i64 %t11)
  %t40 = getelementptr i8, ptr %t39, i64 %t11
  call void @olang_textcopy(ptr %t40, ptr %t13, i64 %t14)
  %t41 = getelementptr i8, ptr %t40, i64 %t14
  call void @olang_textcopy(ptr %t41, ptr %t16, i64 %t17)
  %t42 = getelementptr i8, ptr %t41, i64 %t17
  call void @olang_textcopy(ptr %t42, ptr %t20, i64 %t21)
  %t43 = getelementptr i8, ptr %t42, i64 %t21
  call void @olang_textcopy(ptr %t43, ptr %t23, i64 %t24)
  %t44 = getelementptr i8, ptr %t43, i64 %t24
  call void @olang_textcopy(ptr %t44, ptr %t27, i64 %t28)
  %t45 = getelementptr i8, ptr %t44, i64 %t28
  call void @olang_textcopy(ptr %t45, ptr %t30, i64 %t31)
  %t46 = getelementptr i8, ptr %t45, i64 %t31
  call void @olang_textcopy(ptr %t46, ptr %t34, i64 %t35)
  %t47 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t48 = insertvalue { i64, ptr } %t47, ptr %t39, 1
  %t50 = load i64, ptr %l6
  %t51 = inttoptr i64 %t50 to ptr
  %t52 = extractvalue { i64, ptr } %t48, 0
  %t53 = extractvalue { i64, ptr } %t48, 1
  %t54 = mul i64 %t52, 1
  %t55 = call ptr @__olang_scope_alloc(ptr %t51, i64 %t54)
  call void @llvm.memcpy.p0.p0.i64(ptr %t55, ptr %t53, i64 %t54, i1 false)
  %t56 = insertvalue { i64, ptr } undef, i64 %t52, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t55, 1
  store { i64, ptr } %t57, ptr %l13, !tbaa !27
  %t58 = ptrtoint ptr %v5 to i64
  store i64 %t58, ptr %l14, !tbaa !24
  %t59 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e4
  br i1 %t59, label %bb3, label %bb4
bb3:
  %t61 = call ptr @__olang_region_make(ptr %v5)
  %t62 = ptrtoint ptr %t61 to i64
  store i64 %t62, ptr %l14, !tbaa !24
  br label %bb4
bb4:
  %t64 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d434, i32 0, i32 1) }, 1
  %t65 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d434, i32 0, i32 1) }, 0
  %t67 = extractvalue { i64, ptr } %a4, 1
  %t68 = extractvalue { i64, ptr } %a4, 0
  %t69 = add i64 %t65, %t68
  %t70 = load i64, ptr %l14
  %t71 = inttoptr i64 %t70 to ptr
  %t72 = call ptr @__olang_scope_alloc(ptr %t71, i64 %t69)
  call void @olang_textcopy(ptr %t72, ptr %t64, i64 %t65)
  %t73 = getelementptr i8, ptr %t72, i64 %t65
  call void @olang_textcopy(ptr %t73, ptr %t67, i64 %t68)
  %t74 = insertvalue { i64, ptr } undef, i64 %t69, 0
  %t75 = insertvalue { i64, ptr } %t74, ptr %t72, 1
  %t77 = load i64, ptr %l14
  %t78 = inttoptr i64 %t77 to ptr
  %t79 = extractvalue { i64, ptr } %t75, 0
  %t80 = extractvalue { i64, ptr } %t75, 1
  %t81 = mul i64 %t79, 1
  %t82 = call ptr @__olang_scope_alloc(ptr %t78, i64 %t81)
  call void @llvm.memcpy.p0.p0.i64(ptr %t82, ptr %t80, i64 %t81, i1 false)
  %t83 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t84 = insertvalue { i64, ptr } %t83, ptr %t82, 1
  %t85 = load i32, ptr %l5, !range !{i32 0, i32 906}
  %t86 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t88 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v5, ptr %v5, ptr %v5, ptr %v5, ptr %v5, i32 %t85, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d435, i32 0, i32 1) }, { i64, ptr } %t86, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d436, i32 0, i32 1) }, { i64, ptr } %t84)
  store %"compiler/diagmsg:Msg" %t88, ptr %l19
  br label %bb5
bb5:
  %t89 = load %"compiler/diagmsg:Msg", ptr %l19
  store %"compiler/diagmsg:Msg" %t89, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLiteralNoFromIter(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i32
  %l2 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l13 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i32 564, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t6 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t7 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d437, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d437, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %t6, 1
  %t11 = extractvalue { i64, ptr } %t6, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d438, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d438, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l2
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  call void @olang_textcopy(ptr %t18, ptr %t7, i64 %t8)
  %t19 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t18, 1
  %t24 = load i64, ptr %l2
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  store { i64, ptr } %t31, ptr %l6, !tbaa !27
  %t32 = ptrtoint ptr %v1 to i64
  store i64 %t32, ptr %l7, !tbaa !24
  %t33 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e4
  br i1 %t33, label %bb3, label %bb4
bb3:
  %t35 = call ptr @__olang_region_make(ptr %v1)
  %t36 = ptrtoint ptr %t35 to i64
  store i64 %t36, ptr %l7, !tbaa !24
  br label %bb4
bb4:
  %t37 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t38 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t39 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d439, i32 0, i32 1) }, 1
  %t40 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d439, i32 0, i32 1) }, 0
  %t42 = extractvalue { i64, ptr } %t37, 1
  %t43 = extractvalue { i64, ptr } %t37, 0
  %t44 = add i64 %t40, %t43
  %t45 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d440, i32 0, i32 1) }, 1
  %t46 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d440, i32 0, i32 1) }, 0
  %t47 = add i64 %t44, %t46
  %t49 = extractvalue { i64, ptr } %t38, 1
  %t50 = extractvalue { i64, ptr } %t38, 0
  %t51 = add i64 %t47, %t50
  %t52 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d441, i32 0, i32 1) }, 1
  %t53 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d441, i32 0, i32 1) }, 0
  %t54 = add i64 %t51, %t53
  %t55 = load i64, ptr %l7
  %t56 = inttoptr i64 %t55 to ptr
  %t57 = call ptr @__olang_scope_alloc(ptr %t56, i64 %t54)
  call void @olang_textcopy(ptr %t57, ptr %t39, i64 %t40)
  %t58 = getelementptr i8, ptr %t57, i64 %t40
  call void @olang_textcopy(ptr %t58, ptr %t42, i64 %t43)
  %t59 = getelementptr i8, ptr %t58, i64 %t43
  call void @olang_textcopy(ptr %t59, ptr %t45, i64 %t46)
  %t60 = getelementptr i8, ptr %t59, i64 %t46
  call void @olang_textcopy(ptr %t60, ptr %t49, i64 %t50)
  %t61 = getelementptr i8, ptr %t60, i64 %t50
  call void @olang_textcopy(ptr %t61, ptr %t52, i64 %t53)
  %t62 = insertvalue { i64, ptr } undef, i64 %t54, 0
  %t63 = insertvalue { i64, ptr } %t62, ptr %t57, 1
  %t65 = load i64, ptr %l7
  %t66 = inttoptr i64 %t65 to ptr
  %t67 = extractvalue { i64, ptr } %t63, 0
  %t68 = extractvalue { i64, ptr } %t63, 1
  %t69 = mul i64 %t67, 1
  %t70 = call ptr @__olang_scope_alloc(ptr %t66, i64 %t69)
  call void @llvm.memcpy.p0.p0.i64(ptr %t70, ptr %t68, i64 %t69, i1 false)
  %t71 = insertvalue { i64, ptr } undef, i64 %t67, 0
  %t72 = insertvalue { i64, ptr } %t71, ptr %t70, 1
  %t73 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t74 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t76 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t73, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d442, i32 0, i32 1) }, { i64, ptr } %t74, { i64, ptr } { i64 105, ptr getelementptr inbounds (<{ i64, [105 x i8] }>, ptr @.d443, i32 0, i32 1) }, { i64, ptr } %t72)
  store %"compiler/diagmsg:Msg" %t76, ptr %l13
  br label %bb5
bb5:
  %t77 = load %"compiler/diagmsg:Msg", ptr %l13
  store %"compiler/diagmsg:Msg" %t77, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLiteralNoOwnType(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 460, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } %a0, 1
  %t9 = extractvalue { i64, ptr } %a0, 0
  %t10 = extractvalue { i64, ptr } { i64 65, ptr getelementptr inbounds (<{ i64, [65 x i8] }>, ptr @.d444, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 65, ptr getelementptr inbounds (<{ i64, [65 x i8] }>, ptr @.d444, i32 0, i32 1) }, 0
  %t12 = add i64 %t9, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t8, i64 %t9)
  %t16 = getelementptr i8, ptr %t15, i64 %t9
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d445, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d446, i32 0, i32 1) }, { i64, ptr } { i64 94, ptr getelementptr inbounds (<{ i64, [94 x i8] }>, ptr @.d447, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLiteralNotMade(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i32
  %l2 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l12 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i32 566, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t6 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t7 = extractvalue { i64, ptr } { i64 53, ptr getelementptr inbounds (<{ i64, [53 x i8] }>, ptr @.d448, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 53, ptr getelementptr inbounds (<{ i64, [53 x i8] }>, ptr @.d448, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %t6, 1
  %t11 = extractvalue { i64, ptr } %t6, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d449, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d449, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l2
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  call void @olang_textcopy(ptr %t18, ptr %t7, i64 %t8)
  %t19 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t18, 1
  %t24 = load i64, ptr %l2
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  store { i64, ptr } %t31, ptr %l6, !tbaa !27
  %t32 = ptrtoint ptr %v1 to i64
  store i64 %t32, ptr %l7, !tbaa !24
  %t33 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e4
  br i1 %t33, label %bb3, label %bb4
bb3:
  %t35 = call ptr @__olang_region_make(ptr %v1)
  %t36 = ptrtoint ptr %t35 to i64
  store i64 %t36, ptr %l7, !tbaa !24
  br label %bb4
bb4:
  %t37 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t38 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d450, i32 0, i32 1) }, 1
  %t39 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d450, i32 0, i32 1) }, 0
  %t41 = extractvalue { i64, ptr } %t37, 1
  %t42 = extractvalue { i64, ptr } %t37, 0
  %t43 = add i64 %t39, %t42
  %t44 = extractvalue { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d451, i32 0, i32 1) }, 1
  %t45 = extractvalue { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d451, i32 0, i32 1) }, 0
  %t46 = add i64 %t43, %t45
  %t47 = load i64, ptr %l7
  %t48 = inttoptr i64 %t47 to ptr
  %t49 = call ptr @__olang_scope_alloc(ptr %t48, i64 %t46)
  call void @olang_textcopy(ptr %t49, ptr %t38, i64 %t39)
  %t50 = getelementptr i8, ptr %t49, i64 %t39
  call void @olang_textcopy(ptr %t50, ptr %t41, i64 %t42)
  %t51 = getelementptr i8, ptr %t50, i64 %t42
  call void @olang_textcopy(ptr %t51, ptr %t44, i64 %t45)
  %t52 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t53 = insertvalue { i64, ptr } %t52, ptr %t49, 1
  %t55 = load i64, ptr %l7
  %t56 = inttoptr i64 %t55 to ptr
  %t57 = extractvalue { i64, ptr } %t53, 0
  %t58 = extractvalue { i64, ptr } %t53, 1
  %t59 = mul i64 %t57, 1
  %t60 = call ptr @__olang_scope_alloc(ptr %t56, i64 %t59)
  call void @llvm.memcpy.p0.p0.i64(ptr %t60, ptr %t58, i64 %t59, i1 false)
  %t61 = insertvalue { i64, ptr } undef, i64 %t57, 0
  %t62 = insertvalue { i64, ptr } %t61, ptr %t60, 1
  %t63 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t64 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t66 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t63, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d452, i32 0, i32 1) }, { i64, ptr } %t64, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d453, i32 0, i32 1) }, { i64, ptr } %t62)
  store %"compiler/diagmsg:Msg" %t66, ptr %l12
  br label %bb5
bb5:
  %t67 = load %"compiler/diagmsg:Msg", ptr %l12
  store %"compiler/diagmsg:Msg" %t67, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLocalUnused(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 321, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } %a0, 1
  %t9 = extractvalue { i64, ptr } %a0, 0
  %t10 = extractvalue { i64, ptr } { i64 67, ptr getelementptr inbounds (<{ i64, [67 x i8] }>, ptr @.d454, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 67, ptr getelementptr inbounds (<{ i64, [67 x i8] }>, ptr @.d454, i32 0, i32 1) }, 0
  %t12 = add i64 %t9, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t8, i64 %t9)
  %t16 = getelementptr i8, ptr %t15, i64 %t9
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d455, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMatchValueNone(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 616, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d456, i32 0, i32 1) }, { i64, ptr } { i64 86, ptr getelementptr inbounds (<{ i64, [86 x i8] }>, ptr @.d457, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMatchValueTypes(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 617, ptr %l2
  %t1 = ptrtoint ptr %v2 to i64
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v2)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d458, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d458, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d459, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d459, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = load i64, ptr %l3
  %t22 = inttoptr i64 %t21 to ptr
  %t23 = call ptr @__olang_scope_alloc(ptr %t22, i64 %t20)
  call void @olang_textcopy(ptr %t23, ptr %t8, i64 %t9)
  %t24 = getelementptr i8, ptr %t23, i64 %t9
  call void @olang_textcopy(ptr %t24, ptr %t11, i64 %t12)
  %t25 = getelementptr i8, ptr %t24, i64 %t12
  call void @olang_textcopy(ptr %t25, ptr %t14, i64 %t15)
  %t26 = getelementptr i8, ptr %t25, i64 %t15
  call void @olang_textcopy(ptr %t26, ptr %t18, i64 %t19)
  %t27 = insertvalue { i64, ptr } undef, i64 %t20, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t23, 1
  %t30 = load i64, ptr %l3
  %t31 = inttoptr i64 %t30 to ptr
  %t32 = extractvalue { i64, ptr } %t28, 0
  %t33 = extractvalue { i64, ptr } %t28, 1
  %t34 = mul i64 %t32, 1
  %t35 = call ptr @__olang_scope_alloc(ptr %t31, i64 %t34)
  call void @llvm.memcpy.p0.p0.i64(ptr %t35, ptr %t33, i64 %t34, i1 false)
  %t36 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t35, 1
  %t38 = load i32, ptr %l2, !range !{i32 0, i32 906}
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, i32 %t38, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d460, i32 0, i32 1) }, { i64, ptr } %t37, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t40, ptr %l9
  br label %bb3
bb3:
  %t41 = load %"compiler/diagmsg:Msg", ptr %l9
  store %"compiler/diagmsg:Msg" %t41, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMayBeNull(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3) #0 {
entry:
  %l4 = alloca i32
  %l5 = alloca i64
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l17 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 515, ptr %l4
  %t1 = ptrtoint ptr %v4 to i64
  store i64 %t1, ptr %l5, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v4)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d461, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d461, i32 0, i32 1) }, 0
  %t12 = extractvalue { i64, ptr } %a0, 1
  %t13 = extractvalue { i64, ptr } %a0, 0
  %t14 = add i64 %t10, %t13
  %t15 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d462, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d462, i32 0, i32 1) }, 0
  %t17 = add i64 %t14, %t16
  %t19 = extractvalue { i64, ptr } %a1, 1
  %t20 = extractvalue { i64, ptr } %a1, 0
  %t21 = add i64 %t17, %t20
  %t22 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d463, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d463, i32 0, i32 1) }, 0
  %t24 = add i64 %t21, %t23
  %t26 = extractvalue { i64, ptr } %a2, 1
  %t27 = extractvalue { i64, ptr } %a2, 0
  %t28 = add i64 %t24, %t27
  %t29 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d464, i32 0, i32 1) }, 1
  %t30 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d464, i32 0, i32 1) }, 0
  %t31 = add i64 %t28, %t30
  %t32 = load i64, ptr %l5
  %t33 = inttoptr i64 %t32 to ptr
  %t34 = call ptr @__olang_scope_alloc(ptr %t33, i64 %t31)
  call void @olang_textcopy(ptr %t34, ptr %t9, i64 %t10)
  %t35 = getelementptr i8, ptr %t34, i64 %t10
  call void @olang_textcopy(ptr %t35, ptr %t12, i64 %t13)
  %t36 = getelementptr i8, ptr %t35, i64 %t13
  call void @olang_textcopy(ptr %t36, ptr %t15, i64 %t16)
  %t37 = getelementptr i8, ptr %t36, i64 %t16
  call void @olang_textcopy(ptr %t37, ptr %t19, i64 %t20)
  %t38 = getelementptr i8, ptr %t37, i64 %t20
  call void @olang_textcopy(ptr %t38, ptr %t22, i64 %t23)
  %t39 = getelementptr i8, ptr %t38, i64 %t23
  call void @olang_textcopy(ptr %t39, ptr %t26, i64 %t27)
  %t40 = getelementptr i8, ptr %t39, i64 %t27
  call void @olang_textcopy(ptr %t40, ptr %t29, i64 %t30)
  %t41 = insertvalue { i64, ptr } undef, i64 %t31, 0
  %t42 = insertvalue { i64, ptr } %t41, ptr %t34, 1
  %t44 = load i64, ptr %l5
  %t45 = inttoptr i64 %t44 to ptr
  %t46 = extractvalue { i64, ptr } %t42, 0
  %t47 = extractvalue { i64, ptr } %t42, 1
  %t48 = mul i64 %t46, 1
  %t49 = call ptr @__olang_scope_alloc(ptr %t45, i64 %t48)
  call void @llvm.memcpy.p0.p0.i64(ptr %t49, ptr %t47, i64 %t48, i1 false)
  %t50 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr %t49, 1
  store { i64, ptr } %t51, ptr %l11, !tbaa !27
  %t52 = ptrtoint ptr %v4 to i64
  store i64 %t52, ptr %l12, !tbaa !24
  %t53 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e4
  br i1 %t53, label %bb3, label %bb4
bb3:
  %t55 = call ptr @__olang_region_make(ptr %v4)
  %t56 = ptrtoint ptr %t55 to i64
  store i64 %t56, ptr %l12, !tbaa !24
  br label %bb4
bb4:
  %t58 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d465, i32 0, i32 1) }, 1
  %t59 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d465, i32 0, i32 1) }, 0
  %t61 = extractvalue { i64, ptr } %a3, 1
  %t62 = extractvalue { i64, ptr } %a3, 0
  %t63 = add i64 %t59, %t62
  %t64 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d466, i32 0, i32 1) }, 1
  %t65 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d466, i32 0, i32 1) }, 0
  %t66 = add i64 %t63, %t65
  %t67 = load i64, ptr %l12
  %t68 = inttoptr i64 %t67 to ptr
  %t69 = call ptr @__olang_scope_alloc(ptr %t68, i64 %t66)
  call void @olang_textcopy(ptr %t69, ptr %t58, i64 %t59)
  %t70 = getelementptr i8, ptr %t69, i64 %t59
  call void @olang_textcopy(ptr %t70, ptr %t61, i64 %t62)
  %t71 = getelementptr i8, ptr %t70, i64 %t62
  call void @olang_textcopy(ptr %t71, ptr %t64, i64 %t65)
  %t72 = insertvalue { i64, ptr } undef, i64 %t66, 0
  %t73 = insertvalue { i64, ptr } %t72, ptr %t69, 1
  %t75 = load i64, ptr %l12
  %t76 = inttoptr i64 %t75 to ptr
  %t77 = extractvalue { i64, ptr } %t73, 0
  %t78 = extractvalue { i64, ptr } %t73, 1
  %t79 = mul i64 %t77, 1
  %t80 = call ptr @__olang_scope_alloc(ptr %t76, i64 %t79)
  call void @llvm.memcpy.p0.p0.i64(ptr %t80, ptr %t78, i64 %t79, i1 false)
  %t81 = insertvalue { i64, ptr } undef, i64 %t77, 0
  %t82 = insertvalue { i64, ptr } %t81, ptr %t80, 1
  %t83 = load i32, ptr %l4, !range !{i32 0, i32 906}
  %t84 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t86 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v4, ptr %v4, ptr %v4, ptr %v4, ptr %v4, i32 %t83, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d467, i32 0, i32 1) }, { i64, ptr } %t84, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d468, i32 0, i32 1) }, { i64, ptr } %t82)
  store %"compiler/diagmsg:Msg" %t86, ptr %l17
  br label %bb5
bb5:
  %t87 = load %"compiler/diagmsg:Msg", ptr %l17
  store %"compiler/diagmsg:Msg" %t87, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMemberIsPrivate(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 413, ptr %l2
  %t1 = ptrtoint ptr %v2 to i64
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v2)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d469, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d469, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d470, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d470, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d471, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d471, i32 0, i32 1) }, 0
  %t23 = add i64 %t20, %t22
  %t24 = load i64, ptr %l3
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t23)
  call void @olang_textcopy(ptr %t26, ptr %t8, i64 %t9)
  %t27 = getelementptr i8, ptr %t26, i64 %t9
  call void @olang_textcopy(ptr %t27, ptr %t11, i64 %t12)
  %t28 = getelementptr i8, ptr %t27, i64 %t12
  call void @olang_textcopy(ptr %t28, ptr %t14, i64 %t15)
  %t29 = getelementptr i8, ptr %t28, i64 %t15
  call void @olang_textcopy(ptr %t29, ptr %t18, i64 %t19)
  %t30 = getelementptr i8, ptr %t29, i64 %t19
  call void @olang_textcopy(ptr %t30, ptr %t21, i64 %t22)
  %t31 = insertvalue { i64, ptr } undef, i64 %t23, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t26, 1
  %t34 = load i64, ptr %l3
  %t35 = inttoptr i64 %t34 to ptr
  %t36 = extractvalue { i64, ptr } %t32, 0
  %t37 = extractvalue { i64, ptr } %t32, 1
  %t38 = mul i64 %t36, 1
  %t39 = call ptr @__olang_scope_alloc(ptr %t35, i64 %t38)
  call void @llvm.memcpy.p0.p0.i64(ptr %t39, ptr %t37, i64 %t38, i1 false)
  %t40 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t39, 1
  %t42 = load i32, ptr %l2, !range !{i32 0, i32 906}
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d472, i32 0, i32 1) }, { i64, ptr } %t41, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t44, ptr %l9
  br label %bb3
bb3:
  %t45 = load %"compiler/diagmsg:Msg", ptr %l9
  store %"compiler/diagmsg:Msg" %t45, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMembershipNoMethod(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 479, ptr %l2
  %t1 = ptrtoint ptr %v2 to i64
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v2)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d473, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d473, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d474, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d474, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d475, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d475, i32 0, i32 1) }, 0
  %t23 = add i64 %t20, %t22
  %t24 = load i64, ptr %l3
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t23)
  call void @olang_textcopy(ptr %t26, ptr %t8, i64 %t9)
  %t27 = getelementptr i8, ptr %t26, i64 %t9
  call void @olang_textcopy(ptr %t27, ptr %t11, i64 %t12)
  %t28 = getelementptr i8, ptr %t27, i64 %t12
  call void @olang_textcopy(ptr %t28, ptr %t14, i64 %t15)
  %t29 = getelementptr i8, ptr %t28, i64 %t15
  call void @olang_textcopy(ptr %t29, ptr %t18, i64 %t19)
  %t30 = getelementptr i8, ptr %t29, i64 %t19
  call void @olang_textcopy(ptr %t30, ptr %t21, i64 %t22)
  %t31 = insertvalue { i64, ptr } undef, i64 %t23, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t26, 1
  %t34 = load i64, ptr %l3
  %t35 = inttoptr i64 %t34 to ptr
  %t36 = extractvalue { i64, ptr } %t32, 0
  %t37 = extractvalue { i64, ptr } %t32, 1
  %t38 = mul i64 %t36, 1
  %t39 = call ptr @__olang_scope_alloc(ptr %t35, i64 %t38)
  call void @llvm.memcpy.p0.p0.i64(ptr %t39, ptr %t37, i64 %t38, i1 false)
  %t40 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t39, 1
  %t42 = load i32, ptr %l2, !range !{i32 0, i32 906}
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d476, i32 0, i32 1) }, { i64, ptr } %t41, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t44, ptr %l9
  br label %bb3
bb3:
  %t45 = load %"compiler/diagmsg:Msg", ptr %l9
  store %"compiler/diagmsg:Msg" %t45, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMembershipNotBool(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 480, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } %a0, 1
  %t9 = extractvalue { i64, ptr } %a0, 0
  %t10 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d477, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d477, i32 0, i32 1) }, 0
  %t12 = add i64 %t9, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t8, i64 %t9)
  %t16 = getelementptr i8, ptr %t15, i64 %t9
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d478, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMethodOnForeignType(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 299, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d479, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d479, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d480, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d480, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l2
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  call void @olang_textcopy(ptr %t18, ptr %t7, i64 %t8)
  %t19 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t18, 1
  %t24 = load i64, ptr %l2
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d481, i32 0, i32 1) }, { i64, ptr } %t31, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t34, ptr %l7
  br label %bb3
bb3:
  %t35 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t35, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eModeOneFile(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 2, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } %a0, 1
  %t9 = extractvalue { i64, ptr } %a0, 0
  %t10 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d482, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d482, i32 0, i32 1) }, 0
  %t12 = add i64 %t9, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t8, i64 %t9)
  %t16 = getelementptr i8, ptr %t15, i64 %t9
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d483, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMutOnLocal(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 593, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 59, ptr getelementptr inbounds (<{ i64, [59 x i8] }>, ptr @.d484, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 59, ptr getelementptr inbounds (<{ i64, [59 x i8] }>, ptr @.d484, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d485, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d485, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l2
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  call void @olang_textcopy(ptr %t18, ptr %t7, i64 %t8)
  %t19 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t18, 1
  %t24 = load i64, ptr %l2
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d486, i32 0, i32 1) }, { i64, ptr } %t31, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t34, ptr %l7
  br label %bb3
bb3:
  %t35 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t35, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMutOnValueParam(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 232, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d487, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d487, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t7, i64 %t8)
  %t16 = getelementptr i8, ptr %t15, i64 %t8
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d488, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } { i64 89, ptr getelementptr inbounds (<{ i64, [89 x i8] }>, ptr @.d489, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNameClashesWithImport(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 116, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } %a0, 1
  %t9 = extractvalue { i64, ptr } %a0, 0
  %t10 = extractvalue { i64, ptr } { i64 57, ptr getelementptr inbounds (<{ i64, [57 x i8] }>, ptr @.d490, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 57, ptr getelementptr inbounds (<{ i64, [57 x i8] }>, ptr @.d490, i32 0, i32 1) }, 0
  %t12 = add i64 %t9, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t8, i64 %t9)
  %t16 = getelementptr i8, ptr %t15, i64 %t9
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d491, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNamedArgAlsoPositional(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 394, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d492, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d492, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d493, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d493, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l2
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  call void @olang_textcopy(ptr %t18, ptr %t7, i64 %t8)
  %t19 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t18, 1
  %t24 = load i64, ptr %l2
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d494, i32 0, i32 1) }, { i64, ptr } %t31, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t34, ptr %l7
  br label %bb3
bb3:
  %t35 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t35, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNamedArgRequired(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 392, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d495, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d495, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 61, ptr getelementptr inbounds (<{ i64, [61 x i8] }>, ptr @.d496, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 61, ptr getelementptr inbounds (<{ i64, [61 x i8] }>, ptr @.d496, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l2
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  call void @olang_textcopy(ptr %t18, ptr %t7, i64 %t8)
  %t19 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t18, 1
  %t24 = load i64, ptr %l2
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d497, i32 0, i32 1) }, { i64, ptr } %t31, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t34, ptr %l7
  br label %bb3
bb3:
  %t35 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t35, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNamedArgUnknown(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 390, ptr %l2
  %t1 = ptrtoint ptr %v2 to i64
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v2)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t9 = extractvalue { i64, ptr } %a0, 1
  %t10 = extractvalue { i64, ptr } %a0, 0
  %t11 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d498, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d498, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t15 = extractvalue { i64, ptr } %a1, 1
  %t16 = extractvalue { i64, ptr } %a1, 0
  %t17 = add i64 %t13, %t16
  %t18 = load i64, ptr %l3
  %t19 = inttoptr i64 %t18 to ptr
  %t20 = call ptr @__olang_scope_alloc(ptr %t19, i64 %t17)
  call void @olang_textcopy(ptr %t20, ptr %t9, i64 %t10)
  %t21 = getelementptr i8, ptr %t20, i64 %t10
  call void @olang_textcopy(ptr %t21, ptr %t11, i64 %t12)
  %t22 = getelementptr i8, ptr %t21, i64 %t12
  call void @olang_textcopy(ptr %t22, ptr %t15, i64 %t16)
  %t23 = insertvalue { i64, ptr } undef, i64 %t17, 0
  %t24 = insertvalue { i64, ptr } %t23, ptr %t20, 1
  %t26 = load i64, ptr %l3
  %t27 = inttoptr i64 %t26 to ptr
  %t28 = extractvalue { i64, ptr } %t24, 0
  %t29 = extractvalue { i64, ptr } %t24, 1
  %t30 = mul i64 %t28, 1
  %t31 = call ptr @__olang_scope_alloc(ptr %t27, i64 %t30)
  call void @llvm.memcpy.p0.p0.i64(ptr %t31, ptr %t29, i64 %t30, i1 false)
  %t32 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t33 = insertvalue { i64, ptr } %t32, ptr %t31, 1
  %t34 = load i32, ptr %l2, !range !{i32 0, i32 906}
  %t36 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, i32 %t34, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d499, i32 0, i32 1) }, { i64, ptr } %t33, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t36, ptr %l9
  br label %bb3
bb3:
  %t37 = load %"compiler/diagmsg:Msg", ptr %l9
  store %"compiler/diagmsg:Msg" %t37, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNarrowedAcrossLoop(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i32
  %l2 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l12 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i32 514, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t6 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t7 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d500, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d500, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %t6, 1
  %t11 = extractvalue { i64, ptr } %t6, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 56, ptr getelementptr inbounds (<{ i64, [56 x i8] }>, ptr @.d501, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 56, ptr getelementptr inbounds (<{ i64, [56 x i8] }>, ptr @.d501, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l2
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  call void @olang_textcopy(ptr %t18, ptr %t7, i64 %t8)
  %t19 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t18, 1
  %t24 = load i64, ptr %l2
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  store { i64, ptr } %t31, ptr %l6, !tbaa !27
  %t32 = ptrtoint ptr %v1 to i64
  store i64 %t32, ptr %l7, !tbaa !24
  %t33 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e4
  br i1 %t33, label %bb3, label %bb4
bb3:
  %t35 = call ptr @__olang_region_make(ptr %v1)
  %t36 = ptrtoint ptr %t35 to i64
  store i64 %t36, ptr %l7, !tbaa !24
  br label %bb4
bb4:
  %t37 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t38 = extractvalue { i64, ptr } { i64 72, ptr getelementptr inbounds (<{ i64, [72 x i8] }>, ptr @.d502, i32 0, i32 1) }, 1
  %t39 = extractvalue { i64, ptr } { i64 72, ptr getelementptr inbounds (<{ i64, [72 x i8] }>, ptr @.d502, i32 0, i32 1) }, 0
  %t41 = extractvalue { i64, ptr } %t37, 1
  %t42 = extractvalue { i64, ptr } %t37, 0
  %t43 = add i64 %t39, %t42
  %t44 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d503, i32 0, i32 1) }, 1
  %t45 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d503, i32 0, i32 1) }, 0
  %t46 = add i64 %t43, %t45
  %t47 = load i64, ptr %l7
  %t48 = inttoptr i64 %t47 to ptr
  %t49 = call ptr @__olang_scope_alloc(ptr %t48, i64 %t46)
  call void @olang_textcopy(ptr %t49, ptr %t38, i64 %t39)
  %t50 = getelementptr i8, ptr %t49, i64 %t39
  call void @olang_textcopy(ptr %t50, ptr %t41, i64 %t42)
  %t51 = getelementptr i8, ptr %t50, i64 %t42
  call void @olang_textcopy(ptr %t51, ptr %t44, i64 %t45)
  %t52 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t53 = insertvalue { i64, ptr } %t52, ptr %t49, 1
  %t55 = load i64, ptr %l7
  %t56 = inttoptr i64 %t55 to ptr
  %t57 = extractvalue { i64, ptr } %t53, 0
  %t58 = extractvalue { i64, ptr } %t53, 1
  %t59 = mul i64 %t57, 1
  %t60 = call ptr @__olang_scope_alloc(ptr %t56, i64 %t59)
  call void @llvm.memcpy.p0.p0.i64(ptr %t60, ptr %t58, i64 %t59, i1 false)
  %t61 = insertvalue { i64, ptr } undef, i64 %t57, 0
  %t62 = insertvalue { i64, ptr } %t61, ptr %t60, 1
  %t63 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t64 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t66 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t63, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d504, i32 0, i32 1) }, { i64, ptr } %t64, { i64, ptr } { i64 62, ptr getelementptr inbounds (<{ i64, [62 x i8] }>, ptr @.d505, i32 0, i32 1) }, { i64, ptr } %t62)
  store %"compiler/diagmsg:Msg" %t66, ptr %l12
  br label %bb5
bb5:
  %t67 = load %"compiler/diagmsg:Msg", ptr %l12
  store %"compiler/diagmsg:Msg" %t67, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNegLiteralTooLarge(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 452, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d506, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d506, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d507, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d507, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l2
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  call void @olang_textcopy(ptr %t18, ptr %t7, i64 %t8)
  %t19 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t18, 1
  %t24 = load i64, ptr %l2
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d508, i32 0, i32 1) }, { i64, ptr } %t31, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t34, ptr %l7
  br label %bb3
bb3:
  %t35 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t35, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoBuilder(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca i64
  %l11 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 313, ptr %l3
  %t1 = ptrtoint ptr %v3 to i64
  store i64 %t1, ptr %l4, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v3)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d509, i32 0, i32 1) }, 1
  %t13 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d509, i32 0, i32 1) }, 0
  %t14 = add i64 %t11, %t13
  %t16 = extractvalue { i64, ptr } %a1, 1
  %t17 = extractvalue { i64, ptr } %a1, 0
  %t18 = add i64 %t14, %t17
  %t20 = extractvalue { i64, ptr } %a2, 1
  %t21 = extractvalue { i64, ptr } %a2, 0
  %t22 = add i64 %t18, %t21
  %t23 = load i64, ptr %l4
  %t24 = inttoptr i64 %t23 to ptr
  %t25 = call ptr @__olang_scope_alloc(ptr %t24, i64 %t22)
  call void @olang_textcopy(ptr %t25, ptr %t10, i64 %t11)
  %t26 = getelementptr i8, ptr %t25, i64 %t11
  call void @olang_textcopy(ptr %t26, ptr %t12, i64 %t13)
  %t27 = getelementptr i8, ptr %t26, i64 %t13
  call void @olang_textcopy(ptr %t27, ptr %t16, i64 %t17)
  %t28 = getelementptr i8, ptr %t27, i64 %t17
  call void @olang_textcopy(ptr %t28, ptr %t20, i64 %t21)
  %t29 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t30 = insertvalue { i64, ptr } %t29, ptr %t25, 1
  %t32 = load i64, ptr %l4
  %t33 = inttoptr i64 %t32 to ptr
  %t34 = extractvalue { i64, ptr } %t30, 0
  %t35 = extractvalue { i64, ptr } %t30, 1
  %t36 = mul i64 %t34, 1
  %t37 = call ptr @__olang_scope_alloc(ptr %t33, i64 %t36)
  call void @llvm.memcpy.p0.p0.i64(ptr %t37, ptr %t35, i64 %t36, i1 false)
  %t38 = insertvalue { i64, ptr } undef, i64 %t34, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr %t37, 1
  %t40 = load i32, ptr %l3, !range !{i32 0, i32 906}
  %t42 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, ptr %v3, ptr %v3, i32 %t40, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d510, i32 0, i32 1) }, { i64, ptr } %t39, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t42, ptr %l11
  br label %bb3
bb3:
  %t43 = load %"compiler/diagmsg:Msg", ptr %l11
  store %"compiler/diagmsg:Msg" %t43, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoLimit(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca i32
  %l4 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l12 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca i64
  %l23 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store i32 769, ptr %l3
  %t1 = ptrtoint ptr %v3 to i64
  store i64 %t1, ptr %l4, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v3)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t9 = extractvalue { i64, ptr } %a0, 1
  %t10 = extractvalue { i64, ptr } %a0, 0
  %t11 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d511, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d511, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t15 = extractvalue { i64, ptr } %a1, 1
  %t16 = extractvalue { i64, ptr } %a1, 0
  %t17 = add i64 %t13, %t16
  %t18 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d512, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d512, i32 0, i32 1) }, 0
  %t20 = add i64 %t17, %t19
  %t21 = load i64, ptr %l4
  %t22 = inttoptr i64 %t21 to ptr
  %t23 = call ptr @__olang_scope_alloc(ptr %t22, i64 %t20)
  call void @olang_textcopy(ptr %t23, ptr %t9, i64 %t10)
  %t24 = getelementptr i8, ptr %t23, i64 %t10
  call void @olang_textcopy(ptr %t24, ptr %t11, i64 %t12)
  %t25 = getelementptr i8, ptr %t24, i64 %t12
  call void @olang_textcopy(ptr %t25, ptr %t15, i64 %t16)
  %t26 = getelementptr i8, ptr %t25, i64 %t16
  call void @olang_textcopy(ptr %t26, ptr %t18, i64 %t19)
  %t27 = insertvalue { i64, ptr } undef, i64 %t20, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t23, 1
  %t30 = load i64, ptr %l4
  %t31 = inttoptr i64 %t30 to ptr
  %t32 = extractvalue { i64, ptr } %t28, 0
  %t33 = extractvalue { i64, ptr } %t28, 1
  %t34 = mul i64 %t32, 1
  %t35 = call ptr @__olang_scope_alloc(ptr %t31, i64 %t34)
  call void @llvm.memcpy.p0.p0.i64(ptr %t35, ptr %t33, i64 %t34, i1 false)
  %t36 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t35, 1
  store { i64, ptr } %t37, ptr %l9, !tbaa !27
  %t38 = ptrtoint ptr %v3 to i64
  store i64 %t38, ptr %l10, !tbaa !24
  %t39 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e3
  br i1 %t39, label %bb3, label %bb4
bb3:
  %t41 = call ptr @__olang_region_make(ptr %v3)
  %t42 = ptrtoint ptr %t41 to i64
  store i64 %t42, ptr %l10, !tbaa !24
  br label %bb4
bb4:
  %t43 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t43, ptr %l12, !tbaa !27
  %t44 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t47 = extractvalue { i64, ptr } %t44, 0
  store i64 %t47, ptr %l15, !tbaa !24
  %t48 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t49 = extractvalue { i64, ptr } %t48, 0
  store i64 %t49, ptr %l16, !tbaa !24
  %t50 = icmp sge i64 3, 0
  br i1 %t50, label %bb5, label %bb6
bb5:
  %t52 = load i64, ptr %l15, !tbaa !24
  %t53 = icmp sle i64 3, %t52
  br i1 %t53, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_558e38b2b979820_b81e4d452591bbd4)
  unreachable
bb7:
  %t55 = load i64, ptr %l15, !tbaa !24
  %t56 = load i64, ptr %l16, !tbaa !24
  %t57 = icmp sle i64 %t55, %t56
  br i1 %t57, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_558e38b2b979820_b81e4d452591bbd4)
  unreachable
bb9:
  %t59 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !27
  %t61 = load i64, ptr %l15, !tbaa !24
  %t62 = getelementptr i8, ptr %t60, i64 3
  %t63 = sub i64 %t61, 3
  %t64 = insertvalue { i64, ptr } undef, i64 %t63, 0
  %t65 = insertvalue { i64, ptr } %t64, ptr %t62, 1
  %t67 = extractvalue { i64, ptr } %t65, 1
  %t68 = extractvalue { i64, ptr } %t65, 0
  %t69 = load i64, ptr %l10
  %t70 = inttoptr i64 %t69 to ptr
  %t71 = call ptr @__olang_scope_alloc(ptr %t70, i64 %t68)
  call void @olang_textcopy(ptr %t71, ptr %t67, i64 %t68)
  %t72 = insertvalue { i64, ptr } undef, i64 %t68, 0
  %t73 = insertvalue { i64, ptr } %t72, ptr %t71, 1
  %t75 = load i64, ptr %l10
  %t76 = inttoptr i64 %t75 to ptr
  %t77 = extractvalue { i64, ptr } %t73, 0
  %t78 = extractvalue { i64, ptr } %t73, 1
  %t79 = mul i64 %t77, 1
  %t80 = call ptr @__olang_scope_alloc(ptr %t76, i64 %t79)
  call void @llvm.memcpy.p0.p0.i64(ptr %t80, ptr %t78, i64 %t79, i1 false)
  %t81 = insertvalue { i64, ptr } undef, i64 %t77, 0
  %t82 = insertvalue { i64, ptr } %t81, ptr %t80, 1
  %t83 = load i32, ptr %l3, !range !{i32 0, i32 906}
  %t84 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t86 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, ptr %v3, ptr %v3, i32 %t83, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d513, i32 0, i32 1) }, { i64, ptr } %t84, { i64, ptr } %t82, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t86, ptr %l23
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_558e38b2b979820_b81e4d452591bbd4)
  unreachable
bb11:
  %t87 = load %"compiler/diagmsg:Msg", ptr %l23
  store %"compiler/diagmsg:Msg" %t87, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoMain(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 57, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d514, i32 0, i32 1) }, { i64, ptr } { i64 54, ptr getelementptr inbounds (<{ i64, [54 x i8] }>, ptr @.d515, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoSuchErrorWord(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca i64
  %l11 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 471, ptr %l3
  %t1 = ptrtoint ptr %v3 to i64
  store i64 %t1, ptr %l4, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v3)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d516, i32 0, i32 1) }, 1
  %t13 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d516, i32 0, i32 1) }, 0
  %t14 = add i64 %t11, %t13
  %t16 = extractvalue { i64, ptr } %a1, 1
  %t17 = extractvalue { i64, ptr } %a1, 0
  %t18 = add i64 %t14, %t17
  %t20 = extractvalue { i64, ptr } %a2, 1
  %t21 = extractvalue { i64, ptr } %a2, 0
  %t22 = add i64 %t18, %t21
  %t23 = load i64, ptr %l4
  %t24 = inttoptr i64 %t23 to ptr
  %t25 = call ptr @__olang_scope_alloc(ptr %t24, i64 %t22)
  call void @olang_textcopy(ptr %t25, ptr %t10, i64 %t11)
  %t26 = getelementptr i8, ptr %t25, i64 %t11
  call void @olang_textcopy(ptr %t26, ptr %t12, i64 %t13)
  %t27 = getelementptr i8, ptr %t26, i64 %t13
  call void @olang_textcopy(ptr %t27, ptr %t16, i64 %t17)
  %t28 = getelementptr i8, ptr %t27, i64 %t17
  call void @olang_textcopy(ptr %t28, ptr %t20, i64 %t21)
  %t29 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t30 = insertvalue { i64, ptr } %t29, ptr %t25, 1
  %t32 = load i64, ptr %l4
  %t33 = inttoptr i64 %t32 to ptr
  %t34 = extractvalue { i64, ptr } %t30, 0
  %t35 = extractvalue { i64, ptr } %t30, 1
  %t36 = mul i64 %t34, 1
  %t37 = call ptr @__olang_scope_alloc(ptr %t33, i64 %t36)
  call void @llvm.memcpy.p0.p0.i64(ptr %t37, ptr %t35, i64 %t36, i1 false)
  %t38 = insertvalue { i64, ptr } undef, i64 %t34, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr %t37, 1
  %t40 = load i32, ptr %l3, !range !{i32 0, i32 906}
  %t42 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, ptr %v3, ptr %v3, i32 %t40, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d517, i32 0, i32 1) }, { i64, ptr } %t39, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t42, ptr %l11
  br label %bb3
bb3:
  %t43 = load %"compiler/diagmsg:Msg", ptr %l11
  store %"compiler/diagmsg:Msg" %t43, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoZeroNonNull(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 519, ptr %l2
  %t1 = ptrtoint ptr %v2 to i64
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v2)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t9 = extractvalue { i64, ptr } %a0, 1
  %t10 = extractvalue { i64, ptr } %a0, 0
  %t11 = extractvalue { i64, ptr } { i64 68, ptr getelementptr inbounds (<{ i64, [68 x i8] }>, ptr @.d518, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 68, ptr getelementptr inbounds (<{ i64, [68 x i8] }>, ptr @.d518, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t15 = extractvalue { i64, ptr } %a1, 1
  %t16 = extractvalue { i64, ptr } %a1, 0
  %t17 = add i64 %t13, %t16
  %t18 = load i64, ptr %l3
  %t19 = inttoptr i64 %t18 to ptr
  %t20 = call ptr @__olang_scope_alloc(ptr %t19, i64 %t17)
  call void @olang_textcopy(ptr %t20, ptr %t9, i64 %t10)
  %t21 = getelementptr i8, ptr %t20, i64 %t10
  call void @olang_textcopy(ptr %t21, ptr %t11, i64 %t12)
  %t22 = getelementptr i8, ptr %t21, i64 %t12
  call void @olang_textcopy(ptr %t22, ptr %t15, i64 %t16)
  %t23 = insertvalue { i64, ptr } undef, i64 %t17, 0
  %t24 = insertvalue { i64, ptr } %t23, ptr %t20, 1
  %t26 = load i64, ptr %l3
  %t27 = inttoptr i64 %t26 to ptr
  %t28 = extractvalue { i64, ptr } %t24, 0
  %t29 = extractvalue { i64, ptr } %t24, 1
  %t30 = mul i64 %t28, 1
  %t31 = call ptr @__olang_scope_alloc(ptr %t27, i64 %t30)
  call void @llvm.memcpy.p0.p0.i64(ptr %t31, ptr %t29, i64 %t30, i1 false)
  %t32 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t33 = insertvalue { i64, ptr } %t32, ptr %t31, 1
  %t34 = load i32, ptr %l2, !range !{i32 0, i32 906}
  %t36 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, i32 %t34, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d519, i32 0, i32 1) }, { i64, ptr } %t33, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t36, ptr %l9
  br label %bb3
bb3:
  %t37 = load %"compiler/diagmsg:Msg", ptr %l9
  store %"compiler/diagmsg:Msg" %t37, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoZeroValue(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l13 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 720, ptr %l2
  %t1 = ptrtoint ptr %v2 to i64
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v2)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } %a0, 1
  %t9 = extractvalue { i64, ptr } %a0, 0
  %t10 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d520, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d520, i32 0, i32 1) }, 0
  %t12 = add i64 %t9, %t11
  %t13 = load i64, ptr %l3
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t8, i64 %t9)
  %t16 = getelementptr i8, ptr %t15, i64 %t9
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l3
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  store { i64, ptr } %t27, ptr %l7, !tbaa !27
  %t28 = ptrtoint ptr %v2 to i64
  store i64 %t28, ptr %l8, !tbaa !24
  %t29 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e3
  br i1 %t29, label %bb3, label %bb4
bb3:
  %t31 = call ptr @__olang_region_make(ptr %v2)
  %t32 = ptrtoint ptr %t31 to i64
  store i64 %t32, ptr %l8, !tbaa !24
  br label %bb4
bb4:
  %t34 = extractvalue { i64, ptr } { i64 55, ptr getelementptr inbounds (<{ i64, [55 x i8] }>, ptr @.d521, i32 0, i32 1) }, 1
  %t35 = extractvalue { i64, ptr } { i64 55, ptr getelementptr inbounds (<{ i64, [55 x i8] }>, ptr @.d521, i32 0, i32 1) }, 0
  %t37 = extractvalue { i64, ptr } %a1, 1
  %t38 = extractvalue { i64, ptr } %a1, 0
  %t39 = add i64 %t35, %t38
  %t40 = load i64, ptr %l8
  %t41 = inttoptr i64 %t40 to ptr
  %t42 = call ptr @__olang_scope_alloc(ptr %t41, i64 %t39)
  call void @olang_textcopy(ptr %t42, ptr %t34, i64 %t35)
  %t43 = getelementptr i8, ptr %t42, i64 %t35
  call void @olang_textcopy(ptr %t43, ptr %t37, i64 %t38)
  %t44 = insertvalue { i64, ptr } undef, i64 %t39, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t42, 1
  %t47 = load i64, ptr %l8
  %t48 = inttoptr i64 %t47 to ptr
  %t49 = extractvalue { i64, ptr } %t45, 0
  %t50 = extractvalue { i64, ptr } %t45, 1
  %t51 = mul i64 %t49, 1
  %t52 = call ptr @__olang_scope_alloc(ptr %t48, i64 %t51)
  call void @llvm.memcpy.p0.p0.i64(ptr %t52, ptr %t50, i64 %t51, i1 false)
  %t53 = insertvalue { i64, ptr } undef, i64 %t49, 0
  %t54 = insertvalue { i64, ptr } %t53, ptr %t52, 1
  %t55 = load i32, ptr %l2, !range !{i32 0, i32 906}
  %t56 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t58 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, i32 %t55, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d522, i32 0, i32 1) }, { i64, ptr } %t56, { i64, ptr } %t54, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t58, ptr %l13
  br label %bb5
bb5:
  %t59 = load %"compiler/diagmsg:Msg", ptr %l13
  store %"compiler/diagmsg:Msg" %t59, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotAStatement(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 595, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d523, i32 0, i32 1) }, { i64, ptr } { i64 78, ptr getelementptr inbounds (<{ i64, [78 x i8] }>, ptr @.d524, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotCallable(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 483, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } %a0, 1
  %t9 = extractvalue { i64, ptr } %a0, 0
  %t10 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d525, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d525, i32 0, i32 1) }, 0
  %t12 = add i64 %t9, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t8, i64 %t9)
  %t16 = getelementptr i8, ptr %t15, i64 %t9
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d526, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotExtendedOp(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l15 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 476, ptr %l3
  %t1 = ptrtoint ptr %v3 to i64
  store i64 %t1, ptr %l4, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v3)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t9 = extractvalue { i64, ptr } %a0, 1
  %t10 = extractvalue { i64, ptr } %a0, 0
  %t11 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d527, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d527, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t15 = extractvalue { i64, ptr } %a1, 1
  %t16 = extractvalue { i64, ptr } %a1, 0
  %t17 = add i64 %t13, %t16
  %t18 = load i64, ptr %l4
  %t19 = inttoptr i64 %t18 to ptr
  %t20 = call ptr @__olang_scope_alloc(ptr %t19, i64 %t17)
  call void @olang_textcopy(ptr %t20, ptr %t9, i64 %t10)
  %t21 = getelementptr i8, ptr %t20, i64 %t10
  call void @olang_textcopy(ptr %t21, ptr %t11, i64 %t12)
  %t22 = getelementptr i8, ptr %t21, i64 %t12
  call void @olang_textcopy(ptr %t22, ptr %t15, i64 %t16)
  %t23 = insertvalue { i64, ptr } undef, i64 %t17, 0
  %t24 = insertvalue { i64, ptr } %t23, ptr %t20, 1
  %t26 = load i64, ptr %l4
  %t27 = inttoptr i64 %t26 to ptr
  %t28 = extractvalue { i64, ptr } %t24, 0
  %t29 = extractvalue { i64, ptr } %t24, 1
  %t30 = mul i64 %t28, 1
  %t31 = call ptr @__olang_scope_alloc(ptr %t27, i64 %t30)
  call void @llvm.memcpy.p0.p0.i64(ptr %t31, ptr %t29, i64 %t30, i1 false)
  %t32 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t33 = insertvalue { i64, ptr } %t32, ptr %t31, 1
  store { i64, ptr } %t33, ptr %l9, !tbaa !27
  %t34 = ptrtoint ptr %v3 to i64
  store i64 %t34, ptr %l10, !tbaa !24
  %t35 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e4
  br i1 %t35, label %bb3, label %bb4
bb3:
  %t37 = call ptr @__olang_region_make(ptr %v3)
  %t38 = ptrtoint ptr %t37 to i64
  store i64 %t38, ptr %l10, !tbaa !24
  br label %bb4
bb4:
  %t40 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d528, i32 0, i32 1) }, 1
  %t41 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d528, i32 0, i32 1) }, 0
  %t43 = extractvalue { i64, ptr } %a2, 1
  %t44 = extractvalue { i64, ptr } %a2, 0
  %t45 = add i64 %t41, %t44
  %t46 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d529, i32 0, i32 1) }, 1
  %t47 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d529, i32 0, i32 1) }, 0
  %t48 = add i64 %t45, %t47
  %t49 = load i64, ptr %l10
  %t50 = inttoptr i64 %t49 to ptr
  %t51 = call ptr @__olang_scope_alloc(ptr %t50, i64 %t48)
  call void @olang_textcopy(ptr %t51, ptr %t40, i64 %t41)
  %t52 = getelementptr i8, ptr %t51, i64 %t41
  call void @olang_textcopy(ptr %t52, ptr %t43, i64 %t44)
  %t53 = getelementptr i8, ptr %t52, i64 %t44
  call void @olang_textcopy(ptr %t53, ptr %t46, i64 %t47)
  %t54 = insertvalue { i64, ptr } undef, i64 %t48, 0
  %t55 = insertvalue { i64, ptr } %t54, ptr %t51, 1
  %t57 = load i64, ptr %l10
  %t58 = inttoptr i64 %t57 to ptr
  %t59 = extractvalue { i64, ptr } %t55, 0
  %t60 = extractvalue { i64, ptr } %t55, 1
  %t61 = mul i64 %t59, 1
  %t62 = call ptr @__olang_scope_alloc(ptr %t58, i64 %t61)
  call void @llvm.memcpy.p0.p0.i64(ptr %t62, ptr %t60, i64 %t61, i1 false)
  %t63 = insertvalue { i64, ptr } undef, i64 %t59, 0
  %t64 = insertvalue { i64, ptr } %t63, ptr %t62, 1
  %t65 = load i32, ptr %l3, !range !{i32 0, i32 906}
  %t66 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t68 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, ptr %v3, ptr %v3, i32 %t65, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d530, i32 0, i32 1) }, { i64, ptr } %t66, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d531, i32 0, i32 1) }, { i64, ptr } %t64)
  store %"compiler/diagmsg:Msg" %t68, ptr %l15
  br label %bb5
bb5:
  %t69 = load %"compiler/diagmsg:Msg", ptr %l15
  store %"compiler/diagmsg:Msg" %t69, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotInModule(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca i64
  %l11 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 332, ptr %l3
  %t1 = ptrtoint ptr %v3 to i64
  store i64 %t1, ptr %l4, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v3)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d532, i32 0, i32 1) }, 1
  %t13 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d532, i32 0, i32 1) }, 0
  %t14 = add i64 %t11, %t13
  %t16 = extractvalue { i64, ptr } %a1, 1
  %t17 = extractvalue { i64, ptr } %a1, 0
  %t18 = add i64 %t14, %t17
  %t20 = extractvalue { i64, ptr } %a2, 1
  %t21 = extractvalue { i64, ptr } %a2, 0
  %t22 = add i64 %t18, %t21
  %t23 = load i64, ptr %l4
  %t24 = inttoptr i64 %t23 to ptr
  %t25 = call ptr @__olang_scope_alloc(ptr %t24, i64 %t22)
  call void @olang_textcopy(ptr %t25, ptr %t10, i64 %t11)
  %t26 = getelementptr i8, ptr %t25, i64 %t11
  call void @olang_textcopy(ptr %t26, ptr %t12, i64 %t13)
  %t27 = getelementptr i8, ptr %t26, i64 %t13
  call void @olang_textcopy(ptr %t27, ptr %t16, i64 %t17)
  %t28 = getelementptr i8, ptr %t27, i64 %t17
  call void @olang_textcopy(ptr %t28, ptr %t20, i64 %t21)
  %t29 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t30 = insertvalue { i64, ptr } %t29, ptr %t25, 1
  %t32 = load i64, ptr %l4
  %t33 = inttoptr i64 %t32 to ptr
  %t34 = extractvalue { i64, ptr } %t30, 0
  %t35 = extractvalue { i64, ptr } %t30, 1
  %t36 = mul i64 %t34, 1
  %t37 = call ptr @__olang_scope_alloc(ptr %t33, i64 %t36)
  call void @llvm.memcpy.p0.p0.i64(ptr %t37, ptr %t35, i64 %t36, i1 false)
  %t38 = insertvalue { i64, ptr } undef, i64 %t34, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr %t37, 1
  %t40 = load i32, ptr %l3, !range !{i32 0, i32 906}
  %t42 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, ptr %v3, ptr %v3, i32 %t40, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d533, i32 0, i32 1) }, { i64, ptr } %t39, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t42, ptr %l11
  br label %bb3
bb3:
  %t43 = load %"compiler/diagmsg:Msg", ptr %l11
  store %"compiler/diagmsg:Msg" %t43, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotRegular(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 55, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d534, i32 0, i32 1) }, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d535, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotTheOperator(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, { i64, ptr } %a4) #0 {
entry:
  %l5 = alloca i32
  %l6 = alloca i64
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l19 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 241, ptr %l5
  %t1 = ptrtoint ptr %v5 to i64
  store i64 %t1, ptr %l6, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v5)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l6, !tbaa !24
  br label %bb2
bb2:
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d536, i32 0, i32 1) }, 1
  %t13 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d536, i32 0, i32 1) }, 0
  %t14 = add i64 %t11, %t13
  %t16 = extractvalue { i64, ptr } %a1, 1
  %t17 = extractvalue { i64, ptr } %a1, 0
  %t18 = add i64 %t14, %t17
  %t19 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d537, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d537, i32 0, i32 1) }, 0
  %t21 = add i64 %t18, %t20
  %t23 = extractvalue { i64, ptr } %a2, 1
  %t24 = extractvalue { i64, ptr } %a2, 0
  %t25 = add i64 %t21, %t24
  %t26 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d538, i32 0, i32 1) }, 1
  %t27 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d538, i32 0, i32 1) }, 0
  %t28 = add i64 %t25, %t27
  %t29 = load i64, ptr %l6
  %t30 = inttoptr i64 %t29 to ptr
  %t31 = call ptr @__olang_scope_alloc(ptr %t30, i64 %t28)
  call void @olang_textcopy(ptr %t31, ptr %t10, i64 %t11)
  %t32 = getelementptr i8, ptr %t31, i64 %t11
  call void @olang_textcopy(ptr %t32, ptr %t12, i64 %t13)
  %t33 = getelementptr i8, ptr %t32, i64 %t13
  call void @olang_textcopy(ptr %t33, ptr %t16, i64 %t17)
  %t34 = getelementptr i8, ptr %t33, i64 %t17
  call void @olang_textcopy(ptr %t34, ptr %t19, i64 %t20)
  %t35 = getelementptr i8, ptr %t34, i64 %t20
  call void @olang_textcopy(ptr %t35, ptr %t23, i64 %t24)
  %t36 = getelementptr i8, ptr %t35, i64 %t24
  call void @olang_textcopy(ptr %t36, ptr %t26, i64 %t27)
  %t37 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t38 = insertvalue { i64, ptr } %t37, ptr %t31, 1
  %t40 = load i64, ptr %l6
  %t41 = inttoptr i64 %t40 to ptr
  %t42 = extractvalue { i64, ptr } %t38, 0
  %t43 = extractvalue { i64, ptr } %t38, 1
  %t44 = mul i64 %t42, 1
  %t45 = call ptr @__olang_scope_alloc(ptr %t41, i64 %t44)
  call void @llvm.memcpy.p0.p0.i64(ptr %t45, ptr %t43, i64 %t44, i1 false)
  %t46 = insertvalue { i64, ptr } undef, i64 %t42, 0
  %t47 = insertvalue { i64, ptr } %t46, ptr %t45, 1
  store { i64, ptr } %t47, ptr %l12, !tbaa !27
  %t48 = ptrtoint ptr %v5 to i64
  store i64 %t48, ptr %l13, !tbaa !24
  %t49 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e3
  br i1 %t49, label %bb3, label %bb4
bb3:
  %t51 = call ptr @__olang_region_make(ptr %v5)
  %t52 = ptrtoint ptr %t51 to i64
  store i64 %t52, ptr %l13, !tbaa !24
  br label %bb4
bb4:
  %t55 = extractvalue { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d539, i32 0, i32 1) }, 1
  %t56 = extractvalue { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d539, i32 0, i32 1) }, 0
  %t58 = extractvalue { i64, ptr } %a3, 1
  %t59 = extractvalue { i64, ptr } %a3, 0
  %t60 = add i64 %t56, %t59
  %t61 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d540, i32 0, i32 1) }, 1
  %t62 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d540, i32 0, i32 1) }, 0
  %t63 = add i64 %t60, %t62
  %t65 = extractvalue { i64, ptr } %a4, 1
  %t66 = extractvalue { i64, ptr } %a4, 0
  %t67 = add i64 %t63, %t66
  %t68 = load i64, ptr %l13
  %t69 = inttoptr i64 %t68 to ptr
  %t70 = call ptr @__olang_scope_alloc(ptr %t69, i64 %t67)
  call void @olang_textcopy(ptr %t70, ptr %t55, i64 %t56)
  %t71 = getelementptr i8, ptr %t70, i64 %t56
  call void @olang_textcopy(ptr %t71, ptr %t58, i64 %t59)
  %t72 = getelementptr i8, ptr %t71, i64 %t59
  call void @olang_textcopy(ptr %t72, ptr %t61, i64 %t62)
  %t73 = getelementptr i8, ptr %t72, i64 %t62
  call void @olang_textcopy(ptr %t73, ptr %t65, i64 %t66)
  %t74 = insertvalue { i64, ptr } undef, i64 %t67, 0
  %t75 = insertvalue { i64, ptr } %t74, ptr %t70, 1
  %t77 = load i64, ptr %l13
  %t78 = inttoptr i64 %t77 to ptr
  %t79 = extractvalue { i64, ptr } %t75, 0
  %t80 = extractvalue { i64, ptr } %t75, 1
  %t81 = mul i64 %t79, 1
  %t82 = call ptr @__olang_scope_alloc(ptr %t78, i64 %t81)
  call void @llvm.memcpy.p0.p0.i64(ptr %t82, ptr %t80, i64 %t81, i1 false)
  %t83 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t84 = insertvalue { i64, ptr } %t83, ptr %t82, 1
  %t85 = load i32, ptr %l5, !range !{i32 0, i32 906}
  %t86 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t88 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v5, ptr %v5, ptr %v5, ptr %v5, ptr %v5, i32 %t85, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d541, i32 0, i32 1) }, { i64, ptr } %t86, { i64, ptr } %t84, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t88, ptr %l19
  br label %bb5
bb5:
  %t89 = load %"compiler/diagmsg:Msg", ptr %l19
  store %"compiler/diagmsg:Msg" %t89, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteCondValue(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 758, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d542, i32 0, i32 1) }, { i64, ptr } { i64 111, ptr getelementptr inbounds (<{ i64, [111 x i8] }>, ptr @.d543, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteDeclareWhere(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l3 = alloca i32
  %l4 = alloca i64
  %l12 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i32 751, ptr %l3
  %t1 = ptrtoint ptr %v3 to i64
  store i64 %t1, ptr %l4, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v3)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t6 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t8 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t10 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d544, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d544, i32 0, i32 1) }, 0
  %t13 = extractvalue { i64, ptr } %t6, 1
  %t14 = extractvalue { i64, ptr } %t6, 0
  %t15 = add i64 %t11, %t14
  %t16 = extractvalue { i64, ptr } { i64 69, ptr getelementptr inbounds (<{ i64, [69 x i8] }>, ptr @.d545, i32 0, i32 1) }, 1
  %t17 = extractvalue { i64, ptr } { i64 69, ptr getelementptr inbounds (<{ i64, [69 x i8] }>, ptr @.d545, i32 0, i32 1) }, 0
  %t18 = add i64 %t15, %t17
  %t20 = extractvalue { i64, ptr } %a1, 1
  %t21 = extractvalue { i64, ptr } %a1, 0
  %t22 = add i64 %t18, %t21
  %t23 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d546, i32 0, i32 1) }, 1
  %t24 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d546, i32 0, i32 1) }, 0
  %t25 = add i64 %t22, %t24
  %t27 = extractvalue { i64, ptr } %t8, 1
  %t28 = extractvalue { i64, ptr } %t8, 0
  %t29 = add i64 %t25, %t28
  %t30 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d547, i32 0, i32 1) }, 1
  %t31 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d547, i32 0, i32 1) }, 0
  %t32 = add i64 %t29, %t31
  %t34 = extractvalue { i64, ptr } %a2, 1
  %t35 = extractvalue { i64, ptr } %a2, 0
  %t36 = add i64 %t32, %t35
  %t37 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d548, i32 0, i32 1) }, 1
  %t38 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d548, i32 0, i32 1) }, 0
  %t39 = add i64 %t36, %t38
  %t40 = load i64, ptr %l4
  %t41 = inttoptr i64 %t40 to ptr
  %t42 = call ptr @__olang_scope_alloc(ptr %t41, i64 %t39)
  call void @olang_textcopy(ptr %t42, ptr %t10, i64 %t11)
  %t43 = getelementptr i8, ptr %t42, i64 %t11
  call void @olang_textcopy(ptr %t43, ptr %t13, i64 %t14)
  %t44 = getelementptr i8, ptr %t43, i64 %t14
  call void @olang_textcopy(ptr %t44, ptr %t16, i64 %t17)
  %t45 = getelementptr i8, ptr %t44, i64 %t17
  call void @olang_textcopy(ptr %t45, ptr %t20, i64 %t21)
  %t46 = getelementptr i8, ptr %t45, i64 %t21
  call void @olang_textcopy(ptr %t46, ptr %t23, i64 %t24)
  %t47 = getelementptr i8, ptr %t46, i64 %t24
  call void @olang_textcopy(ptr %t47, ptr %t27, i64 %t28)
  %t48 = getelementptr i8, ptr %t47, i64 %t28
  call void @olang_textcopy(ptr %t48, ptr %t30, i64 %t31)
  %t49 = getelementptr i8, ptr %t48, i64 %t31
  call void @olang_textcopy(ptr %t49, ptr %t34, i64 %t35)
  %t50 = getelementptr i8, ptr %t49, i64 %t35
  call void @olang_textcopy(ptr %t50, ptr %t37, i64 %t38)
  %t51 = insertvalue { i64, ptr } undef, i64 %t39, 0
  %t52 = insertvalue { i64, ptr } %t51, ptr %t42, 1
  %t54 = load i64, ptr %l4
  %t55 = inttoptr i64 %t54 to ptr
  %t56 = extractvalue { i64, ptr } %t52, 0
  %t57 = extractvalue { i64, ptr } %t52, 1
  %t58 = mul i64 %t56, 1
  %t59 = call ptr @__olang_scope_alloc(ptr %t55, i64 %t58)
  call void @llvm.memcpy.p0.p0.i64(ptr %t59, ptr %t57, i64 %t58, i1 false)
  %t60 = insertvalue { i64, ptr } undef, i64 %t56, 0
  %t61 = insertvalue { i64, ptr } %t60, ptr %t59, 1
  %t62 = load i32, ptr %l3, !range !{i32 0, i32 906}
  %t64 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, ptr %v3, ptr %v3, i32 %t62, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d549, i32 0, i32 1) }, { i64, ptr } %t61, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t64, ptr %l12
  br label %bb3
bb3:
  %t65 = load %"compiler/diagmsg:Msg", ptr %l12
  store %"compiler/diagmsg:Msg" %t65, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteDeclaredHere(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 445, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } %a0, 1
  %t9 = extractvalue { i64, ptr } %a0, 0
  %t10 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d550, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d550, i32 0, i32 1) }, 0
  %t12 = add i64 %t9, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t8, i64 %t9)
  %t16 = getelementptr i8, ptr %t15, i64 %t9
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d551, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteGroupFunctionType(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 356, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d552, i32 0, i32 1) }, { i64, ptr } { i64 107, ptr getelementptr inbounds (<{ i64, [107 x i8] }>, ptr @.d553, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteLiteralRangeExpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3) #0 {
entry:
  %l4 = alloca i32
  %l5 = alloca i64
  %l13 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 449, ptr %l4
  %t1 = ptrtoint ptr %v4 to i64
  store i64 %t1, ptr %l5, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v4)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  %t10 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d554, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d554, i32 0, i32 1) }, 0
  %t13 = extractvalue { i64, ptr } %a0, 1
  %t14 = extractvalue { i64, ptr } %a0, 0
  %t15 = add i64 %t11, %t14
  %t16 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d555, i32 0, i32 1) }, 1
  %t17 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d555, i32 0, i32 1) }, 0
  %t18 = add i64 %t15, %t17
  %t20 = extractvalue { i64, ptr } %a1, 1
  %t21 = extractvalue { i64, ptr } %a1, 0
  %t22 = add i64 %t18, %t21
  %t23 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d556, i32 0, i32 1) }, 1
  %t24 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d556, i32 0, i32 1) }, 0
  %t25 = add i64 %t22, %t24
  %t27 = extractvalue { i64, ptr } %a2, 1
  %t28 = extractvalue { i64, ptr } %a2, 0
  %t29 = add i64 %t25, %t28
  %t30 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d557, i32 0, i32 1) }, 1
  %t31 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d557, i32 0, i32 1) }, 0
  %t32 = add i64 %t29, %t31
  %t34 = extractvalue { i64, ptr } %a3, 1
  %t35 = extractvalue { i64, ptr } %a3, 0
  %t36 = add i64 %t32, %t35
  %t37 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d558, i32 0, i32 1) }, 1
  %t38 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d558, i32 0, i32 1) }, 0
  %t39 = add i64 %t36, %t38
  %t40 = load i64, ptr %l5
  %t41 = inttoptr i64 %t40 to ptr
  %t42 = call ptr @__olang_scope_alloc(ptr %t41, i64 %t39)
  call void @olang_textcopy(ptr %t42, ptr %t10, i64 %t11)
  %t43 = getelementptr i8, ptr %t42, i64 %t11
  call void @olang_textcopy(ptr %t43, ptr %t13, i64 %t14)
  %t44 = getelementptr i8, ptr %t43, i64 %t14
  call void @olang_textcopy(ptr %t44, ptr %t16, i64 %t17)
  %t45 = getelementptr i8, ptr %t44, i64 %t17
  call void @olang_textcopy(ptr %t45, ptr %t20, i64 %t21)
  %t46 = getelementptr i8, ptr %t45, i64 %t21
  call void @olang_textcopy(ptr %t46, ptr %t23, i64 %t24)
  %t47 = getelementptr i8, ptr %t46, i64 %t24
  call void @olang_textcopy(ptr %t47, ptr %t27, i64 %t28)
  %t48 = getelementptr i8, ptr %t47, i64 %t28
  call void @olang_textcopy(ptr %t48, ptr %t30, i64 %t31)
  %t49 = getelementptr i8, ptr %t48, i64 %t31
  call void @olang_textcopy(ptr %t49, ptr %t34, i64 %t35)
  %t50 = getelementptr i8, ptr %t49, i64 %t35
  call void @olang_textcopy(ptr %t50, ptr %t37, i64 %t38)
  %t51 = insertvalue { i64, ptr } undef, i64 %t39, 0
  %t52 = insertvalue { i64, ptr } %t51, ptr %t42, 1
  %t54 = load i64, ptr %l5
  %t55 = inttoptr i64 %t54 to ptr
  %t56 = extractvalue { i64, ptr } %t52, 0
  %t57 = extractvalue { i64, ptr } %t52, 1
  %t58 = mul i64 %t56, 1
  %t59 = call ptr @__olang_scope_alloc(ptr %t55, i64 %t58)
  call void @llvm.memcpy.p0.p0.i64(ptr %t59, ptr %t57, i64 %t58, i1 false)
  %t60 = insertvalue { i64, ptr } undef, i64 %t56, 0
  %t61 = insertvalue { i64, ptr } %t60, ptr %t59, 1
  %t62 = load i32, ptr %l4, !range !{i32 0, i32 906}
  %t64 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v4, ptr %v4, ptr %v4, ptr %v4, ptr %v4, i32 %t62, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d559, i32 0, i32 1) }, { i64, ptr } %t61, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t64, ptr %l13
  br label %bb3
bb3:
  %t65 = load %"compiler/diagmsg:Msg", ptr %l13
  store %"compiler/diagmsg:Msg" %t65, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteObligationOrigin(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 748, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d560, i32 0, i32 1) }, { i64, ptr } { i64 48, ptr getelementptr inbounds (<{ i64, [48 x i8] }>, ptr @.d561, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteParamCopy(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 753, ptr %l2
  %t1 = ptrtoint ptr %v2 to i64
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v2)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d562, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d562, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 102, ptr getelementptr inbounds (<{ i64, [102 x i8] }>, ptr @.d563, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 102, ptr getelementptr inbounds (<{ i64, [102 x i8] }>, ptr @.d563, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d562, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d562, i32 0, i32 1) }, 0
  %t23 = add i64 %t20, %t22
  %t24 = load i64, ptr %l3
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t23)
  call void @olang_textcopy(ptr %t26, ptr %t8, i64 %t9)
  %t27 = getelementptr i8, ptr %t26, i64 %t9
  call void @olang_textcopy(ptr %t27, ptr %t11, i64 %t12)
  %t28 = getelementptr i8, ptr %t27, i64 %t12
  call void @olang_textcopy(ptr %t28, ptr %t14, i64 %t15)
  %t29 = getelementptr i8, ptr %t28, i64 %t15
  call void @olang_textcopy(ptr %t29, ptr %t18, i64 %t19)
  %t30 = getelementptr i8, ptr %t29, i64 %t19
  call void @olang_textcopy(ptr %t30, ptr %t21, i64 %t22)
  %t31 = insertvalue { i64, ptr } undef, i64 %t23, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t26, 1
  %t34 = load i64, ptr %l3
  %t35 = inttoptr i64 %t34 to ptr
  %t36 = extractvalue { i64, ptr } %t32, 0
  %t37 = extractvalue { i64, ptr } %t32, 1
  %t38 = mul i64 %t36, 1
  %t39 = call ptr @__olang_scope_alloc(ptr %t35, i64 %t38)
  call void @llvm.memcpy.p0.p0.i64(ptr %t39, ptr %t37, i64 %t38, i1 false)
  %t40 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t39, 1
  %t42 = load i32, ptr %l2, !range !{i32 0, i32 906}
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d564, i32 0, i32 1) }, { i64, ptr } %t41, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t44, ptr %l9
  br label %bb3
bb3:
  %t45 = load %"compiler/diagmsg:Msg", ptr %l9
  store %"compiler/diagmsg:Msg" %t45, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotePrivateSpelling(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 443, ptr %l2
  %t1 = ptrtoint ptr %v2 to i64
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v2)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d565, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d565, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d566, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d566, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d567, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d567, i32 0, i32 1) }, 0
  %t23 = add i64 %t20, %t22
  %t24 = load i64, ptr %l3
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t23)
  call void @olang_textcopy(ptr %t26, ptr %t8, i64 %t9)
  %t27 = getelementptr i8, ptr %t26, i64 %t9
  call void @olang_textcopy(ptr %t27, ptr %t11, i64 %t12)
  %t28 = getelementptr i8, ptr %t27, i64 %t12
  call void @olang_textcopy(ptr %t28, ptr %t14, i64 %t15)
  %t29 = getelementptr i8, ptr %t28, i64 %t15
  call void @olang_textcopy(ptr %t29, ptr %t18, i64 %t19)
  %t30 = getelementptr i8, ptr %t29, i64 %t19
  call void @olang_textcopy(ptr %t30, ptr %t21, i64 %t22)
  %t31 = insertvalue { i64, ptr } undef, i64 %t23, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t26, 1
  %t34 = load i64, ptr %l3
  %t35 = inttoptr i64 %t34 to ptr
  %t36 = extractvalue { i64, ptr } %t32, 0
  %t37 = extractvalue { i64, ptr } %t32, 1
  %t38 = mul i64 %t36, 1
  %t39 = call ptr @__olang_scope_alloc(ptr %t35, i64 %t38)
  call void @llvm.memcpy.p0.p0.i64(ptr %t39, ptr %t37, i64 %t38, i1 false)
  %t40 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t39, 1
  %t42 = load i32, ptr %l2, !range !{i32 0, i32 906}
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d568, i32 0, i32 1) }, { i64, ptr } %t41, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t44, ptr %l9
  br label %bb3
bb3:
  %t45 = load %"compiler/diagmsg:Msg", ptr %l9
  store %"compiler/diagmsg:Msg" %t45, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteProtocolSpelling(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca i64
  %l11 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 444, ptr %l3
  %t1 = ptrtoint ptr %v3 to i64
  store i64 %t1, ptr %l4, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v3)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d569, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d569, i32 0, i32 1) }, 0
  %t12 = extractvalue { i64, ptr } %a0, 1
  %t13 = extractvalue { i64, ptr } %a0, 0
  %t14 = add i64 %t10, %t13
  %t15 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d570, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d570, i32 0, i32 1) }, 0
  %t17 = add i64 %t14, %t16
  %t19 = extractvalue { i64, ptr } %a1, 1
  %t20 = extractvalue { i64, ptr } %a1, 0
  %t21 = add i64 %t17, %t20
  %t22 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d571, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d571, i32 0, i32 1) }, 0
  %t24 = add i64 %t21, %t23
  %t26 = extractvalue { i64, ptr } %a2, 1
  %t27 = extractvalue { i64, ptr } %a2, 0
  %t28 = add i64 %t24, %t27
  %t29 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d572, i32 0, i32 1) }, 1
  %t30 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d572, i32 0, i32 1) }, 0
  %t31 = add i64 %t28, %t30
  %t32 = load i64, ptr %l4
  %t33 = inttoptr i64 %t32 to ptr
  %t34 = call ptr @__olang_scope_alloc(ptr %t33, i64 %t31)
  call void @olang_textcopy(ptr %t34, ptr %t9, i64 %t10)
  %t35 = getelementptr i8, ptr %t34, i64 %t10
  call void @olang_textcopy(ptr %t35, ptr %t12, i64 %t13)
  %t36 = getelementptr i8, ptr %t35, i64 %t13
  call void @olang_textcopy(ptr %t36, ptr %t15, i64 %t16)
  %t37 = getelementptr i8, ptr %t36, i64 %t16
  call void @olang_textcopy(ptr %t37, ptr %t19, i64 %t20)
  %t38 = getelementptr i8, ptr %t37, i64 %t20
  call void @olang_textcopy(ptr %t38, ptr %t22, i64 %t23)
  %t39 = getelementptr i8, ptr %t38, i64 %t23
  call void @olang_textcopy(ptr %t39, ptr %t26, i64 %t27)
  %t40 = getelementptr i8, ptr %t39, i64 %t27
  call void @olang_textcopy(ptr %t40, ptr %t29, i64 %t30)
  %t41 = insertvalue { i64, ptr } undef, i64 %t31, 0
  %t42 = insertvalue { i64, ptr } %t41, ptr %t34, 1
  %t44 = load i64, ptr %l4
  %t45 = inttoptr i64 %t44 to ptr
  %t46 = extractvalue { i64, ptr } %t42, 0
  %t47 = extractvalue { i64, ptr } %t42, 1
  %t48 = mul i64 %t46, 1
  %t49 = call ptr @__olang_scope_alloc(ptr %t45, i64 %t48)
  call void @llvm.memcpy.p0.p0.i64(ptr %t49, ptr %t47, i64 %t48, i1 false)
  %t50 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr %t49, 1
  %t52 = load i32, ptr %l3, !range !{i32 0, i32 906}
  %t54 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, ptr %v3, ptr %v3, i32 %t52, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d573, i32 0, i32 1) }, { i64, ptr } %t51, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t54, ptr %l11
  br label %bb3
bb3:
  %t55 = load %"compiler/diagmsg:Msg", ptr %l11
  store %"compiler/diagmsg:Msg" %t55, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteReadUnassigned(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 441, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d574, i32 0, i32 1) }, { i64, ptr } { i64 87, ptr getelementptr inbounds (<{ i64, [87 x i8] }>, ptr @.d575, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteSliceOfTemporary(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 759, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d576, i32 0, i32 1) }, { i64, ptr } { i64 119, ptr getelementptr inbounds (<{ i64, [119 x i8] }>, ptr @.d577, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteStrBuildsHere(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 430, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d578, i32 0, i32 1) }, { i64, ptr } { i64 57, ptr getelementptr inbounds (<{ i64, [57 x i8] }>, ptr @.d579, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteUnassignedArm(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 439, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d580, i32 0, i32 1) }, { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d581, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteUnassignedLoop(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 438, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d582, i32 0, i32 1) }, { i64, ptr } { i64 65, ptr getelementptr inbounds (<{ i64, [65 x i8] }>, ptr @.d583, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteVecGrowsHere(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca i64
  %l11 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 427, ptr %l3
  %t1 = ptrtoint ptr %v3 to i64
  store i64 %t1, ptr %l4, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v3)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d584, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d584, i32 0, i32 1) }, 0
  %t12 = extractvalue { i64, ptr } %a0, 1
  %t13 = extractvalue { i64, ptr } %a0, 0
  %t14 = add i64 %t10, %t13
  %t15 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d585, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d585, i32 0, i32 1) }, 0
  %t17 = add i64 %t14, %t16
  %t19 = extractvalue { i64, ptr } %a1, 1
  %t20 = extractvalue { i64, ptr } %a1, 0
  %t21 = add i64 %t17, %t20
  %t22 = extractvalue { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d586, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d586, i32 0, i32 1) }, 0
  %t24 = add i64 %t21, %t23
  %t26 = extractvalue { i64, ptr } %a2, 1
  %t27 = extractvalue { i64, ptr } %a2, 0
  %t28 = add i64 %t24, %t27
  %t29 = load i64, ptr %l4
  %t30 = inttoptr i64 %t29 to ptr
  %t31 = call ptr @__olang_scope_alloc(ptr %t30, i64 %t28)
  call void @olang_textcopy(ptr %t31, ptr %t9, i64 %t10)
  %t32 = getelementptr i8, ptr %t31, i64 %t10
  call void @olang_textcopy(ptr %t32, ptr %t12, i64 %t13)
  %t33 = getelementptr i8, ptr %t32, i64 %t13
  call void @olang_textcopy(ptr %t33, ptr %t15, i64 %t16)
  %t34 = getelementptr i8, ptr %t33, i64 %t16
  call void @olang_textcopy(ptr %t34, ptr %t19, i64 %t20)
  %t35 = getelementptr i8, ptr %t34, i64 %t20
  call void @olang_textcopy(ptr %t35, ptr %t22, i64 %t23)
  %t36 = getelementptr i8, ptr %t35, i64 %t23
  call void @olang_textcopy(ptr %t36, ptr %t26, i64 %t27)
  %t37 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t38 = insertvalue { i64, ptr } %t37, ptr %t31, 1
  %t40 = load i64, ptr %l4
  %t41 = inttoptr i64 %t40 to ptr
  %t42 = extractvalue { i64, ptr } %t38, 0
  %t43 = extractvalue { i64, ptr } %t38, 1
  %t44 = mul i64 %t42, 1
  %t45 = call ptr @__olang_scope_alloc(ptr %t41, i64 %t44)
  call void @llvm.memcpy.p0.p0.i64(ptr %t45, ptr %t43, i64 %t44, i1 false)
  %t46 = insertvalue { i64, ptr } undef, i64 %t42, 0
  %t47 = insertvalue { i64, ptr } %t46, ptr %t45, 1
  %t48 = load i32, ptr %l3, !range !{i32 0, i32 906}
  %t50 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, ptr %v3, ptr %v3, i32 %t48, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d587, i32 0, i32 1) }, { i64, ptr } %t47, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t50, ptr %l11
  br label %bb3
bb3:
  %t51 = load %"compiler/diagmsg:Msg", ptr %l11
  store %"compiler/diagmsg:Msg" %t51, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteViewRefusedBy(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 756, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d588, i32 0, i32 1) }, { i64, ptr } { i64 62, ptr getelementptr inbounds (<{ i64, [62 x i8] }>, ptr @.d589, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotebookUsage(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 38, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d590, i32 0, i32 1) }, { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d591, i32 0, i32 1) }, { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d592, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNullToNonNull(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 516, ptr %l2
  %t1 = ptrtoint ptr %v2 to i64
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v2)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t9 = extractvalue { i64, ptr } %a0, 1
  %t10 = extractvalue { i64, ptr } %a0, 0
  %t11 = extractvalue { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d593, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d593, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t15 = extractvalue { i64, ptr } %a1, 1
  %t16 = extractvalue { i64, ptr } %a1, 0
  %t17 = add i64 %t13, %t16
  %t18 = load i64, ptr %l3
  %t19 = inttoptr i64 %t18 to ptr
  %t20 = call ptr @__olang_scope_alloc(ptr %t19, i64 %t17)
  call void @olang_textcopy(ptr %t20, ptr %t9, i64 %t10)
  %t21 = getelementptr i8, ptr %t20, i64 %t10
  call void @olang_textcopy(ptr %t21, ptr %t11, i64 %t12)
  %t22 = getelementptr i8, ptr %t21, i64 %t12
  call void @olang_textcopy(ptr %t22, ptr %t15, i64 %t16)
  %t23 = insertvalue { i64, ptr } undef, i64 %t17, 0
  %t24 = insertvalue { i64, ptr } %t23, ptr %t20, 1
  %t26 = load i64, ptr %l3
  %t27 = inttoptr i64 %t26 to ptr
  %t28 = extractvalue { i64, ptr } %t24, 0
  %t29 = extractvalue { i64, ptr } %t24, 1
  %t30 = mul i64 %t28, 1
  %t31 = call ptr @__olang_scope_alloc(ptr %t27, i64 %t30)
  call void @llvm.memcpy.p0.p0.i64(ptr %t31, ptr %t29, i64 %t30, i1 false)
  %t32 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t33 = insertvalue { i64, ptr } %t32, ptr %t31, 1
  %t34 = load i32, ptr %l2, !range !{i32 0, i32 906}
  %t36 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, i32 %t34, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d594, i32 0, i32 1) }, { i64, ptr } %t33, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t36, ptr %l9
  br label %bb3
bb3:
  %t37 = load %"compiler/diagmsg:Msg", ptr %l9
  store %"compiler/diagmsg:Msg" %t37, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNullableMeetsNoTrait(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3) #0 {
entry:
  %l4 = alloca i32
  %l5 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l21 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 382, ptr %l4
  %t1 = ptrtoint ptr %v4 to i64
  store i64 %t1, ptr %l5, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v4)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } %a0, 1
  %t9 = extractvalue { i64, ptr } %a0, 0
  %t10 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d595, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d595, i32 0, i32 1) }, 0
  %t12 = add i64 %t9, %t11
  %t13 = load i64, ptr %l5
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t8, i64 %t9)
  %t16 = getelementptr i8, ptr %t15, i64 %t9
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l5
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  store { i64, ptr } %t27, ptr %l9, !tbaa !27
  %t28 = ptrtoint ptr %v4 to i64
  store i64 %t28, ptr %l10, !tbaa !24
  %t29 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e3
  br i1 %t29, label %bb3, label %bb4
bb3:
  %t31 = call ptr @__olang_region_make(ptr %v4)
  %t32 = ptrtoint ptr %t31 to i64
  store i64 %t32, ptr %l10, !tbaa !24
  br label %bb4
bb4:
  %t36 = extractvalue { i64, ptr } %a2, 1
  %t37 = extractvalue { i64, ptr } %a2, 0
  %t38 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d596, i32 0, i32 1) }, 1
  %t39 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d596, i32 0, i32 1) }, 0
  %t40 = add i64 %t37, %t39
  %t42 = extractvalue { i64, ptr } %a1, 1
  %t43 = extractvalue { i64, ptr } %a1, 0
  %t44 = add i64 %t40, %t43
  %t45 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d597, i32 0, i32 1) }, 1
  %t46 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d597, i32 0, i32 1) }, 0
  %t47 = add i64 %t44, %t46
  %t48 = load i64, ptr %l10
  %t49 = inttoptr i64 %t48 to ptr
  %t50 = call ptr @__olang_scope_alloc(ptr %t49, i64 %t47)
  call void @olang_textcopy(ptr %t50, ptr %t36, i64 %t37)
  %t51 = getelementptr i8, ptr %t50, i64 %t37
  call void @olang_textcopy(ptr %t51, ptr %t38, i64 %t39)
  %t52 = getelementptr i8, ptr %t51, i64 %t39
  call void @olang_textcopy(ptr %t52, ptr %t42, i64 %t43)
  %t53 = getelementptr i8, ptr %t52, i64 %t43
  call void @olang_textcopy(ptr %t53, ptr %t45, i64 %t46)
  %t54 = insertvalue { i64, ptr } undef, i64 %t47, 0
  %t55 = insertvalue { i64, ptr } %t54, ptr %t50, 1
  %t57 = load i64, ptr %l10
  %t58 = inttoptr i64 %t57 to ptr
  %t59 = extractvalue { i64, ptr } %t55, 0
  %t60 = extractvalue { i64, ptr } %t55, 1
  %t61 = mul i64 %t59, 1
  %t62 = call ptr @__olang_scope_alloc(ptr %t58, i64 %t61)
  call void @llvm.memcpy.p0.p0.i64(ptr %t62, ptr %t60, i64 %t61, i1 false)
  %t63 = insertvalue { i64, ptr } undef, i64 %t59, 0
  %t64 = insertvalue { i64, ptr } %t63, ptr %t62, 1
  store { i64, ptr } %t64, ptr %l15, !tbaa !27
  %t65 = ptrtoint ptr %v4 to i64
  store i64 %t65, ptr %l16, !tbaa !24
  %t66 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e4
  br i1 %t66, label %bb5, label %bb6
bb5:
  %t68 = call ptr @__olang_region_make(ptr %v4)
  %t69 = ptrtoint ptr %t68 to i64
  store i64 %t69, ptr %l16, !tbaa !24
  br label %bb6
bb6:
  %t71 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d598, i32 0, i32 1) }, 1
  %t72 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d598, i32 0, i32 1) }, 0
  %t74 = extractvalue { i64, ptr } %a3, 1
  %t75 = extractvalue { i64, ptr } %a3, 0
  %t76 = add i64 %t72, %t75
  %t77 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d599, i32 0, i32 1) }, 1
  %t78 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d599, i32 0, i32 1) }, 0
  %t79 = add i64 %t76, %t78
  %t80 = load i64, ptr %l16
  %t81 = inttoptr i64 %t80 to ptr
  %t82 = call ptr @__olang_scope_alloc(ptr %t81, i64 %t79)
  call void @olang_textcopy(ptr %t82, ptr %t71, i64 %t72)
  %t83 = getelementptr i8, ptr %t82, i64 %t72
  call void @olang_textcopy(ptr %t83, ptr %t74, i64 %t75)
  %t84 = getelementptr i8, ptr %t83, i64 %t75
  call void @olang_textcopy(ptr %t84, ptr %t77, i64 %t78)
  %t85 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t86 = insertvalue { i64, ptr } %t85, ptr %t82, 1
  %t88 = load i64, ptr %l16
  %t89 = inttoptr i64 %t88 to ptr
  %t90 = extractvalue { i64, ptr } %t86, 0
  %t91 = extractvalue { i64, ptr } %t86, 1
  %t92 = mul i64 %t90, 1
  %t93 = call ptr @__olang_scope_alloc(ptr %t89, i64 %t92)
  call void @llvm.memcpy.p0.p0.i64(ptr %t93, ptr %t91, i64 %t92, i1 false)
  %t94 = insertvalue { i64, ptr } undef, i64 %t90, 0
  %t95 = insertvalue { i64, ptr } %t94, ptr %t93, 1
  %t96 = load i32, ptr %l4, !range !{i32 0, i32 906}
  %t97 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t98 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t100 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v4, ptr %v4, ptr %v4, ptr %v4, ptr %v4, i32 %t96, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d600, i32 0, i32 1) }, { i64, ptr } %t97, { i64, ptr } %t98, { i64, ptr } %t95)
  store %"compiler/diagmsg:Msg" %t100, ptr %l21
  br label %bb7
bb7:
  %t101 = load %"compiler/diagmsg:Msg", ptr %l21
  store %"compiler/diagmsg:Msg" %t101, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNumbersDoNotMeet(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 468, ptr %l2
  %t1 = ptrtoint ptr %v2 to i64
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v2)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t9 = extractvalue { i64, ptr } %a0, 1
  %t10 = extractvalue { i64, ptr } %a0, 0
  %t11 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d601, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d601, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t15 = extractvalue { i64, ptr } %a1, 1
  %t16 = extractvalue { i64, ptr } %a1, 0
  %t17 = add i64 %t13, %t16
  %t18 = extractvalue { i64, ptr } { i64 56, ptr getelementptr inbounds (<{ i64, [56 x i8] }>, ptr @.d602, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 56, ptr getelementptr inbounds (<{ i64, [56 x i8] }>, ptr @.d602, i32 0, i32 1) }, 0
  %t20 = add i64 %t17, %t19
  %t21 = load i64, ptr %l3
  %t22 = inttoptr i64 %t21 to ptr
  %t23 = call ptr @__olang_scope_alloc(ptr %t22, i64 %t20)
  call void @olang_textcopy(ptr %t23, ptr %t9, i64 %t10)
  %t24 = getelementptr i8, ptr %t23, i64 %t10
  call void @olang_textcopy(ptr %t24, ptr %t11, i64 %t12)
  %t25 = getelementptr i8, ptr %t24, i64 %t12
  call void @olang_textcopy(ptr %t25, ptr %t15, i64 %t16)
  %t26 = getelementptr i8, ptr %t25, i64 %t16
  call void @olang_textcopy(ptr %t26, ptr %t18, i64 %t19)
  %t27 = insertvalue { i64, ptr } undef, i64 %t20, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t23, 1
  %t30 = load i64, ptr %l3
  %t31 = inttoptr i64 %t30 to ptr
  %t32 = extractvalue { i64, ptr } %t28, 0
  %t33 = extractvalue { i64, ptr } %t28, 1
  %t34 = mul i64 %t32, 1
  %t35 = call ptr @__olang_scope_alloc(ptr %t31, i64 %t34)
  call void @llvm.memcpy.p0.p0.i64(ptr %t35, ptr %t33, i64 %t34, i1 false)
  %t36 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t35, 1
  %t38 = load i32, ptr %l2, !range !{i32 0, i32 906}
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, i32 %t38, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d603, i32 0, i32 1) }, { i64, ptr } %t37, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t40, ptr %l9
  br label %bb3
bb3:
  %t41 = load %"compiler/diagmsg:Msg", ptr %l9
  store %"compiler/diagmsg:Msg" %t41, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eOperandNotBool(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 453, ptr %l2
  %t1 = ptrtoint ptr %v2 to i64
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v2)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t9 = extractvalue { i64, ptr } %a0, 1
  %t10 = extractvalue { i64, ptr } %a0, 0
  %t11 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d604, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d604, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t15 = extractvalue { i64, ptr } %a1, 1
  %t16 = extractvalue { i64, ptr } %a1, 0
  %t17 = add i64 %t13, %t16
  %t18 = load i64, ptr %l3
  %t19 = inttoptr i64 %t18 to ptr
  %t20 = call ptr @__olang_scope_alloc(ptr %t19, i64 %t17)
  call void @olang_textcopy(ptr %t20, ptr %t9, i64 %t10)
  %t21 = getelementptr i8, ptr %t20, i64 %t10
  call void @olang_textcopy(ptr %t21, ptr %t11, i64 %t12)
  %t22 = getelementptr i8, ptr %t21, i64 %t12
  call void @olang_textcopy(ptr %t22, ptr %t15, i64 %t16)
  %t23 = insertvalue { i64, ptr } undef, i64 %t17, 0
  %t24 = insertvalue { i64, ptr } %t23, ptr %t20, 1
  %t26 = load i64, ptr %l3
  %t27 = inttoptr i64 %t26 to ptr
  %t28 = extractvalue { i64, ptr } %t24, 0
  %t29 = extractvalue { i64, ptr } %t24, 1
  %t30 = mul i64 %t28, 1
  %t31 = call ptr @__olang_scope_alloc(ptr %t27, i64 %t30)
  call void @llvm.memcpy.p0.p0.i64(ptr %t31, ptr %t29, i64 %t30, i1 false)
  %t32 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t33 = insertvalue { i64, ptr } %t32, ptr %t31, 1
  %t34 = load i32, ptr %l2, !range !{i32 0, i32 906}
  %t36 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, i32 %t34, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d605, i32 0, i32 1) }, { i64, ptr } %t33, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t36, ptr %l9
  br label %bb3
bb3:
  %t37 = load %"compiler/diagmsg:Msg", ptr %l9
  store %"compiler/diagmsg:Msg" %t37, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eOperandNotNumber(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 455, ptr %l2
  %t1 = ptrtoint ptr %v2 to i64
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v2)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t9 = extractvalue { i64, ptr } %a0, 1
  %t10 = extractvalue { i64, ptr } %a0, 0
  %t11 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d606, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d606, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t15 = extractvalue { i64, ptr } %a1, 1
  %t16 = extractvalue { i64, ptr } %a1, 0
  %t17 = add i64 %t13, %t16
  %t18 = load i64, ptr %l3
  %t19 = inttoptr i64 %t18 to ptr
  %t20 = call ptr @__olang_scope_alloc(ptr %t19, i64 %t17)
  call void @olang_textcopy(ptr %t20, ptr %t9, i64 %t10)
  %t21 = getelementptr i8, ptr %t20, i64 %t10
  call void @olang_textcopy(ptr %t21, ptr %t11, i64 %t12)
  %t22 = getelementptr i8, ptr %t21, i64 %t12
  call void @olang_textcopy(ptr %t22, ptr %t15, i64 %t16)
  %t23 = insertvalue { i64, ptr } undef, i64 %t17, 0
  %t24 = insertvalue { i64, ptr } %t23, ptr %t20, 1
  %t26 = load i64, ptr %l3
  %t27 = inttoptr i64 %t26 to ptr
  %t28 = extractvalue { i64, ptr } %t24, 0
  %t29 = extractvalue { i64, ptr } %t24, 1
  %t30 = mul i64 %t28, 1
  %t31 = call ptr @__olang_scope_alloc(ptr %t27, i64 %t30)
  call void @llvm.memcpy.p0.p0.i64(ptr %t31, ptr %t29, i64 %t30, i1 false)
  %t32 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t33 = insertvalue { i64, ptr } %t32, ptr %t31, 1
  %t34 = load i32, ptr %l2, !range !{i32 0, i32 906}
  %t36 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, i32 %t34, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d607, i32 0, i32 1) }, { i64, ptr } %t33, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t36, ptr %l9
  br label %bb3
bb3:
  %t37 = load %"compiler/diagmsg:Msg", ptr %l9
  store %"compiler/diagmsg:Msg" %t37, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eOptionNotForMode(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca i64
  %l11 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 5, ptr %l3
  %t1 = ptrtoint ptr %v3 to i64
  store i64 %t1, ptr %l4, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v3)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d608, i32 0, i32 1) }, 1
  %t13 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d608, i32 0, i32 1) }, 0
  %t14 = add i64 %t11, %t13
  %t16 = extractvalue { i64, ptr } %a1, 1
  %t17 = extractvalue { i64, ptr } %a1, 0
  %t18 = add i64 %t14, %t17
  %t19 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d609, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d609, i32 0, i32 1) }, 0
  %t21 = add i64 %t18, %t20
  %t23 = extractvalue { i64, ptr } %a2, 1
  %t24 = extractvalue { i64, ptr } %a2, 0
  %t25 = add i64 %t21, %t24
  %t26 = load i64, ptr %l4
  %t27 = inttoptr i64 %t26 to ptr
  %t28 = call ptr @__olang_scope_alloc(ptr %t27, i64 %t25)
  call void @olang_textcopy(ptr %t28, ptr %t10, i64 %t11)
  %t29 = getelementptr i8, ptr %t28, i64 %t11
  call void @olang_textcopy(ptr %t29, ptr %t12, i64 %t13)
  %t30 = getelementptr i8, ptr %t29, i64 %t13
  call void @olang_textcopy(ptr %t30, ptr %t16, i64 %t17)
  %t31 = getelementptr i8, ptr %t30, i64 %t17
  call void @olang_textcopy(ptr %t31, ptr %t19, i64 %t20)
  %t32 = getelementptr i8, ptr %t31, i64 %t20
  call void @olang_textcopy(ptr %t32, ptr %t23, i64 %t24)
  %t33 = insertvalue { i64, ptr } undef, i64 %t25, 0
  %t34 = insertvalue { i64, ptr } %t33, ptr %t28, 1
  %t36 = load i64, ptr %l4
  %t37 = inttoptr i64 %t36 to ptr
  %t38 = extractvalue { i64, ptr } %t34, 0
  %t39 = extractvalue { i64, ptr } %t34, 1
  %t40 = mul i64 %t38, 1
  %t41 = call ptr @__olang_scope_alloc(ptr %t37, i64 %t40)
  call void @llvm.memcpy.p0.p0.i64(ptr %t41, ptr %t39, i64 %t40, i1 false)
  %t42 = insertvalue { i64, ptr } undef, i64 %t38, 0
  %t43 = insertvalue { i64, ptr } %t42, ptr %t41, 1
  %t44 = load i32, ptr %l3, !range !{i32 0, i32 906}
  %t46 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, ptr %v3, ptr %v3, i32 %t44, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d610, i32 0, i32 1) }, { i64, ptr } %t43, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t46, ptr %l11
  br label %bb3
bb3:
  %t47 = load %"compiler/diagmsg:Msg", ptr %l11
  store %"compiler/diagmsg:Msg" %t47, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eOverrideSignature(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 297, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } %a0, 1
  %t9 = extractvalue { i64, ptr } %a0, 0
  %t10 = extractvalue { i64, ptr } { i64 56, ptr getelementptr inbounds (<{ i64, [56 x i8] }>, ptr @.d611, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 56, ptr getelementptr inbounds (<{ i64, [56 x i8] }>, ptr @.d611, i32 0, i32 1) }, 0
  %t12 = add i64 %t9, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t8, i64 %t9)
  %t16 = getelementptr i8, ptr %t15, i64 %t9
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d612, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d613, i32 0, i32 1) }, { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d614, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePackedField(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 270, ptr %l2
  %t1 = ptrtoint ptr %v2 to i64
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v2)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t9 = extractvalue { i64, ptr } %a0, 1
  %t10 = extractvalue { i64, ptr } %a0, 0
  %t11 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d615, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d615, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t15 = extractvalue { i64, ptr } %a1, 1
  %t16 = extractvalue { i64, ptr } %a1, 0
  %t17 = add i64 %t13, %t16
  %t18 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d616, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d616, i32 0, i32 1) }, 0
  %t20 = add i64 %t17, %t19
  %t21 = load i64, ptr %l3
  %t22 = inttoptr i64 %t21 to ptr
  %t23 = call ptr @__olang_scope_alloc(ptr %t22, i64 %t20)
  call void @olang_textcopy(ptr %t23, ptr %t9, i64 %t10)
  %t24 = getelementptr i8, ptr %t23, i64 %t10
  call void @olang_textcopy(ptr %t24, ptr %t11, i64 %t12)
  %t25 = getelementptr i8, ptr %t24, i64 %t12
  call void @olang_textcopy(ptr %t25, ptr %t15, i64 %t16)
  %t26 = getelementptr i8, ptr %t25, i64 %t16
  call void @olang_textcopy(ptr %t26, ptr %t18, i64 %t19)
  %t27 = insertvalue { i64, ptr } undef, i64 %t20, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t23, 1
  %t30 = load i64, ptr %l3
  %t31 = inttoptr i64 %t30 to ptr
  %t32 = extractvalue { i64, ptr } %t28, 0
  %t33 = extractvalue { i64, ptr } %t28, 1
  %t34 = mul i64 %t32, 1
  %t35 = call ptr @__olang_scope_alloc(ptr %t31, i64 %t34)
  call void @llvm.memcpy.p0.p0.i64(ptr %t35, ptr %t33, i64 %t34, i1 false)
  %t36 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t35, 1
  %t38 = load i32, ptr %l2, !range !{i32 0, i32 906}
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, i32 %t38, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d617, i32 0, i32 1) }, { i64, ptr } %t37, { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d618, i32 0, i32 1) }, { i64, ptr } { i64 114, ptr getelementptr inbounds (<{ i64, [114 x i8] }>, ptr @.d619, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t40, ptr %l9
  br label %bb3
bb3:
  %t41 = load %"compiler/diagmsg:Msg", ptr %l9
  store %"compiler/diagmsg:Msg" %t41, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePackedNotStruct(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 269, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d620, i32 0, i32 1) }, { i64, ptr } { i64 89, ptr getelementptr inbounds (<{ i64, [89 x i8] }>, ptr @.d621, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePackedParams(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 271, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d622, i32 0, i32 1) }, { i64, ptr } { i64 74, ptr getelementptr inbounds (<{ i64, [74 x i8] }>, ptr @.d623, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePartKept(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i32
  %l3 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l15 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i32 631, ptr %l2
  %t1 = ptrtoint ptr %v2 to i64
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v2)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t6 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d624, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d624, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %t6, 1
  %t12 = extractvalue { i64, ptr } %t6, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d625, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d625, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %t7, 1
  %t19 = extractvalue { i64, ptr } %t7, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d626, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d626, i32 0, i32 1) }, 0
  %t23 = add i64 %t20, %t22
  %t24 = load i64, ptr %l3
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t23)
  call void @olang_textcopy(ptr %t26, ptr %t8, i64 %t9)
  %t27 = getelementptr i8, ptr %t26, i64 %t9
  call void @olang_textcopy(ptr %t27, ptr %t11, i64 %t12)
  %t28 = getelementptr i8, ptr %t27, i64 %t12
  call void @olang_textcopy(ptr %t28, ptr %t14, i64 %t15)
  %t29 = getelementptr i8, ptr %t28, i64 %t15
  call void @olang_textcopy(ptr %t29, ptr %t18, i64 %t19)
  %t30 = getelementptr i8, ptr %t29, i64 %t19
  call void @olang_textcopy(ptr %t30, ptr %t21, i64 %t22)
  %t31 = insertvalue { i64, ptr } undef, i64 %t23, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t26, 1
  %t34 = load i64, ptr %l3
  %t35 = inttoptr i64 %t34 to ptr
  %t36 = extractvalue { i64, ptr } %t32, 0
  %t37 = extractvalue { i64, ptr } %t32, 1
  %t38 = mul i64 %t36, 1
  %t39 = call ptr @__olang_scope_alloc(ptr %t35, i64 %t38)
  call void @llvm.memcpy.p0.p0.i64(ptr %t39, ptr %t37, i64 %t38, i1 false)
  %t40 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t39, 1
  store { i64, ptr } %t41, ptr %l8, !tbaa !27
  %t42 = ptrtoint ptr %v2 to i64
  store i64 %t42, ptr %l9, !tbaa !24
  %t43 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e4
  br i1 %t43, label %bb3, label %bb4
bb3:
  %t45 = call ptr @__olang_region_make(ptr %v2)
  %t46 = ptrtoint ptr %t45 to i64
  store i64 %t46, ptr %l9, !tbaa !24
  br label %bb4
bb4:
  %t47 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t48 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t49 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d627, i32 0, i32 1) }, 1
  %t50 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d627, i32 0, i32 1) }, 0
  %t52 = extractvalue { i64, ptr } %t47, 1
  %t53 = extractvalue { i64, ptr } %t47, 0
  %t54 = add i64 %t50, %t53
  %t55 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d628, i32 0, i32 1) }, 1
  %t56 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d628, i32 0, i32 1) }, 0
  %t57 = add i64 %t54, %t56
  %t59 = extractvalue { i64, ptr } %t48, 1
  %t60 = extractvalue { i64, ptr } %t48, 0
  %t61 = add i64 %t57, %t60
  %t62 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d629, i32 0, i32 1) }, 1
  %t63 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d629, i32 0, i32 1) }, 0
  %t64 = add i64 %t61, %t63
  %t65 = load i64, ptr %l9
  %t66 = inttoptr i64 %t65 to ptr
  %t67 = call ptr @__olang_scope_alloc(ptr %t66, i64 %t64)
  call void @olang_textcopy(ptr %t67, ptr %t49, i64 %t50)
  %t68 = getelementptr i8, ptr %t67, i64 %t50
  call void @olang_textcopy(ptr %t68, ptr %t52, i64 %t53)
  %t69 = getelementptr i8, ptr %t68, i64 %t53
  call void @olang_textcopy(ptr %t69, ptr %t55, i64 %t56)
  %t70 = getelementptr i8, ptr %t69, i64 %t56
  call void @olang_textcopy(ptr %t70, ptr %t59, i64 %t60)
  %t71 = getelementptr i8, ptr %t70, i64 %t60
  call void @olang_textcopy(ptr %t71, ptr %t62, i64 %t63)
  %t72 = insertvalue { i64, ptr } undef, i64 %t64, 0
  %t73 = insertvalue { i64, ptr } %t72, ptr %t67, 1
  %t75 = load i64, ptr %l9
  %t76 = inttoptr i64 %t75 to ptr
  %t77 = extractvalue { i64, ptr } %t73, 0
  %t78 = extractvalue { i64, ptr } %t73, 1
  %t79 = mul i64 %t77, 1
  %t80 = call ptr @__olang_scope_alloc(ptr %t76, i64 %t79)
  call void @llvm.memcpy.p0.p0.i64(ptr %t80, ptr %t78, i64 %t79, i1 false)
  %t81 = insertvalue { i64, ptr } undef, i64 %t77, 0
  %t82 = insertvalue { i64, ptr } %t81, ptr %t80, 1
  %t83 = load i32, ptr %l2, !range !{i32 0, i32 906}
  %t84 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t86 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, i32 %t83, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d630, i32 0, i32 1) }, { i64, ptr } %t84, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d631, i32 0, i32 1) }, { i64, ptr } %t82)
  store %"compiler/diagmsg:Msg" %t86, ptr %l15
  br label %bb5
bb5:
  %t87 = load %"compiler/diagmsg:Msg", ptr %l15
  store %"compiler/diagmsg:Msg" %t87, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePatPositionAfterName(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 498, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d632, i32 0, i32 1) }, { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d633, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d634, i32 0, i32 1) }, { i64, ptr } { i64 54, ptr getelementptr inbounds (<{ i64, [54 x i8] }>, ptr @.d635, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePayloadFieldUnnarrowed(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l3 = alloca i32
  %l4 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l16 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i32 821, ptr %l3
  %t1 = ptrtoint ptr %v3 to i64
  store i64 %t1, ptr %l4, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v3)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t6 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t6, 1
  %t10 = extractvalue { i64, ptr } %t6, 0
  %t11 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d636, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d636, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t15 = extractvalue { i64, ptr } %a1, 1
  %t16 = extractvalue { i64, ptr } %a1, 0
  %t17 = add i64 %t13, %t16
  %t18 = load i64, ptr %l4
  %t19 = inttoptr i64 %t18 to ptr
  %t20 = call ptr @__olang_scope_alloc(ptr %t19, i64 %t17)
  call void @olang_textcopy(ptr %t20, ptr %t9, i64 %t10)
  %t21 = getelementptr i8, ptr %t20, i64 %t10
  call void @olang_textcopy(ptr %t21, ptr %t11, i64 %t12)
  %t22 = getelementptr i8, ptr %t21, i64 %t12
  call void @olang_textcopy(ptr %t22, ptr %t15, i64 %t16)
  %t23 = insertvalue { i64, ptr } undef, i64 %t17, 0
  %t24 = insertvalue { i64, ptr } %t23, ptr %t20, 1
  %t26 = load i64, ptr %l4
  %t27 = inttoptr i64 %t26 to ptr
  %t28 = extractvalue { i64, ptr } %t24, 0
  %t29 = extractvalue { i64, ptr } %t24, 1
  %t30 = mul i64 %t28, 1
  %t31 = call ptr @__olang_scope_alloc(ptr %t27, i64 %t30)
  call void @llvm.memcpy.p0.p0.i64(ptr %t31, ptr %t29, i64 %t30, i1 false)
  %t32 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t33 = insertvalue { i64, ptr } %t32, ptr %t31, 1
  store { i64, ptr } %t33, ptr %l9, !tbaa !27
  store { i64, ptr } %a2, ptr %l10, !tbaa !27
  %t35 = ptrtoint ptr %v3 to i64
  store i64 %t35, ptr %l11, !tbaa !24
  %t36 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e4
  br i1 %t36, label %bb3, label %bb4
bb3:
  %t38 = call ptr @__olang_region_make(ptr %v3)
  %t39 = ptrtoint ptr %t38 to i64
  store i64 %t39, ptr %l11, !tbaa !24
  br label %bb4
bb4:
  %t40 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t41 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d637, i32 0, i32 1) }, 1
  %t42 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d637, i32 0, i32 1) }, 0
  %t44 = extractvalue { i64, ptr } %t40, 1
  %t45 = extractvalue { i64, ptr } %t40, 0
  %t46 = add i64 %t42, %t45
  %t47 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d638, i32 0, i32 1) }, 1
  %t48 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d638, i32 0, i32 1) }, 0
  %t49 = add i64 %t46, %t48
  %t50 = load i64, ptr %l11
  %t51 = inttoptr i64 %t50 to ptr
  %t52 = call ptr @__olang_scope_alloc(ptr %t51, i64 %t49)
  call void @olang_textcopy(ptr %t52, ptr %t41, i64 %t42)
  %t53 = getelementptr i8, ptr %t52, i64 %t42
  call void @olang_textcopy(ptr %t53, ptr %t44, i64 %t45)
  %t54 = getelementptr i8, ptr %t53, i64 %t45
  call void @olang_textcopy(ptr %t54, ptr %t47, i64 %t48)
  %t55 = insertvalue { i64, ptr } undef, i64 %t49, 0
  %t56 = insertvalue { i64, ptr } %t55, ptr %t52, 1
  %t58 = load i64, ptr %l11
  %t59 = inttoptr i64 %t58 to ptr
  %t60 = extractvalue { i64, ptr } %t56, 0
  %t61 = extractvalue { i64, ptr } %t56, 1
  %t62 = mul i64 %t60, 1
  %t63 = call ptr @__olang_scope_alloc(ptr %t59, i64 %t62)
  call void @llvm.memcpy.p0.p0.i64(ptr %t63, ptr %t61, i64 %t62, i1 false)
  %t64 = insertvalue { i64, ptr } undef, i64 %t60, 0
  %t65 = insertvalue { i64, ptr } %t64, ptr %t63, 1
  %t66 = load i32, ptr %l3, !range !{i32 0, i32 906}
  %t67 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t68 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t70 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v2, ptr %v3, ptr %v3, i32 %t66, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d639, i32 0, i32 1) }, { i64, ptr } %t67, { i64, ptr } %t68, { i64, ptr } %t65)
  store %"compiler/diagmsg:Msg" %t70, ptr %l16
  br label %bb5
bb5:
  %t71 = load %"compiler/diagmsg:Msg", ptr %l16
  store %"compiler/diagmsg:Msg" %t71, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePayloadNoField(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca i64
  %l11 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 499, ptr %l3
  %t1 = ptrtoint ptr %v3 to i64
  store i64 %t1, ptr %l4, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v3)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t9 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d640, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d640, i32 0, i32 1) }, 0
  %t12 = extractvalue { i64, ptr } %a0, 1
  %t13 = extractvalue { i64, ptr } %a0, 0
  %t14 = add i64 %t10, %t13
  %t15 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d641, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d641, i32 0, i32 1) }, 0
  %t17 = add i64 %t14, %t16
  %t19 = extractvalue { i64, ptr } %a1, 1
  %t20 = extractvalue { i64, ptr } %a1, 0
  %t21 = add i64 %t17, %t20
  %t22 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d642, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d642, i32 0, i32 1) }, 0
  %t24 = add i64 %t21, %t23
  %t26 = extractvalue { i64, ptr } %a2, 1
  %t27 = extractvalue { i64, ptr } %a2, 0
  %t28 = add i64 %t24, %t27
  %t29 = load i64, ptr %l4
  %t30 = inttoptr i64 %t29 to ptr
  %t31 = call ptr @__olang_scope_alloc(ptr %t30, i64 %t28)
  call void @olang_textcopy(ptr %t31, ptr %t9, i64 %t10)
  %t32 = getelementptr i8, ptr %t31, i64 %t10
  call void @olang_textcopy(ptr %t32, ptr %t12, i64 %t13)
  %t33 = getelementptr i8, ptr %t32, i64 %t13
  call void @olang_textcopy(ptr %t33, ptr %t15, i64 %t16)
  %t34 = getelementptr i8, ptr %t33, i64 %t16
  call void @olang_textcopy(ptr %t34, ptr %t19, i64 %t20)
  %t35 = getelementptr i8, ptr %t34, i64 %t20
  call void @olang_textcopy(ptr %t35, ptr %t22, i64 %t23)
  %t36 = getelementptr i8, ptr %t35, i64 %t23
  call void @olang_textcopy(ptr %t36, ptr %t26, i64 %t27)
  %t37 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t38 = insertvalue { i64, ptr } %t37, ptr %t31, 1
  %t40 = load i64, ptr %l4
  %t41 = inttoptr i64 %t40 to ptr
  %t42 = extractvalue { i64, ptr } %t38, 0
  %t43 = extractvalue { i64, ptr } %t38, 1
  %t44 = mul i64 %t42, 1
  %t45 = call ptr @__olang_scope_alloc(ptr %t41, i64 %t44)
  call void @llvm.memcpy.p0.p0.i64(ptr %t45, ptr %t43, i64 %t44, i1 false)
  %t46 = insertvalue { i64, ptr } undef, i64 %t42, 0
  %t47 = insertvalue { i64, ptr } %t46, ptr %t45, 1
  %t48 = load i32, ptr %l3, !range !{i32 0, i32 906}
  %t50 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, ptr %v3, ptr %v3, i32 %t48, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d643, i32 0, i32 1) }, { i64, ptr } %t47, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t50, ptr %l11
  br label %bb3
bb3:
  %t51 = load %"compiler/diagmsg:Msg", ptr %l11
  store %"compiler/diagmsg:Msg" %t51, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePayloadScopesDisagree(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 585, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d644, i32 0, i32 1) }, { i64, ptr } { i64 66, ptr getelementptr inbounds (<{ i64, [66 x i8] }>, ptr @.d645, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d646, i32 0, i32 1) }, { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d647, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePayloadWordBare(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i32
  %l3 = alloca i64
  %l11 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i32 819, ptr %l2
  %t1 = ptrtoint ptr %v2 to i64
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v2)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t6 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t8 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t6, 1
  %t12 = extractvalue { i64, ptr } %t6, 0
  %t13 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d648, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d648, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t17 = extractvalue { i64, ptr } %t7, 1
  %t18 = extractvalue { i64, ptr } %t7, 0
  %t19 = add i64 %t15, %t18
  %t20 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d649, i32 0, i32 1) }, 1
  %t21 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d649, i32 0, i32 1) }, 0
  %t22 = add i64 %t19, %t21
  %t24 = extractvalue { i64, ptr } %t8, 1
  %t25 = extractvalue { i64, ptr } %t8, 0
  %t26 = add i64 %t22, %t25
  %t27 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d650, i32 0, i32 1) }, 1
  %t28 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d650, i32 0, i32 1) }, 0
  %t29 = add i64 %t26, %t28
  %t31 = extractvalue { i64, ptr } %t9, 1
  %t32 = extractvalue { i64, ptr } %t9, 0
  %t33 = add i64 %t29, %t32
  %t34 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d651, i32 0, i32 1) }, 1
  %t35 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d651, i32 0, i32 1) }, 0
  %t36 = add i64 %t33, %t35
  %t37 = load i64, ptr %l3
  %t38 = inttoptr i64 %t37 to ptr
  %t39 = call ptr @__olang_scope_alloc(ptr %t38, i64 %t36)
  call void @olang_textcopy(ptr %t39, ptr %t11, i64 %t12)
  %t40 = getelementptr i8, ptr %t39, i64 %t12
  call void @olang_textcopy(ptr %t40, ptr %t13, i64 %t14)
  %t41 = getelementptr i8, ptr %t40, i64 %t14
  call void @olang_textcopy(ptr %t41, ptr %t17, i64 %t18)
  %t42 = getelementptr i8, ptr %t41, i64 %t18
  call void @olang_textcopy(ptr %t42, ptr %t20, i64 %t21)
  %t43 = getelementptr i8, ptr %t42, i64 %t21
  call void @olang_textcopy(ptr %t43, ptr %t24, i64 %t25)
  %t44 = getelementptr i8, ptr %t43, i64 %t25
  call void @olang_textcopy(ptr %t44, ptr %t27, i64 %t28)
  %t45 = getelementptr i8, ptr %t44, i64 %t28
  call void @olang_textcopy(ptr %t45, ptr %t31, i64 %t32)
  %t46 = getelementptr i8, ptr %t45, i64 %t32
  call void @olang_textcopy(ptr %t46, ptr %t34, i64 %t35)
  %t47 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t48 = insertvalue { i64, ptr } %t47, ptr %t39, 1
  %t50 = load i64, ptr %l3
  %t51 = inttoptr i64 %t50 to ptr
  %t52 = extractvalue { i64, ptr } %t48, 0
  %t53 = extractvalue { i64, ptr } %t48, 1
  %t54 = mul i64 %t52, 1
  %t55 = call ptr @__olang_scope_alloc(ptr %t51, i64 %t54)
  call void @llvm.memcpy.p0.p0.i64(ptr %t55, ptr %t53, i64 %t54, i1 false)
  %t56 = insertvalue { i64, ptr } undef, i64 %t52, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t55, 1
  %t58 = load i32, ptr %l2, !range !{i32 0, i32 906}
  %t60 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, i32 %t58, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d652, i32 0, i32 1) }, { i64, ptr } %t57, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t60, ptr %l11
  br label %bb3
bb3:
  %t61 = load %"compiler/diagmsg:Msg", ptr %l11
  store %"compiler/diagmsg:Msg" %t61, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePointNoDigit(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 80, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d653, i32 0, i32 1) }, { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d654, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePreludeFuncRedeclared(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 328, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } %a0, 1
  %t9 = extractvalue { i64, ptr } %a0, 0
  %t10 = extractvalue { i64, ptr } { i64 78, ptr getelementptr inbounds (<{ i64, [78 x i8] }>, ptr @.d655, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 78, ptr getelementptr inbounds (<{ i64, [78 x i8] }>, ptr @.d655, i32 0, i32 1) }, 0
  %t12 = add i64 %t9, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t8, i64 %t9)
  %t16 = getelementptr i8, ptr %t15, i64 %t9
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d656, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePromiseBorrowsValue(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i32
  %l2 = alloca i64
  %l8 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i32 699, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t6 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d657, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d657, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %t6, 1
  %t12 = extractvalue { i64, ptr } %t6, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 70, ptr getelementptr inbounds (<{ i64, [70 x i8] }>, ptr @.d658, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 70, ptr getelementptr inbounds (<{ i64, [70 x i8] }>, ptr @.d658, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %t7, 1
  %t19 = extractvalue { i64, ptr } %t7, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d659, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d659, i32 0, i32 1) }, 0
  %t23 = add i64 %t20, %t22
  %t24 = load i64, ptr %l2
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t23)
  call void @olang_textcopy(ptr %t26, ptr %t8, i64 %t9)
  %t27 = getelementptr i8, ptr %t26, i64 %t9
  call void @olang_textcopy(ptr %t27, ptr %t11, i64 %t12)
  %t28 = getelementptr i8, ptr %t27, i64 %t12
  call void @olang_textcopy(ptr %t28, ptr %t14, i64 %t15)
  %t29 = getelementptr i8, ptr %t28, i64 %t15
  call void @olang_textcopy(ptr %t29, ptr %t18, i64 %t19)
  %t30 = getelementptr i8, ptr %t29, i64 %t19
  call void @olang_textcopy(ptr %t30, ptr %t21, i64 %t22)
  %t31 = insertvalue { i64, ptr } undef, i64 %t23, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t26, 1
  %t34 = load i64, ptr %l2
  %t35 = inttoptr i64 %t34 to ptr
  %t36 = extractvalue { i64, ptr } %t32, 0
  %t37 = extractvalue { i64, ptr } %t32, 1
  %t38 = mul i64 %t36, 1
  %t39 = call ptr @__olang_scope_alloc(ptr %t35, i64 %t38)
  call void @llvm.memcpy.p0.p0.i64(ptr %t39, ptr %t37, i64 %t38, i1 false)
  %t40 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t39, 1
  %t42 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t42, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d660, i32 0, i32 1) }, { i64, ptr } %t41, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t44, ptr %l8
  br label %bb3
bb3:
  %t45 = load %"compiler/diagmsg:Msg", ptr %l8
  store %"compiler/diagmsg:Msg" %t45, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePromiseMisplaced(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 694, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d661, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d661, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 62, ptr getelementptr inbounds (<{ i64, [62 x i8] }>, ptr @.d662, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 62, ptr getelementptr inbounds (<{ i64, [62 x i8] }>, ptr @.d662, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l2
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  call void @olang_textcopy(ptr %t18, ptr %t7, i64 %t8)
  %t19 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t18, 1
  %t24 = load i64, ptr %l2
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d663, i32 0, i32 1) }, { i64, ptr } %t31, { i64, ptr } { i64 75, ptr getelementptr inbounds (<{ i64, [75 x i8] }>, ptr @.d664, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t34, ptr %l7
  br label %bb3
bb3:
  %t35 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t35, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePromiseReturnsNoreturn(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 697, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d665, i32 0, i32 1) }, { i64, ptr } { i64 91, ptr getelementptr inbounds (<{ i64, [91 x i8] }>, ptr @.d666, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eRaiseNeedsQuestion(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i32
  %l2 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l12 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i32 831, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t6 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t7 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d667, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d667, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %t6, 1
  %t11 = extractvalue { i64, ptr } %t6, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d668, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d668, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l2
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  call void @olang_textcopy(ptr %t18, ptr %t7, i64 %t8)
  %t19 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t18, 1
  %t24 = load i64, ptr %l2
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  store { i64, ptr } %t31, ptr %l6, !tbaa !27
  %t32 = ptrtoint ptr %v1 to i64
  store i64 %t32, ptr %l7, !tbaa !24
  %t33 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e4
  br i1 %t33, label %bb3, label %bb4
bb3:
  %t35 = call ptr @__olang_region_make(ptr %v1)
  %t36 = ptrtoint ptr %t35 to i64
  store i64 %t36, ptr %l7, !tbaa !24
  br label %bb4
bb4:
  %t37 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t38 = extractvalue { i64, ptr } { i64 56, ptr getelementptr inbounds (<{ i64, [56 x i8] }>, ptr @.d669, i32 0, i32 1) }, 1
  %t39 = extractvalue { i64, ptr } { i64 56, ptr getelementptr inbounds (<{ i64, [56 x i8] }>, ptr @.d669, i32 0, i32 1) }, 0
  %t41 = extractvalue { i64, ptr } %t37, 1
  %t42 = extractvalue { i64, ptr } %t37, 0
  %t43 = add i64 %t39, %t42
  %t44 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d670, i32 0, i32 1) }, 1
  %t45 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d670, i32 0, i32 1) }, 0
  %t46 = add i64 %t43, %t45
  %t47 = load i64, ptr %l7
  %t48 = inttoptr i64 %t47 to ptr
  %t49 = call ptr @__olang_scope_alloc(ptr %t48, i64 %t46)
  call void @olang_textcopy(ptr %t49, ptr %t38, i64 %t39)
  %t50 = getelementptr i8, ptr %t49, i64 %t39
  call void @olang_textcopy(ptr %t50, ptr %t41, i64 %t42)
  %t51 = getelementptr i8, ptr %t50, i64 %t42
  call void @olang_textcopy(ptr %t51, ptr %t44, i64 %t45)
  %t52 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t53 = insertvalue { i64, ptr } %t52, ptr %t49, 1
  %t55 = load i64, ptr %l7
  %t56 = inttoptr i64 %t55 to ptr
  %t57 = extractvalue { i64, ptr } %t53, 0
  %t58 = extractvalue { i64, ptr } %t53, 1
  %t59 = mul i64 %t57, 1
  %t60 = call ptr @__olang_scope_alloc(ptr %t56, i64 %t59)
  call void @llvm.memcpy.p0.p0.i64(ptr %t60, ptr %t58, i64 %t59, i1 false)
  %t61 = insertvalue { i64, ptr } undef, i64 %t57, 0
  %t62 = insertvalue { i64, ptr } %t61, ptr %t60, 1
  %t63 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t64 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t66 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t63, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d671, i32 0, i32 1) }, { i64, ptr } %t64, { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d672, i32 0, i32 1) }, { i64, ptr } %t62)
  store %"compiler/diagmsg:Msg" %t66, ptr %l12
  br label %bb5
bb5:
  %t67 = load %"compiler/diagmsg:Msg", ptr %l12
  store %"compiler/diagmsg:Msg" %t67, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eRaiseNotCaught(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 816, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 59, ptr getelementptr inbounds (<{ i64, [59 x i8] }>, ptr @.d673, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 59, ptr getelementptr inbounds (<{ i64, [59 x i8] }>, ptr @.d673, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d674, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d674, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l2
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  call void @olang_textcopy(ptr %t18, ptr %t7, i64 %t8)
  %t19 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t18, 1
  %t24 = load i64, ptr %l2
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d675, i32 0, i32 1) }, { i64, ptr } %t31, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t34, ptr %l7
  br label %bb3
bb3:
  %t35 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t35, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eRaisedFieldUnnamed(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 823, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d676, i32 0, i32 1) }, { i64, ptr } { i64 93, ptr getelementptr inbounds (<{ i64, [93 x i8] }>, ptr @.d677, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eRawNotLiteral(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 787, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d678, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d678, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t7, i64 %t8)
  %t16 = getelementptr i8, ptr %t15, i64 %t8
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d679, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadMaybeNull(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3) #0 {
entry:
  %l4 = alloca i32
  %l5 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l17 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 520, ptr %l4
  %t1 = ptrtoint ptr %v4 to i64
  store i64 %t1, ptr %l5, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v4)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d680, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d680, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d681, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d681, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d682, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d682, i32 0, i32 1) }, 0
  %t23 = add i64 %t20, %t22
  %t24 = load i64, ptr %l5
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t23)
  call void @olang_textcopy(ptr %t26, ptr %t8, i64 %t9)
  %t27 = getelementptr i8, ptr %t26, i64 %t9
  call void @olang_textcopy(ptr %t27, ptr %t11, i64 %t12)
  %t28 = getelementptr i8, ptr %t27, i64 %t12
  call void @olang_textcopy(ptr %t28, ptr %t14, i64 %t15)
  %t29 = getelementptr i8, ptr %t28, i64 %t15
  call void @olang_textcopy(ptr %t29, ptr %t18, i64 %t19)
  %t30 = getelementptr i8, ptr %t29, i64 %t19
  call void @olang_textcopy(ptr %t30, ptr %t21, i64 %t22)
  %t31 = insertvalue { i64, ptr } undef, i64 %t23, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t26, 1
  %t34 = load i64, ptr %l5
  %t35 = inttoptr i64 %t34 to ptr
  %t36 = extractvalue { i64, ptr } %t32, 0
  %t37 = extractvalue { i64, ptr } %t32, 1
  %t38 = mul i64 %t36, 1
  %t39 = call ptr @__olang_scope_alloc(ptr %t35, i64 %t38)
  call void @llvm.memcpy.p0.p0.i64(ptr %t39, ptr %t37, i64 %t38, i1 false)
  %t40 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t39, 1
  store { i64, ptr } %t41, ptr %l10, !tbaa !27
  store { i64, ptr } %a3, ptr %l11, !tbaa !27
  %t43 = ptrtoint ptr %v4 to i64
  store i64 %t43, ptr %l12, !tbaa !24
  %t44 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e4
  br i1 %t44, label %bb3, label %bb4
bb3:
  %t46 = call ptr @__olang_region_make(ptr %v4)
  %t47 = ptrtoint ptr %t46 to i64
  store i64 %t47, ptr %l12, !tbaa !24
  br label %bb4
bb4:
  %t49 = extractvalue { i64, ptr } { i64 72, ptr getelementptr inbounds (<{ i64, [72 x i8] }>, ptr @.d683, i32 0, i32 1) }, 1
  %t50 = extractvalue { i64, ptr } { i64 72, ptr getelementptr inbounds (<{ i64, [72 x i8] }>, ptr @.d683, i32 0, i32 1) }, 0
  %t52 = extractvalue { i64, ptr } %a2, 1
  %t53 = extractvalue { i64, ptr } %a2, 0
  %t54 = add i64 %t50, %t53
  %t55 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d684, i32 0, i32 1) }, 1
  %t56 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d684, i32 0, i32 1) }, 0
  %t57 = add i64 %t54, %t56
  %t58 = load i64, ptr %l12
  %t59 = inttoptr i64 %t58 to ptr
  %t60 = call ptr @__olang_scope_alloc(ptr %t59, i64 %t57)
  call void @olang_textcopy(ptr %t60, ptr %t49, i64 %t50)
  %t61 = getelementptr i8, ptr %t60, i64 %t50
  call void @olang_textcopy(ptr %t61, ptr %t52, i64 %t53)
  %t62 = getelementptr i8, ptr %t61, i64 %t53
  call void @olang_textcopy(ptr %t62, ptr %t55, i64 %t56)
  %t63 = insertvalue { i64, ptr } undef, i64 %t57, 0
  %t64 = insertvalue { i64, ptr } %t63, ptr %t60, 1
  %t66 = load i64, ptr %l12
  %t67 = inttoptr i64 %t66 to ptr
  %t68 = extractvalue { i64, ptr } %t64, 0
  %t69 = extractvalue { i64, ptr } %t64, 1
  %t70 = mul i64 %t68, 1
  %t71 = call ptr @__olang_scope_alloc(ptr %t67, i64 %t70)
  call void @llvm.memcpy.p0.p0.i64(ptr %t71, ptr %t69, i64 %t70, i1 false)
  %t72 = insertvalue { i64, ptr } undef, i64 %t68, 0
  %t73 = insertvalue { i64, ptr } %t72, ptr %t71, 1
  %t74 = load i32, ptr %l4, !range !{i32 0, i32 906}
  %t75 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t76 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t78 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v4, ptr %v4, ptr %v3, ptr %v4, ptr %v4, i32 %t74, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d685, i32 0, i32 1) }, { i64, ptr } %t75, { i64, ptr } %t76, { i64, ptr } %t73)
  store %"compiler/diagmsg:Msg" %t78, ptr %l17
  br label %bb5
bb5:
  %t79 = load %"compiler/diagmsg:Msg", ptr %l17
  store %"compiler/diagmsg:Msg" %t79, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadOnlyCopyDecl(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l13 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 347, ptr %l2
  %t1 = ptrtoint ptr %v2 to i64
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v2)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d686, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d686, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d687, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d687, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l3
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  call void @olang_textcopy(ptr %t18, ptr %t7, i64 %t8)
  %t19 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t18, 1
  %t24 = load i64, ptr %l3
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  store { i64, ptr } %t31, ptr %l7, !tbaa !27
  %t32 = ptrtoint ptr %v2 to i64
  store i64 %t32, ptr %l8, !tbaa !24
  %t33 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e4
  br i1 %t33, label %bb3, label %bb4
bb3:
  %t35 = call ptr @__olang_region_make(ptr %v2)
  %t36 = ptrtoint ptr %t35 to i64
  store i64 %t36, ptr %l8, !tbaa !24
  br label %bb4
bb4:
  %t38 = extractvalue { i64, ptr } { i64 87, ptr getelementptr inbounds (<{ i64, [87 x i8] }>, ptr @.d688, i32 0, i32 1) }, 1
  %t39 = extractvalue { i64, ptr } { i64 87, ptr getelementptr inbounds (<{ i64, [87 x i8] }>, ptr @.d688, i32 0, i32 1) }, 0
  %t41 = extractvalue { i64, ptr } %a1, 1
  %t42 = extractvalue { i64, ptr } %a1, 0
  %t43 = add i64 %t39, %t42
  %t44 = load i64, ptr %l8
  %t45 = inttoptr i64 %t44 to ptr
  %t46 = call ptr @__olang_scope_alloc(ptr %t45, i64 %t43)
  call void @olang_textcopy(ptr %t46, ptr %t38, i64 %t39)
  %t47 = getelementptr i8, ptr %t46, i64 %t39
  call void @olang_textcopy(ptr %t47, ptr %t41, i64 %t42)
  %t48 = insertvalue { i64, ptr } undef, i64 %t43, 0
  %t49 = insertvalue { i64, ptr } %t48, ptr %t46, 1
  %t51 = load i64, ptr %l8
  %t52 = inttoptr i64 %t51 to ptr
  %t53 = extractvalue { i64, ptr } %t49, 0
  %t54 = extractvalue { i64, ptr } %t49, 1
  %t55 = mul i64 %t53, 1
  %t56 = call ptr @__olang_scope_alloc(ptr %t52, i64 %t55)
  call void @llvm.memcpy.p0.p0.i64(ptr %t56, ptr %t54, i64 %t55, i1 false)
  %t57 = insertvalue { i64, ptr } undef, i64 %t53, 0
  %t58 = insertvalue { i64, ptr } %t57, ptr %t56, 1
  %t59 = load i32, ptr %l2, !range !{i32 0, i32 906}
  %t60 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t62 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, i32 %t59, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d689, i32 0, i32 1) }, { i64, ptr } %t60, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d690, i32 0, i32 1) }, { i64, ptr } %t58)
  store %"compiler/diagmsg:Msg" %t62, ptr %l13
  br label %bb5
bb5:
  %t63 = load %"compiler/diagmsg:Msg", ptr %l13
  store %"compiler/diagmsg:Msg" %t63, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadOnlyCopyReturned(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l13 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 350, ptr %l2
  %t1 = ptrtoint ptr %v2 to i64
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v2)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d691, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d691, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d692, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d692, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l3
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  call void @olang_textcopy(ptr %t18, ptr %t7, i64 %t8)
  %t19 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t18, 1
  %t24 = load i64, ptr %l3
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  store { i64, ptr } %t31, ptr %l7, !tbaa !27
  %t32 = ptrtoint ptr %v2 to i64
  store i64 %t32, ptr %l8, !tbaa !24
  %t33 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e4
  br i1 %t33, label %bb3, label %bb4
bb3:
  %t35 = call ptr @__olang_region_make(ptr %v2)
  %t36 = ptrtoint ptr %t35 to i64
  store i64 %t36, ptr %l8, !tbaa !24
  br label %bb4
bb4:
  %t38 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d693, i32 0, i32 1) }, 1
  %t39 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d693, i32 0, i32 1) }, 0
  %t41 = extractvalue { i64, ptr } %a1, 1
  %t42 = extractvalue { i64, ptr } %a1, 0
  %t43 = add i64 %t39, %t42
  %t44 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d694, i32 0, i32 1) }, 1
  %t45 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d694, i32 0, i32 1) }, 0
  %t46 = add i64 %t43, %t45
  %t47 = load i64, ptr %l8
  %t48 = inttoptr i64 %t47 to ptr
  %t49 = call ptr @__olang_scope_alloc(ptr %t48, i64 %t46)
  call void @olang_textcopy(ptr %t49, ptr %t38, i64 %t39)
  %t50 = getelementptr i8, ptr %t49, i64 %t39
  call void @olang_textcopy(ptr %t50, ptr %t41, i64 %t42)
  %t51 = getelementptr i8, ptr %t50, i64 %t42
  call void @olang_textcopy(ptr %t51, ptr %t44, i64 %t45)
  %t52 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t53 = insertvalue { i64, ptr } %t52, ptr %t49, 1
  %t55 = load i64, ptr %l8
  %t56 = inttoptr i64 %t55 to ptr
  %t57 = extractvalue { i64, ptr } %t53, 0
  %t58 = extractvalue { i64, ptr } %t53, 1
  %t59 = mul i64 %t57, 1
  %t60 = call ptr @__olang_scope_alloc(ptr %t56, i64 %t59)
  call void @llvm.memcpy.p0.p0.i64(ptr %t60, ptr %t58, i64 %t59, i1 false)
  %t61 = insertvalue { i64, ptr } undef, i64 %t57, 0
  %t62 = insertvalue { i64, ptr } %t61, ptr %t60, 1
  %t63 = load i32, ptr %l2, !range !{i32 0, i32 906}
  %t64 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t66 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, i32 %t63, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d695, i32 0, i32 1) }, { i64, ptr } %t64, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d696, i32 0, i32 1) }, { i64, ptr } %t62)
  store %"compiler/diagmsg:Msg" %t66, ptr %l13
  br label %bb5
bb5:
  %t67 = load %"compiler/diagmsg:Msg", ptr %l13
  store %"compiler/diagmsg:Msg" %t67, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadOnlyCopyStored(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l13 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 349, ptr %l2
  %t1 = ptrtoint ptr %v2 to i64
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v2)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d697, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d697, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d698, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d698, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l3
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  call void @olang_textcopy(ptr %t18, ptr %t7, i64 %t8)
  %t19 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t18, 1
  %t24 = load i64, ptr %l3
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  store { i64, ptr } %t31, ptr %l7, !tbaa !27
  %t32 = ptrtoint ptr %v2 to i64
  store i64 %t32, ptr %l8, !tbaa !24
  %t33 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e4
  br i1 %t33, label %bb3, label %bb4
bb3:
  %t35 = call ptr @__olang_region_make(ptr %v2)
  %t36 = ptrtoint ptr %t35 to i64
  store i64 %t36, ptr %l8, !tbaa !24
  br label %bb4
bb4:
  %t38 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d699, i32 0, i32 1) }, 1
  %t39 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d699, i32 0, i32 1) }, 0
  %t41 = extractvalue { i64, ptr } %a1, 1
  %t42 = extractvalue { i64, ptr } %a1, 0
  %t43 = add i64 %t39, %t42
  %t44 = load i64, ptr %l8
  %t45 = inttoptr i64 %t44 to ptr
  %t46 = call ptr @__olang_scope_alloc(ptr %t45, i64 %t43)
  call void @olang_textcopy(ptr %t46, ptr %t38, i64 %t39)
  %t47 = getelementptr i8, ptr %t46, i64 %t39
  call void @olang_textcopy(ptr %t47, ptr %t41, i64 %t42)
  %t48 = insertvalue { i64, ptr } undef, i64 %t43, 0
  %t49 = insertvalue { i64, ptr } %t48, ptr %t46, 1
  %t51 = load i64, ptr %l8
  %t52 = inttoptr i64 %t51 to ptr
  %t53 = extractvalue { i64, ptr } %t49, 0
  %t54 = extractvalue { i64, ptr } %t49, 1
  %t55 = mul i64 %t53, 1
  %t56 = call ptr @__olang_scope_alloc(ptr %t52, i64 %t55)
  call void @llvm.memcpy.p0.p0.i64(ptr %t56, ptr %t54, i64 %t55, i1 false)
  %t57 = insertvalue { i64, ptr } undef, i64 %t53, 0
  %t58 = insertvalue { i64, ptr } %t57, ptr %t56, 1
  %t59 = load i32, ptr %l2, !range !{i32 0, i32 906}
  %t60 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t62 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, i32 %t59, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d700, i32 0, i32 1) }, { i64, ptr } %t60, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d701, i32 0, i32 1) }, { i64, ptr } %t58)
  store %"compiler/diagmsg:Msg" %t62, ptr %l13
  br label %bb5
bb5:
  %t63 = load %"compiler/diagmsg:Msg", ptr %l13
  store %"compiler/diagmsg:Msg" %t63, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadOnlyFuncValue(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l19 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 355, ptr %l3
  %t1 = ptrtoint ptr %v3 to i64
  store i64 %t1, ptr %l4, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v3)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } %a0, 1
  %t9 = extractvalue { i64, ptr } %a0, 0
  %t10 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d702, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d702, i32 0, i32 1) }, 0
  %t12 = add i64 %t9, %t11
  %t13 = load i64, ptr %l4
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t8, i64 %t9)
  %t16 = getelementptr i8, ptr %t15, i64 %t9
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l4
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  store { i64, ptr } %t27, ptr %l8, !tbaa !27
  %t28 = ptrtoint ptr %v3 to i64
  store i64 %t28, ptr %l9, !tbaa !24
  %t29 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e3
  br i1 %t29, label %bb3, label %bb4
bb3:
  %t31 = call ptr @__olang_region_make(ptr %v3)
  %t32 = ptrtoint ptr %t31 to i64
  store i64 %t32, ptr %l9, !tbaa !24
  br label %bb4
bb4:
  %t34 = extractvalue { i64, ptr } { i64 51, ptr getelementptr inbounds (<{ i64, [51 x i8] }>, ptr @.d703, i32 0, i32 1) }, 1
  %t35 = extractvalue { i64, ptr } { i64 51, ptr getelementptr inbounds (<{ i64, [51 x i8] }>, ptr @.d703, i32 0, i32 1) }, 0
  %t37 = extractvalue { i64, ptr } %a1, 1
  %t38 = extractvalue { i64, ptr } %a1, 0
  %t39 = add i64 %t35, %t38
  %t40 = extractvalue { i64, ptr } { i64 61, ptr getelementptr inbounds (<{ i64, [61 x i8] }>, ptr @.d704, i32 0, i32 1) }, 1
  %t41 = extractvalue { i64, ptr } { i64 61, ptr getelementptr inbounds (<{ i64, [61 x i8] }>, ptr @.d704, i32 0, i32 1) }, 0
  %t42 = add i64 %t39, %t41
  %t43 = load i64, ptr %l9
  %t44 = inttoptr i64 %t43 to ptr
  %t45 = call ptr @__olang_scope_alloc(ptr %t44, i64 %t42)
  call void @olang_textcopy(ptr %t45, ptr %t34, i64 %t35)
  %t46 = getelementptr i8, ptr %t45, i64 %t35
  call void @olang_textcopy(ptr %t46, ptr %t37, i64 %t38)
  %t47 = getelementptr i8, ptr %t46, i64 %t38
  call void @olang_textcopy(ptr %t47, ptr %t40, i64 %t41)
  %t48 = insertvalue { i64, ptr } undef, i64 %t42, 0
  %t49 = insertvalue { i64, ptr } %t48, ptr %t45, 1
  %t51 = load i64, ptr %l9
  %t52 = inttoptr i64 %t51 to ptr
  %t53 = extractvalue { i64, ptr } %t49, 0
  %t54 = extractvalue { i64, ptr } %t49, 1
  %t55 = mul i64 %t53, 1
  %t56 = call ptr @__olang_scope_alloc(ptr %t52, i64 %t55)
  call void @llvm.memcpy.p0.p0.i64(ptr %t56, ptr %t54, i64 %t55, i1 false)
  %t57 = insertvalue { i64, ptr } undef, i64 %t53, 0
  %t58 = insertvalue { i64, ptr } %t57, ptr %t56, 1
  store { i64, ptr } %t58, ptr %l13, !tbaa !27
  %t59 = ptrtoint ptr %v3 to i64
  store i64 %t59, ptr %l14, !tbaa !24
  %t60 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e4
  br i1 %t60, label %bb5, label %bb6
bb5:
  %t62 = call ptr @__olang_region_make(ptr %v3)
  %t63 = ptrtoint ptr %t62 to i64
  store i64 %t63, ptr %l14, !tbaa !24
  br label %bb6
bb6:
  %t65 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d705, i32 0, i32 1) }, 1
  %t66 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d705, i32 0, i32 1) }, 0
  %t68 = extractvalue { i64, ptr } %a2, 1
  %t69 = extractvalue { i64, ptr } %a2, 0
  %t70 = add i64 %t66, %t69
  %t71 = load i64, ptr %l14
  %t72 = inttoptr i64 %t71 to ptr
  %t73 = call ptr @__olang_scope_alloc(ptr %t72, i64 %t70)
  call void @olang_textcopy(ptr %t73, ptr %t65, i64 %t66)
  %t74 = getelementptr i8, ptr %t73, i64 %t66
  call void @olang_textcopy(ptr %t74, ptr %t68, i64 %t69)
  %t75 = insertvalue { i64, ptr } undef, i64 %t70, 0
  %t76 = insertvalue { i64, ptr } %t75, ptr %t73, 1
  %t78 = load i64, ptr %l14
  %t79 = inttoptr i64 %t78 to ptr
  %t80 = extractvalue { i64, ptr } %t76, 0
  %t81 = extractvalue { i64, ptr } %t76, 1
  %t82 = mul i64 %t80, 1
  %t83 = call ptr @__olang_scope_alloc(ptr %t79, i64 %t82)
  call void @llvm.memcpy.p0.p0.i64(ptr %t83, ptr %t81, i64 %t82, i1 false)
  %t84 = insertvalue { i64, ptr } undef, i64 %t80, 0
  %t85 = insertvalue { i64, ptr } %t84, ptr %t83, 1
  %t86 = load i32, ptr %l3, !range !{i32 0, i32 906}
  %t87 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t88 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t90 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, ptr %v3, ptr %v3, i32 %t86, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d706, i32 0, i32 1) }, { i64, ptr } %t87, { i64, ptr } %t88, { i64, ptr } %t85)
  store %"compiler/diagmsg:Msg" %t90, ptr %l19
  br label %bb7
bb7:
  %t91 = load %"compiler/diagmsg:Msg", ptr %l19
  store %"compiler/diagmsg:Msg" %t91, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadOnlyRefKept(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l15 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 351, ptr %l3
  %t1 = ptrtoint ptr %v3 to i64
  store i64 %t1, ptr %l4, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v3)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d707, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d707, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d708, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d708, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d709, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d709, i32 0, i32 1) }, 0
  %t23 = add i64 %t20, %t22
  %t24 = load i64, ptr %l4
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t23)
  call void @olang_textcopy(ptr %t26, ptr %t8, i64 %t9)
  %t27 = getelementptr i8, ptr %t26, i64 %t9
  call void @olang_textcopy(ptr %t27, ptr %t11, i64 %t12)
  %t28 = getelementptr i8, ptr %t27, i64 %t12
  call void @olang_textcopy(ptr %t28, ptr %t14, i64 %t15)
  %t29 = getelementptr i8, ptr %t28, i64 %t15
  call void @olang_textcopy(ptr %t29, ptr %t18, i64 %t19)
  %t30 = getelementptr i8, ptr %t29, i64 %t19
  call void @olang_textcopy(ptr %t30, ptr %t21, i64 %t22)
  %t31 = insertvalue { i64, ptr } undef, i64 %t23, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t26, 1
  %t34 = load i64, ptr %l4
  %t35 = inttoptr i64 %t34 to ptr
  %t36 = extractvalue { i64, ptr } %t32, 0
  %t37 = extractvalue { i64, ptr } %t32, 1
  %t38 = mul i64 %t36, 1
  %t39 = call ptr @__olang_scope_alloc(ptr %t35, i64 %t38)
  call void @llvm.memcpy.p0.p0.i64(ptr %t39, ptr %t37, i64 %t38, i1 false)
  %t40 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t39, 1
  store { i64, ptr } %t41, ptr %l9, !tbaa !27
  %t42 = ptrtoint ptr %v3 to i64
  store i64 %t42, ptr %l10, !tbaa !24
  %t43 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e3
  br i1 %t43, label %bb3, label %bb4
bb3:
  %t45 = call ptr @__olang_region_make(ptr %v3)
  %t46 = ptrtoint ptr %t45 to i64
  store i64 %t46, ptr %l10, !tbaa !24
  br label %bb4
bb4:
  %t48 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d710, i32 0, i32 1) }, 1
  %t49 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d710, i32 0, i32 1) }, 0
  %t51 = extractvalue { i64, ptr } %a2, 1
  %t52 = extractvalue { i64, ptr } %a2, 0
  %t53 = add i64 %t49, %t52
  %t54 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d711, i32 0, i32 1) }, 1
  %t55 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d711, i32 0, i32 1) }, 0
  %t56 = add i64 %t53, %t55
  %t57 = load i64, ptr %l10
  %t58 = inttoptr i64 %t57 to ptr
  %t59 = call ptr @__olang_scope_alloc(ptr %t58, i64 %t56)
  call void @olang_textcopy(ptr %t59, ptr %t48, i64 %t49)
  %t60 = getelementptr i8, ptr %t59, i64 %t49
  call void @olang_textcopy(ptr %t60, ptr %t51, i64 %t52)
  %t61 = getelementptr i8, ptr %t60, i64 %t52
  call void @olang_textcopy(ptr %t61, ptr %t54, i64 %t55)
  %t62 = insertvalue { i64, ptr } undef, i64 %t56, 0
  %t63 = insertvalue { i64, ptr } %t62, ptr %t59, 1
  %t65 = load i64, ptr %l10
  %t66 = inttoptr i64 %t65 to ptr
  %t67 = extractvalue { i64, ptr } %t63, 0
  %t68 = extractvalue { i64, ptr } %t63, 1
  %t69 = mul i64 %t67, 1
  %t70 = call ptr @__olang_scope_alloc(ptr %t66, i64 %t69)
  call void @llvm.memcpy.p0.p0.i64(ptr %t70, ptr %t68, i64 %t69, i1 false)
  %t71 = insertvalue { i64, ptr } undef, i64 %t67, 0
  %t72 = insertvalue { i64, ptr } %t71, ptr %t70, 1
  %t73 = load i32, ptr %l3, !range !{i32 0, i32 906}
  %t74 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t76 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, ptr %v3, ptr %v3, i32 %t73, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d712, i32 0, i32 1) }, { i64, ptr } %t74, { i64, ptr } %t72, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d713, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t76, ptr %l15
  br label %bb5
bb5:
  %t77 = load %"compiler/diagmsg:Msg", ptr %l15
  store %"compiler/diagmsg:Msg" %t77, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadUnassigned(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l19 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 721, ptr %l3
  %t1 = ptrtoint ptr %v3 to i64
  store i64 %t1, ptr %l4, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v3)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d714, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d714, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 50, ptr getelementptr inbounds (<{ i64, [50 x i8] }>, ptr @.d715, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 50, ptr getelementptr inbounds (<{ i64, [50 x i8] }>, ptr @.d715, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l4
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  call void @olang_textcopy(ptr %t18, ptr %t7, i64 %t8)
  %t19 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t18, 1
  %t24 = load i64, ptr %l4
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  store { i64, ptr } %t31, ptr %l8, !tbaa !27
  %t32 = ptrtoint ptr %v3 to i64
  store i64 %t32, ptr %l9, !tbaa !24
  %t33 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e3
  br i1 %t33, label %bb3, label %bb4
bb3:
  %t35 = call ptr @__olang_region_make(ptr %v3)
  %t36 = ptrtoint ptr %t35 to i64
  store i64 %t36, ptr %l9, !tbaa !24
  br label %bb4
bb4:
  %t39 = extractvalue { i64, ptr } %a1, 1
  %t40 = extractvalue { i64, ptr } %a1, 0
  %t41 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d716, i32 0, i32 1) }, 1
  %t42 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d716, i32 0, i32 1) }, 0
  %t43 = add i64 %t40, %t42
  %t44 = load i64, ptr %l9
  %t45 = inttoptr i64 %t44 to ptr
  %t46 = call ptr @__olang_scope_alloc(ptr %t45, i64 %t43)
  call void @olang_textcopy(ptr %t46, ptr %t39, i64 %t40)
  %t47 = getelementptr i8, ptr %t46, i64 %t40
  call void @olang_textcopy(ptr %t47, ptr %t41, i64 %t42)
  %t48 = insertvalue { i64, ptr } undef, i64 %t43, 0
  %t49 = insertvalue { i64, ptr } %t48, ptr %t46, 1
  %t51 = load i64, ptr %l9
  %t52 = inttoptr i64 %t51 to ptr
  %t53 = extractvalue { i64, ptr } %t49, 0
  %t54 = extractvalue { i64, ptr } %t49, 1
  %t55 = mul i64 %t53, 1
  %t56 = call ptr @__olang_scope_alloc(ptr %t52, i64 %t55)
  call void @llvm.memcpy.p0.p0.i64(ptr %t56, ptr %t54, i64 %t55, i1 false)
  %t57 = insertvalue { i64, ptr } undef, i64 %t53, 0
  %t58 = insertvalue { i64, ptr } %t57, ptr %t56, 1
  store { i64, ptr } %t58, ptr %l13, !tbaa !27
  %t59 = ptrtoint ptr %v3 to i64
  store i64 %t59, ptr %l14, !tbaa !24
  %t60 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e4
  br i1 %t60, label %bb5, label %bb6
bb5:
  %t62 = call ptr @__olang_region_make(ptr %v3)
  %t63 = ptrtoint ptr %t62 to i64
  store i64 %t63, ptr %l14, !tbaa !24
  br label %bb6
bb6:
  %t65 = extractvalue { i64, ptr } { i64 59, ptr getelementptr inbounds (<{ i64, [59 x i8] }>, ptr @.d717, i32 0, i32 1) }, 1
  %t66 = extractvalue { i64, ptr } { i64 59, ptr getelementptr inbounds (<{ i64, [59 x i8] }>, ptr @.d717, i32 0, i32 1) }, 0
  %t68 = extractvalue { i64, ptr } %a2, 1
  %t69 = extractvalue { i64, ptr } %a2, 0
  %t70 = add i64 %t66, %t69
  %t71 = load i64, ptr %l14
  %t72 = inttoptr i64 %t71 to ptr
  %t73 = call ptr @__olang_scope_alloc(ptr %t72, i64 %t70)
  call void @olang_textcopy(ptr %t73, ptr %t65, i64 %t66)
  %t74 = getelementptr i8, ptr %t73, i64 %t66
  call void @olang_textcopy(ptr %t74, ptr %t68, i64 %t69)
  %t75 = insertvalue { i64, ptr } undef, i64 %t70, 0
  %t76 = insertvalue { i64, ptr } %t75, ptr %t73, 1
  %t78 = load i64, ptr %l14
  %t79 = inttoptr i64 %t78 to ptr
  %t80 = extractvalue { i64, ptr } %t76, 0
  %t81 = extractvalue { i64, ptr } %t76, 1
  %t82 = mul i64 %t80, 1
  %t83 = call ptr @__olang_scope_alloc(ptr %t79, i64 %t82)
  call void @llvm.memcpy.p0.p0.i64(ptr %t83, ptr %t81, i64 %t82, i1 false)
  %t84 = insertvalue { i64, ptr } undef, i64 %t80, 0
  %t85 = insertvalue { i64, ptr } %t84, ptr %t83, 1
  %t86 = load i32, ptr %l3, !range !{i32 0, i32 906}
  %t87 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t88 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t90 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, ptr %v3, ptr %v3, i32 %t86, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d718, i32 0, i32 1) }, { i64, ptr } %t87, { i64, ptr } %t88, { i64, ptr } %t85)
  store %"compiler/diagmsg:Msg" %t90, ptr %l19
  br label %bb7
bb7:
  %t91 = load %"compiler/diagmsg:Msg", ptr %l19
  store %"compiler/diagmsg:Msg" %t91, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReexportCycle(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 114, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d719, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d719, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d720, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d720, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l2
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  call void @olang_textcopy(ptr %t18, ptr %t7, i64 %t8)
  %t19 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t18, 1
  %t24 = load i64, ptr %l2
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d721, i32 0, i32 1) }, { i64, ptr } %t31, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t34, ptr %l7
  br label %bb3
bb3:
  %t35 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t35, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReferenceNarrowedLocal(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 379, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e3
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d722, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d722, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 62, ptr getelementptr inbounds (<{ i64, [62 x i8] }>, ptr @.d723, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 62, ptr getelementptr inbounds (<{ i64, [62 x i8] }>, ptr @.d723, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l2
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  call void @olang_textcopy(ptr %t18, ptr %t7, i64 %t8)
  %t19 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t18, 1
  %t24 = load i64, ptr %l2
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d724, i32 0, i32 1) }, { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d725, i32 0, i32 1) }, { i64, ptr } %t31, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t34, ptr %l7
  br label %bb3
bb3:
  %t35 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t35, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflCaseOther(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 854, ptr %l2
  %t1 = ptrtoint ptr %v2 to i64
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v2)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d726, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d726, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d727, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d727, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = load i64, ptr %l3
  %t22 = inttoptr i64 %t21 to ptr
  %t23 = call ptr @__olang_scope_alloc(ptr %t22, i64 %t20)
  call void @olang_textcopy(ptr %t23, ptr %t8, i64 %t9)
  %t24 = getelementptr i8, ptr %t23, i64 %t9
  call void @olang_textcopy(ptr %t24, ptr %t11, i64 %t12)
  %t25 = getelementptr i8, ptr %t24, i64 %t12
  call void @olang_textcopy(ptr %t25, ptr %t14, i64 %t15)
  %t26 = getelementptr i8, ptr %t25, i64 %t15
  call void @olang_textcopy(ptr %t26, ptr %t18, i64 %t19)
  %t27 = insertvalue { i64, ptr } undef, i64 %t20, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t23, 1
  %t30 = load i64, ptr %l3
  %t31 = inttoptr i64 %t30 to ptr
  %t32 = extractvalue { i64, ptr } %t28, 0
  %t33 = extractvalue { i64, ptr } %t28, 1
  %t34 = mul i64 %t32, 1
  %t35 = call ptr @__olang_scope_alloc(ptr %t31, i64 %t34)
  call void @llvm.memcpy.p0.p0.i64(ptr %t35, ptr %t33, i64 %t34, i1 false)
  %t36 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t35, 1
  %t38 = load i32, ptr %l2, !range !{i32 0, i32 906}
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, i32 %t38, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d728, i32 0, i32 1) }, { i64, ptr } %t37, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t40, ptr %l9
  br label %bb3
bb3:
  %t41 = load %"compiler/diagmsg:Msg", ptr %l9
  store %"compiler/diagmsg:Msg" %t41, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflDescNoMember(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca i64
  %l11 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 852, ptr %l3
  %t1 = ptrtoint ptr %v3 to i64
  store i64 %t1, ptr %l4, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v3)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t9 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d729, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d729, i32 0, i32 1) }, 0
  %t12 = extractvalue { i64, ptr } %a0, 1
  %t13 = extractvalue { i64, ptr } %a0, 0
  %t14 = add i64 %t10, %t13
  %t15 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d730, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d730, i32 0, i32 1) }, 0
  %t17 = add i64 %t14, %t16
  %t19 = extractvalue { i64, ptr } %a1, 1
  %t20 = extractvalue { i64, ptr } %a1, 0
  %t21 = add i64 %t17, %t20
  %t22 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d731, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d731, i32 0, i32 1) }, 0
  %t24 = add i64 %t21, %t23
  %t26 = extractvalue { i64, ptr } %a2, 1
  %t27 = extractvalue { i64, ptr } %a2, 0
  %t28 = add i64 %t24, %t27
  %t29 = load i64, ptr %l4
  %t30 = inttoptr i64 %t29 to ptr
  %t31 = call ptr @__olang_scope_alloc(ptr %t30, i64 %t28)
  call void @olang_textcopy(ptr %t31, ptr %t9, i64 %t10)
  %t32 = getelementptr i8, ptr %t31, i64 %t10
  call void @olang_textcopy(ptr %t32, ptr %t12, i64 %t13)
  %t33 = getelementptr i8, ptr %t32, i64 %t13
  call void @olang_textcopy(ptr %t33, ptr %t15, i64 %t16)
  %t34 = getelementptr i8, ptr %t33, i64 %t16
  call void @olang_textcopy(ptr %t34, ptr %t19, i64 %t20)
  %t35 = getelementptr i8, ptr %t34, i64 %t20
  call void @olang_textcopy(ptr %t35, ptr %t22, i64 %t23)
  %t36 = getelementptr i8, ptr %t35, i64 %t23
  call void @olang_textcopy(ptr %t36, ptr %t26, i64 %t27)
  %t37 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t38 = insertvalue { i64, ptr } %t37, ptr %t31, 1
  %t40 = load i64, ptr %l4
  %t41 = inttoptr i64 %t40 to ptr
  %t42 = extractvalue { i64, ptr } %t38, 0
  %t43 = extractvalue { i64, ptr } %t38, 1
  %t44 = mul i64 %t42, 1
  %t45 = call ptr @__olang_scope_alloc(ptr %t41, i64 %t44)
  call void @llvm.memcpy.p0.p0.i64(ptr %t45, ptr %t43, i64 %t44, i1 false)
  %t46 = insertvalue { i64, ptr } undef, i64 %t42, 0
  %t47 = insertvalue { i64, ptr } %t46, ptr %t45, 1
  %t48 = load i32, ptr %l3, !range !{i32 0, i32 906}
  %t50 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, ptr %v3, ptr %v3, i32 %t48, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d732, i32 0, i32 1) }, { i64, ptr } %t47, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t50, ptr %l11
  br label %bb3
bb3:
  %t51 = load %"compiler/diagmsg:Msg", ptr %l11
  store %"compiler/diagmsg:Msg" %t51, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflIndexNotConst(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 845, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d733, i32 0, i32 1) }, { i64, ptr } { i64 92, ptr getelementptr inbounds (<{ i64, [92 x i8] }>, ptr @.d734, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflListValue(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 844, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } %a0, 1
  %t9 = extractvalue { i64, ptr } %a0, 0
  %t10 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d735, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d735, i32 0, i32 1) }, 0
  %t12 = add i64 %t9, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t8, i64 %t9)
  %t16 = getelementptr i8, ptr %t15, i64 %t9
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d736, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d737, i32 0, i32 1) }, { i64, ptr } { i64 113, ptr getelementptr inbounds (<{ i64, [113 x i8] }>, ptr @.d738, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflNoKind(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 840, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } %a0, 1
  %t9 = extractvalue { i64, ptr } %a0, 0
  %t10 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d739, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d739, i32 0, i32 1) }, 0
  %t12 = add i64 %t9, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t8, i64 %t9)
  %t16 = getelementptr i8, ptr %t15, i64 %t9
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d740, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } { i64 106, ptr getelementptr inbounds (<{ i64, [106 x i8] }>, ptr @.d741, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflNotList(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca i64
  %l11 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 843, ptr %l3
  %t1 = ptrtoint ptr %v3 to i64
  store i64 %t1, ptr %l4, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v3)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t10 = extractvalue { i64, ptr } %a1, 1
  %t11 = extractvalue { i64, ptr } %a1, 0
  %t12 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d742, i32 0, i32 1) }, 1
  %t13 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d742, i32 0, i32 1) }, 0
  %t14 = add i64 %t11, %t13
  %t16 = extractvalue { i64, ptr } %a0, 1
  %t17 = extractvalue { i64, ptr } %a0, 0
  %t18 = add i64 %t14, %t17
  %t19 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d743, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d743, i32 0, i32 1) }, 0
  %t21 = add i64 %t18, %t20
  %t23 = extractvalue { i64, ptr } %a2, 1
  %t24 = extractvalue { i64, ptr } %a2, 0
  %t25 = add i64 %t21, %t24
  %t26 = load i64, ptr %l4
  %t27 = inttoptr i64 %t26 to ptr
  %t28 = call ptr @__olang_scope_alloc(ptr %t27, i64 %t25)
  call void @olang_textcopy(ptr %t28, ptr %t10, i64 %t11)
  %t29 = getelementptr i8, ptr %t28, i64 %t11
  call void @olang_textcopy(ptr %t29, ptr %t12, i64 %t13)
  %t30 = getelementptr i8, ptr %t29, i64 %t13
  call void @olang_textcopy(ptr %t30, ptr %t16, i64 %t17)
  %t31 = getelementptr i8, ptr %t30, i64 %t17
  call void @olang_textcopy(ptr %t31, ptr %t19, i64 %t20)
  %t32 = getelementptr i8, ptr %t31, i64 %t20
  call void @olang_textcopy(ptr %t32, ptr %t23, i64 %t24)
  %t33 = insertvalue { i64, ptr } undef, i64 %t25, 0
  %t34 = insertvalue { i64, ptr } %t33, ptr %t28, 1
  %t36 = load i64, ptr %l4
  %t37 = inttoptr i64 %t36 to ptr
  %t38 = extractvalue { i64, ptr } %t34, 0
  %t39 = extractvalue { i64, ptr } %t34, 1
  %t40 = mul i64 %t38, 1
  %t41 = call ptr @__olang_scope_alloc(ptr %t37, i64 %t40)
  call void @llvm.memcpy.p0.p0.i64(ptr %t41, ptr %t39, i64 %t40, i1 false)
  %t42 = insertvalue { i64, ptr } undef, i64 %t38, 0
  %t43 = insertvalue { i64, ptr } %t42, ptr %t41, 1
  %t44 = load i32, ptr %l3, !range !{i32 0, i32 906}
  %t46 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, ptr %v3, ptr %v3, i32 %t44, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d744, i32 0, i32 1) }, { i64, ptr } %t43, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t46, ptr %l11
  br label %bb3
bb3:
  %t47 = load %"compiler/diagmsg:Msg", ptr %l11
  store %"compiler/diagmsg:Msg" %t47, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReraiseWordNotInSet(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 815, ptr %l2
  %t1 = ptrtoint ptr %v2 to i64
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v2)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d745, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d745, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d746, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d746, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = load i64, ptr %l3
  %t22 = inttoptr i64 %t21 to ptr
  %t23 = call ptr @__olang_scope_alloc(ptr %t22, i64 %t20)
  call void @olang_textcopy(ptr %t23, ptr %t8, i64 %t9)
  %t24 = getelementptr i8, ptr %t23, i64 %t9
  call void @olang_textcopy(ptr %t24, ptr %t11, i64 %t12)
  %t25 = getelementptr i8, ptr %t24, i64 %t12
  call void @olang_textcopy(ptr %t25, ptr %t14, i64 %t15)
  %t26 = getelementptr i8, ptr %t25, i64 %t15
  call void @olang_textcopy(ptr %t26, ptr %t18, i64 %t19)
  %t27 = insertvalue { i64, ptr } undef, i64 %t20, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t23, 1
  %t30 = load i64, ptr %l3
  %t31 = inttoptr i64 %t30 to ptr
  %t32 = extractvalue { i64, ptr } %t28, 0
  %t33 = extractvalue { i64, ptr } %t28, 1
  %t34 = mul i64 %t32, 1
  %t35 = call ptr @__olang_scope_alloc(ptr %t31, i64 %t34)
  call void @llvm.memcpy.p0.p0.i64(ptr %t35, ptr %t33, i64 %t34, i1 false)
  %t36 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t35, 1
  %t38 = load i32, ptr %l2, !range !{i32 0, i32 906}
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, i32 %t38, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d747, i32 0, i32 1) }, { i64, ptr } %t37, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d748, i32 0, i32 1) }, { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d749, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t40, ptr %l9
  br label %bb3
bb3:
  %t41 = load %"compiler/diagmsg:Msg", ptr %l9
  store %"compiler/diagmsg:Msg" %t41, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eRestTwice(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 489, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d750, i32 0, i32 1) }, { i64, ptr } { i64 76, ptr getelementptr inbounds (<{ i64, [76 x i8] }>, ptr @.d751, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReturnInTest(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 644, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d752, i32 0, i32 1) }, { i64, ptr } { i64 56, ptr getelementptr inbounds (<{ i64, [56 x i8] }>, ptr @.d753, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eScopeArgsDisagree(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 370, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d754, i32 0, i32 1) }, { i64, ptr } { i64 72, ptr getelementptr inbounds (<{ i64, [72 x i8] }>, ptr @.d755, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d756, i32 0, i32 1) }, { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d757, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSemicolon(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 63, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d758, i32 0, i32 1) }, { i64, ptr } { i64 94, ptr getelementptr inbounds (<{ i64, [94 x i8] }>, ptr @.d759, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSetValueLast(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i32
  %l2 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l12 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i32 904, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t6 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t6, 1
  %t9 = extractvalue { i64, ptr } %t6, 0
  %t10 = extractvalue { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d760, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d760, i32 0, i32 1) }, 0
  %t12 = add i64 %t9, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t8, i64 %t9)
  %t16 = getelementptr i8, ptr %t15, i64 %t9
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  store { i64, ptr } %t27, ptr %l6, !tbaa !27
  %t28 = ptrtoint ptr %v1 to i64
  store i64 %t28, ptr %l7, !tbaa !24
  %t29 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e4
  br i1 %t29, label %bb3, label %bb4
bb3:
  %t31 = call ptr @__olang_region_make(ptr %v1)
  %t32 = ptrtoint ptr %t31 to i64
  store i64 %t32, ptr %l7, !tbaa !24
  br label %bb4
bb4:
  %t33 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t34 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d761, i32 0, i32 1) }, 1
  %t35 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d761, i32 0, i32 1) }, 0
  %t37 = extractvalue { i64, ptr } %t33, 1
  %t38 = extractvalue { i64, ptr } %t33, 0
  %t39 = add i64 %t35, %t38
  %t40 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d762, i32 0, i32 1) }, 1
  %t41 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d762, i32 0, i32 1) }, 0
  %t42 = add i64 %t39, %t41
  %t43 = load i64, ptr %l7
  %t44 = inttoptr i64 %t43 to ptr
  %t45 = call ptr @__olang_scope_alloc(ptr %t44, i64 %t42)
  call void @olang_textcopy(ptr %t45, ptr %t34, i64 %t35)
  %t46 = getelementptr i8, ptr %t45, i64 %t35
  call void @olang_textcopy(ptr %t46, ptr %t37, i64 %t38)
  %t47 = getelementptr i8, ptr %t46, i64 %t38
  call void @olang_textcopy(ptr %t47, ptr %t40, i64 %t41)
  %t48 = insertvalue { i64, ptr } undef, i64 %t42, 0
  %t49 = insertvalue { i64, ptr } %t48, ptr %t45, 1
  %t51 = load i64, ptr %l7
  %t52 = inttoptr i64 %t51 to ptr
  %t53 = extractvalue { i64, ptr } %t49, 0
  %t54 = extractvalue { i64, ptr } %t49, 1
  %t55 = mul i64 %t53, 1
  %t56 = call ptr @__olang_scope_alloc(ptr %t52, i64 %t55)
  call void @llvm.memcpy.p0.p0.i64(ptr %t56, ptr %t54, i64 %t55, i1 false)
  %t57 = insertvalue { i64, ptr } undef, i64 %t53, 0
  %t58 = insertvalue { i64, ptr } %t57, ptr %t56, 1
  %t59 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t60 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t62 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t59, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d763, i32 0, i32 1) }, { i64, ptr } %t60, { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d764, i32 0, i32 1) }, { i64, ptr } %t58)
  store %"compiler/diagmsg:Msg" %t62, ptr %l12
  br label %bb5
bb5:
  %t63 = load %"compiler/diagmsg:Msg", ptr %l12
  store %"compiler/diagmsg:Msg" %t63, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSetatUndeclared(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 530, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } %a0, 1
  %t9 = extractvalue { i64, ptr } %a0, 0
  %t10 = extractvalue { i64, ptr } { i64 48, ptr getelementptr inbounds (<{ i64, [48 x i8] }>, ptr @.d765, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 48, ptr getelementptr inbounds (<{ i64, [48 x i8] }>, ptr @.d765, i32 0, i32 1) }, 0
  %t12 = add i64 %t9, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t8, i64 %t9)
  %t16 = getelementptr i8, ptr %t15, i64 %t9
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d766, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eShiftProven(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca i64
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l19 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store i32 466, ptr %l4
  %t1 = ptrtoint ptr %v2 to i64
  store i64 %t1, ptr %l5, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v2)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  %t9 = load i64, ptr %l3, !tbaa !24
  %t10 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d767, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d767, i32 0, i32 1) }, 0
  %t13 = extractvalue { i64, ptr } %a0, 1
  %t14 = extractvalue { i64, ptr } %a0, 0
  %t15 = add i64 %t11, %t14
  %t16 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d768, i32 0, i32 1) }, 1
  %t17 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d768, i32 0, i32 1) }, 0
  %t18 = add i64 %t15, %t17
  %t20 = extractvalue { i64, ptr } %a1, 1
  %t21 = extractvalue { i64, ptr } %a1, 0
  %t22 = add i64 %t18, %t21
  %t23 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d769, i32 0, i32 1) }, 1
  %t24 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d769, i32 0, i32 1) }, 0
  %t25 = add i64 %t22, %t24
  %t27 = call i64 @__olang_fmt_i64(ptr null, i64 %a2)
  %t28 = add i64 %t25, %t27
  %t29 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d770, i32 0, i32 1) }, 1
  %t30 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d770, i32 0, i32 1) }, 0
  %t31 = add i64 %t28, %t30
  %t33 = call i64 @__olang_fmt_i64(ptr null, i64 %t9)
  %t34 = add i64 %t31, %t33
  %t35 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d771, i32 0, i32 1) }, 1
  %t36 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d771, i32 0, i32 1) }, 0
  %t37 = add i64 %t34, %t36
  %t38 = load i64, ptr %l5
  %t39 = inttoptr i64 %t38 to ptr
  %t40 = call ptr @__olang_scope_alloc(ptr %t39, i64 %t37)
  call void @olang_textcopy(ptr %t40, ptr %t10, i64 %t11)
  %t41 = getelementptr i8, ptr %t40, i64 %t11
  call void @olang_textcopy(ptr %t41, ptr %t13, i64 %t14)
  %t42 = getelementptr i8, ptr %t41, i64 %t14
  call void @olang_textcopy(ptr %t42, ptr %t16, i64 %t17)
  %t43 = getelementptr i8, ptr %t42, i64 %t17
  call void @olang_textcopy(ptr %t43, ptr %t20, i64 %t21)
  %t44 = getelementptr i8, ptr %t43, i64 %t21
  call void @olang_textcopy(ptr %t44, ptr %t23, i64 %t24)
  %t45 = getelementptr i8, ptr %t44, i64 %t24
  %t46 = call i64 @__olang_fmt_i64(ptr %t45, i64 %a2)
  %t47 = getelementptr i8, ptr %t45, i64 %t27
  call void @olang_textcopy(ptr %t47, ptr %t29, i64 %t30)
  %t48 = getelementptr i8, ptr %t47, i64 %t30
  %t49 = call i64 @__olang_fmt_i64(ptr %t48, i64 %t9)
  %t50 = getelementptr i8, ptr %t48, i64 %t33
  call void @olang_textcopy(ptr %t50, ptr %t35, i64 %t36)
  %t51 = insertvalue { i64, ptr } undef, i64 %t37, 0
  %t52 = insertvalue { i64, ptr } %t51, ptr %t40, 1
  %t54 = load i64, ptr %l5
  %t55 = inttoptr i64 %t54 to ptr
  %t56 = extractvalue { i64, ptr } %t52, 0
  %t57 = extractvalue { i64, ptr } %t52, 1
  %t58 = mul i64 %t56, 1
  %t59 = call ptr @__olang_scope_alloc(ptr %t55, i64 %t58)
  call void @llvm.memcpy.p0.p0.i64(ptr %t59, ptr %t57, i64 %t58, i1 false)
  %t60 = insertvalue { i64, ptr } undef, i64 %t56, 0
  %t61 = insertvalue { i64, ptr } %t60, ptr %t59, 1
  store { i64, ptr } %t61, ptr %l12, !tbaa !27
  %t62 = ptrtoint ptr %v2 to i64
  store i64 %t62, ptr %l13, !tbaa !24
  %t63 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e4
  br i1 %t63, label %bb3, label %bb4
bb3:
  %t65 = call ptr @__olang_region_make(ptr %v2)
  %t66 = ptrtoint ptr %t65 to i64
  store i64 %t66, ptr %l13, !tbaa !24
  br label %bb4
bb4:
  %t67 = load i64, ptr %l3, !tbaa !24
  %t69 = sub i64 %t67, 1
  %t70 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d772, i32 0, i32 1) }, 1
  %t71 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d772, i32 0, i32 1) }, 0
  %t73 = call i64 @__olang_fmt_i64(ptr null, i64 %t69)
  %t74 = add i64 %t71, %t73
  %t75 = extractvalue { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d773, i32 0, i32 1) }, 1
  %t76 = extractvalue { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d773, i32 0, i32 1) }, 0
  %t77 = add i64 %t74, %t76
  %t78 = load i64, ptr %l13
  %t79 = inttoptr i64 %t78 to ptr
  %t80 = call ptr @__olang_scope_alloc(ptr %t79, i64 %t77)
  call void @olang_textcopy(ptr %t80, ptr %t70, i64 %t71)
  %t81 = getelementptr i8, ptr %t80, i64 %t71
  %t82 = call i64 @__olang_fmt_i64(ptr %t81, i64 %t69)
  %t83 = getelementptr i8, ptr %t81, i64 %t73
  call void @olang_textcopy(ptr %t83, ptr %t75, i64 %t76)
  %t84 = insertvalue { i64, ptr } undef, i64 %t77, 0
  %t85 = insertvalue { i64, ptr } %t84, ptr %t80, 1
  %t87 = load i64, ptr %l13
  %t88 = inttoptr i64 %t87 to ptr
  %t89 = extractvalue { i64, ptr } %t85, 0
  %t90 = extractvalue { i64, ptr } %t85, 1
  %t91 = mul i64 %t89, 1
  %t92 = call ptr @__olang_scope_alloc(ptr %t88, i64 %t91)
  call void @llvm.memcpy.p0.p0.i64(ptr %t92, ptr %t90, i64 %t91, i1 false)
  %t93 = insertvalue { i64, ptr } undef, i64 %t89, 0
  %t94 = insertvalue { i64, ptr } %t93, ptr %t92, 1
  %t95 = load i32, ptr %l4, !range !{i32 0, i32 906}
  %t96 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t98 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, i32 %t95, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d774, i32 0, i32 1) }, { i64, ptr } %t96, { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d775, i32 0, i32 1) }, { i64, ptr } %t94)
  store %"compiler/diagmsg:Msg" %t98, ptr %l19
  br label %bb5
bb5:
  %t99 = load %"compiler/diagmsg:Msg", ptr %l19
  store %"compiler/diagmsg:Msg" %t99, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSliceBoundNotInt(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 411, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d776, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d776, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t7, i64 %t8)
  %t16 = getelementptr i8, ptr %t15, i64 %t8
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d777, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSliceNeedsLen(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 528, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d778, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d778, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d779, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d779, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l2
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  call void @olang_textcopy(ptr %t18, ptr %t7, i64 %t8)
  %t19 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t18, 1
  %t24 = load i64, ptr %l2
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d780, i32 0, i32 1) }, { i64, ptr } %t31, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t34, ptr %l7
  br label %bb3
bb3:
  %t35 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t35, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpawnArgTooShort(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 675, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d781, i32 0, i32 1) }, { i64, ptr } { i64 93, ptr getelementptr inbounds (<{ i64, [93 x i8] }>, ptr @.d782, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpawnInDefer(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 660, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d783, i32 0, i32 1) }, { i64, ptr } { i64 66, ptr getelementptr inbounds (<{ i64, [66 x i8] }>, ptr @.d784, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpawnLambdaParams(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 659, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d785, i32 0, i32 1) }, { i64, ptr } { i64 64, ptr getelementptr inbounds (<{ i64, [64 x i8] }>, ptr @.d786, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpawnTryInfallible(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 665, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d787, i32 0, i32 1) }, { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d788, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eStructPatPositional(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 494, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e3
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d789, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d789, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d790, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d790, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l2
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  call void @olang_textcopy(ptr %t18, ptr %t7, i64 %t8)
  %t19 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t18, 1
  %t24 = load i64, ptr %l2
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d791, i32 0, i32 1) }, { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d792, i32 0, i32 1) }, { i64, ptr } %t31, { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d793, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t34, ptr %l7
  br label %bb3
bb3:
  %t35 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t35, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTargetForeignMode(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca i32
  %l3 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l14 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i32 29, ptr %l2
  %t1 = ptrtoint ptr %v2 to i64
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v2)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t7 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t9 = extractvalue { i64, ptr } %a0, 1
  %t10 = extractvalue { i64, ptr } %a0, 0
  %t11 = extractvalue { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d794, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d794, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t15 = extractvalue { i64, ptr } %t7, 1
  %t16 = extractvalue { i64, ptr } %t7, 0
  %t17 = add i64 %t13, %t16
  %t18 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d795, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d795, i32 0, i32 1) }, 0
  %t20 = add i64 %t17, %t19
  %t21 = load i64, ptr %l3
  %t22 = inttoptr i64 %t21 to ptr
  %t23 = call ptr @__olang_scope_alloc(ptr %t22, i64 %t20)
  call void @olang_textcopy(ptr %t23, ptr %t9, i64 %t10)
  %t24 = getelementptr i8, ptr %t23, i64 %t10
  call void @olang_textcopy(ptr %t24, ptr %t11, i64 %t12)
  %t25 = getelementptr i8, ptr %t24, i64 %t12
  call void @olang_textcopy(ptr %t25, ptr %t15, i64 %t16)
  %t26 = getelementptr i8, ptr %t25, i64 %t16
  call void @olang_textcopy(ptr %t26, ptr %t18, i64 %t19)
  %t27 = insertvalue { i64, ptr } undef, i64 %t20, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t23, 1
  %t30 = load i64, ptr %l3
  %t31 = inttoptr i64 %t30 to ptr
  %t32 = extractvalue { i64, ptr } %t28, 0
  %t33 = extractvalue { i64, ptr } %t28, 1
  %t34 = mul i64 %t32, 1
  %t35 = call ptr @__olang_scope_alloc(ptr %t31, i64 %t34)
  call void @llvm.memcpy.p0.p0.i64(ptr %t35, ptr %t33, i64 %t34, i1 false)
  %t36 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t35, 1
  store { i64, ptr } %t37, ptr %l8, !tbaa !27
  %t38 = ptrtoint ptr %v2 to i64
  store i64 %t38, ptr %l9, !tbaa !24
  %t39 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e3
  br i1 %t39, label %bb3, label %bb4
bb3:
  %t41 = call ptr @__olang_region_make(ptr %v2)
  %t42 = ptrtoint ptr %t41 to i64
  store i64 %t42, ptr %l9, !tbaa !24
  br label %bb4
bb4:
  %t43 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t44 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d796, i32 0, i32 1) }, 1
  %t45 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d796, i32 0, i32 1) }, 0
  %t47 = extractvalue { i64, ptr } %t43, 1
  %t48 = extractvalue { i64, ptr } %t43, 0
  %t49 = add i64 %t45, %t48
  %t50 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d797, i32 0, i32 1) }, 1
  %t51 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d797, i32 0, i32 1) }, 0
  %t52 = add i64 %t49, %t51
  %t53 = load i64, ptr %l9
  %t54 = inttoptr i64 %t53 to ptr
  %t55 = call ptr @__olang_scope_alloc(ptr %t54, i64 %t52)
  call void @olang_textcopy(ptr %t55, ptr %t44, i64 %t45)
  %t56 = getelementptr i8, ptr %t55, i64 %t45
  call void @olang_textcopy(ptr %t56, ptr %t47, i64 %t48)
  %t57 = getelementptr i8, ptr %t56, i64 %t48
  call void @olang_textcopy(ptr %t57, ptr %t50, i64 %t51)
  %t58 = insertvalue { i64, ptr } undef, i64 %t52, 0
  %t59 = insertvalue { i64, ptr } %t58, ptr %t55, 1
  %t61 = load i64, ptr %l9
  %t62 = inttoptr i64 %t61 to ptr
  %t63 = extractvalue { i64, ptr } %t59, 0
  %t64 = extractvalue { i64, ptr } %t59, 1
  %t65 = mul i64 %t63, 1
  %t66 = call ptr @__olang_scope_alloc(ptr %t62, i64 %t65)
  call void @llvm.memcpy.p0.p0.i64(ptr %t66, ptr %t64, i64 %t65, i1 false)
  %t67 = insertvalue { i64, ptr } undef, i64 %t63, 0
  %t68 = insertvalue { i64, ptr } %t67, ptr %t66, 1
  %t69 = load i32, ptr %l2, !range !{i32 0, i32 906}
  %t70 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t72 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, i32 %t69, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d798, i32 0, i32 1) }, { i64, ptr } %t70, { i64, ptr } %t68, { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d799, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t72, ptr %l14
  br label %bb5
bb5:
  %t73 = load %"compiler/diagmsg:Msg", ptr %l14
  store %"compiler/diagmsg:Msg" %t73, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTargetNativeForeign(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 28, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d800, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d800, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d801, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d801, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l2
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  call void @olang_textcopy(ptr %t18, ptr %t7, i64 %t8)
  %t19 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t18, 1
  %t24 = load i64, ptr %l2
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d802, i32 0, i32 1) }, { i64, ptr } %t31, { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d803, i32 0, i32 1) }, { i64, ptr } { i64 68, ptr getelementptr inbounds (<{ i64, [68 x i8] }>, ptr @.d804, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t34, ptr %l7
  br label %bb3
bb3:
  %t35 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t35, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTaskClauseLoopJump(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 667, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } %a0, 1
  %t9 = extractvalue { i64, ptr } %a0, 0
  %t10 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d805, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d805, i32 0, i32 1) }, 0
  %t12 = add i64 %t9, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t8, i64 %t9)
  %t16 = getelementptr i8, ptr %t15, i64 %t9
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d806, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } { i64 48, ptr getelementptr inbounds (<{ i64, [48 x i8] }>, ptr @.d807, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTaskClauseNeedsDefault(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 669, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d808, i32 0, i32 1) }, { i64, ptr } { i64 61, ptr getelementptr inbounds (<{ i64, [61 x i8] }>, ptr @.d809, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d810, i32 0, i32 1) }, { i64, ptr } { i64 43, ptr getelementptr inbounds (<{ i64, [43 x i8] }>, ptr @.d811, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTextPlusChars(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l13 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 457, ptr %l2
  %t1 = ptrtoint ptr %v2 to i64
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v2)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d812, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d812, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d813, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d813, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l3
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  call void @olang_textcopy(ptr %t18, ptr %t7, i64 %t8)
  %t19 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t18, 1
  %t24 = load i64, ptr %l3
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  store { i64, ptr } %t31, ptr %l7, !tbaa !27
  %t32 = ptrtoint ptr %v2 to i64
  store i64 %t32, ptr %l8, !tbaa !24
  %t33 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e4
  br i1 %t33, label %bb3, label %bb4
bb3:
  %t35 = call ptr @__olang_region_make(ptr %v2)
  %t36 = ptrtoint ptr %t35 to i64
  store i64 %t36, ptr %l8, !tbaa !24
  br label %bb4
bb4:
  %t38 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d814, i32 0, i32 1) }, 1
  %t39 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d814, i32 0, i32 1) }, 0
  %t41 = extractvalue { i64, ptr } %a1, 1
  %t42 = extractvalue { i64, ptr } %a1, 0
  %t43 = add i64 %t39, %t42
  %t44 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d815, i32 0, i32 1) }, 1
  %t45 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d815, i32 0, i32 1) }, 0
  %t46 = add i64 %t43, %t45
  %t47 = load i64, ptr %l8
  %t48 = inttoptr i64 %t47 to ptr
  %t49 = call ptr @__olang_scope_alloc(ptr %t48, i64 %t46)
  call void @olang_textcopy(ptr %t49, ptr %t38, i64 %t39)
  %t50 = getelementptr i8, ptr %t49, i64 %t39
  call void @olang_textcopy(ptr %t50, ptr %t41, i64 %t42)
  %t51 = getelementptr i8, ptr %t50, i64 %t42
  call void @olang_textcopy(ptr %t51, ptr %t44, i64 %t45)
  %t52 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t53 = insertvalue { i64, ptr } %t52, ptr %t49, 1
  %t55 = load i64, ptr %l8
  %t56 = inttoptr i64 %t55 to ptr
  %t57 = extractvalue { i64, ptr } %t53, 0
  %t58 = extractvalue { i64, ptr } %t53, 1
  %t59 = mul i64 %t57, 1
  %t60 = call ptr @__olang_scope_alloc(ptr %t56, i64 %t59)
  call void @llvm.memcpy.p0.p0.i64(ptr %t60, ptr %t58, i64 %t59, i1 false)
  %t61 = insertvalue { i64, ptr } undef, i64 %t57, 0
  %t62 = insertvalue { i64, ptr } %t61, ptr %t60, 1
  %t63 = load i32, ptr %l2, !range !{i32 0, i32 906}
  %t64 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t66 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, i32 %t63, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d816, i32 0, i32 1) }, { i64, ptr } %t64, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d817, i32 0, i32 1) }, { i64, ptr } %t62)
  store %"compiler/diagmsg:Msg" %t66, ptr %l13
  br label %bb5
bb5:
  %t67 = load %"compiler/diagmsg:Msg", ptr %l13
  store %"compiler/diagmsg:Msg" %t67, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTopAssertFalseMessage(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 781, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 57, ptr getelementptr inbounds (<{ i64, [57 x i8] }>, ptr @.d818, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 57, ptr getelementptr inbounds (<{ i64, [57 x i8] }>, ptr @.d818, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t7, i64 %t8)
  %t16 = getelementptr i8, ptr %t15, i64 %t8
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d819, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTopSetCondReads(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 729, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d820, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d820, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d821, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d821, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l2
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  call void @olang_textcopy(ptr %t18, ptr %t7, i64 %t8)
  %t19 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t18, 1
  %t24 = load i64, ptr %l2
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d822, i32 0, i32 1) }, { i64, ptr } %t31, { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d823, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t34, ptr %l7
  br label %bb3
bb3:
  %t35 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t35, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTopSetMissing(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 727, ptr %l2
  %t1 = ptrtoint ptr %v2 to i64
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v2)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d824, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d824, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d825, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d825, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d826, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d826, i32 0, i32 1) }, 0
  %t23 = add i64 %t20, %t22
  %t24 = load i64, ptr %l3
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t23)
  call void @olang_textcopy(ptr %t26, ptr %t8, i64 %t9)
  %t27 = getelementptr i8, ptr %t26, i64 %t9
  call void @olang_textcopy(ptr %t27, ptr %t11, i64 %t12)
  %t28 = getelementptr i8, ptr %t27, i64 %t12
  call void @olang_textcopy(ptr %t28, ptr %t14, i64 %t15)
  %t29 = getelementptr i8, ptr %t28, i64 %t15
  call void @olang_textcopy(ptr %t29, ptr %t18, i64 %t19)
  %t30 = getelementptr i8, ptr %t29, i64 %t19
  call void @olang_textcopy(ptr %t30, ptr %t21, i64 %t22)
  %t31 = insertvalue { i64, ptr } undef, i64 %t23, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t26, 1
  %t34 = load i64, ptr %l3
  %t35 = inttoptr i64 %t34 to ptr
  %t36 = extractvalue { i64, ptr } %t32, 0
  %t37 = extractvalue { i64, ptr } %t32, 1
  %t38 = mul i64 %t36, 1
  %t39 = call ptr @__olang_scope_alloc(ptr %t35, i64 %t38)
  call void @llvm.memcpy.p0.p0.i64(ptr %t39, ptr %t37, i64 %t38, i1 false)
  %t40 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t39, 1
  %t42 = load i32, ptr %l2, !range !{i32 0, i32 906}
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d827, i32 0, i32 1) }, { i64, ptr } %t41, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d828, i32 0, i32 1) }, { i64, ptr } { i64 57, ptr getelementptr inbounds (<{ i64, [57 x i8] }>, ptr @.d829, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t44, ptr %l9
  br label %bb3
bb3:
  %t45 = load %"compiler/diagmsg:Msg", ptr %l9
  store %"compiler/diagmsg:Msg" %t45, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTrailingComma(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 88, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d830, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d830, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d831, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d831, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l2
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  call void @olang_textcopy(ptr %t18, ptr %t7, i64 %t8)
  %t19 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t18, 1
  %t24 = load i64, ptr %l2
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d832, i32 0, i32 1) }, { i64, ptr } %t31, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t34, ptr %l7
  br label %bb3
bb3:
  %t35 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t35, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTraitMethodBeyond(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, { i64, ptr } %a4) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l5 = alloca i32
  %l6 = alloca i64
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l20 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i32 892, ptr %l5
  %t1 = ptrtoint ptr %v5 to i64
  store i64 %t1, ptr %l6, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v5)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l6, !tbaa !24
  br label %bb2
bb2:
  %t7 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t10 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t12 = extractvalue { i64, ptr } %a0, 1
  %t13 = extractvalue { i64, ptr } %a0, 0
  %t14 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d833, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d833, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %t7, 1
  %t19 = extractvalue { i64, ptr } %t7, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d834, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d834, i32 0, i32 1) }, 0
  %t23 = add i64 %t20, %t22
  %t25 = extractvalue { i64, ptr } %a2, 1
  %t26 = extractvalue { i64, ptr } %a2, 0
  %t27 = add i64 %t23, %t26
  %t28 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d835, i32 0, i32 1) }, 1
  %t29 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d835, i32 0, i32 1) }, 0
  %t30 = add i64 %t27, %t29
  %t32 = extractvalue { i64, ptr } %a3, 1
  %t33 = extractvalue { i64, ptr } %a3, 0
  %t34 = add i64 %t30, %t33
  %t35 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d833, i32 0, i32 1) }, 1
  %t36 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d833, i32 0, i32 1) }, 0
  %t37 = add i64 %t34, %t36
  %t39 = extractvalue { i64, ptr } %t10, 1
  %t40 = extractvalue { i64, ptr } %t10, 0
  %t41 = add i64 %t37, %t40
  %t42 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d836, i32 0, i32 1) }, 1
  %t43 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d836, i32 0, i32 1) }, 0
  %t44 = add i64 %t41, %t43
  %t45 = load i64, ptr %l6
  %t46 = inttoptr i64 %t45 to ptr
  %t47 = call ptr @__olang_scope_alloc(ptr %t46, i64 %t44)
  call void @olang_textcopy(ptr %t47, ptr %t12, i64 %t13)
  %t48 = getelementptr i8, ptr %t47, i64 %t13
  call void @olang_textcopy(ptr %t48, ptr %t14, i64 %t15)
  %t49 = getelementptr i8, ptr %t48, i64 %t15
  call void @olang_textcopy(ptr %t49, ptr %t18, i64 %t19)
  %t50 = getelementptr i8, ptr %t49, i64 %t19
  call void @olang_textcopy(ptr %t50, ptr %t21, i64 %t22)
  %t51 = getelementptr i8, ptr %t50, i64 %t22
  call void @olang_textcopy(ptr %t51, ptr %t25, i64 %t26)
  %t52 = getelementptr i8, ptr %t51, i64 %t26
  call void @olang_textcopy(ptr %t52, ptr %t28, i64 %t29)
  %t53 = getelementptr i8, ptr %t52, i64 %t29
  call void @olang_textcopy(ptr %t53, ptr %t32, i64 %t33)
  %t54 = getelementptr i8, ptr %t53, i64 %t33
  call void @olang_textcopy(ptr %t54, ptr %t35, i64 %t36)
  %t55 = getelementptr i8, ptr %t54, i64 %t36
  call void @olang_textcopy(ptr %t55, ptr %t39, i64 %t40)
  %t56 = getelementptr i8, ptr %t55, i64 %t40
  call void @olang_textcopy(ptr %t56, ptr %t42, i64 %t43)
  %t57 = insertvalue { i64, ptr } undef, i64 %t44, 0
  %t58 = insertvalue { i64, ptr } %t57, ptr %t47, 1
  %t60 = load i64, ptr %l6
  %t61 = inttoptr i64 %t60 to ptr
  %t62 = extractvalue { i64, ptr } %t58, 0
  %t63 = extractvalue { i64, ptr } %t58, 1
  %t64 = mul i64 %t62, 1
  %t65 = call ptr @__olang_scope_alloc(ptr %t61, i64 %t64)
  call void @llvm.memcpy.p0.p0.i64(ptr %t65, ptr %t63, i64 %t64, i1 false)
  %t66 = insertvalue { i64, ptr } undef, i64 %t62, 0
  %t67 = insertvalue { i64, ptr } %t66, ptr %t65, 1
  store { i64, ptr } %t67, ptr %l14, !tbaa !27
  %t68 = ptrtoint ptr %v5 to i64
  store i64 %t68, ptr %l15, !tbaa !24
  %t69 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e4
  br i1 %t69, label %bb3, label %bb4
bb3:
  %t71 = call ptr @__olang_region_make(ptr %v5)
  %t72 = ptrtoint ptr %t71 to i64
  store i64 %t72, ptr %l15, !tbaa !24
  br label %bb4
bb4:
  %t74 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d837, i32 0, i32 1) }, 1
  %t75 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d837, i32 0, i32 1) }, 0
  %t77 = extractvalue { i64, ptr } %a4, 1
  %t78 = extractvalue { i64, ptr } %a4, 0
  %t79 = add i64 %t75, %t78
  %t80 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d838, i32 0, i32 1) }, 1
  %t81 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d838, i32 0, i32 1) }, 0
  %t82 = add i64 %t79, %t81
  %t83 = load i64, ptr %l15
  %t84 = inttoptr i64 %t83 to ptr
  %t85 = call ptr @__olang_scope_alloc(ptr %t84, i64 %t82)
  call void @olang_textcopy(ptr %t85, ptr %t74, i64 %t75)
  %t86 = getelementptr i8, ptr %t85, i64 %t75
  call void @olang_textcopy(ptr %t86, ptr %t77, i64 %t78)
  %t87 = getelementptr i8, ptr %t86, i64 %t78
  call void @olang_textcopy(ptr %t87, ptr %t80, i64 %t81)
  %t88 = insertvalue { i64, ptr } undef, i64 %t82, 0
  %t89 = insertvalue { i64, ptr } %t88, ptr %t85, 1
  %t91 = load i64, ptr %l15
  %t92 = inttoptr i64 %t91 to ptr
  %t93 = extractvalue { i64, ptr } %t89, 0
  %t94 = extractvalue { i64, ptr } %t89, 1
  %t95 = mul i64 %t93, 1
  %t96 = call ptr @__olang_scope_alloc(ptr %t92, i64 %t95)
  call void @llvm.memcpy.p0.p0.i64(ptr %t96, ptr %t94, i64 %t95, i1 false)
  %t97 = insertvalue { i64, ptr } undef, i64 %t93, 0
  %t98 = insertvalue { i64, ptr } %t97, ptr %t96, 1
  %t99 = load i32, ptr %l5, !range !{i32 0, i32 906}
  %t100 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t102 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v5, ptr %v5, ptr %v5, ptr %v5, ptr %v5, i32 %t99, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d839, i32 0, i32 1) }, { i64, ptr } %t100, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d840, i32 0, i32 1) }, { i64, ptr } %t98)
  store %"compiler/diagmsg:Msg" %t102, ptr %l20
  br label %bb5
bb5:
  %t103 = load %"compiler/diagmsg:Msg", ptr %l20
  store %"compiler/diagmsg:Msg" %t103, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTraitMethodEffect(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, { i64, ptr } %a4) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i32
  %l6 = alloca i64
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l20 = alloca { i64, ptr }
  %l21 = alloca i64
  %l27 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store { i64, ptr } %a3, ptr %l3
  store { i64, ptr } %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store i32 891, ptr %l5
  %t1 = ptrtoint ptr %v5 to i64
  store i64 %t1, ptr %l6, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v5)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l6, !tbaa !24
  br label %bb2
bb2:
  %t6 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t10 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t11 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t6, 1
  %t14 = extractvalue { i64, ptr } %t6, 0
  %t15 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d841, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d841, i32 0, i32 1) }, 0
  %t17 = add i64 %t14, %t16
  %t19 = extractvalue { i64, ptr } %t7, 1
  %t20 = extractvalue { i64, ptr } %t7, 0
  %t21 = add i64 %t17, %t20
  %t22 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d842, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d842, i32 0, i32 1) }, 0
  %t24 = add i64 %t21, %t23
  %t26 = extractvalue { i64, ptr } %a2, 1
  %t27 = extractvalue { i64, ptr } %a2, 0
  %t28 = add i64 %t24, %t27
  %t29 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d843, i32 0, i32 1) }, 1
  %t30 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d843, i32 0, i32 1) }, 0
  %t31 = add i64 %t28, %t30
  %t33 = extractvalue { i64, ptr } %t9, 1
  %t34 = extractvalue { i64, ptr } %t9, 0
  %t35 = add i64 %t31, %t34
  %t36 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d841, i32 0, i32 1) }, 1
  %t37 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d841, i32 0, i32 1) }, 0
  %t38 = add i64 %t35, %t37
  %t40 = extractvalue { i64, ptr } %t10, 1
  %t41 = extractvalue { i64, ptr } %t10, 0
  %t42 = add i64 %t38, %t41
  %t43 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d844, i32 0, i32 1) }, 1
  %t44 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d844, i32 0, i32 1) }, 0
  %t45 = add i64 %t42, %t44
  %t47 = extractvalue { i64, ptr } %t11, 1
  %t48 = extractvalue { i64, ptr } %t11, 0
  %t49 = add i64 %t45, %t48
  %t50 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d845, i32 0, i32 1) }, 1
  %t51 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d845, i32 0, i32 1) }, 0
  %t52 = add i64 %t49, %t51
  %t53 = load i64, ptr %l6
  %t54 = inttoptr i64 %t53 to ptr
  %t55 = call ptr @__olang_scope_alloc(ptr %t54, i64 %t52)
  call void @olang_textcopy(ptr %t55, ptr %t13, i64 %t14)
  %t56 = getelementptr i8, ptr %t55, i64 %t14
  call void @olang_textcopy(ptr %t56, ptr %t15, i64 %t16)
  %t57 = getelementptr i8, ptr %t56, i64 %t16
  call void @olang_textcopy(ptr %t57, ptr %t19, i64 %t20)
  %t58 = getelementptr i8, ptr %t57, i64 %t20
  call void @olang_textcopy(ptr %t58, ptr %t22, i64 %t23)
  %t59 = getelementptr i8, ptr %t58, i64 %t23
  call void @olang_textcopy(ptr %t59, ptr %t26, i64 %t27)
  %t60 = getelementptr i8, ptr %t59, i64 %t27
  call void @olang_textcopy(ptr %t60, ptr %t29, i64 %t30)
  %t61 = getelementptr i8, ptr %t60, i64 %t30
  call void @olang_textcopy(ptr %t61, ptr %t33, i64 %t34)
  %t62 = getelementptr i8, ptr %t61, i64 %t34
  call void @olang_textcopy(ptr %t62, ptr %t36, i64 %t37)
  %t63 = getelementptr i8, ptr %t62, i64 %t37
  call void @olang_textcopy(ptr %t63, ptr %t40, i64 %t41)
  %t64 = getelementptr i8, ptr %t63, i64 %t41
  call void @olang_textcopy(ptr %t64, ptr %t43, i64 %t44)
  %t65 = getelementptr i8, ptr %t64, i64 %t44
  call void @olang_textcopy(ptr %t65, ptr %t47, i64 %t48)
  %t66 = getelementptr i8, ptr %t65, i64 %t48
  call void @olang_textcopy(ptr %t66, ptr %t50, i64 %t51)
  %t67 = insertvalue { i64, ptr } undef, i64 %t52, 0
  %t68 = insertvalue { i64, ptr } %t67, ptr %t55, 1
  %t70 = load i64, ptr %l6
  %t71 = inttoptr i64 %t70 to ptr
  %t72 = extractvalue { i64, ptr } %t68, 0
  %t73 = extractvalue { i64, ptr } %t68, 1
  %t74 = mul i64 %t72, 1
  %t75 = call ptr @__olang_scope_alloc(ptr %t71, i64 %t74)
  call void @llvm.memcpy.p0.p0.i64(ptr %t75, ptr %t73, i64 %t74, i1 false)
  %t76 = insertvalue { i64, ptr } undef, i64 %t72, 0
  %t77 = insertvalue { i64, ptr } %t76, ptr %t75, 1
  store { i64, ptr } %t77, ptr %l15, !tbaa !27
  %t78 = ptrtoint ptr %v5 to i64
  store i64 %t78, ptr %l16, !tbaa !24
  %t79 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e3
  br i1 %t79, label %bb3, label %bb4
bb3:
  %t81 = call ptr @__olang_region_make(ptr %v5)
  %t82 = ptrtoint ptr %t81 to i64
  store i64 %t82, ptr %l16, !tbaa !24
  br label %bb4
bb4:
  %t83 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t84 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d846, i32 0, i32 1) }, 1
  %t85 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d846, i32 0, i32 1) }, 0
  %t87 = extractvalue { i64, ptr } %t83, 1
  %t88 = extractvalue { i64, ptr } %t83, 0
  %t89 = add i64 %t85, %t88
  %t90 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d847, i32 0, i32 1) }, 1
  %t91 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d847, i32 0, i32 1) }, 0
  %t92 = add i64 %t89, %t91
  %t93 = load i64, ptr %l16
  %t94 = inttoptr i64 %t93 to ptr
  %t95 = call ptr @__olang_scope_alloc(ptr %t94, i64 %t92)
  call void @olang_textcopy(ptr %t95, ptr %t84, i64 %t85)
  %t96 = getelementptr i8, ptr %t95, i64 %t85
  call void @olang_textcopy(ptr %t96, ptr %t87, i64 %t88)
  %t97 = getelementptr i8, ptr %t96, i64 %t88
  call void @olang_textcopy(ptr %t97, ptr %t90, i64 %t91)
  %t98 = insertvalue { i64, ptr } undef, i64 %t92, 0
  %t99 = insertvalue { i64, ptr } %t98, ptr %t95, 1
  %t101 = load i64, ptr %l16
  %t102 = inttoptr i64 %t101 to ptr
  %t103 = extractvalue { i64, ptr } %t99, 0
  %t104 = extractvalue { i64, ptr } %t99, 1
  %t105 = mul i64 %t103, 1
  %t106 = call ptr @__olang_scope_alloc(ptr %t102, i64 %t105)
  call void @llvm.memcpy.p0.p0.i64(ptr %t106, ptr %t104, i64 %t105, i1 false)
  %t107 = insertvalue { i64, ptr } undef, i64 %t103, 0
  %t108 = insertvalue { i64, ptr } %t107, ptr %t106, 1
  store { i64, ptr } %t108, ptr %l20, !tbaa !27
  %t109 = ptrtoint ptr %v5 to i64
  store i64 %t109, ptr %l21, !tbaa !24
  %t110 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e4
  br i1 %t110, label %bb5, label %bb6
bb5:
  %t112 = call ptr @__olang_region_make(ptr %v5)
  %t113 = ptrtoint ptr %t112 to i64
  store i64 %t113, ptr %l21, !tbaa !24
  br label %bb6
bb6:
  %t114 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t115 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t116 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d848, i32 0, i32 1) }, 1
  %t117 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d848, i32 0, i32 1) }, 0
  %t119 = extractvalue { i64, ptr } %t114, 1
  %t120 = extractvalue { i64, ptr } %t114, 0
  %t121 = add i64 %t117, %t120
  %t122 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d849, i32 0, i32 1) }, 1
  %t123 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d849, i32 0, i32 1) }, 0
  %t124 = add i64 %t121, %t123
  %t126 = extractvalue { i64, ptr } %t115, 1
  %t127 = extractvalue { i64, ptr } %t115, 0
  %t128 = add i64 %t124, %t127
  %t129 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d850, i32 0, i32 1) }, 1
  %t130 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d850, i32 0, i32 1) }, 0
  %t131 = add i64 %t128, %t130
  %t132 = load i64, ptr %l21
  %t133 = inttoptr i64 %t132 to ptr
  %t134 = call ptr @__olang_scope_alloc(ptr %t133, i64 %t131)
  call void @olang_textcopy(ptr %t134, ptr %t116, i64 %t117)
  %t135 = getelementptr i8, ptr %t134, i64 %t117
  call void @olang_textcopy(ptr %t135, ptr %t119, i64 %t120)
  %t136 = getelementptr i8, ptr %t135, i64 %t120
  call void @olang_textcopy(ptr %t136, ptr %t122, i64 %t123)
  %t137 = getelementptr i8, ptr %t136, i64 %t123
  call void @olang_textcopy(ptr %t137, ptr %t126, i64 %t127)
  %t138 = getelementptr i8, ptr %t137, i64 %t127
  call void @olang_textcopy(ptr %t138, ptr %t129, i64 %t130)
  %t139 = insertvalue { i64, ptr } undef, i64 %t131, 0
  %t140 = insertvalue { i64, ptr } %t139, ptr %t134, 1
  %t142 = load i64, ptr %l21
  %t143 = inttoptr i64 %t142 to ptr
  %t144 = extractvalue { i64, ptr } %t140, 0
  %t145 = extractvalue { i64, ptr } %t140, 1
  %t146 = mul i64 %t144, 1
  %t147 = call ptr @__olang_scope_alloc(ptr %t143, i64 %t146)
  call void @llvm.memcpy.p0.p0.i64(ptr %t147, ptr %t145, i64 %t146, i1 false)
  %t148 = insertvalue { i64, ptr } undef, i64 %t144, 0
  %t149 = insertvalue { i64, ptr } %t148, ptr %t147, 1
  %t150 = load i32, ptr %l5, !range !{i32 0, i32 906}
  %t151 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t152 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t154 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v5, ptr %v5, ptr %v5, ptr %v5, ptr %v5, i32 %t150, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d851, i32 0, i32 1) }, { i64, ptr } %t151, { i64, ptr } %t152, { i64, ptr } %t149)
  store %"compiler/diagmsg:Msg" %t154, ptr %l27
  br label %bb7
bb7:
  %t155 = load %"compiler/diagmsg:Msg", ptr %l27
  store %"compiler/diagmsg:Msg" %t155, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTraitMethodGeneric(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 200, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d852, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d852, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d853, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d853, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l2
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  call void @olang_textcopy(ptr %t18, ptr %t7, i64 %t8)
  %t19 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t18, 1
  %t24 = load i64, ptr %l2
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d854, i32 0, i32 1) }, { i64, ptr } %t31, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t34, ptr %l7
  br label %bb3
bb3:
  %t35 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t35, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTraitNotAType(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i32
  %l2 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l9 = alloca { i64, ptr }
  %l11 = alloca i1
  %l12 = alloca { i64, ptr }
  %l15 = alloca %"compiler/diagmsg:Msg"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/diagmsg:Msg"
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store i32 174, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t6 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t6, 1
  %t9 = extractvalue { i64, ptr } %t6, 0
  %t10 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d855, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d855, i32 0, i32 1) }, 0
  %t12 = add i64 %t9, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t8, i64 %t9)
  %t16 = getelementptr i8, ptr %t15, i64 %t9
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  store { i64, ptr } %t27, ptr %l6, !tbaa !27
  %t28 = ptrtoint ptr %v1 to i64
  store i64 %t28, ptr %l7, !tbaa !24
  %t29 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e4
  br i1 %t29, label %bb3, label %bb4
bb3:
  %t31 = call ptr @__olang_region_make(ptr %v1)
  %t32 = ptrtoint ptr %t31 to i64
  store i64 %t32, ptr %l7, !tbaa !24
  br label %bb4
bb4:
  %t33 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t33, ptr %l9, !tbaa !27
  %t34 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t36 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %s0, { i64, ptr } %t34, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d856, i32 0, i32 1) })
  store i1 %t36, ptr %l11
  br label %bb5
bb5:
  %t37 = load i1, ptr %l11, !tbaa !21
  br i1 %t37, label %bb6, label %bb7
bb6:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d857, i32 0, i32 1) }, ptr %l12, !tbaa !27
  br label %bb8
bb7:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d858, i32 0, i32 1) }, ptr %l12, !tbaa !27
  br label %bb8
bb8:
  %t38 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d859, i32 0, i32 1) }, 1
  %t39 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d859, i32 0, i32 1) }, 0
  %t40 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t40, 1
  %t42 = extractvalue { i64, ptr } %t40, 0
  %t43 = add i64 %t39, %t42
  %t44 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t44, 1
  %t46 = extractvalue { i64, ptr } %t44, 0
  %t47 = add i64 %t43, %t46
  %t48 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d860, i32 0, i32 1) }, 1
  %t49 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d860, i32 0, i32 1) }, 0
  %t50 = add i64 %t47, %t49
  %t51 = load i64, ptr %l7
  %t52 = inttoptr i64 %t51 to ptr
  %t53 = call ptr @__olang_scope_alloc(ptr %t52, i64 %t50)
  call void @olang_textcopy(ptr %t53, ptr %t38, i64 %t39)
  %t54 = getelementptr i8, ptr %t53, i64 %t39
  call void @olang_textcopy(ptr %t54, ptr %t41, i64 %t42)
  %t55 = getelementptr i8, ptr %t54, i64 %t42
  call void @olang_textcopy(ptr %t55, ptr %t45, i64 %t46)
  %t56 = getelementptr i8, ptr %t55, i64 %t46
  call void @olang_textcopy(ptr %t56, ptr %t48, i64 %t49)
  %t57 = insertvalue { i64, ptr } undef, i64 %t50, 0
  %t58 = insertvalue { i64, ptr } %t57, ptr %t53, 1
  %t60 = load i64, ptr %l7
  %t61 = inttoptr i64 %t60 to ptr
  %t62 = extractvalue { i64, ptr } %t58, 0
  %t63 = extractvalue { i64, ptr } %t58, 1
  %t64 = mul i64 %t62, 1
  %t65 = call ptr @__olang_scope_alloc(ptr %t61, i64 %t64)
  call void @llvm.memcpy.p0.p0.i64(ptr %t65, ptr %t63, i64 %t64, i1 false)
  %t66 = insertvalue { i64, ptr } undef, i64 %t62, 0
  %t67 = insertvalue { i64, ptr } %t66, ptr %t65, 1
  %t68 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t69 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t71 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t68, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d861, i32 0, i32 1) }, { i64, ptr } %t69, { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d862, i32 0, i32 1) }, { i64, ptr } %t67)
  store %"compiler/diagmsg:Msg" %t71, ptr %l15
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s0)
  %t72 = load %"compiler/diagmsg:Msg", ptr %l15
  store %"compiler/diagmsg:Msg" %t72, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeDefinedThroughItself(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 236, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } %a0, 1
  %t9 = extractvalue { i64, ptr } %a0, 0
  %t10 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d863, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d863, i32 0, i32 1) }, 0
  %t12 = add i64 %t9, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t8, i64 %t9)
  %t16 = getelementptr i8, ptr %t15, i64 %t9
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d864, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeMatchGuard(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 614, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d865, i32 0, i32 1) }, { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d866, i32 0, i32 1) }, { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d867, i32 0, i32 1) }, { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d868, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeMatchValueCase(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 165, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } %a0, 1
  %t9 = extractvalue { i64, ptr } %a0, 0
  %t10 = extractvalue { i64, ptr } { i64 43, ptr getelementptr inbounds (<{ i64, [43 x i8] }>, ptr @.d869, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 43, ptr getelementptr inbounds (<{ i64, [43 x i8] }>, ptr @.d869, i32 0, i32 1) }, 0
  %t12 = add i64 %t9, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t8, i64 %t9)
  %t16 = getelementptr i8, ptr %t15, i64 %t9
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d870, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeNotInferable(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 359, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d871, i32 0, i32 1) }, { i64, ptr } { i64 79, ptr getelementptr inbounds (<{ i64, [79 x i8] }>, ptr @.d872, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeVarNotErrorSet(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 205, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } %a0, 1
  %t9 = extractvalue { i64, ptr } %a0, 0
  %t10 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d873, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d873, i32 0, i32 1) }, 0
  %t12 = add i64 %t9, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t8, i64 %t9)
  %t16 = getelementptr i8, ptr %t15, i64 %t9
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d874, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d875, i32 0, i32 1) }, { i64, ptr } { i64 66, ptr getelementptr inbounds (<{ i64, [66 x i8] }>, ptr @.d876, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypedHoleUntyped(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 123, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d877, i32 0, i32 1) }, { i64, ptr } { i64 62, ptr getelementptr inbounds (<{ i64, [62 x i8] }>, ptr @.d878, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnboundedInstantiation(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 153, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d879, i32 0, i32 1) }, { i64, ptr } { i64 72, ptr getelementptr inbounds (<{ i64, [72 x i8] }>, ptr @.d880, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnclosedComment(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 67, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d881, i32 0, i32 1) }, { i64, ptr } { i64 43, ptr getelementptr inbounds (<{ i64, [43 x i8] }>, ptr @.d882, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnhandledFallibleCall(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 484, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d883, i32 0, i32 1) }, { i64, ptr } { i64 65, ptr getelementptr inbounds (<{ i64, [65 x i8] }>, ptr @.d884, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUniqueAlias(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i32
  %l4 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l21 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store i32 276, ptr %l3
  %t1 = ptrtoint ptr %v3 to i64
  store i64 %t1, ptr %l4, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v3)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t6 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d885, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d885, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %t6, 1
  %t12 = extractvalue { i64, ptr } %t6, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d886, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d886, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %t7, 1
  %t19 = extractvalue { i64, ptr } %t7, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d887, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d887, i32 0, i32 1) }, 0
  %t23 = add i64 %t20, %t22
  %t24 = load i64, ptr %l4
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t23)
  call void @olang_textcopy(ptr %t26, ptr %t8, i64 %t9)
  %t27 = getelementptr i8, ptr %t26, i64 %t9
  call void @olang_textcopy(ptr %t27, ptr %t11, i64 %t12)
  %t28 = getelementptr i8, ptr %t27, i64 %t12
  call void @olang_textcopy(ptr %t28, ptr %t14, i64 %t15)
  %t29 = getelementptr i8, ptr %t28, i64 %t15
  call void @olang_textcopy(ptr %t29, ptr %t18, i64 %t19)
  %t30 = getelementptr i8, ptr %t29, i64 %t19
  call void @olang_textcopy(ptr %t30, ptr %t21, i64 %t22)
  %t31 = insertvalue { i64, ptr } undef, i64 %t23, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t26, 1
  %t34 = load i64, ptr %l4
  %t35 = inttoptr i64 %t34 to ptr
  %t36 = extractvalue { i64, ptr } %t32, 0
  %t37 = extractvalue { i64, ptr } %t32, 1
  %t38 = mul i64 %t36, 1
  %t39 = call ptr @__olang_scope_alloc(ptr %t35, i64 %t38)
  call void @llvm.memcpy.p0.p0.i64(ptr %t39, ptr %t37, i64 %t38, i1 false)
  %t40 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t39, 1
  store { i64, ptr } %t41, ptr %l9, !tbaa !27
  %t42 = ptrtoint ptr %v3 to i64
  store i64 %t42, ptr %l10, !tbaa !24
  %t43 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e3
  br i1 %t43, label %bb3, label %bb4
bb3:
  %t45 = call ptr @__olang_region_make(ptr %v3)
  %t46 = ptrtoint ptr %t45 to i64
  store i64 %t46, ptr %l10, !tbaa !24
  br label %bb4
bb4:
  %t49 = extractvalue { i64, ptr } %a1, 1
  %t50 = extractvalue { i64, ptr } %a1, 0
  %t51 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d888, i32 0, i32 1) }, 1
  %t52 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d888, i32 0, i32 1) }, 0
  %t53 = add i64 %t50, %t52
  %t54 = load i64, ptr %l10
  %t55 = inttoptr i64 %t54 to ptr
  %t56 = call ptr @__olang_scope_alloc(ptr %t55, i64 %t53)
  call void @olang_textcopy(ptr %t56, ptr %t49, i64 %t50)
  %t57 = getelementptr i8, ptr %t56, i64 %t50
  call void @olang_textcopy(ptr %t57, ptr %t51, i64 %t52)
  %t58 = insertvalue { i64, ptr } undef, i64 %t53, 0
  %t59 = insertvalue { i64, ptr } %t58, ptr %t56, 1
  %t61 = load i64, ptr %l10
  %t62 = inttoptr i64 %t61 to ptr
  %t63 = extractvalue { i64, ptr } %t59, 0
  %t64 = extractvalue { i64, ptr } %t59, 1
  %t65 = mul i64 %t63, 1
  %t66 = call ptr @__olang_scope_alloc(ptr %t62, i64 %t65)
  call void @llvm.memcpy.p0.p0.i64(ptr %t66, ptr %t64, i64 %t65, i1 false)
  %t67 = insertvalue { i64, ptr } undef, i64 %t63, 0
  %t68 = insertvalue { i64, ptr } %t67, ptr %t66, 1
  store { i64, ptr } %t68, ptr %l14, !tbaa !27
  %t69 = ptrtoint ptr %v3 to i64
  store i64 %t69, ptr %l15, !tbaa !24
  %t70 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e4
  br i1 %t70, label %bb5, label %bb6
bb5:
  %t72 = call ptr @__olang_region_make(ptr %v3)
  %t73 = ptrtoint ptr %t72 to i64
  store i64 %t73, ptr %l15, !tbaa !24
  br label %bb6
bb6:
  %t74 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t75 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t76 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d889, i32 0, i32 1) }, 1
  %t77 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d889, i32 0, i32 1) }, 0
  %t79 = extractvalue { i64, ptr } %t74, 1
  %t80 = extractvalue { i64, ptr } %t74, 0
  %t81 = add i64 %t77, %t80
  %t82 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d890, i32 0, i32 1) }, 1
  %t83 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d890, i32 0, i32 1) }, 0
  %t84 = add i64 %t81, %t83
  %t86 = extractvalue { i64, ptr } %t75, 1
  %t87 = extractvalue { i64, ptr } %t75, 0
  %t88 = add i64 %t84, %t87
  %t89 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d891, i32 0, i32 1) }, 1
  %t90 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d891, i32 0, i32 1) }, 0
  %t91 = add i64 %t88, %t90
  %t92 = load i64, ptr %l15
  %t93 = inttoptr i64 %t92 to ptr
  %t94 = call ptr @__olang_scope_alloc(ptr %t93, i64 %t91)
  call void @olang_textcopy(ptr %t94, ptr %t76, i64 %t77)
  %t95 = getelementptr i8, ptr %t94, i64 %t77
  call void @olang_textcopy(ptr %t95, ptr %t79, i64 %t80)
  %t96 = getelementptr i8, ptr %t95, i64 %t80
  call void @olang_textcopy(ptr %t96, ptr %t82, i64 %t83)
  %t97 = getelementptr i8, ptr %t96, i64 %t83
  call void @olang_textcopy(ptr %t97, ptr %t86, i64 %t87)
  %t98 = getelementptr i8, ptr %t97, i64 %t87
  call void @olang_textcopy(ptr %t98, ptr %t89, i64 %t90)
  %t99 = insertvalue { i64, ptr } undef, i64 %t91, 0
  %t100 = insertvalue { i64, ptr } %t99, ptr %t94, 1
  %t102 = load i64, ptr %l15
  %t103 = inttoptr i64 %t102 to ptr
  %t104 = extractvalue { i64, ptr } %t100, 0
  %t105 = extractvalue { i64, ptr } %t100, 1
  %t106 = mul i64 %t104, 1
  %t107 = call ptr @__olang_scope_alloc(ptr %t103, i64 %t106)
  call void @llvm.memcpy.p0.p0.i64(ptr %t107, ptr %t105, i64 %t106, i1 false)
  %t108 = insertvalue { i64, ptr } undef, i64 %t104, 0
  %t109 = insertvalue { i64, ptr } %t108, ptr %t107, 1
  %t110 = load i32, ptr %l3, !range !{i32 0, i32 906}
  %t111 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t112 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t114 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, ptr %v3, ptr %v3, i32 %t110, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d892, i32 0, i32 1) }, { i64, ptr } %t111, { i64, ptr } %t112, { i64, ptr } %t109)
  store %"compiler/diagmsg:Msg" %t114, ptr %l21
  br label %bb7
bb7:
  %t115 = load %"compiler/diagmsg:Msg", ptr %l21
  store %"compiler/diagmsg:Msg" %t115, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownChar(ptr %v0, i8 %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l5 = alloca { i64, ptr }
  %l8 = alloca %"compiler/diagmsg:Msg"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store i32 61, ptr %l1
  %t1 = ptrtoint ptr %v0 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v0)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t8 = call { i64, ptr } @compiler_2fmsgs_2eEsc(ptr %s0, i8 %a0)
  store { i64, ptr } %t8, ptr %l5
  br label %bb3
bb3:
  %t9 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d893, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d893, i32 0, i32 1) }, 0
  %t11 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t11, 1
  %t13 = extractvalue { i64, ptr } %t11, 0
  %t14 = add i64 %t10, %t13
  %t15 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d894, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d894, i32 0, i32 1) }, 0
  %t17 = add i64 %t14, %t16
  %t18 = load i64, ptr %l2
  %t19 = inttoptr i64 %t18 to ptr
  %t20 = call ptr @__olang_scope_alloc(ptr %t19, i64 %t17)
  call void @olang_textcopy(ptr %t20, ptr %t9, i64 %t10)
  %t21 = getelementptr i8, ptr %t20, i64 %t10
  call void @olang_textcopy(ptr %t21, ptr %t12, i64 %t13)
  %t22 = getelementptr i8, ptr %t21, i64 %t13
  call void @olang_textcopy(ptr %t22, ptr %t15, i64 %t16)
  %t23 = insertvalue { i64, ptr } undef, i64 %t17, 0
  %t24 = insertvalue { i64, ptr } %t23, ptr %t20, 1
  %t26 = load i64, ptr %l2
  %t27 = inttoptr i64 %t26 to ptr
  %t28 = extractvalue { i64, ptr } %t24, 0
  %t29 = extractvalue { i64, ptr } %t24, 1
  %t30 = mul i64 %t28, 1
  %t31 = call ptr @__olang_scope_alloc(ptr %t27, i64 %t30)
  call void @llvm.memcpy.p0.p0.i64(ptr %t31, ptr %t29, i64 %t30, i1 false)
  %t32 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t33 = insertvalue { i64, ptr } %t32, ptr %t31, 1
  %t34 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t36 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 %t34, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d895, i32 0, i32 1) }, { i64, ptr } %t33, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t36, ptr %l8
  br label %bb4
bb4:
  call void @__olang_scope_close(ptr %s0)
  %t37 = load %"compiler/diagmsg:Msg", ptr %l8
  store %"compiler/diagmsg:Msg" %t37, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownFunction(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 125, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d896, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d896, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t7, i64 %t8)
  %t16 = getelementptr i8, ptr %t15, i64 %t8
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d897, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownImport(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 111, ptr %l2
  %t1 = ptrtoint ptr %v2 to i64
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v2)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t9 = extractvalue { i64, ptr } %a0, 1
  %t10 = extractvalue { i64, ptr } %a0, 0
  %t11 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d898, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d898, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t15 = extractvalue { i64, ptr } %a1, 1
  %t16 = extractvalue { i64, ptr } %a1, 0
  %t17 = add i64 %t13, %t16
  %t18 = load i64, ptr %l3
  %t19 = inttoptr i64 %t18 to ptr
  %t20 = call ptr @__olang_scope_alloc(ptr %t19, i64 %t17)
  call void @olang_textcopy(ptr %t20, ptr %t9, i64 %t10)
  %t21 = getelementptr i8, ptr %t20, i64 %t10
  call void @olang_textcopy(ptr %t21, ptr %t11, i64 %t12)
  %t22 = getelementptr i8, ptr %t21, i64 %t12
  call void @olang_textcopy(ptr %t22, ptr %t15, i64 %t16)
  %t23 = insertvalue { i64, ptr } undef, i64 %t17, 0
  %t24 = insertvalue { i64, ptr } %t23, ptr %t20, 1
  %t26 = load i64, ptr %l3
  %t27 = inttoptr i64 %t26 to ptr
  %t28 = extractvalue { i64, ptr } %t24, 0
  %t29 = extractvalue { i64, ptr } %t24, 1
  %t30 = mul i64 %t28, 1
  %t31 = call ptr @__olang_scope_alloc(ptr %t27, i64 %t30)
  call void @llvm.memcpy.p0.p0.i64(ptr %t31, ptr %t29, i64 %t30, i1 false)
  %t32 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t33 = insertvalue { i64, ptr } %t32, ptr %t31, 1
  %t34 = load i32, ptr %l2, !range !{i32 0, i32 906}
  %t36 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, i32 %t34, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d899, i32 0, i32 1) }, { i64, ptr } %t33, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t36, ptr %l9
  br label %bb3
bb3:
  %t37 = load %"compiler/diagmsg:Msg", ptr %l9
  store %"compiler/diagmsg:Msg" %t37, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownName(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 120, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d900, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d900, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t7, i64 %t8)
  %t16 = getelementptr i8, ptr %t15, i64 %t8
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d901, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownNameMeant(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 121, ptr %l2
  %t1 = ptrtoint ptr %v2 to i64
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v2)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d902, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d902, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d903, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d903, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d904, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d904, i32 0, i32 1) }, 0
  %t23 = add i64 %t20, %t22
  %t24 = load i64, ptr %l3
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t23)
  call void @olang_textcopy(ptr %t26, ptr %t8, i64 %t9)
  %t27 = getelementptr i8, ptr %t26, i64 %t9
  call void @olang_textcopy(ptr %t27, ptr %t11, i64 %t12)
  %t28 = getelementptr i8, ptr %t27, i64 %t12
  call void @olang_textcopy(ptr %t28, ptr %t14, i64 %t15)
  %t29 = getelementptr i8, ptr %t28, i64 %t15
  call void @olang_textcopy(ptr %t29, ptr %t18, i64 %t19)
  %t30 = getelementptr i8, ptr %t29, i64 %t19
  call void @olang_textcopy(ptr %t30, ptr %t21, i64 %t22)
  %t31 = insertvalue { i64, ptr } undef, i64 %t23, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t26, 1
  %t34 = load i64, ptr %l3
  %t35 = inttoptr i64 %t34 to ptr
  %t36 = extractvalue { i64, ptr } %t32, 0
  %t37 = extractvalue { i64, ptr } %t32, 1
  %t38 = mul i64 %t36, 1
  %t39 = call ptr @__olang_scope_alloc(ptr %t35, i64 %t38)
  call void @llvm.memcpy.p0.p0.i64(ptr %t39, ptr %t37, i64 %t38, i1 false)
  %t40 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t39, 1
  %t42 = load i32, ptr %l2, !range !{i32 0, i32 906}
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d905, i32 0, i32 1) }, { i64, ptr } %t41, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t44, ptr %l9
  br label %bb3
bb3:
  %t45 = load %"compiler/diagmsg:Msg", ptr %l9
  store %"compiler/diagmsg:Msg" %t45, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownNumberType(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 119, ptr %l2
  %t1 = ptrtoint ptr %v2 to i64
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v2)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d906, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d906, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 58, ptr getelementptr inbounds (<{ i64, [58 x i8] }>, ptr @.d907, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 58, ptr getelementptr inbounds (<{ i64, [58 x i8] }>, ptr @.d907, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d908, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d908, i32 0, i32 1) }, 0
  %t23 = add i64 %t20, %t22
  %t24 = load i64, ptr %l3
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t23)
  call void @olang_textcopy(ptr %t26, ptr %t8, i64 %t9)
  %t27 = getelementptr i8, ptr %t26, i64 %t9
  call void @olang_textcopy(ptr %t27, ptr %t11, i64 %t12)
  %t28 = getelementptr i8, ptr %t27, i64 %t12
  call void @olang_textcopy(ptr %t28, ptr %t14, i64 %t15)
  %t29 = getelementptr i8, ptr %t28, i64 %t15
  call void @olang_textcopy(ptr %t29, ptr %t18, i64 %t19)
  %t30 = getelementptr i8, ptr %t29, i64 %t19
  call void @olang_textcopy(ptr %t30, ptr %t21, i64 %t22)
  %t31 = insertvalue { i64, ptr } undef, i64 %t23, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t26, 1
  %t34 = load i64, ptr %l3
  %t35 = inttoptr i64 %t34 to ptr
  %t36 = extractvalue { i64, ptr } %t32, 0
  %t37 = extractvalue { i64, ptr } %t32, 1
  %t38 = mul i64 %t36, 1
  %t39 = call ptr @__olang_scope_alloc(ptr %t35, i64 %t38)
  call void @llvm.memcpy.p0.p0.i64(ptr %t39, ptr %t37, i64 %t38, i1 false)
  %t40 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t39, 1
  %t42 = load i32, ptr %l2, !range !{i32 0, i32 906}
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d909, i32 0, i32 1) }, { i64, ptr } %t41, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t44, ptr %l9
  br label %bb3
bb3:
  %t45 = load %"compiler/diagmsg:Msg", ptr %l9
  store %"compiler/diagmsg:Msg" %t45, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownTypeMeant(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 118, ptr %l2
  %t1 = ptrtoint ptr %v2 to i64
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v2)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d910, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d910, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d911, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d911, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d912, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d912, i32 0, i32 1) }, 0
  %t23 = add i64 %t20, %t22
  %t24 = load i64, ptr %l3
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t23)
  call void @olang_textcopy(ptr %t26, ptr %t8, i64 %t9)
  %t27 = getelementptr i8, ptr %t26, i64 %t9
  call void @olang_textcopy(ptr %t27, ptr %t11, i64 %t12)
  %t28 = getelementptr i8, ptr %t27, i64 %t12
  call void @olang_textcopy(ptr %t28, ptr %t14, i64 %t15)
  %t29 = getelementptr i8, ptr %t28, i64 %t15
  call void @olang_textcopy(ptr %t29, ptr %t18, i64 %t19)
  %t30 = getelementptr i8, ptr %t29, i64 %t19
  call void @olang_textcopy(ptr %t30, ptr %t21, i64 %t22)
  %t31 = insertvalue { i64, ptr } undef, i64 %t23, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t26, 1
  %t34 = load i64, ptr %l3
  %t35 = inttoptr i64 %t34 to ptr
  %t36 = extractvalue { i64, ptr } %t32, 0
  %t37 = extractvalue { i64, ptr } %t32, 1
  %t38 = mul i64 %t36, 1
  %t39 = call ptr @__olang_scope_alloc(ptr %t35, i64 %t38)
  call void @llvm.memcpy.p0.p0.i64(ptr %t39, ptr %t37, i64 %t38, i1 false)
  %t40 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t39, 1
  %t42 = load i32, ptr %l2, !range !{i32 0, i32 906}
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d913, i32 0, i32 1) }, { i64, ptr } %t41, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t44, ptr %l9
  br label %bb3
bb3:
  %t45 = load %"compiler/diagmsg:Msg", ptr %l9
  store %"compiler/diagmsg:Msg" %t45, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eValueBeyondType(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3) #0 {
entry:
  %l4 = alloca i32
  %l5 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l21 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 689, ptr %l4
  %t1 = ptrtoint ptr %v4 to i64
  store i64 %t1, ptr %l5, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v4)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  %t9 = extractvalue { i64, ptr } %a0, 1
  %t10 = extractvalue { i64, ptr } %a0, 0
  %t11 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d914, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d914, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t15 = extractvalue { i64, ptr } %a1, 1
  %t16 = extractvalue { i64, ptr } %a1, 0
  %t17 = add i64 %t13, %t16
  %t18 = load i64, ptr %l5
  %t19 = inttoptr i64 %t18 to ptr
  %t20 = call ptr @__olang_scope_alloc(ptr %t19, i64 %t17)
  call void @olang_textcopy(ptr %t20, ptr %t9, i64 %t10)
  %t21 = getelementptr i8, ptr %t20, i64 %t10
  call void @olang_textcopy(ptr %t21, ptr %t11, i64 %t12)
  %t22 = getelementptr i8, ptr %t21, i64 %t12
  call void @olang_textcopy(ptr %t22, ptr %t15, i64 %t16)
  %t23 = insertvalue { i64, ptr } undef, i64 %t17, 0
  %t24 = insertvalue { i64, ptr } %t23, ptr %t20, 1
  %t26 = load i64, ptr %l5
  %t27 = inttoptr i64 %t26 to ptr
  %t28 = extractvalue { i64, ptr } %t24, 0
  %t29 = extractvalue { i64, ptr } %t24, 1
  %t30 = mul i64 %t28, 1
  %t31 = call ptr @__olang_scope_alloc(ptr %t27, i64 %t30)
  call void @llvm.memcpy.p0.p0.i64(ptr %t31, ptr %t29, i64 %t30, i1 false)
  %t32 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t33 = insertvalue { i64, ptr } %t32, ptr %t31, 1
  store { i64, ptr } %t33, ptr %l10, !tbaa !27
  %t34 = ptrtoint ptr %v4 to i64
  store i64 %t34, ptr %l11, !tbaa !24
  %t35 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e3
  br i1 %t35, label %bb3, label %bb4
bb3:
  %t37 = call ptr @__olang_region_make(ptr %v4)
  %t38 = ptrtoint ptr %t37 to i64
  store i64 %t38, ptr %l11, !tbaa !24
  br label %bb4
bb4:
  %t40 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d915, i32 0, i32 1) }, 1
  %t41 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d915, i32 0, i32 1) }, 0
  %t43 = extractvalue { i64, ptr } %a2, 1
  %t44 = extractvalue { i64, ptr } %a2, 0
  %t45 = add i64 %t41, %t44
  %t46 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d916, i32 0, i32 1) }, 1
  %t47 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d916, i32 0, i32 1) }, 0
  %t48 = add i64 %t45, %t47
  %t49 = load i64, ptr %l11
  %t50 = inttoptr i64 %t49 to ptr
  %t51 = call ptr @__olang_scope_alloc(ptr %t50, i64 %t48)
  call void @olang_textcopy(ptr %t51, ptr %t40, i64 %t41)
  %t52 = getelementptr i8, ptr %t51, i64 %t41
  call void @olang_textcopy(ptr %t52, ptr %t43, i64 %t44)
  %t53 = getelementptr i8, ptr %t52, i64 %t44
  call void @olang_textcopy(ptr %t53, ptr %t46, i64 %t47)
  %t54 = insertvalue { i64, ptr } undef, i64 %t48, 0
  %t55 = insertvalue { i64, ptr } %t54, ptr %t51, 1
  %t57 = load i64, ptr %l11
  %t58 = inttoptr i64 %t57 to ptr
  %t59 = extractvalue { i64, ptr } %t55, 0
  %t60 = extractvalue { i64, ptr } %t55, 1
  %t61 = mul i64 %t59, 1
  %t62 = call ptr @__olang_scope_alloc(ptr %t58, i64 %t61)
  call void @llvm.memcpy.p0.p0.i64(ptr %t62, ptr %t60, i64 %t61, i1 false)
  %t63 = insertvalue { i64, ptr } undef, i64 %t59, 0
  %t64 = insertvalue { i64, ptr } %t63, ptr %t62, 1
  store { i64, ptr } %t64, ptr %l15, !tbaa !27
  %t65 = ptrtoint ptr %v4 to i64
  store i64 %t65, ptr %l16, !tbaa !24
  %t66 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e4
  br i1 %t66, label %bb5, label %bb6
bb5:
  %t68 = call ptr @__olang_region_make(ptr %v4)
  %t69 = ptrtoint ptr %t68 to i64
  store i64 %t69, ptr %l16, !tbaa !24
  br label %bb6
bb6:
  %t71 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d917, i32 0, i32 1) }, 1
  %t72 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d917, i32 0, i32 1) }, 0
  %t74 = extractvalue { i64, ptr } %a3, 1
  %t75 = extractvalue { i64, ptr } %a3, 0
  %t76 = add i64 %t72, %t75
  %t77 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d918, i32 0, i32 1) }, 1
  %t78 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d918, i32 0, i32 1) }, 0
  %t79 = add i64 %t76, %t78
  %t80 = load i64, ptr %l16
  %t81 = inttoptr i64 %t80 to ptr
  %t82 = call ptr @__olang_scope_alloc(ptr %t81, i64 %t79)
  call void @olang_textcopy(ptr %t82, ptr %t71, i64 %t72)
  %t83 = getelementptr i8, ptr %t82, i64 %t72
  call void @olang_textcopy(ptr %t83, ptr %t74, i64 %t75)
  %t84 = getelementptr i8, ptr %t83, i64 %t75
  call void @olang_textcopy(ptr %t84, ptr %t77, i64 %t78)
  %t85 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t86 = insertvalue { i64, ptr } %t85, ptr %t82, 1
  %t88 = load i64, ptr %l16
  %t89 = inttoptr i64 %t88 to ptr
  %t90 = extractvalue { i64, ptr } %t86, 0
  %t91 = extractvalue { i64, ptr } %t86, 1
  %t92 = mul i64 %t90, 1
  %t93 = call ptr @__olang_scope_alloc(ptr %t89, i64 %t92)
  call void @llvm.memcpy.p0.p0.i64(ptr %t93, ptr %t91, i64 %t92, i1 false)
  %t94 = insertvalue { i64, ptr } undef, i64 %t90, 0
  %t95 = insertvalue { i64, ptr } %t94, ptr %t93, 1
  %t96 = load i32, ptr %l4, !range !{i32 0, i32 906}
  %t97 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t98 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t100 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v4, ptr %v4, ptr %v4, ptr %v4, ptr %v4, i32 %t96, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d919, i32 0, i32 1) }, { i64, ptr } %t97, { i64, ptr } %t98, { i64, ptr } %t95)
  store %"compiler/diagmsg:Msg" %t100, ptr %l21
  br label %bb7
bb7:
  %t101 = load %"compiler/diagmsg:Msg", ptr %l21
  store %"compiler/diagmsg:Msg" %t101, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eVarArgType(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 221, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } %a0, 1
  %t9 = extractvalue { i64, ptr } %a0, 0
  %t10 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d920, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d920, i32 0, i32 1) }, 0
  %t12 = add i64 %t9, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t8, i64 %t9)
  %t16 = getelementptr i8, ptr %t15, i64 %t9
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d921, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d922, i32 0, i32 1) }, { i64, ptr } { i64 81, ptr getelementptr inbounds (<{ i64, [81 x i8] }>, ptr @.d923, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eVarIsPrivate(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 334, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } %a0, 1
  %t9 = extractvalue { i64, ptr } %a0, 0
  %t10 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d924, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d924, i32 0, i32 1) }, 0
  %t12 = add i64 %t9, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t8, i64 %t9)
  %t16 = getelementptr i8, ptr %t15, i64 %t9
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d925, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eVarListCount(ptr %v0, i64 %a0, i64 %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 90, ptr %l2
  %t1 = ptrtoint ptr %v0 to i64
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v0)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t9 = call i64 @__olang_fmt_i64(ptr null, i64 %a0)
  %t10 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d926, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d926, i32 0, i32 1) }, 0
  %t12 = add i64 %t9, %t11
  %t14 = call i64 @__olang_fmt_i64(ptr null, i64 %a1)
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l3
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  %t19 = call i64 @__olang_fmt_i64(ptr %t18, i64 %a0)
  %t20 = getelementptr i8, ptr %t18, i64 %t9
  call void @olang_textcopy(ptr %t20, ptr %t10, i64 %t11)
  %t21 = getelementptr i8, ptr %t20, i64 %t11
  %t22 = call i64 @__olang_fmt_i64(ptr %t21, i64 %a1)
  %t23 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t24 = insertvalue { i64, ptr } %t23, ptr %t18, 1
  %t26 = load i64, ptr %l3
  %t27 = inttoptr i64 %t26 to ptr
  %t28 = extractvalue { i64, ptr } %t24, 0
  %t29 = extractvalue { i64, ptr } %t24, 1
  %t30 = mul i64 %t28, 1
  %t31 = call ptr @__olang_scope_alloc(ptr %t27, i64 %t30)
  call void @llvm.memcpy.p0.p0.i64(ptr %t31, ptr %t29, i64 %t30, i1 false)
  %t32 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t33 = insertvalue { i64, ptr } %t32, ptr %t31, 1
  %t34 = load i32, ptr %l2, !range !{i32 0, i32 906}
  %t36 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 %t34, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d927, i32 0, i32 1) }, { i64, ptr } %t33, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t36, ptr %l9
  br label %bb3
bb3:
  %t37 = load %"compiler/diagmsg:Msg", ptr %l9
  store %"compiler/diagmsg:Msg" %t37, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eVariadicHere(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 502, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d928, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d928, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = load i64, ptr %l2
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t7, i64 %t8)
  %t16 = getelementptr i8, ptr %t15, i64 %t8
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d929, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t30, ptr %l7
  br label %bb3
bb3:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eVariadicNotLast(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 501, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d930, i32 0, i32 1) }, { i64, ptr } { i64 55, ptr getelementptr inbounds (<{ i64, [55 x i8] }>, ptr @.d931, i32 0, i32 1) }, { i64, ptr } { i64 82, ptr getelementptr inbounds (<{ i64, [82 x i8] }>, ptr @.d932, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eVecGrowsUnderTask(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 743, ptr %l2
  %t1 = ptrtoint ptr %v2 to i64
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v2)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d933, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d933, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 64, ptr getelementptr inbounds (<{ i64, [64 x i8] }>, ptr @.d934, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 64, ptr getelementptr inbounds (<{ i64, [64 x i8] }>, ptr @.d934, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = load i64, ptr %l3
  %t22 = inttoptr i64 %t21 to ptr
  %t23 = call ptr @__olang_scope_alloc(ptr %t22, i64 %t20)
  call void @olang_textcopy(ptr %t23, ptr %t8, i64 %t9)
  %t24 = getelementptr i8, ptr %t23, i64 %t9
  call void @olang_textcopy(ptr %t24, ptr %t11, i64 %t12)
  %t25 = getelementptr i8, ptr %t24, i64 %t12
  call void @olang_textcopy(ptr %t25, ptr %t14, i64 %t15)
  %t26 = getelementptr i8, ptr %t25, i64 %t15
  call void @olang_textcopy(ptr %t26, ptr %t18, i64 %t19)
  %t27 = insertvalue { i64, ptr } undef, i64 %t20, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t23, 1
  %t30 = load i64, ptr %l3
  %t31 = inttoptr i64 %t30 to ptr
  %t32 = extractvalue { i64, ptr } %t28, 0
  %t33 = extractvalue { i64, ptr } %t28, 1
  %t34 = mul i64 %t32, 1
  %t35 = call ptr @__olang_scope_alloc(ptr %t31, i64 %t34)
  call void @llvm.memcpy.p0.p0.i64(ptr %t35, ptr %t33, i64 %t34, i1 false)
  %t36 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t35, 1
  %t38 = load i32, ptr %l2, !range !{i32 0, i32 906}
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, i32 %t38, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d935, i32 0, i32 1) }, { i64, ptr } %t37, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t40, ptr %l9
  br label %bb3
bb3:
  %t41 = load %"compiler/diagmsg:Msg", ptr %l9
  store %"compiler/diagmsg:Msg" %t41, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eViewKeptCopy(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 628, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d936, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d936, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d937, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d937, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l2
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  call void @olang_textcopy(ptr %t18, ptr %t7, i64 %t8)
  %t19 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t18, 1
  %t24 = load i64, ptr %l2
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d938, i32 0, i32 1) }, { i64, ptr } %t31, { i64, ptr } { i64 49, ptr getelementptr inbounds (<{ i64, [49 x i8] }>, ptr @.d939, i32 0, i32 1) }, { i64, ptr } { i64 48, ptr getelementptr inbounds (<{ i64, [48 x i8] }>, ptr @.d940, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t34, ptr %l7
  br label %bb3
bb3:
  %t35 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t35, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eViewReturned(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 627, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d941, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d941, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d942, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d942, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l2
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  call void @olang_textcopy(ptr %t18, ptr %t7, i64 %t8)
  %t19 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t18, 1
  %t24 = load i64, ptr %l2
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d943, i32 0, i32 1) }, { i64, ptr } %t31, { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d944, i32 0, i32 1) }, { i64, ptr } { i64 74, ptr getelementptr inbounds (<{ i64, [74 x i8] }>, ptr @.d945, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t34, ptr %l7
  br label %bb3
bb3:
  %t35 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t35, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eWeakTarget(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 285, ptr %l2
  %t1 = ptrtoint ptr %v2 to i64
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v2)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } { i64 48, ptr getelementptr inbounds (<{ i64, [48 x i8] }>, ptr @.d946, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 48, ptr getelementptr inbounds (<{ i64, [48 x i8] }>, ptr @.d946, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d947, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d947, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = load i64, ptr %l3
  %t22 = inttoptr i64 %t21 to ptr
  %t23 = call ptr @__olang_scope_alloc(ptr %t22, i64 %t20)
  call void @olang_textcopy(ptr %t23, ptr %t8, i64 %t9)
  %t24 = getelementptr i8, ptr %t23, i64 %t9
  call void @olang_textcopy(ptr %t24, ptr %t11, i64 %t12)
  %t25 = getelementptr i8, ptr %t24, i64 %t12
  call void @olang_textcopy(ptr %t25, ptr %t14, i64 %t15)
  %t26 = getelementptr i8, ptr %t25, i64 %t15
  call void @olang_textcopy(ptr %t26, ptr %t18, i64 %t19)
  %t27 = insertvalue { i64, ptr } undef, i64 %t20, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t23, 1
  %t30 = load i64, ptr %l3
  %t31 = inttoptr i64 %t30 to ptr
  %t32 = extractvalue { i64, ptr } %t28, 0
  %t33 = extractvalue { i64, ptr } %t28, 1
  %t34 = mul i64 %t32, 1
  %t35 = call ptr @__olang_scope_alloc(ptr %t31, i64 %t34)
  call void @llvm.memcpy.p0.p0.i64(ptr %t35, ptr %t33, i64 %t34, i1 false)
  %t36 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t35, 1
  %t38 = load i32, ptr %l2, !range !{i32 0, i32 906}
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, i32 %t38, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d948, i32 0, i32 1) }, { i64, ptr } %t37, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d949, i32 0, i32 1) }, { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d950, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t40, ptr %l9
  br label %bb3
bb3:
  %t41 = load %"compiler/diagmsg:Msg", ptr %l9
  store %"compiler/diagmsg:Msg" %t41, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eWriteThroughAtNoSetat(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 531, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d951, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d951, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d952, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d952, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l2
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  call void @olang_textcopy(ptr %t18, ptr %t7, i64 %t8)
  %t19 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t18, 1
  %t24 = load i64, ptr %l2
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 906}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d953, i32 0, i32 1) }, { i64, ptr } %t31, { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d954, i32 0, i32 1) }, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d955, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t34, ptr %l7
  br label %bb3
bb3:
  %t35 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t35, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eYieldInDefer(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 635, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d956, i32 0, i32 1) }, { i64, ptr } { i64 61, ptr getelementptr inbounds (<{ i64, [61 x i8] }>, ptr @.d957, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eYieldOwnStorage(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 639, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d958, i32 0, i32 1) }, { i64, ptr } { i64 48, ptr getelementptr inbounds (<{ i64, [48 x i8] }>, ptr @.d959, i32 0, i32 1) }, { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d960, i32 0, i32 1) }, { i64, ptr } { i64 59, ptr getelementptr inbounds (<{ i64, [59 x i8] }>, ptr @.d961, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t2, ptr %l1
  br label %bb1
bb1:
  %t3 = load %"compiler/diagmsg:Msg", ptr %l1
  store %"compiler/diagmsg:Msg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local void @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eOfferBuilder(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i1
  %l8 = alloca i1
  %l9 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i32
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca i64
  %l21 = alloca { i64, ptr }
  %l23 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l35 = alloca i1
  %l42 = alloca i1
  %l46 = alloca i64
  %l50 = alloca i64
  %l51 = alloca i32
  %l58 = alloca i1
  %l60 = alloca { i64, ptr }
  %l64 = alloca i1
  %l65 = alloca i1
  %l67 = alloca { i64, ptr }
  %l71 = alloca i1
  %l77 = alloca i1
  %l79 = alloca { i64, ptr }
  %l82 = alloca i1
  %l85 = alloca i1
  %l88 = alloca i1
  %l90 = alloca { i64, ptr }
  %l91 = alloca i64
  %l92 = alloca i64
  %l96 = alloca { i64, ptr }
  %l98 = alloca { i64, ptr }
  %l99 = alloca i64
  %l103 = alloca i64
  %l104 = alloca i64
  %l112 = alloca i1
  %l114 = alloca ptr
  %l116 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t4 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v1, { i64, ptr } %t1, i8 46)
  %t5 = extractvalue { i32, i64 } %t4, 1
  %t6 = extractvalue { i32, i64 } %t4, 0
  store i32 %t6, ptr %l13
  %t7 = icmp ne i32 %t6, 0
  br i1 %t7, label %bb2, label %ok.8, !prof !99
ok.8:
  store i64 %t5, ptr %l12
  br label %bb1
bb1:
  %t9 = load i64, ptr %l12, !tbaa !24
  store i64 %t9, ptr %l9, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb4:
  %t10 = load i64, ptr %l9, !tbaa !24
  store i64 %t10, ptr %l2, !tbaa !24
  %t11 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t11, ptr %l14, !tbaa !27
  %t12 = load i64, ptr %l2, !tbaa !24
  store i64 %t12, ptr %l15, !tbaa !24
  %t13 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t13, 0
  store i64 %t14, ptr %l16, !tbaa !24
  %t15 = icmp sge i64 0, 0
  br i1 %t15, label %bb5, label %bb6
bb5:
  %t17 = load i64, ptr %l15, !tbaa !24
  %t18 = icmp sle i64 0, %t17
  br i1 %t18, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_af0cd4b2e246af5e_f7dc695b2384058a)
  unreachable
bb7:
  %t20 = load i64, ptr %l15, !tbaa !24
  %t21 = load i64, ptr %l16, !tbaa !24
  %t22 = icmp sle i64 %t20, %t21
  br i1 %t22, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_af0cd4b2e246af5e_f7dc695b2384058a)
  unreachable
bb9:
  %t24 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = load i64, ptr %l15, !tbaa !24
  %t27 = getelementptr i8, ptr %t25, i64 0
  %t28 = sub i64 %t26, 0
  %t29 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t30 = insertvalue { i64, ptr } %t29, ptr %t27, 1
  store { i64, ptr } %t30, ptr %l3, !tbaa !27
  %t32 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t32, ptr %l21, !tbaa !27
  %t33 = load i64, ptr %l2, !tbaa !24
  %t35 = add i64 %t33, 1
  store i64 %t35, ptr %l23, !tbaa !24
  %t36 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t36, 0
  store i64 %t39, ptr %l26, !tbaa !24
  %t40 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t40, 0
  store i64 %t41, ptr %l27, !tbaa !24
  %t42 = load i64, ptr %l23, !tbaa !24
  %t43 = icmp sge i64 %t42, 0
  br i1 %t43, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_af0cd4b2e246af5e_f7dc695b2384058a)
  unreachable
bb11:
  %t45 = load i64, ptr %l23, !tbaa !24
  %t46 = load i64, ptr %l26, !tbaa !24
  %t47 = icmp sle i64 %t45, %t46
  br i1 %t47, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_afe78659650a85b_d80bf1f42ea79867)
  unreachable
bb13:
  %t49 = load i64, ptr %l26, !tbaa !24
  %t50 = load i64, ptr %l27, !tbaa !24
  %t51 = icmp sle i64 %t49, %t50
  br i1 %t51, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_afe78659650a85b_d80bf1f42ea79867)
  unreachable
bb15:
  %t53 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !27
  %t55 = load i64, ptr %l23, !tbaa !24
  %t56 = load i64, ptr %l26, !tbaa !24
  %t57 = getelementptr i8, ptr %t54, i64 %t55
  %t58 = sub i64 %t56, %t55
  %t59 = insertvalue { i64, ptr } undef, i64 %t58, 0
  %t60 = insertvalue { i64, ptr } %t59, ptr %t57, 1
  store { i64, ptr } %t60, ptr %l4, !tbaa !27
  %t62 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t64 = extractvalue { i64, ptr } %t62, 0
  %t66 = icmp eq i64 %t64, 0
  br i1 %t66, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_afe78659650a85b_d80bf1f42ea79867)
  unreachable
bb17:
  store i1 true, ptr %l35, !tbaa !21
  br label %bb19
bb18:
  %t68 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t70 = extractvalue { i64, ptr } %t68, 0
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/msgs:Nearest", ptr %t71, i32 0, i32 0
  %t74 = load { i64, ptr }, ptr %t73, !tbaa !27
  %t76 = extractvalue { i64, ptr } %t74, 0
  %t79 = icmp sge i64 %t70, %t76
  store i1 %t79, ptr %l35, !tbaa !21
  br label %bb19
bb19:
  %t81 = load i1, ptr %l35, !tbaa !21
  br i1 %t81, label %bb20, label %bb21
bb20:
  store i1 true, ptr %l42, !tbaa !21
  br label %bb22
bb21:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/msgs:Nearest", ptr %t82, i32 0, i32 2
  %t85 = load i64, ptr %t84, !tbaa !24
  %t87 = icmp eq i64 %t85, 0
  store i1 %t87, ptr %l42, !tbaa !21
  br label %bb22
bb22:
  %t89 = load i1, ptr %l42, !tbaa !21
  br i1 %t89, label %bb23, label %bb24
bb23:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb24:
  br label %bb25
bb25:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/msgs:Nearest", ptr %t90, i32 0, i32 0
  %t93 = load { i64, ptr }, ptr %t92, !tbaa !27
  %t94 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t97 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v1, { i64, ptr } %t93, { i64, ptr } %t94)
  %t98 = extractvalue { i32, i64 } %t97, 1
  %t99 = extractvalue { i32, i64 } %t97, 0
  store i32 %t99, ptr %l51
  %t100 = icmp ne i32 %t99, 0
  br i1 %t100, label %bb27, label %ok.101, !prof !99
ok.101:
  store i64 %t98, ptr %l50
  br label %bb26
bb26:
  %t102 = load i64, ptr %l50, !tbaa !24
  store i64 %t102, ptr %l46, !tbaa !24
  br label %bb29
bb27:
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb29:
  %t103 = load i64, ptr %l46, !tbaa !24
  store i64 %t103, ptr %l5, !tbaa !24
  %t104 = load i64, ptr %l5, !tbaa !24
  %t105 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t107 = extractvalue { i64, ptr } %t105, 0
  %t110 = add i64 %t104, %t107
  store i64 %t110, ptr %l6, !tbaa !24
  %t112 = load i64, ptr %l5, !tbaa !24
  %t114 = icmp eq i64 %t112, 0
  br i1 %t114, label %bb30, label %bb31
bb30:
  store i1 true, ptr %l58, !tbaa !21
  br label %bb33
bb31:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t118 = getelementptr %"compiler/msgs:Nearest", ptr %t116, i32 0, i32 0
  %t119 = load { i64, ptr }, ptr %t118, !tbaa !27
  store { i64, ptr } %t119, ptr %l60, !tbaa !27
  %t120 = load i64, ptr %l5, !tbaa !24
  %t122 = sub i64 %t120, 1
  %t124 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t125 = load ptr, ptr %t124, !tbaa !27
  %t126 = getelementptr i8, ptr %t125, i64 %t122
  %t127 = load i8, ptr %t126, !tbaa !32
  %t129 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLower(i8 %t127)
  store i1 %t129, ptr %l64
  br label %bb32
bb32:
  %t130 = load i1, ptr %l64, !tbaa !21
  store i1 %t130, ptr %l58, !tbaa !21
  br label %bb33
bb33:
  %t131 = load i1, ptr %l58, !tbaa !21
  br i1 %t131, label %bb34, label %bb35
bb34:
  store i1 true, ptr %l65, !tbaa !21
  br label %bb37
bb35:
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t134 = getelementptr %"compiler/msgs:Nearest", ptr %t132, i32 0, i32 0
  %t135 = load { i64, ptr }, ptr %t134, !tbaa !27
  store { i64, ptr } %t135, ptr %l67, !tbaa !27
  %t136 = load i64, ptr %l5, !tbaa !24
  %t138 = sub i64 %t136, 1
  %t140 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t141 = load ptr, ptr %t140, !tbaa !27
  %t142 = getelementptr i8, ptr %t141, i64 %t138
  %t143 = load i8, ptr %t142, !tbaa !32
  %t145 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t143)
  store i1 %t145, ptr %l71
  br label %bb36
bb36:
  %t146 = load i1, ptr %l71, !tbaa !21
  store i1 %t146, ptr %l65, !tbaa !21
  br label %bb37
bb37:
  %t147 = load i1, ptr %l65, !tbaa !21
  store i1 %t147, ptr %l7, !tbaa !21
  %t148 = load i64, ptr %l6, !tbaa !24
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t151 = getelementptr %"compiler/msgs:Nearest", ptr %t149, i32 0, i32 0
  %t152 = load { i64, ptr }, ptr %t151, !tbaa !27
  %t154 = extractvalue { i64, ptr } %t152, 0
  %t157 = icmp eq i64 %t148, %t154
  br i1 %t157, label %bb38, label %bb39
bb38:
  store i1 true, ptr %l77, !tbaa !21
  br label %bb41
bb39:
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t161 = getelementptr %"compiler/msgs:Nearest", ptr %t159, i32 0, i32 0
  %t162 = load { i64, ptr }, ptr %t161, !tbaa !27
  store { i64, ptr } %t162, ptr %l79, !tbaa !27
  %t163 = load i64, ptr %l6, !tbaa !24
  %t165 = getelementptr { i64, ptr }, ptr %l79, i32 0, i32 1
  %t166 = load ptr, ptr %t165, !tbaa !27
  %t167 = getelementptr i8, ptr %t166, i64 %t163
  %t168 = load i8, ptr %t167, !tbaa !32
  %t170 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %t168)
  store i1 %t170, ptr %l82
  br label %bb40
bb40:
  %t171 = load i1, ptr %l82, !tbaa !21
  store i1 %t171, ptr %l77, !tbaa !21
  br label %bb41
bb41:
  %t172 = load i1, ptr %l77, !tbaa !21
  store i1 %t172, ptr %l8, !tbaa !21
  %t173 = load i1, ptr %l7, !tbaa !21
  %t175 = xor i1 %t173, true
  br i1 %t175, label %bb42, label %bb43
bb42:
  store i1 true, ptr %l85, !tbaa !21
  br label %bb44
bb43:
  %t177 = load i1, ptr %l8, !tbaa !21
  %t179 = xor i1 %t177, true
  store i1 %t179, ptr %l85, !tbaa !21
  br label %bb44
bb44:
  %t181 = load i1, ptr %l85, !tbaa !21
  br i1 %t181, label %bb45, label %bb46
bb45:
  store i1 true, ptr %l88, !tbaa !21
  br label %bb60
bb46:
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t184 = getelementptr %"compiler/msgs:Nearest", ptr %t182, i32 0, i32 0
  %t185 = load { i64, ptr }, ptr %t184, !tbaa !27
  store { i64, ptr } %t185, ptr %l90, !tbaa !27
  %t186 = load i64, ptr %l5, !tbaa !24
  store i64 %t186, ptr %l91, !tbaa !24
  %t187 = load { i64, ptr }, ptr %l90, !tbaa !27
  %t188 = extractvalue { i64, ptr } %t187, 0
  store i64 %t188, ptr %l92, !tbaa !24
  %t189 = icmp sge i64 0, 0
  br i1 %t189, label %bb47, label %bb48
bb47:
  %t191 = load i64, ptr %l91, !tbaa !24
  %t192 = icmp sle i64 0, %t191
  br i1 %t192, label %bb49, label %bb50
bb48:
  call void @__olang_check_failed(ptr @olang_loc_94d222cfeceaa960_f4d92a1033be80bc)
  unreachable
bb49:
  %t194 = load i64, ptr %l91, !tbaa !24
  %t195 = load i64, ptr %l92, !tbaa !24
  %t196 = icmp sle i64 %t194, %t195
  br i1 %t196, label %bb51, label %bb52
bb50:
  call void @__olang_check_failed(ptr @olang_loc_94d222cfeceaa960_f4d92a1033be80bc)
  unreachable
bb51:
  %t198 = getelementptr { i64, ptr }, ptr %l90, i32 0, i32 1
  %t199 = load ptr, ptr %t198, !tbaa !27
  %t200 = load i64, ptr %l91, !tbaa !24
  %t201 = getelementptr i8, ptr %t199, i64 0
  %t202 = sub i64 %t200, 0
  %t203 = insertvalue { i64, ptr } undef, i64 %t202, 0
  %t204 = insertvalue { i64, ptr } %t203, ptr %t201, 1
  store { i64, ptr } %t204, ptr %l96, !tbaa !27
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t207 = getelementptr %"compiler/msgs:Nearest", ptr %t205, i32 0, i32 0
  %t208 = load { i64, ptr }, ptr %t207, !tbaa !27
  store { i64, ptr } %t208, ptr %l98, !tbaa !27
  %t209 = load i64, ptr %l6, !tbaa !24
  store i64 %t209, ptr %l99, !tbaa !24
  %t210 = load ptr, ptr %l0, !tbaa !29
  %t212 = getelementptr %"compiler/msgs:Nearest", ptr %t210, i32 0, i32 0
  %t213 = load { i64, ptr }, ptr %t212, !tbaa !27
  %t216 = extractvalue { i64, ptr } %t213, 0
  store i64 %t216, ptr %l103, !tbaa !24
  %t217 = load { i64, ptr }, ptr %l98, !tbaa !27
  %t218 = extractvalue { i64, ptr } %t217, 0
  store i64 %t218, ptr %l104, !tbaa !24
  %t219 = load i64, ptr %l99, !tbaa !24
  %t220 = icmp sge i64 %t219, 0
  br i1 %t220, label %bb53, label %bb54
bb52:
  call void @__olang_check_failed(ptr @olang_loc_94d222cfeceaa960_f4d92a1033be80bc)
  unreachable
bb53:
  %t222 = load i64, ptr %l99, !tbaa !24
  %t223 = load i64, ptr %l103, !tbaa !24
  %t224 = icmp sle i64 %t222, %t223
  br i1 %t224, label %bb55, label %bb56
bb54:
  call void @__olang_check_failed(ptr @olang_loc_94d222cfeceaa960_f4d92a1033be80bc)
  unreachable
bb55:
  %t226 = load i64, ptr %l103, !tbaa !24
  %t227 = load i64, ptr %l104, !tbaa !24
  %t228 = icmp sle i64 %t226, %t227
  br i1 %t228, label %bb57, label %bb58
bb56:
  call void @__olang_check_failed(ptr @olang_loc_94d222cfeceaa960_f4d92a1033be80bc)
  unreachable
bb57:
  %t230 = getelementptr { i64, ptr }, ptr %l98, i32 0, i32 1
  %t231 = load ptr, ptr %t230, !tbaa !27
  %t232 = load i64, ptr %l99, !tbaa !24
  %t233 = load i64, ptr %l103, !tbaa !24
  %t234 = getelementptr i8, ptr %t231, i64 %t232
  %t235 = sub i64 %t233, %t232
  %t236 = insertvalue { i64, ptr } undef, i64 %t235, 0
  %t237 = insertvalue { i64, ptr } %t236, ptr %t234, 1
  %t238 = load { i64, ptr }, ptr %l96, !tbaa !27
  %t239 = extractvalue { i64, ptr } %t238, 1
  %t240 = extractvalue { i64, ptr } %t238, 0
  %t242 = extractvalue { i64, ptr } %t237, 1
  %t243 = extractvalue { i64, ptr } %t237, 0
  %t244 = add i64 %t240, %t243
  %t245 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t244)
  call void @olang_textcopy(ptr %t245, ptr %t239, i64 %t240)
  %t246 = getelementptr i8, ptr %t245, i64 %t240
  call void @olang_textcopy(ptr %t246, ptr %t242, i64 %t243)
  %t247 = insertvalue { i64, ptr } undef, i64 %t244, 0
  %t248 = insertvalue { i64, ptr } %t247, ptr %t245, 1
  %t250 = extractvalue { i64, ptr } %t248, 0
  %t251 = extractvalue { i64, ptr } %t248, 1
  %t252 = mul i64 %t250, 1
  %t253 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t252)
  call void @llvm.memcpy.p0.p0.i64(ptr %t253, ptr %t251, i64 %t252, i1 false)
  %t254 = insertvalue { i64, ptr } undef, i64 %t250, 0
  %t255 = insertvalue { i64, ptr } %t254, ptr %t253, 1
  %t256 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t259 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %v1, { i64, ptr } %t255, { i64, ptr } %t256)
  store i1 %t259, ptr %l112
  br label %bb59
bb58:
  call void @__olang_check_failed(ptr @olang_loc_94d222cfeceaa960_f4d92a1033be80bc)
  unreachable
bb59:
  %t260 = load i1, ptr %l112, !tbaa !21
  %t261 = xor i1 %t260, true
  store i1 %t261, ptr %l88, !tbaa !21
  br label %bb60
bb60:
  %t263 = load i1, ptr %l88, !tbaa !21
  br i1 %t263, label %bb61, label %bb62
bb61:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb62:
  br label %bb63
bb63:
  %t264 = load ptr, ptr %l0, !tbaa !29
  store ptr %t264, ptr %l114, !tbaa !29
  %t265 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t266 = load ptr, ptr %l114, !tbaa !29
  %t267 = getelementptr %"compiler/msgs:Nearest", ptr %t266, i32 0, i32 1
  %t268 = load { i64, ptr }, ptr %t267, !tbaa !27
  store { i64, ptr } %t268, ptr %l116, !tbaa !27
  %t270 = load ptr, ptr %l114, !tbaa !29
  %t271 = getelementptr %"compiler/msgs:Nearest", ptr %t270, i32 0, i32 1
  store { i64, ptr } %t265, ptr %t271, !tbaa !27
  %t272 = load i1, ptr @olang_2esole_2ecompiler_2fmsgs_3aNearest_2e1
  br i1 %t272, label %bb64, label %bb65
bb64:
  %t274 = load { i64, ptr }, ptr %l116
  %t275 = extractvalue { i64, ptr } %t274, 1
  call void @__olang_region_release(ptr %t275)
  store { i64, ptr } zeroinitializer, ptr %l116
  br label %bb65
bb65:
  %t276 = load ptr, ptr %l0, !tbaa !29
  %t278 = getelementptr %"compiler/msgs:Nearest", ptr %t276, i32 0, i32 2
  store i64 0, ptr %t278, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/msgs:Nearest" @compiler_2fmsgs_3aNearest_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %rv = alloca %"compiler/msgs:Nearest"
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d962, i32 0, i32 1) }, ptr %l2, !tbaa !27
  %t4 = insertvalue %"compiler/msgs:Nearest" undef, { i64, ptr } %a0, 0
  %t5 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t6 = insertvalue %"compiler/msgs:Nearest" %t4, { i64, ptr } %t5, 1
  %t8 = insertvalue %"compiler/msgs:Nearest" %t6, i64 1073741824, 2
  store %"compiler/msgs:Nearest" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/msgs:Nearest", ptr %rv
  ret %"compiler/msgs:Nearest" %rr
}

@olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d0 = private constant <{ i64, [60 x i8] }> <{ i64 0, [60 x i8] c" is matched by an earlier clause - this one is never reached" }>, align 8
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
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@.d1 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T34" }>, align 8
@.d2 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d3 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d4 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"'s " }>, align 8
@.d5 = private constant <{ i64, [34 x i8] }> <{ i64 0, [34 x i8] c" cannot be called through an 'any " }>, align 8
@.d6 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"&'" }>, align 8
@.d7 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"T32a, T22a" }>, align 8
@.d8 = private constant <{ i64, [111 x i8] }> <{ i64 0, [111 x i8] c"it ties where what it is given lives to what it keeps or gives back, which a call through an 'any' cannot check" }>, align 8
@.d9 = private constant <{ i64, [41 x i8] }> <{ i64 0, [41 x i8] c"call it directly, or through generic code" }>, align 8
@.d10 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"'s " }>, align 8
@.d11 = private constant <{ i64, [34 x i8] }> <{ i64 0, [34 x i8] c" cannot be called through an 'any " }>, align 8
@.d12 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"&'" }>, align 8
@olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e3 = weak hidden constant i1 false
@.d13 = private constant <{ i64, [37 x i8] }> <{ i64 0, [37 x i8] c"it says where its references live as " }>, align 8
@.d14 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"'s signature does not" }>, align 8
@.d15 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"T32a, T22" }>, align 8
@.d16 = private constant <{ i64, [51 x i8] }> <{ i64 0, [51 x i8] c" keeps a copy of the value it is called on, and an " }>, align 8
@.d17 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" has none" }>, align 8
@.d18 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T32" }>, align 8
@.d19 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d20 = private constant <{ i64, [34 x i8] }> <{ i64 0, [34 x i8] c"call it on the instance's own type" }>, align 8
@.d21 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c" cannot be an 'any " }>, align 8
@.d22 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"&'" }>, align 8
@.d23 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c" is closed, met by " }>, align 8
@.d24 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" alone" }>, align 8
@.d25 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"T32a, T31a" }>, align 8
@.d26 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"'s trait " }>, align 8
@.d27 = private constant <{ i64, [51 x i8] }> <{ i64 0, [51 x i8] c" is open, so its instance's type is never asked for" }>, align 8
@.d28 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T34" }>, align 8
@.d29 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d30 = private constant <{ i64, [43 x i8] }> <{ i64 0, [43 x i8] c"use its methods, or add the method it lacks" }>, align 8
@.d31 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c" cannot be an 'any " }>, align 8
@.d32 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"&': it has no method " }>, align 8
@.d33 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c" that fits" }>, align 8
@.d34 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"T32a, T31" }>, align 8
@.d35 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d36 = private constant <{ i64, [37 x i8] }> <{ i64 0, [37 x i8] c"' names no .olang file on either side" }>, align 8
@.d37 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"B21" }>, align 8
@.d38 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d39 = private constant <{ i64, [55 x i8] }> <{ i64 0, [55 x i8] c"' is neither a path nor a commit of the repository here" }>, align 8
@.d40 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"B21" }>, align 8
@.d41 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"B21" }>, align 8
@.d42 = private constant <{ i64, [33 x i8] }> <{ i64 0, [33 x i8] c"api takes two versions and a path" }>, align 8
@.d43 = private constant <{ i64, [39 x i8] }> <{ i64 0, [39 x i8] c"each version is a commit or a directory" }>, align 8
@.d44 = private constant <{ i64, [42 x i8] }> <{ i64 0, [42 x i8] c"write 'olang api HEAD~1 HEAD std/io.olang'" }>, align 8
@.d45 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"expected " }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d46 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" to " }>, align 8
@.d47 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c" arguments, found " }>, align 8
@.d48 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E14" }>, align 8
@olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e4 = weak hidden constant i1 false
@.d49 = private constant <{ i64, [33 x i8] }> <{ i64 0, [33 x i8] c"test whether it is empty: write '" }>, align 8
@.d50 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"', or '?&' where it may be null" }>, align 8
@.d51 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T2c" }>, align 8
@.d52 = private constant <{ i64, [34 x i8] }> <{ i64 0, [34 x i8] c"an array written '&' is never null" }>, align 8
@.d53 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d54 = private constant <{ i64, [61 x i8] }> <{ i64 0, [61 x i8] c" takes one index - several are passed to a type's At or SetAt" }>, align 8
@.d55 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E31" }>, align 8
@.d56 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c"a run-time-length array is stored where " }>, align 8
@.d57 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c" elements are laid out" }>, align 8
@.d58 = private constant <{ i64, [47 x i8] }> <{ i64 0, [47 x i8] c"copy them through a slice of that length, 'v[0:" }>, align 8
@.d59 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"]'" }>, align 8
@.d60 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T7d" }>, align 8
@.d61 = private constant <{ i64, [45 x i8] }> <{ i64 0, [45 x i8] c"this array's length is known only at run time" }>, align 8
@.d62 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E32" }>, align 8
@.d63 = private constant <{ i64, [45 x i8] }> <{ i64 0, [45 x i8] c"'as' fails where the value holds another case" }>, align 8
@.d64 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d65 = private constant <{ i64, [57 x i8] }> <{ i64 0, [57 x i8] c"write 'try' before it and catch CaseError, or '(x as C)!'" }>, align 8
@.d66 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"case " }>, align 8
@.d67 = private constant <{ i64, [57 x i8] }> <{ i64 0, [57 x i8] c" carries nothing for 'as' to give - test for it with '=='" }>, align 8
@.d68 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E32" }>, align 8
@.d69 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"S18c" }>, align 8
@.d70 = private constant <{ i64, [50 x i8] }> <{ i64 0, [50 x i8] c"this assertion is false, evaluated while compiling" }>, align 8
@.d71 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"an error may not leave " }>, align 8
@.d72 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c" message - catch it here" }>, align 8
@.d73 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"S17" }>, align 8
@.d74 = private constant <{ i64, [79 x i8] }> <{ i64 0, [79 x i8] c" message may not return - it is evaluated only where it is used, and gives text" }>, align 8
@.d75 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"S17" }>, align 8
@.d76 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"S18c, K1" }>, align 8
@.d77 = private constant <{ i64, [63 x i8] }> <{ i64 0, [63 x i8] c"evaluated while compiling, this assertion stops on a stale view" }>, align 8
@.d78 = private constant <{ i64, [36 x i8] }> <{ i64 0, [36 x i8] c" targets need as many values, found " }>, align 8
@.d79 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"S4c" }>, align 8
@.d80 = private constant <{ i64, [56 x i8] }> <{ i64 0, [56 x i8] c"an attribute is a value of a declared type, and this is " }>, align 8
@.d81 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"G39" }>, align 8
@.d82 = private constant <{ i64, [50 x i8] }> <{ i64 0, [50 x i8] c"a struct, an enum's case or a declared number type" }>, align 8
@.d83 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"'s Slice takes " }>, align 8
@.d84 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" axes, " }>, align 8
@.d85 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" written" }>, align 8
@.d86 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"E16f" }>, align 8
@.d87 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d88 = private constant <{ i64, [100 x i8] }> <{ i64 0, [100 x i8] c"write one item per axis ('...' for the rest is the type's to read), or declare 'Slice(axes ...Axis)'" }>, align 8
@.d89 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"S21" }>, align 8
@.d90 = private constant <{ i64, [59 x i8] }> <{ i64 0, [59 x i8] c"this 'become' argument is storage made in a scope it closes" }>, align 8
@.d91 = private constant <{ i64, [54 x i8] }> <{ i64 0, [54 x i8] c"'become' closes this function's scopes before the call" }>, align 8
@.d92 = private constant <{ i64, [73 x i8] }> <{ i64 0, [73 x i8] c"pass what the function was given, a global, or a value; or write 'return'" }>, align 8
@.d93 = private constant <{ i64, [60 x i8] }> <{ i64 0, [60 x i8] c"'become' closes this function's scopes before the call, and " }>, align 8
@.d94 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c" whose destructor would run then" }>, align 8
@.d95 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"S21" }>, align 8
@.d96 = private constant <{ i64, [47 x i8] }> <{ i64 0, [47 x i8] c"'become' would run a destructor before the call" }>, align 8
@.d97 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"write 'return' and the call" }>, align 8
@.d98 = private constant <{ i64, [50 x i8] }> <{ i64 0, [50 x i8] c"'become' leaves the function at once, so not from " }>, align 8
@.d99 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"S21" }>, align 8
@.d100 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"'become' cannot be written here" }>, align 8
@.d101 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"write 'return' and the call" }>, align 8
@.d102 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c"'become' takes a call, and this is " }>, align 8
@.d103 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"S21" }>, align 8
@.d104 = private constant <{ i64, [49 x i8] }> <{ i64 0, [49 x i8] c"a call of a function or a method declared with fn" }>, align 8
@.d105 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"write 'return' instead" }>, align 8
@.d106 = private constant <{ i64, [67 x i8] }> <{ i64 0, [67 x i8] c"'become' calls a function of this one's own signature, and this is " }>, align 8
@.d107 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"the callee is " }>, align 8
@.d108 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"S21" }>, align 8
@.d109 = private constant <{ i64, [55 x i8] }> <{ i64 0, [55 x i8] c"write 'return' and the call, or give them one signature" }>, align 8
@.d110 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"B19b" }>, align 8
@.d111 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c"-bench and -fuzz are given together" }>, align 8
@.d112 = private constant <{ i64, [84 x i8] }> <{ i64 0, [84 x i8] c"-bench measures the tests a build runs, and -fuzz runs one test on a fuzzer's inputs" }>, align 8
@.d113 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"give one" }>, align 8
@.d114 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"the block opened on line " }>, align 8
@.d115 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c" has no '}' - found " }>, align 8
@.d116 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d117 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"O17a" }>, align 8
@.d118 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c"this value is not held by reference" }>, align 8
@.d119 = private constant <{ i64, [50 x i8] }> <{ i64 0, [50 x i8] c"its references live where its own storage does not" }>, align 8
@.d120 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"use the value itself" }>, align 8
@.d121 = private constant <{ i64, [34 x i8] }> <{ i64 0, [34 x i8] c" is bound twice in one alternative" }>, align 8
@.d122 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"S13c" }>, align 8
@.d123 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"the builder " }>, align 8
@.d124 = private constant <{ i64, [48 x i8] }> <{ i64 0, [48 x i8] c" is generic, so it is no value by its name alone" }>, align 8
@.d125 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T21" }>, align 8
@.d126 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d127 = private constant <{ i64, [36 x i8] }> <{ i64 0, [36 x i8] c"call it, or pass a lambda calling it" }>, align 8
@.d128 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"'s builder " }>, align 8
@.d129 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c" is private to its module" }>, align 8
@.d130 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"M6" }>, align 8
@.d131 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"no C file at " }>, align 8
@.d132 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"X17" }>, align 8
@.d133 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d134 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"' cannot be imported" }>, align 8
@.d135 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"X17" }>, align 8
@.d136 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"the program cannot be run: " }>, align 8
@.d137 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"B3g" }>, align 8
@.d138 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"case " }>, align 8
@.d139 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c" is private to its module" }>, align 8
@.d140 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"M6a" }>, align 8
@.d141 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c" is a case of an enum, and this is " }>, align 8
@.d142 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E32" }>, align 8
@.d143 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"leave " }>, align 8
@.d144 = private constant <{ i64, [38 x i8] }> <{ i64 0, [38 x i8] c" off, or catch it where the join fails" }>, align 8
@.d145 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"R11b" }>, align 8
@.d146 = private constant <{ i64, [38 x i8] }> <{ i64 0, [38 x i8] c"a spawned call's clause names no error" }>, align 8
@.d147 = private constant <{ i64, [36 x i8] }> <{ i64 0, [36 x i8] c"the clause runs on the task's thread" }>, align 8
@.d148 = private constant <{ i64, [75 x i8] }> <{ i64 0, [75 x i8] c" names the error this clause took, and nothing uses it - leave the name off" }>, align 8
@.d149 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"R11b" }>, align 8
@.d150 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"L13" }>, align 8
@.d151 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c"character literal not closed on its line" }>, align 8
@.d152 = private constant <{ i64, [66 x i8] }> <{ i64 0, [66 x i8] c"a block's last value is not the clause's value - write '} default " }>, align 8
@.d153 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"' after the block" }>, align 8
@.d154 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"R11" }>, align 8
@.d155 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E27" }>, align 8
@.d156 = private constant <{ i64, [90 x i8] }> <{ i64 0, [90 x i8] c"a comprehension's elements may not be or hold references yet - build the array with a loop" }>, align 8
@.d157 = private constant <{ i64, [60 x i8] }> <{ i64 0, [60 x i8] c"a comptime for's elements are integers, Bool or Char, found " }>, align 8
@.d158 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"K3a" }>, align 8
@.d159 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d160 = private constant <{ i64, [54 x i8] }> <{ i64 0, [54 x i8] c"walk its positions: 'comptime for i in range xs.Len()'" }>, align 8
@.d161 = private constant <{ i64, [48 x i8] }> <{ i64 0, [48 x i8] c"a comptime for walks a range or an array, found " }>, align 8
@.d162 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"K3a" }>, align 8
@.d163 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d164 = private constant <{ i64, [47 x i8] }> <{ i64 0, [47 x i8] c"give it an array: 'comptime for x in xs.View()'" }>, align 8
@.d165 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"K3a" }>, align 8
@.d166 = private constant <{ i64, [60 x i8] }> <{ i64 0, [60 x i8] c"a comptime for's elements cannot be computed while compiling" }>, align 8
@.d167 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"K3" }>, align 8
@.d168 = private constant <{ i64, [48 x i8] }> <{ i64 0, [48 x i8] c"this comptime cannot be computed while compiling" }>, align 8
@.d169 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c" is defined in terms of itself" }>, align 8
@.d170 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"B9a" }>, align 8
@.d171 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"B9" }>, align 8
@.d172 = private constant <{ i64, [38 x i8] }> <{ i64 0, [38 x i8] c"a top-level condition is true or false" }>, align 8
@.d173 = private constant <{ i64, [62 x i8] }> <{ i64 0, [62 x i8] c" is not a build constant or an immutable global of this module" }>, align 8
@.d174 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"B9a" }>, align 8
@.d175 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"the condition beginning " }>, align 8
@.d176 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c" is not a Bool" }>, align 8
@.d177 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"B9" }>, align 8
@.d178 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c"a condition is a Bool, found " }>, align 8
@.d179 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d180 = private constant <{ i64, [64 x i8] }> <{ i64 0, [64 x i8] c"conditions decide branches holding further conditions more than " }>, align 8
@.d181 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c" levels deep" }>, align 8
@.d182 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"B9c" }>, align 8
@.d183 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"B9c" }>, align 8
@.d184 = private constant <{ i64, [58 x i8] }> <{ i64 0, [58 x i8] c"this top-level condition cannot be decided while compiling" }>, align 8
@.d185 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"B9c" }>, align 8
@.d186 = private constant <{ i64, [92 x i8] }> <{ i64 0, [92 x i8] c"this top-level condition uses what exists only in the branches it decides, or does not check" }>, align 8
@.d187 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"pass a copy of its own: " }>, align 8
@.d188 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T25d" }>, align 8
@.d189 = private constant <{ i64, [62 x i8] }> <{ i64 0, [62 x i8] c"this hands data written in the program where it may be written" }>, align 8
@.d190 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d191 = private constant <{ i64, [55 x i8] }> <{ i64 0, [55 x i8] c" is not a trait, so it cannot constrain a type variable" }>, align 8
@.d192 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"G6, G19" }>, align 8
@.d193 = private constant <{ i64, [75 x i8] }> <{ i64 0, [75 x i8] c"a type parameter's constraint is a trait, and a length is no parameter (T7)" }>, align 8
@.d194 = private constant <{ i64, [33 x i8] }> <{ i64 0, [33 x i8] c" does not satisfy the constraint " }>, align 8
@.d195 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" on " }>, align 8
@.d196 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"G19, E10b" }>, align 8
@.d197 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"it has no Hash" }>, align 8
@.d198 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c"declare 'Hash() I64', agreeing with '=='" }>, align 8
@.d199 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c" cannot become " }>, align 8
@.d200 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c" - their representations differ" }>, align 8
@.d201 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T29" }>, align 8
@.d202 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"what " }>, align 8
@.d203 = private constant <{ i64, [65 x i8] }> <{ i64 0, [65 x i8] c"'s constructor introduces cannot be inferred from these arguments" }>, align 8
@.d204 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"G10d" }>, align 8
@.d205 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"D15" }>, align 8
@.d206 = private constant <{ i64, [92 x i8] }> <{ i64 0, [92 x i8] c"':=' takes its type from the initializer, and null has none - write the type: 'x T?& = null'" }>, align 8
@.d207 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"R11" }>, align 8
@.d208 = private constant <{ i64, [67 x i8] }> <{ i64 0, [67 x i8] c"a try written as a statement gives no value, so it takes no default" }>, align 8
@.d209 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"R11" }>, align 8
@.d210 = private constant <{ i64, [54 x i8] }> <{ i64 0, [54 x i8] c"a default belongs to a catch clause: 'catch default v'" }>, align 8
@.d211 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"S19b" }>, align 8
@.d212 = private constant <{ i64, [52 x i8] }> <{ i64 0, [52 x i8] c"an error may not leave deferred code - catch it here" }>, align 8
@.d213 = private constant <{ i64, [28 x i8] }> <{ i64 0, [28 x i8] c" may not leave deferred code" }>, align 8
@.d214 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"S19b" }>, align 8
@.d215 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"it runs while its block is left" }>, align 8
@.d216 = private constant <{ i64, [46 x i8] }> <{ i64 0, [46 x i8] c"-define cannot redefine the built-in constant " }>, align 8
@.d217 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"B10a" }>, align 8
@.d218 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"B10" }>, align 8
@.d219 = private constant <{ i64, [33 x i8] }> <{ i64 0, [33 x i8] c"-define needs Name=value after it" }>, align 8
@.d220 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"D8c" }>, align 8
@.d221 = private constant <{ i64, [83 x i8] }> <{ i64 0, [83 x i8] c"':=' declares each target, so each is a name or '_' - use '=' to assign into places" }>, align 8
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
@.d222 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d223 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c"' is zero, so this division is undefined" }>, align 8
@.d224 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"E16h" }>, align 8
@.d225 = private constant <{ i64, [36 x i8] }> <{ i64 0, [36 x i8] c"the divisor is known while compiling" }>, align 8
@.d226 = private constant <{ i64, [52 x i8] }> <{ i64 0, [52 x i8] c"divide by a value that is not zero, or test it first" }>, align 8
@.d227 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d228 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"' and '" }>, align 8
@.d229 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c"' may each hold a reference to the other" }>, align 8
@.d230 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"O15" }>, align 8
@.d231 = private constant <{ i64, [93 x i8] }> <{ i64 0, [93 x i8] c"both have destructors to run - whichever is ended first, the other's destructor could read it" }>, align 8
@.d232 = private constant <{ i64, [92 x i8] }> <{ i64 0, [92 x i8] c"end one of them before the other refers to it (a block of its own), or hold one by reference" }>, align 8
@.d233 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"this value may be ended after '" }>, align 8
@.d234 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c"', which it may hold a reference to" }>, align 8
@.d235 = private constant <{ i64, [92 x i8] }> <{ i64 0, [92 x i8] c"it is held where its call lands, ended as that scope closes, so its destructors could read '" }>, align 8
@.d236 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"' already ended" }>, align 8
@.d237 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"declare it by value first, 'x " }>, align 8
@.d238 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c" = ...', and give the call that" }>, align 8
@.d239 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"O15, O16" }>, align 8
@.d240 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"O25c" }>, align 8
@.d241 = private constant <{ i64, [87 x i8] }> <{ i64 0, [87 x i8] c"the array outlives what this element refers to - build the element where the array goes" }>, align 8
@.d242 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c" is none of them" }>, align 8
@.d243 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"S13h" }>, align 8
@.d244 = private constant <{ i64, [70 x i8] }> <{ i64 0, [70 x i8] c"an array pattern matches an array, text or a type declaring At and Len" }>, align 8
@.d245 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"embed " }>, align 8
@.d246 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c" reads no file: " }>, align 8
@.d247 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E38" }>, align 8
@.d248 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E38" }>, align 8
@.d249 = private constant <{ i64, [81 x i8] }> <{ i64 0, [81 x i8] c"an embed's path is text known while compiling - a literal, or what reads no local" }>, align 8
@.d250 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"enum case " }>, align 8
@.d251 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c" is already declared" }>, align 8
@.d252 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T17" }>, align 8
@.d253 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d254 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"' is " }>, align 8
@.d255 = private constant <{ i64, [47 x i8] }> <{ i64 0, [47 x i8] c", not an error value - only an error value is '" }>, align 8
@.d256 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T20" }>, align 8
@.d257 = private constant <{ i64, [59 x i8] }> <{ i64 0, [59 x i8] c" has no error-set parameter, so its arguments end in no '?'" }>, align 8
@.d258 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"G1a" }>, align 8
@.d259 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"R1a" }>, align 8
@.d260 = private constant <{ i64, [85 x i8] }> <{ i64 0, [85 x i8] c"'?' alone is what the body can fail with - write '?', or name the types: '? io.Error'" }>, align 8
@.d261 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"an error value's " }>, align 8
@.d262 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c" is the language's, and " }>, align 8
@.d263 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c" cannot declare one" }>, align 8
@.d264 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T20" }>, align 8
@.d265 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"(T20)" }>, align 8
@.d266 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"choose another name" }>, align 8
@.d267 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"this function does not declare " }>, align 8
@.d268 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c" - add it after '?'" }>, align 8
@.d269 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"R3" }>, align 8
@.d270 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"an error set names one of " }>, align 8
@.d271 = private constant <{ i64, [46 x i8] }> <{ i64 0, [46 x i8] c"'s first 64 words alone, and this is past them" }>, align 8
@.d272 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"R1c" }>, align 8
@.d273 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d274 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"name the type whole" }>, align 8
@.d275 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"expected " }>, align 8
@.d276 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c", found " }>, align 8
@.d277 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d278 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d279 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"' is no top-level item of " }>, align 8
@.d280 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"B11b" }>, align 8
@.d281 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"X12" }>, align 8
@.d282 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"an export fn cannot be generic" }>, align 8
@.d283 = private constant <{ i64, [65 x i8] }> <{ i64 0, [65 x i8] c"an export fn is one C function, and a generic one stands for many" }>, align 8
@.d284 = private constant <{ i64, [33 x i8] }> <{ i64 0, [33 x i8] c"declare it for the types C passes" }>, align 8
@.d285 = private constant <{ i64, [58 x i8] }> <{ i64 0, [58 x i8] c"an export fn's body requires what its caller cannot hold (" }>, align 8
@.d286 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d287 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"X12" }>, align 8
@.d288 = private constant <{ i64, [60 x i8] }> <{ i64 0, [60 x i8] c"its caller is C, which nothing holds to what a body requires" }>, align 8
@.d289 = private constant <{ i64, [39 x i8] }> <{ i64 0, [39 x i8] c"keep what it is given only for the call" }>, align 8
@.d290 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T29f" }>, align 8
@.d291 = private constant <{ i64, [54 x i8] }> <{ i64 0, [54 x i8] c"only a type over a number or an array extends its base" }>, align 8
@.d292 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c" cannot come back from C" }>, align 8
@.d293 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"X2" }>, align 8
@.d294 = private constant <{ i64, [109 x i8] }> <{ i64 0, [109 x i8] c"an extern's result is one number of the twelve primitives, Bool, extern type's reference or plain-data struct" }>, align 8
@.d295 = private constant <{ i64, [28 x i8] }> <{ i64 0, [28 x i8] c" cannot cross the C boundary" }>, align 8
@.d296 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"X2" }>, align 8
@.d297 = private constant <{ i64, [157 x i8] }> <{ i64 0, [157 x i8] c"an extern parameter is a number of the twelve primitives, a Bool, an extern type's reference, a plain-data struct or a reference to one, or an array of these" }>, align 8
@.d298 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"this stores into '" }>, align 8
@.d299 = private constant <{ i64, [38 x i8] }> <{ i64 0, [38 x i8] c"' through a path with no known binding" }>, align 8
@.d300 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"B3i, O23" }>, align 8
@.d301 = private constant <{ i64, [156 x i8] }> <{ i64 0, [156 x i8] c"the instance's binding is not known through this path, and a precompiled module declares the field: only that module's own code decides what it may be given" }>, align 8
@.d302 = private constant <{ i64, [75 x i8] }> <{ i64 0, [75 x i8] c"store through a variable holding the instance, or store a copy ('x.Copy()')" }>, align 8
@.d303 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"R23" }>, align 8
@.d304 = private constant <{ i64, [53 x i8] }> <{ i64 0, [53 x i8] c"a Bool among several results is a flag beside a value" }>, align 8
@.d305 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d306 = private constant <{ i64, [77 x i8] }> <{ i64 0, [77 x i8] c"what can fail says so with '? E' and raises an error instead (error NotFound)" }>, align 8
@.d307 = private constant <{ i64, [45 x i8] }> <{ i64 0, [45 x i8] c"a function giving a Bool that writes through " }>, align 8
@.d308 = private constant <{ i64, [28 x i8] }> <{ i64 0, [28 x i8] c" gives a flag beside a value" }>, align 8
@.d309 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"R23a" }>, align 8
@.d310 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d311 = private constant <{ i64, [56 x i8] }> <{ i64 0, [56 x i8] c"give the value as the result and fail with '? E' instead" }>, align 8
@.d312 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c" is beyond F64's range" }>, align 8
@.d313 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"L12b" }>, align 8
@.d314 = private constant <{ i64, [52 x i8] }> <{ i64 0, [52 x i8] c"the formatter's source is not beside this compiler: " }>, align 8
@.d315 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"B13" }>, align 8
@.d316 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T17e" }>, align 8
@.d317 = private constant <{ i64, [57 x i8] }> <{ i64 0, [57 x i8] c"a case of an enum with raw values may not be named 'From'" }>, align 8
@.d318 = private constant <{ i64, [38 x i8] }> <{ i64 0, [38 x i8] c"'From' makes a case from its raw value" }>, align 8
@.d319 = private constant <{ i64, [43 x i8] }> <{ i64 0, [43 x i8] c" is a function type, held only by reference" }>, align 8
@.d320 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"write '" }>, align 8
@.d321 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"&', or '" }>, align 8
@.d322 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"?&' where it may be null" }>, align 8
@.d323 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T21b" }>, align 8
@.d324 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d325 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"expected " }>, align 8
@.d326 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c", found " }>, align 8
@.d327 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"write '" }>, align 8
@.d328 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"(f)' to make one the other" }>, align 8
@.d329 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"T21b, T29" }>, align 8
@.d330 = private constant <{ i64, [45 x i8] }> <{ i64 0, [45 x i8] c"a declared function type is a type of its own" }>, align 8
@.d331 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d332 = private constant <{ i64, [66 x i8] }> <{ i64 0, [66 x i8] c"' ties where what it is given lives to what it keeps or gives back" }>, align 8
@.d333 = private constant <{ i64, [61 x i8] }> <{ i64 0, [61 x i8] c" holds only what its written function type says of every call" }>, align 8
@.d334 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T22a" }>, align 8
@.d335 = private constant <{ i64, [57 x i8] }> <{ i64 0, [57 x i8] c"call it directly, or hold it in a local and call it there" }>, align 8
@.d336 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"-fuzz " }>, align 8
@.d337 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c" names no test of this file" }>, align 8
@.d338 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"B19" }>, align 8
@.d339 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d340 = private constant <{ i64, [68 x i8] }> <{ i64 0, [68 x i8] c"give a test's target, its target's type or a word of its description" }>, align 8
@.d341 = private constant <{ i64, [60 x i8] }> <{ i64 0, [60 x i8] c" can escape here, but the generator's result does not say so" }>, align 8
@.d342 = private constant <{ i64, [46 x i8] }> <{ i64 0, [46 x i8] c"the generator's result must say it fails with " }>, align 8
@.d343 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"write 'Iterator<T ? " }>, align 8
@.d344 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c">', or catch it" }>, align 8
@.d345 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"R9, D18" }>, align 8
@.d346 = private constant <{ i64, [79 x i8] }> <{ i64 0, [79 x i8] c"a generator fails as its Next does - write its errors in its result: 'Iterator<" }>, align 8
@.d347 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" ? E>'" }>, align 8
@.d348 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"D18" }>, align 8
@.d349 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"D18a" }>, align 8
@.d350 = private constant <{ i64, [73 x i8] }> <{ i64 0, [73 x i8] c"a generator gives its values by 'yield' - 'return' ends it and takes none" }>, align 8
@.d351 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d352 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d353 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"a parameter" }>, align 8
@.d354 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"this generator yields what " }>, align 8
@.d355 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c" refers to" }>, align 8
@.d356 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"D18c, T22a" }>, align 8
@.d357 = private constant <{ i64, [45 x i8] }> <{ i64 0, [45 x i8] c"that outlives no Next call it can be shown to" }>, align 8
@.d358 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"yield a copy ('$x', 'x.Copy()')" }>, align 8
@.d359 = private constant <{ i64, [71 x i8] }> <{ i64 0, [71 x i8] c"these globals' initializers read each other, so none can be set first: " }>, align 8
@.d360 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"B5a" }>, align 8
@.d361 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"a guard is a Bool, found " }>, align 8
@.d362 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"S13e" }>, align 8
@.d363 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"nothing of " }>, align 8
@.d364 = private constant <{ i64, [61 x i8] }> <{ i64 0, [61 x i8] c" changes after its constructor (it is immut) - make a new one" }>, align 8
@.d365 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T13a" }>, align 8
@.d366 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"olang.lock names no commit for " }>, align 8
@.d367 = private constant <{ i64, [41 x i8] }> <{ i64 0, [41 x i8] c" - delete its line, or build with -update" }>, align 8
@.d368 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"M23b" }>, align 8
@.d369 = private constant <{ i64, [61 x i8] }> <{ i64 0, [61 x i8] c" reaches a file another import of this module already reaches" }>, align 8
@.d370 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"M16" }>, align 8
@.d371 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"M23a" }>, align 8
@.d372 = private constant <{ i64, [51 x i8] }> <{ i64 0, [51 x i8] c"a remote import's name holds a character it may not" }>, align 8
@.d373 = private constant <{ i64, [83 x i8] }> <{ i64 0, [83 x i8] c"its host, owner, repository and ref may hold only letters, digits, '.', '_' and '-'" }>, align 8
@.d374 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"M23" }>, align 8
@.d375 = private constant <{ i64, [74 x i8] }> <{ i64 0, [74 x i8] c"a remote import names a file in the repository: host/owner/repo[@ref]/path" }>, align 8
@.d376 = private constant <{ i64, [55 x i8] }> <{ i64 0, [55 x i8] c" is a statement of its own, never part of an expression" }>, align 8
@.d377 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"S3a" }>, align 8
@.d378 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"B23" }>, align 8
@.d379 = private constant <{ i64, [70 x i8] }> <{ i64 0, [70 x i8] c"jupyter -install takes no files - it writes the kernel's spec and ends" }>, align 8
@.d380 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d381 = private constant <{ i64, [50 x i8] }> <{ i64 0, [50 x i8] c", hold it by value in a field, or give it a copy (" }>, align 8
@.d382 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d383 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c", or hold it by value in a field" }>, align 8
@.d384 = private constant <{ i64, [41 x i8] }> <{ i64 0, [41 x i8] c"make the argument where the instance goes" }>, align 8
@.d385 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"C2d" }>, align 8
@.d386 = private constant <{ i64, [63 x i8] }> <{ i64 0, [63 x i8] c"this instance holds a reference to an argument it would outlive" }>, align 8
@.d387 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d388 = private constant <{ i64, [63 x i8] }> <{ i64 0, [63 x i8] c" cannot be a reference - only a struct, an enum or an array can" }>, align 8
@.d389 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T24" }>, align 8
@.d390 = private constant <{ i64, [51 x i8] }> <{ i64 0, [51 x i8] c"'as' asks for an enum value's payload, and this is " }>, align 8
@.d391 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E32" }>, align 8
@.d392 = private constant <{ i64, [42 x i8] }> <{ i64 0, [42 x i8] c" is a keyword, not a name - choose another" }>, align 8
@.d393 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"L9" }>, align 8
@.d394 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"this lambda captures '" }>, align 8
@.d395 = private constant <{ i64, [105 x i8] }> <{ i64 0, [105 x i8] c"' and is assigned to it - the capture is a copy made as the lambda is, so it holds the earlier value of '" }>, align 8
@.d396 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"', never this lambda" }>, align 8
@.d397 = private constant <{ i64, [47 x i8] }> <{ i64 0, [47 x i8] c"for a recursive function write a top-level 'fn " }>, align 8
@.d398 = private constant <{ i64, [146 x i8] }> <{ i64 0, [146 x i8] c"(...)' and pass it what it would capture, or capture a reference holding the function ('h mut Holder& = Holder(...)'; 'h.f = fn ... h.f(...) ...')" }>, align 8
@.d399 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"D16c" }>, align 8
@.d400 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d401 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"this lambda keeps '" }>, align 8
@.d402 = private constant <{ i64, [41 x i8] }> <{ i64 0, [41 x i8] c"' in what it captured from an outer scope" }>, align 8
@.d403 = private constant <{ i64, [55 x i8] }> <{ i64 0, [55 x i8] c"that scope outlives where the lambda lives, and 'keeps " }>, align 8
@.d404 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"' says only that '" }>, align 8
@.d405 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"' outlives the lambda" }>, align 8
@.d406 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T22b" }>, align 8
@.d407 = private constant <{ i64, [71 x i8] }> <{ i64 0, [71 x i8] c"capture from one scope, or hold the lambda in a local and call it there" }>, align 8
@.d408 = private constant <{ i64, [28 x i8] }> <{ i64 0, [28 x i8] c"these arrays are of lengths " }>, align 8
@.d409 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" and " }>, align 8
@.d410 = private constant <{ i64, [46 x i8] }> <{ i64 0, [46 x i8] c" - a lane operation takes arrays of one length" }>, align 8
@.d411 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E39" }>, align 8
@.d412 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d413 = private constant <{ i64, [58 x i8] }> <{ i64 0, [58 x i8] c"' takes an array by value whose length its body decides on" }>, align 8
@.d414 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c"this argument gives no length ('" }>, align 8
@.d415 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"')" }>, align 8
@.d416 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"G29" }>, align 8
@.d417 = private constant <{ i64, [46 x i8] }> <{ i64 0, [46 x i8] c"give it an array, or take the parameter as '&'" }>, align 8
@.d418 = private constant <{ i64, [45 x i8] }> <{ i64 0, [45 x i8] c"a one-line body is one simple statement, not " }>, align 8
@.d419 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c" - write a block, '{ ... }'" }>, align 8
@.d420 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"S1b" }>, align 8
@.d421 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"S1b" }>, align 8
@.d422 = private constant <{ i64, [72 x i8] }> <{ i64 0, [72 x i8] c"a one-line body stands on the line of its ':' - write a block, '{ ... }'" }>, align 8
@.d423 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"a literal of " }>, align 8
@.d424 = private constant <{ i64, [61 x i8] }> <{ i64 0, [61 x i8] c" holds no 'key: value' entries - its elements are no MapEntry" }>, align 8
@.d425 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E19" }>, align 8
@.d426 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E4a" }>, align 8
@.d427 = private constant <{ i64, [36 x i8] }> <{ i64 0, [36 x i8] c"this literal expression has no value" }>, align 8
@.d428 = private constant <{ i64, [62 x i8] }> <{ i64 0, [62 x i8] c"no integer type holds it, from I128's least to U128's greatest" }>, align 8
@.d429 = private constant <{ i64, [45 x i8] }> <{ i64 0, [45 x i8] c"this literal expression's value does not fit " }>, align 8
@.d430 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E4a" }>, align 8
@.d431 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"the items have no common type: " }>, align 8
@.d432 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" is " }>, align 8
@.d433 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" and " }>, align 8
@.d434 = private constant <{ i64, [28 x i8] }> <{ i64 0, [28 x i8] c"write the type in front, as " }>, align 8
@.d435 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E20" }>, align 8
@.d436 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d437 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"a literal makes " }>, align 8
@.d438 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c", which has no FromIter" }>, align 8
@.d439 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"for an array of " }>, align 8
@.d440 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c", write Array<" }>, align 8
@.d441 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c">[...]" }>, align 8
@.d442 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E19" }>, align 8
@.d443 = private constant <{ i64, [105 x i8] }> <{ i64 0, [105 x i8] c"a literal makes the type written before its '[' or expected where it stands, through that type's FromIter" }>, align 8
@.d444 = private constant <{ i64, [65 x i8] }> <{ i64 0, [65 x i8] c" needs more than 64 bits, and a literal's own type is at most U64" }>, align 8
@.d445 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"T6a, E4a" }>, align 8
@.d446 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d447 = private constant <{ i64, [94 x i8] }> <{ i64 0, [94 x i8] c"give it the type it should have, as 'x U128 = ...', or convert an operand, as 'U128(1) << 100'" }>, align 8
@.d448 = private constant <{ i64, [53 x i8] }> <{ i64 0, [53 x i8] c"a literal makes the type written before its '[', and " }>, align 8
@.d449 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c" is a reference" }>, align 8
@.d450 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"an array of them is Array<" }>, align 8
@.d451 = private constant <{ i64, [38 x i8] }> <{ i64 0, [38 x i8] c">[...], or [...] where one is expected" }>, align 8
@.d452 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E19" }>, align 8
@.d453 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d454 = private constant <{ i64, [67 x i8] }> <{ i64 0, [67 x i8] c" is declared and never read - read it, or leave the declaration out" }>, align 8
@.d455 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"D3b" }>, align 8
@.d456 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"G30" }>, align 8
@.d457 = private constant <{ i64, [86 x i8] }> <{ i64 0, [86 x i8] c"no clause of this match gives a value at this instance's length - add one, or 'case _'" }>, align 8
@.d458 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c"every value of this match is " }>, align 8
@.d459 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c", found " }>, align 8
@.d460 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"S12b" }>, align 8
@.d461 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d462 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"' is a " }>, align 8
@.d463 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c", which may be null, and " }>, align 8
@.d464 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" never is" }>, align 8
@.d465 = private constant <{ i64, [42 x i8] }> <{ i64 0, [42 x i8] c"test it first ('if x != null'), or write '" }>, align 8
@.d466 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"!'" }>, align 8
@.d467 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T2c" }>, align 8
@.d468 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d469 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"member '" }>, align 8
@.d470 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"' of " }>, align 8
@.d471 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c" is private to its module" }>, align 8
@.d472 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"M6a" }>, align 8
@.d473 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"'x in c' calls " }>, align 8
@.d474 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", and " }>, align 8
@.d475 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" has none" }>, align 8
@.d476 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E29" }>, align 8
@.d477 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c", which 'in' calls, gives a Bool" }>, align 8
@.d478 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E29" }>, align 8
@.d479 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"a method of " }>, align 8
@.d480 = private constant <{ i64, [34 x i8] }> <{ i64 0, [34 x i8] c" is declared in that type's module" }>, align 8
@.d481 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"M19" }>, align 8
@.d482 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c" takes exactly one file" }>, align 8
@.d483 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"B1" }>, align 8
@.d484 = private constant <{ i64, [59 x i8] }> <{ i64 0, [59 x i8] c"a local is always writable - 'mut' is for a reference, and " }>, align 8
@.d485 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" is none" }>, align 8
@.d486 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"D11a" }>, align 8
@.d487 = private constant <{ i64, [38 x i8] }> <{ i64 0, [38 x i8] c"'mut' on a by-value parameter of type " }>, align 8
@.d488 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"D9" }>, align 8
@.d489 = private constant <{ i64, [89 x i8] }> <{ i64 0, [89 x i8] c"a by-value parameter is the callee's own copy, always writable - 'mut' is for a reference" }>, align 8
@.d490 = private constant <{ i64, [57 x i8] }> <{ i64 0, [57 x i8] c" is an import's alias in this module - rename one of them" }>, align 8
@.d491 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"M20" }>, align 8
@.d492 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"parameter " }>, align 8
@.d493 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c" is given by position already" }>, align 8
@.d494 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"E14b" }>, align 8
@.d495 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"parameter " }>, align 8
@.d496 = private constant <{ i64, [61 x i8] }> <{ i64 0, [61 x i8] c" declares no default, so it is given by position, not by name" }>, align 8
@.d497 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"E14b" }>, align 8
@.d498 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c" names no parameter of " }>, align 8
@.d499 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"E14b" }>, align 8
@.d500 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d501 = private constant <{ i64, [56 x i8] }> <{ i64 0, [56 x i8] c"' is narrowed by a test before the loop around this read" }>, align 8
@.d502 = private constant <{ i64, [72 x i8] }> <{ i64 0, [72 x i8] c"test it inside the loop, or read it into a local before the loop ('v := " }>, align 8
@.d503 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"')" }>, align 8
@.d504 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"S8d" }>, align 8
@.d505 = private constant <{ i64, [62 x i8] }> <{ i64 0, [62 x i8] c"a call in the loop may change it before the next turn reads it" }>, align 8
@.d506 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"-" }>, align 8
@.d507 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c" is below I64's minimum" }>, align 8
@.d508 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"L10" }>, align 8
@.d509 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c" has no builder, case or member " }>, align 8
@.d510 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"D19" }>, align 8
@.d511 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c" has no limit '" }>, align 8
@.d512 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d513 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E36" }>, align 8
@.d514 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"B4" }>, align 8
@.d515 = private constant <{ i64, [54 x i8] }> <{ i64 0, [54 x i8] c"no main function - a program starts at 'fn main() { }'" }>, align 8
@.d516 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c" has no word " }>, align 8
@.d517 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T19" }>, align 8
@.d518 = private constant <{ i64, [68 x i8] }> <{ i64 0, [68 x i8] c" is never null, so it has no zero value - give it a value, or write " }>, align 8
@.d519 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T2c" }>, align 8
@.d520 = private constant <{ i64, [37 x i8] }> <{ i64 0, [37 x i8] c" has no zero value, so this needs one" }>, align 8
@.d521 = private constant <{ i64, [55 x i8] }> <{ i64 0, [55 x i8] c"its constructor does not run on zeros while compiling: " }>, align 8
@.d522 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"D13c" }>, align 8
@.d523 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"S3" }>, align 8
@.d524 = private constant <{ i64, [78 x i8] }> <{ i64 0, [78 x i8] c"this computes a value and discards it - only a call, '++' or '--' stands alone" }>, align 8
@.d525 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c" is not a function, and declares no Call" }>, align 8
@.d526 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"E13b" }>, align 8
@.d527 = private constant <{ i64, [42 x i8] }> <{ i64 0, [42 x i8] c" does not extend its base, so it takes no " }>, align 8
@.d528 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"declare its method " }>, align 8
@.d529 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c", or declare it with 'extends'" }>, align 8
@.d530 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T29f" }>, align 8
@.d531 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d532 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c" declares no " }>, align 8
@.d533 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"M9" }>, align 8
@.d534 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d535 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"not a regular file" }>, align 8
@.d536 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"'s " }>, align 8
@.d537 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" takes " }>, align 8
@.d538 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c" besides its receiver" }>, align 8
@.d539 = private constant <{ i64, [38 x i8] }> <{ i64 0, [38 x i8] c"it is an ordinary method, not the one " }>, align 8
@.d540 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c" calls, which takes " }>, align 8
@.d541 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E31" }>, align 8
@.d542 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d543 = private constant <{ i64, [111 x i8] }> <{ i64 0, [111 x i8] c"this is the value that does not fit - each value a conditional or a match gives is stored as though alone (E28)" }>, align 8
@.d544 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d545 = private constant <{ i64, [69 x i8] }> <{ i64 0, [69 x i8] c"' is declared here, in a block that closes first - declare it where '" }>, align 8
@.d546 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"' lives, '" }>, align 8
@.d547 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d548 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"&', and assign it here" }>, align 8
@.d549 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d550 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c" is declared here" }>, align 8
@.d551 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d552 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d553 = private constant <{ i64, [107 x i8] }> <{ i64 0, [107 x i8] c"a function type of several results or error items is parenthesized whole in a list: '(fn&(x I64) I64, I64)'" }>, align 8
@.d554 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"the range's literals make '" }>, align 8
@.d555 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"' " }>, align 8
@.d556 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c" - convert its end, '" }>, align 8
@.d557 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"(...)', for " }>, align 8
@.d558 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" values" }>, align 8
@.d559 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d560 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d561 = private constant <{ i64, [48 x i8] }> <{ i64 0, [48 x i8] c"the callee requires it because of this statement" }>, align 8
@.d562 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d563 = private constant <{ i64, [102 x i8] }> <{ i64 0, [102 x i8] c"' is the call's own copy of its argument - take it by reference to give back what the caller passed: '" }>, align 8
@.d564 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d565 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d566 = private constant <{ i64, [46 x i8] }> <{ i64 0, [46 x i8] c"' is private to its module, and only a public " }>, align 8
@.d567 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c" meets the constraint" }>, align 8
@.d568 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d569 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d570 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"' is " }>, align 8
@.d571 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"'s private spelling with " }>, align 8
@.d572 = private constant <{ i64, [41 x i8] }> <{ i64 0, [41 x i8] c"'s parameters, so it is held to its shape" }>, align 8
@.d573 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d574 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d575 = private constant <{ i64, [87 x i8] }> <{ i64 0, [87 x i8] c"read here before it is assigned on every path - assign it on each path before this read" }>, align 8
@.d576 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d577 = private constant <{ i64, [119 x i8] }> <{ i64 0, [119 x i8] c"this borrows a value made here, which lives only in this block - keep a copy of what the slice shows ('$x', 'x.Copy()')" }>, align 8
@.d578 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d579 = private constant <{ i64, [57 x i8] }> <{ i64 0, [57 x i8] c"built here, where the receiver's part it was handed lives" }>, align 8
@.d580 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d581 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"this arm does not assign it" }>, align 8
@.d582 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d583 = private constant <{ i64, [65 x i8] }> <{ i64 0, [65 x i8] c"this loop may run no times - assigning in its body does not count" }>, align 8
@.d584 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d585 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"' may grow here, in " }>, align 8
@.d586 = private constant <{ i64, [47 x i8] }> <{ i64 0, [47 x i8] c" - take the view or the reference after it, or " }>, align 8
@.d587 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d588 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d589 = private constant <{ i64, [62 x i8] }> <{ i64 0, [62 x i8] c"the callee is no view of the element because of this statement" }>, align 8
@.d590 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"B24" }>, align 8
@.d591 = private constant <{ i64, [44 x i8] }> <{ i64 0, [44 x i8] c"notebook takes the word run and one notebook" }>, align 8
@.d592 = private constant <{ i64, [37 x i8] }> <{ i64 0, [37 x i8] c"write 'olang notebook run FILE.ipynb'" }>, align 8
@.d593 = private constant <{ i64, [52 x i8] }> <{ i64 0, [52 x i8] c" is never null - a reference that may be is written " }>, align 8
@.d594 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T2c" }>, align 8
@.d595 = private constant <{ i64, [34 x i8] }> <{ i64 0, [34 x i8] c" may be null, so it meets no trait" }>, align 8
@.d596 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c" must meet " }>, align 8
@.d597 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" here" }>, align 8
@.d598 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"write " }>, align 8
@.d599 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c", which never is" }>, align 8
@.d600 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T2c" }>, align 8
@.d601 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" and " }>, align 8
@.d602 = private constant <{ i64, [56 x i8] }> <{ i64 0, [56 x i8] c" do not meet - neither flows into the other; convert one" }>, align 8
@.d603 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T6b" }>, align 8
@.d604 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c" takes a Bool, found " }>, align 8
@.d605 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"E7" }>, align 8
@.d606 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c" takes numbers, found " }>, align 8
@.d607 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"E6" }>, align 8
@.d608 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c" applies to " }>, align 8
@.d609 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c", not to " }>, align 8
@.d610 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"B1" }>, align 8
@.d611 = private constant <{ i64, [56 x i8] }> <{ i64 0, [56 x i8] c" does not have the signature of the default it overrides" }>, align 8
@.d612 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"M19e" }>, align 8
@.d613 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d614 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c"match it, or choose another name" }>, align 8
@.d615 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" (" }>, align 8
@.d616 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c") is no field of a packed struct" }>, align 8
@.d617 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T13c" }>, align 8
@.d618 = private constant <{ i64, [46 x i8] }> <{ i64 0, [46 x i8] c"a packed struct lays its fields out bit by bit" }>, align 8
@.d619 = private constant <{ i64, [114 x i8] }> <{ i64 0, [114 x i8] c"a field is an integer, Bool, Char, float, payload-free enum, packed struct, or an array of a known length of these" }>, align 8
@.d620 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T13c" }>, align 8
@.d621 = private constant <{ i64, [89 x i8] }> <{ i64 0, [89 x i8] c"'packed' lays a struct out bit by bit - it is written right before 'struct', nothing else" }>, align 8
@.d622 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T13c" }>, align 8
@.d623 = private constant <{ i64, [74 x i8] }> <{ i64 0, [74 x i8] c"a packed struct takes no type parameters - its layout is its declaration's" }>, align 8
@.d624 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d625 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"' lives where '" }>, align 8
@.d626 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"' does, which closes first" }>, align 8
@.d627 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"keep a copy ('$" }>, align 8
@.d628 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"'), or keep what '" }>, align 8
@.d629 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"' was made from" }>, align 8
@.d630 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"O20" }>, align 8
@.d631 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d632 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"S13b" }>, align 8
@.d633 = private constant <{ i64, [39 x i8] }> <{ i64 0, [39 x i8] c"an item by position follows one by name" }>, align 8
@.d634 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d635 = private constant <{ i64, [54 x i8] }> <{ i64 0, [54 x i8] c"items by position come first, as a call's arguments do" }>, align 8
@.d636 = private constant <{ i64, [37 x i8] }> <{ i64 0, [37 x i8] c" may hold an error that has no field " }>, align 8
@.d637 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"test which it holds first ('if " }>, align 8
@.d638 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c" == T.Word')" }>, align 8
@.d639 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T19b" }>, align 8
@.d640 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"case " }>, align 8
@.d641 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c" has no field '" }>, align 8
@.d642 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d643 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"S13b" }>, align 8
@.d644 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T17c" }>, align 8
@.d645 = private constant <{ i64, [66 x i8] }> <{ i64 0, [66 x i8] c"this payload holds references into two scopes, and it lives in one" }>, align 8
@.d646 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d647 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c"build what it holds in one scope" }>, align 8
@.d648 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" carries " }>, align 8
@.d649 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c" - give them: '" }>, align 8
@.d650 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d651 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c")'" }>, align 8
@.d652 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T19b" }>, align 8
@.d653 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"L12" }>, align 8
@.d654 = private constant <{ i64, [38 x i8] }> <{ i64 0, [38 x i8] c"a decimal point needs a digit after it" }>, align 8
@.d655 = private constant <{ i64, [78 x i8] }> <{ i64 0, [78 x i8] c" is the prelude's function, reached bare in every module - choose another name" }>, align 8
@.d656 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"D3a" }>, align 8
@.d657 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d658 = private constant <{ i64, [70 x i8] }> <{ i64 0, [70 x i8] c"' holds no reference, so no result can refer into it - leave 'borrows " }>, align 8
@.d659 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"' out" }>, align 8
@.d660 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T21c" }>, align 8
@.d661 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d662 = private constant <{ i64, [62 x i8] }> <{ i64 0, [62 x i8] c"' is a promise, written only after a function type's signature" }>, align 8
@.d663 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T21c" }>, align 8
@.d664 = private constant <{ i64, [75 x i8] }> <{ i64 0, [75 x i8] c"what a function itself does is read off its body ('olang explain' shows it)" }>, align 8
@.d665 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T21c" }>, align 8
@.d666 = private constant <{ i64, [91 x i8] }> <{ i64 0, [91 x i8] c"'returns' promises every call comes back, and 'noreturn' that none does - write one of them" }>, align 8
@.d667 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"this function raises " }>, align 8
@.d668 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c" but writes no '?'" }>, align 8
@.d669 = private constant <{ i64, [56 x i8] }> <{ i64 0, [56 x i8] c"write '?' after its result (its errors inferred), or '? " }>, align 8
@.d670 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d671 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"R1d" }>, align 8
@.d672 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c"a function that can fail says so" }>, align 8
@.d673 = private constant <{ i64, [59 x i8] }> <{ i64 0, [59 x i8] c"'error' raises a word, 'error T.WORD', or an error value - " }>, align 8
@.d674 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c" is neither" }>, align 8
@.d675 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"R3" }>, align 8
@.d676 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"R3b, T19b" }>, align 8
@.d677 = private constant <{ i64, [93 x i8] }> <{ i64 0, [93 x i8] c"a field an error raised by name carries is named by the raise: a bare name, or 'name = value'" }>, align 8
@.d678 = private constant <{ i64, [41 x i8] }> <{ i64 0, [41 x i8] c"a raw value is a literal of the raw type " }>, align 8
@.d679 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T17e" }>, align 8
@.d680 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d681 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"' is a " }>, align 8
@.d682 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c", which may be null" }>, align 8
@.d683 = private constant <{ i64, [72 x i8] }> <{ i64 0, [72 x i8] c"read through it where a test says it is not ('if x != null'), or write '" }>, align 8
@.d684 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"!'" }>, align 8
@.d685 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T2c" }>, align 8
@.d686 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"this copies a read-only " }>, align 8
@.d687 = private constant <{ i64, [44 x i8] }> <{ i64 0, [44 x i8] c", and a written type declares a writable one" }>, align 8
@.d688 = private constant <{ i64, [87 x i8] }> <{ i64 0, [87 x i8] c"declare it with ':=' for a read-only copy, borrow it read-only, or make one of its own " }>, align 8
@.d689 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T25c" }>, align 8
@.d690 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d691 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"a copy of a read-only " }>, align 8
@.d692 = private constant <{ i64, [39 x i8] }> <{ i64 0, [39 x i8] c" cannot be returned as a writable value" }>, align 8
@.d693 = private constant <{ i64, [28 x i8] }> <{ i64 0, [28 x i8] c"return one of its own, made " }>, align 8
@.d694 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c", or a read-only reference" }>, align 8
@.d695 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T25c" }>, align 8
@.d696 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d697 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"a copy of a read-only " }>, align 8
@.d698 = private constant <{ i64, [41 x i8] }> <{ i64 0, [41 x i8] c" cannot be stored where it can be written" }>, align 8
@.d699 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"store one of its own, made " }>, align 8
@.d700 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T25c" }>, align 8
@.d701 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d702 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c" cannot be a function value" }>, align 8
@.d703 = private constant <{ i64, [51 x i8] }> <{ i64 0, [51 x i8] c"it writes through or keeps its by-value parameter '" }>, align 8
@.d704 = private constant <{ i64, [61 x i8] }> <{ i64 0, [61 x i8] c"', and a caller of a function value may pass a read-only copy" }>, align 8
@.d705 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c"work on one of its own, made " }>, align 8
@.d706 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T25c" }>, align 8
@.d707 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d708 = private constant <{ i64, [28 x i8] }> <{ i64 0, [28 x i8] c"' keeps what its parameter '" }>, align 8
@.d709 = private constant <{ i64, [33 x i8] }> <{ i64 0, [33 x i8] c"' reaches where it can be written" }>, align 8
@.d710 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"this " }>, align 8
@.d711 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c" is read-only" }>, align 8
@.d712 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T25c" }>, align 8
@.d713 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"pass a writable one" }>, align 8
@.d714 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d715 = private constant <{ i64, [50 x i8] }> <{ i64 0, [50 x i8] c"' is read here before it is assigned on every path" }>, align 8
@.d716 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c" has no zero value" }>, align 8
@.d717 = private constant <{ i64, [59 x i8] }> <{ i64 0, [59 x i8] c"assign it on each path before this read, or give it a value" }>, align 8
@.d718 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"D13d" }>, align 8
@.d719 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"re-exporting " }>, align 8
@.d720 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c" reaches this module again" }>, align 8
@.d721 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"M17" }>, align 8
@.d722 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d723 = private constant <{ i64, [62 x i8] }> <{ i64 0, [62 x i8] c"' lives in a block that closes first, and this keeps it longer" }>, align 8
@.d724 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"O25" }>, align 8
@.d725 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"a reference never narrows" }>, align 8
@.d726 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"this case is " }>, align 8
@.d727 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"'s, and the value is " }>, align 8
@.d728 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"G34" }>, align 8
@.d729 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"a " }>, align 8
@.d730 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" has no '" }>, align 8
@.d731 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"' - its members are " }>, align 8
@.d732 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"G34" }>, align 8
@.d733 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"G33" }>, align 8
@.d734 = private constant <{ i64, [92 x i8] }> <{ i64 0, [92 x i8] c"a list known while compiling is indexed by a constant - this index is known only at run time" }>, align 8
@.d735 = private constant <{ i64, [42 x i8] }> <{ i64 0, [42 x i8] c" is a list known while compiling, no value" }>, align 8
@.d736 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"G33" }>, align 8
@.d737 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d738 = private constant <{ i64, [113 x i8] }> <{ i64 0, [113 x i8] c"walk it with 'for', count it with '.Len()', index it with a constant, or make an array of it with a comprehension" }>, align 8
@.d739 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c" has no TypeKind" }>, align 8
@.d740 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"G32" }>, align 8
@.d741 = private constant <{ i64, [106 x i8] }> <{ i64 0, [106 x i8] c"only a struct, an enum, a number, Bool, an array, a reference, a function type and an error value have one" }>, align 8
@.d742 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" has no " }>, align 8
@.d743 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" - " }>, align 8
@.d744 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"G33" }>, align 8
@.d745 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"the error raised again can be " }>, align 8
@.d746 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c", not in this function's '?' " }>, align 8
@.d747 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"R3a" }>, align 8
@.d748 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d749 = private constant <{ i64, [41 x i8] }> <{ i64 0, [41 x i8] c"add it after '?', or test the error first" }>, align 8
@.d750 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"S13h" }>, align 8
@.d751 = private constant <{ i64, [76 x i8] }> <{ i64 0, [76 x i8] c"an array pattern has one '...', for the elements its other items do not name" }>, align 8
@.d752 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"S15" }>, align 8
@.d753 = private constant <{ i64, [56 x i8] }> <{ i64 0, [56 x i8] c"a test has no result - a bare 'return' ends it as passed" }>, align 8
@.d754 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"O25e" }>, align 8
@.d755 = private constant <{ i64, [72 x i8] }> <{ i64 0, [72 x i8] c"these arguments live in different scopes, and the call needs them in one" }>, align 8
@.d756 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d757 = private constant <{ i64, [33 x i8] }> <{ i64 0, [33 x i8] c"make them where one of them lives" }>, align 8
@.d758 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"L18" }>, align 8
@.d759 = private constant <{ i64, [94 x i8] }> <{ i64 0, [94 x i8] c"olang has no ';' - a statement ends where its line does; put the next one on a line of its own" }>, align 8
@.d760 = private constant <{ i64, [52 x i8] }> <{ i64 0, [52 x i8] c"'s value is its last parameter, after a variadic one" }>, align 8
@.d761 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"write 'fn (x mut T&) " }>, align 8
@.d762 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"(i ...I64, v E)'" }>, align 8
@.d763 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"E31e" }>, align 8
@.d764 = private constant <{ i64, [42 x i8] }> <{ i64 0, [42 x i8] c"a store passes the indexes, then the value" }>, align 8
@.d765 = private constant <{ i64, [48 x i8] }> <{ i64 0, [48 x i8] c" declares At but not SetAt, which x[i] = v calls" }>, align 8
@.d766 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E31" }>, align 8
@.d767 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"shifting " }>, align 8
@.d768 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" by '" }>, align 8
@.d769 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"', which is " }>, align 8
@.d770 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c", is outside its width of " }>, align 8
@.d771 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" bits" }>, align 8
@.d772 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"shift by 0 to " }>, align 8
@.d773 = private constant <{ i64, [44 x i8] }> <{ i64 0, [44 x i8] c", or convert the value to a wider type first" }>, align 8
@.d774 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"E16h" }>, align 8
@.d775 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c"the amount is known while compiling" }>, align 8
@.d776 = private constant <{ i64, [37 x i8] }> <{ i64 0, [37 x i8] c"a slice's bounds are integers, found " }>, align 8
@.d777 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"E16a" }>, align 8
@.d778 = private constant <{ i64, [39 x i8] }> <{ i64 0, [39 x i8] c"a slice with no end runs to Len(), and " }>, align 8
@.d779 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" has none" }>, align 8
@.d780 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E31" }>, align 8
@.d781 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"P2" }>, align 8
@.d782 = private constant <{ i64, [93 x i8] }> <{ i64 0, [93 x i8] c"this argument's storage closes before the join does - declare it at the join's level or wider" }>, align 8
@.d783 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"S19b, P1a" }>, align 8
@.d784 = private constant <{ i64, [66 x i8] }> <{ i64 0, [66 x i8] c"a spawn in deferred code needs a join written in the deferred code" }>, align 8
@.d785 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"D16e" }>, align 8
@.d786 = private constant <{ i64, [64 x i8] }> <{ i64 0, [64 x i8] c"a spawned lambda takes no parameters - it captures what it needs" }>, align 8
@.d787 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"P4" }>, align 8
@.d788 = private constant <{ i64, [38 x i8] }> <{ i64 0, [38 x i8] c"this task cannot fail - drop the 'try'" }>, align 8
@.d789 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"the order of " }>, align 8
@.d790 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"'s fields is no part of it" }>, align 8
@.d791 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"S13i" }>, align 8
@.d792 = private constant <{ i64, [44 x i8] }> <{ i64 0, [44 x i8] c"a struct pattern names the fields it matches" }>, align 8
@.d793 = private constant <{ i64, [41 x i8] }> <{ i64 0, [41 x i8] c"write 'field = pattern' or a field's name" }>, align 8
@.d794 = private constant <{ i64, [39 x i8] }> <{ i64 0, [39 x i8] c" runs on this machine, not on '-target " }>, align 8
@.d795 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d796 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"'-target " }>, align 8
@.d797 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c"' is another architecture or system" }>, align 8
@.d798 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"B12a" }>, align 8
@.d799 = private constant <{ i64, [41 x i8] }> <{ i64 0, [41 x i8] c"build, compile, test and run build for it" }>, align 8
@.d800 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"'-target " }>, align 8
@.d801 = private constant <{ i64, [46 x i8] }> <{ i64 0, [46 x i8] c"' names native with another architecture's CPU" }>, align 8
@.d802 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"B12" }>, align 8
@.d803 = private constant <{ i64, [28 x i8] }> <{ i64 0, [28 x i8] c"native is this machine's CPU" }>, align 8
@.d804 = private constant <{ i64, [68 x i8] }> <{ i64 0, [68 x i8] c"name the other architecture's CPU after ':', or none for its default" }>, align 8
@.d805 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c" may not leave a task's clause" }>, align 8
@.d806 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"P4a" }>, align 8
@.d807 = private constant <{ i64, [48 x i8] }> <{ i64 0, [48 x i8] c"it runs on the task, outside the spawner's loops" }>, align 8
@.d808 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"P4a" }>, align 8
@.d809 = private constant <{ i64, [61 x i8] }> <{ i64 0, [61 x i8] c"this clause takes an error the targets would get no value for" }>, align 8
@.d810 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d811 = private constant <{ i64, [43 x i8] }> <{ i64 0, [43 x i8] c"end it with 'default v', or end the process" }>, align 8
@.d812 = private constant <{ i64, [28 x i8] }> <{ i64 0, [28 x i8] c"'+' joins text, and this is " }>, align 8
@.d813 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c", characters still being written" }>, align 8
@.d814 = private constant <{ i64, [33 x i8] }> <{ i64 0, [33 x i8] c"make it a String first - 'String(" }>, align 8
@.d815 = private constant <{ i64, [41 x i8] }> <{ i64 0, [41 x i8] c")' - or build the text in a StringBuilder" }>, align 8
@.d816 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"E11b" }>, align 8
@.d817 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d818 = private constant <{ i64, [57 x i8] }> <{ i64 0, [57 x i8] c"this top-level assert is false, decided while compiling: " }>, align 8
@.d819 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"S17a" }>, align 8
@.d820 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"this condition reads '" }>, align 8
@.d821 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"', which its 'if' assigns" }>, align 8
@.d822 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"D13e" }>, align 8
@.d823 = private constant <{ i64, [44 x i8] }> <{ i64 0, [44 x i8] c"a condition cannot decide the value it reads" }>, align 8
@.d824 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c"this branch does not assign '" }>, align 8
@.d825 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"', and " }>, align 8
@.d826 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c" has no zero value" }>, align 8
@.d827 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"D13e" }>, align 8
@.d828 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d829 = private constant <{ i64, [57 x i8] }> <{ i64 0, [57 x i8] c"assign it in every branch of the 'if', or give it a value" }>, align 8
@.d830 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"a comma before " }>, align 8
@.d831 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c" separates nothing - remove it" }>, align 8
@.d832 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"L18a" }>, align 8
@.d833 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"'s " }>, align 8
@.d834 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d835 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", and " }>, align 8
@.d836 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c" says nothing of that" }>, align 8
@.d837 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"write '" }>, align 8
@.d838 = private constant <{ i64, [34 x i8] }> <{ i64 0, [34 x i8] c"' after its signature in the trait" }>, align 8
@.d839 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"T30c, T22b" }>, align 8
@.d840 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d841 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"'s " }>, align 8
@.d842 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" may " }>, align 8
@.d843 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", and " }>, align 8
@.d844 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c" promises '" }>, align 8
@.d845 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d846 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"every call through an 'any " }>, align 8
@.d847 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"&' relies on it" }>, align 8
@.d848 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"give " }>, align 8
@.d849 = private constant <{ i64, [34 x i8] }> <{ i64 0, [34 x i8] c" a method that does not, or take '" }>, align 8
@.d850 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"' off the trait's method" }>, align 8
@.d851 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"T30c, T22b" }>, align 8
@.d852 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"trait method " }>, align 8
@.d853 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c" may not be generic in a type of its own" }>, align 8
@.d854 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T35" }>, align 8
@.d855 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c" is a trait, not a type" }>, align 8
@.d856 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"&" }>, align 8
@.d857 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d858 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"&" }>, align 8
@.d859 = private constant <{ i64, [42 x i8] }> <{ i64 0, [42 x i8] c"a value of any type meeting it is an 'any " }>, align 8
@.d860 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d861 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"T30, T32" }>, align 8
@.d862 = private constant <{ i64, [42 x i8] }> <{ i64 0, [42 x i8] c"a trait is a constraint on a type variable" }>, align 8
@.d863 = private constant <{ i64, [41 x i8] }> <{ i64 0, [41 x i8] c" is used while it is still being declared" }>, align 8
@.d864 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d865 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"S13e" }>, align 8
@.d866 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"a type match takes no guard" }>, align 8
@.d867 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c"it chooses its case while compiling" }>, align 8
@.d868 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"test the value inside the case" }>, align 8
@.d869 = private constant <{ i64, [43 x i8] }> <{ i64 0, [43 x i8] c" is a type variable, so its cases are types" }>, align 8
@.d870 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"G13" }>, align 8
@.d871 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"D15" }>, align 8
@.d872 = private constant <{ i64, [79 x i8] }> <{ i64 0, [79 x i8] c"':=' takes its type from the initializer, and a call returning nothing has none" }>, align 8
@.d873 = private constant <{ i64, [37 x i8] }> <{ i64 0, [37 x i8] c" is a type variable, not an error set" }>, align 8
@.d874 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"G1a" }>, align 8
@.d875 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d876 = private constant <{ i64, [66 x i8] }> <{ i64 0, [66 x i8] c"an error-set parameter is written after '?' in its list, '<T ? E>'" }>, align 8
@.d877 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E41" }>, align 8
@.d878 = private constant <{ i64, [62 x i8] }> <{ i64 0, [62 x i8] c"'_' holds the place of a value, and nothing here says its type" }>, align 8
@.d879 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"G17" }>, align 8
@.d880 = private constant <{ i64, [72 x i8] }> <{ i64 0, [72 x i8] c"this generic's instantiations never end - each one requires a larger one" }>, align 8
@.d881 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"L4a" }>, align 8
@.d882 = private constant <{ i64, [43 x i8] }> <{ i64 0, [43 x i8] c"unterminated block comment - '##' closes it" }>, align 8
@.d883 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E15" }>, align 8
@.d884 = private constant <{ i64, [65 x i8] }> <{ i64 0, [65 x i8] c"this call can fail - write 'try', and catch or pass on its errors" }>, align 8
@.d885 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d886 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"' is handed on here, and '" }>, align 8
@.d887 = private constant <{ i64, [34 x i8] }> <{ i64 0, [34 x i8] c"', which reaches it, is used after" }>, align 8
@.d888 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c" is unique" }>, align 8
@.d889 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"use '" }>, align 8
@.d890 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"' before handing '" }>, align 8
@.d891 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"' on, or no longer after" }>, align 8
@.d892 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T13b" }>, align 8
@.d893 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"unexpected character '" }>, align 8
@.d894 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d895 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"L16" }>, align 8
@.d896 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"unknown function or type " }>, align 8
@.d897 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"M22" }>, align 8
@.d898 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c" is no import here" }>, align 8
@.d899 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"M10" }>, align 8
@.d900 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"unknown name " }>, align 8
@.d901 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"M22" }>, align 8
@.d902 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"unknown name " }>, align 8
@.d903 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c" - did you mean '" }>, align 8
@.d904 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"'?" }>, align 8
@.d905 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"M22" }>, align 8
@.d906 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"unknown type " }>, align 8
@.d907 = private constant <{ i64, [58 x i8] }> <{ i64 0, [58 x i8] c" - the numbers are named by kind and width: did you mean '" }>, align 8
@.d908 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"'?" }>, align 8
@.d909 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"T4" }>, align 8
@.d910 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"unknown type " }>, align 8
@.d911 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c" - did you mean '" }>, align 8
@.d912 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"'?" }>, align 8
@.d913 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"T2" }>, align 8
@.d914 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d915 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"the function type of " }>, align 8
@.d916 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c" says nothing of that" }>, align 8
@.d917 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"write '" }>, align 8
@.d918 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"' after its signature" }>, align 8
@.d919 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T22b" }>, align 8
@.d920 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c" cannot be a C variable argument" }>, align 8
@.d921 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"X21" }>, align 8
@.d922 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d923 = private constant <{ i64, [81 x i8] }> <{ i64 0, [81 x i8] c"pass a number, a reference or an array; a Bool as 'I32(b)', a struct by reference" }>, align 8
@.d924 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c" is private to its module" }>, align 8
@.d925 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"M6" }>, align 8
@.d926 = private constant <{ i64, [34 x i8] }> <{ i64 0, [34 x i8] c" names need as many values, found " }>, align 8
@.d927 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"D12b" }>, align 8
@.d928 = private constant <{ i64, [42 x i8] }> <{ i64 0, [42 x i8] c"a variadic parameter is a function's, not " }>, align 8
@.d929 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"D8g" }>, align 8
@.d930 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"D8g" }>, align 8
@.d931 = private constant <{ i64, [55 x i8] }> <{ i64 0, [55 x i8] c"a variadic parameter is the last one but defaulted ones" }>, align 8
@.d932 = private constant <{ i64, [82 x i8] }> <{ i64 0, [82 x i8] c"one variadic parameter, and only parameters with a default after it, given by name" }>, align 8
@.d933 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d934 = private constant <{ i64, [64 x i8] }> <{ i64 0, [64 x i8] c"' may grow here while a task holds a view of it - give the task " }>, align 8
@.d935 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"M19g" }>, align 8
@.d936 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"this keeps a view of '" }>, align 8
@.d937 = private constant <{ i64, [36 x i8] }> <{ i64 0, [36 x i8] c"', the copy its match or lambda made" }>, align 8
@.d938 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"O27" }>, align 8
@.d939 = private constant <{ i64, [49 x i8] }> <{ i64 0, [49 x i8] c"the copy is made where it stands and goes with it" }>, align 8
@.d940 = private constant <{ i64, [48 x i8] }> <{ i64 0, [48 x i8] c"keep a copy of what it shows: '$x' or 'x.Copy()'" }>, align 8
@.d941 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"this returns a view of '" }>, align 8
@.d942 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"' whose storage cannot be built" }>, align 8
@.d943 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"O27" }>, align 8
@.d944 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c"it cannot be built where the result goes" }>, align 8
@.d945 = private constant <{ i64, [74 x i8] }> <{ i64 0, [74 x i8] c"return the value (a result written without '&' copies it), or a copy: '$x'" }>, align 8
@.d946 = private constant <{ i64, [48 x i8] }> <{ i64 0, [48 x i8] c"a weak reference names a struct or an enum, and " }>, align 8
@.d947 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" is " }>, align 8
@.d948 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T2d" }>, align 8
@.d949 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d950 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c"hold it by an ordinary reference" }>, align 8
@.d951 = private constant <{ i64, [28 x i8] }> <{ i64 0, [28 x i8] c"this writes through x[i] on " }>, align 8
@.d952 = private constant <{ i64, [33 x i8] }> <{ i64 0, [33 x i8] c", which declares At but not SetAt" }>, align 8
@.d953 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E31" }>, align 8
@.d954 = private constant <{ i64, [44 x i8] }> <{ i64 0, [44 x i8] c"the copy At gives back is never written back" }>, align 8
@.d955 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"declare SetAt" }>, align 8
@.d956 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"S19b, S20" }>, align 8
@.d957 = private constant <{ i64, [61 x i8] }> <{ i64 0, [61 x i8] c"deferred code may not yield - it runs while its block is left" }>, align 8
@.d958 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"S20, O26" }>, align 8
@.d959 = private constant <{ i64, [48 x i8] }> <{ i64 0, [48 x i8] c"this value refers to the generator's own storage" }>, align 8
@.d960 = private constant <{ i64, [34 x i8] }> <{ i64 0, [34 x i8] c"its walk goes on with that storage" }>, align 8
@.d961 = private constant <{ i64, [59 x i8] }> <{ i64 0, [59 x i8] c"yield a copy, built where the value goes ('x.Copy()', '$x')" }>, align 8
@olang_2esole_2ecompiler_2fmsgs_3aNearest_2e1 = weak hidden constant i1 false
declare void @__olang_region_release(ptr) noinline
@.d962 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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
declare %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, i32 %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, { i64, ptr } %a4)
@olang_loc_d93addea5b815da9_e849c161ff4e7de5 = external constant [0 x i8]
@olang_loc_fced1ba34c6512dc_349b310d7afbfd78 = external constant [0 x i8]
declare i8 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eToLower(i8 %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_558e38b2b979820_b81e4d452591bbd4 = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fmsgs_2eEsc(ptr %v0, i8 %a0)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v0, { i64, ptr } %a0, i8 %a1)
@olang_loc_af0cd4b2e246af5e_f7dc695b2384058a = external constant [0 x i8]
@olang_loc_afe78659650a85b_d80bf1f42ea79867 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLower(i8 %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %a0)
@olang_loc_94d222cfeceaa960_f4d92a1033be80bc = external constant [0 x i8]

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
