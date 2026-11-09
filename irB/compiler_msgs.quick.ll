source_filename = "compiler_msgs.quick.ll"
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
@G_2ecompiler_2fmsgs_2eEndOfFile = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fmsgs_2eEndOfFile.k1 }>, align 8
@G_2ecompiler_2fmsgs_2eEndOfFile.k1 = internal global <{ [11 x i8] }> <{ [11 x i8] c"\65\6E\64\20\6F\66\20\66\69\6C\65" }>, align 8
@G_2ecompiler_2fmsgs_2eEndOfLine = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fmsgs_2eEndOfLine.k1 }>, align 8
@G_2ecompiler_2fmsgs_2eEndOfLine.k1 = internal global <{ [11 x i8] }> <{ [11 x i8] c"\65\6E\64\20\6F\66\20\6C\69\6E\65" }>, align 8
define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAlreadyDeclared(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 695, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
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
  %t10 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d0, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d0, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d1, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAltBindingType(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 591, ptr %l2
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
  %t11 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t15 = extractvalue { i64, ptr } %a1, 1
  %t16 = extractvalue { i64, ptr } %a1, 0
  %t17 = add i64 %t13, %t16
  %t18 = extractvalue { i64, ptr } { i64 43, ptr getelementptr inbounds (<{ i64, [43 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 43, ptr getelementptr inbounds (<{ i64, [43 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
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
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t38, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d4, i32 0, i32 1) }, { i64, ptr } %t37)
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
  store i32 180, ptr %l3
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
  %t12 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t13 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t14 = add i64 %t11, %t13
  %t16 = extractvalue { i64, ptr } %a1, 1
  %t17 = extractvalue { i64, ptr } %a1, 0
  %t18 = add i64 %t14, %t17
  %t19 = extractvalue { i64, ptr } { i64 96, ptr getelementptr inbounds (<{ i64, [96 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 96, ptr getelementptr inbounds (<{ i64, [96 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t21 = add i64 %t18, %t20
  %t23 = extractvalue { i64, ptr } %a2, 1
  %t24 = extractvalue { i64, ptr } %a2, 0
  %t25 = add i64 %t21, %t24
  %t26 = extractvalue { i64, ptr } { i64 59, ptr getelementptr inbounds (<{ i64, [59 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t27 = extractvalue { i64, ptr } { i64 59, ptr getelementptr inbounds (<{ i64, [59 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
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
  %t50 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, i32 %t48, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d8, i32 0, i32 1) }, { i64, ptr } %t47)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnyNoMethod(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca i64
  %l11 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 181, ptr %l3
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
  %t12 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t13 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  %t14 = add i64 %t11, %t13
  %t16 = extractvalue { i64, ptr } %a1, 1
  %t17 = extractvalue { i64, ptr } %a1, 0
  %t18 = add i64 %t14, %t17
  %t19 = extractvalue { i64, ptr } { i64 53, ptr getelementptr inbounds (<{ i64, [53 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 53, ptr getelementptr inbounds (<{ i64, [53 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
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
  %t46 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, i32 %t44, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d11, i32 0, i32 1) }, { i64, ptr } %t43)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnyNotMember(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
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
  store i32 178, ptr %l3
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
  %t8 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t17 = extractvalue { i64, ptr } %t7, 1
  %t18 = extractvalue { i64, ptr } %t7, 0
  %t19 = add i64 %t15, %t18
  %t20 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t21 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
  %t22 = add i64 %t19, %t21
  %t24 = extractvalue { i64, ptr } %t8, 1
  %t25 = extractvalue { i64, ptr } %t8, 0
  %t26 = add i64 %t22, %t25
  %t27 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t28 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  %t29 = add i64 %t26, %t28
  %t31 = extractvalue { i64, ptr } %a2, 1
  %t32 = extractvalue { i64, ptr } %a2, 0
  %t33 = add i64 %t29, %t32
  %t34 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t35 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
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
  %t60 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, i32 %t58, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d16, i32 0, i32 1) }, { i64, ptr } %t57)
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
  store i32 177, ptr %l3
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
  %t12 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t13 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  %t14 = add i64 %t11, %t13
  %t16 = extractvalue { i64, ptr } %a1, 1
  %t17 = extractvalue { i64, ptr } %a1, 0
  %t18 = add i64 %t14, %t17
  %t19 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t21 = add i64 %t18, %t20
  %t23 = extractvalue { i64, ptr } %a2, 1
  %t24 = extractvalue { i64, ptr } %a2, 0
  %t25 = add i64 %t21, %t24
  %t26 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t27 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
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
  %t50 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, i32 %t48, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d20, i32 0, i32 1) }, { i64, ptr } %t47)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAssertFalseWritten(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 717, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 134, ptr getelementptr inbounds (<{ i64, [134 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 134, ptr getelementptr inbounds (<{ i64, [134 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d22, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAtomicWidth(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 867, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 65, ptr getelementptr inbounds (<{ i64, [65 x i8] }>, ptr @.d23, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 65, ptr getelementptr inbounds (<{ i64, [65 x i8] }>, ptr @.d23, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d24, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d24, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d25, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBangNothingFails(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 545, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d26, i32 0, i32 1) }, { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d27, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBecomeOutside(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 754, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 49, ptr getelementptr inbounds (<{ i64, [49 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 49, ptr getelementptr inbounds (<{ i64, [49 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d29, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d29, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d30, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBinNoDigits(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 72, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d31, i32 0, i32 1) }, { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d32, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBorrowSplitParam(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
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
  store i32 363, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
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
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d33, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d33, i32 0, i32 1) }, 0
  %t12 = extractvalue { i64, ptr } %t6, 1
  %t13 = extractvalue { i64, ptr } %t6, 0
  %t14 = add i64 %t10, %t13
  %t15 = extractvalue { i64, ptr } { i64 119, ptr getelementptr inbounds (<{ i64, [119 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 119, ptr getelementptr inbounds (<{ i64, [119 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  %t17 = add i64 %t14, %t16
  %t19 = extractvalue { i64, ptr } %t7, 1
  %t20 = extractvalue { i64, ptr } %t7, 0
  %t21 = add i64 %t17, %t20
  %t22 = extractvalue { i64, ptr } { i64 83, ptr getelementptr inbounds (<{ i64, [83 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 83, ptr getelementptr inbounds (<{ i64, [83 x i8] }>, ptr @.d35, i32 0, i32 1) }, 0
  %t24 = add i64 %t21, %t23
  %t26 = extractvalue { i64, ptr } %t8, 1
  %t27 = extractvalue { i64, ptr } %t8, 0
  %t28 = add i64 %t24, %t27
  %t29 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d36, i32 0, i32 1) }, 1
  %t30 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d36, i32 0, i32 1) }, 0
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
  %t54 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t52, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d37, i32 0, i32 1) }, { i64, ptr } %t51)
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
  store i32 590, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
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
  %t10 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d38, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d38, i32 0, i32 1) }, 0
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuildDefaultType(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 133, ptr %l2
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
  %t11 = extractvalue { i64, ptr } { i64 91, ptr getelementptr inbounds (<{ i64, [91 x i8] }>, ptr @.d40, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 91, ptr getelementptr inbounds (<{ i64, [91 x i8] }>, ptr @.d40, i32 0, i32 1) }, 0
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
  %t36 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t34, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d41, i32 0, i32 1) }, { i64, ptr } %t33)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuilderExpected(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i32
  %l5 = alloca i64
  %l15 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  store { i64, ptr } %a1, ptr %l1
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store i32 302, ptr %l4
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
  %t7 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t10 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t11 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t13 = extractvalue { i64, ptr } %a0, 1
  %t14 = extractvalue { i64, ptr } %a0, 0
  %t15 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d42, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d42, i32 0, i32 1) }, 0
  %t17 = add i64 %t14, %t16
  %t19 = extractvalue { i64, ptr } %t7, 1
  %t20 = extractvalue { i64, ptr } %t7, 0
  %t21 = add i64 %t17, %t20
  %t22 = extractvalue { i64, ptr } { i64 76, ptr getelementptr inbounds (<{ i64, [76 x i8] }>, ptr @.d43, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 76, ptr getelementptr inbounds (<{ i64, [76 x i8] }>, ptr @.d43, i32 0, i32 1) }, 0
  %t24 = add i64 %t21, %t23
  %t26 = extractvalue { i64, ptr } %a2, 1
  %t27 = extractvalue { i64, ptr } %a2, 0
  %t28 = add i64 %t24, %t27
  %t29 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d44, i32 0, i32 1) }, 1
  %t30 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d44, i32 0, i32 1) }, 0
  %t31 = add i64 %t28, %t30
  %t33 = extractvalue { i64, ptr } %t9, 1
  %t34 = extractvalue { i64, ptr } %t9, 0
  %t35 = add i64 %t31, %t34
  %t36 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d45, i32 0, i32 1) }, 1
  %t37 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d45, i32 0, i32 1) }, 0
  %t38 = add i64 %t35, %t37
  %t40 = extractvalue { i64, ptr } %t10, 1
  %t41 = extractvalue { i64, ptr } %t10, 0
  %t42 = add i64 %t38, %t41
  %t43 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d44, i32 0, i32 1) }, 1
  %t44 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d44, i32 0, i32 1) }, 0
  %t45 = add i64 %t42, %t44
  %t47 = extractvalue { i64, ptr } %t11, 1
  %t48 = extractvalue { i64, ptr } %t11, 0
  %t49 = add i64 %t45, %t48
  %t50 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d46, i32 0, i32 1) }, 1
  %t51 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d46, i32 0, i32 1) }, 0
  %t52 = add i64 %t49, %t51
  %t53 = load i64, ptr %l5
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
  %t70 = load i64, ptr %l5
  %t71 = inttoptr i64 %t70 to ptr
  %t72 = extractvalue { i64, ptr } %t68, 0
  %t73 = extractvalue { i64, ptr } %t68, 1
  %t74 = mul i64 %t72, 1
  %t75 = call ptr @__olang_scope_alloc(ptr %t71, i64 %t74)
  call void @llvm.memcpy.p0.p0.i64(ptr %t75, ptr %t73, i64 %t74, i1 false)
  %t76 = insertvalue { i64, ptr } undef, i64 %t72, 0
  %t77 = insertvalue { i64, ptr } %t76, ptr %t75, 1
  %t78 = load i32, ptr %l4, !range !{i32 0, i32 884}
  %t80 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v4, ptr %v4, ptr %v4, i32 %t78, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d47, i32 0, i32 1) }, { i64, ptr } %t77)
  store %"compiler/diagmsg:Msg" %t80, ptr %l15
  br label %bb3
bb3:
  %t81 = load %"compiler/diagmsg:Msg", ptr %l15
  store %"compiler/diagmsg:Msg" %t81, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuilderNameTaken(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca i64
  %l11 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 300, ptr %l3
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
  %t12 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d48, i32 0, i32 1) }, 1
  %t13 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d48, i32 0, i32 1) }, 0
  %t14 = add i64 %t11, %t13
  %t16 = extractvalue { i64, ptr } %a2, 1
  %t17 = extractvalue { i64, ptr } %a2, 0
  %t18 = add i64 %t14, %t17
  %t19 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d49, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d49, i32 0, i32 1) }, 0
  %t21 = add i64 %t18, %t20
  %t23 = extractvalue { i64, ptr } %a0, 1
  %t24 = extractvalue { i64, ptr } %a0, 0
  %t25 = add i64 %t21, %t24
  %t26 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d50, i32 0, i32 1) }, 1
  %t27 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d50, i32 0, i32 1) }, 0
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
  %t50 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, i32 %t48, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d51, i32 0, i32 1) }, { i64, ptr } %t47)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eByteSwapWidth(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 866, ptr %l2
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
  %t9 = extractvalue { i64, ptr } %a0, 1
  %t10 = extractvalue { i64, ptr } %a0, 0
  %t11 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d52, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d52, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t15 = call i64 @__olang_fmt_i64(ptr null, i64 %a1)
  %t16 = add i64 %t13, %t15
  %t17 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d53, i32 0, i32 1) }, 1
  %t18 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d53, i32 0, i32 1) }, 0
  %t19 = add i64 %t16, %t18
  %t20 = load i64, ptr %l3
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t19)
  call void @olang_textcopy(ptr %t22, ptr %t9, i64 %t10)
  %t23 = getelementptr i8, ptr %t22, i64 %t10
  call void @olang_textcopy(ptr %t23, ptr %t11, i64 %t12)
  %t24 = getelementptr i8, ptr %t23, i64 %t12
  %t25 = call i64 @__olang_fmt_i64(ptr %t24, i64 %a1)
  %t26 = getelementptr i8, ptr %t24, i64 %t15
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
  %t38 = load i32, ptr %l2, !range !{i32 0, i32 884}
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t38, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d54, i32 0, i32 1) }, { i64, ptr } %t37)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCNoForm(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 221, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d55, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d55, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d56, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d56, i32 0, i32 1) }, 0
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
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t38, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d57, i32 0, i32 1) }, { i64, ptr } %t37)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCPointerTemporary(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 224, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d58, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d58, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 43, ptr getelementptr inbounds (<{ i64, [43 x i8] }>, ptr @.d59, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 43, ptr getelementptr inbounds (<{ i64, [43 x i8] }>, ptr @.d59, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d60, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCallDoesNothing(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 497, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d61, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d61, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 100, ptr getelementptr inbounds (<{ i64, [100 x i8] }>, ptr @.d62, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 100, ptr getelementptr inbounds (<{ i64, [100 x i8] }>, ptr @.d62, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d63, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaseTestOther(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 494, ptr %l2
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
  %t11 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d64, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d64, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t15 = extractvalue { i64, ptr } %a1, 1
  %t16 = extractvalue { i64, ptr } %a1, 0
  %t17 = add i64 %t13, %t16
  %t18 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d65, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d65, i32 0, i32 1) }, 0
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
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t38, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d66, i32 0, i32 1) }, { i64, ptr } %t37)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaseUnknownName(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 607, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d67, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d67, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 101, ptr getelementptr inbounds (<{ i64, [101 x i8] }>, ptr @.d68, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 101, ptr getelementptr inbounds (<{ i64, [101 x i8] }>, ptr @.d68, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d69, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCatchAfterCatchAll(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 536, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d70, i32 0, i32 1) }, { i64, ptr } { i64 78, ptr getelementptr inbounds (<{ i64, [78 x i8] }>, ptr @.d71, i32 0, i32 1) })
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
  store i32 789, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 77, ptr getelementptr inbounds (<{ i64, [77 x i8] }>, ptr @.d72, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 77, ptr getelementptr inbounds (<{ i64, [77 x i8] }>, ptr @.d72, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d73, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d73, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d74, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCatchUnreachable(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 537, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d75, i32 0, i32 1) }, { i64, ptr } { i64 58, ptr getelementptr inbounds (<{ i64, [58 x i8] }>, ptr @.d76, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaughtMatchBlock(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 822, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d77, i32 0, i32 1) }, { i64, ptr } { i64 139, ptr getelementptr inbounds (<{ i64, [139 x i8] }>, ptr @.d78, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCharNewline(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 67, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d79, i32 0, i32 1) }, { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d80, i32 0, i32 1) })
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
  store i32 541, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 66, ptr getelementptr inbounds (<{ i64, [66 x i8] }>, ptr @.d81, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 66, ptr getelementptr inbounds (<{ i64, [66 x i8] }>, ptr @.d81, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d82, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d82, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d83, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCommutesNotHere(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 238, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 89, ptr getelementptr inbounds (<{ i64, [89 x i8] }>, ptr @.d84, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 89, ptr getelementptr inbounds (<{ i64, [89 x i8] }>, ptr @.d84, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d85, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d85, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d86, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCommutesSameType(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 239, ptr %l2
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
  %t11 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d87, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d87, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t15 = extractvalue { i64, ptr } %a1, 1
  %t16 = extractvalue { i64, ptr } %a1, 0
  %t17 = add i64 %t13, %t16
  %t18 = extractvalue { i64, ptr } { i64 86, ptr getelementptr inbounds (<{ i64, [86 x i8] }>, ptr @.d88, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 86, ptr getelementptr inbounds (<{ i64, [86 x i8] }>, ptr @.d88, i32 0, i32 1) }, 0
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
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t38, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d89, i32 0, i32 1) }, { i64, ptr } %t37)
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
  store i32 856, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 60, ptr getelementptr inbounds (<{ i64, [60 x i8] }>, ptr @.d90, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 60, ptr getelementptr inbounds (<{ i64, [60 x i8] }>, ptr @.d90, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 57, ptr getelementptr inbounds (<{ i64, [57 x i8] }>, ptr @.d91, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 57, ptr getelementptr inbounds (<{ i64, [57 x i8] }>, ptr @.d91, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d92, i32 0, i32 1) }, { i64, ptr } %t31)
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
  store i32 90, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
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
  %t10 = extractvalue { i64, ptr } { i64 62, ptr getelementptr inbounds (<{ i64, [62 x i8] }>, ptr @.d93, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 62, ptr getelementptr inbounds (<{ i64, [62 x i8] }>, ptr @.d93, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d94, i32 0, i32 1) }, { i64, ptr } %t27)
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
  store i32 458, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d95, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d95, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d96, i32 0, i32 1) }, { i64, ptr } %t27)
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
  store i32 730, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 64, ptr getelementptr inbounds (<{ i64, [64 x i8] }>, ptr @.d97, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 64, ptr getelementptr inbounds (<{ i64, [64 x i8] }>, ptr @.d97, i32 0, i32 1) }, 0
  %t10 = call i64 @__olang_fmt_i64(ptr null, i64 %a0)
  %t11 = add i64 %t8, %t10
  %t12 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d98, i32 0, i32 1) }, 1
  %t13 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d98, i32 0, i32 1) }, 0
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
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d99, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eConditionConstant(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 580, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d100, i32 0, i32 1) }, { i64, ptr } { i64 107, ptr getelementptr inbounds (<{ i64, [107 x i8] }>, ptr @.d101, i32 0, i32 1) })
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
  store i32 223, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 89, ptr getelementptr inbounds (<{ i64, [89 x i8] }>, ptr @.d102, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 89, ptr getelementptr inbounds (<{ i64, [89 x i8] }>, ptr @.d102, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d103, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eConstraintClosed(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, { i64, ptr } %a4) #0 {
entry:
  %l5 = alloca i32
  %l6 = alloca i64
  %l15 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 141, ptr %l5
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
  %t12 = extractvalue { i64, ptr } %a0, 1
  %t13 = extractvalue { i64, ptr } %a0, 0
  %t14 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d104, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d104, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d105, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d105, i32 0, i32 1) }, 0
  %t23 = add i64 %t20, %t22
  %t25 = extractvalue { i64, ptr } %a2, 1
  %t26 = extractvalue { i64, ptr } %a2, 0
  %t27 = add i64 %t23, %t26
  %t28 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d106, i32 0, i32 1) }, 1
  %t29 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d106, i32 0, i32 1) }, 0
  %t30 = add i64 %t27, %t29
  %t32 = extractvalue { i64, ptr } %a3, 1
  %t33 = extractvalue { i64, ptr } %a3, 0
  %t34 = add i64 %t30, %t33
  %t35 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d107, i32 0, i32 1) }, 1
  %t36 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d107, i32 0, i32 1) }, 0
  %t37 = add i64 %t34, %t36
  %t39 = extractvalue { i64, ptr } %a4, 1
  %t40 = extractvalue { i64, ptr } %a4, 0
  %t41 = add i64 %t37, %t40
  %t42 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d108, i32 0, i32 1) }, 1
  %t43 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d108, i32 0, i32 1) }, 0
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
  %t68 = load i32, ptr %l5, !range !{i32 0, i32 884}
  %t70 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v5, ptr %v5, ptr %v5, i32 %t68, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d109, i32 0, i32 1) }, { i64, ptr } %t67)
  store %"compiler/diagmsg:Msg" %t70, ptr %l15
  br label %bb3
