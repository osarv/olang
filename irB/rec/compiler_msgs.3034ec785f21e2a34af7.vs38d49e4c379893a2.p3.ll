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
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/msgs:Nearest" = type { { i64, ptr }, { i64, ptr }, i64 }
define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAltBindsOtherNames(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 589, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d0, i32 0, i32 1) }, { i64, ptr } { i64 86, ptr getelementptr inbounds (<{ i64, [86 x i8] }>, ptr @.d1, i32 0, i32 1) })
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
  store i32 185, ptr %l1
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
  %t10 = extractvalue { i64, ptr } { i64 60, ptr getelementptr inbounds (<{ i64, [60 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 60, ptr getelementptr inbounds (<{ i64, [60 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d3, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnyCopyOutlived(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 175, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d4, i32 0, i32 1) }, { i64, ptr } { i64 109, ptr getelementptr inbounds (<{ i64, [109 x i8] }>, ptr @.d5, i32 0, i32 1) })
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
  store i32 874, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d8, i32 0, i32 1) }, { i64, ptr } %t31)
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
  store i32 873, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 55, ptr getelementptr inbounds (<{ i64, [55 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 55, ptr getelementptr inbounds (<{ i64, [55 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d11, i32 0, i32 1) }, { i64, ptr } %t31)
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
  store i32 506, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 70, ptr getelementptr inbounds (<{ i64, [70 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 70, ptr getelementptr inbounds (<{ i64, [70 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t15 = extractvalue { i64, ptr } %a1, 1
  %t16 = extractvalue { i64, ptr } %a1, 0
  %t17 = add i64 %t13, %t16
  %t18 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArraySizeMismatch(ptr %v0, i64 %a0, i64 %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 327, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t11 = call i64 @__olang_fmt_i64(ptr null, i64 %a0)
  %t12 = add i64 %t9, %t11
  %t13 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t17 = call i64 @__olang_fmt_i64(ptr null, i64 %a1)
  %t18 = add i64 %t15, %t17
  %t19 = extractvalue { i64, ptr } { i64 62, ptr getelementptr inbounds (<{ i64, [62 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 62, ptr getelementptr inbounds (<{ i64, [62 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
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
  %t42 = load i32, ptr %l2, !range !{i32 0, i32 884}
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 %t42, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d18, i32 0, i32 1) }, { i64, ptr } %t41)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAssertMessageNotText(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 721, ptr %l2
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
  %t9 = extractvalue { i64, ptr } %a1, 1
  %t10 = extractvalue { i64, ptr } %a1, 0
  %t11 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t15 = extractvalue { i64, ptr } %a0, 1
  %t16 = extractvalue { i64, ptr } %a0, 0
  %t17 = add i64 %t13, %t16
  %t18 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
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
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t38, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d21, i32 0, i32 1) }, { i64, ptr } %t37)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAttrPun(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 847, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 102, ptr getelementptr inbounds (<{ i64, [102 x i8] }>, ptr @.d23, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 102, ptr getelementptr inbounds (<{ i64, [102 x i8] }>, ptr @.d23, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d24, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAttrWritable(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 851, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 67, ptr getelementptr inbounds (<{ i64, [67 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 67, ptr getelementptr inbounds (<{ i64, [67 x i8] }>, ptr @.d25, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 98, ptr getelementptr inbounds (<{ i64, [98 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 98, ptr getelementptr inbounds (<{ i64, [98 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d27, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBadEscape(ptr %v0, i8 %a0) #0 {
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
  store i32 70, ptr %l1
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
  %t9 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  %t11 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t11, 1
  %t13 = extractvalue { i64, ptr } %t11, 0
  %t14 = add i64 %t10, %t13
  %t15 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d29, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d29, i32 0, i32 1) }, 0
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
  %t36 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 %t34, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d30, i32 0, i32 1) }, { i64, ptr } %t33)
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
  store i32 755, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 50, ptr getelementptr inbounds (<{ i64, [50 x i8] }>, ptr @.d31, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 50, ptr getelementptr inbounds (<{ i64, [50 x i8] }>, ptr @.d31, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d32, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d32, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d33, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBecomeTry(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 756, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d34, i32 0, i32 1) }, { i64, ptr } { i64 99, ptr getelementptr inbounds (<{ i64, [99 x i8] }>, ptr @.d35, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBreakOutsideLoop(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 697, ptr %l1
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
  %t10 = extractvalue { i64, ptr } { i64 51, ptr getelementptr inbounds (<{ i64, [51 x i8] }>, ptr @.d36, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 51, ptr getelementptr inbounds (<{ i64, [51 x i8] }>, ptr @.d36, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d37, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuildConstRedeclared(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 131, ptr %l1
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
  %t10 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d38, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d38, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d39, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuildDefaultFit(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3) #0 {
entry:
  %l4 = alloca i32
  %l5 = alloca i64
  %l13 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 134, ptr %l4
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
  %t10 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d40, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d40, i32 0, i32 1) }, 0
  %t13 = extractvalue { i64, ptr } %a0, 1
  %t14 = extractvalue { i64, ptr } %a0, 0
  %t15 = add i64 %t11, %t14
  %t16 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d41, i32 0, i32 1) }, 1
  %t17 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d41, i32 0, i32 1) }, 0
  %t18 = add i64 %t15, %t17
  %t20 = extractvalue { i64, ptr } %a1, 1
  %t21 = extractvalue { i64, ptr } %a1, 0
  %t22 = add i64 %t18, %t21
  %t23 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d42, i32 0, i32 1) }, 1
  %t24 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d42, i32 0, i32 1) }, 0
  %t25 = add i64 %t22, %t24
  %t27 = extractvalue { i64, ptr } %a2, 1
  %t28 = extractvalue { i64, ptr } %a2, 0
  %t29 = add i64 %t25, %t28
  %t30 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d43, i32 0, i32 1) }, 1
  %t31 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d43, i32 0, i32 1) }, 0
  %t32 = add i64 %t29, %t31
  %t34 = extractvalue { i64, ptr } %a3, 1
  %t35 = extractvalue { i64, ptr } %a3, 0
  %t36 = add i64 %t32, %t35
  %t37 = load i64, ptr %l5
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
  %t50 = load i64, ptr %l5
  %t51 = inttoptr i64 %t50 to ptr
  %t52 = extractvalue { i64, ptr } %t48, 0
  %t53 = extractvalue { i64, ptr } %t48, 1
  %t54 = mul i64 %t52, 1
  %t55 = call ptr @__olang_scope_alloc(ptr %t51, i64 %t54)
  call void @llvm.memcpy.p0.p0.i64(ptr %t55, ptr %t53, i64 %t54, i1 false)
  %t56 = insertvalue { i64, ptr } undef, i64 %t52, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t55, 1
  %t58 = load i32, ptr %l4, !range !{i32 0, i32 884}
  %t60 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v4, ptr %v4, ptr %v4, i32 %t58, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d44, i32 0, i32 1) }, { i64, ptr } %t57)
  store %"compiler/diagmsg:Msg" %t60, ptr %l13
  br label %bb3
bb3:
  %t61 = load %"compiler/diagmsg:Msg", ptr %l13
  store %"compiler/diagmsg:Msg" %t61, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuildDefaultMut(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 132, ptr %l1
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
  %t10 = extractvalue { i64, ptr } { i64 85, ptr getelementptr inbounds (<{ i64, [85 x i8] }>, ptr @.d45, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 85, ptr getelementptr inbounds (<{ i64, [85 x i8] }>, ptr @.d45, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d46, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuilderTakesOwner(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
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
  store i32 299, ptr %l2
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
  %t9 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d47, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d47, i32 0, i32 1) }, 0
  %t12 = extractvalue { i64, ptr } %t6, 1
  %t13 = extractvalue { i64, ptr } %t6, 0
  %t14 = add i64 %t10, %t13
  %t15 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d48, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d48, i32 0, i32 1) }, 0
  %t17 = add i64 %t14, %t16
  %t19 = extractvalue { i64, ptr } %a1, 1
  %t20 = extractvalue { i64, ptr } %a1, 0
  %t21 = add i64 %t17, %t20
  %t22 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d49, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d49, i32 0, i32 1) }, 0
  %t24 = add i64 %t21, %t23
  %t26 = extractvalue { i64, ptr } %t8, 1
  %t27 = extractvalue { i64, ptr } %t8, 0
  %t28 = add i64 %t24, %t27
  %t29 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d50, i32 0, i32 1) }, 1
  %t30 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d50, i32 0, i32 1) }, 0
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
  %t54 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t52, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d51, i32 0, i32 1) }, { i64, ptr } %t51)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCHeaderNotFound(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 218, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d52, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d52, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 48, ptr getelementptr inbounds (<{ i64, [48 x i8] }>, ptr @.d53, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 48, ptr getelementptr inbounds (<{ i64, [48 x i8] }>, ptr @.d53, i32 0, i32 1) }, 0
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCallValueErrors(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3) #0 {
entry:
  %l4 = alloca i32
  %l5 = alloca i64
  %l13 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 672, ptr %l4
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
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d55, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d55, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t17 = extractvalue { i64, ptr } %a1, 1
  %t18 = extractvalue { i64, ptr } %a1, 0
  %t19 = add i64 %t15, %t18
  %t20 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d56, i32 0, i32 1) }, 1
  %t21 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d56, i32 0, i32 1) }, 0
  %t22 = add i64 %t19, %t21
  %t24 = extractvalue { i64, ptr } %a2, 1
  %t25 = extractvalue { i64, ptr } %a2, 0
  %t26 = add i64 %t22, %t25
  %t27 = extractvalue { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d57, i32 0, i32 1) }, 1
  %t28 = extractvalue { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d57, i32 0, i32 1) }, 0
  %t29 = add i64 %t26, %t28
  %t31 = extractvalue { i64, ptr } %a3, 1
  %t32 = extractvalue { i64, ptr } %a3, 0
  %t33 = add i64 %t29, %t32
  %t34 = load i64, ptr %l5
  %t35 = inttoptr i64 %t34 to ptr
  %t36 = call ptr @__olang_scope_alloc(ptr %t35, i64 %t33)
  call void @olang_textcopy(ptr %t36, ptr %t11, i64 %t12)
  %t37 = getelementptr i8, ptr %t36, i64 %t12
  call void @olang_textcopy(ptr %t37, ptr %t13, i64 %t14)
  %t38 = getelementptr i8, ptr %t37, i64 %t14
  call void @olang_textcopy(ptr %t38, ptr %t17, i64 %t18)
  %t39 = getelementptr i8, ptr %t38, i64 %t18
  call void @olang_textcopy(ptr %t39, ptr %t20, i64 %t21)
  %t40 = getelementptr i8, ptr %t39, i64 %t21
  call void @olang_textcopy(ptr %t40, ptr %t24, i64 %t25)
  %t41 = getelementptr i8, ptr %t40, i64 %t25
  call void @olang_textcopy(ptr %t41, ptr %t27, i64 %t28)
  %t42 = getelementptr i8, ptr %t41, i64 %t28
  call void @olang_textcopy(ptr %t42, ptr %t31, i64 %t32)
  %t43 = insertvalue { i64, ptr } undef, i64 %t33, 0
  %t44 = insertvalue { i64, ptr } %t43, ptr %t36, 1
  %t46 = load i64, ptr %l5
  %t47 = inttoptr i64 %t46 to ptr
  %t48 = extractvalue { i64, ptr } %t44, 0
  %t49 = extractvalue { i64, ptr } %t44, 1
  %t50 = mul i64 %t48, 1
  %t51 = call ptr @__olang_scope_alloc(ptr %t47, i64 %t50)
  call void @llvm.memcpy.p0.p0.i64(ptr %t51, ptr %t49, i64 %t50, i1 false)
  %t52 = insertvalue { i64, ptr } undef, i64 %t48, 0
  %t53 = insertvalue { i64, ptr } %t52, ptr %t51, 1
  %t54 = load i32, ptr %l4, !range !{i32 0, i32 884}
  %t56 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v4, ptr %v4, ptr %v4, i32 %t54, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d58, i32 0, i32 1) }, { i64, ptr } %t53)
  store %"compiler/diagmsg:Msg" %t56, ptr %l13
  br label %bb3
bb3:
  %t57 = load %"compiler/diagmsg:Msg", ptr %l13
  store %"compiler/diagmsg:Msg" %t57, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCarriageReturn(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 61, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d59, i32 0, i32 1) }, { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d60, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaughtCaseForm(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 824, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d61, i32 0, i32 1) }, { i64, ptr } { i64 80, ptr getelementptr inbounds (<{ i64, [80 x i8] }>, ptr @.d62, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaughtCaseNever(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 823, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 65, ptr getelementptr inbounds (<{ i64, [65 x i8] }>, ptr @.d63, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 65, ptr getelementptr inbounds (<{ i64, [65 x i8] }>, ptr @.d63, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d64, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d64, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d65, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaughtNeverIs(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca i64
  %l11 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 798, ptr %l3
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
  %t12 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d66, i32 0, i32 1) }, 1
  %t13 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d66, i32 0, i32 1) }, 0
  %t14 = add i64 %t11, %t13
  %t16 = extractvalue { i64, ptr } %a1, 1
  %t17 = extractvalue { i64, ptr } %a1, 0
  %t18 = add i64 %t14, %t17
  %t19 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d67, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d67, i32 0, i32 1) }, 0
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
  %t46 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, i32 %t44, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d68, i32 0, i32 1) }, { i64, ptr } %t43)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eColumnAssigned(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 877, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d69, i32 0, i32 1) }, { i64, ptr } { i64 89, ptr getelementptr inbounds (<{ i64, [89 x i8] }>, ptr @.d70, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eColumnNamedLikeMethod(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
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
  store i32 876, ptr %l3
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
  %t7 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t11 = extractvalue { i64, ptr } %a1, 1
  %t12 = extractvalue { i64, ptr } %a1, 0
  %t13 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d71, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d71, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t17 = extractvalue { i64, ptr } %t7, 1
  %t18 = extractvalue { i64, ptr } %t7, 0
  %t19 = add i64 %t15, %t18
  %t20 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d72, i32 0, i32 1) }, 1
  %t21 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d72, i32 0, i32 1) }, 0
  %t22 = add i64 %t19, %t21
  %t24 = extractvalue { i64, ptr } %a0, 1
  %t25 = extractvalue { i64, ptr } %a0, 0
  %t26 = add i64 %t22, %t25
  %t27 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d73, i32 0, i32 1) }, 1
  %t28 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d73, i32 0, i32 1) }, 0
  %t29 = add i64 %t26, %t28
  %t31 = extractvalue { i64, ptr } %t9, 1
  %t32 = extractvalue { i64, ptr } %t9, 0
  %t33 = add i64 %t29, %t32
  %t34 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d74, i32 0, i32 1) }, 1
  %t35 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d74, i32 0, i32 1) }, 0
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
  %t60 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, i32 %t58, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d75, i32 0, i32 1) }, { i64, ptr } %t57)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eComprNeedsTry(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 583, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d76, i32 0, i32 1) }, { i64, ptr } { i64 76, ptr getelementptr inbounds (<{ i64, [76 x i8] }>, ptr @.d77, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eComptimeForTry(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 854, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d78, i32 0, i32 1) }, { i64, ptr } { i64 126, ptr getelementptr inbounds (<{ i64, [126 x i8] }>, ptr @.d79, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondGlobalInit(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 92, ptr %l1
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
  %t10 = extractvalue { i64, ptr } { i64 56, ptr getelementptr inbounds (<{ i64, [56 x i8] }>, ptr @.d80, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 56, ptr getelementptr inbounds (<{ i64, [56 x i8] }>, ptr @.d80, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d81, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondLentWritable(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 517, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d82, i32 0, i32 1) }, { i64, ptr } { i64 190, ptr getelementptr inbounds (<{ i64, [190 x i8] }>, ptr @.d83, i32 0, i32 1) })
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
  %t7 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d84, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d84, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d85, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d85, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d86, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondUnknownBuild(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 748, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d87, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d87, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d88, i32 0, i32 1) }, { i64, ptr } %t27)
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
  store i32 161, ptr %l1
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
  %t10 = extractvalue { i64, ptr } { i64 133, ptr getelementptr inbounds (<{ i64, [133 x i8] }>, ptr @.d89, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 133, ptr getelementptr inbounds (<{ i64, [133 x i8] }>, ptr @.d89, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d90, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eConstraintUnmetBuilder(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3) #0 {
entry:
  %l4 = alloca i32
  %l5 = alloca i64
  %l13 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 309, ptr %l4
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
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d91, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d91, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t17 = extractvalue { i64, ptr } %a1, 1
  %t18 = extractvalue { i64, ptr } %a1, 0
  %t19 = add i64 %t15, %t18
  %t20 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d92, i32 0, i32 1) }, 1
  %t21 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d92, i32 0, i32 1) }, 0
  %t22 = add i64 %t19, %t21
  %t24 = extractvalue { i64, ptr } %a2, 1
  %t25 = extractvalue { i64, ptr } %a2, 0
  %t26 = add i64 %t22, %t25
  %t27 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d93, i32 0, i32 1) }, 1
  %t28 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d93, i32 0, i32 1) }, 0
  %t29 = add i64 %t26, %t28
  %t31 = extractvalue { i64, ptr } %a3, 1
  %t32 = extractvalue { i64, ptr } %a3, 0
  %t33 = add i64 %t29, %t32
  %t34 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d94, i32 0, i32 1) }, 1
  %t35 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d94, i32 0, i32 1) }, 0
  %t36 = add i64 %t33, %t35
  %t37 = load i64, ptr %l5
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
  %t50 = load i64, ptr %l5
  %t51 = inttoptr i64 %t50 to ptr
  %t52 = extractvalue { i64, ptr } %t48, 0
  %t53 = extractvalue { i64, ptr } %t48, 1
  %t54 = mul i64 %t52, 1
  %t55 = call ptr @__olang_scope_alloc(ptr %t51, i64 %t54)
  call void @llvm.memcpy.p0.p0.i64(ptr %t55, ptr %t53, i64 %t54, i1 false)
  %t56 = insertvalue { i64, ptr } undef, i64 %t52, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t55, 1
  %t58 = load i32, ptr %l4, !range !{i32 0, i32 884}
  %t60 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v4, ptr %v4, ptr %v4, i32 %t58, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d95, i32 0, i32 1) }, { i64, ptr } %t57)
  store %"compiler/diagmsg:Msg" %t60, ptr %l13
  br label %bb3
