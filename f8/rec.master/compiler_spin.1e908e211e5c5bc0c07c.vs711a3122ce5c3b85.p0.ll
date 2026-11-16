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
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
@G_2ecompiler_2fspin_2eDrawn = global <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fspin_2eFrames = constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fspin_2eFrames.k1, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fspin_2eFrames.k2, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fspin_2eFrames.k3, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fspin_2eFrames.k4, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fspin_2eFrames.k5, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fspin_2eFrames.k6 }>, align 64
@G_2ecompiler_2fspin_2eFrames.k1 = internal constant <{ [9 x i8] }> <{ [9 x i8] c"\E2\A0\84\E2\A0\86\E2\A0\86" }>, align 8
@G_2ecompiler_2fspin_2eFrames.k2 = internal constant <{ [9 x i8] }> <{ [9 x i8] c"\E2\A0\86\E2\A0\84\E2\A0\86" }>, align 8
@G_2ecompiler_2fspin_2eFrames.k3 = internal constant <{ [9 x i8] }> <{ [9 x i8] c"\E2\A0\86\E2\A0\86\E2\A0\84" }>, align 8
@G_2ecompiler_2fspin_2eFrames.k4 = internal constant <{ [9 x i8] }> <{ [9 x i8] c"\E2\A0\86\E2\A0\86\E2\A0\82" }>, align 8
@G_2ecompiler_2fspin_2eFrames.k5 = internal constant <{ [9 x i8] }> <{ [9 x i8] c"\E2\A0\86\E2\A0\82\E2\A0\86" }>, align 8
@G_2ecompiler_2fspin_2eFrames.k6 = internal constant <{ [9 x i8] }> <{ [9 x i8] c"\E2\A0\82\E2\A0\86\E2\A0\86" }>, align 8
@G_2ecompiler_2fspin_2eInterval = constant <{ [8 x i8] }> <{ [8 x i8] c"\5A\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fspin_2eLock = global <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fspin_2eOn = global <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fspin_2ePoll = constant <{ [8 x i8] }> <{ [8 x i8] c"\14\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fspin_2eQuit = global <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fspin_2eRunning = global <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fspin_2eSince = global <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fspin_2eStartAfter = constant <{ [8 x i8] }> <{ [8 x i8] c"\2C\01\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fspin_2eTitle = global { i64, ptr } zeroinitializer
@G_2ecompiler_2fspin_2eWipe = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fspin_2eWipe.k1 }>, align 8
@G_2ecompiler_2fspin_2eWipe.k1 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\0D\1B\5B\4B" }>, align 8
define dso_local i1 @compiler_2fspin_2eArm() #0 {
entry:
  %l0 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call i1 @compiler_2fspin_2eEnabled()
  store i1 %t1, ptr %l0
  br label %bb1
bb1:
  %t2 = load i1, ptr %l0, !tbaa !21
  %t3 = xor i1 %t2, true
  br i1 %t3, label %bb2, label %bb3
bb2:
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  store atomic i64 1, ptr @G_2ecompiler_2fspin_2eRunning seq_cst, align 8
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fspin_2eBegin(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l4 = alloca i64
  %l7 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l11 = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load atomic i64, ptr @G_2ecompiler_2fspin_2eRunning seq_cst, align 8
  %t4 = icmp eq i64 %t2, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  call void @compiler_2fspin_2egrab()
  br label %bb4
bb4:
  %t6 = load ptr, ptr @__olang_prog_scope
  %t7 = ptrtoint ptr %t6 to i64
  store i64 %t7, ptr %l4, !tbaa !24
  %t8 = load i1, ptr @olang_2esole_2ecompiler_2fspin_2eglobal_2eTitle
  br i1 %t8, label %bb5, label %bb6
bb5:
  %t10 = load ptr, ptr @__olang_prog_scope
  %t11 = call ptr @__olang_region_make(ptr %t10)
  %t12 = ptrtoint ptr %t11 to i64
  store i64 %t12, ptr %l4, !tbaa !24
  br label %bb6
bb6:
  %t15 = extractvalue { i64, ptr } %a0, 1
  %t16 = extractvalue { i64, ptr } %a0, 0
  %t17 = load i64, ptr %l4
  %t18 = inttoptr i64 %t17 to ptr
  %t19 = call ptr @__olang_scope_alloc(ptr %t18, i64 %t16)
  call void @olang_textcopy(ptr %t19, ptr %t15, i64 %t16)
  %t20 = insertvalue { i64, ptr } undef, i64 %t16, 0
  %t21 = insertvalue { i64, ptr } %t20, ptr %t19, 1
  store { i64, ptr } %t21, ptr %l7, !tbaa !27
  %t22 = load i1, ptr @olang_2esole_2ecompiler_2fspin_2eglobal_2eTitle
  br i1 %t22, label %bb7, label %bb8
bb7:
  %t24 = load i64, ptr %l4
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = load { i64, ptr }, ptr %l7
  %t27 = extractvalue { i64, ptr } %t26, 1
  %t28 = call ptr @__olang_region_or(ptr %t27, ptr null)
  %t29 = icmp ne ptr %t28, null
  %t30 = select i1 %t29, ptr %t28, ptr null
  %t31 = icmp eq ptr %t30, %t25
  call void @__olang_region_settle(ptr %t25, i1 %t31)
  br label %bb8
bb8:
  %t32 = load { i64, ptr }, ptr @G_2ecompiler_2fspin_2eTitle, !tbaa !27
  store { i64, ptr } %t32, ptr %l9, !tbaa !27
  %t33 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t33, ptr @G_2ecompiler_2fspin_2eTitle, !tbaa !27
  %t34 = load i1, ptr @olang_2esole_2ecompiler_2fspin_2eglobal_2eTitle
  br i1 %t34, label %bb9, label %bb10
bb9:
  %t36 = load { i64, ptr }, ptr %l9
  %t37 = extractvalue { i64, ptr } %t36, 1
  call void @__olang_region_release(ptr %t37)
  store { i64, ptr } zeroinitializer, ptr %l9
  br label %bb10
bb10:
  %t38 = call i64 @std_2ftime_2eNow()
  store i64 %t38, ptr %l11
  br label %bb11
bb11:
  %t39 = load i64, ptr %l11, !tbaa !24
  store i64 %t39, ptr @G_2ecompiler_2fspin_2eSince, !tbaa !24
  store atomic i64 1, ptr @G_2ecompiler_2fspin_2eOn seq_cst, align 8
  call void @compiler_2fspin_2erelease()
  br label %bb12
bb12:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fspin_2eDraw(ptr %v0, ptr %v1, i64 %a0, { i64, ptr } %a1) #0 {
entry:
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load [6 x { i64, ptr }], ptr @G_2ecompiler_2fspin_2eFrames
  %t6 = srem i64 %a0, 6
  %t8 = getelementptr [6 x { i64, ptr }], ptr @G_2ecompiler_2fspin_2eFrames, i64 0, i64 %t6
  %t9 = load { i64, ptr }, ptr %t8, !tbaa !37
  %t11 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d0, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d0, i32 0, i32 1) }, 0
  %t14 = extractvalue { i64, ptr } %t9, 1
  %t15 = extractvalue { i64, ptr } %t9, 0
  %t16 = add i64 %t12, %t15
  %t17 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) }, 1
  %t18 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  %t19 = add i64 %t16, %t18
  %t21 = extractvalue { i64, ptr } %a1, 1
  %t22 = extractvalue { i64, ptr } %a1, 0
  %t23 = add i64 %t19, %t22
  %t24 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t25 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  %t26 = add i64 %t23, %t25
  %t27 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t26)
  call void @olang_textcopy(ptr %t27, ptr %t11, i64 %t12)
  %t28 = getelementptr i8, ptr %t27, i64 %t12
  call void @olang_textcopy(ptr %t28, ptr %t14, i64 %t15)
  %t29 = getelementptr i8, ptr %t28, i64 %t15
  call void @olang_textcopy(ptr %t29, ptr %t17, i64 %t18)
  %t30 = getelementptr i8, ptr %t29, i64 %t18
  call void @olang_textcopy(ptr %t30, ptr %t21, i64 %t22)
  %t31 = getelementptr i8, ptr %t30, i64 %t22
  call void @olang_textcopy(ptr %t31, ptr %t24, i64 %t25)
  %t32 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t33 = insertvalue { i64, ptr } %t32, ptr %t27, 1
  store { i64, ptr } %t33, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fspin_2eEnabled() #0 {
