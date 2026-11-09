source_filename = "compiler_msgs-1.quick.ll"
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
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/msgs:Nearest" = type { { i64, ptr }, { i64, ptr }, i64 }
define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnyMethodScopes(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca i32
  %l4 = alloca i64
  %l12 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  store { i64, ptr } %a2, ptr %l2
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
  %t8 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d0, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d0, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t17 = extractvalue { i64, ptr } %a1, 1
  %t18 = extractvalue { i64, ptr } %a1, 0
  %t19 = add i64 %t15, %t18
  %t20 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d1, i32 0, i32 1) }, 1
  %t21 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  %t22 = add i64 %t19, %t21
  %t24 = extractvalue { i64, ptr } %t8, 1
  %t25 = extractvalue { i64, ptr } %t8, 0
  %t26 = add i64 %t22, %t25
  %t27 = extractvalue { i64, ptr } { i64 60, ptr getelementptr inbounds (<{ i64, [60 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t28 = extractvalue { i64, ptr } { i64 60, ptr getelementptr inbounds (<{ i64, [60 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  %t29 = add i64 %t26, %t28
  %t31 = extractvalue { i64, ptr } %t9, 1
  %t32 = extractvalue { i64, ptr } %t9, 0
  %t33 = add i64 %t29, %t32
  %t34 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t35 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  %t36 = add i64 %t33, %t35
  %t37 = load i64, ptr %l4
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
  %t50 = load i64, ptr %l4
  %t51 = inttoptr i64 %t50 to ptr
  %t52 = extractvalue { i64, ptr } %t48, 0
  %t53 = extractvalue { i64, ptr } %t48, 1
  %t54 = mul i64 %t52, 1
  %t55 = call ptr @__olang_scope_alloc(ptr %t51, i64 %t54)
  call void @llvm.memcpy.p0.p0.i64(ptr %t55, ptr %t53, i64 %t54, i1 false)
  %t56 = insertvalue { i64, ptr } undef, i64 %t52, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t55, 1
  %t58 = load i32, ptr %l3, !range !{i32 0, i32 884}
  %t60 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, i32 %t58, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d4, i32 0, i32 1) }, { i64, ptr } %t57)
  store %"compiler/diagmsg:Msg" %t60, ptr %l12
  br label %bb3
bb3:
  %t61 = load %"compiler/diagmsg:Msg", ptr %l12
  store %"compiler/diagmsg:Msg" %t61, ptr %rv
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
  store i32 182, ptr %l2
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
  %t11 = extractvalue { i64, ptr } { i64 51, ptr getelementptr inbounds (<{ i64, [51 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 51, ptr getelementptr inbounds (<{ i64, [51 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t15 = extractvalue { i64, ptr } %a1, 1
  %t16 = extractvalue { i64, ptr } %a1, 0
  %t17 = add i64 %t13, %t16
  %t18 = extractvalue { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
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
  %t38 = load i32, ptr %l2, !range !{i32 0, i32 884}
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t38, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d7, i32 0, i32 1) }, { i64, ptr } %t37)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArrayLengthRange(ptr %v0, i64 %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 158, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 73, ptr getelementptr inbounds (<{ i64, [73 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 73, ptr getelementptr inbounds (<{ i64, [73 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  %t10 = call i64 @__olang_fmt_i64(ptr null, i64 %a0)
  %t11 = add i64 %t8, %t10
  %t12 = load i64, ptr %l2
  %t13 = inttoptr i64 %t12 to ptr
  %t14 = call ptr @__olang_scope_alloc(ptr %t13, i64 %t11)
  call void @olang_textcopy(ptr %t14, ptr %t7, i64 %t8)
  %t15 = getelementptr i8, ptr %t14, i64 %t8
  %t16 = call i64 @__olang_fmt_i64(ptr %t15, i64 %a0)
  %t17 = insertvalue { i64, ptr } undef, i64 %t11, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t14, 1
  %t20 = load i64, ptr %l2
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d9, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAsCanFail(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 154, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d10, i32 0, i32 1) }, { i64, ptr } { i64 105, ptr getelementptr inbounds (<{ i64, [105 x i8] }>, ptr @.d11, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAsNeedsCase(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 507, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
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
  %t38 = load i32, ptr %l2, !range !{i32 0, i32 884}
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t38, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d14, i32 0, i32 1) }, { i64, ptr } %t37)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAssertFalseMessage(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 716, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
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
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d16, i32 0, i32 1) }, { i64, ptr } %t27)
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
  store i32 719, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
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
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d19, i32 0, i32 1) }, { i64, ptr } %t31)
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
  store i32 718, ptr %l1
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
  %t10 = extractvalue { i64, ptr } { i64 79, ptr getelementptr inbounds (<{ i64, [79 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 79, ptr getelementptr inbounds (<{ i64, [79 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
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
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d21, i32 0, i32 1) }, { i64, ptr } %t27)
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
  store i32 563, ptr %l2
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
  %t10 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
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
  %t34 = load i32, ptr %l2, !range !{i32 0, i32 884}
  %t36 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 %t34, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d23, i32 0, i32 1) }, { i64, ptr } %t33)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAtomicNotWritable(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 391, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d24, i32 0, i32 1) }, { i64, ptr } { i64 62, ptr getelementptr inbounds (<{ i64, [62 x i8] }>, ptr @.d25, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAttrNotBuilt(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 850, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 71, ptr getelementptr inbounds (<{ i64, [71 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 71, ptr getelementptr inbounds (<{ i64, [71 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
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
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d27, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAttrPlace(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 846, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d28, i32 0, i32 1) }, { i64, ptr } { i64 140, ptr getelementptr inbounds (<{ i64, [140 x i8] }>, ptr @.d29, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAttrTwice(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 849, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 71, ptr getelementptr inbounds (<{ i64, [71 x i8] }>, ptr @.d30, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 71, ptr getelementptr inbounds (<{ i64, [71 x i8] }>, ptr @.d30, i32 0, i32 1) }, 0
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
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d31, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBecomeBorrows(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 762, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d32, i32 0, i32 1) }, { i64, ptr } { i64 180, ptr getelementptr inbounds (<{ i64, [180 x i8] }>, ptr @.d33, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBecomeErrors(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 760, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 81, ptr getelementptr inbounds (<{ i64, [81 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 81, ptr getelementptr inbounds (<{ i64, [81 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d35, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 76, ptr getelementptr inbounds (<{ i64, [76 x i8] }>, ptr @.d36, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 76, ptr getelementptr inbounds (<{ i64, [76 x i8] }>, ptr @.d36, i32 0, i32 1) }, 0
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
  %t42 = load i32, ptr %l2, !range !{i32 0, i32 884}
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d37, i32 0, i32 1) }, { i64, ptr } %t41)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBecomeHeldParam(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 763, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 64, ptr getelementptr inbounds (<{ i64, [64 x i8] }>, ptr @.d38, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 64, ptr getelementptr inbounds (<{ i64, [64 x i8] }>, ptr @.d38, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 123, ptr getelementptr inbounds (<{ i64, [123 x i8] }>, ptr @.d39, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 123, ptr getelementptr inbounds (<{ i64, [123 x i8] }>, ptr @.d39, i32 0, i32 1) }, 0
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
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d40, i32 0, i32 1) }, { i64, ptr } %t31)
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
  store i32 757, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 78, ptr getelementptr inbounds (<{ i64, [78 x i8] }>, ptr @.d41, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 78, ptr getelementptr inbounds (<{ i64, [78 x i8] }>, ptr @.d41, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d42, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d42, i32 0, i32 1) }, 0
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
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d43, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBecomeSignature(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 758, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 67, ptr getelementptr inbounds (<{ i64, [67 x i8] }>, ptr @.d44, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 67, ptr getelementptr inbounds (<{ i64, [67 x i8] }>, ptr @.d44, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d45, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d45, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 58, ptr getelementptr inbounds (<{ i64, [58 x i8] }>, ptr @.d46, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 58, ptr getelementptr inbounds (<{ i64, [58 x i8] }>, ptr @.d46, i32 0, i32 1) }, 0
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
  %t42 = load i32, ptr %l2, !range !{i32 0, i32 884}
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d47, i32 0, i32 1) }, { i64, ptr } %t41)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuilderOwnerKind(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
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
  %t10 = extractvalue { i64, ptr } { i64 145, ptr getelementptr inbounds (<{ i64, [145 x i8] }>, ptr @.d48, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 145, ptr getelementptr inbounds (<{ i64, [145 x i8] }>, ptr @.d48, i32 0, i32 1) }, 0
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
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d49, i32 0, i32 1) }, { i64, ptr } %t27)
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
  store i32 219, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d50, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d50, i32 0, i32 1) }, 0
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
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d51, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCPointerReadOnly(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 222, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d52, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d52, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 43, ptr getelementptr inbounds (<{ i64, [43 x i8] }>, ptr @.d53, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 43, ptr getelementptr inbounds (<{ i64, [43 x i8] }>, ptr @.d53, i32 0, i32 1) }, 0
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
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d54, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCallbackNotExport(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 209, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d55, i32 0, i32 1) }, { i64, ptr } { i64 111, ptr getelementptr inbounds (<{ i64, [111 x i8] }>, ptr @.d56, i32 0, i32 1) })
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
  store i32 20, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d57, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d57, i32 0, i32 1) }, 0
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
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d58, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaptureReadOnly(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 405, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d59, i32 0, i32 1) }, { i64, ptr } { i64 84, ptr getelementptr inbounds (<{ i64, [84 x i8] }>, ptr @.d60, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaseAfterWildcard(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 606, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d61, i32 0, i32 1) }, { i64, ptr } { i64 73, ptr getelementptr inbounds (<{ i64, [73 x i8] }>, ptr @.d62, i32 0, i32 1) })
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
  store i32 509, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d63, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d63, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d64, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d64, i32 0, i32 1) }, 0
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
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d65, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaseIsSubject(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 608, ptr %l1
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
  %t10 = extractvalue { i64, ptr } { i64 115, ptr getelementptr inbounds (<{ i64, [115 x i8] }>, ptr @.d66, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 115, ptr getelementptr inbounds (<{ i64, [115 x i8] }>, ptr @.d66, i32 0, i32 1) }, 0
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
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d67, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaseTypeArgsNotInferable(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i32
  %l3 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l10 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l21 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i32 525, ptr %l2
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
  store { i64, ptr } %t6, ptr %l5, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t7, ptr %l6, !tbaa !27
  %t8 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t8, ptr %l7, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 0
  %t13 = add i64 %t11, 1
  store i64 %t13, ptr %l10, !tbaa !24
  %t14 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t14, 0
  store i64 %t17, ptr %l13, !tbaa !24
  %t18 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t18, 0
  store i64 %t19, ptr %l14, !tbaa !24
  %t20 = load i64, ptr %l10, !tbaa !24
  %t21 = icmp sge i64 %t20, 0
  br i1 %t21, label %bb3, label %bb4
bb3:
  %t23 = load i64, ptr %l10, !tbaa !24
  %t24 = load i64, ptr %l13, !tbaa !24
  %t25 = icmp sle i64 %t23, %t24
  br i1 %t25, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_78fb4d3249708b2_e3f9318f90ab6b26)
  unreachable
bb5:
  %t27 = load i64, ptr %l13, !tbaa !24
  %t28 = load i64, ptr %l14, !tbaa !24
  %t29 = icmp sle i64 %t27, %t28
  br i1 %t29, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_78fb4d3249708b2_e3f9318f90ab6b26)
  unreachable
bb7:
  %t31 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = load i64, ptr %l10, !tbaa !24
  %t34 = load i64, ptr %l13, !tbaa !24
  %t35 = getelementptr i8, ptr %t32, i64 %t33
  %t36 = sub i64 %t34, %t33
  %t37 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t38 = insertvalue { i64, ptr } %t37, ptr %t35, 1
  %t39 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d68, i32 0, i32 1) }, 1
  %t40 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d68, i32 0, i32 1) }, 0
  %t41 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t42 = extractvalue { i64, ptr } %t41, 1
  %t43 = extractvalue { i64, ptr } %t41, 0
  %t44 = add i64 %t40, %t43
  %t45 = extractvalue { i64, ptr } { i64 50, ptr getelementptr inbounds (<{ i64, [50 x i8] }>, ptr @.d69, i32 0, i32 1) }, 1
  %t46 = extractvalue { i64, ptr } { i64 50, ptr getelementptr inbounds (<{ i64, [50 x i8] }>, ptr @.d69, i32 0, i32 1) }, 0
  %t47 = add i64 %t44, %t46
  %t48 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t49 = extractvalue { i64, ptr } %t48, 1
  %t50 = extractvalue { i64, ptr } %t48, 0
  %t51 = add i64 %t47, %t50
  %t52 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d70, i32 0, i32 1) }, 1
  %t53 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d70, i32 0, i32 1) }, 0
  %t54 = add i64 %t51, %t53
  %t56 = extractvalue { i64, ptr } %t38, 1
  %t57 = extractvalue { i64, ptr } %t38, 0
  %t58 = add i64 %t54, %t57
  %t59 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d71, i32 0, i32 1) }, 1
  %t60 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d71, i32 0, i32 1) }, 0
  %t61 = add i64 %t58, %t60
  %t62 = load i64, ptr %l3
  %t63 = inttoptr i64 %t62 to ptr
  %t64 = call ptr @__olang_scope_alloc(ptr %t63, i64 %t61)
  call void @olang_textcopy(ptr %t64, ptr %t39, i64 %t40)
  %t65 = getelementptr i8, ptr %t64, i64 %t40
  call void @olang_textcopy(ptr %t65, ptr %t42, i64 %t43)
  %t66 = getelementptr i8, ptr %t65, i64 %t43
  call void @olang_textcopy(ptr %t66, ptr %t45, i64 %t46)
  %t67 = getelementptr i8, ptr %t66, i64 %t46
  call void @olang_textcopy(ptr %t67, ptr %t49, i64 %t50)
  %t68 = getelementptr i8, ptr %t67, i64 %t50
  call void @olang_textcopy(ptr %t68, ptr %t52, i64 %t53)
  %t69 = getelementptr i8, ptr %t68, i64 %t53
  call void @olang_textcopy(ptr %t69, ptr %t56, i64 %t57)
  %t70 = getelementptr i8, ptr %t69, i64 %t57
  call void @olang_textcopy(ptr %t70, ptr %t59, i64 %t60)
  %t71 = insertvalue { i64, ptr } undef, i64 %t61, 0
  %t72 = insertvalue { i64, ptr } %t71, ptr %t64, 1
  %t74 = load i64, ptr %l3
  %t75 = inttoptr i64 %t74 to ptr
  %t76 = extractvalue { i64, ptr } %t72, 0
  %t77 = extractvalue { i64, ptr } %t72, 1
  %t78 = mul i64 %t76, 1
  %t79 = call ptr @__olang_scope_alloc(ptr %t75, i64 %t78)
  call void @llvm.memcpy.p0.p0.i64(ptr %t79, ptr %t77, i64 %t78, i1 false)
  %t80 = insertvalue { i64, ptr } undef, i64 %t76, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t79, 1
  %t82 = load i32, ptr %l2, !range !{i32 0, i32 884}
  %t84 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t82, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d72, i32 0, i32 1) }, { i64, ptr } %t81)
  store %"compiler/diagmsg:Msg" %t84, ptr %l21
  br label %bb9
bb8:
  call void @__olang_check_failed(ptr @olang_loc_78fb4d3249708b2_e3f9318f90ab6b26)
  unreachable
bb9:
  %t85 = load %"compiler/diagmsg:Msg", ptr %l21
  store %"compiler/diagmsg:Msg" %t85, ptr %rv
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
  %t8 = extractvalue { i64, ptr } %a0, 1
  %t9 = extractvalue { i64, ptr } %a0, 0
  %t10 = extractvalue { i64, ptr } { i64 75, ptr getelementptr inbounds (<{ i64, [75 x i8] }>, ptr @.d73, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 75, ptr getelementptr inbounds (<{ i64, [75 x i8] }>, ptr @.d73, i32 0, i32 1) }, 0
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
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d74, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eClangFailed(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 55, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d75, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d75, i32 0, i32 1) }, 0
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
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d76, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eColumnsNotRecord(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca i64
  %l11 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 875, ptr %l3
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
  %t12 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d77, i32 0, i32 1) }, 1
  %t13 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d77, i32 0, i32 1) }, 0
  %t14 = add i64 %t11, %t13
  %t16 = extractvalue { i64, ptr } %a1, 1
  %t17 = extractvalue { i64, ptr } %a1, 0
  %t18 = add i64 %t14, %t17
  %t19 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 0
  %t21 = add i64 %t18, %t20
  %t23 = extractvalue { i64, ptr } %a2, 1
  %t24 = extractvalue { i64, ptr } %a2, 0
  %t25 = add i64 %t21, %t24
  %t26 = extractvalue { i64, ptr } { i64 140, ptr getelementptr inbounds (<{ i64, [140 x i8] }>, ptr @.d79, i32 0, i32 1) }, 1
  %t27 = extractvalue { i64, ptr } { i64 140, ptr getelementptr inbounds (<{ i64, [140 x i8] }>, ptr @.d79, i32 0, i32 1) }, 0
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
  %t48 = load i32, ptr %l3, !range !{i32 0, i32 884}
  %t50 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, i32 %t48, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d80, i32 0, i32 1) }, { i64, ptr } %t47)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCommutesClash(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3) #0 {
