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
define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnyCaseNotAny(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 187, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 60, ptr getelementptr inbounds (<{ i64, [60 x i8] }>, ptr @.d0, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 60, ptr getelementptr inbounds (<{ i64, [60 x i8] }>, ptr @.d0, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d1, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnyNeedsMarker(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 170, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d4, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnyNotTrait(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 169, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d7, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnyOfBuilderTrait(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 307, ptr %l2
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
  %t11 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t15 = extractvalue { i64, ptr } %a1, 1
  %t16 = extractvalue { i64, ptr } %a1, 0
  %t17 = add i64 %t13, %t16
  %t18 = extractvalue { i64, ptr } { i64 115, ptr getelementptr inbounds (<{ i64, [115 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 115, ptr getelementptr inbounds (<{ i64, [115 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
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
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t38, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d10, i32 0, i32 1) }, { i64, ptr } %t37)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnySpawned(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 188, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 98, ptr getelementptr inbounds (<{ i64, [98 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 98, ptr getelementptr inbounds (<{ i64, [98 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d13, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnySpawnedResult(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca i64
  %l11 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 189, ptr %l3
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
  %t9 = extractvalue { i64, ptr } { i64 91, ptr getelementptr inbounds (<{ i64, [91 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 91, ptr getelementptr inbounds (<{ i64, [91 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  %t12 = extractvalue { i64, ptr } %a0, 1
  %t13 = extractvalue { i64, ptr } %a0, 0
  %t14 = add i64 %t10, %t13
  %t15 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t17 = add i64 %t14, %t16
  %t19 = extractvalue { i64, ptr } %a1, 1
  %t20 = extractvalue { i64, ptr } %a1, 0
  %t21 = add i64 %t17, %t20
  %t22 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  %t24 = add i64 %t21, %t23
  %t26 = extractvalue { i64, ptr } %a2, 1
  %t27 = extractvalue { i64, ptr } %a2, 0
  %t28 = add i64 %t24, %t27
  %t29 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t30 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
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
  %t54 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, i32 %t52, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d18, i32 0, i32 1) }, { i64, ptr } %t51)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eApiUsage(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 879, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d19, i32 0, i32 1) }, { i64, ptr } { i64 113, ptr getelementptr inbounds (<{ i64, [113 x i8] }>, ptr @.d20, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArgCount(ptr %v0, ptr %v1, i64 %a0, { i64, ptr } %a1, i64 %a2) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca i64
  %l11 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 356, ptr %l3
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
  %t9 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  %t12 = call i64 @__olang_fmt_i64(ptr null, i64 %a0)
  %t13 = add i64 %t10, %t12
  %t14 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d23, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d23, i32 0, i32 1) }, 0
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
  %t50 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t48, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d24, i32 0, i32 1) }, { i64, ptr } %t47)
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
  store i32 357, ptr %l3
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
  %t9 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d25, i32 0, i32 1) }, 0
  %t12 = call i64 @__olang_fmt_i64(ptr null, i64 %a0)
  %t13 = add i64 %t10, %t12
  %t14 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = call i64 @__olang_fmt_i64(ptr null, i64 %a1)
  %t19 = add i64 %t16, %t18
  %t20 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t21 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
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
  %t48 = load i32, ptr %l3, !range !{i32 0, i32 884}
  %t50 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 %t48, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d28, i32 0, i32 1) }, { i64, ptr } %t47)
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
  %t10 = extractvalue { i64, ptr } { i64 61, ptr getelementptr inbounds (<{ i64, [61 x i8] }>, ptr @.d29, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 61, ptr getelementptr inbounds (<{ i64, [61 x i8] }>, ptr @.d29, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d30, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArrayTypeHoldsItself(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca i64
  %l11 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 149, ptr %l3
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
  %t12 = extractvalue { i64, ptr } { i64 88, ptr getelementptr inbounds (<{ i64, [88 x i8] }>, ptr @.d31, i32 0, i32 1) }, 1
  %t13 = extractvalue { i64, ptr } { i64 88, ptr getelementptr inbounds (<{ i64, [88 x i8] }>, ptr @.d31, i32 0, i32 1) }, 0
  %t14 = add i64 %t11, %t13
  %t16 = extractvalue { i64, ptr } %a1, 1
  %t17 = extractvalue { i64, ptr } %a1, 0
  %t18 = add i64 %t14, %t17
  %t19 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d32, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d32, i32 0, i32 1) }, 0
  %t21 = add i64 %t18, %t20
  %t23 = extractvalue { i64, ptr } %a2, 1
  %t24 = extractvalue { i64, ptr } %a2, 0
  %t25 = add i64 %t21, %t24
  %t26 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d33, i32 0, i32 1) }, 1
  %t27 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d33, i32 0, i32 1) }, 0
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
  %t50 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, i32 %t48, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d34, i32 0, i32 1) }, { i64, ptr } %t47)
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
  store i32 510, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d35, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 57, ptr getelementptr inbounds (<{ i64, [57 x i8] }>, ptr @.d36, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 57, ptr getelementptr inbounds (<{ i64, [57 x i8] }>, ptr @.d36, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d37, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAssertAborts(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 722, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 62, ptr getelementptr inbounds (<{ i64, [62 x i8] }>, ptr @.d38, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 62, ptr getelementptr inbounds (<{ i64, [62 x i8] }>, ptr @.d38, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d39, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAtomicNotInteger(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 533, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 60, ptr getelementptr inbounds (<{ i64, [60 x i8] }>, ptr @.d40, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 60, ptr getelementptr inbounds (<{ i64, [60 x i8] }>, ptr @.d40, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d41, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d41, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d42, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAttrRead(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
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
  store i32 859, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
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
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d43, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d43, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %t6, 1
  %t12 = extractvalue { i64, ptr } %t6, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 49, ptr getelementptr inbounds (<{ i64, [49 x i8] }>, ptr @.d44, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 49, ptr getelementptr inbounds (<{ i64, [49 x i8] }>, ptr @.d44, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %t7, 1
  %t19 = extractvalue { i64, ptr } %t7, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d45, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d45, i32 0, i32 1) }, 0
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
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t42, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d46, i32 0, i32 1) }, { i64, ptr } %t41)
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
  store i32 848, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 110, ptr getelementptr inbounds (<{ i64, [110 x i8] }>, ptr @.d47, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 110, ptr getelementptr inbounds (<{ i64, [110 x i8] }>, ptr @.d47, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d48, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBenchFuzz(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 11, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d49, i32 0, i32 1) }, { i64, ptr } { i64 95, ptr getelementptr inbounds (<{ i64, [95 x i8] }>, ptr @.d50, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuildIntoCapture(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 351, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d51, i32 0, i32 1) }, { i64, ptr } { i64 160, ptr getelementptr inbounds (<{ i64, [160 x i8] }>, ptr @.d52, i32 0, i32 1) })
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
  store i32 306, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d53, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d53, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 87, ptr getelementptr inbounds (<{ i64, [87 x i8] }>, ptr @.d54, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 87, ptr getelementptr inbounds (<{ i64, [87 x i8] }>, ptr @.d54, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d55, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuilderOwnerElsewhere(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 296, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 49, ptr getelementptr inbounds (<{ i64, [49 x i8] }>, ptr @.d56, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 49, ptr getelementptr inbounds (<{ i64, [49 x i8] }>, ptr @.d56, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d57, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d57, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d58, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCallValueObligations(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 671, ptr %l2
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
  %t11 = extractvalue { i64, ptr } { i64 78, ptr getelementptr inbounds (<{ i64, [78 x i8] }>, ptr @.d59, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 78, ptr getelementptr inbounds (<{ i64, [78 x i8] }>, ptr @.d59, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t15 = extractvalue { i64, ptr } %a1, 1
  %t16 = extractvalue { i64, ptr } %a1, 0
  %t17 = add i64 %t13, %t16
  %t18 = extractvalue { i64, ptr } { i64 127, ptr getelementptr inbounds (<{ i64, [127 x i8] }>, ptr @.d60, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 127, ptr getelementptr inbounds (<{ i64, [127 x i8] }>, ptr @.d60, i32 0, i32 1) }, 0
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
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t38, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d61, i32 0, i32 1) }, { i64, ptr } %t37)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCannotOpen(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 50, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d62, i32 0, i32 1) }, { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d63, i32 0, i32 1) })
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
  store i32 493, ptr %l2
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
  %t11 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d64, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d64, i32 0, i32 1) }, 0
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
  %t36 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t34, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d65, i32 0, i32 1) }, { i64, ptr } %t33)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCatchMustLeave(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 540, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d66, i32 0, i32 1) }, { i64, ptr } { i64 57, ptr getelementptr inbounds (<{ i64, [57 x i8] }>, ptr @.d67, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCatchNotProduced(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
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
  %t7 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d68, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d68, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d69, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCatchWordNotProduced(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 639, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d70, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d70, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d71, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d71, i32 0, i32 1) }, 0
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
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t38, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d72, i32 0, i32 1) }, { i64, ptr } %t37)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaughtCompareWhat(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 797, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
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
  %t10 = extractvalue { i64, ptr } { i64 108, ptr getelementptr inbounds (<{ i64, [108 x i8] }>, ptr @.d73, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 108, ptr getelementptr inbounds (<{ i64, [108 x i8] }>, ptr @.d73, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d74, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCharNoPad(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 520, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d75, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d75, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d76, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d76, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d77, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d77, i32 0, i32 1) }, 0
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
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d78, i32 0, i32 1) }, { i64, ptr } %t41)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCommaEndsLine(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 58, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d79, i32 0, i32 1) }, { i64, ptr } { i64 95, ptr getelementptr inbounds (<{ i64, [95 x i8] }>, ptr @.d80, i32 0, i32 1) })
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
  store i32 857, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 77, ptr getelementptr inbounds (<{ i64, [77 x i8] }>, ptr @.d81, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 77, ptr getelementptr inbounds (<{ i64, [77 x i8] }>, ptr @.d81, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d82, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondBranchTypes(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 459, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d83, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d83, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d84, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d84, i32 0, i32 1) }, 0
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
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t38, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d85, i32 0, i32 1) }, { i64, ptr } %t37)
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
  %t10 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d86, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d86, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d87, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondNoMeet(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 95, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
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
  %t10 = extractvalue { i64, ptr } { i64 59, ptr getelementptr inbounds (<{ i64, [59 x i8] }>, ptr @.d88, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 59, ptr getelementptr inbounds (<{ i64, [59 x i8] }>, ptr @.d88, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d89, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondTypes(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 94, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
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
  %t10 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d90, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d90, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d91, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eConstraintDisagrees(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 137, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
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
  %t10 = extractvalue { i64, ptr } { i64 87, ptr getelementptr inbounds (<{ i64, [87 x i8] }>, ptr @.d92, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 87, ptr getelementptr inbounds (<{ i64, [87 x i8] }>, ptr @.d92, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d93, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eConstraintUnmetMethod(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3) #0 {
entry:
  %l4 = alloca i32
  %l5 = alloca i64
  %l13 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 139, ptr %l4
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
  %t13 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d94, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d94, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t17 = extractvalue { i64, ptr } %a1, 1
  %t18 = extractvalue { i64, ptr } %a1, 0
  %t19 = add i64 %t15, %t18
  %t20 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d95, i32 0, i32 1) }, 1
  %t21 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d95, i32 0, i32 1) }, 0
  %t22 = add i64 %t19, %t21
  %t24 = extractvalue { i64, ptr } %a2, 1
  %t25 = extractvalue { i64, ptr } %a2, 0
  %t26 = add i64 %t22, %t25
  %t27 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d96, i32 0, i32 1) }, 1
  %t28 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d96, i32 0, i32 1) }, 0
  %t29 = add i64 %t26, %t28
  %t31 = extractvalue { i64, ptr } %a3, 1
  %t32 = extractvalue { i64, ptr } %a3, 0
  %t33 = add i64 %t29, %t32
  %t34 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d97, i32 0, i32 1) }, 1
  %t35 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d97, i32 0, i32 1) }, 0
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
  %t60 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v4, ptr %v4, ptr %v4, i32 %t58, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d98, i32 0, i32 1) }, { i64, ptr } %t57)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCtorFieldNoValue(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 195, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d99, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d99, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 74, ptr getelementptr inbounds (<{ i64, [74 x i8] }>, ptr @.d100, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 74, ptr getelementptr inbounds (<{ i64, [74 x i8] }>, ptr @.d100, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d101, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDeferReturns(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 616, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d102, i32 0, i32 1) }, { i64, ptr } { i64 62, ptr getelementptr inbounds (<{ i64, [62 x i8] }>, ptr @.d103, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDefineShape(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
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
  %t7 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d104, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d104, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d105, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d105, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d106, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDestructCount(ptr %v0, i64 %a0, i64 %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 566, ptr %l2
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
  %t10 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d107, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d107, i32 0, i32 1) }, 0
  %t12 = add i64 %t9, %t11
  %t14 = call i64 @__olang_fmt_i64(ptr null, i64 %a1)
  %t15 = add i64 %t12, %t14
  %t16 = extractvalue { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d108, i32 0, i32 1) }, 1
  %t17 = extractvalue { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d108, i32 0, i32 1) }, 0
  %t18 = add i64 %t15, %t17
  %t19 = load i64, ptr %l3
  %t20 = inttoptr i64 %t19 to ptr
  %t21 = call ptr @__olang_scope_alloc(ptr %t20, i64 %t18)
  %t22 = call i64 @__olang_fmt_i64(ptr %t21, i64 %a0)
  %t23 = getelementptr i8, ptr %t21, i64 %t9
  call void @olang_textcopy(ptr %t23, ptr %t10, i64 %t11)
  %t24 = getelementptr i8, ptr %t23, i64 %t11
  %t25 = call i64 @__olang_fmt_i64(ptr %t24, i64 %a1)
  %t26 = getelementptr i8, ptr %t24, i64 %t14
  call void @olang_textcopy(ptr %t26, ptr %t16, i64 %t17)
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
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 %t38, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d109, i32 0, i32 1) }, { i64, ptr } %t37)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDestructNotName(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 564, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d110, i32 0, i32 1) }, { i64, ptr } { i64 83, ptr getelementptr inbounds (<{ i64, [83 x i8] }>, ptr @.d111, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDestructTypeByValue(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
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
  store i32 166, ptr %l2
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
  %t13 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d112, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d112, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t17 = extractvalue { i64, ptr } %a1, 1
  %t18 = extractvalue { i64, ptr } %a1, 0
  %t19 = add i64 %t15, %t18
  %t20 = extractvalue { i64, ptr } { i64 54, ptr getelementptr inbounds (<{ i64, [54 x i8] }>, ptr @.d113, i32 0, i32 1) }, 1
  %t21 = extractvalue { i64, ptr } { i64 54, ptr getelementptr inbounds (<{ i64, [54 x i8] }>, ptr @.d113, i32 0, i32 1) }, 0
  %t22 = add i64 %t19, %t21
  %t24 = extractvalue { i64, ptr } %t8, 1
  %t25 = extractvalue { i64, ptr } %t8, 0
  %t26 = add i64 %t22, %t25
  %t27 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d114, i32 0, i32 1) }, 1
  %t28 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d114, i32 0, i32 1) }, 0
  %t29 = add i64 %t26, %t28
  %t31 = extractvalue { i64, ptr } %t9, 1
  %t32 = extractvalue { i64, ptr } %t9, 0
  %t33 = add i64 %t29, %t32
  %t34 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d115, i32 0, i32 1) }, 1
  %t35 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d115, i32 0, i32 1) }, 0
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
  %t60 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t58, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d116, i32 0, i32 1) }, { i64, ptr } %t57)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eElemNotInArrayScope(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 569, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d117, i32 0, i32 1) }, { i64, ptr } { i64 95, ptr getelementptr inbounds (<{ i64, [95 x i8] }>, ptr @.d118, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eEmbedPathUndecided(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 526, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d119, i32 0, i32 1) }, { i64, ptr } { i64 90, ptr getelementptr inbounds (<{ i64, [90 x i8] }>, ptr @.d120, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eEmbedPathUnknown(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 524, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d121, i32 0, i32 1) }, { i64, ptr } { i64 81, ptr getelementptr inbounds (<{ i64, [81 x i8] }>, ptr @.d122, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eEmptyDestructor(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 701, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d123, i32 0, i32 1) }, { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d124, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrVarNotType(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 200, ptr %l2
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
  %t11 = extractvalue { i64, ptr } { i64 85, ptr getelementptr inbounds (<{ i64, [85 x i8] }>, ptr @.d125, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 85, ptr getelementptr inbounds (<{ i64, [85 x i8] }>, ptr @.d125, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t15 = extractvalue { i64, ptr } %a1, 1
  %t16 = extractvalue { i64, ptr } %a1, 0
  %t17 = add i64 %t13, %t16
  %t18 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d126, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d126, i32 0, i32 1) }, 0
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
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t38, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d127, i32 0, i32 1) }, { i64, ptr } %t37)
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
  store i32 811, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d128, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d128, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a1, 1
  %t12 = extractvalue { i64, ptr } %a1, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d129, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d129, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a0, 1
  %t19 = extractvalue { i64, ptr } %a0, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d130, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d130, i32 0, i32 1) }, 0
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
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d131, i32 0, i32 1) }, { i64, ptr } %t41)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrorSetHoldsItself(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 785, ptr %l2
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
  %t11 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d132, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d132, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t15 = extractvalue { i64, ptr } %a1, 1
  %t16 = extractvalue { i64, ptr } %a1, 0
  %t17 = add i64 %t13, %t16
  %t18 = extractvalue { i64, ptr } { i64 49, ptr getelementptr inbounds (<{ i64, [49 x i8] }>, ptr @.d133, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 49, ptr getelementptr inbounds (<{ i64, [49 x i8] }>, ptr @.d133, i32 0, i32 1) }, 0
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
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t38, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d134, i32 0, i32 1) }, { i64, ptr } %t37)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrorWordOfMember(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 786, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d135, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d135, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d136, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d136, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 50, ptr getelementptr inbounds (<{ i64, [50 x i8] }>, ptr @.d137, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 50, ptr getelementptr inbounds (<{ i64, [50 x i8] }>, ptr @.d137, i32 0, i32 1) }, 0
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
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d138, i32 0, i32 1) }, { i64, ptr } %t41)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eExplainNeedsName(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
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
  store i32 32, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
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
  %t8 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d139, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d139, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %t6, 1
  %t12 = extractvalue { i64, ptr } %t6, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 55, ptr getelementptr inbounds (<{ i64, [55 x i8] }>, ptr @.d140, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 55, ptr getelementptr inbounds (<{ i64, [55 x i8] }>, ptr @.d140, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %t7, 1
  %t19 = extractvalue { i64, ptr } %t7, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d141, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d141, i32 0, i32 1) }, 0
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
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t42, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d142, i32 0, i32 1) }, { i64, ptr } %t41)
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
  store i32 33, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d143, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d143, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d144, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d144, i32 0, i32 1) }, 0
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
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t38, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d145, i32 0, i32 1) }, { i64, ptr } %t37)
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
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 204, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d146, i32 0, i32 1) }, { i64, ptr } { i64 101, ptr getelementptr inbounds (<{ i64, [101 x i8] }>, ptr @.d147, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFlagAmongResults(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 815, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d148, i32 0, i32 1) }, { i64, ptr } { i64 133, ptr getelementptr inbounds (<{ i64, [133 x i8] }>, ptr @.d149, i32 0, i32 1) })
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
  %t7 = extractvalue { i64, ptr } { i64 45, ptr getelementptr inbounds (<{ i64, [45 x i8] }>, ptr @.d150, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 45, ptr getelementptr inbounds (<{ i64, [45 x i8] }>, ptr @.d150, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 87, ptr getelementptr inbounds (<{ i64, [87 x i8] }>, ptr @.d151, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 87, ptr getelementptr inbounds (<{ i64, [87 x i8] }>, ptr @.d151, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d152, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eForInClauseExit(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 586, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d153, i32 0, i32 1) }, { i64, ptr } { i64 104, ptr getelementptr inbounds (<{ i64, [104 x i8] }>, ptr @.d154, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eForInNameExists(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 587, ptr %l2
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
  %t11 = extractvalue { i64, ptr } { i64 116, ptr getelementptr inbounds (<{ i64, [116 x i8] }>, ptr @.d155, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 116, ptr getelementptr inbounds (<{ i64, [116 x i8] }>, ptr @.d155, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t15 = extractvalue { i64, ptr } %a1, 1
  %t16 = extractvalue { i64, ptr } %a1, 0
  %t17 = add i64 %t13, %t16
  %t18 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d156, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d156, i32 0, i32 1) }, 0
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
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t38, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d157, i32 0, i32 1) }, { i64, ptr } %t37)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eForeignBuilt(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
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
  store i32 211, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
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
  %t11 = extractvalue { i64, ptr } { i64 94, ptr getelementptr inbounds (<{ i64, [94 x i8] }>, ptr @.d158, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 94, ptr getelementptr inbounds (<{ i64, [94 x i8] }>, ptr @.d158, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t15 = extractvalue { i64, ptr } %t7, 1
  %t16 = extractvalue { i64, ptr } %t7, 0
  %t17 = add i64 %t13, %t16
  %t18 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d159, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d159, i32 0, i32 1) }, 0
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
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t38, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d160, i32 0, i32 1) }, { i64, ptr } %t37)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFuncValueObligations(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 668, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d161, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d161, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 72, ptr getelementptr inbounds (<{ i64, [72 x i8] }>, ptr @.d162, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 72, ptr getelementptr inbounds (<{ i64, [72 x i8] }>, ptr @.d162, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 121, ptr getelementptr inbounds (<{ i64, [121 x i8] }>, ptr @.d163, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 121, ptr getelementptr inbounds (<{ i64, [121 x i8] }>, ptr @.d163, i32 0, i32 1) }, 0
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
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d164, i32 0, i32 1) }, { i64, ptr } %t41)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGenYieldShorter(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 625, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d165, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d165, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 137, ptr getelementptr inbounds (<{ i64, [137 x i8] }>, ptr @.d166, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 137, ptr getelementptr inbounds (<{ i64, [137 x i8] }>, ptr @.d166, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d167, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGenericNeeds(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
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
  store i32 868, ptr %l3
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
  %t12 = extractvalue { i64, ptr } %t6, 1
  %t13 = extractvalue { i64, ptr } %t6, 0
  %t14 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d168, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d168, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d169, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d169, i32 0, i32 1) }, 0
  %t23 = add i64 %t20, %t22
  %t25 = extractvalue { i64, ptr } %t8, 1
  %t26 = extractvalue { i64, ptr } %t8, 0
  %t27 = add i64 %t23, %t26
  %t28 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d170, i32 0, i32 1) }, 1
  %t29 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d170, i32 0, i32 1) }, 0
  %t30 = add i64 %t27, %t29
  %t32 = extractvalue { i64, ptr } %t9, 1
  %t33 = extractvalue { i64, ptr } %t9, 0
  %t34 = add i64 %t30, %t33
  %t35 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d171, i32 0, i32 1) }, 1
  %t36 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d171, i32 0, i32 1) }, 0
  %t37 = add i64 %t34, %t36
  %t39 = extractvalue { i64, ptr } %t10, 1
  %t40 = extractvalue { i64, ptr } %t10, 0
  %t41 = add i64 %t37, %t40
  %t42 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d172, i32 0, i32 1) }, 1
  %t43 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d172, i32 0, i32 1) }, 0
  %t44 = add i64 %t41, %t43
  %t45 = load i64, ptr %l4
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
  %t60 = load i64, ptr %l4
  %t61 = inttoptr i64 %t60 to ptr
  %t62 = extractvalue { i64, ptr } %t58, 0
  %t63 = extractvalue { i64, ptr } %t58, 1
  %t64 = mul i64 %t62, 1
  %t65 = call ptr @__olang_scope_alloc(ptr %t61, i64 %t64)
  call void @llvm.memcpy.p0.p0.i64(ptr %t65, ptr %t63, i64 %t64, i1 false)
  %t66 = insertvalue { i64, ptr } undef, i64 %t62, 0
  %t67 = insertvalue { i64, ptr } %t66, ptr %t65, 1
  %t68 = load i32, ptr %l3, !range !{i32 0, i32 884}
  %t70 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, i32 %t68, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d173, i32 0, i32 1) }, { i64, ptr } %t67)
  store %"compiler/diagmsg:Msg" %t70, ptr %l13
  br label %bb3