entry:
  %l1 = alloca i1
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i32
  %l8 = alloca i1
  %l11 = alloca i1
  %l13 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l15 = alloca i32
  %l17 = alloca i1
  %l20 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i32, ptr @G_2estd_2fio_2eStderr, !tbaa !23
  %t3 = call i1 @std_2fos_2eIsTerminal(i32 %t1)
  store i1 %t3, ptr %l1
  br label %bb1
bb1:
  %t4 = load i1, ptr %l1, !tbaa !21
  %t5 = xor i1 %t4, true
  br i1 %t5, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t8 = call { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %s0, ptr %s0, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d3, i32 0, i32 1) })
  %t9 = extractvalue { i32, { i64, ptr } } %t8, 1
  %t10 = extractvalue { i32, { i64, ptr } } %t8, 0
  store i32 %t10, ptr %l6
  %t11 = icmp ne i32 %t10, 0
  br i1 %t11, label %bb6, label %ok.12, !prof !99
ok.12:
  store { i64, ptr } %t9, ptr %l5
  br label %bb5
bb5:
  %t13 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t13, ptr %l4, !tbaa !27
  br label %bb10
bb6:
  %t14 = load i32, ptr %l6, !tbaa !23
  %t15 = ashr i32 %t14, 16
  %t17 = icmp eq i32 %t15, 1
  store i1 %t17, ptr %l8, !tbaa !21
  %t18 = load i32, ptr %l6, !tbaa !23
  %t19 = ashr i32 %t18, 16
  %t21 = icmp eq i32 %t19, 1
  br i1 %t21, label %bb7, label %bb8