entry:
  %l4 = alloca i32
  %l5 = alloca i64
  %l13 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 240, ptr %l4
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
  %t10 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d81, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d81, i32 0, i32 1) }, 0
  %t13 = extractvalue { i64, ptr } %a0, 1
  %t14 = extractvalue { i64, ptr } %a0, 0
  %t15 = add i64 %t11, %t14
  %t16 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d82, i32 0, i32 1) }, 1
  %t17 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d82, i32 0, i32 1) }, 0
  %t18 = add i64 %t15, %t17
  %t20 = extractvalue { i64, ptr } %a1, 1
  %t21 = extractvalue { i64, ptr } %a1, 0
  %t22 = add i64 %t18, %t21
  %t23 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d83, i32 0, i32 1) }, 1
  %t24 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d83, i32 0, i32 1) }, 0
  %t25 = add i64 %t22, %t24
  %t27 = extractvalue { i64, ptr } %a2, 1
  %t28 = extractvalue { i64, ptr } %a2, 0
  %t29 = add i64 %t25, %t28
  %t30 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d84, i32 0, i32 1) }, 1
  %t31 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d84, i32 0, i32 1) }, 0
  %t32 = add i64 %t29, %t31
  %t34 = extractvalue { i64, ptr } %a3, 1
  %t35 = extractvalue { i64, ptr } %a3, 0
  %t36 = add i64 %t32, %t35
  %t37 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d85, i32 0, i32 1) }, 1
  %t38 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d85, i32 0, i32 1) }, 0
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
  %t62 = load i32, ptr %l4, !range !{i32 0, i32 884}
  %t64 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v4, ptr %v4, ptr %v4, i32 %t62, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d86, i32 0, i32 1) }, { i64, ptr } %t61)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eComprWalkFails(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 554, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d87, i32 0, i32 1) }, { i64, ptr } { i64 228, ptr getelementptr inbounds (<{ i64, [228 x i8] }>, ptr @.d88, i32 0, i32 1) })
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
  store i32 855, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 48, ptr getelementptr inbounds (<{ i64, [48 x i8] }>, ptr @.d89, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 48, ptr getelementptr inbounds (<{ i64, [48 x i8] }>, ptr @.d89, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 50, ptr getelementptr inbounds (<{ i64, [50 x i8] }>, ptr @.d90, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 50, ptr getelementptr inbounds (<{ i64, [50 x i8] }>, ptr @.d90, i32 0, i32 1) }, 0
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
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d91, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eComptimeLocal(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 852, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d92, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d92, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 141, ptr getelementptr inbounds (<{ i64, [141 x i8] }>, ptr @.d93, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 141, ptr getelementptr inbounds (<{ i64, [141 x i8] }>, ptr @.d93, i32 0, i32 1) }, 0
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
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d94, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondMutable(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 91, ptr %l1
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
  %t10 = extractvalue { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d95, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d95, i32 0, i32 1) }, 0
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
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d96, i32 0, i32 1) }, { i64, ptr } %t27)
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
  store i32 746, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 60, ptr getelementptr inbounds (<{ i64, [60 x i8] }>, ptr @.d97, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 60, ptr getelementptr inbounds (<{ i64, [60 x i8] }>, ptr @.d97, i32 0, i32 1) }, 0
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
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d98, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondUnseen(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 747, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d99, i32 0, i32 1) }, { i64, ptr } { i64 92, ptr getelementptr inbounds (<{ i64, [92 x i8] }>, ptr @.d100, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eContractNeedsArgumentError(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 780, ptr %l1
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
  %t10 = extractvalue { i64, ptr } { i64 89, ptr getelementptr inbounds (<{ i64, [89 x i8] }>, ptr @.d101, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 89, ptr getelementptr inbounds (<{ i64, [89 x i8] }>, ptr @.d101, i32 0, i32 1) }, 0
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
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d102, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eConversionDoesNotFit(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca i32
  %l3 = alloca i64
  %l10 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i32 782, ptr %l2
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
  %t8 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d103, i32 0, i32 1) }, 1
  %t13 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d103, i32 0, i32 1) }, 0
  %t14 = add i64 %t11, %t13
  %t16 = extractvalue { i64, ptr } %t7, 1
  %t17 = extractvalue { i64, ptr } %t7, 0
  %t18 = add i64 %t14, %t17
  %t19 = extractvalue { i64, ptr } { i64 45, ptr getelementptr inbounds (<{ i64, [45 x i8] }>, ptr @.d104, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 45, ptr getelementptr inbounds (<{ i64, [45 x i8] }>, ptr @.d104, i32 0, i32 1) }, 0
  %t21 = add i64 %t18, %t20
  %t23 = extractvalue { i64, ptr } %t8, 1
  %t24 = extractvalue { i64, ptr } %t8, 0
  %t25 = add i64 %t21, %t24
  %t26 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d105, i32 0, i32 1) }, 1
  %t27 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d105, i32 0, i32 1) }, 0
  %t28 = add i64 %t25, %t27
  %t29 = load i64, ptr %l3
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
  %t40 = load i64, ptr %l3
  %t41 = inttoptr i64 %t40 to ptr
  %t42 = extractvalue { i64, ptr } %t38, 0
  %t43 = extractvalue { i64, ptr } %t38, 1
  %t44 = mul i64 %t42, 1
  %t45 = call ptr @__olang_scope_alloc(ptr %t41, i64 %t44)
  call void @llvm.memcpy.p0.p0.i64(ptr %t45, ptr %t43, i64 %t44, i1 false)
  %t46 = insertvalue { i64, ptr } undef, i64 %t42, 0
  %t47 = insertvalue { i64, ptr } %t46, ptr %t45, 1
  %t48 = load i32, ptr %l2, !range !{i32 0, i32 884}
  %t50 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t48, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d106, i32 0, i32 1) }, { i64, ptr } %t47)
  store %"compiler/diagmsg:Msg" %t50, ptr %l10
  br label %bb3
bb3:
  %t51 = load %"compiler/diagmsg:Msg", ptr %l10
  store %"compiler/diagmsg:Msg" %t51, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCopyShape(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i32
  %l2 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i32 246, ptr %l1
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
  %t8 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t9 = extractvalue { i64, ptr } { i64 85, ptr getelementptr inbounds (<{ i64, [85 x i8] }>, ptr @.d107, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 85, ptr getelementptr inbounds (<{ i64, [85 x i8] }>, ptr @.d107, i32 0, i32 1) }, 0
  %t12 = extractvalue { i64, ptr } %t6, 1
  %t13 = extractvalue { i64, ptr } %t6, 0
  %t14 = add i64 %t10, %t13
  %t15 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d108, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d108, i32 0, i32 1) }, 0
  %t17 = add i64 %t14, %t16
  %t19 = extractvalue { i64, ptr } %t7, 1
  %t20 = extractvalue { i64, ptr } %t7, 0
  %t21 = add i64 %t17, %t20
  %t22 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d109, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d109, i32 0, i32 1) }, 0
  %t24 = add i64 %t21, %t23
  %t26 = extractvalue { i64, ptr } %t8, 1
  %t27 = extractvalue { i64, ptr } %t8, 0
  %t28 = add i64 %t24, %t27
  %t29 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d110, i32 0, i32 1) }, 1
  %t30 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d110, i32 0, i32 1) }, 0
  %t31 = add i64 %t28, %t30
  %t32 = load i64, ptr %l2
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
  %t44 = load i64, ptr %l2
  %t45 = inttoptr i64 %t44 to ptr
  %t46 = extractvalue { i64, ptr } %t42, 0
  %t47 = extractvalue { i64, ptr } %t42, 1
  %t48 = mul i64 %t46, 1
  %t49 = call ptr @__olang_scope_alloc(ptr %t45, i64 %t48)
  call void @llvm.memcpy.p0.p0.i64(ptr %t49, ptr %t47, i64 %t48, i1 false)
  %t50 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr %t49, 1
  %t52 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t54 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t52, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d111, i32 0, i32 1) }, { i64, ptr } %t51)
  store %"compiler/diagmsg:Msg" %t54, ptr %l9
  br label %bb3
bb3:
  %t55 = load %"compiler/diagmsg:Msg", ptr %l9
  store %"compiler/diagmsg:Msg" %t55, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCtorFieldNamesVar(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3) #0 {
entry:
  %l4 = alloca i32
  %l5 = alloca i64
  %l13 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 374, ptr %l4
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
  %t10 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d112, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d112, i32 0, i32 1) }, 0
  %t13 = extractvalue { i64, ptr } %a0, 1
  %t14 = extractvalue { i64, ptr } %a0, 0
  %t15 = add i64 %t11, %t14
  %t16 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d113, i32 0, i32 1) }, 1
  %t17 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d113, i32 0, i32 1) }, 0
  %t18 = add i64 %t15, %t17
  %t20 = extractvalue { i64, ptr } %a1, 1
  %t21 = extractvalue { i64, ptr } %a1, 0
  %t22 = add i64 %t18, %t21
  %t23 = extractvalue { i64, ptr } { i64 105, ptr getelementptr inbounds (<{ i64, [105 x i8] }>, ptr @.d114, i32 0, i32 1) }, 1
  %t24 = extractvalue { i64, ptr } { i64 105, ptr getelementptr inbounds (<{ i64, [105 x i8] }>, ptr @.d114, i32 0, i32 1) }, 0
  %t25 = add i64 %t22, %t24
  %t27 = extractvalue { i64, ptr } %a2, 1
  %t28 = extractvalue { i64, ptr } %a2, 0
  %t29 = add i64 %t25, %t28
  %t30 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d115, i32 0, i32 1) }, 1
  %t31 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d115, i32 0, i32 1) }, 0
  %t32 = add i64 %t29, %t31
  %t34 = extractvalue { i64, ptr } %a3, 1
  %t35 = extractvalue { i64, ptr } %a3, 0
  %t36 = add i64 %t32, %t35
  %t37 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d116, i32 0, i32 1) }, 1
  %t38 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d116, i32 0, i32 1) }, 0
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
  %t62 = load i32, ptr %l4, !range !{i32 0, i32 884}
  %t64 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v4, ptr %v4, ptr %v4, i32 %t62, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d117, i32 0, i32 1) }, { i64, ptr } %t61)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCtorVarOfGeneric(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca i64
  %l11 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 376, ptr %l3
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
  %t12 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d118, i32 0, i32 1) }, 1
  %t13 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d118, i32 0, i32 1) }, 0
  %t14 = add i64 %t11, %t13
  %t16 = extractvalue { i64, ptr } %a1, 1
  %t17 = extractvalue { i64, ptr } %a1, 0
  %t18 = add i64 %t14, %t17
  %t19 = extractvalue { i64, ptr } { i64 81, ptr getelementptr inbounds (<{ i64, [81 x i8] }>, ptr @.d119, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 81, ptr getelementptr inbounds (<{ i64, [81 x i8] }>, ptr @.d119, i32 0, i32 1) }, 0
  %t21 = add i64 %t18, %t20
  %t23 = extractvalue { i64, ptr } %a2, 1
  %t24 = extractvalue { i64, ptr } %a2, 0
  %t25 = add i64 %t21, %t24
  %t26 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d120, i32 0, i32 1) }, 1
  %t27 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d120, i32 0, i32 1) }, 0
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
  %t48 = load i32, ptr %l3, !range !{i32 0, i32 884}
  %t50 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, i32 %t48, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d121, i32 0, i32 1) }, { i64, ptr } %t47)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDeclaredOverAggregate(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 234, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 72, ptr getelementptr inbounds (<{ i64, [72 x i8] }>, ptr @.d122, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 72, ptr getelementptr inbounds (<{ i64, [72 x i8] }>, ptr @.d122, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d123, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d123, i32 0, i32 1) }, 0
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
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d124, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDeclaredTwice(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 192, ptr %l1
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
  %t10 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d125, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d125, i32 0, i32 1) }, 0
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
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d126, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDefaultArgNotAllowed(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 522, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d127, i32 0, i32 1) }, { i64, ptr } { i64 67, ptr getelementptr inbounds (<{ i64, [67 x i8] }>, ptr @.d128, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDefaultOutsideTrait(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 289, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d129, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d129, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d130, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d130, i32 0, i32 1) }, 0
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
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d131, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDefaultScope(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 535, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d132, i32 0, i32 1) }, { i64, ptr } { i64 83, ptr getelementptr inbounds (<{ i64, [83 x i8] }>, ptr @.d133, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDefineNegRange(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 47, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d134, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d134, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d135, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d135, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d136, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d136, i32 0, i32 1) }, 0
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
  %t42 = load i32, ptr %l2, !range !{i32 0, i32 884}
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d137, i32 0, i32 1) }, { i64, ptr } %t41)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDestructInBody(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 83, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d138, i32 0, i32 1) }, { i64, ptr } { i64 118, ptr getelementptr inbounds (<{ i64, [118 x i8] }>, ptr @.d139, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDestructOneValue(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 565, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 58, ptr getelementptr inbounds (<{ i64, [58 x i8] }>, ptr @.d140, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 58, ptr getelementptr inbounds (<{ i64, [58 x i8] }>, ptr @.d140, i32 0, i32 1) }, 0
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
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d141, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDivideByZero(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 448, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d142, i32 0, i32 1) }, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d143, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDocNoItem(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca i32
  %l3 = alloca i64
  %l10 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i32 36, ptr %l2
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
  %t8 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d144, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d144, i32 0, i32 1) }, 0
  %t12 = extractvalue { i64, ptr } %a0, 1
  %t13 = extractvalue { i64, ptr } %a0, 0
  %t14 = add i64 %t10, %t13
  %t15 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d145, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d145, i32 0, i32 1) }, 0
  %t17 = add i64 %t14, %t16
  %t19 = extractvalue { i64, ptr } %t7, 1
  %t20 = extractvalue { i64, ptr } %t7, 0
  %t21 = add i64 %t17, %t20
  %t22 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d146, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d146, i32 0, i32 1) }, 0
  %t24 = add i64 %t21, %t23
  %t26 = extractvalue { i64, ptr } %t8, 1
  %t27 = extractvalue { i64, ptr } %t8, 0
  %t28 = add i64 %t24, %t27
  %t29 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d147, i32 0, i32 1) }, 1
  %t30 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d147, i32 0, i32 1) }, 0
  %t31 = add i64 %t28, %t30
  %t32 = load i64, ptr %l3
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
  %t44 = load i64, ptr %l3
  %t45 = inttoptr i64 %t44 to ptr
  %t46 = extractvalue { i64, ptr } %t42, 0
  %t47 = extractvalue { i64, ptr } %t42, 1
  %t48 = mul i64 %t46, 1
  %t49 = call ptr @__olang_scope_alloc(ptr %t45, i64 %t48)
  call void @llvm.memcpy.p0.p0.i64(ptr %t49, ptr %t47, i64 %t48, i1 false)
  %t50 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr %t49, 1
  %t52 = load i32, ptr %l2, !range !{i32 0, i32 884}
  %t54 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t52, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d148, i32 0, i32 1) }, { i64, ptr } %t51)
  store %"compiler/diagmsg:Msg" %t54, ptr %l10
  br label %bb3
bb3:
  %t55 = load %"compiler/diagmsg:Msg", ptr %l10
  store %"compiler/diagmsg:Msg" %t55, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDropRegistered(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l3 = alloca i32
  %l4 = alloca i64
  %l13 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i32 269, ptr %l3
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
  %t7 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t8 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t11 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d149, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d149, i32 0, i32 1) }, 0
  %t14 = extractvalue { i64, ptr } %t6, 1
  %t15 = extractvalue { i64, ptr } %t6, 0
  %t16 = add i64 %t12, %t15
  %t17 = extractvalue { i64, ptr } { i64 75, ptr getelementptr inbounds (<{ i64, [75 x i8] }>, ptr @.d150, i32 0, i32 1) }, 1
  %t18 = extractvalue { i64, ptr } { i64 75, ptr getelementptr inbounds (<{ i64, [75 x i8] }>, ptr @.d150, i32 0, i32 1) }, 0
  %t19 = add i64 %t16, %t18
  %t21 = extractvalue { i64, ptr } %t7, 1
  %t22 = extractvalue { i64, ptr } %t7, 0
  %t23 = add i64 %t19, %t22
  %t24 = extractvalue { i64, ptr } { i64 68, ptr getelementptr inbounds (<{ i64, [68 x i8] }>, ptr @.d151, i32 0, i32 1) }, 1
  %t25 = extractvalue { i64, ptr } { i64 68, ptr getelementptr inbounds (<{ i64, [68 x i8] }>, ptr @.d151, i32 0, i32 1) }, 0
  %t26 = add i64 %t23, %t25
  %t28 = extractvalue { i64, ptr } %t8, 1
  %t29 = extractvalue { i64, ptr } %t8, 0
  %t30 = add i64 %t26, %t29
  %t31 = extractvalue { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d152, i32 0, i32 1) }, 1
  %t32 = extractvalue { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d152, i32 0, i32 1) }, 0
  %t33 = add i64 %t30, %t32
  %t35 = extractvalue { i64, ptr } %t9, 1
  %t36 = extractvalue { i64, ptr } %t9, 0
  %t37 = add i64 %t33, %t36
  %t38 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d153, i32 0, i32 1) }, 1
  %t39 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d153, i32 0, i32 1) }, 0
  %t40 = add i64 %t37, %t39
  %t42 = extractvalue { i64, ptr } %a2, 1
  %t43 = extractvalue { i64, ptr } %a2, 0
  %t44 = add i64 %t40, %t43
  %t45 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d154, i32 0, i32 1) }, 1
  %t46 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d154, i32 0, i32 1) }, 0
  %t47 = add i64 %t44, %t46
  %t48 = load i64, ptr %l4
  %t49 = inttoptr i64 %t48 to ptr
  %t50 = call ptr @__olang_scope_alloc(ptr %t49, i64 %t47)
  call void @olang_textcopy(ptr %t50, ptr %t11, i64 %t12)
  %t51 = getelementptr i8, ptr %t50, i64 %t12
  call void @olang_textcopy(ptr %t51, ptr %t14, i64 %t15)
  %t52 = getelementptr i8, ptr %t51, i64 %t15
  call void @olang_textcopy(ptr %t52, ptr %t17, i64 %t18)
  %t53 = getelementptr i8, ptr %t52, i64 %t18
  call void @olang_textcopy(ptr %t53, ptr %t21, i64 %t22)
  %t54 = getelementptr i8, ptr %t53, i64 %t22
  call void @olang_textcopy(ptr %t54, ptr %t24, i64 %t25)
  %t55 = getelementptr i8, ptr %t54, i64 %t25
  call void @olang_textcopy(ptr %t55, ptr %t28, i64 %t29)
  %t56 = getelementptr i8, ptr %t55, i64 %t29
  call void @olang_textcopy(ptr %t56, ptr %t31, i64 %t32)
  %t57 = getelementptr i8, ptr %t56, i64 %t32
  call void @olang_textcopy(ptr %t57, ptr %t35, i64 %t36)
  %t58 = getelementptr i8, ptr %t57, i64 %t36
  call void @olang_textcopy(ptr %t58, ptr %t38, i64 %t39)
  %t59 = getelementptr i8, ptr %t58, i64 %t39
  call void @olang_textcopy(ptr %t59, ptr %t42, i64 %t43)
  %t60 = getelementptr i8, ptr %t59, i64 %t43
  call void @olang_textcopy(ptr %t60, ptr %t45, i64 %t46)
  %t61 = insertvalue { i64, ptr } undef, i64 %t47, 0
  %t62 = insertvalue { i64, ptr } %t61, ptr %t50, 1
  %t64 = load i64, ptr %l4
  %t65 = inttoptr i64 %t64 to ptr
  %t66 = extractvalue { i64, ptr } %t62, 0
  %t67 = extractvalue { i64, ptr } %t62, 1
  %t68 = mul i64 %t66, 1
  %t69 = call ptr @__olang_scope_alloc(ptr %t65, i64 %t68)
  call void @llvm.memcpy.p0.p0.i64(ptr %t69, ptr %t67, i64 %t68, i1 false)
  %t70 = insertvalue { i64, ptr } undef, i64 %t66, 0
  %t71 = insertvalue { i64, ptr } %t70, ptr %t69, 1
  %t72 = load i32, ptr %l3, !range !{i32 0, i32 884}
  %t74 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, i32 %t72, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d155, i32 0, i32 1) }, { i64, ptr } %t71)
  store %"compiler/diagmsg:Msg" %t74, ptr %l13
  br label %bb3
bb3:
  %t75 = load %"compiler/diagmsg:Msg", ptr %l13
  store %"compiler/diagmsg:Msg" %t75, ptr %rv
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
  %l10 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  store { i64, ptr } %a0, ptr %l0
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
  %t6 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t9 = extractvalue { i64, ptr } { i64 77, ptr getelementptr inbounds (<{ i64, [77 x i8] }>, ptr @.d156, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 77, ptr getelementptr inbounds (<{ i64, [77 x i8] }>, ptr @.d156, i32 0, i32 1) }, 0
  %t12 = extractvalue { i64, ptr } %t6, 1
  %t13 = extractvalue { i64, ptr } %t6, 0
  %t14 = add i64 %t10, %t13
  %t15 = extractvalue { i64, ptr } { i64 82, ptr getelementptr inbounds (<{ i64, [82 x i8] }>, ptr @.d157, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 82, ptr getelementptr inbounds (<{ i64, [82 x i8] }>, ptr @.d157, i32 0, i32 1) }, 0
  %t17 = add i64 %t14, %t16
  %t19 = extractvalue { i64, ptr } %t7, 1
  %t20 = extractvalue { i64, ptr } %t7, 0
  %t21 = add i64 %t17, %t20
  %t22 = extractvalue { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d158, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d158, i32 0, i32 1) }, 0
  %t24 = add i64 %t21, %t23
  %t26 = extractvalue { i64, ptr } %a1, 1
  %t27 = extractvalue { i64, ptr } %a1, 0
  %t28 = add i64 %t24, %t27
  %t29 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d159, i32 0, i32 1) }, 1
  %t30 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d159, i32 0, i32 1) }, 0
  %t31 = add i64 %t28, %t30
  %t32 = load i64, ptr %l3
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
  %t44 = load i64, ptr %l3
  %t45 = inttoptr i64 %t44 to ptr
  %t46 = extractvalue { i64, ptr } %t42, 0
  %t47 = extractvalue { i64, ptr } %t42, 1
  %t48 = mul i64 %t46, 1
  %t49 = call ptr @__olang_scope_alloc(ptr %t45, i64 %t48)
  call void @llvm.memcpy.p0.p0.i64(ptr %t49, ptr %t47, i64 %t48, i1 false)
  %t50 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr %t49, 1
  %t52 = load i32, ptr %l2, !range !{i32 0, i32 884}
  %t54 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t52, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d160, i32 0, i32 1) }, { i64, ptr } %t51)
  store %"compiler/diagmsg:Msg" %t54, ptr %l10
  br label %bb3
