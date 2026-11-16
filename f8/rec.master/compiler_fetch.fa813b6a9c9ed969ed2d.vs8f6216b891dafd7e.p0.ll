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
  %l110 = alloca i1
  %l113 = alloca i1
  %l116 = alloca i1
  %l119 = alloca i1
  %l120 = alloca { i64, ptr }
  %l123 = alloca { i64, ptr }
  %l125 = alloca { i64, ptr }
  %l126 = alloca i64
  %l127 = alloca { i64, ptr }
  %l130 = alloca i1
  %l132 = alloca i1
  %l140 = alloca i1
  %l143 = alloca i32
  %l145 = alloca i1
  %l149 = alloca { i64, ptr }
  %l151 = alloca { i64, ptr }
  %l152 = alloca i32
  %l154 = alloca i1
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
  %l218 = alloca i32
  %l220 = alloca i1
  %l224 = alloca i32
  %l226 = alloca i1
  %l230 = alloca i32
  %l232 = alloca i1
  %l235 = alloca i32
  %l237 = alloca i32
  %l239 = alloca i1
  %l242 = alloca { i64, ptr }
  %l243 = alloca i64
  %l244 = alloca { i64, ptr }
  %l245 = alloca ptr
  %l246 = alloca i64
  %l256 = alloca { i64, ptr }
  %l261 = alloca i32
  %l263 = alloca i1
  %l266 = alloca { i64, ptr }
  %l271 = alloca { i64, ptr }
  %l272 = alloca i1
  %l274 = alloca { i64, ptr }
  %l275 = alloca { i64, ptr }
  %l278 = alloca i1
  %l280 = alloca i32
  %l282 = alloca i1
  %l285 = alloca i32
  %l290 = alloca i1
  %l292 = alloca i32
  %l294 = alloca i1
  %l299 = alloca i32
  %l301 = alloca i1
  %l305 = alloca i32
  %l307 = alloca i1
  %l310 = alloca i32
  %l318 = alloca i1
  %l320 = alloca i1
  %l322 = alloca i1
  %l323 = alloca ptr
  %l324 = alloca i64
  %l326 = alloca { i64, ptr }
  %l327 = alloca i64
  %l335 = alloca i1
  %l338 = alloca i1
  %l340 = alloca ptr
  %l341 = alloca i64
  %l343 = alloca { i64, ptr }
  %l344 = alloca i64
  %l348 = alloca { i64, ptr }
  %l349 = alloca i64
  %l357 = alloca ptr
  %l358 = alloca i64
  %l360 = alloca { i64, ptr }
  %l361 = alloca i64
  %l368 = alloca { i64, ptr }
  %l369 = alloca i64
  %l370 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %s21 = alloca %olang.scope
  %s24 = alloca %olang.scope
  %s28 = alloca %olang.scope
  %s30 = alloca %olang.scope
  %s37 = alloca %olang.scope
  %s44 = alloca %olang.scope
  %s45 = alloca %olang.scope
  %s54 = alloca %olang.scope
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
  store { i64, ptr } %t271, ptr %l13, !tbaa !27
  store i1 false, ptr %l14, !tbaa !21
  %t273 = load i1, ptr %l11, !tbaa !21
  br i1 %t273, label %bb49, label %bb50
bb49:
  %t275 = load ptr, ptr %l0, !tbaa !29
  %t277 = getelementptr %"compiler/fetch:Fetcher", ptr %t275, i32 0, i32 3
  %t278 = load i1, ptr %t277, !tbaa !21
  store i1 %t278, ptr %l110, !tbaa !21
  br label %bb51
bb50:
  store i1 false, ptr %l110, !tbaa !21
  br label %bb51
bb51:
  %t280 = load i1, ptr %l110, !tbaa !21
  br i1 %t280, label %bb52, label %bb53
bb52:
  %t281 = load ptr, ptr %l0, !tbaa !29
  %t282 = load ptr, ptr %lp8
  %t283 = load { i64, ptr }, ptr %t282, !tbaa !27
  %t286 = call i1 @compiler_2ffetch_2ecompiler_2ffetch_3aFetcher_2eupdatedNow(ptr %v0, ptr %v0, ptr %t281, { i64, ptr } %t283, i1 false)
  store i1 %t286, ptr %l116
  br label %bb54
bb53:
  store i1 false, ptr %l113, !tbaa !21
  br label %bb55
bb54:
  %t287 = load i1, ptr %l116, !tbaa !21
  %t288 = xor i1 %t287, true
  store i1 %t288, ptr %l113, !tbaa !21
  br label %bb55
bb55:
  %t290 = load i1, ptr %l113, !tbaa !21
  br i1 %t290, label %bb56, label %bb57
bb56:
  %t291 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t293 = call i1 @compiler_2ffetch_2eIsCommit(ptr %s0, { i64, ptr } %t291)
  store i1 %t293, ptr %l119
  br label %bb58
bb57:
  br label %bb64
bb58:
  %t294 = load i1, ptr %l119, !tbaa !21
  br i1 %t294, label %bb59, label %bb60
bb59:
  %t295 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t297 = extractvalue { i64, ptr } %t295, 1
  %t298 = extractvalue { i64, ptr } %t295, 0
  %t299 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t298)
  call void @olang_textcopy(ptr %t299, ptr %t297, i64 %t298)
  %t300 = insertvalue { i64, ptr } undef, i64 %t298, 0
  %t301 = insertvalue { i64, ptr } %t300, ptr %t299, 1
  store { i64, ptr } %t301, ptr %l120, !tbaa !27
  br label %bb61
bb60:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d21, i32 0, i32 1) }, ptr %l123, !tbaa !27
  %t303 = load { i64, ptr }, ptr %l123, !tbaa !27
  store { i64, ptr } %t303, ptr %l120, !tbaa !27
  br label %bb61
bb61:
  %t305 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t305, ptr %l125, !tbaa !27
  %t306 = load { i64, ptr }, ptr %l120, !tbaa !27
  %t307 = extractvalue { i64, ptr } %t306, 0
  store i64 %t307, ptr %l126, !tbaa !24
  %t308 = load i64, ptr %l126, !tbaa !24
  %t309 = mul i64 %t308, 1
  %t310 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t309)
  %t311 = insertvalue { i64, ptr } undef, i64 %t308, 0
  %t312 = insertvalue { i64, ptr } %t311, ptr %t310, 1
  store { i64, ptr } %t312, ptr %l127, !tbaa !27
  %t313 = getelementptr { i64, ptr }, ptr %l127, i32 0, i32 1
  %t314 = load ptr, ptr %t313, !tbaa !27
  %t315 = getelementptr { i64, ptr }, ptr %l120, i32 0, i32 1
  %t316 = load ptr, ptr %t315, !tbaa !27
  %t317 = load i64, ptr %l126, !tbaa !24
  %t318 = mul i64 %t317, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t314, ptr %t316, i64 %t318, i1 false)
  %t319 = load { i64, ptr }, ptr %l127, !tbaa !27
  store { i64, ptr } %t319, ptr %l13, !tbaa !27
  %t320 = load i1, ptr @olang_2esole_2ecompiler__2ffetch__2ecompiler__2ffetch__3aFetcher__2eFetch_2elocal_2e13
  br i1 %t320, label %bb62, label %bb63
bb62:
  %t322 = load { i64, ptr }, ptr %l125
  %t323 = extractvalue { i64, ptr } %t322, 1
  call void @__olang_region_release(ptr %t323)
  store { i64, ptr } zeroinitializer, ptr %l125
  br label %bb63
bb63:
  store i1 true, ptr %l14, !tbaa !21
  store i1 false, ptr %l11, !tbaa !21
  br label %bb64
bb64:
  %t324 = load i1, ptr %l11, !tbaa !21
  br i1 %t324, label %bb65, label %bb66
bb65:
  %t326 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t328 = call i1 @compiler_2ffetch_2eIsCommit(ptr %s0, { i64, ptr } %t326)
  store i1 %t328, ptr %l132
  br label %bb67
bb66:
  store i1 false, ptr %l130, !tbaa !21
  br label %bb68
bb67:
  %t329 = load i1, ptr %l132, !tbaa !21
  %t330 = xor i1 %t329, true
  store i1 %t330, ptr %l130, !tbaa !21
  br label %bb68
bb68:
  %t332 = load i1, ptr %l130, !tbaa !21
  br i1 %t332, label %bb69, label %bb70
bb69:
  call void @__olang_scope_close(ptr %s0)
  %t334 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65537, 0
  store { i32, { i64, ptr } } %t334, ptr %rv
  br label %ret
bb70:
  br label %bb71
bb71:
  %t335 = load i1, ptr %l11, !tbaa !21
  br i1 %t335, label %bb72, label %bb73
bb72:
  %t337 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t338 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t340 = extractvalue { i64, ptr } %t337, 1
  %t341 = extractvalue { i64, ptr } %t337, 0
  %t342 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t343 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  %t344 = add i64 %t341, %t343
  %t346 = extractvalue { i64, ptr } %t338, 1
  %t347 = extractvalue { i64, ptr } %t338, 0
  %t348 = add i64 %t344, %t347
  %t349 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t348)
  call void @olang_textcopy(ptr %t349, ptr %t340, i64 %t341)
  %t350 = getelementptr i8, ptr %t349, i64 %t341
  call void @olang_textcopy(ptr %t350, ptr %t342, i64 %t343)
  %t351 = getelementptr i8, ptr %t350, i64 %t343
  call void @olang_textcopy(ptr %t351, ptr %t346, i64 %t347)
  %t352 = insertvalue { i64, ptr } undef, i64 %t348, 0
  %t353 = insertvalue { i64, ptr } %t352, ptr %t349, 1
  %t354 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 16, i64 8)
  store ptr %t354, ptr %lp15
  %t356 = load ptr, ptr %lp15
  store { i64, ptr } %t353, ptr %t356, !tbaa !27
  %t357 = load ptr, ptr %lp15
  %t358 = load { i64, ptr }, ptr %t357, !tbaa !27
  %t360 = call i1 @std_2fos_2eIsDir(ptr %v4, { i64, ptr } %t358)
  store i1 %t360, ptr %l140
  br label %bb74
bb73:
  br label %bb78
bb74:
  %t361 = load i1, ptr %l140, !tbaa !21
  br i1 %t361, label %bb75, label %bb76
bb75:
  %t362 = load ptr, ptr %lp15
  %t363 = load { i64, ptr }, ptr %t362, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t365 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t363, 1
  store { i32, { i64, ptr } } %t365, ptr %rv
  br label %ret
bb76:
  br label %bb77
bb77:
  br label %bb78
bb78:
  %t366 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t368 = call i32 @std_2fos_2eMkDirAll(ptr %s0, { i64, ptr } %t366)
  store i32 %t368, ptr %l143
  %t369 = icmp ne i32 %t368, 0
  br i1 %t369, label %bb80, label %ok.370, !prof !99
ok.370:
  br label %bb79
bb79:
  br label %bb84
bb80:
  %t371 = load i32, ptr %l143, !tbaa !23
  %t372 = ashr i32 %t371, 16
  %t374 = icmp eq i32 %t372, 1
  store i1 %t374, ptr %l145, !tbaa !21
  %t375 = load i32, ptr %l143, !tbaa !23
  %t376 = ashr i32 %t375, 16
  %t378 = icmp eq i32 %t376, 1
  br i1 %t378, label %bb81, label %bb82
bb81:
  call void @__olang_errpay_pop()
  br label %bb82
bb82:
  br label %bb83
bb83:
  call void @__olang_scope_close(ptr %s0)
  %t381 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65538, 0
  store { i32, { i64, ptr } } %t381, ptr %rv
  br label %ret
bb84:
  %t382 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t384 = call { i32, { i64, ptr } } @std_2fos_2eMkTemp(ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t382, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d23, i32 0, i32 1) })
  %t385 = extractvalue { i32, { i64, ptr } } %t384, 1
  %t386 = extractvalue { i32, { i64, ptr } } %t384, 0
  store i32 %t386, ptr %l152
  %t387 = icmp ne i32 %t386, 0
  br i1 %t387, label %bb86, label %ok.388, !prof !99
ok.388:
  store { i64, ptr } %t385, ptr %l151
  br label %bb85
bb85:
  %t389 = load { i64, ptr }, ptr %l151, !tbaa !27
  store { i64, ptr } %t389, ptr %l149, !tbaa !27
  br label %bb90
bb86:
  %t390 = load i32, ptr %l152, !tbaa !23
  %t391 = ashr i32 %t390, 16
  %t393 = icmp eq i32 %t391, 1
  store i1 %t393, ptr %l154, !tbaa !21
  %t394 = load i32, ptr %l152, !tbaa !23
  %t395 = ashr i32 %t394, 16
  %t397 = icmp eq i32 %t395, 1
  br i1 %t397, label %bb87, label %bb88
bb87:
  call void @__olang_errpay_pop()
  br label %bb88
bb88:
  br label %bb89
bb89:
  call void @__olang_scope_close(ptr %s0)
  %t400 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65538, 0
  store { i32, { i64, ptr } } %t400, ptr %rv
  br label %ret
bb90:
  %t401 = load { i64, ptr }, ptr %l149, !tbaa !27
  store { i64, ptr } %t401, ptr %l16, !tbaa !27
  %t402 = load ptr, ptr %lp8
  %t403 = load { i64, ptr }, ptr %t402, !tbaa !27
  %t404 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d24, i32 0, i32 1) }, 1
  %t405 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d24, i32 0, i32 1) }, 0
  %t407 = extractvalue { i64, ptr } %t403, 1
  %t408 = extractvalue { i64, ptr } %t403, 0
  %t409 = add i64 %t405, %t408
  %t410 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t409)
  call void @olang_textcopy(ptr %t410, ptr %t404, i64 %t405)
  %t411 = getelementptr i8, ptr %t410, i64 %t405
  call void @olang_textcopy(ptr %t411, ptr %t407, i64 %t408)
  %t412 = insertvalue { i64, ptr } undef, i64 %t409, 0
  %t413 = insertvalue { i64, ptr } %t412, ptr %t410, 1
  %t415 = extractvalue { i64, ptr } %t413, 0
  %t416 = extractvalue { i64, ptr } %t413, 1
  %t417 = mul i64 %t415, 1
  %t418 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t417)
  call void @llvm.memcpy.p0.p0.i64(ptr %t418, ptr %t416, i64 %t417, i1 false)
  %t419 = insertvalue { i64, ptr } undef, i64 %t415, 0
  %t420 = insertvalue { i64, ptr } %t419, ptr %t418, 1
  call void @compiler_2fspin_2eRetitle(ptr %s0, { i64, ptr } %t420)
  br label %bb91
