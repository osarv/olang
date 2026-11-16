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
%"compiler/lineedit:Editor" = type { i1, i1, i64, { i64, ptr }, i64, i1, %"std/prelude/text:StringBuilder", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, { i64, ptr }, i64, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i1, i1, i1, i1, i1, { i64, ptr }, { i64, ptr }, i64, i1, { i64, ptr }, i64, i64, i64, i8, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"<termios.h>:termios" = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }
%"compiler/lineedit:snap" = type { { i64, ptr }, i64 }
@G_2ecompiler_2flineedit_2eKeep = constant <{ [8 x i8] }> <{ [8 x i8] c"\E8\03\00\00\00\00\00\00" }>, align 8
define dso_local i32 @compiler_2flineedit_2eChoose(i1 %a0) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l12 = alloca i32
  %l14 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l19 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call { i64, ptr } @compiler_2flineedit_2eConfigPath(ptr %s0)
  store { i64, ptr } %t1, ptr %l2
  br label %bb1
bb1:
  %t2 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t2, ptr %l1, !tbaa !27
  %t3 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  %t6 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d0, i32 0, i32 1) }, 0
  %t9 = sub i64 %t5, %t6
  store i64 %t9, ptr %l6, !tbaa !24
  %t10 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t10, 0
  store i64 %t11, ptr %l7, !tbaa !24
  %t12 = icmp sge i64 0, 0
  br i1 %t12, label %bb2, label %bb3
bb2:
  %t14 = load i64, ptr %l6, !tbaa !24
  %t15 = icmp sle i64 0, %t14
  br i1 %t15, label %bb4, label %bb5
bb3:
  call void @__olang_check_failed(ptr @olang_loc_6d8e321d50b20c8b_e1e5724559d494c7)
  unreachable
bb4:
  %t17 = load i64, ptr %l6, !tbaa !24
  %t18 = load i64, ptr %l7, !tbaa !24
  %t19 = icmp sle i64 %t17, %t18
  br i1 %t19, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_6d8e321d50b20c8b_e1e5724559d494c7)
  unreachable
bb6:
  %t21 = getelementptr { i64, ptr }, ptr %l1, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = load i64, ptr %l6, !tbaa !24
  %t24 = getelementptr i8, ptr %t22, i64 0
  %t25 = sub i64 %t23, 0
  %t26 = insertvalue { i64, ptr } undef, i64 %t25, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t24, 1
  %t29 = call i32 @std_2fos_2eMkDirAll(ptr %s0, { i64, ptr } %t27)
  store i32 %t29, ptr %l12
  %t30 = icmp ne i32 %t29, 0
  br i1 %t30, label %bb9, label %ok.31, !prof !99
ok.31:
  br label %bb8
bb7:
  call void @__olang_check_failed(ptr @olang_loc_6d8e321d50b20c8b_e1e5724559d494c7)
  unreachable
bb8:
  br label %bb10
bb9:
  %t32 = load i32, ptr %l12, !tbaa !23
  %t33 = lshr i32 %t32, 16
  %t34 = and i32 %t32, 65535
  %t35 = icmp eq i32 %t33, 1
  %t36 = select i1 %t35, i32 1, i32 0
  %t37 = icmp eq i32 %t32, 0
  %t38 = shl i32 %t36, 16
  %t39 = or i32 %t38, %t34
  %t40 = select i1 %t37, i32 0, i32 %t39
  call void @__olang_scope_close(ptr %s0)
  store i32 %t40, ptr %rv
  br label %ret
bb10:
  %t42 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t42, ptr %l14, !tbaa !27
  br i1 %a0, label %bb11, label %bb12
bb11:
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d1, i32 0, i32 1) }, ptr %l17, !tbaa !27
  %t45 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t45, ptr %l16, !tbaa !27
  br label %bb13
bb12:
  store { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d2, i32 0, i32 1) }, ptr %l18, !tbaa !27
  %t46 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t46, ptr %l16, !tbaa !27
  br label %bb13
bb13:
  %t47 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t48 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t49 = call i32 @std_2fos_2eWriteFile(ptr %s0, ptr %s0, { i64, ptr } %t47, { i64, ptr } %t48)
  store i32 %t49, ptr %l19
  %t50 = icmp ne i32 %t49, 0
  br i1 %t50, label %bb15, label %ok.51, !prof !99
ok.51:
  br label %bb14
bb14:
  br label %bb16
bb15:
  %t52 = load i32, ptr %l19, !tbaa !23
  %t53 = lshr i32 %t52, 16
  %t54 = and i32 %t52, 65535
  %t55 = icmp eq i32 %t53, 1
  %t56 = select i1 %t55, i32 1, i32 0
  %t57 = icmp eq i32 %t52, 0
  %t58 = shl i32 %t56, 16
  %t59 = or i32 %t58, %t54
  %t60 = select i1 %t57, i32 0, i32 %t59
  call void @__olang_scope_close(ptr %s0)
  store i32 %t60, ptr %rv
  br label %ret
bb16:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2flineedit_2eConfigPath(ptr %v0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i32
  %l7 = alloca i1
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca i32
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %s0, ptr %s0, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d3, i32 0, i32 1) })
  %t2 = extractvalue { i32, { i64, ptr } } %t1, 1
  %t3 = extractvalue { i32, { i64, ptr } } %t1, 0
  store i32 %t3, ptr %l3
  %t4 = icmp ne i32 %t3, 0
  br i1 %t4, label %bb2, label %ok.5, !prof !99
ok.5:
  store { i64, ptr } %t2, ptr %l2
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t6, ptr %l1, !tbaa !27
  br label %bb6
bb2:
  %t7 = load i32, ptr %l3, !tbaa !23
  %t8 = ashr i32 %t7, 16
  %t10 = icmp eq i32 %t8, 1
  br i1 %t10, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d4, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb6
bb6:
  %t12 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t12, ptr %l0, !tbaa !27
  %t13 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t15 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t13, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d5, i32 0, i32 1) })
  store i1 %t15, ptr %l7
  br label %bb7
bb7:
  %t16 = load i1, ptr %l7, !tbaa !21
  br i1 %t16, label %bb8, label %bb9
bb8:
  store %olang.scope zeroinitializer, ptr %s1
  %t17 = call { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %s1, ptr %s1, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d6, i32 0, i32 1) })
  %t18 = extractvalue { i32, { i64, ptr } } %t17, 1
  %t19 = extractvalue { i32, { i64, ptr } } %t17, 0
  store i32 %t19, ptr %l10
  %t20 = icmp ne i32 %t19, 0
  br i1 %t20, label %bb11, label %ok.21, !prof !99
ok.21:
  store { i64, ptr } %t18, ptr %l9
  br label %bb10
bb9:
  br label %bb16
bb10:
  %t22 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t22, ptr %l8, !tbaa !27
  br label %bb15
bb11:
  %t23 = load i32, ptr %l10, !tbaa !23
  %t24 = ashr i32 %t23, 16
  %t26 = icmp eq i32 %t24, 1
  br i1 %t26, label %bb12, label %bb13
bb12:
  call void @__olang_errpay_pop()
  br label %bb13
bb13:
  br label %bb14
bb14:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d7, i32 0, i32 1) }, ptr %l8, !tbaa !27
  br label %bb15
bb15:
  %t28 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t28, 1
  %t30 = extractvalue { i64, ptr } %t28, 0
  %t31 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t32 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  %t33 = add i64 %t30, %t32
  %t34 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t33)
  call void @olang_textcopy(ptr %t34, ptr %t29, i64 %t30)
  %t35 = getelementptr i8, ptr %t34, i64 %t30
  call void @olang_textcopy(ptr %t35, ptr %t31, i64 %t32)
  %t36 = insertvalue { i64, ptr } undef, i64 %t33, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t34, 1
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t37, ptr %rv
  br label %ret
bb16:
  %t39 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t39, 1
  %t42 = extractvalue { i64, ptr } %t39, 0
  %t43 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t44 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  %t45 = add i64 %t42, %t44
  %t46 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t45)
  call void @olang_textcopy(ptr %t46, ptr %t41, i64 %t42)
  %t47 = getelementptr i8, ptr %t46, i64 %t42
  call void @olang_textcopy(ptr %t47, ptr %t43, i64 %t44)
  %t48 = insertvalue { i64, ptr } undef, i64 %t45, 0
  %t49 = insertvalue { i64, ptr } %t48, ptr %t46, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t49, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2flineedit_2eEditor_2etesting(ptr %out, ptr %v0, i1 %a0) #0 {
entry:
  %lp1 = alloca ptr
  %l3 = alloca %"compiler/lineedit:Editor"
  %l6 = alloca %"compiler/lineedit:Editor"
  %t2 = alloca %"compiler/lineedit:Editor", align 8
  br label %start
start:
  br label %bb0
bb0:
  call void @compiler_2flineedit_3aEditor_2ector(ptr %t2, ptr %v0, i1 %a0, i1 false, i64 80)
  call void @llvm.memmove.p0.p0.i64(ptr %l3, ptr %t2, i64 432, i1 false)
  br label %bb1
bb1:
  %t4 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 432, i64 8)
  store ptr %t4, ptr %lp1
  %t5 = load ptr, ptr %lp1
  call void @llvm.memmove.p0.p0.i64(ptr %t5, ptr %l3, i64 432, i1 false)
  %t6 = load ptr, ptr %lp1
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eBegin(ptr %v0, ptr %t6)
  br label %bb2
bb2:
  %t8 = load ptr, ptr %lp1
  %t9 = getelementptr %"compiler/lineedit:Editor", ptr %t8, i32 0, i32 6
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eClear(ptr %v0, ptr %t9)
  br label %bb3
bb3:
  %t11 = load ptr, ptr %lp1
  call void @llvm.memmove.p0.p0.i64(ptr %l6, ptr %t11, i64 432, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l6, i64 432, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2flineedit_2eHistoryPath(ptr %v0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i32
  %l7 = alloca i1
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca i32
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %s0, ptr %s0, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d10, i32 0, i32 1) })
  %t2 = extractvalue { i32, { i64, ptr } } %t1, 1
  %t3 = extractvalue { i32, { i64, ptr } } %t1, 0
  store i32 %t3, ptr %l3
  %t4 = icmp ne i32 %t3, 0
  br i1 %t4, label %bb2, label %ok.5, !prof !99
ok.5:
  store { i64, ptr } %t2, ptr %l2
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t6, ptr %l1, !tbaa !27
  br label %bb6
bb2:
  %t7 = load i32, ptr %l3, !tbaa !23
  %t8 = ashr i32 %t7, 16
  %t10 = icmp eq i32 %t8, 1
  br i1 %t10, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d11, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb6
bb6:
  %t12 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t12, ptr %l0, !tbaa !27
  %t13 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t15 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t13, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d12, i32 0, i32 1) })
  store i1 %t15, ptr %l7
  br label %bb7
bb7:
  %t16 = load i1, ptr %l7, !tbaa !21
  br i1 %t16, label %bb8, label %bb9
bb8:
  store %olang.scope zeroinitializer, ptr %s1
  %t17 = call { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %s1, ptr %s1, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d13, i32 0, i32 1) })
  %t18 = extractvalue { i32, { i64, ptr } } %t17, 1
  %t19 = extractvalue { i32, { i64, ptr } } %t17, 0
  store i32 %t19, ptr %l10
  %t20 = icmp ne i32 %t19, 0
  br i1 %t20, label %bb11, label %ok.21, !prof !99
ok.21:
  store { i64, ptr } %t18, ptr %l9
  br label %bb10
bb9:
  br label %bb16
bb10:
  %t22 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t22, ptr %l8, !tbaa !27
  br label %bb15
bb11:
  %t23 = load i32, ptr %l10, !tbaa !23
  %t24 = ashr i32 %t23, 16
  %t26 = icmp eq i32 %t24, 1
  br i1 %t26, label %bb12, label %bb13
bb12:
  call void @__olang_errpay_pop()
  br label %bb13
bb13:
  br label %bb14
bb14:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) }, ptr %l8, !tbaa !27
  br label %bb15
bb15:
  %t28 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t28, 1
  %t30 = extractvalue { i64, ptr } %t28, 0
  %t31 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t32 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t33 = add i64 %t30, %t32
  %t34 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t33)
  call void @olang_textcopy(ptr %t34, ptr %t29, i64 %t30)
  %t35 = getelementptr i8, ptr %t34, i64 %t30
  call void @olang_textcopy(ptr %t35, ptr %t31, i64 %t32)
  %t36 = insertvalue { i64, ptr } undef, i64 %t33, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t34, 1
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t37, ptr %rv
  br label %ret
bb16:
  %t39 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t39, 1
  %t42 = extractvalue { i64, ptr } %t39, 0
  %t43 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t44 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  %t45 = add i64 %t42, %t44
  %t46 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t45)
  call void @olang_textcopy(ptr %t46, ptr %t41, i64 %t42)
  %t47 = getelementptr i8, ptr %t46, i64 %t42
  call void @olang_textcopy(ptr %t47, ptr %t43, i64 %t44)
  %t48 = insertvalue { i64, ptr } undef, i64 %t45, 0
  %t49 = insertvalue { i64, ptr } %t48, ptr %t46, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t49, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2flineedit_2eViChosen() #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i32
  %l12 = alloca i1
  %l15 = alloca i1
  %l16 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l20 = alloca i32
  %l24 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l36 = alloca i1
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %s0, ptr %s0, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d17, i32 0, i32 1) })
  %t2 = extractvalue { i32, { i64, ptr } } %t1, 1
  %t3 = extractvalue { i32, { i64, ptr } } %t1, 0
  store i32 %t3, ptr %l8
  %t4 = icmp ne i32 %t3, 0
  br i1 %t4, label %bb2, label %ok.5, !prof !99
ok.5:
  store { i64, ptr } %t2, ptr %l7
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t6, ptr %l6, !tbaa !27
  br label %bb6
bb2:
  %t7 = load i32, ptr %l8, !tbaa !23
  %t8 = ashr i32 %t7, 16
  %t10 = icmp eq i32 %t8, 1
  br i1 %t10, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d18, i32 0, i32 1) }, ptr %l6, !tbaa !27
  br label %bb6
bb6:
  %t12 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t12, ptr %l0, !tbaa !27
  %t13 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t15 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t13, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d19, i32 0, i32 1) })
  store i1 %t15, ptr %l12
  br label %bb7
bb7:
  %t16 = load i1, ptr %l12, !tbaa !21
  %t17 = xor i1 %t16, true
  br i1 %t17, label %bb8, label %bb9
bb8:
  store %olang.scope zeroinitializer, ptr %s1
  %t19 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t21 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s1, { i64, ptr } %t19, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d20, i32 0, i32 1) })
  store i1 %t21, ptr %l15
  br label %bb10
bb9:
  br label %bb11
bb10:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t22 = load i1, ptr %l15, !tbaa !21
  store i1 %t22, ptr %rv
  br label %ret
bb11:
  %t23 = call { i64, ptr } @compiler_2flineedit_2eConfigPath(ptr %s0)
  store { i64, ptr } %t23, ptr %l17
  br label %bb12
bb12:
  %t24 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t25 = extractvalue { i64, ptr } %t24, 0
  %t26 = extractvalue { i64, ptr } %t24, 1
  %t27 = mul i64 %t25, 1
  %t28 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t27)
  call void @llvm.memcpy.p0.p0.i64(ptr %t28, ptr %t26, i64 %t27, i1 false)
  %t29 = insertvalue { i64, ptr } undef, i64 %t25, 0
  %t30 = insertvalue { i64, ptr } %t29, ptr %t28, 1
  %t32 = call { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %s0, ptr %s0, { i64, ptr } %t30)
  %t33 = extractvalue { i32, { i64, ptr } } %t32, 1
  %t34 = extractvalue { i32, { i64, ptr } } %t32, 0
  store i32 %t34, ptr %l20
  %t35 = icmp ne i32 %t34, 0
  br i1 %t35, label %bb14, label %ok.36, !prof !99
ok.36:
  store { i64, ptr } %t33, ptr %l19
  br label %bb13
bb13:
  %t37 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t37, ptr %l16, !tbaa !27
  br label %bb18
bb14:
  %t38 = load i32, ptr %l20, !tbaa !23
  %t39 = ashr i32 %t38, 16
  %t41 = icmp eq i32 %t39, 1
  br i1 %t41, label %bb15, label %bb16
bb15:
  call void @__olang_errpay_pop()
  br label %bb16
bb16:
  br label %bb17
bb17:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d21, i32 0, i32 1) }, ptr %l16, !tbaa !27
  br label %bb18
bb18:
  %t43 = load { i64, ptr }, ptr %l16, !tbaa !27
  store %olang.scope zeroinitializer, ptr %s2
  %t46 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %s0, ptr %s2, ptr %s2, { i64, ptr } %t43, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d22, i32 0, i32 1) })
  store { i64, ptr } %t46, ptr %l24
  br label %bb19
bb19:
  %t47 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t47, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t48 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t50 = extractvalue { i64, ptr } %t48, 0
  store i64 %t50, ptr %l4, !tbaa !24
  br label %bb20
bb20:
  store %olang.scope zeroinitializer, ptr %s3
  %t52 = load i64, ptr %l3, !tbaa !24
  %t53 = load i64, ptr %l4, !tbaa !24
  %t56 = icmp slt i64 %t52, %t53
  %t58 = xor i1 %t56, true
  br i1 %t58, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s3)
  br label %bb30
bb22:
  br label %bb23
bb23:
  %t60 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t60, ptr %l31, !tbaa !27
  %t61 = load i64, ptr %l3, !tbaa !24
  %t63 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !27
  %t65 = getelementptr { i64, ptr }, ptr %t64, i64 %t61
  %t66 = load { i64, ptr }, ptr %t65, !tbaa !37
  %t70 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %s2, ptr %s2, { i64, ptr } %t66)
  store { i64, ptr } %t70, ptr %l35
  br label %bb24
bb24:
  %t71 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t72 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s3, { i64, ptr } %t71, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d23, i32 0, i32 1) })
  store i1 %t72, ptr %l36
  br label %bb25
bb25:
  %t73 = load i1, ptr %l36, !tbaa !21
  br i1 %t73, label %bb26, label %bb27
bb26:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb27:
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s3)
  br label %bb29
bb29:
  %t75 = load i64, ptr %l3, !tbaa !24
  %t77 = add i64 %t75, 1
  store i64 %t77, ptr %l3, !tbaa !24
  br label %bb20
bb30:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2flineedit_2eappendLine(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i32
  %l9 = alloca i1
  %l10 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca i64
  %l26 = alloca i32
  %l28 = alloca i1
  %l39 = alloca i32
  %l47 = alloca i32
  %l49 = alloca i1
  %l53 = alloca i32
  %s0 = alloca %olang.scope
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = sub i64 %t3, 1
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb1
bb1:
  %t7 = load i64, ptr %l2, !tbaa !24
  %t9 = icmp sgt i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t11, ptr %l10, !tbaa !27
  %t12 = load i64, ptr %l2, !tbaa !24
  %t14 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr i8, ptr %t15, i64 %t12
  %t17 = load i8, ptr %t16, !tbaa !32
  %t19 = icmp ne i8 %t17, 47
  store i1 %t19, ptr %l9, !tbaa !21
  br label %bb4
bb3:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb4
bb4:
  %t21 = load i1, ptr %l9, !tbaa !21
  %t22 = xor i1 %t21, true
  br i1 %t22, label %bb5, label %bb6
bb5:
  br label %bb9
bb6:
  br label %bb7
bb7:
  %t24 = load i64, ptr %l2, !tbaa !24
  %t26 = sub i64 %t24, 1
  store i64 %t26, ptr %l2, !tbaa !24
  br label %bb8
bb8:
  br label %bb1
bb9:
  %t28 = load i64, ptr %l2, !tbaa !24
  %t30 = icmp sgt i64 %t28, 0
  br i1 %t30, label %bb10, label %bb11
bb10:
  %t32 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t32, ptr %l19, !tbaa !27
  %t33 = load i64, ptr %l2, !tbaa !24
  store i64 %t33, ptr %l20, !tbaa !24
  %t34 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t34, 0
  store i64 %t35, ptr %l21, !tbaa !24
  %t36 = icmp sge i64 0, 0
  br i1 %t36, label %bb12, label %bb13
bb11:
  br label %bb24
bb12:
  %t38 = load i64, ptr %l20, !tbaa !24
  %t39 = icmp sle i64 0, %t38
  br i1 %t39, label %bb14, label %bb15
bb13:
  call void @__olang_check_failed(ptr @olang_loc_7dccba76dee48f7e_602c3d6b6ac3d592)
  unreachable
bb14:
  %t41 = load i64, ptr %l20, !tbaa !24
  %t42 = load i64, ptr %l21, !tbaa !24
  %t43 = icmp sle i64 %t41, %t42
  br i1 %t43, label %bb16, label %bb17
bb15:
  call void @__olang_check_failed(ptr @olang_loc_7dccba76dee48f7e_602c3d6b6ac3d592)
  unreachable
bb16:
  %t45 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !27
  %t47 = load i64, ptr %l20, !tbaa !24
  %t48 = getelementptr i8, ptr %t46, i64 0
  %t49 = sub i64 %t47, 0
  %t50 = insertvalue { i64, ptr } undef, i64 %t49, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr %t48, 1
  %t53 = call i32 @std_2fos_2eMkDirAll(ptr %v0, { i64, ptr } %t51)
  store i32 %t53, ptr %l26
  %t54 = icmp ne i32 %t53, 0
  br i1 %t54, label %bb19, label %ok.55, !prof !99
ok.55:
  br label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_7dccba76dee48f7e_602c3d6b6ac3d592)
  unreachable
bb18:
  br label %bb23
bb19:
  %t56 = load i32, ptr %l26, !tbaa !23
  %t57 = ashr i32 %t56, 16
  %t59 = icmp eq i32 %t57, 1
  store i1 %t59, ptr %l28, !tbaa !21
  %t60 = load i32, ptr %l26, !tbaa !23
  %t61 = ashr i32 %t60, 16
  %t63 = icmp eq i32 %t61, 1
  br i1 %t63, label %bb20, label %bb21
bb20:
  call void @__olang_errpay_pop()
  br label %bb21
bb21:
  br label %bb22
bb22:
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t65 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t67 = extractvalue { i64, ptr } %t65, 1
  %t68 = extractvalue { i64, ptr } %t65, 0
  %t69 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d24, i32 0, i32 1) }, 1
  %t70 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d24, i32 0, i32 1) }, 0
  %t71 = add i64 %t68, %t70
  %t72 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t71)
  call void @olang_textcopy(ptr %t72, ptr %t67, i64 %t68)
  %t73 = getelementptr i8, ptr %t72, i64 %t68
  call void @olang_textcopy(ptr %t73, ptr %t69, i64 %t70)
  %t74 = insertvalue { i64, ptr } undef, i64 %t71, 0
  %t75 = insertvalue { i64, ptr } %t74, ptr %t72, 1
  %t77 = load i32, ptr @G_2e_3cfcntl_2eh_3e_2eO__WRONLY, !tbaa !23
  %t78 = load i32, ptr @G_2e_3cfcntl_2eh_3e_2eO__CREAT, !tbaa !23
  %t81 = or i32 %t77, %t78
  %t82 = load i32, ptr @G_2e_3cfcntl_2eh_3e_2eO__APPEND, !tbaa !23
  %t85 = or i32 %t81, %t82
  %t87 = extractvalue { i64, ptr } %t75, 1
  %t88 = extractvalue { i64, ptr } %t75, 0
  %t90 = call i32 (ptr, i32, ...) @open(ptr %t87, i32 %t85, i32 384)
  store i32 %t90, ptr %l39
  br label %bb25
bb25:
  %t91 = load i32, ptr %l39, !tbaa !23
  store i32 %t91, ptr %l3, !tbaa !23
  %t92 = load i32, ptr %l3, !tbaa !23
  %t94 = icmp slt i32 %t92, 0
  br i1 %t94, label %bb26, label %bb27
bb26:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb27:
  br label %bb28
bb28:
  %t96 = load i32, ptr %l3, !tbaa !23
  %t99 = extractvalue { i64, ptr } %a1, 1
  %t100 = extractvalue { i64, ptr } %a1, 0
  %t101 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t102 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d25, i32 0, i32 1) }, 0
  %t103 = add i64 %t100, %t102
  %t104 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t103)
  call void @olang_textcopy(ptr %t104, ptr %t99, i64 %t100)
  %t105 = getelementptr i8, ptr %t104, i64 %t100
  call void @olang_textcopy(ptr %t105, ptr %t101, i64 %t102)
  %t106 = insertvalue { i64, ptr } undef, i64 %t103, 0
  %t107 = insertvalue { i64, ptr } %t106, ptr %t104, 1
  %t110 = extractvalue { i64, ptr } %t107, 0
  %t111 = extractvalue { i64, ptr } %t107, 1
  %t112 = mul i64 %t110, 1
  %t113 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t112)
  call void @llvm.memcpy.p0.p0.i64(ptr %t113, ptr %t111, i64 %t112, i1 false)
  %t114 = insertvalue { i64, ptr } undef, i64 %t110, 0
  %t115 = insertvalue { i64, ptr } %t114, ptr %t113, 1
  %t118 = call i32 @std_2fio_2eWrite(ptr %s0, i32 %t96, { i64, ptr } %t115)
  store i32 %t118, ptr %l47
  %t119 = icmp ne i32 %t118, 0
  br i1 %t119, label %bb30, label %ok.120, !prof !99
ok.120:
  br label %bb29
bb29:
  br label %bb34
bb30:
  %t121 = load i32, ptr %l47, !tbaa !23
  %t122 = ashr i32 %t121, 16
  %t124 = icmp eq i32 %t122, 1
  store i1 %t124, ptr %l49, !tbaa !21
  %t125 = load i32, ptr %l47, !tbaa !23
  %t126 = ashr i32 %t125, 16
  %t128 = icmp eq i32 %t126, 1
  br i1 %t128, label %bb31, label %bb32
bb31:
  call void @__olang_errpay_pop()
  br label %bb32
bb32:
  br label %bb33
bb33:
  br label %bb34
bb34:
  %t130 = load i32, ptr %l3, !tbaa !23
  %t132 = call i32 @close(i32 %t130)
  store i32 %t132, ptr %l53
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2flineedit_2ecells(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l13 = alloca { i64, ptr }
  %l17 = alloca i1
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l1, !tbaa !24
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
  %t20 = getelementptr i8, ptr %t19, i64 %t16
  %t21 = load i8, ptr %t20, !tbaa !32
  %t25 = call i1 @compiler_2flineedit_2eisCont(i8 %t21)
  store i1 %t25, ptr %l17
  br label %bb5
bb5:
  %t26 = load i1, ptr %l17, !tbaa !21
  %t27 = xor i1 %t26, true
  br i1 %t27, label %bb6, label %bb7
bb6:
  %t29 = load i64, ptr %l1, !tbaa !24
  %t31 = add i64 %t29, 1
  store i64 %t31, ptr %l1, !tbaa !24
  br label %bb8
bb7:
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t33 = load i64, ptr %l3, !tbaa !24
  %t35 = add i64 %t33, 1
  store i64 %t35, ptr %l3, !tbaa !24
  br label %bb1
bb10:
  %t37 = load i64, ptr %l1, !tbaa !24
  store i64 %t37, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2flineedit_2eclass(i8 %a0) #0 {
entry:
  %l0 = alloca i8
  %l3 = alloca i1
  %l6 = alloca i1
  %l12 = alloca i1
  %l15 = alloca i1
  %l18 = alloca i1
  %l21 = alloca i1
  %l24 = alloca i1
  %l27 = alloca i1
  %l30 = alloca i1
  %rv = alloca i64
  store i8 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i8, ptr %l0, !tbaa !22
  %t3 = icmp eq i8 %t1, 32
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb3
bb2:
  %t5 = load i8, ptr %l0, !tbaa !22
  %t7 = icmp eq i8 %t5, 9
  store i1 %t7, ptr %l3, !tbaa !21
  br label %bb3
bb3:
  %t9 = load i1, ptr %l3, !tbaa !21
  br i1 %t9, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb6
bb5:
  %t10 = load i8, ptr %l0, !tbaa !22
  %t12 = icmp eq i8 %t10, 10
  store i1 %t12, ptr %l6, !tbaa !21
  br label %bb6
bb6:
  %t14 = load i1, ptr %l6, !tbaa !21
  br i1 %t14, label %bb7, label %bb8
bb7:
  store i64 0, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t16 = load i8, ptr %l0, !tbaa !22
  %t18 = icmp uge i8 %t16, 97
  br i1 %t18, label %bb10, label %bb11
bb10:
  %t20 = load i8, ptr %l0, !tbaa !22
  %t22 = icmp ule i8 %t20, 122
  store i1 %t22, ptr %l12, !tbaa !21
  br label %bb12
bb11:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb12
bb12:
  %t24 = load i1, ptr %l12, !tbaa !21
  br i1 %t24, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb18
bb14:
  %t25 = load i8, ptr %l0, !tbaa !22
  %t27 = icmp uge i8 %t25, 65
  br i1 %t27, label %bb15, label %bb16
bb15:
  %t29 = load i8, ptr %l0, !tbaa !22
  %t31 = icmp ule i8 %t29, 90
  store i1 %t31, ptr %l18, !tbaa !21
  br label %bb17
bb16:
  store i1 false, ptr %l18, !tbaa !21
  br label %bb17
bb17:
  %t33 = load i1, ptr %l18, !tbaa !21
  store i1 %t33, ptr %l15, !tbaa !21
  br label %bb18
bb18:
  %t34 = load i1, ptr %l15, !tbaa !21
  br i1 %t34, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb24
bb20:
  %t35 = load i8, ptr %l0, !tbaa !22
  %t37 = icmp uge i8 %t35, 48
  br i1 %t37, label %bb21, label %bb22
bb21:
  %t39 = load i8, ptr %l0, !tbaa !22
  %t41 = icmp ule i8 %t39, 57
  store i1 %t41, ptr %l24, !tbaa !21
  br label %bb23
bb22:
  store i1 false, ptr %l24, !tbaa !21
  br label %bb23
bb23:
  %t43 = load i1, ptr %l24, !tbaa !21
  store i1 %t43, ptr %l21, !tbaa !21
  br label %bb24
bb24:
  %t44 = load i1, ptr %l21, !tbaa !21
  br i1 %t44, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb27
bb26:
  %t45 = load i8, ptr %l0, !tbaa !22
  %t47 = icmp eq i8 %t45, 95
  store i1 %t47, ptr %l27, !tbaa !21
  br label %bb27
bb27:
  %t49 = load i1, ptr %l27, !tbaa !21
  br i1 %t49, label %bb28, label %bb29
bb28:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb30
bb29:
  %t50 = load i8, ptr %l0, !tbaa !22
  %t52 = icmp uge i8 %t50, -128
  store i1 %t52, ptr %l30, !tbaa !21
  br label %bb30
bb30:
  %t54 = load i1, ptr %l30, !tbaa !21
  br i1 %t54, label %bb31, label %bb32
bb31:
  store i64 1, ptr %rv
  br label %ret
bb32:
  br label %bb33
bb33:
  store i64 2, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2flineedit_2ecolumns() #0 {
entry:
  %l0 = alloca [4 x i16]
  %l6 = alloca i32
  %l8 = alloca i1
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [4 x i16] undef, i16 0, 0
  %t2 = insertvalue [4 x i16] %t1, i16 0, 1
  %t3 = insertvalue [4 x i16] %t2, i16 0, 2
  %t4 = insertvalue [4 x i16] %t3, i16 0, 3
  store [4 x i16] %t4, ptr %l0
  %t6 = load i32, ptr @G_2e_3csys_2fioctl_2eh_3e_2eTIOCGWINSZ, !tbaa !23
  %t8 = sext i32 %t6 to i64
  %t10 = insertvalue { i64, ptr } undef, i64 4, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %l0, 1
  %t14 = extractvalue { i64, ptr } %t11, 1
  %t15 = extractvalue { i64, ptr } %t11, 0
  %t16 = call i32 @ioctl(i32 1, i64 %t8, ptr %t14)
  store i32 %t16, ptr %l6
  br label %bb1
bb1:
  %t17 = load i32, ptr %l6, !tbaa !23
  %t18 = icmp ne i32 %t17, 0
  br i1 %t18, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb4
bb3:
  %t20 = getelementptr [4 x i16], ptr %l0, i64 0, i64 1
  %t21 = load i16, ptr %t20, !tbaa !83
  %t23 = icmp eq i16 %t21, 0
  store i1 %t23, ptr %l8, !tbaa !21
  br label %bb4
bb4:
  %t25 = load i1, ptr %l8, !tbaa !21
  br i1 %t25, label %bb5, label %bb6
bb5:
  store i64 80, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t27 = getelementptr [4 x i16], ptr %l0, i64 0, i64 1
  %t28 = load i16, ptr %t27, !tbaa !83
  %t30 = zext i16 %t28 to i64
  store i64 %t30, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eAccept(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lineedit:Editor", ptr %t1, i32 0, i32 21
  store i1 false, ptr %t3, !tbaa !21
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/lineedit:Editor", ptr %t5, i32 0, i32 3
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  %t13 = getelementptr %"compiler/lineedit:Editor", ptr %t4, i32 0, i32 4
  store i64 %t10, ptr %t13, !tbaa !24
  %t14 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2edraw(ptr %v0, ptr %t14)
  br label %bb1
bb1:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/lineedit:Editor", ptr %t16, i32 0, i32 6
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s0, ptr %t18, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d26, i32 0, i32 1) })
  br label %bb2
bb2:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/lineedit:Editor", ptr %t20, i32 0, i32 3
  %t23 = load { i64, ptr }, ptr %t22, !tbaa !27
  store { i64, ptr } %t23, ptr %l1, !tbaa !27
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load { i64, ptr }, ptr %l1, !tbaa !27
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eRemember(ptr %v0, ptr %v0, ptr %t25, { i64, ptr } %t26)
  br label %bb3
bb3:
  %t29 = load { i64, ptr }, ptr %l1, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t29, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eBegin(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2ereset(ptr %v0, ptr %t1)
  br label %bb1
bb1:
  %t3 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2edraw(ptr %v0, ptr %t3)
  br label %bb2
bb2:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eBreak(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l9 = alloca i64
  %l15 = alloca i1
  %l17 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l34 = alloca i1
  %l36 = alloca { i64, ptr }
  %l42 = alloca i1
  %l44 = alloca { i64, ptr }
  %l50 = alloca i1
  %l52 = alloca { i64, ptr }
  %l58 = alloca ptr
  %l59 = alloca { i64, ptr }
  %l61 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lineedit:Editor", ptr %t1, i32 0, i32 3
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/lineedit:Editor", ptr %t5, i32 0, i32 4
  %t8 = load i64, ptr %t7, !tbaa !24
  %t11 = call i64 @compiler_2flineedit_2elineStart(ptr %v0, { i64, ptr } %t4, i64 %t8)
  store i64 %t11, ptr %l9
  br label %bb1
bb1:
  %t12 = load i64, ptr %l9, !tbaa !24
  store i64 %t12, ptr %l1, !tbaa !24
  %t13 = load i64, ptr %l1, !tbaa !24
  store i64 %t13, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t15 = load i64, ptr %l2, !tbaa !24
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/lineedit:Editor", ptr %t16, i32 0, i32 4
  %t19 = load i64, ptr %t18, !tbaa !24
  %t22 = icmp slt i64 %t15, %t19
  br i1 %t22, label %bb3, label %bb4
bb3:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/lineedit:Editor", ptr %t24, i32 0, i32 3
  %t27 = load { i64, ptr }, ptr %t26, !tbaa !27
  store { i64, ptr } %t27, ptr %l17, !tbaa !27
  %t28 = load i64, ptr %l2, !tbaa !24
  %t30 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !27
  %t32 = getelementptr i8, ptr %t31, i64 %t28
  %t33 = load i8, ptr %t32, !tbaa !32
  %t35 = icmp eq i8 %t33, 32
  store i1 %t35, ptr %l15, !tbaa !21
  br label %bb5
bb4:
  store i1 false, ptr %l15, !tbaa !21
  br label %bb5
bb5:
  %t37 = load i1, ptr %l15, !tbaa !21
  %t38 = xor i1 %t37, true
  br i1 %t38, label %bb6, label %bb7
bb6:
  br label %bb10
bb7:
  br label %bb8
bb8:
  %t40 = load i64, ptr %l2, !tbaa !24
  %t42 = add i64 %t40, 1
  store i64 %t42, ptr %l2, !tbaa !24
  br label %bb9
bb9:
  br label %bb2
bb10:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, ptr %l24, !tbaa !27
  %t44 = load i64, ptr %l2, !tbaa !24
  %t45 = load i64, ptr %l1, !tbaa !24
  %t48 = sub i64 %t44, %t45
  %t49 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t51 = call { i64, ptr } @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eRepeat_3cstd_2fprelude_2ftext_3aChar_3e(ptr %s0, ptr %s0, { i64, ptr } %t49, i64 %t48)
  store { i64, ptr } %t51, ptr %l28
  br label %bb11
bb11:
  %t52 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t52, ptr %l3, !tbaa !27
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/lineedit:Editor", ptr %t54, i32 0, i32 4
  %t57 = load i64, ptr %t56, !tbaa !24
  %t58 = load i64, ptr %l1, !tbaa !24
  %t61 = icmp sgt i64 %t57, %t58
  br i1 %t61, label %bb12, label %bb13
bb12:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/lineedit:Editor", ptr %t63, i32 0, i32 3
  %t66 = load { i64, ptr }, ptr %t65, !tbaa !27
  store { i64, ptr } %t66, ptr %l36, !tbaa !27
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/lineedit:Editor", ptr %t67, i32 0, i32 4
  %t70 = load i64, ptr %t69, !tbaa !24
  %t72 = sub i64 %t70, 1
  %t74 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !27
  %t76 = getelementptr i8, ptr %t75, i64 %t72
  %t77 = load i8, ptr %t76, !tbaa !32
  %t79 = icmp eq i8 %t77, 123
  br i1 %t79, label %bb14, label %bb15
bb13:
  store i1 false, ptr %l34, !tbaa !21
  br label %bb20
bb14:
  store i1 true, ptr %l42, !tbaa !21
  br label %bb16
bb15:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/lineedit:Editor", ptr %t81, i32 0, i32 3
  %t84 = load { i64, ptr }, ptr %t83, !tbaa !27
  store { i64, ptr } %t84, ptr %l44, !tbaa !27
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/lineedit:Editor", ptr %t85, i32 0, i32 4
  %t88 = load i64, ptr %t87, !tbaa !24
  %t90 = sub i64 %t88, 1
  %t92 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t93 = load ptr, ptr %t92, !tbaa !27
  %t94 = getelementptr i8, ptr %t93, i64 %t90
  %t95 = load i8, ptr %t94, !tbaa !32
  %t97 = icmp eq i8 %t95, 40
  store i1 %t97, ptr %l42, !tbaa !21
  br label %bb16
bb16:
  %t99 = load i1, ptr %l42, !tbaa !21
  br i1 %t99, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l50, !tbaa !21
  br label %bb19
bb18:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/lineedit:Editor", ptr %t100, i32 0, i32 3
  %t103 = load { i64, ptr }, ptr %t102, !tbaa !27
  store { i64, ptr } %t103, ptr %l52, !tbaa !27
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/lineedit:Editor", ptr %t104, i32 0, i32 4
  %t107 = load i64, ptr %t106, !tbaa !24
  %t109 = sub i64 %t107, 1
  %t111 = getelementptr { i64, ptr }, ptr %l52, i32 0, i32 1
  %t112 = load ptr, ptr %t111, !tbaa !27
  %t113 = getelementptr i8, ptr %t112, i64 %t109
  %t114 = load i8, ptr %t113, !tbaa !32
  %t116 = icmp eq i8 %t114, 91
  store i1 %t116, ptr %l50, !tbaa !21
  br label %bb19
bb19:
  %t118 = load i1, ptr %l50, !tbaa !21
  store i1 %t118, ptr %l34, !tbaa !21
  br label %bb20
bb20:
  %t119 = load i1, ptr %l34, !tbaa !21
  %t120 = load ptr, ptr %l0, !tbaa !29
  store ptr %t120, ptr %l58, !tbaa !29
  %t121 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t121, ptr %l59, !tbaa !27
  br i1 %t119, label %bb21, label %bb22
bb21:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d28, i32 0, i32 1) }, ptr %l61, !tbaa !27
  br label %bb23
bb22:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d29, i32 0, i32 1) }, ptr %l61, !tbaa !27
  br label %bb23
bb23:
  %t124 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 1
  %t125 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 0
  %t126 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t127 = extractvalue { i64, ptr } %t126, 1
  %t128 = extractvalue { i64, ptr } %t126, 0
  %t129 = add i64 %t125, %t128
  %t130 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t131 = extractvalue { i64, ptr } %t130, 1
  %t132 = extractvalue { i64, ptr } %t130, 0
  %t133 = add i64 %t129, %t132
  %t134 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t133)
  call void @olang_textcopy(ptr %t134, ptr %t124, i64 %t125)
  %t135 = getelementptr i8, ptr %t134, i64 %t125
  call void @olang_textcopy(ptr %t135, ptr %t127, i64 %t128)
  %t136 = getelementptr i8, ptr %t135, i64 %t128
  call void @olang_textcopy(ptr %t136, ptr %t131, i64 %t132)
  %t137 = insertvalue { i64, ptr } undef, i64 %t133, 0
  %t138 = insertvalue { i64, ptr } %t137, ptr %t134, 1
  %t140 = extractvalue { i64, ptr } %t138, 0
  %t141 = extractvalue { i64, ptr } %t138, 1
  %t142 = mul i64 %t140, 1
  %t143 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t142)
  call void @llvm.memcpy.p0.p0.i64(ptr %t143, ptr %t141, i64 %t142, i1 false)
  %t144 = insertvalue { i64, ptr } undef, i64 %t140, 0
  %t145 = insertvalue { i64, ptr } %t144, ptr %t143, 1
  %t146 = load ptr, ptr %l58, !tbaa !29
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2einsert(ptr %v0, ptr %s0, ptr %t146, { i64, ptr } %t145)
  br label %bb24
bb24:
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t150 = getelementptr %"compiler/lineedit:Editor", ptr %t148, i32 0, i32 5
  store i1 false, ptr %t150, !tbaa !21
  %t151 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2edraw(ptr %v0, ptr %t151)
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eFeed(ptr %v0, ptr %a0, i8 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l8 = alloca i32
  %l15 = alloca i1
  %l18 = alloca i1
  %l21 = alloca i1
  %l22 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lineedit:Editor", ptr %t1, i32 0, i32 19
  store i1 false, ptr %t3, !tbaa !21
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/lineedit:Editor", ptr %t4, i32 0, i32 20
  store i1 false, ptr %t6, !tbaa !21
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t12 = call i32 @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2estep(ptr %v0, ptr %t7, i8 %a1)
  store i32 %t12, ptr %l8
  br label %bb1
bb1:
  %t13 = load i32, ptr %l8, !range !{i32 0, i32 4}
  store i32 %t13, ptr %l2
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/lineedit:Editor", ptr %t14, i32 0, i32 19
  %t17 = load i1, ptr %t16, !tbaa !21
  %t19 = xor i1 %t17, true
  br i1 %t19, label %bb2, label %bb3
bb2:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/lineedit:Editor", ptr %t21, i32 0, i32 18
  store i64 0, ptr %t23, !tbaa !24
  br label %bb4
bb3:
  br label %bb4
bb4:
  %t24 = load i32, ptr %l2, !range !{i32 0, i32 4}
  %t26 = trunc i64 0 to i32
  %t27 = icmp eq i32 %t24, %t26
  br i1 %t27, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb7
bb6:
  %t29 = load i32, ptr %l2, !range !{i32 0, i32 4}
  %t31 = trunc i64 2 to i32
  %t32 = icmp eq i32 %t29, %t31
  store i1 %t32, ptr %l15, !tbaa !21
  br label %bb7
bb7:
  %t34 = load i1, ptr %l15, !tbaa !21
  br i1 %t34, label %bb8, label %bb9
bb8:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/lineedit:Editor", ptr %t35, i32 0, i32 15
  %t38 = load { i64, ptr }, ptr %t37, !tbaa !27
  %t40 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t38, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d31, i32 0, i32 1) })
  store i1 %t40, ptr %l21
  br label %bb10
bb9:
  store i1 false, ptr %l18, !tbaa !21
  br label %bb11
bb10:
  %t41 = load i1, ptr %l21, !tbaa !21
  store i1 %t41, ptr %l18, !tbaa !21
  br label %bb11
bb11:
  %t42 = load i1, ptr %l18, !tbaa !21
  br i1 %t42, label %bb12, label %bb13
bb12:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/lineedit:Editor", ptr %t43, i32 0, i32 20
  %t46 = load i1, ptr %t45, !tbaa !21
  %t48 = xor i1 %t46, true
  store i1 %t48, ptr %l22, !tbaa !21
  br label %bb14
bb13:
  store i1 false, ptr %l22, !tbaa !21
  br label %bb14
bb14:
  %t50 = load i1, ptr %l22, !tbaa !21
  br i1 %t50, label %bb15, label %bb16
bb15:
  %t51 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2edraw(ptr %v0, ptr %t51)
  br label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb18
bb18:
  %t53 = load i32, ptr %l2, !range !{i32 0, i32 4}
  call void @__olang_scope_close(ptr %s0)
  store i32 %t53, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eIdle(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i1
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l13 = alloca i1
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lineedit:Editor", ptr %t1, i32 0, i32 15
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t4, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d32, i32 0, i32 1) })
  store i1 %t6, ptr %l3
  br label %bb1
bb1:
  %t7 = load i1, ptr %l3, !tbaa !21
  %t8 = xor i1 %t7, true
  br i1 %t8, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb3:
  br label %bb4
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l5, !tbaa !29
  %t11 = load ptr, ptr %l5, !tbaa !29
  %t12 = getelementptr %"compiler/lineedit:Editor", ptr %t11, i32 0, i32 15
  %t13 = load { i64, ptr }, ptr %t12, !tbaa !27
  store { i64, ptr } %t13, ptr %l6, !tbaa !27
  %t14 = load ptr, ptr %l5, !tbaa !29
  %t15 = getelementptr %"compiler/lineedit:Editor", ptr %t14, i32 0, i32 15
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d33, i32 0, i32 1) }, ptr %t15, !tbaa !27
  %t16 = load i1, ptr @olang_2esole_2ecompiler_2flineedit_3aEditor_2e15
  br i1 %t16, label %bb5, label %bb6
bb5:
  %t18 = load { i64, ptr }, ptr %l6
  %t19 = extractvalue { i64, ptr } %t18, 1
  call void @__olang_region_release(ptr %t19)
  store { i64, ptr } zeroinitializer, ptr %l6
  br label %bb6
bb6:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/lineedit:Editor", ptr %t20, i32 0, i32 21
  %t23 = load i1, ptr %t22, !tbaa !21
  br i1 %t23, label %bb7, label %bb8
bb7:
  %t25 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eacceptSearch(ptr %v0, ptr %t25)
  br label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb10
bb10:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/lineedit:Editor", ptr %t27, i32 0, i32 0
  %t30 = load i1, ptr %t29, !tbaa !21
  br i1 %t30, label %bb11, label %bb12
bb11:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/lineedit:Editor", ptr %t32, i32 0, i32 21
  %t35 = load i1, ptr %t34, !tbaa !21
  %t37 = xor i1 %t35, true
  store i1 %t37, ptr %l13, !tbaa !21
  br label %bb13
bb12:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb13
bb13:
  %t39 = load i1, ptr %l13, !tbaa !21
  br i1 %t39, label %bb14, label %bb15
bb14:
  %t40 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2etoNormal(ptr %v0, ptr %t40)
  br label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb17
bb17:
  %t42 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2edraw(ptr %v0, ptr %t42)
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eLoad(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca %"std/prelude/text:StringBuilder"
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l14 = alloca ptr
  %l16 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l21 = alloca i32
  %l25 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  %l37 = alloca i1
  %l39 = alloca ptr
  %l40 = alloca i64
  %l43 = alloca { i64, ptr }
  %l51 = alloca i64
  %l57 = alloca i32
  %l58 = alloca ptr
  %l61 = alloca i64
  %l66 = alloca %"std/prelude/text:StringBuilder"
  %l69 = alloca { i64, ptr }
  %l76 = alloca { i64, ptr }
  %l79 = alloca ptr
  %l81 = alloca { i64, ptr }
  %l82 = alloca i64
  %l83 = alloca { i64, ptr }
  %l88 = alloca { i64, ptr }
  %l90 = alloca { i64, ptr }
  %l93 = alloca i32
  %l95 = alloca i1
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s9 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l14, !tbaa !29
  %t2 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = load ptr, ptr %l14, !tbaa !29
  %t4 = getelementptr %"compiler/lineedit:Editor", ptr %t3, i32 0, i32 8
  %t5 = load { i64, ptr }, ptr %t4, !tbaa !27
  store { i64, ptr } %t5, ptr %l16, !tbaa !27
  %t7 = load ptr, ptr %l14, !tbaa !29
  %t8 = getelementptr %"compiler/lineedit:Editor", ptr %t7, i32 0, i32 8
  store { i64, ptr } %t2, ptr %t8, !tbaa !27
  %t9 = load i1, ptr @olang_2esole_2ecompiler_2flineedit_3aEditor_2e8
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = load { i64, ptr }, ptr %l16
  %t12 = extractvalue { i64, ptr } %t11, 1
  call void @__olang_region_release(ptr %t12)
  store { i64, ptr } zeroinitializer, ptr %l16
  br label %bb2
bb2:
  %t13 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t15 = call { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %v1, ptr %s0, { i64, ptr } %t13)
  %t16 = extractvalue { i32, { i64, ptr } } %t15, 1
  %t17 = extractvalue { i32, { i64, ptr } } %t15, 0
  store i32 %t17, ptr %l21
  %t18 = icmp ne i32 %t17, 0
  br i1 %t18, label %bb4, label %ok.19, !prof !99
ok.19:
  store { i64, ptr } %t16, ptr %l20
  br label %bb3
bb3:
  %t20 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t20, ptr %l18, !tbaa !27
  br label %bb8
bb4:
  %t21 = load i32, ptr %l21, !tbaa !23
  %t22 = ashr i32 %t21, 16
  %t24 = icmp eq i32 %t22, 1
  br i1 %t24, label %bb5, label %bb6
bb5:
  call void @__olang_errpay_pop()
  br label %bb6
bb6:
  br label %bb7
bb7:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d34, i32 0, i32 1) }, ptr %l18, !tbaa !27
  br label %bb8
bb8:
  %t26 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t29 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t26, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d35, i32 0, i32 1) })
  store { i64, ptr } %t29, ptr %l25
  br label %bb9
bb9:
  %t30 = load { i64, ptr }, ptr %l25, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  store { i64, ptr } %t30, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t33 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t33, 0
  store i64 %t35, ptr %l7, !tbaa !24
  br label %bb10
bb10:
  store %olang.scope zeroinitializer, ptr %s2
  %t37 = load i64, ptr %l6, !tbaa !24
  %t38 = load i64, ptr %l7, !tbaa !24
  %t41 = icmp slt i64 %t37, %t38
  %t43 = xor i1 %t41, true
  br i1 %t43, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s2)
  br label %bb23
bb12:
  br label %bb13
bb13:
  %t45 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t45, ptr %l33, !tbaa !27
  %t46 = load i64, ptr %l6, !tbaa !24
  %t48 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !27
  %t50 = getelementptr { i64, ptr }, ptr %t49, i64 %t46
  %t51 = load { i64, ptr }, ptr %t50, !tbaa !37
  store { i64, ptr } %t51, ptr %l8, !tbaa !27
  %t53 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t55 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s2, { i64, ptr } %t53, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d36, i32 0, i32 1) })
  store i1 %t55, ptr %l37
  br label %bb14
bb14:
  %t56 = load i1, ptr %l37, !tbaa !21
  br i1 %t56, label %bb15, label %bb16
bb15:
  call void @__olang_scope_close(ptr %s2)
  br label %bb22
bb16:
  br label %bb17
bb17:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/lineedit:Editor", ptr %t57, i32 0, i32 7
  store ptr %t59, ptr %l39, !tbaa !29
  %t60 = ptrtoint ptr %v0 to i64
  store i64 %t60, ptr %l40, !tbaa !24
  %t61 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t61, label %bb18, label %bb19
bb18:
  %t63 = call ptr @__olang_region_make(ptr %v0)
  %t64 = ptrtoint ptr %t63 to i64
  store i64 %t64, ptr %l40, !tbaa !24
  br label %bb19
bb19:
  %t65 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t66 = load i64, ptr %l40
  %t67 = inttoptr i64 %t66 to ptr
  %t69 = call { i64, ptr } @compiler_2flineedit_2edecode(ptr %s0, ptr %t67, { i64, ptr } %t65)
  store { i64, ptr } %t69, ptr %l43
  br label %bb20
bb20:
  %t70 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t71 = load i64, ptr %l40
  %t72 = inttoptr i64 %t71 to ptr
  %t73 = extractvalue { i64, ptr } %t70, 0
  %t74 = extractvalue { i64, ptr } %t70, 1
  %t75 = mul i64 %t73, 1
  %t76 = call ptr @__olang_scope_alloc(ptr %t72, i64 %t75)
  call void @llvm.memcpy.p0.p0.i64(ptr %t76, ptr %t74, i64 %t75, i1 false)
  %t77 = insertvalue { i64, ptr } undef, i64 %t73, 0
  %t78 = insertvalue { i64, ptr } %t77, ptr %t76, 1
  %t79 = load ptr, ptr %l39, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t79, { i64, ptr } %t78)
  br label %bb21
bb21:
  %t81 = load i64, ptr %l4, !tbaa !24
  %t83 = add i64 %t81, 1
  store i64 %t83, ptr %l4, !tbaa !24
  call void @__olang_scope_close(ptr %s2)
  br label %bb22
bb22:
  %t85 = load i64, ptr %l6, !tbaa !24
  %t87 = add i64 %t85, 1
  store i64 %t87, ptr %l6, !tbaa !24
  br label %bb10
bb23:
  br label %bb24
bb24:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"compiler/lineedit:Editor", ptr %t89, i32 0, i32 7
  %t93 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t91)
  store i64 %t93, ptr %l51
  br label %bb25
bb25:
  %t94 = load i64, ptr @G_2ecompiler_2flineedit_2eKeep, !tbaa !24
  %t95 = load i64, ptr %l51, !tbaa !24
  %t97 = icmp sgt i64 %t95, %t94
  %t99 = xor i1 %t97, true
  br i1 %t99, label %bb26, label %bb27
bb26:
  br label %bb34
bb27:
  br label %bb28
bb28:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = getelementptr %"compiler/lineedit:Editor", ptr %t101, i32 0, i32 7
  %t105 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H9ea329edf73de23cd280575fae6d500d(ptr %v0, ptr %t103, i64 0)
  store i32 %t105, ptr %l57
  %t106 = icmp ne i32 %t105, 0
  br i1 %t106, label %bb30, label %ok.107, !prof !99
ok.107:
  br label %bb29
bb29:
  br label %bb32
bb30:
  br label %bb31
bb31:
  br label %bb32
bb32:
  br label %bb33
bb33:
  br label %bb24
bb34:
  %t108 = load ptr, ptr %l0, !tbaa !29
  store ptr %t108, ptr %l58, !tbaa !29
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = getelementptr %"compiler/lineedit:Editor", ptr %t109, i32 0, i32 7
  %t113 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t111)
  store i64 %t113, ptr %l61
  br label %bb35
bb35:
  %t114 = load i64, ptr %l61, !tbaa !24
  %t115 = load ptr, ptr %l58, !tbaa !29
  %t116 = getelementptr %"compiler/lineedit:Editor", ptr %t115, i32 0, i32 12
  store i64 %t114, ptr %t116, !tbaa !24
  %t117 = load i64, ptr %l4, !tbaa !24
  %t118 = load i64, ptr @G_2ecompiler_2flineedit_2eKeep, !tbaa !24
  %t120 = mul i64 2, %t118
  %t123 = icmp sle i64 %t117, %t120
  br i1 %t123, label %bb36, label %bb37
bb36:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb37:
  br label %bb38
bb38:
  %t125 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t125, ptr %l66
  br label %bb39
bb39:
  %t126 = load %"std/prelude/text:StringBuilder", ptr %l66
  store %"std/prelude/text:StringBuilder" %t126, ptr %l9
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/lineedit:Editor", ptr %t127, i32 0, i32 7
  %t131 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H563b551a62b57e684177c5454e33a204(ptr %v0, ptr %v0, ptr %t129)
  store { i64, ptr } %t131, ptr %l69
  br label %bb40
bb40:
  %t132 = load { i64, ptr }, ptr %l69, !tbaa !27
  store { i64, ptr } %t132, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t133 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t135 = extractvalue { i64, ptr } %t133, 0
  store i64 %t135, ptr %l12, !tbaa !24
  br label %bb41
bb41:
  store %olang.scope zeroinitializer, ptr %s9
  %t137 = load i64, ptr %l11, !tbaa !24
  %t138 = load i64, ptr %l12, !tbaa !24
  %t141 = icmp slt i64 %t137, %t138
  %t143 = xor i1 %t141, true
  br i1 %t143, label %bb42, label %bb43
bb42:
  call void @__olang_scope_close(ptr %s9)
  br label %bb48
bb43:
  br label %bb44
bb44:
  %t145 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t145, ptr %l76, !tbaa !27
  %t146 = load i64, ptr %l11, !tbaa !24
  %t148 = getelementptr { i64, ptr }, ptr %l76, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !27
  %t150 = getelementptr { i64, ptr }, ptr %t149, i64 %t146
  %t151 = load { i64, ptr }, ptr %t150, !tbaa !37
  store ptr %l9, ptr %l79, !tbaa !29
  %t155 = call { i64, ptr } @compiler_2flineedit_2eencode(ptr %v0, ptr %s9, { i64, ptr } %t151)
  store { i64, ptr } %t155, ptr %l81
  br label %bb45
bb45:
  %t156 = load { i64, ptr }, ptr %l81, !tbaa !27
  %t157 = extractvalue { i64, ptr } %t156, 0
  store i64 %t157, ptr %l82, !tbaa !24
  %t158 = load i64, ptr %l82, !tbaa !24
  %t159 = mul i64 %t158, 1
  %t160 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t159)
  %t161 = insertvalue { i64, ptr } undef, i64 %t158, 0
  %t162 = insertvalue { i64, ptr } %t161, ptr %t160, 1
  store { i64, ptr } %t162, ptr %l83, !tbaa !27
  %t163 = getelementptr { i64, ptr }, ptr %l83, i32 0, i32 1
  %t164 = load ptr, ptr %t163, !tbaa !27
  %t165 = getelementptr { i64, ptr }, ptr %l81, i32 0, i32 1
  %t166 = load ptr, ptr %t165, !tbaa !27
  %t167 = load i64, ptr %l82, !tbaa !24
  %t168 = mul i64 %t167, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t164, ptr %t166, i64 %t168, i1 false)
  %t169 = load { i64, ptr }, ptr %l83, !tbaa !27
  %t170 = extractvalue { i64, ptr } %t169, 1
  %t171 = extractvalue { i64, ptr } %t169, 0
  %t172 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d37, i32 0, i32 1) }, 1
  %t173 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d37, i32 0, i32 1) }, 0
  %t174 = add i64 %t171, %t173
  %t175 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t174)
  call void @olang_textcopy(ptr %t175, ptr %t170, i64 %t171)
  %t176 = getelementptr i8, ptr %t175, i64 %t171
  call void @olang_textcopy(ptr %t176, ptr %t172, i64 %t173)
  %t177 = insertvalue { i64, ptr } undef, i64 %t174, 0
  %t178 = insertvalue { i64, ptr } %t177, ptr %t175, 1
  %t180 = extractvalue { i64, ptr } %t178, 0
  %t181 = extractvalue { i64, ptr } %t178, 1
  %t182 = mul i64 %t180, 1
  %t183 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t182)
  call void @llvm.memcpy.p0.p0.i64(ptr %t183, ptr %t181, i64 %t182, i1 false)
  %t184 = insertvalue { i64, ptr } undef, i64 %t180, 0
  %t185 = insertvalue { i64, ptr } %t184, ptr %t183, 1
  %t186 = load ptr, ptr %l79, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s9, ptr %t186, { i64, ptr } %t185)
  br label %bb46
bb46:
  call void @__olang_scope_close(ptr %s9)
  br label %bb47
bb47:
  %t188 = load i64, ptr %l11, !tbaa !24
  %t190 = add i64 %t188, 1
  store i64 %t190, ptr %l11, !tbaa !24
  br label %bb41
bb48:
  %t192 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t192, ptr %l88, !tbaa !27
  %t194 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %l9)
  store { i64, ptr } %t194, ptr %l90
  br label %bb49
bb49:
  %t195 = load { i64, ptr }, ptr %l90, !tbaa !27
  %t197 = extractvalue { i64, ptr } %t195, 0
  %t198 = extractvalue { i64, ptr } %t195, 1
  %t199 = mul i64 %t197, 1
  %t200 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t199)
  call void @llvm.memcpy.p0.p0.i64(ptr %t200, ptr %t198, i64 %t199, i1 false)
  %t201 = insertvalue { i64, ptr } undef, i64 %t197, 0
  %t202 = insertvalue { i64, ptr } %t201, ptr %t200, 1
  %t203 = load { i64, ptr }, ptr %l88, !tbaa !27
  %t205 = call i32 @std_2fos_2eWriteFile(ptr %v1, ptr %s0, { i64, ptr } %t203, { i64, ptr } %t202)
  store i32 %t205, ptr %l93
  %t206 = icmp ne i32 %t205, 0
  br i1 %t206, label %bb51, label %ok.207, !prof !99
ok.207:
  br label %bb50
bb50:
  br label %bb55
bb51:
  %t208 = load i32, ptr %l93, !tbaa !23
  %t209 = ashr i32 %t208, 16
  %t211 = icmp eq i32 %t209, 1
  store i1 %t211, ptr %l95, !tbaa !21
  %t212 = load i32, ptr %l93, !tbaa !23
  %t213 = ashr i32 %t212, 16
  %t215 = icmp eq i32 %t213, 1
  br i1 %t215, label %bb52, label %bb53
bb52:
  call void @__olang_errpay_pop()
  br label %bb53
bb53:
  br label %bb54
bb54:
  br label %bb55
bb55:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i32, { i64, ptr } } @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eRead(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1c, ptr %a1e) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"<termios.h>:termios"
  %l3 = alloca %"<termios.h>:termios"
  %l4 = alloca { i64, ptr }
  %l5 = alloca %"<termios.h>:termios"
  %l7 = alloca i32
  %l44 = alloca i32
  %l47 = alloca ptr
  %l48 = alloca i64
  %l52 = alloca i64
  %l55 = alloca i64
  %l58 = alloca i32
  %l59 = alloca i32
  %l65 = alloca i32
  %l66 = alloca { i64, ptr }
  %l69 = alloca { i64, ptr }
  %l70 = alloca i32
  %l71 = alloca i32
  %l77 = alloca i32
  %l81 = alloca { i64, ptr }
  %l87 = alloca i32
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  store ptr %a0, ptr %l0
  %pf1 = insertvalue { ptr, ptr } undef, ptr %a1c, 0
  %pg1 = insertvalue { ptr, ptr } %pf1, ptr %a1e, 1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"<termios.h>:termios" @olang_2emir_2eHelperKind_2eZero_2e_3ctermios_2eh_3e_3atermios()
  store %"<termios.h>:termios" %t1, ptr %l5
  br label %bb1
bb1:
  %t2 = load %"<termios.h>:termios", ptr %l5
  store %"<termios.h>:termios" %t2, ptr %l2
  %t4 = call i32 @tcgetattr(i32 0, ptr %l2)
  store i32 %t4, ptr %l7
  br label %bb2
bb2:
  %t5 = load i32, ptr %l7, !tbaa !23
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s0)
  %t9 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t9, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t10 = load %"<termios.h>:termios", ptr %l2
  store %"<termios.h>:termios" %t10, ptr %l3
  %t12 = getelementptr %"<termios.h>:termios", ptr %l3, i32 0, i32 0
  %t13 = load i32, ptr %t12, !tbaa !64
  %t14 = load i32, ptr @G_2e_3ctermios_2eh_3e_2eBRKINT, !tbaa !23
  %t15 = load i32, ptr @G_2e_3ctermios_2eh_3e_2eICRNL, !tbaa !23
  %t18 = or i32 %t14, %t15
  %t19 = load i32, ptr @G_2e_3ctermios_2eh_3e_2eINPCK, !tbaa !23
  %t22 = or i32 %t18, %t19
  %t23 = load i32, ptr @G_2e_3ctermios_2eh_3e_2eISTRIP, !tbaa !23
  %t26 = or i32 %t22, %t23
  %t27 = load i32, ptr @G_2e_3ctermios_2eh_3e_2eIXON, !tbaa !23
  %t30 = or i32 %t26, %t27
  %t33 = xor i32 %t30, -1
  %t36 = and i32 %t13, %t33
  %t38 = getelementptr %"<termios.h>:termios", ptr %l3, i32 0, i32 0
  store i32 %t36, ptr %t38, !tbaa !64
  %t39 = getelementptr %"<termios.h>:termios", ptr %l3, i32 0, i32 1
  %t40 = load i32, ptr %t39, !tbaa !64
  %t41 = load i32, ptr @G_2e_3ctermios_2eh_3e_2eOPOST, !tbaa !23
  %t44 = xor i32 %t41, -1
  %t47 = and i32 %t40, %t44
  %t49 = getelementptr %"<termios.h>:termios", ptr %l3, i32 0, i32 1
  store i32 %t47, ptr %t49, !tbaa !64
  %t50 = getelementptr %"<termios.h>:termios", ptr %l3, i32 0, i32 3
  %t51 = load i32, ptr %t50, !tbaa !64
  %t52 = load i32, ptr @G_2e_3ctermios_2eh_3e_2eECHO, !tbaa !23
  %t53 = load i32, ptr @G_2e_3ctermios_2eh_3e_2eICANON, !tbaa !23
  %t56 = or i32 %t52, %t53
  %t57 = load i32, ptr @G_2e_3ctermios_2eh_3e_2eIEXTEN, !tbaa !23
  %t60 = or i32 %t56, %t57
  %t61 = load i32, ptr @G_2e_3ctermios_2eh_3e_2eISIG, !tbaa !23
  %t64 = or i32 %t60, %t61
  %t67 = xor i32 %t64, -1
  %t70 = and i32 %t51, %t67
  %t72 = getelementptr %"<termios.h>:termios", ptr %l3, i32 0, i32 3
  store i32 %t70, ptr %t72, !tbaa !64
  %t73 = load i32, ptr @G_2e_3ctermios_2eh_3e_2eVMIN, !tbaa !23
  %t74 = getelementptr %"<termios.h>:termios", ptr %l3, i32 0, i32 5
  %t76 = sext i32 %t73 to i64
  %t77 = getelementptr [32 x i8], ptr %t74, i64 0, i64 %t76
  store i8 1, ptr %t77, !tbaa !32
  %t78 = load i32, ptr @G_2e_3ctermios_2eh_3e_2eVTIME, !tbaa !23
  %t79 = getelementptr %"<termios.h>:termios", ptr %l3, i32 0, i32 5
  %t81 = sext i32 %t78 to i64
  %t82 = getelementptr [32 x i8], ptr %t79, i64 0, i64 %t81
  store i8 0, ptr %t82, !tbaa !32
  %t83 = load i32, ptr @G_2e_3ctermios_2eh_3e_2eTCSANOW, !tbaa !23
  %t86 = call i32 @tcsetattr(i32 0, i32 %t83, ptr %l3)
  store i32 %t86, ptr %l44
  br label %bb6
bb6:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/lineedit:Editor", ptr %t87, i32 0, i32 6
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s0, ptr %t89, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d38, i32 0, i32 1) })
  br label %bb7
bb7:
  %t91 = load ptr, ptr %l0, !tbaa !29
  store ptr %t91, ptr %l47, !tbaa !29
  %t92 = call i64 @compiler_2flineedit_2ecolumns()
  store i64 %t92, ptr %l48
  br label %bb8
bb8:
  %t93 = load i64, ptr %l48, !tbaa !24
  %t94 = load ptr, ptr %l47, !tbaa !29
  %t95 = getelementptr %"compiler/lineedit:Editor", ptr %t94, i32 0, i32 2
  store i64 %t93, ptr %t95, !tbaa !24
  %t96 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eBegin(ptr %v0, ptr %t96)
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t98 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eflush(ptr %v0, ptr %t98)
  br label %bb11
bb11:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/lineedit:Editor", ptr %t100, i32 0, i32 36
  %t103 = load i64, ptr %t102, !tbaa !24
  store i64 %t103, ptr %l52, !tbaa !24
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/lineedit:Editor", ptr %t104, i32 0, i32 35
  %t108 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eLen_3cU8_3e(ptr %v0, ptr %t106)
  store i64 %t108, ptr %l55
  br label %bb12
bb12:
  %t109 = load i64, ptr %l52, !tbaa !24
  %t110 = load i64, ptr %l55, !tbaa !24
  %t111 = icmp sge i64 %t109, %t110
  br i1 %t111, label %bb13, label %bb14
bb13:
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t115 = call i32 @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2efill(ptr %v0, ptr %t113)
  store i32 %t115, ptr %l58
  %t116 = icmp ne i32 %t115, 0
  br i1 %t116, label %bb16, label %ok.117, !prof !99
ok.117:
  br label %bb15
bb14:
  br label %bb21
bb15:
  br label %bb20
bb16:
  %t118 = load i32, ptr %l58, !tbaa !23
  %t119 = lshr i32 %t118, 16
  %t120 = and i32 %t118, 65535
  %t121 = icmp eq i32 %t119, 1
  %t122 = select i1 %t121, i32 1, i32 0
  %t123 = icmp eq i32 %t118, 0
  %t124 = shl i32 %t122, 16
  %t125 = or i32 %t124, %t120
  %t126 = select i1 %t123, i32 0, i32 %t125
  store i32 %t126, ptr %l59, !tbaa !23
  store %olang.scope zeroinitializer, ptr %s5
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/lineedit:Editor", ptr %t127, i32 0, i32 6
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s5, ptr %t129, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d39, i32 0, i32 1) })
  br label %bb17
bb17:
  %t131 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eflush(ptr %v0, ptr %t131)
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s5)
  %t133 = load i32, ptr @G_2e_3ctermios_2eh_3e_2eTCSANOW, !tbaa !23
  %t136 = call i32 @tcsetattr(i32 0, i32 %t133, ptr %l2)
  store i32 %t136, ptr %l65
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s0)
  %t137 = load i32, ptr %l59, !tbaa !23
  %t138 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t137, 0
  store { i32, { i64, ptr } } %t138, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t143 = extractvalue { ptr, ptr } %pg1, 0
  %t144 = extractvalue { ptr, ptr } %pg1, 1
  %t145 = call { i32, { i64, ptr } } @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2efeedPending(ptr %v0, ptr %v1, ptr %v2, ptr %t139, ptr %t143, ptr %t144)
  %t146 = extractvalue { i32, { i64, ptr } } %t145, 1
  %t147 = extractvalue { i32, { i64, ptr } } %t145, 0
  store i32 %t147, ptr %l70
  %t148 = icmp ne i32 %t147, 0
  br i1 %t148, label %bb23, label %ok.149, !prof !99
ok.149:
  store { i64, ptr } %t146, ptr %l69
  br label %bb22
bb22:
  %t150 = load { i64, ptr }, ptr %l69, !tbaa !27
  store { i64, ptr } %t150, ptr %l66, !tbaa !27
  br label %bb27
bb23:
  %t151 = load i32, ptr %l70, !tbaa !23
  %t152 = lshr i32 %t151, 16
  %t153 = and i32 %t151, 65535
  %t154 = icmp eq i32 %t152, 1
  %t155 = select i1 %t154, i32 1, i32 0
  %t156 = icmp eq i32 %t151, 0
  %t157 = shl i32 %t155, 16
  %t158 = or i32 %t157, %t153
  %t159 = select i1 %t156, i32 0, i32 %t158
  store i32 %t159, ptr %l71, !tbaa !23
  store %olang.scope zeroinitializer, ptr %s8
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t162 = getelementptr %"compiler/lineedit:Editor", ptr %t160, i32 0, i32 6
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s8, ptr %t162, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d39, i32 0, i32 1) })
  br label %bb24
bb24:
  %t164 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eflush(ptr %v0, ptr %t164)
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s8)
  %t166 = load i32, ptr @G_2e_3ctermios_2eh_3e_2eTCSANOW, !tbaa !23
  %t169 = call i32 @tcsetattr(i32 0, i32 %t166, ptr %l2)
  store i32 %t169, ptr %l77
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s0)
  %t170 = load i32, ptr %l71, !tbaa !23
  %t171 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t170, 0
  store { i32, { i64, ptr } } %t171, ptr %rv
  br label %ret
bb27:
  %t172 = load { i64, ptr }, ptr %l66, !tbaa !27
  store { i64, ptr } %t172, ptr %l4, !tbaa !27
  %t173 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t175 = extractvalue { i64, ptr } %t173, 0
  %t176 = extractvalue { i64, ptr } { i64 -1, ptr null }, 0
  %t177 = icmp eq i64 %t175, %t176
  %t178 = extractvalue { i64, ptr } %t173, 1
  %t179 = extractvalue { i64, ptr } { i64 -1, ptr null }, 1
  %t180 = icmp eq ptr %t178, %t179
  %t181 = and i1 %t177, %t180
  %t183 = xor i1 %t181, true
  br i1 %t183, label %bb28, label %bb29
bb28:
  %t185 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t185, ptr %l81, !tbaa !27
  store %olang.scope zeroinitializer, ptr %s12
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t188 = getelementptr %"compiler/lineedit:Editor", ptr %t186, i32 0, i32 6
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s12, ptr %t188, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d39, i32 0, i32 1) })
  br label %bb30
bb29:
  br label %bb33
bb30:
  %t190 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eflush(ptr %v0, ptr %t190)
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s12)
  %t192 = load i32, ptr @G_2e_3ctermios_2eh_3e_2eTCSANOW, !tbaa !23
  %t195 = call i32 @tcsetattr(i32 0, i32 %t192, ptr %l2)
  store i32 %t195, ptr %l87
  br label %bb32
bb32:
  call void @__olang_scope_close(ptr %s0)
  %t196 = load { i64, ptr }, ptr %l81, !tbaa !27
  %t197 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t196, 1
  store { i32, { i64, ptr } } %t197, ptr %rv
  br label %ret
bb33:
  br label %bb34
bb34:
  br label %bb10
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eRemember(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i1
  %l7 = alloca i64
  %l9 = alloca i1
  %l11 = alloca ptr
  %l14 = alloca i64
  %l16 = alloca { i64, ptr }
  %l18 = alloca i1
  %l24 = alloca i64
  %l29 = alloca i32
  %l30 = alloca ptr
  %l33 = alloca i64
  %l36 = alloca i1
  %l39 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  %l42 = alloca i64
  %l43 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v1, ptr %v1, { i64, ptr } %t1)
  store { i64, ptr } %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t5 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t4, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d40, i32 0, i32 1) })
  store i1 %t5, ptr %l4
  br label %bb2
bb2:
  %t6 = load i1, ptr %l4, !tbaa !21
  br i1 %t6, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb4:
  br label %bb5
bb5:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/lineedit:Editor", ptr %t7, i32 0, i32 7
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t9)
  store i64 %t11, ptr %l7
  br label %bb6
bb6:
  %t12 = load i64, ptr %l7, !tbaa !24
  %t13 = icmp sgt i64 %t12, 0
  br i1 %t13, label %bb7, label %bb8
bb7:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/lineedit:Editor", ptr %t15, i32 0, i32 7
  store ptr %t17, ptr %l11, !tbaa !29
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/lineedit:Editor", ptr %t18, i32 0, i32 7
  %t22 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t20)
  store i64 %t22, ptr %l14
  br label %bb9
bb8:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb12
bb9:
  %t23 = load i64, ptr %l14, !tbaa !24
  %t24 = sub i64 %t23, 1
  %t25 = load ptr, ptr %l11, !tbaa !29
  %t27 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t25, i64 %t24)
  store { i64, ptr } %t27, ptr %l16
  br label %bb10
bb10:
  %t28 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t29 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t31 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %t29, { i64, ptr } %t28)
  store i1 %t31, ptr %l18
  br label %bb11
bb11:
  %t32 = load i1, ptr %l18, !tbaa !21
  store i1 %t32, ptr %l9, !tbaa !21
  br label %bb12
bb12:
  %t33 = load i1, ptr %l9, !tbaa !21
  br i1 %t33, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb14:
  br label %bb15
bb15:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/lineedit:Editor", ptr %t34, i32 0, i32 7
  %t37 = load { i64, ptr }, ptr %l1, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %t36, { i64, ptr } %t37)
  br label %bb16
bb16:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/lineedit:Editor", ptr %t40, i32 0, i32 7
  %t44 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t42)
  store i64 %t44, ptr %l24
  br label %bb17
bb17:
  %t45 = load i64, ptr @G_2ecompiler_2flineedit_2eKeep, !tbaa !24
  %t46 = load i64, ptr %l24, !tbaa !24
  %t48 = icmp sgt i64 %t46, %t45
  br i1 %t48, label %bb18, label %bb19
bb18:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/lineedit:Editor", ptr %t50, i32 0, i32 7
  %t54 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H9ea329edf73de23cd280575fae6d500d(ptr %v0, ptr %t52, i64 0)
  store i32 %t54, ptr %l29
  %t55 = icmp ne i32 %t54, 0
  br i1 %t55, label %bb21, label %ok.56, !prof !99
ok.56:
  br label %bb20
bb19:
  br label %bb24
bb20:
  br label %bb23
bb21:
  br label %bb22
bb22:
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t57 = load ptr, ptr %l0, !tbaa !29
  store ptr %t57, ptr %l30, !tbaa !29
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/lineedit:Editor", ptr %t58, i32 0, i32 7
  %t62 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t60)
  store i64 %t62, ptr %l33
  br label %bb25
bb25:
  %t63 = load i64, ptr %l33, !tbaa !24
  %t64 = load ptr, ptr %l30, !tbaa !29
  %t65 = getelementptr %"compiler/lineedit:Editor", ptr %t64, i32 0, i32 12
  store i64 %t63, ptr %t65, !tbaa !24
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/lineedit:Editor", ptr %t66, i32 0, i32 8
  %t69 = load { i64, ptr }, ptr %t68, !tbaa !27
  %t71 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t69, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d41, i32 0, i32 1) })
  store i1 %t71, ptr %l36
  br label %bb26
bb26:
  %t72 = load i1, ptr %l36, !tbaa !21
  %t73 = xor i1 %t72, true
  br i1 %t73, label %bb27, label %bb28
bb27:
  store %olang.scope zeroinitializer, ptr %s5
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/lineedit:Editor", ptr %t75, i32 0, i32 8
  %t78 = load { i64, ptr }, ptr %t77, !tbaa !27
  store { i64, ptr } %t78, ptr %l39, !tbaa !27
  %t79 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t81 = call { i64, ptr } @compiler_2flineedit_2eencode(ptr %v1, ptr %s5, { i64, ptr } %t79)
  store { i64, ptr } %t81, ptr %l41
  br label %bb29
bb28:
  br label %bb31
bb29:
  %t82 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t83 = extractvalue { i64, ptr } %t82, 0
  store i64 %t83, ptr %l42, !tbaa !24
  %t84 = load i64, ptr %l42, !tbaa !24
  %t85 = mul i64 %t84, 1
  %t86 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t85)
  %t87 = insertvalue { i64, ptr } undef, i64 %t84, 0
  %t88 = insertvalue { i64, ptr } %t87, ptr %t86, 1
  store { i64, ptr } %t88, ptr %l43, !tbaa !27
  %t89 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t90 = load ptr, ptr %t89, !tbaa !27
  %t91 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !27
  %t93 = load i64, ptr %l42, !tbaa !24
  %t94 = mul i64 %t93, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t90, ptr %t92, i64 %t94, i1 false)
  %t95 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t96 = extractvalue { i64, ptr } %t95, 0
  %t97 = extractvalue { i64, ptr } %t95, 1
  %t98 = mul i64 %t96, 1
  %t99 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t98)
  call void @llvm.memcpy.p0.p0.i64(ptr %t99, ptr %t97, i64 %t98, i1 false)
  %t100 = insertvalue { i64, ptr } undef, i64 %t96, 0
  %t101 = insertvalue { i64, ptr } %t100, ptr %t99, 1
  %t102 = load { i64, ptr }, ptr %l39, !tbaa !27
  call void @compiler_2flineedit_2eappendLine(ptr %v0, ptr %s5, { i64, ptr } %t102, { i64, ptr } %t101)
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s5)
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eacceptSearch(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca i1
  %l6 = alloca ptr
  %l9 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lineedit:Editor", ptr %t1, i32 0, i32 21
  store i1 false, ptr %t3, !tbaa !21
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/lineedit:Editor", ptr %t4, i32 0, i32 25
  %t7 = load { i64, ptr }, ptr %t6, !tbaa !27
  %t9 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t7, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d42, i32 0, i32 1) })
  store i1 %t9, ptr %l4
  br label %bb1
bb1:
  %t10 = load i1, ptr %l4, !tbaa !21
  %t11 = xor i1 %t10, true
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  store ptr %t13, ptr %l6, !tbaa !29
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/lineedit:Editor", ptr %t14, i32 0, i32 25
  %t17 = load { i64, ptr }, ptr %t16, !tbaa !27
  %t18 = load ptr, ptr %l6, !tbaa !29
  %t19 = getelementptr %"compiler/lineedit:Editor", ptr %t18, i32 0, i32 26
  %t20 = load { i64, ptr }, ptr %t19, !tbaa !27
  store { i64, ptr } %t20, ptr %l9, !tbaa !27
  %t22 = load ptr, ptr %l6, !tbaa !29
  %t23 = getelementptr %"compiler/lineedit:Editor", ptr %t22, i32 0, i32 26
  store { i64, ptr } %t17, ptr %t23, !tbaa !27
  %t24 = load i1, ptr @olang_2esole_2ecompiler_2flineedit_3aEditor_2e26
  br i1 %t24, label %bb4, label %bb5
bb3:
  br label %bb6
bb4:
  %t26 = load { i64, ptr }, ptr %l9
  %t27 = extractvalue { i64, ptr } %t26, 1
  call void @__olang_region_release(ptr %t27)
  store { i64, ptr } zeroinitializer, ptr %l9
  br label %bb5
bb5:
  br label %bb6
bb6:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/lineedit:Editor", ptr %t28, i32 0, i32 5
  %t31 = load i1, ptr %t30, !tbaa !21
  br i1 %t31, label %bb7, label %bb8
bb7:
  %t33 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eclamp(ptr %v0, ptr %t33)
  br label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eagain(ptr %v0, ptr %a0, i1 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i1
  %l2 = alloca i1
  %l5 = alloca i1
  %l10 = alloca ptr
  %l13 = alloca { i64, ptr }
  %l17 = alloca ptr
  %l19 = alloca i64
  %l21 = alloca i64
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i1 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lineedit:Editor", ptr %t1, i32 0, i32 26
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t4, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d43, i32 0, i32 1) })
  store i1 %t6, ptr %l5
  br label %bb1
bb1:
  %t7 = load i1, ptr %l5, !tbaa !21
  br i1 %t7, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb3:
  br label %bb4
bb4:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/lineedit:Editor", ptr %t8, i32 0, i32 24
  %t11 = load i1, ptr %t10, !tbaa !21
  %t12 = load i1, ptr %l1, !tbaa !21
  %t15 = icmp eq i1 %t11, %t12
  store i1 %t15, ptr %l2, !tbaa !21
  %t17 = load ptr, ptr %l0, !tbaa !29
  store ptr %t17, ptr %l10, !tbaa !29
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/lineedit:Editor", ptr %t18, i32 0, i32 26
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !27
  %t22 = load ptr, ptr %l10, !tbaa !29
  %t23 = getelementptr %"compiler/lineedit:Editor", ptr %t22, i32 0, i32 25
  %t24 = load { i64, ptr }, ptr %t23, !tbaa !27
  store { i64, ptr } %t24, ptr %l13, !tbaa !27
  %t26 = load ptr, ptr %l10, !tbaa !29
  %t27 = getelementptr %"compiler/lineedit:Editor", ptr %t26, i32 0, i32 25
  store { i64, ptr } %t21, ptr %t27, !tbaa !27
  %t28 = load i1, ptr @olang_2esole_2ecompiler_2flineedit_3aEditor_2e25
  br i1 %t28, label %bb5, label %bb6
bb5:
  %t30 = load { i64, ptr }, ptr %l13
  %t31 = extractvalue { i64, ptr } %t30, 1
  call void @__olang_region_release(ptr %t31)
  store { i64, ptr } zeroinitializer, ptr %l13
  br label %bb6
bb6:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load i1, ptr %l2, !tbaa !21
  %t36 = getelementptr %"compiler/lineedit:Editor", ptr %t32, i32 0, i32 24
  store i1 %t33, ptr %t36, !tbaa !21
  %t37 = load ptr, ptr %l0, !tbaa !29
  store ptr %t37, ptr %l17, !tbaa !29
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/lineedit:Editor", ptr %t38, i32 0, i32 12
  %t41 = load i64, ptr %t40, !tbaa !24
  store i64 %t41, ptr %l19, !tbaa !24
  %t42 = load i1, ptr %l2, !tbaa !21
  br i1 %t42, label %bb7, label %bb8
bb7:
  store i64 -1, ptr %l21, !tbaa !24
  br label %bb9
bb8:
  store i64 1, ptr %l21, !tbaa !24
  br label %bb9
bb9:
  %t44 = load i64, ptr %l19, !tbaa !24
  %t45 = load i64, ptr %l21, !tbaa !24
  %t46 = add i64 %t44, %t45
  %t47 = load ptr, ptr %l17, !tbaa !29
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2efind(ptr %v0, ptr %t47, i64 %t46)
  br label %bb10
bb10:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/lineedit:Editor", ptr %t50, i32 0, i32 24
  %t53 = load i1, ptr %t52, !tbaa !21
  %t54 = load i1, ptr %l1, !tbaa !21
  %t57 = icmp eq i1 %t53, %t54
  %t60 = getelementptr %"compiler/lineedit:Editor", ptr %t49, i32 0, i32 24
  store i1 %t57, ptr %t60, !tbaa !21
  %t61 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eclamp(ptr %v0, ptr %t61)
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2ebackBy(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l15 = alloca i64
  %l20 = alloca i64
  %l23 = alloca i64
  %l47 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lineedit:Editor", ptr %t1, i32 0, i32 4
  %t4 = load i64, ptr %t3, !tbaa !24
  store i64 %t4, ptr %l2, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/lineedit:Editor", ptr %t6, i32 0, i32 3
  %t9 = load { i64, ptr }, ptr %t8, !tbaa !27
  %t10 = load i64, ptr %l2, !tbaa !24
  %t13 = call i64 @compiler_2flineedit_2elineStart(ptr %v0, { i64, ptr } %t9, i64 %t10)
  store i64 %t13, ptr %l15
  br label %bb1
bb1:
  %t14 = load i64, ptr %l15, !tbaa !24
  store i64 %t14, ptr %l3, !tbaa !24
  store i64 0, ptr %l4, !tbaa !24
  store i64 %a1, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t17 = load i64, ptr %l5, !tbaa !24
  %t18 = load i64, ptr %l4, !tbaa !24
  %t21 = icmp sgt i64 %t17, %t18
  br i1 %t21, label %bb2, label %bb3
bb2:
  %t23 = load i64, ptr %l6, !tbaa !24
  %t25 = icmp sgt i64 %t23, 0
  br i1 %t25, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb7
bb4:
  %t27 = load i64, ptr %l5, !tbaa !24
  %t28 = load i64, ptr %l4, !tbaa !24
  %t31 = sub i64 %t27, %t28
  %t32 = load i64, ptr %l6, !tbaa !24
  %t35 = add i64 %t31, %t32
  %t37 = sub i64 %t35, 1
  %t38 = load i64, ptr %l6, !tbaa !24
  %t41 = sdiv i64 %t37, %t38
  store i64 %t41, ptr %l23, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb6
bb6:
  %t43 = load i64, ptr %l23, !tbaa !24
  store i64 %t43, ptr %l20, !tbaa !24
  br label %bb7
bb7:
  %t44 = load i64, ptr %l20, !tbaa !24
  store i64 %t44, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb8
bb8:
  %t45 = load i64, ptr %l8, !tbaa !24
  %t46 = load i64, ptr %l7, !tbaa !24
  %t49 = icmp slt i64 %t45, %t46
  %t51 = xor i1 %t49, true
  br i1 %t51, label %bb9, label %bb10
bb9:
  br label %bb17
bb10:
  br label %bb11
bb11:
  %t53 = load i64, ptr %l4, !tbaa !24
  %t54 = load i64, ptr %l8, !tbaa !24
  %t55 = load i64, ptr %l6, !tbaa !24
  %t58 = mul i64 %t54, %t55
  %t61 = add i64 %t53, %t58
  store i64 %t61, ptr %l9, !tbaa !24
  %t63 = load i64, ptr %l2, !tbaa !24
  %t64 = load i64, ptr %l3, !tbaa !24
  %t67 = icmp sgt i64 %t63, %t64
  br i1 %t67, label %bb12, label %bb13
bb12:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/lineedit:Editor", ptr %t69, i32 0, i32 3
  %t72 = load { i64, ptr }, ptr %t71, !tbaa !27
  %t73 = load i64, ptr %l2, !tbaa !24
  %t76 = call i64 @compiler_2flineedit_2eprevAt(ptr %v0, { i64, ptr } %t72, i64 %t73)
  store i64 %t76, ptr %l47
  br label %bb14
bb13:
  br label %bb15
bb14:
  %t77 = load i64, ptr %l47, !tbaa !24
  store i64 %t77, ptr %l2, !tbaa !24
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t78 = load i64, ptr %l8, !tbaa !24
  %t80 = add i64 %t78, 1
  store i64 %t80, ptr %l8, !tbaa !24
  br label %bb8
bb17:
  %t82 = load i64, ptr %l2, !tbaa !24
  store i64 %t82, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2ebeginSearch(ptr %v0, ptr %a0, i1 %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca { i64, ptr }
  %l21 = alloca ptr
  %l23 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lineedit:Editor", ptr %t1, i32 0, i32 21
  store i1 true, ptr %t3, !tbaa !21
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/lineedit:Editor", ptr %t4, i32 0, i32 23
  store i1 %a2, ptr %t8, !tbaa !21
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/lineedit:Editor", ptr %t9, i32 0, i32 24
  store i1 %a1, ptr %t13, !tbaa !21
  %t14 = load ptr, ptr %l0, !tbaa !29
  store ptr %t14, ptr %l11, !tbaa !29
  %t15 = load ptr, ptr %l11, !tbaa !29
  %t16 = getelementptr %"compiler/lineedit:Editor", ptr %t15, i32 0, i32 25
  %t17 = load { i64, ptr }, ptr %t16, !tbaa !27
  store { i64, ptr } %t17, ptr %l12, !tbaa !27
  %t18 = load ptr, ptr %l11, !tbaa !29
  %t19 = getelementptr %"compiler/lineedit:Editor", ptr %t18, i32 0, i32 25
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d44, i32 0, i32 1) }, ptr %t19, !tbaa !27
  %t20 = load i1, ptr @olang_2esole_2ecompiler_2flineedit_3aEditor_2e25
  br i1 %t20, label %bb1, label %bb2
bb1:
  %t22 = load { i64, ptr }, ptr %l12
  %t23 = extractvalue { i64, ptr } %t22, 1
  call void @__olang_region_release(ptr %t23)
  store { i64, ptr } zeroinitializer, ptr %l12
  br label %bb2
bb2:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/lineedit:Editor", ptr %t24, i32 0, i32 28
  store i1 false, ptr %t26, !tbaa !21
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/lineedit:Editor", ptr %t27, i32 0, i32 3
  %t30 = load { i64, ptr }, ptr %t29, !tbaa !27
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/lineedit:Editor", ptr %t32, i32 0, i32 4
  %t35 = load i64, ptr %t34, !tbaa !24
  store i64 %t35, ptr %l4, !tbaa !24
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/lineedit:Editor", ptr %t37, i32 0, i32 12
  %t40 = load i64, ptr %t39, !tbaa !24
  store i64 %t40, ptr %l5, !tbaa !24
  %t42 = load ptr, ptr %l0, !tbaa !29
  store ptr %t42, ptr %l21, !tbaa !29
  %t44 = load ptr, ptr %l21, !tbaa !29
  %t45 = getelementptr %"compiler/lineedit:Editor", ptr %t44, i32 0, i32 29
  %t46 = load { i64, ptr }, ptr %t45, !tbaa !27
  store { i64, ptr } %t46, ptr %l23, !tbaa !27
  %t48 = load ptr, ptr %l21, !tbaa !29
  %t49 = getelementptr %"compiler/lineedit:Editor", ptr %t48, i32 0, i32 29
  store { i64, ptr } %t30, ptr %t49, !tbaa !27
  %t50 = load i1, ptr @olang_2esole_2ecompiler_2flineedit_3aEditor_2e29
  br i1 %t50, label %bb3, label %bb4
bb3:
  %t52 = load { i64, ptr }, ptr %l23
  %t53 = extractvalue { i64, ptr } %t52, 1
  call void @__olang_region_release(ptr %t53)
  store { i64, ptr } zeroinitializer, ptr %l23
  br label %bb4
bb4:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load i64, ptr %l4, !tbaa !24
  %t58 = getelementptr %"compiler/lineedit:Editor", ptr %t54, i32 0, i32 30
  store i64 %t55, ptr %t58, !tbaa !24
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t60 = load i64, ptr %l5, !tbaa !24
  %t63 = getelementptr %"compiler/lineedit:Editor", ptr %t59, i32 0, i32 31
  store i64 %t60, ptr %t63, !tbaa !24
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/lineedit:Editor", ptr %t65, i32 0, i32 12
  %t68 = load i64, ptr %t67, !tbaa !24
  %t71 = getelementptr %"compiler/lineedit:Editor", ptr %t64, i32 0, i32 27
  store i64 %t68, ptr %t71, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2ebracket(ptr %v0, ptr %a0, i1 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i1
  %l10 = alloca i1
  %l12 = alloca ptr
  %l14 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca i64
  %l24 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i1 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i1, ptr %l1, !tbaa !21
  %t5 = getelementptr %"compiler/lineedit:Editor", ptr %t1, i32 0, i32 22
  store i1 %t2, ptr %t5, !tbaa !21
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load i1, ptr %l1, !tbaa !21
  %t10 = getelementptr %"compiler/lineedit:Editor", ptr %t6, i32 0, i32 20
  store i1 %t7, ptr %t10, !tbaa !21
  %t11 = load i1, ptr %l1, !tbaa !21
  br i1 %t11, label %bb1, label %bb2
bb1:
  store i32 0, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  br label %bb4
bb4:
  store %olang.scope zeroinitializer, ptr %s2
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/lineedit:Editor", ptr %t14, i32 0, i32 3
  %t17 = load { i64, ptr }, ptr %t16, !tbaa !27
  %t19 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %s2, { i64, ptr } %t17, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d45, i32 0, i32 1) })
  store i1 %t19, ptr %l10
  br label %bb5
bb5:
  %t20 = load i1, ptr %l10, !tbaa !21
  %t21 = xor i1 %t20, true
  br i1 %t21, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s2)
  br label %bb21
bb7:
  br label %bb8
bb8:
  %t23 = load ptr, ptr %l0, !tbaa !29
  store ptr %t23, ptr %l12, !tbaa !29
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/lineedit:Editor", ptr %t24, i32 0, i32 3
  %t27 = load { i64, ptr }, ptr %t26, !tbaa !27
  store { i64, ptr } %t27, ptr %l14, !tbaa !27
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/lineedit:Editor", ptr %t28, i32 0, i32 3
  %t31 = load { i64, ptr }, ptr %t30, !tbaa !27
  %t33 = extractvalue { i64, ptr } %t31, 0
  %t35 = sub i64 %t33, 1
  store i64 %t35, ptr %l18, !tbaa !24
  %t36 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t36, 0
  store i64 %t37, ptr %l19, !tbaa !24
  %t38 = icmp sge i64 0, 0
  br i1 %t38, label %bb9, label %bb10
bb9:
  %t40 = load i64, ptr %l18, !tbaa !24
  %t41 = icmp sle i64 0, %t40
  br i1 %t41, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_d9375333dfb29074_4c1db221b9426bf0)
  unreachable
bb11:
  %t43 = load i64, ptr %l18, !tbaa !24
  %t44 = load i64, ptr %l19, !tbaa !24
  %t45 = icmp sle i64 %t43, %t44
  br i1 %t45, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_d9375333dfb29074_4c1db221b9426bf0)
  unreachable
bb13:
  %t47 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !27
  %t49 = load i64, ptr %l18, !tbaa !24
  %t50 = getelementptr i8, ptr %t48, i64 0
  %t51 = sub i64 %t49, 0
  %t52 = insertvalue { i64, ptr } undef, i64 %t51, 0
  %t53 = insertvalue { i64, ptr } %t52, ptr %t50, 1
  %t54 = load ptr, ptr %l12, !tbaa !29
  %t55 = getelementptr %"compiler/lineedit:Editor", ptr %t54, i32 0, i32 3
  %t56 = load { i64, ptr }, ptr %t55, !tbaa !27
  store { i64, ptr } %t56, ptr %l24, !tbaa !27
  %t58 = load ptr, ptr %l12, !tbaa !29
  %t59 = getelementptr %"compiler/lineedit:Editor", ptr %t58, i32 0, i32 3
  store { i64, ptr } %t53, ptr %t59, !tbaa !27
  %t60 = load i1, ptr @olang_2esole_2ecompiler_2flineedit_3aEditor_2e3
  br i1 %t60, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_d9375333dfb29074_4c1db221b9426bf0)
  unreachable
bb15:
  %t62 = load { i64, ptr }, ptr %l24
  %t63 = extractvalue { i64, ptr } %t62, 1
  call void @__olang_region_release(ptr %t63)
  store { i64, ptr } zeroinitializer, ptr %l24
  br label %bb16
bb16:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/lineedit:Editor", ptr %t64, i32 0, i32 4
  %t67 = load i64, ptr %t66, !tbaa !24
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/lineedit:Editor", ptr %t68, i32 0, i32 3
  %t71 = load { i64, ptr }, ptr %t70, !tbaa !27
  %t73 = extractvalue { i64, ptr } %t71, 0
  %t76 = icmp sgt i64 %t67, %t73
  br i1 %t76, label %bb17, label %bb18
bb17:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/lineedit:Editor", ptr %t79, i32 0, i32 3
  %t82 = load { i64, ptr }, ptr %t81, !tbaa !27
  %t84 = extractvalue { i64, ptr } %t82, 0
  %t87 = getelementptr %"compiler/lineedit:Editor", ptr %t78, i32 0, i32 4
  store i64 %t84, ptr %t87, !tbaa !24
  br label %bb19
bb18:
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s2)
  br label %bb20
bb20:
  br label %bb4
bb21:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/lineedit:Editor", ptr %t88, i32 0, i32 0
  %t91 = load i1, ptr %t90, !tbaa !21
  br i1 %t91, label %bb22, label %bb23
bb22:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/lineedit:Editor", ptr %t93, i32 0, i32 5
  store i1 false, ptr %t95, !tbaa !21
  br label %bb24
bb23:
  br label %bb24
bb24:
  store i32 2, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eclamp(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l7 = alloca i64
  %l9 = alloca i1
  %l11 = alloca i64
  %l16 = alloca i64
  %l18 = alloca ptr
  %l23 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lineedit:Editor", ptr %t1, i32 0, i32 4
  %t4 = load i64, ptr %t3, !tbaa !24
  store i64 %t4, ptr %l2, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/lineedit:Editor", ptr %t5, i32 0, i32 3
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/lineedit:Editor", ptr %t9, i32 0, i32 4
  %t12 = load i64, ptr %t11, !tbaa !24
  %t15 = call i64 @compiler_2flineedit_2elineEnd(ptr %v0, { i64, ptr } %t8, i64 %t12)
  store i64 %t15, ptr %l7
  br label %bb1
bb1:
  %t16 = load i64, ptr %l2, !tbaa !24
  %t17 = load i64, ptr %l7, !tbaa !24
  %t18 = icmp eq i64 %t16, %t17
  br i1 %t18, label %bb2, label %bb3
bb2:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/lineedit:Editor", ptr %t20, i32 0, i32 4
  %t23 = load i64, ptr %t22, !tbaa !24
  store i64 %t23, ptr %l11, !tbaa !24
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/lineedit:Editor", ptr %t24, i32 0, i32 3
  %t27 = load { i64, ptr }, ptr %t26, !tbaa !27
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/lineedit:Editor", ptr %t28, i32 0, i32 4
  %t31 = load i64, ptr %t30, !tbaa !24
  %t34 = call i64 @compiler_2flineedit_2elineStart(ptr %v0, { i64, ptr } %t27, i64 %t31)
  store i64 %t34, ptr %l16
  br label %bb4
bb3:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb5
bb4:
  %t35 = load i64, ptr %l11, !tbaa !24
  %t36 = load i64, ptr %l16, !tbaa !24
  %t37 = icmp sgt i64 %t35, %t36
  store i1 %t37, ptr %l9, !tbaa !21
  br label %bb5
bb5:
  %t39 = load i1, ptr %l9, !tbaa !21
  br i1 %t39, label %bb6, label %bb7
bb6:
  %t40 = load ptr, ptr %l0, !tbaa !29
  store ptr %t40, ptr %l18, !tbaa !29
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/lineedit:Editor", ptr %t41, i32 0, i32 3
  %t44 = load { i64, ptr }, ptr %t43, !tbaa !27
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/lineedit:Editor", ptr %t45, i32 0, i32 4
  %t48 = load i64, ptr %t47, !tbaa !24
  %t51 = call i64 @compiler_2flineedit_2eprevAt(ptr %v0, { i64, ptr } %t44, i64 %t48)
  store i64 %t51, ptr %l23
  br label %bb8
bb7:
  br label %bb9
bb8:
  %t52 = load i64, ptr %l23, !tbaa !24
  %t53 = load ptr, ptr %l18, !tbaa !29
  %t54 = getelementptr %"compiler/lineedit:Editor", ptr %t53, i32 0, i32 4
  store i64 %t52, ptr %t54, !tbaa !24
  br label %bb9
bb9:
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2ecommand(ptr %v0, ptr %a0, i8 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i8
  %l2 = alloca i64
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
  %l26 = alloca i1
  %l29 = alloca i1
  %l38 = alloca ptr
  %l40 = alloca i64
  %l41 = alloca { i64, ptr }
  %l43 = alloca i64
  %l47 = alloca i64
  %l49 = alloca i64
  %l52 = alloca ptr
  %l55 = alloca i64
  %l60 = alloca i1
  %l63 = alloca ptr
  %l65 = alloca i64
  %l69 = alloca i64
  %l76 = alloca i64
  %l81 = alloca i64
  %l84 = alloca i64
  %l107 = alloca i1
  %l116 = alloca i64
  %l121 = alloca i64
  %l124 = alloca i64
  %l147 = alloca i64
  %l152 = alloca i64
  %l155 = alloca i64
  %l178 = alloca i1
  %l186 = alloca i1
  %l194 = alloca i1
  %l197 = alloca i1
  %l200 = alloca i1
  %l203 = alloca i1
  %l206 = alloca i1
  %l209 = alloca i1
  %l216 = alloca i1
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i8 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lineedit:Editor", ptr %t1, i32 0, i32 3
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l3, !tbaa !27
  %t6 = load i8, ptr %l1, !tbaa !22
  %t8 = icmp eq i8 %t6, 100
  br i1 %t8, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb3
bb2:
  %t10 = load i8, ptr %l1, !tbaa !22
  %t12 = icmp eq i8 %t10, 99
  store i1 %t12, ptr %l26, !tbaa !21
  br label %bb3
bb3:
  %t14 = load i1, ptr %l26, !tbaa !21
  br i1 %t14, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l29, !tbaa !21
  br label %bb6
bb5:
  %t15 = load i8, ptr %l1, !tbaa !22
  %t17 = icmp eq i8 %t15, 114
  store i1 %t17, ptr %l29, !tbaa !21
  br label %bb6
bb6:
  %t19 = load i1, ptr %l29, !tbaa !21
  br i1 %t19, label %bb7, label %bb8
bb7:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load i8, ptr %l1, !tbaa !22
  %t24 = getelementptr %"compiler/lineedit:Editor", ptr %t20, i32 0, i32 33
  store i8 %t21, ptr %t24, !tbaa !22
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load i64, ptr %l2, !tbaa !24
  %t29 = getelementptr %"compiler/lineedit:Editor", ptr %t25, i32 0, i32 34
  store i64 %t26, ptr %t29, !tbaa !24
  br label %bb9
bb8:
  br label %bb9
bb9:
  %t30 = load i8, ptr %l1, !tbaa !22
  %t32 = icmp eq i8 %t30, 120
  br i1 %t32, label %bb10, label %bb11
bb10:
  %t34 = load ptr, ptr %l0, !tbaa !29
  store ptr %t34, ptr %l38, !tbaa !29
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/lineedit:Editor", ptr %t35, i32 0, i32 4
  %t38 = load i64, ptr %t37, !tbaa !24
  store i64 %t38, ptr %l40, !tbaa !24
  %t39 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t39, ptr %l41, !tbaa !27
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/lineedit:Editor", ptr %t40, i32 0, i32 4
  %t43 = load i64, ptr %t42, !tbaa !24
  store i64 %t43, ptr %l43, !tbaa !24
  %t44 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/lineedit:Editor", ptr %t45, i32 0, i32 4
  %t48 = load i64, ptr %t47, !tbaa !24
  %t51 = call i64 @compiler_2flineedit_2elineEnd(ptr %v0, { i64, ptr } %t44, i64 %t48)
  store i64 %t51, ptr %l47
  br label %bb12
bb11:
  br label %bb15
bb12:
  %t52 = load i64, ptr %l2, !tbaa !24
  %t53 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t54 = load i64, ptr %l43, !tbaa !24
  %t55 = load i64, ptr %l47, !tbaa !24
  %t57 = call i64 @compiler_2flineedit_2eoffsetOf(ptr %v0, { i64, ptr } %t53, i64 %t54, i64 %t55, i64 %t52)
  store i64 %t57, ptr %l49
  br label %bb13
bb13:
  %t58 = load ptr, ptr %l38, !tbaa !29
  %t59 = load i64, ptr %l40, !tbaa !24
  %t60 = load i64, ptr %l49, !tbaa !24
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eremove(ptr %v0, ptr %t58, i64 %t59, i64 %t60, i1 true)
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t61 = load i8, ptr %l1, !tbaa !22
  %t63 = icmp eq i8 %t61, 88
  br i1 %t63, label %bb16, label %bb17
bb16:
  %t65 = load ptr, ptr %l0, !tbaa !29
  store ptr %t65, ptr %l52, !tbaa !29
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load i64, ptr %l2, !tbaa !24
  %t70 = call i64 @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2ebackBy(ptr %v0, ptr %t66, i64 %t67)
  store i64 %t70, ptr %l55
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/lineedit:Editor", ptr %t71, i32 0, i32 4
  %t74 = load i64, ptr %t73, !tbaa !24
  %t75 = load ptr, ptr %l52, !tbaa !29
  %t76 = load i64, ptr %l55, !tbaa !24
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eremove(ptr %v0, ptr %t75, i64 %t76, i64 %t74, i1 true)
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t78 = load i8, ptr %l1, !tbaa !22
  %t80 = icmp eq i8 %t78, 68
  br i1 %t80, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l60, !tbaa !21
  br label %bb23
bb22:
  %t82 = load i8, ptr %l1, !tbaa !22
  %t84 = icmp eq i8 %t82, 67
  store i1 %t84, ptr %l60, !tbaa !21
  br label %bb23
bb23:
  %t86 = load i1, ptr %l60, !tbaa !21
  br i1 %t86, label %bb24, label %bb25
bb24:
  %t87 = load ptr, ptr %l0, !tbaa !29
  store ptr %t87, ptr %l63, !tbaa !29
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/lineedit:Editor", ptr %t88, i32 0, i32 4
  %t91 = load i64, ptr %t90, !tbaa !24
  store i64 %t91, ptr %l65, !tbaa !24
  %t92 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/lineedit:Editor", ptr %t93, i32 0, i32 4
  %t96 = load i64, ptr %t95, !tbaa !24
  %t99 = call i64 @compiler_2flineedit_2elineEnd(ptr %v0, { i64, ptr } %t92, i64 %t96)
  store i64 %t99, ptr %l69
  br label %bb26
bb25:
  br label %bb28
bb26:
  %t100 = load ptr, ptr %l63, !tbaa !29
  %t101 = load i64, ptr %l65, !tbaa !24
  %t102 = load i64, ptr %l69, !tbaa !24
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eremove(ptr %v0, ptr %t100, i64 %t101, i64 %t102, i1 true)
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t103 = load i8, ptr %l1, !tbaa !22
  %t105 = icmp eq i8 %t103, 126
  br i1 %t105, label %bb29, label %bb30
bb29:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2etoggle(ptr %v0, ptr %t107, i64 %t108)
  br label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb32
bb32:
  store i64 0, ptr %l4, !tbaa !24
  %t111 = load i8, ptr %l1, !tbaa !22
  %t113 = icmp eq i8 %t111, 117
  br i1 %t113, label %bb33, label %bb34
bb33:
  %t115 = load i64, ptr %l2, !tbaa !24
  store i64 %t115, ptr %l76, !tbaa !24
  br label %bb35
bb34:
  store i64 0, ptr %l76, !tbaa !24
  br label %bb35
bb35:
  %t117 = load i64, ptr %l76, !tbaa !24
  store i64 %t117, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t118 = load i64, ptr %l5, !tbaa !24
  %t119 = load i64, ptr %l4, !tbaa !24
  %t122 = icmp sgt i64 %t118, %t119
  br i1 %t122, label %bb36, label %bb37
bb36:
  %t124 = load i64, ptr %l6, !tbaa !24
  %t126 = icmp sgt i64 %t124, 0
  br i1 %t126, label %bb38, label %bb39
bb37:
  store i64 0, ptr %l81, !tbaa !24
  br label %bb41
bb38:
  %t128 = load i64, ptr %l5, !tbaa !24
  %t129 = load i64, ptr %l4, !tbaa !24
  %t132 = sub i64 %t128, %t129
  %t133 = load i64, ptr %l6, !tbaa !24
  %t136 = add i64 %t132, %t133
  %t138 = sub i64 %t136, 1
  %t139 = load i64, ptr %l6, !tbaa !24
  %t142 = sdiv i64 %t138, %t139
  store i64 %t142, ptr %l84, !tbaa !24
  br label %bb40
bb39:
  store i64 0, ptr %l84, !tbaa !24
  br label %bb40
bb40:
  %t144 = load i64, ptr %l84, !tbaa !24
  store i64 %t144, ptr %l81, !tbaa !24
  br label %bb41
bb41:
  %t145 = load i64, ptr %l81, !tbaa !24
  store i64 %t145, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb42
bb42:
  %t146 = load i64, ptr %l8, !tbaa !24
  %t147 = load i64, ptr %l7, !tbaa !24
  %t150 = icmp slt i64 %t146, %t147
  %t152 = xor i1 %t150, true
  br i1 %t152, label %bb43, label %bb44
bb43:
  br label %bb48
bb44:
  br label %bb45
bb45:
  %t154 = load i64, ptr %l4, !tbaa !24
  %t155 = load i64, ptr %l8, !tbaa !24
  %t156 = load i64, ptr %l6, !tbaa !24
  %t159 = mul i64 %t155, %t156
  %t162 = add i64 %t154, %t159
  store i64 %t162, ptr %l9, !tbaa !24
  %t164 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eundo(ptr %v0, ptr %t164)
  br label %bb46
bb46:
  br label %bb47
bb47:
  %t166 = load i64, ptr %l8, !tbaa !24
  %t168 = add i64 %t166, 1
  store i64 %t168, ptr %l8, !tbaa !24
  br label %bb42
bb48:
  %t170 = load i8, ptr %l1, !tbaa !22
  %t172 = icmp eq i8 %t170, 112
  br i1 %t172, label %bb49, label %bb50
bb49:
  store i1 true, ptr %l107, !tbaa !21
  br label %bb51
bb50:
  %t174 = load i8, ptr %l1, !tbaa !22
  %t176 = icmp eq i8 %t174, 80
  store i1 %t176, ptr %l107, !tbaa !21
  br label %bb51
bb51:
  %t178 = load i1, ptr %l107, !tbaa !21
  br i1 %t178, label %bb52, label %bb53
bb52:
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t180 = load i8, ptr %l1, !tbaa !22
  %t182 = icmp eq i8 %t180, 112
  %t183 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2epaste(ptr %v0, ptr %t179, i1 %t182, i64 %t183)
  br label %bb54
bb53:
  br label %bb55
bb54:
  br label %bb55
bb55:
  store i64 0, ptr %l10, !tbaa !24
  %t187 = load i8, ptr %l1, !tbaa !22
  %t189 = icmp eq i8 %t187, 106
  br i1 %t189, label %bb56, label %bb57
bb56:
  %t191 = load i64, ptr %l2, !tbaa !24
  store i64 %t191, ptr %l116, !tbaa !24
  br label %bb58
bb57:
  store i64 0, ptr %l116, !tbaa !24
  br label %bb58
bb58:
  %t193 = load i64, ptr %l116, !tbaa !24
  store i64 %t193, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t194 = load i64, ptr %l11, !tbaa !24
  %t195 = load i64, ptr %l10, !tbaa !24
  %t198 = icmp sgt i64 %t194, %t195
  br i1 %t198, label %bb59, label %bb60
bb59:
  %t200 = load i64, ptr %l12, !tbaa !24
  %t202 = icmp sgt i64 %t200, 0
  br i1 %t202, label %bb61, label %bb62
bb60:
  store i64 0, ptr %l121, !tbaa !24
  br label %bb64
bb61:
  %t204 = load i64, ptr %l11, !tbaa !24
  %t205 = load i64, ptr %l10, !tbaa !24
  %t208 = sub i64 %t204, %t205
  %t209 = load i64, ptr %l12, !tbaa !24
  %t212 = add i64 %t208, %t209
  %t214 = sub i64 %t212, 1
  %t215 = load i64, ptr %l12, !tbaa !24
  %t218 = sdiv i64 %t214, %t215
  store i64 %t218, ptr %l124, !tbaa !24
  br label %bb63
bb62:
  store i64 0, ptr %l124, !tbaa !24
  br label %bb63
bb63:
  %t220 = load i64, ptr %l124, !tbaa !24
  store i64 %t220, ptr %l121, !tbaa !24
  br label %bb64
bb64:
  %t221 = load i64, ptr %l121, !tbaa !24
  store i64 %t221, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb65
bb65:
  %t222 = load i64, ptr %l14, !tbaa !24
  %t223 = load i64, ptr %l13, !tbaa !24
  %t226 = icmp slt i64 %t222, %t223
  %t228 = xor i1 %t226, true
  br i1 %t228, label %bb66, label %bb67
bb66:
  br label %bb71
bb67:
  br label %bb68
bb68:
  %t230 = load i64, ptr %l10, !tbaa !24
  %t231 = load i64, ptr %l14, !tbaa !24
  %t232 = load i64, ptr %l12, !tbaa !24
  %t235 = mul i64 %t231, %t232
  %t238 = add i64 %t230, %t235
  store i64 %t238, ptr %l15, !tbaa !24
  %t240 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2edown(ptr %v0, ptr %t240)
  br label %bb69
bb69:
  br label %bb70
bb70:
  %t242 = load i64, ptr %l14, !tbaa !24
  %t244 = add i64 %t242, 1
  store i64 %t244, ptr %l14, !tbaa !24
  br label %bb65
bb71:
  store i64 0, ptr %l16, !tbaa !24
  %t246 = load i8, ptr %l1, !tbaa !22
  %t248 = icmp eq i8 %t246, 107
  br i1 %t248, label %bb72, label %bb73
bb72:
  %t250 = load i64, ptr %l2, !tbaa !24
  store i64 %t250, ptr %l147, !tbaa !24
  br label %bb74
bb73:
  store i64 0, ptr %l147, !tbaa !24
  br label %bb74
bb74:
  %t252 = load i64, ptr %l147, !tbaa !24
  store i64 %t252, ptr %l17, !tbaa !24
  store i64 1, ptr %l18, !tbaa !24
  %t253 = load i64, ptr %l17, !tbaa !24
  %t254 = load i64, ptr %l16, !tbaa !24
  %t257 = icmp sgt i64 %t253, %t254
  br i1 %t257, label %bb75, label %bb76
bb75:
  %t259 = load i64, ptr %l18, !tbaa !24
  %t261 = icmp sgt i64 %t259, 0
  br i1 %t261, label %bb77, label %bb78
bb76:
  store i64 0, ptr %l152, !tbaa !24
  br label %bb80
bb77:
  %t263 = load i64, ptr %l17, !tbaa !24
  %t264 = load i64, ptr %l16, !tbaa !24
  %t267 = sub i64 %t263, %t264
  %t268 = load i64, ptr %l18, !tbaa !24
  %t271 = add i64 %t267, %t268
  %t273 = sub i64 %t271, 1
  %t274 = load i64, ptr %l18, !tbaa !24
  %t277 = sdiv i64 %t273, %t274
  store i64 %t277, ptr %l155, !tbaa !24
  br label %bb79
bb78:
  store i64 0, ptr %l155, !tbaa !24
  br label %bb79
bb79:
  %t279 = load i64, ptr %l155, !tbaa !24
  store i64 %t279, ptr %l152, !tbaa !24
  br label %bb80
bb80:
  %t280 = load i64, ptr %l152, !tbaa !24
  store i64 %t280, ptr %l19, !tbaa !24
  store i64 0, ptr %l20, !tbaa !24
  br label %bb81
bb81:
  %t281 = load i64, ptr %l20, !tbaa !24
  %t282 = load i64, ptr %l19, !tbaa !24
  %t285 = icmp slt i64 %t281, %t282
  %t287 = xor i1 %t285, true
  br i1 %t287, label %bb82, label %bb83
bb82:
  br label %bb87
bb83:
  br label %bb84
bb84:
  %t289 = load i64, ptr %l16, !tbaa !24
  %t290 = load i64, ptr %l20, !tbaa !24
  %t291 = load i64, ptr %l18, !tbaa !24
  %t294 = mul i64 %t290, %t291
  %t297 = add i64 %t289, %t294
  store i64 %t297, ptr %l21, !tbaa !24
  %t299 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eup(ptr %v0, ptr %t299)
  br label %bb85
bb85:
  br label %bb86
bb86:
  %t301 = load i64, ptr %l20, !tbaa !24
  %t303 = add i64 %t301, 1
  store i64 %t303, ptr %l20, !tbaa !24
  br label %bb81
bb87:
  %t305 = load i8, ptr %l1, !tbaa !22
  %t307 = icmp eq i8 %t305, 47
  br i1 %t307, label %bb88, label %bb89
bb88:
  store i1 true, ptr %l178, !tbaa !21
  br label %bb90
bb89:
  %t309 = load i8, ptr %l1, !tbaa !22
  %t311 = icmp eq i8 %t309, 63
  store i1 %t311, ptr %l178, !tbaa !21
  br label %bb90
bb90:
  %t313 = load i1, ptr %l178, !tbaa !21
  br i1 %t313, label %bb91, label %bb92
bb91:
  %t314 = load ptr, ptr %l0, !tbaa !29
  %t315 = load i8, ptr %l1, !tbaa !22
  %t317 = icmp eq i8 %t315, 47
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2ebeginSearch(ptr %v0, ptr %t314, i1 %t317, i1 true)
  br label %bb93
bb92:
  br label %bb94
bb93:
  br label %bb94
bb94:
  %t320 = load i8, ptr %l1, !tbaa !22
  %t322 = icmp eq i8 %t320, 110
  br i1 %t322, label %bb95, label %bb96
bb95:
  store i1 true, ptr %l186, !tbaa !21
  br label %bb97
bb96:
  %t324 = load i8, ptr %l1, !tbaa !22
  %t326 = icmp eq i8 %t324, 78
  store i1 %t326, ptr %l186, !tbaa !21
  br label %bb97
bb97:
  %t328 = load i1, ptr %l186, !tbaa !21
  br i1 %t328, label %bb98, label %bb99
bb98:
  %t329 = load ptr, ptr %l0, !tbaa !29
  %t330 = load i8, ptr %l1, !tbaa !22
  %t332 = icmp eq i8 %t330, 110
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eagain(ptr %v0, ptr %t329, i1 %t332)
  br label %bb100
bb99:
  br label %bb101
bb100:
  br label %bb101
bb101:
  %t335 = load i8, ptr %l1, !tbaa !22
  %t337 = icmp eq i8 %t335, 105
  br i1 %t337, label %bb102, label %bb103
bb102:
  store i1 true, ptr %l194, !tbaa !21
  br label %bb104
bb103:
  %t339 = load i8, ptr %l1, !tbaa !22
  %t341 = icmp eq i8 %t339, 97
  store i1 %t341, ptr %l194, !tbaa !21
  br label %bb104
bb104:
  %t343 = load i1, ptr %l194, !tbaa !21
  br i1 %t343, label %bb105, label %bb106
bb105:
  store i1 true, ptr %l197, !tbaa !21
  br label %bb107
bb106:
  %t344 = load i8, ptr %l1, !tbaa !22
  %t346 = icmp eq i8 %t344, 73
  store i1 %t346, ptr %l197, !tbaa !21
  br label %bb107
bb107:
  %t348 = load i1, ptr %l197, !tbaa !21
  br i1 %t348, label %bb108, label %bb109
bb108:
  store i1 true, ptr %l200, !tbaa !21
  br label %bb110
bb109:
  %t349 = load i8, ptr %l1, !tbaa !22
  %t351 = icmp eq i8 %t349, 65
  store i1 %t351, ptr %l200, !tbaa !21
  br label %bb110
bb110:
  %t353 = load i1, ptr %l200, !tbaa !21
  br i1 %t353, label %bb111, label %bb112
bb111:
  store i1 true, ptr %l203, !tbaa !21
  br label %bb113
bb112:
  %t354 = load i8, ptr %l1, !tbaa !22
  %t356 = icmp eq i8 %t354, 67
  store i1 %t356, ptr %l203, !tbaa !21
  br label %bb113
bb113:
  %t358 = load i1, ptr %l203, !tbaa !21
  br i1 %t358, label %bb114, label %bb115
bb114:
  store i1 true, ptr %l206, !tbaa !21
  br label %bb116
bb115:
  %t359 = load i8, ptr %l1, !tbaa !22
  %t361 = icmp eq i8 %t359, 111
  store i1 %t361, ptr %l206, !tbaa !21
  br label %bb116
bb116:
  %t363 = load i1, ptr %l206, !tbaa !21
  br i1 %t363, label %bb117, label %bb118
bb117:
  store i1 true, ptr %l209, !tbaa !21
  br label %bb119
bb118:
  %t364 = load i8, ptr %l1, !tbaa !22
  %t366 = icmp eq i8 %t364, 79
  store i1 %t366, ptr %l209, !tbaa !21
  br label %bb119
bb119:
  %t368 = load i1, ptr %l209, !tbaa !21
  br i1 %t368, label %bb120, label %bb121
bb120:
  %t369 = load ptr, ptr %l0, !tbaa !29
  %t370 = load i8, ptr %l1, !tbaa !22
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eenter(ptr %v0, ptr %t369, i8 %t370)
  br label %bb122
bb121:
  br label %bb123
bb122:
  br label %bb123
bb123:
  %t373 = load ptr, ptr %l0, !tbaa !29
  %t375 = getelementptr %"compiler/lineedit:Editor", ptr %t373, i32 0, i32 5
  %t376 = load i1, ptr %t375, !tbaa !21
  br i1 %t376, label %bb124, label %bb125
bb124:
  %t378 = load ptr, ptr %l0, !tbaa !29
  %t380 = getelementptr %"compiler/lineedit:Editor", ptr %t378, i32 0, i32 21
  %t381 = load i1, ptr %t380, !tbaa !21
  %t383 = xor i1 %t381, true
  store i1 %t383, ptr %l216, !tbaa !21
  br label %bb126
bb125:
  store i1 false, ptr %l216, !tbaa !21
  br label %bb126
bb126:
  %t385 = load i1, ptr %l216, !tbaa !21
  br i1 %t385, label %bb127, label %bb128
bb127:
  %t386 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eclamp(ptr %v0, ptr %t386)
  br label %bb129
bb128:
  br label %bb130
bb129:
  br label %bb130
bb130:
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2econtrol(ptr %v0, ptr %a0, i8 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i8
  %l2 = alloca { i64, ptr }
  %l7 = alloca ptr
  %l11 = alloca i64
  %l14 = alloca ptr
  %l18 = alloca i64
  %l21 = alloca ptr
  %l23 = alloca i64
  %l26 = alloca ptr
  %l28 = alloca i64
  %l37 = alloca ptr
  %l39 = alloca i64
  %l43 = alloca i64
  %l46 = alloca i1
  %l49 = alloca ptr
  %l53 = alloca i64
  %l58 = alloca ptr
  %l60 = alloca i64
  %l64 = alloca i64
  %l67 = alloca ptr
  %l71 = alloca i64
  %l76 = alloca ptr
  %l80 = alloca i64
  %s15 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i8 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lineedit:Editor", ptr %t1, i32 0, i32 3
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l2, !tbaa !27
  %t6 = load i8, ptr %l1, !tbaa !22
  %t8 = icmp eq i8 %t6, 1
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l7, !tbaa !29
  %t11 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/lineedit:Editor", ptr %t12, i32 0, i32 4
  %t15 = load i64, ptr %t14, !tbaa !24
  %t18 = call i64 @compiler_2flineedit_2elineStart(ptr %v0, { i64, ptr } %t11, i64 %t15)
  store i64 %t18, ptr %l11
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t19 = load i64, ptr %l11, !tbaa !24
  %t20 = load ptr, ptr %l7, !tbaa !29
  %t21 = getelementptr %"compiler/lineedit:Editor", ptr %t20, i32 0, i32 4
  store i64 %t19, ptr %t21, !tbaa !24
  br label %bb4
bb4:
  %t22 = load i8, ptr %l1, !tbaa !22
  %t24 = icmp eq i8 %t22, 5
  br i1 %t24, label %bb5, label %bb6
bb5:
  %t26 = load ptr, ptr %l0, !tbaa !29
  store ptr %t26, ptr %l14, !tbaa !29
  %t27 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/lineedit:Editor", ptr %t28, i32 0, i32 4
  %t31 = load i64, ptr %t30, !tbaa !24
  %t34 = call i64 @compiler_2flineedit_2elineEnd(ptr %v0, { i64, ptr } %t27, i64 %t31)
  store i64 %t34, ptr %l18
  br label %bb7
bb6:
  br label %bb8
bb7:
  %t35 = load i64, ptr %l18, !tbaa !24
  %t36 = load ptr, ptr %l14, !tbaa !29
  %t37 = getelementptr %"compiler/lineedit:Editor", ptr %t36, i32 0, i32 4
  store i64 %t35, ptr %t37, !tbaa !24
  br label %bb8
bb8:
  %t38 = load i8, ptr %l1, !tbaa !22
  %t40 = icmp eq i8 %t38, 2
  br i1 %t40, label %bb9, label %bb10
bb9:
  %t42 = load ptr, ptr %l0, !tbaa !29
  store ptr %t42, ptr %l21, !tbaa !29
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = call i64 @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eleft(ptr %v0, ptr %t43)
  store i64 %t45, ptr %l23
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t46 = load i64, ptr %l23, !tbaa !24
  %t47 = load ptr, ptr %l21, !tbaa !29
  %t48 = getelementptr %"compiler/lineedit:Editor", ptr %t47, i32 0, i32 4
  store i64 %t46, ptr %t48, !tbaa !24
  br label %bb12
bb12:
  %t49 = load i8, ptr %l1, !tbaa !22
  %t51 = icmp eq i8 %t49, 6
  br i1 %t51, label %bb13, label %bb14
bb13:
  %t53 = load ptr, ptr %l0, !tbaa !29
  store ptr %t53, ptr %l26, !tbaa !29
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = call i64 @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eright(ptr %v0, ptr %t54)
  store i64 %t56, ptr %l28
  br label %bb15
bb14:
  br label %bb16
bb15:
  %t57 = load i64, ptr %l28, !tbaa !24
  %t58 = load ptr, ptr %l26, !tbaa !29
  %t59 = getelementptr %"compiler/lineedit:Editor", ptr %t58, i32 0, i32 4
  store i64 %t57, ptr %t59, !tbaa !24
  br label %bb16
bb16:
  %t60 = load i8, ptr %l1, !tbaa !22
  %t62 = icmp eq i8 %t60, 16
  br i1 %t62, label %bb17, label %bb18
bb17:
  %t64 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eup(ptr %v0, ptr %t64)
  br label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb20
bb20:
  %t66 = load i8, ptr %l1, !tbaa !22
  %t68 = icmp eq i8 %t66, 14
  br i1 %t68, label %bb21, label %bb22
bb21:
  %t70 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2edown(ptr %v0, ptr %t70)
  br label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb24
bb24:
  %t72 = load i8, ptr %l1, !tbaa !22
  %t74 = icmp eq i8 %t72, 4
  br i1 %t74, label %bb25, label %bb26
bb25:
  %t76 = load ptr, ptr %l0, !tbaa !29
  store ptr %t76, ptr %l37, !tbaa !29
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/lineedit:Editor", ptr %t77, i32 0, i32 4
  %t80 = load i64, ptr %t79, !tbaa !24
  store i64 %t80, ptr %l39, !tbaa !24
  %t81 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/lineedit:Editor", ptr %t82, i32 0, i32 4
  %t85 = load i64, ptr %t84, !tbaa !24
  %t88 = call i64 @compiler_2flineedit_2enextAt(ptr %v0, { i64, ptr } %t81, i64 %t85)
  store i64 %t88, ptr %l43
  br label %bb27
bb26:
  br label %bb29
bb27:
  %t89 = load ptr, ptr %l37, !tbaa !29
  %t90 = load i64, ptr %l39, !tbaa !24
  %t91 = load i64, ptr %l43, !tbaa !24
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eremove(ptr %v0, ptr %t89, i64 %t90, i64 %t91, i1 false)
  br label %bb28
bb28:
  br label %bb29
bb29:
  %t92 = load i8, ptr %l1, !tbaa !22
  %t94 = icmp eq i8 %t92, 8
  br i1 %t94, label %bb30, label %bb31
bb30:
  store i1 true, ptr %l46, !tbaa !21
  br label %bb32
bb31:
  %t96 = load i8, ptr %l1, !tbaa !22
  %t98 = icmp eq i8 %t96, 127
  store i1 %t98, ptr %l46, !tbaa !21
  br label %bb32
bb32:
  %t100 = load i1, ptr %l46, !tbaa !21
  br i1 %t100, label %bb33, label %bb34
bb33:
  %t101 = load ptr, ptr %l0, !tbaa !29
  store ptr %t101, ptr %l49, !tbaa !29
  %t102 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr %"compiler/lineedit:Editor", ptr %t103, i32 0, i32 4
  %t106 = load i64, ptr %t105, !tbaa !24
  %t109 = call i64 @compiler_2flineedit_2eprevAt(ptr %v0, { i64, ptr } %t102, i64 %t106)
  store i64 %t109, ptr %l53
  br label %bb35
bb34:
  br label %bb37
bb35:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/lineedit:Editor", ptr %t110, i32 0, i32 4
  %t113 = load i64, ptr %t112, !tbaa !24
  %t114 = load ptr, ptr %l49, !tbaa !29
  %t115 = load i64, ptr %l53, !tbaa !24
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eremove(ptr %v0, ptr %t114, i64 %t115, i64 %t113, i1 false)
  br label %bb36
bb36:
  br label %bb37
bb37:
  %t117 = load i8, ptr %l1, !tbaa !22
  %t119 = icmp eq i8 %t117, 11
  br i1 %t119, label %bb38, label %bb39
bb38:
  %t121 = load ptr, ptr %l0, !tbaa !29
  store ptr %t121, ptr %l58, !tbaa !29
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t124 = getelementptr %"compiler/lineedit:Editor", ptr %t122, i32 0, i32 4
  %t125 = load i64, ptr %t124, !tbaa !24
  store i64 %t125, ptr %l60, !tbaa !24
  %t126 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/lineedit:Editor", ptr %t127, i32 0, i32 4
  %t130 = load i64, ptr %t129, !tbaa !24
  %t133 = call i64 @compiler_2flineedit_2elineEnd(ptr %v0, { i64, ptr } %t126, i64 %t130)
  store i64 %t133, ptr %l64
  br label %bb40
bb39:
  br label %bb42
bb40:
  %t134 = load ptr, ptr %l58, !tbaa !29
  %t135 = load i64, ptr %l60, !tbaa !24
  %t136 = load i64, ptr %l64, !tbaa !24
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eremove(ptr %v0, ptr %t134, i64 %t135, i64 %t136, i1 true)
  br label %bb41
bb41:
  br label %bb42
bb42:
  %t137 = load i8, ptr %l1, !tbaa !22
  %t139 = icmp eq i8 %t137, 21
  br i1 %t139, label %bb43, label %bb44
bb43:
  %t141 = load ptr, ptr %l0, !tbaa !29
  store ptr %t141, ptr %l67, !tbaa !29
  %t142 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t145 = getelementptr %"compiler/lineedit:Editor", ptr %t143, i32 0, i32 4
  %t146 = load i64, ptr %t145, !tbaa !24
  %t149 = call i64 @compiler_2flineedit_2elineStart(ptr %v0, { i64, ptr } %t142, i64 %t146)
  store i64 %t149, ptr %l71
  br label %bb45
bb44:
  br label %bb47
bb45:
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t152 = getelementptr %"compiler/lineedit:Editor", ptr %t150, i32 0, i32 4
  %t153 = load i64, ptr %t152, !tbaa !24
  %t154 = load ptr, ptr %l67, !tbaa !29
  %t155 = load i64, ptr %l71, !tbaa !24
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eremove(ptr %v0, ptr %t154, i64 %t155, i64 %t153, i1 true)
  br label %bb46
bb46:
  br label %bb47
bb47:
  %t157 = load i8, ptr %l1, !tbaa !22
  %t159 = icmp eq i8 %t157, 23
  br i1 %t159, label %bb48, label %bb49
bb48:
  %t161 = load ptr, ptr %l0, !tbaa !29
  store ptr %t161, ptr %l76, !tbaa !29
  %t162 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t165 = getelementptr %"compiler/lineedit:Editor", ptr %t163, i32 0, i32 4
  %t166 = load i64, ptr %t165, !tbaa !24
  %t169 = call i64 @compiler_2flineedit_2ewordBack(ptr %v0, { i64, ptr } %t162, i64 %t166)
  store i64 %t169, ptr %l80
  br label %bb50
bb49:
  br label %bb52
bb50:
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t172 = getelementptr %"compiler/lineedit:Editor", ptr %t170, i32 0, i32 4
  %t173 = load i64, ptr %t172, !tbaa !24
  %t174 = load ptr, ptr %l76, !tbaa !29
  %t175 = load i64, ptr %l80, !tbaa !24
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eremove(ptr %v0, ptr %t174, i64 %t175, i64 %t173, i1 true)
  br label %bb51
bb51:
  br label %bb52
bb52:
  %t177 = load i8, ptr %l1, !tbaa !22
  %t179 = icmp eq i8 %t177, 25
  br i1 %t179, label %bb53, label %bb54
bb53:
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t184 = getelementptr %"compiler/lineedit:Editor", ptr %t182, i32 0, i32 16
  %t185 = load { i64, ptr }, ptr %t184, !tbaa !27
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2einsert(ptr %v0, ptr %v0, ptr %t181, { i64, ptr } %t185)
  br label %bb55
bb54:
  br label %bb56
bb55:
  br label %bb56
bb56:
  %t188 = load i8, ptr %l1, !tbaa !22
  %t190 = icmp eq i8 %t188, 31
  br i1 %t190, label %bb57, label %bb58
bb57:
  %t192 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eundo(ptr %v0, ptr %t192)
  br label %bb59
bb58:
  br label %bb60
bb59:
  br label %bb60
bb60:
  %t194 = load i8, ptr %l1, !tbaa !22
  %t196 = icmp eq i8 %t194, 18
  br i1 %t196, label %bb61, label %bb62
bb61:
  %t198 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2ebeginSearch(ptr %v0, ptr %t198, i1 true, i1 false)
  br label %bb63
bb62:
  br label %bb64
bb63:
  br label %bb64
bb64:
  %t200 = load i8, ptr %l1, !tbaa !22
  %t202 = icmp eq i8 %t200, 12
  br i1 %t202, label %bb65, label %bb66
bb65:
  store %olang.scope zeroinitializer, ptr %s15
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t206 = getelementptr %"compiler/lineedit:Editor", ptr %t204, i32 0, i32 6
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s15, ptr %t206, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d46, i32 0, i32 1) })
  br label %bb67
bb66:
  br label %bb68
bb67:
  %t208 = load ptr, ptr %l0, !tbaa !29
  %t210 = getelementptr %"compiler/lineedit:Editor", ptr %t208, i32 0, i32 14
  store i64 0, ptr %t210, !tbaa !24
  call void @__olang_scope_close(ptr %s15)
  br label %bb68
bb68:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2edone(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call { i64, ptr } @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eAccept(ptr %v0, ptr %v1, ptr %t1)
  store { i64, ptr } %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t4, ptr %l1, !tbaa !27
  %t5 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eflush(ptr %v0, ptr %t5)
  br label %bb2
bb2:
  %t7 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t7, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2edown(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l8 = alloca i64
  %l14 = alloca ptr
  %l15 = alloca { i64, ptr }
  %l17 = alloca i64
  %l21 = alloca i64
  %l22 = alloca { i64, ptr }
  %l26 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lineedit:Editor", ptr %t1, i32 0, i32 3
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l1, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/lineedit:Editor", ptr %t7, i32 0, i32 4
  %t10 = load i64, ptr %t9, !tbaa !24
  %t13 = call i64 @compiler_2flineedit_2elineEnd(ptr %v0, { i64, ptr } %t6, i64 %t10)
  store i64 %t13, ptr %l8
  br label %bb1
bb1:
  %t14 = load i64, ptr %l8, !tbaa !24
  store i64 %t14, ptr %l2, !tbaa !24
  %t15 = load i64, ptr %l2, !tbaa !24
  %t16 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t16, 0
  %t21 = icmp eq i64 %t15, %t18
  br i1 %t21, label %bb2, label %bb3
bb2:
  %t23 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2enewer(ptr %v0, ptr %t23)
  br label %bb4
bb3:
  br label %bb5
bb4:
  br label %ret
bb5:
  %t25 = load ptr, ptr %l0, !tbaa !29
  store ptr %t25, ptr %l14, !tbaa !29
  %t26 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t26, ptr %l15, !tbaa !27
  %t27 = load i64, ptr %l2, !tbaa !24
  %t29 = add i64 %t27, 1
  store i64 %t29, ptr %l17, !tbaa !24
  %t30 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t31 = load i64, ptr %l2, !tbaa !24
  %t33 = add i64 %t31, 1
  %t36 = call i64 @compiler_2flineedit_2elineEnd(ptr %v0, { i64, ptr } %t30, i64 %t33)
  store i64 %t36, ptr %l21
  br label %bb6
bb6:
  %t37 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t37, ptr %l22, !tbaa !27
  %t38 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/lineedit:Editor", ptr %t39, i32 0, i32 4
  %t42 = load i64, ptr %t41, !tbaa !24
  %t45 = call i64 @compiler_2flineedit_2elineStart(ptr %v0, { i64, ptr } %t38, i64 %t42)
  store i64 %t45, ptr %l26
  br label %bb7
bb7:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/lineedit:Editor", ptr %t46, i32 0, i32 4
  %t49 = load i64, ptr %t48, !tbaa !24
  store i64 %t49, ptr %l28, !tbaa !24
  %t50 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t51 = extractvalue { i64, ptr } %t50, 0
  store i64 %t51, ptr %l29, !tbaa !24
  %t52 = load i64, ptr %l26, !tbaa !24
  %t53 = icmp sge i64 %t52, 0
  br i1 %t53, label %bb8, label %bb9
bb8:
  %t55 = load i64, ptr %l26, !tbaa !24
  %t56 = load i64, ptr %l28, !tbaa !24
  %t57 = icmp sle i64 %t55, %t56
  br i1 %t57, label %bb10, label %bb11
bb9:
  call void @__olang_check_failed(ptr @olang_loc_22a9a5775aa8f43a_f3d22121f345f80e)
  unreachable
bb10:
  %t59 = load i64, ptr %l28, !tbaa !24
  %t60 = load i64, ptr %l29, !tbaa !24
  %t61 = icmp sle i64 %t59, %t60
  br i1 %t61, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_22a9a5775aa8f43a_f3d22121f345f80e)
  unreachable
bb12:
  %t63 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !27
  %t65 = load i64, ptr %l26, !tbaa !24
  %t66 = load i64, ptr %l28, !tbaa !24
  %t67 = getelementptr i8, ptr %t64, i64 %t65
  %t68 = sub i64 %t66, %t65
  %t69 = insertvalue { i64, ptr } undef, i64 %t68, 0
  %t70 = insertvalue { i64, ptr } %t69, ptr %t67, 1
  %t72 = call i64 @compiler_2flineedit_2ecells(ptr %v0, { i64, ptr } %t70)
  store i64 %t72, ptr %l34
  br label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_22a9a5775aa8f43a_f3d22121f345f80e)
  unreachable
bb14:
  %t73 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t74 = load i64, ptr %l17, !tbaa !24
  %t75 = load i64, ptr %l21, !tbaa !24
  %t76 = load i64, ptr %l34, !tbaa !24
  %t77 = call i64 @compiler_2flineedit_2eoffsetOf(ptr %v0, { i64, ptr } %t73, i64 %t74, i64 %t75, i64 %t76)
  store i64 %t77, ptr %l35
  br label %bb15
bb15:
  %t78 = load i64, ptr %l35, !tbaa !24
  %t79 = load ptr, ptr %l14, !tbaa !29
  %t80 = getelementptr %"compiler/lineedit:Editor", ptr %t79, i32 0, i32 4
  store i64 %t78, ptr %t80, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2edraw(ptr %v0, ptr %a0) #0 {
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
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l19 = alloca { i64, ptr }
  %l22 = alloca i64
  %l36 = alloca { i64, ptr }
  %l39 = alloca { i64, ptr }
  %l42 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l51 = alloca i64
  %l59 = alloca i64
  %l62 = alloca i64
  %l82 = alloca { i64, ptr }
  %l99 = alloca { i64, ptr }
  %l105 = alloca i64
  %l106 = alloca { i64, ptr }
  %l109 = alloca i64
  %l115 = alloca i1
  %l119 = alloca { i64, ptr }
  %l126 = alloca i64
  %l127 = alloca { i64, ptr }
  %l129 = alloca { i64, ptr }
  %l133 = alloca i64
  %l134 = alloca i64
  %l139 = alloca i64
  %l152 = alloca { i64, ptr }
  %l170 = alloca { i64, ptr }
  %l177 = alloca i64
  %l190 = alloca i1
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s16 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lineedit:Editor", ptr %t1, i32 0, i32 14
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp sgt i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  store %olang.scope zeroinitializer, ptr %s1
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/lineedit:Editor", ptr %t8, i32 0, i32 6
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/lineedit:Editor", ptr %t11, i32 0, i32 14
  %t14 = load i64, ptr %t13, !tbaa !24
  %t15 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d47, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d47, i32 0, i32 1) }, 0
  %t18 = call i64 @__olang_fmt_i64(ptr null, i64 %t14)
  %t19 = add i64 %t16, %t18
  %t20 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d48, i32 0, i32 1) }, 1
  %t21 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d48, i32 0, i32 1) }, 0
  %t22 = add i64 %t19, %t21
  %t23 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t22)
  call void @olang_textcopy(ptr %t23, ptr %t15, i64 %t16)
  %t24 = getelementptr i8, ptr %t23, i64 %t16
  %t25 = call i64 @__olang_fmt_i64(ptr %t24, i64 %t14)
  %t26 = getelementptr i8, ptr %t24, i64 %t18
  call void @olang_textcopy(ptr %t26, ptr %t20, i64 %t21)
  %t27 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t23, 1
  %t30 = extractvalue { i64, ptr } %t28, 0
  %t31 = extractvalue { i64, ptr } %t28, 1
  %t32 = mul i64 %t30, 1
  %t33 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t32)
  call void @llvm.memcpy.p0.p0.i64(ptr %t33, ptr %t31, i64 %t32, i1 false)
  %t34 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t35 = insertvalue { i64, ptr } %t34, ptr %t33, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s1, ptr %t10, { i64, ptr } %t35)
  br label %bb3
bb2:
  br label %bb4
bb3:
  call void @__olang_scope_close(ptr %s1)
  br label %bb4
bb4:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/lineedit:Editor", ptr %t38, i32 0, i32 6
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s0, ptr %t40, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d49, i32 0, i32 1) })
  br label %bb5
bb5:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/lineedit:Editor", ptr %t42, i32 0, i32 3
  %t45 = load { i64, ptr }, ptr %t44, !tbaa !27
  %t47 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %v0, ptr %s0, ptr %s0, { i64, ptr } %t45, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d50, i32 0, i32 1) })
  store { i64, ptr } %t47, ptr %l36
  br label %bb6
bb6:
  %t48 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t48, ptr %l1, !tbaa !27
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/lineedit:Editor", ptr %t49, i32 0, i32 1
  %t52 = load i1, ptr %t51, !tbaa !21
  br i1 %t52, label %bb7, label %bb8
bb7:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/lineedit:Editor", ptr %t54, i32 0, i32 3
  %t57 = load { i64, ptr }, ptr %t56, !tbaa !27
  %t59 = call { i64, ptr } @compiler_2fpaint_2eSource(ptr %v0, ptr %s0, { i64, ptr } %t57)
  store { i64, ptr } %t59, ptr %l42
  br label %bb9
bb8:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/lineedit:Editor", ptr %t60, i32 0, i32 3
  %t63 = load { i64, ptr }, ptr %t62, !tbaa !27
  %t65 = extractvalue { i64, ptr } %t63, 1
  %t66 = extractvalue { i64, ptr } %t63, 0
  %t67 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t66)
  call void @olang_textcopy(ptr %t67, ptr %t65, i64 %t66)
  %t68 = insertvalue { i64, ptr } undef, i64 %t66, 0
  %t69 = insertvalue { i64, ptr } %t68, ptr %t67, 1
  store { i64, ptr } %t69, ptr %l39, !tbaa !27
  br label %bb10
bb9:
  %t71 = load { i64, ptr }, ptr %l42, !tbaa !27
  store { i64, ptr } %t71, ptr %l39, !tbaa !27
  br label %bb10
bb10:
  %t72 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t73 = extractvalue { i64, ptr } %t72, 0
  %t74 = extractvalue { i64, ptr } %t72, 1
  %t75 = mul i64 %t73, 1
  %t76 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t75)
  call void @llvm.memcpy.p0.p0.i64(ptr %t76, ptr %t74, i64 %t75, i1 false)
  %t77 = insertvalue { i64, ptr } undef, i64 %t73, 0
  %t78 = insertvalue { i64, ptr } %t77, ptr %t76, 1
  %t80 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t78, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d51, i32 0, i32 1) })
  store { i64, ptr } %t80, ptr %l47
  br label %bb11
bb11:
  %t81 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t81, ptr %l2, !tbaa !27
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/lineedit:Editor", ptr %t82, i32 0, i32 2
  %t85 = load i64, ptr %t84, !tbaa !24
  %t87 = icmp sgt i64 %t85, 0
  br i1 %t87, label %bb12, label %bb13
bb12:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"compiler/lineedit:Editor", ptr %t89, i32 0, i32 2
  %t92 = load i64, ptr %t91, !tbaa !24
  store i64 %t92, ptr %l51, !tbaa !24
  br label %bb14
bb13:
  store i64 9223372036854775807, ptr %l51, !tbaa !24
  br label %bb14
bb14:
  %t94 = load i64, ptr %l51, !tbaa !24
  store i64 %t94, ptr %l3, !tbaa !24
  store i64 0, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  %t95 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t97 = extractvalue { i64, ptr } %t95, 0
  store i64 %t97, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t99 = load i64, ptr %l10, !tbaa !24
  %t100 = load i64, ptr %l9, !tbaa !24
  %t103 = icmp sgt i64 %t99, %t100
  br i1 %t103, label %bb15, label %bb16
bb15:
  %t105 = load i64, ptr %l11, !tbaa !24
  %t107 = icmp sgt i64 %t105, 0
  br i1 %t107, label %bb17, label %bb18
bb16:
  store i64 0, ptr %l59, !tbaa !24
  br label %bb20
bb17:
  %t109 = load i64, ptr %l10, !tbaa !24
  %t110 = load i64, ptr %l9, !tbaa !24
  %t113 = sub i64 %t109, %t110
  %t114 = load i64, ptr %l11, !tbaa !24
  %t117 = add i64 %t113, %t114
  %t119 = sub i64 %t117, 1
  %t120 = load i64, ptr %l11, !tbaa !24
  %t123 = sdiv i64 %t119, %t120
  store i64 %t123, ptr %l62, !tbaa !24
  br label %bb19
bb18:
  store i64 0, ptr %l62, !tbaa !24
  br label %bb19
bb19:
  %t125 = load i64, ptr %l62, !tbaa !24
  store i64 %t125, ptr %l59, !tbaa !24
  br label %bb20
bb20:
  %t126 = load i64, ptr %l59, !tbaa !24
  store i64 %t126, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb21
bb21:
  store %olang.scope zeroinitializer, ptr %s5
  %t127 = load i64, ptr %l13, !tbaa !24
  %t128 = load i64, ptr %l12, !tbaa !24
  %t131 = icmp slt i64 %t127, %t128
  %t133 = xor i1 %t131, true
  br i1 %t133, label %bb22, label %bb23
bb22:
  call void @__olang_scope_close(ptr %s5)
  br label %bb51
bb23:
  br label %bb24
bb24:
  %t135 = load i64, ptr %l9, !tbaa !24
  %t136 = load i64, ptr %l13, !tbaa !24
  %t137 = load i64, ptr %l11, !tbaa !24
  %t140 = mul i64 %t136, %t137
  %t143 = add i64 %t135, %t140
  store i64 %t143, ptr %l14, !tbaa !24
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t146 = load i64, ptr %l14, !tbaa !24
  %t149 = call { i64, ptr } @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2epromptOf(ptr %v0, ptr %v0, ptr %t145, i64 %t146)
  store { i64, ptr } %t149, ptr %l82
  br label %bb25
bb25:
  %t150 = load { i64, ptr }, ptr %l82, !tbaa !27
  store { i64, ptr } %t150, ptr %l15, !tbaa !27
  %t151 = load i64, ptr %l14, !tbaa !24
  %t153 = icmp sgt i64 %t151, 0
  br i1 %t153, label %bb26, label %bb27
bb26:
  %t155 = load i64, ptr %l4, !tbaa !24
  %t156 = load i64, ptr %l8, !tbaa !24
  %t158 = sub i64 %t156, 1
  %t159 = load i64, ptr %l3, !tbaa !24
  %t162 = sdiv i64 %t158, %t159
  %t164 = add i64 %t162, 1
  %t167 = add i64 %t155, %t164
  store i64 %t167, ptr %l4, !tbaa !24
  br label %bb28
bb27:
  br label %bb28
bb28:
  %t169 = load i64, ptr %l14, !tbaa !24
  %t171 = icmp sgt i64 %t169, 0
  br i1 %t171, label %bb29, label %bb30
bb29:
  store %olang.scope zeroinitializer, ptr %s7
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t175 = getelementptr %"compiler/lineedit:Editor", ptr %t173, i32 0, i32 6
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s7, ptr %t175, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d52, i32 0, i32 1) })
  br label %bb31
bb30:
  br label %bb32
bb31:
  call void @__olang_scope_close(ptr %s7)
  br label %bb32
bb32:
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t179 = getelementptr %"compiler/lineedit:Editor", ptr %t177, i32 0, i32 6
  %t180 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t181 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t181, ptr %l99, !tbaa !27
  %t182 = load i64, ptr %l14, !tbaa !24
  %t184 = getelementptr { i64, ptr }, ptr %l99, i32 0, i32 1
  %t185 = load ptr, ptr %t184, !tbaa !27
  %t186 = getelementptr { i64, ptr }, ptr %t185, i64 %t182
  %t187 = load { i64, ptr }, ptr %t186, !tbaa !37
  %t189 = extractvalue { i64, ptr } %t180, 1
  %t190 = extractvalue { i64, ptr } %t180, 0
  %t192 = extractvalue { i64, ptr } %t187, 1
  %t193 = extractvalue { i64, ptr } %t187, 0
  %t194 = add i64 %t190, %t193
  %t195 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t194)
  call void @olang_textcopy(ptr %t195, ptr %t189, i64 %t190)
  %t196 = getelementptr i8, ptr %t195, i64 %t190
  call void @olang_textcopy(ptr %t196, ptr %t192, i64 %t193)
  %t197 = insertvalue { i64, ptr } undef, i64 %t194, 0
  %t198 = insertvalue { i64, ptr } %t197, ptr %t195, 1
  %t200 = extractvalue { i64, ptr } %t198, 0
  %t201 = extractvalue { i64, ptr } %t198, 1
  %t202 = mul i64 %t200, 1
  %t203 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t202)
  call void @llvm.memcpy.p0.p0.i64(ptr %t203, ptr %t201, i64 %t202, i1 false)
  %t204 = insertvalue { i64, ptr } undef, i64 %t200, 0
  %t205 = insertvalue { i64, ptr } %t204, ptr %t203, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s5, ptr %t179, { i64, ptr } %t205)
  br label %bb33
bb33:
  %t208 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t210 = call i64 @compiler_2flineedit_2ecells(ptr %v0, { i64, ptr } %t208)
  store i64 %t210, ptr %l105
  br label %bb34
bb34:
  %t211 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t211, ptr %l106, !tbaa !27
  %t212 = load i64, ptr %l14, !tbaa !24
  %t214 = getelementptr { i64, ptr }, ptr %l106, i32 0, i32 1
  %t215 = load ptr, ptr %t214, !tbaa !27
  %t216 = getelementptr { i64, ptr }, ptr %t215, i64 %t212
  %t217 = load { i64, ptr }, ptr %t216, !tbaa !37
  %t219 = call i64 @compiler_2flineedit_2ecells(ptr %s0, { i64, ptr } %t217)
  store i64 %t219, ptr %l109
  br label %bb35
bb35:
  %t220 = load i64, ptr %l105, !tbaa !24
  %t221 = load i64, ptr %l109, !tbaa !24
  %t222 = add i64 %t220, %t221
  store i64 %t222, ptr %l8, !tbaa !24
  %t224 = load ptr, ptr %l0, !tbaa !29
  %t226 = getelementptr %"compiler/lineedit:Editor", ptr %t224, i32 0, i32 4
  %t227 = load i64, ptr %t226, !tbaa !24
  %t228 = load i64, ptr %l5, !tbaa !24
  %t231 = icmp sge i64 %t227, %t228
  br i1 %t231, label %bb36, label %bb37
bb36:
  %t233 = load ptr, ptr %l0, !tbaa !29
  %t235 = getelementptr %"compiler/lineedit:Editor", ptr %t233, i32 0, i32 4
  %t236 = load i64, ptr %t235, !tbaa !24
  %t237 = load i64, ptr %l5, !tbaa !24
  %t238 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t238, ptr %l119, !tbaa !27
  %t239 = load i64, ptr %l14, !tbaa !24
  %t241 = getelementptr { i64, ptr }, ptr %l119, i32 0, i32 1
  %t242 = load ptr, ptr %t241, !tbaa !27
  %t243 = getelementptr { i64, ptr }, ptr %t242, i64 %t239
  %t244 = load { i64, ptr }, ptr %t243, !tbaa !37
  %t246 = extractvalue { i64, ptr } %t244, 0
  %t249 = add i64 %t237, %t246
  %t252 = icmp sle i64 %t236, %t249
  store i1 %t252, ptr %l115, !tbaa !21
  br label %bb38
bb37:
  store i1 false, ptr %l115, !tbaa !21
  br label %bb38
bb38:
  %t254 = load i1, ptr %l115, !tbaa !21
  br i1 %t254, label %bb39, label %bb40
bb39:
  %t255 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t257 = call i64 @compiler_2flineedit_2ecells(ptr %v0, { i64, ptr } %t255)
  store i64 %t257, ptr %l126
  br label %bb41
bb40:
  br label %bb49
bb41:
  %t258 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t258, ptr %l127, !tbaa !27
  %t259 = load i64, ptr %l14, !tbaa !24
  %t261 = getelementptr { i64, ptr }, ptr %l127, i32 0, i32 1
  %t262 = load ptr, ptr %t261, !tbaa !27
  %t263 = getelementptr { i64, ptr }, ptr %t262, i64 %t259
  %t264 = load { i64, ptr }, ptr %t263, !tbaa !37
  store { i64, ptr } %t264, ptr %l129, !tbaa !27
  %t265 = load ptr, ptr %l0, !tbaa !29
  %t267 = getelementptr %"compiler/lineedit:Editor", ptr %t265, i32 0, i32 4
  %t268 = load i64, ptr %t267, !tbaa !24
  %t269 = load i64, ptr %l5, !tbaa !24
  %t272 = sub i64 %t268, %t269
  store i64 %t272, ptr %l133, !tbaa !24
  %t273 = load { i64, ptr }, ptr %l129, !tbaa !27
  %t274 = extractvalue { i64, ptr } %t273, 0
  store i64 %t274, ptr %l134, !tbaa !24
  %t275 = icmp sge i64 0, 0
  br i1 %t275, label %bb42, label %bb43
bb42:
  %t277 = load i64, ptr %l133, !tbaa !24
  %t278 = icmp sle i64 0, %t277
  br i1 %t278, label %bb44, label %bb45
bb43:
  call void @__olang_check_failed(ptr @olang_loc_efd16dbbcc037fb0_1aeb292baa76ec64)
  unreachable
bb44:
  %t280 = load i64, ptr %l133, !tbaa !24
  %t281 = load i64, ptr %l134, !tbaa !24
  %t282 = icmp sle i64 %t280, %t281
  br i1 %t282, label %bb46, label %bb47
bb45:
  call void @__olang_check_failed(ptr @olang_loc_efd16dbbcc037fb0_1aeb292baa76ec64)
  unreachable
bb46:
  %t284 = getelementptr { i64, ptr }, ptr %l129, i32 0, i32 1
  %t285 = load ptr, ptr %t284, !tbaa !27
  %t286 = load i64, ptr %l133, !tbaa !24
  %t287 = getelementptr i8, ptr %t285, i64 0
  %t288 = sub i64 %t286, 0
  %t289 = insertvalue { i64, ptr } undef, i64 %t288, 0
  %t290 = insertvalue { i64, ptr } %t289, ptr %t287, 1
  %t292 = call i64 @compiler_2flineedit_2ecells(ptr %s0, { i64, ptr } %t290)
  store i64 %t292, ptr %l139
  br label %bb48
bb47:
  call void @__olang_check_failed(ptr @olang_loc_efd16dbbcc037fb0_1aeb292baa76ec64)
  unreachable
bb48:
  %t293 = load i64, ptr %l126, !tbaa !24
  %t294 = load i64, ptr %l139, !tbaa !24
  %t295 = add i64 %t293, %t294
  store i64 %t295, ptr %l16, !tbaa !24
  %t297 = load i64, ptr %l4, !tbaa !24
  %t298 = load i64, ptr %l16, !tbaa !24
  %t299 = load i64, ptr %l3, !tbaa !24
  %t302 = sdiv i64 %t298, %t299
  %t305 = add i64 %t297, %t302
  %t307 = load i64, ptr %l16, !tbaa !24
  %t308 = load i64, ptr %l3, !tbaa !24
  %t311 = srem i64 %t307, %t308
  store i64 %t305, ptr %l6, !tbaa !24
  store i64 %t311, ptr %l7, !tbaa !24
  br label %bb49
bb49:
  %t317 = load i64, ptr %l5, !tbaa !24
  %t318 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t318, ptr %l152, !tbaa !27
  %t319 = load i64, ptr %l14, !tbaa !24
  %t321 = getelementptr { i64, ptr }, ptr %l152, i32 0, i32 1
  %t322 = load ptr, ptr %t321, !tbaa !27
  %t323 = getelementptr { i64, ptr }, ptr %t322, i64 %t319
  %t324 = load { i64, ptr }, ptr %t323, !tbaa !37
  %t326 = extractvalue { i64, ptr } %t324, 0
  %t328 = add i64 %t326, 1
  %t331 = add i64 %t317, %t328
  store i64 %t331, ptr %l5, !tbaa !24
  call void @__olang_scope_close(ptr %s5)
  br label %bb50
bb50:
  %t333 = load i64, ptr %l13, !tbaa !24
  %t335 = add i64 %t333, 1
  store i64 %t335, ptr %l13, !tbaa !24
  br label %bb21
bb51:
  %t337 = load ptr, ptr %l0, !tbaa !29
  %t339 = getelementptr %"compiler/lineedit:Editor", ptr %t337, i32 0, i32 21
  %t340 = load i1, ptr %t339, !tbaa !21
  br i1 %t340, label %bb52, label %bb53
bb52:
  store %olang.scope zeroinitializer, ptr %s11
  %t342 = load i64, ptr %l4, !tbaa !24
  %t343 = load i64, ptr %l8, !tbaa !24
  %t345 = sub i64 %t343, 1
  %t346 = load i64, ptr %l3, !tbaa !24
  %t349 = sdiv i64 %t345, %t346
  %t351 = add i64 %t349, 1
  %t354 = add i64 %t342, %t351
  store i64 %t354, ptr %l4, !tbaa !24
  %t356 = load ptr, ptr %l0, !tbaa !29
  %t358 = call { i64, ptr } @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2estatus(ptr %v0, ptr %s11, ptr %t356)
  store { i64, ptr } %t358, ptr %l170
  br label %bb54
bb53:
  br label %bb57
bb54:
  %t359 = load { i64, ptr }, ptr %l170, !tbaa !27
  store { i64, ptr } %t359, ptr %l19, !tbaa !27
  %t360 = load ptr, ptr %l0, !tbaa !29
  %t362 = getelementptr %"compiler/lineedit:Editor", ptr %t360, i32 0, i32 6
  %t363 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t364 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d53, i32 0, i32 1) }, 1
  %t365 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d53, i32 0, i32 1) }, 0
  %t367 = extractvalue { i64, ptr } %t363, 1
  %t368 = extractvalue { i64, ptr } %t363, 0
  %t369 = add i64 %t365, %t368
  %t370 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t369)
  call void @olang_textcopy(ptr %t370, ptr %t364, i64 %t365)
  %t371 = getelementptr i8, ptr %t370, i64 %t365
  call void @olang_textcopy(ptr %t371, ptr %t367, i64 %t368)
  %t372 = insertvalue { i64, ptr } undef, i64 %t369, 0
  %t373 = insertvalue { i64, ptr } %t372, ptr %t370, 1
  %t375 = extractvalue { i64, ptr } %t373, 0
  %t376 = extractvalue { i64, ptr } %t373, 1
  %t377 = mul i64 %t375, 1
  %t378 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t377)
  call void @llvm.memcpy.p0.p0.i64(ptr %t378, ptr %t376, i64 %t377, i1 false)
  %t379 = insertvalue { i64, ptr } undef, i64 %t375, 0
  %t380 = insertvalue { i64, ptr } %t379, ptr %t378, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s11, ptr %t362, { i64, ptr } %t380)
  br label %bb55
bb55:
  %t383 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t385 = call i64 @compiler_2flineedit_2ecells(ptr %s11, { i64, ptr } %t383)
  store i64 %t385, ptr %l177
  br label %bb56
bb56:
  %t386 = load i64, ptr %l177, !tbaa !24
  store i64 %t386, ptr %l8, !tbaa !24
  %t387 = load i64, ptr %l4, !tbaa !24
  %t388 = load i64, ptr %l8, !tbaa !24
  %t389 = load i64, ptr %l3, !tbaa !24
  %t392 = sdiv i64 %t388, %t389
  %t395 = add i64 %t387, %t392
  %t397 = load i64, ptr %l8, !tbaa !24
  %t398 = load i64, ptr %l3, !tbaa !24
  %t401 = srem i64 %t397, %t398
  store i64 %t395, ptr %l6, !tbaa !24
  store i64 %t401, ptr %l7, !tbaa !24
  call void @__olang_scope_close(ptr %s11)
  br label %bb57
bb57:
  %t407 = load i64, ptr %l8, !tbaa !24
  %t409 = icmp sgt i64 %t407, 0
  br i1 %t409, label %bb58, label %bb59
bb58:
  %t411 = load i64, ptr %l8, !tbaa !24
  %t412 = load i64, ptr %l3, !tbaa !24
  %t415 = srem i64 %t411, %t412
  %t417 = icmp eq i64 %t415, 0
  store i1 %t417, ptr %l190, !tbaa !21
  br label %bb60
bb59:
  store i1 false, ptr %l190, !tbaa !21
  br label %bb60
bb60:
  %t419 = load i1, ptr %l190, !tbaa !21
  br i1 %t419, label %bb61, label %bb62
bb61:
  store %olang.scope zeroinitializer, ptr %s13
  %t420 = load ptr, ptr %l0, !tbaa !29
  %t422 = getelementptr %"compiler/lineedit:Editor", ptr %t420, i32 0, i32 6
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s13, ptr %t422, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d54, i32 0, i32 1) })
  br label %bb63
bb62:
  br label %bb64
bb63:
  call void @__olang_scope_close(ptr %s13)
  br label %bb64
bb64:
  %t424 = load i64, ptr %l4, !tbaa !24
  %t425 = load i64, ptr %l8, !tbaa !24
  %t426 = load i64, ptr %l3, !tbaa !24
  %t429 = sdiv i64 %t425, %t426
  %t432 = add i64 %t424, %t429
  %t433 = load i64, ptr %l6, !tbaa !24
  %t436 = sub i64 %t432, %t433
  store i64 %t436, ptr %l22, !tbaa !24
  %t438 = load i64, ptr %l22, !tbaa !24
  %t440 = icmp sgt i64 %t438, 0
  br i1 %t440, label %bb65, label %bb66
bb65:
  store %olang.scope zeroinitializer, ptr %s14
  %t442 = load ptr, ptr %l0, !tbaa !29
  %t444 = getelementptr %"compiler/lineedit:Editor", ptr %t442, i32 0, i32 6
  %t445 = load i64, ptr %l22, !tbaa !24
  %t446 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d55, i32 0, i32 1) }, 1
  %t447 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d55, i32 0, i32 1) }, 0
  %t449 = call i64 @__olang_fmt_i64(ptr null, i64 %t445)
  %t450 = add i64 %t447, %t449
  %t451 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d56, i32 0, i32 1) }, 1
  %t452 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d56, i32 0, i32 1) }, 0
  %t453 = add i64 %t450, %t452
  %t454 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t453)
  call void @olang_textcopy(ptr %t454, ptr %t446, i64 %t447)
  %t455 = getelementptr i8, ptr %t454, i64 %t447
  %t456 = call i64 @__olang_fmt_i64(ptr %t455, i64 %t445)
  %t457 = getelementptr i8, ptr %t455, i64 %t449
  call void @olang_textcopy(ptr %t457, ptr %t451, i64 %t452)
  %t458 = insertvalue { i64, ptr } undef, i64 %t453, 0
  %t459 = insertvalue { i64, ptr } %t458, ptr %t454, 1
  %t461 = extractvalue { i64, ptr } %t459, 0
  %t462 = extractvalue { i64, ptr } %t459, 1
  %t463 = mul i64 %t461, 1
  %t464 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t463)
  call void @llvm.memcpy.p0.p0.i64(ptr %t464, ptr %t462, i64 %t463, i1 false)
  %t465 = insertvalue { i64, ptr } undef, i64 %t461, 0
  %t466 = insertvalue { i64, ptr } %t465, ptr %t464, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s14, ptr %t444, { i64, ptr } %t466)
  br label %bb67
bb66:
  br label %bb68
bb67:
  call void @__olang_scope_close(ptr %s14)
  br label %bb68
bb68:
  %t469 = load ptr, ptr %l0, !tbaa !29
  %t471 = getelementptr %"compiler/lineedit:Editor", ptr %t469, i32 0, i32 6
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s0, ptr %t471, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d57, i32 0, i32 1) })
  br label %bb69
bb69:
  %t473 = load i64, ptr %l7, !tbaa !24
  %t475 = icmp sgt i64 %t473, 0
  br i1 %t475, label %bb70, label %bb71
bb70:
  store %olang.scope zeroinitializer, ptr %s16
  %t477 = load ptr, ptr %l0, !tbaa !29
  %t479 = getelementptr %"compiler/lineedit:Editor", ptr %t477, i32 0, i32 6
  %t480 = load i64, ptr %l7, !tbaa !24
  %t481 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d58, i32 0, i32 1) }, 1
  %t482 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d58, i32 0, i32 1) }, 0
  %t484 = call i64 @__olang_fmt_i64(ptr null, i64 %t480)
  %t485 = add i64 %t482, %t484
  %t486 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d59, i32 0, i32 1) }, 1
  %t487 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d59, i32 0, i32 1) }, 0
  %t488 = add i64 %t485, %t487
  %t489 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t488)
  call void @olang_textcopy(ptr %t489, ptr %t481, i64 %t482)
  %t490 = getelementptr i8, ptr %t489, i64 %t482
  %t491 = call i64 @__olang_fmt_i64(ptr %t490, i64 %t480)
  %t492 = getelementptr i8, ptr %t490, i64 %t484
  call void @olang_textcopy(ptr %t492, ptr %t486, i64 %t487)
  %t493 = insertvalue { i64, ptr } undef, i64 %t488, 0
  %t494 = insertvalue { i64, ptr } %t493, ptr %t489, 1
  %t496 = extractvalue { i64, ptr } %t494, 0
  %t497 = extractvalue { i64, ptr } %t494, 1
  %t498 = mul i64 %t496, 1
  %t499 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t498)
  call void @llvm.memcpy.p0.p0.i64(ptr %t499, ptr %t497, i64 %t498, i1 false)
  %t500 = insertvalue { i64, ptr } undef, i64 %t496, 0
  %t501 = insertvalue { i64, ptr } %t500, ptr %t499, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s16, ptr %t479, { i64, ptr } %t501)
  br label %bb72
bb71:
  br label %bb73
bb72:
  call void @__olang_scope_close(ptr %s16)
  br label %bb73
bb73:
  %t504 = load ptr, ptr %l0, !tbaa !29
  %t505 = load i64, ptr %l6, !tbaa !24
  %t508 = getelementptr %"compiler/lineedit:Editor", ptr %t504, i32 0, i32 14
  store i64 %t505, ptr %t508, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eenter(ptr %v0, ptr %a0, i8 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i8
  %l2 = alloca { i64, ptr }
  %l8 = alloca ptr
  %l10 = alloca i64
  %l13 = alloca ptr
  %l17 = alloca i64
  %l20 = alloca ptr
  %l24 = alloca i64
  %l27 = alloca ptr
  %l31 = alloca i64
  %l35 = alloca ptr
  %l39 = alloca i64
  %l41 = alloca ptr
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i8 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lineedit:Editor", ptr %t1, i32 0, i32 3
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l2, !tbaa !27
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/lineedit:Editor", ptr %t6, i32 0, i32 5
  store i1 false, ptr %t8, !tbaa !21
  %t9 = load i8, ptr %l1, !tbaa !22
  %t11 = icmp eq i8 %t9, 97
  br i1 %t11, label %bb1, label %bb2
bb1:
  %t13 = load ptr, ptr %l0, !tbaa !29
  store ptr %t13, ptr %l8, !tbaa !29
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = call i64 @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eright(ptr %v0, ptr %t14)
  store i64 %t16, ptr %l10
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t17 = load i64, ptr %l10, !tbaa !24
  %t18 = load ptr, ptr %l8, !tbaa !29
  %t19 = getelementptr %"compiler/lineedit:Editor", ptr %t18, i32 0, i32 4
  store i64 %t17, ptr %t19, !tbaa !24
  br label %bb4
bb4:
  %t20 = load i8, ptr %l1, !tbaa !22
  %t22 = icmp eq i8 %t20, 73
  br i1 %t22, label %bb5, label %bb6
bb5:
  %t24 = load ptr, ptr %l0, !tbaa !29
  store ptr %t24, ptr %l13, !tbaa !29
  %t25 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/lineedit:Editor", ptr %t26, i32 0, i32 4
  %t29 = load i64, ptr %t28, !tbaa !24
  %t32 = call i64 @compiler_2flineedit_2efirstWord(ptr %v0, { i64, ptr } %t25, i64 %t29)
  store i64 %t32, ptr %l17
  br label %bb7
bb6:
  br label %bb8
bb7:
  %t33 = load i64, ptr %l17, !tbaa !24
  %t34 = load ptr, ptr %l13, !tbaa !29
  %t35 = getelementptr %"compiler/lineedit:Editor", ptr %t34, i32 0, i32 4
  store i64 %t33, ptr %t35, !tbaa !24
  br label %bb8
bb8:
  %t36 = load i8, ptr %l1, !tbaa !22
  %t38 = icmp eq i8 %t36, 65
  br i1 %t38, label %bb9, label %bb10
bb9:
  %t40 = load ptr, ptr %l0, !tbaa !29
  store ptr %t40, ptr %l20, !tbaa !29
  %t41 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/lineedit:Editor", ptr %t42, i32 0, i32 4
  %t45 = load i64, ptr %t44, !tbaa !24
  %t48 = call i64 @compiler_2flineedit_2elineEnd(ptr %v0, { i64, ptr } %t41, i64 %t45)
  store i64 %t48, ptr %l24
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t49 = load i64, ptr %l24, !tbaa !24
  %t50 = load ptr, ptr %l20, !tbaa !29
  %t51 = getelementptr %"compiler/lineedit:Editor", ptr %t50, i32 0, i32 4
  store i64 %t49, ptr %t51, !tbaa !24
  br label %bb12
bb12:
  %t52 = load i8, ptr %l1, !tbaa !22
  %t54 = icmp eq i8 %t52, 111
  br i1 %t54, label %bb13, label %bb14
bb13:
  store %olang.scope zeroinitializer, ptr %s4
  %t56 = load ptr, ptr %l0, !tbaa !29
  store ptr %t56, ptr %l27, !tbaa !29
  %t57 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/lineedit:Editor", ptr %t58, i32 0, i32 4
  %t61 = load i64, ptr %t60, !tbaa !24
  %t64 = call i64 @compiler_2flineedit_2elineEnd(ptr %v0, { i64, ptr } %t57, i64 %t61)
  store i64 %t64, ptr %l31
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t65 = load i64, ptr %l31, !tbaa !24
  %t66 = load ptr, ptr %l27, !tbaa !29
  %t67 = getelementptr %"compiler/lineedit:Editor", ptr %t66, i32 0, i32 4
  store i64 %t65, ptr %t67, !tbaa !24
  %t68 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2einsert(ptr %v0, ptr %s4, ptr %t68, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d60, i32 0, i32 1) })
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s4)
  br label %bb17
bb17:
  %t70 = load i8, ptr %l1, !tbaa !22
  %t72 = icmp eq i8 %t70, 79
  br i1 %t72, label %bb18, label %bb19
bb18:
  store %olang.scope zeroinitializer, ptr %s5
  %t74 = load ptr, ptr %l0, !tbaa !29
  store ptr %t74, ptr %l35, !tbaa !29
  %t75 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/lineedit:Editor", ptr %t76, i32 0, i32 4
  %t79 = load i64, ptr %t78, !tbaa !24
  %t82 = call i64 @compiler_2flineedit_2elineStart(ptr %v0, { i64, ptr } %t75, i64 %t79)
  store i64 %t82, ptr %l39
  br label %bb20
bb19:
  br label %bb22
bb20:
  %t83 = load i64, ptr %l39, !tbaa !24
  %t84 = load ptr, ptr %l35, !tbaa !29
  %t85 = getelementptr %"compiler/lineedit:Editor", ptr %t84, i32 0, i32 4
  store i64 %t83, ptr %t85, !tbaa !24
  %t86 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2einsert(ptr %v0, ptr %s5, ptr %t86, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d61, i32 0, i32 1) })
  br label %bb21
bb21:
  %t88 = load ptr, ptr %l0, !tbaa !29
  store ptr %t88, ptr %l41, !tbaa !29
  %t89 = load ptr, ptr %l41, !tbaa !29
  %t90 = getelementptr %"compiler/lineedit:Editor", ptr %t89, i32 0, i32 4
  %t91 = load i64, ptr %t90, !tbaa !24
  %t93 = sub i64 %t91, 1
  %t95 = load ptr, ptr %l41, !tbaa !29
  %t96 = getelementptr %"compiler/lineedit:Editor", ptr %t95, i32 0, i32 4
  store i64 %t93, ptr %t96, !tbaa !24
  call void @__olang_scope_close(ptr %s5)
  br label %bb22
bb22:
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eescape(ptr %v0, ptr %a0, i8 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i8
  %l2 = alloca { i64, ptr }
  %l5 = alloca i1
  %l6 = alloca i1
  %l9 = alloca i1
  %l12 = alloca ptr
  %l13 = alloca { i64, ptr }
  %l17 = alloca i32
  %l18 = alloca ptr
  %l19 = alloca i64
  %l22 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l33 = alloca i1
  %l36 = alloca i1
  %l44 = alloca ptr
  %l45 = alloca { i64, ptr }
  %l50 = alloca ptr
  %l51 = alloca { i64, ptr }
  %l58 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i8 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lineedit:Editor", ptr %t1, i32 0, i32 15
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t4, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d62, i32 0, i32 1) })
  store i1 %t6, ptr %l5
  br label %bb1
bb1:
  %t7 = load i1, ptr %l5, !tbaa !21
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t8 = load i8, ptr %l1, !tbaa !22
  %t10 = icmp ne i8 %t8, 91
  store i1 %t10, ptr %l6, !tbaa !21
  br label %bb4
bb3:
  store i1 false, ptr %l6, !tbaa !21
  br label %bb4
bb4:
  %t12 = load i1, ptr %l6, !tbaa !21
  br i1 %t12, label %bb5, label %bb6
bb5:
  %t13 = load i8, ptr %l1, !tbaa !22
  %t15 = icmp ne i8 %t13, 79
  store i1 %t15, ptr %l9, !tbaa !21
  br label %bb7
bb6:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb7
bb7:
  %t17 = load i1, ptr %l9, !tbaa !21
  br i1 %t17, label %bb8, label %bb9
bb8:
  %t18 = load ptr, ptr %l0, !tbaa !29
  store ptr %t18, ptr %l12, !tbaa !29
  %t19 = load ptr, ptr %l12, !tbaa !29
  %t20 = getelementptr %"compiler/lineedit:Editor", ptr %t19, i32 0, i32 15
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !27
  store { i64, ptr } %t21, ptr %l13, !tbaa !27
  %t22 = load ptr, ptr %l12, !tbaa !29
  %t23 = getelementptr %"compiler/lineedit:Editor", ptr %t22, i32 0, i32 15
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d63, i32 0, i32 1) }, ptr %t23, !tbaa !27
  %t24 = load i1, ptr @olang_2esole_2ecompiler_2flineedit_3aEditor_2e15
  br i1 %t24, label %bb10, label %bb11
bb9:
  br label %bb13
bb10:
  %t26 = load { i64, ptr }, ptr %l13
  %t27 = extractvalue { i64, ptr } %t26, 1
  call void @__olang_region_release(ptr %t27)
  store { i64, ptr } zeroinitializer, ptr %l13
  br label %bb11
bb11:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load i8, ptr %l1, !tbaa !22
  %t32 = call i32 @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2emeta(ptr %v0, ptr %t28, i8 %t29)
  store i32 %t32, ptr %l17
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s0)
  %t33 = load i32, ptr %l17, !range !{i32 0, i32 4}
  store i32 %t33, ptr %rv
  br label %ret
bb13:
  %t34 = load ptr, ptr %l0, !tbaa !29
  store ptr %t34, ptr %l18, !tbaa !29
  %t35 = ptrtoint ptr %v0 to i64
  store i64 %t35, ptr %l19, !tbaa !24
  %t36 = load i1, ptr @olang_2esole_2ecompiler_2flineedit_3aEditor_2e15
  br i1 %t36, label %bb14, label %bb15
bb14:
  %t38 = call ptr @__olang_region_make(ptr %v0)
  %t39 = ptrtoint ptr %t38 to i64
  store i64 %t39, ptr %l19, !tbaa !24
  br label %bb15
bb15:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/lineedit:Editor", ptr %t40, i32 0, i32 15
  %t43 = load { i64, ptr }, ptr %t42, !tbaa !27
  store { i64, ptr } %t43, ptr %l22, !tbaa !27
  %t44 = load i8, ptr %l1, !tbaa !22
  %t46 = call { i64, ptr } @compiler_2flineedit_2eone(ptr %s0, i8 %t44)
  store { i64, ptr } %t46, ptr %l24
  br label %bb16
bb16:
  %t47 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t48 = extractvalue { i64, ptr } %t47, 1
  %t49 = extractvalue { i64, ptr } %t47, 0
  %t50 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t51 = extractvalue { i64, ptr } %t50, 1
  %t52 = extractvalue { i64, ptr } %t50, 0
  %t53 = add i64 %t49, %t52
  %t54 = load i64, ptr %l19
  %t55 = inttoptr i64 %t54 to ptr
  %t56 = call ptr @__olang_scope_alloc(ptr %t55, i64 %t53)
  call void @olang_textcopy(ptr %t56, ptr %t48, i64 %t49)
  %t57 = getelementptr i8, ptr %t56, i64 %t49
  call void @olang_textcopy(ptr %t57, ptr %t51, i64 %t52)
  %t58 = insertvalue { i64, ptr } undef, i64 %t53, 0
  %t59 = insertvalue { i64, ptr } %t58, ptr %t56, 1
  %t61 = load i64, ptr %l19
  %t62 = inttoptr i64 %t61 to ptr
  %t63 = extractvalue { i64, ptr } %t59, 0
  %t64 = extractvalue { i64, ptr } %t59, 1
  %t65 = mul i64 %t63, 1
  %t66 = call ptr @__olang_scope_alloc(ptr %t62, i64 %t65)
  call void @llvm.memcpy.p0.p0.i64(ptr %t66, ptr %t64, i64 %t65, i1 false)
  %t67 = insertvalue { i64, ptr } undef, i64 %t63, 0
  %t68 = insertvalue { i64, ptr } %t67, ptr %t66, 1
  %t69 = load ptr, ptr %l18, !tbaa !29
  %t70 = getelementptr %"compiler/lineedit:Editor", ptr %t69, i32 0, i32 15
  %t71 = load { i64, ptr }, ptr %t70, !tbaa !27
  store { i64, ptr } %t71, ptr %l27, !tbaa !27
  %t73 = load ptr, ptr %l18, !tbaa !29
  %t74 = getelementptr %"compiler/lineedit:Editor", ptr %t73, i32 0, i32 15
  store { i64, ptr } %t68, ptr %t74, !tbaa !27
  %t75 = load i1, ptr @olang_2esole_2ecompiler_2flineedit_3aEditor_2e15
  br i1 %t75, label %bb17, label %bb18
bb17:
  %t77 = load { i64, ptr }, ptr %l27
  %t78 = extractvalue { i64, ptr } %t77, 1
  call void @__olang_region_release(ptr %t78)
  store { i64, ptr } zeroinitializer, ptr %l27
  br label %bb18
bb18:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/lineedit:Editor", ptr %t79, i32 0, i32 15
  %t82 = load { i64, ptr }, ptr %t81, !tbaa !27
  %t84 = extractvalue { i64, ptr } %t82, 0
  %t86 = icmp sle i64 %t84, 2
  br i1 %t86, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l33, !tbaa !21
  br label %bb21
bb20:
  %t88 = load i8, ptr %l1, !tbaa !22
  %t90 = icmp ult i8 %t88, 64
  store i1 %t90, ptr %l33, !tbaa !21
  br label %bb21
bb21:
  %t92 = load i1, ptr %l33, !tbaa !21
  br i1 %t92, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l36, !tbaa !21
  br label %bb24
bb23:
  %t93 = load i8, ptr %l1, !tbaa !22
  %t95 = icmp ugt i8 %t93, 126
  store i1 %t95, ptr %l36, !tbaa !21
  br label %bb24
bb24:
  %t97 = load i1, ptr %l36, !tbaa !21
  br i1 %t97, label %bb25, label %bb26
bb25:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
bb26:
  br label %bb27
bb27:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/lineedit:Editor", ptr %t99, i32 0, i32 15
  %t102 = load { i64, ptr }, ptr %t101, !tbaa !27
  %t104 = extractvalue { i64, ptr } %t102, 0
  %t106 = icmp sgt i64 %t104, 16
  br i1 %t106, label %bb28, label %bb29
bb28:
  %t108 = load ptr, ptr %l0, !tbaa !29
  store ptr %t108, ptr %l44, !tbaa !29
  %t109 = load ptr, ptr %l44, !tbaa !29
  %t110 = getelementptr %"compiler/lineedit:Editor", ptr %t109, i32 0, i32 15
  %t111 = load { i64, ptr }, ptr %t110, !tbaa !27
  store { i64, ptr } %t111, ptr %l45, !tbaa !27
  %t112 = load ptr, ptr %l44, !tbaa !29
  %t113 = getelementptr %"compiler/lineedit:Editor", ptr %t112, i32 0, i32 15
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d64, i32 0, i32 1) }, ptr %t113, !tbaa !27
  %t114 = load i1, ptr @olang_2esole_2ecompiler_2flineedit_3aEditor_2e15
  br i1 %t114, label %bb30, label %bb31
bb29:
  br label %bb32
bb30:
  %t116 = load { i64, ptr }, ptr %l45
  %t117 = extractvalue { i64, ptr } %t116, 1
  call void @__olang_region_release(ptr %t117)
  store { i64, ptr } zeroinitializer, ptr %l45
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
bb32:
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr %"compiler/lineedit:Editor", ptr %t119, i32 0, i32 15
  %t122 = load { i64, ptr }, ptr %t121, !tbaa !27
  store { i64, ptr } %t122, ptr %l2, !tbaa !27
  %t124 = load ptr, ptr %l0, !tbaa !29
  store ptr %t124, ptr %l50, !tbaa !29
  %t125 = load ptr, ptr %l50, !tbaa !29
  %t126 = getelementptr %"compiler/lineedit:Editor", ptr %t125, i32 0, i32 15
  %t127 = load { i64, ptr }, ptr %t126, !tbaa !27
  store { i64, ptr } %t127, ptr %l51, !tbaa !27
  %t128 = load ptr, ptr %l50, !tbaa !29
  %t129 = getelementptr %"compiler/lineedit:Editor", ptr %t128, i32 0, i32 15
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d65, i32 0, i32 1) }, ptr %t129, !tbaa !27
  %t130 = load i1, ptr @olang_2esole_2ecompiler_2flineedit_3aEditor_2e15
  br i1 %t130, label %bb33, label %bb34
bb33:
  %t132 = load { i64, ptr }, ptr %l51
  %t133 = extractvalue { i64, ptr } %t132, 1
  call void @__olang_region_release(ptr %t133)
  store { i64, ptr } zeroinitializer, ptr %l51
  br label %bb34
bb34:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t136 = getelementptr %"compiler/lineedit:Editor", ptr %t134, i32 0, i32 21
  %t137 = load i1, ptr %t136, !tbaa !21
  br i1 %t137, label %bb35, label %bb36
bb35:
  %t139 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eacceptSearch(ptr %v0, ptr %t139)
  br label %bb37
bb36:
  br label %bb38
bb37:
  br label %bb38
bb38:
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t142 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t145 = call i32 @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2esequence(ptr %v0, ptr %v0, ptr %t141, { i64, ptr } %t142)
  store i32 %t145, ptr %l58
  br label %bb39
bb39:
  call void @__olang_scope_close(ptr %s0)
  %t146 = load i32, ptr %l58, !range !{i32 0, i32 4}
  store i32 %t146, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i32, { i64, ptr } } @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2efeedPending(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1c, ptr %a1e) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { ptr, ptr }
  %l2 = alloca i32
  %l4 = alloca i64
  %l7 = alloca i64
  %l10 = alloca ptr
  %l15 = alloca i8
  %l16 = alloca i32
  %l17 = alloca ptr
  %l28 = alloca i1
  %l32 = alloca i1
  %l35 = alloca { i64, ptr }
  %l43 = alloca i1
  %l46 = alloca { i64, ptr }
  %l49 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  store ptr %a0, ptr %l0
  %pf1 = insertvalue { ptr, ptr } undef, ptr %a1c, 0
  %pg1 = insertvalue { ptr, ptr } %pf1, ptr %a1e, 1
  store { ptr, ptr } %pg1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  br label %bb1
bb1:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lineedit:Editor", ptr %t1, i32 0, i32 36
  %t4 = load i64, ptr %t3, !tbaa !24
  store i64 %t4, ptr %l4, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/lineedit:Editor", ptr %t5, i32 0, i32 35
  %t9 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eLen_3cU8_3e(ptr %v0, ptr %t7)
  store i64 %t9, ptr %l7
  br label %bb2
bb2:
  %t10 = load i64, ptr %l4, !tbaa !24
  %t11 = load i64, ptr %l7, !tbaa !24
  %t12 = icmp slt i64 %t10, %t11
  %t14 = xor i1 %t12, true
  br i1 %t14, label %bb3, label %bb4
bb3:
  br label %bb31
bb4:
  br label %bb5
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  store ptr %t16, ptr %l10, !tbaa !29
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/lineedit:Editor", ptr %t17, i32 0, i32 35
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/lineedit:Editor", ptr %t20, i32 0, i32 36
  %t23 = load i64, ptr %t22, !tbaa !24
  %t26 = call i8 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eAt_3cU8_3e(ptr %v0, ptr %t19, i64 %t23)
  store i8 %t26, ptr %l15
  br label %bb6
bb6:
  %t27 = load ptr, ptr %l10, !tbaa !29
  %t28 = load i8, ptr %l15, !tbaa !22
  %t29 = call i32 @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eFeed(ptr %v0, ptr %t27, i8 %t28)
  store i32 %t29, ptr %l16
  br label %bb7
bb7:
  %t30 = load i32, ptr %l16, !range !{i32 0, i32 4}
  store i32 %t30, ptr %l2
  %t31 = load ptr, ptr %l0, !tbaa !29
  store ptr %t31, ptr %l17, !tbaa !29
  %t32 = load ptr, ptr %l17, !tbaa !29
  %t33 = getelementptr %"compiler/lineedit:Editor", ptr %t32, i32 0, i32 36
  %t34 = load i64, ptr %t33, !tbaa !24
  %t36 = add i64 %t34, 1
  %t38 = load ptr, ptr %l17, !tbaa !29
  %t39 = getelementptr %"compiler/lineedit:Editor", ptr %t38, i32 0, i32 36
  store i64 %t36, ptr %t39, !tbaa !24
  %t40 = load i32, ptr %l2, !range !{i32 0, i32 4}
  %t42 = trunc i64 3 to i32
  %t43 = icmp eq i32 %t40, %t42
  br i1 %t43, label %bb8, label %bb9
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/lineedit:Editor", ptr %t45, i32 0, i32 6
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s2, ptr %t47, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d66, i32 0, i32 1) })
  br label %bb10
bb9:
  br label %bb12
bb10:
  %t49 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eflush(ptr %v0, ptr %t49)
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s2)
  %t52 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t52, ptr %rv
  br label %ret
bb12:
  %t53 = load i32, ptr %l2, !range !{i32 0, i32 4}
  %t55 = trunc i64 2 to i32
  %t56 = icmp eq i32 %t53, %t55
  br i1 %t56, label %bb13, label %bb14
bb13:
  %t58 = load { ptr, ptr }, ptr %l1
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/lineedit:Editor", ptr %t59, i32 0, i32 3
  %t62 = load { i64, ptr }, ptr %t61, !tbaa !27
  %t64 = extractvalue { ptr, ptr } %t58, 0
  %t65 = extractvalue { ptr, ptr } %t58, 1
  %t67 = call i1 %t64(ptr %t65, ptr %v0, { i64, ptr } %t62)
  store i1 %t67, ptr %l32
  br label %bb15
bb14:
  store i1 false, ptr %l28, !tbaa !21
  br label %bb16
bb15:
  %t68 = load i1, ptr %l32, !tbaa !21
  %t69 = xor i1 %t68, true
  store i1 %t69, ptr %l28, !tbaa !21
  br label %bb16
bb16:
  %t71 = load i1, ptr %l28, !tbaa !21
  br i1 %t71, label %bb17, label %bb18
bb17:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = call { i64, ptr } @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2edone(ptr %v0, ptr %v2, ptr %t72)
  store { i64, ptr } %t74, ptr %l35
  br label %bb19
bb18:
  br label %bb20
bb19:
  %t75 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t77 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t75, 1
  store { i32, { i64, ptr } } %t77, ptr %rv
  br label %ret
bb20:
  %t78 = load i32, ptr %l2, !range !{i32 0, i32 4}
  %t80 = trunc i64 1 to i32
  %t81 = icmp eq i32 %t78, %t80
  %t83 = xor i1 %t81, true
  br i1 %t83, label %bb21, label %bb22
bb21:
  br label %bb30
bb22:
  br label %bb23
bb23:
  %t85 = load { ptr, ptr }, ptr %l1
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/lineedit:Editor", ptr %t86, i32 0, i32 3
  %t89 = load { i64, ptr }, ptr %t88, !tbaa !27
  %t91 = extractvalue { ptr, ptr } %t85, 0
  %t92 = extractvalue { ptr, ptr } %t85, 1
  %t94 = call i1 %t91(ptr %t92, ptr %v0, { i64, ptr } %t89)
  store i1 %t94, ptr %l43
  br label %bb24
bb24:
  %t95 = load i1, ptr %l43, !tbaa !21
  br i1 %t95, label %bb25, label %bb26
bb25:
  %t96 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eBreak(ptr %v0, ptr %t96)
  br label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb30
bb28:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = call { i64, ptr } @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2edone(ptr %v0, ptr %v2, ptr %t98)
  store { i64, ptr } %t100, ptr %l46
  br label %bb29
bb29:
  %t101 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t103 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t101, 1
  store { i32, { i64, ptr } } %t103, ptr %rv
  br label %ret
bb30:
  br label %bb1
bb31:
  %t104 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eIdle(ptr %v0, ptr %t104)
  br label %bb32
bb32:
  store { i64, ptr } { i64 -1, ptr null }, ptr %l49, !tbaa !27
  %t106 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t107 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t106, 1
  store { i32, { i64, ptr } } %t107, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local i32 @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2efill(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca [256 x i8]
  %l2 = alloca i64
  %l3 = alloca [256 x i8]
  %l5 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca i64
  %l14 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  br label %fill.4
fill.4:
  br label %fill.1
fill.1:
  %t5 = phi i64 [ 0, %fill.4 ], [ %t6, %fill.2 ]
  %t7 = icmp slt i64 %t5, 256
  br i1 %t7, label %fill.2, label %fill.3
fill.2:
  %t8 = getelementptr [256 x i8], ptr %l3, i64 0, i64 %t5
  store i8 0, ptr %t8
  %t6 = add i64 %t5, 1
  br label %fill.1
fill.3:
  call void @llvm.memmove.p0.p0.i64(ptr %l1, ptr %l3, i64 256, i1 false)
  %t10 = call i64 @read(i32 0, ptr %l1, i64 256)
  store i64 %t10, ptr %l5
  br label %bb1
bb1:
  %t11 = load i64, ptr %l5, !tbaa !24
  store i64 %t11, ptr %l2, !tbaa !24
  %t12 = load i64, ptr %l2, !tbaa !24
  %t14 = icmp sle i64 %t12, 0
  br i1 %t14, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store i32 65536, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/lineedit:Editor", ptr %t17, i32 0, i32 35
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eClear_3cU8_3e(ptr %v0, ptr %t19)
  br label %bb5
bb5:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/lineedit:Editor", ptr %t21, i32 0, i32 35
  store ptr %t23, ptr %l12, !tbaa !29
  %t24 = load i64, ptr %l2, !tbaa !24
  store i64 %t24, ptr %l13, !tbaa !24
  %t25 = load [256 x i8], ptr %l1
  store i64 256, ptr %l14, !tbaa !24
  %t26 = icmp sge i64 0, 0
  br i1 %t26, label %bb6, label %bb7
bb6:
  %t28 = load i64, ptr %l13, !tbaa !24
  %t29 = icmp sle i64 0, %t28
  br i1 %t29, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_9f82c4ae2fb92c09_610471f21aec4c45)
  unreachable
bb8:
  %t31 = load i64, ptr %l13, !tbaa !24
  %t32 = load i64, ptr %l14, !tbaa !24
  %t33 = icmp sle i64 %t31, %t32
  br i1 %t33, label %bb10, label %bb11
bb9:
  call void @__olang_check_failed(ptr @olang_loc_9f82c4ae2fb92c09_610471f21aec4c45)
  unreachable
bb10:
  %t35 = load i64, ptr %l13, !tbaa !24
  %t36 = getelementptr i8, ptr %l1, i64 0
  %t37 = sub i64 %t35, 0
  %t38 = insertvalue { i64, ptr } undef, i64 %t37, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr %t36, 1
  %t40 = load ptr, ptr %l12, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2ePushAll_3cU8_3e(ptr %v0, ptr %s0, ptr %t40, { i64, ptr } %t39)
  br label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_9f82c4ae2fb92c09_610471f21aec4c45)
  unreachable
bb12:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/lineedit:Editor", ptr %t42, i32 0, i32 36
  store i64 0, ptr %t44, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2efind(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l9 = alloca i1
  %l10 = alloca i64
  %l13 = alloca i64
  %l19 = alloca { i64, ptr }
  %l22 = alloca i64
  %l31 = alloca ptr
  %l35 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %l41 = alloca i64
  %l44 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 %a1, ptr %l2, !tbaa !24
  br label %bb1
bb1:
  %t3 = load i64, ptr %l2, !tbaa !24
  %t5 = icmp sge i64 %t3, 0
  br i1 %t5, label %bb2, label %bb3
bb2:
  %t7 = load i64, ptr %l2, !tbaa !24
  store i64 %t7, ptr %l10, !tbaa !24
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/lineedit:Editor", ptr %t8, i32 0, i32 7
  %t12 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t10)
  store i64 %t12, ptr %l13
  br label %bb4
bb3:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb5
bb4:
  %t13 = load i64, ptr %l10, !tbaa !24
  %t14 = load i64, ptr %l13, !tbaa !24
  %t15 = icmp slt i64 %t13, %t14
  store i1 %t15, ptr %l9, !tbaa !21
  br label %bb5
bb5:
  %t17 = load i1, ptr %l9, !tbaa !21
  %t18 = xor i1 %t17, true
  br i1 %t18, label %bb6, label %bb7
bb6:
  br label %bb21
bb7:
  br label %bb8
bb8:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/lineedit:Editor", ptr %t20, i32 0, i32 7
  %t23 = load i64, ptr %l2, !tbaa !24
  %t26 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t22, i64 %t23)
  store { i64, ptr } %t26, ptr %l19
  br label %bb9
bb9:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/lineedit:Editor", ptr %t27, i32 0, i32 25
  %t30 = load { i64, ptr }, ptr %t29, !tbaa !27
  %t31 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t33 = call i64 @compiler_2flineedit_2eindexOf(ptr %v0, ptr %v0, { i64, ptr } %t31, { i64, ptr } %t30)
  store i64 %t33, ptr %l22
  br label %bb10
bb10:
  %t34 = load i64, ptr %l22, !tbaa !24
  store i64 %t34, ptr %l3, !tbaa !24
  %t35 = load i64, ptr %l3, !tbaa !24
  %t37 = icmp sge i64 %t35, 0
  br i1 %t37, label %bb11, label %bb12
bb11:
  %t39 = load i64, ptr %l2, !tbaa !24
  %t41 = load i64, ptr %l2, !tbaa !24
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/lineedit:Editor", ptr %t43, i32 0, i32 27
  store i64 %t39, ptr %t47, !tbaa !24
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/lineedit:Editor", ptr %t48, i32 0, i32 12
  store i64 %t41, ptr %t52, !tbaa !24
  %t53 = load ptr, ptr %l0, !tbaa !29
  store ptr %t53, ptr %l31, !tbaa !29
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/lineedit:Editor", ptr %t54, i32 0, i32 7
  %t57 = load i64, ptr %l2, !tbaa !24
  %t60 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t56, i64 %t57)
  store { i64, ptr } %t60, ptr %l35
  br label %bb13
bb12:
  br label %bb16
bb13:
  %t61 = load ptr, ptr %l31, !tbaa !29
  %t62 = getelementptr %"compiler/lineedit:Editor", ptr %t61, i32 0, i32 3
  %t63 = load { i64, ptr }, ptr %t62, !tbaa !27
  store { i64, ptr } %t63, ptr %l36, !tbaa !27
  %t64 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t65 = load ptr, ptr %l31, !tbaa !29
  %t66 = getelementptr %"compiler/lineedit:Editor", ptr %t65, i32 0, i32 3
  store { i64, ptr } %t64, ptr %t66, !tbaa !27
  %t67 = load i1, ptr @olang_2esole_2ecompiler_2flineedit_3aEditor_2e3
  br i1 %t67, label %bb14, label %bb15
bb14:
  %t69 = load { i64, ptr }, ptr %l36
  %t70 = extractvalue { i64, ptr } %t69, 1
  call void @__olang_region_release(ptr %t70)
  store { i64, ptr } zeroinitializer, ptr %l36
  br label %bb15
bb15:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = load i64, ptr %l3, !tbaa !24
  %t75 = getelementptr %"compiler/lineedit:Editor", ptr %t71, i32 0, i32 4
  store i64 %t72, ptr %t75, !tbaa !24
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/lineedit:Editor", ptr %t76, i32 0, i32 28
  store i1 false, ptr %t78, !tbaa !21
  br label %ret
bb16:
  %t79 = load i64, ptr %l2, !tbaa !24
  store i64 %t79, ptr %l41, !tbaa !24
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/lineedit:Editor", ptr %t80, i32 0, i32 24
  %t83 = load i1, ptr %t82, !tbaa !21
  br i1 %t83, label %bb17, label %bb18
bb17:
  store i64 -1, ptr %l44, !tbaa !24
  br label %bb19
bb18:
  store i64 1, ptr %l44, !tbaa !24
  br label %bb19
bb19:
  %t85 = load i64, ptr %l41, !tbaa !24
  %t86 = load i64, ptr %l44, !tbaa !24
  %t87 = add i64 %t85, %t86
  store i64 %t87, ptr %l2, !tbaa !24
  br label %bb20
bb20:
  br label %bb1
bb21:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"compiler/lineedit:Editor", ptr %t89, i32 0, i32 28
  store i1 true, ptr %t91, !tbaa !21
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eflush(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l7 = alloca { i64, ptr }
  %l10 = alloca i32
  %l12 = alloca i1
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lineedit:Editor", ptr %t1, i32 0, i32 6
  %t5 = call i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load i64, ptr %l3, !tbaa !24
  %t7 = icmp eq i64 %t6, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb3:
  br label %bb4
bb4:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/lineedit:Editor", ptr %t9, i32 0, i32 6
  %t13 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %s0, ptr %t11)
  store { i64, ptr } %t13, ptr %l7
  br label %bb5
bb5:
  %t14 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t14, 0
  %t17 = extractvalue { i64, ptr } %t14, 1
  %t18 = mul i64 %t16, 1
  %t19 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t18)
  call void @llvm.memcpy.p0.p0.i64(ptr %t19, ptr %t17, i64 %t18, i1 false)
  %t20 = insertvalue { i64, ptr } undef, i64 %t16, 0
  %t21 = insertvalue { i64, ptr } %t20, ptr %t19, 1
  %t23 = call i32 @std_2fio_2eWrite(ptr %s0, i32 1, { i64, ptr } %t21)
  store i32 %t23, ptr %l10
  %t24 = icmp ne i32 %t23, 0
  br i1 %t24, label %bb7, label %ok.25, !prof !99
ok.25:
  br label %bb6
bb6:
  br label %bb11
bb7:
  %t26 = load i32, ptr %l10, !tbaa !23
  %t27 = ashr i32 %t26, 16
  %t29 = icmp eq i32 %t27, 1
  store i1 %t29, ptr %l12, !tbaa !21
  %t30 = load i32, ptr %l10, !tbaa !23
  %t31 = ashr i32 %t30, 16
  %t33 = icmp eq i32 %t31, 1
  br i1 %t33, label %bb8, label %bb9
bb8:
  call void @__olang_errpay_pop()
  br label %bb9
bb9:
  br label %bb10
bb10:
  br label %bb11
bb11:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/lineedit:Editor", ptr %t35, i32 0, i32 6
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eClear(ptr %v0, ptr %t37)
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2einsert(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l3 = alloca i1
  %l4 = alloca ptr
  %l8 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca i64
  %l14 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca i64
  %l21 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l26 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l38 = alloca { i64, ptr }
  %l40 = alloca ptr
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d67, i32 0, i32 1) })
  store i1 %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load i1, ptr %l3, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb3:
  br label %bb4
bb4:
  %t5 = load ptr, ptr %l0, !tbaa !29
  store ptr %t5, ptr %l4, !tbaa !29
  %t6 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t6, 0
  %t10 = icmp eq i64 %t8, 1
  br i1 %t10, label %bb5, label %bb6
bb5:
  store i64 1, ptr %l8, !tbaa !24
  br label %bb7
bb6:
  store i64 2, ptr %l8, !tbaa !24
  br label %bb7
bb7:
  %t12 = load ptr, ptr %l4, !tbaa !29
  %t13 = load i64, ptr %l8, !tbaa !24
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2esave(ptr %v0, ptr %t12, i64 %t13)
  br label %bb8
bb8:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/lineedit:Editor", ptr %t14, i32 0, i32 19
  store i1 true, ptr %t16, !tbaa !21
  %t17 = load ptr, ptr %l0, !tbaa !29
  store ptr %t17, ptr %l10, !tbaa !29
  %t18 = ptrtoint ptr %v0 to i64
  store i64 %t18, ptr %l11, !tbaa !24
  %t19 = load i1, ptr @olang_2esole_2ecompiler_2flineedit_3aEditor_2e3
  br i1 %t19, label %bb9, label %bb10
bb9:
  %t21 = call ptr @__olang_region_make(ptr %v0)
  %t22 = ptrtoint ptr %t21 to i64
  store i64 %t22, ptr %l11, !tbaa !24
  br label %bb10
bb10:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/lineedit:Editor", ptr %t23, i32 0, i32 3
  %t26 = load { i64, ptr }, ptr %t25, !tbaa !27
  store { i64, ptr } %t26, ptr %l14, !tbaa !27
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/lineedit:Editor", ptr %t27, i32 0, i32 4
  %t30 = load i64, ptr %t29, !tbaa !24
  store i64 %t30, ptr %l16, !tbaa !24
  %t31 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t31, 0
  store i64 %t32, ptr %l17, !tbaa !24
  %t33 = icmp sge i64 0, 0
  br i1 %t33, label %bb11, label %bb12
bb11:
  %t35 = load i64, ptr %l16, !tbaa !24
  %t36 = icmp sle i64 0, %t35
  br i1 %t36, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_126b4ead7e969a49_c70e2460580ad75)
  unreachable
bb13:
  %t38 = load i64, ptr %l16, !tbaa !24
  %t39 = load i64, ptr %l17, !tbaa !24
  %t40 = icmp sle i64 %t38, %t39
  br i1 %t40, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_126b4ead7e969a49_c70e2460580ad75)
  unreachable
bb15:
  %t42 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !27
  %t44 = load i64, ptr %l16, !tbaa !24
  %t45 = getelementptr i8, ptr %t43, i64 0
  %t46 = sub i64 %t44, 0
  %t47 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t48 = insertvalue { i64, ptr } %t47, ptr %t45, 1
  store { i64, ptr } %t48, ptr %l21, !tbaa !27
  %t49 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t49, ptr %l22, !tbaa !27
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/lineedit:Editor", ptr %t50, i32 0, i32 3
  %t53 = load { i64, ptr }, ptr %t52, !tbaa !27
  store { i64, ptr } %t53, ptr %l24, !tbaa !27
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/lineedit:Editor", ptr %t54, i32 0, i32 4
  %t57 = load i64, ptr %t56, !tbaa !24
  store i64 %t57, ptr %l26, !tbaa !24
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/lineedit:Editor", ptr %t58, i32 0, i32 3
  %t61 = load { i64, ptr }, ptr %t60, !tbaa !27
  %t64 = extractvalue { i64, ptr } %t61, 0
  store i64 %t64, ptr %l30, !tbaa !24
  %t65 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t66 = extractvalue { i64, ptr } %t65, 0
  store i64 %t66, ptr %l31, !tbaa !24
  %t67 = load i64, ptr %l26, !tbaa !24
  %t68 = icmp sge i64 %t67, 0
  br i1 %t68, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_126b4ead7e969a49_c70e2460580ad75)
  unreachable
bb17:
  %t70 = load i64, ptr %l26, !tbaa !24
  %t71 = load i64, ptr %l30, !tbaa !24
  %t72 = icmp sle i64 %t70, %t71
  br i1 %t72, label %bb19, label %bb20
bb18:
  call void @__olang_check_failed(ptr @olang_loc_126b4ead7e969a49_c70e2460580ad75)
  unreachable
bb19:
  %t74 = load i64, ptr %l30, !tbaa !24
  %t75 = load i64, ptr %l31, !tbaa !24
  %t76 = icmp sle i64 %t74, %t75
  br i1 %t76, label %bb21, label %bb22
bb20:
  call void @__olang_check_failed(ptr @olang_loc_126b4ead7e969a49_c70e2460580ad75)
  unreachable
bb21:
  %t78 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !27
  %t80 = load i64, ptr %l26, !tbaa !24
  %t81 = load i64, ptr %l30, !tbaa !24
  %t82 = getelementptr i8, ptr %t79, i64 %t80
  %t83 = sub i64 %t81, %t80
  %t84 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t85 = insertvalue { i64, ptr } %t84, ptr %t82, 1
  %t86 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t87 = extractvalue { i64, ptr } %t86, 1
  %t88 = extractvalue { i64, ptr } %t86, 0
  %t89 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t90 = extractvalue { i64, ptr } %t89, 1
  %t91 = extractvalue { i64, ptr } %t89, 0
  %t92 = add i64 %t88, %t91
  %t94 = extractvalue { i64, ptr } %t85, 1
  %t95 = extractvalue { i64, ptr } %t85, 0
  %t96 = add i64 %t92, %t95
  %t97 = load i64, ptr %l11
  %t98 = inttoptr i64 %t97 to ptr
  %t99 = call ptr @__olang_scope_alloc(ptr %t98, i64 %t96)
  call void @olang_textcopy(ptr %t99, ptr %t87, i64 %t88)
  %t100 = getelementptr i8, ptr %t99, i64 %t88
  call void @olang_textcopy(ptr %t100, ptr %t90, i64 %t91)
  %t101 = getelementptr i8, ptr %t100, i64 %t91
  call void @olang_textcopy(ptr %t101, ptr %t94, i64 %t95)
  %t102 = insertvalue { i64, ptr } undef, i64 %t96, 0
  %t103 = insertvalue { i64, ptr } %t102, ptr %t99, 1
  %t105 = load i64, ptr %l11
  %t106 = inttoptr i64 %t105 to ptr
  %t107 = extractvalue { i64, ptr } %t103, 0
  %t108 = extractvalue { i64, ptr } %t103, 1
  %t109 = mul i64 %t107, 1
  %t110 = call ptr @__olang_scope_alloc(ptr %t106, i64 %t109)
  call void @llvm.memcpy.p0.p0.i64(ptr %t110, ptr %t108, i64 %t109, i1 false)
  %t111 = insertvalue { i64, ptr } undef, i64 %t107, 0
  %t112 = insertvalue { i64, ptr } %t111, ptr %t110, 1
  %t113 = load ptr, ptr %l10, !tbaa !29
  %t114 = getelementptr %"compiler/lineedit:Editor", ptr %t113, i32 0, i32 3
  %t115 = load { i64, ptr }, ptr %t114, !tbaa !27
  store { i64, ptr } %t115, ptr %l38, !tbaa !27
  %t117 = load ptr, ptr %l10, !tbaa !29
  %t118 = getelementptr %"compiler/lineedit:Editor", ptr %t117, i32 0, i32 3
  store { i64, ptr } %t112, ptr %t118, !tbaa !27
  %t119 = load i1, ptr @olang_2esole_2ecompiler_2flineedit_3aEditor_2e3
  br i1 %t119, label %bb23, label %bb24
bb22:
  call void @__olang_check_failed(ptr @olang_loc_126b4ead7e969a49_c70e2460580ad75)
  unreachable
bb23:
  %t121 = load { i64, ptr }, ptr %l38
  %t122 = extractvalue { i64, ptr } %t121, 1
  call void @__olang_region_release(ptr %t122)
  store { i64, ptr } zeroinitializer, ptr %l38
  br label %bb24
bb24:
  %t123 = load ptr, ptr %l0, !tbaa !29
  store ptr %t123, ptr %l40, !tbaa !29
  %t124 = load ptr, ptr %l40, !tbaa !29
  %t125 = getelementptr %"compiler/lineedit:Editor", ptr %t124, i32 0, i32 4
  %t126 = load i64, ptr %t125, !tbaa !24
  %t127 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t129 = extractvalue { i64, ptr } %t127, 0
  %t132 = add i64 %t126, %t129
  %t134 = load ptr, ptr %l40, !tbaa !29
  %t135 = getelementptr %"compiler/lineedit:Editor", ptr %t134, i32 0, i32 4
  store i64 %t132, ptr %t135, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2einterrupt(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lineedit:Editor", ptr %t1, i32 0, i32 21
  store i1 false, ptr %t3, !tbaa !21
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/lineedit:Editor", ptr %t5, i32 0, i32 3
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  %t13 = getelementptr %"compiler/lineedit:Editor", ptr %t4, i32 0, i32 4
  store i64 %t10, ptr %t13, !tbaa !24
  %t14 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2edraw(ptr %v0, ptr %t14)
  br label %bb1
bb1:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/lineedit:Editor", ptr %t16, i32 0, i32 6
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s0, ptr %t18, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d68, i32 0, i32 1) })
  br label %bb2
bb2:
  %t20 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2ereset(ptr %v0, ptr %t20)
  br label %bb3
bb3:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2ekey(ptr %v0, ptr %a0, i8 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i8
  %l4 = alloca i1
  %l11 = alloca i32
  %l14 = alloca i1
  %l17 = alloca i1
  %l23 = alloca i1
  %l26 = alloca ptr
  %l28 = alloca { i64, ptr }
  %l30 = alloca ptr
  %l35 = alloca i1
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i8 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i8, ptr %l1, !tbaa !22
  %t3 = icmp eq i8 %t1, 13
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l4, !tbaa !21
  br label %bb3
bb2:
  %t5 = load i8, ptr %l1, !tbaa !22
  %t7 = icmp eq i8 %t5, 10
  store i1 %t7, ptr %l4, !tbaa !21
  br label %bb3
bb3:
  %t9 = load i1, ptr %l4, !tbaa !21
  br i1 %t9, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s0)
  store i32 1, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t11 = load i8, ptr %l1, !tbaa !22
  %t13 = icmp eq i8 %t11, 3
  br i1 %t13, label %bb7, label %bb8
bb7:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = call i32 @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2einterrupt(ptr %v0, ptr %t15)
  store i32 %t17, ptr %l11
  br label %bb9
bb8:
  br label %bb10
bb9:
  call void @__olang_scope_close(ptr %s0)
  %t18 = load i32, ptr %l11, !range !{i32 0, i32 4}
  store i32 %t18, ptr %rv
  br label %ret
bb10:
  %t19 = load i8, ptr %l1, !tbaa !22
  %t21 = icmp eq i8 %t19, 4
  br i1 %t21, label %bb11, label %bb12
bb11:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/lineedit:Editor", ptr %t23, i32 0, i32 3
  %t26 = load { i64, ptr }, ptr %t25, !tbaa !27
  %t28 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t26, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d69, i32 0, i32 1) })
  store i1 %t28, ptr %l17
  br label %bb13
bb12:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb14
bb13:
  %t29 = load i1, ptr %l17, !tbaa !21
  store i1 %t29, ptr %l14, !tbaa !21
  br label %bb14
bb14:
  %t30 = load i1, ptr %l14, !tbaa !21
  br i1 %t30, label %bb15, label %bb16
bb15:
  call void @__olang_scope_close(ptr %s0)
  store i32 3, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t32 = load i8, ptr %l1, !tbaa !22
  %t34 = icmp eq i8 %t32, 9
  br i1 %t34, label %bb18, label %bb19
bb18:
  store i8 32, ptr %l1, !tbaa !22
  br label %bb20
bb19:
  br label %bb20
bb20:
  %t36 = load i8, ptr %l1, !tbaa !22
  %t38 = icmp uge i8 %t36, 32
  br i1 %t38, label %bb21, label %bb22
bb21:
  %t40 = load i8, ptr %l1, !tbaa !22
  %t42 = icmp ne i8 %t40, 127
  store i1 %t42, ptr %l23, !tbaa !21
  br label %bb23
bb22:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb23
bb23:
  %t44 = load i1, ptr %l23, !tbaa !21
  br i1 %t44, label %bb24, label %bb25
bb24:
  store %olang.scope zeroinitializer, ptr %s5
  %t45 = load ptr, ptr %l0, !tbaa !29
  store ptr %t45, ptr %l26, !tbaa !29
  %t46 = load i8, ptr %l1, !tbaa !22
  %t48 = call { i64, ptr } @compiler_2flineedit_2eone(ptr %s5, i8 %t46)
  store { i64, ptr } %t48, ptr %l28
  br label %bb26
bb25:
  br label %bb29
bb26:
  %t49 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t50 = extractvalue { i64, ptr } %t49, 0
  %t51 = extractvalue { i64, ptr } %t49, 1
  %t52 = mul i64 %t50, 1
  %t53 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t52)
  call void @llvm.memcpy.p0.p0.i64(ptr %t53, ptr %t51, i64 %t52, i1 false)
  %t54 = insertvalue { i64, ptr } undef, i64 %t50, 0
  %t55 = insertvalue { i64, ptr } %t54, ptr %t53, 1
  %t56 = load ptr, ptr %l26, !tbaa !29
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2einsert(ptr %v0, ptr %s5, ptr %t56, { i64, ptr } %t55)
  br label %bb27
bb27:
  %t58 = load ptr, ptr %l0, !tbaa !29
  store ptr %t58, ptr %l30, !tbaa !29
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/lineedit:Editor", ptr %t59, i32 0, i32 3
  %t62 = load { i64, ptr }, ptr %t61, !tbaa !27
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/lineedit:Editor", ptr %t63, i32 0, i32 4
  %t66 = load i64, ptr %t65, !tbaa !24
  %t69 = call i1 @compiler_2flineedit_2eincomplete(ptr %v0, { i64, ptr } %t62, i64 %t66)
  store i1 %t69, ptr %l35
  br label %bb28
bb28:
  %t70 = load i1, ptr %l35, !tbaa !21
  %t71 = load ptr, ptr %l30, !tbaa !29
  %t72 = getelementptr %"compiler/lineedit:Editor", ptr %t71, i32 0, i32 20
  store i1 %t70, ptr %t72, !tbaa !21
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
bb29:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load i8, ptr %l1, !tbaa !22
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2econtrol(ptr %v0, ptr %t74, i8 %t75)
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i64 @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eleft(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l7 = alloca i64
  %l9 = alloca i64
  %l14 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lineedit:Editor", ptr %t1, i32 0, i32 4
  %t4 = load i64, ptr %t3, !tbaa !24
  store i64 %t4, ptr %l2, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/lineedit:Editor", ptr %t5, i32 0, i32 3
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/lineedit:Editor", ptr %t9, i32 0, i32 4
  %t12 = load i64, ptr %t11, !tbaa !24
  %t15 = call i64 @compiler_2flineedit_2elineStart(ptr %v0, { i64, ptr } %t8, i64 %t12)
  store i64 %t15, ptr %l7
  br label %bb1
bb1:
  %t16 = load i64, ptr %l2, !tbaa !24
  %t17 = load i64, ptr %l7, !tbaa !24
  %t18 = icmp sgt i64 %t16, %t17
  br i1 %t18, label %bb2, label %bb3
bb2:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/lineedit:Editor", ptr %t20, i32 0, i32 3
  %t23 = load { i64, ptr }, ptr %t22, !tbaa !27
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/lineedit:Editor", ptr %t24, i32 0, i32 4
  %t27 = load i64, ptr %t26, !tbaa !24
  %t30 = call i64 @compiler_2flineedit_2eprevAt(ptr %v0, { i64, ptr } %t23, i64 %t27)
  store i64 %t30, ptr %l14
  br label %bb4
bb3:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/lineedit:Editor", ptr %t31, i32 0, i32 4
  %t34 = load i64, ptr %t33, !tbaa !24
  store i64 %t34, ptr %l9, !tbaa !24
  br label %bb5
bb4:
  %t36 = load i64, ptr %l14, !tbaa !24
  store i64 %t36, ptr %l9, !tbaa !24
  br label %bb5
bb5:
  %t37 = load i64, ptr %l9, !tbaa !24
  store i64 %t37, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i32 @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2emeta(ptr %v0, ptr %a0, i8 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i8
  %l7 = alloca i1
  %l16 = alloca i32
  %l19 = alloca ptr
  %l24 = alloca i64
  %l27 = alloca ptr
  %l32 = alloca i64
  %l35 = alloca ptr
  %l37 = alloca i64
  %l42 = alloca i64
  %l45 = alloca i1
  %l48 = alloca ptr
  %l53 = alloca i64
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i8 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lineedit:Editor", ptr %t1, i32 0, i32 21
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eacceptSearch(ptr %v0, ptr %t6)
  br label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb4
bb4:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/lineedit:Editor", ptr %t8, i32 0, i32 0
  %t11 = load i1, ptr %t10, !tbaa !21
  br i1 %t11, label %bb5, label %bb6
bb5:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/lineedit:Editor", ptr %t13, i32 0, i32 5
  %t16 = load i1, ptr %t15, !tbaa !21
  %t18 = xor i1 %t16, true
  store i1 %t18, ptr %l7, !tbaa !21
  br label %bb7
bb6:
  store i1 false, ptr %l7, !tbaa !21
  br label %bb7
bb7:
  %t20 = load i1, ptr %l7, !tbaa !21
  br i1 %t20, label %bb8, label %bb9
bb8:
  %t21 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2etoNormal(ptr %v0, ptr %t21)
  br label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb11
bb11:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/lineedit:Editor", ptr %t23, i32 0, i32 0
  %t26 = load i1, ptr %t25, !tbaa !21
  br i1 %t26, label %bb12, label %bb13
bb12:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load i8, ptr %l1, !tbaa !22
  %t32 = call i32 @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2estep(ptr %v0, ptr %t28, i8 %t29)
  store i32 %t32, ptr %l16
  br label %bb14
bb13:
  br label %bb15
bb14:
  %t33 = load i32, ptr %l16, !range !{i32 0, i32 4}
  store i32 %t33, ptr %rv
  br label %ret
bb15:
  %t34 = load i8, ptr %l1, !tbaa !22
  %t36 = icmp eq i8 %t34, 98
  br i1 %t36, label %bb16, label %bb17
bb16:
  %t38 = load ptr, ptr %l0, !tbaa !29
  store ptr %t38, ptr %l19, !tbaa !29
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/lineedit:Editor", ptr %t39, i32 0, i32 3
  %t42 = load { i64, ptr }, ptr %t41, !tbaa !27
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/lineedit:Editor", ptr %t43, i32 0, i32 4
  %t46 = load i64, ptr %t45, !tbaa !24
  %t49 = call i64 @compiler_2flineedit_2ewordBack(ptr %v0, { i64, ptr } %t42, i64 %t46)
  store i64 %t49, ptr %l24
  br label %bb18
bb17:
  br label %bb19
bb18:
  %t50 = load i64, ptr %l24, !tbaa !24
  %t51 = load ptr, ptr %l19, !tbaa !29
  %t52 = getelementptr %"compiler/lineedit:Editor", ptr %t51, i32 0, i32 4
  store i64 %t50, ptr %t52, !tbaa !24
  br label %bb19
bb19:
  %t53 = load i8, ptr %l1, !tbaa !22
  %t55 = icmp eq i8 %t53, 102
  br i1 %t55, label %bb20, label %bb21
bb20:
  %t57 = load ptr, ptr %l0, !tbaa !29
  store ptr %t57, ptr %l27, !tbaa !29
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/lineedit:Editor", ptr %t58, i32 0, i32 3
  %t61 = load { i64, ptr }, ptr %t60, !tbaa !27
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/lineedit:Editor", ptr %t62, i32 0, i32 4
  %t65 = load i64, ptr %t64, !tbaa !24
  %t68 = call i64 @compiler_2flineedit_2ewordEnd(ptr %v0, { i64, ptr } %t61, i64 %t65)
  store i64 %t68, ptr %l32
  br label %bb22
bb21:
  br label %bb23
bb22:
  %t69 = load i64, ptr %l32, !tbaa !24
  %t70 = load ptr, ptr %l27, !tbaa !29
  %t71 = getelementptr %"compiler/lineedit:Editor", ptr %t70, i32 0, i32 4
  store i64 %t69, ptr %t71, !tbaa !24
  br label %bb23
bb23:
  %t72 = load i8, ptr %l1, !tbaa !22
  %t74 = icmp eq i8 %t72, 100
  br i1 %t74, label %bb24, label %bb25
bb24:
  %t76 = load ptr, ptr %l0, !tbaa !29
  store ptr %t76, ptr %l35, !tbaa !29
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/lineedit:Editor", ptr %t77, i32 0, i32 4
  %t80 = load i64, ptr %t79, !tbaa !24
  store i64 %t80, ptr %l37, !tbaa !24
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/lineedit:Editor", ptr %t81, i32 0, i32 3
  %t84 = load { i64, ptr }, ptr %t83, !tbaa !27
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/lineedit:Editor", ptr %t85, i32 0, i32 4
  %t88 = load i64, ptr %t87, !tbaa !24
  %t91 = call i64 @compiler_2flineedit_2ewordEnd(ptr %v0, { i64, ptr } %t84, i64 %t88)
  store i64 %t91, ptr %l42
  br label %bb26
bb25:
  br label %bb28
bb26:
  %t92 = load ptr, ptr %l35, !tbaa !29
  %t93 = load i64, ptr %l37, !tbaa !24
  %t94 = load i64, ptr %l42, !tbaa !24
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eremove(ptr %v0, ptr %t92, i64 %t93, i64 %t94, i1 true)
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t95 = load i8, ptr %l1, !tbaa !22
  %t97 = icmp eq i8 %t95, 127
  br i1 %t97, label %bb29, label %bb30
bb29:
  store i1 true, ptr %l45, !tbaa !21
  br label %bb31
bb30:
  %t99 = load i8, ptr %l1, !tbaa !22
  %t101 = icmp eq i8 %t99, 8
  store i1 %t101, ptr %l45, !tbaa !21
  br label %bb31
bb31:
  %t103 = load i1, ptr %l45, !tbaa !21
  br i1 %t103, label %bb32, label %bb33
bb32:
  %t104 = load ptr, ptr %l0, !tbaa !29
  store ptr %t104, ptr %l48, !tbaa !29
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t107 = getelementptr %"compiler/lineedit:Editor", ptr %t105, i32 0, i32 3
  %t108 = load { i64, ptr }, ptr %t107, !tbaa !27
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = getelementptr %"compiler/lineedit:Editor", ptr %t109, i32 0, i32 4
  %t112 = load i64, ptr %t111, !tbaa !24
  %t115 = call i64 @compiler_2flineedit_2ewordBack(ptr %v0, { i64, ptr } %t108, i64 %t112)
  store i64 %t115, ptr %l53
  br label %bb34
bb33:
  br label %bb36
bb34:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t118 = getelementptr %"compiler/lineedit:Editor", ptr %t116, i32 0, i32 4
  %t119 = load i64, ptr %t118, !tbaa !24
  %t120 = load ptr, ptr %l48, !tbaa !29
  %t121 = load i64, ptr %l53, !tbaa !24
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eremove(ptr %v0, ptr %t120, i64 %t121, i64 %t119, i1 true)
  br label %bb35
bb35:
  br label %bb36
bb36:
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i32, i64 } @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2emoved(ptr %v0, ptr %a0, i8 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l16 = alloca i64
  %l19 = alloca i64
  %l37 = alloca i64
  %l41 = alloca i64
  %l42 = alloca i32
  %rv = alloca { i32, i64 }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lineedit:Editor", ptr %t1, i32 0, i32 4
  %t4 = load i64, ptr %t3, !tbaa !24
  store i64 %t4, ptr %l3, !tbaa !24
  store i64 0, ptr %l4, !tbaa !24
  store i64 %a2, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t8 = load i64, ptr %l5, !tbaa !24
  %t9 = load i64, ptr %l4, !tbaa !24
  %t12 = icmp sgt i64 %t8, %t9
  br i1 %t12, label %bb1, label %bb2
bb1:
  %t14 = load i64, ptr %l6, !tbaa !24
  %t16 = icmp sgt i64 %t14, 0
  br i1 %t16, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l16, !tbaa !24
  br label %bb6
bb3:
  %t18 = load i64, ptr %l5, !tbaa !24
  %t19 = load i64, ptr %l4, !tbaa !24
  %t22 = sub i64 %t18, %t19
  %t23 = load i64, ptr %l6, !tbaa !24
  %t26 = add i64 %t22, %t23
  %t28 = sub i64 %t26, 1
  %t29 = load i64, ptr %l6, !tbaa !24
  %t32 = sdiv i64 %t28, %t29
  store i64 %t32, ptr %l19, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb5
bb5:
  %t34 = load i64, ptr %l19, !tbaa !24
  store i64 %t34, ptr %l16, !tbaa !24
  br label %bb6
bb6:
  %t35 = load i64, ptr %l16, !tbaa !24
  store i64 %t35, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb7
bb7:
  %t36 = load i64, ptr %l8, !tbaa !24
  %t37 = load i64, ptr %l7, !tbaa !24
  %t40 = icmp slt i64 %t36, %t37
  %t42 = xor i1 %t40, true
  br i1 %t42, label %bb8, label %bb9
bb8:
  br label %bb15
bb9:
  br label %bb10
bb10:
  %t44 = load i64, ptr %l4, !tbaa !24
  %t45 = load i64, ptr %l8, !tbaa !24
  %t46 = load i64, ptr %l6, !tbaa !24
  %t49 = mul i64 %t45, %t46
  %t52 = add i64 %t44, %t49
  store i64 %t52, ptr %l9, !tbaa !24
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = load i64, ptr %l3, !tbaa !24
  %t60 = call { i32, i64 } @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2etarget(ptr %v0, ptr %t54, i8 %a1, i64 %t56)
  %t61 = extractvalue { i32, i64 } %t60, 1
  %t62 = extractvalue { i32, i64 } %t60, 0
  store i32 %t62, ptr %l42
  %t63 = icmp ne i32 %t62, 0
  br i1 %t63, label %bb12, label %ok.64, !prof !99
ok.64:
  store i64 %t61, ptr %l41
  br label %bb11
bb11:
  %t65 = load i64, ptr %l41, !tbaa !24
  store i64 %t65, ptr %l37, !tbaa !24
  br label %bb13
bb12:
  %t66 = load i32, ptr %l42, !tbaa !23
  %t67 = lshr i32 %t66, 16
  %t68 = and i32 %t66, 65535
  %t69 = icmp eq i32 %t67, 1
  %t70 = select i1 %t69, i32 1, i32 0
  %t71 = icmp eq i32 %t66, 0
  %t72 = shl i32 %t70, 16
  %t73 = or i32 %t72, %t68
  %t74 = select i1 %t71, i32 0, i32 %t73
  %t76 = insertvalue { i32, i64 } zeroinitializer, i32 %t74, 0
  store { i32, i64 } %t76, ptr %rv
  br label %ret
bb13:
  %t77 = load i64, ptr %l37, !tbaa !24
  store i64 %t77, ptr %l3, !tbaa !24
  br label %bb14
bb14:
  %t78 = load i64, ptr %l8, !tbaa !24
  %t80 = add i64 %t78, 1
  store i64 %t80, ptr %l8, !tbaa !24
  br label %bb7
bb15:
  %t82 = load i64, ptr %l3, !tbaa !24
  %t84 = insertvalue { i32, i64 } zeroinitializer, i64 %t82, 1
  store { i32, i64 } %t84, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i64 }, ptr %rv
  ret { i32, i64 } %rr
}

define dso_local void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2enewer(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l5 = alloca i64
  %l7 = alloca ptr
  %l10 = alloca ptr
  %l12 = alloca i64
  %l15 = alloca i64
  %l17 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l27 = alloca ptr
  %l29 = alloca i64
  %l32 = alloca i64
  %l34 = alloca i64
  %l40 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lineedit:Editor", ptr %t1, i32 0, i32 12
  %t4 = load i64, ptr %t3, !tbaa !24
  store i64 %t4, ptr %l2, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/lineedit:Editor", ptr %t5, i32 0, i32 7
  %t9 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t7)
  store i64 %t9, ptr %l5
  br label %bb1
bb1:
  %t10 = load i64, ptr %l2, !tbaa !24
  %t11 = load i64, ptr %l5, !tbaa !24
  %t12 = icmp sge i64 %t10, %t11
  br i1 %t12, label %bb2, label %bb3
bb2:
  br label %ret
bb3:
  br label %bb4
bb4:
  %t14 = load ptr, ptr %l0, !tbaa !29
  store ptr %t14, ptr %l7, !tbaa !29
  %t15 = load ptr, ptr %l7, !tbaa !29
  %t16 = getelementptr %"compiler/lineedit:Editor", ptr %t15, i32 0, i32 12
  %t17 = load i64, ptr %t16, !tbaa !24
  %t19 = add i64 %t17, 1
  %t21 = load ptr, ptr %l7, !tbaa !29
  %t22 = getelementptr %"compiler/lineedit:Editor", ptr %t21, i32 0, i32 12
  store i64 %t19, ptr %t22, !tbaa !24
  %t23 = load ptr, ptr %l0, !tbaa !29
  store ptr %t23, ptr %l10, !tbaa !29
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/lineedit:Editor", ptr %t24, i32 0, i32 12
  %t27 = load i64, ptr %t26, !tbaa !24
  store i64 %t27, ptr %l12, !tbaa !24
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/lineedit:Editor", ptr %t28, i32 0, i32 7
  %t32 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t30)
  store i64 %t32, ptr %l15
  br label %bb5
bb5:
  %t33 = load i64, ptr %l12, !tbaa !24
  %t34 = load i64, ptr %l15, !tbaa !24
  %t35 = icmp eq i64 %t33, %t34
  br i1 %t35, label %bb6, label %bb7
bb6:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/lineedit:Editor", ptr %t37, i32 0, i32 13
  %t40 = load { i64, ptr }, ptr %t39, !tbaa !27
  store { i64, ptr } %t40, ptr %l17, !tbaa !27
  br label %bb9
bb7:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/lineedit:Editor", ptr %t42, i32 0, i32 7
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/lineedit:Editor", ptr %t45, i32 0, i32 12
  %t48 = load i64, ptr %t47, !tbaa !24
  %t51 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t44, i64 %t48)
  store { i64, ptr } %t51, ptr %l24
  br label %bb8
bb8:
  %t52 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t52, ptr %l17, !tbaa !27
  br label %bb9
bb9:
  %t53 = load ptr, ptr %l10, !tbaa !29
  %t54 = getelementptr %"compiler/lineedit:Editor", ptr %t53, i32 0, i32 3
  %t55 = load { i64, ptr }, ptr %t54, !tbaa !27
  store { i64, ptr } %t55, ptr %l25, !tbaa !27
  %t56 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t57 = load ptr, ptr %l10, !tbaa !29
  %t58 = getelementptr %"compiler/lineedit:Editor", ptr %t57, i32 0, i32 3
  store { i64, ptr } %t56, ptr %t58, !tbaa !27
  %t59 = load i1, ptr @olang_2esole_2ecompiler_2flineedit_3aEditor_2e3
  br i1 %t59, label %bb10, label %bb11
bb10:
  %t61 = load { i64, ptr }, ptr %l25
  %t62 = extractvalue { i64, ptr } %t61, 1
  call void @__olang_region_release(ptr %t62)
  store { i64, ptr } zeroinitializer, ptr %l25
  br label %bb11
bb11:
  %t63 = load ptr, ptr %l0, !tbaa !29
  store ptr %t63, ptr %l27, !tbaa !29
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/lineedit:Editor", ptr %t64, i32 0, i32 12
  %t67 = load i64, ptr %t66, !tbaa !24
  store i64 %t67, ptr %l29, !tbaa !24
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/lineedit:Editor", ptr %t68, i32 0, i32 7
  %t72 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t70)
  store i64 %t72, ptr %l32
  br label %bb12
bb12:
  %t73 = load i64, ptr %l29, !tbaa !24
  %t74 = load i64, ptr %l32, !tbaa !24
  %t75 = icmp eq i64 %t73, %t74
  br i1 %t75, label %bb13, label %bb14
bb13:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/lineedit:Editor", ptr %t77, i32 0, i32 3
  %t80 = load { i64, ptr }, ptr %t79, !tbaa !27
  %t82 = extractvalue { i64, ptr } %t80, 0
  store i64 %t82, ptr %l34, !tbaa !24
  br label %bb16
bb14:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr %"compiler/lineedit:Editor", ptr %t84, i32 0, i32 3
  %t87 = load { i64, ptr }, ptr %t86, !tbaa !27
  %t89 = call i64 @compiler_2flineedit_2elineEnd(ptr %v0, { i64, ptr } %t87, i64 0)
  store i64 %t89, ptr %l40
  br label %bb15
bb15:
  %t90 = load i64, ptr %l40, !tbaa !24
  store i64 %t90, ptr %l34, !tbaa !24
  br label %bb16
bb16:
  %t91 = load i64, ptr %l34, !tbaa !24
  %t92 = load ptr, ptr %l27, !tbaa !29
  %t93 = getelementptr %"compiler/lineedit:Editor", ptr %t92, i32 0, i32 4
  store i64 %t91, ptr %t93, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2enormalKey(ptr %v0, ptr %a0, i8 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i8
  %l2 = alloca i64
  %l6 = alloca i1
  %l13 = alloca i32
  %l16 = alloca i1
  %l19 = alloca i1
  %l26 = alloca i32
  %l29 = alloca i1
  %l32 = alloca i1
  %l35 = alloca i1
  %l51 = alloca i64
  %l64 = alloca i32
  %l65 = alloca i64
  %l69 = alloca i64
  %l70 = alloca i32
  %l72 = alloca i1
  %l76 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i8 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i8, ptr %l1, !tbaa !22
  %t3 = icmp eq i8 %t1, 13
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb3
bb2:
  %t5 = load i8, ptr %l1, !tbaa !22
  %t7 = icmp eq i8 %t5, 10
  store i1 %t7, ptr %l6, !tbaa !21
  br label %bb3
bb3:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s0)
  store i32 1, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t11 = load i8, ptr %l1, !tbaa !22
  %t13 = icmp eq i8 %t11, 3
  br i1 %t13, label %bb7, label %bb8
bb7:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = call i32 @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2einterrupt(ptr %v0, ptr %t15)
  store i32 %t17, ptr %l13
  br label %bb9
bb8:
  br label %bb10
bb9:
  call void @__olang_scope_close(ptr %s0)
  %t18 = load i32, ptr %l13, !range !{i32 0, i32 4}
  store i32 %t18, ptr %rv
  br label %ret
bb10:
  %t19 = load i8, ptr %l1, !tbaa !22
  %t21 = icmp eq i8 %t19, 4
  br i1 %t21, label %bb11, label %bb12
bb11:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/lineedit:Editor", ptr %t23, i32 0, i32 3
  %t26 = load { i64, ptr }, ptr %t25, !tbaa !27
  %t28 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t26, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d70, i32 0, i32 1) })
  store i1 %t28, ptr %l19
  br label %bb13
bb12:
  store i1 false, ptr %l16, !tbaa !21
  br label %bb14
bb13:
  %t29 = load i1, ptr %l19, !tbaa !21
  store i1 %t29, ptr %l16, !tbaa !21
  br label %bb14
bb14:
  %t30 = load i1, ptr %l16, !tbaa !21
  br i1 %t30, label %bb15, label %bb16
bb15:
  call void @__olang_scope_close(ptr %s0)
  store i32 3, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/lineedit:Editor", ptr %t32, i32 0, i32 33
  %t35 = load i8, ptr %t34, !tbaa !22
  %t37 = icmp eq i8 %t35, 114
  br i1 %t37, label %bb18, label %bb19
bb18:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load i8, ptr %l1, !tbaa !22
  %t43 = call i32 @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2ereplace(ptr %v0, ptr %t39, i8 %t40)
  store i32 %t43, ptr %l26
  br label %bb20
bb19:
  br label %bb21
bb20:
  call void @__olang_scope_close(ptr %s0)
  %t44 = load i32, ptr %l26, !range !{i32 0, i32 4}
  store i32 %t44, ptr %rv
  br label %ret
bb21:
  %t45 = load i8, ptr %l1, !tbaa !22
  %t47 = icmp uge i8 %t45, 49
  br i1 %t47, label %bb22, label %bb23
bb22:
  %t49 = load i8, ptr %l1, !tbaa !22
  %t51 = icmp ule i8 %t49, 57
  store i1 %t51, ptr %l29, !tbaa !21
  br label %bb24
bb23:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb24
bb24:
  %t53 = load i1, ptr %l29, !tbaa !21
  br i1 %t53, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l32, !tbaa !21
  br label %bb30
bb26:
  %t54 = load i8, ptr %l1, !tbaa !22
  %t56 = icmp eq i8 %t54, 48
  br i1 %t56, label %bb27, label %bb28
bb27:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/lineedit:Editor", ptr %t58, i32 0, i32 32
  %t61 = load i64, ptr %t60, !tbaa !24
  %t63 = icmp sgt i64 %t61, 0
  store i1 %t63, ptr %l35, !tbaa !21
  br label %bb29
bb28:
  store i1 false, ptr %l35, !tbaa !21
  br label %bb29
bb29:
  %t65 = load i1, ptr %l35, !tbaa !21
  store i1 %t65, ptr %l32, !tbaa !21
  br label %bb30
bb30:
  %t66 = load i1, ptr %l32, !tbaa !21
  br i1 %t66, label %bb31, label %bb32
bb31:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/lineedit:Editor", ptr %t68, i32 0, i32 32
  %t71 = load i64, ptr %t70, !tbaa !24
  %t73 = mul i64 %t71, 10
  %t74 = load i8, ptr %l1, !tbaa !22
  %t76 = sub i8 %t74, 48
  %t78 = zext i8 %t76 to i64
  %t81 = add i64 %t73, %t78
  %t84 = getelementptr %"compiler/lineedit:Editor", ptr %t67, i32 0, i32 32
  store i64 %t81, ptr %t84, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
bb32:
  br label %bb33
bb33:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/lineedit:Editor", ptr %t86, i32 0, i32 32
  %t89 = load i64, ptr %t88, !tbaa !24
  %t91 = icmp sgt i64 %t89, 0
  br i1 %t91, label %bb34, label %bb35
bb34:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/lineedit:Editor", ptr %t93, i32 0, i32 32
  %t96 = load i64, ptr %t95, !tbaa !24
  store i64 %t96, ptr %l51, !tbaa !24
  br label %bb36
bb35:
  store i64 1, ptr %l51, !tbaa !24
  br label %bb36
bb36:
  %t98 = load i64, ptr %l51, !tbaa !24
  store i64 %t98, ptr %l2, !tbaa !24
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/lineedit:Editor", ptr %t99, i32 0, i32 32
  store i64 0, ptr %t101, !tbaa !24
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/lineedit:Editor", ptr %t102, i32 0, i32 33
  %t105 = load i8, ptr %t104, !tbaa !22
  %t107 = icmp ne i8 %t105, 0
  br i1 %t107, label %bb37, label %bb38
bb37:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t110 = load i8, ptr %l1, !tbaa !22
  %t111 = load i64, ptr %l2, !tbaa !24
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"compiler/lineedit:Editor", ptr %t112, i32 0, i32 34
  %t115 = load i64, ptr %t114, !tbaa !24
  %t118 = mul i64 %t111, %t115
  %t122 = call i32 @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eoperate(ptr %v0, ptr %t109, i8 %t110, i64 %t118)
  store i32 %t122, ptr %l64
  br label %bb39
bb38:
  br label %bb40
bb39:
  call void @__olang_scope_close(ptr %s0)
  %t123 = load i32, ptr %l64, !range !{i32 0, i32 4}
  store i32 %t123, ptr %rv
  br label %ret
bb40:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t125 = load i8, ptr %l1, !tbaa !22
  %t126 = load i64, ptr %l2, !tbaa !24
  %t130 = call { i32, i64 } @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2emoved(ptr %v0, ptr %t124, i8 %t125, i64 %t126)
  %t131 = extractvalue { i32, i64 } %t130, 1
  %t132 = extractvalue { i32, i64 } %t130, 0
  store i32 %t132, ptr %l70
  %t133 = icmp ne i32 %t132, 0
  br i1 %t133, label %bb42, label %ok.134, !prof !99
ok.134:
  store i64 %t131, ptr %l69
  br label %bb41
bb41:
  %t135 = load i64, ptr %l69, !tbaa !24
  store i64 %t135, ptr %l65, !tbaa !24
  br label %bb45
bb42:
  %t136 = load i32, ptr %l70, !tbaa !23
  %t137 = ashr i32 %t136, 16
  %t139 = icmp eq i32 %t137, 1
  store i1 %t139, ptr %l72, !tbaa !21
  br label %bb43
bb43:
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t141 = load i8, ptr %l1, !tbaa !22
  %t142 = load i64, ptr %l2, !tbaa !24
  %t146 = call i32 @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2ecommand(ptr %v0, ptr %t140, i8 %t141, i64 %t142)
  store i32 %t146, ptr %l76
  br label %bb44
bb44:
  call void @__olang_scope_close(ptr %s0)
  %t147 = load i32, ptr %l76, !range !{i32 0, i32 4}
  store i32 %t147, ptr %rv
  br label %ret
bb45:
  %t148 = load i64, ptr %l65, !tbaa !24
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t153 = getelementptr %"compiler/lineedit:Editor", ptr %t149, i32 0, i32 4
  store i64 %t148, ptr %t153, !tbaa !24
  %t154 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eclamp(ptr %v0, ptr %t154)
  br label %bb46
bb46:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eolder(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l5 = alloca i64
  %l8 = alloca i64
  %l10 = alloca ptr
  %l13 = alloca { i64, ptr }
  %l15 = alloca ptr
  %l18 = alloca ptr
  %l23 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lineedit:Editor", ptr %t1, i32 0, i32 12
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp eq i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/lineedit:Editor", ptr %t8, i32 0, i32 12
  %t11 = load i64, ptr %t10, !tbaa !24
  store i64 %t11, ptr %l5, !tbaa !24
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/lineedit:Editor", ptr %t12, i32 0, i32 7
  %t16 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t14)
  store i64 %t16, ptr %l8
  br label %bb4
bb4:
  %t17 = load i64, ptr %l5, !tbaa !24
  %t18 = load i64, ptr %l8, !tbaa !24
  %t19 = icmp eq i64 %t17, %t18
  br i1 %t19, label %bb5, label %bb6
bb5:
  %t21 = load ptr, ptr %l0, !tbaa !29
  store ptr %t21, ptr %l10, !tbaa !29
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/lineedit:Editor", ptr %t22, i32 0, i32 3
  %t25 = load { i64, ptr }, ptr %t24, !tbaa !27
  %t26 = load ptr, ptr %l10, !tbaa !29
  %t27 = getelementptr %"compiler/lineedit:Editor", ptr %t26, i32 0, i32 13
  %t28 = load { i64, ptr }, ptr %t27, !tbaa !27
  store { i64, ptr } %t28, ptr %l13, !tbaa !27
  %t30 = load ptr, ptr %l10, !tbaa !29
  %t31 = getelementptr %"compiler/lineedit:Editor", ptr %t30, i32 0, i32 13
  store { i64, ptr } %t25, ptr %t31, !tbaa !27
  %t32 = load i1, ptr @olang_2esole_2ecompiler_2flineedit_3aEditor_2e13
  br i1 %t32, label %bb7, label %bb8
bb6:
  br label %bb9
bb7:
  %t34 = load { i64, ptr }, ptr %l13
  %t35 = extractvalue { i64, ptr } %t34, 1
  call void @__olang_region_release(ptr %t35)
  store { i64, ptr } zeroinitializer, ptr %l13
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t36 = load ptr, ptr %l0, !tbaa !29
  store ptr %t36, ptr %l15, !tbaa !29
  %t37 = load ptr, ptr %l15, !tbaa !29
  %t38 = getelementptr %"compiler/lineedit:Editor", ptr %t37, i32 0, i32 12
  %t39 = load i64, ptr %t38, !tbaa !24
  %t41 = sub i64 %t39, 1
  %t43 = load ptr, ptr %l15, !tbaa !29
  %t44 = getelementptr %"compiler/lineedit:Editor", ptr %t43, i32 0, i32 12
  store i64 %t41, ptr %t44, !tbaa !24
  %t45 = load ptr, ptr %l0, !tbaa !29
  store ptr %t45, ptr %l18, !tbaa !29
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/lineedit:Editor", ptr %t46, i32 0, i32 7
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/lineedit:Editor", ptr %t49, i32 0, i32 12
  %t52 = load i64, ptr %t51, !tbaa !24
  %t55 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t48, i64 %t52)
  store { i64, ptr } %t55, ptr %l23
  br label %bb10
bb10:
  %t56 = load ptr, ptr %l18, !tbaa !29
  %t57 = getelementptr %"compiler/lineedit:Editor", ptr %t56, i32 0, i32 3
  %t58 = load { i64, ptr }, ptr %t57, !tbaa !27
  store { i64, ptr } %t58, ptr %l24, !tbaa !27
  %t59 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t60 = load ptr, ptr %l18, !tbaa !29
  %t61 = getelementptr %"compiler/lineedit:Editor", ptr %t60, i32 0, i32 3
  store { i64, ptr } %t59, ptr %t61, !tbaa !27
  %t62 = load i1, ptr @olang_2esole_2ecompiler_2flineedit_3aEditor_2e3
  br i1 %t62, label %bb11, label %bb12
bb11:
  %t64 = load { i64, ptr }, ptr %l24
  %t65 = extractvalue { i64, ptr } %t64, 1
  call void @__olang_region_release(ptr %t65)
  store { i64, ptr } zeroinitializer, ptr %l24
  br label %bb12
bb12:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/lineedit:Editor", ptr %t67, i32 0, i32 3
  %t70 = load { i64, ptr }, ptr %t69, !tbaa !27
  %t72 = extractvalue { i64, ptr } %t70, 0
  %t75 = getelementptr %"compiler/lineedit:Editor", ptr %t66, i32 0, i32 4
  store i64 %t72, ptr %t75, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eoperate(ptr %v0, ptr %a0, i8 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i8
  %l2 = alloca i64
  %l3 = alloca i8
  %l4 = alloca i1
  %l5 = alloca i8
  %l6 = alloca i64
  %l7 = alloca i64
  %l17 = alloca i32
  %l20 = alloca i1
  %l23 = alloca i1
  %l30 = alloca i1
  %l32 = alloca { i64, ptr }
  %l36 = alloca i64
  %l39 = alloca i8
  %l41 = alloca i64
  %l45 = alloca i64
  %l46 = alloca i32
  %l48 = alloca i1
  %l53 = alloca i64
  %l59 = alloca i64
  %l64 = alloca i64
  %l72 = alloca i64
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i8 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lineedit:Editor", ptr %t1, i32 0, i32 33
  %t4 = load i8, ptr %t3, !tbaa !22
  store i8 %t4, ptr %l3, !tbaa !22
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/lineedit:Editor", ptr %t6, i32 0, i32 33
  store i8 0, ptr %t8, !tbaa !22
  %t9 = load i8, ptr %l1, !tbaa !22
  %t10 = load i8, ptr %l3, !tbaa !22
  %t13 = icmp eq i8 %t9, %t10
  br i1 %t13, label %bb1, label %bb2
bb1:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load i8, ptr %l3, !tbaa !22
  %t19 = call i32 @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2ewholeLine(ptr %v0, ptr %t15, i8 %t16)
  store i32 %t19, ptr %l17
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t20 = load i32, ptr %l17, !range !{i32 0, i32 4}
  store i32 %t20, ptr %rv
  br label %ret
bb4:
  %t21 = load i8, ptr %l3, !tbaa !22
  %t23 = icmp eq i8 %t21, 99
  br i1 %t23, label %bb5, label %bb6
bb5:
  %t25 = load i8, ptr %l1, !tbaa !22
  %t27 = icmp eq i8 %t25, 119
  store i1 %t27, ptr %l20, !tbaa !21
  br label %bb7
bb6:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb7
bb7:
  %t29 = load i1, ptr %l20, !tbaa !21
  br i1 %t29, label %bb8, label %bb9
bb8:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/lineedit:Editor", ptr %t30, i32 0, i32 4
  %t33 = load i64, ptr %t32, !tbaa !24
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/lineedit:Editor", ptr %t34, i32 0, i32 3
  %t37 = load { i64, ptr }, ptr %t36, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t37, 0
  %t42 = icmp slt i64 %t33, %t39
  store i1 %t42, ptr %l23, !tbaa !21
  br label %bb10
bb9:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb10
bb10:
  %t44 = load i1, ptr %l23, !tbaa !21
  br i1 %t44, label %bb11, label %bb12
bb11:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/lineedit:Editor", ptr %t45, i32 0, i32 3
  %t48 = load { i64, ptr }, ptr %t47, !tbaa !27
  store { i64, ptr } %t48, ptr %l32, !tbaa !27
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/lineedit:Editor", ptr %t49, i32 0, i32 4
  %t52 = load i64, ptr %t51, !tbaa !24
  %t54 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr i8, ptr %t55, i64 %t52
  %t57 = load i8, ptr %t56, !tbaa !32
  %t59 = call i64 @compiler_2flineedit_2eclass(i8 %t57)
  store i64 %t59, ptr %l36
  br label %bb13
bb12:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb14
bb13:
  %t60 = load i64, ptr %l36, !tbaa !24
  %t61 = icmp ne i64 %t60, 0
  store i1 %t61, ptr %l30, !tbaa !21
  br label %bb14
bb14:
  %t63 = load i1, ptr %l30, !tbaa !21
  store i1 %t63, ptr %l4, !tbaa !21
  %t64 = load i1, ptr %l4, !tbaa !21
  br i1 %t64, label %bb15, label %bb16
bb15:
  store i8 101, ptr %l39, !tbaa !22
  br label %bb17
bb16:
  %t66 = load i8, ptr %l1, !tbaa !22
  store i8 %t66, ptr %l39, !tbaa !22
  br label %bb17
bb17:
  %t68 = load i8, ptr %l39, !tbaa !22
  store i8 %t68, ptr %l5, !tbaa !22
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load i8, ptr %l5, !tbaa !22
  %t71 = load i64, ptr %l2, !tbaa !24
  %t75 = call { i32, i64 } @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2emoved(ptr %v0, ptr %t69, i8 %t70, i64 %t71)
  %t76 = extractvalue { i32, i64 } %t75, 1
  %t77 = extractvalue { i32, i64 } %t75, 0
  store i32 %t77, ptr %l46
  %t78 = icmp ne i32 %t77, 0
  br i1 %t78, label %bb19, label %ok.79, !prof !99
ok.79:
  store i64 %t76, ptr %l45
  br label %bb18
bb18:
  %t80 = load i64, ptr %l45, !tbaa !24
  store i64 %t80, ptr %l41, !tbaa !24
  br label %bb21
bb19:
  %t81 = load i32, ptr %l46, !tbaa !23
  %t82 = ashr i32 %t81, 16
  %t84 = icmp eq i32 %t82, 1
  store i1 %t84, ptr %l48, !tbaa !21
  br label %bb20
bb20:
  store i32 0, ptr %rv
  br label %ret
bb21:
  %t86 = load i64, ptr %l41, !tbaa !24
  store i64 %t86, ptr %l6, !tbaa !24
  %t87 = load i1, ptr %l4, !tbaa !21
  br i1 %t87, label %bb22, label %bb23
bb22:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = load i64, ptr %l2, !tbaa !24
  %t93 = call i64 @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2ewordsHere(ptr %v0, ptr %t89, i64 %t90)
  store i64 %t93, ptr %l53
  br label %bb24
bb23:
  br label %bb25
bb24:
  %t94 = load i64, ptr %l53, !tbaa !24
  store i64 %t94, ptr %l6, !tbaa !24
  br label %bb25
bb25:
  %t95 = load i8, ptr %l5, !tbaa !22
  %t97 = icmp eq i8 %t95, 101
  br i1 %t97, label %bb26, label %bb27
bb26:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/lineedit:Editor", ptr %t99, i32 0, i32 3
  %t102 = load { i64, ptr }, ptr %t101, !tbaa !27
  %t103 = load i64, ptr %l6, !tbaa !24
  %t106 = call i64 @compiler_2flineedit_2enextAt(ptr %v0, { i64, ptr } %t102, i64 %t103)
  store i64 %t106, ptr %l59
  br label %bb28
bb27:
  br label %bb29
bb28:
  %t107 = load i64, ptr %l59, !tbaa !24
  store i64 %t107, ptr %l6, !tbaa !24
  br label %bb29
bb29:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/lineedit:Editor", ptr %t108, i32 0, i32 4
  %t111 = load i64, ptr %t110, !tbaa !24
  %t112 = load i64, ptr %l6, !tbaa !24
  %t115 = icmp slt i64 %t111, %t112
  br i1 %t115, label %bb30, label %bb31
bb30:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/lineedit:Editor", ptr %t117, i32 0, i32 4
  %t120 = load i64, ptr %t119, !tbaa !24
  store i64 %t120, ptr %l64, !tbaa !24
  br label %bb32
bb31:
  %t122 = load i64, ptr %l6, !tbaa !24
  store i64 %t122, ptr %l64, !tbaa !24
  br label %bb32
bb32:
  %t124 = load i64, ptr %l64, !tbaa !24
  store i64 %t124, ptr %l7, !tbaa !24
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = getelementptr %"compiler/lineedit:Editor", ptr %t125, i32 0, i32 4
  %t128 = load i64, ptr %t127, !tbaa !24
  %t129 = load i64, ptr %l6, !tbaa !24
  %t132 = icmp slt i64 %t128, %t129
  br i1 %t132, label %bb33, label %bb34
bb33:
  %t134 = load i64, ptr %l6, !tbaa !24
  store i64 %t134, ptr %l72, !tbaa !24
  br label %bb35
bb34:
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t138 = getelementptr %"compiler/lineedit:Editor", ptr %t136, i32 0, i32 4
  %t139 = load i64, ptr %t138, !tbaa !24
  store i64 %t139, ptr %l72, !tbaa !24
  br label %bb35
bb35:
  %t141 = load i64, ptr %l72, !tbaa !24
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t143 = load i64, ptr %l7, !tbaa !24
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eremove(ptr %v0, ptr %t142, i64 %t143, i64 %t141, i1 true)
  br label %bb36
bb36:
  %t148 = load i8, ptr %l3, !tbaa !22
  %t150 = icmp eq i8 %t148, 99
  br i1 %t150, label %bb37, label %bb38
bb37:
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t154 = getelementptr %"compiler/lineedit:Editor", ptr %t152, i32 0, i32 5
  store i1 false, ptr %t154, !tbaa !21
  br label %bb39
bb38:
  br label %bb39
bb39:
  %t155 = load i8, ptr %l3, !tbaa !22
  %t157 = icmp eq i8 %t155, 100
  br i1 %t157, label %bb40, label %bb41
bb40:
  %t159 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eclamp(ptr %v0, ptr %t159)
  br label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb43
bb43:
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2epaste(ptr %v0, ptr %a0, i1 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l5 = alloca i1
  %l7 = alloca i1
  %l9 = alloca i64
  %l14 = alloca i64
  %l16 = alloca ptr
  %l21 = alloca i64
  %l22 = alloca ptr
  %l27 = alloca { i64, ptr }
  %l30 = alloca ptr
  %l35 = alloca i64
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lineedit:Editor", ptr %t1, i32 0, i32 16
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t4, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d71, i32 0, i32 1) })
  store i1 %t6, ptr %l5
  br label %bb1
bb1:
  %t7 = load i1, ptr %l5, !tbaa !21
  br i1 %t7, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb3:
  br label %bb4
bb4:
  br i1 %a1, label %bb5, label %bb6
bb5:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/lineedit:Editor", ptr %t10, i32 0, i32 4
  %t13 = load i64, ptr %t12, !tbaa !24
  store i64 %t13, ptr %l9, !tbaa !24
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/lineedit:Editor", ptr %t14, i32 0, i32 3
  %t17 = load { i64, ptr }, ptr %t16, !tbaa !27
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/lineedit:Editor", ptr %t18, i32 0, i32 4
  %t21 = load i64, ptr %t20, !tbaa !24
  %t24 = call i64 @compiler_2flineedit_2elineEnd(ptr %v0, { i64, ptr } %t17, i64 %t21)
  store i64 %t24, ptr %l14
  br label %bb7
bb6:
  store i1 false, ptr %l7, !tbaa !21
  br label %bb8
bb7:
  %t25 = load i64, ptr %l9, !tbaa !24
  %t26 = load i64, ptr %l14, !tbaa !24
  %t27 = icmp slt i64 %t25, %t26
  store i1 %t27, ptr %l7, !tbaa !21
  br label %bb8
bb8:
  %t29 = load i1, ptr %l7, !tbaa !21
  br i1 %t29, label %bb9, label %bb10
bb9:
  %t30 = load ptr, ptr %l0, !tbaa !29
  store ptr %t30, ptr %l16, !tbaa !29
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/lineedit:Editor", ptr %t31, i32 0, i32 3
  %t34 = load { i64, ptr }, ptr %t33, !tbaa !27
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/lineedit:Editor", ptr %t35, i32 0, i32 4
  %t38 = load i64, ptr %t37, !tbaa !24
  %t41 = call i64 @compiler_2flineedit_2enextAt(ptr %v0, { i64, ptr } %t34, i64 %t38)
  store i64 %t41, ptr %l21
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t42 = load i64, ptr %l21, !tbaa !24
  %t43 = load ptr, ptr %l16, !tbaa !29
  %t44 = getelementptr %"compiler/lineedit:Editor", ptr %t43, i32 0, i32 4
  store i64 %t42, ptr %t44, !tbaa !24
  br label %bb12
bb12:
  %t45 = load ptr, ptr %l0, !tbaa !29
  store ptr %t45, ptr %l22, !tbaa !29
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/lineedit:Editor", ptr %t46, i32 0, i32 16
  %t49 = load { i64, ptr }, ptr %t48, !tbaa !27
  %t54 = call { i64, ptr } @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eRepeat_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %s0, { i64, ptr } %t49, i64 %a2)
  store { i64, ptr } %t54, ptr %l27
  br label %bb13
bb13:
  %t55 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t57 = extractvalue { i64, ptr } %t55, 0
  %t58 = extractvalue { i64, ptr } %t55, 1
  %t59 = mul i64 %t57, 1
  %t60 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t59)
  call void @llvm.memcpy.p0.p0.i64(ptr %t60, ptr %t58, i64 %t59, i1 false)
  %t61 = insertvalue { i64, ptr } undef, i64 %t57, 0
  %t62 = insertvalue { i64, ptr } %t61, ptr %t60, 1
  %t63 = load ptr, ptr %l22, !tbaa !29
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2einsert(ptr %v0, ptr %s0, ptr %t63, { i64, ptr } %t62)
  br label %bb14
bb14:
  %t65 = load ptr, ptr %l0, !tbaa !29
  store ptr %t65, ptr %l30, !tbaa !29
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/lineedit:Editor", ptr %t66, i32 0, i32 3
  %t69 = load { i64, ptr }, ptr %t68, !tbaa !27
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/lineedit:Editor", ptr %t70, i32 0, i32 4
  %t73 = load i64, ptr %t72, !tbaa !24
  %t76 = call i64 @compiler_2flineedit_2eprevAt(ptr %v0, { i64, ptr } %t69, i64 %t73)
  store i64 %t76, ptr %l35
  br label %bb15
bb15:
  %t77 = load i64, ptr %l35, !tbaa !24
  %t78 = load ptr, ptr %l30, !tbaa !29
  %t79 = getelementptr %"compiler/lineedit:Editor", ptr %t78, i32 0, i32 4
  store i64 %t77, ptr %t79, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2epasted(ptr %v0, ptr %a0, i8 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i8
  %l5 = alloca i1
  %l14 = alloca i1
  %l17 = alloca ptr
  %l19 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i8 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lineedit:Editor", ptr %t1, i32 0, i32 20
  store i1 true, ptr %t3, !tbaa !21
  %t4 = load i8, ptr %l1, !tbaa !22
  %t6 = icmp eq i8 %t4, 13
  br i1 %t6, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb3
bb2:
  %t8 = load i8, ptr %l1, !tbaa !22
  %t10 = icmp eq i8 %t8, 10
  store i1 %t10, ptr %l5, !tbaa !21
  br label %bb3
bb3:
  %t12 = load i1, ptr %l5, !tbaa !21
  br i1 %t12, label %bb4, label %bb5
bb4:
  store %olang.scope zeroinitializer, ptr %s1
  %t13 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2einsert(ptr %v0, ptr %s1, ptr %t13, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d72, i32 0, i32 1) })
  br label %bb6
bb5:
  br label %bb7
bb6:
  call void @__olang_scope_close(ptr %s1)
  br label %bb7
bb7:
  %t15 = load i8, ptr %l1, !tbaa !22
  %t17 = icmp eq i8 %t15, 9
  br i1 %t17, label %bb8, label %bb9
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t19 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2einsert(ptr %v0, ptr %s2, ptr %t19, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d73, i32 0, i32 1) })
  br label %bb10
bb9:
  br label %bb11
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb11
bb11:
  %t21 = load i8, ptr %l1, !tbaa !22
  %t23 = icmp uge i8 %t21, 32
  br i1 %t23, label %bb12, label %bb13
bb12:
  %t25 = load i8, ptr %l1, !tbaa !22
  %t27 = icmp ne i8 %t25, 127
  store i1 %t27, ptr %l14, !tbaa !21
  br label %bb14
bb13:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb14
bb14:
  %t29 = load i1, ptr %l14, !tbaa !21
  br i1 %t29, label %bb15, label %bb16
bb15:
  store %olang.scope zeroinitializer, ptr %s3
  %t30 = load ptr, ptr %l0, !tbaa !29
  store ptr %t30, ptr %l17, !tbaa !29
  %t31 = load i8, ptr %l1, !tbaa !22
  %t33 = call { i64, ptr } @compiler_2flineedit_2eone(ptr %s3, i8 %t31)
  store { i64, ptr } %t33, ptr %l19
  br label %bb17
bb16:
  br label %bb19
bb17:
  %t34 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t34, 0
  %t36 = extractvalue { i64, ptr } %t34, 1
  %t37 = mul i64 %t35, 1
  %t38 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t37)
  call void @llvm.memcpy.p0.p0.i64(ptr %t38, ptr %t36, i64 %t37, i1 false)
  %t39 = insertvalue { i64, ptr } undef, i64 %t35, 0
  %t40 = insertvalue { i64, ptr } %t39, ptr %t38, 1
  %t41 = load ptr, ptr %l17, !tbaa !29
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2einsert(ptr %v0, ptr %s3, ptr %t41, { i64, ptr } %t40)
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s3)
  br label %bb19
bb19:
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2epromptOf(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l8 = alloca i1
  %l12 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t3 = icmp sgt i64 %a1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/lineedit:Editor", ptr %t5, i32 0, i32 10
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  store { i64, ptr } %t8, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/lineedit:Editor", ptr %t10, i32 0, i32 5
  %t13 = load i1, ptr %t12, !tbaa !21
  br i1 %t13, label %bb4, label %bb5
bb4:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/lineedit:Editor", ptr %t15, i32 0, i32 21
  %t18 = load i1, ptr %t17, !tbaa !21
  %t20 = xor i1 %t18, true
  store i1 %t20, ptr %l8, !tbaa !21
  br label %bb6
bb5:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb6
bb6:
  %t22 = load i1, ptr %l8, !tbaa !21
  br i1 %t22, label %bb7, label %bb8
bb7:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/lineedit:Editor", ptr %t23, i32 0, i32 11
  %t26 = load { i64, ptr }, ptr %t25, !tbaa !27
  store { i64, ptr } %t26, ptr %l12, !tbaa !27
  br label %bb9
bb8:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/lineedit:Editor", ptr %t28, i32 0, i32 9
  %t31 = load { i64, ptr }, ptr %t30, !tbaa !27
  store { i64, ptr } %t31, ptr %l12, !tbaa !27
  br label %bb9
bb9:
  %t33 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t33, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eremove(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca i64
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l23 = alloca { i64, ptr }
  %l25 = alloca ptr
  %l26 = alloca i64
  %l29 = alloca { i64, ptr }
  %l30 = alloca i64
  %l31 = alloca i64
  %l35 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
  %l38 = alloca i64
  %l42 = alloca i64
  %l43 = alloca i64
  %l50 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = icmp sle i64 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2esave(ptr %v0, ptr %t7, i64 2)
  br label %bb4
bb4:
  br i1 %a3, label %bb5, label %bb6
bb5:
  %t11 = load ptr, ptr %l0, !tbaa !29
  store ptr %t11, ptr %l9, !tbaa !29
  %t12 = ptrtoint ptr %v0 to i64
  store i64 %t12, ptr %l10, !tbaa !24
  %t13 = load i1, ptr @olang_2esole_2ecompiler_2flineedit_3aEditor_2e16
  br i1 %t13, label %bb7, label %bb8
bb6:
  br label %bb17
bb7:
  %t15 = call ptr @__olang_region_make(ptr %v0)
  %t16 = ptrtoint ptr %t15 to i64
  store i64 %t16, ptr %l10, !tbaa !24
  br label %bb8
bb8:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/lineedit:Editor", ptr %t17, i32 0, i32 3
  %t20 = load { i64, ptr }, ptr %t19, !tbaa !27
  store { i64, ptr } %t20, ptr %l13, !tbaa !27
  %t21 = load i64, ptr %l1, !tbaa !24
  store i64 %t21, ptr %l14, !tbaa !24
  %t22 = load i64, ptr %l2, !tbaa !24
  store i64 %t22, ptr %l15, !tbaa !24
  %t23 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t24 = extractvalue { i64, ptr } %t23, 0
  store i64 %t24, ptr %l16, !tbaa !24
  %t25 = load i64, ptr %l14, !tbaa !24
  %t26 = icmp sge i64 %t25, 0
  br i1 %t26, label %bb9, label %bb10
bb9:
  %t28 = load i64, ptr %l14, !tbaa !24
  %t29 = load i64, ptr %l15, !tbaa !24
  %t30 = icmp sle i64 %t28, %t29
  br i1 %t30, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_dd36f3cf990f8aca_64500bf1420cd6c6)
  unreachable
bb11:
  %t32 = load i64, ptr %l15, !tbaa !24
  %t33 = load i64, ptr %l16, !tbaa !24
  %t34 = icmp sle i64 %t32, %t33
  br i1 %t34, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_dd36f3cf990f8aca_64500bf1420cd6c6)
  unreachable
bb13:
  %t36 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !27
  %t38 = load i64, ptr %l14, !tbaa !24
  %t39 = load i64, ptr %l15, !tbaa !24
  %t40 = getelementptr i8, ptr %t37, i64 %t38
  %t41 = sub i64 %t39, %t38
  %t42 = insertvalue { i64, ptr } undef, i64 %t41, 0
  %t43 = insertvalue { i64, ptr } %t42, ptr %t40, 1
  %t45 = extractvalue { i64, ptr } %t43, 1
  %t46 = extractvalue { i64, ptr } %t43, 0
  %t47 = load i64, ptr %l10
  %t48 = inttoptr i64 %t47 to ptr
  %t49 = call ptr @__olang_scope_alloc(ptr %t48, i64 %t46)
  call void @olang_textcopy(ptr %t49, ptr %t45, i64 %t46)
  %t50 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr %t49, 1
  %t53 = load i64, ptr %l10
  %t54 = inttoptr i64 %t53 to ptr
  %t55 = extractvalue { i64, ptr } %t51, 0
  %t56 = extractvalue { i64, ptr } %t51, 1
  %t57 = mul i64 %t55, 1
  %t58 = call ptr @__olang_scope_alloc(ptr %t54, i64 %t57)
  call void @llvm.memcpy.p0.p0.i64(ptr %t58, ptr %t56, i64 %t57, i1 false)
  %t59 = insertvalue { i64, ptr } undef, i64 %t55, 0
  %t60 = insertvalue { i64, ptr } %t59, ptr %t58, 1
  %t61 = load ptr, ptr %l9, !tbaa !29
  %t62 = getelementptr %"compiler/lineedit:Editor", ptr %t61, i32 0, i32 16
  %t63 = load { i64, ptr }, ptr %t62, !tbaa !27
  store { i64, ptr } %t63, ptr %l23, !tbaa !27
  %t65 = load ptr, ptr %l9, !tbaa !29
  %t66 = getelementptr %"compiler/lineedit:Editor", ptr %t65, i32 0, i32 16
  store { i64, ptr } %t60, ptr %t66, !tbaa !27
  %t67 = load i1, ptr @olang_2esole_2ecompiler_2flineedit_3aEditor_2e16
  br i1 %t67, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_dd36f3cf990f8aca_64500bf1420cd6c6)
  unreachable
bb15:
  %t69 = load { i64, ptr }, ptr %l23
  %t70 = extractvalue { i64, ptr } %t69, 1
  call void @__olang_region_release(ptr %t70)
  store { i64, ptr } zeroinitializer, ptr %l23
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t71 = load ptr, ptr %l0, !tbaa !29
  store ptr %t71, ptr %l25, !tbaa !29
  %t72 = ptrtoint ptr %v0 to i64
  store i64 %t72, ptr %l26, !tbaa !24
  %t73 = load i1, ptr @olang_2esole_2ecompiler_2flineedit_3aEditor_2e3
  br i1 %t73, label %bb18, label %bb19
bb18:
  %t75 = call ptr @__olang_region_make(ptr %v0)
  %t76 = ptrtoint ptr %t75 to i64
  store i64 %t76, ptr %l26, !tbaa !24
  br label %bb19
bb19:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/lineedit:Editor", ptr %t77, i32 0, i32 3
  %t80 = load { i64, ptr }, ptr %t79, !tbaa !27
  store { i64, ptr } %t80, ptr %l29, !tbaa !27
  %t81 = load i64, ptr %l1, !tbaa !24
  store i64 %t81, ptr %l30, !tbaa !24
  %t82 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t83 = extractvalue { i64, ptr } %t82, 0
  store i64 %t83, ptr %l31, !tbaa !24
  %t84 = icmp sge i64 0, 0
  br i1 %t84, label %bb20, label %bb21
bb20:
  %t86 = load i64, ptr %l30, !tbaa !24
  %t87 = icmp sle i64 0, %t86
  br i1 %t87, label %bb22, label %bb23
bb21:
  call void @__olang_check_failed(ptr @olang_loc_8dc6cdcca3960da7_c3faaa8d27204ea3)
  unreachable
bb22:
  %t89 = load i64, ptr %l30, !tbaa !24
  %t90 = load i64, ptr %l31, !tbaa !24
  %t91 = icmp sle i64 %t89, %t90
  br i1 %t91, label %bb24, label %bb25
bb23:
  call void @__olang_check_failed(ptr @olang_loc_8dc6cdcca3960da7_c3faaa8d27204ea3)
  unreachable
bb24:
  %t93 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t94 = load ptr, ptr %t93, !tbaa !27
  %t95 = load i64, ptr %l30, !tbaa !24
  %t96 = getelementptr i8, ptr %t94, i64 0
  %t97 = sub i64 %t95, 0
  %t98 = insertvalue { i64, ptr } undef, i64 %t97, 0
  %t99 = insertvalue { i64, ptr } %t98, ptr %t96, 1
  store { i64, ptr } %t99, ptr %l35, !tbaa !27
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/lineedit:Editor", ptr %t100, i32 0, i32 3
  %t103 = load { i64, ptr }, ptr %t102, !tbaa !27
  store { i64, ptr } %t103, ptr %l37, !tbaa !27
  %t104 = load i64, ptr %l2, !tbaa !24
  store i64 %t104, ptr %l38, !tbaa !24
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t107 = getelementptr %"compiler/lineedit:Editor", ptr %t105, i32 0, i32 3
  %t108 = load { i64, ptr }, ptr %t107, !tbaa !27
  %t111 = extractvalue { i64, ptr } %t108, 0
  store i64 %t111, ptr %l42, !tbaa !24
  %t112 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t113 = extractvalue { i64, ptr } %t112, 0
  store i64 %t113, ptr %l43, !tbaa !24
  %t114 = load i64, ptr %l38, !tbaa !24
  %t115 = icmp sge i64 %t114, 0
  br i1 %t115, label %bb26, label %bb27
bb25:
  call void @__olang_check_failed(ptr @olang_loc_8dc6cdcca3960da7_c3faaa8d27204ea3)
  unreachable
bb26:
  %t117 = load i64, ptr %l38, !tbaa !24
  %t118 = load i64, ptr %l42, !tbaa !24
  %t119 = icmp sle i64 %t117, %t118
  br i1 %t119, label %bb28, label %bb29
bb27:
  call void @__olang_check_failed(ptr @olang_loc_8dc6cdcca3960da7_c3faaa8d27204ea3)
  unreachable
bb28:
  %t121 = load i64, ptr %l42, !tbaa !24
  %t122 = load i64, ptr %l43, !tbaa !24
  %t123 = icmp sle i64 %t121, %t122
  br i1 %t123, label %bb30, label %bb31
bb29:
  call void @__olang_check_failed(ptr @olang_loc_8dc6cdcca3960da7_c3faaa8d27204ea3)
  unreachable
bb30:
  %t125 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t126 = load ptr, ptr %t125, !tbaa !27
  %t127 = load i64, ptr %l38, !tbaa !24
  %t128 = load i64, ptr %l42, !tbaa !24
  %t129 = getelementptr i8, ptr %t126, i64 %t127
  %t130 = sub i64 %t128, %t127
  %t131 = insertvalue { i64, ptr } undef, i64 %t130, 0
  %t132 = insertvalue { i64, ptr } %t131, ptr %t129, 1
  %t133 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t134 = extractvalue { i64, ptr } %t133, 1
  %t135 = extractvalue { i64, ptr } %t133, 0
  %t137 = extractvalue { i64, ptr } %t132, 1
  %t138 = extractvalue { i64, ptr } %t132, 0
  %t139 = add i64 %t135, %t138
  %t140 = load i64, ptr %l26
  %t141 = inttoptr i64 %t140 to ptr
  %t142 = call ptr @__olang_scope_alloc(ptr %t141, i64 %t139)
  call void @olang_textcopy(ptr %t142, ptr %t134, i64 %t135)
  %t143 = getelementptr i8, ptr %t142, i64 %t135
  call void @olang_textcopy(ptr %t143, ptr %t137, i64 %t138)
  %t144 = insertvalue { i64, ptr } undef, i64 %t139, 0
  %t145 = insertvalue { i64, ptr } %t144, ptr %t142, 1
  %t147 = load i64, ptr %l26
  %t148 = inttoptr i64 %t147 to ptr
  %t149 = extractvalue { i64, ptr } %t145, 0
  %t150 = extractvalue { i64, ptr } %t145, 1
  %t151 = mul i64 %t149, 1
  %t152 = call ptr @__olang_scope_alloc(ptr %t148, i64 %t151)
  call void @llvm.memcpy.p0.p0.i64(ptr %t152, ptr %t150, i64 %t151, i1 false)
  %t153 = insertvalue { i64, ptr } undef, i64 %t149, 0
  %t154 = insertvalue { i64, ptr } %t153, ptr %t152, 1
  %t155 = load ptr, ptr %l25, !tbaa !29
  %t156 = getelementptr %"compiler/lineedit:Editor", ptr %t155, i32 0, i32 3
  %t157 = load { i64, ptr }, ptr %t156, !tbaa !27
  store { i64, ptr } %t157, ptr %l50, !tbaa !27
  %t159 = load ptr, ptr %l25, !tbaa !29
  %t160 = getelementptr %"compiler/lineedit:Editor", ptr %t159, i32 0, i32 3
  store { i64, ptr } %t154, ptr %t160, !tbaa !27
  %t161 = load i1, ptr @olang_2esole_2ecompiler_2flineedit_3aEditor_2e3
  br i1 %t161, label %bb32, label %bb33
bb31:
  call void @__olang_check_failed(ptr @olang_loc_8dc6cdcca3960da7_c3faaa8d27204ea3)
  unreachable
bb32:
  %t163 = load { i64, ptr }, ptr %l50
  %t164 = extractvalue { i64, ptr } %t163, 1
  call void @__olang_region_release(ptr %t164)
  store { i64, ptr } zeroinitializer, ptr %l50
  br label %bb33
bb33:
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t166 = load i64, ptr %l1, !tbaa !24
  %t169 = getelementptr %"compiler/lineedit:Editor", ptr %t165, i32 0, i32 4
  store i64 %t166, ptr %t169, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2ereplace(ptr %v0, ptr %a0, i8 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i8
  %l2 = alloca i64
  %l6 = alloca i1
  %l8 = alloca i64
  %l13 = alloca i64
  %l18 = alloca ptr
  %l19 = alloca i64
  %l23 = alloca i64
  %l24 = alloca ptr
  %l26 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i8 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lineedit:Editor", ptr %t1, i32 0, i32 33
  store i8 0, ptr %t3, !tbaa !22
  %t4 = load i8, ptr %l1, !tbaa !22
  %t6 = icmp ult i8 %t4, 32
  br i1 %t6, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb4
bb2:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/lineedit:Editor", ptr %t8, i32 0, i32 4
  %t11 = load i64, ptr %t10, !tbaa !24
  store i64 %t11, ptr %l8, !tbaa !24
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/lineedit:Editor", ptr %t12, i32 0, i32 3
  %t15 = load { i64, ptr }, ptr %t14, !tbaa !27
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/lineedit:Editor", ptr %t16, i32 0, i32 4
  %t19 = load i64, ptr %t18, !tbaa !24
  %t22 = call i64 @compiler_2flineedit_2elineEnd(ptr %v0, { i64, ptr } %t15, i64 %t19)
  store i64 %t22, ptr %l13
  br label %bb3
bb3:
  %t23 = load i64, ptr %l8, !tbaa !24
  %t24 = load i64, ptr %l13, !tbaa !24
  %t25 = icmp sge i64 %t23, %t24
  store i1 %t25, ptr %l6, !tbaa !21
  br label %bb4
bb4:
  %t27 = load i1, ptr %l6, !tbaa !21
  br i1 %t27, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/lineedit:Editor", ptr %t29, i32 0, i32 4
  %t32 = load i64, ptr %t31, !tbaa !24
  store i64 %t32, ptr %l2, !tbaa !24
  %t34 = load ptr, ptr %l0, !tbaa !29
  store ptr %t34, ptr %l18, !tbaa !29
  %t35 = load i64, ptr %l2, !tbaa !24
  store i64 %t35, ptr %l19, !tbaa !24
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/lineedit:Editor", ptr %t36, i32 0, i32 3
  %t39 = load { i64, ptr }, ptr %t38, !tbaa !27
  %t40 = load i64, ptr %l2, !tbaa !24
  %t43 = call i64 @compiler_2flineedit_2enextAt(ptr %v0, { i64, ptr } %t39, i64 %t40)
  store i64 %t43, ptr %l23
  br label %bb8
bb8:
  %t44 = load ptr, ptr %l18, !tbaa !29
  %t45 = load i64, ptr %l19, !tbaa !24
  %t46 = load i64, ptr %l23, !tbaa !24
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eremove(ptr %v0, ptr %t44, i64 %t45, i64 %t46, i1 false)
  br label %bb9
bb9:
  %t47 = load ptr, ptr %l0, !tbaa !29
  store ptr %t47, ptr %l24, !tbaa !29
  %t48 = load i8, ptr %l1, !tbaa !22
  %t50 = call { i64, ptr } @compiler_2flineedit_2eone(ptr %s0, i8 %t48)
  store { i64, ptr } %t50, ptr %l26
  br label %bb10
bb10:
  %t51 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t52 = extractvalue { i64, ptr } %t51, 0
  %t53 = extractvalue { i64, ptr } %t51, 1
  %t54 = mul i64 %t52, 1
  %t55 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t54)
  call void @llvm.memcpy.p0.p0.i64(ptr %t55, ptr %t53, i64 %t54, i1 false)
  %t56 = insertvalue { i64, ptr } undef, i64 %t52, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t55, 1
  %t58 = load ptr, ptr %l24, !tbaa !29
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2einsert(ptr %v0, ptr %s0, ptr %t58, { i64, ptr } %t57)
  br label %bb11
bb11:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load i64, ptr %l2, !tbaa !24
  %t64 = getelementptr %"compiler/lineedit:Editor", ptr %t60, i32 0, i32 4
  store i64 %t61, ptr %t64, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2ereset(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l6 = alloca ptr
  %l9 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l1, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/lineedit:Editor", ptr %t2, i32 0, i32 3
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l2, !tbaa !27
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t6 = getelementptr %"compiler/lineedit:Editor", ptr %t5, i32 0, i32 3
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d74, i32 0, i32 1) }, ptr %t6, !tbaa !27
  %t7 = load i1, ptr @olang_2esole_2ecompiler_2flineedit_3aEditor_2e3
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load { i64, ptr }, ptr %l2
  %t10 = extractvalue { i64, ptr } %t9, 1
  call void @__olang_region_release(ptr %t10)
  store { i64, ptr } zeroinitializer, ptr %l2
  br label %bb2
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/lineedit:Editor", ptr %t11, i32 0, i32 4
  store i64 0, ptr %t13, !tbaa !24
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/lineedit:Editor", ptr %t14, i32 0, i32 14
  store i64 0, ptr %t16, !tbaa !24
  %t17 = load ptr, ptr %l0, !tbaa !29
  store ptr %t17, ptr %l6, !tbaa !29
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/lineedit:Editor", ptr %t18, i32 0, i32 7
  %t22 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t20)
  store i64 %t22, ptr %l9
  br label %bb3
bb3:
  %t23 = load i64, ptr %l9, !tbaa !24
  %t24 = load ptr, ptr %l6, !tbaa !29
  %t25 = getelementptr %"compiler/lineedit:Editor", ptr %t24, i32 0, i32 12
  store i64 %t23, ptr %t25, !tbaa !24
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/lineedit:Editor", ptr %t26, i32 0, i32 17
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flineedit_3asnap_3e_2eClear_3ccompiler_2flineedit_3asnap_3e(ptr %v0, ptr %t28)
  br label %bb4
bb4:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/lineedit:Editor", ptr %t30, i32 0, i32 5
  store i1 false, ptr %t32, !tbaa !21
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/lineedit:Editor", ptr %t33, i32 0, i32 21
  store i1 false, ptr %t35, !tbaa !21
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/lineedit:Editor", ptr %t36, i32 0, i32 32
  store i64 0, ptr %t38, !tbaa !24
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/lineedit:Editor", ptr %t39, i32 0, i32 33
  store i8 0, ptr %t41, !tbaa !22
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eright(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l7 = alloca i64
  %l9 = alloca i64
  %l14 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lineedit:Editor", ptr %t1, i32 0, i32 4
  %t4 = load i64, ptr %t3, !tbaa !24
  store i64 %t4, ptr %l2, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/lineedit:Editor", ptr %t5, i32 0, i32 3
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/lineedit:Editor", ptr %t9, i32 0, i32 4
  %t12 = load i64, ptr %t11, !tbaa !24
  %t15 = call i64 @compiler_2flineedit_2elineEnd(ptr %v0, { i64, ptr } %t8, i64 %t12)
  store i64 %t15, ptr %l7
  br label %bb1
bb1:
  %t16 = load i64, ptr %l2, !tbaa !24
  %t17 = load i64, ptr %l7, !tbaa !24
  %t18 = icmp slt i64 %t16, %t17
  br i1 %t18, label %bb2, label %bb3
bb2:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/lineedit:Editor", ptr %t20, i32 0, i32 3
  %t23 = load { i64, ptr }, ptr %t22, !tbaa !27
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/lineedit:Editor", ptr %t24, i32 0, i32 4
  %t27 = load i64, ptr %t26, !tbaa !24
  %t30 = call i64 @compiler_2flineedit_2enextAt(ptr %v0, { i64, ptr } %t23, i64 %t27)
  store i64 %t30, ptr %l14
  br label %bb4
bb3:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/lineedit:Editor", ptr %t31, i32 0, i32 4
  %t34 = load i64, ptr %t33, !tbaa !24
  store i64 %t34, ptr %l9, !tbaa !24
  br label %bb5
bb4:
  %t36 = load i64, ptr %l14, !tbaa !24
  store i64 %t36, ptr %l9, !tbaa !24
  br label %bb5
bb5:
  %t37 = load i64, ptr %l9, !tbaa !24
  store i64 %t37, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2esave(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i1
  %l10 = alloca ptr
  %l15 = alloca %"compiler/lineedit:snap"
  %l18 = alloca i64
  %l22 = alloca i32
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp eq i64 %t1, 1
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/lineedit:Editor", ptr %t5, i32 0, i32 18
  %t8 = load i64, ptr %t7, !tbaa !24
  %t10 = icmp eq i64 %t8, 1
  store i1 %t10, ptr %l4, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb3
bb3:
  %t12 = load i1, ptr %l4, !tbaa !21
  %t13 = xor i1 %t12, true
  br i1 %t13, label %bb4, label %bb5
bb4:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/lineedit:Editor", ptr %t15, i32 0, i32 17
  store ptr %t17, ptr %l10, !tbaa !29
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/lineedit:Editor", ptr %t18, i32 0, i32 3
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !27
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/lineedit:Editor", ptr %t22, i32 0, i32 4
  %t25 = load i64, ptr %t24, !tbaa !24
  %t28 = call %"compiler/lineedit:snap" @compiler_2flineedit_3asnap_2ector(ptr %v0, ptr %v0, { i64, ptr } %t21, i64 %t25)
  store %"compiler/lineedit:snap" %t28, ptr %l15
  br label %bb6
bb5:
  br label %bb8
bb6:
  %t29 = load ptr, ptr %l10, !tbaa !29
  %t30 = load %"compiler/lineedit:snap", ptr %l15
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flineedit_3asnap_3e_2ePush_3ccompiler_2flineedit_3asnap_3e(ptr %v0, ptr %v0, ptr %t29, %"compiler/lineedit:snap" %t30)
  br label %bb7
bb7:
  br label %bb8
bb8:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/lineedit:Editor", ptr %t31, i32 0, i32 17
  %t35 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flineedit_3asnap_3e_2eLen_3ccompiler_2flineedit_3asnap_3e(ptr %v0, ptr %t33)
  store i64 %t35, ptr %l18
  br label %bb9
bb9:
  %t36 = load i64, ptr %l18, !tbaa !24
  %t37 = icmp sgt i64 %t36, 100
  br i1 %t37, label %bb10, label %bb11
bb10:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/lineedit:Editor", ptr %t39, i32 0, i32 17
  %t43 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flineedit_3asnap_3e_2eRemove_Hd9d3bd958740eb540dbca2377fffdf85(ptr %v0, ptr %t41, i64 0)
  store i32 %t43, ptr %l22
  %t44 = icmp ne i32 %t43, 0
  br i1 %t44, label %bb13, label %ok.45, !prof !99
ok.45:
  br label %bb12
bb11:
  br label %bb16
bb12:
  br label %bb15
bb13:
  br label %bb14
bb14:
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load i64, ptr %l1, !tbaa !24
  %t50 = getelementptr %"compiler/lineedit:Editor", ptr %t46, i32 0, i32 18
  store i64 %t47, ptr %t50, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2esearchKey(ptr %v0, ptr %a0, i8 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i8
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i1
  %l8 = alloca i1
  %l18 = alloca ptr
  %l20 = alloca { i64, ptr }
  %l29 = alloca ptr
  %l31 = alloca i64
  %l34 = alloca i64
  %l41 = alloca i1
  %l44 = alloca ptr
  %l46 = alloca { i64, ptr }
  %l52 = alloca i64
  %l53 = alloca i64
  %l58 = alloca { i64, ptr }
  %l60 = alloca ptr
  %l62 = alloca i64
  %l65 = alloca i64
  %l70 = alloca ptr
  %l71 = alloca i64
  %l74 = alloca { i64, ptr }
  %l76 = alloca { i64, ptr }
  %l79 = alloca { i64, ptr }
  %l81 = alloca ptr
  %l83 = alloca i64
  %l86 = alloca i64
  %l88 = alloca i64
  %l99 = alloca i1
  %l102 = alloca i1
  %l108 = alloca i32
  %s5 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i8 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i8, ptr %l1, !tbaa !22
  %t3 = icmp eq i8 %t1, 7
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb3
bb2:
  %t5 = load i8, ptr %l1, !tbaa !22
  %t7 = icmp eq i8 %t5, 3
  store i1 %t7, ptr %l8, !tbaa !21
  br label %bb3
bb3:
  %t9 = load i1, ptr %l8, !tbaa !21
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/lineedit:Editor", ptr %t10, i32 0, i32 21
  store i1 false, ptr %t12, !tbaa !21
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/lineedit:Editor", ptr %t13, i32 0, i32 29
  %t16 = load { i64, ptr }, ptr %t15, !tbaa !27
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/lineedit:Editor", ptr %t18, i32 0, i32 30
  %t21 = load i64, ptr %t20, !tbaa !24
  store i64 %t21, ptr %l3, !tbaa !24
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/lineedit:Editor", ptr %t23, i32 0, i32 31
  %t26 = load i64, ptr %t25, !tbaa !24
  store i64 %t26, ptr %l4, !tbaa !24
  %t28 = load ptr, ptr %l0, !tbaa !29
  store ptr %t28, ptr %l18, !tbaa !29
  %t30 = load ptr, ptr %l18, !tbaa !29
  %t31 = getelementptr %"compiler/lineedit:Editor", ptr %t30, i32 0, i32 3
  %t32 = load { i64, ptr }, ptr %t31, !tbaa !27
  store { i64, ptr } %t32, ptr %l20, !tbaa !27
  %t34 = load ptr, ptr %l18, !tbaa !29
  %t35 = getelementptr %"compiler/lineedit:Editor", ptr %t34, i32 0, i32 3
  store { i64, ptr } %t16, ptr %t35, !tbaa !27
  %t36 = load i1, ptr @olang_2esole_2ecompiler_2flineedit_3aEditor_2e3
  br i1 %t36, label %bb6, label %bb7
bb5:
  br label %bb8
bb6:
  %t38 = load { i64, ptr }, ptr %l20
  %t39 = extractvalue { i64, ptr } %t38, 1
  call void @__olang_region_release(ptr %t39)
  store { i64, ptr } zeroinitializer, ptr %l20
  br label %bb7
bb7:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load i64, ptr %l3, !tbaa !24
  %t44 = getelementptr %"compiler/lineedit:Editor", ptr %t40, i32 0, i32 4
  store i64 %t41, ptr %t44, !tbaa !24
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load i64, ptr %l4, !tbaa !24
  %t49 = getelementptr %"compiler/lineedit:Editor", ptr %t45, i32 0, i32 12
  store i64 %t46, ptr %t49, !tbaa !24
  store i32 0, ptr %rv
  br label %ret
bb8:
  %t51 = load i8, ptr %l1, !tbaa !22
  %t53 = icmp eq i8 %t51, 18
  br i1 %t53, label %bb9, label %bb10
bb9:
  %t55 = load ptr, ptr %l0, !tbaa !29
  store ptr %t55, ptr %l29, !tbaa !29
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/lineedit:Editor", ptr %t56, i32 0, i32 27
  %t59 = load i64, ptr %t58, !tbaa !24
  store i64 %t59, ptr %l31, !tbaa !24
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/lineedit:Editor", ptr %t60, i32 0, i32 24
  %t63 = load i1, ptr %t62, !tbaa !21
  br i1 %t63, label %bb11, label %bb12
bb10:
  br label %bb15
bb11:
  store i64 -1, ptr %l34, !tbaa !24
  br label %bb13
bb12:
  store i64 1, ptr %l34, !tbaa !24
  br label %bb13
bb13:
  %t65 = load i64, ptr %l31, !tbaa !24
  %t66 = load i64, ptr %l34, !tbaa !24
  %t67 = add i64 %t65, %t66
  %t68 = load ptr, ptr %l29, !tbaa !29
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2efind(ptr %v0, ptr %t68, i64 %t67)
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t70 = load i8, ptr %l1, !tbaa !22
  %t72 = icmp eq i8 %t70, 18
  br i1 %t72, label %bb16, label %bb17
bb16:
  store i32 0, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t75 = load i8, ptr %l1, !tbaa !22
  %t77 = icmp eq i8 %t75, 8
  br i1 %t77, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l41, !tbaa !21
  br label %bb21
bb20:
  %t79 = load i8, ptr %l1, !tbaa !22
  %t81 = icmp eq i8 %t79, 127
  store i1 %t81, ptr %l41, !tbaa !21
  br label %bb21
bb21:
  %t83 = load i1, ptr %l41, !tbaa !21
  br i1 %t83, label %bb22, label %bb23
bb22:
  %t84 = load ptr, ptr %l0, !tbaa !29
  store ptr %t84, ptr %l44, !tbaa !29
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/lineedit:Editor", ptr %t85, i32 0, i32 25
  %t88 = load { i64, ptr }, ptr %t87, !tbaa !27
  store { i64, ptr } %t88, ptr %l46, !tbaa !27
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"compiler/lineedit:Editor", ptr %t89, i32 0, i32 25
  %t92 = load { i64, ptr }, ptr %t91, !tbaa !27
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/lineedit:Editor", ptr %t93, i32 0, i32 25
  %t96 = load { i64, ptr }, ptr %t95, !tbaa !27
  %t98 = extractvalue { i64, ptr } %t96, 0
  %t101 = call i64 @compiler_2flineedit_2eprevAt(ptr %v0, { i64, ptr } %t92, i64 %t98)
  store i64 %t101, ptr %l52
  br label %bb24
bb23:
  br label %bb37
bb24:
  %t102 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t103 = extractvalue { i64, ptr } %t102, 0
  store i64 %t103, ptr %l53, !tbaa !24
  %t104 = icmp sge i64 0, 0
  br i1 %t104, label %bb25, label %bb26
bb25:
  %t106 = load i64, ptr %l52, !tbaa !24
  %t107 = icmp sle i64 0, %t106
  br i1 %t107, label %bb27, label %bb28
bb26:
  call void @__olang_check_failed(ptr @olang_loc_d87e059e3fca2959_92a9b8111884af55)
  unreachable
bb27:
  %t109 = load i64, ptr %l52, !tbaa !24
  %t110 = load i64, ptr %l53, !tbaa !24
  %t111 = icmp sle i64 %t109, %t110
  br i1 %t111, label %bb29, label %bb30
bb28:
  call void @__olang_check_failed(ptr @olang_loc_d87e059e3fca2959_92a9b8111884af55)
  unreachable
bb29:
  %t113 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !27
  %t115 = load i64, ptr %l52, !tbaa !24
  %t116 = getelementptr i8, ptr %t114, i64 0
  %t117 = sub i64 %t115, 0
  %t118 = insertvalue { i64, ptr } undef, i64 %t117, 0
  %t119 = insertvalue { i64, ptr } %t118, ptr %t116, 1
  %t120 = load ptr, ptr %l44, !tbaa !29
  %t121 = getelementptr %"compiler/lineedit:Editor", ptr %t120, i32 0, i32 25
  %t122 = load { i64, ptr }, ptr %t121, !tbaa !27
  store { i64, ptr } %t122, ptr %l58, !tbaa !27
  %t124 = load ptr, ptr %l44, !tbaa !29
  %t125 = getelementptr %"compiler/lineedit:Editor", ptr %t124, i32 0, i32 25
  store { i64, ptr } %t119, ptr %t125, !tbaa !27
  %t126 = load i1, ptr @olang_2esole_2ecompiler_2flineedit_3aEditor_2e25
  br i1 %t126, label %bb31, label %bb32
bb30:
  call void @__olang_check_failed(ptr @olang_loc_d87e059e3fca2959_92a9b8111884af55)
  unreachable
bb31:
  %t128 = load { i64, ptr }, ptr %l58
  %t129 = extractvalue { i64, ptr } %t128, 1
  call void @__olang_region_release(ptr %t129)
  store { i64, ptr } zeroinitializer, ptr %l58
  br label %bb32
bb32:
  %t130 = load ptr, ptr %l0, !tbaa !29
  store ptr %t130, ptr %l60, !tbaa !29
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t133 = getelementptr %"compiler/lineedit:Editor", ptr %t131, i32 0, i32 31
  %t134 = load i64, ptr %t133, !tbaa !24
  store i64 %t134, ptr %l62, !tbaa !24
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t137 = getelementptr %"compiler/lineedit:Editor", ptr %t135, i32 0, i32 24
  %t138 = load i1, ptr %t137, !tbaa !21
  br i1 %t138, label %bb33, label %bb34
bb33:
  store i64 -1, ptr %l65, !tbaa !24
  br label %bb35
bb34:
  store i64 1, ptr %l65, !tbaa !24
  br label %bb35
bb35:
  %t140 = load i64, ptr %l62, !tbaa !24
  %t141 = load i64, ptr %l65, !tbaa !24
  %t142 = add i64 %t140, %t141
  %t143 = load ptr, ptr %l60, !tbaa !29
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2efind(ptr %v0, ptr %t143, i64 %t142)
  br label %bb36
bb36:
  store i32 0, ptr %rv
  br label %ret
bb37:
  %t146 = load i8, ptr %l1, !tbaa !22
  %t148 = icmp uge i8 %t146, 32
  br i1 %t148, label %bb38, label %bb39
bb38:
  store %olang.scope zeroinitializer, ptr %s5
  %t150 = load ptr, ptr %l0, !tbaa !29
  store ptr %t150, ptr %l70, !tbaa !29
  %t151 = ptrtoint ptr %v0 to i64
  store i64 %t151, ptr %l71, !tbaa !24
  %t152 = load i1, ptr @olang_2esole_2ecompiler_2flineedit_3aEditor_2e25
  br i1 %t152, label %bb40, label %bb41
bb39:
  br label %bb50
bb40:
  %t154 = call ptr @__olang_region_make(ptr %v0)
  %t155 = ptrtoint ptr %t154 to i64
  store i64 %t155, ptr %l71, !tbaa !24
  br label %bb41
bb41:
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t158 = getelementptr %"compiler/lineedit:Editor", ptr %t156, i32 0, i32 25
  %t159 = load { i64, ptr }, ptr %t158, !tbaa !27
  store { i64, ptr } %t159, ptr %l74, !tbaa !27
  %t160 = load i8, ptr %l1, !tbaa !22
  %t162 = call { i64, ptr } @compiler_2flineedit_2eone(ptr %s5, i8 %t160)
  store { i64, ptr } %t162, ptr %l76
  br label %bb42
bb42:
  %t163 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t164 = extractvalue { i64, ptr } %t163, 1
  %t165 = extractvalue { i64, ptr } %t163, 0
  %t166 = load { i64, ptr }, ptr %l76, !tbaa !27
  %t167 = extractvalue { i64, ptr } %t166, 1
  %t168 = extractvalue { i64, ptr } %t166, 0
  %t169 = add i64 %t165, %t168
  %t170 = load i64, ptr %l71
  %t171 = inttoptr i64 %t170 to ptr
  %t172 = call ptr @__olang_scope_alloc(ptr %t171, i64 %t169)
  call void @olang_textcopy(ptr %t172, ptr %t164, i64 %t165)
  %t173 = getelementptr i8, ptr %t172, i64 %t165
  call void @olang_textcopy(ptr %t173, ptr %t167, i64 %t168)
  %t174 = insertvalue { i64, ptr } undef, i64 %t169, 0
  %t175 = insertvalue { i64, ptr } %t174, ptr %t172, 1
  %t177 = load i64, ptr %l71
  %t178 = inttoptr i64 %t177 to ptr
  %t179 = extractvalue { i64, ptr } %t175, 0
  %t180 = extractvalue { i64, ptr } %t175, 1
  %t181 = mul i64 %t179, 1
  %t182 = call ptr @__olang_scope_alloc(ptr %t178, i64 %t181)
  call void @llvm.memcpy.p0.p0.i64(ptr %t182, ptr %t180, i64 %t181, i1 false)
  %t183 = insertvalue { i64, ptr } undef, i64 %t179, 0
  %t184 = insertvalue { i64, ptr } %t183, ptr %t182, 1
  %t185 = load ptr, ptr %l70, !tbaa !29
  %t186 = getelementptr %"compiler/lineedit:Editor", ptr %t185, i32 0, i32 25
  %t187 = load { i64, ptr }, ptr %t186, !tbaa !27
  store { i64, ptr } %t187, ptr %l79, !tbaa !27
  %t189 = load ptr, ptr %l70, !tbaa !29
  %t190 = getelementptr %"compiler/lineedit:Editor", ptr %t189, i32 0, i32 25
  store { i64, ptr } %t184, ptr %t190, !tbaa !27
  %t191 = load i1, ptr @olang_2esole_2ecompiler_2flineedit_3aEditor_2e25
  br i1 %t191, label %bb43, label %bb44
bb43:
  %t193 = load { i64, ptr }, ptr %l79
  %t194 = extractvalue { i64, ptr } %t193, 1
  call void @__olang_region_release(ptr %t194)
  store { i64, ptr } zeroinitializer, ptr %l79
  br label %bb44
bb44:
  %t195 = load ptr, ptr %l0, !tbaa !29
  store ptr %t195, ptr %l81, !tbaa !29
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t198 = getelementptr %"compiler/lineedit:Editor", ptr %t196, i32 0, i32 27
  %t199 = load i64, ptr %t198, !tbaa !24
  store i64 %t199, ptr %l83, !tbaa !24
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t202 = getelementptr %"compiler/lineedit:Editor", ptr %t200, i32 0, i32 7
  %t204 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t202)
  store i64 %t204, ptr %l86
  br label %bb45
bb45:
  %t205 = load i64, ptr %l83, !tbaa !24
  %t206 = load i64, ptr %l86, !tbaa !24
  %t207 = icmp slt i64 %t205, %t206
  br i1 %t207, label %bb46, label %bb47
bb46:
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t211 = getelementptr %"compiler/lineedit:Editor", ptr %t209, i32 0, i32 27
  %t212 = load i64, ptr %t211, !tbaa !24
  store i64 %t212, ptr %l88, !tbaa !24
  br label %bb48
bb47:
  %t214 = load ptr, ptr %l0, !tbaa !29
  %t216 = getelementptr %"compiler/lineedit:Editor", ptr %t214, i32 0, i32 27
  %t217 = load i64, ptr %t216, !tbaa !24
  %t219 = sub i64 %t217, 1
  store i64 %t219, ptr %l88, !tbaa !24
  br label %bb48
bb48:
  %t221 = load ptr, ptr %l81, !tbaa !29
  %t222 = load i64, ptr %l88, !tbaa !24
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2efind(ptr %v0, ptr %t221, i64 %t222)
  br label %bb49
bb49:
  call void @__olang_scope_close(ptr %s5)
  store i32 0, ptr %rv
  br label %ret
bb50:
  %t224 = load ptr, ptr %l0, !tbaa !29
  %t226 = getelementptr %"compiler/lineedit:Editor", ptr %t224, i32 0, i32 23
  %t227 = load i1, ptr %t226, !tbaa !21
  store i1 %t227, ptr %l5, !tbaa !21
  %t229 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eacceptSearch(ptr %v0, ptr %t229)
  br label %bb51
bb51:
  %t231 = load i1, ptr %l5, !tbaa !21
  br i1 %t231, label %bb52, label %bb53
bb52:
  %t233 = load i8, ptr %l1, !tbaa !22
  %t235 = icmp eq i8 %t233, 13
  br i1 %t235, label %bb54, label %bb55
bb53:
  store i1 false, ptr %l99, !tbaa !21
  br label %bb57
bb54:
  store i1 true, ptr %l102, !tbaa !21
  br label %bb56
bb55:
  %t237 = load i8, ptr %l1, !tbaa !22
  %t239 = icmp eq i8 %t237, 10
  store i1 %t239, ptr %l102, !tbaa !21
  br label %bb56
bb56:
  %t241 = load i1, ptr %l102, !tbaa !21
  store i1 %t241, ptr %l99, !tbaa !21
  br label %bb57
bb57:
  %t242 = load i1, ptr %l99, !tbaa !21
  br i1 %t242, label %bb58, label %bb59
bb58:
  store i32 0, ptr %rv
  br label %ret
bb59:
  br label %bb60
bb60:
  %t244 = load ptr, ptr %l0, !tbaa !29
  %t245 = load i8, ptr %l1, !tbaa !22
  %t248 = call i32 @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2estep(ptr %v0, ptr %t244, i8 %t245)
  store i32 %t248, ptr %l108
  br label %bb61
bb61:
  %t249 = load i32, ptr %l108, !range !{i32 0, i32 4}
  store i32 %t249, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2esequence(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i8
  %l3 = alloca { i64, ptr }
  %l4 = alloca i1
  %l5 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l21 = alloca i1
  %l23 = alloca i1
  %l24 = alloca i1
  %l26 = alloca i1
  %l27 = alloca ptr
  %l29 = alloca i1
  %l30 = alloca i32
  %l37 = alloca i1
  %l38 = alloca { i64, ptr }
  %l44 = alloca i1
  %l55 = alloca ptr
  %l57 = alloca i64
  %l62 = alloca i64
  %l64 = alloca i64
  %l67 = alloca ptr
  %l69 = alloca i64
  %l74 = alloca i64
  %l76 = alloca i64
  %l79 = alloca i1
  %l82 = alloca i1
  %l84 = alloca i1
  %l85 = alloca i1
  %l87 = alloca i1
  %l88 = alloca ptr
  %l93 = alloca i64
  %l96 = alloca i1
  %l99 = alloca i1
  %l101 = alloca i1
  %l102 = alloca i1
  %l104 = alloca i1
  %l105 = alloca ptr
  %l110 = alloca i64
  %l113 = alloca i1
  %l115 = alloca i1
  %l116 = alloca ptr
  %l118 = alloca i64
  %l123 = alloca i64
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t1, ptr %l5, !tbaa !27
  %t2 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t4 = extractvalue { i64, ptr } %t2, 0
  %t6 = sub i64 %t4, 1
  %t8 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !27
  %t10 = getelementptr i8, ptr %t9, i64 %t6
  %t11 = load i8, ptr %t10, !tbaa !32
  store i8 %t11, ptr %l2, !tbaa !22
  %t13 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t13, ptr %l10, !tbaa !27
  %t14 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t14, 0
  %t18 = sub i64 %t16, 1
  store i64 %t18, ptr %l13, !tbaa !24
  %t19 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t20 = extractvalue { i64, ptr } %t19, 0
  store i64 %t20, ptr %l14, !tbaa !24
  %t21 = icmp sge i64 2, 0
  br i1 %t21, label %bb1, label %bb2
bb1:
  %t23 = load i64, ptr %l13, !tbaa !24
  %t24 = icmp sle i64 2, %t23
  br i1 %t24, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_c6edc95ce3a108e9_a40785e2dad47f45)
  unreachable
bb3:
  %t26 = load i64, ptr %l13, !tbaa !24
  %t27 = load i64, ptr %l14, !tbaa !24
  %t28 = icmp sle i64 %t26, %t27
  br i1 %t28, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_c6edc95ce3a108e9_a40785e2dad47f45)
  unreachable
bb5:
  %t30 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !27
  %t32 = load i64, ptr %l13, !tbaa !24
  %t33 = getelementptr i8, ptr %t31, i64 2
  %t34 = sub i64 %t32, 2
  %t35 = insertvalue { i64, ptr } undef, i64 %t34, 0
  %t36 = insertvalue { i64, ptr } %t35, ptr %t33, 1
  store { i64, ptr } %t36, ptr %l3, !tbaa !27
  %t38 = load i8, ptr %l2, !tbaa !22
  %t40 = icmp eq i8 %t38, 126
  br i1 %t40, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_c6edc95ce3a108e9_a40785e2dad47f45)
  unreachable
bb7:
  %t42 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t44 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t42, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d75, i32 0, i32 1) })
  store i1 %t44, ptr %l23
  br label %bb9
bb8:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb14
bb9:
  %t45 = load i1, ptr %l23, !tbaa !21
  br i1 %t45, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb13
bb11:
  %t46 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t48 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t46, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d76, i32 0, i32 1) })
  store i1 %t48, ptr %l26
  br label %bb12
bb12:
  %t49 = load i1, ptr %l26, !tbaa !21
  store i1 %t49, ptr %l24, !tbaa !21
  br label %bb13
bb13:
  %t50 = load i1, ptr %l24, !tbaa !21
  store i1 %t50, ptr %l21, !tbaa !21
  br label %bb14
bb14:
  %t51 = load i1, ptr %l21, !tbaa !21
  br i1 %t51, label %bb15, label %bb16
bb15:
  store %olang.scope zeroinitializer, ptr %s1
  %t52 = load ptr, ptr %l0, !tbaa !29
  store ptr %t52, ptr %l27, !tbaa !29
  %t53 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t55 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s1, { i64, ptr } %t53, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d77, i32 0, i32 1) })
  store i1 %t55, ptr %l29
  br label %bb17
bb16:
  br label %bb19
bb17:
  %t56 = load ptr, ptr %l27, !tbaa !29
  %t57 = load i1, ptr %l29, !tbaa !21
  %t58 = call i32 @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2ebracket(ptr %v0, ptr %t56, i1 %t57)
  store i32 %t58, ptr %l30
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t59 = load i32, ptr %l30, !range !{i32 0, i32 4}
  store i32 %t59, ptr %rv
  br label %ret
bb19:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/lineedit:Editor", ptr %t60, i32 0, i32 22
  %t63 = load i1, ptr %t62, !tbaa !21
  br i1 %t63, label %bb20, label %bb21
bb20:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  %t66 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t68 = extractvalue { i64, ptr } %t66, 0
  %t70 = icmp sgt i64 %t68, 0
  br i1 %t70, label %bb23, label %bb24
bb23:
  %t72 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t72, ptr %l38, !tbaa !27
  %t73 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t75 = extractvalue { i64, ptr } %t73, 0
  %t77 = sub i64 %t75, 1
  %t79 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !27
  %t81 = getelementptr i8, ptr %t80, i64 %t77
  %t82 = load i8, ptr %t81, !tbaa !32
  %t84 = icmp ne i8 %t82, 49
  store i1 %t84, ptr %l37, !tbaa !21
  br label %bb25
bb24:
  store i1 false, ptr %l37, !tbaa !21
  br label %bb25
bb25:
  %t86 = load i1, ptr %l37, !tbaa !21
  br i1 %t86, label %bb26, label %bb27
bb26:
  %t87 = load i8, ptr %l2, !tbaa !22
  %t89 = icmp ne i8 %t87, 126
  store i1 %t89, ptr %l44, !tbaa !21
  br label %bb28
bb27:
  store i1 false, ptr %l44, !tbaa !21
  br label %bb28
bb28:
  %t91 = load i1, ptr %l44, !tbaa !21
  store i1 %t91, ptr %l4, !tbaa !21
  %t92 = load i8, ptr %l2, !tbaa !22
  %t94 = icmp eq i8 %t92, 65
  br i1 %t94, label %bb29, label %bb30
bb29:
  %t96 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eup(ptr %v0, ptr %t96)
  br label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb32
bb32:
  %t98 = load i8, ptr %l2, !tbaa !22
  %t100 = icmp eq i8 %t98, 66
  br i1 %t100, label %bb33, label %bb34
bb33:
  %t102 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2edown(ptr %v0, ptr %t102)
  br label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb36
bb36:
  %t104 = load i8, ptr %l2, !tbaa !22
  %t106 = icmp eq i8 %t104, 67
  br i1 %t106, label %bb37, label %bb38
bb37:
  %t108 = load ptr, ptr %l0, !tbaa !29
  store ptr %t108, ptr %l55, !tbaa !29
  %t109 = load i1, ptr %l4, !tbaa !21
  br i1 %t109, label %bb39, label %bb40
bb38:
  br label %bb44
bb39:
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/lineedit:Editor", ptr %t111, i32 0, i32 3
  %t114 = load { i64, ptr }, ptr %t113, !tbaa !27
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t117 = getelementptr %"compiler/lineedit:Editor", ptr %t115, i32 0, i32 4
  %t118 = load i64, ptr %t117, !tbaa !24
  %t121 = call i64 @compiler_2flineedit_2ewordEnd(ptr %v0, { i64, ptr } %t114, i64 %t118)
  store i64 %t121, ptr %l62
  br label %bb41
bb40:
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t124 = call i64 @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eright(ptr %v0, ptr %t122)
  store i64 %t124, ptr %l64
  br label %bb42
bb41:
  %t125 = load i64, ptr %l62, !tbaa !24
  store i64 %t125, ptr %l57, !tbaa !24
  br label %bb43
bb42:
  %t126 = load i64, ptr %l64, !tbaa !24
  store i64 %t126, ptr %l57, !tbaa !24
  br label %bb43
bb43:
  %t127 = load i64, ptr %l57, !tbaa !24
  %t128 = load ptr, ptr %l55, !tbaa !29
  %t129 = getelementptr %"compiler/lineedit:Editor", ptr %t128, i32 0, i32 4
  store i64 %t127, ptr %t129, !tbaa !24
  br label %bb44
bb44:
  %t130 = load i8, ptr %l2, !tbaa !22
  %t132 = icmp eq i8 %t130, 68
  br i1 %t132, label %bb45, label %bb46
bb45:
  %t134 = load ptr, ptr %l0, !tbaa !29
  store ptr %t134, ptr %l67, !tbaa !29
  %t135 = load i1, ptr %l4, !tbaa !21
  br i1 %t135, label %bb47, label %bb48
bb46:
  br label %bb52
bb47:
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t139 = getelementptr %"compiler/lineedit:Editor", ptr %t137, i32 0, i32 3
  %t140 = load { i64, ptr }, ptr %t139, !tbaa !27
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t143 = getelementptr %"compiler/lineedit:Editor", ptr %t141, i32 0, i32 4
  %t144 = load i64, ptr %t143, !tbaa !24
  %t147 = call i64 @compiler_2flineedit_2ewordBack(ptr %v0, { i64, ptr } %t140, i64 %t144)
  store i64 %t147, ptr %l74
  br label %bb49
bb48:
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t150 = call i64 @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eleft(ptr %v0, ptr %t148)
  store i64 %t150, ptr %l76
  br label %bb50
bb49:
  %t151 = load i64, ptr %l74, !tbaa !24
  store i64 %t151, ptr %l69, !tbaa !24
  br label %bb51
bb50:
  %t152 = load i64, ptr %l76, !tbaa !24
  store i64 %t152, ptr %l69, !tbaa !24
  br label %bb51
bb51:
  %t153 = load i64, ptr %l69, !tbaa !24
  %t154 = load ptr, ptr %l67, !tbaa !29
  %t155 = getelementptr %"compiler/lineedit:Editor", ptr %t154, i32 0, i32 4
  store i64 %t153, ptr %t155, !tbaa !24
  br label %bb52
bb52:
  %t156 = load i8, ptr %l2, !tbaa !22
  %t158 = icmp eq i8 %t156, 72
  br i1 %t158, label %bb53, label %bb54
bb53:
  store i1 true, ptr %l79, !tbaa !21
  br label %bb63
bb54:
  %t160 = load i8, ptr %l2, !tbaa !22
  %t162 = icmp eq i8 %t160, 126
  br i1 %t162, label %bb55, label %bb56
bb55:
  %t164 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t166 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t164, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) })
  store i1 %t166, ptr %l84
  br label %bb57
bb56:
  store i1 false, ptr %l82, !tbaa !21
  br label %bb62
bb57:
  %t167 = load i1, ptr %l84, !tbaa !21
  br i1 %t167, label %bb58, label %bb59
bb58:
  store i1 true, ptr %l85, !tbaa !21
  br label %bb61
bb59:
  %t168 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t170 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t168, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d79, i32 0, i32 1) })
  store i1 %t170, ptr %l87
  br label %bb60
bb60:
  %t171 = load i1, ptr %l87, !tbaa !21
  store i1 %t171, ptr %l85, !tbaa !21
  br label %bb61
bb61:
  %t172 = load i1, ptr %l85, !tbaa !21
  store i1 %t172, ptr %l82, !tbaa !21
  br label %bb62
bb62:
  %t173 = load i1, ptr %l82, !tbaa !21
  store i1 %t173, ptr %l79, !tbaa !21
  br label %bb63
bb63:
  %t174 = load i1, ptr %l79, !tbaa !21
  br i1 %t174, label %bb64, label %bb65
bb64:
  %t175 = load ptr, ptr %l0, !tbaa !29
  store ptr %t175, ptr %l88, !tbaa !29
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t178 = getelementptr %"compiler/lineedit:Editor", ptr %t176, i32 0, i32 3
  %t179 = load { i64, ptr }, ptr %t178, !tbaa !27
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t182 = getelementptr %"compiler/lineedit:Editor", ptr %t180, i32 0, i32 4
  %t183 = load i64, ptr %t182, !tbaa !24
  %t186 = call i64 @compiler_2flineedit_2elineStart(ptr %v0, { i64, ptr } %t179, i64 %t183)
  store i64 %t186, ptr %l93
  br label %bb66
bb65:
  br label %bb67
bb66:
  %t187 = load i64, ptr %l93, !tbaa !24
  %t188 = load ptr, ptr %l88, !tbaa !29
  %t189 = getelementptr %"compiler/lineedit:Editor", ptr %t188, i32 0, i32 4
  store i64 %t187, ptr %t189, !tbaa !24
  br label %bb67
bb67:
  %t190 = load i8, ptr %l2, !tbaa !22
  %t192 = icmp eq i8 %t190, 70
  br i1 %t192, label %bb68, label %bb69
bb68:
  store i1 true, ptr %l96, !tbaa !21
  br label %bb78
bb69:
  %t194 = load i8, ptr %l2, !tbaa !22
  %t196 = icmp eq i8 %t194, 126
  br i1 %t196, label %bb70, label %bb71
bb70:
  %t198 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t200 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t198, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d80, i32 0, i32 1) })
  store i1 %t200, ptr %l101
  br label %bb72
bb71:
  store i1 false, ptr %l99, !tbaa !21
  br label %bb77
bb72:
  %t201 = load i1, ptr %l101, !tbaa !21
  br i1 %t201, label %bb73, label %bb74
bb73:
  store i1 true, ptr %l102, !tbaa !21
  br label %bb76
bb74:
  %t202 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t204 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t202, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d81, i32 0, i32 1) })
  store i1 %t204, ptr %l104
  br label %bb75
bb75:
  %t205 = load i1, ptr %l104, !tbaa !21
  store i1 %t205, ptr %l102, !tbaa !21
  br label %bb76
bb76:
  %t206 = load i1, ptr %l102, !tbaa !21
  store i1 %t206, ptr %l99, !tbaa !21
  br label %bb77
bb77:
  %t207 = load i1, ptr %l99, !tbaa !21
  store i1 %t207, ptr %l96, !tbaa !21
  br label %bb78
bb78:
  %t208 = load i1, ptr %l96, !tbaa !21
  br i1 %t208, label %bb79, label %bb80
bb79:
  %t209 = load ptr, ptr %l0, !tbaa !29
  store ptr %t209, ptr %l105, !tbaa !29
  %t210 = load ptr, ptr %l0, !tbaa !29
  %t212 = getelementptr %"compiler/lineedit:Editor", ptr %t210, i32 0, i32 3
  %t213 = load { i64, ptr }, ptr %t212, !tbaa !27
  %t214 = load ptr, ptr %l0, !tbaa !29
  %t216 = getelementptr %"compiler/lineedit:Editor", ptr %t214, i32 0, i32 4
  %t217 = load i64, ptr %t216, !tbaa !24
  %t220 = call i64 @compiler_2flineedit_2elineEnd(ptr %v0, { i64, ptr } %t213, i64 %t217)
  store i64 %t220, ptr %l110
  br label %bb81
bb80:
  br label %bb82
bb81:
  %t221 = load i64, ptr %l110, !tbaa !24
  %t222 = load ptr, ptr %l105, !tbaa !29
  %t223 = getelementptr %"compiler/lineedit:Editor", ptr %t222, i32 0, i32 4
  store i64 %t221, ptr %t223, !tbaa !24
  br label %bb82
bb82:
  %t224 = load i8, ptr %l2, !tbaa !22
  %t226 = icmp eq i8 %t224, 126
  br i1 %t226, label %bb83, label %bb84
bb83:
  %t228 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t230 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t228, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d82, i32 0, i32 1) })
  store i1 %t230, ptr %l115
  br label %bb85
bb84:
  store i1 false, ptr %l113, !tbaa !21
  br label %bb86
bb85:
  %t231 = load i1, ptr %l115, !tbaa !21
  store i1 %t231, ptr %l113, !tbaa !21
  br label %bb86
bb86:
  %t232 = load i1, ptr %l113, !tbaa !21
  br i1 %t232, label %bb87, label %bb88
bb87:
  %t233 = load ptr, ptr %l0, !tbaa !29
  store ptr %t233, ptr %l116, !tbaa !29
  %t234 = load ptr, ptr %l0, !tbaa !29
  %t236 = getelementptr %"compiler/lineedit:Editor", ptr %t234, i32 0, i32 4
  %t237 = load i64, ptr %t236, !tbaa !24
  store i64 %t237, ptr %l118, !tbaa !24
  %t238 = load ptr, ptr %l0, !tbaa !29
  %t240 = getelementptr %"compiler/lineedit:Editor", ptr %t238, i32 0, i32 3
  %t241 = load { i64, ptr }, ptr %t240, !tbaa !27
  %t242 = load ptr, ptr %l0, !tbaa !29
  %t244 = getelementptr %"compiler/lineedit:Editor", ptr %t242, i32 0, i32 4
  %t245 = load i64, ptr %t244, !tbaa !24
  %t248 = call i64 @compiler_2flineedit_2enextAt(ptr %v0, { i64, ptr } %t241, i64 %t245)
  store i64 %t248, ptr %l123
  br label %bb89
bb88:
  br label %bb91
bb89:
  %t249 = load ptr, ptr %l116, !tbaa !29
  %t250 = load i64, ptr %l118, !tbaa !24
  %t251 = load i64, ptr %l123, !tbaa !24
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eremove(ptr %v0, ptr %t249, i64 %t250, i64 %t251, i1 false)
  br label %bb90
bb90:
  br label %bb91
bb91:
  %t252 = load ptr, ptr %l0, !tbaa !29
  %t254 = getelementptr %"compiler/lineedit:Editor", ptr %t252, i32 0, i32 5
  %t255 = load i1, ptr %t254, !tbaa !21
  br i1 %t255, label %bb92, label %bb93
bb92:
  %t257 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eclamp(ptr %v0, ptr %t257)
  br label %bb94
bb93:
  br label %bb95
bb94:
  br label %bb95
bb95:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2estatus(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lineedit:Editor", ptr %t1, i32 0, i32 23
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/lineedit:Editor", ptr %t6, i32 0, i32 24
  %t9 = load i1, ptr %t8, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb2:
  br label %bb6
bb3:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d83, i32 0, i32 1) }, ptr %l5, !tbaa !27
  br label %bb5
bb4:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d84, i32 0, i32 1) }, ptr %l5, !tbaa !27
  br label %bb5
bb5:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/lineedit:Editor", ptr %t11, i32 0, i32 25
  %t14 = load { i64, ptr }, ptr %t13, !tbaa !27
  %t15 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t15, 1
  %t17 = extractvalue { i64, ptr } %t15, 0
  %t19 = extractvalue { i64, ptr } %t14, 1
  %t20 = extractvalue { i64, ptr } %t14, 0
  %t21 = add i64 %t17, %t20
  %t22 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t21)
  call void @olang_textcopy(ptr %t22, ptr %t16, i64 %t17)
  %t23 = getelementptr i8, ptr %t22, i64 %t17
  call void @olang_textcopy(ptr %t23, ptr %t19, i64 %t20)
  %t24 = insertvalue { i64, ptr } undef, i64 %t21, 0
  %t25 = insertvalue { i64, ptr } %t24, ptr %t22, 1
  store { i64, ptr } %t25, ptr %rv
  br label %ret
bb6:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/lineedit:Editor", ptr %t27, i32 0, i32 28
  %t30 = load i1, ptr %t29, !tbaa !21
  br i1 %t30, label %bb7, label %bb8
bb7:
  store { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d85, i32 0, i32 1) }, ptr %l11, !tbaa !27
  br label %bb9
bb8:
  store { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d86, i32 0, i32 1) }, ptr %l11, !tbaa !27
  br label %bb9
bb9:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/lineedit:Editor", ptr %t32, i32 0, i32 25
  %t35 = load { i64, ptr }, ptr %t34, !tbaa !27
  %t36 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t36, 1
  %t38 = extractvalue { i64, ptr } %t36, 0
  %t40 = extractvalue { i64, ptr } %t35, 1
  %t41 = extractvalue { i64, ptr } %t35, 0
  %t42 = add i64 %t38, %t41
  %t43 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t42)
  call void @olang_textcopy(ptr %t43, ptr %t37, i64 %t38)
  %t44 = getelementptr i8, ptr %t43, i64 %t38
  call void @olang_textcopy(ptr %t44, ptr %t40, i64 %t41)
  %t45 = insertvalue { i64, ptr } undef, i64 %t42, 0
  %t46 = insertvalue { i64, ptr } %t45, ptr %t43, 1
  store { i64, ptr } %t46, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2estep(ptr %v0, ptr %a0, i8 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i8
  %l4 = alloca i1
  %l8 = alloca i32
  %l11 = alloca ptr
  %l12 = alloca { i64, ptr }
  %l19 = alloca i32
  %l24 = alloca i32
  %l27 = alloca i1
  %l32 = alloca i32
  %l35 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i8 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lineedit:Editor", ptr %t1, i32 0, i32 15
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t4, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d87, i32 0, i32 1) })
  store i1 %t6, ptr %l4
  br label %bb1
bb1:
  %t7 = load i1, ptr %l4, !tbaa !21
  %t8 = xor i1 %t7, true
  br i1 %t8, label %bb2, label %bb3
bb2:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load i8, ptr %l1, !tbaa !22
  %t14 = call i32 @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eescape(ptr %v0, ptr %t10, i8 %t11)
  store i32 %t14, ptr %l8
  br label %bb4
bb3:
  br label %bb5
bb4:
  call void @__olang_scope_close(ptr %s0)
  %t15 = load i32, ptr %l8, !range !{i32 0, i32 4}
  store i32 %t15, ptr %rv
  br label %ret
bb5:
  %t16 = load i8, ptr %l1, !tbaa !22
  %t18 = icmp eq i8 %t16, 27
  br i1 %t18, label %bb6, label %bb7
bb6:
  %t20 = load ptr, ptr %l0, !tbaa !29
  store ptr %t20, ptr %l11, !tbaa !29
  %t21 = load ptr, ptr %l11, !tbaa !29
  %t22 = getelementptr %"compiler/lineedit:Editor", ptr %t21, i32 0, i32 15
  %t23 = load { i64, ptr }, ptr %t22, !tbaa !27
  store { i64, ptr } %t23, ptr %l12, !tbaa !27
  %t24 = load ptr, ptr %l11, !tbaa !29
  %t25 = getelementptr %"compiler/lineedit:Editor", ptr %t24, i32 0, i32 15
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d88, i32 0, i32 1) }, ptr %t25, !tbaa !27
  %t26 = load i1, ptr @olang_2esole_2ecompiler_2flineedit_3aEditor_2e15
  br i1 %t26, label %bb8, label %bb9
bb7:
  br label %bb10
bb8:
  %t28 = load { i64, ptr }, ptr %l12
  %t29 = extractvalue { i64, ptr } %t28, 1
  call void @__olang_region_release(ptr %t29)
  store { i64, ptr } zeroinitializer, ptr %l12
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
bb10:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/lineedit:Editor", ptr %t31, i32 0, i32 22
  %t34 = load i1, ptr %t33, !tbaa !21
  br i1 %t34, label %bb11, label %bb12
bb11:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load i8, ptr %l1, !tbaa !22
  %t40 = call i32 @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2epasted(ptr %v0, ptr %t36, i8 %t37)
  store i32 %t40, ptr %l19
  br label %bb13
bb12:
  br label %bb14
bb13:
  call void @__olang_scope_close(ptr %s0)
  %t41 = load i32, ptr %l19, !range !{i32 0, i32 4}
  store i32 %t41, ptr %rv
  br label %ret
bb14:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/lineedit:Editor", ptr %t42, i32 0, i32 21
  %t45 = load i1, ptr %t44, !tbaa !21
  br i1 %t45, label %bb15, label %bb16
bb15:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load i8, ptr %l1, !tbaa !22
  %t51 = call i32 @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2esearchKey(ptr %v0, ptr %t47, i8 %t48)
  store i32 %t51, ptr %l24
  br label %bb17
bb16:
  br label %bb18
bb17:
  call void @__olang_scope_close(ptr %s0)
  %t52 = load i32, ptr %l24, !range !{i32 0, i32 4}
  store i32 %t52, ptr %rv
  br label %ret
bb18:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/lineedit:Editor", ptr %t53, i32 0, i32 0
  %t56 = load i1, ptr %t55, !tbaa !21
  br i1 %t56, label %bb19, label %bb20
bb19:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/lineedit:Editor", ptr %t58, i32 0, i32 5
  %t61 = load i1, ptr %t60, !tbaa !21
  store i1 %t61, ptr %l27, !tbaa !21
  br label %bb21
bb20:
  store i1 false, ptr %l27, !tbaa !21
  br label %bb21
bb21:
  %t63 = load i1, ptr %l27, !tbaa !21
  br i1 %t63, label %bb22, label %bb23
bb22:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load i8, ptr %l1, !tbaa !22
  %t68 = call i32 @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2enormalKey(ptr %v0, ptr %t64, i8 %t65)
  store i32 %t68, ptr %l32
  br label %bb24
bb23:
  br label %bb25
bb24:
  call void @__olang_scope_close(ptr %s0)
  %t69 = load i32, ptr %l32, !range !{i32 0, i32 4}
  store i32 %t69, ptr %rv
  br label %ret
bb25:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load i8, ptr %l1, !tbaa !22
  %t74 = call i32 @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2ekey(ptr %v0, ptr %t70, i8 %t71)
  store i32 %t74, ptr %l35
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s0)
  %t75 = load i32, ptr %l35, !range !{i32 0, i32 4}
  store i32 %t75, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i32, i64 } @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2etarget(ptr %v0, ptr %a0, i8 %a1, i64 %a2) #0 {
entry:
  %l1 = alloca i8
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l8 = alloca i64
  %l11 = alloca i64
  %l13 = alloca i64
  %l16 = alloca i64
  %l20 = alloca i64
  %l23 = alloca i64
  %l25 = alloca i64
  %l28 = alloca i64
  %l34 = alloca i64
  %l39 = alloca i64
  %l44 = alloca i64
  %l49 = alloca i64
  %l54 = alloca i64
  %l59 = alloca i64
  %rv = alloca { i32, i64 }
  store i8 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/lineedit:Editor", ptr %a0, i32 0, i32 3
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l3, !tbaa !27
  %t6 = load i8, ptr %l1, !tbaa !22
  %t8 = icmp eq i8 %t6, 104
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load i64, ptr %l2, !tbaa !24
  store i64 %t10, ptr %l8, !tbaa !24
  %t11 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t12 = load i64, ptr %l2, !tbaa !24
  %t15 = call i64 @compiler_2flineedit_2elineStart(ptr %v0, { i64, ptr } %t11, i64 %t12)
  store i64 %t15, ptr %l11
  br label %bb3
bb2:
  br label %bb8
bb3:
  %t16 = load i64, ptr %l8, !tbaa !24
  %t17 = load i64, ptr %l11, !tbaa !24
  %t18 = icmp sgt i64 %t16, %t17
  br i1 %t18, label %bb4, label %bb5
bb4:
  %t20 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t21 = load i64, ptr %l2, !tbaa !24
  %t24 = call i64 @compiler_2flineedit_2eprevAt(ptr %v0, { i64, ptr } %t20, i64 %t21)
  store i64 %t24, ptr %l16
  br label %bb6
bb5:
  %t25 = load i64, ptr %l2, !tbaa !24
  store i64 %t25, ptr %l13, !tbaa !24
  br label %bb7
bb6:
  %t27 = load i64, ptr %l16, !tbaa !24
  store i64 %t27, ptr %l13, !tbaa !24
  br label %bb7
bb7:
  %t28 = load i64, ptr %l13, !tbaa !24
  %t29 = insertvalue { i32, i64 } zeroinitializer, i64 %t28, 1
  store { i32, i64 } %t29, ptr %rv
  br label %ret
bb8:
  %t30 = load i8, ptr %l1, !tbaa !22
  %t32 = icmp eq i8 %t30, 108
  br i1 %t32, label %bb9, label %bb10
bb9:
  %t34 = load i64, ptr %l2, !tbaa !24
  store i64 %t34, ptr %l20, !tbaa !24
  %t35 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t36 = load i64, ptr %l2, !tbaa !24
  %t39 = call i64 @compiler_2flineedit_2elineEnd(ptr %v0, { i64, ptr } %t35, i64 %t36)
  store i64 %t39, ptr %l23
  br label %bb11
bb10:
  br label %bb16
bb11:
  %t40 = load i64, ptr %l20, !tbaa !24
  %t41 = load i64, ptr %l23, !tbaa !24
  %t42 = icmp slt i64 %t40, %t41
  br i1 %t42, label %bb12, label %bb13
bb12:
  %t44 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t45 = load i64, ptr %l2, !tbaa !24
  %t48 = call i64 @compiler_2flineedit_2enextAt(ptr %v0, { i64, ptr } %t44, i64 %t45)
  store i64 %t48, ptr %l28
  br label %bb14
bb13:
  %t49 = load i64, ptr %l2, !tbaa !24
  store i64 %t49, ptr %l25, !tbaa !24
  br label %bb15
bb14:
  %t51 = load i64, ptr %l28, !tbaa !24
  store i64 %t51, ptr %l25, !tbaa !24
  br label %bb15
bb15:
  %t52 = load i64, ptr %l25, !tbaa !24
  %t53 = insertvalue { i32, i64 } zeroinitializer, i64 %t52, 1
  store { i32, i64 } %t53, ptr %rv
  br label %ret
bb16:
  %t54 = load i8, ptr %l1, !tbaa !22
  %t56 = icmp eq i8 %t54, 119
  br i1 %t56, label %bb17, label %bb18
bb17:
  %t58 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t59 = load i64, ptr %l2, !tbaa !24
  %t62 = call i64 @compiler_2flineedit_2ewordNext(ptr %v0, { i64, ptr } %t58, i64 %t59)
  store i64 %t62, ptr %l34
  br label %bb19
bb18:
  br label %bb20
bb19:
  %t63 = load i64, ptr %l34, !tbaa !24
  %t64 = insertvalue { i32, i64 } zeroinitializer, i64 %t63, 1
  store { i32, i64 } %t64, ptr %rv
  br label %ret
bb20:
  %t65 = load i8, ptr %l1, !tbaa !22
  %t67 = icmp eq i8 %t65, 98
  br i1 %t67, label %bb21, label %bb22
bb21:
  %t69 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t70 = load i64, ptr %l2, !tbaa !24
  %t73 = call i64 @compiler_2flineedit_2ewordBack(ptr %v0, { i64, ptr } %t69, i64 %t70)
  store i64 %t73, ptr %l39
  br label %bb23
bb22:
  br label %bb24
bb23:
  %t74 = load i64, ptr %l39, !tbaa !24
  %t75 = insertvalue { i32, i64 } zeroinitializer, i64 %t74, 1
  store { i32, i64 } %t75, ptr %rv
  br label %ret
bb24:
  %t76 = load i8, ptr %l1, !tbaa !22
  %t78 = icmp eq i8 %t76, 101
  br i1 %t78, label %bb25, label %bb26
bb25:
  %t80 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t81 = load i64, ptr %l2, !tbaa !24
  %t84 = call i64 @compiler_2flineedit_2ewordLast(ptr %v0, { i64, ptr } %t80, i64 %t81)
  store i64 %t84, ptr %l44
  br label %bb27
bb26:
  br label %bb28
bb27:
  %t85 = load i64, ptr %l44, !tbaa !24
  %t86 = insertvalue { i32, i64 } zeroinitializer, i64 %t85, 1
  store { i32, i64 } %t86, ptr %rv
  br label %ret
bb28:
  %t87 = load i8, ptr %l1, !tbaa !22
  %t89 = icmp eq i8 %t87, 48
  br i1 %t89, label %bb29, label %bb30
bb29:
  %t91 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t92 = load i64, ptr %l2, !tbaa !24
  %t95 = call i64 @compiler_2flineedit_2elineStart(ptr %v0, { i64, ptr } %t91, i64 %t92)
  store i64 %t95, ptr %l49
  br label %bb31
bb30:
  br label %bb32
bb31:
  %t96 = load i64, ptr %l49, !tbaa !24
  %t97 = insertvalue { i32, i64 } zeroinitializer, i64 %t96, 1
  store { i32, i64 } %t97, ptr %rv
  br label %ret
bb32:
  %t98 = load i8, ptr %l1, !tbaa !22
  %t100 = icmp eq i8 %t98, 36
  br i1 %t100, label %bb33, label %bb34
bb33:
  %t102 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t103 = load i64, ptr %l2, !tbaa !24
  %t106 = call i64 @compiler_2flineedit_2elineEnd(ptr %v0, { i64, ptr } %t102, i64 %t103)
  store i64 %t106, ptr %l54
  br label %bb35
bb34:
  br label %bb36
bb35:
  %t107 = load i64, ptr %l54, !tbaa !24
  %t108 = insertvalue { i32, i64 } zeroinitializer, i64 %t107, 1
  store { i32, i64 } %t108, ptr %rv
  br label %ret
bb36:
  %t109 = load i8, ptr %l1, !tbaa !22
  %t111 = icmp eq i8 %t109, 94
  br i1 %t111, label %bb37, label %bb38
bb37:
  %t113 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t114 = load i64, ptr %l2, !tbaa !24
  %t117 = call i64 @compiler_2flineedit_2efirstWord(ptr %v0, { i64, ptr } %t113, i64 %t114)
  store i64 %t117, ptr %l59
  br label %bb39
bb38:
  br label %bb40
bb39:
  %t118 = load i64, ptr %l59, !tbaa !24
  %t119 = insertvalue { i32, i64 } zeroinitializer, i64 %t118, 1
  store { i32, i64 } %t119, ptr %rv
  br label %ret
bb40:
  %t121 = insertvalue { i32, i64 } zeroinitializer, i32 65536, 0
  store { i32, i64 } %t121, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i64 }, ptr %rv
  ret { i32, i64 } %rr
}

define dso_local void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2etoNormal(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l5 = alloca i64
  %l10 = alloca i64
  %l12 = alloca ptr
  %l17 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lineedit:Editor", ptr %t1, i32 0, i32 5
  store i1 true, ptr %t3, !tbaa !21
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/lineedit:Editor", ptr %t4, i32 0, i32 32
  store i64 0, ptr %t6, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/lineedit:Editor", ptr %t7, i32 0, i32 33
  store i8 0, ptr %t9, !tbaa !22
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/lineedit:Editor", ptr %t10, i32 0, i32 4
  %t13 = load i64, ptr %t12, !tbaa !24
  store i64 %t13, ptr %l5, !tbaa !24
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/lineedit:Editor", ptr %t14, i32 0, i32 3
  %t17 = load { i64, ptr }, ptr %t16, !tbaa !27
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/lineedit:Editor", ptr %t18, i32 0, i32 4
  %t21 = load i64, ptr %t20, !tbaa !24
  %t24 = call i64 @compiler_2flineedit_2elineStart(ptr %v0, { i64, ptr } %t17, i64 %t21)
  store i64 %t24, ptr %l10
  br label %bb1
bb1:
  %t25 = load i64, ptr %l5, !tbaa !24
  %t26 = load i64, ptr %l10, !tbaa !24
  %t27 = icmp sgt i64 %t25, %t26
  br i1 %t27, label %bb2, label %bb3
bb2:
  %t29 = load ptr, ptr %l0, !tbaa !29
  store ptr %t29, ptr %l12, !tbaa !29
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/lineedit:Editor", ptr %t30, i32 0, i32 3
  %t33 = load { i64, ptr }, ptr %t32, !tbaa !27
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/lineedit:Editor", ptr %t34, i32 0, i32 4
  %t37 = load i64, ptr %t36, !tbaa !24
  %t40 = call i64 @compiler_2flineedit_2eprevAt(ptr %v0, { i64, ptr } %t33, i64 %t37)
  store i64 %t40, ptr %l17
  br label %bb4
bb3:
  br label %bb5
bb4:
  %t41 = load i64, ptr %l17, !tbaa !24
  %t42 = load ptr, ptr %l12, !tbaa !29
  %t43 = getelementptr %"compiler/lineedit:Editor", ptr %t42, i32 0, i32 4
  store i64 %t41, ptr %t43, !tbaa !24
  br label %bb5
bb5:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2etoggle(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca %"std/prelude/text:StringBuilder"
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i8
  %l12 = alloca { i64, ptr }
  %l14 = alloca i64
  %l19 = alloca i64
  %l21 = alloca i64
  %l23 = alloca { i64, ptr }
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l32 = alloca %"std/prelude/text:StringBuilder"
  %l40 = alloca { i64, ptr }
  %l45 = alloca i1
  %l48 = alloca i8
  %l53 = alloca i1
  %l56 = alloca i8
  %l69 = alloca ptr
  %l71 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lineedit:Editor", ptr %t1, i32 0, i32 3
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l12, !tbaa !27
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/lineedit:Editor", ptr %t5, i32 0, i32 4
  %t8 = load i64, ptr %t7, !tbaa !24
  store i64 %t8, ptr %l14, !tbaa !24
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/lineedit:Editor", ptr %t9, i32 0, i32 3
  %t12 = load { i64, ptr }, ptr %t11, !tbaa !27
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/lineedit:Editor", ptr %t13, i32 0, i32 4
  %t16 = load i64, ptr %t15, !tbaa !24
  %t19 = call i64 @compiler_2flineedit_2elineEnd(ptr %v0, { i64, ptr } %t12, i64 %t16)
  store i64 %t19, ptr %l19
  br label %bb1
bb1:
  %t21 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t22 = load i64, ptr %l14, !tbaa !24
  %t23 = load i64, ptr %l19, !tbaa !24
  %t25 = call i64 @compiler_2flineedit_2eoffsetOf(ptr %v0, { i64, ptr } %t21, i64 %t22, i64 %t23, i64 %a1)
  store i64 %t25, ptr %l21
  br label %bb2
bb2:
  %t26 = load i64, ptr %l21, !tbaa !24
  store i64 %t26, ptr %l2, !tbaa !24
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/lineedit:Editor", ptr %t27, i32 0, i32 3
  %t30 = load { i64, ptr }, ptr %t29, !tbaa !27
  store { i64, ptr } %t30, ptr %l23, !tbaa !27
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/lineedit:Editor", ptr %t31, i32 0, i32 4
  %t34 = load i64, ptr %t33, !tbaa !24
  store i64 %t34, ptr %l25, !tbaa !24
  %t35 = load i64, ptr %l2, !tbaa !24
  store i64 %t35, ptr %l26, !tbaa !24
  %t36 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t36, 0
  store i64 %t37, ptr %l27, !tbaa !24
  %t38 = load i64, ptr %l25, !tbaa !24
  %t39 = icmp sge i64 %t38, 0
  br i1 %t39, label %bb3, label %bb4
bb3:
  %t41 = load i64, ptr %l25, !tbaa !24
  %t42 = load i64, ptr %l26, !tbaa !24
  %t43 = icmp sle i64 %t41, %t42
  br i1 %t43, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_54806be5a60651c2_4a35e5984fb8c156)
  unreachable
bb5:
  %t45 = load i64, ptr %l26, !tbaa !24
  %t46 = load i64, ptr %l27, !tbaa !24
  %t47 = icmp sle i64 %t45, %t46
  br i1 %t47, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_54806be5a60651c2_4a35e5984fb8c156)
  unreachable
bb7:
  %t49 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !27
  %t51 = load i64, ptr %l25, !tbaa !24
  %t52 = load i64, ptr %l26, !tbaa !24
  %t53 = getelementptr i8, ptr %t50, i64 %t51
  %t54 = sub i64 %t52, %t51
  %t55 = insertvalue { i64, ptr } undef, i64 %t54, 0
  %t56 = insertvalue { i64, ptr } %t55, ptr %t53, 1
  store { i64, ptr } %t56, ptr %l3, !tbaa !27
  %t58 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t58, ptr %l32
  br label %bb9
bb8:
  call void @__olang_check_failed(ptr @olang_loc_54806be5a60651c2_4a35e5984fb8c156)
  unreachable
bb9:
  %t59 = load %"std/prelude/text:StringBuilder", ptr %l32
  store %"std/prelude/text:StringBuilder" %t59, ptr %l4
  %t60 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t60, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t62 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t64 = extractvalue { i64, ptr } %t62, 0
  store i64 %t64, ptr %l7, !tbaa !24
  br label %bb10
bb10:
  %t66 = load i64, ptr %l6, !tbaa !24
  %t67 = load i64, ptr %l7, !tbaa !24
  %t70 = icmp slt i64 %t66, %t67
  %t72 = xor i1 %t70, true
  br i1 %t72, label %bb11, label %bb12
bb11:
  br label %bb28
bb12:
  br label %bb13
bb13:
  %t74 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t74, ptr %l40, !tbaa !27
  %t75 = load i64, ptr %l6, !tbaa !24
  %t77 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !27
  %t79 = getelementptr i8, ptr %t78, i64 %t75
  %t80 = load i8, ptr %t79, !tbaa !32
  store i8 %t80, ptr %l8, !tbaa !22
  %t82 = load i8, ptr %l8, !tbaa !22
  %t84 = icmp uge i8 %t82, 97
  br i1 %t84, label %bb14, label %bb15
bb14:
  %t86 = load i8, ptr %l8, !tbaa !22
  %t88 = icmp ule i8 %t86, 122
  store i1 %t88, ptr %l45, !tbaa !21
  br label %bb16
bb15:
  store i1 false, ptr %l45, !tbaa !21
  br label %bb16
bb16:
  %t90 = load i1, ptr %l45, !tbaa !21
  br i1 %t90, label %bb17, label %bb18
bb17:
  %t91 = load i8, ptr %l8, !tbaa !22
  %t93 = sub i8 %t91, 32
  store i8 %t93, ptr %l48, !tbaa !22
  br label %bb25
bb18:
  %t95 = load i8, ptr %l8, !tbaa !22
  %t97 = icmp uge i8 %t95, 65
  br i1 %t97, label %bb19, label %bb20
bb19:
  %t99 = load i8, ptr %l8, !tbaa !22
  %t101 = icmp ule i8 %t99, 90
  store i1 %t101, ptr %l53, !tbaa !21
  br label %bb21
bb20:
  store i1 false, ptr %l53, !tbaa !21
  br label %bb21
bb21:
  %t103 = load i1, ptr %l53, !tbaa !21
  br i1 %t103, label %bb22, label %bb23
bb22:
  %t104 = load i8, ptr %l8, !tbaa !22
  %t106 = add i8 %t104, 32
  store i8 %t106, ptr %l56, !tbaa !22
  br label %bb24
bb23:
  %t108 = load i8, ptr %l8, !tbaa !22
  store i8 %t108, ptr %l56, !tbaa !22
  br label %bb24
bb24:
  %t110 = load i8, ptr %l56, !tbaa !22
  store i8 %t110, ptr %l48, !tbaa !22
  br label %bb25
bb25:
  %t111 = load i8, ptr %l48, !tbaa !22
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l4, i8 %t111)
  br label %bb26
bb26:
  br label %bb27
bb27:
  %t115 = load i64, ptr %l6, !tbaa !24
  %t117 = add i64 %t115, 1
  store i64 %t117, ptr %l6, !tbaa !24
  br label %bb10
bb28:
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr %"compiler/lineedit:Editor", ptr %t119, i32 0, i32 4
  %t122 = load i64, ptr %t121, !tbaa !24
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t126 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eremove(ptr %v0, ptr %t124, i64 %t122, i64 %t126, i1 false)
  br label %bb29
bb29:
  %t130 = load ptr, ptr %l0, !tbaa !29
  store ptr %t130, ptr %l69, !tbaa !29
  %t132 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %l4)
  store { i64, ptr } %t132, ptr %l71
  br label %bb30
bb30:
  %t133 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t134 = extractvalue { i64, ptr } %t133, 0
  %t135 = extractvalue { i64, ptr } %t133, 1
  %t136 = mul i64 %t134, 1
  %t137 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t136)
  call void @llvm.memcpy.p0.p0.i64(ptr %t137, ptr %t135, i64 %t136, i1 false)
  %t138 = insertvalue { i64, ptr } undef, i64 %t134, 0
  %t139 = insertvalue { i64, ptr } %t138, ptr %t137, 1
  %t140 = load ptr, ptr %l69, !tbaa !29
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2einsert(ptr %v0, ptr %s0, ptr %t140, { i64, ptr } %t139)
  br label %bb31
bb31:
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t143 = load i64, ptr %l2, !tbaa !24
  %t146 = getelementptr %"compiler/lineedit:Editor", ptr %t142, i32 0, i32 4
  store i64 %t143, ptr %t146, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2etyped(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l15 = alloca { i64, ptr }
  %l21 = alloca i32
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  store i32 0, ptr %l2
  store { i64, ptr } %a1, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t4 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  store i64 %t6, ptr %l5, !tbaa !24
  br label %bb1
bb1:
  %t8 = load i64, ptr %l4, !tbaa !24
  %t9 = load i64, ptr %l5, !tbaa !24
  %t12 = icmp slt i64 %t8, %t9
  %t14 = xor i1 %t12, true
  br i1 %t14, label %bb2, label %bb3
bb2:
  br label %bb7
bb3:
  br label %bb4
bb4:
  %t16 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t16, ptr %l15, !tbaa !27
  %t17 = load i64, ptr %l4, !tbaa !24
  %t19 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !27
  %t21 = getelementptr i8, ptr %t20, i64 %t17
  %t22 = load i8, ptr %t21, !tbaa !32
  %t29 = call i32 @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eFeed(ptr %v0, ptr %a0, i8 %t22)
  store i32 %t29, ptr %l21
  br label %bb5
bb5:
  %t30 = load i32, ptr %l21, !range !{i32 0, i32 4}
  store i32 %t30, ptr %l2
  br label %bb6
bb6:
  %t31 = load i64, ptr %l4, !tbaa !24
  %t33 = add i64 %t31, 1
  store i64 %t33, ptr %l4, !tbaa !24
  br label %bb1
bb7:
  %t35 = load i32, ptr %l2, !range !{i32 0, i32 4}
  store i32 %t35, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eundo(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/lineedit:snap"
  %l2 = alloca %"compiler/lineedit:snap"
  %l5 = alloca %"compiler/lineedit:snap"
  %l6 = alloca i32
  %l7 = alloca ptr
  %l9 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lineedit:Editor", ptr %t1, i32 0, i32 17
  %t5 = call { i32, %"compiler/lineedit:snap" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flineedit_3asnap_3e_2ePop_3ccompiler_2flineedit_3asnap_3e(ptr %v0, ptr %v0, ptr %t3)
  %t6 = extractvalue { i32, %"compiler/lineedit:snap" } %t5, 1
  %t7 = extractvalue { i32, %"compiler/lineedit:snap" } %t5, 0
  store i32 %t7, ptr %l6
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb2, label %ok.9, !prof !99
ok.9:
  store %"compiler/lineedit:snap" %t6, ptr %l5
  br label %bb1
bb1:
  %t10 = load %"compiler/lineedit:snap", ptr %l5
  store %"compiler/lineedit:snap" %t10, ptr %l2
  br label %bb4
bb2:
  br label %bb3
bb3:
  br label %ret
bb4:
  %t11 = load %"compiler/lineedit:snap", ptr %l2
  store %"compiler/lineedit:snap" %t11, ptr %l1
  %t12 = load ptr, ptr %l0, !tbaa !29
  store ptr %t12, ptr %l7, !tbaa !29
  %t13 = getelementptr %"compiler/lineedit:snap", ptr %l1, i32 0, i32 0
  %t14 = load { i64, ptr }, ptr %t13, !tbaa !27
  %t15 = load ptr, ptr %l7, !tbaa !29
  %t16 = getelementptr %"compiler/lineedit:Editor", ptr %t15, i32 0, i32 3
  %t17 = load { i64, ptr }, ptr %t16, !tbaa !27
  store { i64, ptr } %t17, ptr %l9, !tbaa !27
  %t19 = load ptr, ptr %l7, !tbaa !29
  %t20 = getelementptr %"compiler/lineedit:Editor", ptr %t19, i32 0, i32 3
  store { i64, ptr } %t14, ptr %t20, !tbaa !27
  %t21 = load i1, ptr @olang_2esole_2ecompiler_2flineedit_3aEditor_2e3
  br i1 %t21, label %bb5, label %bb6
bb5:
  %t23 = load { i64, ptr }, ptr %l9
  %t24 = extractvalue { i64, ptr } %t23, 1
  call void @__olang_region_release(ptr %t24)
  store { i64, ptr } zeroinitializer, ptr %l9
  br label %bb6
bb6:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/lineedit:snap", ptr %l1, i32 0, i32 1
  %t27 = load i64, ptr %t26, !tbaa !24
  %t30 = getelementptr %"compiler/lineedit:Editor", ptr %t25, i32 0, i32 4
  store i64 %t27, ptr %t30, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eup(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l8 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca { i64, ptr }
  %l17 = alloca i64
  %l19 = alloca i64
  %l20 = alloca { i64, ptr }
  %l21 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lineedit:Editor", ptr %t1, i32 0, i32 3
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l1, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/lineedit:Editor", ptr %t7, i32 0, i32 4
  %t10 = load i64, ptr %t9, !tbaa !24
  %t13 = call i64 @compiler_2flineedit_2elineStart(ptr %v0, { i64, ptr } %t6, i64 %t10)
  store i64 %t13, ptr %l8
  br label %bb1
bb1:
  %t14 = load i64, ptr %l8, !tbaa !24
  store i64 %t14, ptr %l2, !tbaa !24
  %t15 = load i64, ptr %l2, !tbaa !24
  %t17 = icmp eq i64 %t15, 0
  br i1 %t17, label %bb2, label %bb3
bb2:
  %t19 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eolder(ptr %v0, ptr %t19)
  br label %bb4
bb3:
  br label %bb5
bb4:
  br label %ret
bb5:
  %t21 = load ptr, ptr %l0, !tbaa !29
  store ptr %t21, ptr %l12, !tbaa !29
  %t22 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t22, ptr %l13, !tbaa !27
  %t23 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t24 = load i64, ptr %l2, !tbaa !24
  %t26 = sub i64 %t24, 1
  %t29 = call i64 @compiler_2flineedit_2elineStart(ptr %v0, { i64, ptr } %t23, i64 %t26)
  store i64 %t29, ptr %l17
  br label %bb6
bb6:
  %t30 = load i64, ptr %l2, !tbaa !24
  %t32 = sub i64 %t30, 1
  store i64 %t32, ptr %l19, !tbaa !24
  %t33 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t33, ptr %l20, !tbaa !27
  %t34 = load i64, ptr %l2, !tbaa !24
  store i64 %t34, ptr %l21, !tbaa !24
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/lineedit:Editor", ptr %t35, i32 0, i32 4
  %t38 = load i64, ptr %t37, !tbaa !24
  store i64 %t38, ptr %l23, !tbaa !24
  %t39 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t39, 0
  store i64 %t40, ptr %l24, !tbaa !24
  %t41 = load i64, ptr %l21, !tbaa !24
  %t42 = icmp sge i64 %t41, 0
  br i1 %t42, label %bb7, label %bb8
bb7:
  %t44 = load i64, ptr %l21, !tbaa !24
  %t45 = load i64, ptr %l23, !tbaa !24
  %t46 = icmp sle i64 %t44, %t45
  br i1 %t46, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_576d906cf1a69575_2b5fe4737c0e1301)
  unreachable
bb9:
  %t48 = load i64, ptr %l23, !tbaa !24
  %t49 = load i64, ptr %l24, !tbaa !24
  %t50 = icmp sle i64 %t48, %t49
  br i1 %t50, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_576d906cf1a69575_2b5fe4737c0e1301)
  unreachable
bb11:
  %t52 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !27
  %t54 = load i64, ptr %l21, !tbaa !24
  %t55 = load i64, ptr %l23, !tbaa !24
  %t56 = getelementptr i8, ptr %t53, i64 %t54
  %t57 = sub i64 %t55, %t54
  %t58 = insertvalue { i64, ptr } undef, i64 %t57, 0
  %t59 = insertvalue { i64, ptr } %t58, ptr %t56, 1
  %t61 = call i64 @compiler_2flineedit_2ecells(ptr %v0, { i64, ptr } %t59)
  store i64 %t61, ptr %l29
  br label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_576d906cf1a69575_2b5fe4737c0e1301)
  unreachable
bb13:
  %t62 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t63 = load i64, ptr %l17, !tbaa !24
  %t64 = load i64, ptr %l19, !tbaa !24
  %t65 = load i64, ptr %l29, !tbaa !24
  %t66 = call i64 @compiler_2flineedit_2eoffsetOf(ptr %v0, { i64, ptr } %t62, i64 %t63, i64 %t64, i64 %t65)
  store i64 %t66, ptr %l30
  br label %bb14
bb14:
  %t67 = load i64, ptr %l30, !tbaa !24
  %t68 = load ptr, ptr %l12, !tbaa !29
  %t69 = getelementptr %"compiler/lineedit:Editor", ptr %t68, i32 0, i32 4
  store i64 %t67, ptr %t69, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2ewholeLine(ptr %v0, ptr %a0, i8 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l7 = alloca { i64, ptr }
  %l13 = alloca i64
  %l17 = alloca i64
  %l25 = alloca ptr
  %l26 = alloca i64
  %l28 = alloca { i64, ptr }
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l38 = alloca { i64, ptr }
  %l44 = alloca i1
  %l47 = alloca i64
  %l55 = alloca i64
  %l64 = alloca ptr
  %l66 = alloca { i64, ptr }
  %l68 = alloca ptr
  %l70 = alloca { i64, ptr }
  %l77 = alloca i64
  %l83 = alloca i64
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lineedit:Editor", ptr %t1, i32 0, i32 3
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l2, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/lineedit:Editor", ptr %t7, i32 0, i32 4
  %t10 = load i64, ptr %t9, !tbaa !24
  %t13 = call i64 @compiler_2flineedit_2elineStart(ptr %v0, { i64, ptr } %t6, i64 %t10)
  store i64 %t13, ptr %l13
  br label %bb1
bb1:
  %t14 = load i64, ptr %l13, !tbaa !24
  store i64 %t14, ptr %l3, !tbaa !24
  %t15 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/lineedit:Editor", ptr %t16, i32 0, i32 4
  %t19 = load i64, ptr %t18, !tbaa !24
  %t22 = call i64 @compiler_2flineedit_2elineEnd(ptr %v0, { i64, ptr } %t15, i64 %t19)
  store i64 %t22, ptr %l17
  br label %bb2
bb2:
  %t23 = load i64, ptr %l17, !tbaa !24
  store i64 %t23, ptr %l4, !tbaa !24
  %t26 = icmp eq i8 %a1, 99
  br i1 %t26, label %bb3, label %bb4
bb3:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load i64, ptr %l3, !tbaa !24
  %t30 = load i64, ptr %l4, !tbaa !24
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eremove(ptr %v0, ptr %t28, i64 %t29, i64 %t30, i1 true)
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/lineedit:Editor", ptr %t34, i32 0, i32 5
  store i1 false, ptr %t36, !tbaa !21
  store i32 0, ptr %rv
  br label %ret
bb6:
  %t38 = load ptr, ptr %l0, !tbaa !29
  store ptr %t38, ptr %l25, !tbaa !29
  %t39 = ptrtoint ptr %v0 to i64
  store i64 %t39, ptr %l26, !tbaa !24
  %t40 = load i1, ptr @olang_2esole_2ecompiler_2flineedit_3aEditor_2e16
  br i1 %t40, label %bb7, label %bb8
bb7:
  %t42 = call ptr @__olang_region_make(ptr %v0)
  %t43 = ptrtoint ptr %t42 to i64
  store i64 %t43, ptr %l26, !tbaa !24
  br label %bb8
bb8:
  %t44 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t44, ptr %l28, !tbaa !27
  %t45 = load i64, ptr %l3, !tbaa !24
  store i64 %t45, ptr %l29, !tbaa !24
  %t46 = load i64, ptr %l4, !tbaa !24
  store i64 %t46, ptr %l30, !tbaa !24
  %t47 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t48 = extractvalue { i64, ptr } %t47, 0
  store i64 %t48, ptr %l31, !tbaa !24
  %t49 = load i64, ptr %l29, !tbaa !24
  %t50 = icmp sge i64 %t49, 0
  br i1 %t50, label %bb9, label %bb10
bb9:
  %t52 = load i64, ptr %l29, !tbaa !24
  %t53 = load i64, ptr %l30, !tbaa !24
  %t54 = icmp sle i64 %t52, %t53
  br i1 %t54, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_55814703dba0f3c7_baa829e140d7f09b)
  unreachable
bb11:
  %t56 = load i64, ptr %l30, !tbaa !24
  %t57 = load i64, ptr %l31, !tbaa !24
  %t58 = icmp sle i64 %t56, %t57
  br i1 %t58, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_55814703dba0f3c7_baa829e140d7f09b)
  unreachable
bb13:
  %t60 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !27
  %t62 = load i64, ptr %l29, !tbaa !24
  %t63 = load i64, ptr %l30, !tbaa !24
  %t64 = getelementptr i8, ptr %t61, i64 %t62
  %t65 = sub i64 %t63, %t62
  %t66 = insertvalue { i64, ptr } undef, i64 %t65, 0
  %t67 = insertvalue { i64, ptr } %t66, ptr %t64, 1
  %t69 = extractvalue { i64, ptr } %t67, 1
  %t70 = extractvalue { i64, ptr } %t67, 0
  %t71 = load i64, ptr %l26
  %t72 = inttoptr i64 %t71 to ptr
  %t73 = call ptr @__olang_scope_alloc(ptr %t72, i64 %t70)
  call void @olang_textcopy(ptr %t73, ptr %t69, i64 %t70)
  %t74 = insertvalue { i64, ptr } undef, i64 %t70, 0
  %t75 = insertvalue { i64, ptr } %t74, ptr %t73, 1
  %t77 = load i64, ptr %l26
  %t78 = inttoptr i64 %t77 to ptr
  %t79 = extractvalue { i64, ptr } %t75, 0
  %t80 = extractvalue { i64, ptr } %t75, 1
  %t81 = mul i64 %t79, 1
  %t82 = call ptr @__olang_scope_alloc(ptr %t78, i64 %t81)
  call void @llvm.memcpy.p0.p0.i64(ptr %t82, ptr %t80, i64 %t81, i1 false)
  %t83 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t84 = insertvalue { i64, ptr } %t83, ptr %t82, 1
  %t85 = load ptr, ptr %l25, !tbaa !29
  %t86 = getelementptr %"compiler/lineedit:Editor", ptr %t85, i32 0, i32 16
  %t87 = load { i64, ptr }, ptr %t86, !tbaa !27
  store { i64, ptr } %t87, ptr %l38, !tbaa !27
  %t89 = load ptr, ptr %l25, !tbaa !29
  %t90 = getelementptr %"compiler/lineedit:Editor", ptr %t89, i32 0, i32 16
  store { i64, ptr } %t84, ptr %t90, !tbaa !27
  %t91 = load i1, ptr @olang_2esole_2ecompiler_2flineedit_3aEditor_2e16
  br i1 %t91, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_55814703dba0f3c7_baa829e140d7f09b)
  unreachable
bb15:
  %t93 = load { i64, ptr }, ptr %l38
  %t94 = extractvalue { i64, ptr } %t93, 1
  call void @__olang_region_release(ptr %t94)
  store { i64, ptr } zeroinitializer, ptr %l38
  br label %bb16
bb16:
  %t95 = load i64, ptr %l4, !tbaa !24
  %t96 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t98 = extractvalue { i64, ptr } %t96, 0
  %t101 = icmp eq i64 %t95, %t98
  br i1 %t101, label %bb17, label %bb18
bb17:
  %t103 = load i64, ptr %l3, !tbaa !24
  %t105 = icmp sgt i64 %t103, 0
  store i1 %t105, ptr %l44, !tbaa !21
  br label %bb19
bb18:
  store i1 false, ptr %l44, !tbaa !21
  br label %bb19
bb19:
  %t107 = load i1, ptr %l44, !tbaa !21
  br i1 %t107, label %bb20, label %bb21
bb20:
  %t108 = load i64, ptr %l3, !tbaa !24
  %t110 = sub i64 %t108, 1
  store i64 %t110, ptr %l47, !tbaa !24
  br label %bb22
bb21:
  %t112 = load i64, ptr %l3, !tbaa !24
  store i64 %t112, ptr %l47, !tbaa !24
  br label %bb22
bb22:
  %t114 = load i64, ptr %l47, !tbaa !24
  store i64 %t114, ptr %l5, !tbaa !24
  %t115 = load i64, ptr %l4, !tbaa !24
  %t116 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t118 = extractvalue { i64, ptr } %t116, 0
  %t121 = icmp slt i64 %t115, %t118
  br i1 %t121, label %bb23, label %bb24
bb23:
  %t123 = load i64, ptr %l4, !tbaa !24
  %t125 = add i64 %t123, 1
  store i64 %t125, ptr %l55, !tbaa !24
  br label %bb25
bb24:
  %t127 = load i64, ptr %l4, !tbaa !24
  store i64 %t127, ptr %l55, !tbaa !24
  br label %bb25
bb25:
  %t129 = load i64, ptr %l55, !tbaa !24
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t132 = getelementptr %"compiler/lineedit:Editor", ptr %t130, i32 0, i32 16
  %t133 = load { i64, ptr }, ptr %t132, !tbaa !27
  store { i64, ptr } %t133, ptr %l7, !tbaa !27
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t136 = load i64, ptr %l5, !tbaa !24
  call void @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2eremove(ptr %v0, ptr %t135, i64 %t136, i64 %t129, i1 false)
  br label %bb26
bb26:
  %t141 = load ptr, ptr %l0, !tbaa !29
  store ptr %t141, ptr %l64, !tbaa !29
  %t142 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t143 = load ptr, ptr %l64, !tbaa !29
  %t144 = getelementptr %"compiler/lineedit:Editor", ptr %t143, i32 0, i32 16
  %t145 = load { i64, ptr }, ptr %t144, !tbaa !27
  store { i64, ptr } %t145, ptr %l66, !tbaa !27
  %t147 = load ptr, ptr %l64, !tbaa !29
  %t148 = getelementptr %"compiler/lineedit:Editor", ptr %t147, i32 0, i32 16
  store { i64, ptr } %t142, ptr %t148, !tbaa !27
  %t149 = load i1, ptr @olang_2esole_2ecompiler_2flineedit_3aEditor_2e16
  br i1 %t149, label %bb27, label %bb28
bb27:
  %t151 = load { i64, ptr }, ptr %l66
  %t152 = extractvalue { i64, ptr } %t151, 1
  call void @__olang_region_release(ptr %t152)
  store { i64, ptr } zeroinitializer, ptr %l66
  br label %bb28
bb28:
  %t153 = load ptr, ptr %l0, !tbaa !29
  store ptr %t153, ptr %l68, !tbaa !29
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr %"compiler/lineedit:Editor", ptr %t154, i32 0, i32 3
  %t157 = load { i64, ptr }, ptr %t156, !tbaa !27
  store { i64, ptr } %t157, ptr %l70, !tbaa !27
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t160 = getelementptr %"compiler/lineedit:Editor", ptr %t158, i32 0, i32 4
  %t161 = load i64, ptr %t160, !tbaa !24
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t164 = getelementptr %"compiler/lineedit:Editor", ptr %t162, i32 0, i32 3
  %t165 = load { i64, ptr }, ptr %t164, !tbaa !27
  %t167 = extractvalue { i64, ptr } %t165, 0
  %t170 = icmp sle i64 %t161, %t167
  br i1 %t170, label %bb29, label %bb30
bb29:
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t174 = getelementptr %"compiler/lineedit:Editor", ptr %t172, i32 0, i32 4
  %t175 = load i64, ptr %t174, !tbaa !24
  store i64 %t175, ptr %l77, !tbaa !24
  br label %bb31
bb30:
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t179 = getelementptr %"compiler/lineedit:Editor", ptr %t177, i32 0, i32 3
  %t180 = load { i64, ptr }, ptr %t179, !tbaa !27
  %t182 = extractvalue { i64, ptr } %t180, 0
  store i64 %t182, ptr %l77, !tbaa !24
  br label %bb31
bb31:
  %t184 = load { i64, ptr }, ptr %l70, !tbaa !27
  %t185 = load i64, ptr %l77, !tbaa !24
  %t186 = call i64 @compiler_2flineedit_2efirstWord(ptr %v0, { i64, ptr } %t184, i64 %t185)
  store i64 %t186, ptr %l83
  br label %bb32
bb32:
  %t187 = load i64, ptr %l83, !tbaa !24
  %t188 = load ptr, ptr %l68, !tbaa !29
  %t189 = getelementptr %"compiler/lineedit:Editor", ptr %t188, i32 0, i32 4
  store i64 %t187, ptr %t189, !tbaa !24
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i64 @compiler_2flineedit_2ecompiler_2flineedit_3aEditor_2ewordsHere(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l13 = alloca i64
  %l19 = alloca i64
  %l22 = alloca i64
  %l43 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lineedit:Editor", ptr %t1, i32 0, i32 3
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/lineedit:Editor", ptr %t5, i32 0, i32 4
  %t8 = load i64, ptr %t7, !tbaa !24
  %t11 = call i64 @compiler_2flineedit_2ewordHere(ptr %v0, { i64, ptr } %t4, i64 %t8)
  store i64 %t11, ptr %l13
  br label %bb1
bb1:
  %t12 = load i64, ptr %l13, !tbaa !24
  store i64 %t12, ptr %l2, !tbaa !24
  store i64 0, ptr %l3, !tbaa !24
  %t15 = sub i64 %a1, 1
  store i64 %t15, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t17 = load i64, ptr %l4, !tbaa !24
  %t18 = load i64, ptr %l3, !tbaa !24
  %t21 = icmp sgt i64 %t17, %t18
  br i1 %t21, label %bb2, label %bb3
bb2:
  %t23 = load i64, ptr %l5, !tbaa !24
  %t25 = icmp sgt i64 %t23, 0
  br i1 %t25, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb7
bb4:
  %t27 = load i64, ptr %l4, !tbaa !24
  %t28 = load i64, ptr %l3, !tbaa !24
  %t31 = sub i64 %t27, %t28
  %t32 = load i64, ptr %l5, !tbaa !24
  %t35 = add i64 %t31, %t32
  %t37 = sub i64 %t35, 1
  %t38 = load i64, ptr %l5, !tbaa !24
  %t41 = sdiv i64 %t37, %t38
  store i64 %t41, ptr %l22, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb6
bb6:
  %t43 = load i64, ptr %l22, !tbaa !24
  store i64 %t43, ptr %l19, !tbaa !24
  br label %bb7
bb7:
  %t44 = load i64, ptr %l19, !tbaa !24
  store i64 %t44, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb8
bb8:
  %t45 = load i64, ptr %l7, !tbaa !24
  %t46 = load i64, ptr %l6, !tbaa !24
  %t49 = icmp slt i64 %t45, %t46
  %t51 = xor i1 %t49, true
  br i1 %t51, label %bb9, label %bb10
bb9:
  br label %bb14
bb10:
  br label %bb11
bb11:
  %t53 = load i64, ptr %l3, !tbaa !24
  %t54 = load i64, ptr %l7, !tbaa !24
  %t55 = load i64, ptr %l5, !tbaa !24
  %t58 = mul i64 %t54, %t55
  %t61 = add i64 %t53, %t58
  store i64 %t61, ptr %l8, !tbaa !24
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/lineedit:Editor", ptr %t63, i32 0, i32 3
  %t66 = load { i64, ptr }, ptr %t65, !tbaa !27
  %t67 = load i64, ptr %l2, !tbaa !24
  %t70 = call i64 @compiler_2flineedit_2ewordLast(ptr %v0, { i64, ptr } %t66, i64 %t67)
  store i64 %t70, ptr %l43
  br label %bb12
bb12:
  %t71 = load i64, ptr %l43, !tbaa !24
  store i64 %t71, ptr %l2, !tbaa !24
  br label %bb13
bb13:
  %t72 = load i64, ptr %l7, !tbaa !24
  %t74 = add i64 %t72, 1
  store i64 %t74, ptr %l7, !tbaa !24
  br label %bb8
bb14:
  %t76 = load i64, ptr %l2, !tbaa !24
  store i64 %t76, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2flineedit_2edecode(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca %"std/prelude/text:StringBuilder"
  %l2 = alloca i64
  %l3 = alloca i8
  %l4 = alloca %"std/prelude/text:StringBuilder"
  %l10 = alloca { i64, ptr }
  %l15 = alloca i1
  %l23 = alloca { i64, ptr }
  %l27 = alloca i8
  %l28 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l4
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l4
  store %"std/prelude/text:StringBuilder" %t2, ptr %l1
  store i64 0, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t3 = load i64, ptr %l2, !tbaa !24
  %t4 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t9 = icmp slt i64 %t3, %t6
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb3, label %bb4
bb3:
  br label %bb17
bb4:
  br label %bb5
bb5:
  %t13 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t13, ptr %l10, !tbaa !27
  %t14 = load i64, ptr %l2, !tbaa !24
  %t16 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = getelementptr i8, ptr %t17, i64 %t14
  %t19 = load i8, ptr %t18, !tbaa !32
  store i8 %t19, ptr %l3, !tbaa !22
  %t21 = load i8, ptr %l3, !tbaa !22
  %t23 = icmp eq i8 %t21, 92
  br i1 %t23, label %bb6, label %bb7
bb6:
  %t25 = load i64, ptr %l2, !tbaa !24
  %t27 = add i64 %t25, 1
  %t28 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t28, 0
  %t33 = icmp slt i64 %t27, %t30
  store i1 %t33, ptr %l15, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l15, !tbaa !21
  br label %bb8
bb8:
  %t35 = load i1, ptr %l15, !tbaa !21
  br i1 %t35, label %bb9, label %bb10
bb9:
  %t36 = load i64, ptr %l2, !tbaa !24
  %t38 = add i64 %t36, 1
  store i64 %t38, ptr %l2, !tbaa !24
  %t40 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t40, ptr %l23, !tbaa !27
  %t41 = load i64, ptr %l2, !tbaa !24
  %t43 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !27
  %t45 = getelementptr i8, ptr %t44, i64 %t41
  %t46 = load i8, ptr %t45, !tbaa !32
  %t48 = icmp eq i8 %t46, 110
  br i1 %t48, label %bb11, label %bb12
bb10:
  br label %bb14
bb11:
  store i8 10, ptr %l27, !tbaa !22
  br label %bb13
bb12:
  %t50 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t50, ptr %l28, !tbaa !27
  %t51 = load i64, ptr %l2, !tbaa !24
  %t53 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !27
  %t55 = getelementptr i8, ptr %t54, i64 %t51
  %t56 = load i8, ptr %t55, !tbaa !32
  store i8 %t56, ptr %l27, !tbaa !22
  br label %bb13
bb13:
  %t58 = load i8, ptr %l27, !tbaa !22
  store i8 %t58, ptr %l3, !tbaa !22
  br label %bb14
bb14:
  %t59 = load i8, ptr %l3, !tbaa !22
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 %t59)
  br label %bb15
bb15:
  %t62 = load i64, ptr %l2, !tbaa !24
  %t64 = add i64 %t62, 1
  store i64 %t64, ptr %l2, !tbaa !24
  br label %bb16
bb16:
  br label %bb2
bb17:
  %t67 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l1)
  store { i64, ptr } %t67, ptr %l36
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s0)
  %t68 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t68, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2flineedit_2eencode(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d89, i32 0, i32 1) }, ptr %l3, !tbaa !27
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d90, i32 0, i32 1) }, ptr %l4, !tbaa !27
  %t4 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t6 = call { i64, ptr } @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eReplace_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %s0, ptr %s0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %t4, { i64, ptr } %t5)
  store { i64, ptr } %t6, ptr %l5
  br label %bb1
bb1:
  %t7 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t7, 0
  store i64 %t8, ptr %l6, !tbaa !24
  %t9 = load i64, ptr %l6, !tbaa !24
  %t10 = mul i64 %t9, 1
  %t11 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t10)
  %t12 = insertvalue { i64, ptr } undef, i64 %t9, 0
  %t13 = insertvalue { i64, ptr } %t12, ptr %t11, 1
  store { i64, ptr } %t13, ptr %l7, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = load i64, ptr %l6, !tbaa !24
  %t19 = mul i64 %t18, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t15, ptr %t17, i64 %t19, i1 false)
  %t20 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t20, 0
  %t24 = extractvalue { i64, ptr } %t20, 1
  %t25 = mul i64 %t23, 1
  %t26 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t25)
  call void @llvm.memcpy.p0.p0.i64(ptr %t26, ptr %t24, i64 %t25, i1 false)
  %t27 = insertvalue { i64, ptr } undef, i64 %t23, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t26, 1
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d91, i32 0, i32 1) }, ptr %l11, !tbaa !27
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d92, i32 0, i32 1) }, ptr %l12, !tbaa !27
  %t30 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t31 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t32 = call { i64, ptr } @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eReplace_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v1, ptr %s0, ptr %s0, ptr %v1, { i64, ptr } %t28, { i64, ptr } %t30, { i64, ptr } %t31)
  store { i64, ptr } %t32, ptr %l13
  br label %bb2
bb2:
  %t33 = load { i64, ptr }, ptr %l13, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t33, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2flineedit_2efirstWord(ptr %v0, { i64, ptr } %a0, i64 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l9 = alloca i64
  %l11 = alloca i1
  %l12 = alloca { i64, ptr }
  %l15 = alloca i64
  %rv = alloca i64
  store { i64, ptr } %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call i64 @compiler_2flineedit_2elineStart(ptr %v0, { i64, ptr } %t1, i64 %t2)
  store i64 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i64, ptr %l5, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = load i64, ptr %l2, !tbaa !24
  store i64 %t7, ptr %l6, !tbaa !24
  %t8 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t9 = load i64, ptr %l1, !tbaa !24
  %t12 = call i64 @compiler_2flineedit_2elineEnd(ptr %v0, { i64, ptr } %t8, i64 %t9)
  store i64 %t12, ptr %l9
  br label %bb3
bb3:
  %t13 = load i64, ptr %l6, !tbaa !24
  %t14 = load i64, ptr %l9, !tbaa !24
  %t15 = icmp slt i64 %t13, %t14
  br i1 %t15, label %bb4, label %bb5
bb4:
  %t17 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t17, ptr %l12, !tbaa !27
  %t18 = load i64, ptr %l2, !tbaa !24
  %t20 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr i8, ptr %t21, i64 %t18
  %t23 = load i8, ptr %t22, !tbaa !32
  %t25 = call i64 @compiler_2flineedit_2eclass(i8 %t23)
  store i64 %t25, ptr %l15
  br label %bb6
bb5:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb7
bb6:
  %t26 = load i64, ptr %l15, !tbaa !24
  %t27 = icmp eq i64 %t26, 0
  store i1 %t27, ptr %l11, !tbaa !21
  br label %bb7
bb7:
  %t29 = load i1, ptr %l11, !tbaa !21
  %t30 = xor i1 %t29, true
  br i1 %t30, label %bb8, label %bb9
bb8:
  br label %bb12
bb9:
  br label %bb10
bb10:
  %t32 = load i64, ptr %l2, !tbaa !24
  %t34 = add i64 %t32, 1
  store i64 %t34, ptr %l2, !tbaa !24
  br label %bb11
bb11:
  br label %bb2
bb12:
  %t36 = load i64, ptr %l2, !tbaa !24
  store i64 %t36, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2flineedit_2eincomplete(ptr %v0, { i64, ptr } %a0, i64 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca i64
  %l8 = alloca i1
  %l9 = alloca { i64, ptr }
  %l12 = alloca i1
  %l18 = alloca i1
  %l19 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l28 = alloca i64
  %l29 = alloca { i64, ptr }
  %l33 = alloca i64
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = sub i64 %t1, 1
  store i64 %t3, ptr %l2, !tbaa !24
  br label %bb1
bb1:
  %t5 = load i64, ptr %l2, !tbaa !24
  %t7 = icmp sgt i64 %t5, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t9, ptr %l9, !tbaa !27
  %t10 = load i64, ptr %l2, !tbaa !24
  %t12 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr i8, ptr %t13, i64 %t10
  %t15 = load i8, ptr %t14, !tbaa !32
  %t17 = call i1 @compiler_2flineedit_2eisCont(i8 %t15)
  store i1 %t17, ptr %l12
  br label %bb4
bb3:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb5
bb4:
  %t18 = load i1, ptr %l12, !tbaa !21
  store i1 %t18, ptr %l8, !tbaa !21
  br label %bb5
bb5:
  %t19 = load i1, ptr %l8, !tbaa !21
  %t20 = xor i1 %t19, true
  br i1 %t20, label %bb6, label %bb7
bb6:
  br label %bb10
bb7:
  br label %bb8
bb8:
  %t22 = load i64, ptr %l2, !tbaa !24
  %t24 = sub i64 %t22, 1
  store i64 %t24, ptr %l2, !tbaa !24
  br label %bb9
bb9:
  br label %bb1
bb10:
  %t26 = load i64, ptr %l2, !tbaa !24
  %t28 = icmp slt i64 %t26, 0
  br i1 %t28, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb13
bb12:
  %t30 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t30, ptr %l19, !tbaa !27
  %t31 = load i64, ptr %l2, !tbaa !24
  %t33 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !27
  %t35 = getelementptr i8, ptr %t34, i64 %t31
  %t36 = load i8, ptr %t35, !tbaa !32
  %t38 = icmp ult i8 %t36, -64
  store i1 %t38, ptr %l18, !tbaa !21
  br label %bb13
bb13:
  %t40 = load i1, ptr %l18, !tbaa !21
  br i1 %t40, label %bb14, label %bb15
bb14:
  store i1 false, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t42 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t42, ptr %l24, !tbaa !27
  %t43 = load i64, ptr %l2, !tbaa !24
  %t45 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !27
  %t47 = getelementptr i8, ptr %t46, i64 %t43
  %t48 = load i8, ptr %t47, !tbaa !32
  %t50 = icmp ult i8 %t48, -32
  br i1 %t50, label %bb17, label %bb18
bb17:
  store i64 2, ptr %l28, !tbaa !24
  br label %bb22
bb18:
  %t52 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t52, ptr %l29, !tbaa !27
  %t53 = load i64, ptr %l2, !tbaa !24
  %t55 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !27
  %t57 = getelementptr i8, ptr %t56, i64 %t53
  %t58 = load i8, ptr %t57, !tbaa !32
  %t60 = icmp ult i8 %t58, -16
  br i1 %t60, label %bb19, label %bb20
bb19:
  store i64 3, ptr %l33, !tbaa !24
  br label %bb21
bb20:
  store i64 4, ptr %l33, !tbaa !24
  br label %bb21
bb21:
  %t62 = load i64, ptr %l33, !tbaa !24
  store i64 %t62, ptr %l28, !tbaa !24
  br label %bb22
bb22:
  %t63 = load i64, ptr %l28, !tbaa !24
  %t64 = load i64, ptr %l1, !tbaa !24
  %t65 = load i64, ptr %l2, !tbaa !24
  %t68 = sub i64 %t64, %t65
  %t72 = icmp slt i64 %t68, %t63
  store i1 %t72, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2flineedit_2eindexOf(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l18 = alloca i64
  %l21 = alloca i64
  %l43 = alloca i1
  %l44 = alloca { i64, ptr }
  %l49 = alloca { i64, ptr }
  %rv = alloca i64
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t4 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t9 = sub i64 %t3, %t6
  %t11 = add i64 %t9, 1
  store i64 %t11, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t13 = load i64, ptr %l3, !tbaa !24
  %t14 = load i64, ptr %l2, !tbaa !24
  %t17 = icmp sgt i64 %t13, %t14
  br i1 %t17, label %bb1, label %bb2
bb1:
  %t19 = load i64, ptr %l4, !tbaa !24
  %t21 = icmp sgt i64 %t19, 0
  br i1 %t21, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb6
bb3:
  %t23 = load i64, ptr %l3, !tbaa !24
  %t24 = load i64, ptr %l2, !tbaa !24
  %t27 = sub i64 %t23, %t24
  %t28 = load i64, ptr %l4, !tbaa !24
  %t31 = add i64 %t27, %t28
  %t33 = sub i64 %t31, 1
  %t34 = load i64, ptr %l4, !tbaa !24
  %t37 = sdiv i64 %t33, %t34
  store i64 %t37, ptr %l21, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb5
bb5:
  %t39 = load i64, ptr %l21, !tbaa !24
  store i64 %t39, ptr %l18, !tbaa !24
  br label %bb6
bb6:
  %t40 = load i64, ptr %l18, !tbaa !24
  store i64 %t40, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb7
bb7:
  %t41 = load i64, ptr %l6, !tbaa !24
  %t42 = load i64, ptr %l5, !tbaa !24
  %t45 = icmp slt i64 %t41, %t42
  %t47 = xor i1 %t45, true
  br i1 %t47, label %bb8, label %bb9
bb8:
  br label %bb24
bb9:
  br label %bb10
bb10:
  %t49 = load i64, ptr %l2, !tbaa !24
  %t50 = load i64, ptr %l6, !tbaa !24
  %t51 = load i64, ptr %l4, !tbaa !24
  %t54 = mul i64 %t50, %t51
  %t57 = add i64 %t49, %t54
  store i64 %t57, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb11
bb11:
  %t59 = load i64, ptr %l8, !tbaa !24
  %t60 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t62 = extractvalue { i64, ptr } %t60, 0
  %t65 = icmp slt i64 %t59, %t62
  br i1 %t65, label %bb12, label %bb13
bb12:
  %t67 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t67, ptr %l44, !tbaa !27
  %t68 = load i64, ptr %l7, !tbaa !24
  %t69 = load i64, ptr %l8, !tbaa !24
  %t72 = add i64 %t68, %t69
  %t74 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !27
  %t76 = getelementptr i8, ptr %t75, i64 %t72
  %t77 = load i8, ptr %t76, !tbaa !32
  %t78 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t78, ptr %l49, !tbaa !27
  %t79 = load i64, ptr %l8, !tbaa !24
  %t81 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !27
  %t83 = getelementptr i8, ptr %t82, i64 %t79
  %t84 = load i8, ptr %t83, !tbaa !32
  %t87 = icmp eq i8 %t77, %t84
  store i1 %t87, ptr %l43, !tbaa !21
  br label %bb14
bb13:
  store i1 false, ptr %l43, !tbaa !21
  br label %bb14
bb14:
  %t89 = load i1, ptr %l43, !tbaa !21
  %t90 = xor i1 %t89, true
  br i1 %t90, label %bb15, label %bb16
bb15:
  br label %bb19
bb16:
  br label %bb17
bb17:
  %t92 = load i64, ptr %l8, !tbaa !24
  %t94 = add i64 %t92, 1
  store i64 %t94, ptr %l8, !tbaa !24
  br label %bb18
bb18:
  br label %bb11
bb19:
  %t96 = load i64, ptr %l8, !tbaa !24
  %t97 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t99 = extractvalue { i64, ptr } %t97, 0
  %t102 = icmp eq i64 %t96, %t99
  br i1 %t102, label %bb20, label %bb21
bb20:
  %t104 = load i64, ptr %l7, !tbaa !24
  store i64 %t104, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t106 = load i64, ptr %l6, !tbaa !24
  %t108 = add i64 %t106, 1
  store i64 %t108, ptr %l6, !tbaa !24
  br label %bb7
bb24:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2flineedit_2eisCont(i8 %a0) #0 {
entry:
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = and i8 %a0, -64
  %t5 = icmp eq i8 %t3, -128
  store i1 %t5, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2flineedit_2elineEnd(ptr %v0, { i64, ptr } %a0, i64 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca i64
  %l8 = alloca i1
  %l9 = alloca { i64, ptr }
  %rv = alloca i64
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 %a1, ptr %l2, !tbaa !24
  br label %bb1
bb1:
  %t3 = load i64, ptr %l2, !tbaa !24
  %t4 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t9 = icmp slt i64 %t3, %t6
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t11, ptr %l9, !tbaa !27
  %t12 = load i64, ptr %l2, !tbaa !24
  %t14 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr i8, ptr %t15, i64 %t12
  %t17 = load i8, ptr %t16, !tbaa !32
  %t19 = icmp ne i8 %t17, 10
  store i1 %t19, ptr %l8, !tbaa !21
  br label %bb4
bb3:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb4
bb4:
  %t21 = load i1, ptr %l8, !tbaa !21
  %t22 = xor i1 %t21, true
  br i1 %t22, label %bb5, label %bb6
bb5:
  br label %bb9
bb6:
  br label %bb7
bb7:
  %t24 = load i64, ptr %l2, !tbaa !24
  %t26 = add i64 %t24, 1
  store i64 %t26, ptr %l2, !tbaa !24
  br label %bb8
bb8:
  br label %bb1
bb9:
  %t28 = load i64, ptr %l2, !tbaa !24
  store i64 %t28, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2flineedit_2elineStart(ptr %v0, { i64, ptr } %a0, i64 %a1) #0 {
entry:
  %l2 = alloca i64
  %l6 = alloca i1
  %l7 = alloca { i64, ptr }
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  store i64 %a1, ptr %l2, !tbaa !24
  br label %bb1
bb1:
  %t3 = load i64, ptr %l2, !tbaa !24
  %t5 = icmp sgt i64 %t3, 0
  br i1 %t5, label %bb2, label %bb3
bb2:
  store { i64, ptr } %a0, ptr %l7, !tbaa !27
  %t8 = load i64, ptr %l2, !tbaa !24
  %t10 = sub i64 %t8, 1
  %t12 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr i8, ptr %t13, i64 %t10
  %t15 = load i8, ptr %t14, !tbaa !32
  %t17 = icmp ne i8 %t15, 10
  store i1 %t17, ptr %l6, !tbaa !21
  br label %bb4
bb3:
  store i1 false, ptr %l6, !tbaa !21
  br label %bb4
bb4:
  %t19 = load i1, ptr %l6, !tbaa !21
  %t20 = xor i1 %t19, true
  br i1 %t20, label %bb5, label %bb6
bb5:
  br label %bb9
bb6:
  br label %bb7
bb7:
  %t22 = load i64, ptr %l2, !tbaa !24
  %t24 = sub i64 %t22, 1
  store i64 %t24, ptr %l2, !tbaa !24
  br label %bb8
bb8:
  br label %bb1
bb9:
  %t26 = load i64, ptr %l2, !tbaa !24
  store i64 %t26, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2flineedit_2enextAt(ptr %v0, { i64, ptr } %a0, i64 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca i64
  %l14 = alloca i1
  %l15 = alloca { i64, ptr }
  %l18 = alloca i1
  %rv = alloca i64
  store { i64, ptr } %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t2 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t4 = extractvalue { i64, ptr } %t2, 0
  %t7 = icmp sge i64 %t1, %t4
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load i64, ptr %l1, !tbaa !24
  store i64 %t9, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t11 = load i64, ptr %l1, !tbaa !24
  %t13 = add i64 %t11, 1
  store i64 %t13, ptr %l2, !tbaa !24
  br label %bb4
bb4:
  %t15 = load i64, ptr %l2, !tbaa !24
  %t16 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t16, 0
  %t21 = icmp slt i64 %t15, %t18
  br i1 %t21, label %bb5, label %bb6
bb5:
  %t23 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t23, ptr %l15, !tbaa !27
  %t24 = load i64, ptr %l2, !tbaa !24
  %t26 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = getelementptr i8, ptr %t27, i64 %t24
  %t29 = load i8, ptr %t28, !tbaa !32
  %t31 = call i1 @compiler_2flineedit_2eisCont(i8 %t29)
  store i1 %t31, ptr %l18
  br label %bb7
bb6:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb8
bb7:
  %t32 = load i1, ptr %l18, !tbaa !21
  store i1 %t32, ptr %l14, !tbaa !21
  br label %bb8
bb8:
  %t33 = load i1, ptr %l14, !tbaa !21
  %t34 = xor i1 %t33, true
  br i1 %t34, label %bb9, label %bb10
bb9:
  br label %bb13
bb10:
  br label %bb11
bb11:
  %t36 = load i64, ptr %l2, !tbaa !24
  %t38 = add i64 %t36, 1
  store i64 %t38, ptr %l2, !tbaa !24
  br label %bb12
bb12:
  br label %bb4
bb13:
  %t40 = load i64, ptr %l2, !tbaa !24
  store i64 %t40, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2flineedit_2eoffsetOf(ptr %v0, { i64, ptr } %a0, i64 %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l2 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l16 = alloca i64
  %l19 = alloca i64
  %l42 = alloca i64
  %l48 = alloca i64
  %rv = alloca i64
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store i64 %a1, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  store i64 %a3, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t5 = load i64, ptr %l6, !tbaa !24
  %t6 = load i64, ptr %l5, !tbaa !24
  %t9 = icmp sgt i64 %t5, %t6
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = load i64, ptr %l7, !tbaa !24
  %t13 = icmp sgt i64 %t11, 0
  br i1 %t13, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l16, !tbaa !24
  br label %bb6
bb3:
  %t15 = load i64, ptr %l6, !tbaa !24
  %t16 = load i64, ptr %l5, !tbaa !24
  %t19 = sub i64 %t15, %t16
  %t20 = load i64, ptr %l7, !tbaa !24
  %t23 = add i64 %t19, %t20
  %t25 = sub i64 %t23, 1
  %t26 = load i64, ptr %l7, !tbaa !24
  %t29 = sdiv i64 %t25, %t26
  store i64 %t29, ptr %l19, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb5
bb5:
  %t31 = load i64, ptr %l19, !tbaa !24
  store i64 %t31, ptr %l16, !tbaa !24
  br label %bb6
bb6:
  %t32 = load i64, ptr %l16, !tbaa !24
  store i64 %t32, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb7
bb7:
  %t33 = load i64, ptr %l9, !tbaa !24
  %t34 = load i64, ptr %l8, !tbaa !24
  %t37 = icmp slt i64 %t33, %t34
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb8, label %bb9
bb8:
  br label %bb16
bb9:
  br label %bb10
bb10:
  %t41 = load i64, ptr %l5, !tbaa !24
  %t42 = load i64, ptr %l9, !tbaa !24
  %t43 = load i64, ptr %l7, !tbaa !24
  %t46 = mul i64 %t42, %t43
  %t49 = add i64 %t41, %t46
  store i64 %t49, ptr %l10, !tbaa !24
  %t51 = load i64, ptr %l4, !tbaa !24
  %t52 = load i64, ptr %l2, !tbaa !24
  %t55 = icmp sge i64 %t51, %t52
  br i1 %t55, label %bb11, label %bb12
bb11:
  br label %bb16
bb12:
  br label %bb13
bb13:
  %t58 = load i64, ptr %l4, !tbaa !24
  %t61 = call i64 @compiler_2flineedit_2enextAt(ptr %v0, { i64, ptr } %a0, i64 %t58)
  store i64 %t61, ptr %l42
  br label %bb14
bb14:
  %t62 = load i64, ptr %l42, !tbaa !24
  store i64 %t62, ptr %l4, !tbaa !24
  br label %bb15
bb15:
  %t63 = load i64, ptr %l9, !tbaa !24
  %t65 = add i64 %t63, 1
  store i64 %t65, ptr %l9, !tbaa !24
  br label %bb7
bb16:
  %t67 = load i64, ptr %l4, !tbaa !24
  %t68 = load i64, ptr %l2, !tbaa !24
  %t71 = icmp slt i64 %t67, %t68
  br i1 %t71, label %bb17, label %bb18
bb17:
  %t73 = load i64, ptr %l4, !tbaa !24
  store i64 %t73, ptr %l48, !tbaa !24
  br label %bb19
bb18:
  %t75 = load i64, ptr %l2, !tbaa !24
  store i64 %t75, ptr %l48, !tbaa !24
  br label %bb19
bb19:
  %t77 = load i64, ptr %l48, !tbaa !24
  store i64 %t77, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2flineedit_2eone(ptr %v0, i8 %a0) #0 {
entry:
  %l2 = alloca [1 x i8]
  %l3 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = insertvalue [1 x i8] undef, i8 %a0, 0
  store [1 x i8] %t3, ptr %l2
  %t4 = mul i64 1, 1
  %t5 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t4)
  %t6 = insertvalue { i64, ptr } undef, i64 1, 0
  %t7 = insertvalue { i64, ptr } %t6, ptr %t5, 1
  store { i64, ptr } %t7, ptr %l3, !tbaa !27
  %t8 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !27
  %t10 = mul i64 1, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t9, ptr %l2, i64 %t10, i1 false)
  %t11 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t11, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2flineedit_2eprevAt(ptr %v0, { i64, ptr } %a0, i64 %a1) #0 {
entry:
  %l1 = alloca i64
  %l2 = alloca i64
  %l10 = alloca i1
  %l11 = alloca { i64, ptr }
  %l14 = alloca i1
  %rv = alloca i64
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp sle i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i64 0, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load i64, ptr %l1, !tbaa !24
  %t8 = sub i64 %t6, 1
  store i64 %t8, ptr %l2, !tbaa !24
  br label %bb4
bb4:
  %t10 = load i64, ptr %l2, !tbaa !24
  %t12 = icmp sgt i64 %t10, 0
  br i1 %t12, label %bb5, label %bb6
bb5:
  store { i64, ptr } %a0, ptr %l11, !tbaa !27
  %t15 = load i64, ptr %l2, !tbaa !24
  %t17 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !27
  %t19 = getelementptr i8, ptr %t18, i64 %t15
  %t20 = load i8, ptr %t19, !tbaa !32
  %t22 = call i1 @compiler_2flineedit_2eisCont(i8 %t20)
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
  %t25 = xor i1 %t24, true
  br i1 %t25, label %bb9, label %bb10
bb9:
  br label %bb13
bb10:
  br label %bb11
bb11:
  %t27 = load i64, ptr %l2, !tbaa !24
  %t29 = sub i64 %t27, 1
  store i64 %t29, ptr %l2, !tbaa !24
  br label %bb12
bb12:
  br label %bb4
bb13:
  %t31 = load i64, ptr %l2, !tbaa !24
  store i64 %t31, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2flineedit_2ewordBack(ptr %v0, { i64, ptr } %a0, i64 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l7 = alloca i1
  %l8 = alloca { i64, ptr }
  %l12 = alloca i64
  %l20 = alloca { i64, ptr }
  %l24 = alloca i64
  %l27 = alloca i1
  %l28 = alloca { i64, ptr }
  %l32 = alloca i64
  %rv = alloca i64
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 %a1, ptr %l2, !tbaa !24
  br label %bb1
bb1:
  %t3 = load i64, ptr %l2, !tbaa !24
  %t5 = icmp sgt i64 %t3, 0
  br i1 %t5, label %bb2, label %bb3
bb2:
  %t7 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t7, ptr %l8, !tbaa !27
  %t8 = load i64, ptr %l2, !tbaa !24
  %t10 = sub i64 %t8, 1
  %t12 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr i8, ptr %t13, i64 %t10
  %t15 = load i8, ptr %t14, !tbaa !32
  %t17 = call i64 @compiler_2flineedit_2eclass(i8 %t15)
  store i64 %t17, ptr %l12
  br label %bb4
bb3:
  store i1 false, ptr %l7, !tbaa !21
  br label %bb5
bb4:
  %t18 = load i64, ptr %l12, !tbaa !24
  %t19 = icmp eq i64 %t18, 0
  store i1 %t19, ptr %l7, !tbaa !21
  br label %bb5
bb5:
  %t21 = load i1, ptr %l7, !tbaa !21
  %t22 = xor i1 %t21, true
  br i1 %t22, label %bb6, label %bb7
bb6:
  br label %bb10
bb7:
  br label %bb8
bb8:
  %t24 = load i64, ptr %l2, !tbaa !24
  %t26 = sub i64 %t24, 1
  store i64 %t26, ptr %l2, !tbaa !24
  br label %bb9
bb9:
  br label %bb1
bb10:
  %t28 = load i64, ptr %l2, !tbaa !24
  %t30 = icmp eq i64 %t28, 0
  br i1 %t30, label %bb11, label %bb12
bb11:
  store i64 0, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t33 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t33, ptr %l20, !tbaa !27
  %t34 = load i64, ptr %l2, !tbaa !24
  %t36 = sub i64 %t34, 1
  %t38 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !27
  %t40 = getelementptr i8, ptr %t39, i64 %t36
  %t41 = load i8, ptr %t40, !tbaa !32
  %t43 = call i64 @compiler_2flineedit_2eclass(i8 %t41)
  store i64 %t43, ptr %l24
  br label %bb14
bb14:
  %t44 = load i64, ptr %l24, !tbaa !24
  store i64 %t44, ptr %l3, !tbaa !24
  br label %bb15
bb15:
  %t45 = load i64, ptr %l2, !tbaa !24
  %t47 = icmp sgt i64 %t45, 0
  br i1 %t47, label %bb16, label %bb17
bb16:
  %t49 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t49, ptr %l28, !tbaa !27
  %t50 = load i64, ptr %l2, !tbaa !24
  %t52 = sub i64 %t50, 1
  %t54 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr i8, ptr %t55, i64 %t52
  %t57 = load i8, ptr %t56, !tbaa !32
  %t59 = call i64 @compiler_2flineedit_2eclass(i8 %t57)
  store i64 %t59, ptr %l32
  br label %bb18
bb17:
  store i1 false, ptr %l27, !tbaa !21
  br label %bb19
bb18:
  %t60 = load i64, ptr %l3, !tbaa !24
  %t61 = load i64, ptr %l32, !tbaa !24
  %t63 = icmp eq i64 %t61, %t60
  store i1 %t63, ptr %l27, !tbaa !21
  br label %bb19
bb19:
  %t65 = load i1, ptr %l27, !tbaa !21
  %t66 = xor i1 %t65, true
  br i1 %t66, label %bb20, label %bb21
bb20:
  br label %bb24
bb21:
  br label %bb22
bb22:
  %t68 = load i64, ptr %l2, !tbaa !24
  %t70 = sub i64 %t68, 1
  store i64 %t70, ptr %l2, !tbaa !24
  br label %bb23
bb23:
  br label %bb15
bb24:
  %t72 = load i64, ptr %l2, !tbaa !24
  store i64 %t72, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2flineedit_2ewordEnd(ptr %v0, { i64, ptr } %a0, i64 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca i64
  %l8 = alloca i1
  %l9 = alloca { i64, ptr }
  %l12 = alloca i64
  %l21 = alloca i1
  %l22 = alloca { i64, ptr }
  %l25 = alloca i64
  %rv = alloca i64
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 %a1, ptr %l2, !tbaa !24
  br label %bb1
bb1:
  %t3 = load i64, ptr %l2, !tbaa !24
  %t4 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t9 = icmp slt i64 %t3, %t6
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t11, ptr %l9, !tbaa !27
  %t12 = load i64, ptr %l2, !tbaa !24
  %t14 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr i8, ptr %t15, i64 %t12
  %t17 = load i8, ptr %t16, !tbaa !32
  %t19 = call i64 @compiler_2flineedit_2eclass(i8 %t17)
  store i64 %t19, ptr %l12
  br label %bb4
bb3:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb5
bb4:
  %t20 = load i64, ptr %l12, !tbaa !24
  %t21 = icmp ne i64 %t20, 1
  store i1 %t21, ptr %l8, !tbaa !21
  br label %bb5
bb5:
  %t23 = load i1, ptr %l8, !tbaa !21
  %t24 = xor i1 %t23, true
  br i1 %t24, label %bb6, label %bb7
bb6:
  br label %bb10
bb7:
  br label %bb8
bb8:
  %t26 = load i64, ptr %l2, !tbaa !24
  %t28 = add i64 %t26, 1
  store i64 %t28, ptr %l2, !tbaa !24
  br label %bb9
bb9:
  br label %bb1
bb10:
  br label %bb11
bb11:
  %t30 = load i64, ptr %l2, !tbaa !24
  %t31 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t33 = extractvalue { i64, ptr } %t31, 0
  %t36 = icmp slt i64 %t30, %t33
  br i1 %t36, label %bb12, label %bb13
bb12:
  %t38 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t38, ptr %l22, !tbaa !27
  %t39 = load i64, ptr %l2, !tbaa !24
  %t41 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !27
  %t43 = getelementptr i8, ptr %t42, i64 %t39
  %t44 = load i8, ptr %t43, !tbaa !32
  %t46 = call i64 @compiler_2flineedit_2eclass(i8 %t44)
  store i64 %t46, ptr %l25
  br label %bb14
bb13:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb15
bb14:
  %t47 = load i64, ptr %l25, !tbaa !24
  %t48 = icmp eq i64 %t47, 1
  store i1 %t48, ptr %l21, !tbaa !21
  br label %bb15
bb15:
  %t50 = load i1, ptr %l21, !tbaa !21
  %t51 = xor i1 %t50, true
  br i1 %t51, label %bb16, label %bb17
bb16:
  br label %bb20
bb17:
  br label %bb18
bb18:
  %t53 = load i64, ptr %l2, !tbaa !24
  %t55 = add i64 %t53, 1
  store i64 %t55, ptr %l2, !tbaa !24
  br label %bb19
bb19:
  br label %bb11
bb20:
  %t57 = load i64, ptr %l2, !tbaa !24
  store i64 %t57, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2flineedit_2ewordHere(ptr %v0, { i64, ptr } %a0, i64 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l5 = alloca { i64, ptr }
  %l8 = alloca i64
  %l14 = alloca i1
  %l15 = alloca { i64, ptr }
  %l19 = alloca i64
  %rv = alloca i64
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 %a1, ptr %l2, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t3, ptr %l5, !tbaa !27
  %t4 = load i64, ptr %l2, !tbaa !24
  %t6 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !27
  %t8 = getelementptr i8, ptr %t7, i64 %t4
  %t9 = load i8, ptr %t8, !tbaa !32
  %t11 = call i64 @compiler_2flineedit_2eclass(i8 %t9)
  store i64 %t11, ptr %l8
  br label %bb1
bb1:
  %t12 = load i64, ptr %l8, !tbaa !24
  store i64 %t12, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t13 = load i64, ptr %l2, !tbaa !24
  %t15 = add i64 %t13, 1
  %t16 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t16, 0
  %t21 = icmp slt i64 %t15, %t18
  br i1 %t21, label %bb3, label %bb4
bb3:
  %t23 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t23, ptr %l15, !tbaa !27
  %t24 = load i64, ptr %l2, !tbaa !24
  %t26 = add i64 %t24, 1
  %t28 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !27
  %t30 = getelementptr i8, ptr %t29, i64 %t26
  %t31 = load i8, ptr %t30, !tbaa !32
  %t33 = call i64 @compiler_2flineedit_2eclass(i8 %t31)
  store i64 %t33, ptr %l19
  br label %bb5
bb4:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb6
bb5:
  %t34 = load i64, ptr %l3, !tbaa !24
  %t35 = load i64, ptr %l19, !tbaa !24
  %t37 = icmp eq i64 %t35, %t34
  store i1 %t37, ptr %l14, !tbaa !21
  br label %bb6
bb6:
  %t39 = load i1, ptr %l14, !tbaa !21
  %t40 = xor i1 %t39, true
  br i1 %t40, label %bb7, label %bb8
bb7:
  br label %bb11
bb8:
  br label %bb9
bb9:
  %t42 = load i64, ptr %l2, !tbaa !24
  %t44 = add i64 %t42, 1
  store i64 %t44, ptr %l2, !tbaa !24
  br label %bb10
bb10:
  br label %bb2
bb11:
  %t46 = load i64, ptr %l2, !tbaa !24
  store i64 %t46, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2flineedit_2ewordLast(ptr %v0, { i64, ptr } %a0, i64 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l6 = alloca i64
  %l11 = alloca i1
  %l12 = alloca { i64, ptr }
  %l15 = alloca i64
  %l27 = alloca i64
  %l28 = alloca { i64, ptr }
  %l31 = alloca i64
  %l37 = alloca i1
  %l38 = alloca { i64, ptr }
  %l42 = alloca i64
  %rv = alloca i64
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t5 = call i64 @compiler_2flineedit_2enextAt(ptr %v0, { i64, ptr } %t1, i64 %a1)
  store i64 %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load i64, ptr %l6, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = load i64, ptr %l2, !tbaa !24
  %t8 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  %t13 = icmp slt i64 %t7, %t10
  br i1 %t13, label %bb3, label %bb4
bb3:
  %t15 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t15, ptr %l12, !tbaa !27
  %t16 = load i64, ptr %l2, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr i8, ptr %t19, i64 %t16
  %t21 = load i8, ptr %t20, !tbaa !32
  %t23 = call i64 @compiler_2flineedit_2eclass(i8 %t21)
  store i64 %t23, ptr %l15
  br label %bb5
bb4:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb6
bb5:
  %t24 = load i64, ptr %l15, !tbaa !24
  %t25 = icmp eq i64 %t24, 0
  store i1 %t25, ptr %l11, !tbaa !21
  br label %bb6
bb6:
  %t27 = load i1, ptr %l11, !tbaa !21
  %t28 = xor i1 %t27, true
  br i1 %t28, label %bb7, label %bb8
bb7:
  br label %bb11
bb8:
  br label %bb9
bb9:
  %t30 = load i64, ptr %l2, !tbaa !24
  %t32 = add i64 %t30, 1
  store i64 %t32, ptr %l2, !tbaa !24
  br label %bb10
bb10:
  br label %bb2
bb11:
  %t34 = load i64, ptr %l2, !tbaa !24
  %t35 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t35, 0
  %t40 = icmp sge i64 %t34, %t37
  br i1 %t40, label %bb12, label %bb13
bb12:
  %t42 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t43 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t43, 0
  %t48 = call i64 @compiler_2flineedit_2eprevAt(ptr %v0, { i64, ptr } %t42, i64 %t45)
  store i64 %t48, ptr %l27
  br label %bb14
bb13:
  br label %bb15
bb14:
  %t49 = load i64, ptr %l27, !tbaa !24
  store i64 %t49, ptr %rv
  br label %ret
bb15:
  %t50 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t50, ptr %l28, !tbaa !27
  %t51 = load i64, ptr %l2, !tbaa !24
  %t53 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !27
  %t55 = getelementptr i8, ptr %t54, i64 %t51
  %t56 = load i8, ptr %t55, !tbaa !32
  %t58 = call i64 @compiler_2flineedit_2eclass(i8 %t56)
  store i64 %t58, ptr %l31
  br label %bb16
bb16:
  %t59 = load i64, ptr %l31, !tbaa !24
  store i64 %t59, ptr %l3, !tbaa !24
  br label %bb17
bb17:
  %t60 = load i64, ptr %l2, !tbaa !24
  %t62 = add i64 %t60, 1
  %t63 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t65 = extractvalue { i64, ptr } %t63, 0
  %t68 = icmp slt i64 %t62, %t65
  br i1 %t68, label %bb18, label %bb19
bb18:
  %t70 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t70, ptr %l38, !tbaa !27
  %t71 = load i64, ptr %l2, !tbaa !24
  %t73 = add i64 %t71, 1
  %t75 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = getelementptr i8, ptr %t76, i64 %t73
  %t78 = load i8, ptr %t77, !tbaa !32
  %t80 = call i64 @compiler_2flineedit_2eclass(i8 %t78)
  store i64 %t80, ptr %l42
  br label %bb20
bb19:
  store i1 false, ptr %l37, !tbaa !21
  br label %bb21
bb20:
  %t81 = load i64, ptr %l3, !tbaa !24
  %t82 = load i64, ptr %l42, !tbaa !24
  %t84 = icmp eq i64 %t82, %t81
  store i1 %t84, ptr %l37, !tbaa !21
  br label %bb21
bb21:
  %t86 = load i1, ptr %l37, !tbaa !21
  %t87 = xor i1 %t86, true
  br i1 %t87, label %bb22, label %bb23
bb22:
  br label %bb26
bb23:
  br label %bb24
bb24:
  %t89 = load i64, ptr %l2, !tbaa !24
  %t91 = add i64 %t89, 1
  store i64 %t91, ptr %l2, !tbaa !24
  br label %bb25
bb25:
  br label %bb17
bb26:
  %t93 = load i64, ptr %l2, !tbaa !24
  store i64 %t93, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2flineedit_2ewordNext(ptr %v0, { i64, ptr } %a0, i64 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l9 = alloca { i64, ptr }
  %l12 = alloca i64
  %l17 = alloca i1
  %l20 = alloca i1
  %l21 = alloca { i64, ptr }
  %l24 = alloca i64
  %l34 = alloca i1
  %l35 = alloca { i64, ptr }
  %l38 = alloca i64
  %rv = alloca i64
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 %a1, ptr %l2, !tbaa !24
  %t3 = load i64, ptr %l2, !tbaa !24
  %t4 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t9 = icmp slt i64 %t3, %t6
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t11, ptr %l9, !tbaa !27
  %t12 = load i64, ptr %l2, !tbaa !24
  %t14 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr i8, ptr %t15, i64 %t12
  %t17 = load i8, ptr %t16, !tbaa !32
  %t19 = call i64 @compiler_2flineedit_2eclass(i8 %t17)
  store i64 %t19, ptr %l12
  br label %bb3
bb2:
  br label %bb17
bb3:
  %t20 = load i64, ptr %l12, !tbaa !24
  store i64 %t20, ptr %l3, !tbaa !24
  br label %bb4
bb4:
  %t21 = load i64, ptr %l2, !tbaa !24
  %t22 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t24 = extractvalue { i64, ptr } %t22, 0
  %t27 = icmp slt i64 %t21, %t24
  br i1 %t27, label %bb5, label %bb6
bb5:
  %t29 = load i64, ptr %l3, !tbaa !24
  %t31 = icmp ne i64 %t29, 0
  store i1 %t31, ptr %l17, !tbaa !21
  br label %bb7
bb6:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb7
bb7:
  %t33 = load i1, ptr %l17, !tbaa !21
  br i1 %t33, label %bb8, label %bb9
bb8:
  %t34 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t34, ptr %l21, !tbaa !27
  %t35 = load i64, ptr %l2, !tbaa !24
  %t37 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = getelementptr i8, ptr %t38, i64 %t35
  %t40 = load i8, ptr %t39, !tbaa !32
  %t42 = call i64 @compiler_2flineedit_2eclass(i8 %t40)
  store i64 %t42, ptr %l24
  br label %bb10
bb9:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb11
bb10:
  %t43 = load i64, ptr %l3, !tbaa !24
  %t44 = load i64, ptr %l24, !tbaa !24
  %t46 = icmp eq i64 %t44, %t43
  store i1 %t46, ptr %l20, !tbaa !21
  br label %bb11
bb11:
  %t48 = load i1, ptr %l20, !tbaa !21
  %t49 = xor i1 %t48, true
  br i1 %t49, label %bb12, label %bb13
bb12:
  br label %bb16
bb13:
  br label %bb14
bb14:
  %t51 = load i64, ptr %l2, !tbaa !24
  %t53 = add i64 %t51, 1
  store i64 %t53, ptr %l2, !tbaa !24
  br label %bb15
bb15:
  br label %bb4
bb16:
  br label %bb17
bb17:
  br label %bb18
bb18:
  %t55 = load i64, ptr %l2, !tbaa !24
  %t56 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t58 = extractvalue { i64, ptr } %t56, 0
  %t61 = icmp slt i64 %t55, %t58
  br i1 %t61, label %bb19, label %bb20
bb19:
  %t63 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t63, ptr %l35, !tbaa !27
  %t64 = load i64, ptr %l2, !tbaa !24
  %t66 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !27
  %t68 = getelementptr i8, ptr %t67, i64 %t64
  %t69 = load i8, ptr %t68, !tbaa !32
  %t71 = call i64 @compiler_2flineedit_2eclass(i8 %t69)
  store i64 %t71, ptr %l38
  br label %bb21
bb20:
  store i1 false, ptr %l34, !tbaa !21
  br label %bb22
bb21:
  %t72 = load i64, ptr %l38, !tbaa !24
  %t73 = icmp eq i64 %t72, 0
  store i1 %t73, ptr %l34, !tbaa !21
  br label %bb22
bb22:
  %t75 = load i1, ptr %l34, !tbaa !21
  %t76 = xor i1 %t75, true
  br i1 %t76, label %bb23, label %bb24
bb23:
  br label %bb27
bb24:
  br label %bb25
bb25:
  %t78 = load i64, ptr %l2, !tbaa !24
  %t80 = add i64 %t78, 1
  store i64 %t80, ptr %l2, !tbaa !24
  br label %bb26
bb26:
  br label %bb18
bb27:
  %t82 = load i64, ptr %l2, !tbaa !24
  store i64 %t82, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2flineedit_3aEditor_2ector(ptr %out, ptr %v0, i1 %a0, i1 %a1, i64 %a2) #0 {
entry:
  %l3 = alloca i1
  %l4 = alloca i1
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i1
  %l9 = alloca %"std/prelude/text:StringBuilder"
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l20 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l21 = alloca i64
  %l22 = alloca i1
  %l23 = alloca i1
  %l24 = alloca i1
  %l25 = alloca i1
  %l26 = alloca i1
  %l27 = alloca i1
  %l28 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %l30 = alloca i64
  %l31 = alloca i1
  %l32 = alloca { i64, ptr }
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i64
  %l36 = alloca i8
  %l37 = alloca i64
  %l43 = alloca i64
  %l45 = alloca %"std/prelude/text:StringBuilder"
  %l47 = alloca i64
  %l49 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l51 = alloca i64
  %l53 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l55 = alloca i64
  %l57 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l59 = alloca %"compiler/lineedit:Editor"
  br label %start
start:
  br label %bb0
bb0:
  store i1 %a0, ptr %l3, !tbaa !21
  store i1 %a1, ptr %l4, !tbaa !21
  store i64 %a2, ptr %l5, !tbaa !24
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d93, i32 0, i32 1) }, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  store i1 false, ptr %l8, !tbaa !21
  %t7 = ptrtoint ptr %v0 to i64
  store i64 %t7, ptr %l43, !tbaa !24
  %t8 = load i1, ptr @olang_2esole_2ecompiler_2flineedit_3aEditor_2e6
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = call ptr @__olang_region_make(ptr %v0)
  %t11 = ptrtoint ptr %t10 to i64
  store i64 %t11, ptr %l43, !tbaa !24
  br label %bb2
bb2:
  %t12 = load i64, ptr %l43
  %t13 = inttoptr i64 %t12 to ptr
  %t14 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %t13)
  store %"std/prelude/text:StringBuilder" %t14, ptr %l45
  br label %bb3
bb3:
  %t15 = load i1, ptr @olang_2esole_2ecompiler_2flineedit_3aEditor_2e6
  br i1 %t15, label %bb4, label %bb5
bb4:
  %t17 = load i64, ptr %l43
  %t18 = inttoptr i64 %t17 to ptr
  %t19 = getelementptr %"std/prelude/text:StringBuilder", ptr %l45, i32 0, i32 0
  %t20 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t19, i32 0, i32 0
  %t21 = load { i64, ptr }, ptr %t20
  %t22 = extractvalue { i64, ptr } %t21, 1
  %t23 = call ptr @__olang_region_or(ptr %t22, ptr null)
  %t24 = call ptr @__olang_region_home(ptr %t23)
  %t25 = icmp ne ptr %t24, null
  %t26 = select i1 %t25, ptr %t24, ptr null
  %t27 = icmp eq ptr %t26, %t18
  call void @__olang_region_settle(ptr %t18, i1 %t27)
  br label %bb5
bb5:
  %t28 = load %"std/prelude/text:StringBuilder", ptr %l45
  store %"std/prelude/text:StringBuilder" %t28, ptr %l9
  %t29 = ptrtoint ptr %v0 to i64
  store i64 %t29, ptr %l47, !tbaa !24
  %t30 = load i1, ptr @olang_2esole_2ecompiler_2flineedit_3aEditor_2e7
  br i1 %t30, label %bb6, label %bb7
bb6:
  %t32 = call ptr @__olang_region_make(ptr %v0)
  %t33 = ptrtoint ptr %t32 to i64
  store i64 %t33, ptr %l47, !tbaa !24
  br label %bb7
bb7:
  %t34 = load i64, ptr %l47
  %t35 = inttoptr i64 %t34 to ptr
  %t36 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t35, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t36, ptr %l49
  br label %bb8
bb8:
  %t37 = load i1, ptr @olang_2esole_2ecompiler_2flineedit_3aEditor_2e7
  br i1 %t37, label %bb9, label %bb10
bb9:
  %t39 = load i64, ptr %l47
  %t40 = inttoptr i64 %t39 to ptr
  %t41 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l49, i32 0, i32 0
  %t42 = load { i64, ptr }, ptr %t41
  %t43 = extractvalue { i64, ptr } %t42, 1
  %t44 = call ptr @__olang_region_or(ptr %t43, ptr null)
  %t45 = call ptr @__olang_region_home(ptr %t44)
  %t46 = icmp ne ptr %t45, null
  %t47 = select i1 %t46, ptr %t45, ptr null
  %t48 = icmp eq ptr %t47, %t40
  call void @__olang_region_settle(ptr %t40, i1 %t48)
  br label %bb10
bb10:
  %t49 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l49
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t49, ptr %l10
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d94, i32 0, i32 1) }, ptr %l11, !tbaa !27
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d95, i32 0, i32 1) }, ptr %l12, !tbaa !27
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d96, i32 0, i32 1) }, ptr %l13, !tbaa !27
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d97, i32 0, i32 1) }, ptr %l14, !tbaa !27
  store i64 0, ptr %l15, !tbaa !24
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d98, i32 0, i32 1) }, ptr %l16, !tbaa !27
  store i64 0, ptr %l17, !tbaa !24
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d99, i32 0, i32 1) }, ptr %l18, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d100, i32 0, i32 1) }, ptr %l19, !tbaa !27
  %t50 = ptrtoint ptr %v0 to i64
  store i64 %t50, ptr %l51, !tbaa !24
  %t51 = load i1, ptr @olang_2esole_2ecompiler_2flineedit_3aEditor_2e17
  br i1 %t51, label %bb11, label %bb12
bb11:
  %t53 = call ptr @__olang_region_make(ptr %v0)
  %t54 = ptrtoint ptr %t53 to i64
  store i64 %t54, ptr %l51, !tbaa !24
  br label %bb12
bb12:
  %t55 = load i64, ptr %l51
  %t56 = inttoptr i64 %t55 to ptr
  %t57 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2flineedit_3asnap_3e_2ector(ptr %t56, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t57, ptr %l53
  br label %bb13
bb13:
  %t58 = load i1, ptr @olang_2esole_2ecompiler_2flineedit_3aEditor_2e17
  br i1 %t58, label %bb14, label %bb15
bb14:
  %t60 = load i64, ptr %l51
  %t61 = inttoptr i64 %t60 to ptr
  %t62 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l53, i32 0, i32 0
  %t63 = load { i64, ptr }, ptr %t62
  %t64 = extractvalue { i64, ptr } %t63, 1
  %t65 = call ptr @__olang_region_or(ptr %t64, ptr null)
  %t66 = call ptr @__olang_region_home(ptr %t65)
  %t67 = icmp ne ptr %t66, null
  %t68 = select i1 %t67, ptr %t66, ptr null
  %t69 = icmp eq ptr %t68, %t61
  call void @__olang_region_settle(ptr %t61, i1 %t69)
  br label %bb15
bb15:
  %t70 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l53
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t70, ptr %l20
  store i64 0, ptr %l21, !tbaa !24
  store i1 false, ptr %l22, !tbaa !21
  store i1 false, ptr %l23, !tbaa !21
  store i1 false, ptr %l24, !tbaa !21
  store i1 false, ptr %l25, !tbaa !21
  store i1 false, ptr %l26, !tbaa !21
  store i1 true, ptr %l27, !tbaa !21
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d101, i32 0, i32 1) }, ptr %l28, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d102, i32 0, i32 1) }, ptr %l29, !tbaa !27
  store i64 0, ptr %l30, !tbaa !24
  store i1 false, ptr %l31, !tbaa !21
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d103, i32 0, i32 1) }, ptr %l32, !tbaa !27
  store i64 0, ptr %l33, !tbaa !24
  store i64 0, ptr %l34, !tbaa !24
  store i64 0, ptr %l35, !tbaa !24
  store i8 0, ptr %l36, !tbaa !22
  store i64 1, ptr %l37, !tbaa !24
  %t71 = ptrtoint ptr %v0 to i64
  store i64 %t71, ptr %l55, !tbaa !24
  %t72 = load i1, ptr @olang_2esole_2ecompiler_2flineedit_3aEditor_2e35
  br i1 %t72, label %bb16, label %bb17
bb16:
  %t74 = call ptr @__olang_region_make(ptr %v0)
  %t75 = ptrtoint ptr %t74 to i64
  store i64 %t75, ptr %l55, !tbaa !24
  br label %bb17
bb17:
  %t76 = load i64, ptr %l55
  %t77 = inttoptr i64 %t76 to ptr
  %t78 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU8_3e_2ector(ptr %t77, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t78, ptr %l57
  br label %bb18
bb18:
  %t79 = load i1, ptr @olang_2esole_2ecompiler_2flineedit_3aEditor_2e35
  br i1 %t79, label %bb19, label %bb20
bb19:
  %t81 = load i64, ptr %l55
  %t82 = inttoptr i64 %t81 to ptr
  %t83 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l57, i32 0, i32 0
  %t84 = load { i64, ptr }, ptr %t83
  %t85 = extractvalue { i64, ptr } %t84, 1
  %t86 = call ptr @__olang_region_or(ptr %t85, ptr null)
  %t87 = call ptr @__olang_region_home(ptr %t86)
  %t88 = icmp ne ptr %t87, null
  %t89 = select i1 %t88, ptr %t87, ptr null
  %t90 = icmp eq ptr %t89, %t82
  call void @__olang_region_settle(ptr %t82, i1 %t90)
  br label %bb20
bb20:
  %t91 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l57
  %t92 = getelementptr %"compiler/lineedit:Editor", ptr %l59, i32 0, i32 0
  %t93 = load i1, ptr %l3, !tbaa !21
  store i1 %t93, ptr %t92, !tbaa !21
  %t94 = getelementptr %"compiler/lineedit:Editor", ptr %l59, i32 0, i32 1
  %t95 = load i1, ptr %l4, !tbaa !21
  store i1 %t95, ptr %t94, !tbaa !21
  %t96 = getelementptr %"compiler/lineedit:Editor", ptr %l59, i32 0, i32 2
  %t97 = load i64, ptr %l5, !tbaa !24
  store i64 %t97, ptr %t96, !tbaa !24
  %t98 = getelementptr %"compiler/lineedit:Editor", ptr %l59, i32 0, i32 3
  %t99 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t99, ptr %t98, !tbaa !27
  %t100 = getelementptr %"compiler/lineedit:Editor", ptr %l59, i32 0, i32 4
  %t101 = load i64, ptr %l7, !tbaa !24
  store i64 %t101, ptr %t100, !tbaa !24
  %t102 = getelementptr %"compiler/lineedit:Editor", ptr %l59, i32 0, i32 5
  %t103 = load i1, ptr %l8, !tbaa !21
  store i1 %t103, ptr %t102, !tbaa !21
  %t104 = getelementptr %"compiler/lineedit:Editor", ptr %l59, i32 0, i32 6
  %t105 = load %"std/prelude/text:StringBuilder", ptr %l9
  store %"std/prelude/text:StringBuilder" %t105, ptr %t104
  %t106 = getelementptr %"compiler/lineedit:Editor", ptr %l59, i32 0, i32 7
  %t107 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t107, ptr %t106
  %t108 = getelementptr %"compiler/lineedit:Editor", ptr %l59, i32 0, i32 8
  %t109 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t109, ptr %t108, !tbaa !27
  %t110 = getelementptr %"compiler/lineedit:Editor", ptr %l59, i32 0, i32 9
  %t111 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t111, ptr %t110, !tbaa !27
  %t112 = getelementptr %"compiler/lineedit:Editor", ptr %l59, i32 0, i32 10
  %t113 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t113, ptr %t112, !tbaa !27
  %t114 = getelementptr %"compiler/lineedit:Editor", ptr %l59, i32 0, i32 11
  %t115 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t115, ptr %t114, !tbaa !27
  %t116 = getelementptr %"compiler/lineedit:Editor", ptr %l59, i32 0, i32 12
  %t117 = load i64, ptr %l15, !tbaa !24
  store i64 %t117, ptr %t116, !tbaa !24
  %t118 = getelementptr %"compiler/lineedit:Editor", ptr %l59, i32 0, i32 13
  %t119 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t119, ptr %t118, !tbaa !27
  %t120 = getelementptr %"compiler/lineedit:Editor", ptr %l59, i32 0, i32 14
  %t121 = load i64, ptr %l17, !tbaa !24
  store i64 %t121, ptr %t120, !tbaa !24
  %t122 = getelementptr %"compiler/lineedit:Editor", ptr %l59, i32 0, i32 15
  %t123 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t123, ptr %t122, !tbaa !27
  %t124 = getelementptr %"compiler/lineedit:Editor", ptr %l59, i32 0, i32 16
  %t125 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t125, ptr %t124, !tbaa !27
  %t126 = getelementptr %"compiler/lineedit:Editor", ptr %l59, i32 0, i32 17
  %t127 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t127, ptr %t126
  %t128 = getelementptr %"compiler/lineedit:Editor", ptr %l59, i32 0, i32 18
  %t129 = load i64, ptr %l21, !tbaa !24
  store i64 %t129, ptr %t128, !tbaa !24
  %t130 = getelementptr %"compiler/lineedit:Editor", ptr %l59, i32 0, i32 19
  %t131 = load i1, ptr %l22, !tbaa !21
  store i1 %t131, ptr %t130, !tbaa !21
  %t132 = getelementptr %"compiler/lineedit:Editor", ptr %l59, i32 0, i32 20
  %t133 = load i1, ptr %l23, !tbaa !21
  store i1 %t133, ptr %t132, !tbaa !21
  %t134 = getelementptr %"compiler/lineedit:Editor", ptr %l59, i32 0, i32 21
  %t135 = load i1, ptr %l24, !tbaa !21
  store i1 %t135, ptr %t134, !tbaa !21
  %t136 = getelementptr %"compiler/lineedit:Editor", ptr %l59, i32 0, i32 22
  %t137 = load i1, ptr %l25, !tbaa !21
  store i1 %t137, ptr %t136, !tbaa !21
  %t138 = getelementptr %"compiler/lineedit:Editor", ptr %l59, i32 0, i32 23
  %t139 = load i1, ptr %l26, !tbaa !21
  store i1 %t139, ptr %t138, !tbaa !21
  %t140 = getelementptr %"compiler/lineedit:Editor", ptr %l59, i32 0, i32 24
  %t141 = load i1, ptr %l27, !tbaa !21
  store i1 %t141, ptr %t140, !tbaa !21
  %t142 = getelementptr %"compiler/lineedit:Editor", ptr %l59, i32 0, i32 25
  %t143 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t143, ptr %t142, !tbaa !27
  %t144 = getelementptr %"compiler/lineedit:Editor", ptr %l59, i32 0, i32 26
  %t145 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t145, ptr %t144, !tbaa !27
  %t146 = getelementptr %"compiler/lineedit:Editor", ptr %l59, i32 0, i32 27
  %t147 = load i64, ptr %l30, !tbaa !24
  store i64 %t147, ptr %t146, !tbaa !24
  %t148 = getelementptr %"compiler/lineedit:Editor", ptr %l59, i32 0, i32 28
  %t149 = load i1, ptr %l31, !tbaa !21
  store i1 %t149, ptr %t148, !tbaa !21
  %t150 = getelementptr %"compiler/lineedit:Editor", ptr %l59, i32 0, i32 29
  %t151 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t151, ptr %t150, !tbaa !27
  %t152 = getelementptr %"compiler/lineedit:Editor", ptr %l59, i32 0, i32 30
  %t153 = load i64, ptr %l33, !tbaa !24
  store i64 %t153, ptr %t152, !tbaa !24
  %t154 = getelementptr %"compiler/lineedit:Editor", ptr %l59, i32 0, i32 31
  %t155 = load i64, ptr %l34, !tbaa !24
  store i64 %t155, ptr %t154, !tbaa !24
  %t156 = getelementptr %"compiler/lineedit:Editor", ptr %l59, i32 0, i32 32
  %t157 = load i64, ptr %l35, !tbaa !24
  store i64 %t157, ptr %t156, !tbaa !24
  %t158 = getelementptr %"compiler/lineedit:Editor", ptr %l59, i32 0, i32 33
  %t159 = load i8, ptr %l36, !tbaa !22
  store i8 %t159, ptr %t158, !tbaa !22
  %t160 = getelementptr %"compiler/lineedit:Editor", ptr %l59, i32 0, i32 34
  %t161 = load i64, ptr %l37, !tbaa !24
  store i64 %t161, ptr %t160, !tbaa !24
  %t162 = getelementptr %"compiler/lineedit:Editor", ptr %l59, i32 0, i32 35
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t91, ptr %t162
  %t164 = getelementptr %"compiler/lineedit:Editor", ptr %l59, i32 0, i32 36
  store i64 0, ptr %t164, !tbaa !24
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l59, i64 432, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/lineedit:snap" @compiler_2flineedit_3asnap_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1) #0 {
entry:
  %rv = alloca %"compiler/lineedit:snap"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"compiler/lineedit:snap" undef, { i64, ptr } %a0, 0
  %t8 = insertvalue %"compiler/lineedit:snap" %t6, i64 %a1, 1
  store %"compiler/lineedit:snap" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/lineedit:snap", ptr %rv
  ret %"compiler/lineedit:snap" %rr
}

@.d0 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"/prompt" }>, align 8
declare void @__olang_check_failed(ptr) cold noreturn
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
@.d1 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"edit vi\0A" }>, align 8
@.d2 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"edit emacs\0A" }>, align 8
@.d3 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"XDG_CONFIG_HOME" }>, align 8
declare void @__olang_errpay_pop()
@.d4 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d5 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d6 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"HOME" }>, align 8
@.d7 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d8 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"/.config/olang/prompt" }>, align 8
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
@.d9 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"/olang/prompt" }>, align 8
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
@.d10 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"XDG_STATE_HOME" }>, align 8
@.d11 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d12 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d13 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"HOME" }>, align 8
@.d14 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d15 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"/.local/state/olang/history" }>, align 8
@.d16 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"/olang/history" }>, align 8
@.d17 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"OLANG_EDIT" }>, align 8
@.d18 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d19 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d20 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"vi" }>, align 8
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@.d21 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d22 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d23 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"edit vi" }>, align 8
@.d24 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\00" }>, align 8
declare i32 @open(ptr, i32, ...)
@.d25 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
declare i32 @close(i32)
declare i32 @ioctl(i32, i64, ptr)
@.d26 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"\0D\0A" }>, align 8
@.d27 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d28 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"    " }>, align 8
@.d29 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d30 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d31 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d32 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\1B" }>, align 8
@.d33 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2flineedit_3aEditor_2e15 = weak hidden constant i1 false
declare void @__olang_region_release(ptr) noinline
@olang_2esole_2ecompiler_2flineedit_3aEditor_2e8 = weak hidden constant i1 false
@.d34 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d35 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d36 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d37 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
define linkonce_odr %"<termios.h>:termios" @olang_2emir_2eHelperKind_2eZero_2e_3ctermios_2eh_3e_3atermios() #0 {
entry:
  %l0 = alloca %"<termios.h>:termios"
  %rv = alloca %"<termios.h>:termios"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr @__olang_prog_scope
  %t2 = call %"<termios.h>:termios" @_3ctermios_2eh_3e_3atermios_2ector(ptr %t1)
  store %"<termios.h>:termios" %t2, ptr %l0
  br label %bb1
bb1:
  %t3 = load %"<termios.h>:termios", ptr %l0
  store %"<termios.h>:termios" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"<termios.h>:termios", ptr %rv
  ret %"<termios.h>:termios" %rr
}

declare i32 @tcgetattr(i32, ptr)
declare i32 @tcsetattr(i32, i32, ptr)
@.d38 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"\1B[?2004h" }>, align 8
@.d39 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"\1B[?2004l" }>, align 8
@.d40 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d41 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d42 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2flineedit_3aEditor_2e26 = weak hidden constant i1 false
@.d43 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2flineedit_3aEditor_2e25 = weak hidden constant i1 false
@.d44 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2flineedit_3aEditor_2e29 = weak hidden constant i1 false
@.d45 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@olang_2esole_2ecompiler_2flineedit_3aEditor_2e3 = weak hidden constant i1 false
@.d46 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"\1B[H\1B[2J" }>, align 8
@.d47 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"\1B[" }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d48 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"A" }>, align 8
@.d49 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"\0D\1B[J" }>, align 8
@.d50 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d51 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d52 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"\0D\0A" }>, align 8
@.d53 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"\0D\0A" }>, align 8
@.d54 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"\0D\0A" }>, align 8
@.d55 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"\1B[" }>, align 8
@.d56 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"A" }>, align 8
@.d57 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0D" }>, align 8
@.d58 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"\1B[" }>, align 8
@.d59 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"C" }>, align 8
@.d60 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d61 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d62 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\1B" }>, align 8
@.d63 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d64 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d65 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d66 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"\0D\0A" }>, align 8
declare i64 @read(i32, ptr, i64)
@.d67 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d68 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"^C\0D\0A" }>, align 8
@.d69 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d70 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2flineedit_3aEditor_2e13 = weak hidden constant i1 false
@.d71 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d72 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d73 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"    " }>, align 8
@olang_2esole_2ecompiler_2flineedit_3aEditor_2e16 = weak hidden constant i1 false
@.d74 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d75 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"200" }>, align 8
@.d76 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"201" }>, align 8
@.d77 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"200" }>, align 8
@.d78 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"1" }>, align 8
@.d79 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"7" }>, align 8
@.d80 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"4" }>, align 8
@.d81 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"8" }>, align 8
@.d82 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"3" }>, align 8
@.d83 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d84 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"?" }>, align 8
@.d85 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"(failed search) " }>, align 8
@.d86 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"(search) " }>, align 8
@.d87 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d88 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\1B" }>, align 8
@.d89 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\5C" }>, align 8
@.d90 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"\5C\5C" }>, align 8
@.d91 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d92 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"\5Cn" }>, align 8
@.d93 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2flineedit_3aEditor_2e6 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
declare ptr @__olang_region_home(ptr)
declare void @__olang_region_settle(ptr, i1)
@olang_2esole_2ecompiler_2flineedit_3aEditor_2e7 = weak hidden constant i1 false
@.d94 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d95 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c">>> " }>, align 8
@.d96 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"... " }>, align 8
@.d97 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"::: " }>, align 8
@.d98 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d99 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d100 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2flineedit_3aEditor_2e17 = weak hidden constant i1 false
@.d101 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d102 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d103 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2flineedit_3aEditor_2e35 = weak hidden constant i1 false
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
@__olang_prog_scope = external thread_local(initialexec) global ptr
@olang_loc_6d8e321d50b20c8b_e1e5724559d494c7 = external constant [0 x i8]
declare i32 @std_2fos_2eMkDirAll(ptr %v0, { i64, ptr } %a0)
declare i32 @std_2fos_2eWriteFile(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eClear(ptr %v0, ptr %a0)
declare { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_7dccba76dee48f7e_602c3d6b6ac3d592 = external constant [0 x i8]
@G_2e_3cfcntl_2eh_3e_2eO__WRONLY = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eO__CREAT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\40\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eO__APPEND = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\04\00\00" }>, align 8
declare i32 @std_2fio_2eWrite(ptr %v0, i32 %a0, { i64, ptr } %a1)
@G_2e_3csys_2fioctl_2eh_3e_2eTIOCGWINSZ = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\13\54\00\00" }>, align 8
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eRepeat_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H9ea329edf73de23cd280575fae6d500d(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H563b551a62b57e684177c5454e33a204(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
@G_2e_3ctermios_2eh_3e_2eBRKINT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eICRNL = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\01\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eINPCK = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eISTRIP = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\20\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eIXON = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\04\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eOPOST = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eECHO = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\08\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eICANON = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eIEXTEN = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\80\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eISIG = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eVMIN = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\06\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eVTIME = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\05\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eTCSANOW = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eLen_3cU8_3e(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_d9375333dfb29074_4c1db221b9426bf0 = external constant [0 x i8]
@olang_loc_22a9a5775aa8f43a_f3d22121f345f80e = external constant [0 x i8]
declare { i64, ptr } @compiler_2fpaint_2eSource(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_efd16dbbcc037fb0_1aeb292baa76ec64 = external constant [0 x i8]
declare i8 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eAt_3cU8_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eClear_3cU8_3e(ptr %v0, ptr %a0)
@olang_loc_9f82c4ae2fb92c09_610471f21aec4c45 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2ePushAll_3cU8_3e(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %v0, ptr %a0)
@olang_loc_126b4ead7e969a49_c70e2460580ad75 = external constant [0 x i8]
@olang_loc_dd36f3cf990f8aca_64500bf1420cd6c6 = external constant [0 x i8]
@olang_loc_8dc6cdcca3960da7_c3faaa8d27204ea3 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flineedit_3asnap_3e_2eClear_3ccompiler_2flineedit_3asnap_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flineedit_3asnap_3e_2ePush_3ccompiler_2flineedit_3asnap_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/lineedit:snap" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flineedit_3asnap_3e_2eLen_3ccompiler_2flineedit_3asnap_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flineedit_3asnap_3e_2eRemove_Hd9d3bd958740eb540dbca2377fffdf85(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_d87e059e3fca2959_92a9b8111884af55 = external constant [0 x i8]
@olang_loc_c6edc95ce3a108e9_a40785e2dad47f45 = external constant [0 x i8]
@olang_loc_54806be5a60651c2_4a35e5984fb8c156 = external constant [0 x i8]
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare { i32, %"compiler/lineedit:snap" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flineedit_3asnap_3e_2ePop_3ccompiler_2flineedit_3asnap_3e(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_576d906cf1a69575_2b5fe4737c0e1301 = external constant [0 x i8]
@olang_loc_55814703dba0f3c7_baa829e140d7f09b = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eReplace_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2flineedit_3asnap_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU8_3e_2ector(ptr %v0, i64 %a0)
declare %"<termios.h>:termios" @_3ctermios_2eh_3e_3atermios_2ector(ptr %v0)

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
