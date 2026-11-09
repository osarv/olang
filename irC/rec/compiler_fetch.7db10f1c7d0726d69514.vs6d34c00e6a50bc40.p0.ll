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
  %lp8 = alloca ptr
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
  %lp20 = alloca ptr
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
  %l163 = alloca i64
  %l165 = alloca { i64, ptr }
  %l166 = alloca { i64, ptr }
  %l167 = alloca i64
  %l178 = alloca { i64, ptr }
  %l179 = alloca i1
  %l180 = alloca i1
  %l184 = alloca { i64, ptr }
  %l185 = alloca i1
  %l186 = alloca i1
  %l188 = alloca { i64, ptr }
  %l189 = alloca i1
  %l193 = alloca i32
  %l195 = alloca i1
  %l200 = alloca { i64, ptr }
  %l201 = alloca i1
  %l204 = alloca { i64, ptr }
  %l205 = alloca i1
  %l207 = alloca { i64, ptr }
  %l210 = alloca i1
  %l213 = alloca i32
  %l215 = alloca i1
  %l220 = alloca i1
  %l224 = alloca i32
  %l226 = alloca i1
  %l230 = alloca i32
  %l232 = alloca i1
  %l237 = alloca i32
  %l239 = alloca i1
  %l243 = alloca ptr
  %l244 = alloca i64
  %l254 = alloca { i64, ptr }
  %l259 = alloca i32
  %l261 = alloca i1
  %l264 = alloca { i64, ptr }
  %l265 = alloca { i64, ptr }
  %l266 = alloca i64
  %l267 = alloca { i64, ptr }
  %l271 = alloca { i64, ptr }
  %l272 = alloca i1
  %l274 = alloca { i64, ptr }
  %l276 = alloca i64
  %l279 = alloca i1
  %l281 = alloca i32
  %l283 = alloca i1
  %l291 = alloca i1
  %l293 = alloca i32
  %l295 = alloca i1
  %l300 = alloca i32
  %l302 = alloca i1
  %l306 = alloca i32
  %l308 = alloca i1
  %l319 = alloca i1
  %l321 = alloca i1
  %l323 = alloca i1
  %l324 = alloca ptr
  %l325 = alloca i64
  %l327 = alloca { i64, ptr }
  %l328 = alloca i64
  %l336 = alloca i1
  %l339 = alloca i1
  %l341 = alloca ptr
  %l342 = alloca i64
  %l344 = alloca { i64, ptr }
  %l345 = alloca i64
  %l349 = alloca { i64, ptr }
  %l350 = alloca i64
  %l358 = alloca ptr
  %l359 = alloca i64
  %l361 = alloca { i64, ptr }
  %l362 = alloca i64
  %s0 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %s39 = alloca %olang.scope
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
  %t168 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t167)
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
  %t175 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 16, i64 8)
  store ptr %t175, ptr %lp8
  %t177 = load ptr, ptr %lp8
  store { i64, ptr } %t174, ptr %t177, !tbaa !27
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t180 = getelementptr %"compiler/fetch:Fetcher", ptr %t178, i32 0, i32 2
  %t181 = load { i64, ptr }, ptr %t180, !tbaa !27
  %t182 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t183 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t184 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t186 = extractvalue { i64, ptr } %t181, 1
  %t187 = extractvalue { i64, ptr } %t181, 0
  %t189 = extractvalue { i64, ptr } %t182, 1
  %t190 = extractvalue { i64, ptr } %t182, 0
  %t191 = add i64 %t187, %t190
  %t192 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t193 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  %t194 = add i64 %t191, %t193
  %t196 = extractvalue { i64, ptr } %t183, 1
  %t197 = extractvalue { i64, ptr } %t183, 0
  %t198 = add i64 %t194, %t197
  %t199 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t200 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  %t201 = add i64 %t198, %t200
  %t203 = extractvalue { i64, ptr } %t184, 1
  %t204 = extractvalue { i64, ptr } %t184, 0
  %t205 = add i64 %t201, %t204
  %t206 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t205)
  call void @olang_textcopy(ptr %t206, ptr %t186, i64 %t187)
  %t207 = getelementptr i8, ptr %t206, i64 %t187
  call void @olang_textcopy(ptr %t207, ptr %t189, i64 %t190)
  %t208 = getelementptr i8, ptr %t207, i64 %t190
  call void @olang_textcopy(ptr %t208, ptr %t192, i64 %t193)
  %t209 = getelementptr i8, ptr %t208, i64 %t193
  call void @olang_textcopy(ptr %t209, ptr %t196, i64 %t197)
  %t210 = getelementptr i8, ptr %t209, i64 %t197
  call void @olang_textcopy(ptr %t210, ptr %t199, i64 %t200)
  %t211 = getelementptr i8, ptr %t210, i64 %t200
  call void @olang_textcopy(ptr %t211, ptr %t203, i64 %t204)
  %t212 = insertvalue { i64, ptr } undef, i64 %t205, 0
  %t213 = insertvalue { i64, ptr } %t212, ptr %t206, 1
  store { i64, ptr } %t213, ptr %l9, !tbaa !27
  %t215 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t216 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t217 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t218 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t220 = extractvalue { i64, ptr } %t215, 1
  %t221 = extractvalue { i64, ptr } %t215, 0
  %t222 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t223 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t224 = add i64 %t221, %t223
  %t226 = extractvalue { i64, ptr } %t216, 1
  %t227 = extractvalue { i64, ptr } %t216, 0
  %t228 = add i64 %t224, %t227
  %t229 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t230 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t231 = add i64 %t228, %t230
  %t233 = extractvalue { i64, ptr } %t217, 1
  %t234 = extractvalue { i64, ptr } %t217, 0
  %t235 = add i64 %t231, %t234
  %t236 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t237 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t238 = add i64 %t235, %t237
  %t240 = extractvalue { i64, ptr } %t218, 1
  %t241 = extractvalue { i64, ptr } %t218, 0
  %t242 = add i64 %t238, %t241
  %t243 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t242)
  call void @olang_textcopy(ptr %t243, ptr %t220, i64 %t221)
  %t244 = getelementptr i8, ptr %t243, i64 %t221
  call void @olang_textcopy(ptr %t244, ptr %t222, i64 %t223)
  %t245 = getelementptr i8, ptr %t244, i64 %t223
  call void @olang_textcopy(ptr %t245, ptr %t226, i64 %t227)
  %t246 = getelementptr i8, ptr %t245, i64 %t227
  call void @olang_textcopy(ptr %t246, ptr %t229, i64 %t230)
  %t247 = getelementptr i8, ptr %t246, i64 %t230
  call void @olang_textcopy(ptr %t247, ptr %t233, i64 %t234)
  %t248 = getelementptr i8, ptr %t247, i64 %t234
  call void @olang_textcopy(ptr %t248, ptr %t236, i64 %t237)
  %t249 = getelementptr i8, ptr %t248, i64 %t237
  call void @olang_textcopy(ptr %t249, ptr %t240, i64 %t241)
  %t250 = insertvalue { i64, ptr } undef, i64 %t242, 0
  %t251 = insertvalue { i64, ptr } %t250, ptr %t243, 1
  store { i64, ptr } %t251, ptr %l10, !tbaa !27
  store i1 true, ptr %l11, !tbaa !21
  %t253 = load ptr, ptr %l0, !tbaa !29
  %t254 = load ptr, ptr %lp8
  %t255 = load { i64, ptr }, ptr %t254, !tbaa !27
  %t258 = call { i32, { i64, ptr } } @compiler_2ffetch_2ecompiler_2ffetch_3aFetcher_2eLocked(ptr %v0, ptr %v0, ptr %s0, ptr %t253, { i64, ptr } %t255)
  %t259 = extractvalue { i32, { i64, ptr } } %t258, 1
  %t260 = extractvalue { i32, { i64, ptr } } %t258, 0
  store i32 %t260, ptr %l105
  %t261 = icmp ne i32 %t260, 0
  br i1 %t261, label %bb46, label %ok.262, !prof !99
ok.262:
  store { i64, ptr } %t259, ptr %l104
  br label %bb45
bb45:
  %t263 = load { i64, ptr }, ptr %l104, !tbaa !27
  store { i64, ptr } %t263, ptr %l101, !tbaa !27
  br label %bb48
bb46:
  br label %bb47
bb47:
  store i1 false, ptr %l11, !tbaa !21
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d19, i32 0, i32 1) }, ptr %l101, !tbaa !27
  br label %bb48
bb48:
  %t264 = load { i64, ptr }, ptr %l101, !tbaa !27
  %t265 = extractvalue { i64, ptr } %t264, 1
  %t266 = extractvalue { i64, ptr } %t264, 0
  %t267 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t266)
  call void @olang_textcopy(ptr %t267, ptr %t265, i64 %t266)
  %t268 = insertvalue { i64, ptr } undef, i64 %t266, 0
  %t269 = insertvalue { i64, ptr } %t268, ptr %t267, 1
  store { i64, ptr } %t269, ptr %l12, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d20, i32 0, i32 1) }, ptr %l107, !tbaa !27
  %t271 = load { i64, ptr }, ptr %l107, !tbaa !27
  store { i64, ptr } %t271, ptr %l108, !tbaa !27
  %t272 = load { i64, ptr }, ptr %l108, !tbaa !27
  %t273 = extractvalue { i64, ptr } %t272, 0
  store i64 %t273, ptr %l109, !tbaa !24
  %t274 = load i64, ptr %l109, !tbaa !24
  %t275 = mul i64 %t274, 1
  %t276 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t275)
  %t277 = insertvalue { i64, ptr } undef, i64 %t274, 0
  %t278 = insertvalue { i64, ptr } %t277, ptr %t276, 1
  store { i64, ptr } %t278, ptr %l110, !tbaa !27
  %t279 = getelementptr { i64, ptr }, ptr %l110, i32 0, i32 1
  %t280 = load ptr, ptr %t279, !tbaa !27
  %t281 = getelementptr { i64, ptr }, ptr %l108, i32 0, i32 1
  %t282 = load ptr, ptr %t281, !tbaa !27
  %t283 = load i64, ptr %l109, !tbaa !24
  %t284 = mul i64 %t283, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t280, ptr %t282, i64 %t284, i1 false)
  %t285 = load { i64, ptr }, ptr %l110, !tbaa !27
  store { i64, ptr } %t285, ptr %l13, !tbaa !27
  store i1 false, ptr %l14, !tbaa !21
  %t286 = load i1, ptr %l11, !tbaa !21
  br i1 %t286, label %bb49, label %bb50
bb49:
  %t288 = load ptr, ptr %l0, !tbaa !29
  %t290 = getelementptr %"compiler/fetch:Fetcher", ptr %t288, i32 0, i32 3
  %t291 = load i1, ptr %t290, !tbaa !21
  store i1 %t291, ptr %l112, !tbaa !21
  br label %bb51
bb50:
  store i1 false, ptr %l112, !tbaa !21
  br label %bb51
bb51:
  %t293 = load i1, ptr %l112, !tbaa !21
  br i1 %t293, label %bb52, label %bb53
bb52:
  %t294 = load ptr, ptr %l0, !tbaa !29
  %t295 = load ptr, ptr %lp8
  %t296 = load { i64, ptr }, ptr %t295, !tbaa !27
  %t299 = call i1 @compiler_2ffetch_2ecompiler_2ffetch_3aFetcher_2eupdatedNow(ptr %v0, ptr %v0, ptr %t294, { i64, ptr } %t296, i1 false)
  store i1 %t299, ptr %l118
  br label %bb54
bb53:
  store i1 false, ptr %l115, !tbaa !21
  br label %bb55
bb54:
  %t300 = load i1, ptr %l118, !tbaa !21
  %t301 = xor i1 %t300, true
  store i1 %t301, ptr %l115, !tbaa !21
  br label %bb55
bb55:
  %t303 = load i1, ptr %l115, !tbaa !21
  br i1 %t303, label %bb56, label %bb57
bb56:
  %t304 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t306 = call i1 @compiler_2ffetch_2eIsCommit(ptr %s0, { i64, ptr } %t304)
  store i1 %t306, ptr %l121
  br label %bb58
bb57:
  br label %bb65
bb58:
  %t307 = load i1, ptr %l121, !tbaa !21
  br i1 %t307, label %bb59, label %bb60
bb59:
  %t308 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t310 = extractvalue { i64, ptr } %t308, 1
  %t311 = extractvalue { i64, ptr } %t308, 0
  %t312 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t311)
  call void @olang_textcopy(ptr %t312, ptr %t310, i64 %t311)
  %t313 = insertvalue { i64, ptr } undef, i64 %t311, 0
  %t314 = insertvalue { i64, ptr } %t313, ptr %t312, 1
  store { i64, ptr } %t314, ptr %l122, !tbaa !27
  br label %bb61
bb60:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d21, i32 0, i32 1) }, ptr %l125, !tbaa !27
  %t316 = load { i64, ptr }, ptr %l125, !tbaa !27
  store { i64, ptr } %t316, ptr %l122, !tbaa !27
  br label %bb61
bb61:
  %t318 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t319 = extractvalue { i64, ptr } %t318, 0
  %t320 = load { i64, ptr }, ptr %l122, !tbaa !27
  %t321 = extractvalue { i64, ptr } %t320, 0
  store i64 %t321, ptr %l128, !tbaa !24
  %t323 = load i64, ptr %l128, !tbaa !24
  %t324 = icmp eq i64 %t319, %t323
  br i1 %t324, label %bb62, label %bb63
bb62:
  %t326 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t327 = load ptr, ptr %t326, !tbaa !27
  %t328 = getelementptr { i64, ptr }, ptr %l122, i32 0, i32 1
  %t329 = load ptr, ptr %t328, !tbaa !27
  %t330 = load i64, ptr %l128, !tbaa !24
  %t331 = mul i64 %t330, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t327, ptr %t329, i64 %t331, i1 false)
  br label %bb64