bb3:
  %t71 = load %"compiler/diagmsg:Msg", ptr %l13
  store %"compiler/diagmsg:Msg" %t71, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGenericNotStruct(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 233, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d174, i32 0, i32 1) }, { i64, ptr } { i64 55, ptr getelementptr inbounds (<{ i64, [55 x i8] }>, ptr @.d175, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGlobalAborts(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 723, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 73, ptr getelementptr inbounds (<{ i64, [73 x i8] }>, ptr @.d176, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 73, ptr getelementptr inbounds (<{ i64, [73 x i8] }>, ptr @.d176, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d177, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eHexNoDigits(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 71, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d178, i32 0, i32 1) }, { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d179, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImmutMutRef(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
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
  store i32 251, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
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
  %t8 = extractvalue { i64, ptr } { i64 49, ptr getelementptr inbounds (<{ i64, [49 x i8] }>, ptr @.d180, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 49, ptr getelementptr inbounds (<{ i64, [49 x i8] }>, ptr @.d180, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %t6, 1
  %t12 = extractvalue { i64, ptr } %t6, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 64, ptr getelementptr inbounds (<{ i64, [64 x i8] }>, ptr @.d181, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 64, ptr getelementptr inbounds (<{ i64, [64 x i8] }>, ptr @.d181, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %t7, 1
  %t19 = extractvalue { i64, ptr } %t7, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d182, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d182, i32 0, i32 1) }, 0
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
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t42, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d183, i32 0, i32 1) }, { i64, ptr } %t41)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportFetchFailed(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
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
  %t7 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d184, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d184, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 45, ptr getelementptr inbounds (<{ i64, [45 x i8] }>, ptr @.d185, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 45, ptr getelementptr inbounds (<{ i64, [45 x i8] }>, ptr @.d185, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d186, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportHasExtension(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 103, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d187, i32 0, i32 1) }, { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d188, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportUnused(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
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
  %t8 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d189, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d189, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d190, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d190, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d191, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d191, i32 0, i32 1) }, 0
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
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d192, i32 0, i32 1) }, { i64, ptr } %t41)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eIndexNotInt(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 396, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d193, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d193, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d194, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eIsNullOfNull(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 492, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d195, i32 0, i32 1) }, { i64, ptr } { i64 80, ptr getelementptr inbounds (<{ i64, [80 x i8] }>, ptr @.d196, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eIsOnlyNull(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 489, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 53, ptr getelementptr inbounds (<{ i64, [53 x i8] }>, ptr @.d197, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 53, ptr getelementptr inbounds (<{ i64, [53 x i8] }>, ptr @.d197, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d198, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d198, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d199, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eJoinCatchNeedsTry(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 657, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d200, i32 0, i32 1) }, { i64, ptr } { i64 79, ptr getelementptr inbounds (<{ i64, [79 x i8] }>, ptr @.d201, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLambdaValueObligations(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 669, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d202, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d202, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d203, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d203, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 132, ptr getelementptr inbounds (<{ i64, [132 x i8] }>, ptr @.d204, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 132, ptr getelementptr inbounds (<{ i64, [132 x i8] }>, ptr @.d204, i32 0, i32 1) }, 0
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
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d205, i32 0, i32 1) }, { i64, ptr } %t41)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLengthsNotAValue(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 561, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d206, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d206, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 101, ptr getelementptr inbounds (<{ i64, [101 x i8] }>, ptr @.d207, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 101, ptr getelementptr inbounds (<{ i64, [101 x i8] }>, ptr @.d207, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d208, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLinkOnOlangImport(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 217, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d209, i32 0, i32 1) }, { i64, ptr } { i64 86, ptr getelementptr inbounds (<{ i64, [86 x i8] }>, ptr @.d210, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLiteralNotMade(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
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
  store i32 551, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
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
  %t8 = extractvalue { i64, ptr } { i64 45, ptr getelementptr inbounds (<{ i64, [45 x i8] }>, ptr @.d211, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 45, ptr getelementptr inbounds (<{ i64, [45 x i8] }>, ptr @.d211, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %t6, 1
  %t12 = extractvalue { i64, ptr } %t6, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d212, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d212, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %t7, 1
  %t19 = extractvalue { i64, ptr } %t7, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d213, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d213, i32 0, i32 1) }, 0
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
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t42, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d214, i32 0, i32 1) }, { i64, ptr } %t41)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLiteralRange(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 329, ptr %l2
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
  %t11 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d215, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d215, i32 0, i32 1) }, 0
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
  %t36 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t34, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d216, i32 0, i32 1) }, { i64, ptr } %t33)
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
  store i32 312, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
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
  %t10 = extractvalue { i64, ptr } { i64 67, ptr getelementptr inbounds (<{ i64, [67 x i8] }>, ptr @.d217, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 67, ptr getelementptr inbounds (<{ i64, [67 x i8] }>, ptr @.d217, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d218, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMatchValueOne(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 604, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d219, i32 0, i32 1) }, { i64, ptr } { i64 113, ptr getelementptr inbounds (<{ i64, [113 x i8] }>, ptr @.d220, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMatmulUndeclared(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 456, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d221, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d221, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d222, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d222, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d223, i32 0, i32 1) }, { i64, ptr } %t31)
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
  store i32 460, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d224, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d224, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d225, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d225, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d226, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d226, i32 0, i32 1) }, 0
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
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d227, i32 0, i32 1) }, { i64, ptr } %t41)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMethodCannotFail(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
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
  %t10 = extractvalue { i64, ptr } { i64 70, ptr getelementptr inbounds (<{ i64, [70 x i8] }>, ptr @.d228, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 70, ptr getelementptr inbounds (<{ i64, [70 x i8] }>, ptr @.d228, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d229, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMethodIsPrivate(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 559, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d230, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d230, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d231, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d231, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d232, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eModeFirst(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 15, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d233, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d233, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d234, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d234, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d235, i32 0, i32 1) }, { i64, ptr } %t31)
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
  store i32 226, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 95, ptr getelementptr inbounds (<{ i64, [95 x i8] }>, ptr @.d236, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 95, ptr getelementptr inbounds (<{ i64, [95 x i8] }>, ptr @.d236, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d237, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d237, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d238, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNamedArgNotHere(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 385, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d239, i32 0, i32 1) }, { i64, ptr } { i64 100, ptr getelementptr inbounds (<{ i64, [100 x i8] }>, ptr @.d240, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNamedArgTwice(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 381, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d241, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d241, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d242, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d242, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d243, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNeedlessGroup(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 86, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d244, i32 0, i32 1) }, { i64, ptr } { i64 113, ptr getelementptr inbounds (<{ i64, [113 x i8] }>, ptr @.d245, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoRawValues(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 776, ptr %l2
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
  %t11 = extractvalue { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d246, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d246, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t15 = extractvalue { i64, ptr } %a1, 1
  %t16 = extractvalue { i64, ptr } %a1, 0
  %t17 = add i64 %t13, %t16
  %t18 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d247, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d247, i32 0, i32 1) }, 0
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
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t38, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d248, i32 0, i32 1) }, { i64, ptr } %t37)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoSuchMember(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca i64
  %l11 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 400, ptr %l3
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
  %t12 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d249, i32 0, i32 1) }, 1
  %t13 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d249, i32 0, i32 1) }, 0
  %t14 = add i64 %t11, %t13
  %t16 = extractvalue { i64, ptr } %a1, 1
  %t17 = extractvalue { i64, ptr } %a1, 0
  %t18 = add i64 %t14, %t17
  %t19 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d250, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d250, i32 0, i32 1) }, 0
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
  %t46 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, i32 %t44, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d251, i32 0, i32 1) }, { i64, ptr } %t43)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoreturnFallsOff(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 630, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d252, i32 0, i32 1) }, { i64, ptr } { i64 109, ptr getelementptr inbounds (<{ i64, [109 x i8] }>, ptr @.d253, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotAMode(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 1, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d254, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d254, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 178, ptr getelementptr inbounds (<{ i64, [178 x i8] }>, ptr @.d255, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 178, ptr getelementptr inbounds (<{ i64, [178 x i8] }>, ptr @.d255, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d256, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotAnEnum(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 555, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
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
  %t10 = extractvalue { i64, ptr } { i64 50, ptr getelementptr inbounds (<{ i64, [50 x i8] }>, ptr @.d257, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 50, ptr getelementptr inbounds (<{ i64, [50 x i8] }>, ptr @.d257, i32 0, i32 1) }, 0
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotAnErrorType(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 784, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
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
  %t10 = extractvalue { i64, ptr } { i64 78, ptr getelementptr inbounds (<{ i64, [78 x i8] }>, ptr @.d259, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 78, ptr getelementptr inbounds (<{ i64, [78 x i8] }>, ptr @.d259, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d260, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotAssignable(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 402, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d261, i32 0, i32 1) }, { i64, ptr } { i64 63, ptr getelementptr inbounds (<{ i64, [63 x i8] }>, ptr @.d262, i32 0, i32 1) })
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
  store i32 464, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
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
  %t10 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d263, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d263, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d264, i32 0, i32 1) }, { i64, ptr } %t27)
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
  store i32 322, ptr %l3
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
  %t12 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d265, i32 0, i32 1) }, 1
  %t13 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d265, i32 0, i32 1) }, 0
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
  %t42 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, i32 %t40, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d266, i32 0, i32 1) }, { i64, ptr } %t39)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteAssignedHere(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 738, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d267, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d267, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d268, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d268, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d269, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteBindingWhere(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 736, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d270, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d270, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 109, ptr getelementptr inbounds (<{ i64, [109 x i8] }>, ptr @.d271, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 109, ptr getelementptr inbounds (<{ i64, [109 x i8] }>, ptr @.d271, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d272, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d272, i32 0, i32 1) }, 0
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
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d273, i32 0, i32 1) }, { i64, ptr } %t41)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteGenericNeeds(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 869, ptr %l2
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
  %t11 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d274, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d274, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t15 = extractvalue { i64, ptr } %a1, 1
  %t16 = extractvalue { i64, ptr } %a1, 0
  %t17 = add i64 %t13, %t16
  %t18 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d275, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d275, i32 0, i32 1) }, 0
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
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t38, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d276, i32 0, i32 1) }, { i64, ptr } %t37)
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
  store i32 436, ptr %l4
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
  %t10 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d277, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d277, i32 0, i32 1) }, 0
  %t13 = extractvalue { i64, ptr } %a0, 1
  %t14 = extractvalue { i64, ptr } %a0, 0
  %t15 = add i64 %t11, %t14
  %t16 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d278, i32 0, i32 1) }, 1
  %t17 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d278, i32 0, i32 1) }, 0
  %t18 = add i64 %t15, %t17
  %t20 = extractvalue { i64, ptr } %a1, 1
  %t21 = extractvalue { i64, ptr } %a1, 0
  %t22 = add i64 %t18, %t21
  %t23 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d279, i32 0, i32 1) }, 1
  %t24 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d279, i32 0, i32 1) }, 0
  %t25 = add i64 %t22, %t24
  %t27 = extractvalue { i64, ptr } %a2, 1
  %t28 = extractvalue { i64, ptr } %a2, 0
  %t29 = add i64 %t25, %t28
  %t30 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d280, i32 0, i32 1) }, 1
  %t31 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d280, i32 0, i32 1) }, 0
  %t32 = add i64 %t29, %t31
  %t34 = extractvalue { i64, ptr } %a3, 1
  %t35 = extractvalue { i64, ptr } %a3, 0
  %t36 = add i64 %t32, %t35
  %t37 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d281, i32 0, i32 1) }, 1
  %t38 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d281, i32 0, i32 1) }, 0
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
  %t64 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v4, ptr %v4, ptr %v4, i32 %t62, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d282, i32 0, i32 1) }, { i64, ptr } %t61)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteLoopCopyLent(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 739, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d283, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d283, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 185, ptr getelementptr inbounds (<{ i64, [185 x i8] }>, ptr @.d284, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 185, ptr getelementptr inbounds (<{ i64, [185 x i8] }>, ptr @.d284, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d285, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteNullableDecl(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 501, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d286, i32 0, i32 1) }, { i64, ptr } { i64 66, ptr getelementptr inbounds (<{ i64, [66 x i8] }>, ptr @.d287, i32 0, i32 1) })
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
  store i32 737, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d288, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d288, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 102, ptr getelementptr inbounds (<{ i64, [102 x i8] }>, ptr @.d289, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 102, ptr getelementptr inbounds (<{ i64, [102 x i8] }>, ptr @.d289, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d288, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d288, i32 0, i32 1) }, 0
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
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d290, i32 0, i32 1) }, { i64, ptr } %t41)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteReadOnlyCopy(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 346, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d291, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d291, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 54, ptr getelementptr inbounds (<{ i64, [54 x i8] }>, ptr @.d292, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 54, ptr getelementptr inbounds (<{ i64, [54 x i8] }>, ptr @.d292, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d293, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteReadUnassigned(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 428, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d294, i32 0, i32 1) }, { i64, ptr } { i64 87, ptr getelementptr inbounds (<{ i64, [87 x i8] }>, ptr @.d295, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteRefillKept(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 734, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d296, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d296, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 53, ptr getelementptr inbounds (<{ i64, [53 x i8] }>, ptr @.d297, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 53, ptr getelementptr inbounds (<{ i64, [53 x i8] }>, ptr @.d297, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 77, ptr getelementptr inbounds (<{ i64, [77 x i8] }>, ptr @.d298, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 77, ptr getelementptr inbounds (<{ i64, [77 x i8] }>, ptr @.d298, i32 0, i32 1) }, 0
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
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d299, i32 0, i32 1) }, { i64, ptr } %t41)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteSliceOfTemporary(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 743, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d300, i32 0, i32 1) }, { i64, ptr } { i64 119, ptr getelementptr inbounds (<{ i64, [119 x i8] }>, ptr @.d301, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteTextCopyWhere(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
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
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 81, ptr getelementptr inbounds (<{ i64, [81 x i8] }>, ptr @.d302, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 81, ptr getelementptr inbounds (<{ i64, [81 x i8] }>, ptr @.d302, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d303, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d303, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d304, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteUnassignedBranch(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 424, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d305, i32 0, i32 1) }, { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d306, i32 0, i32 1) })
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
  store i32 414, ptr %l3
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
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d307, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d307, i32 0, i32 1) }, 0
  %t12 = extractvalue { i64, ptr } %a0, 1
  %t13 = extractvalue { i64, ptr } %a0, 0
  %t14 = add i64 %t10, %t13
  %t15 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d308, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d308, i32 0, i32 1) }, 0
  %t17 = add i64 %t14, %t16
  %t19 = extractvalue { i64, ptr } %a1, 1
  %t20 = extractvalue { i64, ptr } %a1, 0
  %t21 = add i64 %t17, %t20
  %t22 = extractvalue { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d309, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d309, i32 0, i32 1) }, 0
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
  %t50 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, i32 %t48, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d310, i32 0, i32 1) }, { i64, ptr } %t47)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteVecGrowsInside(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 415, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
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
  %t10 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d311, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d311, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d312, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNulByte(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 62, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d313, i32 0, i32 1) }, { i64, ptr } { i64 45, ptr getelementptr inbounds (<{ i64, [45 x i8] }>, ptr @.d314, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNullableMeetsNoTrait(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3) #0 {
entry:
  %l4 = alloca i32
  %l5 = alloca i64
  %l13 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 370, ptr %l4
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
  %t13 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d315, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d315, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t17 = extractvalue { i64, ptr } %a2, 1
  %t18 = extractvalue { i64, ptr } %a2, 0
  %t19 = add i64 %t15, %t18
  %t20 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d316, i32 0, i32 1) }, 1
  %t21 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d316, i32 0, i32 1) }, 0
  %t22 = add i64 %t19, %t21
  %t24 = extractvalue { i64, ptr } %a1, 1
  %t25 = extractvalue { i64, ptr } %a1, 0
  %t26 = add i64 %t22, %t25
  %t27 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d317, i32 0, i32 1) }, 1
  %t28 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d317, i32 0, i32 1) }, 0
  %t29 = add i64 %t26, %t28
  %t31 = extractvalue { i64, ptr } %a3, 1
  %t32 = extractvalue { i64, ptr } %a3, 0
  %t33 = add i64 %t29, %t32
  %t34 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d318, i32 0, i32 1) }, 1
  %t35 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d318, i32 0, i32 1) }, 0
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
  %t60 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v4, ptr %v4, ptr %v4, i32 %t58, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d319, i32 0, i32 1) }, { i64, ptr } %t57)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNumberDoesNotFlow(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
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
  %t12 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d320, i32 0, i32 1) }, 1
  %t13 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d320, i32 0, i32 1) }, 0
  %t14 = add i64 %t11, %t13
  %t16 = extractvalue { i64, ptr } %a1, 1
  %t17 = extractvalue { i64, ptr } %a1, 0
  %t18 = add i64 %t14, %t17
  %t19 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d321, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d321, i32 0, i32 1) }, 0
  %t21 = add i64 %t18, %t20
  %t23 = extractvalue { i64, ptr } %a2, 1
  %t24 = extractvalue { i64, ptr } %a2, 0
  %t25 = add i64 %t21, %t24
  %t26 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d322, i32 0, i32 1) }, 1
  %t27 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d322, i32 0, i32 1) }, 0
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
  %t50 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, i32 %t48, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d323, i32 0, i32 1) }, { i64, ptr } %t47)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eOutputCannotWrite(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 19, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d324, i32 0, i32 1) }, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d325, i32 0, i32 1) })
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
  %l11 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i32 615, ptr %l2
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
  %t10 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d326, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d326, i32 0, i32 1) }, 0
  %t13 = extractvalue { i64, ptr } %t6, 1
  %t14 = extractvalue { i64, ptr } %t6, 0
  %t15 = add i64 %t11, %t14
  %t16 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d327, i32 0, i32 1) }, 1
  %t17 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d327, i32 0, i32 1) }, 0
  %t18 = add i64 %t15, %t17
  %t20 = extractvalue { i64, ptr } %t7, 1
  %t21 = extractvalue { i64, ptr } %t7, 0
  %t22 = add i64 %t18, %t21
  %t23 = extractvalue { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d328, i32 0, i32 1) }, 1
  %t24 = extractvalue { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d328, i32 0, i32 1) }, 0
  %t25 = add i64 %t22, %t24
  %t27 = extractvalue { i64, ptr } %t8, 1
  %t28 = extractvalue { i64, ptr } %t8, 0
  %t29 = add i64 %t25, %t28
  %t30 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d329, i32 0, i32 1) }, 1
  %t31 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d329, i32 0, i32 1) }, 0
  %t32 = add i64 %t29, %t31
  %t34 = extractvalue { i64, ptr } %t9, 1
  %t35 = extractvalue { i64, ptr } %t9, 0
  %t36 = add i64 %t32, %t35
  %t37 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d330, i32 0, i32 1) }, 1
  %t38 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d330, i32 0, i32 1) }, 0
  %t39 = add i64 %t36, %t38
  %t40 = load i64, ptr %l3
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
  %t54 = load i64, ptr %l3
  %t55 = inttoptr i64 %t54 to ptr
  %t56 = extractvalue { i64, ptr } %t52, 0
  %t57 = extractvalue { i64, ptr } %t52, 1
  %t58 = mul i64 %t56, 1
  %t59 = call ptr @__olang_scope_alloc(ptr %t55, i64 %t58)
  call void @llvm.memcpy.p0.p0.i64(ptr %t59, ptr %t57, i64 %t58, i1 false)
  %t60 = insertvalue { i64, ptr } undef, i64 %t56, 0
  %t61 = insertvalue { i64, ptr } %t60, ptr %t59, 1
  %t62 = load i32, ptr %l2, !range !{i32 0, i32 884}
  %t64 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t62, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d331, i32 0, i32 1) }, { i64, ptr } %t61)
  store %"compiler/diagmsg:Msg" %t64, ptr %l11
  br label %bb3