bb91:
  %t422 = load i1, ptr %l11, !tbaa !21
  br i1 %t422, label %bb92, label %bb93
bb92:
  store %olang.scope zeroinitializer, ptr %s16
  %t424 = load ptr, ptr %l0, !tbaa !29
  store ptr %t424, ptr %l162, !tbaa !29
  %t425 = ptrtoint ptr %v0 to i64
  store i64 %t425, ptr %l163, !tbaa !24
  %t426 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t426, label %bb94, label %bb95
bb93:
  br label %bb162
bb94:
  %t428 = call ptr @__olang_region_make(ptr %v0)
  %t429 = ptrtoint ptr %t428 to i64
  store i64 %t429, ptr %l163, !tbaa !24
  br label %bb95
bb95:
  %t430 = load ptr, ptr %lp8
  %t431 = load { i64, ptr }, ptr %t430, !tbaa !27
  store { i64, ptr } %t431, ptr %l165, !tbaa !27
  %t432 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t432, ptr %l166, !tbaa !27
  %t433 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t434 = extractvalue { i64, ptr } %t433, 0
  store i64 %t434, ptr %l167, !tbaa !24
  %t435 = icmp sge i64 0, 0
  br i1 %t435, label %bb96, label %bb97
bb96:
  %t437 = icmp sle i64 0, 12
  br i1 %t437, label %bb98, label %bb99
bb97:
  call void @__olang_check_failed(ptr @olang_loc_45f2c25416d44418_72b8f662ae75c904)
  unreachable
bb98:
  %t439 = load i64, ptr %l167, !tbaa !24
  %t440 = icmp sle i64 12, %t439
  br i1 %t440, label %bb100, label %bb101
bb99:
  call void @__olang_check_failed(ptr @olang_loc_45f2c25416d44418_72b8f662ae75c904)
  unreachable
bb100:
  %t442 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t443 = load ptr, ptr %t442, !tbaa !27
  %t444 = getelementptr i8, ptr %t443, i64 0
  %t445 = sub i64 12, 0
  %t446 = insertvalue { i64, ptr } undef, i64 %t445, 0
  %t447 = insertvalue { i64, ptr } %t446, ptr %t444, 1
  %t448 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t449 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d25, i32 0, i32 1) }, 0
  %t450 = load { i64, ptr }, ptr %l165, !tbaa !27
  %t451 = extractvalue { i64, ptr } %t450, 1
  %t452 = extractvalue { i64, ptr } %t450, 0
  %t453 = add i64 %t449, %t452
  %t454 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t455 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  %t456 = add i64 %t453, %t455
  %t457 = load { i64, ptr }, ptr %l166, !tbaa !27
  %t458 = extractvalue { i64, ptr } %t457, 1
  %t459 = extractvalue { i64, ptr } %t457, 0
  %t460 = add i64 %t456, %t459
  %t461 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t462 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  %t463 = add i64 %t460, %t462
  %t465 = extractvalue { i64, ptr } %t447, 1
  %t466 = extractvalue { i64, ptr } %t447, 0
  %t467 = add i64 %t463, %t466
  %t468 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t469 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  %t470 = add i64 %t467, %t469
  %t471 = load i64, ptr %l163
  %t472 = inttoptr i64 %t471 to ptr
  %t473 = call ptr @__olang_scope_alloc(ptr %t472, i64 %t470)
  call void @olang_textcopy(ptr %t473, ptr %t448, i64 %t449)
  %t474 = getelementptr i8, ptr %t473, i64 %t449
  call void @olang_textcopy(ptr %t474, ptr %t451, i64 %t452)
  %t475 = getelementptr i8, ptr %t474, i64 %t452
  call void @olang_textcopy(ptr %t475, ptr %t454, i64 %t455)
  %t476 = getelementptr i8, ptr %t475, i64 %t455
  call void @olang_textcopy(ptr %t476, ptr %t458, i64 %t459)
  %t477 = getelementptr i8, ptr %t476, i64 %t459
  call void @olang_textcopy(ptr %t477, ptr %t461, i64 %t462)
  %t478 = getelementptr i8, ptr %t477, i64 %t462
  call void @olang_textcopy(ptr %t478, ptr %t465, i64 %t466)
  %t479 = getelementptr i8, ptr %t478, i64 %t466
  call void @olang_textcopy(ptr %t479, ptr %t468, i64 %t469)
  %t480 = insertvalue { i64, ptr } undef, i64 %t470, 0
  %t481 = insertvalue { i64, ptr } %t480, ptr %t473, 1
  %t483 = load i64, ptr %l163
  %t484 = inttoptr i64 %t483 to ptr
  %t485 = extractvalue { i64, ptr } %t481, 0
  %t486 = extractvalue { i64, ptr } %t481, 1
  %t487 = mul i64 %t485, 1
  %t488 = call ptr @__olang_scope_alloc(ptr %t484, i64 %t487)
  call void @llvm.memcpy.p0.p0.i64(ptr %t488, ptr %t486, i64 %t487, i1 false)
  %t489 = insertvalue { i64, ptr } undef, i64 %t485, 0
  %t490 = insertvalue { i64, ptr } %t489, ptr %t488, 1
  %t491 = load ptr, ptr %l162, !tbaa !29
  call void @compiler_2ffetch_2ecompiler_2ffetch_3aFetcher_2esay(ptr %v0, ptr %v0, ptr %t491, { i64, ptr } %t490)
  br label %bb102
bb101:
  call void @__olang_check_failed(ptr @olang_loc_45f2c25416d44418_72b8f662ae75c904)
  unreachable
bb102:
  %t493 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t494 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t496 = extractvalue { i64, ptr } %t493, 1
  %t497 = extractvalue { i64, ptr } %t493, 0
  %t498 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d29, i32 0, i32 1) }, 1
  %t499 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d29, i32 0, i32 1) }, 0
  %t500 = add i64 %t497, %t499
  %t502 = extractvalue { i64, ptr } %t494, 1
  %t503 = extractvalue { i64, ptr } %t494, 0
  %t504 = add i64 %t500, %t503
  %t505 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t504)
  call void @olang_textcopy(ptr %t505, ptr %t496, i64 %t497)
  %t506 = getelementptr i8, ptr %t505, i64 %t497
  call void @olang_textcopy(ptr %t506, ptr %t498, i64 %t499)
  %t507 = getelementptr i8, ptr %t506, i64 %t499
  call void @olang_textcopy(ptr %t507, ptr %t502, i64 %t503)
  %t508 = insertvalue { i64, ptr } undef, i64 %t504, 0
  %t509 = insertvalue { i64, ptr } %t508, ptr %t505, 1
  %t510 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 16, i64 8)
  store ptr %t510, ptr %lp17
  %t512 = load ptr, ptr %lp17
  store { i64, ptr } %t509, ptr %t512, !tbaa !27
  %t513 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t514 = mul i64 4, 16
  %t515 = call ptr @__olang_scope_alloc_zeroed(ptr %s16, i64 %t514)
  %t516 = insertvalue { i64, ptr } undef, i64 4, 0
  %t517 = insertvalue { i64, ptr } %t516, ptr %t515, 1
  store { i64, ptr } %t517, ptr %l178, !tbaa !27
  %t518 = getelementptr { i64, ptr }, ptr %l178, i32 0, i32 1
  %t519 = load ptr, ptr %t518, !tbaa !27
  %t520 = getelementptr { i64, ptr }, ptr %t519, i64 0
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d30, i32 0, i32 1) }, ptr %t520, !tbaa !37
  %t521 = getelementptr { i64, ptr }, ptr %l178, i32 0, i32 1
  %t522 = load ptr, ptr %t521, !tbaa !27
  %t523 = getelementptr { i64, ptr }, ptr %t522, i64 1
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d31, i32 0, i32 1) }, ptr %t523, !tbaa !37
  %t524 = getelementptr { i64, ptr }, ptr %l178, i32 0, i32 1
  %t525 = load ptr, ptr %t524, !tbaa !27
  %t526 = getelementptr { i64, ptr }, ptr %t525, i64 2
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d32, i32 0, i32 1) }, ptr %t526, !tbaa !37
  %t528 = getelementptr { i64, ptr }, ptr %l178, i32 0, i32 1
  %t529 = load ptr, ptr %t528, !tbaa !27
  %t530 = getelementptr { i64, ptr }, ptr %t529, i64 3
  store { i64, ptr } %t513, ptr %t530, !tbaa !37
  %t531 = load { i64, ptr }, ptr %l178, !tbaa !27
  %t532 = call i1 @compiler_2ffetch_2egit(ptr %s16, { i64, ptr } %t531)
  store i1 %t532, ptr %l179
  br label %bb103
bb103:
  %t533 = load i1, ptr %l179, !tbaa !21
  br i1 %t533, label %bb104, label %bb105
bb104:
  %t534 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t535 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t536 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t537 = mul i64 10, 16
  %t538 = call ptr @__olang_scope_alloc_zeroed(ptr %s16, i64 %t537)
  %t539 = insertvalue { i64, ptr } undef, i64 10, 0
  %t540 = insertvalue { i64, ptr } %t539, ptr %t538, 1
  store { i64, ptr } %t540, ptr %l184, !tbaa !27
  %t541 = getelementptr { i64, ptr }, ptr %l184, i32 0, i32 1
  %t542 = load ptr, ptr %t541, !tbaa !27
  %t543 = getelementptr { i64, ptr }, ptr %t542, i64 0
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d33, i32 0, i32 1) }, ptr %t543, !tbaa !37
  %t544 = getelementptr { i64, ptr }, ptr %l184, i32 0, i32 1
  %t545 = load ptr, ptr %t544, !tbaa !27
  %t546 = getelementptr { i64, ptr }, ptr %t545, i64 1
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d34, i32 0, i32 1) }, ptr %t546, !tbaa !37
  %t548 = getelementptr { i64, ptr }, ptr %l184, i32 0, i32 1
  %t549 = load ptr, ptr %t548, !tbaa !27
  %t550 = getelementptr { i64, ptr }, ptr %t549, i64 2
  store { i64, ptr } %t534, ptr %t550, !tbaa !37
  %t551 = getelementptr { i64, ptr }, ptr %l184, i32 0, i32 1
  %t552 = load ptr, ptr %t551, !tbaa !27
  %t553 = getelementptr { i64, ptr }, ptr %t552, i64 3
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d35, i32 0, i32 1) }, ptr %t553, !tbaa !37
  %t554 = getelementptr { i64, ptr }, ptr %l184, i32 0, i32 1
  %t555 = load ptr, ptr %t554, !tbaa !27
  %t556 = getelementptr { i64, ptr }, ptr %t555, i64 4
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d36, i32 0, i32 1) }, ptr %t556, !tbaa !37
  %t557 = getelementptr { i64, ptr }, ptr %l184, i32 0, i32 1
  %t558 = load ptr, ptr %t557, !tbaa !27
  %t559 = getelementptr { i64, ptr }, ptr %t558, i64 5
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d37, i32 0, i32 1) }, ptr %t559, !tbaa !37
  %t560 = getelementptr { i64, ptr }, ptr %l184, i32 0, i32 1
  %t561 = load ptr, ptr %t560, !tbaa !27
  %t562 = getelementptr { i64, ptr }, ptr %t561, i64 6
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d38, i32 0, i32 1) }, ptr %t562, !tbaa !37
  %t563 = getelementptr { i64, ptr }, ptr %l184, i32 0, i32 1
  %t564 = load ptr, ptr %t563, !tbaa !27
  %t565 = getelementptr { i64, ptr }, ptr %t564, i64 7
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d39, i32 0, i32 1) }, ptr %t565, !tbaa !37
  %t567 = getelementptr { i64, ptr }, ptr %l184, i32 0, i32 1
  %t568 = load ptr, ptr %t567, !tbaa !27
  %t569 = getelementptr { i64, ptr }, ptr %t568, i64 8
  store { i64, ptr } %t535, ptr %t569, !tbaa !37
  %t571 = getelementptr { i64, ptr }, ptr %l184, i32 0, i32 1
  %t572 = load ptr, ptr %t571, !tbaa !27
  %t573 = getelementptr { i64, ptr }, ptr %t572, i64 9
  store { i64, ptr } %t536, ptr %t573, !tbaa !37
  %t574 = load { i64, ptr }, ptr %l184, !tbaa !27
  %t575 = call i1 @compiler_2ffetch_2egit(ptr %s16, { i64, ptr } %t574)
  store i1 %t575, ptr %l185
  br label %bb106
bb105:
  store i1 false, ptr %l180, !tbaa !21
  br label %bb107
bb106:
  %t576 = load i1, ptr %l185, !tbaa !21
  store i1 %t576, ptr %l180, !tbaa !21
  br label %bb107
bb107:
  %t577 = load i1, ptr %l180, !tbaa !21
  br i1 %t577, label %bb108, label %bb109
bb108:
  %t578 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t579 = mul i64 6, 16
  %t580 = call ptr @__olang_scope_alloc_zeroed(ptr %s16, i64 %t579)
  %t581 = insertvalue { i64, ptr } undef, i64 6, 0
  %t582 = insertvalue { i64, ptr } %t581, ptr %t580, 1
  store { i64, ptr } %t582, ptr %l188, !tbaa !27
  %t583 = getelementptr { i64, ptr }, ptr %l188, i32 0, i32 1
  %t584 = load ptr, ptr %t583, !tbaa !27
  %t585 = getelementptr { i64, ptr }, ptr %t584, i64 0
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d40, i32 0, i32 1) }, ptr %t585, !tbaa !37
  %t586 = getelementptr { i64, ptr }, ptr %l188, i32 0, i32 1
  %t587 = load ptr, ptr %t586, !tbaa !27
  %t588 = getelementptr { i64, ptr }, ptr %t587, i64 1
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d41, i32 0, i32 1) }, ptr %t588, !tbaa !37
  %t590 = getelementptr { i64, ptr }, ptr %l188, i32 0, i32 1
  %t591 = load ptr, ptr %t590, !tbaa !27
  %t592 = getelementptr { i64, ptr }, ptr %t591, i64 2
  store { i64, ptr } %t578, ptr %t592, !tbaa !37
  %t593 = getelementptr { i64, ptr }, ptr %l188, i32 0, i32 1
  %t594 = load ptr, ptr %t593, !tbaa !27
  %t595 = getelementptr { i64, ptr }, ptr %t594, i64 3
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d42, i32 0, i32 1) }, ptr %t595, !tbaa !37
  %t596 = getelementptr { i64, ptr }, ptr %l188, i32 0, i32 1
  %t597 = load ptr, ptr %t596, !tbaa !27
  %t598 = getelementptr { i64, ptr }, ptr %t597, i64 4
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d43, i32 0, i32 1) }, ptr %t598, !tbaa !37
  %t599 = getelementptr { i64, ptr }, ptr %l188, i32 0, i32 1
  %t600 = load ptr, ptr %t599, !tbaa !27
  %t601 = getelementptr { i64, ptr }, ptr %t600, i64 5
  store { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d44, i32 0, i32 1) }, ptr %t601, !tbaa !37
  %t602 = load { i64, ptr }, ptr %l188, !tbaa !27
  %t603 = call i1 @compiler_2ffetch_2egit(ptr %s16, { i64, ptr } %t602)
  store i1 %t603, ptr %l189
  br label %bb110