bb63:
  %t332 = load { i64, ptr }, ptr %l122, !tbaa !27
  %t333 = extractvalue { i64, ptr } %t332, 0
  store i64 %t333, ptr %l130, !tbaa !24
  %t334 = load i64, ptr %l130, !tbaa !24
  %t335 = mul i64 %t334, 1
  %t336 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t335)
  %t337 = insertvalue { i64, ptr } undef, i64 %t334, 0
  %t338 = insertvalue { i64, ptr } %t337, ptr %t336, 1
  store { i64, ptr } %t338, ptr %l131, !tbaa !27
  %t339 = getelementptr { i64, ptr }, ptr %l131, i32 0, i32 1
  %t340 = load ptr, ptr %t339, !tbaa !27
  %t341 = getelementptr { i64, ptr }, ptr %l122, i32 0, i32 1
  %t342 = load ptr, ptr %t341, !tbaa !27
  %t343 = load i64, ptr %l130, !tbaa !24
  %t344 = mul i64 %t343, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t340, ptr %t342, i64 %t344, i1 false)
  %t345 = load { i64, ptr }, ptr %l131, !tbaa !27
  store { i64, ptr } %t345, ptr %l13, !tbaa !27
  br label %bb64
bb64:
  store i1 true, ptr %l14, !tbaa !21
  store i1 false, ptr %l11, !tbaa !21
  br label %bb65
bb65:
  %t346 = load i1, ptr %l11, !tbaa !21
  br i1 %t346, label %bb66, label %bb67
bb66:
  %t348 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t350 = call i1 @compiler_2ffetch_2eIsCommit(ptr %s0, { i64, ptr } %t348)
  store i1 %t350, ptr %l135
  br label %bb68
bb67:
  store i1 false, ptr %l133, !tbaa !21
  br label %bb69
bb68:
  %t351 = load i1, ptr %l135, !tbaa !21
  %t352 = xor i1 %t351, true
  store i1 %t352, ptr %l133, !tbaa !21
  br label %bb69
bb69:
  %t354 = load i1, ptr %l133, !tbaa !21
  br i1 %t354, label %bb70, label %bb71
bb70:
  call void @__olang_scope_close(ptr %s0)
  %t356 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65537, 0
  store { i32, { i64, ptr } } %t356, ptr %rv
  br label %ret
bb71:
  br label %bb72
bb72:
  %t357 = load i1, ptr %l11, !tbaa !21
  br i1 %t357, label %bb73, label %bb74
bb73:
  %t359 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t360 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t362 = extractvalue { i64, ptr } %t359, 1
  %t363 = extractvalue { i64, ptr } %t359, 0
  %t364 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t365 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  %t366 = add i64 %t363, %t365
  %t368 = extractvalue { i64, ptr } %t360, 1
  %t369 = extractvalue { i64, ptr } %t360, 0
  %t370 = add i64 %t366, %t369
  %t371 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t370)
  call void @olang_textcopy(ptr %t371, ptr %t362, i64 %t363)
  %t372 = getelementptr i8, ptr %t371, i64 %t363
  call void @olang_textcopy(ptr %t372, ptr %t364, i64 %t365)
  %t373 = getelementptr i8, ptr %t372, i64 %t365
  call void @olang_textcopy(ptr %t373, ptr %t368, i64 %t369)
  %t374 = insertvalue { i64, ptr } undef, i64 %t370, 0
  %t375 = insertvalue { i64, ptr } %t374, ptr %t371, 1
  %t376 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 16, i64 8)
  store ptr %t376, ptr %lp15
  %t378 = load ptr, ptr %lp15
  store { i64, ptr } %t375, ptr %t378, !tbaa !27
  %t379 = load ptr, ptr %lp15
  %t380 = load { i64, ptr }, ptr %t379, !tbaa !27
  %t382 = call i1 @std_2fos_2eIsDir(ptr %v4, { i64, ptr } %t380)
  store i1 %t382, ptr %l143
  br label %bb75
bb74:
  br label %bb79
bb75:
  %t383 = load i1, ptr %l143, !tbaa !21
  br i1 %t383, label %bb76, label %bb77
bb76:
  %t384 = load ptr, ptr %lp15
  %t385 = load { i64, ptr }, ptr %t384, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t387 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t385, 1
  store { i32, { i64, ptr } } %t387, ptr %rv
  br label %ret
bb77:
  br label %bb78
bb78:
  br label %bb79
bb79:
  %t388 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t390 = call i32 @std_2fos_2eMkDirAll(ptr %s0, { i64, ptr } %t388)
  store i32 %t390, ptr %l146
  %t391 = icmp ne i32 %t390, 0
  br i1 %t391, label %bb81, label %ok.392, !prof !99
ok.392:
  br label %bb80
bb80:
  br label %bb85
bb81:
  %t393 = load i32, ptr %l146, !tbaa !23
  %t394 = ashr i32 %t393, 16
  %t396 = icmp eq i32 %t394, 1
  store i1 %t396, ptr %l148, !tbaa !21
  %t397 = load i32, ptr %l146, !tbaa !23
  %t398 = ashr i32 %t397, 16
  %t400 = icmp eq i32 %t398, 1
  br i1 %t400, label %bb82, label %bb83
bb82:
  call void @__olang_errpay_pop()
  br label %bb83
bb83:
  br label %bb84
bb84:
  call void @__olang_scope_close(ptr %s0)
  %t403 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65538, 0
  store { i32, { i64, ptr } } %t403, ptr %rv
  br label %ret
bb85:
  %t404 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t406 = call { i32, { i64, ptr } } @std_2fos_2eMkTemp(ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t404, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d23, i32 0, i32 1) })
  %t407 = extractvalue { i32, { i64, ptr } } %t406, 1
  %t408 = extractvalue { i32, { i64, ptr } } %t406, 0
  store i32 %t408, ptr %l155
  %t409 = icmp ne i32 %t408, 0
  br i1 %t409, label %bb87, label %ok.410, !prof !99
ok.410:
  store { i64, ptr } %t407, ptr %l154
  br label %bb86
bb86:
  %t411 = load { i64, ptr }, ptr %l154, !tbaa !27
  store { i64, ptr } %t411, ptr %l152, !tbaa !27
  br label %bb91
bb87:
  %t412 = load i32, ptr %l155, !tbaa !23
  %t413 = ashr i32 %t412, 16
  %t415 = icmp eq i32 %t413, 1
  store i1 %t415, ptr %l157, !tbaa !21
  %t416 = load i32, ptr %l155, !tbaa !23
  %t417 = ashr i32 %t416, 16
  %t419 = icmp eq i32 %t417, 1
  br i1 %t419, label %bb88, label %bb89
bb88:
  call void @__olang_errpay_pop()
  br label %bb89
bb89:
  br label %bb90
bb90:
  call void @__olang_scope_close(ptr %s0)
  %t422 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65538, 0
  store { i32, { i64, ptr } } %t422, ptr %rv
  br label %ret
bb91:
  %t423 = load { i64, ptr }, ptr %l152, !tbaa !27
  store { i64, ptr } %t423, ptr %l16, !tbaa !27
  %t424 = load i1, ptr %l11, !tbaa !21
  br i1 %t424, label %bb92, label %bb93
bb92:
  store %olang.scope zeroinitializer, ptr %s15
  %t426 = load ptr, ptr %l0, !tbaa !29
  store ptr %t426, ptr %l162, !tbaa !29
  %t427 = ptrtoint ptr %v0 to i64
  store i64 %t427, ptr %l163, !tbaa !24
  %t428 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t428, label %bb94, label %bb95
bb93:
  br label %bb159
bb94:
  %t430 = call ptr @__olang_region_make(ptr %v0)
  %t431 = ptrtoint ptr %t430 to i64
  store i64 %t431, ptr %l163, !tbaa !24
  br label %bb95
bb95:
  %t432 = load ptr, ptr %lp8
  %t433 = load { i64, ptr }, ptr %t432, !tbaa !27
  store { i64, ptr } %t433, ptr %l165, !tbaa !27
  %t434 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t434, ptr %l166, !tbaa !27
  %t435 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t436 = extractvalue { i64, ptr } %t435, 0
  store i64 %t436, ptr %l167, !tbaa !24
  %t437 = icmp sge i64 0, 0
  br i1 %t437, label %bb96, label %bb97
bb96:
  %t439 = icmp sle i64 0, 12
  br i1 %t439, label %bb98, label %bb99
bb97:
  call void @__olang_check_failed(ptr @olang_loc_45f2c25416d44418_72b8f662ae75c904)
  unreachable
bb98:
  %t441 = load i64, ptr %l167, !tbaa !24
  %t442 = icmp sle i64 12, %t441
  br i1 %t442, label %bb100, label %bb101
bb99:
  call void @__olang_check_failed(ptr @olang_loc_45f2c25416d44418_72b8f662ae75c904)
  unreachable
bb100:
  %t444 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t445 = load ptr, ptr %t444, !tbaa !27
  %t446 = getelementptr i8, ptr %t445, i64 0
  %t447 = sub i64 12, 0
  %t448 = insertvalue { i64, ptr } undef, i64 %t447, 0
  %t449 = insertvalue { i64, ptr } %t448, ptr %t446, 1
  %t450 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d24, i32 0, i32 1) }, 1
  %t451 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d24, i32 0, i32 1) }, 0
  %t452 = load { i64, ptr }, ptr %l165, !tbaa !27
  %t453 = extractvalue { i64, ptr } %t452, 1
  %t454 = extractvalue { i64, ptr } %t452, 0
  %t455 = add i64 %t451, %t454
  %t456 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t457 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d25, i32 0, i32 1) }, 0
  %t458 = add i64 %t455, %t457
  %t459 = load { i64, ptr }, ptr %l166, !tbaa !27
  %t460 = extractvalue { i64, ptr } %t459, 1
  %t461 = extractvalue { i64, ptr } %t459, 0
  %t462 = add i64 %t458, %t461
  %t463 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t464 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  %t465 = add i64 %t462, %t464
  %t467 = extractvalue { i64, ptr } %t449, 1
  %t468 = extractvalue { i64, ptr } %t449, 0
  %t469 = add i64 %t465, %t468
  %t470 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t471 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  %t472 = add i64 %t469, %t471
  %t473 = load i64, ptr %l163
  %t474 = inttoptr i64 %t473 to ptr
  %t475 = call ptr @__olang_scope_alloc(ptr %t474, i64 %t472)
  call void @olang_textcopy(ptr %t475, ptr %t450, i64 %t451)
  %t476 = getelementptr i8, ptr %t475, i64 %t451
  call void @olang_textcopy(ptr %t476, ptr %t453, i64 %t454)
  %t477 = getelementptr i8, ptr %t476, i64 %t454
  call void @olang_textcopy(ptr %t477, ptr %t456, i64 %t457)
  %t478 = getelementptr i8, ptr %t477, i64 %t457
  call void @olang_textcopy(ptr %t478, ptr %t460, i64 %t461)
  %t479 = getelementptr i8, ptr %t478, i64 %t461
  call void @olang_textcopy(ptr %t479, ptr %t463, i64 %t464)
  %t480 = getelementptr i8, ptr %t479, i64 %t464
  call void @olang_textcopy(ptr %t480, ptr %t467, i64 %t468)
  %t481 = getelementptr i8, ptr %t480, i64 %t468
  call void @olang_textcopy(ptr %t481, ptr %t470, i64 %t471)
  %t482 = insertvalue { i64, ptr } undef, i64 %t472, 0
  %t483 = insertvalue { i64, ptr } %t482, ptr %t475, 1
  %t485 = load i64, ptr %l163
  %t486 = inttoptr i64 %t485 to ptr
  %t487 = extractvalue { i64, ptr } %t483, 0
  %t488 = extractvalue { i64, ptr } %t483, 1
  %t489 = mul i64 %t487, 1
  %t490 = call ptr @__olang_scope_alloc(ptr %t486, i64 %t489)
  call void @llvm.memcpy.p0.p0.i64(ptr %t490, ptr %t488, i64 %t489, i1 false)
  %t491 = insertvalue { i64, ptr } undef, i64 %t487, 0
  %t492 = insertvalue { i64, ptr } %t491, ptr %t490, 1
  %t493 = load ptr, ptr %l162, !tbaa !29
  call void @compiler_2ffetch_2ecompiler_2ffetch_3aFetcher_2esay(ptr %v0, ptr %v0, ptr %t493, { i64, ptr } %t492)
  br label %bb102
bb101:
  call void @__olang_check_failed(ptr @olang_loc_45f2c25416d44418_72b8f662ae75c904)
  unreachable
