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
%"compiler/fetch:Fetcher" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/text:LineIter" = type { { i64, ptr }, i64 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/os:Output" = type { i32, { i64, ptr }, { i64, ptr } }
define dso_local { i64, ptr } @compiler_2ffetch_2eCacheDir(ptr %v0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i32
  %l8 = alloca i1
  %l12 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l14 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %s0, ptr %s0, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d0, i32 0, i32 1) })
  %t2 = extractvalue { i32, { i64, ptr } } %t1, 1
  %t3 = extractvalue { i32, { i64, ptr } } %t1, 0
  store i32 %t3, ptr %l4
  %t4 = icmp ne i32 %t3, 0
  br i1 %t4, label %bb2, label %ok.5, !prof !99
ok.5:
  store { i64, ptr } %t2, ptr %l3
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t6, ptr %l2, !tbaa !27
  br label %bb6
bb2:
  %t7 = load i32, ptr %l4, !tbaa !23
  %t8 = ashr i32 %t7, 16
  %t10 = icmp eq i32 %t8, 1
  br i1 %t10, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d1, i32 0, i32 1) }, ptr %l2, !tbaa !27
  br label %bb6
bb6:
  %t12 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t12, ptr %l0, !tbaa !27
  %t13 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t15 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t13, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) })
  store i1 %t15, ptr %l8
  br label %bb7
bb7:
  %t16 = load i1, ptr %l8, !tbaa !21
  %t17 = xor i1 %t16, true
  br i1 %t17, label %bb8, label %bb9
bb8:
  %t19 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t19, 1
  %t22 = extractvalue { i64, ptr } %t19, 0
  %t23 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t22)
  call void @olang_textcopy(ptr %t23, ptr %t21, i64 %t22)
  %t24 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t25 = insertvalue { i64, ptr } %t24, ptr %t23, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t25, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t27 = call { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %s0, ptr %s0, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d3, i32 0, i32 1) })
  %t28 = extractvalue { i32, { i64, ptr } } %t27, 1
  %t29 = extractvalue { i32, { i64, ptr } } %t27, 0
  store i32 %t29, ptr %l14
  %t30 = icmp ne i32 %t29, 0
  br i1 %t30, label %bb12, label %ok.31, !prof !99
ok.31:
  store { i64, ptr } %t28, ptr %l13
  br label %bb11
bb11:
  %t32 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t32, ptr %l12, !tbaa !27
  br label %bb16
bb12:
  %t33 = load i32, ptr %l14, !tbaa !23
  %t34 = ashr i32 %t33, 16
  %t36 = icmp eq i32 %t34, 1
  br i1 %t36, label %bb13, label %bb14
bb13:
  call void @__olang_errpay_pop()
  br label %bb14
bb14:
  br label %bb15
bb15:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, ptr %l12, !tbaa !27
  br label %bb16
bb16:
  %t38 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t38, 1
  %t42 = extractvalue { i64, ptr } %t38, 0
  %t43 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t44 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
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

define dso_local { i64, ptr } @compiler_2ffetch_2eGitBase(ptr %v0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i32
  %l7 = alloca i1
  %l9 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %s0, ptr %s0, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d6, i32 0, i32 1) })
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d7, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb6
bb6:
  %t12 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t12, ptr %l0, !tbaa !27
  %t13 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t15 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t13, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d8, i32 0, i32 1) })
  store i1 %t15, ptr %l7
  br label %bb7
bb7:
  %t16 = load i1, ptr %l7, !tbaa !21
  %t17 = xor i1 %t16, true
  br i1 %t17, label %bb8, label %bb9
bb8:
  %t19 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t19, 1
  %t22 = extractvalue { i64, ptr } %t19, 0
  %t23 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t22)
  call void @olang_textcopy(ptr %t23, ptr %t21, i64 %t22)
  %t24 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t25 = insertvalue { i64, ptr } %t24, ptr %t23, 1
  store { i64, ptr } %t25, ptr %l9, !tbaa !27
  br label %bb10
bb9:
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d9, i32 0, i32 1) }, ptr %l12, !tbaa !27
  %t27 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t27, ptr %l9, !tbaa !27
  br label %bb10
bb10:
  %t29 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t29, 0
  store i64 %t30, ptr %l14, !tbaa !24
  %t31 = load i64, ptr %l14, !tbaa !24
  %t32 = mul i64 %t31, 1
  %t33 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t32)
  %t34 = insertvalue { i64, ptr } undef, i64 %t31, 0
  %t35 = insertvalue { i64, ptr } %t34, ptr %t33, 1
  store { i64, ptr } %t35, ptr %l15, !tbaa !27
  %t36 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !27
  %t38 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !27
  %t40 = load i64, ptr %l14, !tbaa !24
  %t41 = mul i64 %t40, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t37, ptr %t39, i64 %t41, i1 false)
  %t42 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t42, ptr %l9, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t43 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t43, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2ffetch_2eIsCommit(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i8
  %l8 = alloca i1
  %l20 = alloca { i64, ptr }
  %l24 = alloca i1
  %l25 = alloca i1
  %l28 = alloca i1
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp ne i64 %t3, 40
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  %t11 = icmp ne i64 %t9, 64
  store i1 %t11, ptr %l8, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb3
bb3:
  %t13 = load i1, ptr %l8, !tbaa !21
  br i1 %t13, label %bb4, label %bb5
bb4:
  store i1 false, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t15 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t15, ptr %l1, !tbaa !27
  store i64 0, ptr %l2, !tbaa !24
  %t17 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t17, 0
  store i64 %t19, ptr %l3, !tbaa !24
  br label %bb7
bb7:
  %t21 = load i64, ptr %l2, !tbaa !24
  %t22 = load i64, ptr %l3, !tbaa !24
  %t25 = icmp slt i64 %t21, %t22
  %t27 = xor i1 %t25, true
  br i1 %t27, label %bb8, label %bb9
bb8:
  br label %bb22
bb9:
  br label %bb10
bb10:
  %t29 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t29, ptr %l20, !tbaa !27
  %t30 = load i64, ptr %l2, !tbaa !24
  %t32 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !27
  %t34 = getelementptr i8, ptr %t33, i64 %t30
  %t35 = load i8, ptr %t34, !tbaa !32
  store i8 %t35, ptr %l4, !tbaa !22
  %t37 = load i8, ptr %l4, !tbaa !22
  %t39 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t37)
  store i1 %t39, ptr %l24
  br label %bb11
bb11:
  %t40 = load i1, ptr %l24, !tbaa !21
  br i1 %t40, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l25, !tbaa !21
  br label %bb17
bb13:
  %t41 = load i8, ptr %l4, !tbaa !22
  %t43 = icmp uge i8 %t41, 97
  br i1 %t43, label %bb14, label %bb15
bb14:
  %t45 = load i8, ptr %l4, !tbaa !22
  %t47 = icmp ule i8 %t45, 102
  store i1 %t47, ptr %l28, !tbaa !21
  br label %bb16
bb15:
  store i1 false, ptr %l28, !tbaa !21
  br label %bb16
bb16:
  %t49 = load i1, ptr %l28, !tbaa !21
  store i1 %t49, ptr %l25, !tbaa !21
  br label %bb17
bb17:
  %t50 = load i1, ptr %l25, !tbaa !21
  %t51 = xor i1 %t50, true
  br i1 %t51, label %bb18, label %bb19
bb18:
  store i1 false, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  br label %bb21
bb21:
  %t54 = load i64, ptr %l2, !tbaa !24
  %t56 = add i64 %t54, 1
  store i64 %t56, ptr %l2, !tbaa !24
  br label %bb7
bb22:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ffetch_2eNamePart(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i8
  %l8 = alloca i1
  %l9 = alloca { i64, ptr }
  %l12 = alloca i1
  %l13 = alloca { i64, ptr }
  %l16 = alloca i1
  %l19 = alloca { i64, ptr }
  %l20 = alloca i1
  %l29 = alloca { i64, ptr }
  %l33 = alloca i1
  %l34 = alloca i1
  %l36 = alloca i1
  %l37 = alloca i1
  %l40 = alloca i1
  %l43 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp eq i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb3
bb2:
  %t7 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t7, ptr %l9, !tbaa !27
  %t8 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !27
  %t10 = getelementptr i8, ptr %t9, i64 0
  %t11 = load i8, ptr %t10, !tbaa !32
  %t13 = icmp eq i8 %t11, 46
  store i1 %t13, ptr %l8, !tbaa !21
  br label %bb3
bb3:
  %t15 = load i1, ptr %l8, !tbaa !21
  br i1 %t15, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb6
bb5:
  %t16 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t16, ptr %l13, !tbaa !27
  %t17 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !27
  %t19 = getelementptr i8, ptr %t18, i64 0
  %t20 = load i8, ptr %t19, !tbaa !32
  %t22 = icmp eq i8 %t20, 45
  store i1 %t22, ptr %l12, !tbaa !21
  br label %bb6
bb6:
  %t24 = load i1, ptr %l12, !tbaa !21
  br i1 %t24, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb10
bb8:
  %t25 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d10, i32 0, i32 1) }, ptr %l19, !tbaa !27
  %t28 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t29 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %s0, { i64, ptr } %t25, { i64, ptr } %t28)
  store i1 %t29, ptr %l20
  br label %bb9
bb9:
  %t30 = load i1, ptr %l20, !tbaa !21
  store i1 %t30, ptr %l16, !tbaa !21
  br label %bb10
bb10:
  %t31 = load i1, ptr %l16, !tbaa !21
  br i1 %t31, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t33 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t33, ptr %l1, !tbaa !27
  store i64 0, ptr %l2, !tbaa !24
  %t35 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t35, 0
  store i64 %t37, ptr %l3, !tbaa !24
  br label %bb14
bb14:
  %t39 = load i64, ptr %l2, !tbaa !24
  %t40 = load i64, ptr %l3, !tbaa !24
  %t43 = icmp slt i64 %t39, %t40
  %t45 = xor i1 %t43, true
  br i1 %t45, label %bb15, label %bb16
bb15:
  br label %bb36
bb16:
  br label %bb17
bb17:
  %t47 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t47, ptr %l29, !tbaa !27
  %t48 = load i64, ptr %l2, !tbaa !24
  %t50 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !27
  %t52 = getelementptr i8, ptr %t51, i64 %t48
  %t53 = load i8, ptr %t52, !tbaa !32
  store i8 %t53, ptr %l4, !tbaa !22
  %t55 = load i8, ptr %l4, !tbaa !22
  %t57 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t55)
  store i1 %t57, ptr %l33
  br label %bb18
bb18:
  %t58 = load i1, ptr %l33, !tbaa !21
  br i1 %t58, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l34, !tbaa !21
  br label %bb22
bb20:
  %t59 = load i8, ptr %l4, !tbaa !22
  %t61 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t59)
  store i1 %t61, ptr %l36
  br label %bb21
bb21:
  %t62 = load i1, ptr %l36, !tbaa !21
  store i1 %t62, ptr %l34, !tbaa !21
  br label %bb22
bb22:
  %t63 = load i1, ptr %l34, !tbaa !21
  br i1 %t63, label %bb23, label %bb24
bb23:
  store i1 true, ptr %l37, !tbaa !21
  br label %bb25
bb24:
  %t64 = load i8, ptr %l4, !tbaa !22
  %t66 = icmp eq i8 %t64, 46
  store i1 %t66, ptr %l37, !tbaa !21
  br label %bb25
bb25:
  %t68 = load i1, ptr %l37, !tbaa !21
  br i1 %t68, label %bb26, label %bb27
bb26:
  store i1 true, ptr %l40, !tbaa !21
  br label %bb28
bb27:
  %t69 = load i8, ptr %l4, !tbaa !22
  %t71 = icmp eq i8 %t69, 95
  store i1 %t71, ptr %l40, !tbaa !21
  br label %bb28
bb28:
  %t73 = load i1, ptr %l40, !tbaa !21
  br i1 %t73, label %bb29, label %bb30
bb29:
  store i1 true, ptr %l43, !tbaa !21
  br label %bb31
bb30:
  %t74 = load i8, ptr %l4, !tbaa !22
  %t76 = icmp eq i8 %t74, 45
  store i1 %t76, ptr %l43, !tbaa !21
  br label %bb31
bb31:
  %t78 = load i1, ptr %l43, !tbaa !21
  %t79 = xor i1 %t78, true
  br i1 %t79, label %bb32, label %bb33
bb32:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb33:
  br label %bb34
bb34:
  br label %bb35
bb35:
  %t82 = load i64, ptr %l2, !tbaa !24
  %t84 = add i64 %t82, 1
  store i64 %t84, ptr %l2, !tbaa !24
  br label %bb14
bb36:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2ffetch_2ecommitAgain(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca { i64, ptr }
  %l13 = alloca i32
  %l15 = alloca i1
  %l18 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca { i64, ptr }
  %l23 = alloca i1
  %l25 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l30 = alloca i64
  %l31 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t4 = extractvalue { i64, ptr } %a0, 1
  %t5 = extractvalue { i64, ptr } %a0, 0
  %t6 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t7 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  %t8 = add i64 %t5, %t7
  %t10 = extractvalue { i64, ptr } %a1, 1
  %t11 = extractvalue { i64, ptr } %a1, 0
  %t12 = add i64 %t8, %t11
  %t13 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t12)
  call void @olang_textcopy(ptr %t13, ptr %t4, i64 %t5)
  %t14 = getelementptr i8, ptr %t13, i64 %t5
  call void @olang_textcopy(ptr %t14, ptr %t6, i64 %t7)
  %t15 = getelementptr i8, ptr %t14, i64 %t7
  call void @olang_textcopy(ptr %t15, ptr %t10, i64 %t11)
  %t16 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t17 = insertvalue { i64, ptr } %t16, ptr %t13, 1
  store { i64, ptr } %t17, ptr %l3, !tbaa !27
  %t19 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t19, 1
  %t22 = extractvalue { i64, ptr } %t19, 0
  %t23 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t24 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  %t25 = add i64 %t22, %t24
  %t26 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t25)
  call void @olang_textcopy(ptr %t26, ptr %t21, i64 %t22)
  %t27 = getelementptr i8, ptr %t26, i64 %t22
  call void @olang_textcopy(ptr %t27, ptr %t23, i64 %t24)
  %t28 = insertvalue { i64, ptr } undef, i64 %t25, 0
  %t29 = insertvalue { i64, ptr } %t28, ptr %t26, 1
  %t31 = extractvalue { i64, ptr } %t29, 0
  %t32 = extractvalue { i64, ptr } %t29, 1
  %t33 = mul i64 %t31, 1
  %t34 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t33)
  call void @llvm.memcpy.p0.p0.i64(ptr %t34, ptr %t32, i64 %t33, i1 false)
  %t35 = insertvalue { i64, ptr } undef, i64 %t31, 0
  %t36 = insertvalue { i64, ptr } %t35, ptr %t34, 1
  %t41 = call i32 @std_2fos_2eWriteFile(ptr %s0, ptr %v2, { i64, ptr } %t36, { i64, ptr } %a2)
  store i32 %t41, ptr %l13
  %t42 = icmp ne i32 %t41, 0
  br i1 %t42, label %bb2, label %ok.43, !prof !99
ok.43:
  br label %bb1
bb1:
  br label %bb6
bb2:
  %t44 = load i32, ptr %l13, !tbaa !23
  %t45 = ashr i32 %t44, 16
  %t47 = icmp eq i32 %t45, 1
  store i1 %t47, ptr %l15, !tbaa !21
  %t48 = load i32, ptr %l13, !tbaa !23
  %t49 = ashr i32 %t48, 16
  %t51 = icmp eq i32 %t49, 1
  br i1 %t51, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d13, i32 0, i32 1) }, ptr %l18, !tbaa !27
  %t53 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t53, ptr %l19, !tbaa !27
  %t54 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t55 = extractvalue { i64, ptr } %t54, 0
  store i64 %t55, ptr %l20, !tbaa !24
  %t56 = load i64, ptr %l20, !tbaa !24
  %t57 = mul i64 %t56, 1
  %t58 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t57)
  %t59 = insertvalue { i64, ptr } undef, i64 %t56, 0
  %t60 = insertvalue { i64, ptr } %t59, ptr %t58, 1
  store { i64, ptr } %t60, ptr %l21, !tbaa !27
  %t61 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !27
  %t63 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !27
  %t65 = load i64, ptr %l20, !tbaa !24
  %t66 = mul i64 %t65, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t62, ptr %t64, i64 %t66, i1 false)
  %t67 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t67, ptr %l19, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t68 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t68, ptr %rv
  br label %ret
bb6:
  %t69 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t71 = call i1 @compiler_2ffetch_2esh(ptr %s0, ptr %s0, { i64, ptr } %t69, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x { i64, ptr }] }>, ptr @.d14, i32 0, i32 1) })
  store i1 %t71, ptr %l23
  br label %bb7
bb7:
  %t72 = load i1, ptr %l23, !tbaa !21
  br i1 %t72, label %bb8, label %bb9
bb8:
  %t75 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t77 = call { i64, ptr } @compiler_2ffetch_2ehead(ptr %s0, ptr %v3, { i64, ptr } %t75)
  store { i64, ptr } %t77, ptr %l27
  br label %bb10
bb9:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d15, i32 0, i32 1) }, ptr %l28, !tbaa !27
  %t78 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t78, ptr %l25, !tbaa !27
  br label %bb11
bb10:
  %t80 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t80, ptr %l25, !tbaa !27
  br label %bb11
bb11:
  %t81 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t82 = extractvalue { i64, ptr } %t81, 0
  store i64 %t82, ptr %l30, !tbaa !24
  %t83 = load i64, ptr %l30, !tbaa !24
  %t84 = mul i64 %t83, 1
  %t85 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t84)
  %t86 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t87 = insertvalue { i64, ptr } %t86, ptr %t85, 1
  store { i64, ptr } %t87, ptr %l31, !tbaa !27
  %t88 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !27
  %t90 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !27
  %t92 = load i64, ptr %l30, !tbaa !24
  %t93 = mul i64 %t92, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t89, ptr %t91, i64 %t93, i1 false)
  %t94 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t94, ptr %l25, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t95 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t95, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i32, { i64, ptr } } @compiler_2ffetch_2ecompiler_2ffetch_3aFetcher_2eFetch(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca i1
  %l12 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l14 = alloca i1
  %lp15 = alloca ptr
  %l16 = alloca { i64, ptr }
  %lp17 = alloca ptr
  %l19 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %lp21 = alloca ptr
  %l22 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i32
  %l29 = alloca { i64, ptr }
  %l30 = alloca i64
  %l31 = alloca i64
  %l40 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  %l43 = alloca i64
  %l46 = alloca i64
  %l47 = alloca i64
  %l52 = alloca { i64, ptr }
  %l54 = alloca i64
  %l57 = alloca i64
  %l58 = alloca i64
  %l64 = alloca i1
  %l66 = alloca i1
  %l68 = alloca i1
  %l70 = alloca i1
  %l72 = alloca i1
  %l74 = alloca i1
  %l79 = alloca i1
  %l81 = alloca i1
  %l101 = alloca { i64, ptr }
  %l104 = alloca { i64, ptr }
  %l105 = alloca i32
  %l107 = alloca { i64, ptr }
  %l108 = alloca { i64, ptr }
  %l109 = alloca i64
  %l110 = alloca { i64, ptr }
  %l112 = alloca i1
  %l115 = alloca i1
  %l118 = alloca i1
  %l121 = alloca i1
  %l122 = alloca { i64, ptr }
  %l125 = alloca { i64, ptr }
  %l128 = alloca i64
  %l130 = alloca i64
  %l131 = alloca { i64, ptr }
  %l133 = alloca i1
  %l135 = alloca i1
  %l143 = alloca i1
  %l146 = alloca i32
  %l148 = alloca i1
  %l152 = alloca { i64, ptr }
  %l154 = alloca { i64, ptr }
  %l155 = alloca i32
  %l157 = alloca i1
  %l162 = alloca ptr
  %l163 = alloca { i64, ptr }
  %l164 = alloca { i64, ptr }
  %l165 = alloca i64
  %l176 = alloca { i64, ptr }
  %l177 = alloca i1
  %l178 = alloca i1
  %l182 = alloca { i64, ptr }
  %l183 = alloca i1
  %l184 = alloca i1
  %l186 = alloca { i64, ptr }
  %l187 = alloca i1
  %l191 = alloca i32
  %l193 = alloca i1
  %l198 = alloca { i64, ptr }
  %l199 = alloca i1
  %l202 = alloca { i64, ptr }
  %l203 = alloca i1
  %l205 = alloca { i64, ptr }
  %l208 = alloca i1
  %l211 = alloca i32
  %l213 = alloca i1
  %l218 = alloca i1
  %l222 = alloca i32
  %l224 = alloca i1
  %l228 = alloca i32
  %l230 = alloca i1
  %l235 = alloca i32
  %l237 = alloca i1
  %l250 = alloca { i64, ptr }
  %l255 = alloca i32
  %l257 = alloca i1
  %l260 = alloca { i64, ptr }
  %l261 = alloca { i64, ptr }
  %l262 = alloca i64
  %l263 = alloca { i64, ptr }
  %l267 = alloca { i64, ptr }
  %l268 = alloca i1
  %l270 = alloca { i64, ptr }
  %l272 = alloca i64
  %l275 = alloca i1
  %l277 = alloca i32
  %l279 = alloca i1
  %l287 = alloca i1
  %l289 = alloca i32
  %l291 = alloca i1
  %l296 = alloca i32
  %l298 = alloca i1
  %l302 = alloca i32
  %l304 = alloca i1
  %l315 = alloca i1
  %l317 = alloca i1
  %l319 = alloca i1
  %l320 = alloca ptr
  %l321 = alloca { i64, ptr }
  %l322 = alloca i64
  %l330 = alloca i1
  %l333 = alloca i1
  %l335 = alloca ptr
  %l336 = alloca { i64, ptr }
  %l337 = alloca i64
  %l341 = alloca { i64, ptr }
  %l342 = alloca i64
  %l350 = alloca ptr
  %l351 = alloca { i64, ptr }
  %l352 = alloca i64
  %s0 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %s39 = alloca %olang.scope
  %s40 = alloca %olang.scope
  %s43 = alloca %olang.scope
  %s46 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t4 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v3, { i64, ptr } %t1, i8 64)
  %t5 = extractvalue { i32, i64 } %t4, 1
  %t6 = extractvalue { i32, i64 } %t4, 0
  store i32 %t6, ptr %l26
  %t7 = icmp ne i32 %t6, 0
  br i1 %t7, label %bb2, label %ok.8, !prof !99
ok.8:
  store i64 %t5, ptr %l25
  br label %bb1
bb1:
  %t9 = load i64, ptr %l25, !tbaa !24
  store i64 %t9, ptr %l22, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  %t10 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t10, 0
  store i64 %t12, ptr %l22, !tbaa !24
  br label %bb4
bb4:
  %t14 = load i64, ptr %l22, !tbaa !24
  store i64 %t14, ptr %l4, !tbaa !24
  %t15 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t15, ptr %l29, !tbaa !27
  %t16 = load i64, ptr %l4, !tbaa !24
  store i64 %t16, ptr %l30, !tbaa !24
  %t17 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t17, 0
  store i64 %t18, ptr %l31, !tbaa !24
  %t19 = icmp sge i64 0, 0
  br i1 %t19, label %bb5, label %bb6
bb5:
  %t21 = load i64, ptr %l30, !tbaa !24
  %t22 = icmp sle i64 0, %t21
  br i1 %t22, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_9f3ee14a10c0b496_69afdf9d2434e8f2)
  unreachable
bb7:
  %t24 = load i64, ptr %l30, !tbaa !24
  %t25 = load i64, ptr %l31, !tbaa !24
  %t26 = icmp sle i64 %t24, %t25
  br i1 %t26, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_9f3ee14a10c0b496_69afdf9d2434e8f2)
  unreachable
bb9:
  %t28 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !27
  %t30 = load i64, ptr %l30, !tbaa !24
  %t31 = getelementptr i8, ptr %t29, i64 0
  %t32 = sub i64 %t30, 0
  %t33 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t34 = insertvalue { i64, ptr } %t33, ptr %t31, 1
  store { i64, ptr } %t34, ptr %l5, !tbaa !27
  %t36 = load i64, ptr %l4, !tbaa !24
  %t37 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t37, 0
  %t42 = icmp slt i64 %t36, %t39
  br i1 %t42, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_9f3ee14a10c0b496_69afdf9d2434e8f2)
  unreachable