bb109:
  store i1 false, ptr %l186, !tbaa !21
  br label %bb111
bb110:
  %t604 = load i1, ptr %l189, !tbaa !21
  store i1 %t604, ptr %l186, !tbaa !21
  br label %bb111
bb111:
  %t605 = load i1, ptr %l186, !tbaa !21
  %t608 = xor i1 %t605, true
  br i1 %t608, label %bb112, label %bb113
bb112:
  store %olang.scope zeroinitializer, ptr %s19
  %t610 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t612 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t610)
  store i32 %t612, ptr %l193
  %t613 = icmp ne i32 %t612, 0
  br i1 %t613, label %bb115, label %ok.614, !prof !99
ok.614:
  br label %bb114
bb113:
  br label %bb125
bb114:
  br label %bb119
bb115:
  %t615 = load i32, ptr %l193, !tbaa !23
  %t616 = ashr i32 %t615, 16
  %t618 = icmp eq i32 %t616, 1
  store i1 %t618, ptr %l195, !tbaa !21
  %t619 = load i32, ptr %l193, !tbaa !23
  %t620 = ashr i32 %t619, 16
  %t622 = icmp eq i32 %t620, 1
  br i1 %t622, label %bb116, label %bb117
bb116:
  call void @__olang_errpay_pop()
  br label %bb117
bb117:
  br label %bb118
bb118:
  br label %bb119
bb119:
  %t624 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t625 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t626 = mul i64 6, 16
  %t627 = call ptr @__olang_scope_alloc_zeroed(ptr %s19, i64 %t626)
  %t628 = insertvalue { i64, ptr } undef, i64 6, 0
  %t629 = insertvalue { i64, ptr } %t628, ptr %t627, 1
  store { i64, ptr } %t629, ptr %l200, !tbaa !27
  %t630 = getelementptr { i64, ptr }, ptr %l200, i32 0, i32 1
  %t631 = load ptr, ptr %t630, !tbaa !27
  %t632 = getelementptr { i64, ptr }, ptr %t631, i64 0
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d45, i32 0, i32 1) }, ptr %t632, !tbaa !37
  %t633 = getelementptr { i64, ptr }, ptr %l200, i32 0, i32 1
  %t634 = load ptr, ptr %t633, !tbaa !27
  %t635 = getelementptr { i64, ptr }, ptr %t634, i64 1
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d46, i32 0, i32 1) }, ptr %t635, !tbaa !37
  %t636 = getelementptr { i64, ptr }, ptr %l200, i32 0, i32 1
  %t637 = load ptr, ptr %t636, !tbaa !27
  %t638 = getelementptr { i64, ptr }, ptr %t637, i64 2
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d47, i32 0, i32 1) }, ptr %t638, !tbaa !37
  %t639 = getelementptr { i64, ptr }, ptr %l200, i32 0, i32 1
  %t640 = load ptr, ptr %t639, !tbaa !27
  %t641 = getelementptr { i64, ptr }, ptr %t640, i64 3
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d48, i32 0, i32 1) }, ptr %t641, !tbaa !37
  %t643 = getelementptr { i64, ptr }, ptr %l200, i32 0, i32 1
  %t644 = load ptr, ptr %t643, !tbaa !27
  %t645 = getelementptr { i64, ptr }, ptr %t644, i64 4
  store { i64, ptr } %t624, ptr %t645, !tbaa !37
  %t647 = getelementptr { i64, ptr }, ptr %l200, i32 0, i32 1
  %t648 = load ptr, ptr %t647, !tbaa !27
  %t649 = getelementptr { i64, ptr }, ptr %t648, i64 5
  store { i64, ptr } %t625, ptr %t649, !tbaa !37
  %t650 = load { i64, ptr }, ptr %l200, !tbaa !27
  %t651 = call i1 @compiler_2ffetch_2egit(ptr %s19, { i64, ptr } %t650)
  store i1 %t651, ptr %l201
  br label %bb120
bb120:
  %t652 = load i1, ptr %l201, !tbaa !21
  br i1 %t652, label %bb121, label %bb122
bb121:
  store %olang.scope zeroinitializer, ptr %s21
  %t653 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t654 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t655 = mul i64 6, 16
  %t656 = call ptr @__olang_scope_alloc_zeroed(ptr %s21, i64 %t655)
  %t657 = insertvalue { i64, ptr } undef, i64 6, 0
  %t658 = insertvalue { i64, ptr } %t657, ptr %t656, 1
  store { i64, ptr } %t658, ptr %l204, !tbaa !27
  %t659 = getelementptr { i64, ptr }, ptr %l204, i32 0, i32 1
  %t660 = load ptr, ptr %t659, !tbaa !27
  %t661 = getelementptr { i64, ptr }, ptr %t660, i64 0
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d49, i32 0, i32 1) }, ptr %t661, !tbaa !37
  %t662 = getelementptr { i64, ptr }, ptr %l204, i32 0, i32 1
  %t663 = load ptr, ptr %t662, !tbaa !27
  %t664 = getelementptr { i64, ptr }, ptr %t663, i64 1
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d50, i32 0, i32 1) }, ptr %t664, !tbaa !37
  %t666 = getelementptr { i64, ptr }, ptr %l204, i32 0, i32 1
  %t667 = load ptr, ptr %t666, !tbaa !27
  %t668 = getelementptr { i64, ptr }, ptr %t667, i64 2
  store { i64, ptr } %t653, ptr %t668, !tbaa !37
  %t669 = getelementptr { i64, ptr }, ptr %l204, i32 0, i32 1
  %t670 = load ptr, ptr %t669, !tbaa !27
  %t671 = getelementptr { i64, ptr }, ptr %t670, i64 3
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d51, i32 0, i32 1) }, ptr %t671, !tbaa !37
  %t672 = getelementptr { i64, ptr }, ptr %l204, i32 0, i32 1
  %t673 = load ptr, ptr %t672, !tbaa !27
  %t674 = getelementptr { i64, ptr }, ptr %t673, i64 4
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d52, i32 0, i32 1) }, ptr %t674, !tbaa !37
  %t676 = getelementptr { i64, ptr }, ptr %l204, i32 0, i32 1
  %t677 = load ptr, ptr %t676, !tbaa !27
  %t678 = getelementptr { i64, ptr }, ptr %t677, i64 5
  store { i64, ptr } %t654, ptr %t678, !tbaa !37
  %t679 = load { i64, ptr }, ptr %l204, !tbaa !27
  %t680 = call i1 @compiler_2ffetch_2egit(ptr %s21, { i64, ptr } %t679)
  store i1 %t680, ptr %l205
  br label %bb123
bb122:
  br label %bb124
bb123:
  call void @__olang_scope_close(ptr %s21)
  br label %bb124
bb124:
  call void @__olang_scope_close(ptr %s19)
  br label %bb125
bb125:
  %t681 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t683 = call { i64, ptr } @compiler_2ffetch_2ehead(ptr %s0, ptr %s16, { i64, ptr } %t681)
  store { i64, ptr } %t683, ptr %l207
  br label %bb126
bb126:
  %t684 = load { i64, ptr }, ptr %l207, !tbaa !27
  %t685 = extractvalue { i64, ptr } %t684, 0
  %t686 = extractvalue { i64, ptr } %t684, 1
  %t687 = mul i64 %t685, 1
  %t688 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t687)
  call void @llvm.memcpy.p0.p0.i64(ptr %t688, ptr %t686, i64 %t687, i1 false)
  %t689 = insertvalue { i64, ptr } undef, i64 %t685, 0
  %t690 = insertvalue { i64, ptr } %t689, ptr %t688, 1
  %t691 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t694 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s16, ptr %s0, { i64, ptr } %t690, { i64, ptr } %t691)
  store i1 %t694, ptr %l210
  br label %bb127
bb127:
  %t695 = load i1, ptr %l210, !tbaa !21
  %t696 = xor i1 %t695, true
  br i1 %t696, label %bb128, label %bb129
bb128:
  %t698 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t700 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t698)
  store i32 %t700, ptr %l213
  %t701 = icmp ne i32 %t700, 0
  br i1 %t701, label %bb131, label %ok.702, !prof !99
ok.702:
  br label %bb130
bb129:
  br label %bb137
bb130:
  br label %bb135
bb131:
  %t703 = load i32, ptr %l213, !tbaa !23
  %t704 = ashr i32 %t703, 16
  %t706 = icmp eq i32 %t704, 1
  store i1 %t706, ptr %l215, !tbaa !21
  %t707 = load i32, ptr %l213, !tbaa !23
  %t708 = ashr i32 %t707, 16
  %t710 = icmp eq i32 %t708, 1
  br i1 %t710, label %bb132, label %bb133
bb132:
  call void @__olang_errpay_pop()
  br label %bb133
bb133:
  br label %bb134
bb134:
  br label %bb135
bb135:
  store i32 65539, ptr %l218, !tbaa !23
  call void @__olang_scope_close(ptr %s16)
  store %olang.scope zeroinitializer, ptr %s24
  call void @compiler_2fspin_2eRetitle(ptr %s24, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d53, i32 0, i32 1) })
  br label %bb136
bb136:
  call void @__olang_scope_close(ptr %s24)
  call void @__olang_scope_close(ptr %s0)
  %t712 = load i32, ptr %l218, !tbaa !23
  %t713 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t712, 0
  store { i32, { i64, ptr } } %t713, ptr %rv
  br label %ret
bb137:
  %t714 = load ptr, ptr %lp17
  %t715 = load { i64, ptr }, ptr %t714, !tbaa !27
  %t717 = call i1 @std_2fos_2eIsDir(ptr %v4, { i64, ptr } %t715)
  store i1 %t717, ptr %l220
  br label %bb138
bb138:
  %t718 = load i1, ptr %l220, !tbaa !21
  %t719 = xor i1 %t718, true
  br i1 %t719, label %bb139, label %bb140
bb139:
  %t721 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t722 = load ptr, ptr %lp17
  %t723 = load { i64, ptr }, ptr %t722, !tbaa !27
  %t726 = call i32 @std_2fos_2eRename(ptr %s0, ptr %v4, { i64, ptr } %t721, { i64, ptr } %t723)
  store i32 %t726, ptr %l224
  %t727 = icmp ne i32 %t726, 0
  br i1 %t727, label %bb142, label %ok.728, !prof !99
ok.728:
  br label %bb141
bb140:
  br label %bb154
bb141:
  br label %bb153
bb142:
  %t729 = load i32, ptr %l224, !tbaa !23
  %t730 = ashr i32 %t729, 16
  %t732 = icmp eq i32 %t730, 1
  store i1 %t732, ptr %l226, !tbaa !21
  %t733 = load i32, ptr %l224, !tbaa !23
  %t734 = ashr i32 %t733, 16
  %t736 = icmp eq i32 %t734, 1
  br i1 %t736, label %bb143, label %bb144
bb143:
  call void @__olang_errpay_pop()
  br label %bb144
bb144:
  br label %bb145
bb145:
  %t738 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t740 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t738)
  store i32 %t740, ptr %l230
  %t741 = icmp ne i32 %t740, 0
  br i1 %t741, label %bb147, label %ok.742, !prof !99
ok.742:
  br label %bb146
bb146:
  br label %bb151
bb147:
  %t743 = load i32, ptr %l230, !tbaa !23
  %t744 = ashr i32 %t743, 16
  %t746 = icmp eq i32 %t744, 1
  store i1 %t746, ptr %l232, !tbaa !21
  %t747 = load i32, ptr %l230, !tbaa !23
  %t748 = ashr i32 %t747, 16
  %t750 = icmp eq i32 %t748, 1
  br i1 %t750, label %bb148, label %bb149
bb148:
  call void @__olang_errpay_pop()
  br label %bb149
bb149:
  br label %bb150
bb150:
  br label %bb151
bb151:
  store i32 65539, ptr %l235, !tbaa !23
  call void @__olang_scope_close(ptr %s16)
  store %olang.scope zeroinitializer, ptr %s28
  call void @compiler_2fspin_2eRetitle(ptr %s28, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d53, i32 0, i32 1) })
  br label %bb152
bb152:
  call void @__olang_scope_close(ptr %s28)
  call void @__olang_scope_close(ptr %s0)
  %t752 = load i32, ptr %l235, !tbaa !23
  %t753 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t752, 0
  store { i32, { i64, ptr } } %t753, ptr %rv
  br label %ret
bb153:
  br label %bb154
bb154:
  %t754 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t756 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t754)
  store i32 %t756, ptr %l237
  %t757 = icmp ne i32 %t756, 0
  br i1 %t757, label %bb156, label %ok.758, !prof !99
ok.758:
  br label %bb155
bb155:
  br label %bb160
bb156:
  %t759 = load i32, ptr %l237, !tbaa !23
  %t760 = ashr i32 %t759, 16
  %t762 = icmp eq i32 %t760, 1
  store i1 %t762, ptr %l239, !tbaa !21
  %t763 = load i32, ptr %l237, !tbaa !23
  %t764 = ashr i32 %t763, 16
  %t766 = icmp eq i32 %t764, 1
  br i1 %t766, label %bb157, label %bb158
bb157:
  call void @__olang_errpay_pop()
  br label %bb158
bb158:
  br label %bb159
bb159:
  br label %bb160