bb102:
  %t495 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t496 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t498 = extractvalue { i64, ptr } %t495, 1
  %t499 = extractvalue { i64, ptr } %t495, 0
  %t500 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t501 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  %t502 = add i64 %t499, %t501
  %t504 = extractvalue { i64, ptr } %t496, 1
  %t505 = extractvalue { i64, ptr } %t496, 0
  %t506 = add i64 %t502, %t505
  %t507 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t506)
  call void @olang_textcopy(ptr %t507, ptr %t498, i64 %t499)
  %t508 = getelementptr i8, ptr %t507, i64 %t499
  call void @olang_textcopy(ptr %t508, ptr %t500, i64 %t501)
  %t509 = getelementptr i8, ptr %t508, i64 %t501
  call void @olang_textcopy(ptr %t509, ptr %t504, i64 %t505)
  %t510 = insertvalue { i64, ptr } undef, i64 %t506, 0
  %t511 = insertvalue { i64, ptr } %t510, ptr %t507, 1
  %t512 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 16, i64 8)
  store ptr %t512, ptr %lp17
  %t514 = load ptr, ptr %lp17
  store { i64, ptr } %t511, ptr %t514, !tbaa !27
  %t515 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t516 = mul i64 4, 16
  %t517 = call ptr @__olang_scope_alloc_zeroed(ptr %s15, i64 %t516)
  %t518 = insertvalue { i64, ptr } undef, i64 4, 0
  %t519 = insertvalue { i64, ptr } %t518, ptr %t517, 1
  store { i64, ptr } %t519, ptr %l178, !tbaa !27
  %t520 = getelementptr { i64, ptr }, ptr %l178, i32 0, i32 1
  %t521 = load ptr, ptr %t520, !tbaa !27
  %t522 = getelementptr { i64, ptr }, ptr %t521, i64 0
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d29, i32 0, i32 1) }, ptr %t522, !tbaa !37
  %t523 = getelementptr { i64, ptr }, ptr %l178, i32 0, i32 1
  %t524 = load ptr, ptr %t523, !tbaa !27
  %t525 = getelementptr { i64, ptr }, ptr %t524, i64 1
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d30, i32 0, i32 1) }, ptr %t525, !tbaa !37
  %t526 = getelementptr { i64, ptr }, ptr %l178, i32 0, i32 1
  %t527 = load ptr, ptr %t526, !tbaa !27
  %t528 = getelementptr { i64, ptr }, ptr %t527, i64 2
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d31, i32 0, i32 1) }, ptr %t528, !tbaa !37
  %t530 = getelementptr { i64, ptr }, ptr %l178, i32 0, i32 1
  %t531 = load ptr, ptr %t530, !tbaa !27
  %t532 = getelementptr { i64, ptr }, ptr %t531, i64 3
  store { i64, ptr } %t515, ptr %t532, !tbaa !37
  %t533 = load { i64, ptr }, ptr %l178, !tbaa !27
  %t534 = call i1 @compiler_2ffetch_2egit(ptr %s15, { i64, ptr } %t533)
  store i1 %t534, ptr %l179
  br label %bb103
bb103:
  %t535 = load i1, ptr %l179, !tbaa !21
  br i1 %t535, label %bb104, label %bb105
bb104:
  %t536 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t537 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t538 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t539 = mul i64 10, 16
  %t540 = call ptr @__olang_scope_alloc_zeroed(ptr %s15, i64 %t539)
  %t541 = insertvalue { i64, ptr } undef, i64 10, 0
  %t542 = insertvalue { i64, ptr } %t541, ptr %t540, 1
  store { i64, ptr } %t542, ptr %l184, !tbaa !27
  %t543 = getelementptr { i64, ptr }, ptr %l184, i32 0, i32 1
  %t544 = load ptr, ptr %t543, !tbaa !27
  %t545 = getelementptr { i64, ptr }, ptr %t544, i64 0
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d32, i32 0, i32 1) }, ptr %t545, !tbaa !37
  %t546 = getelementptr { i64, ptr }, ptr %l184, i32 0, i32 1
  %t547 = load ptr, ptr %t546, !tbaa !27
  %t548 = getelementptr { i64, ptr }, ptr %t547, i64 1
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d33, i32 0, i32 1) }, ptr %t548, !tbaa !37
  %t550 = getelementptr { i64, ptr }, ptr %l184, i32 0, i32 1
  %t551 = load ptr, ptr %t550, !tbaa !27
  %t552 = getelementptr { i64, ptr }, ptr %t551, i64 2
  store { i64, ptr } %t536, ptr %t552, !tbaa !37
  %t553 = getelementptr { i64, ptr }, ptr %l184, i32 0, i32 1
  %t554 = load ptr, ptr %t553, !tbaa !27
  %t555 = getelementptr { i64, ptr }, ptr %t554, i64 3
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d34, i32 0, i32 1) }, ptr %t555, !tbaa !37
  %t556 = getelementptr { i64, ptr }, ptr %l184, i32 0, i32 1
  %t557 = load ptr, ptr %t556, !tbaa !27
  %t558 = getelementptr { i64, ptr }, ptr %t557, i64 4
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d35, i32 0, i32 1) }, ptr %t558, !tbaa !37
  %t559 = getelementptr { i64, ptr }, ptr %l184, i32 0, i32 1
  %t560 = load ptr, ptr %t559, !tbaa !27
  %t561 = getelementptr { i64, ptr }, ptr %t560, i64 5
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d36, i32 0, i32 1) }, ptr %t561, !tbaa !37
  %t562 = getelementptr { i64, ptr }, ptr %l184, i32 0, i32 1
  %t563 = load ptr, ptr %t562, !tbaa !27
  %t564 = getelementptr { i64, ptr }, ptr %t563, i64 6
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d37, i32 0, i32 1) }, ptr %t564, !tbaa !37
  %t565 = getelementptr { i64, ptr }, ptr %l184, i32 0, i32 1
  %t566 = load ptr, ptr %t565, !tbaa !27
  %t567 = getelementptr { i64, ptr }, ptr %t566, i64 7
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d38, i32 0, i32 1) }, ptr %t567, !tbaa !37
  %t569 = getelementptr { i64, ptr }, ptr %l184, i32 0, i32 1
  %t570 = load ptr, ptr %t569, !tbaa !27
  %t571 = getelementptr { i64, ptr }, ptr %t570, i64 8
  store { i64, ptr } %t537, ptr %t571, !tbaa !37
  %t573 = getelementptr { i64, ptr }, ptr %l184, i32 0, i32 1
  %t574 = load ptr, ptr %t573, !tbaa !27
  %t575 = getelementptr { i64, ptr }, ptr %t574, i64 9
  store { i64, ptr } %t538, ptr %t575, !tbaa !37
  %t576 = load { i64, ptr }, ptr %l184, !tbaa !27
  %t577 = call i1 @compiler_2ffetch_2egit(ptr %s15, { i64, ptr } %t576)
  store i1 %t577, ptr %l185
  br label %bb106
bb105:
  store i1 false, ptr %l180, !tbaa !21
  br label %bb107
bb106:
  %t578 = load i1, ptr %l185, !tbaa !21
  store i1 %t578, ptr %l180, !tbaa !21
  br label %bb107
bb107:
  %t579 = load i1, ptr %l180, !tbaa !21
  br i1 %t579, label %bb108, label %bb109
bb108:
  %t580 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t581 = mul i64 6, 16
  %t582 = call ptr @__olang_scope_alloc_zeroed(ptr %s15, i64 %t581)
  %t583 = insertvalue { i64, ptr } undef, i64 6, 0
  %t584 = insertvalue { i64, ptr } %t583, ptr %t582, 1
  store { i64, ptr } %t584, ptr %l188, !tbaa !27
  %t585 = getelementptr { i64, ptr }, ptr %l188, i32 0, i32 1
  %t586 = load ptr, ptr %t585, !tbaa !27
  %t587 = getelementptr { i64, ptr }, ptr %t586, i64 0
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d39, i32 0, i32 1) }, ptr %t587, !tbaa !37
  %t588 = getelementptr { i64, ptr }, ptr %l188, i32 0, i32 1
  %t589 = load ptr, ptr %t588, !tbaa !27
  %t590 = getelementptr { i64, ptr }, ptr %t589, i64 1
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d40, i32 0, i32 1) }, ptr %t590, !tbaa !37
  %t592 = getelementptr { i64, ptr }, ptr %l188, i32 0, i32 1
  %t593 = load ptr, ptr %t592, !tbaa !27
  %t594 = getelementptr { i64, ptr }, ptr %t593, i64 2
  store { i64, ptr } %t580, ptr %t594, !tbaa !37
  %t595 = getelementptr { i64, ptr }, ptr %l188, i32 0, i32 1
  %t596 = load ptr, ptr %t595, !tbaa !27
  %t597 = getelementptr { i64, ptr }, ptr %t596, i64 3
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d41, i32 0, i32 1) }, ptr %t597, !tbaa !37
  %t598 = getelementptr { i64, ptr }, ptr %l188, i32 0, i32 1
  %t599 = load ptr, ptr %t598, !tbaa !27
  %t600 = getelementptr { i64, ptr }, ptr %t599, i64 4
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d42, i32 0, i32 1) }, ptr %t600, !tbaa !37
  %t601 = getelementptr { i64, ptr }, ptr %l188, i32 0, i32 1
  %t602 = load ptr, ptr %t601, !tbaa !27
  %t603 = getelementptr { i64, ptr }, ptr %t602, i64 5
  store { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d43, i32 0, i32 1) }, ptr %t603, !tbaa !37
  %t604 = load { i64, ptr }, ptr %l188, !tbaa !27
  %t605 = call i1 @compiler_2ffetch_2egit(ptr %s15, { i64, ptr } %t604)
  store i1 %t605, ptr %l189
  br label %bb110
bb109:
  store i1 false, ptr %l186, !tbaa !21
  br label %bb111
bb110:
  %t606 = load i1, ptr %l189, !tbaa !21
  store i1 %t606, ptr %l186, !tbaa !21
  br label %bb111
bb111:
  %t607 = load i1, ptr %l186, !tbaa !21
  %t610 = xor i1 %t607, true
  br i1 %t610, label %bb112, label %bb113
bb112:
  store %olang.scope zeroinitializer, ptr %s18
  %t612 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t614 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t612)
  store i32 %t614, ptr %l193
  %t615 = icmp ne i32 %t614, 0
  br i1 %t615, label %bb115, label %ok.616, !prof !99
ok.616:
  br label %bb114
bb113:
  br label %bb125
bb114:
  br label %bb119
bb115:
  %t617 = load i32, ptr %l193, !tbaa !23
  %t618 = ashr i32 %t617, 16
  %t620 = icmp eq i32 %t618, 1
  store i1 %t620, ptr %l195, !tbaa !21
  %t621 = load i32, ptr %l193, !tbaa !23
  %t622 = ashr i32 %t621, 16
  %t624 = icmp eq i32 %t622, 1
  br i1 %t624, label %bb116, label %bb117
bb116:
  call void @__olang_errpay_pop()
  br label %bb117
bb117:
  br label %bb118
bb118:
  br label %bb119
bb119:
  %t626 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t627 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t628 = mul i64 6, 16
  %t629 = call ptr @__olang_scope_alloc_zeroed(ptr %s18, i64 %t628)
  %t630 = insertvalue { i64, ptr } undef, i64 6, 0
  %t631 = insertvalue { i64, ptr } %t630, ptr %t629, 1
  store { i64, ptr } %t631, ptr %l200, !tbaa !27
  %t632 = getelementptr { i64, ptr }, ptr %l200, i32 0, i32 1
  %t633 = load ptr, ptr %t632, !tbaa !27
  %t634 = getelementptr { i64, ptr }, ptr %t633, i64 0
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d44, i32 0, i32 1) }, ptr %t634, !tbaa !37
  %t635 = getelementptr { i64, ptr }, ptr %l200, i32 0, i32 1
  %t636 = load ptr, ptr %t635, !tbaa !27
  %t637 = getelementptr { i64, ptr }, ptr %t636, i64 1
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d45, i32 0, i32 1) }, ptr %t637, !tbaa !37
  %t638 = getelementptr { i64, ptr }, ptr %l200, i32 0, i32 1
  %t639 = load ptr, ptr %t638, !tbaa !27
  %t640 = getelementptr { i64, ptr }, ptr %t639, i64 2
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d46, i32 0, i32 1) }, ptr %t640, !tbaa !37
  %t641 = getelementptr { i64, ptr }, ptr %l200, i32 0, i32 1
  %t642 = load ptr, ptr %t641, !tbaa !27
  %t643 = getelementptr { i64, ptr }, ptr %t642, i64 3
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d47, i32 0, i32 1) }, ptr %t643, !tbaa !37
  %t645 = getelementptr { i64, ptr }, ptr %l200, i32 0, i32 1
  %t646 = load ptr, ptr %t645, !tbaa !27
  %t647 = getelementptr { i64, ptr }, ptr %t646, i64 4
  store { i64, ptr } %t626, ptr %t647, !tbaa !37
  %t649 = getelementptr { i64, ptr }, ptr %l200, i32 0, i32 1
  %t650 = load ptr, ptr %t649, !tbaa !27
  %t651 = getelementptr { i64, ptr }, ptr %t650, i64 5
  store { i64, ptr } %t627, ptr %t651, !tbaa !37
  %t652 = load { i64, ptr }, ptr %l200, !tbaa !27
  %t653 = call i1 @compiler_2ffetch_2egit(ptr %s18, { i64, ptr } %t652)
  store i1 %t653, ptr %l201
  br label %bb120
bb120:
  %t654 = load i1, ptr %l201, !tbaa !21
  br i1 %t654, label %bb121, label %bb122
bb121:
  store %olang.scope zeroinitializer, ptr %s20
  %t655 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t656 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t657 = mul i64 6, 16
  %t658 = call ptr @__olang_scope_alloc_zeroed(ptr %s20, i64 %t657)
  %t659 = insertvalue { i64, ptr } undef, i64 6, 0
  %t660 = insertvalue { i64, ptr } %t659, ptr %t658, 1
  store { i64, ptr } %t660, ptr %l204, !tbaa !27
  %t661 = getelementptr { i64, ptr }, ptr %l204, i32 0, i32 1
  %t662 = load ptr, ptr %t661, !tbaa !27
  %t663 = getelementptr { i64, ptr }, ptr %t662, i64 0
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d48, i32 0, i32 1) }, ptr %t663, !tbaa !37
  %t664 = getelementptr { i64, ptr }, ptr %l204, i32 0, i32 1
  %t665 = load ptr, ptr %t664, !tbaa !27
  %t666 = getelementptr { i64, ptr }, ptr %t665, i64 1
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d49, i32 0, i32 1) }, ptr %t666, !tbaa !37
  %t668 = getelementptr { i64, ptr }, ptr %l204, i32 0, i32 1
  %t669 = load ptr, ptr %t668, !tbaa !27
  %t670 = getelementptr { i64, ptr }, ptr %t669, i64 2
  store { i64, ptr } %t655, ptr %t670, !tbaa !37
  %t671 = getelementptr { i64, ptr }, ptr %l204, i32 0, i32 1
  %t672 = load ptr, ptr %t671, !tbaa !27
  %t673 = getelementptr { i64, ptr }, ptr %t672, i64 3
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d50, i32 0, i32 1) }, ptr %t673, !tbaa !37
  %t674 = getelementptr { i64, ptr }, ptr %l204, i32 0, i32 1
  %t675 = load ptr, ptr %t674, !tbaa !27
  %t676 = getelementptr { i64, ptr }, ptr %t675, i64 4
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d51, i32 0, i32 1) }, ptr %t676, !tbaa !37
  %t678 = getelementptr { i64, ptr }, ptr %l204, i32 0, i32 1
  %t679 = load ptr, ptr %t678, !tbaa !27
  %t680 = getelementptr { i64, ptr }, ptr %t679, i64 5
  store { i64, ptr } %t656, ptr %t680, !tbaa !37
  %t681 = load { i64, ptr }, ptr %l204, !tbaa !27
  %t682 = call i1 @compiler_2ffetch_2egit(ptr %s20, { i64, ptr } %t681)
  store i1 %t682, ptr %l205
  br label %bb123