bb11:
  %t44 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t44, ptr %l41, !tbaa !27
  %t45 = load i64, ptr %l4, !tbaa !24
  %t47 = add i64 %t45, 1
  store i64 %t47, ptr %l43, !tbaa !24
  %t48 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t51 = extractvalue { i64, ptr } %t48, 0
  store i64 %t51, ptr %l46, !tbaa !24
  %t52 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t53 = extractvalue { i64, ptr } %t52, 0
  store i64 %t53, ptr %l47, !tbaa !24
  %t54 = load i64, ptr %l43, !tbaa !24
  %t55 = icmp sge i64 %t54, 0
  br i1 %t55, label %bb13, label %bb14
bb12:
  %t57 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t57, ptr %l52, !tbaa !27
  %t58 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t60 = extractvalue { i64, ptr } %t58, 0
  store i64 %t60, ptr %l54, !tbaa !24
  %t61 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t64 = extractvalue { i64, ptr } %t61, 0
  store i64 %t64, ptr %l57, !tbaa !24
  %t65 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t66 = extractvalue { i64, ptr } %t65, 0
  store i64 %t66, ptr %l58, !tbaa !24
  %t67 = load i64, ptr %l54, !tbaa !24
  %t68 = icmp sge i64 %t67, 0
  br i1 %t68, label %bb19, label %bb20
bb13:
  %t70 = load i64, ptr %l43, !tbaa !24
  %t71 = load i64, ptr %l46, !tbaa !24
  %t72 = icmp sle i64 %t70, %t71
  br i1 %t72, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_d9850676ba2c3cf3_f7e63cb27448ce6f)
  unreachable
bb15:
  %t74 = load i64, ptr %l46, !tbaa !24
  %t75 = load i64, ptr %l47, !tbaa !24
  %t76 = icmp sle i64 %t74, %t75
  br i1 %t76, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_d9850676ba2c3cf3_f7e63cb27448ce6f)
  unreachable
bb17:
  %t78 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !27
  %t80 = load i64, ptr %l43, !tbaa !24
  %t81 = load i64, ptr %l46, !tbaa !24
  %t82 = getelementptr i8, ptr %t79, i64 %t80
  %t83 = sub i64 %t81, %t80
  %t84 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t85 = insertvalue { i64, ptr } %t84, ptr %t82, 1
  store { i64, ptr } %t85, ptr %l40, !tbaa !27
  br label %bb25
bb18:
  call void @__olang_check_failed(ptr @olang_loc_d9850676ba2c3cf3_f7e63cb27448ce6f)
  unreachable
bb19:
  %t87 = load i64, ptr %l54, !tbaa !24
  %t88 = load i64, ptr %l57, !tbaa !24
  %t89 = icmp sle i64 %t87, %t88
  br i1 %t89, label %bb21, label %bb22
bb20:
  call void @__olang_check_failed(ptr @olang_loc_d9850676ba2c3cf3_f7e63cb27448ce6f)
  unreachable
bb21:
  %t91 = load i64, ptr %l57, !tbaa !24
  %t92 = load i64, ptr %l58, !tbaa !24
  %t93 = icmp sle i64 %t91, %t92
  br i1 %t93, label %bb23, label %bb24
bb22:
  call void @__olang_check_failed(ptr @olang_loc_d9850676ba2c3cf3_f7e63cb27448ce6f)
  unreachable
bb23:
  %t95 = getelementptr { i64, ptr }, ptr %l52, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !27
  %t97 = load i64, ptr %l54, !tbaa !24
  %t98 = load i64, ptr %l57, !tbaa !24
  %t99 = getelementptr i8, ptr %t96, i64 %t97
  %t100 = sub i64 %t98, %t97
  %t101 = insertvalue { i64, ptr } undef, i64 %t100, 0
  %t102 = insertvalue { i64, ptr } %t101, ptr %t99, 1
  store { i64, ptr } %t102, ptr %l40, !tbaa !27
  br label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_d9850676ba2c3cf3_f7e63cb27448ce6f)
  unreachable
bb25:
  %t104 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t104, ptr %l6, !tbaa !27
  %t105 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t107 = call i1 @compiler_2ffetch_2eNamePart(ptr %v1, { i64, ptr } %t105)
  store i1 %t107, ptr %l64
  br label %bb26
bb26:
  %t108 = load i1, ptr %l64, !tbaa !21
  %t109 = xor i1 %t108, true
  br i1 %t109, label %bb27, label %bb28
bb27:
  store i1 true, ptr %l66, !tbaa !21
  br label %bb30
bb28:
  %t111 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t113 = call i1 @compiler_2ffetch_2eNamePart(ptr %v2, { i64, ptr } %t111)
  store i1 %t113, ptr %l68
  br label %bb29
bb29:
  %t114 = load i1, ptr %l68, !tbaa !21
  %t115 = xor i1 %t114, true
  store i1 %t115, ptr %l66, !tbaa !21
  br label %bb30
bb30:
  %t117 = load i1, ptr %l66, !tbaa !21
  br i1 %t117, label %bb31, label %bb32
bb31:
  store i1 true, ptr %l70, !tbaa !21
  br label %bb34
bb32:
  %t118 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t120 = call i1 @compiler_2ffetch_2eNamePart(ptr %v3, { i64, ptr } %t118)
  store i1 %t120, ptr %l72
  br label %bb33
bb33:
  %t121 = load i1, ptr %l72, !tbaa !21
  %t122 = xor i1 %t121, true
  store i1 %t122, ptr %l70, !tbaa !21
  br label %bb34
bb34:
  %t124 = load i1, ptr %l70, !tbaa !21
  br i1 %t124, label %bb35, label %bb36
bb35:
  store i1 true, ptr %l74, !tbaa !21
  br label %bb41
bb36:
  %t125 = load i64, ptr %l4, !tbaa !24
  %t126 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t128 = extractvalue { i64, ptr } %t126, 0
  %t131 = icmp slt i64 %t125, %t128
  br i1 %t131, label %bb37, label %bb38
bb37:
  %t133 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t135 = call i1 @compiler_2ffetch_2eNamePart(ptr %v3, { i64, ptr } %t133)
  store i1 %t135, ptr %l81
  br label %bb39
bb38:
  store i1 false, ptr %l79, !tbaa !21
  br label %bb40
bb39:
  %t136 = load i1, ptr %l81, !tbaa !21
  %t137 = xor i1 %t136, true
  store i1 %t137, ptr %l79, !tbaa !21
  br label %bb40
bb40:
  %t139 = load i1, ptr %l79, !tbaa !21
  store i1 %t139, ptr %l74, !tbaa !21
  br label %bb41
bb41:
  %t140 = load i1, ptr %l74, !tbaa !21
  br i1 %t140, label %bb42, label %bb43
bb42:
  call void @__olang_scope_close(ptr %s0)
  %t142 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t142, ptr %rv
  br label %ret
bb43:
  br label %bb44
bb44:
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t145 = getelementptr %"compiler/fetch:Fetcher", ptr %t143, i32 0, i32 1
  %t146 = load { i64, ptr }, ptr %t145, !tbaa !27
  store { i64, ptr } %t146, ptr %l7, !tbaa !27
  %t148 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t149 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t150 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t152 = extractvalue { i64, ptr } %t148, 1
  %t153 = extractvalue { i64, ptr } %t148, 0
  %t154 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t155 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  %t156 = add i64 %t153, %t155
  %t158 = extractvalue { i64, ptr } %t149, 1
  %t159 = extractvalue { i64, ptr } %t149, 0
  %t160 = add i64 %t156, %t159
  %t161 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t162 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  %t163 = add i64 %t160, %t162
  %t165 = extractvalue { i64, ptr } %t150, 1
  %t166 = extractvalue { i64, ptr } %t150, 0
  %t167 = add i64 %t163, %t166
  %t168 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t167)
  call void @olang_textcopy(ptr %t168, ptr %t152, i64 %t153)
  %t169 = getelementptr i8, ptr %t168, i64 %t153
  call void @olang_textcopy(ptr %t169, ptr %t154, i64 %t155)
  %t170 = getelementptr i8, ptr %t169, i64 %t155
  call void @olang_textcopy(ptr %t170, ptr %t158, i64 %t159)
  %t171 = getelementptr i8, ptr %t170, i64 %t159
  call void @olang_textcopy(ptr %t171, ptr %t161, i64 %t162)
  %t172 = getelementptr i8, ptr %t171, i64 %t162
  call void @olang_textcopy(ptr %t172, ptr %t165, i64 %t166)
  %t173 = insertvalue { i64, ptr } undef, i64 %t167, 0
  %t174 = insertvalue { i64, ptr } %t173, ptr %t168, 1
  store { i64, ptr } %t174, ptr %l8, !tbaa !27
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t178 = getelementptr %"compiler/fetch:Fetcher", ptr %t176, i32 0, i32 2
  %t179 = load { i64, ptr }, ptr %t178, !tbaa !27
  %t180 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t181 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t182 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t184 = extractvalue { i64, ptr } %t179, 1
  %t185 = extractvalue { i64, ptr } %t179, 0
  %t187 = extractvalue { i64, ptr } %t180, 1
  %t188 = extractvalue { i64, ptr } %t180, 0
  %t189 = add i64 %t185, %t188
  %t190 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t191 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  %t192 = add i64 %t189, %t191
  %t194 = extractvalue { i64, ptr } %t181, 1
  %t195 = extractvalue { i64, ptr } %t181, 0
  %t196 = add i64 %t192, %t195
  %t197 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t198 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  %t199 = add i64 %t196, %t198
  %t201 = extractvalue { i64, ptr } %t182, 1
  %t202 = extractvalue { i64, ptr } %t182, 0
  %t203 = add i64 %t199, %t202
  %t204 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t203)
  call void @olang_textcopy(ptr %t204, ptr %t184, i64 %t185)
  %t205 = getelementptr i8, ptr %t204, i64 %t185
  call void @olang_textcopy(ptr %t205, ptr %t187, i64 %t188)
  %t206 = getelementptr i8, ptr %t205, i64 %t188
  call void @olang_textcopy(ptr %t206, ptr %t190, i64 %t191)
  %t207 = getelementptr i8, ptr %t206, i64 %t191
  call void @olang_textcopy(ptr %t207, ptr %t194, i64 %t195)
  %t208 = getelementptr i8, ptr %t207, i64 %t195
  call void @olang_textcopy(ptr %t208, ptr %t197, i64 %t198)
  %t209 = getelementptr i8, ptr %t208, i64 %t198
  call void @olang_textcopy(ptr %t209, ptr %t201, i64 %t202)
  %t210 = insertvalue { i64, ptr } undef, i64 %t203, 0
  %t211 = insertvalue { i64, ptr } %t210, ptr %t204, 1
  store { i64, ptr } %t211, ptr %l9, !tbaa !27
  %t213 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t214 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t215 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t216 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t218 = extractvalue { i64, ptr } %t213, 1
  %t219 = extractvalue { i64, ptr } %t213, 0
  %t220 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t221 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t222 = add i64 %t219, %t221
  %t224 = extractvalue { i64, ptr } %t214, 1
  %t225 = extractvalue { i64, ptr } %t214, 0
  %t226 = add i64 %t222, %t225
  %t227 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t228 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t229 = add i64 %t226, %t228
  %t231 = extractvalue { i64, ptr } %t215, 1
  %t232 = extractvalue { i64, ptr } %t215, 0
  %t233 = add i64 %t229, %t232
  %t234 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t235 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t236 = add i64 %t233, %t235
  %t238 = extractvalue { i64, ptr } %t216, 1
  %t239 = extractvalue { i64, ptr } %t216, 0
  %t240 = add i64 %t236, %t239
  %t241 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t240)
  call void @olang_textcopy(ptr %t241, ptr %t218, i64 %t219)
  %t242 = getelementptr i8, ptr %t241, i64 %t219
  call void @olang_textcopy(ptr %t242, ptr %t220, i64 %t221)
  %t243 = getelementptr i8, ptr %t242, i64 %t221
  call void @olang_textcopy(ptr %t243, ptr %t224, i64 %t225)
  %t244 = getelementptr i8, ptr %t243, i64 %t225
  call void @olang_textcopy(ptr %t244, ptr %t227, i64 %t228)
  %t245 = getelementptr i8, ptr %t244, i64 %t228
  call void @olang_textcopy(ptr %t245, ptr %t231, i64 %t232)
  %t246 = getelementptr i8, ptr %t245, i64 %t232
  call void @olang_textcopy(ptr %t246, ptr %t234, i64 %t235)
  %t247 = getelementptr i8, ptr %t246, i64 %t235
  call void @olang_textcopy(ptr %t247, ptr %t238, i64 %t239)
  %t248 = insertvalue { i64, ptr } undef, i64 %t240, 0
  %t249 = insertvalue { i64, ptr } %t248, ptr %t241, 1
  store { i64, ptr } %t249, ptr %l10, !tbaa !27
  store i1 true, ptr %l11, !tbaa !21
  %t251 = load ptr, ptr %l0, !tbaa !29
  %t252 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t255 = call { i32, { i64, ptr } } @compiler_2ffetch_2ecompiler_2ffetch_3aFetcher_2eLocked(ptr %v0, ptr %s0, ptr %s0, ptr %t251, { i64, ptr } %t252)
  %t256 = extractvalue { i32, { i64, ptr } } %t255, 1
  %t257 = extractvalue { i32, { i64, ptr } } %t255, 0
  store i32 %t257, ptr %l105
  %t258 = icmp ne i32 %t257, 0
  br i1 %t258, label %bb46, label %ok.259, !prof !99
ok.259:
  store { i64, ptr } %t256, ptr %l104
  br label %bb45
bb45:
  %t260 = load { i64, ptr }, ptr %l104, !tbaa !27
  store { i64, ptr } %t260, ptr %l101, !tbaa !27
  br label %bb48
bb46:
  br label %bb47
bb47:
  store i1 false, ptr %l11, !tbaa !21
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d19, i32 0, i32 1) }, ptr %l101, !tbaa !27
  br label %bb48
bb48:
  %t261 = load { i64, ptr }, ptr %l101, !tbaa !27
  %t262 = extractvalue { i64, ptr } %t261, 1
  %t263 = extractvalue { i64, ptr } %t261, 0
  %t264 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t263)
  call void @olang_textcopy(ptr %t264, ptr %t262, i64 %t263)
  %t265 = insertvalue { i64, ptr } undef, i64 %t263, 0
  %t266 = insertvalue { i64, ptr } %t265, ptr %t264, 1
  store { i64, ptr } %t266, ptr %l12, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d20, i32 0, i32 1) }, ptr %l107, !tbaa !27
  %t268 = load { i64, ptr }, ptr %l107, !tbaa !27
  store { i64, ptr } %t268, ptr %l108, !tbaa !27
  %t269 = load { i64, ptr }, ptr %l108, !tbaa !27
  %t270 = extractvalue { i64, ptr } %t269, 0
  store i64 %t270, ptr %l109, !tbaa !24
  %t271 = load i64, ptr %l109, !tbaa !24
  %t272 = mul i64 %t271, 1
  %t273 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t272)
  %t274 = insertvalue { i64, ptr } undef, i64 %t271, 0
  %t275 = insertvalue { i64, ptr } %t274, ptr %t273, 1
  store { i64, ptr } %t275, ptr %l110, !tbaa !27
  %t276 = getelementptr { i64, ptr }, ptr %l110, i32 0, i32 1
  %t277 = load ptr, ptr %t276, !tbaa !27
  %t278 = getelementptr { i64, ptr }, ptr %l108, i32 0, i32 1
  %t279 = load ptr, ptr %t278, !tbaa !27
  %t280 = load i64, ptr %l109, !tbaa !24
  %t281 = mul i64 %t280, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t277, ptr %t279, i64 %t281, i1 false)
  %t282 = load { i64, ptr }, ptr %l110, !tbaa !27
  store { i64, ptr } %t282, ptr %l13, !tbaa !27
  store i1 false, ptr %l14, !tbaa !21
  %t283 = load i1, ptr %l11, !tbaa !21
  br i1 %t283, label %bb49, label %bb50
bb49:
  %t285 = load ptr, ptr %l0, !tbaa !29
  %t287 = getelementptr %"compiler/fetch:Fetcher", ptr %t285, i32 0, i32 3
  %t288 = load i1, ptr %t287, !tbaa !21
  store i1 %t288, ptr %l112, !tbaa !21
  br label %bb51
bb50:
  store i1 false, ptr %l112, !tbaa !21
  br label %bb51
bb51:
  %t290 = load i1, ptr %l112, !tbaa !21
  br i1 %t290, label %bb52, label %bb53
bb52:
  %t291 = load ptr, ptr %l0, !tbaa !29
  %t292 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t295 = call i1 @compiler_2ffetch_2ecompiler_2ffetch_3aFetcher_2eupdatedNow(ptr %v0, ptr %s0, ptr %t291, { i64, ptr } %t292, i1 false)
  store i1 %t295, ptr %l118
  br label %bb54
bb53:
  store i1 false, ptr %l115, !tbaa !21
  br label %bb55
bb54:
  %t296 = load i1, ptr %l118, !tbaa !21
  %t297 = xor i1 %t296, true
  store i1 %t297, ptr %l115, !tbaa !21
  br label %bb55
bb55:
  %t299 = load i1, ptr %l115, !tbaa !21
  br i1 %t299, label %bb56, label %bb57
bb56:
  %t300 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t302 = call i1 @compiler_2ffetch_2eIsCommit(ptr %s0, { i64, ptr } %t300)
  store i1 %t302, ptr %l121
  br label %bb58
bb57:
  br label %bb65
bb58:
  %t303 = load i1, ptr %l121, !tbaa !21
  br i1 %t303, label %bb59, label %bb60
bb59:
  %t304 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t306 = extractvalue { i64, ptr } %t304, 1
  %t307 = extractvalue { i64, ptr } %t304, 0
  %t308 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t307)
  call void @olang_textcopy(ptr %t308, ptr %t306, i64 %t307)
  %t309 = insertvalue { i64, ptr } undef, i64 %t307, 0
  %t310 = insertvalue { i64, ptr } %t309, ptr %t308, 1
  store { i64, ptr } %t310, ptr %l122, !tbaa !27
  br label %bb61
bb60:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d21, i32 0, i32 1) }, ptr %l125, !tbaa !27
  %t312 = load { i64, ptr }, ptr %l125, !tbaa !27
  store { i64, ptr } %t312, ptr %l122, !tbaa !27
  br label %bb61
bb61:
  %t314 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t315 = extractvalue { i64, ptr } %t314, 0
  %t316 = load { i64, ptr }, ptr %l122, !tbaa !27
  %t317 = extractvalue { i64, ptr } %t316, 0
  store i64 %t317, ptr %l128, !tbaa !24
  %t319 = load i64, ptr %l128, !tbaa !24
  %t320 = icmp eq i64 %t315, %t319
  br i1 %t320, label %bb62, label %bb63
bb62:
  %t322 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t323 = load ptr, ptr %t322, !tbaa !27
  %t324 = getelementptr { i64, ptr }, ptr %l122, i32 0, i32 1
  %t325 = load ptr, ptr %t324, !tbaa !27
  %t326 = load i64, ptr %l128, !tbaa !24
  %t327 = mul i64 %t326, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t323, ptr %t325, i64 %t327, i1 false)
  br label %bb64
bb63:
  %t328 = load { i64, ptr }, ptr %l122, !tbaa !27
  %t329 = extractvalue { i64, ptr } %t328, 0
  store i64 %t329, ptr %l130, !tbaa !24
  %t330 = load i64, ptr %l130, !tbaa !24
  %t331 = mul i64 %t330, 1
  %t332 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t331)
  %t333 = insertvalue { i64, ptr } undef, i64 %t330, 0
  %t334 = insertvalue { i64, ptr } %t333, ptr %t332, 1
  store { i64, ptr } %t334, ptr %l131, !tbaa !27
  %t335 = getelementptr { i64, ptr }, ptr %l131, i32 0, i32 1
  %t336 = load ptr, ptr %t335, !tbaa !27
  %t337 = getelementptr { i64, ptr }, ptr %l122, i32 0, i32 1
  %t338 = load ptr, ptr %t337, !tbaa !27
  %t339 = load i64, ptr %l130, !tbaa !24
  %t340 = mul i64 %t339, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t336, ptr %t338, i64 %t340, i1 false)
  %t341 = load { i64, ptr }, ptr %l131, !tbaa !27
  store { i64, ptr } %t341, ptr %l13, !tbaa !27
  br label %bb64
bb64:
  store i1 true, ptr %l14, !tbaa !21
  store i1 false, ptr %l11, !tbaa !21
  br label %bb65
bb65:
  %t342 = load i1, ptr %l11, !tbaa !21
  br i1 %t342, label %bb66, label %bb67
bb66:
  %t344 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t346 = call i1 @compiler_2ffetch_2eIsCommit(ptr %s0, { i64, ptr } %t344)
  store i1 %t346, ptr %l135
  br label %bb68
bb67:
  store i1 false, ptr %l133, !tbaa !21
  br label %bb69
bb68:
  %t347 = load i1, ptr %l135, !tbaa !21
  %t348 = xor i1 %t347, true
  store i1 %t348, ptr %l133, !tbaa !21
  br label %bb69
bb69:
  %t350 = load i1, ptr %l133, !tbaa !21
  br i1 %t350, label %bb70, label %bb71
bb70:
  call void @__olang_scope_close(ptr %s0)
  %t352 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65537, 0
  store { i32, { i64, ptr } } %t352, ptr %rv
  br label %ret
bb71:
  br label %bb72
bb72:
  %t353 = load i1, ptr %l11, !tbaa !21
  br i1 %t353, label %bb73, label %bb74
bb73:
  %t355 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t356 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t358 = extractvalue { i64, ptr } %t355, 1
  %t359 = extractvalue { i64, ptr } %t355, 0
  %t360 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t361 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  %t362 = add i64 %t359, %t361
  %t364 = extractvalue { i64, ptr } %t356, 1
  %t365 = extractvalue { i64, ptr } %t356, 0
  %t366 = add i64 %t362, %t365
  %t367 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t366)
  call void @olang_textcopy(ptr %t367, ptr %t358, i64 %t359)
  %t368 = getelementptr i8, ptr %t367, i64 %t359
  call void @olang_textcopy(ptr %t368, ptr %t360, i64 %t361)
  %t369 = getelementptr i8, ptr %t368, i64 %t361
  call void @olang_textcopy(ptr %t369, ptr %t364, i64 %t365)
  %t370 = insertvalue { i64, ptr } undef, i64 %t366, 0
  %t371 = insertvalue { i64, ptr } %t370, ptr %t367, 1
  %t372 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 16, i64 8)
  store ptr %t372, ptr %lp15
  %t374 = load ptr, ptr %lp15
  store { i64, ptr } %t371, ptr %t374, !tbaa !27
  %t375 = load ptr, ptr %lp15
  %t376 = load { i64, ptr }, ptr %t375, !tbaa !27
  %t378 = call i1 @std_2fos_2eIsDir(ptr %v4, { i64, ptr } %t376)
  store i1 %t378, ptr %l143
  br label %bb75
bb74:
  br label %bb79
bb75:
  %t379 = load i1, ptr %l143, !tbaa !21
  br i1 %t379, label %bb76, label %bb77
bb76:
  %t380 = load ptr, ptr %lp15
  %t381 = load { i64, ptr }, ptr %t380, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t383 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t381, 1
  store { i32, { i64, ptr } } %t383, ptr %rv
  br label %ret
bb77:
  br label %bb78
bb78:
  br label %bb79
bb79:
  %t384 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t386 = call i32 @std_2fos_2eMkDirAll(ptr %s0, { i64, ptr } %t384)
  store i32 %t386, ptr %l146
  %t387 = icmp ne i32 %t386, 0
  br i1 %t387, label %bb81, label %ok.388, !prof !99
ok.388:
  br label %bb80
bb80:
  br label %bb85
bb81:
  %t389 = load i32, ptr %l146, !tbaa !23
  %t390 = ashr i32 %t389, 16
  %t392 = icmp eq i32 %t390, 1
  store i1 %t392, ptr %l148, !tbaa !21
  %t393 = load i32, ptr %l146, !tbaa !23
  %t394 = ashr i32 %t393, 16
  %t396 = icmp eq i32 %t394, 1
  br i1 %t396, label %bb82, label %bb83