bb160:
  %t768 = load ptr, ptr %lp17
  %t769 = load { i64, ptr }, ptr %t768, !tbaa !27
  store { i64, ptr } %t769, ptr %l242, !tbaa !27
  %t770 = load { i64, ptr }, ptr %l242, !tbaa !27
  %t771 = extractvalue { i64, ptr } %t770, 0
  store i64 %t771, ptr %l243, !tbaa !24
  %t772 = load i64, ptr %l243, !tbaa !24
  %t773 = mul i64 %t772, 1
  %t774 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t773)
  %t775 = insertvalue { i64, ptr } undef, i64 %t772, 0
  %t776 = insertvalue { i64, ptr } %t775, ptr %t774, 1
  store { i64, ptr } %t776, ptr %l244, !tbaa !27
  %t777 = getelementptr { i64, ptr }, ptr %l244, i32 0, i32 1
  %t778 = load ptr, ptr %t777, !tbaa !27
  %t779 = getelementptr { i64, ptr }, ptr %l242, i32 0, i32 1
  %t780 = load ptr, ptr %t779, !tbaa !27
  %t781 = load i64, ptr %l243, !tbaa !24
  %t782 = mul i64 %t781, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t778, ptr %t780, i64 %t782, i1 false)
  %t783 = load { i64, ptr }, ptr %l244, !tbaa !27
  store { i64, ptr } %t783, ptr %l242, !tbaa !27
  call void @__olang_scope_close(ptr %s16)
  store %olang.scope zeroinitializer, ptr %s30
  call void @compiler_2fspin_2eRetitle(ptr %s30, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d53, i32 0, i32 1) })
  br label %bb161
bb161:
  call void @__olang_scope_close(ptr %s30)
  call void @__olang_scope_close(ptr %s0)
  %t784 = load { i64, ptr }, ptr %l242, !tbaa !27
  %t785 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t784, 1
  store { i32, { i64, ptr } } %t785, ptr %rv
  br label %ret
bb162:
  %t786 = load ptr, ptr %l0, !tbaa !29
  store ptr %t786, ptr %l245, !tbaa !29
  %t787 = ptrtoint ptr %v0 to i64
  store i64 %t787, ptr %l246, !tbaa !24
  %t788 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t788, label %bb163, label %bb164
bb163:
  %t790 = call ptr @__olang_region_make(ptr %v0)
  %t791 = ptrtoint ptr %t790 to i64
  store i64 %t791, ptr %l246, !tbaa !24
  br label %bb164
bb164:
  %t792 = load ptr, ptr %lp8
  %t793 = load { i64, ptr }, ptr %t792, !tbaa !27
  %t794 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t795 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d54, i32 0, i32 1) }, 1
  %t796 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d54, i32 0, i32 1) }, 0
  %t798 = extractvalue { i64, ptr } %t793, 1
  %t799 = extractvalue { i64, ptr } %t793, 0
  %t800 = add i64 %t796, %t799
  %t801 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d55, i32 0, i32 1) }, 1
  %t802 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d55, i32 0, i32 1) }, 0
  %t803 = add i64 %t800, %t802
  %t805 = extractvalue { i64, ptr } %t794, 1
  %t806 = extractvalue { i64, ptr } %t794, 0
  %t807 = add i64 %t803, %t806
  %t808 = load i64, ptr %l246
  %t809 = inttoptr i64 %t808 to ptr
  %t810 = call ptr @__olang_scope_alloc(ptr %t809, i64 %t807)
  call void @olang_textcopy(ptr %t810, ptr %t795, i64 %t796)
  %t811 = getelementptr i8, ptr %t810, i64 %t796
  call void @olang_textcopy(ptr %t811, ptr %t798, i64 %t799)
  %t812 = getelementptr i8, ptr %t811, i64 %t799
  call void @olang_textcopy(ptr %t812, ptr %t801, i64 %t802)
  %t813 = getelementptr i8, ptr %t812, i64 %t802
  call void @olang_textcopy(ptr %t813, ptr %t805, i64 %t806)
  %t814 = insertvalue { i64, ptr } undef, i64 %t807, 0
  %t815 = insertvalue { i64, ptr } %t814, ptr %t810, 1
  %t817 = load i64, ptr %l246
  %t818 = inttoptr i64 %t817 to ptr
  %t819 = extractvalue { i64, ptr } %t815, 0
  %t820 = extractvalue { i64, ptr } %t815, 1
  %t821 = mul i64 %t819, 1
  %t822 = call ptr @__olang_scope_alloc(ptr %t818, i64 %t821)
  call void @llvm.memcpy.p0.p0.i64(ptr %t822, ptr %t820, i64 %t821, i1 false)
  %t823 = insertvalue { i64, ptr } undef, i64 %t819, 0
  %t824 = insertvalue { i64, ptr } %t823, ptr %t822, 1
  %t825 = load ptr, ptr %l245, !tbaa !29
  call void @compiler_2ffetch_2ecompiler_2ffetch_3aFetcher_2esay(ptr %v0, ptr %v0, ptr %t825, { i64, ptr } %t824)
  br label %bb165
bb165:
  %t827 = load i64, ptr %l4, !tbaa !24
  %t828 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t830 = extractvalue { i64, ptr } %t828, 0
  %t833 = icmp slt i64 %t827, %t830
  br i1 %t833, label %bb166, label %bb167
bb166:
  %t835 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t836 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d56, i32 0, i32 1) }, 1
  %t837 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d56, i32 0, i32 1) }, 0
  %t839 = extractvalue { i64, ptr } %t835, 1
  %t840 = extractvalue { i64, ptr } %t835, 0
  %t841 = add i64 %t837, %t840
  %t842 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t841)
  call void @olang_textcopy(ptr %t842, ptr %t836, i64 %t837)
  %t843 = getelementptr i8, ptr %t842, i64 %t837
  call void @olang_textcopy(ptr %t843, ptr %t839, i64 %t840)
  %t844 = insertvalue { i64, ptr } undef, i64 %t841, 0
  %t845 = insertvalue { i64, ptr } %t844, ptr %t842, 1
  %t847 = extractvalue { i64, ptr } %t845, 0
  %t848 = extractvalue { i64, ptr } %t845, 1
  %t849 = mul i64 %t847, 1
  %t850 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t849)
  call void @llvm.memcpy.p0.p0.i64(ptr %t850, ptr %t848, i64 %t849, i1 false)
  %t851 = insertvalue { i64, ptr } undef, i64 %t847, 0
  %t852 = insertvalue { i64, ptr } %t851, ptr %t850, 1
  store { i64, ptr } %t852, ptr %l256, !tbaa !27
  br label %bb168
bb167:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d57, i32 0, i32 1) }, ptr %l256, !tbaa !27
  br label %bb168
bb168:
  %t854 = load { i64, ptr }, ptr %l256, !tbaa !27
  store { i64, ptr } %t854, ptr %l19, !tbaa !27
  %t855 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t857 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t855)
  store i32 %t857, ptr %l261
  %t858 = icmp ne i32 %t857, 0
  br i1 %t858, label %bb170, label %ok.859, !prof !99
ok.859:
  br label %bb169
bb169:
  br label %bb174
bb170:
  %t860 = load i32, ptr %l261, !tbaa !23
  %t861 = ashr i32 %t860, 16
  %t863 = icmp eq i32 %t861, 1
  store i1 %t863, ptr %l263, !tbaa !21
  %t864 = load i32, ptr %l261, !tbaa !23
  %t865 = ashr i32 %t864, 16
  %t867 = icmp eq i32 %t865, 1
  br i1 %t867, label %bb171, label %bb172
bb171:
  call void @__olang_errpay_pop()
  br label %bb172
bb172:
  br label %bb173
bb173:
  br label %bb174
bb174:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d58, i32 0, i32 1) }, ptr %l266, !tbaa !27
  %t869 = load { i64, ptr }, ptr %l266, !tbaa !27
  %t870 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 16, i64 8)
  store ptr %t870, ptr %lp20
  %t872 = load ptr, ptr %lp20
  store { i64, ptr } %t869, ptr %t872, !tbaa !27
  %t873 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t874 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t875 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t876 = mul i64 9, 16
  %t877 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t876)
  %t878 = insertvalue { i64, ptr } undef, i64 9, 0
  %t879 = insertvalue { i64, ptr } %t878, ptr %t877, 1
  store { i64, ptr } %t879, ptr %l271, !tbaa !27
  %t880 = getelementptr { i64, ptr }, ptr %l271, i32 0, i32 1
  %t881 = load ptr, ptr %t880, !tbaa !27
  %t882 = getelementptr { i64, ptr }, ptr %t881, i64 0
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d59, i32 0, i32 1) }, ptr %t882, !tbaa !37
  %t883 = getelementptr { i64, ptr }, ptr %l271, i32 0, i32 1
  %t884 = load ptr, ptr %t883, !tbaa !27
  %t885 = getelementptr { i64, ptr }, ptr %t884, i64 1
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d60, i32 0, i32 1) }, ptr %t885, !tbaa !37
  %t886 = getelementptr { i64, ptr }, ptr %l271, i32 0, i32 1
  %t887 = load ptr, ptr %t886, !tbaa !27
  %t888 = getelementptr { i64, ptr }, ptr %t887, i64 2
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d61, i32 0, i32 1) }, ptr %t888, !tbaa !37
  %t889 = getelementptr { i64, ptr }, ptr %l271, i32 0, i32 1
  %t890 = load ptr, ptr %t889, !tbaa !27
  %t891 = getelementptr { i64, ptr }, ptr %t890, i64 3
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d62, i32 0, i32 1) }, ptr %t891, !tbaa !37
  %t892 = getelementptr { i64, ptr }, ptr %l271, i32 0, i32 1
  %t893 = load ptr, ptr %t892, !tbaa !27
  %t894 = getelementptr { i64, ptr }, ptr %t893, i64 4
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d63, i32 0, i32 1) }, ptr %t894, !tbaa !37
  %t896 = getelementptr { i64, ptr }, ptr %l271, i32 0, i32 1
  %t897 = load ptr, ptr %t896, !tbaa !27
  %t898 = getelementptr { i64, ptr }, ptr %t897, i64 5
  store { i64, ptr } %t873, ptr %t898, !tbaa !37
  %t899 = getelementptr { i64, ptr }, ptr %l271, i32 0, i32 1
  %t900 = load ptr, ptr %t899, !tbaa !27
  %t901 = getelementptr { i64, ptr }, ptr %t900, i64 6
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d64, i32 0, i32 1) }, ptr %t901, !tbaa !37
  %t903 = getelementptr { i64, ptr }, ptr %l271, i32 0, i32 1
  %t904 = load ptr, ptr %t903, !tbaa !27
  %t905 = getelementptr { i64, ptr }, ptr %t904, i64 7
  store { i64, ptr } %t874, ptr %t905, !tbaa !37
  %t907 = getelementptr { i64, ptr }, ptr %l271, i32 0, i32 1
  %t908 = load ptr, ptr %t907, !tbaa !27
  %t909 = getelementptr { i64, ptr }, ptr %t908, i64 8
  store { i64, ptr } %t875, ptr %t909, !tbaa !37
  %t910 = load { i64, ptr }, ptr %l271, !tbaa !27
  %t911 = call i1 @compiler_2ffetch_2egit(ptr %s0, { i64, ptr } %t910)
  store i1 %t911, ptr %l272
  br label %bb175
bb175:
  %t912 = load i1, ptr %l272, !tbaa !21
  br i1 %t912, label %bb176, label %bb177
bb176:
  %t913 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t915 = call { i64, ptr } @compiler_2ffetch_2ehead(ptr %s0, ptr %v0, { i64, ptr } %t913)
  store { i64, ptr } %t915, ptr %l274
  br label %bb178
bb177:
  br label %bb181
bb178:
  %t916 = load ptr, ptr %lp20
  %t917 = load { i64, ptr }, ptr %t916, !tbaa !27
  store { i64, ptr } %t917, ptr %l275, !tbaa !27
  %t918 = load { i64, ptr }, ptr %l274, !tbaa !27
  %t919 = load ptr, ptr %lp20
  store { i64, ptr } %t918, ptr %t919, !tbaa !27
  %t920 = load i1, ptr @olang_2esole_2ecompiler__2ffetch__2ecompiler__2ffetch__3aFetcher__2eFetch_2elocal_2e20
  br i1 %t920, label %bb179, label %bb180
bb179:
  %t922 = load { i64, ptr }, ptr %l275
  %t923 = extractvalue { i64, ptr } %t922, 1
  call void @__olang_region_release(ptr %t923)
  store { i64, ptr } zeroinitializer, ptr %l275
  br label %bb180
bb180:
  br label %bb181
bb181:
  %t924 = load ptr, ptr %lp20
  %t925 = load { i64, ptr }, ptr %t924, !tbaa !27
  %t927 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t925, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d65, i32 0, i32 1) })
  store i1 %t927, ptr %l278
  br label %bb182
bb182:
  %t928 = load i1, ptr %l278, !tbaa !21
  br i1 %t928, label %bb183, label %bb184
bb183:
  %t929 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t931 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t929)
  store i32 %t931, ptr %l280
  %t932 = icmp ne i32 %t931, 0
  br i1 %t932, label %bb186, label %ok.933, !prof !99
ok.933:
  br label %bb185
bb184:
  br label %bb192
bb185:
  br label %bb190
bb186:
  %t934 = load i32, ptr %l280, !tbaa !23
  %t935 = ashr i32 %t934, 16
  %t937 = icmp eq i32 %t935, 1
  store i1 %t937, ptr %l282, !tbaa !21
  %t938 = load i32, ptr %l280, !tbaa !23
  %t939 = ashr i32 %t938, 16
  %t941 = icmp eq i32 %t939, 1
  br i1 %t941, label %bb187, label %bb188
bb187:
  call void @__olang_errpay_pop()
  br label %bb188
bb188:
  br label %bb189
bb189:
  br label %bb190
bb190:
  store i32 65538, ptr %l285, !tbaa !23
  store %olang.scope zeroinitializer, ptr %s37
  call void @compiler_2fspin_2eRetitle(ptr %s37, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d53, i32 0, i32 1) })
  br label %bb191
bb191:
  call void @__olang_scope_close(ptr %s37)
  call void @__olang_scope_close(ptr %s0)
  %t943 = load i32, ptr %l285, !tbaa !23
  %t944 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t943, 0
  store { i32, { i64, ptr } } %t944, ptr %rv
  br label %ret