bb122:
  br label %bb124
bb123:
  call void @__olang_scope_close(ptr %s20)
  br label %bb124
bb124:
  call void @__olang_scope_close(ptr %s18)
  br label %bb125
bb125:
  %t683 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t685 = call { i64, ptr } @compiler_2ffetch_2ehead(ptr %s0, ptr %s15, { i64, ptr } %t683)
  store { i64, ptr } %t685, ptr %l207
  br label %bb126
bb126:
  %t686 = load { i64, ptr }, ptr %l207, !tbaa !27
  %t687 = extractvalue { i64, ptr } %t686, 0
  %t688 = extractvalue { i64, ptr } %t686, 1
  %t689 = mul i64 %t687, 1
  %t690 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t689)
  call void @llvm.memcpy.p0.p0.i64(ptr %t690, ptr %t688, i64 %t689, i1 false)
  %t691 = insertvalue { i64, ptr } undef, i64 %t687, 0
  %t692 = insertvalue { i64, ptr } %t691, ptr %t690, 1
  %t693 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t696 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s15, ptr %s0, { i64, ptr } %t692, { i64, ptr } %t693)
  store i1 %t696, ptr %l210
  br label %bb127
bb127:
  %t697 = load i1, ptr %l210, !tbaa !21
  %t698 = xor i1 %t697, true
  br i1 %t698, label %bb128, label %bb129
bb128:
  %t700 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t702 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t700)
  store i32 %t702, ptr %l213
  %t703 = icmp ne i32 %t702, 0
  br i1 %t703, label %bb131, label %ok.704, !prof !99
ok.704:
  br label %bb130
bb129:
  br label %bb136
bb130:
  br label %bb135
bb131:
  %t705 = load i32, ptr %l213, !tbaa !23
  %t706 = ashr i32 %t705, 16
  %t708 = icmp eq i32 %t706, 1
  store i1 %t708, ptr %l215, !tbaa !21
  %t709 = load i32, ptr %l213, !tbaa !23
  %t710 = ashr i32 %t709, 16
  %t712 = icmp eq i32 %t710, 1
  br i1 %t712, label %bb132, label %bb133
bb132:
  call void @__olang_errpay_pop()
  br label %bb133
bb133:
  br label %bb134
bb134:
  br label %bb135
bb135:
  call void @__olang_scope_close(ptr %s15)
  call void @__olang_scope_close(ptr %s0)
  %t715 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65539, 0
  store { i32, { i64, ptr } } %t715, ptr %rv
  br label %ret
bb136:
  %t716 = load ptr, ptr %lp17
  %t717 = load { i64, ptr }, ptr %t716, !tbaa !27
  %t719 = call i1 @std_2fos_2eIsDir(ptr %v4, { i64, ptr } %t717)
  store i1 %t719, ptr %l220
  br label %bb137
bb137:
  %t720 = load i1, ptr %l220, !tbaa !21
  %t721 = xor i1 %t720, true
  br i1 %t721, label %bb138, label %bb139
bb138:
  %t723 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t724 = load ptr, ptr %lp17
  %t725 = load { i64, ptr }, ptr %t724, !tbaa !27
  %t728 = call i32 @std_2fos_2eRename(ptr %s0, ptr %v4, { i64, ptr } %t723, { i64, ptr } %t725)
  store i32 %t728, ptr %l224
  %t729 = icmp ne i32 %t728, 0
  br i1 %t729, label %bb141, label %ok.730, !prof !99
ok.730:
  br label %bb140
bb139:
  br label %bb152
bb140:
  br label %bb151
bb141:
  %t731 = load i32, ptr %l224, !tbaa !23
  %t732 = ashr i32 %t731, 16
  %t734 = icmp eq i32 %t732, 1
  store i1 %t734, ptr %l226, !tbaa !21
  %t735 = load i32, ptr %l224, !tbaa !23
  %t736 = ashr i32 %t735, 16
  %t738 = icmp eq i32 %t736, 1
  br i1 %t738, label %bb142, label %bb143
bb142:
  call void @__olang_errpay_pop()
  br label %bb143
bb143:
  br label %bb144
bb144:
  %t740 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t742 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t740)
  store i32 %t742, ptr %l230
  %t743 = icmp ne i32 %t742, 0
  br i1 %t743, label %bb146, label %ok.744, !prof !99
ok.744:
  br label %bb145
bb145:
  br label %bb150
bb146:
  %t745 = load i32, ptr %l230, !tbaa !23
  %t746 = ashr i32 %t745, 16
  %t748 = icmp eq i32 %t746, 1
  store i1 %t748, ptr %l232, !tbaa !21
  %t749 = load i32, ptr %l230, !tbaa !23
  %t750 = ashr i32 %t749, 16
  %t752 = icmp eq i32 %t750, 1
  br i1 %t752, label %bb147, label %bb148
bb147:
  call void @__olang_errpay_pop()
  br label %bb148
bb148:
  br label %bb149
bb149:
  br label %bb150
bb150:
  call void @__olang_scope_close(ptr %s15)
  call void @__olang_scope_close(ptr %s0)
  %t755 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65539, 0
  store { i32, { i64, ptr } } %t755, ptr %rv
  br label %ret
bb151:
  br label %bb152
bb152:
  %t756 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t758 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t756)
  store i32 %t758, ptr %l237
  %t759 = icmp ne i32 %t758, 0
  br i1 %t759, label %bb154, label %ok.760, !prof !99
ok.760:
  br label %bb153
bb153:
  br label %bb158
bb154:
  %t761 = load i32, ptr %l237, !tbaa !23
  %t762 = ashr i32 %t761, 16
  %t764 = icmp eq i32 %t762, 1
  store i1 %t764, ptr %l239, !tbaa !21
  %t765 = load i32, ptr %l237, !tbaa !23
  %t766 = ashr i32 %t765, 16
  %t768 = icmp eq i32 %t766, 1
  br i1 %t768, label %bb155, label %bb156
bb155:
  call void @__olang_errpay_pop()
  br label %bb156
bb156:
  br label %bb157
bb157:
  br label %bb158
bb158:
  %t770 = load ptr, ptr %lp17
  %t771 = load { i64, ptr }, ptr %t770, !tbaa !27
  call void @__olang_scope_close(ptr %s15)
  call void @__olang_scope_close(ptr %s0)
  %t773 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t771, 1
  store { i32, { i64, ptr } } %t773, ptr %rv
  br label %ret
bb159:
  %t774 = load ptr, ptr %l0, !tbaa !29
  store ptr %t774, ptr %l243, !tbaa !29
  %t775 = ptrtoint ptr %v0 to i64
  store i64 %t775, ptr %l244, !tbaa !24
  %t776 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t776, label %bb160, label %bb161
bb160:
  %t778 = call ptr @__olang_region_make(ptr %v0)
  %t779 = ptrtoint ptr %t778 to i64
  store i64 %t779, ptr %l244, !tbaa !24
  br label %bb161
bb161:
  %t780 = load ptr, ptr %lp8
  %t781 = load { i64, ptr }, ptr %t780, !tbaa !27
  %t782 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t783 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d52, i32 0, i32 1) }, 1
  %t784 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d52, i32 0, i32 1) }, 0
  %t786 = extractvalue { i64, ptr } %t781, 1
  %t787 = extractvalue { i64, ptr } %t781, 0
  %t788 = add i64 %t784, %t787
  %t789 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d53, i32 0, i32 1) }, 1
  %t790 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d53, i32 0, i32 1) }, 0
  %t791 = add i64 %t788, %t790
  %t793 = extractvalue { i64, ptr } %t782, 1
  %t794 = extractvalue { i64, ptr } %t782, 0
  %t795 = add i64 %t791, %t794
  %t796 = load i64, ptr %l244
  %t797 = inttoptr i64 %t796 to ptr
  %t798 = call ptr @__olang_scope_alloc(ptr %t797, i64 %t795)
  call void @olang_textcopy(ptr %t798, ptr %t783, i64 %t784)
  %t799 = getelementptr i8, ptr %t798, i64 %t784
  call void @olang_textcopy(ptr %t799, ptr %t786, i64 %t787)
  %t800 = getelementptr i8, ptr %t799, i64 %t787
  call void @olang_textcopy(ptr %t800, ptr %t789, i64 %t790)
  %t801 = getelementptr i8, ptr %t800, i64 %t790
  call void @olang_textcopy(ptr %t801, ptr %t793, i64 %t794)
  %t802 = insertvalue { i64, ptr } undef, i64 %t795, 0
  %t803 = insertvalue { i64, ptr } %t802, ptr %t798, 1
  %t805 = load i64, ptr %l244
  %t806 = inttoptr i64 %t805 to ptr
  %t807 = extractvalue { i64, ptr } %t803, 0
  %t808 = extractvalue { i64, ptr } %t803, 1
  %t809 = mul i64 %t807, 1
  %t810 = call ptr @__olang_scope_alloc(ptr %t806, i64 %t809)
  call void @llvm.memcpy.p0.p0.i64(ptr %t810, ptr %t808, i64 %t809, i1 false)
  %t811 = insertvalue { i64, ptr } undef, i64 %t807, 0
  %t812 = insertvalue { i64, ptr } %t811, ptr %t810, 1
  %t813 = load ptr, ptr %l243, !tbaa !29
  call void @compiler_2ffetch_2ecompiler_2ffetch_3aFetcher_2esay(ptr %v0, ptr %v0, ptr %t813, { i64, ptr } %t812)
  br label %bb162
bb162:
  %t815 = load i64, ptr %l4, !tbaa !24
  %t816 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t818 = extractvalue { i64, ptr } %t816, 0
  %t821 = icmp slt i64 %t815, %t818
  br i1 %t821, label %bb163, label %bb164
bb163:
  %t823 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t824 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d54, i32 0, i32 1) }, 1
  %t825 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d54, i32 0, i32 1) }, 0
  %t827 = extractvalue { i64, ptr } %t823, 1
  %t828 = extractvalue { i64, ptr } %t823, 0
  %t829 = add i64 %t825, %t828
  %t830 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t829)
  call void @olang_textcopy(ptr %t830, ptr %t824, i64 %t825)
  %t831 = getelementptr i8, ptr %t830, i64 %t825
  call void @olang_textcopy(ptr %t831, ptr %t827, i64 %t828)
  %t832 = insertvalue { i64, ptr } undef, i64 %t829, 0
  %t833 = insertvalue { i64, ptr } %t832, ptr %t830, 1
  %t835 = extractvalue { i64, ptr } %t833, 0
  %t836 = extractvalue { i64, ptr } %t833, 1
  %t837 = mul i64 %t835, 1
  %t838 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t837)
  call void @llvm.memcpy.p0.p0.i64(ptr %t838, ptr %t836, i64 %t837, i1 false)
  %t839 = insertvalue { i64, ptr } undef, i64 %t835, 0
  %t840 = insertvalue { i64, ptr } %t839, ptr %t838, 1
  store { i64, ptr } %t840, ptr %l254, !tbaa !27
  br label %bb165
bb164:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d55, i32 0, i32 1) }, ptr %l254, !tbaa !27
  br label %bb165
bb165:
  %t842 = load { i64, ptr }, ptr %l254, !tbaa !27
  store { i64, ptr } %t842, ptr %l19, !tbaa !27
  %t843 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t845 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t843)
  store i32 %t845, ptr %l259
  %t846 = icmp ne i32 %t845, 0
  br i1 %t846, label %bb167, label %ok.847, !prof !99
ok.847:
  br label %bb166
bb166:
  br label %bb171
bb167:
  %t848 = load i32, ptr %l259, !tbaa !23
  %t849 = ashr i32 %t848, 16
  %t851 = icmp eq i32 %t849, 1
  store i1 %t851, ptr %l261, !tbaa !21
  %t852 = load i32, ptr %l259, !tbaa !23
  %t853 = ashr i32 %t852, 16
  %t855 = icmp eq i32 %t853, 1
  br i1 %t855, label %bb168, label %bb169
bb168:
  call void @__olang_errpay_pop()
  br label %bb169
bb169:
  br label %bb170
bb170:
  br label %bb171