bb82:
  call void @__olang_errpay_pop()
  br label %bb83
bb83:
  br label %bb84
bb84:
  call void @__olang_scope_close(ptr %s0)
  %t399 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65538, 0
  store { i32, { i64, ptr } } %t399, ptr %rv
  br label %ret
bb85:
  %t400 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t402 = call { i32, { i64, ptr } } @std_2fos_2eMkTemp(ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t400, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d23, i32 0, i32 1) })
  %t403 = extractvalue { i32, { i64, ptr } } %t402, 1
  %t404 = extractvalue { i32, { i64, ptr } } %t402, 0
  store i32 %t404, ptr %l155
  %t405 = icmp ne i32 %t404, 0
  br i1 %t405, label %bb87, label %ok.406, !prof !99
ok.406:
  store { i64, ptr } %t403, ptr %l154
  br label %bb86
bb86:
  %t407 = load { i64, ptr }, ptr %l154, !tbaa !27
  store { i64, ptr } %t407, ptr %l152, !tbaa !27
  br label %bb91
bb87:
  %t408 = load i32, ptr %l155, !tbaa !23
  %t409 = ashr i32 %t408, 16
  %t411 = icmp eq i32 %t409, 1
  store i1 %t411, ptr %l157, !tbaa !21
  %t412 = load i32, ptr %l155, !tbaa !23
  %t413 = ashr i32 %t412, 16
  %t415 = icmp eq i32 %t413, 1
  br i1 %t415, label %bb88, label %bb89
bb88:
  call void @__olang_errpay_pop()
  br label %bb89
bb89:
  br label %bb90
bb90:
  call void @__olang_scope_close(ptr %s0)
  %t418 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65538, 0
  store { i32, { i64, ptr } } %t418, ptr %rv
  br label %ret
bb91:
  %t419 = load { i64, ptr }, ptr %l152, !tbaa !27
  store { i64, ptr } %t419, ptr %l16, !tbaa !27
  %t420 = load i1, ptr %l11, !tbaa !21
  br i1 %t420, label %bb92, label %bb93
bb92:
  store %olang.scope zeroinitializer, ptr %s15
  %t422 = load ptr, ptr %l0, !tbaa !29
  store ptr %t422, ptr %l162, !tbaa !29
  %t423 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t423, ptr %l163, !tbaa !27
  %t424 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t424, ptr %l164, !tbaa !27
  %t425 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t426 = extractvalue { i64, ptr } %t425, 0
  store i64 %t426, ptr %l165, !tbaa !24
  %t427 = icmp sge i64 0, 0
  br i1 %t427, label %bb94, label %bb95
bb93:
  br label %bb157
bb94:
  %t429 = icmp sle i64 0, 12
  br i1 %t429, label %bb96, label %bb97
bb95:
  call void @__olang_check_failed(ptr @olang_loc_45f2c25416d44418_72b8f662ae75c904)
  unreachable
bb96:
  %t431 = load i64, ptr %l165, !tbaa !24
  %t432 = icmp sle i64 12, %t431
  br i1 %t432, label %bb98, label %bb99
bb97:
  call void @__olang_check_failed(ptr @olang_loc_45f2c25416d44418_72b8f662ae75c904)
  unreachable
bb98:
  %t434 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t435 = load ptr, ptr %t434, !tbaa !27
  %t436 = getelementptr i8, ptr %t435, i64 0
  %t437 = sub i64 12, 0
  %t438 = insertvalue { i64, ptr } undef, i64 %t437, 0
  %t439 = insertvalue { i64, ptr } %t438, ptr %t436, 1
  %t440 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d24, i32 0, i32 1) }, 1
  %t441 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d24, i32 0, i32 1) }, 0
  %t442 = load { i64, ptr }, ptr %l163, !tbaa !27
  %t443 = extractvalue { i64, ptr } %t442, 1
  %t444 = extractvalue { i64, ptr } %t442, 0
  %t445 = add i64 %t441, %t444
  %t446 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t447 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d25, i32 0, i32 1) }, 0
  %t448 = add i64 %t445, %t447
  %t449 = load { i64, ptr }, ptr %l164, !tbaa !27
  %t450 = extractvalue { i64, ptr } %t449, 1
  %t451 = extractvalue { i64, ptr } %t449, 0
  %t452 = add i64 %t448, %t451
  %t453 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t454 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  %t455 = add i64 %t452, %t454
  %t457 = extractvalue { i64, ptr } %t439, 1
  %t458 = extractvalue { i64, ptr } %t439, 0
  %t459 = add i64 %t455, %t458
  %t460 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t461 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  %t462 = add i64 %t459, %t461
  %t463 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t462)
  call void @olang_textcopy(ptr %t463, ptr %t440, i64 %t441)
  %t464 = getelementptr i8, ptr %t463, i64 %t441
  call void @olang_textcopy(ptr %t464, ptr %t443, i64 %t444)
  %t465 = getelementptr i8, ptr %t464, i64 %t444
  call void @olang_textcopy(ptr %t465, ptr %t446, i64 %t447)
  %t466 = getelementptr i8, ptr %t465, i64 %t447
  call void @olang_textcopy(ptr %t466, ptr %t450, i64 %t451)
  %t467 = getelementptr i8, ptr %t466, i64 %t451
  call void @olang_textcopy(ptr %t467, ptr %t453, i64 %t454)
  %t468 = getelementptr i8, ptr %t467, i64 %t454
  call void @olang_textcopy(ptr %t468, ptr %t457, i64 %t458)
  %t469 = getelementptr i8, ptr %t468, i64 %t458
  call void @olang_textcopy(ptr %t469, ptr %t460, i64 %t461)
  %t470 = insertvalue { i64, ptr } undef, i64 %t462, 0
  %t471 = insertvalue { i64, ptr } %t470, ptr %t463, 1
  %t473 = extractvalue { i64, ptr } %t471, 0
  %t474 = extractvalue { i64, ptr } %t471, 1
  %t475 = mul i64 %t473, 1
  %t476 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t475)
  call void @llvm.memcpy.p0.p0.i64(ptr %t476, ptr %t474, i64 %t475, i1 false)
  %t477 = insertvalue { i64, ptr } undef, i64 %t473, 0
  %t478 = insertvalue { i64, ptr } %t477, ptr %t476, 1
  %t479 = load ptr, ptr %l162, !tbaa !29
  call void @compiler_2ffetch_2ecompiler_2ffetch_3aFetcher_2esay(ptr %v0, ptr %s15, ptr %t479, { i64, ptr } %t478)
  br label %bb100
bb99:
  call void @__olang_check_failed(ptr @olang_loc_45f2c25416d44418_72b8f662ae75c904)
  unreachable
bb100:
  %t481 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t482 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t484 = extractvalue { i64, ptr } %t481, 1
  %t485 = extractvalue { i64, ptr } %t481, 0
  %t486 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t487 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  %t488 = add i64 %t485, %t487
  %t490 = extractvalue { i64, ptr } %t482, 1
  %t491 = extractvalue { i64, ptr } %t482, 0
  %t492 = add i64 %t488, %t491
  %t493 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t492)
  call void @olang_textcopy(ptr %t493, ptr %t484, i64 %t485)
  %t494 = getelementptr i8, ptr %t493, i64 %t485
  call void @olang_textcopy(ptr %t494, ptr %t486, i64 %t487)
  %t495 = getelementptr i8, ptr %t494, i64 %t487
  call void @olang_textcopy(ptr %t495, ptr %t490, i64 %t491)
  %t496 = insertvalue { i64, ptr } undef, i64 %t492, 0
  %t497 = insertvalue { i64, ptr } %t496, ptr %t493, 1
  %t498 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 16, i64 8)
  store ptr %t498, ptr %lp17
  %t500 = load ptr, ptr %lp17
  store { i64, ptr } %t497, ptr %t500, !tbaa !27
  %t501 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t502 = mul i64 4, 16
  %t503 = call ptr @__olang_scope_alloc_zeroed(ptr %s15, i64 %t502)
  %t504 = insertvalue { i64, ptr } undef, i64 4, 0
  %t505 = insertvalue { i64, ptr } %t504, ptr %t503, 1
  store { i64, ptr } %t505, ptr %l176, !tbaa !27
  %t506 = getelementptr { i64, ptr }, ptr %l176, i32 0, i32 1
  %t507 = load ptr, ptr %t506, !tbaa !27
  %t508 = getelementptr { i64, ptr }, ptr %t507, i64 0
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d29, i32 0, i32 1) }, ptr %t508, !tbaa !37
  %t509 = getelementptr { i64, ptr }, ptr %l176, i32 0, i32 1
  %t510 = load ptr, ptr %t509, !tbaa !27
  %t511 = getelementptr { i64, ptr }, ptr %t510, i64 1
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d30, i32 0, i32 1) }, ptr %t511, !tbaa !37
  %t512 = getelementptr { i64, ptr }, ptr %l176, i32 0, i32 1
  %t513 = load ptr, ptr %t512, !tbaa !27
  %t514 = getelementptr { i64, ptr }, ptr %t513, i64 2
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d31, i32 0, i32 1) }, ptr %t514, !tbaa !37
  %t516 = getelementptr { i64, ptr }, ptr %l176, i32 0, i32 1
  %t517 = load ptr, ptr %t516, !tbaa !27
  %t518 = getelementptr { i64, ptr }, ptr %t517, i64 3
  store { i64, ptr } %t501, ptr %t518, !tbaa !37
  %t519 = load { i64, ptr }, ptr %l176, !tbaa !27
  %t520 = call i1 @compiler_2ffetch_2egit(ptr %s15, { i64, ptr } %t519)
  store i1 %t520, ptr %l177
  br label %bb101
bb101:
  %t521 = load i1, ptr %l177, !tbaa !21
  br i1 %t521, label %bb102, label %bb103
bb102:
  %t522 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t523 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t524 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t525 = mul i64 10, 16
  %t526 = call ptr @__olang_scope_alloc_zeroed(ptr %s15, i64 %t525)
  %t527 = insertvalue { i64, ptr } undef, i64 10, 0
  %t528 = insertvalue { i64, ptr } %t527, ptr %t526, 1
  store { i64, ptr } %t528, ptr %l182, !tbaa !27
  %t529 = getelementptr { i64, ptr }, ptr %l182, i32 0, i32 1
  %t530 = load ptr, ptr %t529, !tbaa !27
  %t531 = getelementptr { i64, ptr }, ptr %t530, i64 0
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d32, i32 0, i32 1) }, ptr %t531, !tbaa !37
  %t532 = getelementptr { i64, ptr }, ptr %l182, i32 0, i32 1
  %t533 = load ptr, ptr %t532, !tbaa !27
  %t534 = getelementptr { i64, ptr }, ptr %t533, i64 1
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d33, i32 0, i32 1) }, ptr %t534, !tbaa !37
  %t536 = getelementptr { i64, ptr }, ptr %l182, i32 0, i32 1
  %t537 = load ptr, ptr %t536, !tbaa !27
  %t538 = getelementptr { i64, ptr }, ptr %t537, i64 2
  store { i64, ptr } %t522, ptr %t538, !tbaa !37
  %t539 = getelementptr { i64, ptr }, ptr %l182, i32 0, i32 1
  %t540 = load ptr, ptr %t539, !tbaa !27
  %t541 = getelementptr { i64, ptr }, ptr %t540, i64 3
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d34, i32 0, i32 1) }, ptr %t541, !tbaa !37
  %t542 = getelementptr { i64, ptr }, ptr %l182, i32 0, i32 1
  %t543 = load ptr, ptr %t542, !tbaa !27
  %t544 = getelementptr { i64, ptr }, ptr %t543, i64 4
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d35, i32 0, i32 1) }, ptr %t544, !tbaa !37
  %t545 = getelementptr { i64, ptr }, ptr %l182, i32 0, i32 1
  %t546 = load ptr, ptr %t545, !tbaa !27
  %t547 = getelementptr { i64, ptr }, ptr %t546, i64 5
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d36, i32 0, i32 1) }, ptr %t547, !tbaa !37
  %t548 = getelementptr { i64, ptr }, ptr %l182, i32 0, i32 1
  %t549 = load ptr, ptr %t548, !tbaa !27
  %t550 = getelementptr { i64, ptr }, ptr %t549, i64 6
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d37, i32 0, i32 1) }, ptr %t550, !tbaa !37
  %t551 = getelementptr { i64, ptr }, ptr %l182, i32 0, i32 1
  %t552 = load ptr, ptr %t551, !tbaa !27
  %t553 = getelementptr { i64, ptr }, ptr %t552, i64 7
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d38, i32 0, i32 1) }, ptr %t553, !tbaa !37
  %t555 = getelementptr { i64, ptr }, ptr %l182, i32 0, i32 1
  %t556 = load ptr, ptr %t555, !tbaa !27
  %t557 = getelementptr { i64, ptr }, ptr %t556, i64 8
  store { i64, ptr } %t523, ptr %t557, !tbaa !37
  %t559 = getelementptr { i64, ptr }, ptr %l182, i32 0, i32 1
  %t560 = load ptr, ptr %t559, !tbaa !27
  %t561 = getelementptr { i64, ptr }, ptr %t560, i64 9
  store { i64, ptr } %t524, ptr %t561, !tbaa !37
  %t562 = load { i64, ptr }, ptr %l182, !tbaa !27
  %t563 = call i1 @compiler_2ffetch_2egit(ptr %s15, { i64, ptr } %t562)
  store i1 %t563, ptr %l183
  br label %bb104
bb103:
  store i1 false, ptr %l178, !tbaa !21
  br label %bb105
bb104:
  %t564 = load i1, ptr %l183, !tbaa !21
  store i1 %t564, ptr %l178, !tbaa !21
  br label %bb105
bb105:
  %t565 = load i1, ptr %l178, !tbaa !21
  br i1 %t565, label %bb106, label %bb107
bb106:
  %t566 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t567 = mul i64 6, 16
  %t568 = call ptr @__olang_scope_alloc_zeroed(ptr %s15, i64 %t567)
  %t569 = insertvalue { i64, ptr } undef, i64 6, 0
  %t570 = insertvalue { i64, ptr } %t569, ptr %t568, 1
  store { i64, ptr } %t570, ptr %l186, !tbaa !27
  %t571 = getelementptr { i64, ptr }, ptr %l186, i32 0, i32 1
  %t572 = load ptr, ptr %t571, !tbaa !27
  %t573 = getelementptr { i64, ptr }, ptr %t572, i64 0
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d39, i32 0, i32 1) }, ptr %t573, !tbaa !37
  %t574 = getelementptr { i64, ptr }, ptr %l186, i32 0, i32 1
  %t575 = load ptr, ptr %t574, !tbaa !27
  %t576 = getelementptr { i64, ptr }, ptr %t575, i64 1
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d40, i32 0, i32 1) }, ptr %t576, !tbaa !37
  %t578 = getelementptr { i64, ptr }, ptr %l186, i32 0, i32 1
  %t579 = load ptr, ptr %t578, !tbaa !27
  %t580 = getelementptr { i64, ptr }, ptr %t579, i64 2
  store { i64, ptr } %t566, ptr %t580, !tbaa !37
  %t581 = getelementptr { i64, ptr }, ptr %l186, i32 0, i32 1
  %t582 = load ptr, ptr %t581, !tbaa !27
  %t583 = getelementptr { i64, ptr }, ptr %t582, i64 3
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d41, i32 0, i32 1) }, ptr %t583, !tbaa !37
  %t584 = getelementptr { i64, ptr }, ptr %l186, i32 0, i32 1
  %t585 = load ptr, ptr %t584, !tbaa !27
  %t586 = getelementptr { i64, ptr }, ptr %t585, i64 4
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d42, i32 0, i32 1) }, ptr %t586, !tbaa !37
  %t587 = getelementptr { i64, ptr }, ptr %l186, i32 0, i32 1
  %t588 = load ptr, ptr %t587, !tbaa !27
  %t589 = getelementptr { i64, ptr }, ptr %t588, i64 5
  store { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d43, i32 0, i32 1) }, ptr %t589, !tbaa !37
  %t590 = load { i64, ptr }, ptr %l186, !tbaa !27
  %t591 = call i1 @compiler_2ffetch_2egit(ptr %s15, { i64, ptr } %t590)
  store i1 %t591, ptr %l187
  br label %bb108
bb107:
  store i1 false, ptr %l184, !tbaa !21
  br label %bb109
bb108:
  %t592 = load i1, ptr %l187, !tbaa !21
  store i1 %t592, ptr %l184, !tbaa !21
  br label %bb109
bb109:
  %t593 = load i1, ptr %l184, !tbaa !21
  %t596 = xor i1 %t593, true
  br i1 %t596, label %bb110, label %bb111
bb110:
  store %olang.scope zeroinitializer, ptr %s18
  %t598 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t600 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t598)
  store i32 %t600, ptr %l191
  %t601 = icmp ne i32 %t600, 0
  br i1 %t601, label %bb113, label %ok.602, !prof !99
ok.602:
  br label %bb112
bb111:
  br label %bb123
bb112:
  br label %bb117
bb113:
  %t603 = load i32, ptr %l191, !tbaa !23
  %t604 = ashr i32 %t603, 16
  %t606 = icmp eq i32 %t604, 1
  store i1 %t606, ptr %l193, !tbaa !21
  %t607 = load i32, ptr %l191, !tbaa !23
  %t608 = ashr i32 %t607, 16
  %t610 = icmp eq i32 %t608, 1
  br i1 %t610, label %bb114, label %bb115
bb114:
  call void @__olang_errpay_pop()
  br label %bb115
bb115:
  br label %bb116
bb116:
  br label %bb117
bb117:
  %t612 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t613 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t614 = mul i64 6, 16
  %t615 = call ptr @__olang_scope_alloc_zeroed(ptr %s18, i64 %t614)
  %t616 = insertvalue { i64, ptr } undef, i64 6, 0
  %t617 = insertvalue { i64, ptr } %t616, ptr %t615, 1
  store { i64, ptr } %t617, ptr %l198, !tbaa !27
  %t618 = getelementptr { i64, ptr }, ptr %l198, i32 0, i32 1
  %t619 = load ptr, ptr %t618, !tbaa !27
  %t620 = getelementptr { i64, ptr }, ptr %t619, i64 0
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d44, i32 0, i32 1) }, ptr %t620, !tbaa !37
  %t621 = getelementptr { i64, ptr }, ptr %l198, i32 0, i32 1
  %t622 = load ptr, ptr %t621, !tbaa !27
  %t623 = getelementptr { i64, ptr }, ptr %t622, i64 1
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d45, i32 0, i32 1) }, ptr %t623, !tbaa !37
  %t624 = getelementptr { i64, ptr }, ptr %l198, i32 0, i32 1
  %t625 = load ptr, ptr %t624, !tbaa !27
  %t626 = getelementptr { i64, ptr }, ptr %t625, i64 2
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d46, i32 0, i32 1) }, ptr %t626, !tbaa !37
  %t627 = getelementptr { i64, ptr }, ptr %l198, i32 0, i32 1
  %t628 = load ptr, ptr %t627, !tbaa !27
  %t629 = getelementptr { i64, ptr }, ptr %t628, i64 3
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d47, i32 0, i32 1) }, ptr %t629, !tbaa !37
  %t631 = getelementptr { i64, ptr }, ptr %l198, i32 0, i32 1
  %t632 = load ptr, ptr %t631, !tbaa !27
  %t633 = getelementptr { i64, ptr }, ptr %t632, i64 4
  store { i64, ptr } %t612, ptr %t633, !tbaa !37
  %t635 = getelementptr { i64, ptr }, ptr %l198, i32 0, i32 1
  %t636 = load ptr, ptr %t635, !tbaa !27
  %t637 = getelementptr { i64, ptr }, ptr %t636, i64 5
  store { i64, ptr } %t613, ptr %t637, !tbaa !37
  %t638 = load { i64, ptr }, ptr %l198, !tbaa !27
  %t639 = call i1 @compiler_2ffetch_2egit(ptr %s18, { i64, ptr } %t638)
  store i1 %t639, ptr %l199
  br label %bb118
bb118:
  %t640 = load i1, ptr %l199, !tbaa !21
  br i1 %t640, label %bb119, label %bb120
bb119:
  store %olang.scope zeroinitializer, ptr %s20
  %t641 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t642 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t643 = mul i64 6, 16
  %t644 = call ptr @__olang_scope_alloc_zeroed(ptr %s20, i64 %t643)
  %t645 = insertvalue { i64, ptr } undef, i64 6, 0
  %t646 = insertvalue { i64, ptr } %t645, ptr %t644, 1
  store { i64, ptr } %t646, ptr %l202, !tbaa !27
  %t647 = getelementptr { i64, ptr }, ptr %l202, i32 0, i32 1
  %t648 = load ptr, ptr %t647, !tbaa !27
  %t649 = getelementptr { i64, ptr }, ptr %t648, i64 0
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d48, i32 0, i32 1) }, ptr %t649, !tbaa !37
  %t650 = getelementptr { i64, ptr }, ptr %l202, i32 0, i32 1
  %t651 = load ptr, ptr %t650, !tbaa !27
  %t652 = getelementptr { i64, ptr }, ptr %t651, i64 1
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d49, i32 0, i32 1) }, ptr %t652, !tbaa !37
  %t654 = getelementptr { i64, ptr }, ptr %l202, i32 0, i32 1
  %t655 = load ptr, ptr %t654, !tbaa !27
  %t656 = getelementptr { i64, ptr }, ptr %t655, i64 2
  store { i64, ptr } %t641, ptr %t656, !tbaa !37
  %t657 = getelementptr { i64, ptr }, ptr %l202, i32 0, i32 1
  %t658 = load ptr, ptr %t657, !tbaa !27
  %t659 = getelementptr { i64, ptr }, ptr %t658, i64 3
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d50, i32 0, i32 1) }, ptr %t659, !tbaa !37
  %t660 = getelementptr { i64, ptr }, ptr %l202, i32 0, i32 1
  %t661 = load ptr, ptr %t660, !tbaa !27
  %t662 = getelementptr { i64, ptr }, ptr %t661, i64 4
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d51, i32 0, i32 1) }, ptr %t662, !tbaa !37
  %t664 = getelementptr { i64, ptr }, ptr %l202, i32 0, i32 1
  %t665 = load ptr, ptr %t664, !tbaa !27
  %t666 = getelementptr { i64, ptr }, ptr %t665, i64 5
  store { i64, ptr } %t642, ptr %t666, !tbaa !37
  %t667 = load { i64, ptr }, ptr %l202, !tbaa !27
  %t668 = call i1 @compiler_2ffetch_2egit(ptr %s20, { i64, ptr } %t667)
  store i1 %t668, ptr %l203
  br label %bb121
bb120:
  br label %bb122
bb121:
  call void @__olang_scope_close(ptr %s20)
  br label %bb122
bb122:
  call void @__olang_scope_close(ptr %s18)
  br label %bb123
bb123:
  %t669 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t671 = call { i64, ptr } @compiler_2ffetch_2ehead(ptr %s0, ptr %s15, { i64, ptr } %t669)
  store { i64, ptr } %t671, ptr %l205
  br label %bb124
bb124:
  %t672 = load { i64, ptr }, ptr %l205, !tbaa !27
  %t673 = extractvalue { i64, ptr } %t672, 0
  %t674 = extractvalue { i64, ptr } %t672, 1
  %t675 = mul i64 %t673, 1
  %t676 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t675)
  call void @llvm.memcpy.p0.p0.i64(ptr %t676, ptr %t674, i64 %t675, i1 false)
  %t677 = insertvalue { i64, ptr } undef, i64 %t673, 0
  %t678 = insertvalue { i64, ptr } %t677, ptr %t676, 1
  %t679 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t682 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s15, ptr %s0, { i64, ptr } %t678, { i64, ptr } %t679)
  store i1 %t682, ptr %l208
  br label %bb125
bb125:
  %t683 = load i1, ptr %l208, !tbaa !21
  %t684 = xor i1 %t683, true
  br i1 %t684, label %bb126, label %bb127
bb126:
  %t686 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t688 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t686)
  store i32 %t688, ptr %l211
  %t689 = icmp ne i32 %t688, 0
  br i1 %t689, label %bb129, label %ok.690, !prof !99
ok.690:
  br label %bb128
bb127:
  br label %bb134
bb128:
  br label %bb133