bb3:
  %t65 = load %"compiler/diagmsg:Msg", ptr %l11
  store %"compiler/diagmsg:Msg" %t65, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePayloadHoldsRef(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca i64
  %l11 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 804, ptr %l3
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
  %t9 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d332, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d332, i32 0, i32 1) }, 0
  %t12 = extractvalue { i64, ptr } %a0, 1
  %t13 = extractvalue { i64, ptr } %a0, 0
  %t14 = add i64 %t10, %t13
  %t15 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d333, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d333, i32 0, i32 1) }, 0
  %t17 = add i64 %t14, %t16
  %t19 = extractvalue { i64, ptr } %a1, 1
  %t20 = extractvalue { i64, ptr } %a1, 0
  %t21 = add i64 %t17, %t20
  %t22 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d334, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d334, i32 0, i32 1) }, 0
  %t24 = add i64 %t21, %t23
  %t26 = extractvalue { i64, ptr } %a2, 1
  %t27 = extractvalue { i64, ptr } %a2, 0
  %t28 = add i64 %t24, %t27
  %t29 = extractvalue { i64, ptr } { i64 76, ptr getelementptr inbounds (<{ i64, [76 x i8] }>, ptr @.d335, i32 0, i32 1) }, 1
  %t30 = extractvalue { i64, ptr } { i64 76, ptr getelementptr inbounds (<{ i64, [76 x i8] }>, ptr @.d335, i32 0, i32 1) }, 0
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
  %t54 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, i32 %t52, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d336, i32 0, i32 1) }, { i64, ptr } %t51)
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
  store i32 481, ptr %l3
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
  %t9 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d337, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d337, i32 0, i32 1) }, 0
  %t12 = extractvalue { i64, ptr } %a0, 1
  %t13 = extractvalue { i64, ptr } %a0, 0
  %t14 = add i64 %t10, %t13
  %t15 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d338, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d338, i32 0, i32 1) }, 0
  %t17 = add i64 %t14, %t16
  %t19 = extractvalue { i64, ptr } %a1, 1
  %t20 = extractvalue { i64, ptr } %a1, 0
  %t21 = add i64 %t17, %t20
  %t22 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d339, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d339, i32 0, i32 1) }, 0
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
  %t50 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, i32 %t48, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d340, i32 0, i32 1) }, { i64, ptr } %t47)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePayloadOutlived(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 571, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d341, i32 0, i32 1) }, { i64, ptr } { i64 106, ptr getelementptr inbounds (<{ i64, [106 x i8] }>, ptr @.d342, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePowNone(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
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
  %t8 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d343, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d343, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d344, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d344, i32 0, i32 1) }, 0
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
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t38, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d345, i32 0, i32 1) }, { i64, ptr } %t37)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePromiseKeepsValue(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 685, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d346, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d346, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 121, ptr getelementptr inbounds (<{ i64, [121 x i8] }>, ptr @.d347, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 121, ptr getelementptr inbounds (<{ i64, [121 x i8] }>, ptr @.d347, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d348, i32 0, i32 1) }, { i64, ptr } %t31)
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
  store i32 678, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d349, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d349, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 140, ptr getelementptr inbounds (<{ i64, [140 x i8] }>, ptr @.d350, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 140, ptr getelementptr inbounds (<{ i64, [140 x i8] }>, ptr @.d350, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d351, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eRaiseNeedsQuestion(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
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
  store i32 817, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
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
  %t8 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d352, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d352, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %t6, 1
  %t12 = extractvalue { i64, ptr } %t6, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 111, ptr getelementptr inbounds (<{ i64, [111 x i8] }>, ptr @.d353, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 111, ptr getelementptr inbounds (<{ i64, [111 x i8] }>, ptr @.d353, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %t7, 1
  %t19 = extractvalue { i64, ptr } %t7, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d354, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d354, i32 0, i32 1) }, 0
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
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t42, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d355, i32 0, i32 1) }, { i64, ptr } %t41)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eRaisedFieldsDiffer(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 810, ptr %l2
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
  %t11 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d356, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d356, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t15 = extractvalue { i64, ptr } %a1, 1
  %t16 = extractvalue { i64, ptr } %a1, 0
  %t17 = add i64 %t13, %t16
  %t18 = extractvalue { i64, ptr } { i64 69, ptr getelementptr inbounds (<{ i64, [69 x i8] }>, ptr @.d357, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 69, ptr getelementptr inbounds (<{ i64, [69 x i8] }>, ptr @.d357, i32 0, i32 1) }, 0
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
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t38, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d358, i32 0, i32 1) }, { i64, ptr } %t37)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eRawNoFit(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 772, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d359, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d359, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d360, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d360, i32 0, i32 1) }, 0
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
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t38, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d361, i32 0, i32 1) }, { i64, ptr } %t37)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadAfterScope(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 613, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d362, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d362, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 131, ptr getelementptr inbounds (<{ i64, [131 x i8] }>, ptr @.d363, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 131, ptr getelementptr inbounds (<{ i64, [131 x i8] }>, ptr @.d363, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d364, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadOnlyCopyReturned(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 339, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d365, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d365, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 70, ptr getelementptr inbounds (<{ i64, [70 x i8] }>, ptr @.d366, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 70, ptr getelementptr inbounds (<{ i64, [70 x i8] }>, ptr @.d366, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d367, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d367, i32 0, i32 1) }, 0
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
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d368, i32 0, i32 1) }, { i64, ptr } %t41)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReturnInNoreturn(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 629, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d369, i32 0, i32 1) }, { i64, ptr } { i64 89, ptr getelementptr inbounds (<{ i64, [89 x i8] }>, ptr @.d370, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReturnValueInVoid(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 634, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d371, i32 0, i32 1) }, { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d372, i32 0, i32 1) })
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
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 359, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d373, i32 0, i32 1) }, { i64, ptr } { i64 108, ptr getelementptr inbounds (<{ i64, [108 x i8] }>, ptr @.d374, i32 0, i32 1) })
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
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 59, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d375, i32 0, i32 1) }, { i64, ptr } { i64 94, ptr getelementptr inbounds (<{ i64, [94 x i8] }>, ptr @.d376, i32 0, i32 1) })
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
  %t8 = extractvalue { i64, ptr } %a0, 1
  %t9 = extractvalue { i64, ptr } %a0, 0
  %t10 = extractvalue { i64, ptr } { i64 48, ptr getelementptr inbounds (<{ i64, [48 x i8] }>, ptr @.d377, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 48, ptr getelementptr inbounds (<{ i64, [48 x i8] }>, ptr @.d377, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d378, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eShadowsFunction(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 316, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
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
  %t10 = extractvalue { i64, ptr } { i64 83, ptr getelementptr inbounds (<{ i64, [83 x i8] }>, ptr @.d379, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 83, ptr getelementptr inbounds (<{ i64, [83 x i8] }>, ptr @.d379, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d380, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eShadowsType(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 319, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
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
  %t10 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d381, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d381, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d382, i32 0, i32 1) }, { i64, ptr } %t27)
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
  store i32 399, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d383, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d383, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d384, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpawnAtElement(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 646, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d385, i32 0, i32 1) }, { i64, ptr } { i64 173, ptr getelementptr inbounds (<{ i64, [173 x i8] }>, ptr @.d386, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpawnCaptureTooShort(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 661, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d387, i32 0, i32 1) }, { i64, ptr } { i64 93, ptr getelementptr inbounds (<{ i64, [93 x i8] }>, ptr @.d388, i32 0, i32 1) })
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
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 644, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d389, i32 0, i32 1) }, { i64, ptr } { i64 66, ptr getelementptr inbounds (<{ i64, [66 x i8] }>, ptr @.d390, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpreadNotHere(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 486, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d391, i32 0, i32 1) }, { i64, ptr } { i64 115, ptr getelementptr inbounds (<{ i64, [115 x i8] }>, ptr @.d392, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eStepNotNumber(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 521, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 83, ptr getelementptr inbounds (<{ i64, [83 x i8] }>, ptr @.d393, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 83, ptr getelementptr inbounds (<{ i64, [83 x i8] }>, ptr @.d393, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d394, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eStrStoresInReceiver(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 409, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d395, i32 0, i32 1) }, { i64, ptr } { i64 221, ptr getelementptr inbounds (<{ i64, [221 x i8] }>, ptr @.d396, i32 0, i32 1) })
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
  store i32 26, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d397, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d397, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 102, ptr getelementptr inbounds (<{ i64, [102 x i8] }>, ptr @.d398, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 102, ptr getelementptr inbounds (<{ i64, [102 x i8] }>, ptr @.d398, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d399, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTargetNoEmulator(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
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
  store i32 30, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
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
  %t8 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d400, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d400, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %t6, 1
  %t12 = extractvalue { i64, ptr } %t6, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d401, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d401, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %t7, 1
  %t19 = extractvalue { i64, ptr } %t7, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d402, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d402, i32 0, i32 1) }, 0
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
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t42, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d403, i32 0, i32 1) }, { i64, ptr } %t41)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTaskDefaultInStatement(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 654, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d404, i32 0, i32 1) }, { i64, ptr } { i64 70, ptr getelementptr inbounds (<{ i64, [70 x i8] }>, ptr @.d405, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTestTargetUnknown(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 386, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 65, ptr getelementptr inbounds (<{ i64, [65 x i8] }>, ptr @.d406, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 65, ptr getelementptr inbounds (<{ i64, [65 x i8] }>, ptr @.d406, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d407, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d407, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d408, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/text:StringBuilder"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l6 = alloca %"std/prelude/text:StringBuilder"
  %l15 = alloca { i64, ptr }
  %l18 = alloca ptr
  %l20 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
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
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 39)
  br label %bb2
bb2:
  store { i64, ptr } %a0, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t6 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t6, 0
  store i64 %t8, ptr %l4, !tbaa !24
  br label %bb3
bb3:
  store %olang.scope zeroinitializer, ptr %s2
  %t10 = load i64, ptr %l3, !tbaa !24
  %t11 = load i64, ptr %l4, !tbaa !24
  %t14 = icmp slt i64 %t10, %t11
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s2)
  br label %bb10
bb5:
  br label %bb6
bb6:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %l15, !tbaa !27
  %t19 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr i8, ptr %t22, i64 %t19
  %t24 = load i8, ptr %t23, !tbaa !32
  store ptr %l1, ptr %l18, !tbaa !29
  %t28 = call { i64, ptr } @compiler_2fmsgs_2eEsc(ptr %s2, i8 %t24)
  store { i64, ptr } %t28, ptr %l20
  br label %bb7
bb7:
  %t29 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t29, 0
  %t31 = extractvalue { i64, ptr } %t29, 1
  %t32 = mul i64 %t30, 1
  %t33 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t32)
  call void @llvm.memcpy.p0.p0.i64(ptr %t33, ptr %t31, i64 %t32, i1 false)
  %t34 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t35 = insertvalue { i64, ptr } %t34, ptr %t33, 1
  %t36 = load ptr, ptr %l18, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %t36, { i64, ptr } %t35)
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s2)
  br label %bb9
bb9:
  %t38 = load i64, ptr %l3, !tbaa !24
  %t40 = add i64 %t38, 1
  store i64 %t40, ptr %l3, !tbaa !24
  br label %bb3
bb10:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 39)
  br label %bb11
bb11:
  %t44 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l1)
  store { i64, ptr } %t44, ptr %l26
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s0)
  %t45 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t45, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
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
  store i32 194, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d409, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d409, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d410, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d410, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d411, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTryParens(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 155, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d412, i32 0, i32 1) }, { i64, ptr } { i64 104, ptr getelementptr inbounds (<{ i64, [104 x i8] }>, ptr @.d413, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeArgsSpaced(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
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
  %t7 = extractvalue { i64, ptr } { i64 59, ptr getelementptr inbounds (<{ i64, [59 x i8] }>, ptr @.d414, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 59, ptr getelementptr inbounds (<{ i64, [59 x i8] }>, ptr @.d414, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d415, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d415, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d416, i32 0, i32 1) }, { i64, ptr } %t31)
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
  store i32 230, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
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
  %t10 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d417, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d417, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d418, i32 0, i32 1) }, { i64, ptr } %t27)
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
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 598, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d419, i32 0, i32 1) }, { i64, ptr } { i64 100, ptr getelementptr inbounds (<{ i64, [100 x i8] }>, ptr @.d420, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeMatchUncovered(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 599, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d421, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d421, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 64, ptr getelementptr inbounds (<{ i64, [64 x i8] }>, ptr @.d422, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 64, ptr getelementptr inbounds (<{ i64, [64 x i8] }>, ptr @.d422, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d423, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeNotInferable(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 348, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d424, i32 0, i32 1) }, { i64, ptr } { i64 79, ptr getelementptr inbounds (<{ i64, [79 x i8] }>, ptr @.d425, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnclosedChar(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 66, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d426, i32 0, i32 1) }, { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d427, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnderscoreDeclared(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 311, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d428, i32 0, i32 1) }, { i64, ptr } { i64 64, ptr getelementptr inbounds (<{ i64, [64 x i8] }>, ptr @.d429, i32 0, i32 1) })
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
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 466, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d430, i32 0, i32 1) }, { i64, ptr } { i64 65, ptr getelementptr inbounds (<{ i64, [65 x i8] }>, ptr @.d431, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUniqueKind(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 271, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d432, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d432, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d433, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d433, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d434, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUniqueNeedsCopy(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
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
  store i32 272, ptr %l2
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
  %t13 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d435, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d435, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t17 = extractvalue { i64, ptr } %t7, 1
  %t18 = extractvalue { i64, ptr } %t7, 0
  %t19 = add i64 %t15, %t18
  %t20 = extractvalue { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d436, i32 0, i32 1) }, 1
  %t21 = extractvalue { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d436, i32 0, i32 1) }, 0
  %t22 = add i64 %t19, %t21
  %t24 = extractvalue { i64, ptr } %t8, 1
  %t25 = extractvalue { i64, ptr } %t8, 0
  %t26 = add i64 %t22, %t25
  %t27 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d437, i32 0, i32 1) }, 1
  %t28 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d437, i32 0, i32 1) }, 0
  %t29 = add i64 %t26, %t28
  %t31 = extractvalue { i64, ptr } %t9, 1
  %t32 = extractvalue { i64, ptr } %t9, 0
  %t33 = add i64 %t29, %t32
  %t34 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d438, i32 0, i32 1) }, 1
  %t35 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d438, i32 0, i32 1) }, 0
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
  %t60 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t58, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d439, i32 0, i32 1) }, { i64, ptr } %t57)
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
  %t8 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d440, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d440, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d441, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d441, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d442, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d442, i32 0, i32 1) }, 0
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
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d443, i32 0, i32 1) }, { i64, ptr } %t41)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eVarArgWide(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
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
  %t10 = extractvalue { i64, ptr } { i64 98, ptr getelementptr inbounds (<{ i64, [98 x i8] }>, ptr @.d444, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 98, ptr getelementptr inbounds (<{ i64, [98 x i8] }>, ptr @.d444, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d445, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eVariadicDefault(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 485, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d446, i32 0, i32 1) }, { i64, ptr } { i64 93, ptr getelementptr inbounds (<{ i64, [93 x i8] }>, ptr @.d447, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eVariadicNotLast(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 483, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d448, i32 0, i32 1) }, { i64, ptr } { i64 140, ptr getelementptr inbounds (<{ i64, [140 x i8] }>, ptr @.d449, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eVecViewGivenGrowing(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3) #0 {
entry:
  %l4 = alloca i32
  %l5 = alloca i64
  %l13 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 726, ptr %l4
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
  %t10 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d450, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d450, i32 0, i32 1) }, 0
  %t13 = extractvalue { i64, ptr } %a0, 1
  %t14 = extractvalue { i64, ptr } %a0, 0
  %t15 = add i64 %t11, %t14
  %t16 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d451, i32 0, i32 1) }, 1
  %t17 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d451, i32 0, i32 1) }, 0
  %t18 = add i64 %t15, %t17
  %t20 = extractvalue { i64, ptr } %a1, 1
  %t21 = extractvalue { i64, ptr } %a1, 0
  %t22 = add i64 %t18, %t21
  %t23 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d452, i32 0, i32 1) }, 1
  %t24 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d452, i32 0, i32 1) }, 0
  %t25 = add i64 %t22, %t24
  %t27 = extractvalue { i64, ptr } %a2, 1
  %t28 = extractvalue { i64, ptr } %a2, 0
  %t29 = add i64 %t25, %t28
  %t30 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d453, i32 0, i32 1) }, 1
  %t31 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d453, i32 0, i32 1) }, 0
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
  %t60 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v4, ptr %v4, ptr %v4, i32 %t58, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d454, i32 0, i32 1) }, { i64, ptr } %t57)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eVecViewStale(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca i64
  %l11 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 724, ptr %l3
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
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d455, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d455, i32 0, i32 1) }, 0
  %t12 = extractvalue { i64, ptr } %a0, 1
  %t13 = extractvalue { i64, ptr } %a0, 0
  %t14 = add i64 %t10, %t13
  %t15 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d456, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d456, i32 0, i32 1) }, 0
  %t17 = add i64 %t14, %t16
  %t19 = extractvalue { i64, ptr } %a1, 1
  %t20 = extractvalue { i64, ptr } %a1, 0
  %t21 = add i64 %t17, %t20
  %t22 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d457, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d457, i32 0, i32 1) }, 0
  %t24 = add i64 %t21, %t23
  %t26 = extractvalue { i64, ptr } %a2, 1
  %t27 = extractvalue { i64, ptr } %a2, 0
  %t28 = add i64 %t24, %t27
  %t29 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d458, i32 0, i32 1) }, 1
  %t30 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d458, i32 0, i32 1) }, 0
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
  %t54 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, i32 %t52, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d459, i32 0, i32 1) }, { i64, ptr } %t51)
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
  %t7 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d460, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d460, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 123, ptr getelementptr inbounds (<{ i64, [123 x i8] }>, ptr @.d461, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 123, ptr getelementptr inbounds (<{ i64, [123 x i8] }>, ptr @.d461, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d462, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eWeakNotNullable(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
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
  store i32 274, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t8 = call { i64, ptr } @compiler_2fmsgs_2eweakFix(ptr %v0, ptr %s0, { i64, ptr } %a0)
  store { i64, ptr } %t8, ptr %l5
  br label %bb3
bb3:
  %t9 = extractvalue { i64, ptr } { i64 136, ptr getelementptr inbounds (<{ i64, [136 x i8] }>, ptr @.d463, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 136, ptr getelementptr inbounds (<{ i64, [136 x i8] }>, ptr @.d463, i32 0, i32 1) }, 0
  %t11 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t11, 1
  %t13 = extractvalue { i64, ptr } %t11, 0
  %t14 = add i64 %t10, %t13
  %t15 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d464, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d464, i32 0, i32 1) }, 0
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
  %t36 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t34, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d465, i32 0, i32 1) }, { i64, ptr } %t33)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eWeakPlace(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 275, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 197, ptr getelementptr inbounds (<{ i64, [197 x i8] }>, ptr @.d466, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 197, ptr getelementptr inbounds (<{ i64, [197 x i8] }>, ptr @.d466, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d467, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d467, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d468, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eWholeCaseNamed(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
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
  store i32 482, ptr %l2
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
  %t10 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d469, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d469, i32 0, i32 1) }, 0
  %t13 = extractvalue { i64, ptr } %t6, 1
  %t14 = extractvalue { i64, ptr } %t6, 0
  %t15 = add i64 %t11, %t14
  %t16 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d470, i32 0, i32 1) }, 1
  %t17 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d470, i32 0, i32 1) }, 0
  %t18 = add i64 %t15, %t17
  %t20 = extractvalue { i64, ptr } %t7, 1
  %t21 = extractvalue { i64, ptr } %t7, 0
  %t22 = add i64 %t18, %t21
  %t23 = extractvalue { i64, ptr } { i64 67, ptr getelementptr inbounds (<{ i64, [67 x i8] }>, ptr @.d471, i32 0, i32 1) }, 1
  %t24 = extractvalue { i64, ptr } { i64 67, ptr getelementptr inbounds (<{ i64, [67 x i8] }>, ptr @.d471, i32 0, i32 1) }, 0
  %t25 = add i64 %t22, %t24
  %t27 = extractvalue { i64, ptr } %t8, 1
  %t28 = extractvalue { i64, ptr } %t8, 0
  %t29 = add i64 %t25, %t28
  %t30 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d472, i32 0, i32 1) }, 1
  %t31 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d472, i32 0, i32 1) }, 0
  %t32 = add i64 %t29, %t31
  %t34 = extractvalue { i64, ptr } %t9, 1
  %t35 = extractvalue { i64, ptr } %t9, 0
  %t36 = add i64 %t32, %t35
  %t37 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d473, i32 0, i32 1) }, 1
  %t38 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d473, i32 0, i32 1) }, 0
  %t39 = add i64 %t36, %t38
  %t40 = load i64, ptr %l3
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
  %t54 = load i64, ptr %l3
  %t55 = inttoptr i64 %t54 to ptr
  %t56 = extractvalue { i64, ptr } %t52, 0
  %t57 = extractvalue { i64, ptr } %t52, 1
  %t58 = mul i64 %t56, 1
  %t59 = call ptr @__olang_scope_alloc(ptr %t55, i64 %t58)
  call void @llvm.memcpy.p0.p0.i64(ptr %t59, ptr %t57, i64 %t58, i1 false)
  %t60 = insertvalue { i64, ptr } undef, i64 %t56, 0
  %t61 = insertvalue { i64, ptr } %t60, ptr %t59, 1
  %t62 = load i32, ptr %l2, !range !{i32 0, i32 884}
  %t64 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t62, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d474, i32 0, i32 1) }, { i64, ptr } %t61)
  store %"compiler/diagmsg:Msg" %t64, ptr %l11
  br label %bb3