bb3:
  %t71 = load %"compiler/diagmsg:Msg", ptr %l15
  store %"compiler/diagmsg:Msg" %t71, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eConstraintUnmet(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca i64
  %l11 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 138, ptr %l3
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
  %t12 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d110, i32 0, i32 1) }, 1
  %t13 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d110, i32 0, i32 1) }, 0
  %t14 = add i64 %t11, %t13
  %t16 = extractvalue { i64, ptr } %a1, 1
  %t17 = extractvalue { i64, ptr } %a1, 0
  %t18 = add i64 %t14, %t17
  %t19 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d111, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d111, i32 0, i32 1) }, 0
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
  %t46 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, i32 %t44, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d112, i32 0, i32 1) }, { i64, ptr } %t43)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eContractFalse(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 779, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d113, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d113, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a1, 1
  %t12 = extractvalue { i64, ptr } %a1, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d114, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d114, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a0, 1
  %t19 = extractvalue { i64, ptr } %a0, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d115, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d115, i32 0, i32 1) }, 0
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
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d116, i32 0, i32 1) }, { i64, ptr } %t41)
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
  store i32 373, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d117, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d117, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 65, ptr getelementptr inbounds (<{ i64, [65 x i8] }>, ptr @.d118, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 65, ptr getelementptr inbounds (<{ i64, [65 x i8] }>, ptr @.d118, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d119, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDefaultAmbiguous(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 558, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d120, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d120, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d121, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d121, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d122, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d122, i32 0, i32 1) }, 0
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
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d123, i32 0, i32 1) }, { i64, ptr } %t41)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDefaultNeedsCatch(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 543, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d124, i32 0, i32 1) }, { i64, ptr } { i64 54, ptr getelementptr inbounds (<{ i64, [54 x i8] }>, ptr @.d125, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDefaultNoValue(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 542, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d126, i32 0, i32 1) }, { i64, ptr } { i64 77, ptr getelementptr inbounds (<{ i64, [77 x i8] }>, ptr @.d127, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDefaultNotTrailing(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 196, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
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
  %t10 = extractvalue { i64, ptr } { i64 80, ptr getelementptr inbounds (<{ i64, [80 x i8] }>, ptr @.d128, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 80, ptr getelementptr inbounds (<{ i64, [80 x i8] }>, ptr @.d128, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d129, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDeferErrorEscapes(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 523, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d130, i32 0, i32 1) }, { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d131, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDefineBadNumber(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 45, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d132, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d132, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d133, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d133, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 60, ptr getelementptr inbounds (<{ i64, [60 x i8] }>, ptr @.d134, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 60, ptr getelementptr inbounds (<{ i64, [60 x i8] }>, ptr @.d134, i32 0, i32 1) }, 0
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
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d135, i32 0, i32 1) }, { i64, ptr } %t41)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDoubleReferenceMarker(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 165, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d136, i32 0, i32 1) }, { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d137, i32 0, i32 1) })
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
  store i32 268, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d138, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d138, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d139, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d139, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 233, ptr getelementptr inbounds (<{ i64, [233 x i8] }>, ptr @.d140, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 233, ptr getelementptr inbounds (<{ i64, [233 x i8] }>, ptr @.d140, i32 0, i32 1) }, 0
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
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d141, i32 0, i32 1) }, { i64, ptr } %t41)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eEffectBeyond(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3) #0 {
entry:
  %l3 = alloca { i64, ptr }
  %l4 = alloca i32
  %l5 = alloca i64
  %l14 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store i32 676, ptr %l4
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
  %t9 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t10 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t12 = extractvalue { i64, ptr } %a0, 1
  %t13 = extractvalue { i64, ptr } %a0, 0
  %t14 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d142, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d142, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d143, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d143, i32 0, i32 1) }, 0
  %t23 = add i64 %t20, %t22
  %t25 = extractvalue { i64, ptr } %a2, 1
  %t26 = extractvalue { i64, ptr } %a2, 0
  %t27 = add i64 %t23, %t26
  %t28 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d144, i32 0, i32 1) }, 1
  %t29 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d144, i32 0, i32 1) }, 0
  %t30 = add i64 %t27, %t29
  %t32 = extractvalue { i64, ptr } %t9, 1
  %t33 = extractvalue { i64, ptr } %t9, 0
  %t34 = add i64 %t30, %t33
  %t35 = extractvalue { i64, ptr } { i64 65, ptr getelementptr inbounds (<{ i64, [65 x i8] }>, ptr @.d145, i32 0, i32 1) }, 1
  %t36 = extractvalue { i64, ptr } { i64 65, ptr getelementptr inbounds (<{ i64, [65 x i8] }>, ptr @.d145, i32 0, i32 1) }, 0
  %t37 = add i64 %t34, %t36
  %t39 = extractvalue { i64, ptr } %t10, 1
  %t40 = extractvalue { i64, ptr } %t10, 0
  %t41 = add i64 %t37, %t40
  %t42 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d146, i32 0, i32 1) }, 1
  %t43 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d146, i32 0, i32 1) }, 0
  %t44 = add i64 %t41, %t43
  %t45 = load i64, ptr %l5
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
  %t60 = load i64, ptr %l5
  %t61 = inttoptr i64 %t60 to ptr
  %t62 = extractvalue { i64, ptr } %t58, 0
  %t63 = extractvalue { i64, ptr } %t58, 1
  %t64 = mul i64 %t62, 1
  %t65 = call ptr @__olang_scope_alloc(ptr %t61, i64 %t64)
  call void @llvm.memcpy.p0.p0.i64(ptr %t65, ptr %t63, i64 %t64, i1 false)
  %t66 = insertvalue { i64, ptr } undef, i64 %t62, 0
  %t67 = insertvalue { i64, ptr } %t66, ptr %t65, 1
  %t68 = load i32, ptr %l4, !range !{i32 0, i32 884}
  %t70 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v4, ptr %v4, ptr %v4, i32 %t68, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d147, i32 0, i32 1) }, { i64, ptr } %t67)
  store %"compiler/diagmsg:Msg" %t70, ptr %l14
  br label %bb3