bb7:
  call void @__olang_errpay_pop()
  br label %bb8
bb8:
  br label %bb9
bb9:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d4, i32 0, i32 1) }, ptr %l4, !tbaa !27
  br label %bb10
bb10:
  %t23 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t24 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t23, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) })
  store i1 %t24, ptr %l11
  br label %bb11
bb11:
  %t25 = load i1, ptr %l11, !tbaa !21
  br i1 %t25, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t27 = call { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %s0, ptr %s0, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d6, i32 0, i32 1) })
  %t28 = extractvalue { i32, { i64, ptr } } %t27, 1
  %t29 = extractvalue { i32, { i64, ptr } } %t27, 0
  store i32 %t29, ptr %l15
  %t30 = icmp ne i32 %t29, 0
  br i1 %t30, label %bb16, label %ok.31, !prof !99
ok.31:
  store { i64, ptr } %t28, ptr %l14
  br label %bb15
bb15:
  %t32 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t32, ptr %l13, !tbaa !27
  br label %bb20
bb16:
  %t33 = load i32, ptr %l15, !tbaa !23
  %t34 = ashr i32 %t33, 16
  %t36 = icmp eq i32 %t34, 1
  store i1 %t36, ptr %l17, !tbaa !21
  %t37 = load i32, ptr %l15, !tbaa !23
  %t38 = ashr i32 %t37, 16
  %t40 = icmp eq i32 %t38, 1
  br i1 %t40, label %bb17, label %bb18
bb17:
  call void @__olang_errpay_pop()
  br label %bb18
bb18:
  br label %bb19
bb19:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d7, i32 0, i32 1) }, ptr %l13, !tbaa !27
  br label %bb20
bb20:
  %t42 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t43 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t42, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d8, i32 0, i32 1) })
  store i1 %t43, ptr %l20
  br label %bb21
bb21:
  %t44 = load i1, ptr %l20, !tbaa !21
  %t45 = xor i1 %t44, true
  call void @__olang_scope_close(ptr %s0)
  store i1 %t45, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fspin_2eEnd() #0 {
entry:
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load atomic i64, ptr @G_2ecompiler_2fspin_2eRunning seq_cst, align 8
  %t4 = icmp eq i64 %t2, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  call void @compiler_2fspin_2egrab()
  br label %bb4
bb4:
  store atomic i64 0, ptr @G_2ecompiler_2fspin_2eOn seq_cst, align 8
  call void @compiler_2fspin_2eclear()
  br label %bb5
bb5:
  call void @compiler_2fspin_2erelease()
  br label %bb6