bb3:
  %t55 = load %"compiler/diagmsg:Msg", ptr %l10
  store %"compiler/diagmsg:Msg" %t55, ptr %rv
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
  store i32 527, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d161, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d161, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d162, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d162, i32 0, i32 1) }, 0
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
  %t38 = load i32, ptr %l2, !range !{i32 0, i32 884}
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t38, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d163, i32 0, i32 1) }, { i64, ptr } %t37)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eEqShape(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 245, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d164, i32 0, i32 1) }, { i64, ptr } { i64 66, ptr getelementptr inbounds (<{ i64, [66 x i8] }>, ptr @.d165, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eEqStrWrites(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 285, ptr %l1
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
  %t10 = extractvalue { i64, ptr } { i64 85, ptr getelementptr inbounds (<{ i64, [85 x i8] }>, ptr @.d166, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 85, ptr getelementptr inbounds (<{ i64, [85 x i8] }>, ptr @.d166, i32 0, i32 1) }, 0
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
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d167, i32 0, i32 1) }, { i64, ptr } %t27)
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
  store i32 791, ptr %l3
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
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d168, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d168, i32 0, i32 1) }, 0
  %t12 = extractvalue { i64, ptr } %a0, 1
  %t13 = extractvalue { i64, ptr } %a0, 0
  %t14 = add i64 %t10, %t13
  %t15 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d169, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d169, i32 0, i32 1) }, 0
  %t17 = add i64 %t14, %t16
  %t19 = extractvalue { i64, ptr } %a1, 1
  %t20 = extractvalue { i64, ptr } %a1, 0
  %t21 = add i64 %t17, %t20
  %t22 = extractvalue { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d170, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d170, i32 0, i32 1) }, 0
  %t24 = add i64 %t21, %t23
  %t26 = extractvalue { i64, ptr } %a2, 1
  %t27 = extractvalue { i64, ptr } %a2, 0
  %t28 = add i64 %t24, %t27
  %t29 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d168, i32 0, i32 1) }, 1
  %t30 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d168, i32 0, i32 1) }, 0
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
  %t52 = load i32, ptr %l3, !range !{i32 0, i32 884}
  %t54 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, i32 %t52, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d171, i32 0, i32 1) }, { i64, ptr } %t51)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrPatternBindAlts(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 814, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d172, i32 0, i32 1) }, { i64, ptr } { i64 99, ptr getelementptr inbounds (<{ i64, [99 x i8] }>, ptr @.d173, i32 0, i32 1) })
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
  store i32 201, ptr %l1
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
  %t10 = extractvalue { i64, ptr } { i64 59, ptr getelementptr inbounds (<{ i64, [59 x i8] }>, ptr @.d174, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 59, ptr getelementptr inbounds (<{ i64, [59 x i8] }>, ptr @.d174, i32 0, i32 1) }, 0
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
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d175, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrValueNoOp(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 792, ptr %l2
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
  %t11 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d176, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d176, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t15 = extractvalue { i64, ptr } %a1, 1
  %t16 = extractvalue { i64, ptr } %a1, 0
  %t17 = add i64 %t13, %t16
  %t18 = extractvalue { i64, ptr } { i64 88, ptr getelementptr inbounds (<{ i64, [88 x i8] }>, ptr @.d177, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 88, ptr getelementptr inbounds (<{ i64, [88 x i8] }>, ptr @.d177, i32 0, i32 1) }, 0
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
  %t38 = load i32, ptr %l2, !range !{i32 0, i32 884}
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t38, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d178, i32 0, i32 1) }, { i64, ptr } %t37)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrValueNotHeld(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca i64
  %l11 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 795, ptr %l3
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
  %t9 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d179, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d179, i32 0, i32 1) }, 0
  %t12 = extractvalue { i64, ptr } %a0, 1
  %t13 = extractvalue { i64, ptr } %a0, 0
  %t14 = add i64 %t10, %t13
  %t15 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d180, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d180, i32 0, i32 1) }, 0
  %t17 = add i64 %t14, %t16
  %t19 = extractvalue { i64, ptr } %a1, 1
  %t20 = extractvalue { i64, ptr } %a1, 0
  %t21 = add i64 %t17, %t20
  %t22 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d181, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d181, i32 0, i32 1) }, 0
  %t24 = add i64 %t21, %t23
  %t26 = extractvalue { i64, ptr } %a2, 1
  %t27 = extractvalue { i64, ptr } %a2, 0
  %t28 = add i64 %t24, %t27
  %t29 = extractvalue { i64, ptr } { i64 63, ptr getelementptr inbounds (<{ i64, [63 x i8] }>, ptr @.d182, i32 0, i32 1) }, 1
  %t30 = extractvalue { i64, ptr } { i64 63, ptr getelementptr inbounds (<{ i64, [63 x i8] }>, ptr @.d182, i32 0, i32 1) }, 0
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
  %t52 = load i32, ptr %l3, !range !{i32 0, i32 884}
  %t54 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, i32 %t52, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d183, i32 0, i32 1) }, { i64, ptr } %t51)
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
  store i32 641, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d184, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d184, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d185, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d185, i32 0, i32 1) }, 0
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
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d186, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eExportName(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
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
  %t10 = extractvalue { i64, ptr } { i64 62, ptr getelementptr inbounds (<{ i64, [62 x i8] }>, ptr @.d187, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 62, ptr getelementptr inbounds (<{ i64, [62 x i8] }>, ptr @.d187, i32 0, i32 1) }, 0
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
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d188, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eExtendsNotBase(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 232, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d189, i32 0, i32 1) }, { i64, ptr } { i64 54, ptr getelementptr inbounds (<{ i64, [54 x i8] }>, ptr @.d190, i32 0, i32 1) })
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
  store i32 202, ptr %l1
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
  %t10 = extractvalue { i64, ptr } { i64 188, ptr getelementptr inbounds (<{ i64, [188 x i8] }>, ptr @.d191, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 188, ptr getelementptr inbounds (<{ i64, [188 x i8] }>, ptr @.d191, i32 0, i32 1) }, 0
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
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d192, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFieldBindingUnknown(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 364, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d193, i32 0, i32 1) }, { i64, ptr } { i64 117, ptr getelementptr inbounds (<{ i64, [117 x i8] }>, ptr @.d194, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFieldUnassigned(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca i64
  %l11 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 706, ptr %l3
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
  %t9 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d195, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d195, i32 0, i32 1) }, 0
  %t12 = extractvalue { i64, ptr } %a0, 1
  %t13 = extractvalue { i64, ptr } %a0, 0
  %t14 = add i64 %t10, %t13
  %t15 = extractvalue { i64, ptr } { i64 61, ptr getelementptr inbounds (<{ i64, [61 x i8] }>, ptr @.d196, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 61, ptr getelementptr inbounds (<{ i64, [61 x i8] }>, ptr @.d196, i32 0, i32 1) }, 0
  %t17 = add i64 %t14, %t16
  %t19 = extractvalue { i64, ptr } %a1, 1
  %t20 = extractvalue { i64, ptr } %a1, 0
  %t21 = add i64 %t17, %t20
  %t22 = extractvalue { i64, ptr } { i64 63, ptr getelementptr inbounds (<{ i64, [63 x i8] }>, ptr @.d197, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 63, ptr getelementptr inbounds (<{ i64, [63 x i8] }>, ptr @.d197, i32 0, i32 1) }, 0
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
  %t48 = load i32, ptr %l3, !range !{i32 0, i32 884}
  %t50 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, i32 %t48, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d198, i32 0, i32 1) }, { i64, ptr } %t47)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eForeignByValue(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i32
  %l2 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i32 212, ptr %l1
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
  %t8 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t6, 1
  %t11 = extractvalue { i64, ptr } %t6, 0
  %t12 = extractvalue { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d199, i32 0, i32 1) }, 1
  %t13 = extractvalue { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d199, i32 0, i32 1) }, 0
  %t14 = add i64 %t11, %t13
  %t16 = extractvalue { i64, ptr } %t7, 1
  %t17 = extractvalue { i64, ptr } %t7, 0
  %t18 = add i64 %t14, %t17
  %t19 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d200, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d200, i32 0, i32 1) }, 0
  %t21 = add i64 %t18, %t20
  %t23 = extractvalue { i64, ptr } %t8, 1
  %t24 = extractvalue { i64, ptr } %t8, 0
  %t25 = add i64 %t21, %t24
  %t26 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d201, i32 0, i32 1) }, 1
  %t27 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d201, i32 0, i32 1) }, 0
  %t28 = add i64 %t25, %t27
  %t29 = load i64, ptr %l2
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
  %t40 = load i64, ptr %l2
  %t41 = inttoptr i64 %t40 to ptr
  %t42 = extractvalue { i64, ptr } %t38, 0
  %t43 = extractvalue { i64, ptr } %t38, 1
  %t44 = mul i64 %t42, 1
  %t45 = call ptr @__olang_scope_alloc(ptr %t41, i64 %t44)
  call void @llvm.memcpy.p0.p0.i64(ptr %t45, ptr %t43, i64 %t44, i1 false)
  %t46 = insertvalue { i64, ptr } undef, i64 %t42, 0
  %t47 = insertvalue { i64, ptr } %t46, ptr %t45, 1
  %t48 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t50 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t48, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d202, i32 0, i32 1) }, { i64, ptr } %t47)
  store %"compiler/diagmsg:Msg" %t50, ptr %l9
  br label %bb3
bb3:
  %t51 = load %"compiler/diagmsg:Msg", ptr %l9
  store %"compiler/diagmsg:Msg" %t51, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFuncTypeErrsUnwritten(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 125, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d203, i32 0, i32 1) }, { i64, ptr } { i64 83, ptr getelementptr inbounds (<{ i64, [83 x i8] }>, ptr @.d204, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGenByValue(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
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
  store i32 279, ptr %l1
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
  %t9 = extractvalue { i64, ptr } %t6, 1
  %t10 = extractvalue { i64, ptr } %t6, 0
  %t11 = extractvalue { i64, ptr } { i64 96, ptr getelementptr inbounds (<{ i64, [96 x i8] }>, ptr @.d205, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 96, ptr getelementptr inbounds (<{ i64, [96 x i8] }>, ptr @.d205, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t15 = extractvalue { i64, ptr } %t7, 1
  %t16 = extractvalue { i64, ptr } %t7, 0
  %t17 = add i64 %t13, %t16
  %t18 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d206, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d206, i32 0, i32 1) }, 0
  %t20 = add i64 %t17, %t19
  %t21 = load i64, ptr %l2
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
  %t30 = load i64, ptr %l2
  %t31 = inttoptr i64 %t30 to ptr
  %t32 = extractvalue { i64, ptr } %t28, 0
  %t33 = extractvalue { i64, ptr } %t28, 1
  %t34 = mul i64 %t32, 1
  %t35 = call ptr @__olang_scope_alloc(ptr %t31, i64 %t34)
  call void @llvm.memcpy.p0.p0.i64(ptr %t35, ptr %t33, i64 %t34, i1 false)
  %t36 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t35, 1
  %t38 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t38, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d207, i32 0, i32 1) }, { i64, ptr } %t37)
  store %"compiler/diagmsg:Msg" %t40, ptr %l8
  br label %bb3
bb3:
  %t41 = load %"compiler/diagmsg:Msg", ptr %l8
  store %"compiler/diagmsg:Msg" %t41, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGenByValueAway(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
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
  store i32 280, ptr %l1
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
  %t8 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d208, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d208, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %t6, 1
  %t12 = extractvalue { i64, ptr } %t6, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 98, ptr getelementptr inbounds (<{ i64, [98 x i8] }>, ptr @.d209, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 98, ptr getelementptr inbounds (<{ i64, [98 x i8] }>, ptr @.d209, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %t7, 1
  %t19 = extractvalue { i64, ptr } %t7, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d210, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d210, i32 0, i32 1) }, 0
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
  %t42 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t42, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d211, i32 0, i32 1) }, { i64, ptr } %t41)
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
  store i32 622, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 79, ptr getelementptr inbounds (<{ i64, [79 x i8] }>, ptr @.d212, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 79, ptr getelementptr inbounds (<{ i64, [79 x i8] }>, ptr @.d212, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d213, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d213, i32 0, i32 1) }, 0
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
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d214, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGenericNotAValue(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
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
  store i32 560, ptr %l1
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
  %t8 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d215, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d215, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %t6, 1
  %t12 = extractvalue { i64, ptr } %t6, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 75, ptr getelementptr inbounds (<{ i64, [75 x i8] }>, ptr @.d216, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 75, ptr getelementptr inbounds (<{ i64, [75 x i8] }>, ptr @.d216, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %t7, 1
  %t19 = extractvalue { i64, ptr } %t7, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d217, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d217, i32 0, i32 1) }, 0
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
  %t42 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t42, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d218, i32 0, i32 1) }, { i64, ptr } %t41)
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
  store i32 249, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d219, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d219, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 61, ptr getelementptr inbounds (<{ i64, [61 x i8] }>, ptr @.d220, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 61, ptr getelementptr inbounds (<{ i64, [61 x i8] }>, ptr @.d220, i32 0, i32 1) }, 0
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
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d221, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportAliasConflict(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 107, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 48, ptr getelementptr inbounds (<{ i64, [48 x i8] }>, ptr @.d222, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 48, ptr getelementptr inbounds (<{ i64, [48 x i8] }>, ptr @.d222, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d223, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d223, i32 0, i32 1) }, 0
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
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d224, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportIsPrivate(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 110, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d225, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d225, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 67, ptr getelementptr inbounds (<{ i64, [67 x i8] }>, ptr @.d226, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 67, ptr getelementptr inbounds (<{ i64, [67 x i8] }>, ptr @.d226, i32 0, i32 1) }, 0
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
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d227, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportLockedFetchFailed(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 100, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 48, ptr getelementptr inbounds (<{ i64, [48 x i8] }>, ptr @.d228, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 48, ptr getelementptr inbounds (<{ i64, [48 x i8] }>, ptr @.d228, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d229, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d229, i32 0, i32 1) }, 0
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
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d230, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportPathTooLong(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 101, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d231, i32 0, i32 1) }, { i64, ptr } { i64 43, ptr getelementptr inbounds (<{ i64, [43 x i8] }>, ptr @.d232, i32 0, i32 1) })
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
  store i32 112, ptr %l1
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
  %t10 = extractvalue { i64, ptr } { i64 61, ptr getelementptr inbounds (<{ i64, [61 x i8] }>, ptr @.d233, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 61, ptr getelementptr inbounds (<{ i64, [61 x i8] }>, ptr @.d233, i32 0, i32 1) }, 0
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
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d234, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eInterpLink(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 214, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d235, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d235, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 48, ptr getelementptr inbounds (<{ i64, [48 x i8] }>, ptr @.d236, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 48, ptr getelementptr inbounds (<{ i64, [48 x i8] }>, ptr @.d236, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d237, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d237, i32 0, i32 1) }, 0
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
  %t42 = load i32, ptr %l2, !range !{i32 0, i32 884}
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d238, i32 0, i32 1) }, { i64, ptr } %t41)
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
  store i32 162, ptr %l1
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
  %t10 = extractvalue { i64, ptr } { i64 63, ptr getelementptr inbounds (<{ i64, [63 x i8] }>, ptr @.d239, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 63, ptr getelementptr inbounds (<{ i64, [63 x i8] }>, ptr @.d239, i32 0, i32 1) }, 0
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
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d240, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eIsCaseWritten(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
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
  store i32 490, ptr %l3
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
  %t10 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d241, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d241, i32 0, i32 1) }, 0
  %t13 = extractvalue { i64, ptr } %t6, 1
  %t14 = extractvalue { i64, ptr } %t6, 0
  %t15 = add i64 %t11, %t14
  %t16 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d242, i32 0, i32 1) }, 1
  %t17 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d242, i32 0, i32 1) }, 0
  %t18 = add i64 %t15, %t17
  %t20 = extractvalue { i64, ptr } %a1, 1
  %t21 = extractvalue { i64, ptr } %a1, 0
  %t22 = add i64 %t18, %t21
  %t23 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d243, i32 0, i32 1) }, 1
  %t24 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d243, i32 0, i32 1) }, 0
  %t25 = add i64 %t22, %t24
  %t27 = extractvalue { i64, ptr } %t8, 1
  %t28 = extractvalue { i64, ptr } %t8, 0
  %t29 = add i64 %t25, %t28
  %t30 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d243, i32 0, i32 1) }, 1
  %t31 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d243, i32 0, i32 1) }, 0
  %t32 = add i64 %t29, %t31
  %t34 = extractvalue { i64, ptr } %a2, 1
  %t35 = extractvalue { i64, ptr } %a2, 0
  %t36 = add i64 %t32, %t35
  %t37 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d244, i32 0, i32 1) }, 1
  %t38 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d244, i32 0, i32 1) }, 0
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
  %t62 = load i32, ptr %l3, !range !{i32 0, i32 884}
  %t64 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, i32 %t62, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d245, i32 0, i32 1) }, { i64, ptr } %t61)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eIsDirectory(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 52, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d246, i32 0, i32 1) }, { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d247, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eJoinCannotFail(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 656, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d248, i32 0, i32 1) }, { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d249, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eJoinNextLine(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 579, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d250, i32 0, i32 1) }, { i64, ptr } { i64 100, ptr getelementptr inbounds (<{ i64, [100 x i8] }>, ptr @.d251, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eJoinPieceCalled(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 465, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d252, i32 0, i32 1) }, { i64, ptr } { i64 77, ptr getelementptr inbounds (<{ i64, [77 x i8] }>, ptr @.d253, i32 0, i32 1) })
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
  store i32 81, ptr %l1
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
  %t10 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d254, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d254, i32 0, i32 1) }, 0
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
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d255, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eKeywordFieldRead(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 82, ptr %l1
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
  %t10 = extractvalue { i64, ptr } { i64 99, ptr getelementptr inbounds (<{ i64, [99 x i8] }>, ptr @.d256, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 99, ptr getelementptr inbounds (<{ i64, [99 x i8] }>, ptr @.d256, i32 0, i32 1) }, 0
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
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d257, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLaneMaskBool(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 865, ptr %l2
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
  %t11 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d258, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d258, i32 0, i32 1) }, 0
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
  %t34 = load i32, ptr %l2, !range !{i32 0, i32 884}
  %t36 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t34, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d259, i32 0, i32 1) }, { i64, ptr } %t33)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLessNotBool(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 243, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d260, i32 0, i32 1) }, { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d261, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eListingQuick(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 883, ptr %l1
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
  %t10 = extractvalue { i64, ptr } { i64 78, ptr getelementptr inbounds (<{ i64, [78 x i8] }>, ptr @.d262, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 78, ptr getelementptr inbounds (<{ i64, [78 x i8] }>, ptr @.d262, i32 0, i32 1) }, 0
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
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d263, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eListingUsage(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
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
  store i32 880, ptr %l1
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
  %t8 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d264, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d264, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %t6, 1
  %t12 = extractvalue { i64, ptr } %t6, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 80, ptr getelementptr inbounds (<{ i64, [80 x i8] }>, ptr @.d265, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 80, ptr getelementptr inbounds (<{ i64, [80 x i8] }>, ptr @.d265, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %t7, 1
  %t19 = extractvalue { i64, ptr } %t7, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d266, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d266, i32 0, i32 1) }, 0
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
  %t42 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t42, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d267, i32 0, i32 1) }, { i64, ptr } %t41)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLiteralDoesNotMeet(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca i64
  %l11 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 446, ptr %l3
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
  %t9 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d268, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d268, i32 0, i32 1) }, 0
  %t12 = extractvalue { i64, ptr } %a0, 1
  %t13 = extractvalue { i64, ptr } %a0, 0
  %t14 = add i64 %t10, %t13
  %t15 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d269, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d269, i32 0, i32 1) }, 0
  %t17 = add i64 %t14, %t16
  %t19 = extractvalue { i64, ptr } %a1, 1
  %t20 = extractvalue { i64, ptr } %a1, 0
  %t21 = add i64 %t17, %t20
  %t22 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d270, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d270, i32 0, i32 1) }, 0
  %t24 = add i64 %t21, %t23
  %t26 = extractvalue { i64, ptr } %a2, 1
  %t27 = extractvalue { i64, ptr } %a2, 0
  %t28 = add i64 %t24, %t27
  %t29 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d271, i32 0, i32 1) }, 1
  %t30 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d271, i32 0, i32 1) }, 0
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
  %t52 = load i32, ptr %l3, !range !{i32 0, i32 884}
  %t54 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, i32 %t52, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d272, i32 0, i32 1) }, { i64, ptr } %t51)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLiteralUnique(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca i32
  %l3 = alloca i64
  %l10 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i32 550, ptr %l2
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
  %t8 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t9 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d273, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d273, i32 0, i32 1) }, 0
  %t12 = extractvalue { i64, ptr } %t6, 1
  %t13 = extractvalue { i64, ptr } %t6, 0
  %t14 = add i64 %t10, %t13
  %t15 = extractvalue { i64, ptr } { i64 60, ptr getelementptr inbounds (<{ i64, [60 x i8] }>, ptr @.d274, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 60, ptr getelementptr inbounds (<{ i64, [60 x i8] }>, ptr @.d274, i32 0, i32 1) }, 0
  %t17 = add i64 %t14, %t16
  %t19 = extractvalue { i64, ptr } %a1, 1
  %t20 = extractvalue { i64, ptr } %a1, 0
  %t21 = add i64 %t17, %t20
  %t22 = extractvalue { i64, ptr } { i64 51, ptr getelementptr inbounds (<{ i64, [51 x i8] }>, ptr @.d275, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 51, ptr getelementptr inbounds (<{ i64, [51 x i8] }>, ptr @.d275, i32 0, i32 1) }, 0
  %t24 = add i64 %t21, %t23
  %t26 = extractvalue { i64, ptr } %t8, 1
  %t27 = extractvalue { i64, ptr } %t8, 0
  %t28 = add i64 %t24, %t27
  %t29 = extractvalue { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d276, i32 0, i32 1) }, 1
  %t30 = extractvalue { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d276, i32 0, i32 1) }, 0
  %t31 = add i64 %t28, %t30
  %t32 = load i64, ptr %l3
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
  %t44 = load i64, ptr %l3
  %t45 = inttoptr i64 %t44 to ptr
  %t46 = extractvalue { i64, ptr } %t42, 0
  %t47 = extractvalue { i64, ptr } %t42, 1
  %t48 = mul i64 %t46, 1
  %t49 = call ptr @__olang_scope_alloc(ptr %t45, i64 %t48)
  call void @llvm.memcpy.p0.p0.i64(ptr %t49, ptr %t47, i64 %t48, i1 false)
  %t50 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr %t49, 1
  %t52 = load i32, ptr %l2, !range !{i32 0, i32 884}
  %t54 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t52, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d277, i32 0, i32 1) }, { i64, ptr } %t51)
  store %"compiler/diagmsg:Msg" %t54, ptr %l10
  br label %bb3