bb3:
  %t71 = load %"compiler/diagmsg:Msg", ptr %l14
  store %"compiler/diagmsg:Msg" %t71, ptr %rv
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
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 570, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d148, i32 0, i32 1) }, { i64, ptr } { i64 87, ptr getelementptr inbounds (<{ i64, [87 x i8] }>, ptr @.d149, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eElemsType(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
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
  store i32 474, ptr %l2
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
  %t9 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d150, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d150, i32 0, i32 1) }, 0
  %t12 = extractvalue { i64, ptr } %a0, 1
  %t13 = extractvalue { i64, ptr } %a0, 0
  %t14 = add i64 %t10, %t13
  %t15 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d151, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d151, i32 0, i32 1) }, 0
  %t17 = add i64 %t14, %t16
  %t19 = extractvalue { i64, ptr } %t7, 1
  %t20 = extractvalue { i64, ptr } %t7, 0
  %t21 = add i64 %t17, %t20
  %t22 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d152, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d152, i32 0, i32 1) }, 0
  %t24 = add i64 %t21, %t23
  %t26 = extractvalue { i64, ptr } %t8, 1
  %t27 = extractvalue { i64, ptr } %t8, 0
  %t28 = add i64 %t24, %t27
  %t29 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d153, i32 0, i32 1) }, 1
  %t30 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d153, i32 0, i32 1) }, 0
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
  %t54 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t52, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d154, i32 0, i32 1) }, { i64, ptr } %t51)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eEmptyChar(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 68, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d155, i32 0, i32 1) }, { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d156, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrorOutsideFunction(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 636, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d157, i32 0, i32 1) }, { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d158, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrorWordInUse(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 231, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d159, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d159, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d160, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d160, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d161, i32 0, i32 1) }, { i64, ptr } %t31)
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
  store i32 637, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d162, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d162, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 68, ptr getelementptr inbounds (<{ i64, [68 x i8] }>, ptr @.d163, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 68, ptr getelementptr inbounds (<{ i64, [68 x i8] }>, ptr @.d163, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d164, i32 0, i32 1) }, { i64, ptr } %t31)
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
  store i32 78, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d165, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d165, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d166, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d166, i32 0, i32 1) }, 0
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
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t38, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d167, i32 0, i32 1) }, { i64, ptr } %t37)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFactUndecided(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 871, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d168, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d168, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 103, ptr getelementptr inbounds (<{ i64, [103 x i8] }>, ptr @.d169, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 103, ptr getelementptr inbounds (<{ i64, [103 x i8] }>, ptr @.d169, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d170, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFromPayload(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 777, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 50, ptr getelementptr inbounds (<{ i64, [50 x i8] }>, ptr @.d171, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 50, ptr getelementptr inbounds (<{ i64, [50 x i8] }>, ptr @.d171, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d172, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d172, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d173, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d173, i32 0, i32 1) }, 0
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
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d174, i32 0, i32 1) }, { i64, ptr } %t41)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFuncDeclMismatch(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca i64
  %l11 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 173, ptr %l3
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
  %t9 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d175, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d175, i32 0, i32 1) }, 0
  %t12 = extractvalue { i64, ptr } %a0, 1
  %t13 = extractvalue { i64, ptr } %a0, 0
  %t14 = add i64 %t10, %t13
  %t15 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d176, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d176, i32 0, i32 1) }, 0
  %t17 = add i64 %t14, %t16
  %t19 = extractvalue { i64, ptr } %a1, 1
  %t20 = extractvalue { i64, ptr } %a1, 0
  %t21 = add i64 %t17, %t20
  %t22 = extractvalue { i64, ptr } { i64 57, ptr getelementptr inbounds (<{ i64, [57 x i8] }>, ptr @.d177, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 57, ptr getelementptr inbounds (<{ i64, [57 x i8] }>, ptr @.d177, i32 0, i32 1) }, 0
  %t24 = add i64 %t21, %t23
  %t26 = extractvalue { i64, ptr } %a2, 1
  %t27 = extractvalue { i64, ptr } %a2, 0
  %t28 = add i64 %t24, %t27
  %t29 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d178, i32 0, i32 1) }, 1
  %t30 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d178, i32 0, i32 1) }, 0
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
  %t54 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, i32 %t52, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d179, i32 0, i32 1) }, { i64, ptr } %t51)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFuncTypeBeyond(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
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
  store i32 675, ptr %l3
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
  %t10 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d180, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d180, i32 0, i32 1) }, 0
  %t13 = extractvalue { i64, ptr } %a0, 1
  %t14 = extractvalue { i64, ptr } %a0, 0
  %t15 = add i64 %t11, %t14
  %t16 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d181, i32 0, i32 1) }, 1
  %t17 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d181, i32 0, i32 1) }, 0
  %t18 = add i64 %t15, %t17
  %t20 = extractvalue { i64, ptr } %a1, 1
  %t21 = extractvalue { i64, ptr } %a1, 0
  %t22 = add i64 %t18, %t21
  %t23 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d182, i32 0, i32 1) }, 1
  %t24 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d182, i32 0, i32 1) }, 0
  %t25 = add i64 %t22, %t24
  %t27 = extractvalue { i64, ptr } %t8, 1
  %t28 = extractvalue { i64, ptr } %t8, 0
  %t29 = add i64 %t25, %t28
  %t30 = extractvalue { i64, ptr } { i64 60, ptr getelementptr inbounds (<{ i64, [60 x i8] }>, ptr @.d183, i32 0, i32 1) }, 1
  %t31 = extractvalue { i64, ptr } { i64 60, ptr getelementptr inbounds (<{ i64, [60 x i8] }>, ptr @.d183, i32 0, i32 1) }, 0
  %t32 = add i64 %t29, %t31
  %t34 = extractvalue { i64, ptr } %t9, 1
  %t35 = extractvalue { i64, ptr } %t9, 0
  %t36 = add i64 %t32, %t35
  %t37 = extractvalue { i64, ptr } { i64 76, ptr getelementptr inbounds (<{ i64, [76 x i8] }>, ptr @.d184, i32 0, i32 1) }, 1
  %t38 = extractvalue { i64, ptr } { i64 76, ptr getelementptr inbounds (<{ i64, [76 x i8] }>, ptr @.d184, i32 0, i32 1) }, 0
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
  %t64 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, i32 %t62, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d185, i32 0, i32 1) }, { i64, ptr } %t61)
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
  store i32 12, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d186, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d186, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 98, ptr getelementptr inbounds (<{ i64, [98 x i8] }>, ptr @.d187, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 98, ptr getelementptr inbounds (<{ i64, [98 x i8] }>, ptr @.d187, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d188, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFuzzTimeAlone(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 10, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d189, i32 0, i32 1) }, { i64, ptr } { i64 60, ptr getelementptr inbounds (<{ i64, [60 x i8] }>, ptr @.d190, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGenContractNeedsArgumentError(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
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
  %t8 = extractvalue { i64, ptr } %a0, 1
  %t9 = extractvalue { i64, ptr } %a0, 0
  %t10 = extractvalue { i64, ptr } { i64 141, ptr getelementptr inbounds (<{ i64, [141 x i8] }>, ptr @.d191, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 141, ptr getelementptr inbounds (<{ i64, [141 x i8] }>, ptr @.d191, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d192, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGenCopyDestruct(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 283, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
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
  %t10 = extractvalue { i64, ptr } { i64 137, ptr getelementptr inbounds (<{ i64, [137 x i8] }>, ptr @.d193, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 137, ptr getelementptr inbounds (<{ i64, [137 x i8] }>, ptr @.d193, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d194, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGenUnique(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 282, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
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
  %t10 = extractvalue { i64, ptr } { i64 110, ptr getelementptr inbounds (<{ i64, [110 x i8] }>, ptr @.d195, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 110, ptr getelementptr inbounds (<{ i64, [110 x i8] }>, ptr @.d195, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d196, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGlobalReadsItself(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 750, ptr %l2
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
  %t11 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d197, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d197, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t15 = extractvalue { i64, ptr } %a1, 1
  %t16 = extractvalue { i64, ptr } %a1, 0
  %t17 = add i64 %t13, %t16
  %t18 = extractvalue { i64, ptr } { i64 48, ptr getelementptr inbounds (<{ i64, [48 x i8] }>, ptr @.d198, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 48, ptr getelementptr inbounds (<{ i64, [48 x i8] }>, ptr @.d198, i32 0, i32 1) }, 0
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
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t38, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d199, i32 0, i32 1) }, { i64, ptr } %t37)
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
  store i32 751, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 71, ptr getelementptr inbounds (<{ i64, [71 x i8] }>, ptr @.d200, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 71, ptr getelementptr inbounds (<{ i64, [71 x i8] }>, ptr @.d200, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d201, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImmutable(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 408, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
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
  %t10 = extractvalue { i64, ptr } { i64 68, ptr getelementptr inbounds (<{ i64, [68 x i8] }>, ptr @.d202, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 68, ptr getelementptr inbounds (<{ i64, [68 x i8] }>, ptr @.d202, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d203, i32 0, i32 1) }, { i64, ptr } %t27)
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
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 97, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d204, i32 0, i32 1) }, { i64, ptr } { i64 97, ptr getelementptr inbounds (<{ i64, [97 x i8] }>, ptr @.d205, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eIndexOutOfRange(ptr %v0, i64 %a0, i64 %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 397, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d206, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d206, i32 0, i32 1) }, 0
  %t11 = call i64 @__olang_fmt_i64(ptr null, i64 %a0)
  %t12 = add i64 %t9, %t11
  %t13 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d207, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d207, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t17 = call i64 @__olang_fmt_i64(ptr null, i64 %a1)
  %t18 = add i64 %t15, %t17
  %t19 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d208, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d208, i32 0, i32 1) }, 0
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
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 %t42, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d209, i32 0, i32 1) }, { i64, ptr } %t41)
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
  store i32 573, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
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
  %t8 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t6, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d210, i32 0, i32 1) })
  store i1 %t8, ptr %l5
  br label %bb3
bb3:
  %t9 = load i1, ptr %l5, !tbaa !21
  %t10 = xor i1 %t9, true
  br i1 %t10, label %bb4, label %bb5
bb4:
  %t12 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t13 = extractvalue { i64, ptr } { i64 50, ptr getelementptr inbounds (<{ i64, [50 x i8] }>, ptr @.d211, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 50, ptr getelementptr inbounds (<{ i64, [50 x i8] }>, ptr @.d211, i32 0, i32 1) }, 0
  %t16 = extractvalue { i64, ptr } %t12, 1
  %t17 = extractvalue { i64, ptr } %t12, 0
  %t18 = add i64 %t14, %t17
  %t19 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d212, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d212, i32 0, i32 1) }, 0
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
  store { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d213, i32 0, i32 1) }, ptr %l7, !tbaa !27
  br label %bb6
bb6:
  %t35 = extractvalue { i64, ptr } { i64 107, ptr getelementptr inbounds (<{ i64, [107 x i8] }>, ptr @.d214, i32 0, i32 1) }, 1
  %t36 = extractvalue { i64, ptr } { i64 107, ptr getelementptr inbounds (<{ i64, [107 x i8] }>, ptr @.d214, i32 0, i32 1) }, 0
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
  %t56 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t58 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t56, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d215, i32 0, i32 1) }, { i64, ptr } %t55)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eIsNullOfValue(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
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
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 62, ptr getelementptr inbounds (<{ i64, [62 x i8] }>, ptr @.d216, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 62, ptr getelementptr inbounds (<{ i64, [62 x i8] }>, ptr @.d216, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d217, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eJoinWithoutSpawn(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 642, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d218, i32 0, i32 1) }, { i64, ptr } { i64 49, ptr getelementptr inbounds (<{ i64, [49 x i8] }>, ptr @.d219, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLambdaResultUninferable(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 691, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d220, i32 0, i32 1) }, { i64, ptr } { i64 54, ptr getelementptr inbounds (<{ i64, [54 x i8] }>, ptr @.d221, i32 0, i32 1) })
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
  store i32 862, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d222, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d222, i32 0, i32 1) }, 0
  %t11 = call i64 @__olang_fmt_i64(ptr null, i64 %a0)
  %t12 = add i64 %t9, %t11
  %t13 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d223, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d223, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t17 = call i64 @__olang_fmt_i64(ptr null, i64 %a1)
  %t18 = add i64 %t15, %t17
  %t19 = extractvalue { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d224, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d224, i32 0, i32 1) }, 0
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
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 %t42, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d225, i32 0, i32 1) }, { i64, ptr } %t41)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLenShape(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 244, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d226, i32 0, i32 1) }, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d227, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLineBodyOnLine(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 37, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d228, i32 0, i32 1) }, { i64, ptr } { i64 72, ptr getelementptr inbounds (<{ i64, [72 x i8] }>, ptr @.d229, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLinkFailed(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 56, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d230, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d230, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d231, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d231, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d232, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLocalUnusedBare(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 313, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
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
  %t10 = extractvalue { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d233, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d233, i32 0, i32 1) }, 0
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMatchLengthUncovered(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 469, ptr %l2
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
  %t14 = extractvalue { i64, ptr } { i64 80, ptr getelementptr inbounds (<{ i64, [80 x i8] }>, ptr @.d236, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 80, ptr getelementptr inbounds (<{ i64, [80 x i8] }>, ptr @.d236, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d237, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d237, i32 0, i32 1) }, 0
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
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d238, i32 0, i32 1) }, { i64, ptr } %t41)
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
  store i32 401, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d239, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d239, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d240, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d240, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d241, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d241, i32 0, i32 1) }, 0
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
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d242, i32 0, i32 1) }, { i64, ptr } %t41)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMethodInUse(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 310, ptr %l2
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
  %t11 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d243, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d243, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t15 = extractvalue { i64, ptr } %a1, 1
  %t16 = extractvalue { i64, ptr } %a1, 0
  %t17 = add i64 %t13, %t16
  %t18 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d244, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d244, i32 0, i32 1) }, 0
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
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t38, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d245, i32 0, i32 1) }, { i64, ptr } %t37)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMethodNotInherited(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 532, ptr %l2
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
  %t11 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d246, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d246, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t15 = extractvalue { i64, ptr } %a1, 1
  %t16 = extractvalue { i64, ptr } %a1, 0
  %t17 = add i64 %t13, %t16
  %t18 = extractvalue { i64, ptr } { i64 73, ptr getelementptr inbounds (<{ i64, [73 x i8] }>, ptr @.d247, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 73, ptr getelementptr inbounds (<{ i64, [73 x i8] }>, ptr @.d247, i32 0, i32 1) }, 0
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMissingTypeArgs(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 150, ptr %l2
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
  %t11 = extractvalue { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d249, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d249, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t15 = extractvalue { i64, ptr } %a1, 1
  %t16 = extractvalue { i64, ptr } %a1, 0
  %t17 = add i64 %t13, %t16
  %t18 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d250, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d250, i32 0, i32 1) }, 0
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
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t38, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d251, i32 0, i32 1) }, { i64, ptr } %t37)
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
  %t10 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d252, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d252, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d253, i32 0, i32 1) }, { i64, ptr } %t27)
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
  store i32 113, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
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
  %t10 = extractvalue { i64, ptr } { i64 57, ptr getelementptr inbounds (<{ i64, [57 x i8] }>, ptr @.d254, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 57, ptr getelementptr inbounds (<{ i64, [57 x i8] }>, ptr @.d254, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d255, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNarrowNotNumber(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 153, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d256, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d256, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d257, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d257, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d258, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNarrowedWrite(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
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
  store i32 498, ptr %l2
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
  %t10 = extractvalue { i64, ptr } { i64 68, ptr getelementptr inbounds (<{ i64, [68 x i8] }>, ptr @.d259, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 68, ptr getelementptr inbounds (<{ i64, [68 x i8] }>, ptr @.d259, i32 0, i32 1) }, 0
  %t13 = extractvalue { i64, ptr } %t6, 1
  %t14 = extractvalue { i64, ptr } %t6, 0
  %t15 = add i64 %t11, %t14
  %t16 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d260, i32 0, i32 1) }, 1
  %t17 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d260, i32 0, i32 1) }, 0
  %t18 = add i64 %t15, %t17
  %t20 = extractvalue { i64, ptr } %t7, 1
  %t21 = extractvalue { i64, ptr } %t7, 0
  %t22 = add i64 %t18, %t21
  %t23 = extractvalue { i64, ptr } { i64 76, ptr getelementptr inbounds (<{ i64, [76 x i8] }>, ptr @.d261, i32 0, i32 1) }, 1
  %t24 = extractvalue { i64, ptr } { i64 76, ptr getelementptr inbounds (<{ i64, [76 x i8] }>, ptr @.d261, i32 0, i32 1) }, 0
  %t25 = add i64 %t22, %t24
  %t27 = extractvalue { i64, ptr } %t8, 1
  %t28 = extractvalue { i64, ptr } %t8, 0
  %t29 = add i64 %t25, %t28
  %t30 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d262, i32 0, i32 1) }, 1
  %t31 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d262, i32 0, i32 1) }, 0
  %t32 = add i64 %t29, %t31
  %t34 = extractvalue { i64, ptr } %t9, 1
  %t35 = extractvalue { i64, ptr } %t9, 0
  %t36 = add i64 %t32, %t35
  %t37 = extractvalue { i64, ptr } { i64 63, ptr getelementptr inbounds (<{ i64, [63 x i8] }>, ptr @.d263, i32 0, i32 1) }, 1
  %t38 = extractvalue { i64, ptr } { i64 63, ptr getelementptr inbounds (<{ i64, [63 x i8] }>, ptr @.d263, i32 0, i32 1) }, 0
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
  %t64 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t62, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d264, i32 0, i32 1) }, { i64, ptr } %t61)
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