bb129:
  %t691 = load i32, ptr %l211, !tbaa !23
  %t692 = ashr i32 %t691, 16
  %t694 = icmp eq i32 %t692, 1
  store i1 %t694, ptr %l213, !tbaa !21
  %t695 = load i32, ptr %l211, !tbaa !23
  %t696 = ashr i32 %t695, 16
  %t698 = icmp eq i32 %t696, 1
  br i1 %t698, label %bb130, label %bb131
bb130:
  call void @__olang_errpay_pop()
  br label %bb131
bb131:
  br label %bb132
bb132:
  br label %bb133
bb133:
  call void @__olang_scope_close(ptr %s15)
  call void @__olang_scope_close(ptr %s0)
  %t701 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65539, 0
  store { i32, { i64, ptr } } %t701, ptr %rv
  br label %ret
bb134:
  %t702 = load ptr, ptr %lp17
  %t703 = load { i64, ptr }, ptr %t702, !tbaa !27
  %t705 = call i1 @std_2fos_2eIsDir(ptr %v4, { i64, ptr } %t703)
  store i1 %t705, ptr %l218
  br label %bb135
bb135:
  %t706 = load i1, ptr %l218, !tbaa !21
  %t707 = xor i1 %t706, true
  br i1 %t707, label %bb136, label %bb137
bb136:
  %t709 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t710 = load ptr, ptr %lp17
  %t711 = load { i64, ptr }, ptr %t710, !tbaa !27
  %t714 = call i32 @std_2fos_2eRename(ptr %s0, ptr %v4, { i64, ptr } %t709, { i64, ptr } %t711)
  store i32 %t714, ptr %l222
  %t715 = icmp ne i32 %t714, 0
  br i1 %t715, label %bb139, label %ok.716, !prof !99
ok.716:
  br label %bb138
bb137:
  br label %bb150
bb138:
  br label %bb149
bb139:
  %t717 = load i32, ptr %l222, !tbaa !23
  %t718 = ashr i32 %t717, 16
  %t720 = icmp eq i32 %t718, 1
  store i1 %t720, ptr %l224, !tbaa !21
  %t721 = load i32, ptr %l222, !tbaa !23
  %t722 = ashr i32 %t721, 16
  %t724 = icmp eq i32 %t722, 1
  br i1 %t724, label %bb140, label %bb141
bb140:
  call void @__olang_errpay_pop()
  br label %bb141
bb141:
  br label %bb142
bb142:
  %t726 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t728 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t726)
  store i32 %t728, ptr %l228
  %t729 = icmp ne i32 %t728, 0
  br i1 %t729, label %bb144, label %ok.730, !prof !99
ok.730:
  br label %bb143
bb143:
  br label %bb148
bb144:
  %t731 = load i32, ptr %l228, !tbaa !23
  %t732 = ashr i32 %t731, 16
  %t734 = icmp eq i32 %t732, 1
  store i1 %t734, ptr %l230, !tbaa !21
  %t735 = load i32, ptr %l228, !tbaa !23
  %t736 = ashr i32 %t735, 16
  %t738 = icmp eq i32 %t736, 1
  br i1 %t738, label %bb145, label %bb146
bb145:
  call void @__olang_errpay_pop()
  br label %bb146
bb146:
  br label %bb147
bb147:
  br label %bb148
bb148:
  call void @__olang_scope_close(ptr %s15)
  call void @__olang_scope_close(ptr %s0)
  %t741 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65539, 0
  store { i32, { i64, ptr } } %t741, ptr %rv
  br label %ret
bb149:
  br label %bb150
bb150:
  %t742 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t744 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t742)
  store i32 %t744, ptr %l235
  %t745 = icmp ne i32 %t744, 0
  br i1 %t745, label %bb152, label %ok.746, !prof !99
ok.746:
  br label %bb151
bb151:
  br label %bb156
bb152:
  %t747 = load i32, ptr %l235, !tbaa !23
  %t748 = ashr i32 %t747, 16
  %t750 = icmp eq i32 %t748, 1
  store i1 %t750, ptr %l237, !tbaa !21
  %t751 = load i32, ptr %l235, !tbaa !23
  %t752 = ashr i32 %t751, 16
  %t754 = icmp eq i32 %t752, 1
  br i1 %t754, label %bb153, label %bb154
bb153:
  call void @__olang_errpay_pop()
  br label %bb154
bb154:
  br label %bb155
bb155:
  br label %bb156
bb156:
  %t756 = load ptr, ptr %lp17
  %t757 = load { i64, ptr }, ptr %t756, !tbaa !27
  call void @__olang_scope_close(ptr %s15)
  call void @__olang_scope_close(ptr %s0)
  %t759 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t757, 1
  store { i32, { i64, ptr } } %t759, ptr %rv
  br label %ret
bb157:
  %t760 = load ptr, ptr %l0, !tbaa !29
  %t761 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t762 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t763 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d52, i32 0, i32 1) }, 1
  %t764 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d52, i32 0, i32 1) }, 0
  %t766 = extractvalue { i64, ptr } %t761, 1
  %t767 = extractvalue { i64, ptr } %t761, 0
  %t768 = add i64 %t764, %t767
  %t769 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d53, i32 0, i32 1) }, 1
  %t770 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d53, i32 0, i32 1) }, 0
  %t771 = add i64 %t768, %t770
  %t773 = extractvalue { i64, ptr } %t762, 1
  %t774 = extractvalue { i64, ptr } %t762, 0
  %t775 = add i64 %t771, %t774
  %t776 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t775)
  call void @olang_textcopy(ptr %t776, ptr %t763, i64 %t764)
  %t777 = getelementptr i8, ptr %t776, i64 %t764
  call void @olang_textcopy(ptr %t777, ptr %t766, i64 %t767)
  %t778 = getelementptr i8, ptr %t777, i64 %t767
  call void @olang_textcopy(ptr %t778, ptr %t769, i64 %t770)
  %t779 = getelementptr i8, ptr %t778, i64 %t770
  call void @olang_textcopy(ptr %t779, ptr %t773, i64 %t774)
  %t780 = insertvalue { i64, ptr } undef, i64 %t775, 0
  %t781 = insertvalue { i64, ptr } %t780, ptr %t776, 1
  %t783 = extractvalue { i64, ptr } %t781, 0
  %t784 = extractvalue { i64, ptr } %t781, 1
  %t785 = mul i64 %t783, 1
  %t786 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t785)
  call void @llvm.memcpy.p0.p0.i64(ptr %t786, ptr %t784, i64 %t785, i1 false)
  %t787 = insertvalue { i64, ptr } undef, i64 %t783, 0
  %t788 = insertvalue { i64, ptr } %t787, ptr %t786, 1
  call void @compiler_2ffetch_2ecompiler_2ffetch_3aFetcher_2esay(ptr %v0, ptr %s0, ptr %t760, { i64, ptr } %t788)
  br label %bb158
bb158:
  %t791 = load i64, ptr %l4, !tbaa !24
  %t792 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t794 = extractvalue { i64, ptr } %t792, 0
  %t797 = icmp slt i64 %t791, %t794
  br i1 %t797, label %bb159, label %bb160
bb159:
  %t799 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t800 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d54, i32 0, i32 1) }, 1
  %t801 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d54, i32 0, i32 1) }, 0
  %t803 = extractvalue { i64, ptr } %t799, 1
  %t804 = extractvalue { i64, ptr } %t799, 0
  %t805 = add i64 %t801, %t804
  %t806 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t805)
  call void @olang_textcopy(ptr %t806, ptr %t800, i64 %t801)
  %t807 = getelementptr i8, ptr %t806, i64 %t801
  call void @olang_textcopy(ptr %t807, ptr %t803, i64 %t804)
  %t808 = insertvalue { i64, ptr } undef, i64 %t805, 0
  %t809 = insertvalue { i64, ptr } %t808, ptr %t806, 1
  %t811 = extractvalue { i64, ptr } %t809, 0
  %t812 = extractvalue { i64, ptr } %t809, 1
  %t813 = mul i64 %t811, 1
  %t814 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t813)
  call void @llvm.memcpy.p0.p0.i64(ptr %t814, ptr %t812, i64 %t813, i1 false)
  %t815 = insertvalue { i64, ptr } undef, i64 %t811, 0
  %t816 = insertvalue { i64, ptr } %t815, ptr %t814, 1
  store { i64, ptr } %t816, ptr %l250, !tbaa !27
  br label %bb161
bb160:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d55, i32 0, i32 1) }, ptr %l250, !tbaa !27
  br label %bb161
bb161:
  %t818 = load { i64, ptr }, ptr %l250, !tbaa !27
  store { i64, ptr } %t818, ptr %l19, !tbaa !27
  %t819 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t821 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t819)
  store i32 %t821, ptr %l255
  %t822 = icmp ne i32 %t821, 0
  br i1 %t822, label %bb163, label %ok.823, !prof !99
ok.823:
  br label %bb162
bb162:
  br label %bb167
bb163:
  %t824 = load i32, ptr %l255, !tbaa !23
  %t825 = ashr i32 %t824, 16
  %t827 = icmp eq i32 %t825, 1
  store i1 %t827, ptr %l257, !tbaa !21
  %t828 = load i32, ptr %l255, !tbaa !23
  %t829 = ashr i32 %t828, 16
  %t831 = icmp eq i32 %t829, 1
  br i1 %t831, label %bb164, label %bb165
bb164:
  call void @__olang_errpay_pop()
  br label %bb165
bb165:
  br label %bb166
bb166:
  br label %bb167
bb167:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d56, i32 0, i32 1) }, ptr %l260, !tbaa !27
  %t833 = load { i64, ptr }, ptr %l260, !tbaa !27
  store { i64, ptr } %t833, ptr %l261, !tbaa !27
  %t834 = load { i64, ptr }, ptr %l261, !tbaa !27
  %t835 = extractvalue { i64, ptr } %t834, 0
  store i64 %t835, ptr %l262, !tbaa !24
  %t836 = load i64, ptr %l262, !tbaa !24
  %t837 = mul i64 %t836, 1
  %t838 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t837)
  %t839 = insertvalue { i64, ptr } undef, i64 %t836, 0
  %t840 = insertvalue { i64, ptr } %t839, ptr %t838, 1
  store { i64, ptr } %t840, ptr %l263, !tbaa !27
  %t841 = getelementptr { i64, ptr }, ptr %l263, i32 0, i32 1
  %t842 = load ptr, ptr %t841, !tbaa !27
  %t843 = getelementptr { i64, ptr }, ptr %l261, i32 0, i32 1
  %t844 = load ptr, ptr %t843, !tbaa !27
  %t845 = load i64, ptr %l262, !tbaa !24
  %t846 = mul i64 %t845, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t842, ptr %t844, i64 %t846, i1 false)
  %t847 = load { i64, ptr }, ptr %l263, !tbaa !27
  store { i64, ptr } %t847, ptr %l20, !tbaa !27
  %t848 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t849 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t850 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t851 = mul i64 9, 16
  %t852 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t851)
  %t853 = insertvalue { i64, ptr } undef, i64 9, 0
  %t854 = insertvalue { i64, ptr } %t853, ptr %t852, 1
  store { i64, ptr } %t854, ptr %l267, !tbaa !27
  %t855 = getelementptr { i64, ptr }, ptr %l267, i32 0, i32 1
  %t856 = load ptr, ptr %t855, !tbaa !27
  %t857 = getelementptr { i64, ptr }, ptr %t856, i64 0
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d57, i32 0, i32 1) }, ptr %t857, !tbaa !37
  %t858 = getelementptr { i64, ptr }, ptr %l267, i32 0, i32 1
  %t859 = load ptr, ptr %t858, !tbaa !27
  %t860 = getelementptr { i64, ptr }, ptr %t859, i64 1
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d58, i32 0, i32 1) }, ptr %t860, !tbaa !37
  %t861 = getelementptr { i64, ptr }, ptr %l267, i32 0, i32 1
  %t862 = load ptr, ptr %t861, !tbaa !27
  %t863 = getelementptr { i64, ptr }, ptr %t862, i64 2
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d59, i32 0, i32 1) }, ptr %t863, !tbaa !37
  %t864 = getelementptr { i64, ptr }, ptr %l267, i32 0, i32 1
  %t865 = load ptr, ptr %t864, !tbaa !27
  %t866 = getelementptr { i64, ptr }, ptr %t865, i64 3
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d60, i32 0, i32 1) }, ptr %t866, !tbaa !37
  %t867 = getelementptr { i64, ptr }, ptr %l267, i32 0, i32 1
  %t868 = load ptr, ptr %t867, !tbaa !27
  %t869 = getelementptr { i64, ptr }, ptr %t868, i64 4
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d61, i32 0, i32 1) }, ptr %t869, !tbaa !37
  %t871 = getelementptr { i64, ptr }, ptr %l267, i32 0, i32 1
  %t872 = load ptr, ptr %t871, !tbaa !27
  %t873 = getelementptr { i64, ptr }, ptr %t872, i64 5
  store { i64, ptr } %t848, ptr %t873, !tbaa !37
  %t874 = getelementptr { i64, ptr }, ptr %l267, i32 0, i32 1
  %t875 = load ptr, ptr %t874, !tbaa !27
  %t876 = getelementptr { i64, ptr }, ptr %t875, i64 6
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d62, i32 0, i32 1) }, ptr %t876, !tbaa !37
  %t878 = getelementptr { i64, ptr }, ptr %l267, i32 0, i32 1
  %t879 = load ptr, ptr %t878, !tbaa !27
  %t880 = getelementptr { i64, ptr }, ptr %t879, i64 7
  store { i64, ptr } %t849, ptr %t880, !tbaa !37
  %t882 = getelementptr { i64, ptr }, ptr %l267, i32 0, i32 1
  %t883 = load ptr, ptr %t882, !tbaa !27
  %t884 = getelementptr { i64, ptr }, ptr %t883, i64 8
  store { i64, ptr } %t850, ptr %t884, !tbaa !37
  %t885 = load { i64, ptr }, ptr %l267, !tbaa !27
  %t886 = call i1 @compiler_2ffetch_2egit(ptr %s0, { i64, ptr } %t885)
  store i1 %t886, ptr %l268
  br label %bb168
bb168:
  %t887 = load i1, ptr %l268, !tbaa !21
  br i1 %t887, label %bb169, label %bb170
bb169:
  %t888 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t890 = call { i64, ptr } @compiler_2ffetch_2ehead(ptr %s0, ptr %s0, { i64, ptr } %t888)
  store { i64, ptr } %t890, ptr %l270
  br label %bb171
bb170:
  br label %bb175
bb171:
  %t891 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t892 = extractvalue { i64, ptr } %t891, 0
  %t893 = load { i64, ptr }, ptr %l270, !tbaa !27
  %t894 = extractvalue { i64, ptr } %t893, 0
  store i64 %t894, ptr %l272, !tbaa !24
  %t896 = load i64, ptr %l272, !tbaa !24
  %t897 = icmp eq i64 %t892, %t896
  br i1 %t897, label %bb172, label %bb173
bb172:
  %t899 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t900 = load ptr, ptr %t899, !tbaa !27
  %t901 = getelementptr { i64, ptr }, ptr %l270, i32 0, i32 1
  %t902 = load ptr, ptr %t901, !tbaa !27
  %t903 = load i64, ptr %l272, !tbaa !24
  %t904 = mul i64 %t903, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t900, ptr %t902, i64 %t904, i1 false)
  br label %bb174
bb173:
  %t905 = load { i64, ptr }, ptr %l270, !tbaa !27
  store { i64, ptr } %t905, ptr %l20, !tbaa !27
  br label %bb174
bb174:
  br label %bb175
bb175:
  %t906 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t908 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t906, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d63, i32 0, i32 1) })
  store i1 %t908, ptr %l275
  br label %bb176
bb176:
  %t909 = load i1, ptr %l275, !tbaa !21
  br i1 %t909, label %bb177, label %bb178
bb177:
  %t910 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t912 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t910)
  store i32 %t912, ptr %l277
  %t913 = icmp ne i32 %t912, 0
  br i1 %t913, label %bb180, label %ok.914, !prof !99
ok.914:
  br label %bb179
bb178:
  br label %bb185
bb179:
  br label %bb184
bb180:
  %t915 = load i32, ptr %l277, !tbaa !23
  %t916 = ashr i32 %t915, 16
  %t918 = icmp eq i32 %t916, 1
  store i1 %t918, ptr %l279, !tbaa !21
  %t919 = load i32, ptr %l277, !tbaa !23
  %t920 = ashr i32 %t919, 16
  %t922 = icmp eq i32 %t920, 1
  br i1 %t922, label %bb181, label %bb182
bb181:
  call void @__olang_errpay_pop()
  br label %bb182
bb182:
  br label %bb183
bb183:
  br label %bb184
bb184:
  call void @__olang_scope_close(ptr %s0)
  %t925 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65538, 0
  store { i32, { i64, ptr } } %t925, ptr %rv
  br label %ret
bb185:
  %t926 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t927 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t929 = extractvalue { i64, ptr } %t926, 1
  %t930 = extractvalue { i64, ptr } %t926, 0
  %t931 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d64, i32 0, i32 1) }, 1
  %t932 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d64, i32 0, i32 1) }, 0
  %t933 = add i64 %t930, %t932
  %t935 = extractvalue { i64, ptr } %t927, 1
  %t936 = extractvalue { i64, ptr } %t927, 0
  %t937 = add i64 %t933, %t936
  %t938 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t937)
  call void @olang_textcopy(ptr %t938, ptr %t929, i64 %t930)
  %t939 = getelementptr i8, ptr %t938, i64 %t930
  call void @olang_textcopy(ptr %t939, ptr %t931, i64 %t932)
  %t940 = getelementptr i8, ptr %t939, i64 %t932
  call void @olang_textcopy(ptr %t940, ptr %t935, i64 %t936)
  %t941 = insertvalue { i64, ptr } undef, i64 %t937, 0
  %t942 = insertvalue { i64, ptr } %t941, ptr %t938, 1
  %t943 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 16, i64 8)
  store ptr %t943, ptr %lp21
  %t945 = load ptr, ptr %lp21
  store { i64, ptr } %t942, ptr %t945, !tbaa !27
  %t946 = load ptr, ptr %lp21
  %t947 = load { i64, ptr }, ptr %t946, !tbaa !27
  %t949 = call i1 @std_2fos_2eIsDir(ptr %v4, { i64, ptr } %t947)
  store i1 %t949, ptr %l287
  br label %bb186
bb186:
  %t950 = load i1, ptr %l287, !tbaa !21
  br i1 %t950, label %bb187, label %bb188
bb187:
  %t951 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t953 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t951)
  store i32 %t953, ptr %l289
  %t954 = icmp ne i32 %t953, 0
  br i1 %t954, label %bb190, label %ok.955, !prof !99
ok.955:
  br label %bb189
bb188:
  %t956 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t957 = load ptr, ptr %lp21
  %t958 = load { i64, ptr }, ptr %t957, !tbaa !27
  %t961 = call i32 @std_2fos_2eRename(ptr %s0, ptr %v4, { i64, ptr } %t956, { i64, ptr } %t958)
  store i32 %t961, ptr %l296
  %t962 = icmp ne i32 %t961, 0
  br i1 %t962, label %bb196, label %ok.963, !prof !99
ok.963:
  br label %bb195
bb189:
  br label %bb194
bb190:
  %t964 = load i32, ptr %l289, !tbaa !23
  %t965 = ashr i32 %t964, 16
  %t967 = icmp eq i32 %t965, 1
  store i1 %t967, ptr %l291, !tbaa !21
  %t968 = load i32, ptr %l289, !tbaa !23
  %t969 = ashr i32 %t968, 16
  %t971 = icmp eq i32 %t969, 1
  br i1 %t971, label %bb191, label %bb192
bb191:
  call void @__olang_errpay_pop()
  br label %bb192
bb192:
  br label %bb193
bb193:
  br label %bb194
bb194:
  br label %bb207
bb195:
  br label %bb206
bb196:
  %t973 = load i32, ptr %l296, !tbaa !23
  %t974 = ashr i32 %t973, 16
  %t976 = icmp eq i32 %t974, 1
  store i1 %t976, ptr %l298, !tbaa !21
  %t977 = load i32, ptr %l296, !tbaa !23
  %t978 = ashr i32 %t977, 16
  %t980 = icmp eq i32 %t978, 1
  br i1 %t980, label %bb197, label %bb198
bb197:
  call void @__olang_errpay_pop()
  br label %bb198
bb198:
  br label %bb199
bb199:
  %t982 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t984 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t982)
  store i32 %t984, ptr %l302
  %t985 = icmp ne i32 %t984, 0
  br i1 %t985, label %bb201, label %ok.986, !prof !99
ok.986:
  br label %bb200
bb200:
  br label %bb205
bb201:
  %t987 = load i32, ptr %l302, !tbaa !23
  %t988 = ashr i32 %t987, 16
  %t990 = icmp eq i32 %t988, 1
  store i1 %t990, ptr %l304, !tbaa !21
  %t991 = load i32, ptr %l302, !tbaa !23
  %t992 = ashr i32 %t991, 16
  %t994 = icmp eq i32 %t992, 1
  br i1 %t994, label %bb202, label %bb203
bb202:
  call void @__olang_errpay_pop()
  br label %bb203
bb203:
  br label %bb204
bb204:
  br label %bb205
bb205:
  call void @__olang_scope_close(ptr %s0)
  %t997 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65538, 0
  store { i32, { i64, ptr } } %t997, ptr %rv
  br label %ret
bb206:
  br label %bb207
bb207:
  %t998 = load ptr, ptr %l0, !tbaa !29
  %t999 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t1000 = load { i64, ptr }, ptr %l20, !tbaa !27
  call void @compiler_2ffetch_2ecompiler_2ffetch_3aFetcher_2elock(ptr %v0, ptr %s0, ptr %s0, ptr %t998, { i64, ptr } %t999, { i64, ptr } %t1000)
  br label %bb208
bb208:
  %t1004 = load ptr, ptr %l0, !tbaa !29
  %t1006 = getelementptr %"compiler/fetch:Fetcher", ptr %t1004, i32 0, i32 3
  %t1007 = load i1, ptr %t1006, !tbaa !21
  br i1 %t1007, label %bb209, label %bb210
bb209:
  store %olang.scope zeroinitializer, ptr %s39
  %t1009 = load ptr, ptr %l0, !tbaa !29
  %t1010 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t1013 = call i1 @compiler_2ffetch_2ecompiler_2ffetch_3aFetcher_2eupdatedNow(ptr %v0, ptr %s0, ptr %t1009, { i64, ptr } %t1010, i1 true)
  store i1 %t1013, ptr %l315
  br label %bb211
bb210:
  br label %bb256
bb211:
  %t1014 = load i1, ptr %l14, !tbaa !21
  br i1 %t1014, label %bb212, label %bb213
bb212:
  %t1016 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t1018 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s39, { i64, ptr } %t1016, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d65, i32 0, i32 1) })
  store i1 %t1018, ptr %l319
  br label %bb214
bb213:
  store i1 false, ptr %l317, !tbaa !21
  br label %bb215
bb214:
  %t1019 = load i1, ptr %l319, !tbaa !21
  store i1 %t1019, ptr %l317, !tbaa !21
  br label %bb215
bb215:
  %t1020 = load i1, ptr %l317, !tbaa !21
  br i1 %t1020, label %bb216, label %bb217
bb216:
  store %olang.scope zeroinitializer, ptr %s40
  %t1021 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1021, ptr %l320, !tbaa !29
  %t1022 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t1022, ptr %l321, !tbaa !27
  %t1023 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t1024 = extractvalue { i64, ptr } %t1023, 0
  store i64 %t1024, ptr %l322, !tbaa !24
  %t1025 = icmp sge i64 0, 0
  br i1 %t1025, label %bb218, label %bb219
bb217:
  %t1027 = load i1, ptr %l14, !tbaa !21
  br i1 %t1027, label %bb225, label %bb226
bb218:
  %t1029 = icmp sle i64 0, 12
  br i1 %t1029, label %bb220, label %bb221
bb219:
  call void @__olang_check_failed(ptr @olang_loc_461a8d3078b45b75_287f37f9c7026b71)
  unreachable
bb220:
  %t1031 = load i64, ptr %l322, !tbaa !24
  %t1032 = icmp sle i64 12, %t1031
  br i1 %t1032, label %bb222, label %bb223
bb221:
  call void @__olang_check_failed(ptr @olang_loc_461a8d3078b45b75_287f37f9c7026b71)
  unreachable