bb192:
  %t945 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t946 = load ptr, ptr %lp20
  %t947 = load { i64, ptr }, ptr %t946, !tbaa !27
  %t949 = extractvalue { i64, ptr } %t945, 1
  %t950 = extractvalue { i64, ptr } %t945, 0
  %t951 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d66, i32 0, i32 1) }, 1
  %t952 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d66, i32 0, i32 1) }, 0
  %t953 = add i64 %t950, %t952
  %t955 = extractvalue { i64, ptr } %t947, 1
  %t956 = extractvalue { i64, ptr } %t947, 0
  %t957 = add i64 %t953, %t956
  %t958 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t957)
  call void @olang_textcopy(ptr %t958, ptr %t949, i64 %t950)
  %t959 = getelementptr i8, ptr %t958, i64 %t950
  call void @olang_textcopy(ptr %t959, ptr %t951, i64 %t952)
  %t960 = getelementptr i8, ptr %t959, i64 %t952
  call void @olang_textcopy(ptr %t960, ptr %t955, i64 %t956)
  %t961 = insertvalue { i64, ptr } undef, i64 %t957, 0
  %t962 = insertvalue { i64, ptr } %t961, ptr %t958, 1
  %t963 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 16, i64 8)
  store ptr %t963, ptr %lp21
  %t965 = load ptr, ptr %lp21
  store { i64, ptr } %t962, ptr %t965, !tbaa !27
  %t966 = load ptr, ptr %lp21
  %t967 = load { i64, ptr }, ptr %t966, !tbaa !27
  %t969 = call i1 @std_2fos_2eIsDir(ptr %v4, { i64, ptr } %t967)
  store i1 %t969, ptr %l290
  br label %bb193
bb193:
  %t970 = load i1, ptr %l290, !tbaa !21
  br i1 %t970, label %bb194, label %bb195
bb194:
  %t971 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t973 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t971)
  store i32 %t973, ptr %l292
  %t974 = icmp ne i32 %t973, 0
  br i1 %t974, label %bb197, label %ok.975, !prof !99
ok.975:
  br label %bb196
bb195:
  %t976 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t977 = load ptr, ptr %lp21
  %t978 = load { i64, ptr }, ptr %t977, !tbaa !27
  %t981 = call i32 @std_2fos_2eRename(ptr %s0, ptr %v4, { i64, ptr } %t976, { i64, ptr } %t978)
  store i32 %t981, ptr %l299
  %t982 = icmp ne i32 %t981, 0
  br i1 %t982, label %bb203, label %ok.983, !prof !99
ok.983:
  br label %bb202
bb196:
  br label %bb201
bb197:
  %t984 = load i32, ptr %l292, !tbaa !23
  %t985 = ashr i32 %t984, 16
  %t987 = icmp eq i32 %t985, 1
  store i1 %t987, ptr %l294, !tbaa !21
  %t988 = load i32, ptr %l292, !tbaa !23
  %t989 = ashr i32 %t988, 16
  %t991 = icmp eq i32 %t989, 1
  br i1 %t991, label %bb198, label %bb199
bb198:
  call void @__olang_errpay_pop()
  br label %bb199
bb199:
  br label %bb200
bb200:
  br label %bb201
bb201:
  br label %bb215
bb202:
  br label %bb214
bb203:
  %t993 = load i32, ptr %l299, !tbaa !23
  %t994 = ashr i32 %t993, 16
  %t996 = icmp eq i32 %t994, 1
  store i1 %t996, ptr %l301, !tbaa !21
  %t997 = load i32, ptr %l299, !tbaa !23
  %t998 = ashr i32 %t997, 16
  %t1000 = icmp eq i32 %t998, 1
  br i1 %t1000, label %bb204, label %bb205
bb204:
  call void @__olang_errpay_pop()
  br label %bb205
bb205:
  br label %bb206
bb206:
  %t1002 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t1004 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t1002)
  store i32 %t1004, ptr %l305
  %t1005 = icmp ne i32 %t1004, 0
  br i1 %t1005, label %bb208, label %ok.1006, !prof !99
ok.1006:
  br label %bb207
bb207:
  br label %bb212
bb208:
  %t1007 = load i32, ptr %l305, !tbaa !23
  %t1008 = ashr i32 %t1007, 16
  %t1010 = icmp eq i32 %t1008, 1
  store i1 %t1010, ptr %l307, !tbaa !21
  %t1011 = load i32, ptr %l305, !tbaa !23
  %t1012 = ashr i32 %t1011, 16
  %t1014 = icmp eq i32 %t1012, 1
  br i1 %t1014, label %bb209, label %bb210
bb209:
  call void @__olang_errpay_pop()
  br label %bb210
bb210:
  br label %bb211
bb211:
  br label %bb212
bb212:
  store i32 65538, ptr %l310, !tbaa !23
  store %olang.scope zeroinitializer, ptr %s44
  call void @compiler_2fspin_2eRetitle(ptr %s44, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d53, i32 0, i32 1) })
  br label %bb213
bb213:
  call void @__olang_scope_close(ptr %s44)
  call void @__olang_scope_close(ptr %s0)
  %t1016 = load i32, ptr %l310, !tbaa !23
  %t1017 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t1016, 0
  store { i32, { i64, ptr } } %t1017, ptr %rv
  br label %ret
bb214:
  br label %bb215
bb215:
  %t1018 = load ptr, ptr %l0, !tbaa !29
  %t1019 = load ptr, ptr %lp8
  %t1020 = load { i64, ptr }, ptr %t1019, !tbaa !27
  %t1021 = load ptr, ptr %lp20
  %t1022 = load { i64, ptr }, ptr %t1021, !tbaa !27
  call void @compiler_2ffetch_2ecompiler_2ffetch_3aFetcher_2elock(ptr %v0, ptr %v0, ptr %v0, ptr %t1018, { i64, ptr } %t1020, { i64, ptr } %t1022)
  br label %bb216
bb216:
  %t1026 = load ptr, ptr %l0, !tbaa !29
  %t1028 = getelementptr %"compiler/fetch:Fetcher", ptr %t1026, i32 0, i32 3
  %t1029 = load i1, ptr %t1028, !tbaa !21
  br i1 %t1029, label %bb217, label %bb218
bb217:
  store %olang.scope zeroinitializer, ptr %s45
  %t1031 = load ptr, ptr %l0, !tbaa !29
  %t1032 = load ptr, ptr %lp8
  %t1033 = load { i64, ptr }, ptr %t1032, !tbaa !27
  %t1036 = call i1 @compiler_2ffetch_2ecompiler_2ffetch_3aFetcher_2eupdatedNow(ptr %v0, ptr %v0, ptr %t1031, { i64, ptr } %t1033, i1 true)
  store i1 %t1036, ptr %l318
  br label %bb219
bb218:
  br label %bb270
bb219:
  %t1037 = load i1, ptr %l14, !tbaa !21
  br i1 %t1037, label %bb220, label %bb221
bb220:
  %t1039 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t1041 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s45, { i64, ptr } %t1039, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d67, i32 0, i32 1) })
  store i1 %t1041, ptr %l322
  br label %bb222
bb221:
  store i1 false, ptr %l320, !tbaa !21
  br label %bb223
bb222:
  %t1042 = load i1, ptr %l322, !tbaa !21
  store i1 %t1042, ptr %l320, !tbaa !21
  br label %bb223
bb223:
  %t1043 = load i1, ptr %l320, !tbaa !21
  br i1 %t1043, label %bb224, label %bb225
bb224:
  %t1044 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1044, ptr %l323, !tbaa !29
  %t1045 = ptrtoint ptr %v0 to i64
  store i64 %t1045, ptr %l324, !tbaa !24
  %t1046 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t1046, label %bb226, label %bb227
bb225:
  %t1048 = load i1, ptr %l14, !tbaa !21
  br i1 %t1048, label %bb235, label %bb236
bb226:
  %t1050 = call ptr @__olang_region_make(ptr %v0)
  %t1051 = ptrtoint ptr %t1050 to i64
  store i64 %t1051, ptr %l324, !tbaa !24
  br label %bb227
bb227:
  %t1052 = load ptr, ptr %lp8
  %t1053 = load { i64, ptr }, ptr %t1052, !tbaa !27
  store { i64, ptr } %t1053, ptr %l326, !tbaa !27
  %t1054 = load ptr, ptr %lp20
  %t1055 = load { i64, ptr }, ptr %t1054, !tbaa !27
  %t1056 = extractvalue { i64, ptr } %t1055, 0
  store i64 %t1056, ptr %l327, !tbaa !24
  %t1057 = icmp sge i64 0, 0
  br i1 %t1057, label %bb228, label %bb229
bb228:
  %t1059 = icmp sle i64 0, 12
  br i1 %t1059, label %bb230, label %bb231
bb229:
  call void @__olang_check_failed(ptr @olang_loc_461a8d3078b45b75_287f37f9c7026b71)
  unreachable
bb230:
  %t1061 = load i64, ptr %l327, !tbaa !24
  %t1062 = icmp sle i64 12, %t1061
  br i1 %t1062, label %bb232, label %bb233
bb231:
  call void @__olang_check_failed(ptr @olang_loc_461a8d3078b45b75_287f37f9c7026b71)
  unreachable
bb232:
  %t1064 = load ptr, ptr %lp20
  %t1065 = getelementptr { i64, ptr }, ptr %t1064, i32 0, i32 1
  %t1066 = load ptr, ptr %t1065, !tbaa !27
  %t1067 = getelementptr i8, ptr %t1066, i64 0
  %t1068 = sub i64 12, 0
  %t1069 = insertvalue { i64, ptr } undef, i64 %t1068, 0
  %t1070 = insertvalue { i64, ptr } %t1069, ptr %t1067, 1
  %t1071 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d68, i32 0, i32 1) }, 1
  %t1072 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d68, i32 0, i32 1) }, 0
  %t1073 = load { i64, ptr }, ptr %l326, !tbaa !27
  %t1074 = extractvalue { i64, ptr } %t1073, 1
  %t1075 = extractvalue { i64, ptr } %t1073, 0
  %t1076 = add i64 %t1072, %t1075
  %t1077 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d69, i32 0, i32 1) }, 1
  %t1078 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d69, i32 0, i32 1) }, 0
  %t1079 = add i64 %t1076, %t1078
  %t1081 = extractvalue { i64, ptr } %t1070, 1
  %t1082 = extractvalue { i64, ptr } %t1070, 0
  %t1083 = add i64 %t1079, %t1082
  %t1084 = load i64, ptr %l324
  %t1085 = inttoptr i64 %t1084 to ptr
  %t1086 = call ptr @__olang_scope_alloc(ptr %t1085, i64 %t1083)
  call void @olang_textcopy(ptr %t1086, ptr %t1071, i64 %t1072)
  %t1087 = getelementptr i8, ptr %t1086, i64 %t1072
  call void @olang_textcopy(ptr %t1087, ptr %t1074, i64 %t1075)
  %t1088 = getelementptr i8, ptr %t1087, i64 %t1075
  call void @olang_textcopy(ptr %t1088, ptr %t1077, i64 %t1078)
  %t1089 = getelementptr i8, ptr %t1088, i64 %t1078
  call void @olang_textcopy(ptr %t1089, ptr %t1081, i64 %t1082)
  %t1090 = insertvalue { i64, ptr } undef, i64 %t1083, 0
  %t1091 = insertvalue { i64, ptr } %t1090, ptr %t1086, 1
  %t1093 = load i64, ptr %l324
  %t1094 = inttoptr i64 %t1093 to ptr
  %t1095 = extractvalue { i64, ptr } %t1091, 0
  %t1096 = extractvalue { i64, ptr } %t1091, 1
  %t1097 = mul i64 %t1095, 1
  %t1098 = call ptr @__olang_scope_alloc(ptr %t1094, i64 %t1097)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1098, ptr %t1096, i64 %t1097, i1 false)
  %t1099 = insertvalue { i64, ptr } undef, i64 %t1095, 0
  %t1100 = insertvalue { i64, ptr } %t1099, ptr %t1098, 1
  %t1101 = load ptr, ptr %l323, !tbaa !29
  call void @compiler_2ffetch_2ecompiler_2ffetch_3aFetcher_2esay(ptr %v0, ptr %v0, ptr %t1101, { i64, ptr } %t1100)
  br label %bb234
bb233:
  call void @__olang_check_failed(ptr @olang_loc_461a8d3078b45b75_287f37f9c7026b71)
  unreachable
bb234:
  br label %bb269
bb235:
  %t1103 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t1104 = load ptr, ptr %lp20
  %t1105 = load { i64, ptr }, ptr %t1104, !tbaa !27
  %t1108 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %v0, { i64, ptr } %t1103, { i64, ptr } %t1105)
  store i1 %t1108, ptr %l338
  br label %bb237
bb236:
  store i1 false, ptr %l335, !tbaa !21
  br label %bb238
bb237:
  %t1109 = load i1, ptr %l338, !tbaa !21
  %t1110 = xor i1 %t1109, true
  store i1 %t1110, ptr %l335, !tbaa !21
  br label %bb238
bb238:
  %t1112 = load i1, ptr %l335, !tbaa !21
  br i1 %t1112, label %bb239, label %bb240
bb239:
  %t1113 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1113, ptr %l340, !tbaa !29
  %t1114 = ptrtoint ptr %v0 to i64
  store i64 %t1114, ptr %l341, !tbaa !24
  %t1115 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t1115, label %bb241, label %bb242
bb240:
  %t1117 = load i1, ptr %l14, !tbaa !21
  br i1 %t1117, label %bb256, label %bb257
bb241:
  %t1119 = call ptr @__olang_region_make(ptr %v0)
  %t1120 = ptrtoint ptr %t1119 to i64
  store i64 %t1120, ptr %l341, !tbaa !24
  br label %bb242
bb242:
  %t1121 = load ptr, ptr %lp8
  %t1122 = load { i64, ptr }, ptr %t1121, !tbaa !27
  store { i64, ptr } %t1122, ptr %l343, !tbaa !27
  %t1123 = load ptr, ptr %lp20
  %t1124 = load { i64, ptr }, ptr %t1123, !tbaa !27
  %t1125 = extractvalue { i64, ptr } %t1124, 0
  store i64 %t1125, ptr %l344, !tbaa !24
  %t1126 = icmp sge i64 0, 0
  br i1 %t1126, label %bb243, label %bb244
bb243:
  %t1128 = icmp sle i64 0, 12
  br i1 %t1128, label %bb245, label %bb246
bb244:
  call void @__olang_check_failed(ptr @olang_loc_64bbdb9c4083d73a_45ec4fce431b420e)
  unreachable
bb245:
  %t1130 = load i64, ptr %l344, !tbaa !24
  %t1131 = icmp sle i64 12, %t1130
  br i1 %t1131, label %bb247, label %bb248