bb6:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fspin_2eRetitle(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l4 = alloca i64
  %l7 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load atomic i64, ptr @G_2ecompiler_2fspin_2eRunning seq_cst, align 8
  %t4 = icmp eq i64 %t2, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  call void @compiler_2fspin_2egrab()
  br label %bb4
bb4:
  %t6 = load ptr, ptr @__olang_prog_scope
  %t7 = ptrtoint ptr %t6 to i64
  store i64 %t7, ptr %l4, !tbaa !24
  %t8 = load i1, ptr @olang_2esole_2ecompiler_2fspin_2eglobal_2eTitle
  br i1 %t8, label %bb5, label %bb6
bb5:
  %t10 = load ptr, ptr @__olang_prog_scope
  %t11 = call ptr @__olang_region_make(ptr %t10)
  %t12 = ptrtoint ptr %t11 to i64
  store i64 %t12, ptr %l4, !tbaa !24
  br label %bb6
bb6:
  %t15 = extractvalue { i64, ptr } %a0, 1
  %t16 = extractvalue { i64, ptr } %a0, 0
  %t17 = load i64, ptr %l4
  %t18 = inttoptr i64 %t17 to ptr
  %t19 = call ptr @__olang_scope_alloc(ptr %t18, i64 %t16)
  call void @olang_textcopy(ptr %t19, ptr %t15, i64 %t16)
  %t20 = insertvalue { i64, ptr } undef, i64 %t16, 0
  %t21 = insertvalue { i64, ptr } %t20, ptr %t19, 1
  store { i64, ptr } %t21, ptr %l7, !tbaa !27
  %t22 = load i1, ptr @olang_2esole_2ecompiler_2fspin_2eglobal_2eTitle
  br i1 %t22, label %bb7, label %bb8
bb7:
  %t24 = load i64, ptr %l4
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = load { i64, ptr }, ptr %l7
  %t27 = extractvalue { i64, ptr } %t26, 1
  %t28 = call ptr @__olang_region_or(ptr %t27, ptr null)
  %t29 = icmp ne ptr %t28, null
  %t30 = select i1 %t29, ptr %t28, ptr null
  %t31 = icmp eq ptr %t30, %t25
  call void @__olang_region_settle(ptr %t25, i1 %t31)
  br label %bb8
bb8:
  %t32 = load { i64, ptr }, ptr @G_2ecompiler_2fspin_2eTitle, !tbaa !27
  store { i64, ptr } %t32, ptr %l9, !tbaa !27
  %t33 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t33, ptr @G_2ecompiler_2fspin_2eTitle, !tbaa !27
  %t34 = load i1, ptr @olang_2esole_2ecompiler_2fspin_2eglobal_2eTitle
  br i1 %t34, label %bb9, label %bb10
bb9:
  %t36 = load { i64, ptr }, ptr %l9
  %t37 = extractvalue { i64, ptr } %t36, 1
  call void @__olang_region_release(ptr %t37)
  store { i64, ptr } zeroinitializer, ptr %l9
  br label %bb10
bb10:
  call void @compiler_2fspin_2erelease()
  br label %bb11
bb11:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fspin_2eRun() #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca i64
  %l2 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l16 = alloca i1
  %l23 = alloca i32
  %l26 = alloca { i64, ptr }
  %s3 = alloca %olang.scope
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l0, !tbaa !24
  store i64 0, ptr %l1, !tbaa !24
  br label %bb1
bb1:
  %t2 = load atomic i64, ptr @G_2ecompiler_2fspin_2eQuit seq_cst, align 8
  %t4 = icmp eq i64 %t2, 0
  %t6 = xor i1 %t4, true
  br i1 %t6, label %bb2, label %bb3
bb2:
  br label %bb22
bb3:
  br label %bb4
bb4:
  %t8 = load i64, ptr @G_2ecompiler_2fspin_2ePoll, !tbaa !24
  %t10 = call i64 @std_2ftime_2eDuration_2eMillis(i64 %t8)
  store i64 %t10, ptr %l8
  br label %bb5
bb5:
  %t11 = load i64, ptr %l8, !tbaa !24
  call void @std_2ftime_2eSleep(i64 %t11)
  br label %bb6
bb6:
  %t12 = call i64 @std_2ftime_2eNow()
  store i64 %t12, ptr %l9
  br label %bb7
bb7:
  %t13 = load i64, ptr %l9, !tbaa !24
  store i64 %t13, ptr %l2, !tbaa !24
  %t14 = load i64, ptr %l2, !tbaa !24
  %t15 = load i64, ptr %l1, !tbaa !24
  %t18 = icmp slt i64 %t14, %t15
  br i1 %t18, label %bb8, label %bb9
bb8:
  br label %bb21
bb9:
  br label %bb10
bb10:
  call void @compiler_2fspin_2egrab()
  br label %bb11
bb11:
  %t21 = load atomic i64, ptr @G_2ecompiler_2fspin_2eOn seq_cst, align 8
  %t23 = icmp eq i64 %t21, 1
  br i1 %t23, label %bb12, label %bb13
bb12:
  %t25 = load i64, ptr %l2, !tbaa !24
  %t26 = load i64, ptr @G_2ecompiler_2fspin_2eSince, !tbaa !24
  %t27 = load i64, ptr @G_2ecompiler_2fspin_2eStartAfter, !tbaa !24
  %t29 = mul i64 %t27, 1000000
  %t32 = add i64 %t26, %t29
  %t35 = icmp sge i64 %t25, %t32
  store i1 %t35, ptr %l16, !tbaa !21
  br label %bb14
bb13:
  store i1 false, ptr %l16, !tbaa !21
  br label %bb14
bb14:
  %t37 = load i1, ptr %l16, !tbaa !21
  br i1 %t37, label %bb15, label %bb16
bb15:
  store %olang.scope zeroinitializer, ptr %s3
  %t38 = load i32, ptr @G_2estd_2fio_2eStderr, !tbaa !23
  store i32 %t38, ptr %l23, !tbaa !23
  %t39 = load i64, ptr %l0, !tbaa !24
  %t40 = load { i64, ptr }, ptr @G_2ecompiler_2fspin_2eTitle, !tbaa !27
  %t41 = load ptr, ptr @__olang_prog_scope
  %t44 = call { i64, ptr } @compiler_2fspin_2eDraw(ptr %t41, ptr %s3, i64 %t39, { i64, ptr } %t40)
  store { i64, ptr } %t44, ptr %l26
  br label %bb17
bb16:
  br label %bb19
bb17:
  %t45 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t46 = extractvalue { i64, ptr } %t45, 0
  %t47 = extractvalue { i64, ptr } %t45, 1
  %t48 = mul i64 %t46, 1
  %t49 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t48)
  call void @llvm.memcpy.p0.p0.i64(ptr %t49, ptr %t47, i64 %t48, i1 false)
  %t50 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr %t49, 1
  %t52 = load i32, ptr %l23, !tbaa !23
  call void @compiler_2fspin_2eput(ptr %s3, i32 %t52, { i64, ptr } %t51)
  br label %bb18