bb222:
  %t1034 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t1035 = load ptr, ptr %t1034, !tbaa !27
  %t1036 = getelementptr i8, ptr %t1035, i64 0
  %t1037 = sub i64 12, 0
  %t1038 = insertvalue { i64, ptr } undef, i64 %t1037, 0
  %t1039 = insertvalue { i64, ptr } %t1038, ptr %t1036, 1
  %t1040 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d66, i32 0, i32 1) }, 1
  %t1041 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d66, i32 0, i32 1) }, 0
  %t1042 = load { i64, ptr }, ptr %l321, !tbaa !27
  %t1043 = extractvalue { i64, ptr } %t1042, 1
  %t1044 = extractvalue { i64, ptr } %t1042, 0
  %t1045 = add i64 %t1041, %t1044
  %t1046 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d67, i32 0, i32 1) }, 1
  %t1047 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d67, i32 0, i32 1) }, 0
  %t1048 = add i64 %t1045, %t1047
  %t1050 = extractvalue { i64, ptr } %t1039, 1
  %t1051 = extractvalue { i64, ptr } %t1039, 0
  %t1052 = add i64 %t1048, %t1051
  %t1053 = call ptr @__olang_scope_alloc(ptr %s40, i64 %t1052)
  call void @olang_textcopy(ptr %t1053, ptr %t1040, i64 %t1041)
  %t1054 = getelementptr i8, ptr %t1053, i64 %t1041
  call void @olang_textcopy(ptr %t1054, ptr %t1043, i64 %t1044)
  %t1055 = getelementptr i8, ptr %t1054, i64 %t1044
  call void @olang_textcopy(ptr %t1055, ptr %t1046, i64 %t1047)
  %t1056 = getelementptr i8, ptr %t1055, i64 %t1047
  call void @olang_textcopy(ptr %t1056, ptr %t1050, i64 %t1051)
  %t1057 = insertvalue { i64, ptr } undef, i64 %t1052, 0
  %t1058 = insertvalue { i64, ptr } %t1057, ptr %t1053, 1
  %t1060 = extractvalue { i64, ptr } %t1058, 0
  %t1061 = extractvalue { i64, ptr } %t1058, 1
  %t1062 = mul i64 %t1060, 1
  %t1063 = call ptr @__olang_scope_alloc(ptr %s40, i64 %t1062)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1063, ptr %t1061, i64 %t1062, i1 false)
  %t1064 = insertvalue { i64, ptr } undef, i64 %t1060, 0
  %t1065 = insertvalue { i64, ptr } %t1064, ptr %t1063, 1
  %t1066 = load ptr, ptr %l320, !tbaa !29
  call void @compiler_2ffetch_2ecompiler_2ffetch_3aFetcher_2esay(ptr %v0, ptr %s40, ptr %t1066, { i64, ptr } %t1065)
  br label %bb224
bb223:
  call void @__olang_check_failed(ptr @olang_loc_461a8d3078b45b75_287f37f9c7026b71)
  unreachable
bb224:
  call void @__olang_scope_close(ptr %s40)
  br label %bb255
bb225:
  %t1068 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t1069 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t1072 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t1068, { i64, ptr } %t1069)
  store i1 %t1072, ptr %l333
  br label %bb227
bb226:
  store i1 false, ptr %l330, !tbaa !21
  br label %bb228
bb227:
  %t1073 = load i1, ptr %l333, !tbaa !21
  %t1074 = xor i1 %t1073, true
  store i1 %t1074, ptr %l330, !tbaa !21
  br label %bb228
bb228:
  %t1076 = load i1, ptr %l330, !tbaa !21
  br i1 %t1076, label %bb229, label %bb230
bb229:
  store %olang.scope zeroinitializer, ptr %s43
  %t1077 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1077, ptr %l335, !tbaa !29
  %t1078 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t1078, ptr %l336, !tbaa !27
  %t1079 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t1080 = extractvalue { i64, ptr } %t1079, 0
  store i64 %t1080, ptr %l337, !tbaa !24
  %t1081 = icmp sge i64 0, 0
  br i1 %t1081, label %bb231, label %bb232
bb230:
  %t1083 = load i1, ptr %l14, !tbaa !21
  br i1 %t1083, label %bb244, label %bb245
bb231:
  %t1085 = icmp sle i64 0, 12
  br i1 %t1085, label %bb233, label %bb234
bb232:
  call void @__olang_check_failed(ptr @olang_loc_64bbdb9c4083d73a_45ec4fce431b420e)
  unreachable
bb233:
  %t1087 = load i64, ptr %l337, !tbaa !24
  %t1088 = icmp sle i64 12, %t1087
  br i1 %t1088, label %bb235, label %bb236
bb234:
  call void @__olang_check_failed(ptr @olang_loc_64bbdb9c4083d73a_45ec4fce431b420e)
  unreachable
bb235:
  %t1090 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t1091 = load ptr, ptr %t1090, !tbaa !27
  %t1092 = getelementptr i8, ptr %t1091, i64 0
  %t1093 = sub i64 12, 0
  %t1094 = insertvalue { i64, ptr } undef, i64 %t1093, 0
  %t1095 = insertvalue { i64, ptr } %t1094, ptr %t1092, 1
  store { i64, ptr } %t1095, ptr %l341, !tbaa !27
  %t1096 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t1097 = extractvalue { i64, ptr } %t1096, 0
  store i64 %t1097, ptr %l342, !tbaa !24
  %t1098 = icmp sge i64 0, 0
  br i1 %t1098, label %bb237, label %bb238
bb236:
  call void @__olang_check_failed(ptr @olang_loc_64bbdb9c4083d73a_45ec4fce431b420e)
  unreachable
bb237:
  %t1100 = icmp sle i64 0, 12
  br i1 %t1100, label %bb239, label %bb240
bb238:
  call void @__olang_check_failed(ptr @olang_loc_64bbdb9c4083d73a_45ec4fce431b420e)
  unreachable
bb239:
  %t1102 = load i64, ptr %l342, !tbaa !24
  %t1103 = icmp sle i64 12, %t1102
  br i1 %t1103, label %bb241, label %bb242
bb240:
  call void @__olang_check_failed(ptr @olang_loc_64bbdb9c4083d73a_45ec4fce431b420e)
  unreachable
bb241:
  %t1105 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t1106 = load ptr, ptr %t1105, !tbaa !27
  %t1107 = getelementptr i8, ptr %t1106, i64 0
  %t1108 = sub i64 12, 0
  %t1109 = insertvalue { i64, ptr } undef, i64 %t1108, 0
  %t1110 = insertvalue { i64, ptr } %t1109, ptr %t1107, 1
  %t1111 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d68, i32 0, i32 1) }, 1
  %t1112 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d68, i32 0, i32 1) }, 0
  %t1113 = load { i64, ptr }, ptr %l336, !tbaa !27
  %t1114 = extractvalue { i64, ptr } %t1113, 1
  %t1115 = extractvalue { i64, ptr } %t1113, 0
  %t1116 = add i64 %t1112, %t1115
  %t1117 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d69, i32 0, i32 1) }, 1
  %t1118 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d69, i32 0, i32 1) }, 0
  %t1119 = add i64 %t1116, %t1118
  %t1120 = load { i64, ptr }, ptr %l341, !tbaa !27
  %t1121 = extractvalue { i64, ptr } %t1120, 1
  %t1122 = extractvalue { i64, ptr } %t1120, 0
  %t1123 = add i64 %t1119, %t1122
  %t1124 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d70, i32 0, i32 1) }, 1
  %t1125 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d70, i32 0, i32 1) }, 0
  %t1126 = add i64 %t1123, %t1125
  %t1128 = extractvalue { i64, ptr } %t1110, 1
  %t1129 = extractvalue { i64, ptr } %t1110, 0
  %t1130 = add i64 %t1126, %t1129
  %t1131 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d71, i32 0, i32 1) }, 1
  %t1132 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d71, i32 0, i32 1) }, 0
  %t1133 = add i64 %t1130, %t1132
  %t1134 = call ptr @__olang_scope_alloc(ptr %s43, i64 %t1133)
  call void @olang_textcopy(ptr %t1134, ptr %t1111, i64 %t1112)
  %t1135 = getelementptr i8, ptr %t1134, i64 %t1112
  call void @olang_textcopy(ptr %t1135, ptr %t1114, i64 %t1115)
  %t1136 = getelementptr i8, ptr %t1135, i64 %t1115
  call void @olang_textcopy(ptr %t1136, ptr %t1117, i64 %t1118)
  %t1137 = getelementptr i8, ptr %t1136, i64 %t1118
  call void @olang_textcopy(ptr %t1137, ptr %t1121, i64 %t1122)
  %t1138 = getelementptr i8, ptr %t1137, i64 %t1122
  call void @olang_textcopy(ptr %t1138, ptr %t1124, i64 %t1125)
  %t1139 = getelementptr i8, ptr %t1138, i64 %t1125
  call void @olang_textcopy(ptr %t1139, ptr %t1128, i64 %t1129)
  %t1140 = getelementptr i8, ptr %t1139, i64 %t1129
  call void @olang_textcopy(ptr %t1140, ptr %t1131, i64 %t1132)
  %t1141 = insertvalue { i64, ptr } undef, i64 %t1133, 0
  %t1142 = insertvalue { i64, ptr } %t1141, ptr %t1134, 1
  %t1144 = extractvalue { i64, ptr } %t1142, 0
  %t1145 = extractvalue { i64, ptr } %t1142, 1
  %t1146 = mul i64 %t1144, 1
  %t1147 = call ptr @__olang_scope_alloc(ptr %s43, i64 %t1146)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1147, ptr %t1145, i64 %t1146, i1 false)
  %t1148 = insertvalue { i64, ptr } undef, i64 %t1144, 0
  %t1149 = insertvalue { i64, ptr } %t1148, ptr %t1147, 1
  %t1150 = load ptr, ptr %l335, !tbaa !29
  call void @compiler_2ffetch_2ecompiler_2ffetch_3aFetcher_2esay(ptr %v0, ptr %s43, ptr %t1150, { i64, ptr } %t1149)
  br label %bb243
bb242:
  call void @__olang_check_failed(ptr @olang_loc_64bbdb9c4083d73a_45ec4fce431b420e)
  unreachable
bb243:
  call void @__olang_scope_close(ptr %s43)
  br label %bb254
bb244:
  store %olang.scope zeroinitializer, ptr %s46
  %t1152 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1152, ptr %l350, !tbaa !29
  %t1153 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t1153, ptr %l351, !tbaa !27
  %t1154 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t1155 = extractvalue { i64, ptr } %t1154, 0
  store i64 %t1155, ptr %l352, !tbaa !24
  %t1156 = icmp sge i64 0, 0
  br i1 %t1156, label %bb246, label %bb247
bb245:
  br label %bb253
bb246:
  %t1158 = icmp sle i64 0, 12
  br i1 %t1158, label %bb248, label %bb249
bb247:
  call void @__olang_check_failed(ptr @olang_loc_978ca0e68f8e7a17_d15c8fffad158e0b)
  unreachable
bb248:
  %t1160 = load i64, ptr %l352, !tbaa !24
  %t1161 = icmp sle i64 12, %t1160
  br i1 %t1161, label %bb250, label %bb251
bb249:
  call void @__olang_check_failed(ptr @olang_loc_978ca0e68f8e7a17_d15c8fffad158e0b)
  unreachable
bb250:
  %t1163 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t1164 = load ptr, ptr %t1163, !tbaa !27
  %t1165 = getelementptr i8, ptr %t1164, i64 0
  %t1166 = sub i64 12, 0
  %t1167 = insertvalue { i64, ptr } undef, i64 %t1166, 0
  %t1168 = insertvalue { i64, ptr } %t1167, ptr %t1165, 1
  %t1169 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d72, i32 0, i32 1) }, 1
  %t1170 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d72, i32 0, i32 1) }, 0
  %t1171 = load { i64, ptr }, ptr %l351, !tbaa !27
  %t1172 = extractvalue { i64, ptr } %t1171, 1
  %t1173 = extractvalue { i64, ptr } %t1171, 0
  %t1174 = add i64 %t1170, %t1173
  %t1175 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d73, i32 0, i32 1) }, 1
  %t1176 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d73, i32 0, i32 1) }, 0
  %t1177 = add i64 %t1174, %t1176
  %t1179 = extractvalue { i64, ptr } %t1168, 1
  %t1180 = extractvalue { i64, ptr } %t1168, 0
  %t1181 = add i64 %t1177, %t1180
  %t1182 = call ptr @__olang_scope_alloc(ptr %s46, i64 %t1181)
  call void @olang_textcopy(ptr %t1182, ptr %t1169, i64 %t1170)
  %t1183 = getelementptr i8, ptr %t1182, i64 %t1170
  call void @olang_textcopy(ptr %t1183, ptr %t1172, i64 %t1173)
  %t1184 = getelementptr i8, ptr %t1183, i64 %t1173
  call void @olang_textcopy(ptr %t1184, ptr %t1175, i64 %t1176)
  %t1185 = getelementptr i8, ptr %t1184, i64 %t1176
  call void @olang_textcopy(ptr %t1185, ptr %t1179, i64 %t1180)
  %t1186 = insertvalue { i64, ptr } undef, i64 %t1181, 0
  %t1187 = insertvalue { i64, ptr } %t1186, ptr %t1182, 1
  %t1189 = extractvalue { i64, ptr } %t1187, 0
  %t1190 = extractvalue { i64, ptr } %t1187, 1
  %t1191 = mul i64 %t1189, 1
  %t1192 = call ptr @__olang_scope_alloc(ptr %s46, i64 %t1191)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1192, ptr %t1190, i64 %t1191, i1 false)
  %t1193 = insertvalue { i64, ptr } undef, i64 %t1189, 0
  %t1194 = insertvalue { i64, ptr } %t1193, ptr %t1192, 1
  %t1195 = load ptr, ptr %l350, !tbaa !29
  call void @compiler_2ffetch_2ecompiler_2ffetch_3aFetcher_2esay(ptr %v0, ptr %s46, ptr %t1195, { i64, ptr } %t1194)
  br label %bb252
bb251:
  call void @__olang_check_failed(ptr @olang_loc_978ca0e68f8e7a17_d15c8fffad158e0b)
  unreachable
bb252:
  call void @__olang_scope_close(ptr %s46)
  br label %bb253
bb253:
  br label %bb254
bb254:
  br label %bb255
bb255:
  call void @__olang_scope_close(ptr %s39)
  br label %bb256
bb256:
  %t1197 = load ptr, ptr %lp21
  %t1198 = load { i64, ptr }, ptr %t1197, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t1200 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t1198, 1
  store { i32, { i64, ptr } } %t1200, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i32, { i64, ptr } } @compiler_2ffetch_2ecompiler_2ffetch_3aFetcher_2eLocked(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l11 = alloca i64
  %l15 = alloca i64
  %l18 = alloca i64
  %l39 = alloca { i64, ptr }
  %l41 = alloca i1
  %l45 = alloca { i64, ptr }
  %rv = alloca { i32, { i64, ptr } }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ffetch_2ecompiler_2ffetch_3aFetcher_2eload(ptr %v0, ptr %t1)
  br label %bb1
bb1:
  store i64 0, ptr %l2, !tbaa !24
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/fetch:Fetcher", ptr %t3, i32 0, i32 6
  %t7 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t5)
  store i64 %t7, ptr %l11
  br label %bb2
bb2:
  %t8 = load i64, ptr %l11, !tbaa !24
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
  store i64 0, ptr %l15, !tbaa !24
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
  store i64 %t33, ptr %l18, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb7
bb7:
  %t35 = load i64, ptr %l18, !tbaa !24
  store i64 %t35, ptr %l15, !tbaa !24
  br label %bb8
bb8:
  %t36 = load i64, ptr %l15, !tbaa !24
  store i64 %t36, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb9
bb9:
  %t37 = load i64, ptr %l6, !tbaa !24
  %t38 = load i64, ptr %l5, !tbaa !24
  %t41 = icmp slt i64 %t37, %t38
  %t43 = xor i1 %t41, true
  br i1 %t43, label %bb10, label %bb11
bb10:
  br label %bb20
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
  %t57 = getelementptr %"compiler/fetch:Fetcher", ptr %t55, i32 0, i32 6
  %t58 = load i64, ptr %l7, !tbaa !24
  %t61 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t57, i64 %t58)
  store { i64, ptr } %t61, ptr %l39
  br label %bb13
bb13:
  %t63 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t65 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %t63, { i64, ptr } %a1)
  store i1 %t65, ptr %l41
  br label %bb14
bb14:
  %t66 = load i1, ptr %l41, !tbaa !21
  br i1 %t66, label %bb15, label %bb16
bb15:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/fetch:Fetcher", ptr %t67, i32 0, i32 7
  %t70 = load i64, ptr %l7, !tbaa !24
  %t73 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v2, ptr %t69, i64 %t70)
  store { i64, ptr } %t73, ptr %l45
  br label %bb17
bb16:
  br label %bb18
bb17:
  %t74 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t75 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t74, 1
  store { i32, { i64, ptr } } %t75, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t76 = load i64, ptr %l6, !tbaa !24
  %t78 = add i64 %t76, 1
  store i64 %t78, ptr %l6, !tbaa !24
  br label %bb9
bb20:
  %t81 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t81, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local void @compiler_2ffetch_2ecompiler_2ffetch_3aFetcher_2eload(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"std/prelude/text:LineIter"
  %l3 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l18 = alloca i32
  %l20 = alloca i1
  %l24 = alloca %"std/prelude/text:LineIter"
  %l25 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l28 = alloca i32
  %l30 = alloca i1
  %l32 = alloca i1
  %l34 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
  %l38 = alloca i64
  %l39 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  %l42 = alloca i64
  %l43 = alloca { i64, ptr }
  %l51 = alloca { i64, ptr }
  %l55 = alloca i1
  %l57 = alloca i1
  %l59 = alloca { i64, ptr }
  %l61 = alloca i64
  %l64 = alloca i1
  %l66 = alloca { i64, ptr }
  %l68 = alloca i64
  %l73 = alloca i1
  %l75 = alloca ptr
  %l76 = alloca i64
  %l82 = alloca ptr
  %l83 = alloca i64
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s11 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/fetch:Fetcher", ptr %t1, i32 0, i32 5
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/fetch:Fetcher", ptr %t6, i32 0, i32 5
  store i1 true, ptr %t8, !tbaa !21
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/fetch:Fetcher", ptr %t9, i32 0, i32 0
  %t12 = load { i64, ptr }, ptr %t11, !tbaa !27
  %t14 = call { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %v0, ptr %s0, { i64, ptr } %t12)
  %t15 = extractvalue { i32, { i64, ptr } } %t14, 1
  %t16 = extractvalue { i32, { i64, ptr } } %t14, 0
  store i32 %t16, ptr %l18
  %t17 = icmp ne i32 %t16, 0
  br i1 %t17, label %bb5, label %ok.18, !prof !99
ok.18:
  store { i64, ptr } %t15, ptr %l17
  br label %bb4
bb4:
  %t19 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t19, ptr %l14, !tbaa !27
  br label %bb9
bb5:
  %t20 = load i32, ptr %l18, !tbaa !23
  %t21 = ashr i32 %t20, 16
  %t23 = icmp eq i32 %t21, 1
  store i1 %t23, ptr %l20, !tbaa !21
  %t24 = load i32, ptr %l18, !tbaa !23
  %t25 = ashr i32 %t24, 16
  %t27 = icmp eq i32 %t25, 1
  br i1 %t27, label %bb6, label %bb7
bb6:
  call void @__olang_errpay_pop()
  br label %bb7
bb7:
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb9:
  %t29 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t32 = call %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %s0, ptr %s0, { i64, ptr } %t29)
  store %"std/prelude/text:LineIter" %t32, ptr %l24
  br label %bb10
bb10:
  %t33 = load %"std/prelude/text:LineIter", ptr %l24
  store %"std/prelude/text:LineIter" %t33, ptr %l2
  br label %bb11
bb11:
  store %olang.scope zeroinitializer, ptr %s4
  %t35 = call { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %s0, ptr %s0, ptr %l2)
  %t36 = extractvalue { i32, { i64, ptr } } %t35, 1
  %t37 = extractvalue { i32, { i64, ptr } } %t35, 0
  store i32 %t37, ptr %l28
  %t38 = icmp ne i32 %t37, 0
  br i1 %t38, label %bb13, label %ok.39, !prof !99
ok.39:
  store { i64, ptr } %t36, ptr %l27
  br label %bb12
bb12:
  %t40 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t40, ptr %l25, !tbaa !27
  br label %bb15
bb13:
  %t41 = load i32, ptr %l28, !tbaa !23
  %t42 = ashr i32 %t41, 16
  %t44 = icmp eq i32 %t42, 1
  store i1 %t44, ptr %l30, !tbaa !21
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s4)
  br label %bb57
bb15:
  %t45 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t45, ptr %l3, !tbaa !27
  %t46 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t48 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s4, { i64, ptr } %t46, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d74, i32 0, i32 1) })
  store i1 %t48, ptr %l32
  br label %bb16
bb16:
  %t49 = load i1, ptr %l32, !tbaa !21
  br i1 %t49, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s4)
  br label %bb56
bb18:
  br label %bb19
bb19:
  %t50 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t52 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %s0, ptr %s0, { i64, ptr } %t50)
  store { i64, ptr } %t52, ptr %l34
  br label %bb20
bb20:
  %t53 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t54 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %s0, ptr %s4, ptr %s4, { i64, ptr } %t53, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d75, i32 0, i32 1) })
  store { i64, ptr } %t54, ptr %l35
  br label %bb21
bb21:
  %t55 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d76, i32 0, i32 1) }, ptr %l36, !tbaa !27
  %t56 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t56, ptr %l37, !tbaa !27
  %t57 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t58 = extractvalue { i64, ptr } %t57, 0
  store i64 %t58, ptr %l38, !tbaa !24
  %t59 = load i64, ptr %l38, !tbaa !24
  %t60 = mul i64 %t59, 1
  %t61 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t60)
  %t62 = insertvalue { i64, ptr } undef, i64 %t59, 0
  %t63 = insertvalue { i64, ptr } %t62, ptr %t61, 1
  store { i64, ptr } %t63, ptr %l39, !tbaa !27
  %t64 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !27
  %t66 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !27
  %t68 = load i64, ptr %l38, !tbaa !24
  %t69 = mul i64 %t68, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t65, ptr %t67, i64 %t69, i1 false)
  %t70 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t70, ptr %l5, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d77, i32 0, i32 1) }, ptr %l40, !tbaa !27
  %t71 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t71, ptr %l41, !tbaa !27
  %t72 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t73 = extractvalue { i64, ptr } %t72, 0
  store i64 %t73, ptr %l42, !tbaa !24
  %t74 = load i64, ptr %l42, !tbaa !24
  %t75 = mul i64 %t74, 1
  %t76 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t75)
  %t77 = insertvalue { i64, ptr } undef, i64 %t74, 0
  %t78 = insertvalue { i64, ptr } %t77, ptr %t76, 1
  store { i64, ptr } %t78, ptr %l43, !tbaa !27
  %t79 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !27
  %t81 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !27
  %t83 = load i64, ptr %l42, !tbaa !24
  %t84 = mul i64 %t83, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t80, ptr %t82, i64 %t84, i1 false)
  %t85 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t85, ptr %l6, !tbaa !27
  store { i64, ptr } %t55, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t88 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t90 = extractvalue { i64, ptr } %t88, 0
  store i64 %t90, ptr %l9, !tbaa !24
  br label %bb22
bb22:
  store %olang.scope zeroinitializer, ptr %s7
  %t92 = load i64, ptr %l8, !tbaa !24
  %t93 = load i64, ptr %l9, !tbaa !24
  %t96 = icmp slt i64 %t92, %t93
  %t98 = xor i1 %t96, true
  br i1 %t98, label %bb23, label %bb24
bb23:
  call void @__olang_scope_close(ptr %s7)
  br label %bb45
bb24:
  br label %bb25
bb25:
  %t100 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t100, ptr %l51, !tbaa !27
  %t101 = load i64, ptr %l8, !tbaa !24
  %t103 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t104 = load ptr, ptr %t103, !tbaa !27
  %t105 = getelementptr { i64, ptr }, ptr %t104, i64 %t101
  %t106 = load { i64, ptr }, ptr %t105, !tbaa !37
  store { i64, ptr } %t106, ptr %l10, !tbaa !27
  %t108 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t110 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s4, ptr %s7, { i64, ptr } %t108, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d78, i32 0, i32 1) })
  store i1 %t110, ptr %l55
  br label %bb26