bb246:
  call void @__olang_check_failed(ptr @olang_loc_64bbdb9c4083d73a_45ec4fce431b420e)
  unreachable
bb247:
  %t1133 = load ptr, ptr %lp20
  %t1134 = getelementptr { i64, ptr }, ptr %t1133, i32 0, i32 1
  %t1135 = load ptr, ptr %t1134, !tbaa !27
  %t1136 = getelementptr i8, ptr %t1135, i64 0
  %t1137 = sub i64 12, 0
  %t1138 = insertvalue { i64, ptr } undef, i64 %t1137, 0
  %t1139 = insertvalue { i64, ptr } %t1138, ptr %t1136, 1
  store { i64, ptr } %t1139, ptr %l348, !tbaa !27
  %t1140 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t1141 = extractvalue { i64, ptr } %t1140, 0
  store i64 %t1141, ptr %l349, !tbaa !24
  %t1142 = icmp sge i64 0, 0
  br i1 %t1142, label %bb249, label %bb250
bb248:
  call void @__olang_check_failed(ptr @olang_loc_64bbdb9c4083d73a_45ec4fce431b420e)
  unreachable
bb249:
  %t1144 = icmp sle i64 0, 12
  br i1 %t1144, label %bb251, label %bb252
bb250:
  call void @__olang_check_failed(ptr @olang_loc_64bbdb9c4083d73a_45ec4fce431b420e)
  unreachable
bb251:
  %t1146 = load i64, ptr %l349, !tbaa !24
  %t1147 = icmp sle i64 12, %t1146
  br i1 %t1147, label %bb253, label %bb254
bb252:
  call void @__olang_check_failed(ptr @olang_loc_64bbdb9c4083d73a_45ec4fce431b420e)
  unreachable
bb253:
  %t1149 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t1150 = load ptr, ptr %t1149, !tbaa !27
  %t1151 = getelementptr i8, ptr %t1150, i64 0
  %t1152 = sub i64 12, 0
  %t1153 = insertvalue { i64, ptr } undef, i64 %t1152, 0
  %t1154 = insertvalue { i64, ptr } %t1153, ptr %t1151, 1
  %t1155 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d70, i32 0, i32 1) }, 1
  %t1156 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d70, i32 0, i32 1) }, 0
  %t1157 = load { i64, ptr }, ptr %l343, !tbaa !27
  %t1158 = extractvalue { i64, ptr } %t1157, 1
  %t1159 = extractvalue { i64, ptr } %t1157, 0
  %t1160 = add i64 %t1156, %t1159
  %t1161 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d71, i32 0, i32 1) }, 1
  %t1162 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d71, i32 0, i32 1) }, 0
  %t1163 = add i64 %t1160, %t1162
  %t1164 = load { i64, ptr }, ptr %l348, !tbaa !27
  %t1165 = extractvalue { i64, ptr } %t1164, 1
  %t1166 = extractvalue { i64, ptr } %t1164, 0
  %t1167 = add i64 %t1163, %t1166
  %t1168 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d72, i32 0, i32 1) }, 1
  %t1169 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d72, i32 0, i32 1) }, 0
  %t1170 = add i64 %t1167, %t1169
  %t1172 = extractvalue { i64, ptr } %t1154, 1
  %t1173 = extractvalue { i64, ptr } %t1154, 0
  %t1174 = add i64 %t1170, %t1173
  %t1175 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d73, i32 0, i32 1) }, 1
  %t1176 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d73, i32 0, i32 1) }, 0
  %t1177 = add i64 %t1174, %t1176
  %t1178 = load i64, ptr %l341
  %t1179 = inttoptr i64 %t1178 to ptr
  %t1180 = call ptr @__olang_scope_alloc(ptr %t1179, i64 %t1177)
  call void @olang_textcopy(ptr %t1180, ptr %t1155, i64 %t1156)
  %t1181 = getelementptr i8, ptr %t1180, i64 %t1156
  call void @olang_textcopy(ptr %t1181, ptr %t1158, i64 %t1159)
  %t1182 = getelementptr i8, ptr %t1181, i64 %t1159
  call void @olang_textcopy(ptr %t1182, ptr %t1161, i64 %t1162)
  %t1183 = getelementptr i8, ptr %t1182, i64 %t1162
  call void @olang_textcopy(ptr %t1183, ptr %t1165, i64 %t1166)
  %t1184 = getelementptr i8, ptr %t1183, i64 %t1166
  call void @olang_textcopy(ptr %t1184, ptr %t1168, i64 %t1169)
  %t1185 = getelementptr i8, ptr %t1184, i64 %t1169
  call void @olang_textcopy(ptr %t1185, ptr %t1172, i64 %t1173)
  %t1186 = getelementptr i8, ptr %t1185, i64 %t1173
  call void @olang_textcopy(ptr %t1186, ptr %t1175, i64 %t1176)
  %t1187 = insertvalue { i64, ptr } undef, i64 %t1177, 0
  %t1188 = insertvalue { i64, ptr } %t1187, ptr %t1180, 1
  %t1190 = load i64, ptr %l341
  %t1191 = inttoptr i64 %t1190 to ptr
  %t1192 = extractvalue { i64, ptr } %t1188, 0
  %t1193 = extractvalue { i64, ptr } %t1188, 1
  %t1194 = mul i64 %t1192, 1
  %t1195 = call ptr @__olang_scope_alloc(ptr %t1191, i64 %t1194)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1195, ptr %t1193, i64 %t1194, i1 false)
  %t1196 = insertvalue { i64, ptr } undef, i64 %t1192, 0
  %t1197 = insertvalue { i64, ptr } %t1196, ptr %t1195, 1
  %t1198 = load ptr, ptr %l340, !tbaa !29
  call void @compiler_2ffetch_2ecompiler_2ffetch_3aFetcher_2esay(ptr %v0, ptr %v0, ptr %t1198, { i64, ptr } %t1197)
  br label %bb255
bb254:
  call void @__olang_check_failed(ptr @olang_loc_64bbdb9c4083d73a_45ec4fce431b420e)
  unreachable
bb255:
  br label %bb268
bb256:
  %t1200 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1200, ptr %l357, !tbaa !29
  %t1201 = ptrtoint ptr %v0 to i64
  store i64 %t1201, ptr %l358, !tbaa !24
  %t1202 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t1202, label %bb258, label %bb259
bb257:
  br label %bb267
bb258:
  %t1204 = call ptr @__olang_region_make(ptr %v0)
  %t1205 = ptrtoint ptr %t1204 to i64
  store i64 %t1205, ptr %l358, !tbaa !24
  br label %bb259
bb259:
  %t1206 = load ptr, ptr %lp8
  %t1207 = load { i64, ptr }, ptr %t1206, !tbaa !27
  store { i64, ptr } %t1207, ptr %l360, !tbaa !27
  %t1208 = load ptr, ptr %lp20
  %t1209 = load { i64, ptr }, ptr %t1208, !tbaa !27
  %t1210 = extractvalue { i64, ptr } %t1209, 0
  store i64 %t1210, ptr %l361, !tbaa !24
  %t1211 = icmp sge i64 0, 0
  br i1 %t1211, label %bb260, label %bb261
bb260:
  %t1213 = icmp sle i64 0, 12
  br i1 %t1213, label %bb262, label %bb263
bb261:
  call void @__olang_check_failed(ptr @olang_loc_978ca0e68f8e7a17_d15c8fffad158e0b)
  unreachable
bb262:
  %t1215 = load i64, ptr %l361, !tbaa !24
  %t1216 = icmp sle i64 12, %t1215
  br i1 %t1216, label %bb264, label %bb265
bb263:
  call void @__olang_check_failed(ptr @olang_loc_978ca0e68f8e7a17_d15c8fffad158e0b)
  unreachable
bb264:
  %t1218 = load ptr, ptr %lp20
  %t1219 = getelementptr { i64, ptr }, ptr %t1218, i32 0, i32 1
  %t1220 = load ptr, ptr %t1219, !tbaa !27
  %t1221 = getelementptr i8, ptr %t1220, i64 0
  %t1222 = sub i64 12, 0
  %t1223 = insertvalue { i64, ptr } undef, i64 %t1222, 0
  %t1224 = insertvalue { i64, ptr } %t1223, ptr %t1221, 1
  %t1225 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d74, i32 0, i32 1) }, 1
  %t1226 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d74, i32 0, i32 1) }, 0
  %t1227 = load { i64, ptr }, ptr %l360, !tbaa !27
  %t1228 = extractvalue { i64, ptr } %t1227, 1
  %t1229 = extractvalue { i64, ptr } %t1227, 0
  %t1230 = add i64 %t1226, %t1229
  %t1231 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d75, i32 0, i32 1) }, 1
  %t1232 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d75, i32 0, i32 1) }, 0
  %t1233 = add i64 %t1230, %t1232
  %t1235 = extractvalue { i64, ptr } %t1224, 1
  %t1236 = extractvalue { i64, ptr } %t1224, 0
  %t1237 = add i64 %t1233, %t1236
  %t1238 = load i64, ptr %l358
  %t1239 = inttoptr i64 %t1238 to ptr
  %t1240 = call ptr @__olang_scope_alloc(ptr %t1239, i64 %t1237)
  call void @olang_textcopy(ptr %t1240, ptr %t1225, i64 %t1226)
  %t1241 = getelementptr i8, ptr %t1240, i64 %t1226
  call void @olang_textcopy(ptr %t1241, ptr %t1228, i64 %t1229)
  %t1242 = getelementptr i8, ptr %t1241, i64 %t1229
  call void @olang_textcopy(ptr %t1242, ptr %t1231, i64 %t1232)
  %t1243 = getelementptr i8, ptr %t1242, i64 %t1232
  call void @olang_textcopy(ptr %t1243, ptr %t1235, i64 %t1236)
  %t1244 = insertvalue { i64, ptr } undef, i64 %t1237, 0
  %t1245 = insertvalue { i64, ptr } %t1244, ptr %t1240, 1
  %t1247 = load i64, ptr %l358
  %t1248 = inttoptr i64 %t1247 to ptr
  %t1249 = extractvalue { i64, ptr } %t1245, 0
  %t1250 = extractvalue { i64, ptr } %t1245, 1
  %t1251 = mul i64 %t1249, 1
  %t1252 = call ptr @__olang_scope_alloc(ptr %t1248, i64 %t1251)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1252, ptr %t1250, i64 %t1251, i1 false)
  %t1253 = insertvalue { i64, ptr } undef, i64 %t1249, 0
  %t1254 = insertvalue { i64, ptr } %t1253, ptr %t1252, 1
  %t1255 = load ptr, ptr %l357, !tbaa !29
  call void @compiler_2ffetch_2ecompiler_2ffetch_3aFetcher_2esay(ptr %v0, ptr %v0, ptr %t1255, { i64, ptr } %t1254)
  br label %bb266
bb265:
  call void @__olang_check_failed(ptr @olang_loc_978ca0e68f8e7a17_d15c8fffad158e0b)
  unreachable
bb266:
  br label %bb267
bb267:
  br label %bb268
bb268:
  br label %bb269
bb269:
  call void @__olang_scope_close(ptr %s45)
  br label %bb270
bb270:
  %t1257 = load ptr, ptr %lp21
  %t1258 = load { i64, ptr }, ptr %t1257, !tbaa !27
  store { i64, ptr } %t1258, ptr %l368, !tbaa !27
  %t1259 = load { i64, ptr }, ptr %l368, !tbaa !27
  %t1260 = extractvalue { i64, ptr } %t1259, 0
  store i64 %t1260, ptr %l369, !tbaa !24
  %t1261 = load i64, ptr %l369, !tbaa !24
  %t1262 = mul i64 %t1261, 1
  %t1263 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t1262)
  %t1264 = insertvalue { i64, ptr } undef, i64 %t1261, 0
  %t1265 = insertvalue { i64, ptr } %t1264, ptr %t1263, 1
  store { i64, ptr } %t1265, ptr %l370, !tbaa !27
  %t1266 = getelementptr { i64, ptr }, ptr %l370, i32 0, i32 1
  %t1267 = load ptr, ptr %t1266, !tbaa !27
  %t1268 = getelementptr { i64, ptr }, ptr %l368, i32 0, i32 1
  %t1269 = load ptr, ptr %t1268, !tbaa !27
  %t1270 = load i64, ptr %l369, !tbaa !24
  %t1271 = mul i64 %t1270, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1267, ptr %t1269, i64 %t1271, i1 false)
  %t1272 = load { i64, ptr }, ptr %l370, !tbaa !27
  store { i64, ptr } %t1272, ptr %l368, !tbaa !27
  store %olang.scope zeroinitializer, ptr %s54
  call void @compiler_2fspin_2eRetitle(ptr %s54, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d53, i32 0, i32 1) })
  br label %bb271
bb271:
  call void @__olang_scope_close(ptr %s54)
  call void @__olang_scope_close(ptr %s0)
  %t1273 = load { i64, ptr }, ptr %l368, !tbaa !27
  %t1274 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t1273, 1
  store { i32, { i64, ptr } } %t1274, ptr %rv
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
  %l38 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l51 = alloca i1
  %l53 = alloca i1
  %l54 = alloca i64
  %l57 = alloca { i64, ptr }
  %l59 = alloca { i64, ptr }
  %l62 = alloca i1
  %l63 = alloca i64
  %l66 = alloca { i64, ptr }
  %l68 = alloca { i64, ptr }
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
  br label %bb59
bb15:
  %t45 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t45, ptr %l3, !tbaa !27
  %t46 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t48 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s4, { i64, ptr } %t46, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d76, i32 0, i32 1) })
  store i1 %t48, ptr %l32
  br label %bb16
bb16:
  %t49 = load i1, ptr %l32, !tbaa !21
  br i1 %t49, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s4)
  br label %bb58
bb18:
  br label %bb19
bb19:
  %t50 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t52 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %s0, ptr %s0, { i64, ptr } %t50)
  store { i64, ptr } %t52, ptr %l34
  br label %bb20
bb20:
  %t53 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t54 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %s0, ptr %s4, ptr %s4, { i64, ptr } %t53, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) })
  store { i64, ptr } %t54, ptr %l35
  br label %bb21