bb18:
  store atomic i64 1, ptr @G_2ecompiler_2fspin_2eDrawn seq_cst, align 8
  %t55 = load i64, ptr %l0, !tbaa !24
  %t57 = add i64 %t55, 1
  store i64 %t57, ptr %l0, !tbaa !24
  %t59 = load i64, ptr %l2, !tbaa !24
  %t60 = load i64, ptr @G_2ecompiler_2fspin_2eInterval, !tbaa !24
  %t62 = mul i64 %t60, 1000000
  %t65 = add i64 %t59, %t62
  store i64 %t65, ptr %l1, !tbaa !24
  call void @__olang_scope_close(ptr %s3)
  br label %bb19
bb19:
  call void @compiler_2fspin_2erelease()
  br label %bb20
bb20:
  br label %bb21
bb21:
  br label %bb1
bb22:
  call void @compiler_2fspin_2eerase()
  br label %bb23
bb23:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fspin_2eSay(ptr %v0, i32 %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca i32
  %l1 = alloca { i64, ptr }
  store i32 %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load atomic i64, ptr @G_2ecompiler_2fspin_2eRunning seq_cst, align 8
  %t4 = icmp eq i64 %t2, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = load i32, ptr %l0, !tbaa !23
  %t7 = load { i64, ptr }, ptr %l1, !tbaa !27
  call void @compiler_2fspin_2eput(ptr %v0, i32 %t6, { i64, ptr } %t7)
  br label %bb3
bb2:
  br label %bb4
bb3:
  br label %ret
bb4:
  call void @compiler_2fspin_2egrab()
  br label %bb5
bb5:
  call void @compiler_2fspin_2eclear()
  br label %bb6
bb6:
  %t10 = load i32, ptr %l0, !tbaa !23
  %t11 = load { i64, ptr }, ptr %l1, !tbaa !27
  call void @compiler_2fspin_2eput(ptr %v0, i32 %t10, { i64, ptr } %t11)
  br label %bb7
bb7:
  call void @compiler_2fspin_2erelease()
  br label %bb8
bb8:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fspin_2eStop() #0 {
entry:
  br label %start
start:
  br label %bb0
bb0:
  store atomic i64 1, ptr @G_2ecompiler_2fspin_2eQuit seq_cst, align 8
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fspin_2eTitle_2einit() #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d9, i32 0, i32 1) }, ptr %l0, !tbaa !27
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t2 = load { i64, ptr }, ptr @G_2ecompiler_2fspin_2eTitle, !tbaa !27
  store { i64, ptr } %t2, ptr %l2, !tbaa !27
  store { i64, ptr } %t1, ptr @G_2ecompiler_2fspin_2eTitle, !tbaa !27
  %t4 = load i1, ptr @olang_2esole_2ecompiler_2fspin_2eglobal_2eTitle
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = load { i64, ptr }, ptr %l2
  %t7 = extractvalue { i64, ptr } %t6, 1
  call void @__olang_region_release(ptr %t7)
  store { i64, ptr } zeroinitializer, ptr %l2
  br label %bb2
bb2:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fspin_2eclear() #0 {
entry:
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load atomic i64, ptr @G_2ecompiler_2fspin_2eDrawn seq_cst, align 8
  %t4 = icmp eq i64 %t2, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load i32, ptr @G_2estd_2fio_2eStderr, !tbaa !23
  %t7 = load { i64, ptr }, ptr @G_2ecompiler_2fspin_2eWipe, !tbaa !27
  %t8 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2fspin_2eput(ptr %t8, i32 %t6, { i64, ptr } %t7)
  br label %bb4
bb4:
  store atomic i64 0, ptr @G_2ecompiler_2fspin_2eDrawn seq_cst, align 8
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fspin_2eerase() #0 {
entry:
  br label %start
start:
  br label %bb0
bb0:
  call void @compiler_2fspin_2egrab()
  br label %bb1
bb1:
  call void @compiler_2fspin_2eclear()
  br label %bb2
bb2:
  call void @compiler_2fspin_2erelease()
  br label %bb3
bb3:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fspin_2egrab() #0 {
entry:
  br label %start
start:
  br label %bb0
bb0:
  br label %bb1
bb1:
  %t2 = cmpxchg ptr @G_2ecompiler_2fspin_2eLock, i64 0, i64 1 seq_cst seq_cst
  %t3 = extractvalue { i64, i1 } %t2, 0
  %t5 = icmp ne i64 %t3, 0
  %t7 = xor i1 %t5, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  br label %bb6
bb3:
  br label %bb4
bb4:
  br label %bb5
bb5:
  br label %bb1
bb6:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fspin_2eput(ptr %v0, i32 %a0, { i64, ptr } %a1) #0 {
entry:
  %l5 = alloca i32
  %l7 = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t6 = call i32 @std_2fio_2eWrite(ptr %v0, i32 %a0, { i64, ptr } %a1)
  store i32 %t6, ptr %l5
  %t7 = icmp ne i32 %t6, 0
  br i1 %t7, label %bb2, label %ok.8, !prof !99
ok.8:
  br label %bb1
bb1:
  br label %bb6
bb2:
  %t9 = load i32, ptr %l5, !tbaa !23
  %t10 = ashr i32 %t9, 16
  %t12 = icmp eq i32 %t10, 1
  store i1 %t12, ptr %l7, !tbaa !21
  %t13 = load i32, ptr %l5, !tbaa !23
  %t14 = ashr i32 %t13, 16
  %t16 = icmp eq i32 %t14, 1
  br i1 %t16, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  br label %bb6
bb6:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fspin_2erelease() #0 {
entry:
  br label %start
start:
  br label %bb0
bb0:
  store atomic i64 0, ptr @G_2ecompiler_2fspin_2eLock seq_cst, align 8
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fspin_2eshown(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i8
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca { i64, ptr }
  %l25 = alloca i1
  %l31 = alloca i1
  %l32 = alloca { i64, ptr }
  %l37 = alloca i1
  %l38 = alloca { i64, ptr }
  %l47 = alloca i64
  %l49 = alloca i64
  %l61 = alloca { i64, ptr }
  %l62 = alloca { i64, ptr }
  %l63 = alloca i64
  %l64 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l5
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l1
  store i64 0, ptr %l2, !tbaa !24
  store i64 0, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t3 = load i64, ptr %l3, !tbaa !24
  %t4 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t9 = icmp slt i64 %t3, %t6
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb3, label %bb4
bb3:
  br label %bb33
bb4:
  br label %bb5
bb5:
  %t13 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t13, ptr %l11, !tbaa !27
  %t14 = load i64, ptr %l3, !tbaa !24
  %t16 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = getelementptr i8, ptr %t17, i64 %t14
  %t19 = load i8, ptr %t18, !tbaa !32
  store i8 %t19, ptr %l4, !tbaa !22
  %t21 = load i8, ptr %l4, !tbaa !22
  %t23 = icmp eq i8 %t21, 13
  br i1 %t23, label %bb6, label %bb7
bb6:
  store i64 0, ptr %l2, !tbaa !24
  %t25 = load i64, ptr %l3, !tbaa !24
  %t27 = add i64 %t25, 1
  store i64 %t27, ptr %l3, !tbaa !24
  br label %bb32
bb7:
  br label %bb8
bb8:
  %t29 = load i8, ptr %l4, !tbaa !22
  %t31 = icmp eq i8 %t29, 10
  br i1 %t31, label %bb9, label %bb10
bb9:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2eTrunc_Hdb40e008e45c3217ff19be25d205c76e(ptr %s0, ptr %l1, i64 0)
  br label %bb11
bb10:
  br label %bb12
bb11:
  store i64 0, ptr %l2, !tbaa !24
  %t34 = load i64, ptr %l3, !tbaa !24
  %t36 = add i64 %t34, 1
  store i64 %t36, ptr %l3, !tbaa !24
  br label %bb32
bb12:
  %t38 = load i8, ptr %l4, !tbaa !22
  %t40 = icmp eq i8 %t38, 27
  br i1 %t40, label %bb13, label %bb14
bb13:
  %t42 = load i64, ptr %l3, !tbaa !24
  %t44 = add i64 %t42, 2
  %t45 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t47 = extractvalue { i64, ptr } %t45, 0
  %t50 = icmp slt i64 %t44, %t47
  store i1 %t50, ptr %l25, !tbaa !21
  br label %bb15
bb14:
  store i1 false, ptr %l25, !tbaa !21
  br label %bb15
bb15:
  %t52 = load i1, ptr %l25, !tbaa !21
  br i1 %t52, label %bb16, label %bb17
bb16:
  %t53 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t53, ptr %l32, !tbaa !27
  %t54 = load i64, ptr %l3, !tbaa !24
  %t56 = add i64 %t54, 1
  %t58 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !27
  %t60 = getelementptr i8, ptr %t59, i64 %t56
  %t61 = load i8, ptr %t60, !tbaa !32
  %t63 = icmp eq i8 %t61, 91
  store i1 %t63, ptr %l31, !tbaa !21
  br label %bb18
bb17:
  store i1 false, ptr %l31, !tbaa !21
  br label %bb18
bb18:
  %t65 = load i1, ptr %l31, !tbaa !21
  br i1 %t65, label %bb19, label %bb20
bb19:
  %t66 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t66, ptr %l38, !tbaa !27
  %t67 = load i64, ptr %l3, !tbaa !24
  %t69 = add i64 %t67, 2
  %t71 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !27
  %t73 = getelementptr i8, ptr %t72, i64 %t69
  %t74 = load i8, ptr %t73, !tbaa !32
  %t76 = icmp eq i8 %t74, 75
  store i1 %t76, ptr %l37, !tbaa !21
  br label %bb21
bb20:
  store i1 false, ptr %l37, !tbaa !21
  br label %bb21
bb21:
  %t78 = load i1, ptr %l37, !tbaa !21
  br i1 %t78, label %bb22, label %bb23
bb22:
  %t79 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2eTrunc_Hdb40e008e45c3217ff19be25d205c76e(ptr %s0, ptr %l1, i64 %t79)
  br label %bb24
bb23:
  br label %bb25
bb24:
  %t82 = load i64, ptr %l3, !tbaa !24
  %t84 = add i64 %t82, 3
  store i64 %t84, ptr %l3, !tbaa !24
  br label %bb32
bb25:
  %t86 = load i64, ptr %l2, !tbaa !24
  store i64 %t86, ptr %l47, !tbaa !24
  %t88 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2eLen_3cstd_2fprelude_2ftext_3aChar_3e(ptr %s0, ptr %l1)
  store i64 %t88, ptr %l49
  br label %bb26
bb26:
  %t89 = load i64, ptr %l47, !tbaa !24
  %t90 = load i64, ptr %l49, !tbaa !24
  %t91 = icmp slt i64 %t89, %t90
  br i1 %t91, label %bb27, label %bb28
bb27:
  %t93 = load i64, ptr %l2, !tbaa !24
  %t94 = load i8, ptr %l4, !tbaa !22
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2eSetAt_H5599612416adc5126b050aa8d746fbf9(ptr %s0, ptr %l1, i64 %t93, i8 %t94)
  br label %bb29
bb28:
  %t98 = load i8, ptr %l4, !tbaa !22
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2ePush_3cstd_2fprelude_2ftext_3aChar_3e(ptr %s0, ptr %l1, i8 %t98)
  br label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb31
bb31:
  %t101 = load i64, ptr %l2, !tbaa !24
  %t103 = add i64 %t101, 1
  store i64 %t103, ptr %l2, !tbaa !24
  %t105 = load i64, ptr %l3, !tbaa !24
  %t107 = add i64 %t105, 1
  store i64 %t107, ptr %l3, !tbaa !24
  br label %bb32
bb32:
  br label %bb2
bb33:
  %t110 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2eToArr_H8081e04b38a8da5362a19182ff2ab7d7(ptr %s0, ptr %s0, ptr %l1)
  store { i64, ptr } %t110, ptr %l61
  br label %bb34
bb34:
  %t111 = load { i64, ptr }, ptr %l61, !tbaa !27
  store { i64, ptr } %t111, ptr %l62, !tbaa !27
  %t112 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t113 = extractvalue { i64, ptr } %t112, 0
  store i64 %t113, ptr %l63, !tbaa !24
  %t114 = load i64, ptr %l63, !tbaa !24
  %t115 = mul i64 %t114, 1
  %t116 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t115)
  %t117 = insertvalue { i64, ptr } undef, i64 %t114, 0
  %t118 = insertvalue { i64, ptr } %t117, ptr %t116, 1
  store { i64, ptr } %t118, ptr %l64, !tbaa !27
  %t119 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !27
  %t121 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t122 = load ptr, ptr %t121, !tbaa !27
  %t123 = load i64, ptr %l63, !tbaa !24
  %t124 = mul i64 %t123, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t120, ptr %t122, i64 %t124, i1 false)
  %t125 = load { i64, ptr }, ptr %l64, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t125, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