bb3:
  %t61 = load %"compiler/diagmsg:Msg", ptr %l13
  store %"compiler/diagmsg:Msg" %t61, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eContractNeedsQuestion(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 819, ptr %l1
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
  %t10 = extractvalue { i64, ptr } { i64 143, ptr getelementptr inbounds (<{ i64, [143 x i8] }>, ptr @.d96, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 143, ptr getelementptr inbounds (<{ i64, [143 x i8] }>, ptr @.d96, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d97, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCopyDoesMore(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 248, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d98, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d98, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 61, ptr getelementptr inbounds (<{ i64, [61 x i8] }>, ptr @.d99, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 61, ptr getelementptr inbounds (<{ i64, [61 x i8] }>, ptr @.d99, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d100, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCtorGenericInferredField(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 375, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d101, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d101, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 58, ptr getelementptr inbounds (<{ i64, [58 x i8] }>, ptr @.d102, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 58, ptr getelementptr inbounds (<{ i64, [58 x i8] }>, ptr @.d102, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 58, ptr getelementptr inbounds (<{ i64, [58 x i8] }>, ptr @.d103, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 58, ptr getelementptr inbounds (<{ i64, [58 x i8] }>, ptr @.d103, i32 0, i32 1) }, 0
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
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d104, i32 0, i32 1) }, { i64, ptr } %t41)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDefaultCount(ptr %v0, i64 %a0, i64 %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 534, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d105, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d105, i32 0, i32 1) }, 0
  %t11 = call i64 @__olang_fmt_i64(ptr null, i64 %a0)
  %t12 = add i64 %t9, %t11
  %t13 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d106, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d106, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t17 = call i64 @__olang_fmt_i64(ptr null, i64 %a1)
  %t18 = add i64 %t15, %t17
  %t19 = load i64, ptr %l3
  %t20 = inttoptr i64 %t19 to ptr
  %t21 = call ptr @__olang_scope_alloc(ptr %t20, i64 %t18)
  call void @olang_textcopy(ptr %t21, ptr %t8, i64 %t9)
  %t22 = getelementptr i8, ptr %t21, i64 %t9
  %t23 = call i64 @__olang_fmt_i64(ptr %t22, i64 %a0)
  %t24 = getelementptr i8, ptr %t22, i64 %t11
  call void @olang_textcopy(ptr %t24, ptr %t13, i64 %t14)
  %t25 = getelementptr i8, ptr %t24, i64 %t14
  %t26 = call i64 @__olang_fmt_i64(ptr %t25, i64 %a1)
  %t27 = insertvalue { i64, ptr } undef, i64 %t18, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t21, 1
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
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 %t38, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d107, i32 0, i32 1) }, { i64, ptr } %t37)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDefaultDead(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 539, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d108, i32 0, i32 1) }, { i64, ptr } { i64 80, ptr getelementptr inbounds (<{ i64, [80 x i8] }>, ptr @.d109, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDefaultShadowsRequired(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 291, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d110, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d110, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d111, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d111, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d112, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d112, i32 0, i32 1) }, 0
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
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d113, i32 0, i32 1) }, { i64, ptr } %t41)
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
  store i32 49, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d114, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d114, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d115, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDefineFloatRange(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 48, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d116, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d116, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d117, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d117, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d118, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d118, i32 0, i32 1) }, 0
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
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d119, i32 0, i32 1) }, { i64, ptr } %t41)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDefineIntRange(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 46, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d120, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d120, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d121, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d121, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d122, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d122, i32 0, i32 1) }, 0
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
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d123, i32 0, i32 1) }, { i64, ptr } %t41)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDefineTwice(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 44, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d124, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d124, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d125, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d125, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d126, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d126, i32 0, i32 1) }, 0
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
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d127, i32 0, i32 1) }, { i64, ptr } %t41)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDestructCopiedHeld(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
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
  store i32 167, ptr %l2
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
  %t10 = extractvalue { i64, ptr } %t6, 1
  %t11 = extractvalue { i64, ptr } %t6, 0
  %t12 = extractvalue { i64, ptr } { i64 62, ptr getelementptr inbounds (<{ i64, [62 x i8] }>, ptr @.d128, i32 0, i32 1) }, 1
  %t13 = extractvalue { i64, ptr } { i64 62, ptr getelementptr inbounds (<{ i64, [62 x i8] }>, ptr @.d128, i32 0, i32 1) }, 0
  %t14 = add i64 %t11, %t13
  %t16 = extractvalue { i64, ptr } %a1, 1
  %t17 = extractvalue { i64, ptr } %a1, 0
  %t18 = add i64 %t14, %t17
  %t19 = extractvalue { i64, ptr } { i64 67, ptr getelementptr inbounds (<{ i64, [67 x i8] }>, ptr @.d129, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 67, ptr getelementptr inbounds (<{ i64, [67 x i8] }>, ptr @.d129, i32 0, i32 1) }, 0
  %t21 = add i64 %t18, %t20
  %t23 = extractvalue { i64, ptr } %t8, 1
  %t24 = extractvalue { i64, ptr } %t8, 0
  %t25 = add i64 %t21, %t24
  %t26 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d130, i32 0, i32 1) }, 1
  %t27 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d130, i32 0, i32 1) }, 0
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
  %t50 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t48, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d131, i32 0, i32 1) }, { i64, ptr } %t47)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDocOneName(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
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
  store i32 35, ptr %l1
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
  %t8 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d132, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d132, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %t6, 1
  %t12 = extractvalue { i64, ptr } %t6, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 59, ptr getelementptr inbounds (<{ i64, [59 x i8] }>, ptr @.d133, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 59, ptr getelementptr inbounds (<{ i64, [59 x i8] }>, ptr @.d133, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %t7, 1
  %t19 = extractvalue { i64, ptr } %t7, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d134, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d134, i32 0, i32 1) }, 0
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
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t42, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d135, i32 0, i32 1) }, { i64, ptr } %t41)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eElemRefShape(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 330, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d136, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d136, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d137, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d137, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 53, ptr getelementptr inbounds (<{ i64, [53 x i8] }>, ptr @.d138, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 53, ptr getelementptr inbounds (<{ i64, [53 x i8] }>, ptr @.d138, i32 0, i32 1) }, 0
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
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d139, i32 0, i32 1) }, { i64, ptr } %t41)
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
  store i32 473, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 73, ptr getelementptr inbounds (<{ i64, [73 x i8] }>, ptr @.d140, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 73, ptr getelementptr inbounds (<{ i64, [73 x i8] }>, ptr @.d140, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d141, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d141, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d142, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrMatchNotError(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 793, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d143, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d143, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d144, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d144, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d145, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d145, i32 0, i32 1) }, 0
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
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d146, i32 0, i32 1) }, { i64, ptr } %t41)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrNeverNull(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 794, ptr %l1
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
  %t10 = extractvalue { i64, ptr } { i64 100, ptr getelementptr inbounds (<{ i64, [100 x i8] }>, ptr @.d147, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 100, ptr getelementptr inbounds (<{ i64, [100 x i8] }>, ptr @.d147, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d148, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrPatternNeedsName(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 812, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 78, ptr getelementptr inbounds (<{ i64, [78 x i8] }>, ptr @.d149, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 78, ptr getelementptr inbounds (<{ i64, [78 x i8] }>, ptr @.d149, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 50, ptr getelementptr inbounds (<{ i64, [50 x i8] }>, ptr @.d150, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 50, ptr getelementptr inbounds (<{ i64, [50 x i8] }>, ptr @.d150, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d151, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrorAfterQuestion(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 88, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d152, i32 0, i32 1) }, { i64, ptr } { i64 85, ptr getelementptr inbounds (<{ i64, [85 x i8] }>, ptr @.d153, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrorWordIsPrivate(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
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
  %t7 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d154, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d154, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d155, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d155, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d156, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local { i64, ptr } @compiler_2fmsgs_2eEsc(ptr %v0, i8 %a0) #0 {
entry:
  %l0 = alloca i8
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l25 = alloca i64
  %l26 = alloca { i64, ptr }
  %l30 = alloca i1
  %l35 = alloca i8
  %l36 = alloca i64
  %l37 = alloca i32
  %l38 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l41 = alloca i64
  %l42 = alloca { i64, ptr }
  %l44 = alloca %"std/prelude/text:StringBuilder"
  %l48 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store i8 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i8, ptr %l0, !tbaa !22
  %t3 = icmp eq i8 %t1, 9
  br i1 %t3, label %bb1, label %bb2
bb1:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d157, i32 0, i32 1) }, ptr %l5, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t5, ptr %l6, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t6, 0
  store i64 %t7, ptr %l7, !tbaa !24
  %t8 = load i64, ptr %l7, !tbaa !24
  %t9 = mul i64 %t8, 1
  %t10 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t9)
  %t11 = insertvalue { i64, ptr } undef, i64 %t8, 0
  %t12 = insertvalue { i64, ptr } %t11, ptr %t10, 1
  store { i64, ptr } %t12, ptr %l8, !tbaa !27
  %t13 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !27
  %t15 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !27
  %t17 = load i64, ptr %l7, !tbaa !24
  %t18 = mul i64 %t17, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t14, ptr %t16, i64 %t18, i1 false)
  %t19 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t19, ptr %l6, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t20 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t20, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t21 = load i8, ptr %l0, !tbaa !22
  %t23 = icmp eq i8 %t21, 10
  br i1 %t23, label %bb4, label %bb5
bb4:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d158, i32 0, i32 1) }, ptr %l11, !tbaa !27
  %t25 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t25, ptr %l12, !tbaa !27
  %t26 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t27 = extractvalue { i64, ptr } %t26, 0
  store i64 %t27, ptr %l13, !tbaa !24
  %t28 = load i64, ptr %l13, !tbaa !24
  %t29 = mul i64 %t28, 1
  %t30 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t29)
  %t31 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t30, 1
  store { i64, ptr } %t32, ptr %l14, !tbaa !27
  %t33 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !27
  %t35 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !27
  %t37 = load i64, ptr %l13, !tbaa !24
  %t38 = mul i64 %t37, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t34, ptr %t36, i64 %t38, i1 false)
  %t39 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t39, ptr %l12, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t40 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t40, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t41 = load i8, ptr %l0, !tbaa !22
  %t43 = icmp eq i8 %t41, 13
  br i1 %t43, label %bb7, label %bb8
bb7:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d159, i32 0, i32 1) }, ptr %l17, !tbaa !27
  %t45 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t45, ptr %l18, !tbaa !27
  %t46 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t47 = extractvalue { i64, ptr } %t46, 0
  store i64 %t47, ptr %l19, !tbaa !24
  %t48 = load i64, ptr %l19, !tbaa !24
  %t49 = mul i64 %t48, 1
  %t50 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t49)
  %t51 = insertvalue { i64, ptr } undef, i64 %t48, 0
  %t52 = insertvalue { i64, ptr } %t51, ptr %t50, 1
  store { i64, ptr } %t52, ptr %l20, !tbaa !27
  %t53 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !27
  %t55 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !27
  %t57 = load i64, ptr %l19, !tbaa !24
  %t58 = mul i64 %t57, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t54, ptr %t56, i64 %t58, i1 false)
  %t59 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t59, ptr %l18, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t60 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t60, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t61 = load i8, ptr %l0, !tbaa !22
  %t63 = icmp eq i8 %t61, 0
  br i1 %t63, label %bb10, label %bb11
bb10:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d160, i32 0, i32 1) }, ptr %l23, !tbaa !27
  %t65 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t65, ptr %l24, !tbaa !27
  %t66 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t67 = extractvalue { i64, ptr } %t66, 0
  store i64 %t67, ptr %l25, !tbaa !24
  %t68 = load i64, ptr %l25, !tbaa !24
  %t69 = mul i64 %t68, 1
  %t70 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t69)
  %t71 = insertvalue { i64, ptr } undef, i64 %t68, 0
  %t72 = insertvalue { i64, ptr } %t71, ptr %t70, 1
  store { i64, ptr } %t72, ptr %l26, !tbaa !27
  %t73 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !27
  %t75 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = load i64, ptr %l25, !tbaa !24
  %t78 = mul i64 %t77, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t74, ptr %t76, i64 %t78, i1 false)
  %t79 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t79, ptr %l24, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t80 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t80, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t81 = load i8, ptr %l0, !tbaa !22
  %t84 = icmp ult i8 %t81, 32
  br i1 %t84, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb15
bb14:
  %t86 = load i8, ptr %l0, !tbaa !22
  %t89 = icmp uge i8 %t86, 127
  store i1 %t89, ptr %l30, !tbaa !21
  br label %bb15
bb15:
  %t91 = load i1, ptr %l30, !tbaa !21
  br i1 %t91, label %bb16, label %bb17
bb16:
  store %olang.scope zeroinitializer, ptr %s5
  %t92 = load i8, ptr %l0, !tbaa !22
  store i8 %t92, ptr %l35, !tbaa !22
  %t94 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s5, i64 16)
  %t95 = extractvalue { i32, i64 } %t94, 1
  %t96 = extractvalue { i32, i64 } %t94, 0
  store i32 %t96, ptr %l37
  %t97 = icmp ne i32 %t96, 0
  br i1 %t97, label %bb19, label %ok.98, !prof !99
ok.98:
  store i64 %t95, ptr %l36
  br label %bb18
bb17:
  br label %bb22
bb18:
  %t99 = load i8, ptr %l35, !tbaa !22
  %t100 = load i64, ptr %l36, !tbaa !24
  %t101 = call { i64, ptr } @std_2fprelude_2ftext_2eU8_2eFormat(ptr %s5, i8 %t99, i64 %t100)
  store { i64, ptr } %t101, ptr %l38
  br label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_d2d351cc5daaf8b6_b531c4af6261323a)
  unreachable
bb20:
  %t102 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t105 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2ePadStart(ptr %s5, ptr %s5, { i64, ptr } %t102, i64 2, i8 48)
  store { i64, ptr } %t105, ptr %l40
  br label %bb21
bb21:
  %t106 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t107 = extractvalue { i64, ptr } %t106, 0
  store i64 %t107, ptr %l41, !tbaa !24
  %t108 = load i64, ptr %l41, !tbaa !24
  %t109 = mul i64 %t108, 1
  %t110 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t109)
  %t111 = insertvalue { i64, ptr } undef, i64 %t108, 0
  %t112 = insertvalue { i64, ptr } %t111, ptr %t110, 1
  store { i64, ptr } %t112, ptr %l42, !tbaa !27
  %t113 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !27
  %t115 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t116 = load ptr, ptr %t115, !tbaa !27
  %t117 = load i64, ptr %l41, !tbaa !24
  %t118 = mul i64 %t117, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t114, ptr %t116, i64 %t118, i1 false)
  %t119 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d161, i32 0, i32 1) }, 1
  %t120 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d161, i32 0, i32 1) }, 0
  %t121 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t122 = extractvalue { i64, ptr } %t121, 1
  %t123 = extractvalue { i64, ptr } %t121, 0
  %t124 = add i64 %t120, %t123
  %t125 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t124)
  call void @olang_textcopy(ptr %t125, ptr %t119, i64 %t120)
  %t126 = getelementptr i8, ptr %t125, i64 %t120
  call void @olang_textcopy(ptr %t126, ptr %t122, i64 %t123)
  %t127 = insertvalue { i64, ptr } undef, i64 %t124, 0
  %t128 = insertvalue { i64, ptr } %t127, ptr %t125, 1
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t128, ptr %rv
  br label %ret
bb22:
  %t130 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t130, ptr %l44
  br label %bb23
bb23:
  %t131 = load %"std/prelude/text:StringBuilder", ptr %l44
  store %"std/prelude/text:StringBuilder" %t131, ptr %l2
  %t132 = load i8, ptr %l0, !tbaa !22
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l2, i8 %t132)
  br label %bb24