bb3:
  %t55 = load %"compiler/diagmsg:Msg", ptr %l10
  store %"compiler/diagmsg:Msg" %t55, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMainSignature(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 731, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d278, i32 0, i32 1) }, { i64, ptr } { i64 84, ptr getelementptr inbounds (<{ i64, [84 x i8] }>, ptr @.d279, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMatchValueUncovered(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 603, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d280, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d280, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 70, ptr getelementptr inbounds (<{ i64, [70 x i8] }>, ptr @.d281, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 70, ptr getelementptr inbounds (<{ i64, [70 x i8] }>, ptr @.d281, i32 0, i32 1) }, 0
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
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d282, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMethodClashesInherited(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 292, ptr %l2
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
  %t11 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d283, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d283, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t15 = extractvalue { i64, ptr } %a1, 1
  %t16 = extractvalue { i64, ptr } %a1, 0
  %t17 = add i64 %t13, %t16
  %t18 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d284, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d284, i32 0, i32 1) }, 0
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
  %t38 = load i32, ptr %l2, !range !{i32 0, i32 884}
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t38, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d285, i32 0, i32 1) }, { i64, ptr } %t37)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMethodClashesSupplied(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 294, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d286, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d286, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d287, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d287, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d288, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d288, i32 0, i32 1) }, 0
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
  %t42 = load i32, ptr %l2, !range !{i32 0, i32 884}
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d289, i32 0, i32 1) }, { i64, ptr } %t41)
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
  store i32 290, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d290, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d290, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d291, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d291, i32 0, i32 1) }, 0
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
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d292, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMethodOverlap(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 293, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d293, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d293, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d294, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d294, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d295, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d295, i32 0, i32 1) }, 0
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
  %t42 = load i32, ptr %l2, !range !{i32 0, i32 884}
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d296, i32 0, i32 1) }, { i64, ptr } %t41)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eModeNoFiles(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 34, ptr %l1
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
  %t10 = extractvalue { i64, ptr } { i64 50, ptr getelementptr inbounds (<{ i64, [50 x i8] }>, ptr @.d297, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 50, ptr getelementptr inbounds (<{ i64, [50 x i8] }>, ptr @.d297, i32 0, i32 1) }, 0
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
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d298, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMutOnValueType(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
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
  %t7 = extractvalue { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d299, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d299, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d300, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d300, i32 0, i32 1) }, 0
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
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d301, i32 0, i32 1) }, { i64, ptr } %t31)
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
  store i32 304, ptr %l3
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
  %t12 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d302, i32 0, i32 1) }, 1
  %t13 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d302, i32 0, i32 1) }, 0
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
  %t40 = load i32, ptr %l3, !range !{i32 0, i32 884}
  %t42 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, i32 %t40, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d303, i32 0, i32 1) }, { i64, ptr } %t39)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoClang(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 54, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 57, ptr getelementptr inbounds (<{ i64, [57 x i8] }>, ptr @.d304, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 57, ptr getelementptr inbounds (<{ i64, [57 x i8] }>, ptr @.d304, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d305, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d305, i32 0, i32 1) }, 0
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
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d306, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoLimit(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca i64
  %l11 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 753, ptr %l3
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
  %t12 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d307, i32 0, i32 1) }, 1
  %t13 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d307, i32 0, i32 1) }, 0
  %t14 = add i64 %t11, %t13
  %t16 = extractvalue { i64, ptr } %a1, 1
  %t17 = extractvalue { i64, ptr } %a1, 0
  %t18 = add i64 %t14, %t17
  %t19 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d308, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d308, i32 0, i32 1) }, 0
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
  %t44 = load i32, ptr %l3, !range !{i32 0, i32 884}
  %t46 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, i32 %t44, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d309, i32 0, i32 1) }, { i64, ptr } %t43)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoRule(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 40, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d310, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d310, i32 0, i32 1) }, 0
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
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d311, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotASource(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 14, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d312, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d312, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 56, ptr getelementptr inbounds (<{ i64, [56 x i8] }>, ptr @.d313, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 56, ptr getelementptr inbounds (<{ i64, [56 x i8] }>, ptr @.d313, i32 0, i32 1) }, 0
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
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d314, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotRegular(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 51, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d315, i32 0, i32 1) }, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d316, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteAnyMethod(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 190, ptr %l1
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
  %t10 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d317, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d317, i32 0, i32 1) }, 0
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
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d318, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteEffect(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l3 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t4 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v0, ptr %v1, i32 677, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d319, i32 0, i32 1) }, { i64, ptr } %a0)
  store %"compiler/diagmsg:Msg" %t4, ptr %l3
  br label %bb1
bb1:
  %t5 = load %"compiler/diagmsg:Msg", ptr %l3
  store %"compiler/diagmsg:Msg" %t5, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteGenSlot(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 281, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d320, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d320, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d321, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d321, i32 0, i32 1) }, 0
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
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d322, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteLiteralRange(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, { i64, ptr } %a4) #0 {
entry:
  %l5 = alloca i32
  %l6 = alloca i64
  %l15 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 435, ptr %l5
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
  %t11 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d323, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d323, i32 0, i32 1) }, 0
  %t14 = extractvalue { i64, ptr } %a0, 1
  %t15 = extractvalue { i64, ptr } %a0, 0
  %t16 = add i64 %t12, %t15
  %t17 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d324, i32 0, i32 1) }, 1
  %t18 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d324, i32 0, i32 1) }, 0
  %t19 = add i64 %t16, %t18
  %t21 = extractvalue { i64, ptr } %a1, 1
  %t22 = extractvalue { i64, ptr } %a1, 0
  %t23 = add i64 %t19, %t22
  %t24 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d325, i32 0, i32 1) }, 1
  %t25 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d325, i32 0, i32 1) }, 0
  %t26 = add i64 %t23, %t25
  %t28 = extractvalue { i64, ptr } %a2, 1
  %t29 = extractvalue { i64, ptr } %a2, 0
  %t30 = add i64 %t26, %t29
  %t31 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d326, i32 0, i32 1) }, 1
  %t32 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d326, i32 0, i32 1) }, 0
  %t33 = add i64 %t30, %t32
  %t35 = extractvalue { i64, ptr } %a3, 1
  %t36 = extractvalue { i64, ptr } %a3, 0
  %t37 = add i64 %t33, %t36
  %t38 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d327, i32 0, i32 1) }, 1
  %t39 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d327, i32 0, i32 1) }, 0
  %t40 = add i64 %t37, %t39
  %t42 = extractvalue { i64, ptr } %a4, 1
  %t43 = extractvalue { i64, ptr } %a4, 0
  %t44 = add i64 %t40, %t43
  %t45 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d328, i32 0, i32 1) }, 1
  %t46 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d328, i32 0, i32 1) }, 0
  %t47 = add i64 %t44, %t46
  %t48 = load i64, ptr %l6
  %t49 = inttoptr i64 %t48 to ptr
  %t50 = call ptr @__olang_scope_alloc(ptr %t49, i64 %t47)
  call void @olang_textcopy(ptr %t50, ptr %t11, i64 %t12)
  %t51 = getelementptr i8, ptr %t50, i64 %t12
  call void @olang_textcopy(ptr %t51, ptr %t14, i64 %t15)
  %t52 = getelementptr i8, ptr %t51, i64 %t15
  call void @olang_textcopy(ptr %t52, ptr %t17, i64 %t18)
  %t53 = getelementptr i8, ptr %t52, i64 %t18
  call void @olang_textcopy(ptr %t53, ptr %t21, i64 %t22)
  %t54 = getelementptr i8, ptr %t53, i64 %t22
  call void @olang_textcopy(ptr %t54, ptr %t24, i64 %t25)
  %t55 = getelementptr i8, ptr %t54, i64 %t25
  call void @olang_textcopy(ptr %t55, ptr %t28, i64 %t29)
  %t56 = getelementptr i8, ptr %t55, i64 %t29
  call void @olang_textcopy(ptr %t56, ptr %t31, i64 %t32)
  %t57 = getelementptr i8, ptr %t56, i64 %t32
  call void @olang_textcopy(ptr %t57, ptr %t35, i64 %t36)
  %t58 = getelementptr i8, ptr %t57, i64 %t36
  call void @olang_textcopy(ptr %t58, ptr %t38, i64 %t39)
  %t59 = getelementptr i8, ptr %t58, i64 %t39
  call void @olang_textcopy(ptr %t59, ptr %t42, i64 %t43)
  %t60 = getelementptr i8, ptr %t59, i64 %t43
  call void @olang_textcopy(ptr %t60, ptr %t45, i64 %t46)
  %t61 = insertvalue { i64, ptr } undef, i64 %t47, 0
  %t62 = insertvalue { i64, ptr } %t61, ptr %t50, 1
  %t64 = load i64, ptr %l6
  %t65 = inttoptr i64 %t64 to ptr
  %t66 = extractvalue { i64, ptr } %t62, 0
  %t67 = extractvalue { i64, ptr } %t62, 1
  %t68 = mul i64 %t66, 1
  %t69 = call ptr @__olang_scope_alloc(ptr %t65, i64 %t68)
  call void @llvm.memcpy.p0.p0.i64(ptr %t69, ptr %t67, i64 %t68, i1 false)
  %t70 = insertvalue { i64, ptr } undef, i64 %t66, 0
  %t71 = insertvalue { i64, ptr } %t70, ptr %t69, 1
  %t72 = load i32, ptr %l5, !range !{i32 0, i32 884}
  %t74 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v5, ptr %v5, ptr %v5, i32 %t72, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d329, i32 0, i32 1) }, { i64, ptr } %t71)
  store %"compiler/diagmsg:Msg" %t74, ptr %l15
  br label %bb3
bb3:
  %t75 = load %"compiler/diagmsg:Msg", ptr %l15
  store %"compiler/diagmsg:Msg" %t75, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteStrKeepCopies(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 418, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d330, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d330, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d331, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d331, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 106, ptr getelementptr inbounds (<{ i64, [106 x i8] }>, ptr @.d332, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 106, ptr getelementptr inbounds (<{ i64, [106 x i8] }>, ptr @.d332, i32 0, i32 1) }, 0
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
  %t42 = load i32, ptr %l2, !range !{i32 0, i32 884}
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d333, i32 0, i32 1) }, { i64, ptr } %t41)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteUnassignedClause(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 427, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d334, i32 0, i32 1) }, { i64, ptr } { i64 71, ptr getelementptr inbounds (<{ i64, [71 x i8] }>, ptr @.d335, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteViewRefusedBy(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 740, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d336, i32 0, i32 1) }, { i64, ptr } { i64 62, ptr getelementptr inbounds (<{ i64, [62 x i8] }>, ptr @.d337, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNullToArray(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 505, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d338, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d338, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a1, 1
  %t12 = extractvalue { i64, ptr } %a1, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d339, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d339, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a0, 1
  %t19 = extractvalue { i64, ptr } %a0, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d340, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d340, i32 0, i32 1) }, 0
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
  %t42 = load i32, ptr %l2, !range !{i32 0, i32 884}
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d341, i32 0, i32 1) }, { i64, ptr } %t41)
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
  store i32 500, ptr %l2
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
  %t11 = extractvalue { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d342, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d342, i32 0, i32 1) }, 0
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
  %t34 = load i32, ptr %l2, !range !{i32 0, i32 884}
  %t36 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t34, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d343, i32 0, i32 1) }, { i64, ptr } %t33)
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
  store i32 449, ptr %l2
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
  %t11 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d344, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d344, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t15 = extractvalue { i64, ptr } %a1, 1
  %t16 = extractvalue { i64, ptr } %a1, 0
  %t17 = add i64 %t13, %t16
  %t18 = extractvalue { i64, ptr } { i64 56, ptr getelementptr inbounds (<{ i64, [56 x i8] }>, ptr @.d345, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 56, ptr getelementptr inbounds (<{ i64, [56 x i8] }>, ptr @.d345, i32 0, i32 1) }, 0
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
  %t38 = load i32, ptr %l2, !range !{i32 0, i32 884}
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t38, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d346, i32 0, i32 1) }, { i64, ptr } %t37)
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
  %t12 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d347, i32 0, i32 1) }, 1
  %t13 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d347, i32 0, i32 1) }, 0
  %t14 = add i64 %t11, %t13
  %t16 = extractvalue { i64, ptr } %a1, 1
  %t17 = extractvalue { i64, ptr } %a1, 0
  %t18 = add i64 %t14, %t17
  %t19 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d348, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d348, i32 0, i32 1) }, 0
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
  %t44 = load i32, ptr %l3, !range !{i32 0, i32 884}
  %t46 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, i32 %t44, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d349, i32 0, i32 1) }, { i64, ptr } %t43)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePackedByValueC(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
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
  store i32 265, ptr %l1
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
  %t9 = extractvalue { i64, ptr } %t6, 1
  %t10 = extractvalue { i64, ptr } %t6, 0
  %t11 = extractvalue { i64, ptr } { i64 76, ptr getelementptr inbounds (<{ i64, [76 x i8] }>, ptr @.d350, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 76, ptr getelementptr inbounds (<{ i64, [76 x i8] }>, ptr @.d350, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t15 = extractvalue { i64, ptr } %t7, 1
  %t16 = extractvalue { i64, ptr } %t7, 0
  %t17 = add i64 %t13, %t16
  %t18 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d351, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d351, i32 0, i32 1) }, 0
  %t20 = add i64 %t17, %t19
  %t21 = load i64, ptr %l2
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
  %t30 = load i64, ptr %l2
  %t31 = inttoptr i64 %t30 to ptr
  %t32 = extractvalue { i64, ptr } %t28, 0
  %t33 = extractvalue { i64, ptr } %t28, 1
  %t34 = mul i64 %t32, 1
  %t35 = call ptr @__olang_scope_alloc(ptr %t31, i64 %t34)
  call void @llvm.memcpy.p0.p0.i64(ptr %t35, ptr %t33, i64 %t34, i1 false)
  %t36 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t35, 1
  %t38 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t38, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d352, i32 0, i32 1) }, { i64, ptr } %t37)
  store %"compiler/diagmsg:Msg" %t40, ptr %l8
  br label %bb3
bb3:
  %t41 = load %"compiler/diagmsg:Msg", ptr %l8
  store %"compiler/diagmsg:Msg" %t41, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePlaceMember(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
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
  %t7 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d353, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d353, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 66, ptr getelementptr inbounds (<{ i64, [66 x i8] }>, ptr @.d354, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 66, ptr getelementptr inbounds (<{ i64, [66 x i8] }>, ptr @.d354, i32 0, i32 1) }, 0
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
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d355, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePrimCtorNotPrimitive(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 228, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d356, i32 0, i32 1) }, { i64, ptr } { i64 106, ptr getelementptr inbounds (<{ i64, [106 x i8] }>, ptr @.d357, i32 0, i32 1) })
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
  store i32 683, ptr %l1
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
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d358, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d358, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %t6, 1
  %t12 = extractvalue { i64, ptr } %t6, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 70, ptr getelementptr inbounds (<{ i64, [70 x i8] }>, ptr @.d359, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 70, ptr getelementptr inbounds (<{ i64, [70 x i8] }>, ptr @.d359, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %t7, 1
  %t19 = extractvalue { i64, ptr } %t7, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d360, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d360, i32 0, i32 1) }, 0
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
  %t42 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t42, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d361, i32 0, i32 1) }, { i64, ptr } %t41)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePromiseReturnsNoreturn(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 681, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d362, i32 0, i32 1) }, { i64, ptr } { i64 91, ptr getelementptr inbounds (<{ i64, [91 x i8] }>, ptr @.d363, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eRaisedWordOwnName(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i32
  %l2 = alloca i64
  %l4 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l15 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i32 821, ptr %l1
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
  store { i64, ptr } %t6, ptr %l4, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  %t11 = sub i64 %t9, 1
  store i64 %t11, ptr %l7, !tbaa !24
  %t12 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t12, 0
  store i64 %t13, ptr %l8, !tbaa !24
  %t14 = icmp sge i64 1, 0
  br i1 %t14, label %bb3, label %bb4
bb3:
  %t16 = load i64, ptr %l7, !tbaa !24
  %t17 = icmp sle i64 1, %t16
  br i1 %t17, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_b5396abf9efe0c5f_c4bc3810cf304de3)
  unreachable
bb5:
  %t19 = load i64, ptr %l7, !tbaa !24
  %t20 = load i64, ptr %l8, !tbaa !24
  %t21 = icmp sle i64 %t19, %t20
  br i1 %t21, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_b5396abf9efe0c5f_c4bc3810cf304de3)
  unreachable
bb7:
  %t23 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !27
  %t25 = load i64, ptr %l7, !tbaa !24
  %t26 = getelementptr i8, ptr %t24, i64 1
  %t27 = sub i64 %t25, 1
  %t28 = insertvalue { i64, ptr } undef, i64 %t27, 0
  %t29 = insertvalue { i64, ptr } %t28, ptr %t26, 1
  %t30 = extractvalue { i64, ptr } { i64 80, ptr getelementptr inbounds (<{ i64, [80 x i8] }>, ptr @.d364, i32 0, i32 1) }, 1
  %t31 = extractvalue { i64, ptr } { i64 80, ptr getelementptr inbounds (<{ i64, [80 x i8] }>, ptr @.d364, i32 0, i32 1) }, 0
  %t33 = extractvalue { i64, ptr } %t29, 1
  %t34 = extractvalue { i64, ptr } %t29, 0
  %t35 = add i64 %t31, %t34
  %t36 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d365, i32 0, i32 1) }, 1
  %t37 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d365, i32 0, i32 1) }, 0
  %t38 = add i64 %t35, %t37
  %t39 = load i64, ptr %l2
  %t40 = inttoptr i64 %t39 to ptr
  %t41 = call ptr @__olang_scope_alloc(ptr %t40, i64 %t38)
  call void @olang_textcopy(ptr %t41, ptr %t30, i64 %t31)
  %t42 = getelementptr i8, ptr %t41, i64 %t31
  call void @olang_textcopy(ptr %t42, ptr %t33, i64 %t34)
  %t43 = getelementptr i8, ptr %t42, i64 %t34
  call void @olang_textcopy(ptr %t43, ptr %t36, i64 %t37)
  %t44 = insertvalue { i64, ptr } undef, i64 %t38, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t41, 1
  %t47 = load i64, ptr %l2
  %t48 = inttoptr i64 %t47 to ptr
  %t49 = extractvalue { i64, ptr } %t45, 0
  %t50 = extractvalue { i64, ptr } %t45, 1
  %t51 = mul i64 %t49, 1
  %t52 = call ptr @__olang_scope_alloc(ptr %t48, i64 %t51)
  call void @llvm.memcpy.p0.p0.i64(ptr %t52, ptr %t50, i64 %t51, i1 false)
  %t53 = insertvalue { i64, ptr } undef, i64 %t49, 0
  %t54 = insertvalue { i64, ptr } %t53, ptr %t52, 1
  %t55 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t57 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t55, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d366, i32 0, i32 1) }, { i64, ptr } %t54)
  store %"compiler/diagmsg:Msg" %t57, ptr %l15
  br label %bb9