define dso_local i1 @compiler_2fmsgs_2eNear(ptr %v0, { i64, ptr } %a0, i64 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l8 = alloca i1
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
  %t6 = add i64 %t4, 2
  %t8 = sdiv i64 %t6, 3
  %t11 = icmp sle i64 %t1, %t8
  br i1 %t11, label %bb1, label %bb2
bb1:
  %t13 = load i64, ptr %l1, !tbaa !24
  %t14 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t14, 0
  %t19 = icmp slt i64 %t13, %t16
  store i1 %t19, ptr %l8, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb3
bb3:
  %t21 = load i1, ptr %l8, !tbaa !21
  store i1 %t21, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNesting(ptr %v0, i64 %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 80, ptr %l1
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
  %t7 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d265, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d265, i32 0, i32 1) }, 0
  %t10 = call i64 @__olang_fmt_i64(ptr null, i64 %a0)
  %t11 = add i64 %t8, %t10
  %t12 = extractvalue { i64, ptr } { i64 48, ptr getelementptr inbounds (<{ i64, [48 x i8] }>, ptr @.d266, i32 0, i32 1) }, 1
  %t13 = extractvalue { i64, ptr } { i64 48, ptr getelementptr inbounds (<{ i64, [48 x i8] }>, ptr @.d266, i32 0, i32 1) }, 0
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
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d267, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoSpec(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 39, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d268, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d268, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d269, i32 0, i32 1) }, { i64, ptr } %t27)
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
  store i32 452, ptr %l3
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
  %t12 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d270, i32 0, i32 1) }, 1
  %t13 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d270, i32 0, i32 1) }, 0
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
  %t42 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, i32 %t40, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d271, i32 0, i32 1) }, { i64, ptr } %t39)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoreturnErrors(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 631, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d272, i32 0, i32 1) }, { i64, ptr } { i64 90, ptr getelementptr inbounds (<{ i64, [90 x i8] }>, ptr @.d273, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotAStatement(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 578, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d274, i32 0, i32 1) }, { i64, ptr } { i64 78, ptr getelementptr inbounds (<{ i64, [78 x i8] }>, ptr @.d275, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotExtendedOp(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca i64
  %l11 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 457, ptr %l3
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
  %t12 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d276, i32 0, i32 1) }, 1
  %t13 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d276, i32 0, i32 1) }, 0
  %t14 = add i64 %t11, %t13
  %t16 = extractvalue { i64, ptr } %a1, 1
  %t17 = extractvalue { i64, ptr } %a1, 0
  %t18 = add i64 %t14, %t17
  %t19 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d277, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d277, i32 0, i32 1) }, 0
  %t21 = add i64 %t18, %t20
  %t23 = extractvalue { i64, ptr } %a2, 1
  %t24 = extractvalue { i64, ptr } %a2, 0
  %t25 = add i64 %t21, %t24
  %t26 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d278, i32 0, i32 1) }, 1
  %t27 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d278, i32 0, i32 1) }, 0
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
  %t50 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, i32 %t48, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d279, i32 0, i32 1) }, { i64, ptr } %t47)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteCondValue(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 742, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d280, i32 0, i32 1) }, { i64, ptr } { i64 111, ptr getelementptr inbounds (<{ i64, [111 x i8] }>, ptr @.d281, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteContractCondition(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 783, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d282, i32 0, i32 1) }, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d283, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteDeclareWritable(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca i64
  %l11 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 433, ptr %l3
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
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d284, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d284, i32 0, i32 1) }, 0
  %t12 = extractvalue { i64, ptr } %a0, 1
  %t13 = extractvalue { i64, ptr } %a0, 0
  %t14 = add i64 %t10, %t13
  %t15 = extractvalue { i64, ptr } { i64 43, ptr getelementptr inbounds (<{ i64, [43 x i8] }>, ptr @.d285, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 43, ptr getelementptr inbounds (<{ i64, [43 x i8] }>, ptr @.d285, i32 0, i32 1) }, 0
  %t17 = add i64 %t14, %t16
  %t19 = extractvalue { i64, ptr } %a1, 1
  %t20 = extractvalue { i64, ptr } %a1, 0
  %t21 = add i64 %t17, %t20
  %t22 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d286, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d286, i32 0, i32 1) }, 0
  %t24 = add i64 %t21, %t23
  %t26 = extractvalue { i64, ptr } %a2, 1
  %t27 = extractvalue { i64, ptr } %a2, 0
  %t28 = add i64 %t24, %t27
  %t29 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d287, i32 0, i32 1) }, 1
  %t30 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d287, i32 0, i32 1) }, 0
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
  %t54 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, i32 %t52, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d288, i32 0, i32 1) }, { i64, ptr } %t51)
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
  store i32 432, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
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
  %t10 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d289, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d289, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d290, i32 0, i32 1) }, { i64, ptr } %t27)
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
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 345, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d291, i32 0, i32 1) }, { i64, ptr } { i64 107, ptr getelementptr inbounds (<{ i64, [107 x i8] }>, ptr @.d292, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteLiteralLocal(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3) #0 {
entry:
  %l4 = alloca i32
  %l5 = alloca i64
  %l13 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 434, ptr %l4
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
  %t10 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d293, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d293, i32 0, i32 1) }, 0
  %t13 = extractvalue { i64, ptr } %a0, 1
  %t14 = extractvalue { i64, ptr } %a0, 0
  %t15 = add i64 %t11, %t14
  %t16 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d294, i32 0, i32 1) }, 1
  %t17 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d294, i32 0, i32 1) }, 0
  %t18 = add i64 %t15, %t17
  %t20 = extractvalue { i64, ptr } %a1, 1
  %t21 = extractvalue { i64, ptr } %a1, 0
  %t22 = add i64 %t18, %t21
  %t23 = extractvalue { i64, ptr } { i64 61, ptr getelementptr inbounds (<{ i64, [61 x i8] }>, ptr @.d295, i32 0, i32 1) }, 1
  %t24 = extractvalue { i64, ptr } { i64 61, ptr getelementptr inbounds (<{ i64, [61 x i8] }>, ptr @.d295, i32 0, i32 1) }, 0
  %t25 = add i64 %t22, %t24
  %t27 = extractvalue { i64, ptr } %a2, 1
  %t28 = extractvalue { i64, ptr } %a2, 0
  %t29 = add i64 %t25, %t28
  %t30 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d296, i32 0, i32 1) }, 1
  %t31 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d296, i32 0, i32 1) }, 0
  %t32 = add i64 %t29, %t31
  %t34 = extractvalue { i64, ptr } %a3, 1
  %t35 = extractvalue { i64, ptr } %a3, 0
  %t36 = add i64 %t32, %t35
  %t37 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d297, i32 0, i32 1) }, 1
  %t38 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d297, i32 0, i32 1) }, 0
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
  %t64 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v4, ptr %v4, ptr %v4, i32 %t62, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d298, i32 0, i32 1) }, { i64, ptr } %t61)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteUnassignedDecl(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 422, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d299, i32 0, i32 1) }, { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d300, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteVecGrewHere(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 413, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d301, i32 0, i32 1) }, { i64, ptr } { i64 118, ptr getelementptr inbounds (<{ i64, [118 x i8] }>, ptr @.d302, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteVecTaskHolds(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 416, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d303, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d303, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d304, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d304, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d305, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteZeroByReference(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 420, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d306, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d306, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 49, ptr getelementptr inbounds (<{ i64, [49 x i8] }>, ptr @.d307, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 49, ptr getelementptr inbounds (<{ i64, [49 x i8] }>, ptr @.d307, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d308, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteZeroReferenceHasOne(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 421, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d309, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d309, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d310, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d310, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d311, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d311, i32 0, i32 1) }, 0
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
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d312, i32 0, i32 1) }, { i64, ptr } %t41)
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
  store i32 440, ptr %l2
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
  %t11 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d313, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d313, i32 0, i32 1) }, 0
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
  %t36 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t34, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d314, i32 0, i32 1) }, { i64, ptr } %t33)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eOperatorCallFails(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
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
  %t7 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d315, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d315, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d316, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d316, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d317, i32 0, i32 1) }, { i64, ptr } %t31)
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
  store i32 288, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
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
  %t10 = extractvalue { i64, ptr } { i64 91, ptr getelementptr inbounds (<{ i64, [91 x i8] }>, ptr @.d318, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 91, ptr getelementptr inbounds (<{ i64, [91 x i8] }>, ptr @.d318, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d319, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePackedDestruct(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 263, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d320, i32 0, i32 1) }, { i64, ptr } { i64 62, ptr getelementptr inbounds (<{ i64, [62 x i8] }>, ptr @.d321, i32 0, i32 1) })
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
  store i32 261, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 51, ptr getelementptr inbounds (<{ i64, [51 x i8] }>, ptr @.d322, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 51, ptr getelementptr inbounds (<{ i64, [51 x i8] }>, ptr @.d322, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d323, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d323, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 137, ptr getelementptr inbounds (<{ i64, [137 x i8] }>, ptr @.d324, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 137, ptr getelementptr inbounds (<{ i64, [137 x i8] }>, ptr @.d324, i32 0, i32 1) }, 0
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
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d325, i32 0, i32 1) }, { i64, ptr } %t41)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePackedNotStruct(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 260, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d326, i32 0, i32 1) }, { i64, ptr } { i64 89, ptr getelementptr inbounds (<{ i64, [89 x i8] }>, ptr @.d327, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePatPositionAfterName(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 480, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d328, i32 0, i32 1) }, { i64, ptr } { i64 96, ptr getelementptr inbounds (<{ i64, [96 x i8] }>, ptr @.d329, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePatternType(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 508, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d330, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d330, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d331, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d331, i32 0, i32 1) }, 0
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
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t38, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d332, i32 0, i32 1) }, { i64, ptr } %t37)
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
  store i32 805, ptr %l2
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
  %t13 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d333, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d333, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t17 = extractvalue { i64, ptr } %t7, 1
  %t18 = extractvalue { i64, ptr } %t7, 0
  %t19 = add i64 %t15, %t18
  %t20 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d334, i32 0, i32 1) }, 1
  %t21 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d334, i32 0, i32 1) }, 0
  %t22 = add i64 %t19, %t21
  %t24 = extractvalue { i64, ptr } %t8, 1
  %t25 = extractvalue { i64, ptr } %t8, 0
  %t26 = add i64 %t22, %t25
  %t27 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d335, i32 0, i32 1) }, 1
  %t28 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d335, i32 0, i32 1) }, 0
  %t29 = add i64 %t26, %t28
  %t31 = extractvalue { i64, ptr } %t9, 1
  %t32 = extractvalue { i64, ptr } %t9, 0
  %t33 = add i64 %t29, %t32
  %t34 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d336, i32 0, i32 1) }, 1
  %t35 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d336, i32 0, i32 1) }, 0
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
  %t60 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t58, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d337, i32 0, i32 1) }, { i64, ptr } %t57)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePositionalAfterNamed(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 383, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d338, i32 0, i32 1) }, { i64, ptr } { i64 59, ptr getelementptr inbounds (<{ i64, [59 x i8] }>, ptr @.d339, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePromiseBorrowsBoth(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 684, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d340, i32 0, i32 1) }, { i64, ptr } { i64 113, ptr getelementptr inbounds (<{ i64, [113 x i8] }>, ptr @.d341, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePromiseKeepsPath(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 688, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 53, ptr getelementptr inbounds (<{ i64, [53 x i8] }>, ptr @.d342, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 53, ptr getelementptr inbounds (<{ i64, [53 x i8] }>, ptr @.d342, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d343, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d343, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d344, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d344, i32 0, i32 1) }, 0
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
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d345, i32 0, i32 1) }, { i64, ptr } %t41)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePromiseNoParam(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 679, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
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
  %t13 = extractvalue { i64, ptr } { i64 99, ptr getelementptr inbounds (<{ i64, [99 x i8] }>, ptr @.d347, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 99, ptr getelementptr inbounds (<{ i64, [99 x i8] }>, ptr @.d347, i32 0, i32 1) }, 0
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePromiseTwice(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 680, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
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
  %t13 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d350, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d350, i32 0, i32 1) }, 0
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eProtocolPrivate(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3) #0 {
entry:
  %l4 = alloca i32
  %l5 = alloca i64
  %l13 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 287, ptr %l4
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
  %t13 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d352, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d352, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t17 = extractvalue { i64, ptr } %a1, 1
  %t18 = extractvalue { i64, ptr } %a1, 0
  %t19 = add i64 %t15, %t18
  %t20 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d353, i32 0, i32 1) }, 1
  %t21 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d353, i32 0, i32 1) }, 0
  %t22 = add i64 %t19, %t21
  %t24 = extractvalue { i64, ptr } %a2, 1
  %t25 = extractvalue { i64, ptr } %a2, 0
  %t26 = add i64 %t22, %t25
  %t27 = extractvalue { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d354, i32 0, i32 1) }, 1
  %t28 = extractvalue { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d354, i32 0, i32 1) }, 0
  %t29 = add i64 %t26, %t28
  %t31 = extractvalue { i64, ptr } %a3, 1
  %t32 = extractvalue { i64, ptr } %a3, 0
  %t33 = add i64 %t29, %t32
  %t34 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d355, i32 0, i32 1) }, 1
  %t35 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d355, i32 0, i32 1) }, 0
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
  %t60 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v4, ptr %v4, ptr %v4, i32 %t58, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d356, i32 0, i32 1) }, { i64, ptr } %t57)
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
  store i32 802, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 59, ptr getelementptr inbounds (<{ i64, [59 x i8] }>, ptr @.d357, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 59, ptr getelementptr inbounds (<{ i64, [59 x i8] }>, ptr @.d357, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d358, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d358, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d359, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eRaiseWholeType(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i32
  %l2 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l16 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i32 820, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
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
  store { i64, ptr } %t7, ptr %l5, !tbaa !27
  %t8 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  %t12 = sub i64 %t10, 1
  store i64 %t12, ptr %l8, !tbaa !24
  %t13 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t13, 0
  store i64 %t14, ptr %l9, !tbaa !24
  %t15 = icmp sge i64 1, 0
  br i1 %t15, label %bb3, label %bb4
bb3:
  %t17 = load i64, ptr %l8, !tbaa !24
  %t18 = icmp sle i64 1, %t17
  br i1 %t18, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_d8715251471fb7e5_1e2086cef33ddcd1)
  unreachable
bb5:
  %t20 = load i64, ptr %l8, !tbaa !24
  %t21 = load i64, ptr %l9, !tbaa !24
  %t22 = icmp sle i64 %t20, %t21
  br i1 %t22, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_d8715251471fb7e5_1e2086cef33ddcd1)
  unreachable
bb7:
  %t24 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = load i64, ptr %l8, !tbaa !24
  %t27 = getelementptr i8, ptr %t25, i64 1
  %t28 = sub i64 %t26, 1
  %t29 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t30 = insertvalue { i64, ptr } %t29, ptr %t27, 1
  %t31 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t31, 1
  %t33 = extractvalue { i64, ptr } %t31, 0
  %t34 = extractvalue { i64, ptr } { i64 55, ptr getelementptr inbounds (<{ i64, [55 x i8] }>, ptr @.d360, i32 0, i32 1) }, 1
  %t35 = extractvalue { i64, ptr } { i64 55, ptr getelementptr inbounds (<{ i64, [55 x i8] }>, ptr @.d360, i32 0, i32 1) }, 0
  %t36 = add i64 %t33, %t35
  %t38 = extractvalue { i64, ptr } %t30, 1
  %t39 = extractvalue { i64, ptr } %t30, 0
  %t40 = add i64 %t36, %t39
  %t41 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d361, i32 0, i32 1) }, 1
  %t42 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d361, i32 0, i32 1) }, 0
  %t43 = add i64 %t40, %t42
  %t44 = load i64, ptr %l2
  %t45 = inttoptr i64 %t44 to ptr
  %t46 = call ptr @__olang_scope_alloc(ptr %t45, i64 %t43)
  call void @olang_textcopy(ptr %t46, ptr %t32, i64 %t33)
  %t47 = getelementptr i8, ptr %t46, i64 %t33
  call void @olang_textcopy(ptr %t47, ptr %t34, i64 %t35)
  %t48 = getelementptr i8, ptr %t47, i64 %t35
  call void @olang_textcopy(ptr %t48, ptr %t38, i64 %t39)
  %t49 = getelementptr i8, ptr %t48, i64 %t39
  call void @olang_textcopy(ptr %t49, ptr %t41, i64 %t42)
  %t50 = insertvalue { i64, ptr } undef, i64 %t43, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr %t46, 1
  %t53 = load i64, ptr %l2
  %t54 = inttoptr i64 %t53 to ptr
  %t55 = extractvalue { i64, ptr } %t51, 0
  %t56 = extractvalue { i64, ptr } %t51, 1
  %t57 = mul i64 %t55, 1
  %t58 = call ptr @__olang_scope_alloc(ptr %t54, i64 %t57)
  call void @llvm.memcpy.p0.p0.i64(ptr %t58, ptr %t56, i64 %t57, i1 false)
  %t59 = insertvalue { i64, ptr } undef, i64 %t55, 0
  %t60 = insertvalue { i64, ptr } %t59, ptr %t58, 1
  %t61 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t63 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t61, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d362, i32 0, i32 1) }, { i64, ptr } %t60)
  store %"compiler/diagmsg:Msg" %t63, ptr %l16
  br label %bb9
bb8:
  call void @__olang_check_failed(ptr @olang_loc_d8715251471fb7e5_1e2086cef33ddcd1)
  unreachable
bb9:
  %t64 = load %"compiler/diagmsg:Msg", ptr %l16
  store %"compiler/diagmsg:Msg" %t64, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadOnlyCopyArg(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3) #0 {