bb171:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d56, i32 0, i32 1) }, ptr %l264, !tbaa !27
  %t857 = load { i64, ptr }, ptr %l264, !tbaa !27
  store { i64, ptr } %t857, ptr %l265, !tbaa !27
  %t858 = load { i64, ptr }, ptr %l265, !tbaa !27
  %t859 = extractvalue { i64, ptr } %t858, 0
  store i64 %t859, ptr %l266, !tbaa !24
  %t860 = load i64, ptr %l266, !tbaa !24
  %t861 = mul i64 %t860, 1
  %t862 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t861)
  %t863 = insertvalue { i64, ptr } undef, i64 %t860, 0
  %t864 = insertvalue { i64, ptr } %t863, ptr %t862, 1
  store { i64, ptr } %t864, ptr %l267, !tbaa !27
  %t865 = getelementptr { i64, ptr }, ptr %l267, i32 0, i32 1
  %t866 = load ptr, ptr %t865, !tbaa !27
  %t867 = getelementptr { i64, ptr }, ptr %l265, i32 0, i32 1
  %t868 = load ptr, ptr %t867, !tbaa !27
  %t869 = load i64, ptr %l266, !tbaa !24
  %t870 = mul i64 %t869, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t866, ptr %t868, i64 %t870, i1 false)
  %t871 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 16, i64 8)
  store ptr %t871, ptr %lp20
  %t872 = load { i64, ptr }, ptr %l267, !tbaa !27
  %t873 = load ptr, ptr %lp20
  store { i64, ptr } %t872, ptr %t873, !tbaa !27
  %t874 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t875 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t876 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t877 = mul i64 9, 16
  %t878 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t877)
  %t879 = insertvalue { i64, ptr } undef, i64 9, 0
  %t880 = insertvalue { i64, ptr } %t879, ptr %t878, 1
  store { i64, ptr } %t880, ptr %l271, !tbaa !27
  %t881 = getelementptr { i64, ptr }, ptr %l271, i32 0, i32 1
  %t882 = load ptr, ptr %t881, !tbaa !27
  %t883 = getelementptr { i64, ptr }, ptr %t882, i64 0
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d57, i32 0, i32 1) }, ptr %t883, !tbaa !37
  %t884 = getelementptr { i64, ptr }, ptr %l271, i32 0, i32 1
  %t885 = load ptr, ptr %t884, !tbaa !27
  %t886 = getelementptr { i64, ptr }, ptr %t885, i64 1
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d58, i32 0, i32 1) }, ptr %t886, !tbaa !37
  %t887 = getelementptr { i64, ptr }, ptr %l271, i32 0, i32 1
  %t888 = load ptr, ptr %t887, !tbaa !27
  %t889 = getelementptr { i64, ptr }, ptr %t888, i64 2
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d59, i32 0, i32 1) }, ptr %t889, !tbaa !37
  %t890 = getelementptr { i64, ptr }, ptr %l271, i32 0, i32 1
  %t891 = load ptr, ptr %t890, !tbaa !27
  %t892 = getelementptr { i64, ptr }, ptr %t891, i64 3
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d60, i32 0, i32 1) }, ptr %t892, !tbaa !37
  %t893 = getelementptr { i64, ptr }, ptr %l271, i32 0, i32 1
  %t894 = load ptr, ptr %t893, !tbaa !27
  %t895 = getelementptr { i64, ptr }, ptr %t894, i64 4
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d61, i32 0, i32 1) }, ptr %t895, !tbaa !37
  %t897 = getelementptr { i64, ptr }, ptr %l271, i32 0, i32 1
  %t898 = load ptr, ptr %t897, !tbaa !27
  %t899 = getelementptr { i64, ptr }, ptr %t898, i64 5
  store { i64, ptr } %t874, ptr %t899, !tbaa !37
  %t900 = getelementptr { i64, ptr }, ptr %l271, i32 0, i32 1
  %t901 = load ptr, ptr %t900, !tbaa !27
  %t902 = getelementptr { i64, ptr }, ptr %t901, i64 6
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d62, i32 0, i32 1) }, ptr %t902, !tbaa !37
  %t904 = getelementptr { i64, ptr }, ptr %l271, i32 0, i32 1
  %t905 = load ptr, ptr %t904, !tbaa !27
  %t906 = getelementptr { i64, ptr }, ptr %t905, i64 7
  store { i64, ptr } %t875, ptr %t906, !tbaa !37
  %t908 = getelementptr { i64, ptr }, ptr %l271, i32 0, i32 1
  %t909 = load ptr, ptr %t908, !tbaa !27
  %t910 = getelementptr { i64, ptr }, ptr %t909, i64 8
  store { i64, ptr } %t876, ptr %t910, !tbaa !37
  %t911 = load { i64, ptr }, ptr %l271, !tbaa !27
  %t912 = call i1 @compiler_2ffetch_2egit(ptr %s0, { i64, ptr } %t911)
  store i1 %t912, ptr %l272
  br label %bb172
bb172:
  %t913 = load i1, ptr %l272, !tbaa !21
  br i1 %t913, label %bb173, label %bb174
bb173:
  %t914 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t916 = call { i64, ptr } @compiler_2ffetch_2ehead(ptr %s0, ptr %v0, { i64, ptr } %t914)
  store { i64, ptr } %t916, ptr %l274
  br label %bb175
bb174:
  br label %bb179
bb175:
  %t917 = load ptr, ptr %lp20
  %t918 = load { i64, ptr }, ptr %t917, !tbaa !27
  %t919 = extractvalue { i64, ptr } %t918, 0
  %t920 = load { i64, ptr }, ptr %l274, !tbaa !27
  %t921 = extractvalue { i64, ptr } %t920, 0
  store i64 %t921, ptr %l276, !tbaa !24
  %t923 = load i64, ptr %l276, !tbaa !24
  %t924 = icmp eq i64 %t919, %t923
  br i1 %t924, label %bb176, label %bb177
bb176:
  %t926 = load ptr, ptr %lp20
  %t927 = getelementptr { i64, ptr }, ptr %t926, i32 0, i32 1
  %t928 = load ptr, ptr %t927, !tbaa !27
  %t929 = getelementptr { i64, ptr }, ptr %l274, i32 0, i32 1
  %t930 = load ptr, ptr %t929, !tbaa !27
  %t931 = load i64, ptr %l276, !tbaa !24
  %t932 = mul i64 %t931, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t928, ptr %t930, i64 %t932, i1 false)
  br label %bb178
bb177:
  %t933 = load { i64, ptr }, ptr %l274, !tbaa !27
  %t934 = load ptr, ptr %lp20
  store { i64, ptr } %t933, ptr %t934, !tbaa !27
  br label %bb178
bb178:
  br label %bb179
bb179:
  %t935 = load ptr, ptr %lp20
  %t936 = load { i64, ptr }, ptr %t935, !tbaa !27
  %t938 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t936, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d63, i32 0, i32 1) })
  store i1 %t938, ptr %l279
  br label %bb180
bb180:
  %t939 = load i1, ptr %l279, !tbaa !21
  br i1 %t939, label %bb181, label %bb182
bb181:
  %t940 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t942 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t940)
  store i32 %t942, ptr %l281
  %t943 = icmp ne i32 %t942, 0
  br i1 %t943, label %bb184, label %ok.944, !prof !99
ok.944:
  br label %bb183
bb182:
  br label %bb189
bb183:
  br label %bb188
bb184:
  %t945 = load i32, ptr %l281, !tbaa !23
  %t946 = ashr i32 %t945, 16
  %t948 = icmp eq i32 %t946, 1
  store i1 %t948, ptr %l283, !tbaa !21
  %t949 = load i32, ptr %l281, !tbaa !23
  %t950 = ashr i32 %t949, 16
  %t952 = icmp eq i32 %t950, 1
  br i1 %t952, label %bb185, label %bb186
bb185:
  call void @__olang_errpay_pop()
  br label %bb186
bb186:
  br label %bb187
bb187:
  br label %bb188
bb188:
  call void @__olang_scope_close(ptr %s0)
  %t955 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65538, 0
  store { i32, { i64, ptr } } %t955, ptr %rv
  br label %ret
bb189:
  %t956 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t957 = load ptr, ptr %lp20
  %t958 = load { i64, ptr }, ptr %t957, !tbaa !27
  %t960 = extractvalue { i64, ptr } %t956, 1
  %t961 = extractvalue { i64, ptr } %t956, 0
  %t962 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d64, i32 0, i32 1) }, 1
  %t963 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d64, i32 0, i32 1) }, 0
  %t964 = add i64 %t961, %t963
  %t966 = extractvalue { i64, ptr } %t958, 1
  %t967 = extractvalue { i64, ptr } %t958, 0
  %t968 = add i64 %t964, %t967
  %t969 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t968)
  call void @olang_textcopy(ptr %t969, ptr %t960, i64 %t961)
  %t970 = getelementptr i8, ptr %t969, i64 %t961
  call void @olang_textcopy(ptr %t970, ptr %t962, i64 %t963)
  %t971 = getelementptr i8, ptr %t970, i64 %t963
  call void @olang_textcopy(ptr %t971, ptr %t966, i64 %t967)
  %t972 = insertvalue { i64, ptr } undef, i64 %t968, 0
  %t973 = insertvalue { i64, ptr } %t972, ptr %t969, 1
  %t974 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 16, i64 8)
  store ptr %t974, ptr %lp21
  %t976 = load ptr, ptr %lp21
  store { i64, ptr } %t973, ptr %t976, !tbaa !27
  %t977 = load ptr, ptr %lp21
  %t978 = load { i64, ptr }, ptr %t977, !tbaa !27
  %t980 = call i1 @std_2fos_2eIsDir(ptr %v4, { i64, ptr } %t978)
  store i1 %t980, ptr %l291
  br label %bb190
bb190:
  %t981 = load i1, ptr %l291, !tbaa !21
  br i1 %t981, label %bb191, label %bb192
bb191:
  %t982 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t984 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t982)
  store i32 %t984, ptr %l293
  %t985 = icmp ne i32 %t984, 0
  br i1 %t985, label %bb194, label %ok.986, !prof !99
ok.986:
  br label %bb193
bb192:
  %t987 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t988 = load ptr, ptr %lp21
  %t989 = load { i64, ptr }, ptr %t988, !tbaa !27
  %t992 = call i32 @std_2fos_2eRename(ptr %s0, ptr %v4, { i64, ptr } %t987, { i64, ptr } %t989)
  store i32 %t992, ptr %l300
  %t993 = icmp ne i32 %t992, 0
  br i1 %t993, label %bb200, label %ok.994, !prof !99
ok.994:
  br label %bb199
bb193:
  br label %bb198
bb194:
  %t995 = load i32, ptr %l293, !tbaa !23
  %t996 = ashr i32 %t995, 16
  %t998 = icmp eq i32 %t996, 1
  store i1 %t998, ptr %l295, !tbaa !21
  %t999 = load i32, ptr %l293, !tbaa !23
  %t1000 = ashr i32 %t999, 16
  %t1002 = icmp eq i32 %t1000, 1
  br i1 %t1002, label %bb195, label %bb196
bb195:
  call void @__olang_errpay_pop()
  br label %bb196
bb196:
  br label %bb197
bb197:
  br label %bb198
bb198:
  br label %bb211
bb199:
  br label %bb210
bb200:
  %t1004 = load i32, ptr %l300, !tbaa !23
  %t1005 = ashr i32 %t1004, 16
  %t1007 = icmp eq i32 %t1005, 1
  store i1 %t1007, ptr %l302, !tbaa !21
  %t1008 = load i32, ptr %l300, !tbaa !23
  %t1009 = ashr i32 %t1008, 16
  %t1011 = icmp eq i32 %t1009, 1
  br i1 %t1011, label %bb201, label %bb202
bb201:
  call void @__olang_errpay_pop()
  br label %bb202
bb202:
  br label %bb203
bb203:
  %t1013 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t1015 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t1013)
  store i32 %t1015, ptr %l306
  %t1016 = icmp ne i32 %t1015, 0
  br i1 %t1016, label %bb205, label %ok.1017, !prof !99
ok.1017:
  br label %bb204
bb204:
  br label %bb209
bb205:
  %t1018 = load i32, ptr %l306, !tbaa !23
  %t1019 = ashr i32 %t1018, 16
  %t1021 = icmp eq i32 %t1019, 1
  store i1 %t1021, ptr %l308, !tbaa !21
  %t1022 = load i32, ptr %l306, !tbaa !23
  %t1023 = ashr i32 %t1022, 16
  %t1025 = icmp eq i32 %t1023, 1
  br i1 %t1025, label %bb206, label %bb207
bb206:
  call void @__olang_errpay_pop()
  br label %bb207
bb207:
  br label %bb208
bb208:
  br label %bb209
bb209:
  call void @__olang_scope_close(ptr %s0)
  %t1028 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65538, 0
  store { i32, { i64, ptr } } %t1028, ptr %rv
  br label %ret
bb210:
  br label %bb211
bb211:
  %t1029 = load ptr, ptr %l0, !tbaa !29
  %t1030 = load ptr, ptr %lp8
  %t1031 = load { i64, ptr }, ptr %t1030, !tbaa !27
  %t1032 = load ptr, ptr %lp20
  %t1033 = load { i64, ptr }, ptr %t1032, !tbaa !27
  call void @compiler_2ffetch_2ecompiler_2ffetch_3aFetcher_2elock(ptr %v0, ptr %v0, ptr %v0, ptr %t1029, { i64, ptr } %t1031, { i64, ptr } %t1033)
  br label %bb212
bb212:
  %t1037 = load ptr, ptr %l0, !tbaa !29
  %t1039 = getelementptr %"compiler/fetch:Fetcher", ptr %t1037, i32 0, i32 3
  %t1040 = load i1, ptr %t1039, !tbaa !21
  br i1 %t1040, label %bb213, label %bb214
bb213:
  store %olang.scope zeroinitializer, ptr %s39
  %t1042 = load ptr, ptr %l0, !tbaa !29
  %t1043 = load ptr, ptr %lp8
  %t1044 = load { i64, ptr }, ptr %t1043, !tbaa !27
  %t1047 = call i1 @compiler_2ffetch_2ecompiler_2ffetch_3aFetcher_2eupdatedNow(ptr %v0, ptr %v0, ptr %t1042, { i64, ptr } %t1044, i1 true)
  store i1 %t1047, ptr %l319
  br label %bb215