bb21:
  %t55 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d78, i32 0, i32 1) }, ptr %l36, !tbaa !27
  %t56 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t57 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 16, i64 8)
  store ptr %t57, ptr %lp5
  %t59 = load ptr, ptr %lp5
  store { i64, ptr } %t56, ptr %t59, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d79, i32 0, i32 1) }, ptr %l38, !tbaa !27
  %t60 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t61 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 16, i64 8)
  store ptr %t61, ptr %lp6
  %t63 = load ptr, ptr %lp6
  store { i64, ptr } %t60, ptr %t63, !tbaa !27
  store { i64, ptr } %t55, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t66 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t68 = extractvalue { i64, ptr } %t66, 0
  store i64 %t68, ptr %l9, !tbaa !24
  br label %bb22
bb22:
  store %olang.scope zeroinitializer, ptr %s7
  %t70 = load i64, ptr %l8, !tbaa !24
  %t71 = load i64, ptr %l9, !tbaa !24
  %t74 = icmp slt i64 %t70, %t71
  %t76 = xor i1 %t74, true
  br i1 %t76, label %bb23, label %bb24
bb23:
  call void @__olang_scope_close(ptr %s7)
  br label %bb51
bb24:
  br label %bb25
bb25:
  %t78 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t78, ptr %l47, !tbaa !27
  %t79 = load i64, ptr %l8, !tbaa !24
  %t81 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !27
  %t83 = getelementptr { i64, ptr }, ptr %t82, i64 %t79
  %t84 = load { i64, ptr }, ptr %t83, !tbaa !37
  store { i64, ptr } %t84, ptr %l10, !tbaa !27
  %t86 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t88 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s4, ptr %s7, { i64, ptr } %t86, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d80, i32 0, i32 1) })
  store i1 %t88, ptr %l51
  br label %bb26
bb26:
  %t89 = load i1, ptr %l51, !tbaa !21
  br i1 %t89, label %bb27, label %bb28
bb27:
  call void @__olang_scope_close(ptr %s7)
  br label %bb50
bb28:
  br label %bb29
bb29:
  %t90 = load ptr, ptr %lp5
  %t91 = load { i64, ptr }, ptr %t90, !tbaa !27
  %t93 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s7, { i64, ptr } %t91, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d81, i32 0, i32 1) })
  store i1 %t93, ptr %l53
  br label %bb30
bb30:
  %t94 = load i1, ptr %l53, !tbaa !21
  br i1 %t94, label %bb31, label %bb32
bb31:
  %t95 = ptrtoint ptr %v0 to i64
  store i64 %t95, ptr %l54, !tbaa !24
  %t96 = load i1, ptr @olang_2esole_2ecompiler__2ffetch__2ecompiler__2ffetch__3aFetcher__2eload_2elocal_2e5
  br i1 %t96, label %bb33, label %bb34
bb32:
  store %olang.scope zeroinitializer, ptr %s11
  %t98 = load ptr, ptr %lp6
  %t99 = load { i64, ptr }, ptr %t98, !tbaa !27
  %t101 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s11, { i64, ptr } %t99, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d82, i32 0, i32 1) })
  store i1 %t101, ptr %l62
  br label %bb39
bb33:
  %t102 = call ptr @__olang_region_make(ptr %v0)
  %t103 = ptrtoint ptr %t102 to i64
  store i64 %t103, ptr %l54, !tbaa !24
  br label %bb34
bb34:
  %t104 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t106 = extractvalue { i64, ptr } %t104, 1
  %t107 = extractvalue { i64, ptr } %t104, 0
  %t108 = load i64, ptr %l54
  %t109 = inttoptr i64 %t108 to ptr
  %t110 = call ptr @__olang_scope_alloc(ptr %t109, i64 %t107)
  call void @olang_textcopy(ptr %t110, ptr %t106, i64 %t107)
  %t111 = insertvalue { i64, ptr } undef, i64 %t107, 0
  %t112 = insertvalue { i64, ptr } %t111, ptr %t110, 1
  store { i64, ptr } %t112, ptr %l57, !tbaa !27
  %t113 = load i1, ptr @olang_2esole_2ecompiler__2ffetch__2ecompiler__2ffetch__3aFetcher__2eload_2elocal_2e5
  br i1 %t113, label %bb35, label %bb36
bb35:
  %t115 = load i64, ptr %l54
  %t116 = inttoptr i64 %t115 to ptr
  %t117 = load { i64, ptr }, ptr %l57
  %t118 = extractvalue { i64, ptr } %t117, 1
  %t119 = call ptr @__olang_region_or(ptr %t118, ptr null)
  %t120 = icmp ne ptr %t119, null
  %t121 = select i1 %t120, ptr %t119, ptr null
  %t122 = icmp eq ptr %t121, %t116
  call void @__olang_region_settle(ptr %t116, i1 %t122)
  br label %bb36
bb36:
  %t123 = load ptr, ptr %lp5
  %t124 = load { i64, ptr }, ptr %t123, !tbaa !27
  store { i64, ptr } %t124, ptr %l59, !tbaa !27
  %t125 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t126 = load ptr, ptr %lp5
  store { i64, ptr } %t125, ptr %t126, !tbaa !27
  %t127 = load i1, ptr @olang_2esole_2ecompiler__2ffetch__2ecompiler__2ffetch__3aFetcher__2eload_2elocal_2e5
  br i1 %t127, label %bb37, label %bb38
bb37:
  %t129 = load { i64, ptr }, ptr %l59
  %t130 = extractvalue { i64, ptr } %t129, 1
  call void @__olang_region_release(ptr %t130)
  store { i64, ptr } zeroinitializer, ptr %l59
  br label %bb38
bb38:
  br label %bb49
bb39:
  %t131 = load i1, ptr %l62, !tbaa !21
  br i1 %t131, label %bb40, label %bb41
bb40:
  %t132 = ptrtoint ptr %v0 to i64
  store i64 %t132, ptr %l63, !tbaa !24
  %t133 = load i1, ptr @olang_2esole_2ecompiler__2ffetch__2ecompiler__2ffetch__3aFetcher__2eload_2elocal_2e6
  br i1 %t133, label %bb42, label %bb43
bb41:
  br label %bb48
bb42:
  %t135 = call ptr @__olang_region_make(ptr %v0)
  %t136 = ptrtoint ptr %t135 to i64
  store i64 %t136, ptr %l63, !tbaa !24
  br label %bb43
bb43:
  %t137 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t139 = extractvalue { i64, ptr } %t137, 1
  %t140 = extractvalue { i64, ptr } %t137, 0
  %t141 = load i64, ptr %l63
  %t142 = inttoptr i64 %t141 to ptr
  %t143 = call ptr @__olang_scope_alloc(ptr %t142, i64 %t140)
  call void @olang_textcopy(ptr %t143, ptr %t139, i64 %t140)
  %t144 = insertvalue { i64, ptr } undef, i64 %t140, 0
  %t145 = insertvalue { i64, ptr } %t144, ptr %t143, 1
  store { i64, ptr } %t145, ptr %l66, !tbaa !27
  %t146 = load i1, ptr @olang_2esole_2ecompiler__2ffetch__2ecompiler__2ffetch__3aFetcher__2eload_2elocal_2e6
  br i1 %t146, label %bb44, label %bb45
bb44:
  %t148 = load i64, ptr %l63
  %t149 = inttoptr i64 %t148 to ptr
  %t150 = load { i64, ptr }, ptr %l66
  %t151 = extractvalue { i64, ptr } %t150, 1
  %t152 = call ptr @__olang_region_or(ptr %t151, ptr null)
  %t153 = icmp ne ptr %t152, null
  %t154 = select i1 %t153, ptr %t152, ptr null
  %t155 = icmp eq ptr %t154, %t149
  call void @__olang_region_settle(ptr %t149, i1 %t155)
  br label %bb45
bb45:
  %t156 = load ptr, ptr %lp6
  %t157 = load { i64, ptr }, ptr %t156, !tbaa !27
  store { i64, ptr } %t157, ptr %l68, !tbaa !27
  %t158 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t159 = load ptr, ptr %lp6
  store { i64, ptr } %t158, ptr %t159, !tbaa !27
  %t160 = load i1, ptr @olang_2esole_2ecompiler__2ffetch__2ecompiler__2ffetch__3aFetcher__2eload_2elocal_2e6
  br i1 %t160, label %bb46, label %bb47
bb46:
  %t162 = load { i64, ptr }, ptr %l68
  %t163 = extractvalue { i64, ptr } %t162, 1
  call void @__olang_region_release(ptr %t163)
  store { i64, ptr } zeroinitializer, ptr %l68
  br label %bb47
bb47:
  br label %bb48
bb48:
  call void @__olang_scope_close(ptr %s11)
  br label %bb49
bb49:
  call void @__olang_scope_close(ptr %s7)
  br label %bb50
bb50:
  %t164 = load i64, ptr %l8, !tbaa !24
  %t166 = add i64 %t164, 1
  store i64 %t166, ptr %l8, !tbaa !24
  br label %bb22
bb51:
  %t168 = load ptr, ptr %lp6
  %t169 = load { i64, ptr }, ptr %t168, !tbaa !27
  %t171 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s4, { i64, ptr } %t169, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d83, i32 0, i32 1) })
  store i1 %t171, ptr %l73
  br label %bb52
bb52:
  %t172 = load i1, ptr %l73, !tbaa !21
  br i1 %t172, label %bb53, label %bb54
bb53:
  call void @__olang_scope_close(ptr %s4)
  br label %bb58
bb54:
  br label %bb55
bb55:
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t175 = getelementptr %"compiler/fetch:Fetcher", ptr %t173, i32 0, i32 6
  %t176 = load ptr, ptr %lp5
  %t177 = load { i64, ptr }, ptr %t176, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t175, { i64, ptr } %t177)
  br label %bb56
bb56:
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t182 = getelementptr %"compiler/fetch:Fetcher", ptr %t180, i32 0, i32 7
  %t183 = load ptr, ptr %lp6
  %t184 = load { i64, ptr }, ptr %t183, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t182, { i64, ptr } %t184)
  br label %bb57
bb57:
  call void @__olang_scope_close(ptr %s4)
  br label %bb58
bb58:
  br label %bb11
bb59:
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
  %t200 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_84, 0
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
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l17, { i64, ptr } { i64 100, ptr getelementptr inbounds (<{ i64, [100 x i8] }>, ptr @.d85, i32 0, i32 1) })
  br label %bb53
bb53:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l17, { i64, ptr } { i64 77, ptr getelementptr inbounds (<{ i64, [77 x i8] }>, ptr @.d86, i32 0, i32 1) })
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
  %s1 = alloca %olang.scope
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
  store %olang.scope zeroinitializer, ptr %s1
  %t14 = load i32, ptr @G_2estd_2fio_2eStderr, !tbaa !23
  %t15 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t15, 1
  %t18 = extractvalue { i64, ptr } %t15, 0
  %t19 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d87, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d87, i32 0, i32 1) }, 0
  %t21 = add i64 %t18, %t20
  %t22 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t21)
  call void @olang_textcopy(ptr %t22, ptr %t17, i64 %t18)
  %t23 = getelementptr i8, ptr %t22, i64 %t18
  call void @olang_textcopy(ptr %t23, ptr %t19, i64 %t20)
  %t24 = insertvalue { i64, ptr } undef, i64 %t21, 0
  %t25 = insertvalue { i64, ptr } %t24, ptr %t22, 1
  %t27 = extractvalue { i64, ptr } %t25, 0
  %t28 = extractvalue { i64, ptr } %t25, 1
  %t29 = mul i64 %t27, 1
  %t30 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t29)
  call void @llvm.memcpy.p0.p0.i64(ptr %t30, ptr %t28, i64 %t29, i1 false)
  %t31 = insertvalue { i64, ptr } undef, i64 %t27, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t30, 1
  call void @compiler_2fspin_2eSay(ptr %s1, i32 %t14, { i64, ptr } %t32)
  br label %bb4
bb3:
  br label %bb5
bb4:
  call void @__olang_scope_close(ptr %s1)
  br label %bb5
bb5:
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d88, i32 0, i32 1) }, ptr %l4, !tbaa !27
  %t3 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t4 = call { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %v0, ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %a0, { i64, ptr } %t3, i1 true, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d89, i32 0, i32 1) })
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
  %t10 = insertvalue [5 x { i64, ptr }] undef, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d90, i32 0, i32 1) }, 0
  %t11 = insertvalue [5 x { i64, ptr }] %t10, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d91, i32 0, i32 1) }, 1
  %t13 = insertvalue [5 x { i64, ptr }] %t11, { i64, ptr } %t7, 2
  %t14 = insertvalue [5 x { i64, ptr }] %t13, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d92, i32 0, i32 1) }, 3
  %t15 = insertvalue [5 x { i64, ptr }] %t14, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d93, i32 0, i32 1) }, 4
  store [5 x { i64, ptr }] %t15, ptr %l2
  %t18 = insertvalue { i64, ptr } undef, i64 5, 0
  %t19 = insertvalue { i64, ptr } %t18, ptr %l2, 1
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d88, i32 0, i32 1) }, ptr %l12, !tbaa !27
  %t21 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t22 = call { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %s0, ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t19, { i64, ptr } %t21, i1 true, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d89, i32 0, i32 1) })
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d94, i32 0, i32 1) }, ptr %l19, !tbaa !27
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d95, i32 0, i32 1) }, ptr %l25, !tbaa !27
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d96, i32 0, i32 1) }, ptr %l36, !tbaa !27
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
  %t6 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d97, i32 0, i32 1) }, 1
  %t7 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d97, i32 0, i32 1) }, 0
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d98, i32 0, i32 1) }, ptr %l14, !tbaa !27
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
  %t53 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d99, i32 0, i32 1) }, 1
  %t54 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d99, i32 0, i32 1) }, 0
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d100, i32 0, i32 1) }, ptr %l28, !tbaa !27
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
  %t101 = call i1 @compiler_2ffetch_2esh(ptr %s0, ptr %s0, { i64, ptr } %t99, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x { i64, ptr }] }>, ptr @.d101, i32 0, i32 1) })
  store i1 %t101, ptr %l33
  br label %bb13
bb13:
  %t102 = load i1, ptr %l33, !tbaa !21
  br i1 %t102, label %bb14, label %bb15
bb14:
  %t103 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t105 = call i1 @compiler_2ffetch_2esh(ptr %s0, ptr %s0, { i64, ptr } %t103, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x { i64, ptr }] }>, ptr @.d102, i32 0, i32 1) })
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
  %t110 = call i1 @compiler_2ffetch_2esh(ptr %s0, ptr %s0, { i64, ptr } %t108, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x { i64, ptr }] }>, ptr @.d103, i32 0, i32 1) })
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d104, i32 0, i32 1) }, ptr %l44, !tbaa !27
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d88, i32 0, i32 1) }, ptr %l5, !tbaa !27
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
  %t27 = call ptr @__olang_region_home(ptr %t26)
  %t28 = icmp ne ptr %t27, null
  %t29 = select i1 %t28, ptr %t27, ptr null
  %t30 = icmp eq ptr %t29, %t22
  call void @__olang_region_settle(ptr %t22, i1 %t30)
  br label %bb5