bb8:
  call void @__olang_check_failed(ptr @olang_loc_b5396abf9efe0c5f_c4bc3810cf304de3)
  unreachable
bb9:
  %t58 = load %"compiler/diagmsg:Msg", ptr %l15
  store %"compiler/diagmsg:Msg" %t58, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eRangeStep(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 582, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d367, i32 0, i32 1) }, { i64, ptr } { i64 51, ptr getelementptr inbounds (<{ i64, [51 x i8] }>, ptr @.d368, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eRawRepeated(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca i64
  %l11 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 773, ptr %l3
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
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d369, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d369, i32 0, i32 1) }, 0
  %t12 = extractvalue { i64, ptr } %a0, 1
  %t13 = extractvalue { i64, ptr } %a0, 0
  %t14 = add i64 %t10, %t13
  %t15 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d370, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d370, i32 0, i32 1) }, 0
  %t17 = add i64 %t14, %t16
  %t19 = extractvalue { i64, ptr } %a1, 1
  %t20 = extractvalue { i64, ptr } %a1, 0
  %t21 = add i64 %t17, %t20
  %t22 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d371, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d371, i32 0, i32 1) }, 0
  %t24 = add i64 %t21, %t23
  %t26 = extractvalue { i64, ptr } %a2, 1
  %t27 = extractvalue { i64, ptr } %a2, 0
  %t28 = add i64 %t24, %t27
  %t29 = extractvalue { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d372, i32 0, i32 1) }, 1
  %t30 = extractvalue { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d372, i32 0, i32 1) }, 0
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
  %t52 = load i32, ptr %l3, !range !{i32 0, i32 884}
  %t54 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, i32 %t52, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d373, i32 0, i32 1) }, { i64, ptr } %t51)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadMaybeNull(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca i64
  %l11 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 504, ptr %l3
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
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d374, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d374, i32 0, i32 1) }, 0
  %t12 = extractvalue { i64, ptr } %a0, 1
  %t13 = extractvalue { i64, ptr } %a0, 0
  %t14 = add i64 %t10, %t13
  %t15 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d375, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d375, i32 0, i32 1) }, 0
  %t17 = add i64 %t14, %t16
  %t19 = extractvalue { i64, ptr } %a1, 1
  %t20 = extractvalue { i64, ptr } %a1, 0
  %t21 = add i64 %t17, %t20
  %t22 = extractvalue { i64, ptr } { i64 98, ptr getelementptr inbounds (<{ i64, [98 x i8] }>, ptr @.d376, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 98, ptr getelementptr inbounds (<{ i64, [98 x i8] }>, ptr @.d376, i32 0, i32 1) }, 0
  %t24 = add i64 %t21, %t23
  %t26 = extractvalue { i64, ptr } %a2, 1
  %t27 = extractvalue { i64, ptr } %a2, 0
  %t28 = add i64 %t24, %t27
  %t29 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d377, i32 0, i32 1) }, 1
  %t30 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d377, i32 0, i32 1) }, 0
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
  %t52 = load i32, ptr %l3, !range !{i32 0, i32 884}
  %t54 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, i32 %t52, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d378, i32 0, i32 1) }, { i64, ptr } %t51)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadOnlyCopyStored(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 338, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d379, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d379, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 71, ptr getelementptr inbounds (<{ i64, [71 x i8] }>, ptr @.d380, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 71, ptr getelementptr inbounds (<{ i64, [71 x i8] }>, ptr @.d380, i32 0, i32 1) }, 0
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
  %t38 = load i32, ptr %l2, !range !{i32 0, i32 884}
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t38, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d381, i32 0, i32 1) }, { i64, ptr } %t37)
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
  store i32 111, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d382, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d382, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d383, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d383, i32 0, i32 1) }, 0
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
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d384, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflArgCompr(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 843, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d385, i32 0, i32 1) }, { i64, ptr } { i64 167, ptr getelementptr inbounds (<{ i64, [167 x i8] }>, ptr @.d386, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflFnCall(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca i64
  %l11 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 861, ptr %l3
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
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d387, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d387, i32 0, i32 1) }, 0
  %t12 = extractvalue { i64, ptr } %a0, 1
  %t13 = extractvalue { i64, ptr } %a0, 0
  %t14 = add i64 %t10, %t13
  %t15 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d388, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d388, i32 0, i32 1) }, 0
  %t17 = add i64 %t14, %t16
  %t19 = call i64 @__olang_fmt_i64(ptr null, i64 %a1)
  %t20 = add i64 %t17, %t19
  %t21 = extractvalue { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d389, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d389, i32 0, i32 1) }, 0
  %t23 = add i64 %t20, %t22
  %t25 = call i64 @__olang_fmt_i64(ptr null, i64 %a2)
  %t26 = add i64 %t23, %t25
  %t27 = load i64, ptr %l4
  %t28 = inttoptr i64 %t27 to ptr
  %t29 = call ptr @__olang_scope_alloc(ptr %t28, i64 %t26)
  call void @olang_textcopy(ptr %t29, ptr %t9, i64 %t10)
  %t30 = getelementptr i8, ptr %t29, i64 %t10
  call void @olang_textcopy(ptr %t30, ptr %t12, i64 %t13)
  %t31 = getelementptr i8, ptr %t30, i64 %t13
  call void @olang_textcopy(ptr %t31, ptr %t15, i64 %t16)
  %t32 = getelementptr i8, ptr %t31, i64 %t16
  %t33 = call i64 @__olang_fmt_i64(ptr %t32, i64 %a1)
  %t34 = getelementptr i8, ptr %t32, i64 %t19
  call void @olang_textcopy(ptr %t34, ptr %t21, i64 %t22)
  %t35 = getelementptr i8, ptr %t34, i64 %t22
  %t36 = call i64 @__olang_fmt_i64(ptr %t35, i64 %a2)
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
  %t48 = load i32, ptr %l3, !range !{i32 0, i32 884}
  %t50 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t48, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d390, i32 0, i32 1) }, { i64, ptr } %t47)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflNoDefault(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 836, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d391, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d391, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d392, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d392, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 66, ptr getelementptr inbounds (<{ i64, [66 x i8] }>, ptr @.d393, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 66, ptr getelementptr inbounds (<{ i64, [66 x i8] }>, ptr @.d393, i32 0, i32 1) }, 0
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
  %t42 = load i32, ptr %l2, !range !{i32 0, i32 884}
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d394, i32 0, i32 1) }, { i64, ptr } %t41)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReraiseUndeclared(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 800, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d395, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d395, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 82, ptr getelementptr inbounds (<{ i64, [82 x i8] }>, ptr @.d396, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 82, ptr getelementptr inbounds (<{ i64, [82 x i8] }>, ptr @.d396, i32 0, i32 1) }, 0
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
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d397, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReturnCount(ptr %v0, ptr %v1, i64 %a0, { i64, ptr } %a1, i64 %a2) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca i64
  %l11 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 626, ptr %l3
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
  %t9 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d398, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d398, i32 0, i32 1) }, 0
  %t12 = call i64 @__olang_fmt_i64(ptr null, i64 %a0)
  %t13 = add i64 %t10, %t12
  %t14 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d399, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d399, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d400, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d400, i32 0, i32 1) }, 0
  %t23 = add i64 %t20, %t22
  %t25 = call i64 @__olang_fmt_i64(ptr null, i64 %a2)
  %t26 = add i64 %t23, %t25
  %t27 = load i64, ptr %l4
  %t28 = inttoptr i64 %t27 to ptr
  %t29 = call ptr @__olang_scope_alloc(ptr %t28, i64 %t26)
  call void @olang_textcopy(ptr %t29, ptr %t9, i64 %t10)
  %t30 = getelementptr i8, ptr %t29, i64 %t10
  %t31 = call i64 @__olang_fmt_i64(ptr %t30, i64 %a0)
  %t32 = getelementptr i8, ptr %t30, i64 %t12
  call void @olang_textcopy(ptr %t32, ptr %t14, i64 %t15)
  %t33 = getelementptr i8, ptr %t32, i64 %t15
  call void @olang_textcopy(ptr %t33, ptr %t18, i64 %t19)
  %t34 = getelementptr i8, ptr %t33, i64 %t19
  call void @olang_textcopy(ptr %t34, ptr %t21, i64 %t22)
  %t35 = getelementptr i8, ptr %t34, i64 %t22
  %t36 = call i64 @__olang_fmt_i64(ptr %t35, i64 %a2)
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
  %t48 = load i32, ptr %l3, !range !{i32 0, i32 884}
  %t50 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t48, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d401, i32 0, i32 1) }, { i64, ptr } %t47)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSetatResult(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 241, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d402, i32 0, i32 1) }, { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d403, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eShiftUnadapted(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 324, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d404, i32 0, i32 1) }, { i64, ptr } { i64 116, ptr getelementptr inbounds (<{ i64, [116 x i8] }>, ptr @.d405, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpawnFuncTooShort(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 662, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d406, i32 0, i32 1) }, { i64, ptr } { i64 93, ptr getelementptr inbounds (<{ i64, [93 x i8] }>, ptr @.d407, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpreadCount(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 358, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d408, i32 0, i32 1) }, { i64, ptr } { i64 107, ptr getelementptr inbounds (<{ i64, [107 x i8] }>, ptr @.d409, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eStrShape(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 284, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d410, i32 0, i32 1) }, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d411, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTargetForeignMode(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 27, ptr %l2
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
  %t11 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d412, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d412, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t15 = extractvalue { i64, ptr } %a1, 1
  %t16 = extractvalue { i64, ptr } %a1, 0
  %t17 = add i64 %t13, %t16
  %t18 = extractvalue { i64, ptr } { i64 74, ptr getelementptr inbounds (<{ i64, [74 x i8] }>, ptr @.d413, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 74, ptr getelementptr inbounds (<{ i64, [74 x i8] }>, ptr @.d413, i32 0, i32 1) }, 0
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
  %t38 = load i32, ptr %l2, !range !{i32 0, i32 884}
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t38, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d414, i32 0, i32 1) }, { i64, ptr } %t37)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTaskClauseError(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 652, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d415, i32 0, i32 1) }, { i64, ptr } { i64 106, ptr getelementptr inbounds (<{ i64, [106 x i8] }>, ptr @.d416, i32 0, i32 1) })
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
  store i32 651, ptr %l1
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
  %t10 = extractvalue { i64, ptr } { i64 81, ptr getelementptr inbounds (<{ i64, [81 x i8] }>, ptr @.d417, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 81, ptr getelementptr inbounds (<{ i64, [81 x i8] }>, ptr @.d417, i32 0, i32 1) }, 0
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
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d418, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTopAssertFalse(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 764, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d419, i32 0, i32 1) }, { i64, ptr } { i64 55, ptr getelementptr inbounds (<{ i64, [55 x i8] }>, ptr @.d420, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTopSetHasValue(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 709, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d421, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d421, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 118, ptr getelementptr inbounds (<{ i64, [118 x i8] }>, ptr @.d422, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 118, ptr getelementptr inbounds (<{ i64, [118 x i8] }>, ptr @.d422, i32 0, i32 1) }, 0
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
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d423, i32 0, i32 1) }, { i64, ptr } %t31)
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
  store i32 711, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d424, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d424, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d425, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d425, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 78, ptr getelementptr inbounds (<{ i64, [78 x i8] }>, ptr @.d426, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 78, ptr getelementptr inbounds (<{ i64, [78 x i8] }>, ptr @.d426, i32 0, i32 1) }, 0
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
  %t42 = load i32, ptr %l2, !range !{i32 0, i32 884}
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d427, i32 0, i32 1) }, { i64, ptr } %t41)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTraitExtendsNotTrait(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 142, ptr %l1
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
  %t10 = extractvalue { i64, ptr } { i64 95, ptr getelementptr inbounds (<{ i64, [95 x i8] }>, ptr @.d428, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 95, ptr getelementptr inbounds (<{ i64, [95 x i8] }>, ptr @.d428, i32 0, i32 1) }, 0
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
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d429, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTraitMemberOpen(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 144, ptr %l1
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
  %t10 = extractvalue { i64, ptr } { i64 81, ptr getelementptr inbounds (<{ i64, [81 x i8] }>, ptr @.d430, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 81, ptr getelementptr inbounds (<{ i64, [81 x i8] }>, ptr @.d430, i32 0, i32 1) }, 0
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
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d431, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTryCatchOnSlice(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 700, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d432, i32 0, i32 1) }, { i64, ptr } { i64 114, ptr getelementptr inbounds (<{ i64, [114 x i8] }>, ptr @.d433, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTryNowhereToGo(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 528, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d434, i32 0, i32 1) }, { i64, ptr } { i64 65, ptr getelementptr inbounds (<{ i64, [65 x i8] }>, ptr @.d435, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTryOnCaught(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
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
  store i32 799, ptr %l1
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
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d436, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d436, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %t6, 1
  %t12 = extractvalue { i64, ptr } %t6, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 70, ptr getelementptr inbounds (<{ i64, [70 x i8] }>, ptr @.d437, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 70, ptr getelementptr inbounds (<{ i64, [70 x i8] }>, ptr @.d437, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %t7, 1
  %t19 = extractvalue { i64, ptr } %t7, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d436, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d436, i32 0, i32 1) }, 0
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
  %t42 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t42, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d438, i32 0, i32 1) }, { i64, ptr } %t41)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTwoPoints(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 77, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d439, i32 0, i32 1) }, { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d440, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeArgsNotInferable(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 369, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d441, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d441, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d442, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d442, i32 0, i32 1) }, 0
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
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d443, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeIsPrivate(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 127, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d444, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d444, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d445, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d445, i32 0, i32 1) }, 0
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
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d446, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeVarNotInferable(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca i32
  %l3 = alloca i64
  %l10 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i32 198, ptr %l2
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
  %t8 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t9 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d447, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d447, i32 0, i32 1) }, 0
  %t12 = extractvalue { i64, ptr } %a0, 1
  %t13 = extractvalue { i64, ptr } %a0, 0
  %t14 = add i64 %t10, %t13
  %t15 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d448, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d448, i32 0, i32 1) }, 0
  %t17 = add i64 %t14, %t16
  %t19 = extractvalue { i64, ptr } %t7, 1
  %t20 = extractvalue { i64, ptr } %t7, 0
  %t21 = add i64 %t17, %t20
  %t22 = extractvalue { i64, ptr } { i64 57, ptr getelementptr inbounds (<{ i64, [57 x i8] }>, ptr @.d449, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 57, ptr getelementptr inbounds (<{ i64, [57 x i8] }>, ptr @.d449, i32 0, i32 1) }, 0
  %t24 = add i64 %t21, %t23
  %t26 = extractvalue { i64, ptr } %t8, 1
  %t27 = extractvalue { i64, ptr } %t8, 0
  %t28 = add i64 %t24, %t27
  %t29 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d450, i32 0, i32 1) }, 1
  %t30 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d450, i32 0, i32 1) }, 0
  %t31 = add i64 %t28, %t30
  %t32 = load i64, ptr %l3
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
  %t44 = load i64, ptr %l3
  %t45 = inttoptr i64 %t44 to ptr
  %t46 = extractvalue { i64, ptr } %t42, 0
  %t47 = extractvalue { i64, ptr } %t42, 1
  %t48 = mul i64 %t46, 1
  %t49 = call ptr @__olang_scope_alloc(ptr %t45, i64 %t48)
  call void @llvm.memcpy.p0.p0.i64(ptr %t49, ptr %t47, i64 %t48, i1 false)
  %t50 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr %t49, 1
  %t52 = load i32, ptr %l2, !range !{i32 0, i32 884}
  %t54 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t52, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d451, i32 0, i32 1) }, { i64, ptr } %t51)
  store %"compiler/diagmsg:Msg" %t54, ptr %l10
  br label %bb3