entry:
  %l4 = alloca i32
  %l5 = alloca i64
  %l13 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 341, ptr %l4
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
  %t10 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d363, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d363, i32 0, i32 1) }, 0
  %t13 = extractvalue { i64, ptr } %a0, 1
  %t14 = extractvalue { i64, ptr } %a0, 0
  %t15 = add i64 %t11, %t14
  %t16 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d364, i32 0, i32 1) }, 1
  %t17 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d364, i32 0, i32 1) }, 0
  %t18 = add i64 %t15, %t17
  %t20 = extractvalue { i64, ptr } %a1, 1
  %t21 = extractvalue { i64, ptr } %a1, 0
  %t22 = add i64 %t18, %t21
  %t23 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d365, i32 0, i32 1) }, 1
  %t24 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d365, i32 0, i32 1) }, 0
  %t25 = add i64 %t22, %t24
  %t27 = extractvalue { i64, ptr } %a2, 1
  %t28 = extractvalue { i64, ptr } %a2, 0
  %t29 = add i64 %t25, %t28
  %t30 = extractvalue { i64, ptr } { i64 49, ptr getelementptr inbounds (<{ i64, [49 x i8] }>, ptr @.d366, i32 0, i32 1) }, 1
  %t31 = extractvalue { i64, ptr } { i64 49, ptr getelementptr inbounds (<{ i64, [49 x i8] }>, ptr @.d366, i32 0, i32 1) }, 0
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
  %t60 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v4, ptr %v4, ptr %v4, i32 %t58, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d367, i32 0, i32 1) }, { i64, ptr } %t57)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadOnlyCopyLent(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 342, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 86, ptr getelementptr inbounds (<{ i64, [86 x i8] }>, ptr @.d368, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 86, ptr getelementptr inbounds (<{ i64, [86 x i8] }>, ptr @.d368, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d369, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadOnlyFuncValue(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca i64
  %l11 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 344, ptr %l3
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
  %t12 = extractvalue { i64, ptr } { i64 49, ptr getelementptr inbounds (<{ i64, [49 x i8] }>, ptr @.d370, i32 0, i32 1) }, 1
  %t13 = extractvalue { i64, ptr } { i64 49, ptr getelementptr inbounds (<{ i64, [49 x i8] }>, ptr @.d370, i32 0, i32 1) }, 0
  %t14 = add i64 %t11, %t13
  %t16 = extractvalue { i64, ptr } %a1, 1
  %t17 = extractvalue { i64, ptr } %a1, 0
  %t18 = add i64 %t14, %t17
  %t19 = extractvalue { i64, ptr } { i64 110, ptr getelementptr inbounds (<{ i64, [110 x i8] }>, ptr @.d371, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 110, ptr getelementptr inbounds (<{ i64, [110 x i8] }>, ptr @.d371, i32 0, i32 1) }, 0
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
  %t46 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, i32 %t44, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d372, i32 0, i32 1) }, { i64, ptr } %t43)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadOnlyToWritable(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 335, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d373, i32 0, i32 1) }, { i64, ptr } { i64 85, ptr getelementptr inbounds (<{ i64, [85 x i8] }>, ptr @.d374, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadUnassigned(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca i64
  %l11 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 705, ptr %l3
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
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d375, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d375, i32 0, i32 1) }, 0
  %t12 = extractvalue { i64, ptr } %a0, 1
  %t13 = extractvalue { i64, ptr } %a0, 0
  %t14 = add i64 %t10, %t13
  %t15 = extractvalue { i64, ptr } { i64 56, ptr getelementptr inbounds (<{ i64, [56 x i8] }>, ptr @.d376, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 56, ptr getelementptr inbounds (<{ i64, [56 x i8] }>, ptr @.d376, i32 0, i32 1) }, 0
  %t17 = add i64 %t14, %t16
  %t19 = extractvalue { i64, ptr } %a1, 1
  %t20 = extractvalue { i64, ptr } %a1, 0
  %t21 = add i64 %t17, %t20
  %t22 = extractvalue { i64, ptr } { i64 80, ptr getelementptr inbounds (<{ i64, [80 x i8] }>, ptr @.d377, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 80, ptr getelementptr inbounds (<{ i64, [80 x i8] }>, ptr @.d377, i32 0, i32 1) }, 0
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
  %t50 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, i32 %t48, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d378, i32 0, i32 1) }, { i64, ptr } %t47)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReferenceNarrowed(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 366, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d379, i32 0, i32 1) }, { i64, ptr } { i64 70, ptr getelementptr inbounds (<{ i64, [70 x i8] }>, ptr @.d380, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflCaseUnreachable(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 842, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d381, i32 0, i32 1) }, { i64, ptr } { i64 71, ptr getelementptr inbounds (<{ i64, [71 x i8] }>, ptr @.d382, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflFnList(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 860, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
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
  %t10 = extractvalue { i64, ptr } { i64 97, ptr getelementptr inbounds (<{ i64, [97 x i8] }>, ptr @.d383, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 97, ptr getelementptr inbounds (<{ i64, [97 x i8] }>, ptr @.d383, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d384, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflIndexRange(ptr %v0, i64 %a0, i64 %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 833, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d385, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d385, i32 0, i32 1) }, 0
  %t11 = call i64 @__olang_fmt_i64(ptr null, i64 %a0)
  %t12 = add i64 %t9, %t11
  %t13 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d386, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d386, i32 0, i32 1) }, 0
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
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 %t38, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d387, i32 0, i32 1) }, { i64, ptr } %t37)
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
  %t8 = extractvalue { i64, ptr } %a0, 1
  %t9 = extractvalue { i64, ptr } %a0, 0
  %t10 = extractvalue { i64, ptr } { i64 158, ptr getelementptr inbounds (<{ i64, [158 x i8] }>, ptr @.d388, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 158, ptr getelementptr inbounds (<{ i64, [158 x i8] }>, ptr @.d388, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d389, i32 0, i32 1) }, { i64, ptr } %t27)
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
  store i32 827, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
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
  %t10 = extractvalue { i64, ptr } { i64 125, ptr getelementptr inbounds (<{ i64, [125 x i8] }>, ptr @.d390, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 125, ptr getelementptr inbounds (<{ i64, [125 x i8] }>, ptr @.d390, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d391, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflNoType(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca i64
  %l11 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 844, ptr %l3
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
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d392, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d392, i32 0, i32 1) }, 0
  %t12 = extractvalue { i64, ptr } %a0, 1
  %t13 = extractvalue { i64, ptr } %a0, 0
  %t14 = add i64 %t10, %t13
  %t15 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d393, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d393, i32 0, i32 1) }, 0
  %t17 = add i64 %t14, %t16
  %t19 = extractvalue { i64, ptr } %a1, 1
  %t20 = extractvalue { i64, ptr } %a1, 0
  %t21 = add i64 %t17, %t20
  %t22 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d394, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d394, i32 0, i32 1) }, 0
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
  %t50 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, i32 %t48, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d395, i32 0, i32 1) }, { i64, ptr } %t47)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflTryList(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 835, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d396, i32 0, i32 1) }, { i64, ptr } { i64 102, ptr getelementptr inbounds (<{ i64, [102 x i8] }>, ptr @.d397, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflTypeNotValue(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
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
  %t22 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t20, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d398, i32 0, i32 1) }, { i64, ptr } %t19)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eRestNotHere(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 470, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d399, i32 0, i32 1) }, { i64, ptr } { i64 118, ptr getelementptr inbounds (<{ i64, [118 x i8] }>, ptr @.d400, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eRestTwice(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 471, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d401, i32 0, i32 1) }, { i64, ptr } { i64 76, ptr getelementptr inbounds (<{ i64, [76 x i8] }>, ptr @.d402, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReturnInCtor(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 627, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d403, i32 0, i32 1) }, { i64, ptr } { i64 77, ptr getelementptr inbounds (<{ i64, [77 x i8] }>, ptr @.d404, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReturnNeedsValue(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 635, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d405, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d405, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d406, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d406, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d407, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eScopeArgCount(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 455, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d408, i32 0, i32 1) }, { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d409, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eShadowsBuildConst(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 317, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
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
  %t10 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d410, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d410, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d411, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpawnArgTooShort(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 659, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d412, i32 0, i32 1) }, { i64, ptr } { i64 93, ptr getelementptr inbounds (<{ i64, [93 x i8] }>, ptr @.d413, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpawnFallible(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 648, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d414, i32 0, i32 1) }, { i64, ptr } { i64 89, ptr getelementptr inbounds (<{ i64, [89 x i8] }>, ptr @.d415, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpawnResultTooShort(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 666, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d416, i32 0, i32 1) }, { i64, ptr } { i64 81, ptr getelementptr inbounds (<{ i64, [81 x i8] }>, ptr @.d417, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpreadAlone(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 487, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d418, i32 0, i32 1) }, { i64, ptr } { i64 102, ptr getelementptr inbounds (<{ i64, [102 x i8] }>, ptr @.d419, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eStoredRefOutlived(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 567, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d420, i32 0, i32 1) }, { i64, ptr } { i64 114, ptr getelementptr inbounds (<{ i64, [114 x i8] }>, ptr @.d421, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTargetUnsupported(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 25, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d422, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d422, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 65, ptr getelementptr inbounds (<{ i64, [65 x i8] }>, ptr @.d423, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 65, ptr getelementptr inbounds (<{ i64, [65 x i8] }>, ptr @.d423, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d424, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTestTargetElsewhere(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 388, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d425, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d425, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 94, ptr getelementptr inbounds (<{ i64, [94 x i8] }>, ptr @.d426, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 94, ptr getelementptr inbounds (<{ i64, [94 x i8] }>, ptr @.d426, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d427, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTestTargetTwice(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 389, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d428, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d428, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 61, ptr getelementptr inbounds (<{ i64, [61 x i8] }>, ptr @.d429, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 61, ptr getelementptr inbounds (<{ i64, [61 x i8] }>, ptr @.d429, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d430, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTestTargetUnknownMeant(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 387, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 65, ptr getelementptr inbounds (<{ i64, [65 x i8] }>, ptr @.d431, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 65, ptr getelementptr inbounds (<{ i64, [65 x i8] }>, ptr @.d431, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d432, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d432, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d433, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d433, i32 0, i32 1) }, 0
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
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d434, i32 0, i32 1) }, { i64, ptr } %t41)
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
  store i32 713, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d435, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d435, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 72, ptr getelementptr inbounds (<{ i64, [72 x i8] }>, ptr @.d436, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 72, ptr getelementptr inbounds (<{ i64, [72 x i8] }>, ptr @.d436, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d437, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTopSetNoElse(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 712, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d438, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d438, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d439, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d439, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 67, ptr getelementptr inbounds (<{ i64, [67 x i8] }>, ptr @.d440, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 67, ptr getelementptr inbounds (<{ i64, [67 x i8] }>, ptr @.d440, i32 0, i32 1) }, 0
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
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d441, i32 0, i32 1) }, { i64, ptr } %t41)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTopSetTarget(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 708, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d442, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d442, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 108, ptr getelementptr inbounds (<{ i64, [108 x i8] }>, ptr @.d443, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 108, ptr getelementptr inbounds (<{ i64, [108 x i8] }>, ptr @.d443, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d444, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTraitExtendsItself(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 143, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
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
  %t10 = extractvalue { i64, ptr } { i64 45, ptr getelementptr inbounds (<{ i64, [45 x i8] }>, ptr @.d445, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 45, ptr getelementptr inbounds (<{ i64, [45 x i8] }>, ptr @.d445, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d446, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTryErrorNotDeclared(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 529, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
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
  %t10 = extractvalue { i64, ptr } { i64 87, ptr getelementptr inbounds (<{ i64, [87 x i8] }>, ptr @.d447, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 87, ptr getelementptr inbounds (<{ i64, [87 x i8] }>, ptr @.d447, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d448, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTupleNotAValue(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 443, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d449, i32 0, i32 1) }, { i64, ptr } { i64 111, ptr getelementptr inbounds (<{ i64, [111 x i8] }>, ptr @.d450, i32 0, i32 1) })
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeMismatch(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 331, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d451, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d451, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d452, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d452, i32 0, i32 1) }, 0
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
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t38, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d453, i32 0, i32 1) }, { i64, ptr } %t37)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeNameInUse(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 128, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d454, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d454, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d455, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d455, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d456, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeVarAsValue(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 157, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
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
  %t10 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d457, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d457, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d458, i32 0, i32 1) }, { i64, ptr } %t27)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeVarNamesType(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
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
  %t7 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d459, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d459, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 60, ptr getelementptr inbounds (<{ i64, [60 x i8] }>, ptr @.d460, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 60, ptr getelementptr inbounds (<{ i64, [60 x i8] }>, ptr @.d460, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d461, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUniqueAfter(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
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
  store i32 258, ptr %l2
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
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d462, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d462, i32 0, i32 1) }, 0
  %t12 = extractvalue { i64, ptr } %t6, 1
  %t13 = extractvalue { i64, ptr } %t6, 0
  %t14 = add i64 %t10, %t13
  %t15 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d463, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d463, i32 0, i32 1) }, 0
  %t17 = add i64 %t14, %t16
  %t19 = extractvalue { i64, ptr } %a1, 1
  %t20 = extractvalue { i64, ptr } %a1, 0
  %t21 = add i64 %t17, %t20
  %t22 = extractvalue { i64, ptr } { i64 90, ptr getelementptr inbounds (<{ i64, [90 x i8] }>, ptr @.d464, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 90, ptr getelementptr inbounds (<{ i64, [90 x i8] }>, ptr @.d464, i32 0, i32 1) }, 0
  %t24 = add i64 %t21, %t23
  %t26 = extractvalue { i64, ptr } %t8, 1
  %t27 = extractvalue { i64, ptr } %t8, 0
  %t28 = add i64 %t24, %t27
  %t29 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d465, i32 0, i32 1) }, 1
  %t30 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d465, i32 0, i32 1) }, 0
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
  %t54 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t52, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d466, i32 0, i32 1) }, { i64, ptr } %t51)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUniqueFill(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i32
  %l2 = alloca i64
  %l11 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i32 259, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
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
  %t9 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t10 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t11 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d467, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d467, i32 0, i32 1) }, 0
  %t14 = extractvalue { i64, ptr } %t6, 1
  %t15 = extractvalue { i64, ptr } %t6, 0
  %t16 = add i64 %t12, %t15
  %t17 = extractvalue { i64, ptr } { i64 51, ptr getelementptr inbounds (<{ i64, [51 x i8] }>, ptr @.d468, i32 0, i32 1) }, 1
  %t18 = extractvalue { i64, ptr } { i64 51, ptr getelementptr inbounds (<{ i64, [51 x i8] }>, ptr @.d468, i32 0, i32 1) }, 0
  %t19 = add i64 %t16, %t18
  %t21 = extractvalue { i64, ptr } %t7, 1
  %t22 = extractvalue { i64, ptr } %t7, 0
  %t23 = add i64 %t19, %t22
  %t24 = extractvalue { i64, ptr } { i64 54, ptr getelementptr inbounds (<{ i64, [54 x i8] }>, ptr @.d469, i32 0, i32 1) }, 1
  %t25 = extractvalue { i64, ptr } { i64 54, ptr getelementptr inbounds (<{ i64, [54 x i8] }>, ptr @.d469, i32 0, i32 1) }, 0
  %t26 = add i64 %t23, %t25
  %t28 = extractvalue { i64, ptr } %t8, 1
  %t29 = extractvalue { i64, ptr } %t8, 0
  %t30 = add i64 %t26, %t29
  %t31 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d470, i32 0, i32 1) }, 1
  %t32 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d470, i32 0, i32 1) }, 0
  %t33 = add i64 %t30, %t32
  %t35 = extractvalue { i64, ptr } %t9, 1
  %t36 = extractvalue { i64, ptr } %t9, 0
  %t37 = add i64 %t33, %t36
  %t38 = extractvalue { i64, ptr } { i64 54, ptr getelementptr inbounds (<{ i64, [54 x i8] }>, ptr @.d471, i32 0, i32 1) }, 1
  %t39 = extractvalue { i64, ptr } { i64 54, ptr getelementptr inbounds (<{ i64, [54 x i8] }>, ptr @.d471, i32 0, i32 1) }, 0
  %t40 = add i64 %t37, %t39
  %t42 = extractvalue { i64, ptr } %t10, 1
  %t43 = extractvalue { i64, ptr } %t10, 0
  %t44 = add i64 %t40, %t43
  %t45 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d472, i32 0, i32 1) }, 1
  %t46 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d472, i32 0, i32 1) }, 0
  %t47 = add i64 %t44, %t46
  %t48 = load i64, ptr %l2
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
  %t64 = load i64, ptr %l2
  %t65 = inttoptr i64 %t64 to ptr
  %t66 = extractvalue { i64, ptr } %t62, 0
  %t67 = extractvalue { i64, ptr } %t62, 1
  %t68 = mul i64 %t66, 1
  %t69 = call ptr @__olang_scope_alloc(ptr %t65, i64 %t68)
  call void @llvm.memcpy.p0.p0.i64(ptr %t69, ptr %t67, i64 %t68, i1 false)
  %t70 = insertvalue { i64, ptr } undef, i64 %t66, 0
  %t71 = insertvalue { i64, ptr } %t70, ptr %t69, 1
  %t72 = load i32, ptr %l1, !range !{i32 0, i32 884}
  %t74 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t72, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d473, i32 0, i32 1) }, { i64, ptr } %t71)
  store %"compiler/diagmsg:Msg" %t74, ptr %l11
  br label %bb3
bb3:
  %t75 = load %"compiler/diagmsg:Msg", ptr %l11
  store %"compiler/diagmsg:Msg" %t75, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUniqueImmutPart(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
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
  store i32 255, ptr %l2
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
  %t6 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t8 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t6, 1
  %t11 = extractvalue { i64, ptr } %t6, 0
  %t12 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d474, i32 0, i32 1) }, 1
  %t13 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d474, i32 0, i32 1) }, 0
  %t14 = add i64 %t11, %t13
  %t16 = extractvalue { i64, ptr } %a0, 1
  %t17 = extractvalue { i64, ptr } %a0, 0
  %t18 = add i64 %t14, %t17
  %t19 = extractvalue { i64, ptr } { i64 91, ptr getelementptr inbounds (<{ i64, [91 x i8] }>, ptr @.d475, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 91, ptr getelementptr inbounds (<{ i64, [91 x i8] }>, ptr @.d475, i32 0, i32 1) }, 0
  %t21 = add i64 %t18, %t20
  %t23 = extractvalue { i64, ptr } %t8, 1
  %t24 = extractvalue { i64, ptr } %t8, 0
  %t25 = add i64 %t21, %t24
  %t26 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d476, i32 0, i32 1) }, 1
  %t27 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d476, i32 0, i32 1) }, 0
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
  %t50 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t48, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d477, i32 0, i32 1) }, { i64, ptr } %t47)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownBuildName(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 135, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d478, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d478, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 54, ptr getelementptr inbounds (<{ i64, [54 x i8] }>, ptr @.d479, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 54, ptr getelementptr inbounds (<{ i64, [54 x i8] }>, ptr @.d479, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d480, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d480, i32 0, i32 1) }, 0
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
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d481, i32 0, i32 1) }, { i64, ptr } %t41)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownErrorType(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 124, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d482, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d482, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t15 = extractvalue { i64, ptr } %a1, 1
  %t16 = extractvalue { i64, ptr } %a1, 0
  %t17 = add i64 %t13, %t16
  %t18 = load i64, ptr %l3
  %t19 = inttoptr i64 %t18 to ptr
  %t20 = call ptr @__olang_scope_alloc(ptr %t19, i64 %t17)
  call void @olang_textcopy(ptr %t20, ptr %t8, i64 %t9)
  %t21 = getelementptr i8, ptr %t20, i64 %t9
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
  %t36 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t34, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d483, i32 0, i32 1) }, { i64, ptr } %t33)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownMethod(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca i64
  %l11 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 531, ptr %l3
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
  %t12 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d484, i32 0, i32 1) }, 1
  %t13 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d484, i32 0, i32 1) }, 0
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
  %t42 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v3, ptr %v3, ptr %v3, i32 %t40, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d485, i32 0, i32 1) }, { i64, ptr } %t39)
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
  store i32 117, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d486, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d486, i32 0, i32 1) }, 0
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
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t28, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d487, i32 0, i32 1) }, { i64, ptr } %t27)
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
  store i32 116, ptr %l2
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
  %t8 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d488, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d488, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a0, 1
  %t12 = extractvalue { i64, ptr } %a0, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 58, ptr getelementptr inbounds (<{ i64, [58 x i8] }>, ptr @.d489, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 58, ptr getelementptr inbounds (<{ i64, [58 x i8] }>, ptr @.d489, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d490, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d490, i32 0, i32 1) }, 0
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
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t42, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d491, i32 0, i32 1) }, { i64, ptr } %t41)
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
  %l13 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  store i32 673, ptr %l4
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
  %t13 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d492, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d492, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t17 = extractvalue { i64, ptr } %a1, 1
  %t18 = extractvalue { i64, ptr } %a1, 0
  %t19 = add i64 %t15, %t18
  %t20 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d493, i32 0, i32 1) }, 1
  %t21 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d493, i32 0, i32 1) }, 0
  %t22 = add i64 %t19, %t21
  %t24 = extractvalue { i64, ptr } %a2, 1
  %t25 = extractvalue { i64, ptr } %a2, 0
  %t26 = add i64 %t22, %t25
  %t27 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d494, i32 0, i32 1) }, 1
  %t28 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d494, i32 0, i32 1) }, 0
  %t29 = add i64 %t26, %t28
  %t31 = extractvalue { i64, ptr } %a3, 1
  %t32 = extractvalue { i64, ptr } %a3, 0
  %t33 = add i64 %t29, %t32
  %t34 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d495, i32 0, i32 1) }, 1
  %t35 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d495, i32 0, i32 1) }, 0
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
  %t60 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v4, ptr %v4, ptr %v4, i32 %t58, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d496, i32 0, i32 1) }, { i64, ptr } %t57)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eValueRefsOutlived(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 575, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d497, i32 0, i32 1) }, { i64, ptr } { i64 91, ptr getelementptr inbounds (<{ i64, [91 x i8] }>, ptr @.d498, i32 0, i32 1) })
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
  store i32 611, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d499, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d499, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 131, ptr getelementptr inbounds (<{ i64, [131 x i8] }>, ptr @.d500, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 131, ptr getelementptr inbounds (<{ i64, [131 x i8] }>, ptr @.d500, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d501, i32 0, i32 1) }, { i64, ptr } %t31)
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
  store i32 515, ptr %l1
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d502, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d502, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 95, ptr getelementptr inbounds (<{ i64, [95 x i8] }>, ptr @.d503, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 95, ptr getelementptr inbounds (<{ i64, [95 x i8] }>, ptr @.d503, i32 0, i32 1) }, 0
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
  %t34 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d504, i32 0, i32 1) }, { i64, ptr } %t31)
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