bb3:
  %t65 = load %"compiler/diagmsg:Msg", ptr %l11
  store %"compiler/diagmsg:Msg" %t65, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eWriteThroughAtCall(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 518, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d475, i32 0, i32 1) }, { i64, ptr } { i64 287, ptr getelementptr inbounds (<{ i64, [287 x i8] }>, ptr @.d476, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eYieldInDefer(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 619, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d477, i32 0, i32 1) }, { i64, ptr } { i64 61, ptr getelementptr inbounds (<{ i64, [61 x i8] }>, ptr @.d478, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eYieldInLambda(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 618, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d479, i32 0, i32 1) }, { i64, ptr } { i64 67, ptr getelementptr inbounds (<{ i64, [67 x i8] }>, ptr @.d480, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eYieldOutside(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 617, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d481, i32 0, i32 1) }, { i64, ptr } { i64 75, ptr getelementptr inbounds (<{ i64, [75 x i8] }>, ptr @.d482, i32 0, i32 1) })
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

define dso_local { i64, ptr } @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eHint(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/msgs:Nearest", ptr %t1, i32 0, i32 1
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t8 = icmp sgt i64 %t6, 0
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/msgs:Nearest", ptr %t10, i32 0, i32 1
  %t13 = load { i64, ptr }, ptr %t12, !tbaa !27
  %t14 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d483, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d483, i32 0, i32 1) }, 0
  %t17 = extractvalue { i64, ptr } %t13, 1
  %t18 = extractvalue { i64, ptr } %t13, 0
  %t19 = add i64 %t15, %t18
  %t20 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d484, i32 0, i32 1) }, 1
  %t21 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d484, i32 0, i32 1) }, 0
  %t22 = add i64 %t19, %t21
  %t23 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t22)
  call void @olang_textcopy(ptr %t23, ptr %t14, i64 %t15)
  %t24 = getelementptr i8, ptr %t23, i64 %t15
  call void @olang_textcopy(ptr %t24, ptr %t17, i64 %t18)
  %t25 = getelementptr i8, ptr %t24, i64 %t18
  call void @olang_textcopy(ptr %t25, ptr %t20, i64 %t21)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t23, 1
  store { i64, ptr } %t27, ptr %l5, !tbaa !27
  br label %bb3