bb3:
  %t55 = load %"compiler/diagmsg:Msg", ptr %l10
  store %"compiler/diagmsg:Msg" %t55, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnclosedString(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 64, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d452, i32 0, i32 1) }, { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d453, i32 0, i32 1) })
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
  %l13 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store i32 267, ptr %l3
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
  %t8 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t10 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t11 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d454, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d454, i32 0, i32 1) }, 0
  %t14 = extractvalue { i64, ptr } %t6, 1
  %t15 = extractvalue { i64, ptr } %t6, 0
  %t16 = add i64 %t12, %t15
  %t17 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d455, i32 0, i32 1) }, 1
  %t18 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d455, i32 0, i32 1) }, 0
  %t19 = add i64 %t16, %t18
  %t21 = extractvalue { i64, ptr } %a1, 1
  %t22 = extractvalue { i64, ptr } %a1, 0
  %t23 = add i64 %t19, %t22
  %t24 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d456, i32 0, i32 1) }, 1
  %t25 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d456, i32 0, i32 1) }, 0
  %t26 = add i64 %t23, %t25
  %t28 = extractvalue { i64, ptr } %t8, 1
  %t29 = extractvalue { i64, ptr } %t8, 0
  %t30 = add i64 %t26, %t29
  %t31 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d457, i32 0, i32 1) }, 1
  %t32 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d457, i32 0, i32 1) }, 0
  %t33 = add i64 %t30, %t32
  %t35 = extractvalue { i64, ptr } %t9, 1
  %t36 = extractvalue { i64, ptr } %t9, 0
  %t37 = add i64 %t33, %t36
  %t38 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d458, i32 0, i32 1) }, 1
  %t39 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d458, i32 0, i32 1) }, 0
  %t40 = add i64 %t37, %t39
  %t42 = extractvalue { i64, ptr } %t10, 1
  %t43 = extractvalue { i64, ptr } %t10, 0
  %t44 = add i64 %t40, %t43
  %t45 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d459, i32 0, i32 1) }, 1
  %t46 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d459, i32 0, i32 1) }, 0
  %t47 = add i64 %t44, %t46
  %t48 = load i64, ptr %l4
  %t49 = inttoptr i64 %t48 to ptr
  %t50 = call ptr @__olang_scope_alloc(ptr %t49, i64 %t47)
  call void @olang_textcopy(ptr %t50, ptr %t11, i64 %t12)
  %t51 = getelementptr i8, ptr %t50, i64 %t12
  call void @olang_textcopy(ptr %t51, ptr %t14, i64 %t15)
  %t52 = getelementptr i8, ptr %t51, i64 %t15
  call void @olang_textcopy(ptr %t52, ptr %t17, i64 %t18)
  %t53 = getelementptr i8, ptr %t52, i64 %t18
  call void @olang_textcopy(ptr %t53, ptr %t21, i64 %t22)
  %t54 = getelementptr i8, ptr %t53, i64 %t22
  call void @olang_textcopy(ptr %t54, ptr %t24, i64 %t25)
  %t55 = getelementptr i8, ptr %t54, i64 %t25
  call void @olang_textcopy(ptr %t55, ptr %t28, i64 %t29)
  %t56 = getelementptr i8, ptr %t55, i64 %t29
  call void @olang_textcopy(ptr %t56, ptr %t31, i64 %t32)
  %t57 = getelementptr i8, ptr %t56, i64 %t32
  call void @olang_textcopy(ptr %t57, ptr %t35, i64 %t36)
  %t58 = getelementptr i8, ptr %t57, i64 %t36
  call void @olang_textcopy(ptr %t58, ptr %t38, i64 %t39)
  %t59 = getelementptr i8, ptr %t58, i64 %t39
  call void @olang_textcopy(ptr %t59, ptr %t42, i64 %t43)
  %t60 = getelementptr i8, ptr %t59, i64 %t43
  call void @olang_textcopy(ptr %t60, ptr %t45, i64 %t46)
  %t61 = insertvalue { i64, ptr } undef, i64 %t47, 0
  %t62 = insertvalue { i64, ptr } %t61, ptr %t50, 1
  %t64 = load i64, ptr %l4
  %t65 = inttoptr i64 %t64 to ptr
  %t66 = extractvalue { i64, ptr } %t62, 0
  %t67 = extractvalue { i64, ptr } %t62, 1
  %t68 = mul i64 %t66, 1
  %t69 = call ptr @__olang_scope_alloc(ptr %t65, i64 %t68)
  call void @llvm.memcpy.p0.p0.i64(ptr %t69, ptr %t67, i64 %t68, i1 false)
  %t70 = insertvalue { i64, ptr } undef, i64 %t66, 0
  %t71 = insertvalue { i64, ptr } %t70, ptr %t69, 1
  %t72 = load i32, ptr %l3, !range !{i32 0, i32 884}
  %t74 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, i32 %t72, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d460, i32 0, i32 1) }, { i64, ptr } %t71)
  store %"compiler/diagmsg:Msg" %t74, ptr %l13
  br label %bb3
bb3:
  %t75 = load %"compiler/diagmsg:Msg", ptr %l13
  store %"compiler/diagmsg:Msg" %t75, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUniqueLentHere(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca i32
  %l3 = alloca i64
  %l10 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i32 266, ptr %l2
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
  %t8 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d461, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d461, i32 0, i32 1) }, 0
  %t12 = extractvalue { i64, ptr } %t6, 1
  %t13 = extractvalue { i64, ptr } %t6, 0
  %t14 = add i64 %t10, %t13
  %t15 = extractvalue { i64, ptr } { i64 61, ptr getelementptr inbounds (<{ i64, [61 x i8] }>, ptr @.d462, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 61, ptr getelementptr inbounds (<{ i64, [61 x i8] }>, ptr @.d462, i32 0, i32 1) }, 0
  %t17 = add i64 %t14, %t16
  %t19 = extractvalue { i64, ptr } %a1, 1
  %t20 = extractvalue { i64, ptr } %a1, 0
  %t21 = add i64 %t17, %t20
  %t22 = extractvalue { i64, ptr } { i64 62, ptr getelementptr inbounds (<{ i64, [62 x i8] }>, ptr @.d463, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 62, ptr getelementptr inbounds (<{ i64, [62 x i8] }>, ptr @.d463, i32 0, i32 1) }, 0
  %t24 = add i64 %t21, %t23
  %t26 = extractvalue { i64, ptr } %t8, 1
  %t27 = extractvalue { i64, ptr } %t8, 0
  %t28 = add i64 %t24, %t27
  %t29 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d464, i32 0, i32 1) }, 1
  %t30 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d464, i32 0, i32 1) }, 0
  %t31 = add i64 %t28, %t30
  %t32 = load i64, ptr %l3
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
  %t44 = load i64, ptr %l3
  %t45 = inttoptr i64 %t44 to ptr
  %t46 = extractvalue { i64, ptr } %t42, 0
  %t47 = extractvalue { i64, ptr } %t42, 1
  %t48 = mul i64 %t46, 1
  %t49 = call ptr @__olang_scope_alloc(ptr %t45, i64 %t48)
  call void @llvm.memcpy.p0.p0.i64(ptr %t49, ptr %t47, i64 %t48, i1 false)
  %t50 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr %t49, 1
  %t52 = load i32, ptr %l2, !range !{i32 0, i32 884}
  %t54 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t52, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d465, i32 0, i32 1) }, { i64, ptr } %t51)
  store %"compiler/diagmsg:Msg" %t54, ptr %l10
  br label %bb3
bb3:
  %t55 = load %"compiler/diagmsg:Msg", ptr %l10
  store %"compiler/diagmsg:Msg" %t55, ptr %rv
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
  store i32 57, ptr %l1
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
  %t9 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d466, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d466, i32 0, i32 1) }, 0
  %t11 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t11, 1
  %t13 = extractvalue { i64, ptr } %t11, 0
  %t14 = add i64 %t10, %t13
  %t15 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d467, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d467, i32 0, i32 1) }, 0
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
  %t34 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t36 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 %t34, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d468, i32 0, i32 1) }, { i64, ptr } %t33)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownFunctionMeant(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 123, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d469, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d469, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d470, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d470, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d471, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d471, i32 0, i32 1) }, 0
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
  %t42 = load i32, ptr %l2, !range !{i32 0, i32 884}
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d472, i32 0, i32 1) }, { i64, ptr } %t41)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownImportStd(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 109, ptr %l2
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
  %t11 = extractvalue { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d473, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d473, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t15 = extractvalue { i64, ptr } %a1, 1
  %t16 = extractvalue { i64, ptr } %a1, 0
  %t17 = add i64 %t13, %t16
  %t18 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d474, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d474, i32 0, i32 1) }, 0
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
  %t38 = load i32, ptr %l2, !range !{i32 0, i32 884}
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t38, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d475, i32 0, i32 1) }, { i64, ptr } %t37)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownType(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
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
  %t7 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d476, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d476, i32 0, i32 1) }, 0
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
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d477, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownTypeVar(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 597, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d478, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d478, i32 0, i32 1) }, 0
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
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d479, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eValueAfterEq(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3) #0 {
entry:
  %l4 = alloca i32
  %l5 = alloca i64
  %l13 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 89, ptr %l4
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
  %t10 = extractvalue { i64, ptr } { i64 43, ptr getelementptr inbounds (<{ i64, [43 x i8] }>, ptr @.d480, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 43, ptr getelementptr inbounds (<{ i64, [43 x i8] }>, ptr @.d480, i32 0, i32 1) }, 0
  %t13 = extractvalue { i64, ptr } %a0, 1
  %t14 = extractvalue { i64, ptr } %a0, 0
  %t15 = add i64 %t11, %t14
  %t16 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d481, i32 0, i32 1) }, 1
  %t17 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d481, i32 0, i32 1) }, 0
  %t18 = add i64 %t15, %t17
  %t20 = extractvalue { i64, ptr } %a1, 1
  %t21 = extractvalue { i64, ptr } %a1, 0
  %t22 = add i64 %t18, %t21
  %t23 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d482, i32 0, i32 1) }, 1
  %t24 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d482, i32 0, i32 1) }, 0
  %t25 = add i64 %t22, %t24
  %t27 = extractvalue { i64, ptr } %a2, 1
  %t28 = extractvalue { i64, ptr } %a2, 0
  %t29 = add i64 %t25, %t28
  %t30 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d483, i32 0, i32 1) }, 1
  %t31 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d483, i32 0, i32 1) }, 0
  %t32 = add i64 %t29, %t31
  %t34 = extractvalue { i64, ptr } %a3, 1
  %t35 = extractvalue { i64, ptr } %a3, 0
  %t36 = add i64 %t32, %t35
  %t37 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d484, i32 0, i32 1) }, 1
  %t38 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d484, i32 0, i32 1) }, 0
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
  %t62 = load i32, ptr %l4, !range !{i32 0, i32 884}
  %t64 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v4, ptr %v4, ptr %v4, i32 %t62, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d485, i32 0, i32 1) }, { i64, ptr } %t61)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eValueCaseBlock(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 594, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d486, i32 0, i32 1) }, { i64, ptr } { i64 107, ptr getelementptr inbounds (<{ i64, [107 x i8] }>, ptr @.d487, i32 0, i32 1) })
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
  store i32 215, ptr %l1
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
  %t10 = extractvalue { i64, ptr } { i64 116, ptr getelementptr inbounds (<{ i64, [116 x i8] }>, ptr @.d488, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 116, ptr getelementptr inbounds (<{ i64, [116 x i8] }>, ptr @.d488, i32 0, i32 1) }, 0
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
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d489, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eVecHiddenViewStale(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 725, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d490, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d490, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d491, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d491, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d492, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d492, i32 0, i32 1) }, 0
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
  %t42 = load i32, ptr %l2, !range !{i32 0, i32 884}
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d493, i32 0, i32 1) }, { i64, ptr } %t41)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eWeakFresh(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 277, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d494, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d494, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 143, ptr getelementptr inbounds (<{ i64, [143 x i8] }>, ptr @.d495, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 143, ptr getelementptr inbounds (<{ i64, [143 x i8] }>, ptr @.d495, i32 0, i32 1) }, 0
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
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d496, i32 0, i32 1) }, { i64, ptr } %t31)
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
  store i32 276, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 63, ptr getelementptr inbounds (<{ i64, [63 x i8] }>, ptr @.d497, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 63, ptr getelementptr inbounds (<{ i64, [63 x i8] }>, ptr @.d497, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d498, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d498, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d499, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d499, i32 0, i32 1) }, 0
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
  %t42 = load i32, ptr %l2, !range !{i32 0, i32 884}
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d500, i32 0, i32 1) }, { i64, ptr } %t41)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eWeakUnheld(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 278, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d501, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d501, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 165, ptr getelementptr inbounds (<{ i64, [165 x i8] }>, ptr @.d502, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 165, ptr getelementptr inbounds (<{ i64, [165 x i8] }>, ptr @.d502, i32 0, i32 1) }, 0
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
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d503, i32 0, i32 1) }, { i64, ptr } %t31)
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
  %l115 = alloca i64
  %l120 = alloca { i64, ptr }
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
  %t265 = ptrtoint ptr %v0 to i64
  store i64 %t265, ptr %l115, !tbaa !24
  %t266 = load i1, ptr @olang_2esole_2ecompiler_2fmsgs_3aNearest_2e1
  br i1 %t266, label %bb64, label %bb65
bb64:
  %t268 = call ptr @__olang_region_make(ptr %v0)
  %t269 = ptrtoint ptr %t268 to i64
  store i64 %t269, ptr %l115, !tbaa !24
  br label %bb65
bb65:
  %t270 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t272 = extractvalue { i64, ptr } %t270, 1
  %t273 = extractvalue { i64, ptr } %t270, 0
  %t274 = load i64, ptr %l115
  %t275 = inttoptr i64 %t274 to ptr
  %t276 = call ptr @__olang_scope_alloc(ptr %t275, i64 %t273)
  call void @olang_textcopy(ptr %t276, ptr %t272, i64 %t273)
  %t277 = insertvalue { i64, ptr } undef, i64 %t273, 0
  %t278 = insertvalue { i64, ptr } %t277, ptr %t276, 1
  %t280 = load i64, ptr %l115
  %t281 = inttoptr i64 %t280 to ptr
  %t282 = extractvalue { i64, ptr } %t278, 0
  %t283 = extractvalue { i64, ptr } %t278, 1
  %t284 = mul i64 %t282, 1
  %t285 = call ptr @__olang_scope_alloc(ptr %t281, i64 %t284)
  call void @llvm.memcpy.p0.p0.i64(ptr %t285, ptr %t283, i64 %t284, i1 false)
  %t286 = insertvalue { i64, ptr } undef, i64 %t282, 0
  %t287 = insertvalue { i64, ptr } %t286, ptr %t285, 1
  %t288 = load ptr, ptr %l114, !tbaa !29
  %t289 = getelementptr %"compiler/msgs:Nearest", ptr %t288, i32 0, i32 1
  %t290 = load { i64, ptr }, ptr %t289, !tbaa !27
  store { i64, ptr } %t290, ptr %l120, !tbaa !27
  %t292 = load ptr, ptr %l114, !tbaa !29
  %t293 = getelementptr %"compiler/msgs:Nearest", ptr %t292, i32 0, i32 1
  store { i64, ptr } %t287, ptr %t293, !tbaa !27
  %t294 = load i1, ptr @olang_2esole_2ecompiler_2fmsgs_3aNearest_2e1
  br i1 %t294, label %bb66, label %bb67
bb66:
  %t296 = load { i64, ptr }, ptr %l120
  %t297 = extractvalue { i64, ptr } %t296, 1
  call void @__olang_region_release(ptr %t297)
  store { i64, ptr } zeroinitializer, ptr %l120
  br label %bb67
bb67:
  %t298 = load ptr, ptr %l0, !tbaa !29
  %t300 = getelementptr %"compiler/msgs:Nearest", ptr %t298, i32 0, i32 2
  store i64 0, ptr %t300, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fmsgs_2eweakFix(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca i1
  %l3 = alloca i1
  %l5 = alloca i1
  %l7 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d504, i32 0, i32 1) })
  store i1 %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load i1, ptr %l2, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  %t5 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t7 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %s0, { i64, ptr } %t5, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d505, i32 0, i32 1) })
  store i1 %t7, ptr %l5
  br label %bb4
bb3:
  store i1 false, ptr %l3, !tbaa !21
  br label %bb5
bb4:
  %t8 = load i1, ptr %l5, !tbaa !21
  %t9 = xor i1 %t8, true
  store i1 %t9, ptr %l3, !tbaa !21
  br label %bb5
bb5:
  %t11 = load i1, ptr %l3, !tbaa !21
  br i1 %t11, label %bb6, label %bb7
bb6:
  %t12 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t12, ptr %l7, !tbaa !27
  %t13 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t15 = extractvalue { i64, ptr } %t13, 0
  %t17 = sub i64 %t15, 1
  store i64 %t17, ptr %l10, !tbaa !24
  %t18 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t18, 0
  store i64 %t19, ptr %l11, !tbaa !24
  %t20 = icmp sge i64 0, 0
  br i1 %t20, label %bb8, label %bb9
bb7:
  br label %bb14
bb8:
  %t22 = load i64, ptr %l10, !tbaa !24
  %t23 = icmp sle i64 0, %t22
  br i1 %t23, label %bb10, label %bb11
bb9:
  call void @__olang_check_failed(ptr @olang_loc_6c4a8e460d5bdf97_783173e1ac7a05cb)
  unreachable
bb10:
  %t25 = load i64, ptr %l10, !tbaa !24
  %t26 = load i64, ptr %l11, !tbaa !24
  %t27 = icmp sle i64 %t25, %t26
  br i1 %t27, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_6c4a8e460d5bdf97_783173e1ac7a05cb)
  unreachable
bb12:
  %t29 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = load i64, ptr %l10, !tbaa !24
  %t32 = getelementptr i8, ptr %t30, i64 0
  %t33 = sub i64 %t31, 0
  %t34 = insertvalue { i64, ptr } undef, i64 %t33, 0
  %t35 = insertvalue { i64, ptr } %t34, ptr %t32, 1
  %t37 = extractvalue { i64, ptr } %t35, 1
  %t38 = extractvalue { i64, ptr } %t35, 0
  %t39 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d506, i32 0, i32 1) }, 1
  %t40 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d506, i32 0, i32 1) }, 0
  %t41 = add i64 %t38, %t40
  %t42 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t41)
  call void @olang_textcopy(ptr %t42, ptr %t37, i64 %t38)
  %t43 = getelementptr i8, ptr %t42, i64 %t38
  call void @olang_textcopy(ptr %t43, ptr %t39, i64 %t40)
  %t44 = insertvalue { i64, ptr } undef, i64 %t41, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t42, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t45, ptr %rv
  br label %ret
bb13:
  call void @__olang_check_failed(ptr @olang_loc_6c4a8e460d5bdf97_783173e1ac7a05cb)
  unreachable