bb24:
  %t136 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v0, ptr %l2)
  store { i64, ptr } %t136, ptr %l48
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s0)
  %t137 = load { i64, ptr }, ptr %l48, !tbaa !27
  store { i64, ptr } %t137, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eExplainNeedsRule(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 31, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d162, i32 0, i32 1) }, { i64, ptr } { i64 45, ptr getelementptr inbounds (<{ i64, [45 x i8] }>, ptr @.d163, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eExportMethod(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 203, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d164, i32 0, i32 1) }, { i64, ptr } { i64 108, ptr getelementptr inbounds (<{ i64, [108 x i8] }>, ptr @.d165, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eExportResult(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
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
  %t10 = extractvalue { i64, ptr } { i64 133, ptr getelementptr inbounds (<{ i64, [133 x i8] }>, ptr @.d166, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 133, ptr getelementptr inbounds (<{ i64, [133 x i8] }>, ptr @.d166, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d167, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eExportType(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 206, ptr %l1
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
  %t10 = extractvalue { i64, ptr } { i64 163, ptr getelementptr inbounds (<{ i64, [163 x i8] }>, ptr @.d168, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 163, ptr getelementptr inbounds (<{ i64, [163 x i8] }>, ptr @.d168, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d169, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFieldHasParamName(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 193, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d170, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d170, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 87, ptr getelementptr inbounds (<{ i64, [87 x i8] }>, ptr @.d171, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 87, ptr getelementptr inbounds (<{ i64, [87 x i8] }>, ptr @.d171, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d172, i32 0, i32 1) }, { i64, ptr } %t31)
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
  store i32 451, ptr %l1
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
  %t10 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d173, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d173, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d174, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eForInNeedsTry(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 584, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d175, i32 0, i32 1) }, { i64, ptr } { i64 90, ptr getelementptr inbounds (<{ i64, [90 x i8] }>, ptr @.d176, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFormatterBuild(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
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
  %t7 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d177, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d177, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d178, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d178, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d179, i32 0, i32 1) }, { i64, ptr } %t31)
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
  store i32 21, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d180, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d180, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d181, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFromBitsWidth(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l3 = alloca i32
  %l4 = alloca i64
  %l12 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i32 308, ptr %l3
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
  %t9 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d182, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d182, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t17 = extractvalue { i64, ptr } %t7, 1
  %t18 = extractvalue { i64, ptr } %t7, 0
  %t19 = add i64 %t15, %t18
  %t20 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d183, i32 0, i32 1) }, 1
  %t21 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d183, i32 0, i32 1) }, 0
  %t22 = add i64 %t19, %t21
  %t24 = extractvalue { i64, ptr } %a2, 1
  %t25 = extractvalue { i64, ptr } %a2, 0
  %t26 = add i64 %t22, %t25
  %t27 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d184, i32 0, i32 1) }, 1
  %t28 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d184, i32 0, i32 1) }, 0
  %t29 = add i64 %t26, %t28
  %t31 = extractvalue { i64, ptr } %t9, 1
  %t32 = extractvalue { i64, ptr } %t9, 0
  %t33 = add i64 %t29, %t32
  %t34 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d185, i32 0, i32 1) }, 1
  %t35 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d185, i32 0, i32 1) }, 0
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
  %t60 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, i32 %t58, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d186, i32 0, i32 1) }, { i64, ptr } %t57)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFromIterShape(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
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
  store i32 552, ptr %l1
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
  %t11 = extractvalue { i64, ptr } { i64 74, ptr getelementptr inbounds (<{ i64, [74 x i8] }>, ptr @.d187, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 74, ptr getelementptr inbounds (<{ i64, [74 x i8] }>, ptr @.d187, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t15 = extractvalue { i64, ptr } %t7, 1
  %t16 = extractvalue { i64, ptr } %t7, 0
  %t17 = add i64 %t13, %t16
  %t18 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d188, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d188, i32 0, i32 1) }, 0
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
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t38, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d189, i32 0, i32 1) }, { i64, ptr } %t37)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFuncDeclBare(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
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
  store i32 172, ptr %l1
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
  %t12 = extractvalue { i64, ptr } { i64 53, ptr getelementptr inbounds (<{ i64, [53 x i8] }>, ptr @.d190, i32 0, i32 1) }, 1
  %t13 = extractvalue { i64, ptr } { i64 53, ptr getelementptr inbounds (<{ i64, [53 x i8] }>, ptr @.d190, i32 0, i32 1) }, 0
  %t14 = add i64 %t11, %t13
  %t16 = extractvalue { i64, ptr } %t7, 1
  %t17 = extractvalue { i64, ptr } %t7, 0
  %t18 = add i64 %t14, %t17
  %t19 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d191, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d191, i32 0, i32 1) }, 0
  %t21 = add i64 %t18, %t20
  %t23 = extractvalue { i64, ptr } %t8, 1
  %t24 = extractvalue { i64, ptr } %t8, 0
  %t25 = add i64 %t21, %t24
  %t26 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d192, i32 0, i32 1) }, 1
  %t27 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d192, i32 0, i32 1) }, 0
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
  %t50 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t48, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d193, i32 0, i32 1) }, { i64, ptr } %t47)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGenErrorNotDeclared(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
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
  %t6 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t6, 1
  %t10 = extractvalue { i64, ptr } %t6, 0
  %t11 = extractvalue { i64, ptr } { i64 98, ptr getelementptr inbounds (<{ i64, [98 x i8] }>, ptr @.d194, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 98, ptr getelementptr inbounds (<{ i64, [98 x i8] }>, ptr @.d194, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t15 = extractvalue { i64, ptr } %t7, 1
  %t16 = extractvalue { i64, ptr } %t7, 0
  %t17 = add i64 %t13, %t16
  %t18 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d195, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d195, i32 0, i32 1) }, 0
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
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t38, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d196, i32 0, i32 1) }, { i64, ptr } %t37)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGlobalStale(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
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
  %t7 = extractvalue { i64, ptr } { i64 76, ptr getelementptr inbounds (<{ i64, [76 x i8] }>, ptr @.d197, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 76, ptr getelementptr inbounds (<{ i64, [76 x i8] }>, ptr @.d197, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d198, i32 0, i32 1) }, { i64, ptr } %t27)
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
  store i32 596, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d199, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d199, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d200, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eHelpOneMode(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 16, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d201, i32 0, i32 1) }, { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d202, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportFileNotFound(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 102, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d203, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d203, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d204, i32 0, i32 1) }, { i64, ptr } %t27)
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
  store i32 98, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d205, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d205, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d206, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d206, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d207, i32 0, i32 1) }, { i64, ptr } %t31)
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
  store i32 463, ptr %l1
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
  %t10 = extractvalue { i64, ptr } { i64 55, ptr getelementptr inbounds (<{ i64, [55 x i8] }>, ptr @.d208, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 55, ptr getelementptr inbounds (<{ i64, [55 x i8] }>, ptr @.d208, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d209, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eIncdecNotNumber(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 404, ptr %l2
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
  %t11 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d210, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d210, i32 0, i32 1) }, 0
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
  %t36 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t34, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d211, i32 0, i32 1) }, { i64, ptr } %t33)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eInstanceNotReferable(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 163, ptr %l2
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
  %t11 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d212, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d212, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t15 = extractvalue { i64, ptr } %a1, 1
  %t16 = extractvalue { i64, ptr } %a1, 0
  %t17 = add i64 %t13, %t16
  %t18 = extractvalue { i64, ptr } { i64 96, ptr getelementptr inbounds (<{ i64, [96 x i8] }>, ptr @.d213, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 96, ptr getelementptr inbounds (<{ i64, [96 x i8] }>, ptr @.d213, i32 0, i32 1) }, 0
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
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t38, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d214, i32 0, i32 1) }, { i64, ptr } %t37)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eInterpretBuilds(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 8, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d215, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d215, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d216, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d216, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d217, i32 0, i32 1) }, { i64, ptr } %t31)
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
  store i32 511, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 51, ptr getelementptr inbounds (<{ i64, [51 x i8] }>, ptr @.d218, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 51, ptr getelementptr inbounds (<{ i64, [51 x i8] }>, ptr @.d218, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d219, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLambdaParamUntyped(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
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
  %t7 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d220, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d220, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 49, ptr getelementptr inbounds (<{ i64, [49 x i8] }>, ptr @.d221, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 49, ptr getelementptr inbounds (<{ i64, [49 x i8] }>, ptr @.d221, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d222, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLambdaSignature(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 693, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d223, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d223, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d224, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d224, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d225, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLaneReferences(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 863, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d226, i32 0, i32 1) }, { i64, ptr } { i64 93, ptr getelementptr inbounds (<{ i64, [93 x i8] }>, ptr @.d227, i32 0, i32 1) })
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
  store i32 38, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 45, ptr getelementptr inbounds (<{ i64, [45 x i8] }>, ptr @.d228, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 45, ptr getelementptr inbounds (<{ i64, [45 x i8] }>, ptr @.d228, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d229, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d229, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d230, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLineStartsWithOperator(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 595, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d231, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d231, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 59, ptr getelementptr inbounds (<{ i64, [59 x i8] }>, ptr @.d232, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 59, ptr getelementptr inbounds (<{ i64, [59 x i8] }>, ptr @.d232, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d233, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d233, i32 0, i32 1) }, 0
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
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d234, i32 0, i32 1) }, { i64, ptr } %t41)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLinkName(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 213, ptr %l1
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
  %t10 = extractvalue { i64, ptr } { i64 111, ptr getelementptr inbounds (<{ i64, [111 x i8] }>, ptr @.d235, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 111, ptr getelementptr inbounds (<{ i64, [111 x i8] }>, ptr @.d235, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d236, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eListingAlone(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 882, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d237, i32 0, i32 1) }, { i64, ptr } { i64 77, ptr getelementptr inbounds (<{ i64, [77 x i8] }>, ptr @.d238, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLiteralExprNoValue(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 444, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d239, i32 0, i32 1) }, { i64, ptr } { i64 101, ptr getelementptr inbounds (<{ i64, [101 x i8] }>, ptr @.d240, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLiteralNeedsCtor(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 334, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d241, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d241, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d242, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d242, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d243, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d243, i32 0, i32 1) }, 0
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
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d244, i32 0, i32 1) }, { i64, ptr } %t41)
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
  %t10 = extractvalue { i64, ptr } { i64 162, ptr getelementptr inbounds (<{ i64, [162 x i8] }>, ptr @.d245, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 162, ptr getelementptr inbounds (<{ i64, [162 x i8] }>, ptr @.d245, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d246, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMatchNotExhaustive(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 602, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d247, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d247, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d248, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d248, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d249, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d249, i32 0, i32 1) }, 0
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
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d250, i32 0, i32 1) }, { i64, ptr } %t41)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMayBeNull(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3) #0 {
entry:
  %l4 = alloca i32
  %l5 = alloca i64
  %l13 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 499, ptr %l4
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
  %t10 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d251, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d251, i32 0, i32 1) }, 0
  %t13 = extractvalue { i64, ptr } %a0, 1
  %t14 = extractvalue { i64, ptr } %a0, 0
  %t15 = add i64 %t11, %t14
  %t16 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d252, i32 0, i32 1) }, 1
  %t17 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d252, i32 0, i32 1) }, 0
  %t18 = add i64 %t15, %t17
  %t20 = extractvalue { i64, ptr } %a1, 1
  %t21 = extractvalue { i64, ptr } %a1, 0
  %t22 = add i64 %t18, %t21
  %t23 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d253, i32 0, i32 1) }, 1
  %t24 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d253, i32 0, i32 1) }, 0
  %t25 = add i64 %t22, %t24
  %t27 = extractvalue { i64, ptr } %a2, 1
  %t28 = extractvalue { i64, ptr } %a2, 0
  %t29 = add i64 %t25, %t28
  %t30 = extractvalue { i64, ptr } { i64 58, ptr getelementptr inbounds (<{ i64, [58 x i8] }>, ptr @.d254, i32 0, i32 1) }, 1
  %t31 = extractvalue { i64, ptr } { i64 58, ptr getelementptr inbounds (<{ i64, [58 x i8] }>, ptr @.d254, i32 0, i32 1) }, 0
  %t32 = add i64 %t29, %t31
  %t34 = extractvalue { i64, ptr } %a3, 1
  %t35 = extractvalue { i64, ptr } %a3, 0
  %t36 = add i64 %t32, %t35
  %t37 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d255, i32 0, i32 1) }, 1
  %t38 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d255, i32 0, i32 1) }, 0
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
  %t64 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v4, ptr %v4, ptr %v4, i32 %t62, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d256, i32 0, i32 1) }, { i64, ptr } %t61)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMembershipNeedsTry(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 462, ptr %l1
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
  %t10 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d257, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d257, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d258, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMethodAmbiguous(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
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
  %t7 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d259, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d259, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d260, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d260, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d261, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMethodOnBuiltinType(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 295, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d262, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d262, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 59, ptr getelementptr inbounds (<{ i64, [59 x i8] }>, ptr @.d263, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 59, ptr getelementptr inbounds (<{ i64, [59 x i8] }>, ptr @.d263, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d264, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMissingReturn(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 696, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d265, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d265, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 53, ptr getelementptr inbounds (<{ i64, [53 x i8] }>, ptr @.d266, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 53, ptr getelementptr inbounds (<{ i64, [53 x i8] }>, ptr @.d266, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d267, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMutOnInferredLocal(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 577, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d268, i32 0, i32 1) }, { i64, ptr } { i64 99, ptr getelementptr inbounds (<{ i64, [99 x i8] }>, ptr @.d269, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNameInUse(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 136, ptr %l1
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
  %t10 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d270, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d270, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d271, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNameIsType(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 130, ptr %l1
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
  %t10 = extractvalue { i64, ptr } { i64 57, ptr getelementptr inbounds (<{ i64, [57 x i8] }>, ptr @.d272, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 57, ptr getelementptr inbounds (<{ i64, [57 x i8] }>, ptr @.d272, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d273, i32 0, i32 1) }, { i64, ptr } %t27)
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
  store i32 382, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d274, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d274, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d275, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d275, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d276, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNamedArgThroughValue(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 384, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d277, i32 0, i32 1) }, { i64, ptr } { i64 101, ptr getelementptr inbounds (<{ i64, [101 x i8] }>, ptr @.d278, i32 0, i32 1) })
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
  store i32 378, ptr %l2
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
  %t11 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d279, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d279, i32 0, i32 1) }, 0
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
  %t36 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t34, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d280, i32 0, i32 1) }, { i64, ptr } %t33)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNamedArgUnknownMeant(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca i64
  %l11 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 379, ptr %l3
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
  %t12 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d281, i32 0, i32 1) }, 1
  %t13 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d281, i32 0, i32 1) }, 0
  %t14 = add i64 %t11, %t13
  %t16 = extractvalue { i64, ptr } %a1, 1
  %t17 = extractvalue { i64, ptr } %a1, 0
  %t18 = add i64 %t14, %t17
  %t19 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d282, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d282, i32 0, i32 1) }, 0
  %t21 = add i64 %t18, %t20
  %t23 = extractvalue { i64, ptr } %a2, 1
  %t24 = extractvalue { i64, ptr } %a2, 0
  %t25 = add i64 %t21, %t24
  %t26 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d283, i32 0, i32 1) }, 1
  %t27 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d283, i32 0, i32 1) }, 0
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
  %t50 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, i32 %t48, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d284, i32 0, i32 1) }, { i64, ptr } %t47)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNarrowNeedsType(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 156, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d285, i32 0, i32 1) }, { i64, ptr } { i64 64, ptr getelementptr inbounds (<{ i64, [64 x i8] }>, ptr @.d286, i32 0, i32 1) })
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
  store i32 439, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d287, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d287, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d288, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d288, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d289, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoSuchCase(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
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
  %t11 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d290, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d290, i32 0, i32 1) }, 0
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
  %t36 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t34, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d291, i32 0, i32 1) }, { i64, ptr } %t33)
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
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 704, ptr %l2
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
  %t11 = extractvalue { i64, ptr } { i64 95, ptr getelementptr inbounds (<{ i64, [95 x i8] }>, ptr @.d292, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 95, ptr getelementptr inbounds (<{ i64, [95 x i8] }>, ptr @.d292, i32 0, i32 1) }, 0
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
  %t36 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t34, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d293, i32 0, i32 1) }, { i64, ptr } %t33)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNonAscii(ptr %v0, i8 %a0) #0 {
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
  store i32 60, ptr %l1
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
  %t9 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d294, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d294, i32 0, i32 1) }, 0
  %t11 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t11, 1
  %t13 = extractvalue { i64, ptr } %t11, 0
  %t14 = add i64 %t10, %t13
  %t15 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d295, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d295, i32 0, i32 1) }, 0
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
  %t36 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 %t34, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d296, i32 0, i32 1) }, { i64, ptr } %t33)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotIterable(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 588, ptr %l1
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
  %t10 = extractvalue { i64, ptr } { i64 120, ptr getelementptr inbounds (<{ i64, [120 x i8] }>, ptr @.d297, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 120, ptr getelementptr inbounds (<{ i64, [120 x i8] }>, ptr @.d297, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d298, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotSliceable(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 398, ptr %l1
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
  %t10 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d299, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d299, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d300, i32 0, i32 1) }, { i64, ptr } %t27)
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
  store i32 735, ptr %l3
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
  %t10 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d301, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d301, i32 0, i32 1) }, 0
  %t13 = extractvalue { i64, ptr } %t6, 1
  %t14 = extractvalue { i64, ptr } %t6, 0
  %t15 = add i64 %t11, %t14
  %t16 = extractvalue { i64, ptr } { i64 69, ptr getelementptr inbounds (<{ i64, [69 x i8] }>, ptr @.d302, i32 0, i32 1) }, 1
  %t17 = extractvalue { i64, ptr } { i64 69, ptr getelementptr inbounds (<{ i64, [69 x i8] }>, ptr @.d302, i32 0, i32 1) }, 0
  %t18 = add i64 %t15, %t17
  %t20 = extractvalue { i64, ptr } %a1, 1
  %t21 = extractvalue { i64, ptr } %a1, 0
  %t22 = add i64 %t18, %t21
  %t23 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d303, i32 0, i32 1) }, 1
  %t24 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d303, i32 0, i32 1) }, 0
  %t25 = add i64 %t22, %t24
  %t27 = extractvalue { i64, ptr } %t8, 1
  %t28 = extractvalue { i64, ptr } %t8, 0
  %t29 = add i64 %t25, %t28
  %t30 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d304, i32 0, i32 1) }, 1
  %t31 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d304, i32 0, i32 1) }, 0
  %t32 = add i64 %t29, %t31
  %t34 = extractvalue { i64, ptr } %a2, 1
  %t35 = extractvalue { i64, ptr } %a2, 0
  %t36 = add i64 %t32, %t35
  %t37 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d305, i32 0, i32 1) }, 1
  %t38 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d305, i32 0, i32 1) }, 0
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
  %t64 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, i32 %t62, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d306, i32 0, i32 1) }, { i64, ptr } %t61)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteHere(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 411, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d307, i32 0, i32 1) }, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d308, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteLoopCopy(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca i64
  %l11 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 745, ptr %l3
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
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d309, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d309, i32 0, i32 1) }, 0
  %t12 = extractvalue { i64, ptr } %a0, 1
  %t13 = extractvalue { i64, ptr } %a0, 0
  %t14 = add i64 %t10, %t13
  %t15 = extractvalue { i64, ptr } { i64 89, ptr getelementptr inbounds (<{ i64, [89 x i8] }>, ptr @.d310, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 89, ptr getelementptr inbounds (<{ i64, [89 x i8] }>, ptr @.d310, i32 0, i32 1) }, 0
  %t17 = add i64 %t14, %t16
  %t19 = extractvalue { i64, ptr } %a1, 1
  %t20 = extractvalue { i64, ptr } %a1, 0
  %t21 = add i64 %t17, %t20
  %t22 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d311, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d311, i32 0, i32 1) }, 0
  %t24 = add i64 %t21, %t23
  %t26 = extractvalue { i64, ptr } %a2, 1
  %t27 = extractvalue { i64, ptr } %a2, 0
  %t28 = add i64 %t24, %t27
  %t29 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d312, i32 0, i32 1) }, 1
  %t30 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d312, i32 0, i32 1) }, 0
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
  %t54 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, i32 %t52, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d313, i32 0, i32 1) }, { i64, ptr } %t51)
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
  store i32 431, ptr %l3
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
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d314, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d314, i32 0, i32 1) }, 0
  %t12 = extractvalue { i64, ptr } %a0, 1
  %t13 = extractvalue { i64, ptr } %a0, 0
  %t14 = add i64 %t10, %t13
  %t15 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d315, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d315, i32 0, i32 1) }, 0
  %t17 = add i64 %t14, %t16
  %t19 = extractvalue { i64, ptr } %a1, 1
  %t20 = extractvalue { i64, ptr } %a1, 0
  %t21 = add i64 %t17, %t20
  %t22 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d316, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d316, i32 0, i32 1) }, 0
  %t24 = add i64 %t21, %t23
  %t26 = extractvalue { i64, ptr } %a2, 1
  %t27 = extractvalue { i64, ptr } %a2, 0
  %t28 = add i64 %t24, %t27
  %t29 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d317, i32 0, i32 1) }, 1
  %t30 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d317, i32 0, i32 1) }, 0
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
  %t54 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, i32 %t52, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d318, i32 0, i32 1) }, { i64, ptr } %t51)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteStrBuildsHere(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 417, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d319, i32 0, i32 1) }, { i64, ptr } { i64 57, ptr getelementptr inbounds (<{ i64, [57 x i8] }>, ptr @.d320, i32 0, i32 1) })
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
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 425, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d321, i32 0, i32 1) }, { i64, ptr } { i64 65, ptr getelementptr inbounds (<{ i64, [65 x i8] }>, ptr @.d322, i32 0, i32 1) })
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
  store i32 442, ptr %l2
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
  %t11 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d323, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d323, i32 0, i32 1) }, 0
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
  %t36 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t34, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d324, i32 0, i32 1) }, { i64, ptr } %t33)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eOperandsDiffer(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca i64
  %l11 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 450, ptr %l3
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
  %t12 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d325, i32 0, i32 1) }, 1
  %t13 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d325, i32 0, i32 1) }, 0
  %t14 = add i64 %t11, %t13
  %t16 = extractvalue { i64, ptr } %a1, 1
  %t17 = extractvalue { i64, ptr } %a1, 0
  %t18 = add i64 %t14, %t17
  %t19 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d326, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d326, i32 0, i32 1) }, 0
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
  %t46 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, i32 %t44, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d327, i32 0, i32 1) }, { i64, ptr } %t43)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eOutputIsDir(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 17, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d328, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d328, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d329, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d329, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d330, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eOwnCannotOutlive(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 326, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d331, i32 0, i32 1) }, { i64, ptr } { i64 65, ptr getelementptr inbounds (<{ i64, [65 x i8] }>, ptr @.d332, i32 0, i32 1) })
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
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 262, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d333, i32 0, i32 1) }, { i64, ptr } { i64 74, ptr getelementptr inbounds (<{ i64, [74 x i8] }>, ptr @.d334, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePatFieldBothWays(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 479, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d335, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d335, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d336, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d336, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d337, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePatFieldTwice(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 478, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d338, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d338, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d339, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d339, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d340, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePayloadFieldUnnarrowed(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
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
  store i32 807, ptr %l2
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
  %t10 = extractvalue { i64, ptr } %t6, 1
  %t11 = extractvalue { i64, ptr } %t6, 0
  %t12 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d341, i32 0, i32 1) }, 1
  %t13 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d341, i32 0, i32 1) }, 0
  %t14 = add i64 %t11, %t13
  %t16 = extractvalue { i64, ptr } %a1, 1
  %t17 = extractvalue { i64, ptr } %a1, 0
  %t18 = add i64 %t14, %t17
  %t19 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d342, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d342, i32 0, i32 1) }, 0
  %t21 = add i64 %t18, %t20
  %t23 = extractvalue { i64, ptr } %t8, 1
  %t24 = extractvalue { i64, ptr } %t8, 0
  %t25 = add i64 %t21, %t24
  %t26 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d343, i32 0, i32 1) }, 1
  %t27 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d343, i32 0, i32 1) }, 0
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
  %t50 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t48, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d344, i32 0, i32 1) }, { i64, ptr } %t47)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePayloadScopesDisagree(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 568, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d345, i32 0, i32 1) }, { i64, ptr } { i64 101, ptr getelementptr inbounds (<{ i64, [101 x i8] }>, ptr @.d346, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePlainWordCalled(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 806, ptr %l1
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
  %t10 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d347, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d347, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d348, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePointNoDigit(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 76, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d349, i32 0, i32 1) }, { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d350, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePromiseBorrowsNothing(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 682, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d351, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d351, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d352, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d352, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d353, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePromiseKeepsSelf(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
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
  store i32 686, ptr %l1
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
  %t8 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d354, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d354, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %t6, 1
  %t12 = extractvalue { i64, ptr } %t6, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d355, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d355, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %t7, 1
  %t19 = extractvalue { i64, ptr } %t7, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 64, ptr getelementptr inbounds (<{ i64, [64 x i8] }>, ptr @.d356, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 64, ptr getelementptr inbounds (<{ i64, [64 x i8] }>, ptr @.d356, i32 0, i32 1) }, 0
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
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t42, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d357, i32 0, i32 1) }, { i64, ptr } %t41)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eQuickAlone(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 7, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d358, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d358, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d359, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d359, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d360, i32 0, i32 1) }, { i64, ptr } %t31)
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
  store i32 771, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d361, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d361, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d362, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eRawType(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 770, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 55, ptr getelementptr inbounds (<{ i64, [55 x i8] }>, ptr @.d363, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 55, ptr getelementptr inbounds (<{ i64, [55 x i8] }>, ptr @.d363, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d364, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eRawWithoutType(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 774, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d365, i32 0, i32 1) }, { i64, ptr } { i64 91, ptr getelementptr inbounds (<{ i64, [91 x i8] }>, ptr @.d366, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadOnlyCopyDecl(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 336, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d367, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d367, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 134, ptr getelementptr inbounds (<{ i64, [134 x i8] }>, ptr @.d368, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 134, ptr getelementptr inbounds (<{ i64, [134 x i8] }>, ptr @.d368, i32 0, i32 1) }, 0
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
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t38, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d369, i32 0, i32 1) }, { i64, ptr } %t37)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadOnlyCopyGlobal(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 337, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d370, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d370, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d371, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d371, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d372, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d372, i32 0, i32 1) }, 0
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
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d373, i32 0, i32 1) }, { i64, ptr } %t41)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadOnlyCopyWrite(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 343, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d374, i32 0, i32 1) }, { i64, ptr } { i64 117, ptr getelementptr inbounds (<{ i64, [117 x i8] }>, ptr @.d375, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadOnlyRefKept(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca i64
  %l11 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 340, ptr %l3
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
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d376, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d376, i32 0, i32 1) }, 0
  %t12 = extractvalue { i64, ptr } %a0, 1
  %t13 = extractvalue { i64, ptr } %a0, 0
  %t14 = add i64 %t10, %t13
  %t15 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d377, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d377, i32 0, i32 1) }, 0
  %t17 = add i64 %t14, %t16
  %t19 = extractvalue { i64, ptr } %a1, 1
  %t20 = extractvalue { i64, ptr } %a1, 0
  %t21 = add i64 %t17, %t20
  %t22 = extractvalue { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d378, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d378, i32 0, i32 1) }, 0
  %t24 = add i64 %t21, %t23
  %t26 = extractvalue { i64, ptr } %a2, 1
  %t27 = extractvalue { i64, ptr } %a2, 0
  %t28 = add i64 %t24, %t27
  %t29 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d379, i32 0, i32 1) }, 1
  %t30 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d379, i32 0, i32 1) }, 0
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
  %t54 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, i32 %t52, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d380, i32 0, i32 1) }, { i64, ptr } %t51)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadOnlyRefWrite(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 406, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d381, i32 0, i32 1) }, { i64, ptr } { i64 73, ptr getelementptr inbounds (<{ i64, [73 x i8] }>, ptr @.d382, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eRefTypevarNotAggregate(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 368, ptr %l2
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
  %t11 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d383, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d383, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t15 = extractvalue { i64, ptr } %a1, 1
  %t16 = extractvalue { i64, ptr } %a1, 0
  %t17 = add i64 %t13, %t16
  %t18 = extractvalue { i64, ptr } { i64 43, ptr getelementptr inbounds (<{ i64, [43 x i8] }>, ptr @.d384, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 43, ptr getelementptr inbounds (<{ i64, [43 x i8] }>, ptr @.d384, i32 0, i32 1) }, 0
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
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t38, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d385, i32 0, i32 1) }, { i64, ptr } %t37)
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
  store i32 367, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d386, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d386, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 62, ptr getelementptr inbounds (<{ i64, [62 x i8] }>, ptr @.d387, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 62, ptr getelementptr inbounds (<{ i64, [62 x i8] }>, ptr @.d387, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d388, i32 0, i32 1) }, { i64, ptr } %t31)
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
  store i32 839, ptr %l3
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
  %t9 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d389, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d389, i32 0, i32 1) }, 0
  %t12 = extractvalue { i64, ptr } %a0, 1
  %t13 = extractvalue { i64, ptr } %a0, 0
  %t14 = add i64 %t10, %t13
  %t15 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d390, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d390, i32 0, i32 1) }, 0
  %t17 = add i64 %t14, %t16
  %t19 = extractvalue { i64, ptr } %a1, 1
  %t20 = extractvalue { i64, ptr } %a1, 0
  %t21 = add i64 %t17, %t20
  %t22 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d391, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d391, i32 0, i32 1) }, 0
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
  %t50 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, i32 %t48, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d392, i32 0, i32 1) }, { i64, ptr } %t47)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflFilterUndecided(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 834, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d393, i32 0, i32 1) }, { i64, ptr } { i64 139, ptr getelementptr inbounds (<{ i64, [139 x i8] }>, ptr @.d394, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflMatchSubject(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 845, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d395, i32 0, i32 1) }, { i64, ptr } { i64 106, ptr getelementptr inbounds (<{ i64, [106 x i8] }>, ptr @.d396, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflNoMember(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 826, ptr %l2
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
  %t11 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d397, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d397, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t15 = extractvalue { i64, ptr } %a1, 1
  %t16 = extractvalue { i64, ptr } %a1, 0
  %t17 = add i64 %t13, %t16
  %t18 = extractvalue { i64, ptr } { i64 116, ptr getelementptr inbounds (<{ i64, [116 x i8] }>, ptr @.d398, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 116, ptr getelementptr inbounds (<{ i64, [116 x i8] }>, ptr @.d398, i32 0, i32 1) }, 0
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
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t38, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d399, i32 0, i32 1) }, { i64, ptr } %t37)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflOfArgs(ptr %v0, i64 %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 837, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d400, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d400, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d401, i32 0, i32 1) }, { i64, ptr } %t27)
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
  store i32 801, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d402, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d402, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d403, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d403, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d404, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d404, i32 0, i32 1) }, 0
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
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d405, i32 0, i32 1) }, { i64, ptr } %t41)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReturnTypeMismatch(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 355, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d406, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d406, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d407, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d407, i32 0, i32 1) }, 0
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
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t38, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d408, i32 0, i32 1) }, { i64, ptr } %t37)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eScopeMayNotOutlive(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 325, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d409, i32 0, i32 1) }, { i64, ptr } { i64 68, ptr getelementptr inbounds (<{ i64, [68 x i8] }>, ptr @.d410, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eScopeObligationUnmet(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 365, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d411, i32 0, i32 1) }, { i64, ptr } { i64 112, ptr getelementptr inbounds (<{ i64, [112 x i8] }>, ptr @.d412, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eShadowsGlobal(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
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
  %t8 = extractvalue { i64, ptr } %a0, 1
  %t9 = extractvalue { i64, ptr } %a0, 0
  %t10 = extractvalue { i64, ptr } { i64 66, ptr getelementptr inbounds (<{ i64, [66 x i8] }>, ptr @.d413, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 66, ptr getelementptr inbounds (<{ i64, [66 x i8] }>, ptr @.d413, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d414, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eShiftOutOfRange(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca i64
  %l11 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 447, ptr %l3
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
  %t9 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d415, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d415, i32 0, i32 1) }, 0
  %t12 = extractvalue { i64, ptr } %a0, 1
  %t13 = extractvalue { i64, ptr } %a0, 0
  %t14 = add i64 %t10, %t13
  %t15 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d416, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d416, i32 0, i32 1) }, 0
  %t17 = add i64 %t14, %t16
  %t19 = call i64 @__olang_fmt_i64(ptr null, i64 %a1)
  %t20 = add i64 %t17, %t19
  %t21 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d417, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d417, i32 0, i32 1) }, 0
  %t23 = add i64 %t20, %t22
  %t25 = call i64 @__olang_fmt_i64(ptr null, i64 %a2)
  %t26 = add i64 %t23, %t25
  %t27 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d418, i32 0, i32 1) }, 1
  %t28 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d418, i32 0, i32 1) }, 0
  %t29 = add i64 %t26, %t28
  %t30 = load i64, ptr %l4
  %t31 = inttoptr i64 %t30 to ptr
  %t32 = call ptr @__olang_scope_alloc(ptr %t31, i64 %t29)
  call void @olang_textcopy(ptr %t32, ptr %t9, i64 %t10)
  %t33 = getelementptr i8, ptr %t32, i64 %t10
  call void @olang_textcopy(ptr %t33, ptr %t12, i64 %t13)
  %t34 = getelementptr i8, ptr %t33, i64 %t13
  call void @olang_textcopy(ptr %t34, ptr %t15, i64 %t16)
  %t35 = getelementptr i8, ptr %t34, i64 %t16
  %t36 = call i64 @__olang_fmt_i64(ptr %t35, i64 %a1)
  %t37 = getelementptr i8, ptr %t35, i64 %t19
  call void @olang_textcopy(ptr %t37, ptr %t21, i64 %t22)
  %t38 = getelementptr i8, ptr %t37, i64 %t22
  %t39 = call i64 @__olang_fmt_i64(ptr %t38, i64 %a2)
  %t40 = getelementptr i8, ptr %t38, i64 %t25
  call void @olang_textcopy(ptr %t40, ptr %t27, i64 %t28)
  %t41 = insertvalue { i64, ptr } undef, i64 %t29, 0
  %t42 = insertvalue { i64, ptr } %t41, ptr %t32, 1
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
  %t54 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t52, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d419, i32 0, i32 1) }, { i64, ptr } %t51)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpawnLambdaParams(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 643, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d420, i32 0, i32 1) }, { i64, ptr } { i64 64, ptr getelementptr inbounds (<{ i64, [64 x i8] }>, ptr @.d421, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpawnOutsideJoin(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 645, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d422, i32 0, i32 1) }, { i64, ptr } { i64 66, ptr getelementptr inbounds (<{ i64, [66 x i8] }>, ptr @.d423, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpawnResultType(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 664, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 43, ptr getelementptr inbounds (<{ i64, [43 x i8] }>, ptr @.d424, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 43, ptr getelementptr inbounds (<{ i64, [43 x i8] }>, ptr @.d424, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d425, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d425, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d426, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d426, i32 0, i32 1) }, 0
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
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d427, i32 0, i32 1) }, { i64, ptr } %t41)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpawnResultVoid(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 663, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d428, i32 0, i32 1) }, { i64, ptr } { i64 51, ptr getelementptr inbounds (<{ i64, [51 x i8] }>, ptr @.d429, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eStoreIntoUnknownScope(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 352, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d430, i32 0, i32 1) }, { i64, ptr } { i64 214, ptr getelementptr inbounds (<{ i64, [214 x i8] }>, ptr @.d431, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eStrOfNothing(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 437, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d432, i32 0, i32 1) }, { i64, ptr } { i64 54, ptr getelementptr inbounds (<{ i64, [54 x i8] }>, ptr @.d433, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eStrReceiverWritable(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 410, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d434, i32 0, i32 1) }, { i64, ptr } { i64 98, ptr getelementptr inbounds (<{ i64, [98 x i8] }>, ptr @.d435, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eStructPatNoField(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca i64
  %l11 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 475, ptr %l3
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
  %t12 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d436, i32 0, i32 1) }, 1
  %t13 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d436, i32 0, i32 1) }, 0
  %t14 = add i64 %t11, %t13
  %t16 = extractvalue { i64, ptr } %a1, 1
  %t17 = extractvalue { i64, ptr } %a1, 0
  %t18 = add i64 %t14, %t17
  %t19 = extractvalue { i64, ptr } { i64 84, ptr getelementptr inbounds (<{ i64, [84 x i8] }>, ptr @.d437, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 84, ptr getelementptr inbounds (<{ i64, [84 x i8] }>, ptr @.d437, i32 0, i32 1) }, 0
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
  %t46 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, i32 %t44, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d438, i32 0, i32 1) }, { i64, ptr } %t43)
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
  store i32 476, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 103, ptr getelementptr inbounds (<{ i64, [103 x i8] }>, ptr @.d439, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 103, ptr getelementptr inbounds (<{ i64, [103 x i8] }>, ptr @.d439, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d440, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d440, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d441, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTagUnknownScope(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 353, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d442, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d442, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 81, ptr getelementptr inbounds (<{ i64, [81 x i8] }>, ptr @.d443, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 81, ptr getelementptr inbounds (<{ i64, [81 x i8] }>, ptr @.d443, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d444, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d444, i32 0, i32 1) }, 0
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
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d445, i32 0, i32 1) }, { i64, ptr } %t41)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTaskClauseReturns(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 650, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d446, i32 0, i32 1) }, { i64, ptr } { i64 82, ptr getelementptr inbounds (<{ i64, [82 x i8] }>, ptr @.d447, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTextMutRef(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 252, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d448, i32 0, i32 1) }, { i64, ptr } { i64 143, ptr getelementptr inbounds (<{ i64, [143 x i8] }>, ptr @.d449, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTextWrite(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 250, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d450, i32 0, i32 1) }, { i64, ptr } { i64 146, ptr getelementptr inbounds (<{ i64, [146 x i8] }>, ptr @.d451, i32 0, i32 1) })
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
  store i32 765, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 57, ptr getelementptr inbounds (<{ i64, [57 x i8] }>, ptr @.d452, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 57, ptr getelementptr inbounds (<{ i64, [57 x i8] }>, ptr @.d452, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d453, i32 0, i32 1) }, { i64, ptr } %t27)
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
  %t7 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d454, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d454, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d455, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d455, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d456, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTraitMemberMissing(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
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
  store i32 145, ptr %l3
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
  %t9 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t6, 1
  %t12 = extractvalue { i64, ptr } %t6, 0
  %t13 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d457, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d457, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t17 = extractvalue { i64, ptr } %a1, 1
  %t18 = extractvalue { i64, ptr } %a1, 0
  %t19 = add i64 %t15, %t18
  %t20 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d458, i32 0, i32 1) }, 1
  %t21 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d458, i32 0, i32 1) }, 0
  %t22 = add i64 %t19, %t21
  %t24 = extractvalue { i64, ptr } %a2, 1
  %t25 = extractvalue { i64, ptr } %a2, 0
  %t26 = add i64 %t22, %t25
  %t27 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d459, i32 0, i32 1) }, 1
  %t28 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d459, i32 0, i32 1) }, 0
  %t29 = add i64 %t26, %t28
  %t31 = extractvalue { i64, ptr } %t9, 1
  %t32 = extractvalue { i64, ptr } %t9, 0
  %t33 = add i64 %t29, %t32
  %t34 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d460, i32 0, i32 1) }, 1
  %t35 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d460, i32 0, i32 1) }, 0
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
  %t60 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, i32 %t58, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d461, i32 0, i32 1) }, { i64, ptr } %t57)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTryNeedsQuestion(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 818, ptr %l1
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
  %t10 = extractvalue { i64, ptr } { i64 147, ptr getelementptr inbounds (<{ i64, [147 x i8] }>, ptr @.d462, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 147, ptr getelementptr inbounds (<{ i64, [147 x i8] }>, ptr @.d462, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d463, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTryNothingFails(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 544, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d464, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d464, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d465, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d465, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d466, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeArgCount(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca i64
  %l11 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 151, ptr %l3
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
  %t9 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d467, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d467, i32 0, i32 1) }, 0
  %t12 = extractvalue { i64, ptr } %a0, 1
  %t13 = extractvalue { i64, ptr } %a0, 0
  %t14 = add i64 %t10, %t13
  %t15 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d468, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d468, i32 0, i32 1) }, 0
  %t17 = add i64 %t14, %t16
  %t19 = call i64 @__olang_fmt_i64(ptr null, i64 %a1)
  %t20 = add i64 %t17, %t19
  %t21 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d469, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d469, i32 0, i32 1) }, 0
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
  %t50 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t48, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d470, i32 0, i32 1) }, { i64, ptr } %t47)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeHasNoConstructor(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 320, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d471, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d471, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d472, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d472, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d473, i32 0, i32 1) }, { i64, ptr } %t31)
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
  store i32 159, ptr %l1
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
  %t10 = extractvalue { i64, ptr } { i64 43, ptr getelementptr inbounds (<{ i64, [43 x i8] }>, ptr @.d474, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 43, ptr getelementptr inbounds (<{ i64, [43 x i8] }>, ptr @.d474, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d475, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeNotAValue(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l5 = alloca { i64, ptr }
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 121, ptr %l1
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
  %t7 = load i64, ptr %l2
  %t8 = inttoptr i64 %t7 to ptr
  %t10 = call { i64, ptr } @compiler_2fmsgs_2etypeNotValue(ptr %v0, ptr %t8, { i64, ptr } %a0)
  store { i64, ptr } %t10, ptr %l5
  br label %bb3
bb3:
  %t11 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t12 = load i64, ptr %l2
  %t13 = inttoptr i64 %t12 to ptr
  %t14 = extractvalue { i64, ptr } %t11, 0
  %t15 = extractvalue { i64, ptr } %t11, 1
  %t16 = mul i64 %t14, 1
  %t17 = call ptr @__olang_scope_alloc(ptr %t13, i64 %t16)
  call void @llvm.memcpy.p0.p0.i64(ptr %t17, ptr %t15, i64 %t16, i1 false)
  %t18 = insertvalue { i64, ptr } undef, i64 %t14, 0
  %t19 = insertvalue { i64, ptr } %t18, ptr %t17, 1
  %t20 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t22 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t20, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d476, i32 0, i32 1) }, { i64, ptr } %t19)
  store %"compiler/diagmsg:Msg" %t22, ptr %l7
  br label %bb4
bb4:
  %t23 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t23, ptr %rv
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
  store i32 199, ptr %l1
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
  %t10 = extractvalue { i64, ptr } { i64 106, ptr getelementptr inbounds (<{ i64, [106 x i8] }>, ptr @.d477, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 106, ptr getelementptr inbounds (<{ i64, [106 x i8] }>, ptr @.d477, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d478, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypedHole(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca i32
  %l3 = alloca i64
  %l5 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l15 = alloca %"compiler/diagmsg:Msg"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/diagmsg:Msg"
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
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
  store { i64, ptr } %a0, ptr %l5, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  %t11 = icmp eq i64 %t9, 0
  br i1 %t11, label %bb3, label %bb4
bb3:
  store { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d479, i32 0, i32 1) }, ptr %l9, !tbaa !27
  br label %bb5
bb4:
  %t13 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t14 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d480, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d480, i32 0, i32 1) }, 0
  %t17 = extractvalue { i64, ptr } %t13, 1
  %t18 = extractvalue { i64, ptr } %t13, 0
  %t19 = add i64 %t15, %t18
  %t20 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t19)
  call void @olang_textcopy(ptr %t20, ptr %t14, i64 %t15)
  %t21 = getelementptr i8, ptr %t20, i64 %t15
  call void @olang_textcopy(ptr %t21, ptr %t17, i64 %t18)
  %t22 = insertvalue { i64, ptr } undef, i64 %t19, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t20, 1
  %t25 = extractvalue { i64, ptr } %t23, 0
  %t26 = extractvalue { i64, ptr } %t23, 1
  %t27 = mul i64 %t25, 1
  %t28 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t27)
  call void @llvm.memcpy.p0.p0.i64(ptr %t28, ptr %t26, i64 %t27, i1 false)
  %t29 = insertvalue { i64, ptr } undef, i64 %t25, 0
  %t30 = insertvalue { i64, ptr } %t29, ptr %t28, 1
  store { i64, ptr } %t30, ptr %l9, !tbaa !27
  br label %bb5