define dso_local %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eYieldOwnStorage(ptr %v0) #0 {
entry:
  %l1 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 623, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d505, i32 0, i32 1) }, { i64, ptr } { i64 139, ptr getelementptr inbounds (<{ i64, [139 x i8] }>, ptr @.d506, i32 0, i32 1) })
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

@olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d0 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c" is already declared here" }>, align 8
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
@.d1 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d2 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c" is bound as " }>, align 8
@.d3 = private constant <{ i64, [43 x i8] }> <{ i64 0, [43 x i8] c" by an earlier alternative - split the case" }>, align 8
@.d4 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"S13c" }>, align 8
@.d5 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"'s " }>, align 8
@.d6 = private constant <{ i64, [96 x i8] }> <{ i64 0, [96 x i8] c" ties where what it is given lives to what it keeps or gives back, which a call through an 'any " }>, align 8
@.d7 = private constant <{ i64, [59 x i8] }> <{ i64 0, [59 x i8] c"&' cannot check - call it directly, or through generic code" }>, align 8
@.d8 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"T32a, T22a" }>, align 8
@.d9 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c" has no method " }>, align 8
@.d10 = private constant <{ i64, [53 x i8] }> <{ i64 0, [53 x i8] c" - an 'any' is used through its trait's methods alone" }>, align 8
@.d11 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T32b" }>, align 8
@.d12 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c" cannot be an 'any " }>, align 8
@.d13 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"&': " }>, align 8
@.d14 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c" is closed, met by " }>, align 8
@.d15 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" alone" }>, align 8
@.d16 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"T32a, T31a" }>, align 8
@.d17 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c" cannot be an 'any " }>, align 8
@.d18 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"&': it has no method " }>, align 8
@.d19 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c" that fits" }>, align 8
@.d20 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"T32a, T31" }>, align 8
@.d21 = private constant <{ i64, [134 x i8] }> <{ i64 0, [134 x i8] c"this assertion is false, evaluated while compiling; its message reads what only the running program knows, so it is shown as written: " }>, align 8
@.d22 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"S18c" }>, align 8
@.d23 = private constant <{ i64, [65 x i8] }> <{ i64 0, [65 x i8] c"the atomic operations take integers of 8, 16, 32 or 64 bits, and " }>, align 8
@.d24 = private constant <{ i64, [41 x i8] }> <{ i64 0, [41 x i8] c" is none - hold the value as one of those" }>, align 8
@.d25 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"P9, T4a" }>, align 8
@.d26 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E35" }>, align 8
@.d27 = private constant <{ i64, [44 x i8] }> <{ i64 0, [44 x i8] c"nothing here can fail - write it without '!'" }>, align 8
@.d28 = private constant <{ i64, [49 x i8] }> <{ i64 0, [49 x i8] c"'become' ends a function declared with fn, never " }>, align 8
@.d29 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c" - write 'return' and the call" }>, align 8
@.d30 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"S21" }>, align 8
@.d31 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"L10c" }>, align 8
@.d32 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"'0b' needs binary digits" }>, align 8
@.d33 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d34 = private constant <{ i64, [119 x i8] }> <{ i64 0, [119 x i8] c"' holds references to the caller's storage while its own storage is this call's, so it is not held by reference - use '" }>, align 8
@.d35 = private constant <{ i64, [83 x i8] }> <{ i64 0, [83 x i8] c"' itself, or take its value where it is mentioned last, declaring its type ('w T = " }>, align 8
@.d36 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"')" }>, align 8
@.d37 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"O17a, T13b" }>, align 8
@.d38 = private constant <{ i64, [34 x i8] }> <{ i64 0, [34 x i8] c" is bound twice in one alternative" }>, align 8
@.d39 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"S13c" }>, align 8
@.d40 = private constant <{ i64, [91 x i8] }> <{ i64 0, [91 x i8] c" is a build constant, and a default for it is a Bool, I32, I64, U64, F64 or String - found " }>, align 8
@.d41 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"B10c" }>, align 8
@.d42 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" makes a " }>, align 8
@.d43 = private constant <{ i64, [76 x i8] }> <{ i64 0, [76 x i8] c" its module declares and takes none - declare it as the type's builder, 'fn " }>, align 8
@.d44 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d45 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"(...)', and call it '" }>, align 8
@.d46 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"(...)'" }>, align 8
@.d47 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"D19a" }>, align 8
@.d48 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c" is already " }>, align 8
@.d49 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" of " }>, align 8
@.d50 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c" - name the builder otherwise" }>, align 8
@.d51 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"D19" }>, align 8
@.d52 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c" has no 'ByteSwap': its " }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d53 = private constant <{ i64, [34 x i8] }> <{ i64 0, [34 x i8] c" bits are no whole number of bytes" }>, align 8
@.d54 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"E37, T4a" }>, align 8
@.d55 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c"the C import has no olang form of '" }>, align 8
@.d56 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"': " }>, align 8
@.d57 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"X19" }>, align 8
@.d58 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"C is handed a pointer to a " }>, align 8
@.d59 = private constant <{ i64, [43 x i8] }> <{ i64 0, [43 x i8] c" that is no place - put it in a local first" }>, align 8
@.d60 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"X22" }>, align 8
@.d61 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d62 = private constant <{ i64, [100 x i8] }> <{ i64 0, [100 x i8] c"' gives a value and does nothing else - use the value (assign it, pass it on), or leave the call out" }>, align 8
@.d63 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"S3" }>, align 8
@.d64 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c" is no case of " }>, align 8
@.d65 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c", the type this tests" }>, align 8
@.d66 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E32" }>, align 8
@.d67 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"unknown name " }>, align 8
@.d68 = private constant <{ i64, [101 x i8] }> <{ i64 0, [101 x i8] c" - a name in a case is a value compared by '=='; to take any value and test it, write 'case _ if ...'" }>, align 8
@.d69 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"S13f" }>, align 8
@.d70 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"R11a" }>, align 8
@.d71 = private constant <{ i64, [78 x i8] }> <{ i64 0, [78 x i8] c"a catch with no error types takes every error left, so no clause can follow it" }>, align 8
@.d72 = private constant <{ i64, [77 x i8] }> <{ i64 0, [77 x i8] c"a spawned call's clause runs on the task's thread and names no error - leave " }>, align 8
@.d73 = private constant <{ i64, [38 x i8] }> <{ i64 0, [38 x i8] c" off, or catch it where the join fails" }>, align 8
@.d74 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"R11b" }>, align 8
@.d75 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"R11a" }>, align 8
@.d76 = private constant <{ i64, [58 x i8] }> <{ i64 0, [58 x i8] c"an earlier clause already takes every error this one names" }>, align 8
@.d77 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"R11b" }>, align 8
@.d78 = private constant <{ i64, [139 x i8] }> <{ i64 0, [139 x i8] c"a match on an error value used as a value gives a value in every clause, 'case P: v' - a clause that leaves is written in a match statement" }>, align 8
@.d79 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"L13" }>, align 8
@.d80 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c"character literal not closed on its line" }>, align 8
@.d81 = private constant <{ i64, [66 x i8] }> <{ i64 0, [66 x i8] c"a block's last value is not the clause's value - write '} default " }>, align 8
@.d82 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"' after the block" }>, align 8
@.d83 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"R11" }>, align 8
@.d84 = private constant <{ i64, [89 x i8] }> <{ i64 0, [89 x i8] c"'commutes' is written only on a Plus, Mul, BitAnd, BitOr or BitXor of one parameter, and " }>, align 8
@.d85 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c" is none - remove it" }>, align 8
@.d86 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"E31c" }>, align 8
@.d87 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" takes " }>, align 8
@.d88 = private constant <{ i64, [86 x i8] }> <{ i64 0, [86 x i8] c", its own receiver's type, so the operator reads both ways already - remove 'commutes'" }>, align 8
@.d89 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"E31c" }>, align 8
@.d90 = private constant <{ i64, [60 x i8] }> <{ i64 0, [60 x i8] c"a comptime for's elements are integers, Bool or Char, found " }>, align 8
@.d91 = private constant <{ i64, [57 x i8] }> <{ i64 0, [57 x i8] c" - walk its positions: 'comptime for i in range xs.Len()'" }>, align 8
@.d92 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"K3a" }>, align 8
@.d93 = private constant <{ i64, [62 x i8] }> <{ i64 0, [62 x i8] c" is not a build constant or an immutable global of this module" }>, align 8
@.d94 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"B9a" }>, align 8
@.d95 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c"a condition is a Bool, found " }>, align 8
@.d96 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d97 = private constant <{ i64, [64 x i8] }> <{ i64 0, [64 x i8] c"conditions decide branches holding further conditions more than " }>, align 8
@.d98 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c" levels deep" }>, align 8
@.d99 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"B9c" }>, align 8
@.d100 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"S8a" }>, align 8
@.d101 = private constant <{ i64, [107 x i8] }> <{ i64 0, [107 x i8] c"this condition is the same on every build, so one branch is dead - depend on a build constant, or remove it" }>, align 8
@.d102 = private constant <{ i64, [89 x i8] }> <{ i64 0, [89 x i8] c"this hands data written in the program where it may be written - pass a copy of its own: " }>, align 8
@.d103 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T25d" }>, align 8
@.d104 = private constant <{ i64, [33 x i8] }> <{ i64 0, [33 x i8] c" does not satisfy the constraint " }>, align 8
@.d105 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" on " }>, align 8
@.d106 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d107 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c" is closed, met by " }>, align 8
@.d108 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" alone" }>, align 8
@.d109 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"G19, T31a" }>, align 8
@.d110 = private constant <{ i64, [33 x i8] }> <{ i64 0, [33 x i8] c" does not satisfy the constraint " }>, align 8
@.d111 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" on " }>, align 8
@.d112 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"G19" }>, align 8
@.d113 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"this call breaks " }>, align 8
@.d114 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"'s requirement '" }>, align 8
@.d115 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d116 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"D17e" }>, align 8
@.d117 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"what " }>, align 8
@.d118 = private constant <{ i64, [65 x i8] }> <{ i64 0, [65 x i8] c"'s constructor introduces cannot be inferred from these arguments" }>, align 8
@.d119 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"G10d" }>, align 8
@.d120 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"two traits " }>, align 8
@.d121 = private constant <{ i64, [34 x i8] }> <{ i64 0, [34 x i8] c" satisfies both declare a default " }>, align 8
@.d122 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c" - the call cannot choose" }>, align 8
@.d123 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"M19e" }>, align 8
@.d124 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"R11" }>, align 8
@.d125 = private constant <{ i64, [54 x i8] }> <{ i64 0, [54 x i8] c"a default belongs to a catch clause: 'catch default v'" }>, align 8
@.d126 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"R11" }>, align 8
@.d127 = private constant <{ i64, [77 x i8] }> <{ i64 0, [77 x i8] c"this call returns no value, so there is nothing for a default to stand in for" }>, align 8
@.d128 = private constant <{ i64, [80 x i8] }> <{ i64 0, [80 x i8] c" has no default, but a parameter before it does - defaulted parameters come last" }>, align 8
@.d129 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"D8a" }>, align 8
@.d130 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"S19b" }>, align 8
@.d131 = private constant <{ i64, [52 x i8] }> <{ i64 0, [52 x i8] c"an error may not leave deferred code - catch it here" }>, align 8
@.d132 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"-define " }>, align 8
@.d133 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"=" }>, align 8
@.d134 = private constant <{ i64, [60 x i8] }> <{ i64 0, [60 x i8] c": not a number - '0x' and '0b' take digits of their own base" }>, align 8
@.d135 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"B10" }>, align 8
@.d136 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T24" }>, align 8
@.d137 = private constant <{ i64, [41 x i8] }> <{ i64 0, [41 x i8] c"a type takes at most one reference marker" }>, align 8
@.d138 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d139 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"' and '" }>, align 8
@.d140 = private constant <{ i64, [233 x i8] }> <{ i64 0, [233 x i8] c"' may each hold a reference to the other, and both have destructors to run - whichever is ended first, the other's destructor could read it: end one of them before the other refers to it (a block of its own), or hold one by reference" }>, align 8
@.d141 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"O15" }>, align 8
@.d142 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" may " }>, align 8
@.d143 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c", and '" }>, align 8
@.d144 = private constant <{ i64, [42 x i8] }> <{ i64 0, [42 x i8] c"', the type it is held as here, promises '" }>, align 8
@.d145 = private constant <{ i64, [65 x i8] }> <{ i64 0, [65 x i8] c"' - give a function that does not, or hold it as a type without '" }>, align 8
@.d146 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d147 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T22b" }>, align 8
@.d148 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"O25c" }>, align 8
@.d149 = private constant <{ i64, [87 x i8] }> <{ i64 0, [87 x i8] c"the array outlives what this element refers to - build the element where the array goes" }>, align 8
@.d150 = private constant <{ i64, [34 x i8] }> <{ i64 0, [34 x i8] c"this array pattern's elements are " }>, align 8
@.d151 = private constant <{ i64, [28 x i8] }> <{ i64 0, [28 x i8] c", and what is matched holds " }>, align 8
@.d152 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c" - write 'Array<" }>, align 8
@.d153 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c">[...]'" }>, align 8
@.d154 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"S13h" }>, align 8
@.d155 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"L13" }>, align 8
@.d156 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"empty character literal" }>, align 8
@.d157 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"R3" }>, align 8
@.d158 = private constant <{ i64, [52 x i8] }> <{ i64 0, [52 x i8] c"'error' fails a function, and this is not inside one" }>, align 8
@.d159 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"error word " }>, align 8
@.d160 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c" is already declared" }>, align 8
@.d161 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T19" }>, align 8
@.d162 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"an error set names one of " }>, align 8
@.d163 = private constant <{ i64, [68 x i8] }> <{ i64 0, [68 x i8] c"'s first 64 words alone, and this is past them - name the type whole" }>, align 8
@.d164 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"R1c" }>, align 8
@.d165 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"expected " }>, align 8
@.d166 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c", found " }>, align 8
@.d167 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d168 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d169 = private constant <{ i64, [103 x i8] }> <{ i64 0, [103 x i8] c"' cannot be decided: the code it reads it from changes with its value - read it outside what it decides" }>, align 8
@.d170 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"G42" }>, align 8
@.d171 = private constant <{ i64, [50 x i8] }> <{ i64 0, [50 x i8] c"'From' makes a case from its raw value alone, and " }>, align 8
@.d172 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"'s case '" }>, align 8
@.d173 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"' carries a payload" }>, align 8
@.d174 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T17e" }>, align 8
@.d175 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"expected " }>, align 8
@.d176 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c", found " }>, align 8
@.d177 = private constant <{ i64, [57 x i8] }> <{ i64 0, [57 x i8] c" - a declared function type is a type of its own: write '" }>, align 8
@.d178 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"(f)' to make one the other" }>, align 8
@.d179 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"T21b, T29" }>, align 8
@.d180 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"a value of type '" }>, align 8
@.d181 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"' may do what '" }>, align 8
@.d182 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"' does not say ('" }>, align 8
@.d183 = private constant <{ i64, [60 x i8] }> <{ i64 0, [60 x i8] c"'), and which functions it holds is not known here - write '" }>, align 8
@.d184 = private constant <{ i64, [76 x i8] }> <{ i64 0, [76 x i8] c"' after the signature of the type it is held as, or give a function directly" }>, align 8
@.d185 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T22b" }>, align 8
@.d186 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"-fuzz " }>, align 8
@.d187 = private constant <{ i64, [98 x i8] }> <{ i64 0, [98 x i8] c" names no test of this file - give a test's target, its target's type or a word of its description" }>, align 8
@.d188 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"B19" }>, align 8
@.d189 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"B19" }>, align 8
@.d190 = private constant <{ i64, [60 x i8] }> <{ i64 0, [60 x i8] c"-fuzztime says how long -fuzz runs - give -fuzz NAME with it" }>, align 8
@.d191 = private constant <{ i64, [141 x i8] }> <{ i64 0, [141 x i8] c" has conditions, so its first Next fails with ArgumentError where one is false - add it to its result's errors, 'Iterator<T ? ArgumentError>'" }>, align 8
@.d192 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"D18, D17" }>, align 8
@.d193 = private constant <{ i64, [137 x i8] }> <{ i64 0, [137 x i8] c" is generational and declares a destructor, so it has no Copy - each instance's destructor runs once: make a new one with its constructor" }>, align 8
@.d194 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"T13d, E31d" }>, align 8
@.d195 = private constant <{ i64, [110 x i8] }> <{ i64 0, [110 x i8] c" is generational - a weak reference names it - and its values are never copied, only referenced: drop 'unique'" }>, align 8
@.d196 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T13d" }>, align 8
@.d197 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"'s initializer reads " }>, align 8
@.d198 = private constant <{ i64, [48 x i8] }> <{ i64 0, [48 x i8] c", which is not set until the initializer is done" }>, align 8
@.d199 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"B5a" }>, align 8
@.d200 = private constant <{ i64, [71 x i8] }> <{ i64 0, [71 x i8] c"these globals' initializers read each other, so none can be set first: " }>, align 8
@.d201 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"B5a" }>, align 8
@.d202 = private constant <{ i64, [68 x i8] }> <{ i64 0, [68 x i8] c" cannot be written - only a local, a parameter or a 'mut' global can" }>, align 8
@.d203 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"S6" }>, align 8
@.d204 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"M23a" }>, align 8
@.d205 = private constant <{ i64, [97 x i8] }> <{ i64 0, [97 x i8] c"a remote import's host, owner, repository and ref may hold only letters, digits, '.', '_' and '-'" }>, align 8
@.d206 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"index " }>, align 8
@.d207 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c" is outside the array's " }>, align 8
@.d208 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" elements" }>, align 8
@.d209 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E16" }>, align 8
@.d210 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d211 = private constant <{ i64, [50 x i8] }> <{ i64 0, [50 x i8] c", hold it by value in a field, or give it a copy (" }>, align 8
@.d212 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d213 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c", or hold it by value in a field" }>, align 8
@.d214 = private constant <{ i64, [107 x i8] }> <{ i64 0, [107 x i8] c"this instance holds a reference to an argument it would outlive - make the argument where the instance goes" }>, align 8
@.d215 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"C2d" }>, align 8
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
@.d216 = private constant <{ i64, [62 x i8] }> <{ i64 0, [62 x i8] c"only a reference or a function value can be null, and this is " }>, align 8
@.d217 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"E10c" }>, align 8
@.d218 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"P1a" }>, align 8
@.d219 = private constant <{ i64, [49 x i8] }> <{ i64 0, [49 x i8] c"this join spawns nothing, so it waits for nothing" }>, align 8
@.d220 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"D16b" }>, align 8
@.d221 = private constant <{ i64, [54 x i8] }> <{ i64 0, [54 x i8] c"this value gives the lambda no result type - write one" }>, align 8
@.d222 = private constant <{ i64, [28 x i8] }> <{ i64 0, [28 x i8] c"these arrays are of lengths " }>, align 8
@.d223 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" and " }>, align 8
@.d224 = private constant <{ i64, [46 x i8] }> <{ i64 0, [46 x i8] c" - a lane operation takes arrays of one length" }>, align 8
@.d225 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E39" }>, align 8
@.d226 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E31" }>, align 8
@.d227 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"Len gives an I64" }>, align 8
@.d228 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"S1b" }>, align 8
@.d229 = private constant <{ i64, [72 x i8] }> <{ i64 0, [72 x i8] c"a one-line body stands on the line of its ':' - write a block, '{ ... }'" }>, align 8
@.d230 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"linking " }>, align 8
@.d231 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" failed" }>, align 8
@.d232 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d233 = private constant <{ i64, [39 x i8] }> <{ i64 0, [39 x i8] c" is never read - write '_' in its place" }>, align 8
@.d234 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"D3b" }>, align 8
@.d235 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"a match over " }>, align 8
@.d236 = private constant <{ i64, [80 x i8] }> <{ i64 0, [80 x i8] c" gives a value only when its cases cover every value - none matches an array of " }>, align 8
@.d237 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c"; add a case for it, or 'case _: v'" }>, align 8
@.d238 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"S13h" }>, align 8
@.d239 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"member '" }>, align 8
@.d240 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"' of " }>, align 8
@.d241 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c" is private to its module" }>, align 8
@.d242 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"M6a" }>, align 8
@.d243 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c" already has a method " }>, align 8
@.d244 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c" in this module" }>, align 8
@.d245 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"M21" }>, align 8
@.d246 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c" declares no " }>, align 8
@.d247 = private constant <{ i64, [73 x i8] }> <{ i64 0, [73 x i8] c", and does not extend its base, which has one - declare it with 'extends'" }>, align 8
@.d248 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T29f" }>, align 8
@.d249 = private constant <{ i64, [44 x i8] }> <{ i64 0, [44 x i8] c" is generic - write its type arguments, as '" }>, align 8
@.d250 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"<I32>'" }>, align 8
@.d251 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"G7" }>, align 8
@.d252 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c" takes exactly one file" }>, align 8
@.d253 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"B1" }>, align 8
@.d254 = private constant <{ i64, [57 x i8] }> <{ i64 0, [57 x i8] c" is an import's alias in this module - rename one of them" }>, align 8
@.d255 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"M20" }>, align 8
@.d256 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c"'Narrow' converts to a number type, and " }>, align 8
@.d257 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" is none" }>, align 8
@.d258 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"E26b" }>, align 8
@.d259 = private constant <{ i64, [68 x i8] }> <{ i64 0, [68 x i8] c"a narrowed payload field is read, never written or lent writably - '" }>, align 8
@.d260 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"' is narrowed to " }>, align 8
@.d261 = private constant <{ i64, [76 x i8] }> <{ i64 0, [76 x i8] c", and what it reads there is a copy of the payload: assign the whole case, '" }>, align 8
@.d262 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" = " }>, align 8
@.d263 = private constant <{ i64, [63 x i8] }> <{ i64 0, [63 x i8] c"(...)', or change a copy a match binds and assign the case back" }>, align 8
@.d264 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"S8d" }>, align 8
@.d265 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"nested more than " }>, align 8
@.d266 = private constant <{ i64, [48 x i8] }> <{ i64 0, [48 x i8] c" levels deep - split it into locals or functions" }>, align 8
@.d267 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"L21" }>, align 8
@.d268 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"no specification at " }>, align 8
@.d269 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"B11a" }>, align 8
@.d270 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c" has no word " }>, align 8
@.d271 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"T19" }>, align 8
@.d272 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"D8e" }>, align 8
@.d273 = private constant <{ i64, [90 x i8] }> <{ i64 0, [90 x i8] c"a 'noreturn' function never returns to its caller, so it fails with nothing - drop the '?'" }>, align 8
@.d274 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"S3" }>, align 8
@.d275 = private constant <{ i64, [78 x i8] }> <{ i64 0, [78 x i8] c"this computes a value and discards it - only a call, '++' or '--' stands alone" }>, align 8
@.d276 = private constant <{ i64, [42 x i8] }> <{ i64 0, [42 x i8] c" does not extend its base, so it takes no " }>, align 8
@.d277 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c" - declare its method " }>, align 8
@.d278 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c", or declare it with 'extends'" }>, align 8
@.d279 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T29f" }>, align 8
@.d280 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d281 = private constant <{ i64, [111 x i8] }> <{ i64 0, [111 x i8] c"this is the value that does not fit - each value a conditional or a match gives is stored as though alone (E28)" }>, align 8
@.d282 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d283 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"the condition" }>, align 8
@.d284 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d285 = private constant <{ i64, [43 x i8] }> <{ i64 0, [43 x i8] c"' is declared read-only here - declare it '" }>, align 8
@.d286 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" mut " }>, align 8
@.d287 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"' to write through it" }>, align 8
@.d288 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d289 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c" is declared here" }>, align 8
@.d290 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d291 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d292 = private constant <{ i64, [107 x i8] }> <{ i64 0, [107 x i8] c"a function type of several results or error items is parenthesized whole in a list: '(fn&(x I64) I64, I64)'" }>, align 8
@.d293 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d294 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"' is " }>, align 8
@.d295 = private constant <{ i64, [61 x i8] }> <{ i64 0, [61 x i8] c", its literal's own type - declare the type it should have, '" }>, align 8
@.d296 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d297 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" = ...'" }>, align 8
@.d298 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d299 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d300 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"declared here with no value" }>, align 8
@.d301 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d302 = private constant <{ i64, [118 x i8] }> <{ i64 0, [118 x i8] c"the Vec grew here, after the view was taken; take the view after the growth, or copy the elements first: 'v.ToArray()'" }>, align 8
@.d303 = private constant <{ i64, [28 x i8] }> <{ i64 0, [28 x i8] c"the task holding a view of '" }>, align 8
@.d304 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"' is started here" }>, align 8
@.d305 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d306 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d307 = private constant <{ i64, [49 x i8] }> <{ i64 0, [49 x i8] c"' holds it by reference, whose zero value is null" }>, align 8
@.d308 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d309 = private constant <{ i64, [33 x i8] }> <{ i64 0, [33 x i8] c"a reference has one, null - hold " }>, align 8
@.d310 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" as '" }>, align 8
@.d311 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"&' where this use names it" }>, align 8
@.d312 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d313 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c" takes a Bool, found " }>, align 8
@.d314 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"E7" }>, align 8
@.d315 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"this operator calls " }>, align 8
@.d316 = private constant <{ i64, [52 x i8] }> <{ i64 0, [52 x i8] c", which can fail - write 'try' before the expression" }>, align 8
@.d317 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E31" }>, align 8
@.d318 = private constant <{ i64, [91 x i8] }> <{ i64 0, [91 x i8] c" does not have the signature of the default it overrides - match it, or choose another name" }>, align 8
@.d319 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"M19e" }>, align 8
@.d320 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T13c" }>, align 8
@.d321 = private constant <{ i64, [62 x i8] }> <{ i64 0, [62 x i8] c"a packed struct holds plain data, so it declares no destructor" }>, align 8
@.d322 = private constant <{ i64, [51 x i8] }> <{ i64 0, [51 x i8] c"a packed struct lays its fields out bit by bit, so " }>, align 8
@.d323 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" (" }>, align 8
@.d324 = private constant <{ i64, [137 x i8] }> <{ i64 0, [137 x i8] c") is no field of one - a field is an integer, Bool, Char, float, payload-free enum, packed struct, or an array of a known length of these" }>, align 8
@.d325 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T13c" }>, align 8
@.d326 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T13c" }>, align 8
@.d327 = private constant <{ i64, [89 x i8] }> <{ i64 0, [89 x i8] c"'packed' lays a struct out bit by bit - it is written right before 'struct', nothing else" }>, align 8
@.d328 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"S13b" }>, align 8
@.d329 = private constant <{ i64, [96 x i8] }> <{ i64 0, [96 x i8] c"an item by position follows one by name - items by position come first, as a call's arguments do" }>, align 8
@.d330 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"a pattern here names a case of " }>, align 8
@.d331 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c", found " }>, align 8
@.d332 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"S13b" }>, align 8
@.d333 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" carries " }>, align 8
@.d334 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c" - give them: '" }>, align 8
@.d335 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d336 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c")'" }>, align 8
@.d337 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T19b" }>, align 8
@.d338 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"E14b" }>, align 8
@.d339 = private constant <{ i64, [59 x i8] }> <{ i64 0, [59 x i8] c"an argument by position comes before every argument by name" }>, align 8
@.d340 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T21c" }>, align 8
@.d341 = private constant <{ i64, [113 x i8] }> <{ i64 0, [113 x i8] c"'noborrow' says the result refers into no parameter, and 'borrows' that it may refer into one - write one of them" }>, align 8
@.d342 = private constant <{ i64, [53 x i8] }> <{ i64 0, [53 x i8] c"a promise names one field of a parameter - write 'in " }>, align 8
@.d343 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d344 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d345 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T21c" }>, align 8
@.d346 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d347 = private constant <{ i64, [99 x i8] }> <{ i64 0, [99 x i8] c"' is no parameter of this function type - a promise names its parameters by the names written in it" }>, align 8
@.d348 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T21c" }>, align 8
@.d349 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d350 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c"' is promised twice - write it once" }>, align 8
@.d351 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T21c" }>, align 8
@.d352 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" needs " }>, align 8
@.d353 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"'s " }>, align 8
@.d354 = private constant <{ i64, [46 x i8] }> <{ i64 0, [46 x i8] c", which is private to its module - declare it " }>, align 8
@.d355 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c" to use it here" }>, align 8
@.d356 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"M6b" }>, align 8
@.d357 = private constant <{ i64, [59 x i8] }> <{ i64 0, [59 x i8] c"'error' raises a word, 'error T.WORD', or an error value - " }>, align 8
@.d358 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c" is neither" }>, align 8
@.d359 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"R3" }>, align 8
declare void @__olang_check_failed(ptr) cold noreturn
@.d360 = private constant <{ i64, [55 x i8] }> <{ i64 0, [55 x i8] c" is an error type of words - raise one of them, 'error " }>, align 8
@.d361 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".Word'" }>, align 8
@.d362 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"R3" }>, align 8
@.d363 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d364 = private constant <{ i64, [41 x i8] }> <{ i64 0, [41 x i8] c"' writes through or keeps its parameter '" }>, align 8
@.d365 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"', and this " }>, align 8
@.d366 = private constant <{ i64, [49 x i8] }> <{ i64 0, [49 x i8] c" is a read-only copy - pass one of its own, made " }>, align 8
@.d367 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T25c" }>, align 8
@.d368 = private constant <{ i64, [86 x i8] }> <{ i64 0, [86 x i8] c"a read-only copy cannot be passed where it may be written - pass one of its own, made " }>, align 8
@.d369 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T25c" }>, align 8
@.d370 = private constant <{ i64, [49 x i8] }> <{ i64 0, [49 x i8] c" writes through or keeps its by-value parameter '" }>, align 8
@.d371 = private constant <{ i64, [110 x i8] }> <{ i64 0, [110 x i8] c"', so it cannot be a function value - a caller of one may pass a read-only copy; work on one of its own, made " }>, align 8
@.d372 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T25c" }>, align 8
@.d373 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T25c" }>, align 8
@.d374 = private constant <{ i64, [85 x i8] }> <{ i64 0, [85 x i8] c"a read-only reference cannot become writable - pass a writable one, or drop the 'mut'" }>, align 8
@.d375 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d376 = private constant <{ i64, [56 x i8] }> <{ i64 0, [56 x i8] c"' is read here before it is assigned on every path, and " }>, align 8
@.d377 = private constant <{ i64, [80 x i8] }> <{ i64 0, [80 x i8] c" has no zero value - assign it on each path before this read, or give it a value" }>, align 8
@.d378 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"D13d" }>, align 8
@.d379 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"O25" }>, align 8
@.d380 = private constant <{ i64, [70 x i8] }> <{ i64 0, [70 x i8] c"a reference never narrows - declare it with ':=' from what it is given" }>, align 8
@.d381 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"G36" }>, align 8
@.d382 = private constant <{ i64, [71 x i8] }> <{ i64 0, [71 x i8] c"no type can reach this case - a case before it takes every type it does" }>, align 8
@.d383 = private constant <{ i64, [97 x i8] }> <{ i64 0, [97 x i8] c" - 'Functions' is read through an import's alias ('handlers.Functions'), 'Methods' through a type" }>, align 8
@.d384 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"G41" }>, align 8
@.d385 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"index " }>, align 8
@.d386 = private constant <{ i64, [34 x i8] }> <{ i64 0, [34 x i8] c" is outside the list, which holds " }>, align 8
@.d387 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"G33" }>, align 8
@.d388 = private constant <{ i64, [158 x i8] }> <{ i64 0, [158 x i8] c" is a list known while compiling, no value - walk it with 'for', count it with '.Len()', index it with a constant, or make an array of it with a comprehension" }>, align 8
@.d389 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"G33" }>, align 8
@.d390 = private constant <{ i64, [125 x i8] }> <{ i64 0, [125 x i8] c" has no TypeKind - only a struct, an enum, a number, Bool, an array, a reference, a function type and an error value have one" }>, align 8
@.d391 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"G32" }>, align 8
@.d392 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d393 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"' of " }>, align 8
@.d394 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d395 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"G38" }>, align 8
@.d396 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"G33" }>, align 8
@.d397 = private constant <{ i64, [102 x i8] }> <{ i64 0, [102 x i8] c"a list known while compiling is walked with no call that can fail - write 'for x in ...' without 'try'" }>, align 8
@.d398 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"G38" }>, align 8
@.d399 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"S13h" }>, align 8
@.d400 = private constant <{ i64, [118 x i8] }> <{ i64 0, [118 x i8] c"'...' stands among an array pattern's items, for the elements they do not name - 'case Array<String&>[first, ...rest]'" }>, align 8
@.d401 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"S13h" }>, align 8
@.d402 = private constant <{ i64, [76 x i8] }> <{ i64 0, [76 x i8] c"an array pattern has one '...', for the elements its other items do not name" }>, align 8
@.d403 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"C2b" }>, align 8
@.d404 = private constant <{ i64, [77 x i8] }> <{ i64 0, [77 x i8] c"a constructor gives no value - its fields are the instance; fail with 'error'" }>, align 8
@.d405 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"this function returns " }>, align 8
@.d406 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c", so 'return' needs a value" }>, align 8
@.d407 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"D8" }>, align 8
@.d408 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E25" }>, align 8
@.d409 = private constant <{ i64, [39 x i8] }> <{ i64 0, [39 x i8] c"a call takes at most one scope argument" }>, align 8
@.d410 = private constant <{ i64, [42 x i8] }> <{ i64 0, [42 x i8] c" is a build constant - choose another name" }>, align 8
@.d411 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"D3a" }>, align 8
@.d412 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"P2" }>, align 8
@.d413 = private constant <{ i64, [93 x i8] }> <{ i64 0, [93 x i8] c"this argument's storage closes before the join does - declare it at the join's level or wider" }>, align 8
@.d414 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"P4" }>, align 8
@.d415 = private constant <{ i64, [89 x i8] }> <{ i64 0, [89 x i8] c"this call can fail - write 'spawn try', and what its clauses do not take reaches the join" }>, align 8
@.d416 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"P1g" }>, align 8
@.d417 = private constant <{ i64, [81 x i8] }> <{ i64 0, [81 x i8] c"this target closes before the join does - declare it at the join's level or wider" }>, align 8
@.d418 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"D8g" }>, align 8
@.d419 = private constant <{ i64, [102 x i8] }> <{ i64 0, [102 x i8] c"'...a' passes an array on as all of a variadic parameter's arguments - alone, with no others beside it" }>, align 8
@.d420 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"O20" }>, align 8
@.d421 = private constant <{ i64, [114 x i8] }> <{ i64 0, [114 x i8] c"the container outlives what this refers to - build it where the container lives, or keep a copy ('$x', 'x.Copy()')" }>, align 8
@.d422 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"olang does not build for '" }>, align 8
@.d423 = private constant <{ i64, [65 x i8] }> <{ i64 0, [65 x i8] c"' - it builds for x86_64 and aarch64 Linux with the GNU C library" }>, align 8
@.d424 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"B12" }>, align 8
@.d425 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d426 = private constant <{ i64, [94 x i8] }> <{ i64 0, [94 x i8] c"' is declared in another file - a test is an example of its own file's code, written beside it" }>, align 8
@.d427 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"B7a" }>, align 8
@.d428 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"this file has a test of " }>, align 8
@.d429 = private constant <{ i64, [61 x i8] }> <{ i64 0, [61 x i8] c" described so already - tell them apart by their descriptions" }>, align 8
@.d430 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"B7a" }>, align 8
@.d431 = private constant <{ i64, [65 x i8] }> <{ i64 0, [65 x i8] c"a test names a function, a type or Type.Method of its file, and '" }>, align 8
@.d432 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"' is none - did you mean '" }>, align 8
@.d433 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"'?" }>, align 8
@.d434 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"B7a" }>, align 8
@.d435 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"this condition reads '" }>, align 8
@.d436 = private constant <{ i64, [72 x i8] }> <{ i64 0, [72 x i8] c"', which its 'if' assigns - a condition cannot decide the value it reads" }>, align 8
@.d437 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"D13e" }>, align 8
@.d438 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"this 'if' assigns '" }>, align 8
@.d439 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"' and has no 'else', and " }>, align 8
@.d440 = private constant <{ i64, [67 x i8] }> <{ i64 0, [67 x i8] c" has no zero value - add an 'else' assigning it, or give it a value" }>, align 8
@.d441 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"D13e" }>, align 8
@.d442 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d443 = private constant <{ i64, [108 x i8] }> <{ i64 0, [108 x i8] c"' is no global of this module declared above with no value - only such a global is assigned at the top level" }>, align 8
@.d444 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"D13e" }>, align 8
@.d445 = private constant <{ i64, [45 x i8] }> <{ i64 0, [45 x i8] c" extends itself through the traits it extends" }>, align 8
@.d446 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T30a" }>, align 8
@.d447 = private constant <{ i64, [87 x i8] }> <{ i64 0, [87 x i8] c" can escape here, and this function does not declare it - add it after '?', or catch it" }>, align 8
@.d448 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"R9" }>, align 8
@.d449 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"D8c" }>, align 8
@.d450 = private constant <{ i64, [111 x i8] }> <{ i64 0, [111 x i8] c"several results are not one value - destructure them ('a, b := f()'), or pass them as all of a call's arguments" }>, align 8
@.d451 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"expected " }>, align 8
@.d452 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c", found " }>, align 8
@.d453 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E12" }>, align 8
@.d454 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"type " }>, align 8
@.d455 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c" is already declared in this module" }>, align 8
@.d456 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"D2" }>, align 8
@.d457 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c" is a type variable, not a value" }>, align 8
@.d458 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"G8b" }>, align 8
@.d459 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"type variable " }>, align 8
@.d460 = private constant <{ i64, [60 x i8] }> <{ i64 0, [60 x i8] c" is named after a type - choose a name no type has, as '<T>'" }>, align 8
@.d461 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"G1" }>, align 8
@.d462 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d463 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"' is handed on here, and " }>, align 8
@.d464 = private constant <{ i64, [90 x i8] }> <{ i64 0, [90 x i8] c" is unique - a unique value given by value lands once more only at its last mention, and '" }>, align 8
@.d465 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"' is mentioned after" }>, align 8
@.d466 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T13b" }>, align 8
@.d467 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Array<" }>, align 8
@.d468 = private constant <{ i64, [51 x i8] }> <{ i64 0, [51 x i8] c">(n, fill) copies its fill into every element, and " }>, align 8
@.d469 = private constant <{ i64, [54 x i8] }> <{ i64 0, [54 x i8] c" is unique - make each element with a comprehension ('" }>, align 8
@.d470 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"[" }>, align 8
@.d471 = private constant <{ i64, [54 x i8] }> <{ i64 0, [54 x i8] c"(...) for i in range n]'), or hold references ('Array<" }>, align 8
@.d472 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"&>')" }>, align 8
@.d473 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T13b" }>, align 8
@.d474 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c" is unique, so it is no part of " }>, align 8
@.d475 = private constant <{ i64, [91 x i8] }> <{ i64 0, [91 x i8] c", which is immut - an immut value is copied freely, a unique one never; hold a reference, '" }>, align 8
@.d476 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"&'" }>, align 8
@.d477 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T13b" }>, align 8
@.d478 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"unknown name " }>, align 8
@.d479 = private constant <{ i64, [54 x i8] }> <{ i64 0, [54 x i8] c" - if it is a build constant, define it with '-define " }>, align 8
@.d480 = private constant <{ i64, [37 x i8] }> <{ i64 0, [37 x i8] c"=VALUE', or declare it with a default" }>, align 8
@.d481 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"B10" }>, align 8
@.d482 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"unknown error type " }>, align 8
@.d483 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"R1" }>, align 8
@.d484 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c" has no method " }>, align 8
@.d485 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"M19" }>, align 8
@.d486 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"unknown name " }>, align 8
@.d487 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d488 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"unknown type " }>, align 8
@.d489 = private constant <{ i64, [58 x i8] }> <{ i64 0, [58 x i8] c" - the numbers are named by kind and width: did you mean '" }>, align 8
@.d490 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"'?" }>, align 8
@.d491 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"T4" }>, align 8
@.d492 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d493 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c", and the function type of " }>, align 8
@.d494 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c" says nothing of that - write '" }>, align 8
@.d495 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"' after its signature" }>, align 8
@.d496 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T22b" }>, align 8
@.d497 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"O25h" }>, align 8
@.d498 = private constant <{ i64, [91 x i8] }> <{ i64 0, [91 x i8] c"this value holds references into a scope the target outlives - build it where the target is" }>, align 8
@.d499 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"this returns a view of '" }>, align 8
@.d500 = private constant <{ i64, [131 x i8] }> <{ i64 0, [131 x i8] c"', whose storage cannot be built where the result goes - return the value (a result written without '&' copies it), or a copy: '$x'" }>, align 8
@.d501 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"O27" }>, align 8
@.d502 = private constant <{ i64, [28 x i8] }> <{ i64 0, [28 x i8] c"this writes through x[i] on " }>, align 8
@.d503 = private constant <{ i64, [95 x i8] }> <{ i64 0, [95 x i8] c", which declares At but not SetAt - the copy At gives back is never written back; declare SetAt" }>, align 8
@.d504 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"E31" }>, align 8
@.d505 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"S20, O26" }>, align 8
@.d506 = private constant <{ i64, [139 x i8] }> <{ i64 0, [139 x i8] c"this value refers to the generator's own storage, which its walk goes on with - yield a copy, built where the value goes ('x.Copy()', '$x')" }>, align 8
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
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_d8715251471fb7e5_1e2086cef33ddcd1 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fmsgs_2etypeNotValue(ptr %v0, ptr %v1, { i64, ptr } %a0)

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