bb14:
  %t47 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t49 = extractvalue { i64, ptr } %t47, 1
  %t50 = extractvalue { i64, ptr } %t47, 0
  %t51 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d507, i32 0, i32 1) }, 1
  %t52 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d507, i32 0, i32 1) }, 0
  %t53 = add i64 %t50, %t52
  %t54 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t53)
  call void @olang_textcopy(ptr %t54, ptr %t49, i64 %t50)
  %t55 = getelementptr i8, ptr %t54, i64 %t50
  call void @olang_textcopy(ptr %t55, ptr %t51, i64 %t52)
  %t56 = insertvalue { i64, ptr } undef, i64 %t53, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t54, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t57, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"compiler/msgs:Nearest" @compiler_2fmsgs_3aNearest_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %rv = alloca %"compiler/msgs:Nearest"
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d508, i32 0, i32 1) }, ptr %l2, !tbaa !27
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
@.d0 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"'s " }>, align 8
@.d1 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c" says where its references live as " }>, align 8
@.d2 = private constant <{ i64, [60 x i8] }> <{ i64 0, [60 x i8] c"'s signature does not - it cannot be called through an 'any " }>, align 8
@.d3 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"&'" }>, align 8
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
@.d4 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"T32a, T22" }>, align 8
@.d5 = private constant <{ i64, [51 x i8] }> <{ i64 0, [51 x i8] c" keeps a copy of the value it is called on, and an " }>, align 8
@.d6 = private constant <{ i64, [46 x i8] }> <{ i64 0, [46 x i8] c" has none - call it on the instance's own type" }>, align 8
@.d7 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T32" }>, align 8
@.d8 = private constant <{ i64, [73 x i8] }> <{ i64 0, [73 x i8] c"an array's length is from 0 to the largest whose bytes fit an I64, found " }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d9 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T7c" }>, align 8
@.d10 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E32" }>, align 8
@.d11 = private constant <{ i64, [105 x i8] }> <{ i64 0, [105 x i8] c"'as' fails where the value holds another case - write 'try' before it and catch CaseError, or '(x as C)!'" }>, align 8
@.d12 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"after 'as' comes a case of " }>, align 8
@.d13 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c", found " }>, align 8
@.d14 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E32" }>, align 8
@.d15 = private constant <{ i64, [52 x i8] }> <{ i64 0, [52 x i8] c"this assertion is false, evaluated while compiling: " }>, align 8
@.d16 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"S18c" }>, align 8
@.d17 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"an error may not leave " }>, align 8
@.d18 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c" message - catch it here" }>, align 8
@.d19 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"S17" }>, align 8
@.d20 = private constant <{ i64, [79 x i8] }> <{ i64 0, [79 x i8] c" message may not return - it is evaluated only where it is used, and gives text" }>, align 8
@.d21 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"S17" }>, align 8
@.d22 = private constant <{ i64, [36 x i8] }> <{ i64 0, [36 x i8] c" targets need as many values, found " }>, align 8
@.d23 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"S4c" }>, align 8
@.d24 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"P9" }>, align 8
@.d25 = private constant <{ i64, [62 x i8] }> <{ i64 0, [62 x i8] c"this atomic operation writes its place, which must be writable" }>, align 8
@.d26 = private constant <{ i64, [71 x i8] }> <{ i64 0, [71 x i8] c"an attribute's value is built while compiling, and this one cannot be: " }>, align 8
@.d27 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"G39" }>, align 8
@.d28 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"G39" }>, align 8
@.d29 = private constant <{ i64, [140 x i8] }> <{ i64 0, [140 x i8] c"an attribute is written before a type, a function or a method, an enum's case, a constructor's field or a parameter - nothing here takes one" }>, align 8
@.d30 = private constant <{ i64, [71 x i8] }> <{ i64 0, [71 x i8] c"a declaration takes one attribute of each type, and this is its second " }>, align 8
@.d31 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"G39" }>, align 8
@.d32 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"S21" }>, align 8
@.d33 = private constant <{ i64, [180 x i8] }> <{ i64 0, [180 x i8] c"'become' closes this function's scopes before the call, and this argument is storage made in one of them - pass what the function was given, a global, or a value; or write 'return'" }>, align 8
@.d34 = private constant <{ i64, [81 x i8] }> <{ i64 0, [81 x i8] c"'become' makes the callee's failure this function's own, and this one fails with " }>, align 8
@.d35 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c", the callee with " }>, align 8
@.d36 = private constant <{ i64, [76 x i8] }> <{ i64 0, [76 x i8] c" - give them one error set, in one order, or write 'return try' and the call" }>, align 8
@.d37 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"S21" }>, align 8
@.d38 = private constant <{ i64, [64 x i8] }> <{ i64 0, [64 x i8] c"'become' ends this function before the call, and its parameter '" }>, align 8
@.d39 = private constant <{ i64, [123 x i8] }> <{ i64 0, [123 x i8] c"' holds a value with a destructor the call does not take, which would run then - hand it on, or write 'return' and the call" }>, align 8
@.d40 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"S21" }>, align 8
@.d41 = private constant <{ i64, [78 x i8] }> <{ i64 0, [78 x i8] c"'become' takes a call of a function or a method declared with fn, and this is " }>, align 8
@.d42 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c" - write 'return' instead" }>, align 8
@.d43 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"S21" }>, align 8
@.d44 = private constant <{ i64, [67 x i8] }> <{ i64 0, [67 x i8] c"'become' calls a function of this one's own signature, and this is " }>, align 8
@.d45 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c", the callee " }>, align 8
@.d46 = private constant <{ i64, [58 x i8] }> <{ i64 0, [58 x i8] c" - write 'return' and the call, or give them one signature" }>, align 8
@.d47 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"S21" }>, align 8
@.d48 = private constant <{ i64, [145 x i8] }> <{ i64 0, [145 x i8] c" is no type a builder makes - its owner is a struct, an enum, a type declared over another, an extern type, or a type variable a trait constrains" }>, align 8
@.d49 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"D19" }>, align 8
@.d50 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"no C file at " }>, align 8
@.d51 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"X17" }>, align 8
@.d52 = private constant <{ i64, [38 x i8] }> <{ i64 0, [38 x i8] c"C may write through this pointer, and " }>, align 8
@.d53 = private constant <{ i64, [43 x i8] }> <{ i64 0, [43 x i8] c" is read-only - pass a writable one ('mut')" }>, align 8
@.d54 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"X22" }>, align 8
@.d55 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"X13" }>, align 8
@.d56 = private constant <{ i64, [111 x i8] }> <{ i64 0, [111 x i8] c"a C function is given a function by the name of an export fn - declare one with 'export fn' and pass it by name" }>, align 8
@.d57 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"the program cannot be run: " }>, align 8
@.d58 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"B3g" }>, align 8
@.d59 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"D16c" }>, align 8
@.d60 = private constant <{ i64, [84 x i8] }> <{ i64 0, [84 x i8] c"a lambda's captures are read-only - capture a reference to change what is outside it" }>, align 8
@.d61 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"S13f" }>, align 8
@.d62 = private constant <{ i64, [73 x i8] }> <{ i64 0, [73 x i8] c"no value reaches this - an earlier 'case _' with no guard takes every one" }>, align 8
@.d63 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"case " }>, align 8
@.d64 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c" is private to its module" }>, align 8
@.d65 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"M6a" }>, align 8
@.d66 = private constant <{ i64, [115 x i8] }> <{ i64 0, [115 x i8] c" is the value being matched, so this compares it with itself - to take any value and test it, write 'case _ if ...'" }>, align 8
@.d67 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"S13f" }>, align 8
declare void @__olang_check_failed(ptr) cold noreturn
@.d68 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"the type arguments of " }>, align 8
@.d69 = private constant <{ i64, [50 x i8] }> <{ i64 0, [50 x i8] c" cannot be inferred from this case - write them, '" }>, align 8
@.d70 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"<...>." }>, align 8
@.d71 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"', or give it a type to land in" }>, align 8
@.d72 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"G10c" }>, align 8
@.d73 = private constant <{ i64, [75 x i8] }> <{ i64 0, [75 x i8] c" names the error this clause took, and nothing uses it - leave the name off" }>, align 8
@.d74 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"R11b" }>, align 8
@.d75 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"clang could not compile " }>, align 8
@.d76 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d77 = private constant <{ i64, [34 x i8] }> <{ i64 0, [34 x i8] c" takes a record for its rows, and " }>, align 8
@.d78 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d79 = private constant <{ i64, [140 x i8] }> <{ i64 0, [140 x i8] c" - a record is a struct whose constructor declares exactly its fields, each a parameter written bare: 'type P struct(X F32, Y F32) { X, Y }'" }>, align 8
@.d80 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T7e" }>, align 8
@.d81 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"with 'commutes' here, " }>, align 8
@.d82 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" between " }>, align 8
@.d83 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" and " }>, align 8
@.d84 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c" would call this method or " }>, align 8
@.d85 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c" - remove 'commutes'" }>, align 8
@.d86 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"E31c" }>, align 8
@.d87 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E27" }>, align 8
@.d88 = private constant <{ i64, [228 x i8] }> <{ i64 0, [228 x i8] c"a comprehension made into a collection other than an array or a Vec walks its elements as the collection asks for them, and may not fail by calls of its own - write a generator function and call the collection's FromIter with it" }>, align 8
@.d89 = private constant <{ i64, [48 x i8] }> <{ i64 0, [48 x i8] c"a comptime for walks a range or an array, found " }>, align 8
@.d90 = private constant <{ i64, [50 x i8] }> <{ i64 0, [50 x i8] c" - give it an array: 'comptime for x in xs.View()'" }>, align 8
@.d91 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"K3a" }>, align 8
@.d92 = private constant <{ i64, [44 x i8] }> <{ i64 0, [44 x i8] c"a comptime is computed while compiling, and " }>, align 8
@.d93 = private constant <{ i64, [141 x i8] }> <{ i64 0, [141 x i8] c" is a local or a parameter, which only the running program knows - compute it from constants, globals and type parameters, or drop 'comptime'" }>, align 8
@.d94 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"K3" }>, align 8
@.d95 = private constant <{ i64, [52 x i8] }> <{ i64 0, [52 x i8] c" is mutable, so a top-level condition cannot read it" }>, align 8
@.d96 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"B9a" }>, align 8
@.d97 = private constant <{ i64, [60 x i8] }> <{ i64 0, [60 x i8] c"this top-level condition cannot be decided while compiling: " }>, align 8
@.d98 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"B9c" }>, align 8
@.d99 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"B9c" }>, align 8
@.d100 = private constant <{ i64, [92 x i8] }> <{ i64 0, [92 x i8] c"this top-level condition uses what exists only in the branches it decides, or does not check" }>, align 8
@.d101 = private constant <{ i64, [89 x i8] }> <{ i64 0, [89 x i8] c" has conditions, so a call fails with ArgumentError where one is false - add it after '?'" }>, align 8
@.d102 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"D17" }>, align 8
@.d103 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c" does not fit " }>, align 8
@.d104 = private constant <{ i64, [45 x i8] }> <{ i64 0, [45 x i8] c" - write a value that fits, or 'try x.Narrow<" }>, align 8
@.d105 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c">()' to fail with an error" }>, align 8
@.d106 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"D17g" }>, align 8
@.d107 = private constant <{ i64, [85 x i8] }> <{ i64 0, [85 x i8] c"Copy takes nothing but its receiver, read through a read-only reference, gives a new " }>, align 8
@.d108 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c" and cannot fail - write 'fn (x " }>, align 8
@.d109 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"&) Copy() " }>, align 8
@.d110 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d111 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"E31d" }>, align 8
@.d112 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"the type of field " }>, align 8
@.d113 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" names " }>, align 8
@.d114 = private constant <{ i64, [105 x i8] }> <{ i64 0, [105 x i8] c", which only the constructor introduces - for a field to hold it, declare it the type's parameter: 'type " }>, align 8
@.d115 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"<" }>, align 8
@.d116 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c">'" }>, align 8
@.d117 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"G10d" }>, align 8
@.d118 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c" is not one of " }>, align 8
@.d119 = private constant <{ i64, [81 x i8] }> <{ i64 0, [81 x i8] c"'s parameters, and a generic type's constructor introduces none of its own - add " }>, align 8
@.d120 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c" to the type's list" }>, align 8
@.d121 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"G10d" }>, align 8
@.d122 = private constant <{ i64, [72 x i8] }> <{ i64 0, [72 x i8] c"a type is declared over a number, an array or a function type, not over " }>, align 8
@.d123 = private constant <{ i64, [38 x i8] }> <{ i64 0, [38 x i8] c" - hold it in a struct's field instead" }>, align 8
@.d124 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T29" }>, align 8
@.d125 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c" is declared twice" }>, align 8
@.d126 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d127 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"E14a" }>, align 8
@.d128 = private constant <{ i64, [67 x i8] }> <{ i64 0, [67 x i8] c"'default' stands only for a parameter's declared default, in a call" }>, align 8
@.d129 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"a default of trait " }>, align 8
@.d130 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c" is declared in that trait's module" }>, align 8
@.d131 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"M19e" }>, align 8
@.d132 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"R11, O25" }>, align 8
@.d133 = private constant <{ i64, [83 x i8] }> <{ i64 0, [83 x i8] c"a reference default lives where the call's result does - or is null, or built there" }>, align 8
@.d134 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"-define " }>, align 8
@.d135 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"=" }>, align 8
@.d136 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c": below I64's minimum" }>, align 8
@.d137 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"B10" }>, align 8
@.d138 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"C7" }>, align 8
@.d139 = private constant <{ i64, [118 x i8] }> <{ i64 0, [118 x i8] c"'destruct' follows the constructor's body - close the body first: 'type T unique struct(...) { ... } destruct { ... }'" }>, align 8
@.d140 = private constant <{ i64, [58 x i8] }> <{ i64 0, [58 x i8] c"only several results can be destructured, and this is one " }>, align 8
@.d141 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"D8c" }>, align 8
@.d142 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E6a" }>, align 8
@.d143 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"division by zero" }>, align 8
@.d144 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d145 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"' is no item of " }>, align 8
@.d146 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c" - 'olang doc " }>, align 8
@.d147 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"' lists them" }>, align 8
@.d148 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"B14" }>, align 8
@.d149 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d150 = private constant <{ i64, [75 x i8] }> <{ i64 0, [75 x i8] c"' holds a value where its call landed, ended as that scope closes - after '" }>, align 8
@.d151 = private constant <{ i64, [68 x i8] }> <{ i64 0, [68 x i8] c"', which it may hold a reference to, so its destructors could read '" }>, align 8
@.d152 = private constant <{ i64, [39 x i8] }> <{ i64 0, [39 x i8] c"' already ended: declare it by value, '" }>, align 8
@.d153 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d154 = private constant <{ i64, [36 x i8] }> <{ i64 0, [36 x i8] c" = ...', and its block ends it first" }>, align 8
@.d155 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"O15, O16" }>, align 8
@.d156 = private constant <{ i64, [77 x i8] }> <{ i64 0, [77 x i8] c"this value is held where its call lands, ended as that scope closes - after '" }>, align 8
@.d157 = private constant <{ i64, [82 x i8] }> <{ i64 0, [82 x i8] c"', which the call may make it hold a reference to, so its destructors could read '" }>, align 8
@.d158 = private constant <{ i64, [47 x i8] }> <{ i64 0, [47 x i8] c"' already ended: declare it by value first, 'x " }>, align 8
@.d159 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c" = ...', and give the call that" }>, align 8
@.d160 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"O15, O16" }>, align 8
@.d161 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"embed " }>, align 8
@.d162 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c" reads no file: " }>, align 8
@.d163 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E38" }>, align 8
@.d164 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"E10a" }>, align 8
@.d165 = private constant <{ i64, [66 x i8] }> <{ i64 0, [66 x i8] c"Eq takes one parameter of its receiver's own type and gives a Bool" }>, align 8
@.d166 = private constant <{ i64, [85 x i8] }> <{ i64 0, [85 x i8] c" takes what it is given read-only - neither its receiver nor a parameter may be 'mut'" }>, align 8
@.d167 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"E10a, E11c" }>, align 8
@.d168 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d169 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"' is " }>, align 8
@.d170 = private constant <{ i64, [47 x i8] }> <{ i64 0, [47 x i8] c", not an error value - only an error value is '" }>, align 8
@.d171 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T20" }>, align 8
@.d172 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"T19b, S13b" }>, align 8
@.d173 = private constant <{ i64, [99 x i8] }> <{ i64 0, [99 x i8] c"a payload pattern binding a name stands alone in its case - give each alternative a case of its own" }>, align 8
@.d174 = private constant <{ i64, [59 x i8] }> <{ i64 0, [59 x i8] c" has no error-set parameter, so its arguments end in no '?'" }>, align 8
@.d175 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"G1a" }>, align 8
@.d176 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" on " }>, align 8
@.d177 = private constant <{ i64, [88 x i8] }> <{ i64 0, [88 x i8] c": an error value is no number - it is compared with '==' and '!=', and rendered with '$'" }>, align 8
@.d178 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T20" }>, align 8
@.d179 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"expected " }>, align 8
@.d180 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c", found " }>, align 8
@.d181 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c", which can be " }>, align 8
@.d182 = private constant <{ i64, [63 x i8] }> <{ i64 0, [63 x i8] c" - test it first ('if e == T'), or hold it in a set that has it" }>, align 8
@.d183 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T20" }>, align 8
@.d184 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"this function does not declare " }>, align 8
@.d185 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c" - add it after '?'" }>, align 8
@.d186 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"R3" }>, align 8
@.d187 = private constant <{ i64, [62 x i8] }> <{ i64 0, [62 x i8] c" is the program's own name in C - name the export fn otherwise" }>, align 8
@.d188 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"X12" }>, align 8
@.d189 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T29f" }>, align 8
@.d190 = private constant <{ i64, [54 x i8] }> <{ i64 0, [54 x i8] c"only a type over a number or an array extends its base" }>, align 8
@.d191 = private constant <{ i64, [188 x i8] }> <{ i64 0, [188 x i8] c" cannot cross the C boundary - an extern parameter is a number of the twelve primitives, a Bool, an extern type's reference, a plain-data struct or a reference to one, or an array of these" }>, align 8
@.d192 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"X2" }>, align 8
@.d193 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"O23, O11" }>, align 8
@.d194 = private constant <{ i64, [117 x i8] }> <{ i64 0, [117 x i8] c"this stores into a field whose binding is not known through this path - store through a variable holding the instance" }>, align 8
@.d195 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"the field '" }>, align 8
@.d196 = private constant <{ i64, [61 x i8] }> <{ i64 0, [61 x i8] c"' is not assigned on every path through the constructor, and " }>, align 8
@.d197 = private constant <{ i64, [63 x i8] }> <{ i64 0, [63 x i8] c" has no zero value - assign it on each path, or give it a value" }>, align 8
@.d198 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"D13d" }>, align 8
@.d199 = private constant <{ i64, [52 x i8] }> <{ i64 0, [52 x i8] c" is an extern type, held only by reference - write '" }>, align 8
@.d200 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"&', or '" }>, align 8
@.d201 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"?&' where it may be null" }>, align 8
@.d202 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"X10" }>, align 8
@.d203 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"R1b" }>, align 8
@.d204 = private constant <{ i64, [83 x i8] }> <{ i64 0, [83 x i8] c"a function type writes its error set - '? io.Error' - since no body says what it is" }>, align 8
@.d205 = private constant <{ i64, [96 x i8] }> <{ i64 0, [96 x i8] c" is generational - a weak reference names it - so its values are held only by reference: write '" }>, align 8
@.d206 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"&' here" }>, align 8
@.d207 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T13d" }>, align 8
@.d208 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"this weak reference makes " }>, align 8
@.d209 = private constant <{ i64, [98 x i8] }> <{ i64 0, [98 x i8] c" generational - its values held only by reference - and another module holds one by value: write '" }>, align 8
@.d210 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"&' there, or drop 'weak'" }>, align 8
@.d211 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T13d" }>, align 8
@.d212 = private constant <{ i64, [79 x i8] }> <{ i64 0, [79 x i8] c"a generator fails as its Next does - write its errors in its result: 'Iterator<" }>, align 8
@.d213 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" ? E>'" }>, align 8
@.d214 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"D18" }>, align 8
@.d215 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"generic function '" }>, align 8
@.d216 = private constant <{ i64, [75 x i8] }> <{ i64 0, [75 x i8] c"' is not a value - call it, or name an instance by its type arguments, as '" }>, align 8
@.d217 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"<I64>'" }>, align 8
@.d218 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"G12" }>, align 8
@.d219 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"nothing of " }>, align 8
@.d220 = private constant <{ i64, [61 x i8] }> <{ i64 0, [61 x i8] c" changes after its constructor (it is immut) - make a new one" }>, align 8
@.d221 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T13a" }>, align 8
@.d222 = private constant <{ i64, [48 x i8] }> <{ i64 0, [48 x i8] c"another import of this module is already named '" }>, align 8
@.d223 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c"' - give one an alias of its own" }>, align 8
@.d224 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"M5" }>, align 8
@.d225 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"import " }>, align 8
@.d226 = private constant <{ i64, [67 x i8] }> <{ i64 0, [67 x i8] c" is private to its module - only a capitalized alias is re-exported" }>, align 8
@.d227 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"M14" }>, align 8
@.d228 = private constant <{ i64, [48 x i8] }> <{ i64 0, [48 x i8] c"could not fetch the commit olang.lock names for " }>, align 8
@.d229 = private constant <{ i64, [41 x i8] }> <{ i64 0, [41 x i8] c" - delete its line, or build with -update" }>, align 8
@.d230 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"M23b, M23c" }>, align 8
@.d231 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"M23" }>, align 8
@.d232 = private constant <{ i64, [43 x i8] }> <{ i64 0, [43 x i8] c"this import path is too long to name a file" }>, align 8
@.d233 = private constant <{ i64, [61 x i8] }> <{ i64 0, [61 x i8] c" reaches a file another import of this module already reaches" }>, align 8
@.d234 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"M16" }>, align 8
@.d235 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"the library '" }>, align 8
@.d236 = private constant <{ i64, [48 x i8] }> <{ i64 0, [48 x i8] c"' a link names cannot be loaded into interpret: " }>, align 8
@.d237 = private constant <{ i64, [28 x i8] }> <{ i64 0, [28 x i8] c" - build the program instead" }>, align 8
@.d238 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"B3e" }>, align 8
@.d239 = private constant <{ i64, [63 x i8] }> <{ i64 0, [63 x i8] c" cannot be a reference - only a struct, an enum or an array can" }>, align 8
@.d240 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T24" }>, align 8
@.d241 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"a case is tested with '" }>, align 8
@.d242 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"': '" }>, align 8
@.d243 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d244 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d245 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"E10c, E32" }>, align 8
@.d246 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"M1" }>, align 8
@.d247 = private constant <{ i64, [41 x i8] }> <{ i64 0, [41 x i8] c"a directory - a module is one .olang file" }>, align 8
@.d248 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"P4c" }>, align 8
@.d249 = private constant <{ i64, [46 x i8] }> <{ i64 0, [46 x i8] c"no task of this join can fail - drop the 'try'" }>, align 8
@.d250 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"S3, E11b" }>, align 8
@.d251 = private constant <{ i64, [100 x i8] }> <{ i64 0, [100 x i8] c"text on a line of its own does nothing - a join continues onto the next line only inside parentheses" }>, align 8
@.d252 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"E11b" }>, align 8
@.d253 = private constant <{ i64, [77 x i8] }> <{ i64 0, [77 x i8] c"'(' after a piece of text calls it - to join the value inside, write '$(...)'" }>, align 8
@.d254 = private constant <{ i64, [42 x i8] }> <{ i64 0, [42 x i8] c" is a keyword, not a name - choose another" }>, align 8
@.d255 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"L9" }>, align 8
@.d256 = private constant <{ i64, [99 x i8] }> <{ i64 0, [99 x i8] c" is a keyword, not a name - a field named by one is reached only after '.', never by the name alone" }>, align 8
@.d257 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"L9a" }>, align 8
@.d258 = private constant <{ i64, [28 x i8] }> <{ i64 0, [28 x i8] c" takes lanes of Bool, found " }>, align 8
@.d259 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E39" }>, align 8
@.d260 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E31" }>, align 8
@.d261 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c"Less, which '<' calls, gives a Bool" }>, align 8
@.d262 = private constant <{ i64, [78 x i8] }> <{ i64 0, [78 x i8] c" applies to explain only with -asm or -ir, which show code as a build makes it" }>, align 8
@.d263 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"B11d" }>, align 8
@.d264 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"explain " }>, align 8
@.d265 = private constant <{ i64, [80 x i8] }> <{ i64 0, [80 x i8] c" takes a program's file and the name of one of its functions, as 'olang explain " }>, align 8
@.d266 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c" main.olang main'" }>, align 8
@.d267 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"B11d" }>, align 8
@.d268 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"this literal does not fit " }>, align 8
@.d269 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", and " }>, align 8
@.d270 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c" does not flow into " }>, align 8
@.d271 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c" - convert one" }>, align 8
@.d272 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E6d" }>, align 8
@.d273 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"a literal or comprehension of " }>, align 8
@.d274 = private constant <{ i64, [60 x i8] }> <{ i64 0, [60 x i8] c" hands its FromIter a walk of references to the values, and " }>, align 8
@.d275 = private constant <{ i64, [51 x i8] }> <{ i64 0, [51 x i8] c" is unique - its values are never copied: make the " }>, align 8
@.d276 = private constant <{ i64, [47 x i8] }> <{ i64 0, [47 x i8] c" and add each value by its own call (Push, Put)" }>, align 8
@.d277 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"E19, T13b" }>, align 8
@.d278 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"B4" }>, align 8
@.d279 = private constant <{ i64, [84 x i8] }> <{ i64 0, [84 x i8] c"main takes no parameters and returns no value: 'fn main() { }', or 'fn main() ? { }'" }>, align 8
@.d280 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"a match over " }>, align 8
@.d281 = private constant <{ i64, [70 x i8] }> <{ i64 0, [70 x i8] c" gives a value only when its cases cover every value - add 'case _: v'" }>, align 8
@.d282 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"S12b" }>, align 8
@.d283 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c" inherits a method " }>, align 8
@.d284 = private constant <{ i64, [36 x i8] }> <{ i64 0, [36 x i8] c" from its base - choose another name" }>, align 8
@.d285 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T29e" }>, align 8
@.d286 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"the compiler supplies " }>, align 8
@.d287 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" for " }>, align 8
@.d288 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c" - choose another name" }>, align 8
@.d289 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"E23, E33, E37, P9, T17e" }>, align 8
@.d290 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"a method of " }>, align 8
@.d291 = private constant <{ i64, [34 x i8] }> <{ i64 0, [34 x i8] c" is declared in that type's module" }>, align 8
@.d292 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"M19" }>, align 8
@.d293 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d294 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"' is declared twice for " }>, align 8
@.d295 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c" - declare one per instance" }>, align 8
@.d296 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"M21" }>, align 8
@.d297 = private constant <{ i64, [50 x i8] }> <{ i64 0, [50 x i8] c" takes no files - its client names them as it goes" }>, align 8
@.d298 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"B1" }>, align 8
@.d299 = private constant <{ i64, [38 x i8] }> <{ i64 0, [38 x i8] c"'mut' makes a reference writable, and " }>, align 8
@.d300 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c" is no reference" }>, align 8
@.d301 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T25b" }>, align 8
@.d302 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c" has no builder, case or member " }>, align 8
@.d303 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"D19" }>, align 8
@.d304 = private constant <{ i64, [57 x i8] }> <{ i64 0, [57 x i8] c"clang not found on PATH - install clang-20 (the IR is in " }>, align 8
@.d305 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d306 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d307 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c" has no limit '" }>, align 8
@.d308 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d309 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E36" }>, align 8
@.d310 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"the specification has no rule " }>, align 8
@.d311 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"B11a" }>, align 8
@.d312 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d313 = private constant <{ i64, [56 x i8] }> <{ i64 0, [56 x i8] c"' is no olang file to run - a file's name ends in .olang" }>, align 8
@.d314 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"B1" }>, align 8
@.d315 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d316 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"not a regular file" }>, align 8
@.d317 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c" is declared here" }>, align 8
@.d318 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d319 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d320 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"a " }>, align 8
@.d321 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c" held by value here" }>, align 8
@.d322 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d323 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"the range's literals make '" }>, align 8
@.d324 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"' " }>, align 8
@.d325 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c" - write '" }>, align 8
@.d326 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d327 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c")' here for " }>, align 8
@.d328 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" values" }>, align 8
@.d329 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d330 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d331 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"' cannot be made where '" }>, align 8
@.d332 = private constant <{ i64, [106 x i8] }> <{ i64 0, [106 x i8] c"' lives: a Str builds nothing where its receiver does - keep copies of what it reads instead of references" }>, align 8
@.d333 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d334 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d335 = private constant <{ i64, [71 x i8] }> <{ i64 0, [71 x i8] c"this clause runs when the try fails, which may be before the assignment" }>, align 8
@.d336 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d337 = private constant <{ i64, [62 x i8] }> <{ i64 0, [62 x i8] c"the callee is no view of the element because of this statement" }>, align 8
@.d338 = private constant <{ i64, [44 x i8] }> <{ i64 0, [44 x i8] c"an array written '&' is never null - write '" }>, align 8
@.d339 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"' for an empty " }>, align 8
@.d340 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c", or '?&' where it may be null" }>, align 8
@.d341 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T2c" }>, align 8
@.d342 = private constant <{ i64, [52 x i8] }> <{ i64 0, [52 x i8] c" is never null - a reference that may be is written " }>, align 8
@.d343 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T2c" }>, align 8
@.d344 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" and " }>, align 8
@.d345 = private constant <{ i64, [56 x i8] }> <{ i64 0, [56 x i8] c" do not meet - neither flows into the other; convert one" }>, align 8
@.d346 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T6b" }>, align 8
@.d347 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c" applies to " }>, align 8
@.d348 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c", not to " }>, align 8
@.d349 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"B1" }>, align 8
@.d350 = private constant <{ i64, [76 x i8] }> <{ i64 0, [76 x i8] c" is packed and holds a float, so it crosses to C by reference only - write '" }>, align 8
@.d351 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"&'" }>, align 8
@.d352 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"X11a" }>, align 8
@.d353 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"Place gives no '" }>, align 8
@.d354 = private constant <{ i64, [66 x i8] }> <{ i64 0, [66 x i8] c"' through its name - 'Place.Here' is the place where it is written" }>, align 8
@.d355 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E40" }>, align 8
@.d356 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T29d" }>, align 8
@.d357 = private constant <{ i64, [106 x i8] }> <{ i64 0, [106 x i8] c"only a type over a primitive has a constructor written this way - a struct writes 'struct(params) { ... }'" }>, align 8
@.d358 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d359 = private constant <{ i64, [70 x i8] }> <{ i64 0, [70 x i8] c"' holds no reference, so no result can refer into it - leave 'borrows " }>, align 8
@.d360 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"' out" }>, align 8
@.d361 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T21c" }>, align 8
@.d362 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T21c" }>, align 8
@.d363 = private constant <{ i64, [91 x i8] }> <{ i64 0, [91 x i8] c"'returns' promises every call comes back, and 'noreturn' that none does - write one of them" }>, align 8
@.d364 = private constant <{ i64, [80 x i8] }> <{ i64 0, [80 x i8] c"an error of one word named as its type is declared by raising it - write 'error " }>, align 8
@.d365 = private constant <{ i64, [41 x i8] }> <{ i64 0, [41 x i8] c"' where it is raised, with no declaration" }>, align 8
@.d366 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"R3b" }>, align 8
@.d367 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"S9b" }>, align 8
@.d368 = private constant <{ i64, [51 x i8] }> <{ i64 0, [51 x i8] c"a range only counts upward, so its step is positive" }>, align 8
@.d369 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d370 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"' has the raw value " }>, align 8
@.d371 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c", which '" }>, align 8
@.d372 = private constant <{ i64, [39 x i8] }> <{ i64 0, [39 x i8] c"' has already - raw values are distinct" }>, align 8
@.d373 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T17e" }>, align 8
@.d374 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d375 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"' is a " }>, align 8
@.d376 = private constant <{ i64, [98 x i8] }> <{ i64 0, [98 x i8] c", which may be null - read through it where a test says it is not ('if x is not null'), or write '" }>, align 8
@.d377 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"!'" }>, align 8
@.d378 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T2c" }>, align 8
@.d379 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"a copy of a read-only " }>, align 8
@.d380 = private constant <{ i64, [71 x i8] }> <{ i64 0, [71 x i8] c" cannot be stored where it can be written - store one of its own, made " }>, align 8
@.d381 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T25c" }>, align 8
@.d382 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"re-exporting " }>, align 8
@.d383 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c" reaches this module again" }>, align 8
@.d384 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"M17" }>, align 8
@.d385 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"G37" }>, align 8
@.d386 = private constant <{ i64, [167 x i8] }> <{ i64 0, [167 x i8] c"a comprehension written as a call's arguments walks a list known while compiling - 'T.Params', 'T.Fields' ...; another is written in brackets, 'Array<T>[e for x in c]'" }>, align 8
@.d387 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d388 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"' is called with " }>, align 8
@.d389 = private constant <{ i64, [46 x i8] }> <{ i64 0, [46 x i8] c" arguments (a method's receiver first), found " }>, align 8
@.d390 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"G41" }>, align 8
@.d391 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"parameter '" }>, align 8
@.d392 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"' of " }>, align 8
@.d393 = private constant <{ i64, [66 x i8] }> <{ i64 0, [66 x i8] c" has no default - read 'p.Default' only where 'p.HasDefault' holds" }>, align 8
@.d394 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"G34" }>, align 8
@.d395 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"the error raised again can be " }>, align 8
@.d396 = private constant <{ i64, [82 x i8] }> <{ i64 0, [82 x i8] c", which this function does not declare - add it after '?', or test the error first" }>, align 8
@.d397 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"R3a" }>, align 8
@.d398 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"this function returns " }>, align 8
@.d399 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" value" }>, align 8
@.d400 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c", found " }>, align 8
@.d401 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"D8c" }>, align 8
@.d402 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E31" }>, align 8
@.d403 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"SetAt gives no result" }>, align 8
@.d404 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"E8a, E4a" }>, align 8
@.d405 = private constant <{ i64, [116 x i8] }> <{ i64 0, [116 x i8] c"this shift is past its literal's width, and nothing adapts it to a wider type - convert the literal, as I64(1) << 40" }>, align 8
@.d406 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"P2, D16e" }>, align 8
@.d407 = private constant <{ i64, [93 x i8] }> <{ i64 0, [93 x i8] c"this function value closes before the join does - make it outside, or spawn the lambda itself" }>, align 8
@.d408 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"D8d" }>, align 8
@.d409 = private constant <{ i64, [107 x i8] }> <{ i64 0, [107 x i8] c"these results are passed as the arguments, so there must be as many - destructure them first: 'a, b := g()'" }>, align 8
@.d410 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"E11c" }>, align 8
@.d411 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"Str gives a String" }>, align 8
@.d412 = private constant <{ i64, [36 x i8] }> <{ i64 0, [36 x i8] c" runs on this machine, and '-target " }>, align 8
@.d413 = private constant <{ i64, [74 x i8] }> <{ i64 0, [74 x i8] c"' is another architecture or system - build, compile and test build for it" }>, align 8
@.d414 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"B12a" }>, align 8
@.d415 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"P4a" }>, align 8
@.d416 = private constant <{ i64, [106 x i8] }> <{ i64 0, [106 x i8] c"an error may not leave a task's clause - catch it here; the task lets through what its clauses do not take" }>, align 8
@.d417 = private constant <{ i64, [81 x i8] }> <{ i64 0, [81 x i8] c" may not leave a task's clause - it runs on the task, outside the spawner's loops" }>, align 8
@.d418 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"P4a" }>, align 8
@.d419 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"S17a" }>, align 8
@.d420 = private constant <{ i64, [55 x i8] }> <{ i64 0, [55 x i8] c"this top-level assert is false, decided while compiling" }>, align 8
@.d421 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d422 = private constant <{ i64, [118 x i8] }> <{ i64 0, [118 x i8] c"' has a value in its declaration - a global is given its value once: declare it with no value, or drop this assignment" }>, align 8
@.d423 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"D13e" }>, align 8
@.d424 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c"this branch does not assign '" }>, align 8
@.d425 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"', and " }>, align 8
@.d426 = private constant <{ i64, [78 x i8] }> <{ i64 0, [78 x i8] c" has no zero value - assign it in every branch of the 'if', or give it a value" }>, align 8
@.d427 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"D13e" }>, align 8
@.d428 = private constant <{ i64, [95 x i8] }> <{ i64 0, [95 x i8] c" is not a trait, so a trait cannot extend it - a type takes a trait's methods by declaring them" }>, align 8
@.d429 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T30a" }>, align 8
@.d430 = private constant <{ i64, [81 x i8] }> <{ i64 0, [81 x i8] c" is an open trait, so it lists no types to take in - list types, or closed traits" }>, align 8
@.d431 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T31a" }>, align 8
@.d432 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"R10" }>, align 8
@.d433 = private constant <{ i64, [114 x i8] }> <{ i64 0, [114 x i8] c"a try statement discards its value, leaving a slice nothing - write 's := try a[lo:hi]' and catch where it is used" }>, align 8
@.d434 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"R13" }>, align 8
@.d435 = private constant <{ i64, [65 x i8] }> <{ i64 0, [65 x i8] c"an error tried here has nowhere to go - catch every one it can be" }>, align 8
@.d436 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d437 = private constant <{ i64, [70 x i8] }> <{ i64 0, [70 x i8] c"' is an error already caught, not a call - raise it again with 'error " }>, align 8
@.d438 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"R11b" }>, align 8
@.d439 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"L12" }>, align 8
@.d440 = private constant <{ i64, [38 x i8] }> <{ i64 0, [38 x i8] c"a number has at most one decimal point" }>, align 8
@.d441 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"the type arguments of " }>, align 8
@.d442 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c" cannot be inferred from these arguments" }>, align 8
@.d443 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"G9" }>, align 8
@.d444 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"type " }>, align 8
@.d445 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c" is private to its module" }>, align 8
@.d446 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"M6" }>, align 8
@.d447 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"type variable " }>, align 8
@.d448 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" of " }>, align 8
@.d449 = private constant <{ i64, [57 x i8] }> <{ i64 0, [57 x i8] c" appears in no parameter's type, so the call writes it - " }>, align 8
@.d450 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"<...>(...)" }>, align 8
@.d451 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"G4" }>, align 8
@.d452 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"L14" }>, align 8
@.d453 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"unterminated string literal" }>, align 8
@.d454 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d455 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"' is handed on here, and " }>, align 8
@.d456 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c" is unique - '" }>, align 8
@.d457 = private constant <{ i64, [41 x i8] }> <{ i64 0, [41 x i8] c"', which reaches it, is used after: use '" }>, align 8
@.d458 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"' before handing '" }>, align 8
@.d459 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"' on, or no longer after" }>, align 8
@.d460 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T13b" }>, align 8
@.d461 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d462 = private constant <{ i64, [61 x i8] }> <{ i64 0, [61 x i8] c"' is handed on here while the same call also reaches it, and " }>, align 8
@.d463 = private constant <{ i64, [62 x i8] }> <{ i64 0, [62 x i8] c" is unique - one value would be in two places: give the call '" }>, align 8
@.d464 = private constant <{ i64, [42 x i8] }> <{ i64 0, [42 x i8] c"' once, or hand it on in a call of its own" }>, align 8
@.d465 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T13b" }>, align 8
@.d466 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"unexpected character '" }>, align 8
@.d467 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d468 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"L16" }>, align 8
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
@.d469 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"unknown function or type " }>, align 8
@.d470 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c" - did you mean '" }>, align 8
@.d471 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"'?" }>, align 8
@.d472 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d473 = private constant <{ i64, [46 x i8] }> <{ i64 0, [46 x i8] c" is no import here - std has it: 'import \22std/" }>, align 8
@.d474 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"\22'" }>, align 8
@.d475 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"M10" }>, align 8
@.d476 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"unknown type " }>, align 8
@.d477 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d478 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"unknown type variable " }>, align 8
@.d479 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d480 = private constant <{ i64, [43 x i8] }> <{ i64 0, [43 x i8] c"a declaration's value follows '=' - write '" }>, align 8
@.d481 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" = " }>, align 8
@.d482 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"', or '" }>, align 8
@.d483 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" := " }>, align 8
@.d484 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d485 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"D12" }>, align 8
@.d486 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"S12b" }>, align 8
@.d487 = private constant <{ i64, [107 x i8] }> <{ i64 0, [107 x i8] c"a block gives no value - a clause of a match used as a value is 'case P: v', or 'case P: return x' to leave" }>, align 8
@.d488 = private constant <{ i64, [116 x i8] }> <{ i64 0, [116 x i8] c" cannot be a C variable argument - pass a number, a reference or an array; a Bool as 'I32(b)', a struct by reference" }>, align 8
@.d489 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"X21" }>, align 8
@.d490 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"this reads a view of '" }>, align 8
@.d491 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"' taken before '" }>, align 8
@.d492 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"' may have grown" }>, align 8
@.d493 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"M19g" }>, align 8
@.d494 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"a new " }>, align 8
@.d495 = private constant <{ i64, [143 x i8] }> <{ i64 0, [143 x i8] c" stored only into a weak place is held by nothing owning, so the place would read null at once - store it into an owning place first, then here" }>, align 8
@.d496 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T2d" }>, align 8
@.d497 = private constant <{ i64, [63 x i8] }> <{ i64 0, [63 x i8] c"a weak reference names an instance of a struct or an enum, and " }>, align 8
@.d498 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" is " }>, align 8
@.d499 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c" - hold it by an ordinary reference" }>, align 8
@.d500 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T2d" }>, align 8
@.d501 = private constant <{ i64, [39 x i8] }> <{ i64 0, [39 x i8] c"no owning place of the program holds a " }>, align 8
@.d502 = private constant <{ i64, [165 x i8] }> <{ i64 0, [165 x i8] c" - a field, an element, a payload or a global holding it other than weakly - so every weak reference to one would read null: hold it somewhere owning, or drop 'weak'" }>, align 8
@.d503 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T2d" }>, align 8
@olang_2esole_2ecompiler_2fmsgs_3aNearest_2e1 = weak hidden constant i1 false
declare void @__olang_region_release(ptr) noinline
@.d504 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"&" }>, align 8
@.d505 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"?&" }>, align 8
@.d506 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"?&" }>, align 8
@.d507 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"?&" }>, align 8
@.d508 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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
declare %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v1, ptr %v2, i32 %a0, { i64, ptr } %a1, { i64, ptr } %a2)
@olang_loc_78fb4d3249708b2_e3f9318f90ab6b26 = external constant [0 x i8]
@olang_loc_b5396abf9efe0c5f_c4bc3810cf304de3 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fmsgs_2eEsc(ptr %v0, i8 %a0)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v0, { i64, ptr } %a0, i8 %a1)
@olang_loc_af0cd4b2e246af5e_f7dc695b2384058a = external constant [0 x i8]
@olang_loc_afe78659650a85b_d80bf1f42ea79867 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLower(i8 %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %a0)
@olang_loc_94d222cfeceaa960_f4d92a1033be80bc = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_6c4a8e460d5bdf97_783173e1ac7a05cb = external constant [0 x i8]

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