bb5:
  %t32 = extractvalue { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d481, i32 0, i32 1) }, 1
  %t33 = extractvalue { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d481, i32 0, i32 1) }, 0
  %t34 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t34, 1
  %t36 = extractvalue { i64, ptr } %t34, 0
  %t37 = add i64 %t33, %t36
  %t38 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t38, 1
  %t40 = extractvalue { i64, ptr } %t38, 0
  %t41 = add i64 %t37, %t40
  %t42 = load i64, ptr %l3
  %t43 = inttoptr i64 %t42 to ptr
  %t44 = call ptr @__olang_scope_alloc(ptr %t43, i64 %t41)
  call void @olang_textcopy(ptr %t44, ptr %t32, i64 %t33)
  %t45 = getelementptr i8, ptr %t44, i64 %t33
  call void @olang_textcopy(ptr %t45, ptr %t35, i64 %t36)
  %t46 = getelementptr i8, ptr %t45, i64 %t36
  call void @olang_textcopy(ptr %t46, ptr %t39, i64 %t40)
  %t47 = insertvalue { i64, ptr } undef, i64 %t41, 0
  %t48 = insertvalue { i64, ptr } %t47, ptr %t44, 1
  %t50 = load i64, ptr %l3
  %t51 = inttoptr i64 %t50 to ptr
  %t52 = extractvalue { i64, ptr } %t48, 0
  %t53 = extractvalue { i64, ptr } %t48, 1
  %t54 = mul i64 %t52, 1
  %t55 = call ptr @__olang_scope_alloc(ptr %t51, i64 %t54)
  call void @llvm.memcpy.p0.p0.i64(ptr %t55, ptr %t53, i64 %t54, i1 false)
  %t56 = insertvalue { i64, ptr } undef, i64 %t52, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t55, 1
  %t58 = load i32, ptr %l2, !range !{i32 0, i32 884}
  %t60 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t58, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d482, i32 0, i32 1) }, { i64, ptr } %t57)
  store %"compiler/diagmsg:Msg" %t60, ptr %l15
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s0)
  %t61 = load %"compiler/diagmsg:Msg", ptr %l15
  store %"compiler/diagmsg:Msg" %t61, ptr %rv
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
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 63, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d483, i32 0, i32 1) }, { i64, ptr } { i64 43, ptr getelementptr inbounds (<{ i64, [43 x i8] }>, ptr @.d484, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUniqueByValue(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca i32
  %l3 = alloca i64
  %l11 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i32 257, ptr %l2
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
  %t9 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t6, 1
  %t12 = extractvalue { i64, ptr } %t6, 0
  %t13 = extractvalue { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d485, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d485, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t17 = extractvalue { i64, ptr } %a1, 1
  %t18 = extractvalue { i64, ptr } %a1, 0
  %t19 = add i64 %t15, %t18
  %t20 = extractvalue { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d486, i32 0, i32 1) }, 1
  %t21 = extractvalue { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d486, i32 0, i32 1) }, 0
  %t22 = add i64 %t19, %t21
  %t24 = extractvalue { i64, ptr } %t8, 1
  %t25 = extractvalue { i64, ptr } %t8, 0
  %t26 = add i64 %t22, %t25
  %t27 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d487, i32 0, i32 1) }, 1
  %t28 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d487, i32 0, i32 1) }, 0
  %t29 = add i64 %t26, %t28
  %t31 = extractvalue { i64, ptr } %t9, 1
  %t32 = extractvalue { i64, ptr } %t9, 0
  %t33 = add i64 %t29, %t32
  %t34 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d488, i32 0, i32 1) }, 1
  %t35 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d488, i32 0, i32 1) }, 0
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
  %t58 = load i32, ptr %l2, !range !{i32 0, i32 884}
  %t60 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t58, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d489, i32 0, i32 1) }, { i64, ptr } %t57)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUniqueCopy(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 256, ptr %l1
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
  %t10 = extractvalue { i64, ptr } { i64 101, ptr getelementptr inbounds (<{ i64, [101 x i8] }>, ptr @.d490, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 101, ptr getelementptr inbounds (<{ i64, [101 x i8] }>, ptr @.d490, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d491, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUniqueImmut(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 254, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d492, i32 0, i32 1) }, { i64, ptr } { i64 95, ptr getelementptr inbounds (<{ i64, [95 x i8] }>, ptr @.d493, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownFlag(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca i64
  %l11 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 4, ptr %l3
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
  %t9 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d494, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d494, i32 0, i32 1) }, 0
  %t12 = extractvalue { i64, ptr } %a0, 1
  %t13 = extractvalue { i64, ptr } %a0, 0
  %t14 = add i64 %t10, %t13
  %t15 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d495, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d495, i32 0, i32 1) }, 0
  %t17 = add i64 %t14, %t16
  %t19 = extractvalue { i64, ptr } %a2, 1
  %t20 = extractvalue { i64, ptr } %a2, 0
  %t21 = add i64 %t17, %t20
  %t22 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d496, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d496, i32 0, i32 1) }, 0
  %t24 = add i64 %t21, %t23
  %t26 = extractvalue { i64, ptr } %a1, 1
  %t27 = extractvalue { i64, ptr } %a1, 0
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
  %t50 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, i32 %t48, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d497, i32 0, i32 1) }, { i64, ptr } %t47)
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
  store i32 108, ptr %l2
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
  %t11 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d498, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d498, i32 0, i32 1) }, 0
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
  %t36 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t34, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d499, i32 0, i32 1) }, { i64, ptr } %t33)
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
  store i32 115, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d500, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d500, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d501, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d501, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d502, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d502, i32 0, i32 1) }, 0
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
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d503, i32 0, i32 1) }, { i64, ptr } %t41)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eVacateNotPlace(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 392, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d504, i32 0, i32 1) }, { i64, ptr } { i64 64, ptr getelementptr inbounds (<{ i64, [64 x i8] }>, ptr @.d505, i32 0, i32 1) })
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
  store i32 323, ptr %l1
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
  %t10 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d506, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d506, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d507, i32 0, i32 1) }, { i64, ptr } %t27)
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
  store i32 87, ptr %l2
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
  %t10 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d508, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d508, i32 0, i32 1) }, 0
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
  %t36 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 %t34, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d509, i32 0, i32 1) }, { i64, ptr } %t33)
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
  store i32 484, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d510, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d510, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d511, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eVersionsDiffer(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 614, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d512, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d512, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 201, ptr getelementptr inbounds (<{ i64, [201 x i8] }>, ptr @.d513, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 201, ptr getelementptr inbounds (<{ i64, [201 x i8] }>, ptr @.d513, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d514, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eViewKept(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 610, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d515, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d515, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 126, ptr getelementptr inbounds (<{ i64, [126 x i8] }>, ptr @.d516, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 126, ptr getelementptr inbounds (<{ i64, [126 x i8] }>, ptr @.d516, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d517, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eWildcardNotAlone(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 605, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d518, i32 0, i32 1) }, { i64, ptr } { i64 61, ptr getelementptr inbounds (<{ i64, [61 x i8] }>, ptr @.d519, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eWriteThroughAtBuilds(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 516, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d520, i32 0, i32 1) }, { i64, ptr } { i64 148, ptr getelementptr inbounds (<{ i64, [148 x i8] }>, ptr @.d521, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eZeroValueShared(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 703, ptr %l1
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
  %t10 = extractvalue { i64, ptr } { i64 93, ptr getelementptr inbounds (<{ i64, [93 x i8] }>, ptr @.d522, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 93, ptr getelementptr inbounds (<{ i64, [93 x i8] }>, ptr @.d522, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d523, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local void @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eOffer(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l6 = alloca i1
  %l7 = alloca i1
  %l14 = alloca i64
  %l18 = alloca i1
  %l19 = alloca i1
  %l24 = alloca ptr
  %l25 = alloca i64
  %l30 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"compiler/msgs:Nearest", ptr %t2, i32 0, i32 0
  %t5 = load { i64, ptr }, ptr %t4, !tbaa !27
  %t8 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %v0, { i64, ptr } %t1, { i64, ptr } %t5)
  store i1 %t8, ptr %l6
  br label %bb1
bb1:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb4
bb3:
  %t10 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t10, 0
  %t14 = icmp eq i64 %t12, 0
  store i1 %t14, ptr %l7, !tbaa !21
  br label %bb4
bb4:
  %t16 = load i1, ptr %l7, !tbaa !21
  br i1 %t16, label %bb5, label %bb6
bb5:
  br label %ret
bb6:
  br label %bb7
bb7:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/msgs:Nearest", ptr %t17, i32 0, i32 0
  %t20 = load { i64, ptr }, ptr %t19, !tbaa !27
  %t21 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t24 = call i64 @compiler_2fmsgs_2eDistance(ptr %v0, ptr %v1, { i64, ptr } %t20, { i64, ptr } %t21)
  store i64 %t24, ptr %l14
  br label %bb8
bb8:
  %t25 = load i64, ptr %l14, !tbaa !24
  store i64 %t25, ptr %l2, !tbaa !24
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/msgs:Nearest", ptr %t26, i32 0, i32 0
  %t29 = load { i64, ptr }, ptr %t28, !tbaa !27
  %t30 = load i64, ptr %l2, !tbaa !24
  %t33 = call i1 @compiler_2fmsgs_2eNear(ptr %v0, { i64, ptr } %t29, i64 %t30)
  store i1 %t33, ptr %l18
  br label %bb9
bb9:
  %t34 = load i1, ptr %l18, !tbaa !21
  br i1 %t34, label %bb10, label %bb11
bb10:
  %t35 = load i64, ptr %l2, !tbaa !24
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/msgs:Nearest", ptr %t36, i32 0, i32 2
  %t39 = load i64, ptr %t38, !tbaa !24
  %t42 = icmp slt i64 %t35, %t39
  store i1 %t42, ptr %l19, !tbaa !21
  br label %bb12
bb11:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb12
bb12:
  %t44 = load i1, ptr %l19, !tbaa !21
  br i1 %t44, label %bb13, label %bb14
bb13:
  %t45 = load ptr, ptr %l0, !tbaa !29
  store ptr %t45, ptr %l24, !tbaa !29
  %t46 = ptrtoint ptr %v0 to i64
  store i64 %t46, ptr %l25, !tbaa !24
  %t47 = load i1, ptr @olang_2esole_2ecompiler_2fmsgs_3aNearest_2e1
  br i1 %t47, label %bb15, label %bb16
bb14:
  br label %bb19
bb15:
  %t49 = call ptr @__olang_region_make(ptr %v0)
  %t50 = ptrtoint ptr %t49 to i64
  store i64 %t50, ptr %l25, !tbaa !24
  br label %bb16
bb16:
  %t51 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t53 = extractvalue { i64, ptr } %t51, 1
  %t54 = extractvalue { i64, ptr } %t51, 0
  %t55 = load i64, ptr %l25
  %t56 = inttoptr i64 %t55 to ptr
  %t57 = call ptr @__olang_scope_alloc(ptr %t56, i64 %t54)
  call void @olang_textcopy(ptr %t57, ptr %t53, i64 %t54)
  %t58 = insertvalue { i64, ptr } undef, i64 %t54, 0
  %t59 = insertvalue { i64, ptr } %t58, ptr %t57, 1
  %t61 = load i64, ptr %l25
  %t62 = inttoptr i64 %t61 to ptr
  %t63 = extractvalue { i64, ptr } %t59, 0
  %t64 = extractvalue { i64, ptr } %t59, 1
  %t65 = mul i64 %t63, 1
  %t66 = call ptr @__olang_scope_alloc(ptr %t62, i64 %t65)
  call void @llvm.memcpy.p0.p0.i64(ptr %t66, ptr %t64, i64 %t65, i1 false)
  %t67 = insertvalue { i64, ptr } undef, i64 %t63, 0
  %t68 = insertvalue { i64, ptr } %t67, ptr %t66, 1
  %t69 = load ptr, ptr %l24, !tbaa !29
  %t70 = getelementptr %"compiler/msgs:Nearest", ptr %t69, i32 0, i32 1
  %t71 = load { i64, ptr }, ptr %t70, !tbaa !27
  store { i64, ptr } %t71, ptr %l30, !tbaa !27
  %t73 = load ptr, ptr %l24, !tbaa !29
  %t74 = getelementptr %"compiler/msgs:Nearest", ptr %t73, i32 0, i32 1
  store { i64, ptr } %t68, ptr %t74, !tbaa !27
  %t75 = load i1, ptr @olang_2esole_2ecompiler_2fmsgs_3aNearest_2e1
  br i1 %t75, label %bb17, label %bb18
bb17:
  %t77 = load { i64, ptr }, ptr %l30
  %t78 = extractvalue { i64, ptr } %t77, 1
  call void @__olang_region_release(ptr %t78)
  store { i64, ptr } zeroinitializer, ptr %l30
  br label %bb18
bb18:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load i64, ptr %l2, !tbaa !24
  %t83 = getelementptr %"compiler/msgs:Nearest", ptr %t79, i32 0, i32 2
  store i64 %t80, ptr %t83, !tbaa !24
  br label %bb19
bb19:
  br label %ret
ret:
  ret void
}

@.d0 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"S13c" }>, align 8
@.d1 = private constant <{ i64, [86 x i8] }> <{ i64 0, [86 x i8] c"every alternative binds the same names - bind it in each, write '_', or split the case" }>, align 8
@olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d2 = private constant <{ i64, [60 x i8] }> <{ i64 0, [60 x i8] c" is matched by an earlier clause - this one is never reached" }>, align 8
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
@.d3 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T34" }>, align 8
@.d4 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T32a" }>, align 8
@.d5 = private constant <{ i64, [109 x i8] }> <{ i64 0, [109 x i8] c"the 'any' outlives what this array's elements refer to - its copy keeps them: build them where the 'any' goes" }>, align 8
@.d6 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d7 = private constant <{ i64, [37 x i8] }> <{ i64 0, [37 x i8] c"' names no .olang file on either side" }>, align 8
@.d8 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"B21" }>, align 8
@.d9 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d10 = private constant <{ i64, [55 x i8] }> <{ i64 0, [55 x i8] c"' is neither a path nor a commit of the repository here" }>, align 8
@.d11 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"B21" }>, align 8
@.d12 = private constant <{ i64, [70 x i8] }> <{ i64 0, [70 x i8] c"an array written '&' is never null - test whether it is empty: write '" }>, align 8
@.d13 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"', or '?&' where it may be null" }>, align 8
@.d14 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T2c" }>, align 8
@.d15 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"an array of " }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d16 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c" elements stored where " }>, align 8
@.d17 = private constant <{ i64, [62 x i8] }> <{ i64 0, [62 x i8] c" are laid out - fixed storage takes an array of its own length" }>, align 8
@.d18 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T7d" }>, align 8
@.d19 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c" message is text, found " }>, align 8
@.d20 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c" - write it as text: \22x is \22 $x" }>, align 8
@.d21 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"S18a" }>, align 8
@.d22 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"field '" }>, align 8
@.d23 = private constant <{ i64, [102 x i8] }> <{ i64 0, [102 x i8] c"' is a pun of its parameter, and has the parameter's attributes - write the attribute on the parameter" }>, align 8
@.d24 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"G39" }>, align 8
@.d25 = private constant <{ i64, [67 x i8] }> <{ i64 0, [67 x i8] c"an attribute's value is read-only data, baked while compiling, and " }>, align 8
@.d26 = private constant <{ i64, [98 x i8] }> <{ i64 0, [98 x i8] c" holds a 'mut' reference no reader could write through - give its type read-only references ('T&')" }>, align 8
@.d27 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"G39" }>, align 8
@.d28 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"unknown escape '\5C" }>, align 8
@.d29 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c"' - the escapes are \5Cn \5Ct \5Cr \5C0 \5C\5C \5C' \5C\22" }>, align 8
@.d30 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"L15" }>, align 8
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
@.d31 = private constant <{ i64, [50 x i8] }> <{ i64 0, [50 x i8] c"'become' leaves the function at once, so not from " }>, align 8
@.d32 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c" - write 'return' and the call" }>, align 8
@.d33 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"S21" }>, align 8
@.d34 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"S21" }>, align 8
@.d35 = private constant <{ i64, [99 x i8] }> <{ i64 0, [99 x i8] c"'become' takes the call alone - what it fails with is the function's own, so write it without 'try'" }>, align 8
@.d36 = private constant <{ i64, [51 x i8] }> <{ i64 0, [51 x i8] c" acts on the innermost loop, and there is none here" }>, align 8
@.d37 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"S11" }>, align 8
@.d38 = private constant <{ i64, [42 x i8] }> <{ i64 0, [42 x i8] c" is a build constant - choose another name" }>, align 8
@.d39 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"B10" }>, align 8
@.d40 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"-define " }>, align 8
@.d41 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"=" }>, align 8
@.d42 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c" does not fit " }>, align 8
@.d43 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c", which is " }>, align 8
@.d44 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"B10c" }>, align 8
@.d45 = private constant <{ i64, [85 x i8] }> <{ i64 0, [85 x i8] c" is a build constant, and a declaration giving it a default is immutable - drop 'mut'" }>, align 8
@.d46 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"B10c" }>, align 8
@.d47 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"a builder of " }>, align 8
@.d48 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c" takes no value of it, and " }>, align 8
@.d49 = private constant <{ i64, [33 x i8] }> <{ i64 0, [33 x i8] c" does - make it a method, 'fn (x " }>, align 8
@.d50 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c") ...', or a function of the module" }>, align 8
@.d51 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"D19" }>, align 8
@.d52 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"no C header '" }>, align 8
@.d53 = private constant <{ i64, [48 x i8] }> <{ i64 0, [48 x i8] c"' beside this file or where the C compiler looks" }>, align 8
@.d54 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"X17" }>, align 8
@.d55 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"'s Call fails with " }>, align 8
@.d56 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c" where the function type says " }>, align 8
@.d57 = private constant <{ i64, [38 x i8] }> <{ i64 0, [38 x i8] c" - the same errors in the same order: " }>, align 8
@.d58 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"T22, E31" }>, align 8
@.d59 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"L3" }>, align 8
@.d60 = private constant <{ i64, [52 x i8] }> <{ i64 0, [52 x i8] c"carriage return - save the file with LF line endings" }>, align 8
@.d61 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"R11b" }>, align 8
@.d62 = private constant <{ i64, [80 x i8] }> <{ i64 0, [80 x i8] c"a case of an error value names an error word, an error type, a named set or null" }>, align 8
@.d63 = private constant <{ i64, [65 x i8] }> <{ i64 0, [65 x i8] c"this case is never reached: the cases before it take every error " }>, align 8
@.d64 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" can be" }>, align 8
@.d65 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"R11b" }>, align 8
@.d66 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c" is never " }>, align 8
@.d67 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c" here - it is " }>, align 8
@.d68 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"R11b" }>, align 8
@.d69 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T7e" }>, align 8
@.d70 = private constant <{ i64, [89 x i8] }> <{ i64 0, [89 x i8] c"a column is assigned whole only alone - 'c.x = v', its length checked against its table's" }>, align 8
@.d71 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"'s field '" }>, align 8
@.d72 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"' would be a column of " }>, align 8
@.d73 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c" named like its method '" }>, align 8
@.d74 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"' (M19) - rename the field" }>, align 8
@.d75 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T7e" }>, align 8
@.d76 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"E27, S9e" }>, align 8
@.d77 = private constant <{ i64, [76 x i8] }> <{ i64 0, [76 x i8] c"this comprehension's own calls can fail - write 'try Array<T>[e for x in c]'" }>, align 8
@.d78 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"K3a" }>, align 8
@.d79 = private constant <{ i64, [126 x i8] }> <{ i64 0, [126 x i8] c"a comptime for's elements are computed while compiling, so nothing of its walk fails at run time - write 'comptime for x in e'" }>, align 8
@.d80 = private constant <{ i64, [56 x i8] }> <{ i64 0, [56 x i8] c" is not computed from literals and build constants alone" }>, align 8
@.d81 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"B9a" }>, align 8
@.d82 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E28" }>, align 8
@.d83 = private constant <{ i64, [190 x i8] }> <{ i64 0, [190 x i8] c"a conditional or a match gives a copy of the value it chooses, which this call would write and drop - call on the place itself, 'if c { f(a) } else { f(b) }', or hold the values by reference" }>, align 8
@.d84 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"the condition beginning " }>, align 8
@.d85 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c" is not a Bool" }>, align 8
@.d86 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"B9" }>, align 8
@.d87 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"unknown name " }>, align 8
@.d88 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"B10" }>, align 8
@.d89 = private constant <{ i64, [133 x i8] }> <{ i64 0, [133 x i8] c" is not a trait, so it cannot constrain a type variable - a type parameter's constraint is a trait, and a length is no parameter (T7)" }>, align 8
@.d90 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"G6, G19" }>, align 8
@.d91 = private constant <{ i64, [33 x i8] }> <{ i64 0, [33 x i8] c" does not satisfy the constraint " }>, align 8
@.d92 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" on " }>, align 8
@.d93 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c": it has no builder " }>, align 8
@.d94 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c" that fits" }>, align 8
@.d95 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T30b" }>, align 8
@.d96 = private constant <{ i64, [143 x i8] }> <{ i64 0, [143 x i8] c" has conditions, so a call fails with ArgumentError where one is false, and it writes no '?' - write '?' after its result, or '? ArgumentError'" }>, align 8
@.d97 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"R1d, D17" }>, align 8
@.d98 = private constant <{ i64, [47 x i8] }> <{ i64 0, [47 x i8] c"a Copy only builds the new value, and this one " }>, align 8
@.d99 = private constant <{ i64, [61 x i8] }> <{ i64 0, [61 x i8] c" - every copy of the value runs it, so it may do nothing else" }>, align 8
@.d100 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"E31d" }>, align 8
@.d101 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"field " }>, align 8
@.d102 = private constant <{ i64, [58 x i8] }> <{ i64 0, [58 x i8] c" takes its type from ':=', and the constructor introduces " }>, align 8
@.d103 = private constant <{ i64, [58 x i8] }> <{ i64 0, [58 x i8] c", so its body is checked per call - write the field's type" }>, align 8
@.d104 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"G10d" }>, align 8
@.d105 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"expected " }>, align 8
@.d106 = private constant <{ i64, [33 x i8] }> <{ i64 0, [33 x i8] c" defaults, one per result, found " }>, align 8
@.d107 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"R11" }>, align 8
@.d108 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"R11" }>, align 8
@.d109 = private constant <{ i64, [80 x i8] }> <{ i64 0, [80 x i8] c"this clause's block always leaves, so its default is never the value - remove it" }>, align 8
@.d110 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"trait " }>, align 8
@.d111 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c" already requires a method " }>, align 8
@.d112 = private constant <{ i64, [39 x i8] }> <{ i64 0, [39 x i8] c" - choose another name for this default" }>, align 8
@.d113 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"M19e" }>, align 8
@.d114 = private constant <{ i64, [46 x i8] }> <{ i64 0, [46 x i8] c"-define cannot redefine the built-in constant " }>, align 8
@.d115 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"B10a" }>, align 8
@.d116 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"-define " }>, align 8
@.d117 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"=" }>, align 8
@.d118 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c": beyond F64's range" }>, align 8
@.d119 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"B10" }>, align 8
@.d120 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"-define " }>, align 8
@.d121 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"=" }>, align 8
@.d122 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c": beyond 64 bits" }>, align 8
@.d123 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"B10" }>, align 8
@.d124 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"-define " }>, align 8
@.d125 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"=" }>, align 8
@.d126 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c": defined twice" }>, align 8
@.d127 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"B10" }>, align 8
@.d128 = private constant <{ i64, [62 x i8] }> <{ i64 0, [62 x i8] c" has a destructor to run and copies (its Copy), and a copy of " }>, align 8
@.d129 = private constant <{ i64, [67 x i8] }> <{ i64 0, [67 x i8] c" would copy what it holds past its count - hold them by reference, " }>, align 8
@.d130 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"&" }>, align 8
@.d131 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"C11" }>, align 8
@.d132 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"doc " }>, align 8
@.d133 = private constant <{ i64, [59 x i8] }> <{ i64 0, [59 x i8] c" takes at most the name of one of its items, as 'olang doc " }>, align 8
@.d134 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" main'" }>, align 8
@.d135 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"B14" }>, align 8
@.d136 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"expected " }>, align 8
@.d137 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c", found " }>, align 8
@.d138 = private constant <{ i64, [53 x i8] }> <{ i64 0, [53 x i8] c" - they differ in whether the elements are references" }>, align 8
@.d139 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T25a" }>, align 8
@.d140 = private constant <{ i64, [73 x i8] }> <{ i64 0, [73 x i8] c"an array pattern matches an array, text or a type declaring At and Len - " }>, align 8
@.d141 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c" is none of them" }>, align 8
@.d142 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"S13h" }>, align 8
@.d143 = private constant <{ i64, [28 x i8] }> <{ i64 0, [28 x i8] c"the cases name errors, and '" }>, align 8
@.d144 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"' is " }>, align 8
@.d145 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c", not an error value" }>, align 8
@.d146 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T20" }>, align 8
@.d147 = private constant <{ i64, [100 x i8] }> <{ i64 0, [100 x i8] c" holds an error here, never null - a caught error, a word written or a value a test says is not null" }>, align 8
@.d148 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T20" }>, align 8
@.d149 = private constant <{ i64, [78 x i8] }> <{ i64 0, [78 x i8] c"a payload pattern reads the error a local or a catch clause's name holds, and " }>, align 8
@.d150 = private constant <{ i64, [50 x i8] }> <{ i64 0, [50 x i8] c" is no name - write 'e := ...' first and match 'e'" }>, align 8
@.d151 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"T19b, S13b" }>, align 8
@.d152 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"R1a" }>, align 8
@.d153 = private constant <{ i64, [85 x i8] }> <{ i64 0, [85 x i8] c"'?' alone is what the body can fail with - write '?', or name the types: '? io.Error'" }>, align 8
@.d154 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"error word " }>, align 8
@.d155 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c" is private to its module" }>, align 8
@.d156 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"M6a" }>, align 8
@.d157 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"\5Ct" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d158 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"\5Cn" }>, align 8
@.d159 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"\5Cr" }>, align 8
@.d160 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"\5C0" }>, align 8
declare void @__olang_check_failed(ptr) cold noreturn
@.d161 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"\5Cx" }>, align 8
@.d162 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"B11a" }>, align 8
@.d163 = private constant <{ i64, [45 x i8] }> <{ i64 0, [45 x i8] c"explain takes one rule, as 'olang explain B1'" }>, align 8
@.d164 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"X12" }>, align 8
@.d165 = private constant <{ i64, [108 x i8] }> <{ i64 0, [108 x i8] c"an export fn is one C calls by its name, and a method has no C name - declare a function taking the receiver" }>, align 8
@.d166 = private constant <{ i64, [133 x i8] }> <{ i64 0, [133 x i8] c" cannot go back to C - an export fn gives one number, Bool, extern type's reference, plain-data struct, or an array of these by value" }>, align 8
@.d167 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"X12" }>, align 8
@.d168 = private constant <{ i64, [163 x i8] }> <{ i64 0, [163 x i8] c" cannot come from C - an export fn's parameter is a number, a Bool, an extern type's reference, a plain-data struct or a reference to one, or an array by reference" }>, align 8
@.d169 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"X12" }>, align 8
@.d170 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"field " }>, align 8
@.d171 = private constant <{ i64, [87 x i8] }> <{ i64 0, [87 x i8] c" has a parameter's name - write it bare to take the parameter's value, or name it apart" }>, align 8
@.d172 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"C2a" }>, align 8
@.d173 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c" is beyond F64's range" }>, align 8
@.d174 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"L12b" }>, align 8
@.d175 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"S9e" }>, align 8
@.d176 = private constant <{ i64, [90 x i8] }> <{ i64 0, [90 x i8] c"this loop's own calls can fail - write 'for x in try c', with catch clauses after the body" }>, align 8
@.d177 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c"the formatter could not be built - " }>, align 8
@.d178 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" says why" }>, align 8
@.d179 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"B13" }>, align 8
@.d180 = private constant <{ i64, [52 x i8] }> <{ i64 0, [52 x i8] c"the formatter's source is not beside this compiler: " }>, align 8
@.d181 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"B13" }>, align 8
@.d182 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c".FromBits takes the " }>, align 8
@.d183 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c" of its width, and this is a " }>, align 8
@.d184 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c" - convert it first: '" }>, align 8
@.d185 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"(x)'" }>, align 8
@.d186 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E33" }>, align 8
@.d187 = private constant <{ i64, [74 x i8] }> <{ i64 0, [74 x i8] c"'s FromIter takes no one iterator, so no literal can call it - call it as " }>, align 8
@.d188 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c".FromIter(...)" }>, align 8
@.d189 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E19" }>, align 8
@.d190 = private constant <{ i64, [53 x i8] }> <{ i64 0, [53 x i8] c" is a function type, held only by reference - write '" }>, align 8
@.d191 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"&', or '" }>, align 8
@.d192 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"?&' where it may be null" }>, align 8
@.d193 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T21b" }>, align 8
@.d194 = private constant <{ i64, [98 x i8] }> <{ i64 0, [98 x i8] c" can escape here, and this generator's result does not say it fails with it - write 'Iterator<T ? " }>, align 8
@.d195 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c">', or catch it" }>, align 8
@.d196 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"R9, D18" }>, align 8
@.d197 = private constant <{ i64, [76 x i8] }> <{ i64 0, [76 x i8] c"evaluated while compiling, this global's initializer stops on a stale view: " }>, align 8
@.d198 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"K2, K1" }>, align 8
@.d199 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"a guard is a Bool, found " }>, align 8
@.d200 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"S13e" }>, align 8
@.d201 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"B1" }>, align 8
@.d202 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"help takes at most one mode" }>, align 8
@.d203 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"no .olang file at " }>, align 8
@.d204 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"M23" }>, align 8
@.d205 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"olang.lock names no commit for " }>, align 8
@.d206 = private constant <{ i64, [41 x i8] }> <{ i64 0, [41 x i8] c" - delete its line, or build with -update" }>, align 8
@.d207 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"M23b" }>, align 8
@.d208 = private constant <{ i64, [55 x i8] }> <{ i64 0, [55 x i8] c" is a statement of its own, never part of an expression" }>, align 8
@.d209 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"S3a" }>, align 8
@.d210 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c" takes a number, found " }>, align 8
@.d211 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"S3a" }>, align 8
@.d212 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c" gives a reference here, and " }>, align 8
@.d213 = private constant <{ i64, [96 x i8] }> <{ i64 0, [96 x i8] c" cannot be one - only a struct, an enum or an array can: read the value instead (as 'x[i]' does)" }>, align 8
@.d214 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T24" }>, align 8
@.d215 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"-interpret builds nothing, and " }>, align 8
@.d216 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c" says how to build - give one" }>, align 8
@.d217 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"B3e" }>, align 8
@.d218 = private constant <{ i64, [51 x i8] }> <{ i64 0, [51 x i8] c"'as' asks for an enum value's payload, and this is " }>, align 8
@.d219 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E32" }>, align 8
@.d220 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"lambda parameter " }>, align 8
@.d221 = private constant <{ i64, [49 x i8] }> <{ i64 0, [49 x i8] c" has no type, and nothing gives it one - write it" }>, align 8
@.d222 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"D16a" }>, align 8
@.d223 = private constant <{ i64, [39 x i8] }> <{ i64 0, [39 x i8] c"this lambda's signature disagrees with " }>, align 8
@.d224 = private constant <{ i64, [42 x i8] }> <{ i64 0, [42 x i8] c" - leave that part out, or make them agree" }>, align 8
@.d225 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"D16a" }>, align 8
@.d226 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E39" }>, align 8
@.d227 = private constant <{ i64, [93 x i8] }> <{ i64 0, [93 x i8] c"lane operators give elements that may not be or hold references - build the array with a loop" }>, align 8
@.d228 = private constant <{ i64, [45 x i8] }> <{ i64 0, [45 x i8] c"a one-line body is one simple statement, not " }>, align 8
@.d229 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c" - write a block, '{ ... }'" }>, align 8
@.d230 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"S1b" }>, align 8
@.d231 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"a line cannot begin with " }>, align 8
@.d232 = private constant <{ i64, [59 x i8] }> <{ i64 0, [59 x i8] c" - the line before ended its statement; end that line with " }>, align 8
@.d233 = private constant <{ i64, [38 x i8] }> <{ i64 0, [38 x i8] c", or put the expression in parentheses" }>, align 8
@.d234 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"L18" }>, align 8
@.d235 = private constant <{ i64, [111 x i8] }> <{ i64 0, [111 x i8] c" names no library and no file - write a library's name, as 'link \22m\22', or a path to one, as 'link \22lib/libx.a\22'" }>, align 8
@.d236 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"X9" }>, align 8
@.d237 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"B11d" }>, align 8
@.d238 = private constant <{ i64, [77 x i8] }> <{ i64 0, [77 x i8] c"-asm, -ir and -caps exclude one another - explain shows one of them at a time" }>, align 8
@.d239 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E4a" }>, align 8
@.d240 = private constant <{ i64, [101 x i8] }> <{ i64 0, [101 x i8] c"this literal expression has no value - no integer type holds it, from I128's least to U128's greatest" }>, align 8
@.d241 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"a value of " }>, align 8
@.d242 = private constant <{ i64, [36 x i8] }> <{ i64 0, [36 x i8] c" is made by its constructor - write " }>, align 8
@.d243 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"(...)" }>, align 8
@.d244 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T29d" }>, align 8
@.d245 = private constant <{ i64, [162 x i8] }> <{ i64 0, [162 x i8] c" needs more than 64 bits, and a literal's own type is at most U64 - give it the type it should have, as 'x U128 = ...', or convert an operand, as 'U128(1) << 100'" }>, align 8
@.d246 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"T6a, E4a" }>, align 8
@.d247 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"case " }>, align 8
@.d248 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" of " }>, align 8
@.d249 = private constant <{ i64, [41 x i8] }> <{ i64 0, [41 x i8] c" is not covered - add it, or 'case _ { }'" }>, align 8
@.d250 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"S13a" }>, align 8
@.d251 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d252 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"' is a " }>, align 8
@.d253 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c", which may be null, and " }>, align 8
@.d254 = private constant <{ i64, [58 x i8] }> <{ i64 0, [58 x i8] c" never is - test it first ('if x is not null'), or write '" }>, align 8
@.d255 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"!'" }>, align 8
@.d256 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T2c" }>, align 8
@.d257 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c" can fail here - write 'try x in c'" }>, align 8
@.d258 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E29" }>, align 8
@.d259 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c"two imported modules declare " }>, align 8
@.d260 = private constant <{ i64, [42 x i8] }> <{ i64 0, [42 x i8] c" for this type - import only the one meant" }>, align 8
@.d261 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"M22" }>, align 8
@.d262 = private constant <{ i64, [37 x i8] }> <{ i64 0, [37 x i8] c"only the prelude declares methods of " }>, align 8
@.d263 = private constant <{ i64, [59 x i8] }> <{ i64 0, [59 x i8] c" - declare a type of your own over it: 'type T extends ...'" }>, align 8
@.d264 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"M19d" }>, align 8
@.d265 = private constant <{ i64, [41 x i8] }> <{ i64 0, [41 x i8] c"the end can be reached without returning " }>, align 8
@.d266 = private constant <{ i64, [53 x i8] }> <{ i64 0, [53 x i8] c" - return on every path, or end it with 'unreachable'" }>, align 8
@.d267 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"D10a" }>, align 8
@.d268 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"D11a" }>, align 8
@.d269 = private constant <{ i64, [99 x i8] }> <{ i64 0, [99 x i8] c"':=' gives a local its initializer's permission - remove 'mut', or write the type: 'x mut T& = ...'" }>, align 8
@.d270 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c" is already declared in this module" }>, align 8
@.d271 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"D2" }>, align 8
@.d272 = private constant <{ i64, [57 x i8] }> <{ i64 0, [57 x i8] c" is already a type's name in this module - choose another" }>, align 8
@.d273 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"D2" }>, align 8
@.d274 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"parameter " }>, align 8
@.d275 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c" is given by position already" }>, align 8
@.d276 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"E14b" }>, align 8
@.d277 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"E14b" }>, align 8
@.d278 = private constant <{ i64, [101 x i8] }> <{ i64 0, [101 x i8] c"a call through a function value takes its arguments by position - a function type names no parameters" }>, align 8
@.d279 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c" names no parameter of " }>, align 8
@.d280 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"E14b" }>, align 8
@.d281 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c" names no parameter of " }>, align 8
@.d282 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c" - did you mean '" }>, align 8
@.d283 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"'?" }>, align 8
@.d284 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"E14b" }>, align 8
@.d285 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"E26b" }>, align 8
@.d286 = private constant <{ i64, [64 x i8] }> <{ i64 0, [64 x i8] c"'Narrow' names the type it converts to - write 'x.Narrow<I32>()'" }>, align 8
@.d287 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"-" }>, align 8
@.d288 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c" is below I64's minimum" }>, align 8
@.d289 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"L10" }>, align 8
@.d290 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c" has no case " }>, align 8
@.d291 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T17" }>, align 8
@.d292 = private constant <{ i64, [95 x i8] }> <{ i64 0, [95 x i8] c" has no zero value, so this needs one - its constructor does not run on zeros while compiling: " }>, align 8
@.d293 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"D13c" }>, align 8
@.d294 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"non-ASCII byte '" }>, align 8
@.d295 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"' - olang source is ASCII" }>, align 8
@.d296 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"L1" }>, align 8
@.d297 = private constant <{ i64, [120 x i8] }> <{ i64 0, [120 x i8] c" cannot be walked - 'for ... in' takes an array, a range, an iterator ('mut Next() T ? Exhausted') or a type with Iter()" }>, align 8
@.d298 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"S9a" }>, align 8
@.d299 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c" cannot be sliced" }>, align 8
@.d300 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"E16a" }>, align 8
@.d301 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d302 = private constant <{ i64, [69 x i8] }> <{ i64 0, [69 x i8] c"' is declared here, in a block that closes first - declare it where '" }>, align 8
@.d303 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"' lives, '" }>, align 8
@.d304 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d305 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"&', and assign it here" }>, align 8
@.d306 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d307 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d308 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"here" }>, align 8
@.d309 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d310 = private constant <{ i64, [89 x i8] }> <{ i64 0, [89 x i8] c"' is the loop's copy of an element, made in the loop's block - lend the element itself: '" }>, align 8
@.d311 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"[i]', with 'for i in range " }>, align 8
@.d312 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c".Len()'" }>, align 8
@.d313 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d314 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d315 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"' is " }>, align 8
@.d316 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"'s private spelling with " }>, align 8
@.d317 = private constant <{ i64, [41 x i8] }> <{ i64 0, [41 x i8] c"'s parameters, so it is held to its shape" }>, align 8
@.d318 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d319 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d320 = private constant <{ i64, [57 x i8] }> <{ i64 0, [57 x i8] c"built here, where the receiver's part it was handed lives" }>, align 8
@.d321 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d322 = private constant <{ i64, [65 x i8] }> <{ i64 0, [65 x i8] c"this loop may run no times - assigning in its body does not count" }>, align 8
@.d323 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c" takes numbers, found " }>, align 8
@.d324 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"E6" }>, align 8
@.d325 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c" takes operands of one type, found " }>, align 8
@.d326 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" and " }>, align 8
@.d327 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d328 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"-output " }>, align 8
@.d329 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c" is a directory - name the file to write" }>, align 8
@.d330 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"B3h" }>, align 8
@.d331 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"O10d" }>, align 8
@.d332 = private constant <{ i64, [65 x i8] }> <{ i64 0, [65 x i8] c"this value lives in this function's own scope, which closes first" }>, align 8
@.d333 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T13c" }>, align 8
@.d334 = private constant <{ i64, [74 x i8] }> <{ i64 0, [74 x i8] c"a packed struct takes no type parameters - its layout is its declaration's" }>, align 8
@.d335 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"field '" }>, align 8
@.d336 = private constant <{ i64, [42 x i8] }> <{ i64 0, [42 x i8] c"' is matched by position and again by name" }>, align 8
@.d337 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"S13b" }>, align 8
@.d338 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"field '" }>, align 8
@.d339 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c"' is named twice in this pattern" }>, align 8
@.d340 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"S13b" }>, align 8
@.d341 = private constant <{ i64, [37 x i8] }> <{ i64 0, [37 x i8] c" may hold an error that has no field " }>, align 8
@.d342 = private constant <{ i64, [34 x i8] }> <{ i64 0, [34 x i8] c" - test which it holds first ('if " }>, align 8
@.d343 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c" == T.Word')" }>, align 8
@.d344 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T19b" }>, align 8
@.d345 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T17c" }>, align 8
@.d346 = private constant <{ i64, [101 x i8] }> <{ i64 0, [101 x i8] c"this payload holds references into two scopes, and it lives in one - build what it holds in one scope" }>, align 8
@.d347 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c" carries nothing - write it without '()'" }>, align 8
@.d348 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T19b" }>, align 8
@.d349 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"L12" }>, align 8
@.d350 = private constant <{ i64, [38 x i8] }> <{ i64 0, [38 x i8] c"a decimal point needs a digit after it" }>, align 8
@.d351 = private constant <{ i64, [52 x i8] }> <{ i64 0, [52 x i8] c"this function type's result holds no reference, so '" }>, align 8
@.d352 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c"' says nothing - leave it out" }>, align 8
@.d353 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T21c" }>, align 8
@.d354 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"'keeps " }>, align 8
@.d355 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" in " }>, align 8
@.d356 = private constant <{ i64, [64 x i8] }> <{ i64 0, [64 x i8] c"' keeps a parameter in itself, which says nothing - leave it out" }>, align 8
@.d357 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T21c" }>, align 8
@.d358 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"-quick and " }>, align 8
@.d359 = private constant <{ i64, [41 x i8] }> <{ i64 0, [41 x i8] c" each say how much to optimize - give one" }>, align 8
@.d360 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"B2g" }>, align 8
@.d361 = private constant <{ i64, [41 x i8] }> <{ i64 0, [41 x i8] c"a raw value is a literal of the raw type " }>, align 8
@.d362 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T17e" }>, align 8
@.d363 = private constant <{ i64, [55 x i8] }> <{ i64 0, [55 x i8] c"an enum's raw type is String or an integer type, found " }>, align 8
@.d364 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T17e" }>, align 8
@.d365 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T17e" }>, align 8
@.d366 = private constant <{ i64, [91 x i8] }> <{ i64 0, [91 x i8] c"a raw value needs the enum's raw type, written after 'enum': 'enum String {' or 'enum U8 {'" }>, align 8
@.d367 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"this copies a read-only " }>, align 8
@.d368 = private constant <{ i64, [134 x i8] }> <{ i64 0, [134 x i8] c", and a written type declares a writable one - declare it with ':=' for a read-only copy, borrow it read-only, or make one of its own " }>, align 8
@.d369 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T25c" }>, align 8
@.d370 = private constant <{ i64, [46 x i8] }> <{ i64 0, [46 x i8] c"a mutable global holds no copy of a read-only " }>, align 8
@.d371 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c" - give it one of its own, made " }>, align 8
@.d372 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c", or drop its 'mut'" }>, align 8
@.d373 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T25c" }>, align 8
@.d374 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T25c" }>, align 8
@.d375 = private constant <{ i64, [117 x i8] }> <{ i64 0, [117 x i8] c"this writes through a reference a read-only copy holds - a copy of a place reached read-only writes nothing it shares" }>, align 8
@.d376 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d377 = private constant <{ i64, [28 x i8] }> <{ i64 0, [28 x i8] c"' keeps what its parameter '" }>, align 8
@.d378 = private constant <{ i64, [44 x i8] }> <{ i64 0, [44 x i8] c"' reaches where it can be written, and this " }>, align 8
@.d379 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c" is read-only - pass a writable one" }>, align 8
@.d380 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T25c" }>, align 8
@.d381 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T25b" }>, align 8
@.d382 = private constant <{ i64, [73 x i8] }> <{ i64 0, [73 x i8] c"this writes through a read-only reference - one with no 'mut' in its type" }>, align 8
@.d383 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c" cannot be held through '" }>, align 8
@.d384 = private constant <{ i64, [43 x i8] }> <{ i64 0, [43 x i8] c"&' - only a struct, an enum or an array can" }>, align 8
@.d385 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"G11" }>, align 8
@.d386 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c"a reference never narrows - '" }>, align 8
@.d387 = private constant <{ i64, [62 x i8] }> <{ i64 0, [62 x i8] c"' lives in a block that closes first, and this keeps it longer" }>, align 8
@.d388 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"O25" }>, align 8
@.d389 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"a " }>, align 8
@.d390 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" has no '" }>, align 8
@.d391 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"' - its members are " }>, align 8
@.d392 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"G34" }>, align 8
@.d393 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"G33" }>, align 8
@.d394 = private constant <{ i64, [139 x i8] }> <{ i64 0, [139 x i8] c"a comprehension over a list known while compiling keeps an element by a filter decided while compiling - this one is known only at run time" }>, align 8
@.d395 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"G13" }>, align 8
@.d396 = private constant <{ i64, [106 x i8] }> <{ i64 0, [106 x i8] c"'match' on a type takes a type known while compiling - a type variable, or a type a reflected member names" }>, align 8
@.d397 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c" has no reflected member '" }>, align 8
@.d398 = private constant <{ i64, [116 x i8] }> <{ i64 0, [116 x i8] c"' - a type's are Name, Kind, Base, Fields, Cases, Params, Results, Element, Length, Target, Nullable, Size and Align" }>, align 8
@.d399 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"G32" }>, align 8
@.d400 = private constant <{ i64, [28 x i8] }> <{ i64 0, [28 x i8] c"'Of' takes one value, found " }>, align 8
@.d401 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"G34" }>, align 8
@.d402 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"the error raised again can be " }>, align 8
@.d403 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c", and this function's '?' names " }>, align 8
@.d404 = private constant <{ i64, [44 x i8] }> <{ i64 0, [44 x i8] c" - add it after '?', or test the error first" }>, align 8
@.d405 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"R3a" }>, align 8
@.d406 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"this function returns " }>, align 8
@.d407 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c", found " }>, align 8
@.d408 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"D8" }>, align 8
@.d409 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"O10" }>, align 8
@.d410 = private constant <{ i64, [68 x i8] }> <{ i64 0, [68 x i8] c"this reference lives in a scope that may not outlive where it is put" }>, align 8
@.d411 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"O10c" }>, align 8
@.d412 = private constant <{ i64, [112 x i8] }> <{ i64 0, [112 x i8] c"the callee needs one argument's scope to outlive another's, and nothing here shows it - pass them from one scope" }>, align 8
@.d413 = private constant <{ i64, [66 x i8] }> <{ i64 0, [66 x i8] c" is already declared in this module - a name means one thing in it" }>, align 8
@.d414 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"D3a" }>, align 8
@.d415 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"shifting " }>, align 8
@.d416 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" by " }>, align 8
@.d417 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c" is outside its width of " }>, align 8
@.d418 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" bits" }>, align 8
@.d419 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E8a" }>, align 8
@.d420 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"D16e" }>, align 8
@.d421 = private constant <{ i64, [64 x i8] }> <{ i64 0, [64 x i8] c"a spawned lambda takes no parameters - it captures what it needs" }>, align 8
@.d422 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"P1" }>, align 8
@.d423 = private constant <{ i64, [66 x i8] }> <{ i64 0, [66 x i8] c"'spawn' is written inside a 'join' block, which waits for the task" }>, align 8
@.d424 = private constant <{ i64, [43 x i8] }> <{ i64 0, [43 x i8] c"a spawn target has exactly the call's type " }>, align 8
@.d425 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c", found " }>, align 8
@.d426 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c" - convert after the join" }>, align 8
@.d427 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"P1g" }>, align 8
@.d428 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"P1g" }>, align 8
@.d429 = private constant <{ i64, [51 x i8] }> <{ i64 0, [51 x i8] c"this call returns nothing to bind - drop the target" }>, align 8
@.d430 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"O12" }>, align 8
@.d431 = private constant <{ i64, [214 x i8] }> <{ i64 0, [214 x i8] c"where this place's references live is not known here, so nothing new is built into it - reach the place through a local, so its scope is found from it while the program runs (O29), or store what already lives there" }>, align 8
@.d432 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"E11a" }>, align 8
@.d433 = private constant <{ i64, [54 x i8] }> <{ i64 0, [54 x i8] c"'$' has nothing to render - this call returns no value" }>, align 8
@.d434 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"E11c, T25c" }>, align 8
@.d435 = private constant <{ i64, [98 x i8] }> <{ i64 0, [98 x i8] c"'$' renders read-only values too, so Str only reads its receiver - pass on what it holds read-only" }>, align 8
@.d436 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c" has no field '" }>, align 8
@.d437 = private constant <{ i64, [84 x i8] }> <{ i64 0, [84 x i8] c"' - a struct pattern names the fields it matches, never its constructor's parameters" }>, align 8
@.d438 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"S13i" }>, align 8
@.d439 = private constant <{ i64, [103 x i8] }> <{ i64 0, [103 x i8] c"a struct pattern names the fields it matches - write 'field = pattern' or a field's name: the order of " }>, align 8
@.d440 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"'s fields is no part of it" }>, align 8
@.d441 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"S13i" }>, align 8
@.d442 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"where " }>, align 8
@.d443 = private constant <{ i64, [81 x i8] }> <{ i64 0, [81 x i8] c" lives is not known here, so nothing is declared to live there - read it through " }>, align 8
@.d444 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c", or declare the local with ':='" }>, align 8
@.d445 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"O12" }>, align 8
@.d446 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"P4a" }>, align 8
@.d447 = private constant <{ i64, [82 x i8] }> <{ i64 0, [82 x i8] c"a task's clause runs on the task and may not return - it ends where its block does" }>, align 8
@.d448 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"T13a, T29c" }>, align 8
@.d449 = private constant <{ i64, [143 x i8] }> <{ i64 0, [143 x i8] c"'mut' makes a reference writable, and a String never changes once it is made - write text through 'mut Array<Char>&', read it through 'String&'" }>, align 8
@.d450 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"T13a, T29c" }>, align 8
@.d451 = private constant <{ i64, [146 x i8] }> <{ i64 0, [146 x i8] c"a String never changes once it is made - write the text as an Array<Char> and make the String with String(chars), or build it with a StringBuilder" }>, align 8
@.d452 = private constant <{ i64, [57 x i8] }> <{ i64 0, [57 x i8] c"this top-level assert is false, decided while compiling: " }>, align 8
@.d453 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"S17a" }>, align 8
@.d454 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"a comma before " }>, align 8
@.d455 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c" separates nothing - remove it" }>, align 8
@.d456 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"L18a" }>, align 8
@.d457 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c" is listed by " }>, align 8
@.d458 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c" but has no method " }>, align 8
@.d459 = private constant <{ i64, [34 x i8] }> <{ i64 0, [34 x i8] c" that fits - declare it, or leave " }>, align 8
@.d460 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" out" }>, align 8
@.d461 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T31a" }>, align 8
@.d462 = private constant <{ i64, [147 x i8] }> <{ i64 0, [147 x i8] c" can escape here, and this function writes no '?' - a function that can fail says so: write '?' after its result (its errors inferred), or catch it" }>, align 8
@.d463 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"R1d" }>, align 8
@.d464 = private constant <{ i64, [42 x i8] }> <{ i64 0, [42 x i8] c"nothing here can fail - write it without '" }>, align 8
@.d465 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d466 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"R8" }>, align 8
@.d467 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"type arguments for " }>, align 8
@.d468 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c": expected " }>, align 8
@.d469 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c", found " }>, align 8
@.d470 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"G7" }>, align 8
@.d471 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"type " }>, align 8
@.d472 = private constant <{ i64, [52 x i8] }> <{ i64 0, [52 x i8] c" has no constructor - an enum's values are its cases" }>, align 8
@.d473 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d474 = private constant <{ i64, [43 x i8] }> <{ i64 0, [43 x i8] c" is a type variable, so its cases are types" }>, align 8
@.d475 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"G13" }>, align 8
@.d476 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"G38" }>, align 8
@.d477 = private constant <{ i64, [106 x i8] }> <{ i64 0, [106 x i8] c" is a type variable, not an error set - an error-set parameter is written after '?' in its list, '<T ? E>'" }>, align 8
@.d478 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"G1a" }>, align 8
@.d479 = private constant <{ i64, [33 x i8] }> <{ i64 0, [33 x i8] c" - nothing in scope has that type" }>, align 8
@.d480 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c" - in scope: " }>, align 8
@.d481 = private constant <{ i64, [39 x i8] }> <{ i64 0, [39 x i8] c"'_' holds the place of a value of type " }>, align 8
@.d482 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E41" }>, align 8
@.d483 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"L4a" }>, align 8
@.d484 = private constant <{ i64, [43 x i8] }> <{ i64 0, [43 x i8] c"unterminated block comment - '##' closes it" }>, align 8
@.d485 = private constant <{ i64, [46 x i8] }> <{ i64 0, [46 x i8] c" is unique: this value is held elsewhere, and " }>, align 8
@.d486 = private constant <{ i64, [44 x i8] }> <{ i64 0, [44 x i8] c" holds one of its own - write a reference ('" }>, align 8
@.d487 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"&'), or make a new " }>, align 8
@.d488 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" here" }>, align 8
@.d489 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T13b" }>, align 8
@.d490 = private constant <{ i64, [101 x i8] }> <{ i64 0, [101 x i8] c" is unique, so it is never copied and has no Copy - make a new one with a function or its constructor" }>, align 8
@.d491 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"T13b, E31d" }>, align 8
@.d492 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T13b" }>, align 8
@.d493 = private constant <{ i64, [95 x i8] }> <{ i64 0, [95 x i8] c"'unique' and 'immut' are never one type's - an immut value is copied freely, a unique one never" }>, align 8
@.d494 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"unknown option '" }>, align 8
@.d495 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d496 = private constant <{ i64, [37 x i8] }> <{ i64 0, [37 x i8] c" - 'olang help' lists the options of " }>, align 8
@.d497 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"B1" }>, align 8
@.d498 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c" is no import here" }>, align 8
@.d499 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"M10" }>, align 8
@.d500 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"unknown type " }>, align 8
@.d501 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c" - did you mean '" }>, align 8
@.d502 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"'?" }>, align 8
@.d503 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d504 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"M19d" }>, align 8
@.d505 = private constant <{ i64, [64 x i8] }> <{ i64 0, [64 x i8] c"vacate() empties a place - a writable variable, field or element" }>, align 8
@.d506 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c" is private to its module" }>, align 8
@.d507 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"M6" }>, align 8
@.d508 = private constant <{ i64, [34 x i8] }> <{ i64 0, [34 x i8] c" names need as many values, found " }>, align 8
@.d509 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"D12b" }>, align 8
@.d510 = private constant <{ i64, [42 x i8] }> <{ i64 0, [42 x i8] c"a variadic parameter is a function's, not " }>, align 8
@.d511 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"D8g" }>, align 8
@.d512 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d513 = private constant <{ i64, [201 x i8] }> <{ i64 0, [201 x i8] c"' may hold values of different scopes here, so where its referent lives is not known - nothing new is built or stored through it: give it values of one scope, or store through each where it is assigned" }>, align 8
@.d514 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"O25i, O12" }>, align 8
@.d515 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"this keeps a view of '" }>, align 8
@.d516 = private constant <{ i64, [126 x i8] }> <{ i64 0, [126 x i8] c"' where no storage can be built for it (where it is kept is not known here) - keep a copy of what it shows: '$x' or 'x.Copy()'" }>, align 8
@.d517 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"O27" }>, align 8
@.d518 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"S13f" }>, align 8
@.d519 = private constant <{ i64, [61 x i8] }> <{ i64 0, [61 x i8] c"'_' matches every value, so it is its case's only alternative" }>, align 8
@.d520 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"E31, O17" }>, align 8
@.d521 = private constant <{ i64, [148 x i8] }> <{ i64 0, [148 x i8] c"x[i] gives a copy, and the call can build into what it holds where the copy is - hold the elements by reference, or take it in place ('x.RefMut(i)')" }>, align 8
@.d522 = private constant <{ i64, [93 x i8] }> <{ i64 0, [93 x i8] c"'s zero value holds references, which a fill would share - give a fill, or build the elements" }>, align 8
@.d523 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"D13c" }>, align 8
@olang_2esole_2ecompiler_2fmsgs_3aNearest_2e1 = weak hidden constant i1 false
declare void @__olang_region_release(ptr) noinline
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
declare { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %v0, i64 %a0)
declare { i64, ptr } @std_2fprelude_2ftext_2eU8_2eFormat(ptr %v0, i8 %a0, i64 %a1)
@olang_loc_d2d351cc5daaf8b6_b531c4af6261323a = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2ePadStart(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i8 %a2)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @compiler_2fmsgs_2etypeNotValue(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @compiler_2fmsgs_2eDistance(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @compiler_2fmsgs_2eNear(ptr %v0, { i64, ptr } %a0, i64 %a1)

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