bb214:
  br label %bb266
bb215:
  %t1048 = load i1, ptr %l14, !tbaa !21
  br i1 %t1048, label %bb216, label %bb217
bb216:
  %t1050 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t1052 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s39, { i64, ptr } %t1050, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d65, i32 0, i32 1) })
  store i1 %t1052, ptr %l323
  br label %bb218
bb217:
  store i1 false, ptr %l321, !tbaa !21
  br label %bb219
bb218:
  %t1053 = load i1, ptr %l323, !tbaa !21
  store i1 %t1053, ptr %l321, !tbaa !21
  br label %bb219
bb219:
  %t1054 = load i1, ptr %l321, !tbaa !21
  br i1 %t1054, label %bb220, label %bb221
bb220:
  %t1055 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1055, ptr %l324, !tbaa !29
  %t1056 = ptrtoint ptr %v0 to i64
  store i64 %t1056, ptr %l325, !tbaa !24
  %t1057 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t1057, label %bb222, label %bb223
bb221:
  %t1059 = load i1, ptr %l14, !tbaa !21
  br i1 %t1059, label %bb231, label %bb232
bb222:
  %t1061 = call ptr @__olang_region_make(ptr %v0)
  %t1062 = ptrtoint ptr %t1061 to i64
  store i64 %t1062, ptr %l325, !tbaa !24
  br label %bb223
bb223:
  %t1063 = load ptr, ptr %lp8
  %t1064 = load { i64, ptr }, ptr %t1063, !tbaa !27
  store { i64, ptr } %t1064, ptr %l327, !tbaa !27
  %t1065 = load ptr, ptr %lp20
  %t1066 = load { i64, ptr }, ptr %t1065, !tbaa !27
  %t1067 = extractvalue { i64, ptr } %t1066, 0
  store i64 %t1067, ptr %l328, !tbaa !24
  %t1068 = icmp sge i64 0, 0
  br i1 %t1068, label %bb224, label %bb225
bb224:
  %t1070 = icmp sle i64 0, 12
  br i1 %t1070, label %bb226, label %bb227
bb225:
  call void @__olang_check_failed(ptr @olang_loc_461a8d3078b45b75_287f37f9c7026b71)
  unreachable
bb226:
  %t1072 = load i64, ptr %l328, !tbaa !24
  %t1073 = icmp sle i64 12, %t1072
  br i1 %t1073, label %bb228, label %bb229
bb227:
  call void @__olang_check_failed(ptr @olang_loc_461a8d3078b45b75_287f37f9c7026b71)
  unreachable
bb228:
  %t1075 = load ptr, ptr %lp20
  %t1076 = getelementptr { i64, ptr }, ptr %t1075, i32 0, i32 1
  %t1077 = load ptr, ptr %t1076, !tbaa !27
  %t1078 = getelementptr i8, ptr %t1077, i64 0
  %t1079 = sub i64 12, 0
  %t1080 = insertvalue { i64, ptr } undef, i64 %t1079, 0
  %t1081 = insertvalue { i64, ptr } %t1080, ptr %t1078, 1
  %t1082 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d66, i32 0, i32 1) }, 1
  %t1083 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d66, i32 0, i32 1) }, 0
  %t1084 = load { i64, ptr }, ptr %l327, !tbaa !27
  %t1085 = extractvalue { i64, ptr } %t1084, 1
  %t1086 = extractvalue { i64, ptr } %t1084, 0
  %t1087 = add i64 %t1083, %t1086
  %t1088 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d67, i32 0, i32 1) }, 1
  %t1089 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d67, i32 0, i32 1) }, 0
  %t1090 = add i64 %t1087, %t1089
  %t1092 = extractvalue { i64, ptr } %t1081, 1
  %t1093 = extractvalue { i64, ptr } %t1081, 0
  %t1094 = add i64 %t1090, %t1093
  %t1095 = load i64, ptr %l325
  %t1096 = inttoptr i64 %t1095 to ptr
  %t1097 = call ptr @__olang_scope_alloc(ptr %t1096, i64 %t1094)
  call void @olang_textcopy(ptr %t1097, ptr %t1082, i64 %t1083)
  %t1098 = getelementptr i8, ptr %t1097, i64 %t1083
  call void @olang_textcopy(ptr %t1098, ptr %t1085, i64 %t1086)
  %t1099 = getelementptr i8, ptr %t1098, i64 %t1086
  call void @olang_textcopy(ptr %t1099, ptr %t1088, i64 %t1089)
  %t1100 = getelementptr i8, ptr %t1099, i64 %t1089
  call void @olang_textcopy(ptr %t1100, ptr %t1092, i64 %t1093)
  %t1101 = insertvalue { i64, ptr } undef, i64 %t1094, 0
  %t1102 = insertvalue { i64, ptr } %t1101, ptr %t1097, 1
  %t1104 = load i64, ptr %l325
  %t1105 = inttoptr i64 %t1104 to ptr
  %t1106 = extractvalue { i64, ptr } %t1102, 0
  %t1107 = extractvalue { i64, ptr } %t1102, 1
  %t1108 = mul i64 %t1106, 1
  %t1109 = call ptr @__olang_scope_alloc(ptr %t1105, i64 %t1108)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1109, ptr %t1107, i64 %t1108, i1 false)
  %t1110 = insertvalue { i64, ptr } undef, i64 %t1106, 0
  %t1111 = insertvalue { i64, ptr } %t1110, ptr %t1109, 1
  %t1112 = load ptr, ptr %l324, !tbaa !29
  call void @compiler_2ffetch_2ecompiler_2ffetch_3aFetcher_2esay(ptr %v0, ptr %v0, ptr %t1112, { i64, ptr } %t1111)
  br label %bb230
bb229:
  call void @__olang_check_failed(ptr @olang_loc_461a8d3078b45b75_287f37f9c7026b71)
  unreachable
bb230:
  br label %bb265
bb231:
  %t1114 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t1115 = load ptr, ptr %lp20
  %t1116 = load { i64, ptr }, ptr %t1115, !tbaa !27
  %t1119 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %v0, { i64, ptr } %t1114, { i64, ptr } %t1116)
  store i1 %t1119, ptr %l339
  br label %bb233
bb232:
  store i1 false, ptr %l336, !tbaa !21
  br label %bb234
bb233:
  %t1120 = load i1, ptr %l339, !tbaa !21
  %t1121 = xor i1 %t1120, true
  store i1 %t1121, ptr %l336, !tbaa !21
  br label %bb234
bb234:
  %t1123 = load i1, ptr %l336, !tbaa !21
  br i1 %t1123, label %bb235, label %bb236
bb235:
  %t1124 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1124, ptr %l341, !tbaa !29
  %t1125 = ptrtoint ptr %v0 to i64
  store i64 %t1125, ptr %l342, !tbaa !24
  %t1126 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t1126, label %bb237, label %bb238
bb236:
  %t1128 = load i1, ptr %l14, !tbaa !21
  br i1 %t1128, label %bb252, label %bb253
bb237:
  %t1130 = call ptr @__olang_region_make(ptr %v0)
  %t1131 = ptrtoint ptr %t1130 to i64
  store i64 %t1131, ptr %l342, !tbaa !24
  br label %bb238
bb238:
  %t1132 = load ptr, ptr %lp8
  %t1133 = load { i64, ptr }, ptr %t1132, !tbaa !27
  store { i64, ptr } %t1133, ptr %l344, !tbaa !27
  %t1134 = load ptr, ptr %lp20
  %t1135 = load { i64, ptr }, ptr %t1134, !tbaa !27
  %t1136 = extractvalue { i64, ptr } %t1135, 0
  store i64 %t1136, ptr %l345, !tbaa !24
  %t1137 = icmp sge i64 0, 0
  br i1 %t1137, label %bb239, label %bb240
bb239:
  %t1139 = icmp sle i64 0, 12
  br i1 %t1139, label %bb241, label %bb242
bb240:
  call void @__olang_check_failed(ptr @olang_loc_64bbdb9c4083d73a_45ec4fce431b420e)
  unreachable
bb241:
  %t1141 = load i64, ptr %l345, !tbaa !24
  %t1142 = icmp sle i64 12, %t1141
  br i1 %t1142, label %bb243, label %bb244
bb242:
  call void @__olang_check_failed(ptr @olang_loc_64bbdb9c4083d73a_45ec4fce431b420e)
  unreachable
bb243:
  %t1144 = load ptr, ptr %lp20
  %t1145 = getelementptr { i64, ptr }, ptr %t1144, i32 0, i32 1
  %t1146 = load ptr, ptr %t1145, !tbaa !27
  %t1147 = getelementptr i8, ptr %t1146, i64 0
  %t1148 = sub i64 12, 0
  %t1149 = insertvalue { i64, ptr } undef, i64 %t1148, 0
  %t1150 = insertvalue { i64, ptr } %t1149, ptr %t1147, 1
  store { i64, ptr } %t1150, ptr %l349, !tbaa !27
  %t1151 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t1152 = extractvalue { i64, ptr } %t1151, 0
  store i64 %t1152, ptr %l350, !tbaa !24
  %t1153 = icmp sge i64 0, 0
  br i1 %t1153, label %bb245, label %bb246
bb244:
  call void @__olang_check_failed(ptr @olang_loc_64bbdb9c4083d73a_45ec4fce431b420e)
  unreachable
bb245:
  %t1155 = icmp sle i64 0, 12
  br i1 %t1155, label %bb247, label %bb248
bb246:
  call void @__olang_check_failed(ptr @olang_loc_64bbdb9c4083d73a_45ec4fce431b420e)
  unreachable
bb247:
  %t1157 = load i64, ptr %l350, !tbaa !24
  %t1158 = icmp sle i64 12, %t1157
  br i1 %t1158, label %bb249, label %bb250
bb248:
  call void @__olang_check_failed(ptr @olang_loc_64bbdb9c4083d73a_45ec4fce431b420e)
  unreachable
bb249:
  %t1160 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t1161 = load ptr, ptr %t1160, !tbaa !27
  %t1162 = getelementptr i8, ptr %t1161, i64 0
  %t1163 = sub i64 12, 0
  %t1164 = insertvalue { i64, ptr } undef, i64 %t1163, 0
  %t1165 = insertvalue { i64, ptr } %t1164, ptr %t1162, 1
  %t1166 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d68, i32 0, i32 1) }, 1
  %t1167 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d68, i32 0, i32 1) }, 0
  %t1168 = load { i64, ptr }, ptr %l344, !tbaa !27
  %t1169 = extractvalue { i64, ptr } %t1168, 1
  %t1170 = extractvalue { i64, ptr } %t1168, 0
  %t1171 = add i64 %t1167, %t1170
  %t1172 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d69, i32 0, i32 1) }, 1
  %t1173 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d69, i32 0, i32 1) }, 0
  %t1174 = add i64 %t1171, %t1173
  %t1175 = load { i64, ptr }, ptr %l349, !tbaa !27
  %t1176 = extractvalue { i64, ptr } %t1175, 1
  %t1177 = extractvalue { i64, ptr } %t1175, 0
  %t1178 = add i64 %t1174, %t1177
  %t1179 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d70, i32 0, i32 1) }, 1
  %t1180 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d70, i32 0, i32 1) }, 0
  %t1181 = add i64 %t1178, %t1180
  %t1183 = extractvalue { i64, ptr } %t1165, 1
  %t1184 = extractvalue { i64, ptr } %t1165, 0
  %t1185 = add i64 %t1181, %t1184
  %t1186 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d71, i32 0, i32 1) }, 1
  %t1187 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d71, i32 0, i32 1) }, 0
  %t1188 = add i64 %t1185, %t1187
  %t1189 = load i64, ptr %l342
  %t1190 = inttoptr i64 %t1189 to ptr
  %t1191 = call ptr @__olang_scope_alloc(ptr %t1190, i64 %t1188)
  call void @olang_textcopy(ptr %t1191, ptr %t1166, i64 %t1167)
  %t1192 = getelementptr i8, ptr %t1191, i64 %t1167
  call void @olang_textcopy(ptr %t1192, ptr %t1169, i64 %t1170)
  %t1193 = getelementptr i8, ptr %t1192, i64 %t1170
  call void @olang_textcopy(ptr %t1193, ptr %t1172, i64 %t1173)
  %t1194 = getelementptr i8, ptr %t1193, i64 %t1173
  call void @olang_textcopy(ptr %t1194, ptr %t1176, i64 %t1177)
  %t1195 = getelementptr i8, ptr %t1194, i64 %t1177
  call void @olang_textcopy(ptr %t1195, ptr %t1179, i64 %t1180)
  %t1196 = getelementptr i8, ptr %t1195, i64 %t1180
  call void @olang_textcopy(ptr %t1196, ptr %t1183, i64 %t1184)
  %t1197 = getelementptr i8, ptr %t1196, i64 %t1184
  call void @olang_textcopy(ptr %t1197, ptr %t1186, i64 %t1187)
  %t1198 = insertvalue { i64, ptr } undef, i64 %t1188, 0
  %t1199 = insertvalue { i64, ptr } %t1198, ptr %t1191, 1
  %t1201 = load i64, ptr %l342
  %t1202 = inttoptr i64 %t1201 to ptr
  %t1203 = extractvalue { i64, ptr } %t1199, 0
  %t1204 = extractvalue { i64, ptr } %t1199, 1
  %t1205 = mul i64 %t1203, 1
  %t1206 = call ptr @__olang_scope_alloc(ptr %t1202, i64 %t1205)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1206, ptr %t1204, i64 %t1205, i1 false)
  %t1207 = insertvalue { i64, ptr } undef, i64 %t1203, 0
  %t1208 = insertvalue { i64, ptr } %t1207, ptr %t1206, 1
  %t1209 = load ptr, ptr %l341, !tbaa !29
  call void @compiler_2ffetch_2ecompiler_2ffetch_3aFetcher_2esay(ptr %v0, ptr %v0, ptr %t1209, { i64, ptr } %t1208)
  br label %bb251