bb26:
  %t111 = load i1, ptr %l55, !tbaa !21
  br i1 %t111, label %bb27, label %bb28
bb27:
  call void @__olang_scope_close(ptr %s7)
  br label %bb44
bb28:
  br label %bb29
bb29:
  %t112 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t114 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s4, ptr %s7, { i64, ptr } %t112, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d79, i32 0, i32 1) })
  store i1 %t114, ptr %l57
  br label %bb30
bb30:
  %t115 = load i1, ptr %l57, !tbaa !21
  br i1 %t115, label %bb31, label %bb32
bb31:
  %t116 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t118 = extractvalue { i64, ptr } %t116, 1
  %t119 = extractvalue { i64, ptr } %t116, 0
  %t120 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t119)
  call void @olang_textcopy(ptr %t120, ptr %t118, i64 %t119)
  %t121 = insertvalue { i64, ptr } undef, i64 %t119, 0
  %t122 = insertvalue { i64, ptr } %t121, ptr %t120, 1
  store { i64, ptr } %t122, ptr %l59, !tbaa !27
  %t123 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t124 = extractvalue { i64, ptr } %t123, 0
  %t125 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t126 = extractvalue { i64, ptr } %t125, 0
  store i64 %t126, ptr %l61, !tbaa !24
  %t128 = load i64, ptr %l61, !tbaa !24
  %t129 = icmp eq i64 %t124, %t128
  br i1 %t129, label %bb33, label %bb34
bb32:
  store %olang.scope zeroinitializer, ptr %s11
  %t131 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t133 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s4, ptr %s11, { i64, ptr } %t131, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d80, i32 0, i32 1) })
  store i1 %t133, ptr %l64
  br label %bb36
bb33:
  %t134 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t135 = load ptr, ptr %t134, !tbaa !27
  %t136 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !27
  %t138 = load i64, ptr %l61, !tbaa !24
  %t139 = mul i64 %t138, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t135, ptr %t137, i64 %t139, i1 false)
  br label %bb35
bb34:
  %t140 = load { i64, ptr }, ptr %l59, !tbaa !27
  store { i64, ptr } %t140, ptr %l5, !tbaa !27
  br label %bb35
bb35:
  br label %bb43
bb36:
  %t141 = load i1, ptr %l64, !tbaa !21
  br i1 %t141, label %bb37, label %bb38
bb37:
  %t142 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t144 = extractvalue { i64, ptr } %t142, 1
  %t145 = extractvalue { i64, ptr } %t142, 0
  %t146 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t145)
  call void @olang_textcopy(ptr %t146, ptr %t144, i64 %t145)
  %t147 = insertvalue { i64, ptr } undef, i64 %t145, 0
  %t148 = insertvalue { i64, ptr } %t147, ptr %t146, 1
  store { i64, ptr } %t148, ptr %l66, !tbaa !27
  %t149 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t150 = extractvalue { i64, ptr } %t149, 0
  %t151 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t152 = extractvalue { i64, ptr } %t151, 0
  store i64 %t152, ptr %l68, !tbaa !24
  %t154 = load i64, ptr %l68, !tbaa !24
  %t155 = icmp eq i64 %t150, %t154
  br i1 %t155, label %bb39, label %bb40
bb38:
  br label %bb42
bb39:
  %t157 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t158 = load ptr, ptr %t157, !tbaa !27
  %t159 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t160 = load ptr, ptr %t159, !tbaa !27
  %t161 = load i64, ptr %l68, !tbaa !24
  %t162 = mul i64 %t161, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t158, ptr %t160, i64 %t162, i1 false)
  br label %bb41
bb40:
  %t163 = load { i64, ptr }, ptr %l66, !tbaa !27
  store { i64, ptr } %t163, ptr %l6, !tbaa !27
  br label %bb41
bb41:
  br label %bb42
bb42:
  call void @__olang_scope_close(ptr %s11)
  br label %bb43
bb43:
  call void @__olang_scope_close(ptr %s7)
  br label %bb44
bb44:
  %t164 = load i64, ptr %l8, !tbaa !24
  %t166 = add i64 %t164, 1
  store i64 %t166, ptr %l8, !tbaa !24
  br label %bb22
bb45:
  %t168 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t170 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s4, ptr %s4, { i64, ptr } %t168, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d81, i32 0, i32 1) })
  store i1 %t170, ptr %l73
  br label %bb46
bb46:
  %t171 = load i1, ptr %l73, !tbaa !21
  br i1 %t171, label %bb47, label %bb48
bb47:
  call void @__olang_scope_close(ptr %s4)
  br label %bb56
bb48:
  br label %bb49
bb49:
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t174 = getelementptr %"compiler/fetch:Fetcher", ptr %t172, i32 0, i32 6
  store ptr %t174, ptr %l75, !tbaa !29
  %t175 = ptrtoint ptr %v0 to i64
  store i64 %t175, ptr %l76, !tbaa !24
  %t176 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t176, label %bb50, label %bb51
bb50:
  %t178 = call ptr @__olang_region_make(ptr %v0)
  %t179 = ptrtoint ptr %t178 to i64
  store i64 %t179, ptr %l76, !tbaa !24
  br label %bb51
bb51:
  %t180 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t182 = extractvalue { i64, ptr } %t180, 1
  %t183 = extractvalue { i64, ptr } %t180, 0
  %t184 = load i64, ptr %l76
  %t185 = inttoptr i64 %t184 to ptr
  %t186 = call ptr @__olang_scope_alloc(ptr %t185, i64 %t183)
  call void @olang_textcopy(ptr %t186, ptr %t182, i64 %t183)
  %t187 = insertvalue { i64, ptr } undef, i64 %t183, 0
  %t188 = insertvalue { i64, ptr } %t187, ptr %t186, 1
  %t190 = load i64, ptr %l76
  %t191 = inttoptr i64 %t190 to ptr
  %t192 = extractvalue { i64, ptr } %t188, 0
  %t193 = extractvalue { i64, ptr } %t188, 1
  %t194 = mul i64 %t192, 1
  %t195 = call ptr @__olang_scope_alloc(ptr %t191, i64 %t194)
  call void @llvm.memcpy.p0.p0.i64(ptr %t195, ptr %t193, i64 %t194, i1 false)
  %t196 = insertvalue { i64, ptr } undef, i64 %t192, 0
  %t197 = insertvalue { i64, ptr } %t196, ptr %t195, 1
  %t198 = load ptr, ptr %l75, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t198, { i64, ptr } %t197)
  br label %bb52
bb52:
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t202 = getelementptr %"compiler/fetch:Fetcher", ptr %t200, i32 0, i32 7
  store ptr %t202, ptr %l82, !tbaa !29
  %t203 = ptrtoint ptr %v0 to i64
  store i64 %t203, ptr %l83, !tbaa !24
  %t204 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t204, label %bb53, label %bb54
bb53:
  %t206 = call ptr @__olang_region_make(ptr %v0)
  %t207 = ptrtoint ptr %t206 to i64
  store i64 %t207, ptr %l83, !tbaa !24
  br label %bb54
bb54:
  %t208 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t210 = extractvalue { i64, ptr } %t208, 1
  %t211 = extractvalue { i64, ptr } %t208, 0
  %t212 = load i64, ptr %l83
  %t213 = inttoptr i64 %t212 to ptr
  %t214 = call ptr @__olang_scope_alloc(ptr %t213, i64 %t211)
  call void @olang_textcopy(ptr %t214, ptr %t210, i64 %t211)
  %t215 = insertvalue { i64, ptr } undef, i64 %t211, 0
  %t216 = insertvalue { i64, ptr } %t215, ptr %t214, 1
  %t218 = load i64, ptr %l83
  %t219 = inttoptr i64 %t218 to ptr
  %t220 = extractvalue { i64, ptr } %t216, 0
  %t221 = extractvalue { i64, ptr } %t216, 1
  %t222 = mul i64 %t220, 1
  %t223 = call ptr @__olang_scope_alloc(ptr %t219, i64 %t222)
  call void @llvm.memcpy.p0.p0.i64(ptr %t223, ptr %t221, i64 %t222, i1 false)
  %t224 = insertvalue { i64, ptr } undef, i64 %t220, 0
  %t225 = insertvalue { i64, ptr } %t224, ptr %t223, 1
  %t226 = load ptr, ptr %l82, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t226, { i64, ptr } %t225)
  br label %bb55
bb55:
  call void @__olang_scope_close(ptr %s4)
  br label %bb56
bb56:
  br label %bb11
bb57:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ffetch_2ecompiler_2ffetch_3aFetcher_2elock(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
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
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca %"std/prelude/text:StringBuilder"
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l25 = alloca i64
  %l29 = alloca i64
  %l32 = alloca i64
  %l53 = alloca { i64, ptr }
  %l55 = alloca i1
  %l61 = alloca i1
  %l65 = alloca { i64, ptr }
  %l67 = alloca i1
  %l71 = alloca ptr
  %l72 = alloca i64
  %l73 = alloca i64
  %l79 = alloca ptr
  %l80 = alloca i64
  %l86 = alloca ptr
  %l87 = alloca i64
  %l94 = alloca i64
  %l103 = alloca i64
  %l106 = alloca i64
  %l131 = alloca %"std/prelude/text:StringBuilder"
  %l141 = alloca { i64, ptr }
  %l144 = alloca ptr
  %l148 = alloca { i64, ptr }
  %l150 = alloca ptr
  %l154 = alloca { i64, ptr }
  %l159 = alloca { i64, ptr }
  %l161 = alloca { i64, ptr }
  %l164 = alloca i32
  %l166 = alloca i1
  %s0 = alloca %olang.scope
  %t262 = alloca { ptr, ptr }, align 8
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ffetch_2ecompiler_2ffetch_3aFetcher_2eload(ptr %v0, ptr %t1)
  br label %bb1
bb1:
  store i64 -1, ptr %l3, !tbaa !24
  store i64 0, ptr %l4, !tbaa !24
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/fetch:Fetcher", ptr %t3, i32 0, i32 6
  %t7 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t5)
  store i64 %t7, ptr %l25
  br label %bb2
bb2:
  %t8 = load i64, ptr %l25, !tbaa !24
  store i64 %t8, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t9 = load i64, ptr %l5, !tbaa !24
  %t10 = load i64, ptr %l4, !tbaa !24
  %t13 = icmp sgt i64 %t9, %t10
  br i1 %t13, label %bb3, label %bb4
bb3:
  %t15 = load i64, ptr %l6, !tbaa !24
  %t17 = icmp sgt i64 %t15, 0
  br i1 %t17, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l29, !tbaa !24
  br label %bb8
bb5:
  %t19 = load i64, ptr %l5, !tbaa !24
  %t20 = load i64, ptr %l4, !tbaa !24
  %t23 = sub i64 %t19, %t20
  %t24 = load i64, ptr %l6, !tbaa !24
  %t27 = add i64 %t23, %t24
  %t29 = sub i64 %t27, 1
  %t30 = load i64, ptr %l6, !tbaa !24
  %t33 = sdiv i64 %t29, %t30
  store i64 %t33, ptr %l32, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l32, !tbaa !24
  br label %bb7
bb7:
  %t35 = load i64, ptr %l32, !tbaa !24
  store i64 %t35, ptr %l29, !tbaa !24
  br label %bb8
bb8:
  %t36 = load i64, ptr %l29, !tbaa !24
  store i64 %t36, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb9
bb9:
  %t37 = load i64, ptr %l8, !tbaa !24
  %t38 = load i64, ptr %l7, !tbaa !24
  %t41 = icmp slt i64 %t37, %t38
  %t43 = xor i1 %t41, true
  br i1 %t43, label %bb10, label %bb11
bb10:
  br label %bb19
bb11:
  br label %bb12
bb12:
  %t45 = load i64, ptr %l4, !tbaa !24
  %t46 = load i64, ptr %l8, !tbaa !24
  %t47 = load i64, ptr %l6, !tbaa !24
  %t50 = mul i64 %t46, %t47
  %t53 = add i64 %t45, %t50
  store i64 %t53, ptr %l9, !tbaa !24
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/fetch:Fetcher", ptr %t55, i32 0, i32 6
  %t58 = load i64, ptr %l9, !tbaa !24
  %t61 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t57, i64 %t58)
  store { i64, ptr } %t61, ptr %l53
  br label %bb13
bb13:
  %t62 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t63 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t65 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %t63, { i64, ptr } %t62)
  store i1 %t65, ptr %l55
  br label %bb14
bb14:
  %t66 = load i1, ptr %l55, !tbaa !21
  br i1 %t66, label %bb15, label %bb16
bb15:
  %t67 = load i64, ptr %l9, !tbaa !24
  store i64 %t67, ptr %l3, !tbaa !24
  br label %bb17
bb16:
  br label %bb17
bb17:
  br label %bb18
bb18:
  %t69 = load i64, ptr %l8, !tbaa !24
  %t71 = add i64 %t69, 1
  store i64 %t71, ptr %l8, !tbaa !24
  br label %bb9
bb19:
  %t73 = load i64, ptr %l3, !tbaa !24
  %t75 = icmp sge i64 %t73, 0
  br i1 %t75, label %bb20, label %bb21
bb20:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/fetch:Fetcher", ptr %t77, i32 0, i32 7
  %t80 = load i64, ptr %l3, !tbaa !24
  %t83 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t79, i64 %t80)
  store { i64, ptr } %t83, ptr %l65
  br label %bb22
bb21:
  store i1 false, ptr %l61, !tbaa !21
  br label %bb24
bb22:
  %t84 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t85 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t87 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v2, { i64, ptr } %t85, { i64, ptr } %t84)
  store i1 %t87, ptr %l67
  br label %bb23
bb23:
  %t88 = load i1, ptr %l67, !tbaa !21
  store i1 %t88, ptr %l61, !tbaa !21
  br label %bb24
bb24:
  %t89 = load i1, ptr %l61, !tbaa !21
  br i1 %t89, label %bb25, label %bb26
bb25:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb26:
  br label %bb27
bb27:
  %t90 = load i64, ptr %l3, !tbaa !24
  %t92 = icmp sge i64 %t90, 0
  br i1 %t92, label %bb28, label %bb29
bb28:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/fetch:Fetcher", ptr %t94, i32 0, i32 7
  store ptr %t96, ptr %l71, !tbaa !29
  %t97 = load i64, ptr %l3, !tbaa !24
  store i64 %t97, ptr %l72, !tbaa !24
  %t98 = ptrtoint ptr %v0 to i64
  store i64 %t98, ptr %l73, !tbaa !24
  %t99 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t99, label %bb30, label %bb31
bb29:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = getelementptr %"compiler/fetch:Fetcher", ptr %t101, i32 0, i32 6
  store ptr %t103, ptr %l79, !tbaa !29
  %t104 = ptrtoint ptr %v0 to i64
  store i64 %t104, ptr %l80, !tbaa !24
  %t105 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t105, label %bb33, label %bb34
bb30:
  %t107 = call ptr @__olang_region_make(ptr %v0)
  %t108 = ptrtoint ptr %t107 to i64
  store i64 %t108, ptr %l73, !tbaa !24
  br label %bb31
bb31:
  %t109 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t111 = extractvalue { i64, ptr } %t109, 1
  %t112 = extractvalue { i64, ptr } %t109, 0
  %t113 = load i64, ptr %l73
  %t114 = inttoptr i64 %t113 to ptr
  %t115 = call ptr @__olang_scope_alloc(ptr %t114, i64 %t112)
  call void @olang_textcopy(ptr %t115, ptr %t111, i64 %t112)
  %t116 = insertvalue { i64, ptr } undef, i64 %t112, 0
  %t117 = insertvalue { i64, ptr } %t116, ptr %t115, 1
  %t119 = load i64, ptr %l73
  %t120 = inttoptr i64 %t119 to ptr
  %t121 = extractvalue { i64, ptr } %t117, 0
  %t122 = extractvalue { i64, ptr } %t117, 1
  %t123 = mul i64 %t121, 1
  %t124 = call ptr @__olang_scope_alloc(ptr %t120, i64 %t123)
  call void @llvm.memcpy.p0.p0.i64(ptr %t124, ptr %t122, i64 %t123, i1 false)
  %t125 = insertvalue { i64, ptr } undef, i64 %t121, 0
  %t126 = insertvalue { i64, ptr } %t125, ptr %t124, 1
  %t127 = load ptr, ptr %l71, !tbaa !29
  %t128 = load i64, ptr %l72, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_Haae4fbc3ba15583a49040d883d2248d1(ptr %v0, ptr %v0, ptr %t127, i64 %t128, { i64, ptr } %t126)
  br label %bb32
bb32:
  br label %bb39
bb33:
  %t130 = call ptr @__olang_region_make(ptr %v0)
  %t131 = ptrtoint ptr %t130 to i64
  store i64 %t131, ptr %l80, !tbaa !24
  br label %bb34
bb34:
  %t132 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t134 = extractvalue { i64, ptr } %t132, 1
  %t135 = extractvalue { i64, ptr } %t132, 0
  %t136 = load i64, ptr %l80
  %t137 = inttoptr i64 %t136 to ptr
  %t138 = call ptr @__olang_scope_alloc(ptr %t137, i64 %t135)
  call void @olang_textcopy(ptr %t138, ptr %t134, i64 %t135)
  %t139 = insertvalue { i64, ptr } undef, i64 %t135, 0
  %t140 = insertvalue { i64, ptr } %t139, ptr %t138, 1
  %t142 = load i64, ptr %l80
  %t143 = inttoptr i64 %t142 to ptr
  %t144 = extractvalue { i64, ptr } %t140, 0
  %t145 = extractvalue { i64, ptr } %t140, 1
  %t146 = mul i64 %t144, 1
  %t147 = call ptr @__olang_scope_alloc(ptr %t143, i64 %t146)
  call void @llvm.memcpy.p0.p0.i64(ptr %t147, ptr %t145, i64 %t146, i1 false)
  %t148 = insertvalue { i64, ptr } undef, i64 %t144, 0
  %t149 = insertvalue { i64, ptr } %t148, ptr %t147, 1
  %t150 = load ptr, ptr %l79, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t150, { i64, ptr } %t149)
  br label %bb35
bb35:
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t154 = getelementptr %"compiler/fetch:Fetcher", ptr %t152, i32 0, i32 7
  store ptr %t154, ptr %l86, !tbaa !29
  %t155 = ptrtoint ptr %v0 to i64
  store i64 %t155, ptr %l87, !tbaa !24
  %t156 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t156, label %bb36, label %bb37
bb36:
  %t158 = call ptr @__olang_region_make(ptr %v0)
  %t159 = ptrtoint ptr %t158 to i64
  store i64 %t159, ptr %l87, !tbaa !24
  br label %bb37
bb37:
  %t160 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t162 = extractvalue { i64, ptr } %t160, 1
  %t163 = extractvalue { i64, ptr } %t160, 0
  %t164 = load i64, ptr %l87
  %t165 = inttoptr i64 %t164 to ptr
  %t166 = call ptr @__olang_scope_alloc(ptr %t165, i64 %t163)
  call void @olang_textcopy(ptr %t166, ptr %t162, i64 %t163)
  %t167 = insertvalue { i64, ptr } undef, i64 %t163, 0
  %t168 = insertvalue { i64, ptr } %t167, ptr %t166, 1
  %t170 = load i64, ptr %l87
  %t171 = inttoptr i64 %t170 to ptr
  %t172 = extractvalue { i64, ptr } %t168, 0
  %t173 = extractvalue { i64, ptr } %t168, 1
  %t174 = mul i64 %t172, 1
  %t175 = call ptr @__olang_scope_alloc(ptr %t171, i64 %t174)
  call void @llvm.memcpy.p0.p0.i64(ptr %t175, ptr %t173, i64 %t174, i1 false)
  %t176 = insertvalue { i64, ptr } undef, i64 %t172, 0
  %t177 = insertvalue { i64, ptr } %t176, ptr %t175, 1
  %t178 = load ptr, ptr %l86, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t178, { i64, ptr } %t177)
  br label %bb38
bb38:
  br label %bb39
bb39:
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t182 = getelementptr %"compiler/fetch:Fetcher", ptr %t180, i32 0, i32 6
  %t184 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t182)
  store i64 %t184, ptr %l94
  br label %bb40
bb40:
  %t185 = load i64, ptr %l94, !tbaa !24
  %t186 = icmp sge i64 %t185, 0
  br i1 %t186, label %bb41, label %bb42
bb41:
  %t188 = load i64, ptr %l94, !tbaa !24
  %t189 = icmp sle i64 %t188, 1152921504606846975
  br i1 %t189, label %bb43, label %bb44
bb42:
  call void @__olang_check_failed(ptr @olang_loc_ba721b6722bc57b1_efdace1c8e747995)
  unreachable
bb43:
  %t191 = load i64, ptr %l94, !tbaa !24
  %t192 = mul i64 %t191, 8
  %t193 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t192)
  %t194 = insertvalue { i64, ptr } undef, i64 %t191, 0
  %t195 = insertvalue { i64, ptr } %t194, ptr %t193, 1
  store { i64, ptr } %t195, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t197 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t199 = extractvalue { i64, ptr } %t197, 0
  store i64 %t199, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t201 = load i64, ptr %l12, !tbaa !24
  %t202 = load i64, ptr %l11, !tbaa !24
  %t205 = icmp sgt i64 %t201, %t202
  br i1 %t205, label %bb45, label %bb46
bb44:
  call void @__olang_check_failed(ptr @olang_loc_ba721b6722bc57b1_efdace1c8e747995)
  unreachable
bb45:
  %t207 = load i64, ptr %l13, !tbaa !24
  %t209 = icmp sgt i64 %t207, 0
  br i1 %t209, label %bb47, label %bb48
bb46:
  store i64 0, ptr %l103, !tbaa !24
  br label %bb50
bb47:
  %t211 = load i64, ptr %l12, !tbaa !24
  %t212 = load i64, ptr %l11, !tbaa !24
  %t215 = sub i64 %t211, %t212
  %t216 = load i64, ptr %l13, !tbaa !24
  %t219 = add i64 %t215, %t216
  %t221 = sub i64 %t219, 1
  %t222 = load i64, ptr %l13, !tbaa !24
  %t225 = sdiv i64 %t221, %t222
  store i64 %t225, ptr %l106, !tbaa !24
  br label %bb49
bb48:
  store i64 0, ptr %l106, !tbaa !24
  br label %bb49
bb49:
  %t227 = load i64, ptr %l106, !tbaa !24
  store i64 %t227, ptr %l103, !tbaa !24
  br label %bb50
bb50:
  %t228 = load i64, ptr %l103, !tbaa !24
  store i64 %t228, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb51
bb51:
  %t229 = load i64, ptr %l15, !tbaa !24
  %t230 = load i64, ptr %l14, !tbaa !24
  %t233 = icmp slt i64 %t229, %t230
  %t235 = xor i1 %t233, true
  br i1 %t235, label %bb52, label %bb53
bb52:
  br label %bb56
bb53:
  br label %bb54
bb54:
  %t237 = load i64, ptr %l11, !tbaa !24
  %t238 = load i64, ptr %l15, !tbaa !24
  %t239 = load i64, ptr %l13, !tbaa !24
  %t242 = mul i64 %t238, %t239
  %t245 = add i64 %t237, %t242
  store i64 %t245, ptr %l16, !tbaa !24
  %t247 = load i64, ptr %l16, !tbaa !24
  %t248 = load i64, ptr %l16, !tbaa !24
  %t251 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t252 = load ptr, ptr %t251, !tbaa !27
  %t253 = getelementptr i64, ptr %t252, i64 %t247
  store i64 %t248, ptr %t253, !tbaa !34
  br label %bb55
bb55:
  %t254 = load i64, ptr %l15, !tbaa !24
  %t256 = add i64 %t254, 1
  store i64 %t256, ptr %l15, !tbaa !24
  br label %bb51
bb56:
  %t258 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t259 = load ptr, ptr %l0, !tbaa !29
  %t260 = getelementptr { ptr, ptr }, ptr null, i32 1
  %t261 = ptrtoint ptr %t260 to i64
  %t263 = getelementptr { ptr, ptr }, ptr %t262, i32 0, i32 0
  store ptr %t259, ptr %t263, !tbaa !28
  call void @__olang_scope_escape(ptr %v0)
  %t265 = getelementptr { ptr, ptr }, ptr %t262, i32 0, i32 1
  store ptr %v0, ptr %t265, !tbaa !28
  %t266 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_82, 0
  %t267 = insertvalue { ptr, ptr } %t266, ptr %t262, 1
  %t270 = extractvalue { ptr, ptr } %t267, 0
  %t271 = extractvalue { ptr, ptr } %t267, 1
  call void @std_2fprelude_2farray_2eArray_3cI64_3e_2eSort_3cI64_2c_20_3f_3e(ptr %s0, ptr %s0, { i64, ptr } %t258, ptr %t270, ptr %t271)
  br label %bb57