bb5:
  %t31 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l22
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t31, ptr %l11
  %t32 = ptrtoint ptr %v3 to i64
  store i64 %t32, ptr %l24, !tbaa !24
  %t33 = load i1, ptr @olang_2esole_2ecompiler_2ffetch_3aFetcher_2e7
  br i1 %t33, label %bb6, label %bb7
bb6:
  %t35 = call ptr @__olang_region_make(ptr %v3)
  %t36 = ptrtoint ptr %t35 to i64
  store i64 %t36, ptr %l24, !tbaa !24
  br label %bb7
bb7:
  %t37 = load i64, ptr %l24
  %t38 = inttoptr i64 %t37 to ptr
  %t39 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t38, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t39, ptr %l26
  br label %bb8
bb8:
  %t40 = load i1, ptr @olang_2esole_2ecompiler_2ffetch_3aFetcher_2e7
  br i1 %t40, label %bb9, label %bb10
bb9:
  %t42 = load i64, ptr %l24
  %t43 = inttoptr i64 %t42 to ptr
  %t44 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l26, i32 0, i32 0
  %t45 = load { i64, ptr }, ptr %t44
  %t46 = extractvalue { i64, ptr } %t45, 1
  %t47 = call ptr @__olang_region_or(ptr %t46, ptr null)
  %t48 = call ptr @__olang_region_home(ptr %t47)
  %t49 = icmp ne ptr %t48, null
  %t50 = select i1 %t49, ptr %t48, ptr null
  %t51 = icmp eq ptr %t50, %t43
  call void @__olang_region_settle(ptr %t43, i1 %t51)
  br label %bb10
bb10:
  %t52 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l26
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t52, ptr %l12
  %t53 = ptrtoint ptr %v3 to i64
  store i64 %t53, ptr %l28, !tbaa !24
  %t54 = load i1, ptr @olang_2esole_2ecompiler_2ffetch_3aFetcher_2e8
  br i1 %t54, label %bb11, label %bb12
bb11:
  %t56 = call ptr @__olang_region_make(ptr %v3)
  %t57 = ptrtoint ptr %t56 to i64
  store i64 %t57, ptr %l28, !tbaa !24
  br label %bb12
bb12:
  %t58 = load i64, ptr %l28
  %t59 = inttoptr i64 %t58 to ptr
  %t60 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t59, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t60, ptr %l30
  br label %bb13
bb13:
  %t61 = load i1, ptr @olang_2esole_2ecompiler_2ffetch_3aFetcher_2e8
  br i1 %t61, label %bb14, label %bb15
bb14:
  %t63 = load i64, ptr %l28
  %t64 = inttoptr i64 %t63 to ptr
  %t65 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l30, i32 0, i32 0
  %t66 = load { i64, ptr }, ptr %t65
  %t67 = extractvalue { i64, ptr } %t66, 1
  %t68 = call ptr @__olang_region_or(ptr %t67, ptr null)
  %t69 = call ptr @__olang_region_home(ptr %t68)
  %t70 = icmp ne ptr %t69, null
  %t71 = select i1 %t70, ptr %t69, ptr null
  %t72 = icmp eq ptr %t71, %t64
  call void @__olang_region_settle(ptr %t64, i1 %t72)
  br label %bb15
bb15:
  %t73 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l30
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t73, ptr %l13
  %t74 = ptrtoint ptr %v3 to i64
  store i64 %t74, ptr %l32, !tbaa !24
  %t75 = load i1, ptr @olang_2esole_2ecompiler_2ffetch_3aFetcher_2e9
  br i1 %t75, label %bb16, label %bb17
bb16:
  %t77 = call ptr @__olang_region_make(ptr %v3)
  %t78 = ptrtoint ptr %t77 to i64
  store i64 %t78, ptr %l32, !tbaa !24
  br label %bb17
bb17:
  %t79 = load i64, ptr %l32
  %t80 = inttoptr i64 %t79 to ptr
  %t81 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t80, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t81, ptr %l34
  br label %bb18
bb18:
  %t82 = load i1, ptr @olang_2esole_2ecompiler_2ffetch_3aFetcher_2e9
  br i1 %t82, label %bb19, label %bb20
bb19:
  %t84 = load i64, ptr %l32
  %t85 = inttoptr i64 %t84 to ptr
  %t86 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l34, i32 0, i32 0
  %t87 = load { i64, ptr }, ptr %t86
  %t88 = extractvalue { i64, ptr } %t87, 1
  %t89 = call ptr @__olang_region_or(ptr %t88, ptr null)
  %t90 = call ptr @__olang_region_home(ptr %t89)
  %t91 = icmp ne ptr %t90, null
  %t92 = select i1 %t91, ptr %t90, ptr null
  %t93 = icmp eq ptr %t92, %t85
  call void @__olang_region_settle(ptr %t85, i1 %t93)
  br label %bb20
bb20:
  %t94 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l34
  %t95 = getelementptr %"compiler/fetch:Fetcher", ptr %l36, i32 0, i32 0
  %t96 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t96, ptr %t95, !tbaa !27
  %t97 = getelementptr %"compiler/fetch:Fetcher", ptr %l36, i32 0, i32 1
  %t98 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t98, ptr %t97, !tbaa !27
  %t99 = getelementptr %"compiler/fetch:Fetcher", ptr %l36, i32 0, i32 2
  %t100 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t100, ptr %t99, !tbaa !27
  %t101 = getelementptr %"compiler/fetch:Fetcher", ptr %l36, i32 0, i32 3
  %t102 = load i1, ptr %l8, !tbaa !21
  store i1 %t102, ptr %t101, !tbaa !21
  %t103 = getelementptr %"compiler/fetch:Fetcher", ptr %l36, i32 0, i32 4
  %t104 = load i1, ptr %l9, !tbaa !21
  store i1 %t104, ptr %t103, !tbaa !21
  %t105 = getelementptr %"compiler/fetch:Fetcher", ptr %l36, i32 0, i32 5
  %t106 = load i1, ptr %l10, !tbaa !21
  store i1 %t106, ptr %t105, !tbaa !21
  %t107 = getelementptr %"compiler/fetch:Fetcher", ptr %l36, i32 0, i32 6
  %t108 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t108, ptr %t107
  %t109 = getelementptr %"compiler/fetch:Fetcher", ptr %l36, i32 0, i32 7
  %t110 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t110, ptr %t109
  %t111 = getelementptr %"compiler/fetch:Fetcher", ptr %l36, i32 0, i32 8
  %t112 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t112, ptr %t111
  %t113 = getelementptr %"compiler/fetch:Fetcher", ptr %l36, i32 0, i32 9
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t94, ptr %t113
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
@.d14 = private constant <{ i64, [12 x { i64, ptr }] }> <{ i64 0, [12 x { i64, ptr }] [{ i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d105, i32 0, i32 1) }, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d106, i32 0, i32 1) }, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d107, i32 0, i32 1) }, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d106, i32 0, i32 1) }, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d108, i32 0, i32 1) }, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d106, i32 0, i32 1) }, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d109, i32 0, i32 1) }, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d110, i32 0, i32 1) }, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d111, i32 0, i32 1) }, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d112, i32 0, i32 1) }, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d113, i32 0, i32 1) }, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d114, i32 0, i32 1) }] }>, align 8
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
@olang_2esole_2ecompiler__2ffetch__2ecompiler__2ffetch__3aFetcher__2eFetch_2elocal_2e13 = weak hidden constant i1 false
declare void @__olang_region_release(ptr) noinline
@.d22 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d23 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c".fetch-" }>, align 8
@.d24 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"fetching " }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d25 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"olang: fetching " }>, align 8
@.d26 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" into " }>, align 8
@.d27 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" at " }>, align 8
@.d28 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c", as olang.lock says" }>, align 8
@.d29 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@.d30 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"git" }>, align 8
@.d31 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"init" }>, align 8
@.d32 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-q" }>, align 8
@.d33 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"git" }>, align 8
@.d34 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-C" }>, align 8
@.d35 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"fetch" }>, align 8
@.d36 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-q" }>, align 8
@.d37 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"--depth" }>, align 8
@.d38 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"1" }>, align 8
@.d39 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"--" }>, align 8
@.d40 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"git" }>, align 8
@.d41 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-C" }>, align 8
@.d42 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"checkout" }>, align 8
@.d43 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-q" }>, align 8
@.d44 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"FETCH_HEAD" }>, align 8
@.d45 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"git" }>, align 8
@.d46 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"clone" }>, align 8
@.d47 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-q" }>, align 8
@.d48 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"--" }>, align 8
@.d49 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"git" }>, align 8
@.d50 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-C" }>, align 8
@.d51 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"checkout" }>, align 8
@.d52 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-q" }>, align 8
@.d53 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"compiling" }>, align 8
@.d54 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"olang: fetching " }>, align 8
@.d55 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" into " }>, align 8
@.d56 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"--branch=" }>, align 8
@.d57 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"--quiet" }>, align 8
@.d58 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d59 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"git" }>, align 8
@.d60 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"clone" }>, align 8
@.d61 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"--quiet" }>, align 8
@.d62 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"--depth" }>, align 8
@.d63 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"1" }>, align 8
@.d64 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"--" }>, align 8
@olang_2esole_2ecompiler__2ffetch__2ecompiler__2ffetch__3aFetcher__2eFetch_2elocal_2e20 = weak hidden constant i1 false
@.d65 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d66 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d67 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d68 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"olang: updated " }>, align 8
@.d69 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" to " }>, align 8
@.d70 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"olang: updated " }>, align 8
@.d71 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" to " }>, align 8
@.d72 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" (was " }>, align 8
@.d73 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d74 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"olang: " }>, align 8
@.d75 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c" is already at " }>, align 8
@.d76 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"#" }>, align 8
@.d77 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d78 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d79 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d80 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d81 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler__2ffetch__2ecompiler__2ffetch__3aFetcher__2eload_2elocal_2e5 = weak hidden constant i1 false
@.d82 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
@olang_2esole_2ecompiler__2ffetch__2ecompiler__2ffetch__3aFetcher__2eload_2elocal_2e6 = weak hidden constant i1 false
@.d83 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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
define internal i1 @olang_lambda_84(ptr %env, i64 %a0, i64 %a1) #0 {
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

@.d85 = private constant <{ i64, [100 x i8] }> <{ i64 0, [100 x i8] c"# olang.lock - the commit each remote repository is built from (M23b). Delete a line to update that\0A" }>, align 8
@.d86 = private constant <{ i64, [77 x i8] }> <{ i64 0, [77 x i8] c"# repository, or build with -u to update every one the build reaches (M23c).\0A" }>, align 8
@.d87 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d88 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d89 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d90 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"git" }>, align 8
@.d91 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-C" }>, align 8
@.d92 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"rev-parse" }>, align 8
@.d93 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"HEAD" }>, align 8
@.d94 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d95 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d96 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d97 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"/example.com/me/" }>, align 8
@.d98 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d99 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"/lib.olang" }>, align 8
@.d100 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d101 = private constant <{ i64, [3 x { i64, ptr }] }> <{ i64 0, [3 x { i64, ptr }] [{ i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d105, i32 0, i32 1) }, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d115, i32 0, i32 1) }, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d111, i32 0, i32 1) }] }>, align 8
@.d102 = private constant <{ i64, [9 x { i64, ptr }] }> <{ i64 0, [9 x { i64, ptr }] [{ i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d105, i32 0, i32 1) }, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d106, i32 0, i32 1) }, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d107, i32 0, i32 1) }, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d106, i32 0, i32 1) }, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d108, i32 0, i32 1) }, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d106, i32 0, i32 1) }, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d109, i32 0, i32 1) }, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d116, i32 0, i32 1) }, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d117, i32 0, i32 1) }] }>, align 8
@.d103 = private constant <{ i64, [11 x { i64, ptr }] }> <{ i64 0, [11 x { i64, ptr }] [{ i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d105, i32 0, i32 1) }, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d106, i32 0, i32 1) }, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d107, i32 0, i32 1) }, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d106, i32 0, i32 1) }, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d108, i32 0, i32 1) }, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d106, i32 0, i32 1) }, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d109, i32 0, i32 1) }, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d110, i32 0, i32 1) }, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d111, i32 0, i32 1) }, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d113, i32 0, i32 1) }, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d118, i32 0, i32 1) }] }>, align 8
@.d104 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2ffetch_3aFetcher_2e6 = weak hidden constant i1 false
declare ptr @__olang_region_home(ptr)
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
@.d105 = private unnamed_addr constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"git" }>, align 8
@.d106 = private unnamed_addr constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-c" }>, align 8
@.d107 = private unnamed_addr constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"user.name=t" }>, align 8
@.d108 = private unnamed_addr constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"user.email=t@t" }>, align 8
@.d109 = private unnamed_addr constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"commit.gpgsign=false" }>, align 8
@.d110 = private unnamed_addr constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"commit" }>, align 8
@.d111 = private unnamed_addr constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-q" }>, align 8
@.d112 = private unnamed_addr constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-a" }>, align 8
@.d113 = private unnamed_addr constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-m" }>, align 8
@.d114 = private unnamed_addr constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"y" }>, align 8
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
@.d115 = private unnamed_addr constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"init" }>, align 8
@.d116 = private unnamed_addr constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"add" }>, align 8
@.d117 = private unnamed_addr constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d118 = private unnamed_addr constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"x" }>, align 8
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
declare void @compiler_2fspin_2eRetitle(ptr %v0, { i64, ptr } %a0)
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
@G_2estd_2fio_2eStderr = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare void @compiler_2fspin_2eSay(ptr %v0, i32 %a0, { i64, ptr } %a1)
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

attributes #0 = { null_pointer_is_valid "target-cpu"="sapphirerapids" "target-features"="+64bit,+adx,+aes,+amx-bf16,+amx-int8,+amx-tile,+avx,+avx2,-avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512fp16,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+cldemote,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+rtm,+sahf,+serialize,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+tsxldtrk,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-complex,-amx-fp16,-avx10.1-256,-avx10.1-512,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-kl,-lwp,-mwaitx,-ndd,-pconfig,-pku,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-uintr,-usermsr,-waitpkg,-widekl,-xop" "prefer-vector-width"="512" nounwind }