bb250:
  call void @__olang_check_failed(ptr @olang_loc_64bbdb9c4083d73a_45ec4fce431b420e)
  unreachable
bb251:
  br label %bb264
bb252:
  %t1211 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1211, ptr %l358, !tbaa !29
  %t1212 = ptrtoint ptr %v0 to i64
  store i64 %t1212, ptr %l359, !tbaa !24
  %t1213 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t1213, label %bb254, label %bb255
bb253:
  br label %bb263
bb254:
  %t1215 = call ptr @__olang_region_make(ptr %v0)
  %t1216 = ptrtoint ptr %t1215 to i64
  store i64 %t1216, ptr %l359, !tbaa !24
  br label %bb255
bb255:
  %t1217 = load ptr, ptr %lp8
  %t1218 = load { i64, ptr }, ptr %t1217, !tbaa !27
  store { i64, ptr } %t1218, ptr %l361, !tbaa !27
  %t1219 = load ptr, ptr %lp20
  %t1220 = load { i64, ptr }, ptr %t1219, !tbaa !27
  %t1221 = extractvalue { i64, ptr } %t1220, 0
  store i64 %t1221, ptr %l362, !tbaa !24
  %t1222 = icmp sge i64 0, 0
  br i1 %t1222, label %bb256, label %bb257
bb256:
  %t1224 = icmp sle i64 0, 12
  br i1 %t1224, label %bb258, label %bb259
bb257:
  call void @__olang_check_failed(ptr @olang_loc_978ca0e68f8e7a17_d15c8fffad158e0b)
  unreachable
bb258:
  %t1226 = load i64, ptr %l362, !tbaa !24
  %t1227 = icmp sle i64 12, %t1226
  br i1 %t1227, label %bb260, label %bb261
bb259:
  call void @__olang_check_failed(ptr @olang_loc_978ca0e68f8e7a17_d15c8fffad158e0b)
  unreachable
bb260:
  %t1229 = load ptr, ptr %lp20
  %t1230 = getelementptr { i64, ptr }, ptr %t1229, i32 0, i32 1
  %t1231 = load ptr, ptr %t1230, !tbaa !27
  %t1232 = getelementptr i8, ptr %t1231, i64 0
  %t1233 = sub i64 12, 0
  %t1234 = insertvalue { i64, ptr } undef, i64 %t1233, 0
  %t1235 = insertvalue { i64, ptr } %t1234, ptr %t1232, 1
  %t1236 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d72, i32 0, i32 1) }, 1
  %t1237 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d72, i32 0, i32 1) }, 0
  %t1238 = load { i64, ptr }, ptr %l361, !tbaa !27
  %t1239 = extractvalue { i64, ptr } %t1238, 1
  %t1240 = extractvalue { i64, ptr } %t1238, 0
  %t1241 = add i64 %t1237, %t1240
  %t1242 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d73, i32 0, i32 1) }, 1
  %t1243 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d73, i32 0, i32 1) }, 0
  %t1244 = add i64 %t1241, %t1243
  %t1246 = extractvalue { i64, ptr } %t1235, 1
  %t1247 = extractvalue { i64, ptr } %t1235, 0
  %t1248 = add i64 %t1244, %t1247
  %t1249 = load i64, ptr %l359
  %t1250 = inttoptr i64 %t1249 to ptr
  %t1251 = call ptr @__olang_scope_alloc(ptr %t1250, i64 %t1248)
  call void @olang_textcopy(ptr %t1251, ptr %t1236, i64 %t1237)
  %t1252 = getelementptr i8, ptr %t1251, i64 %t1237
  call void @olang_textcopy(ptr %t1252, ptr %t1239, i64 %t1240)
  %t1253 = getelementptr i8, ptr %t1252, i64 %t1240
  call void @olang_textcopy(ptr %t1253, ptr %t1242, i64 %t1243)
  %t1254 = getelementptr i8, ptr %t1253, i64 %t1243
  call void @olang_textcopy(ptr %t1254, ptr %t1246, i64 %t1247)
  %t1255 = insertvalue { i64, ptr } undef, i64 %t1248, 0
  %t1256 = insertvalue { i64, ptr } %t1255, ptr %t1251, 1
  %t1258 = load i64, ptr %l359
  %t1259 = inttoptr i64 %t1258 to ptr
  %t1260 = extractvalue { i64, ptr } %t1256, 0
  %t1261 = extractvalue { i64, ptr } %t1256, 1
  %t1262 = mul i64 %t1260, 1
  %t1263 = call ptr @__olang_scope_alloc(ptr %t1259, i64 %t1262)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1263, ptr %t1261, i64 %t1262, i1 false)
  %t1264 = insertvalue { i64, ptr } undef, i64 %t1260, 0
  %t1265 = insertvalue { i64, ptr } %t1264, ptr %t1263, 1
  %t1266 = load ptr, ptr %l358, !tbaa !29
  call void @compiler_2ffetch_2ecompiler_2ffetch_3aFetcher_2esay(ptr %v0, ptr %v0, ptr %t1266, { i64, ptr } %t1265)
  br label %bb262
bb261:
  call void @__olang_check_failed(ptr @olang_loc_978ca0e68f8e7a17_d15c8fffad158e0b)
  unreachable
bb262:
  br label %bb263
bb263:
  br label %bb264
bb264:
  br label %bb265
bb265:
  call void @__olang_scope_close(ptr %s39)
  br label %bb266
bb266:
  %t1268 = load ptr, ptr %lp21
  %t1269 = load { i64, ptr }, ptr %t1268, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t1271 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t1269, 1
  store { i32, { i64, ptr } } %t1271, ptr %rv
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
  %lp5 = alloca ptr
  %lp6 = alloca ptr
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
  br label %bb53
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
  br label %bb52
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
  %t61 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t60)
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
  %t70 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 16, i64 8)
  store ptr %t70, ptr %lp5
  %t71 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t72 = load ptr, ptr %lp5
  store { i64, ptr } %t71, ptr %t72, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d77, i32 0, i32 1) }, ptr %l40, !tbaa !27
  %t73 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t73, ptr %l41, !tbaa !27
  %t74 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t75 = extractvalue { i64, ptr } %t74, 0
  store i64 %t75, ptr %l42, !tbaa !24
  %t76 = load i64, ptr %l42, !tbaa !24
  %t77 = mul i64 %t76, 1
  %t78 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t77)
  %t79 = insertvalue { i64, ptr } undef, i64 %t76, 0
  %t80 = insertvalue { i64, ptr } %t79, ptr %t78, 1
  store { i64, ptr } %t80, ptr %l43, !tbaa !27
  %t81 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !27
  %t83 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t84 = load ptr, ptr %t83, !tbaa !27
  %t85 = load i64, ptr %l42, !tbaa !24
  %t86 = mul i64 %t85, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t82, ptr %t84, i64 %t86, i1 false)
  %t87 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 16, i64 8)
  store ptr %t87, ptr %lp6
  %t88 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t89 = load ptr, ptr %lp6
  store { i64, ptr } %t88, ptr %t89, !tbaa !27
  store { i64, ptr } %t55, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t92 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t94 = extractvalue { i64, ptr } %t92, 0
  store i64 %t94, ptr %l9, !tbaa !24
  br label %bb22
bb22:
  store %olang.scope zeroinitializer, ptr %s7
  %t96 = load i64, ptr %l8, !tbaa !24
  %t97 = load i64, ptr %l9, !tbaa !24
  %t100 = icmp slt i64 %t96, %t97
  %t102 = xor i1 %t100, true
  br i1 %t102, label %bb23, label %bb24
bb23:
  call void @__olang_scope_close(ptr %s7)
  br label %bb45
bb24:
  br label %bb25
bb25:
  %t104 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t104, ptr %l51, !tbaa !27
  %t105 = load i64, ptr %l8, !tbaa !24
  %t107 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t108 = load ptr, ptr %t107, !tbaa !27
  %t109 = getelementptr { i64, ptr }, ptr %t108, i64 %t105
  %t110 = load { i64, ptr }, ptr %t109, !tbaa !37
  store { i64, ptr } %t110, ptr %l10, !tbaa !27
  %t112 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t114 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s4, ptr %s7, { i64, ptr } %t112, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d78, i32 0, i32 1) })
  store i1 %t114, ptr %l55
  br label %bb26
bb26:
  %t115 = load i1, ptr %l55, !tbaa !21
  br i1 %t115, label %bb27, label %bb28
bb27:
  call void @__olang_scope_close(ptr %s7)
  br label %bb44
bb28:
  br label %bb29
bb29:
  %t116 = load ptr, ptr %lp5
  %t117 = load { i64, ptr }, ptr %t116, !tbaa !27
  %t119 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s7, { i64, ptr } %t117, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d79, i32 0, i32 1) })
  store i1 %t119, ptr %l57
  br label %bb30
bb30:
  %t120 = load i1, ptr %l57, !tbaa !21
  br i1 %t120, label %bb31, label %bb32
bb31:
  %t121 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t123 = extractvalue { i64, ptr } %t121, 1
  %t124 = extractvalue { i64, ptr } %t121, 0
  %t125 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t124)
  call void @olang_textcopy(ptr %t125, ptr %t123, i64 %t124)
  %t126 = insertvalue { i64, ptr } undef, i64 %t124, 0
  %t127 = insertvalue { i64, ptr } %t126, ptr %t125, 1
  store { i64, ptr } %t127, ptr %l59, !tbaa !27
  %t128 = load ptr, ptr %lp5
  %t129 = load { i64, ptr }, ptr %t128, !tbaa !27
  %t130 = extractvalue { i64, ptr } %t129, 0
  %t131 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t132 = extractvalue { i64, ptr } %t131, 0
  store i64 %t132, ptr %l61, !tbaa !24
  %t134 = load i64, ptr %l61, !tbaa !24
  %t135 = icmp eq i64 %t130, %t134
  br i1 %t135, label %bb33, label %bb34
bb32:
  store %olang.scope zeroinitializer, ptr %s11
  %t137 = load ptr, ptr %lp6
  %t138 = load { i64, ptr }, ptr %t137, !tbaa !27
  %t140 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s11, { i64, ptr } %t138, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d80, i32 0, i32 1) })
  store i1 %t140, ptr %l64
  br label %bb36
bb33:
  %t141 = load ptr, ptr %lp5
  %t142 = getelementptr { i64, ptr }, ptr %t141, i32 0, i32 1
  %t143 = load ptr, ptr %t142, !tbaa !27
  %t144 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t145 = load ptr, ptr %t144, !tbaa !27
  %t146 = load i64, ptr %l61, !tbaa !24
  %t147 = mul i64 %t146, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t143, ptr %t145, i64 %t147, i1 false)
  br label %bb35
bb34:
  %t148 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t149 = load ptr, ptr %lp5
  store { i64, ptr } %t148, ptr %t149, !tbaa !27
  br label %bb35
bb35:
  br label %bb43
bb36:
  %t150 = load i1, ptr %l64, !tbaa !21
  br i1 %t150, label %bb37, label %bb38
bb37:
  %t151 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t153 = extractvalue { i64, ptr } %t151, 1
  %t154 = extractvalue { i64, ptr } %t151, 0
  %t155 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t154)
  call void @olang_textcopy(ptr %t155, ptr %t153, i64 %t154)
  %t156 = insertvalue { i64, ptr } undef, i64 %t154, 0
  %t157 = insertvalue { i64, ptr } %t156, ptr %t155, 1
  store { i64, ptr } %t157, ptr %l66, !tbaa !27
  %t158 = load ptr, ptr %lp6
  %t159 = load { i64, ptr }, ptr %t158, !tbaa !27
  %t160 = extractvalue { i64, ptr } %t159, 0
  %t161 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t162 = extractvalue { i64, ptr } %t161, 0
  store i64 %t162, ptr %l68, !tbaa !24
  %t164 = load i64, ptr %l68, !tbaa !24
  %t165 = icmp eq i64 %t160, %t164
  br i1 %t165, label %bb39, label %bb40
bb38:
  br label %bb42
bb39:
  %t167 = load ptr, ptr %lp6
  %t168 = getelementptr { i64, ptr }, ptr %t167, i32 0, i32 1
  %t169 = load ptr, ptr %t168, !tbaa !27
  %t170 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t171 = load ptr, ptr %t170, !tbaa !27
  %t172 = load i64, ptr %l68, !tbaa !24
  %t173 = mul i64 %t172, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t169, ptr %t171, i64 %t173, i1 false)
  br label %bb41
bb40:
  %t174 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t175 = load ptr, ptr %lp6
  store { i64, ptr } %t174, ptr %t175, !tbaa !27
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
  %t176 = load i64, ptr %l8, !tbaa !24
  %t178 = add i64 %t176, 1
  store i64 %t178, ptr %l8, !tbaa !24
  br label %bb22
bb45:
  %t180 = load ptr, ptr %lp6
  %t181 = load { i64, ptr }, ptr %t180, !tbaa !27
  %t183 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s4, { i64, ptr } %t181, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d81, i32 0, i32 1) })
  store i1 %t183, ptr %l73
  br label %bb46
bb46:
  %t184 = load i1, ptr %l73, !tbaa !21
  br i1 %t184, label %bb47, label %bb48
bb47:
  call void @__olang_scope_close(ptr %s4)
  br label %bb52
bb48:
  br label %bb49
bb49:
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t187 = getelementptr %"compiler/fetch:Fetcher", ptr %t185, i32 0, i32 6
  %t188 = load ptr, ptr %lp5
  %t189 = load { i64, ptr }, ptr %t188, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t187, { i64, ptr } %t189)
  br label %bb50