bb2:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d485, i32 0, i32 1) }, ptr %l9, !tbaa !27
  %t29 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t29, ptr %l5, !tbaa !27
  br label %bb3
bb3:
  %t31 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t31, 0
  store i64 %t32, ptr %l11, !tbaa !24
  %t33 = load i64, ptr %l11, !tbaa !24
  %t34 = mul i64 %t33, 1
  %t35 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t34)
  %t36 = insertvalue { i64, ptr } undef, i64 %t33, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t35, 1
  store { i64, ptr } %t37, ptr %l12, !tbaa !27
  %t38 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !27
  %t40 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !27
  %t42 = load i64, ptr %l11, !tbaa !24
  %t43 = mul i64 %t42, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t39, ptr %t41, i64 %t43, i1 false)
  %t44 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t44, ptr %l5, !tbaa !27
  %t45 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t45, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

@olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d0 = private constant <{ i64, [60 x i8] }> <{ i64 0, [60 x i8] c"a type case matches an 'any' of a closed trait, and this is " }>, align 8
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
@.d2 = private constant <{ i64, [44 x i8] }> <{ i64 0, [44 x i8] c"an 'any' is always a reference - write 'any " }>, align 8
@.d3 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"&'" }>, align 8
@.d4 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T32" }>, align 8
@.d5 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"'any' takes a trait, and " }>, align 8
@.d6 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" is none" }>, align 8
@.d7 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T32" }>, align 8
@.d8 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c" requires the builder " }>, align 8
@.d9 = private constant <{ i64, [115 x i8] }> <{ i64 0, [115 x i8] c", so it has no run-time value - a builder takes no instance to dispatch on; take the type as a constrained variable" }>, align 8
@.d10 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T30b" }>, align 8
@.d11 = private constant <{ i64, [98 x i8] }> <{ i64 0, [98 x i8] c"a task calls a function or a function value, never through an 'any''s table - write 'spawn fn() { " }>, align 8
@.d12 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" }'" }>, align 8
@.d13 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"T32b, P1" }>, align 8
@.d14 = private constant <{ i64, [91 x i8] }> <{ i64 0, [91 x i8] c"a task calls a function or a function value, never through an 'any''s table - write 'spawn " }>, align 8
@.d15 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"fn() " }>, align 8
@.d16 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c" { return " }>, align 8
@.d17 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" }()'" }>, align 8
@.d18 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"T32b, P1" }>, align 8
@.d19 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"B21" }>, align 8
@.d20 = private constant <{ i64, [113 x i8] }> <{ i64 0, [113 x i8] c"api takes two versions and a path, as 'olang api HEAD~1 HEAD std/io.olang' - each version a commit or a directory" }>, align 8
@.d21 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"expected " }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d22 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" argument" }>, align 8
@.d23 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c", found " }>, align 8
@.d24 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E14" }>, align 8
@.d25 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"expected " }>, align 8
@.d26 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" to " }>, align 8
@.d27 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c" arguments, found " }>, align 8
@.d28 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E14" }>, align 8
@.d29 = private constant <{ i64, [61 x i8] }> <{ i64 0, [61 x i8] c" takes one index - several are passed to a type's At or SetAt" }>, align 8
@.d30 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E31" }>, align 8
@.d31 = private constant <{ i64, [88 x i8] }> <{ i64 0, [88 x i8] c" holds itself through the array it is declared over - hold the array in a struct: 'type " }>, align 8
@.d32 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c" struct(items " }>, align 8
@.d33 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"&)'" }>, align 8
@.d34 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T29" }>, align 8
@.d35 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"case " }>, align 8
@.d36 = private constant <{ i64, [57 x i8] }> <{ i64 0, [57 x i8] c" carries nothing for 'as' to give - test for it with '=='" }>, align 8
@.d37 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E32" }>, align 8
@.d38 = private constant <{ i64, [62 x i8] }> <{ i64 0, [62 x i8] c"this assertion aborts the program, evaluated while compiling: " }>, align 8
@.d39 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"S18c" }>, align 8
@.d40 = private constant <{ i64, [60 x i8] }> <{ i64 0, [60 x i8] c"the atomic operations are methods of the integer types, and " }>, align 8
@.d41 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" is none" }>, align 8
@.d42 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"P9" }>, align 8
@.d43 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d44 = private constant <{ i64, [49 x i8] }> <{ i64 0, [49 x i8] c"' takes the attribute's type and no arguments - '" }>, align 8
@.d45 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"<json.Key>()'" }>, align 8
@.d46 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"G40" }>, align 8
@.d47 = private constant <{ i64, [110 x i8] }> <{ i64 0, [110 x i8] c"an attribute is a value of a declared type - a struct, an enum's case or a declared number type - and this is " }>, align 8
@.d48 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"G39" }>, align 8
@.d49 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"B19b" }>, align 8
@.d50 = private constant <{ i64, [95 x i8] }> <{ i64 0, [95 x i8] c"-bench measures the tests a build runs, and -fuzz runs one test on a fuzzer's inputs - give one" }>, align 8
@.d51 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T22c" }>, align 8
@.d52 = private constant <{ i64, [160 x i8] }> <{ i64 0, [160 x i8] c"the function given for this call's callee keeps this argument in what it captured, where this call cannot build - make the argument in the caller and pass it in" }>, align 8
@.d53 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"the builder " }>, align 8
@.d54 = private constant <{ i64, [87 x i8] }> <{ i64 0, [87 x i8] c" is generic, so it is no value by its name alone - call it, or pass a lambda calling it" }>, align 8
@.d55 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T21" }>, align 8
@.d56 = private constant <{ i64, [49 x i8] }> <{ i64 0, [49 x i8] c"a builder is declared in its owner's module, and " }>, align 8
@.d57 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c" is not this module's - declare it there" }>, align 8
@.d58 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"D19" }>, align 8
@.d59 = private constant <{ i64, [78 x i8] }> <{ i64 0, [78 x i8] c"'s Call ties where what it is given lives to what it keeps or gives back, and " }>, align 8
@.d60 = private constant <{ i64, [127 x i8] }> <{ i64 0, [127 x i8] c" holds only what its written function type says of every call - call it by name, or hold the value in a local and call it there" }>, align 8
@.d61 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"T22a, E31" }>, align 8
@.d62 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d63 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"cannot open this file" }>, align 8
@.d64 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c" is a case of an enum, and this is " }>, align 8
@.d65 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E32" }>, align 8
@.d66 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"R11" }>, align 8
@.d67 = private constant <{ i64, [57 x i8] }> <{ i64 0, [57 x i8] c"a clause here leaves, or gives the value with 'default v'" }>, align 8
@.d68 = private constant <{ i64, [28 x i8] }> <{ i64 0, [28 x i8] c"the call does not fail with " }>, align 8
@.d69 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"R14" }>, align 8
@.d70 = private constant <{ i64, [28 x i8] }> <{ i64 0, [28 x i8] c"the call does not fail with " }>, align 8
@.d71 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c" - it fails with " }>, align 8
@.d72 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"R14" }>, align 8
@.d73 = private constant <{ i64, [108 x i8] }> <{ i64 0, [108 x i8] c" is compared with an error word, an error type, a named set or another error value - 'e == T.WORD', 'e == T'" }>, align 8
@.d74 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T20" }>, align 8
@.d75 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"Char has no method " }>, align 8
@.d76 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c" - a character is padded as text: '($c)." }>, align 8
@.d77 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"(n)'" }>, align 8
@.d78 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"M19, T29f" }>, align 8
@.d79 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"L18a" }>, align 8
@.d80 = private constant <{ i64, [95 x i8] }> <{ i64 0, [95 x i8] c"a comma never ends a line - items on different lines are separated by the line break; remove it" }>, align 8
@.d81 = private constant <{ i64, [77 x i8] }> <{ i64 0, [77 x i8] c"a comptime for's elements are computed while compiling, and these cannot be: " }>, align 8
@.d82 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"K3a" }>, align 8
@.d83 = private constant <{ i64, [52 x i8] }> <{ i64 0, [52 x i8] c"both values of 'a if c else b' have one type, found " }>, align 8
@.d84 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" and " }>, align 8
@.d85 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E28" }>, align 8
@.d86 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c" is defined in terms of itself" }>, align 8
@.d87 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"B9a" }>, align 8
@.d88 = private constant <{ i64, [59 x i8] }> <{ i64 0, [59 x i8] c": these numbers' types do not meet - convert one, as I64(n)" }>, align 8
@.d89 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T6b" }>, align 8
@.d90 = private constant <{ i64, [28 x i8] }> <{ i64 0, [28 x i8] c" cannot combine these values" }>, align 8
@.d91 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"B9" }>, align 8
@.d92 = private constant <{ i64, [87 x i8] }> <{ i64 0, [87 x i8] c" is constrained differently elsewhere in this declaration - one constraint per variable" }>, align 8
@.d93 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"G19" }>, align 8
@.d94 = private constant <{ i64, [33 x i8] }> <{ i64 0, [33 x i8] c" does not satisfy the constraint " }>, align 8
@.d95 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" on " }>, align 8
@.d96 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c": it has no method " }>, align 8
@.d97 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c" that fits" }>, align 8
@.d98 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"G19" }>, align 8
@.d99 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"field " }>, align 8
@.d100 = private constant <{ i64, [74 x i8] }> <{ i64 0, [74 x i8] c" names no parameter of the constructor - give it a value, with '=' or ':='" }>, align 8
@.d101 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"C4" }>, align 8
@.d102 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"S19b" }>, align 8
@.d103 = private constant <{ i64, [62 x i8] }> <{ i64 0, [62 x i8] c"deferred code may not return - it runs while its block is left" }>, align 8
@.d104 = private constant <{ i64, [33 x i8] }> <{ i64 0, [33 x i8] c"-define takes Name=value, found '" }>, align 8
@.d105 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d106 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"B10" }>, align 8
@.d107 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c" targets for " }>, align 8
@.d108 = private constant <{ i64, [39 x i8] }> <{ i64 0, [39 x i8] c" results - write '_' for one not wanted" }>, align 8
@.d109 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"D8c" }>, align 8
@.d110 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"D8c" }>, align 8
@.d111 = private constant <{ i64, [83 x i8] }> <{ i64 0, [83 x i8] c"':=' declares each target, so each is a name or '_' - use '=' to assign into places" }>, align 8
@.d112 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c" has a destructor to run, and " }>, align 8
@.d113 = private constant <{ i64, [54 x i8] }> <{ i64 0, [54 x i8] c" keeps values of it where no holder ends them - write " }>, align 8
@.d114 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"&, or keep them in a Vec<" }>, align 8
@.d115 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c">" }>, align 8
@.d116 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"C11" }>, align 8
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
@.d117 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"O25c" }>, align 8
@.d118 = private constant <{ i64, [95 x i8] }> <{ i64 0, [95 x i8] c"this element can be stored through, so it lives exactly where the array is put - build it there" }>, align 8
@.d119 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E38" }>, align 8
@.d120 = private constant <{ i64, [90 x i8] }> <{ i64 0, [90 x i8] c"this embed's path cannot be computed while compiling - write it so it can, or as a literal" }>, align 8
@.d121 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E38" }>, align 8
@.d122 = private constant <{ i64, [81 x i8] }> <{ i64 0, [81 x i8] c"an embed's path is text known while compiling - a literal, or what reads no local" }>, align 8
@.d123 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"C7a" }>, align 8
@.d124 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c"this destructor does nothing - remove it" }>, align 8
@.d125 = private constant <{ i64, [85 x i8] }> <{ i64 0, [85 x i8] c" is an error-set parameter, not a type - it stands where an error set is written, '? " }>, align 8
@.d126 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d127 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"G1a" }>, align 8
@.d128 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"an error value's " }>, align 8
@.d129 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c" is the language's (T20) - " }>, align 8
@.d130 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c" cannot declare one; choose another name" }>, align 8
@.d131 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T20" }>, align 8
@.d132 = private constant <{ i64, [36 x i8] }> <{ i64 0, [36 x i8] c" reaches itself through its member '" }>, align 8
@.d133 = private constant <{ i64, [49 x i8] }> <{ i64 0, [49 x i8] c"' - a set holds its members' errors, never itself" }>, align 8
@.d134 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T19a" }>, align 8
@.d135 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"word " }>, align 8
@.d136 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" is " }>, align 8
@.d137 = private constant <{ i64, [50 x i8] }> <{ i64 0, [50 x i8] c"'s too, a member of this set - name it another way" }>, align 8
@.d138 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T19a" }>, align 8
@.d139 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"explain " }>, align 8
@.d140 = private constant <{ i64, [55 x i8] }> <{ i64 0, [55 x i8] c" takes the name of one of its items, as 'olang explain " }>, align 8
@.d141 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" main'" }>, align 8
@.d142 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"B11b" }>, align 8
@.d143 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d144 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"' is no top-level item of " }>, align 8
@.d145 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"B11b" }>, align 8
@.d146 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"X12" }>, align 8
@.d147 = private constant <{ i64, [101 x i8] }> <{ i64 0, [101 x i8] c"an export fn is one C function, and a generic one stands for many - declare it for the types C passes" }>, align 8
@.d148 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"R23" }>, align 8
@.d149 = private constant <{ i64, [133 x i8] }> <{ i64 0, [133 x i8] c"a Bool among several results is a flag beside a value - what can fail says so with '? E' and raises an error instead (error NotFound)" }>, align 8
@.d150 = private constant <{ i64, [45 x i8] }> <{ i64 0, [45 x i8] c"a function giving a Bool that writes through " }>, align 8
@.d151 = private constant <{ i64, [87 x i8] }> <{ i64 0, [87 x i8] c" gives a flag beside a value - give the value as the result and fail with '? E' instead" }>, align 8
@.d152 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"R23a" }>, align 8
@.d153 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"S9e" }>, align 8
@.d154 = private constant <{ i64, [104 x i8] }> <{ i64 0, [104 x i8] c"a loop's catch clause runs after the loop has ended, so it has no loop to break or continue - set a flag" }>, align 8
@.d155 = private constant <{ i64, [116 x i8] }> <{ i64 0, [116 x i8] c" is already declared, and a for-in declares new names - choose another, or to loop while it is in c write 'for { if " }>, align 8
@.d156 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c" not in c { break } }'" }>, align 8
@.d157 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"D3a, E29" }>, align 8
@.d158 = private constant <{ i64, [94 x i8] }> <{ i64 0, [94 x i8] c" is an extern type: only C makes one - declare the C function that does, as 'extern fn open() " }>, align 8
@.d159 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"&'" }>, align 8
@.d160 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"X10" }>, align 8
@.d161 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d162 = private constant <{ i64, [72 x i8] }> <{ i64 0, [72 x i8] c"' ties where what it is given lives to what it keeps or gives back, and " }>, align 8
@.d163 = private constant <{ i64, [121 x i8] }> <{ i64 0, [121 x i8] c" holds only what its written function type says of every call - call it directly, or hold it in a local and call it there" }>, align 8
@.d164 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T22a" }>, align 8
@.d165 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"this generator's elements live " }>, align 8
@.d166 = private constant <{ i64, [137 x i8] }> <{ i64 0, [137 x i8] c", and this value is not shown to last as long - yield a part of what lives there, or values ('Iterator<T>') and a copy ('$x', 'x.Copy()')" }>, align 8
@.d167 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"D18c, S20" }>, align 8
@.d168 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" needs " }>, align 8
@.d169 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", and " }>, align 8
@.d170 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c" has none - declare it for " }>, align 8
@.d171 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c", or call " }>, align 8
@.d172 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c" with a type that has it" }>, align 8
@.d173 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"G18" }>, align 8
@.d174 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"G6" }>, align 8
@.d175 = private constant <{ i64, [55 x i8] }> <{ i64 0, [55 x i8] c"only a struct, an enum or a trait takes type parameters" }>, align 8
@.d176 = private constant <{ i64, [73 x i8] }> <{ i64 0, [73 x i8] c"this global's initializer aborts the program, evaluated while compiling: " }>, align 8
@.d177 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"K2" }>, align 8
@.d178 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"L10a" }>, align 8
@.d179 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c"'0x' needs hexadecimal digits" }>, align 8
@.d180 = private constant <{ i64, [49 x i8] }> <{ i64 0, [49 x i8] c"'mut' makes a reference writable, and nothing of " }>, align 8
@.d181 = private constant <{ i64, [64 x i8] }> <{ i64 0, [64 x i8] c" changes after its constructor (it is immut) - read it through '" }>, align 8
@.d182 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"&'" }>, align 8
@.d183 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T13a" }>, align 8
@.d184 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"could not fetch " }>, align 8
@.d185 = private constant <{ i64, [45 x i8] }> <{ i64 0, [45 x i8] c" with git - check the path and the connection" }>, align 8
@.d186 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"M23a" }>, align 8
@.d187 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"M23" }>, align 8
@.d188 = private constant <{ i64, [41 x i8] }> <{ i64 0, [41 x i8] c"an import names its file without '.olang'" }>, align 8
@.d189 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c"nothing here is reached through " }>, align 8
@.d190 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c" - remove 'import \22" }>, align 8
@.d191 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"\22'" }>, align 8
@.d192 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"M5a" }>, align 8
@.d193 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"an index is an integer, found " }>, align 8
@.d194 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E16" }>, align 8
@.d195 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"E10c" }>, align 8
@.d196 = private constant <{ i64, [80 x i8] }> <{ i64 0, [80 x i8] c"'null is null' tests nothing - 'is null' follows a reference or a function value" }>, align 8
@.d197 = private constant <{ i64, [53 x i8] }> <{ i64 0, [53 x i8] c"'is' tests for null and nothing else - compare with '" }>, align 8
@.d198 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d199 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"E10c" }>, align 8
@.d200 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"P4c" }>, align 8
@.d201 = private constant <{ i64, [79 x i8] }> <{ i64 0, [79 x i8] c"a join takes catch clauses only as 'try join', and no task of this one can fail" }>, align 8
@.d202 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"this lambda keeps '" }>, align 8
@.d203 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"' beyond the call, and " }>, align 8
@.d204 = private constant <{ i64, [132 x i8] }> <{ i64 0, [132 x i8] c" holds only what its written function type says of every call - keep a copy instead, or hold the lambda in a local and call it there" }>, align 8
@.d205 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T22a" }>, align 8
@.d206 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d207 = private constant <{ i64, [101 x i8] }> <{ i64 0, [101 x i8] c"' takes an array by value, an instance per length (G29), so it is no value - pass a lambda calling it" }>, align 8
@.d208 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"G12" }>, align 8
@.d209 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"X17" }>, align 8
@.d210 = private constant <{ i64, [86 x i8] }> <{ i64 0, [86 x i8] c"'link' names the library a C header's declarations are in - an olang module needs none" }>, align 8
@.d211 = private constant <{ i64, [45 x i8] }> <{ i64 0, [45 x i8] c"a literal makes the type before its '[', and " }>, align 8
@.d212 = private constant <{ i64, [44 x i8] }> <{ i64 0, [44 x i8] c" is a reference - an array of them is Array<" }>, align 8
@.d213 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c">[...]" }>, align 8
@.d214 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E19" }>, align 8
@.d215 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c" does not fit " }>, align 8
@.d216 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"T6" }>, align 8
@.d217 = private constant <{ i64, [67 x i8] }> <{ i64 0, [67 x i8] c" is declared and never read - read it, or leave the declaration out" }>, align 8
@.d218 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"D3b" }>, align 8
@.d219 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"S12b, D8c" }>, align 8
@.d220 = private constant <{ i64, [113 x i8] }> <{ i64 0, [113 x i8] c"a match gives one value - to give several, return them from each case of a match statement: 'case P: return a, b'" }>, align 8
@.d221 = private constant <{ i64, [33 x i8] }> <{ i64 0, [33 x i8] c"'@' has no built-in meaning, and " }>, align 8
@.d222 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c" declares no MatMul" }>, align 8
@.d223 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E31" }>, align 8
@.d224 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"'x in c' calls " }>, align 8
@.d225 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", and " }>, align 8
@.d226 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" has none" }>, align 8
@.d227 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E29" }>, align 8
@.d228 = private constant <{ i64, [70 x i8] }> <{ i64 0, [70 x i8] c" cannot fail - the operation calling it has nowhere to handle an error" }>, align 8
@.d229 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E31" }>, align 8
@.d230 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"method " }>, align 8
@.d231 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c" is private to its module" }>, align 8
@.d232 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"M6" }>, align 8
@.d233 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c"the mode comes first: 'olang " }>, align 8
@.d234 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"' and then its options" }>, align 8
@.d235 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"B1" }>, align 8
@.d236 = private constant <{ i64, [95 x i8] }> <{ i64 0, [95 x i8] c"a by-value parameter is the callee's own copy, always writable - 'mut' is for a reference, and " }>, align 8
@.d237 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" is none" }>, align 8
@.d238 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"D9" }>, align 8
@.d239 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"E14b" }>, align 8
@.d240 = private constant <{ i64, [100 x i8] }> <{ i64 0, [100 x i8] c"an argument by name gives a function's, a method's or a constructor's defaulted parameter, in a call" }>, align 8
@.d241 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"parameter " }>, align 8
@.d242 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c" is named twice" }>, align 8
@.d243 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"E14b" }>, align 8
@.d244 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"L18c" }>, align 8
@.d245 = private constant <{ i64, [113 x i8] }> <{ i64 0, [113 x i8] c"parentheses group only a function type holding a comma of its own, as an item of a list - write this without them" }>, align 8
@.d246 = private constant <{ i64, [39 x i8] }> <{ i64 0, [39 x i8] c" declares no raw values, so it has no '" }>, align 8
@.d247 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c"' - name a raw type after 'enum'" }>, align 8
@.d248 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T17e" }>, align 8
@.d249 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c" has no member '" }>, align 8
@.d250 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d251 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d252 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"D8e" }>, align 8
@.d253 = private constant <{ i64, [109 x i8] }> <{ i64 0, [109 x i8] c"a 'noreturn' function may not reach its end - end every path with a noreturn call, 'unreachable' or 'for { }'" }>, align 8
@.d254 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d255 = private constant <{ i64, [178 x i8] }> <{ i64 0, [178 x i8] c"' is not a mode - the modes are build, compile, test, interpret, format, explain, help, doc, lsp, mcp, fix, bindgen, profile and api, and a file ending in .olang is built and run" }>, align 8
@.d256 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"B1" }>, align 8
@.d257 = private constant <{ i64, [50 x i8] }> <{ i64 0, [50 x i8] c" is not an enum type, so it has no values 'T.Case'" }>, align 8
@.d258 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E22" }>, align 8
@.d259 = private constant <{ i64, [78 x i8] }> <{ i64 0, [78 x i8] c" is no error type - an error set names error types, their words and named sets" }>, align 8
@.d260 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"R1" }>, align 8
@.d261 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"S4" }>, align 8
@.d262 = private constant <{ i64, [63 x i8] }> <{ i64 0, [63 x i8] c"this cannot be written - a variable, an element or a member can" }>, align 8
@.d263 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c" is not a function, and declares no Call" }>, align 8
@.d264 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"E13b" }>, align 8
@.d265 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c" declares no " }>, align 8
@.d266 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"M9" }>, align 8
@.d267 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d268 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"' is given a value here" }>, align 8
@.d269 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d270 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d271 = private constant <{ i64, [109 x i8] }> <{ i64 0, [109 x i8] c"' is bound here to what the matched value holds, which lives in a block that closes first - make that where '" }>, align 8
@.d272 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"' lives" }>, align 8
@.d273 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d274 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" needs " }>, align 8
@.d275 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" here" }>, align 8
@.d276 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d277 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"the range's literals make '" }>, align 8
@.d278 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"' " }>, align 8
@.d279 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c" - convert its end, '" }>, align 8
@.d280 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"(...)', for " }>, align 8
@.d281 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" values" }>, align 8
@.d282 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d283 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d284 = private constant <{ i64, [185 x i8] }> <{ i64 0, [185 x i8] c"' is the loop's copy of an element, in the loop's block - a call it is lent to by reference ties what it builds to that copy: take that parameter by value, or build from its fields here" }>, align 8
@.d285 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d286 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d287 = private constant <{ i64, [66 x i8] }> <{ i64 0, [66 x i8] c"the type is written here - write '?&' for '&' where it may be null" }>, align 8
@.d288 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d289 = private constant <{ i64, [102 x i8] }> <{ i64 0, [102 x i8] c"' is the call's own copy of its argument - take it by reference to give back what the caller passed: '" }>, align 8
@.d290 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d291 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d292 = private constant <{ i64, [54 x i8] }> <{ i64 0, [54 x i8] c"' copies a place reached read-only, so it is read-only" }>, align 8
@.d293 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d294 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d295 = private constant <{ i64, [87 x i8] }> <{ i64 0, [87 x i8] c"read here before it is assigned on every path - assign it on each path before this read" }>, align 8
@.d296 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"or refill the one kept - '" }>, align 8
@.d297 = private constant <{ i64, [53 x i8] }> <{ i64 0, [53 x i8] c".Clear()', then put the elements in: one made where '" }>, align 8
@.d298 = private constant <{ i64, [77 x i8] }> <{ i64 0, [77 x i8] c"' lives stays there, beside every one made before it, until that scope closes" }>, align 8
@.d299 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d300 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d301 = private constant <{ i64, [119 x i8] }> <{ i64 0, [119 x i8] c"this borrows a value made here, which lives only in this block - keep a copy of what the slice shows ('$x', 'x.Copy()')" }>, align 8
@.d302 = private constant <{ i64, [81 x i8] }> <{ i64 0, [81 x i8] c"this text lives in a block that closes first - pass a copy, which is made where '" }>, align 8
@.d303 = private constant <{ i64, [28 x i8] }> <{ i64 0, [28 x i8] c"' lives: write '$' before it" }>, align 8
@.d304 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d305 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d306 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"this branch does not assign it" }>, align 8
@.d307 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d308 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"' may grow here, in " }>, align 8
@.d309 = private constant <{ i64, [47 x i8] }> <{ i64 0, [47 x i8] c" - take the view or the reference after it, or " }>, align 8
@.d310 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d311 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c" may grow it here" }>, align 8
@.d312 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d313 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"L1" }>, align 8
@.d314 = private constant <{ i64, [45 x i8] }> <{ i64 0, [45 x i8] c"NUL byte in the source - is this a text file?" }>, align 8
@.d315 = private constant <{ i64, [37 x i8] }> <{ i64 0, [37 x i8] c" may be null, so it meets no trait - " }>, align 8
@.d316 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c" must meet " }>, align 8
@.d317 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c" here: write " }>, align 8
@.d318 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c", which never is" }>, align 8
@.d319 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T2c" }>, align 8
@.d320 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c" does not flow into " }>, align 8
@.d321 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c" - convert it, as " }>, align 8
@.d322 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"(x)" }>, align 8
@.d323 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T6b" }>, align 8
@.d324 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"B3h" }>, align 8
@.d325 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"cannot write it" }>, align 8
@.d326 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d327 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"' lives where '" }>, align 8
@.d328 = private constant <{ i64, [44 x i8] }> <{ i64 0, [44 x i8] c"' does, which closes first - keep a copy ('$" }>, align 8
@.d329 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"'), or keep what '" }>, align 8
@.d330 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"' was made from" }>, align 8
@.d331 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"O20" }>, align 8
@.d332 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"payload field " }>, align 8
@.d333 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" of type " }>, align 8
@.d334 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" holds " }>, align 8
@.d335 = private constant <{ i64, [76 x i8] }> <{ i64 0, [76 x i8] c" - a payload holds values only: hold a copy ('$x', 'x.Copy()') or plain data" }>, align 8
@.d336 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T19b" }>, align 8
@.d337 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"case " }>, align 8
@.d338 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c" has no field '" }>, align 8
@.d339 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d340 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"S13b" }>, align 8
@.d341 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T17c" }>, align 8
@.d342 = private constant <{ i64, [106 x i8] }> <{ i64 0, [106 x i8] c"this value's payload refers to storage the value would outlive - make that storage where the value is kept" }>, align 8
@.d343 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"'**' calls Pow, which " }>, align 8
@.d344 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c" has none of" }>, align 8
@.d345 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E5a" }>, align 8
@.d346 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d347 = private constant <{ i64, [121 x i8] }> <{ i64 0, [121 x i8] c"' holds no reference and is not unique, so a call can keep only a copy of it, which needs no word - leave the 'keeps' out" }>, align 8
@.d348 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T21c" }>, align 8
@.d349 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d350 = private constant <{ i64, [140 x i8] }> <{ i64 0, [140 x i8] c"' is a promise, written only after a function type's signature - what a function itself does is read off its body ('olang explain' shows it)" }>, align 8
@.d351 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T21c" }>, align 8
@.d352 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"this function raises " }>, align 8
@.d353 = private constant <{ i64, [111 x i8] }> <{ i64 0, [111 x i8] c" but writes no '?' - a function that can fail says so: write '?' after its result (its errors inferred), or '? " }>, align 8
@.d354 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d355 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"R1d" }>, align 8
@.d356 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c" carries (" }>, align 8
@.d357 = private constant <{ i64, [69 x i8] }> <{ i64 0, [69 x i8] c"), as its first raise names them - give the same fields in that order" }>, align 8
@.d358 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"R3b, T19b" }>, align 8
@.d359 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"the raw value " }>, align 8
@.d360 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c" does not fit " }>, align 8
@.d361 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T17e" }>, align 8
@.d362 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"this reads '" }>, align 8
@.d363 = private constant <{ i64, [131 x i8] }> <{ i64 0, [131 x i8] c"', which an assignment may have given storage that no longer lives here - assign it a copy ('$x' or 'x.Copy()'), or what lives here" }>, align 8
@.d364 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"O25i" }>, align 8
@.d365 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"a copy of a read-only " }>, align 8
@.d366 = private constant <{ i64, [70 x i8] }> <{ i64 0, [70 x i8] c" cannot be returned as a writable value - return one of its own, made " }>, align 8
@.d367 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c", or a read-only reference" }>, align 8
@.d368 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T25c" }>, align 8
@.d369 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"D8e" }>, align 8
@.d370 = private constant <{ i64, [89 x i8] }> <{ i64 0, [89 x i8] c"a 'noreturn' function never returns - end this path with a noreturn call or 'unreachable'" }>, align 8
@.d371 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"D8" }>, align 8
@.d372 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"this function returns no value" }>, align 8
@.d373 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"O25e" }>, align 8
@.d374 = private constant <{ i64, [108 x i8] }> <{ i64 0, [108 x i8] c"these arguments live in different scopes, and the call needs them in one - make them where one of them lives" }>, align 8
@.d375 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"L18" }>, align 8
@.d376 = private constant <{ i64, [94 x i8] }> <{ i64 0, [94 x i8] c"olang has no ';' - a statement ends where its line does; put the next one on a line of its own" }>, align 8
@.d377 = private constant <{ i64, [48 x i8] }> <{ i64 0, [48 x i8] c" declares At but not SetAt, which x[i] = v calls" }>, align 8
@.d378 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E31" }>, align 8
@.d379 = private constant <{ i64, [83 x i8] }> <{ i64 0, [83 x i8] c" names a function of this module - a name means one thing in it, so name this apart" }>, align 8
@.d380 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"D3a" }>, align 8
@.d381 = private constant <{ i64, [34 x i8] }> <{ i64 0, [34 x i8] c" is a type's name - choose another" }>, align 8
@.d382 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"D3a" }>, align 8
@.d383 = private constant <{ i64, [37 x i8] }> <{ i64 0, [37 x i8] c"a slice's bounds are integers, found " }>, align 8
@.d384 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"E16a" }>, align 8
@.d385 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"E31b, P2" }>, align 8
@.d386 = private constant <{ i64, [173 x i8] }> <{ i64 0, [173 x i8] c"a task is not handed x[i]: the element is copied here, and the copy would not last until the join - spawn a function that takes the collection and calls 'x[i].M(...)' itself" }>, align 8
@.d387 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"P2, D16e" }>, align 8
@.d388 = private constant <{ i64, [93 x i8] }> <{ i64 0, [93 x i8] c"this lambda captures a variable declared inside the join, which closes while the task may run" }>, align 8
@.d389 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"S19b, P1a" }>, align 8
@.d390 = private constant <{ i64, [66 x i8] }> <{ i64 0, [66 x i8] c"a spawn in deferred code needs a join written in the deferred code" }>, align 8
@.d391 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"D8g" }>, align 8
@.d392 = private constant <{ i64, [115 x i8] }> <{ i64 0, [115 x i8] c"'...a' passes an array on as a variadic parameter's arguments, and stands nowhere else - pass the array itself, 'a'" }>, align 8
@.d393 = private constant <{ i64, [83 x i8] }> <{ i64 0, [83 x i8] c"'++' and '--' step a number, or a type declaring Inc (Dec) or Plus (Minus) - found " }>, align 8
@.d394 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"S3a, E31" }>, align 8
@.d395 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"E11c, O12" }>, align 8
@.d396 = private constant <{ i64, [221 x i8] }> <{ i64 0, [221 x i8] c"'$' does not say where a value it renders lives, so a Str taking its receiver by value builds and stores nothing where the receiver's references reach - take the receiver by reference ('x T&'), or build what it needs here" }>, align 8
@.d397 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"'-target " }>, align 8
@.d398 = private constant <{ i64, [102 x i8] }> <{ i64 0, [102 x i8] c"': native is this machine's CPU - name the other architecture's CPU after ':', or none for its default" }>, align 8
@.d399 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"B12" }>, align 8
@.d400 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"nothing here runs " }>, align 8
@.d401 = private constant <{ i64, [36 x i8] }> <{ i64 0, [36 x i8] c" programs - install qemu-user (qemu-" }>, align 8
@.d402 = private constant <{ i64, [42 x i8] }> <{ i64 0, [42 x i8] c"), or name an emulator with OLANG_EMULATOR" }>, align 8
@.d403 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"B12a" }>, align 8
@.d404 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"P4a" }>, align 8
@.d405 = private constant <{ i64, [70 x i8] }> <{ i64 0, [70 x i8] c"a spawn without targets gives no value, so its clauses take no default" }>, align 8
@.d406 = private constant <{ i64, [65 x i8] }> <{ i64 0, [65 x i8] c"a test names a function, a type or Type.Method of its file, and '" }>, align 8
@.d407 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"' is none" }>, align 8
@.d408 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"B7a" }>, align 8
@.d409 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"trait method " }>, align 8
@.d410 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c" may not be generic in a type of its own" }>, align 8
@.d411 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T35" }>, align 8
@.d412 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E24" }>, align 8
@.d413 = private constant <{ i64, [104 x i8] }> <{ i64 0, [104 x i8] c"these parentheses group nothing - a 'try' covers the whole expression after it, so write it without them" }>, align 8
@.d414 = private constant <{ i64, [59 x i8] }> <{ i64 0, [59 x i8] c"type arguments are written touching the name and the '(': '" }>, align 8
@.d415 = private constant <{ i64, [46 x i8] }> <{ i64 0, [46 x i8] c"<...>(...)' - with spaces, '<' and '>' compare" }>, align 8
@.d416 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"G12" }>, align 8
@.d417 = private constant <{ i64, [41 x i8] }> <{ i64 0, [41 x i8] c" is used while it is still being declared" }>, align 8
@.d418 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d419 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"S13e" }>, align 8
@.d420 = private constant <{ i64, [100 x i8] }> <{ i64 0, [100 x i8] c"a type match chooses its case while compiling, so it takes no guard - test the value inside the case" }>, align 8
@.d421 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"no case covers " }>, align 8
@.d422 = private constant <{ i64, [64 x i8] }> <{ i64 0, [64 x i8] c", which this generic is instantiated with - add one, or 'case _'" }>, align 8
@.d423 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"G15" }>, align 8
@.d424 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"D15" }>, align 8
@.d425 = private constant <{ i64, [79 x i8] }> <{ i64 0, [79 x i8] c"':=' takes its type from the initializer, and a call returning nothing has none" }>, align 8
@.d426 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"L13" }>, align 8
@.d427 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"unterminated character literal" }>, align 8
@.d428 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"D8c" }>, align 8
@.d429 = private constant <{ i64, [64 x i8] }> <{ i64 0, [64 x i8] c"'_' discards a value and names nothing, so it cannot be declared" }>, align 8
@.d430 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E15" }>, align 8
@.d431 = private constant <{ i64, [65 x i8] }> <{ i64 0, [65 x i8] c"this call can fail - write 'try', and catch or pass on its errors" }>, align 8
@.d432 = private constant <{ i64, [44 x i8] }> <{ i64 0, [44 x i8] c"'unique' says a value exists in one place - " }>, align 8
@.d433 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c" has no values of its own" }>, align 8
@.d434 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T13b" }>, align 8
@.d435 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c" needs a copy, and " }>, align 8
@.d436 = private constant <{ i64, [47 x i8] }> <{ i64 0, [47 x i8] c" is unique - its values are never copied: call " }>, align 8
@.d437 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c" with a reference ('" }>, align 8
@.d438 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"&') or with a type that copies" }>, align 8
@.d439 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"T13b, G18" }>, align 8
@.d440 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"unknown name " }>, align 8
@.d441 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c" - did you mean '" }>, align 8
@.d442 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"'?" }>, align 8
@.d443 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d444 = private constant <{ i64, [98 x i8] }> <{ i64 0, [98 x i8] c" cannot be a C variable argument - no C type of olang's holds it; convert it, 'I64(x)' or 'U64(x)'" }>, align 8
@.d445 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"X21" }>, align 8
@.d446 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"D8g" }>, align 8
@.d447 = private constant <{ i64, [93 x i8] }> <{ i64 0, [93 x i8] c"a variadic parameter takes no default - a call giving it no argument gives it the empty array" }>, align 8
@.d448 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"D8g" }>, align 8
@.d449 = private constant <{ i64, [140 x i8] }> <{ i64 0, [140 x i8] c"a variadic parameter is the last one but defaulted ones - one variadic parameter, and only parameters with a default after it, given by name" }>, align 8
@.d450 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"this view of '" }>, align 8
@.d451 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"' is given to " }>, align 8
@.d452 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c", which may grow '" }>, align 8
@.d453 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"' - " }>, align 8
@.d454 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"M19g" }>, align 8
@.d455 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d456 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"' holds a view of '" }>, align 8
@.d457 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"' taken before '" }>, align 8
@.d458 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"' may have grown" }>, align 8
@.d459 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"M19g" }>, align 8
@.d460 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"this keeps a view of '" }>, align 8
@.d461 = private constant <{ i64, [123 x i8] }> <{ i64 0, [123 x i8] c"', the copy its match or lambda made where it stands, which goes with it - keep a copy of what it shows: '$x' or 'x.Copy()'" }>, align 8
@.d462 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"O27" }>, align 8
@.d463 = private constant <{ i64, [136 x i8] }> <{ i64 0, [136 x i8] c"a weak place reads null once nothing owning holds what it names, so 'weak' is written before a reference that may be null - write 'weak " }>, align 8
@.d464 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d465 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T2d" }>, align 8
@.d466 = private constant <{ i64, [197 x i8] }> <{ i64 0, [197 x i8] c"'weak' is written only where a value is stored - a field, a payload, an element or a type argument a type stores, or a global - never on a local, a parameter, a result or a function type's: write '" }>, align 8
@.d467 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"' here" }>, align 8
@.d468 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T2d" }>, align 8
@.d469 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"case " }>, align 8
@.d470 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c" carries one whole " }>, align 8
@.d471 = private constant <{ i64, [67 x i8] }> <{ i64 0, [67 x i8] c" and has no field names - match its fields with a struct pattern, '" }>, align 8
@.d472 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d473 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"(field = ...))'" }>, align 8
@.d474 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"S13b" }>, align 8
@.d475 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"E31b" }>, align 8
@.d476 = private constant <{ i64, [287 x i8] }> <{ i64 0, [287 x i8] c"x[i] gives a copy of the element, which this call would write while it can reach the collection another way - call it on the element in place, 'x.RefMut(i)', where the collection has one (a Vec), else write 't := x[i]', the call on 't', then 'x[i] = t', or hold the elements by reference" }>, align 8
@.d477 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"S19b, S20" }>, align 8
@.d478 = private constant <{ i64, [61 x i8] }> <{ i64 0, [61 x i8] c"deferred code may not yield - it runs while its block is left" }>, align 8
@.d479 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"S20" }>, align 8
@.d480 = private constant <{ i64, [67 x i8] }> <{ i64 0, [67 x i8] c"a lambda is no generator - 'yield' in the function it is written in" }>, align 8
@.d481 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"D18, S20" }>, align 8
@.d482 = private constant <{ i64, [75 x i8] }> <{ i64 0, [75 x i8] c"'yield' is a generator's - a function whose result is written 'Iterator<T>'" }>, align 8
@.d483 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c" - did you mean '" }>, align 8
@.d484 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"'?" }>, align 8
@.d485 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
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
@olang_loc_d93addea5b815da9_e849c161ff4e7de5 = external constant [0 x i8]
@olang_loc_fced1ba34c6512dc_349b310d7afbfd78 = external constant [0 x i8]
declare i8 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eToLower(i8 %a0)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare { i64, ptr } @compiler_2fmsgs_2eEsc(ptr %v0, i8 %a0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @compiler_2fmsgs_2eweakFix(ptr %v0, ptr %v1, { i64, ptr } %a0)

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