bb57:
  %t272 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t272, ptr %l131
  br label %bb58
bb58:
  %t273 = load %"std/prelude/text:StringBuilder", ptr %l131
  store %"std/prelude/text:StringBuilder" %t273, ptr %l17
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l17, { i64, ptr } { i64 100, ptr getelementptr inbounds (<{ i64, [100 x i8] }>, ptr @.d83, i32 0, i32 1) })
  br label %bb59
bb59:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l17, { i64, ptr } { i64 77, ptr getelementptr inbounds (<{ i64, [77 x i8] }>, ptr @.d84, i32 0, i32 1) })
  br label %bb60
bb60:
  %t276 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t276, ptr %l18, !tbaa !27
  store i64 0, ptr %l19, !tbaa !24
  %t278 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t280 = extractvalue { i64, ptr } %t278, 0
  store i64 %t280, ptr %l20, !tbaa !24
  br label %bb61
bb61:
  %t282 = load i64, ptr %l19, !tbaa !24
  %t283 = load i64, ptr %l20, !tbaa !24
  %t286 = icmp slt i64 %t282, %t283
  %t288 = xor i1 %t286, true
  br i1 %t288, label %bb62, label %bb63
bb62:
  br label %bb72
bb63:
  br label %bb64
bb64:
  %t290 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t290, ptr %l141, !tbaa !27
  %t291 = load i64, ptr %l19, !tbaa !24
  %t293 = getelementptr { i64, ptr }, ptr %l141, i32 0, i32 1
  %t294 = load ptr, ptr %t293, !tbaa !27
  %t295 = getelementptr i64, ptr %t294, i64 %t291
  %t296 = load i64, ptr %t295, !tbaa !34
  store i64 %t296, ptr %l21, !tbaa !24
  store ptr %l17, ptr %l144, !tbaa !29
  %t298 = load ptr, ptr %l0, !tbaa !29
  %t300 = getelementptr %"compiler/fetch:Fetcher", ptr %t298, i32 0, i32 6
  %t301 = load i64, ptr %l21, !tbaa !24
  %t304 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t300, i64 %t301)
  store { i64, ptr } %t304, ptr %l148
  br label %bb65
bb65:
  %t305 = load ptr, ptr %l144, !tbaa !29
  %t306 = load { i64, ptr }, ptr %l148, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v0, ptr %t305, { i64, ptr } %t306)
  br label %bb66
bb66:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l17, i8 32)
  br label %bb67
bb67:
  store ptr %l17, ptr %l150, !tbaa !29
  %t308 = load ptr, ptr %l0, !tbaa !29
  %t310 = getelementptr %"compiler/fetch:Fetcher", ptr %t308, i32 0, i32 7
  %t311 = load i64, ptr %l21, !tbaa !24
  %t314 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t310, i64 %t311)
  store { i64, ptr } %t314, ptr %l154
  br label %bb68
bb68:
  %t315 = load ptr, ptr %l150, !tbaa !29
  %t316 = load { i64, ptr }, ptr %l154, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v0, ptr %t315, { i64, ptr } %t316)
  br label %bb69
bb69:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l17, i8 10)
  br label %bb70
bb70:
  br label %bb71
bb71:
  %t318 = load i64, ptr %l19, !tbaa !24
  %t320 = add i64 %t318, 1
  store i64 %t320, ptr %l19, !tbaa !24
  br label %bb61
bb72:
  %t322 = load ptr, ptr %l0, !tbaa !29
  %t324 = getelementptr %"compiler/fetch:Fetcher", ptr %t322, i32 0, i32 0
  %t325 = load { i64, ptr }, ptr %t324, !tbaa !27
  store { i64, ptr } %t325, ptr %l159, !tbaa !27
  %t327 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %l17)
  store { i64, ptr } %t327, ptr %l161
  br label %bb73
bb73:
  %t328 = load { i64, ptr }, ptr %l161, !tbaa !27
  %t330 = extractvalue { i64, ptr } %t328, 0
  %t331 = extractvalue { i64, ptr } %t328, 1
  %t332 = mul i64 %t330, 1
  %t333 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t332)
  call void @llvm.memcpy.p0.p0.i64(ptr %t333, ptr %t331, i64 %t332, i1 false)
  %t334 = insertvalue { i64, ptr } undef, i64 %t330, 0
  %t335 = insertvalue { i64, ptr } %t334, ptr %t333, 1
  %t336 = load { i64, ptr }, ptr %l159, !tbaa !27
  %t338 = call i32 @std_2fos_2eWriteFile(ptr %v0, ptr %s0, { i64, ptr } %t336, { i64, ptr } %t335)
  store i32 %t338, ptr %l164
  %t339 = icmp ne i32 %t338, 0
  br i1 %t339, label %bb75, label %ok.340, !prof !99
ok.340:
  br label %bb74
bb74:
  br label %bb79
bb75:
  %t341 = load i32, ptr %l164, !tbaa !23
  %t342 = ashr i32 %t341, 16
  %t344 = icmp eq i32 %t342, 1
  store i1 %t344, ptr %l166, !tbaa !21
  %t345 = load i32, ptr %l164, !tbaa !23
  %t346 = ashr i32 %t345, 16
  %t348 = icmp eq i32 %t346, 1
  br i1 %t348, label %bb76, label %bb77
bb76:
  call void @__olang_errpay_pop()
  br label %bb77
bb77:
  br label %bb78
bb78:
  br label %bb79
bb79:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ffetch_2ecompiler_2ffetch_3aFetcher_2esay(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l3 = alloca ptr
  %l4 = alloca i64
  %l13 = alloca i32
  %l15 = alloca i1
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/fetch:Fetcher", ptr %t1, i32 0, i32 9
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
  %t9 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 1
  %t12 = extractvalue { i64, ptr } %t9, 0
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
  %t31 = getelementptr %"compiler/fetch:Fetcher", ptr %t29, i32 0, i32 4
  %t32 = load i1, ptr %t31, !tbaa !21
  %t34 = xor i1 %t32, true
  br i1 %t34, label %bb4, label %bb5
bb4:
  %t36 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t38 = call i32 @std_2fio_2ePrintErrln(ptr %v1, { i64, ptr } %t36)
  store i32 %t38, ptr %l13
  %t39 = icmp ne i32 %t38, 0
  br i1 %t39, label %bb7, label %ok.40, !prof !99
ok.40:
  br label %bb6
bb5:
  br label %bb12
bb6:
  br label %bb11
bb7:
  %t41 = load i32, ptr %l13, !tbaa !23
  %t42 = ashr i32 %t41, 16
  %t44 = icmp eq i32 %t42, 1
  store i1 %t44, ptr %l15, !tbaa !21
  %t45 = load i32, ptr %l13, !tbaa !23
  %t46 = ashr i32 %t45, 16
  %t48 = icmp eq i32 %t46, 1
  br i1 %t48, label %bb8, label %bb9
bb8:
  call void @__olang_errpay_pop()
  br label %bb9
bb9:
  br label %bb10
bb10:
  br label %bb11
bb11:
  br label %bb12
bb12:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2ffetch_2ecompiler_2ffetch_3aFetcher_2eupdatedNow(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l3 = alloca ptr
  %l4 = alloca i64
  %l8 = alloca i64
  %l10 = alloca i64
  %l15 = alloca { i64, ptr }
  %l18 = alloca i1
  %l24 = alloca ptr
  %l25 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/fetch:Fetcher", ptr %t1, i32 0, i32 8
  store ptr %t3, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb1
bb1:
  %t5 = load i64, ptr %l4, !tbaa !24
  store i64 %t5, ptr %l8, !tbaa !24
  %t6 = load ptr, ptr %l3, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l10
  br label %bb2
bb2:
  %t9 = load i64, ptr %l8, !tbaa !24
  %t10 = load i64, ptr %l10, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  br label %bb12
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l3, !tbaa !29
  %t16 = load i64, ptr %l4, !tbaa !24
  %t19 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t15, i64 %t16)
  store { i64, ptr } %t19, ptr %l15
  br label %bb6
bb6:
  %t20 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t22 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t25 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %t20, { i64, ptr } %t22)
  store i1 %t25, ptr %l18
  br label %bb7
bb7:
  %t26 = load i1, ptr %l18, !tbaa !21
  br i1 %t26, label %bb8, label %bb9
bb8:
  store i1 true, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  br label %bb11
bb11:
  %t28 = load i64, ptr %l4, !tbaa !24
  %t30 = add i64 %t28, 1
  store i64 %t30, ptr %l4, !tbaa !24
  br label %bb1
bb12:
  br i1 %a2, label %bb13, label %bb14
bb13:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/fetch:Fetcher", ptr %t34, i32 0, i32 8
  store ptr %t36, ptr %l24, !tbaa !29
  %t37 = ptrtoint ptr %v0 to i64
  store i64 %t37, ptr %l25, !tbaa !24
  %t38 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t38, label %bb15, label %bb16
bb14:
  br label %bb18
bb15:
  %t40 = call ptr @__olang_region_make(ptr %v0)
  %t41 = ptrtoint ptr %t40 to i64
  store i64 %t41, ptr %l25, !tbaa !24
  br label %bb16
bb16:
  %t42 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t44 = extractvalue { i64, ptr } %t42, 1
  %t45 = extractvalue { i64, ptr } %t42, 0
  %t46 = load i64, ptr %l25
  %t47 = inttoptr i64 %t46 to ptr
  %t48 = call ptr @__olang_scope_alloc(ptr %t47, i64 %t45)
  call void @olang_textcopy(ptr %t48, ptr %t44, i64 %t45)
  %t49 = insertvalue { i64, ptr } undef, i64 %t45, 0
  %t50 = insertvalue { i64, ptr } %t49, ptr %t48, 1
  %t52 = load i64, ptr %l25
  %t53 = inttoptr i64 %t52 to ptr
  %t54 = extractvalue { i64, ptr } %t50, 0
  %t55 = extractvalue { i64, ptr } %t50, 1
  %t56 = mul i64 %t54, 1
  %t57 = call ptr @__olang_scope_alloc(ptr %t53, i64 %t56)
  call void @llvm.memcpy.p0.p0.i64(ptr %t57, ptr %t55, i64 %t56, i1 false)
  %t58 = insertvalue { i64, ptr } undef, i64 %t54, 0
  %t59 = insertvalue { i64, ptr } %t58, ptr %t57, 1
  %t60 = load ptr, ptr %l24, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t60, { i64, ptr } %t59)
  br label %bb17
bb17:
  br label %bb18
bb18:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ffetch_2egit(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca %"std/os:Output"
  %l2 = alloca %"std/os:Output"
  %l4 = alloca { i64, ptr }
  %l5 = alloca %"std/os:Output"
  %l6 = alloca i32
  %l8 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d85, i32 0, i32 1) }, ptr %l4, !tbaa !27
  %t3 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t4 = call { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %v0, ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %a0, { i64, ptr } %t3, i1 true, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d86, i32 0, i32 1) })
  %t5 = extractvalue { i32, %"std/os:Output" } %t4, 1
  %t6 = extractvalue { i32, %"std/os:Output" } %t4, 0
  store i32 %t6, ptr %l6
  %t7 = icmp ne i32 %t6, 0
  br i1 %t7, label %bb2, label %ok.8, !prof !99
ok.8:
  store %"std/os:Output" %t5, ptr %l5
  br label %bb1
bb1:
  %t9 = load %"std/os:Output", ptr %l5
  store %"std/os:Output" %t9, ptr %l2
  br label %bb6
bb2:
  %t10 = load i32, ptr %l6, !tbaa !23
  %t11 = ashr i32 %t10, 16
  %t13 = icmp eq i32 %t11, 1
  store i1 %t13, ptr %l8, !tbaa !21
  %t14 = load i32, ptr %l6, !tbaa !23
  %t15 = ashr i32 %t14, 16
  %t17 = icmp eq i32 %t15, 1
  br i1 %t17, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb6:
  %t20 = load %"std/os:Output", ptr %l2
  store %"std/os:Output" %t20, ptr %l1
  %t21 = getelementptr %"std/os:Output", ptr %l1, i32 0, i32 0
  %t22 = load i32, ptr %t21, !tbaa !23
  %t24 = icmp eq i32 %t22, 0
  call void @__olang_scope_close(ptr %s0)
  store i1 %t24, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2ffetch_2ehead(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l2 = alloca [5 x { i64, ptr }]
  %l3 = alloca %"std/os:Output"
  %l4 = alloca { i64, ptr }
  %l7 = alloca %"std/os:Output"
  %l12 = alloca { i64, ptr }
  %l13 = alloca %"std/os:Output"
  %l14 = alloca i32
  %l16 = alloca i1
  %l19 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l21 = alloca i64
  %l22 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l27 = alloca i64
  %l28 = alloca { i64, ptr }
  %l30 = alloca { i64, ptr }
  %l32 = alloca i1
  %l33 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %l38 = alloca i64
  %l39 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = extractvalue { i64, ptr } %a0, 1
  %t4 = extractvalue { i64, ptr } %a0, 0
  %t5 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t4)
  call void @olang_textcopy(ptr %t5, ptr %t3, i64 %t4)
  %t6 = insertvalue { i64, ptr } undef, i64 %t4, 0
  %t7 = insertvalue { i64, ptr } %t6, ptr %t5, 1
  %t10 = insertvalue [5 x { i64, ptr }] undef, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d87, i32 0, i32 1) }, 0
  %t11 = insertvalue [5 x { i64, ptr }] %t10, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d88, i32 0, i32 1) }, 1
  %t13 = insertvalue [5 x { i64, ptr }] %t11, { i64, ptr } %t7, 2
  %t14 = insertvalue [5 x { i64, ptr }] %t13, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d89, i32 0, i32 1) }, 3
  %t15 = insertvalue [5 x { i64, ptr }] %t14, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d90, i32 0, i32 1) }, 4
  store [5 x { i64, ptr }] %t15, ptr %l2
  %t18 = insertvalue { i64, ptr } undef, i64 5, 0
  %t19 = insertvalue { i64, ptr } %t18, ptr %l2, 1
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d85, i32 0, i32 1) }, ptr %l12, !tbaa !27
  %t21 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t22 = call { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %s0, ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t19, { i64, ptr } %t21, i1 true, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d86, i32 0, i32 1) })
  %t23 = extractvalue { i32, %"std/os:Output" } %t22, 1
  %t24 = extractvalue { i32, %"std/os:Output" } %t22, 0
  store i32 %t24, ptr %l14
  %t25 = icmp ne i32 %t24, 0
  br i1 %t25, label %bb2, label %ok.26, !prof !99
ok.26:
  store %"std/os:Output" %t23, ptr %l13
  br label %bb1
bb1:
  %t27 = load %"std/os:Output", ptr %l13
  store %"std/os:Output" %t27, ptr %l7
  br label %bb6
bb2:
  %t28 = load i32, ptr %l14, !tbaa !23
  %t29 = ashr i32 %t28, 16
  %t31 = icmp eq i32 %t29, 1
  store i1 %t31, ptr %l16, !tbaa !21
  %t32 = load i32, ptr %l14, !tbaa !23
  %t33 = ashr i32 %t32, 16
  %t35 = icmp eq i32 %t33, 1
  br i1 %t35, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d91, i32 0, i32 1) }, ptr %l19, !tbaa !27
  %t37 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t37, ptr %l20, !tbaa !27
  %t38 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t38, 0
  store i64 %t39, ptr %l21, !tbaa !24
  %t40 = load i64, ptr %l21, !tbaa !24
  %t41 = mul i64 %t40, 1
  %t42 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t41)
  %t43 = insertvalue { i64, ptr } undef, i64 %t40, 0
  %t44 = insertvalue { i64, ptr } %t43, ptr %t42, 1
  store { i64, ptr } %t44, ptr %l22, !tbaa !27
  %t45 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !27
  %t47 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !27
  %t49 = load i64, ptr %l21, !tbaa !24
  %t50 = mul i64 %t49, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t46, ptr %t48, i64 %t50, i1 false)
  %t51 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t51, ptr %l20, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t52 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t52, ptr %rv
  br label %ret
bb6:
  %t53 = load %"std/os:Output", ptr %l7
  store %"std/os:Output" %t53, ptr %l3
  %t54 = getelementptr %"std/os:Output", ptr %l3, i32 0, i32 0
  %t55 = load i32, ptr %t54, !tbaa !23
  %t57 = icmp ne i32 %t55, 0
  br i1 %t57, label %bb7, label %bb8
bb7:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d92, i32 0, i32 1) }, ptr %l25, !tbaa !27
  %t59 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t59, ptr %l26, !tbaa !27
  %t60 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t61 = extractvalue { i64, ptr } %t60, 0
  store i64 %t61, ptr %l27, !tbaa !24
  %t62 = load i64, ptr %l27, !tbaa !24
  %t63 = mul i64 %t62, 1
  %t64 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t63)
  %t65 = insertvalue { i64, ptr } undef, i64 %t62, 0
  %t66 = insertvalue { i64, ptr } %t65, ptr %t64, 1
  store { i64, ptr } %t66, ptr %l28, !tbaa !27
  %t67 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !27
  %t69 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !27
  %t71 = load i64, ptr %l27, !tbaa !24
  %t72 = mul i64 %t71, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t68, ptr %t70, i64 %t72, i1 false)
  %t73 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t73, ptr %l26, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t74 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t74, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t75 = getelementptr %"std/os:Output", ptr %l3, i32 0, i32 1
  %t76 = load { i64, ptr }, ptr %t75, !tbaa !27
  %t78 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %s0, ptr %s0, { i64, ptr } %t76)
  store { i64, ptr } %t78, ptr %l30
  br label %bb10
bb10:
  %t79 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t79, ptr %l4, !tbaa !27
  %t80 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t82 = call i1 @compiler_2ffetch_2eIsCommit(ptr %s0, { i64, ptr } %t80)
  store i1 %t82, ptr %l32
  br label %bb11
bb11:
  %t83 = load i1, ptr %l32, !tbaa !21
  br i1 %t83, label %bb12, label %bb13
bb12:
  %t84 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t86 = extractvalue { i64, ptr } %t84, 1
  %t87 = extractvalue { i64, ptr } %t84, 0
  %t88 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t87)
  call void @olang_textcopy(ptr %t88, ptr %t86, i64 %t87)
  %t89 = insertvalue { i64, ptr } undef, i64 %t87, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t88, 1
  store { i64, ptr } %t90, ptr %l33, !tbaa !27
  br label %bb14
bb13:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d93, i32 0, i32 1) }, ptr %l36, !tbaa !27
  %t92 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t92, ptr %l33, !tbaa !27
  br label %bb14
bb14:
  %t94 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t95 = extractvalue { i64, ptr } %t94, 0
  store i64 %t95, ptr %l38, !tbaa !24
  %t96 = load i64, ptr %l38, !tbaa !24
  %t97 = mul i64 %t96, 1
  %t98 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t97)
  %t99 = insertvalue { i64, ptr } undef, i64 %t96, 0
  %t100 = insertvalue { i64, ptr } %t99, ptr %t98, 1
  store { i64, ptr } %t100, ptr %l39, !tbaa !27
  %t101 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !27
  %t103 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t104 = load ptr, ptr %t103, !tbaa !27
  %t105 = load i64, ptr %l38, !tbaa !24
  %t106 = mul i64 %t105, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t102, ptr %t104, i64 %t106, i1 false)
  %t107 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t107, ptr %l33, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t108 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t108, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2ffetch_2emakeRepo(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca { i64, ptr }
  %l9 = alloca i32
  %l11 = alloca i1
  %l14 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca { i64, ptr }
  %l23 = alloca i32
  %l25 = alloca i1
  %l28 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %l30 = alloca i64
  %l31 = alloca { i64, ptr }
  %l33 = alloca i1
  %l34 = alloca i1
  %l36 = alloca i1
  %l37 = alloca i1
  %l39 = alloca i1
  %l41 = alloca { i64, ptr }
  %l43 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l46 = alloca i64
  %l47 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t4 = extractvalue { i64, ptr } %a0, 1
  %t5 = extractvalue { i64, ptr } %a0, 0
  %t6 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d94, i32 0, i32 1) }, 1
  %t7 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d94, i32 0, i32 1) }, 0
  %t8 = add i64 %t5, %t7
  %t10 = extractvalue { i64, ptr } %a1, 1
  %t11 = extractvalue { i64, ptr } %a1, 0
  %t12 = add i64 %t8, %t11
  %t13 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t12)
  call void @olang_textcopy(ptr %t13, ptr %t4, i64 %t5)
  %t14 = getelementptr i8, ptr %t13, i64 %t5
  call void @olang_textcopy(ptr %t14, ptr %t6, i64 %t7)
  %t15 = getelementptr i8, ptr %t14, i64 %t7
  call void @olang_textcopy(ptr %t15, ptr %t10, i64 %t11)
  %t16 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t17 = insertvalue { i64, ptr } %t16, ptr %t13, 1
  store { i64, ptr } %t17, ptr %l3, !tbaa !27
  %t19 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t21 = call i32 @std_2fos_2eMkDirAll(ptr %s0, { i64, ptr } %t19)
  store i32 %t21, ptr %l9
  %t22 = icmp ne i32 %t21, 0
  br i1 %t22, label %bb2, label %ok.23, !prof !99
ok.23:
  br label %bb1
bb1:
  br label %bb6
bb2:
  %t24 = load i32, ptr %l9, !tbaa !23
  %t25 = ashr i32 %t24, 16
  %t27 = icmp eq i32 %t25, 1
  store i1 %t27, ptr %l11, !tbaa !21
  %t28 = load i32, ptr %l9, !tbaa !23
  %t29 = ashr i32 %t28, 16
  %t31 = icmp eq i32 %t29, 1
  br i1 %t31, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d95, i32 0, i32 1) }, ptr %l14, !tbaa !27
  %t33 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t33, ptr %l15, !tbaa !27
  %t34 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t34, 0
  store i64 %t35, ptr %l16, !tbaa !24
  %t36 = load i64, ptr %l16, !tbaa !24
  %t37 = mul i64 %t36, 1
  %t38 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t37)
  %t39 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t40 = insertvalue { i64, ptr } %t39, ptr %t38, 1
  store { i64, ptr } %t40, ptr %l17, !tbaa !27
  %t41 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !27
  %t43 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !27
  %t45 = load i64, ptr %l16, !tbaa !24
  %t46 = mul i64 %t45, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t42, ptr %t44, i64 %t46, i1 false)
  %t47 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t47, ptr %l15, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t48 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t48, ptr %rv
  br label %ret
bb6:
  %t49 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t51 = extractvalue { i64, ptr } %t49, 1
  %t52 = extractvalue { i64, ptr } %t49, 0
  %t53 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d96, i32 0, i32 1) }, 1
  %t54 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d96, i32 0, i32 1) }, 0
  %t55 = add i64 %t52, %t54
  %t56 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t55)
  call void @olang_textcopy(ptr %t56, ptr %t51, i64 %t52)
  %t57 = getelementptr i8, ptr %t56, i64 %t52
  call void @olang_textcopy(ptr %t57, ptr %t53, i64 %t54)
  %t58 = insertvalue { i64, ptr } undef, i64 %t55, 0
  %t59 = insertvalue { i64, ptr } %t58, ptr %t56, 1
  %t61 = extractvalue { i64, ptr } %t59, 0
  %t62 = extractvalue { i64, ptr } %t59, 1
  %t63 = mul i64 %t61, 1
  %t64 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t63)
  call void @llvm.memcpy.p0.p0.i64(ptr %t64, ptr %t62, i64 %t63, i1 false)
  %t65 = insertvalue { i64, ptr } undef, i64 %t61, 0
  %t66 = insertvalue { i64, ptr } %t65, ptr %t64, 1
  %t71 = call i32 @std_2fos_2eWriteFile(ptr %s0, ptr %v2, { i64, ptr } %t66, { i64, ptr } %a2)
  store i32 %t71, ptr %l23
  %t72 = icmp ne i32 %t71, 0
  br i1 %t72, label %bb8, label %ok.73, !prof !99