@__olang_prog_scope = external thread_local(initialexec) global ptr
@olang_2esole_2ecompiler_2fspin_2eglobal_2eTitle = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
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
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
declare void @__olang_region_release(ptr) noinline
@.d0 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0D" }>, align 8
@.d1 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d2 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"\1B[K" }>, align 8
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
@.d3 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"OLANG_SPINNER" }>, align 8
declare void @__olang_errpay_pop()
@.d4 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d5 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"0" }>, align 8
@.d6 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"TERM" }>, align 8
@.d7 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d8 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"dumb" }>, align 8
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@.d9 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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
declare i64 @std_2ftime_2eNow()
@G_2estd_2fio_2eStderr = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare i1 @std_2fos_2eIsTerminal(i32 %a0)
declare { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @std_2ftime_2eDuration_2eMillis(i64 %a0)
declare void @std_2ftime_2eSleep(i64 %a0)
declare i32 @std_2fio_2eWrite(ptr %v0, i32 %a0, { i64, ptr } %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2eTrunc_Hdb40e008e45c3217ff19be25d205c76e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2eLen_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2eSetAt_H5599612416adc5126b050aa8d746fbf9(ptr %v0, ptr %a0, i64 %a1, i8 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2ePush_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %a0, i8 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2eToArr_H8081e04b38a8da5362a19182ff2ab7d7(ptr %v0, ptr %v1, ptr %a0)

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