bb50:
  %t192 = load ptr, ptr %l0, !tbaa !29
  %t194 = getelementptr %"compiler/fetch:Fetcher", ptr %t192, i32 0, i32 7
  %t195 = load ptr, ptr %lp6
  %t196 = load { i64, ptr }, ptr %t195, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t194, { i64, ptr } %t196)
  br label %bb51
bb51:
  call void @__olang_scope_close(ptr %s4)
  br label %bb52
bb52:
  br label %bb11
bb53:
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
  %l82 = alloca i64
  %l91 = alloca i64
  %l94 = alloca i64
  %l119 = alloca %"std/prelude/text:StringBuilder"
  %l129 = alloca { i64, ptr }
  %l132 = alloca ptr
  %l136 = alloca { i64, ptr }
  %l138 = alloca ptr
  %l142 = alloca { i64, ptr }
  %l147 = alloca { i64, ptr }
  %l149 = alloca { i64, ptr }
  %l152 = alloca i32
  %l154 = alloca i1
  %s0 = alloca %olang.scope
  %t196 = alloca { ptr, ptr }, align 8
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
  %t97 = load i64, ptr %l3, !tbaa !24
  %t98 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_Haae4fbc3ba15583a49040d883d2248d1(ptr %v0, ptr %v2, ptr %t96, i64 %t97, { i64, ptr } %t98)
  br label %bb30
bb29:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/fetch:Fetcher", ptr %t102, i32 0, i32 6
  %t105 = load { i64, ptr }, ptr %l1, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %t104, { i64, ptr } %t105)
  br label %bb31
bb30:
  br label %bb33
bb31:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/fetch:Fetcher", ptr %t108, i32 0, i32 7
  %t111 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v2, ptr %t110, { i64, ptr } %t111)
  br label %bb32
bb32:
  br label %bb33
bb33:
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t116 = getelementptr %"compiler/fetch:Fetcher", ptr %t114, i32 0, i32 6
  %t118 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t116)
  store i64 %t118, ptr %l82
  br label %bb34
bb34:
  %t119 = load i64, ptr %l82, !tbaa !24
  %t120 = icmp sge i64 %t119, 0
  br i1 %t120, label %bb35, label %bb36
bb35:
  %t122 = load i64, ptr %l82, !tbaa !24
  %t123 = icmp sle i64 %t122, 1152921504606846975
  br i1 %t123, label %bb37, label %bb38
bb36:
  call void @__olang_check_failed(ptr @olang_loc_ba721b6722bc57b1_efdace1c8e747995)
  unreachable
bb37:
  %t125 = load i64, ptr %l82, !tbaa !24
  %t126 = mul i64 %t125, 8
  %t127 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t126)
  %t128 = insertvalue { i64, ptr } undef, i64 %t125, 0
  %t129 = insertvalue { i64, ptr } %t128, ptr %t127, 1
  store { i64, ptr } %t129, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t131 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t133 = extractvalue { i64, ptr } %t131, 0
  store i64 %t133, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t135 = load i64, ptr %l12, !tbaa !24
  %t136 = load i64, ptr %l11, !tbaa !24
  %t139 = icmp sgt i64 %t135, %t136
  br i1 %t139, label %bb39, label %bb40
bb38:
  call void @__olang_check_failed(ptr @olang_loc_ba721b6722bc57b1_efdace1c8e747995)
  unreachable
bb39:
  %t141 = load i64, ptr %l13, !tbaa !24
  %t143 = icmp sgt i64 %t141, 0
  br i1 %t143, label %bb41, label %bb42
bb40:
  store i64 0, ptr %l91, !tbaa !24
  br label %bb44
bb41:
  %t145 = load i64, ptr %l12, !tbaa !24
  %t146 = load i64, ptr %l11, !tbaa !24
  %t149 = sub i64 %t145, %t146
  %t150 = load i64, ptr %l13, !tbaa !24
  %t153 = add i64 %t149, %t150
  %t155 = sub i64 %t153, 1
  %t156 = load i64, ptr %l13, !tbaa !24
  %t159 = sdiv i64 %t155, %t156
  store i64 %t159, ptr %l94, !tbaa !24
  br label %bb43
bb42:
  store i64 0, ptr %l94, !tbaa !24
  br label %bb43
bb43:
  %t161 = load i64, ptr %l94, !tbaa !24
  store i64 %t161, ptr %l91, !tbaa !24
  br label %bb44
bb44:
  %t162 = load i64, ptr %l91, !tbaa !24
  store i64 %t162, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb45
bb45:
  %t163 = load i64, ptr %l15, !tbaa !24
  %t164 = load i64, ptr %l14, !tbaa !24
  %t167 = icmp slt i64 %t163, %t164
  %t169 = xor i1 %t167, true
  br i1 %t169, label %bb46, label %bb47
bb46:
  br label %bb50
bb47:
  br label %bb48
bb48:
  %t171 = load i64, ptr %l11, !tbaa !24
  %t172 = load i64, ptr %l15, !tbaa !24
  %t173 = load i64, ptr %l13, !tbaa !24
  %t176 = mul i64 %t172, %t173
  %t179 = add i64 %t171, %t176
  store i64 %t179, ptr %l16, !tbaa !24
  %t181 = load i64, ptr %l16, !tbaa !24
  %t182 = load i64, ptr %l16, !tbaa !24
  %t185 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t186 = load ptr, ptr %t185, !tbaa !27
  %t187 = getelementptr i64, ptr %t186, i64 %t181
  store i64 %t182, ptr %t187, !tbaa !34
  br label %bb49
bb49:
  %t188 = load i64, ptr %l15, !tbaa !24
  %t190 = add i64 %t188, 1
  store i64 %t190, ptr %l15, !tbaa !24
  br label %bb45
bb50:
  %t192 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t193 = load ptr, ptr %l0, !tbaa !29
  %t194 = getelementptr { ptr, ptr }, ptr null, i32 1
  %t195 = ptrtoint ptr %t194 to i64
  %t197 = getelementptr { ptr, ptr }, ptr %t196, i32 0, i32 0
  store ptr %t193, ptr %t197, !tbaa !28
  call void @__olang_scope_escape(ptr %v0)
  %t199 = getelementptr { ptr, ptr }, ptr %t196, i32 0, i32 1
  store ptr %v0, ptr %t199, !tbaa !28
  %t200 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_82, 0
  %t201 = insertvalue { ptr, ptr } %t200, ptr %t196, 1
  %t204 = extractvalue { ptr, ptr } %t201, 0
  %t205 = extractvalue { ptr, ptr } %t201, 1
  call void @std_2fprelude_2farray_2eArray_3cI64_3e_2eSort_3cI64_2c_20_3f_3e(ptr %s0, ptr %s0, { i64, ptr } %t192, ptr %t204, ptr %t205)
  br label %bb51
bb51:
  %t206 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t206, ptr %l119
  br label %bb52
bb52:
  %t207 = load %"std/prelude/text:StringBuilder", ptr %l119
  store %"std/prelude/text:StringBuilder" %t207, ptr %l17
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l17, { i64, ptr } { i64 100, ptr getelementptr inbounds (<{ i64, [100 x i8] }>, ptr @.d83, i32 0, i32 1) })
  br label %bb53
bb53:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l17, { i64, ptr } { i64 77, ptr getelementptr inbounds (<{ i64, [77 x i8] }>, ptr @.d84, i32 0, i32 1) })
  br label %bb54
bb54:
  %t210 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t210, ptr %l18, !tbaa !27
  store i64 0, ptr %l19, !tbaa !24
  %t212 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t214 = extractvalue { i64, ptr } %t212, 0
  store i64 %t214, ptr %l20, !tbaa !24
  br label %bb55
bb55:
  %t216 = load i64, ptr %l19, !tbaa !24
  %t217 = load i64, ptr %l20, !tbaa !24
  %t220 = icmp slt i64 %t216, %t217
  %t222 = xor i1 %t220, true
  br i1 %t222, label %bb56, label %bb57
bb56:
  br label %bb66
bb57:
  br label %bb58
bb58:
  %t224 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t224, ptr %l129, !tbaa !27
  %t225 = load i64, ptr %l19, !tbaa !24
  %t227 = getelementptr { i64, ptr }, ptr %l129, i32 0, i32 1
  %t228 = load ptr, ptr %t227, !tbaa !27
  %t229 = getelementptr i64, ptr %t228, i64 %t225
  %t230 = load i64, ptr %t229, !tbaa !34
  store i64 %t230, ptr %l21, !tbaa !24
  store ptr %l17, ptr %l132, !tbaa !29
  %t232 = load ptr, ptr %l0, !tbaa !29
  %t234 = getelementptr %"compiler/fetch:Fetcher", ptr %t232, i32 0, i32 6
  %t235 = load i64, ptr %l21, !tbaa !24
  %t238 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t234, i64 %t235)
  store { i64, ptr } %t238, ptr %l136
  br label %bb59
bb59:
  %t239 = load ptr, ptr %l132, !tbaa !29
  %t240 = load { i64, ptr }, ptr %l136, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v0, ptr %t239, { i64, ptr } %t240)
  br label %bb60
bb60:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l17, i8 32)
  br label %bb61
bb61:
  store ptr %l17, ptr %l138, !tbaa !29
  %t242 = load ptr, ptr %l0, !tbaa !29
  %t244 = getelementptr %"compiler/fetch:Fetcher", ptr %t242, i32 0, i32 7
  %t245 = load i64, ptr %l21, !tbaa !24
  %t248 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t244, i64 %t245)
  store { i64, ptr } %t248, ptr %l142
  br label %bb62
bb62:
  %t249 = load ptr, ptr %l138, !tbaa !29
  %t250 = load { i64, ptr }, ptr %l142, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v0, ptr %t249, { i64, ptr } %t250)
  br label %bb63
bb63:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l17, i8 10)
  br label %bb64
bb64:
  br label %bb65
bb65:
  %t252 = load i64, ptr %l19, !tbaa !24
  %t254 = add i64 %t252, 1
  store i64 %t254, ptr %l19, !tbaa !24
  br label %bb55
bb66:
  %t256 = load ptr, ptr %l0, !tbaa !29
  %t258 = getelementptr %"compiler/fetch:Fetcher", ptr %t256, i32 0, i32 0
  %t259 = load { i64, ptr }, ptr %t258, !tbaa !27
  store { i64, ptr } %t259, ptr %l147, !tbaa !27
  %t261 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %l17)
  store { i64, ptr } %t261, ptr %l149
  br label %bb67
bb67:
  %t262 = load { i64, ptr }, ptr %l149, !tbaa !27
  %t264 = extractvalue { i64, ptr } %t262, 0
  %t265 = extractvalue { i64, ptr } %t262, 1
  %t266 = mul i64 %t264, 1
  %t267 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t266)
  call void @llvm.memcpy.p0.p0.i64(ptr %t267, ptr %t265, i64 %t266, i1 false)
  %t268 = insertvalue { i64, ptr } undef, i64 %t264, 0
  %t269 = insertvalue { i64, ptr } %t268, ptr %t267, 1
  %t270 = load { i64, ptr }, ptr %l147, !tbaa !27
  %t272 = call i32 @std_2fos_2eWriteFile(ptr %v0, ptr %s0, { i64, ptr } %t270, { i64, ptr } %t269)
  store i32 %t272, ptr %l152
  %t273 = icmp ne i32 %t272, 0
  br i1 %t273, label %bb69, label %ok.274, !prof !99
ok.274:
  br label %bb68
bb68:
  br label %bb73
bb69:
  %t275 = load i32, ptr %l152, !tbaa !23
  %t276 = ashr i32 %t275, 16
  %t278 = icmp eq i32 %t276, 1
  store i1 %t278, ptr %l154, !tbaa !21
  %t279 = load i32, ptr %l152, !tbaa !23
  %t280 = ashr i32 %t279, 16
  %t282 = icmp eq i32 %t280, 1
  br i1 %t282, label %bb70, label %bb71
bb70:
  call void @__olang_errpay_pop()
  br label %bb71
bb71:
  br label %bb72
bb72:
  br label %bb73
bb73:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ffetch_2ecompiler_2ffetch_3aFetcher_2esay(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l9 = alloca i32
  %l11 = alloca i1
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/fetch:Fetcher", ptr %t1, i32 0, i32 9
  %t4 = load { i64, ptr }, ptr %l1, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %t3, { i64, ptr } %t4)
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/fetch:Fetcher", ptr %t7, i32 0, i32 4
  %t10 = load i1, ptr %t9, !tbaa !21
  %t12 = xor i1 %t10, true
  br i1 %t12, label %bb2, label %bb3
bb2:
  %t14 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t16 = call i32 @std_2fio_2ePrintErrln(ptr %v1, { i64, ptr } %t14)
  store i32 %t16, ptr %l9
  %t17 = icmp ne i32 %t16, 0
  br i1 %t17, label %bb5, label %ok.18, !prof !99
ok.18:
  br label %bb4
bb3:
  br label %bb10
bb4:
  br label %bb9
bb5:
  %t19 = load i32, ptr %l9, !tbaa !23
  %t20 = ashr i32 %t19, 16
  %t22 = icmp eq i32 %t20, 1
  store i1 %t22, ptr %l11, !tbaa !21
  %t23 = load i32, ptr %l9, !tbaa !23
  %t24 = ashr i32 %t23, 16
  %t26 = icmp eq i32 %t24, 1
  br i1 %t26, label %bb6, label %bb7
bb6:
  call void @__olang_errpay_pop()
  br label %bb7
bb7:
  br label %bb8
bb8:
  br label %bb9
bb9:
  br label %bb10
bb10:
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
  %t37 = load { i64, ptr }, ptr %l1, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %t36, { i64, ptr } %t37)
  br label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb16
bb16:
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
@.d17 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d18 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d19 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d20 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d21 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d22 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d23 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c".fetch-" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
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