ok.73:
  br label %bb7
bb7:
  br label %bb12
bb8:
  %t74 = load i32, ptr %l23, !tbaa !23
  %t75 = ashr i32 %t74, 16
  %t77 = icmp eq i32 %t75, 1
  store i1 %t77, ptr %l25, !tbaa !21
  %t78 = load i32, ptr %l23, !tbaa !23
  %t79 = ashr i32 %t78, 16
  %t81 = icmp eq i32 %t79, 1
  br i1 %t81, label %bb9, label %bb10
bb9:
  call void @__olang_errpay_pop()
  br label %bb10
bb10:
  br label %bb11
bb11:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d97, i32 0, i32 1) }, ptr %l28, !tbaa !27
  %t83 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t83, ptr %l29, !tbaa !27
  %t84 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t85 = extractvalue { i64, ptr } %t84, 0
  store i64 %t85, ptr %l30, !tbaa !24
  %t86 = load i64, ptr %l30, !tbaa !24
  %t87 = mul i64 %t86, 1
  %t88 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t87)
  %t89 = insertvalue { i64, ptr } undef, i64 %t86, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t88, 1
  store { i64, ptr } %t90, ptr %l31, !tbaa !27
  %t91 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !27
  %t93 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t94 = load ptr, ptr %t93, !tbaa !27
  %t95 = load i64, ptr %l30, !tbaa !24
  %t96 = mul i64 %t95, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t92, ptr %t94, i64 %t96, i1 false)
  %t97 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t97, ptr %l29, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t98 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t98, ptr %rv
  br label %ret
bb12:
  %t99 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t101 = call i1 @compiler_2ffetch_2esh(ptr %s0, ptr %s0, { i64, ptr } %t99, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x { i64, ptr }] }>, ptr @.d98, i32 0, i32 1) })
  store i1 %t101, ptr %l33
  br label %bb13
bb13:
  %t102 = load i1, ptr %l33, !tbaa !21
  br i1 %t102, label %bb14, label %bb15
bb14:
  %t103 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t105 = call i1 @compiler_2ffetch_2esh(ptr %s0, ptr %s0, { i64, ptr } %t103, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x { i64, ptr }] }>, ptr @.d99, i32 0, i32 1) })
  store i1 %t105, ptr %l36
  br label %bb16
bb15:
  store i1 false, ptr %l34, !tbaa !21
  br label %bb17
bb16:
  %t106 = load i1, ptr %l36, !tbaa !21
  store i1 %t106, ptr %l34, !tbaa !21
  br label %bb17
bb17:
  %t107 = load i1, ptr %l34, !tbaa !21
  br i1 %t107, label %bb18, label %bb19
bb18:
  %t108 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t110 = call i1 @compiler_2ffetch_2esh(ptr %s0, ptr %s0, { i64, ptr } %t108, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x { i64, ptr }] }>, ptr @.d100, i32 0, i32 1) })
  store i1 %t110, ptr %l39
  br label %bb20
bb19:
  store i1 false, ptr %l37, !tbaa !21
  br label %bb21
bb20:
  %t111 = load i1, ptr %l39, !tbaa !21
  store i1 %t111, ptr %l37, !tbaa !21
  br label %bb21
bb21:
  %t112 = load i1, ptr %l37, !tbaa !21
  br i1 %t112, label %bb22, label %bb23
bb22:
  %t115 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t117 = call { i64, ptr } @compiler_2ffetch_2ehead(ptr %s0, ptr %v3, { i64, ptr } %t115)
  store { i64, ptr } %t117, ptr %l43
  br label %bb24
bb23:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d101, i32 0, i32 1) }, ptr %l44, !tbaa !27
  %t118 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t118, ptr %l41, !tbaa !27
  br label %bb25
bb24:
  %t120 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t120, ptr %l41, !tbaa !27
  br label %bb25
bb25:
  %t121 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t122 = extractvalue { i64, ptr } %t121, 0
  store i64 %t122, ptr %l46, !tbaa !24
  %t123 = load i64, ptr %l46, !tbaa !24
  %t124 = mul i64 %t123, 1
  %t125 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t124)
  %t126 = insertvalue { i64, ptr } undef, i64 %t123, 0
  %t127 = insertvalue { i64, ptr } %t126, ptr %t125, 1
  store { i64, ptr } %t127, ptr %l47, !tbaa !27
  %t128 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t129 = load ptr, ptr %t128, !tbaa !27
  %t130 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !27
  %t132 = load i64, ptr %l46, !tbaa !24
  %t133 = mul i64 %t132, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t129, ptr %t131, i64 %t133, i1 false)
  %t134 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t134, ptr %l41, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t135 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t135, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2ffetch_2esh(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca %"std/os:Output"
  %l3 = alloca %"std/os:Output"
  %l5 = alloca { i64, ptr }
  %l7 = alloca %"std/os:Output"
  %l8 = alloca i32
  %l10 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d85, i32 0, i32 1) }, ptr %l5, !tbaa !27
  %t4 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t6 = call { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %v1, ptr %s0, ptr %v0, ptr %s0, { i64, ptr } %a1, { i64, ptr } %t4, i1 true, { i64, ptr } %a0)
  %t7 = extractvalue { i32, %"std/os:Output" } %t6, 1
  %t8 = extractvalue { i32, %"std/os:Output" } %t6, 0
  store i32 %t8, ptr %l8
  %t9 = icmp ne i32 %t8, 0
  br i1 %t9, label %bb2, label %ok.10, !prof !99
ok.10:
  store %"std/os:Output" %t7, ptr %l7
  br label %bb1
bb1:
  %t11 = load %"std/os:Output", ptr %l7
  store %"std/os:Output" %t11, ptr %l3
  br label %bb6
bb2:
  %t12 = load i32, ptr %l8, !tbaa !23
  %t13 = ashr i32 %t12, 16
  %t15 = icmp eq i32 %t13, 1
  store i1 %t15, ptr %l10, !tbaa !21
  %t16 = load i32, ptr %l8, !tbaa !23
  %t17 = ashr i32 %t16, 16
  %t19 = icmp eq i32 %t17, 1
  br i1 %t19, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb6:
  %t22 = load %"std/os:Output", ptr %l3
  store %"std/os:Output" %t22, ptr %l2
  %t23 = getelementptr %"std/os:Output", ptr %l2, i32 0, i32 0
  %t24 = load i32, ptr %t23, !tbaa !23
  %t26 = icmp eq i32 %t24, 0
  call void @__olang_scope_close(ptr %s0)
  store i1 %t26, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2ffetch_3aFetcher_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, i1 %a3, i1 %a4) #0 {
entry:
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i1
  %l9 = alloca i1
  %l10 = alloca i1
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca i64
  %l22 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l24 = alloca i64
  %l26 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l28 = alloca i64
  %l30 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l32 = alloca i64
  %l34 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l36 = alloca %"compiler/fetch:Fetcher"
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a0, ptr %l5, !tbaa !27
  store { i64, ptr } %a1, ptr %l6, !tbaa !27
  store { i64, ptr } %a2, ptr %l7, !tbaa !27
  store i1 %a3, ptr %l8, !tbaa !21
  store i1 %a4, ptr %l9, !tbaa !21
  store i1 false, ptr %l10, !tbaa !21
  %t11 = ptrtoint ptr %v3 to i64
  store i64 %t11, ptr %l20, !tbaa !24
  %t12 = load i1, ptr @olang_2esole_2ecompiler_2ffetch_3aFetcher_2e6
  br i1 %t12, label %bb1, label %bb2
bb1:
  %t14 = call ptr @__olang_region_make(ptr %v3)
  %t15 = ptrtoint ptr %t14 to i64
  store i64 %t15, ptr %l20, !tbaa !24
  br label %bb2
bb2:
  %t16 = load i64, ptr %l20
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t17, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t18, ptr %l22
  br label %bb3
bb3:
  %t19 = load i1, ptr @olang_2esole_2ecompiler_2ffetch_3aFetcher_2e6
  br i1 %t19, label %bb4, label %bb5
bb4:
  %t21 = load i64, ptr %l20
  %t22 = inttoptr i64 %t21 to ptr
  %t23 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l22, i32 0, i32 0
  %t24 = load { i64, ptr }, ptr %t23
  %t25 = extractvalue { i64, ptr } %t24, 1
  %t26 = call ptr @__olang_region_or(ptr %t25, ptr null)
  %t27 = icmp ne ptr %t26, null
  %t28 = select i1 %t27, ptr %t26, ptr null
  %t29 = icmp eq ptr %t28, %t22
  call void @__olang_region_settle(ptr %t22, i1 %t29)
  br label %bb5
bb5:
  %t30 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l22
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t30, ptr %l11
  %t31 = ptrtoint ptr %v3 to i64
  store i64 %t31, ptr %l24, !tbaa !24
  %t32 = load i1, ptr @olang_2esole_2ecompiler_2ffetch_3aFetcher_2e7
  br i1 %t32, label %bb6, label %bb7
bb6:
  %t34 = call ptr @__olang_region_make(ptr %v3)
  %t35 = ptrtoint ptr %t34 to i64
  store i64 %t35, ptr %l24, !tbaa !24
  br label %bb7
bb7:
  %t36 = load i64, ptr %l24
  %t37 = inttoptr i64 %t36 to ptr
  %t38 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t37, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t38, ptr %l26
  br label %bb8
bb8:
  %t39 = load i1, ptr @olang_2esole_2ecompiler_2ffetch_3aFetcher_2e7
  br i1 %t39, label %bb9, label %bb10
bb9:
  %t41 = load i64, ptr %l24
  %t42 = inttoptr i64 %t41 to ptr
  %t43 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l26, i32 0, i32 0
  %t44 = load { i64, ptr }, ptr %t43
  %t45 = extractvalue { i64, ptr } %t44, 1
  %t46 = call ptr @__olang_region_or(ptr %t45, ptr null)
  %t47 = icmp ne ptr %t46, null
  %t48 = select i1 %t47, ptr %t46, ptr null
  %t49 = icmp eq ptr %t48, %t42
  call void @__olang_region_settle(ptr %t42, i1 %t49)
  br label %bb10
bb10:
  %t50 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l26
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t50, ptr %l12
  %t51 = ptrtoint ptr %v3 to i64
  store i64 %t51, ptr %l28, !tbaa !24
  %t52 = load i1, ptr @olang_2esole_2ecompiler_2ffetch_3aFetcher_2e8
  br i1 %t52, label %bb11, label %bb12
bb11:
  %t54 = call ptr @__olang_region_make(ptr %v3)
  %t55 = ptrtoint ptr %t54 to i64
  store i64 %t55, ptr %l28, !tbaa !24
  br label %bb12
bb12:
  %t56 = load i64, ptr %l28
  %t57 = inttoptr i64 %t56 to ptr
  %t58 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t57, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t58, ptr %l30
  br label %bb13
bb13:
  %t59 = load i1, ptr @olang_2esole_2ecompiler_2ffetch_3aFetcher_2e8
  br i1 %t59, label %bb14, label %bb15
bb14:
  %t61 = load i64, ptr %l28
  %t62 = inttoptr i64 %t61 to ptr
  %t63 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l30, i32 0, i32 0
  %t64 = load { i64, ptr }, ptr %t63
  %t65 = extractvalue { i64, ptr } %t64, 1
  %t66 = call ptr @__olang_region_or(ptr %t65, ptr null)
  %t67 = icmp ne ptr %t66, null
  %t68 = select i1 %t67, ptr %t66, ptr null
  %t69 = icmp eq ptr %t68, %t62
  call void @__olang_region_settle(ptr %t62, i1 %t69)
  br label %bb15
bb15:
  %t70 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l30
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t70, ptr %l13
  %t71 = ptrtoint ptr %v3 to i64
  store i64 %t71, ptr %l32, !tbaa !24
  %t72 = load i1, ptr @olang_2esole_2ecompiler_2ffetch_3aFetcher_2e9
  br i1 %t72, label %bb16, label %bb17
bb16:
  %t74 = call ptr @__olang_region_make(ptr %v3)
  %t75 = ptrtoint ptr %t74 to i64
  store i64 %t75, ptr %l32, !tbaa !24
  br label %bb17
bb17:
  %t76 = load i64, ptr %l32
  %t77 = inttoptr i64 %t76 to ptr
  %t78 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t77, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t78, ptr %l34
  br label %bb18
bb18:
  %t79 = load i1, ptr @olang_2esole_2ecompiler_2ffetch_3aFetcher_2e9
  br i1 %t79, label %bb19, label %bb20
bb19:
  %t81 = load i64, ptr %l32
  %t82 = inttoptr i64 %t81 to ptr
  %t83 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l34, i32 0, i32 0
  %t84 = load { i64, ptr }, ptr %t83
  %t85 = extractvalue { i64, ptr } %t84, 1
  %t86 = call ptr @__olang_region_or(ptr %t85, ptr null)
  %t87 = icmp ne ptr %t86, null
  %t88 = select i1 %t87, ptr %t86, ptr null
  %t89 = icmp eq ptr %t88, %t82
  call void @__olang_region_settle(ptr %t82, i1 %t89)
  br label %bb20
bb20:
  %t90 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l34
  %t91 = getelementptr %"compiler/fetch:Fetcher", ptr %l36, i32 0, i32 0
  %t92 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t92, ptr %t91, !tbaa !27
  %t93 = getelementptr %"compiler/fetch:Fetcher", ptr %l36, i32 0, i32 1
  %t94 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t94, ptr %t93, !tbaa !27
  %t95 = getelementptr %"compiler/fetch:Fetcher", ptr %l36, i32 0, i32 2
  %t96 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t96, ptr %t95, !tbaa !27
  %t97 = getelementptr %"compiler/fetch:Fetcher", ptr %l36, i32 0, i32 3
  %t98 = load i1, ptr %l8, !tbaa !21
  store i1 %t98, ptr %t97, !tbaa !21
  %t99 = getelementptr %"compiler/fetch:Fetcher", ptr %l36, i32 0, i32 4
  %t100 = load i1, ptr %l9, !tbaa !21
  store i1 %t100, ptr %t99, !tbaa !21
  %t101 = getelementptr %"compiler/fetch:Fetcher", ptr %l36, i32 0, i32 5
  %t102 = load i1, ptr %l10, !tbaa !21
  store i1 %t102, ptr %t101, !tbaa !21
  %t103 = getelementptr %"compiler/fetch:Fetcher", ptr %l36, i32 0, i32 6
  %t104 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t104, ptr %t103
  %t105 = getelementptr %"compiler/fetch:Fetcher", ptr %l36, i32 0, i32 7
  %t106 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t106, ptr %t105
  %t107 = getelementptr %"compiler/fetch:Fetcher", ptr %l36, i32 0, i32 8
  %t108 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t108, ptr %t107
  %t109 = getelementptr %"compiler/fetch:Fetcher", ptr %l36, i32 0, i32 9
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t90, ptr %t109
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l36, i64 184, i1 false)
  br label %ret
ret:
  ret void
}

@.d0 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"OLANG_CACHE" }>, align 8
declare void @__olang_errpay_pop()
@.d1 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d2 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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
@.d3 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"HOME" }>, align 8
@.d4 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d5 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"/.cache/olang" }>, align 8
@.d6 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"OLANG_GIT_BASE" }>, align 8
@.d7 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d8 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d9 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"https://" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d10 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".." }>, align 8
@.d11 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"/example.com/me/" }>, align 8
@.d12 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"/lib.olang" }>, align 8
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@.d13 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d14 = private constant <{ i64, [12 x { i64, ptr }] }> <{ i64 0, [12 x { i64, ptr }] [{ i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d102, i32 0, i32 1) }, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d103, i32 0, i32 1) }, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d104, i32 0, i32 1) }, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d103, i32 0, i32 1) }, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d105, i32 0, i32 1) }, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d103, i32 0, i32 1) }, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d106, i32 0, i32 1) }, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d107, i32 0, i32 1) }, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d108, i32 0, i32 1) }, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d109, i32 0, i32 1) }, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d110, i32 0, i32 1) }, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d111, i32 0, i32 1) }] }>, align 8
@.d15 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare void @__olang_check_failed(ptr) cold noreturn
@.d16 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d17 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d18 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d19 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d20 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d21 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d22 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
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
@.d23 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c".fetch-" }>, align 8
@.d24 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"olang: fetching " }>, align 8
@.d25 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" into " }>, align 8
@.d26 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" at " }>, align 8
@.d27 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c", as olang.lock says" }>, align 8
@.d28 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@.d29 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"git" }>, align 8
@.d30 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"init" }>, align 8
@.d31 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-q" }>, align 8
@.d32 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"git" }>, align 8
@.d33 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-C" }>, align 8
@.d34 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"fetch" }>, align 8
@.d35 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-q" }>, align 8
@.d36 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"--depth" }>, align 8
@.d37 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"1" }>, align 8
@.d38 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"--" }>, align 8
@.d39 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"git" }>, align 8
@.d40 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-C" }>, align 8
@.d41 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"checkout" }>, align 8
@.d42 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-q" }>, align 8
@.d43 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"FETCH_HEAD" }>, align 8
@.d44 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"git" }>, align 8
@.d45 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"clone" }>, align 8
@.d46 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-q" }>, align 8
@.d47 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"--" }>, align 8
@.d48 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"git" }>, align 8
@.d49 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-C" }>, align 8
@.d50 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"checkout" }>, align 8
@.d51 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-q" }>, align 8
@.d52 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"olang: fetching " }>, align 8
@.d53 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" into " }>, align 8
@.d54 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"--branch=" }>, align 8
@.d55 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"--quiet" }>, align 8
@.d56 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d57 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"git" }>, align 8
@.d58 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"clone" }>, align 8
@.d59 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"--quiet" }>, align 8
@.d60 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"--depth" }>, align 8
@.d61 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"1" }>, align 8
@.d62 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"--" }>, align 8
@.d63 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d64 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d65 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d66 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"olang: updated " }>, align 8
@.d67 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" to " }>, align 8
@.d68 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"olang: updated " }>, align 8
@.d69 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" to " }>, align 8
@.d70 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" (was " }>, align 8
@.d71 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d72 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"olang: " }>, align 8
@.d73 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c" is already at " }>, align 8
@.d74 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"#" }>, align 8
@.d75 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d76 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d77 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d78 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d79 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d80 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d81 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
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
define internal i1 @olang_lambda_82(ptr %env, i64 %a0, i64 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca i1
  %rv = alloca i1
  %cp0 = getelementptr { ptr, ptr }, ptr %env, i32 0, i32 0
  %cv0 = load ptr, ptr %cp0, !tbaa !28
  store ptr %cv0, ptr %l2
  %vq0 = getelementptr { ptr, ptr }, ptr %env, i32 0, i32 1
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = getelementptr %"compiler/fetch:Fetcher", ptr %t1, i32 0, i32 6
  %t7 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %vc0, ptr %vc0, ptr %t3, i64 %a0)
  store { i64, ptr } %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l2, !tbaa !29
  %t10 = getelementptr %"compiler/fetch:Fetcher", ptr %t8, i32 0, i32 6
  %t14 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %vc0, ptr %vc0, ptr %t10, i64 %a1)
  store { i64, ptr } %t14, ptr %l10
  br label %bb2
bb2:
  %t15 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t16 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t17 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLess(ptr %vc0, ptr %vc0, { i64, ptr } %t15, { i64, ptr } %t16)
  store i1 %t17, ptr %l11
  br label %bb3
bb3:
  %t18 = load i1, ptr %l11, !tbaa !21
  store i1 %t18, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@.d83 = private constant <{ i64, [100 x i8] }> <{ i64 0, [100 x i8] c"# olang.lock - the commit each remote repository is built from (M23b). Delete a line to update that\0A" }>, align 8
@.d84 = private constant <{ i64, [77 x i8] }> <{ i64 0, [77 x i8] c"# repository, or build with -u to update every one the build reaches (M23c).\0A" }>, align 8
@.d85 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d86 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d87 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"git" }>, align 8
@.d88 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-C" }>, align 8
@.d89 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"rev-parse" }>, align 8
@.d90 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"HEAD" }>, align 8
@.d91 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d92 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d93 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d94 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"/example.com/me/" }>, align 8
@.d95 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d96 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"/lib.olang" }>, align 8
@.d97 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d98 = private constant <{ i64, [3 x { i64, ptr }] }> <{ i64 0, [3 x { i64, ptr }] [{ i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d102, i32 0, i32 1) }, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d112, i32 0, i32 1) }, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d108, i32 0, i32 1) }] }>, align 8
@.d99 = private constant <{ i64, [9 x { i64, ptr }] }> <{ i64 0, [9 x { i64, ptr }] [{ i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d102, i32 0, i32 1) }, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d103, i32 0, i32 1) }, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d104, i32 0, i32 1) }, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d103, i32 0, i32 1) }, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d105, i32 0, i32 1) }, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d103, i32 0, i32 1) }, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d106, i32 0, i32 1) }, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d113, i32 0, i32 1) }, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d114, i32 0, i32 1) }] }>, align 8
@.d100 = private constant <{ i64, [11 x { i64, ptr }] }> <{ i64 0, [11 x { i64, ptr }] [{ i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d102, i32 0, i32 1) }, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d103, i32 0, i32 1) }, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d104, i32 0, i32 1) }, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d103, i32 0, i32 1) }, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d105, i32 0, i32 1) }, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d103, i32 0, i32 1) }, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d106, i32 0, i32 1) }, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d107, i32 0, i32 1) }, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d108, i32 0, i32 1) }, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d110, i32 0, i32 1) }, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d115, i32 0, i32 1) }] }>, align 8
@.d101 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2ffetch_3aFetcher_2e6 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
@olang_2esole_2ecompiler_2ffetch_3aFetcher_2e7 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffetch_3aFetcher_2e8 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffetch_3aFetcher_2e9 = weak hidden constant i1 false
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
@.d102 = private unnamed_addr constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"git" }>, align 8
@.d103 = private unnamed_addr constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-c" }>, align 8
@.d104 = private unnamed_addr constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"user.name=t" }>, align 8
@.d105 = private unnamed_addr constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"user.email=t@t" }>, align 8
@.d106 = private unnamed_addr constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"commit.gpgsign=false" }>, align 8
@.d107 = private unnamed_addr constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"commit" }>, align 8
@.d108 = private unnamed_addr constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-q" }>, align 8
@.d109 = private unnamed_addr constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-a" }>, align 8
@.d110 = private unnamed_addr constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-m" }>, align 8
@.d111 = private unnamed_addr constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"y" }>, align 8
declare noalias ptr @__olang_scope_alloc_slow(ptr, i64, i64) noinline
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
@.d112 = private unnamed_addr constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"init" }>, align 8
@.d113 = private unnamed_addr constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"add" }>, align 8
@.d114 = private unnamed_addr constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d115 = private unnamed_addr constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"x" }>, align 8
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
declare ptr @__olang_scope_mine_slow(ptr) noinline
declare { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
declare i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %a0)
declare i32 @std_2fos_2eWriteFile(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v0, { i64, ptr } %a0, i8 %a1)
@olang_loc_9f3ee14a10c0b496_69afdf9d2434e8f2 = external constant [0 x i8]
@olang_loc_d9850676ba2c3cf3_f7e63cb27448ce6f = external constant [0 x i8]
declare i1 @std_2fos_2eIsDir(ptr %v0, { i64, ptr } %a0)
declare i32 @std_2fos_2eMkDirAll(ptr %v0, { i64, ptr } %a0)
declare { i32, { i64, ptr } } @std_2fos_2eMkTemp(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_45f2c25416d44418_72b8f662ae75c904 = external constant [0 x i8]
declare i32 @std_2fos_2eRemoveAll(ptr %v0, { i64, ptr } %a0)
declare i32 @std_2fos_2eRename(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_461a8d3078b45b75_287f37f9c7026b71 = external constant [0 x i8]
@olang_loc_64bbdb9c4083d73a_45ec4fce431b420e = external constant [0 x i8]
@olang_loc_978ca0e68f8e7a17_d15c8fffad158e0b = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %v0, ptr %v1, ptr %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_Haae4fbc3ba15583a49040d883d2248d1(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
@olang_loc_ba721b6722bc57b1_efdace1c8e747995 = external constant [0 x i8]
declare void @std_2fprelude_2farray_2eArray_3cI64_3e_2eSort_3cI64_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1c, ptr %a1e)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare i32 @std_2fio_2ePrintErrln(ptr %v0, { i64, ptr } %a0)
declare { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, i1 %a2, { i64, ptr } %a3)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLess(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)

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
