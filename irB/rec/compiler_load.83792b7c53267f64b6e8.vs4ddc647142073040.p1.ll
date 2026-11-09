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
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Import" = type { %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, { i64, ptr }, i64, i64, { i64, ptr }, %"compiler/source:Span" }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/bindgen:Translation" = type { { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i1 }
%"std/os:FileInfo" = type { i32, i64, i64 }
%"std/prelude/text:LineIter" = type { { i64, ptr }, i64 }
%"compiler/cond:Decision" = type { i32, i1 }
%"compiler/cond:Eval" = type { { i64, ptr }, ptr, ptr, ptr, i1, i1, i1, %"compiler/source:Span", %"compiler/diagmsg:Msg", i64, i64, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scan:Tokens" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/token:Token" = type { i32, i8, i32, i32 }
%"compiler/source:Source" = type { { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/ast:TopIf" = type { ptr, ptr, ptr, ptr }
%"compiler/ast:TopBranch" = type { %"compiler/source:Span", { i64, ptr }, i64 }
%"compiler/scan:Diag" = type { i32, i32, i32, i8 }
%"compiler/parse:Oracle" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/os:Output" = type { i32, { i64, ptr }, { i64, ptr } }
define dso_local i1 @compiler_2fload_2eLinkIsFile(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i1
  %l5 = alloca i1
  %l7 = alloca i1
  %l8 = alloca i1
  %l10 = alloca i1
  %l11 = alloca i1
  %l13 = alloca i1
  %l14 = alloca i1
  %l17 = alloca { i64, ptr }
  %l18 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d0, i32 0, i32 1) }, ptr %l3, !tbaa !27
  %t4 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t5 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } %t4)
  store i1 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i1, ptr %l4, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb5
bb3:
  %t7 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t9 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %s0, { i64, ptr } %t7, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d1, i32 0, i32 1) })
  store i1 %t9, ptr %l7
  br label %bb4
bb4:
  %t10 = load i1, ptr %l7, !tbaa !21
  store i1 %t10, ptr %l5, !tbaa !21
  br label %bb5
bb5:
  %t11 = load i1, ptr %l5, !tbaa !21
  br i1 %t11, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb9
bb7:
  %t12 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t14 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %s0, { i64, ptr } %t12, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d2, i32 0, i32 1) })
  store i1 %t14, ptr %l10
  br label %bb8
bb8:
  %t15 = load i1, ptr %l10, !tbaa !21
  store i1 %t15, ptr %l8, !tbaa !21
  br label %bb9
bb9:
  %t16 = load i1, ptr %l8, !tbaa !21
  br i1 %t16, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb13
bb11:
  %t17 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t19 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %s0, { i64, ptr } %t17, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store i1 %t19, ptr %l13
  br label %bb12
bb12:
  %t20 = load i1, ptr %l13, !tbaa !21
  store i1 %t20, ptr %l11, !tbaa !21
  br label %bb13
bb13:
  %t21 = load i1, ptr %l11, !tbaa !21
  br i1 %t21, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l14, !tbaa !21
  br label %bb17
bb15:
  %t22 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d4, i32 0, i32 1) }, ptr %l17, !tbaa !27
  %t25 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t26 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %s0, { i64, ptr } %t22, { i64, ptr } %t25)
  store i1 %t26, ptr %l18
  br label %bb16
bb16:
  %t27 = load i1, ptr %l18, !tbaa !21
  store i1 %t27, ptr %l14, !tbaa !21
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s0)
  %t28 = load i1, ptr %l14, !tbaa !21
  store i1 %t28, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fload_2eLockPath(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca [2 x { i64, ptr }]
  %l3 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call { i64, ptr } @std_2ffilepath_2eDir(ptr %v0, ptr %s0, { i64, ptr } %a0)
  store { i64, ptr } %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t5 = insertvalue [2 x { i64, ptr }] undef, { i64, ptr } %t4, 0
  %t6 = insertvalue [2 x { i64, ptr }] %t5, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  store [2 x { i64, ptr }] %t6, ptr %l1
  %t9 = insertvalue { i64, ptr } undef, i64 2, 0
  %t10 = insertvalue { i64, ptr } %t9, ptr %l1, 1
  %t12 = call { i64, ptr } @std_2ffilepath_2eJoin(ptr %s0, ptr %v1, { i64, ptr } %t10)
  store { i64, ptr } %t12, ptr %l7
  br label %bb2
bb2:
  call void @__olang_scope_close(ptr %s0)
  %t13 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t13, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fload_2eStdDir(ptr %v0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i32
  %l8 = alloca i1
  %l12 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l14 = alloca i32
  %l16 = alloca i1
  %l19 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l21 = alloca i64
  %l22 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %s0, ptr %s0, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d6, i32 0, i32 1) })
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d7, i32 0, i32 1) }, ptr %l2, !tbaa !27
  br label %bb6
bb6:
  %t12 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t12, ptr %l0, !tbaa !27
  %t13 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t15 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t13, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d8, i32 0, i32 1) })
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
  %t27 = call { i32, { i64, ptr } } @std_2fos_2eReadLink(ptr %s0, ptr %s0, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d9, i32 0, i32 1) })
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
  store i1 %t36, ptr %l16, !tbaa !21
  %t37 = load i32, ptr %l14, !tbaa !23
  %t38 = ashr i32 %t37, 16
  %t40 = icmp eq i32 %t38, 1
  br i1 %t40, label %bb13, label %bb14
bb13:
  call void @__olang_errpay_pop()
  br label %bb14
bb14:
  br label %bb15
bb15:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d10, i32 0, i32 1) }, ptr %l19, !tbaa !27
  %t42 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t42, ptr %l20, !tbaa !27
  %t43 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t44 = extractvalue { i64, ptr } %t43, 0
  store i64 %t44, ptr %l21, !tbaa !24
  %t45 = load i64, ptr %l21, !tbaa !24
  %t46 = mul i64 %t45, 1
  %t47 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t46)
  %t48 = insertvalue { i64, ptr } undef, i64 %t45, 0
  %t49 = insertvalue { i64, ptr } %t48, ptr %t47, 1
  store { i64, ptr } %t49, ptr %l22, !tbaa !27
  %t50 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !27
  %t52 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !27
  %t54 = load i64, ptr %l21, !tbaa !24
  %t55 = mul i64 %t54, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t51, ptr %t53, i64 %t55, i1 false)
  %t56 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t56, ptr %l20, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t57 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t57, ptr %rv
  br label %ret
bb16:
  %t58 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t61 = call { i64, ptr } @std_2ffilepath_2eDir(ptr %s0, ptr %s0, { i64, ptr } %t58)
  store { i64, ptr } %t61, ptr %l24
  br label %bb17
bb17:
  %t62 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t63 = extractvalue { i64, ptr } %t62, 1
  %t64 = extractvalue { i64, ptr } %t62, 0
  %t65 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t66 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  %t67 = add i64 %t64, %t66
  %t68 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t67)
  call void @olang_textcopy(ptr %t68, ptr %t63, i64 %t64)
  %t69 = getelementptr i8, ptr %t68, i64 %t64
  call void @olang_textcopy(ptr %t69, ptr %t65, i64 %t66)
  %t70 = insertvalue { i64, ptr } undef, i64 %t67, 0
  %t71 = insertvalue { i64, ptr } %t70, ptr %t68, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t71, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2eChosen(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l13 = alloca ptr
  %l16 = alloca i64
  %l20 = alloca i64
  %l23 = alloca i64
  %l44 = alloca i32
  %l53 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/load:Loader", ptr %t1, i32 0, i32 10
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  store ptr %t7, ptr %l13
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l13, !tbaa !29
  store ptr %t8, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  %t9 = load ptr, ptr %l3, !tbaa !29
  %t11 = getelementptr %"compiler/load:Module", ptr %t9, i32 0, i32 14
  %t13 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2eLen_3cI32_3e(ptr %v0, ptr %t11)
  store i64 %t13, ptr %l16
  br label %bb2
bb2:
  %t14 = load i64, ptr %l16, !tbaa !24
  store i64 %t14, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t15 = load i64, ptr %l5, !tbaa !24
  %t16 = load i64, ptr %l4, !tbaa !24
  %t19 = icmp sgt i64 %t15, %t16
  br i1 %t19, label %bb3, label %bb4
bb3:
  %t21 = load i64, ptr %l6, !tbaa !24
  %t23 = icmp sgt i64 %t21, 0
  br i1 %t23, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb8
bb5:
  %t25 = load i64, ptr %l5, !tbaa !24
  %t26 = load i64, ptr %l4, !tbaa !24
  %t29 = sub i64 %t25, %t26
  %t30 = load i64, ptr %l6, !tbaa !24
  %t33 = add i64 %t29, %t30
  %t35 = sub i64 %t33, 1
  %t36 = load i64, ptr %l6, !tbaa !24
  %t39 = sdiv i64 %t35, %t36
  store i64 %t39, ptr %l23, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb7
bb7:
  %t41 = load i64, ptr %l23, !tbaa !24
  store i64 %t41, ptr %l20, !tbaa !24
  br label %bb8
bb8:
  %t42 = load i64, ptr %l20, !tbaa !24
  store i64 %t42, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb9
bb9:
  %t43 = load i64, ptr %l8, !tbaa !24
  %t44 = load i64, ptr %l7, !tbaa !24
  %t47 = icmp slt i64 %t43, %t44
  %t49 = xor i1 %t47, true
  br i1 %t49, label %bb10, label %bb11
bb10:
  br label %bb20
bb11:
  br label %bb12
bb12:
  %t51 = load i64, ptr %l4, !tbaa !24
  %t52 = load i64, ptr %l8, !tbaa !24
  %t53 = load i64, ptr %l6, !tbaa !24
  %t56 = mul i64 %t52, %t53
  %t59 = add i64 %t51, %t56
  store i64 %t59, ptr %l9, !tbaa !24
  %t61 = load ptr, ptr %l3, !tbaa !29
  %t63 = getelementptr %"compiler/load:Module", ptr %t61, i32 0, i32 14
  %t64 = load i64, ptr %l9, !tbaa !24
  %t67 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2eAt_3cI32_3e(ptr %v0, ptr %t63, i64 %t64)
  store i32 %t67, ptr %l44
  br label %bb13
bb13:
  %t69 = load i32, ptr %l44, !tbaa !23
  %t71 = icmp eq i32 %t69, %a2
  br i1 %t71, label %bb14, label %bb15
bb14:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load i64, ptr %l1, !tbaa !24
  %t75 = load i64, ptr %l9, !tbaa !24
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2edecide(ptr %v0, ptr %t73, i64 %t74, i64 %t75)
  br label %bb16
bb15:
  br label %bb18
bb16:
  %t79 = load ptr, ptr %l3, !tbaa !29
  %t81 = getelementptr %"compiler/load:Module", ptr %t79, i32 0, i32 16
  %t82 = load i64, ptr %l9, !tbaa !24
  %t85 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t81, i64 %t82)
  store i64 %t85, ptr %l53
  br label %bb17
bb17:
  %t86 = load i64, ptr %l53, !tbaa !24
  store i64 %t86, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t87 = load i64, ptr %l8, !tbaa !24
  %t89 = add i64 %t87, 1
  store i64 %t89, ptr %l8, !tbaa !24
  br label %bb9
bb20:
  %t91 = load i64, ptr @G_2ecompiler_2fload_2ePending, !tbaa !24
  store i64 %t91, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fload_2ecompiler_2fload_3aLoader_2eDecide(ptr %v0, ptr %a0, i64 %a1, i32 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca ptr
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
  %l21 = alloca ptr
  %l24 = alloca i64
  %l28 = alloca i64
  %l31 = alloca i64
  %l52 = alloca i32
  %l55 = alloca i1
  %l59 = alloca i64
  %l68 = alloca i64
  %l72 = alloca i64
  %l75 = alloca i64
  %l96 = alloca i64
  %l99 = alloca i1
  %l103 = alloca i64
  %l115 = alloca i64
  %l124 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/load:Loader", ptr %t1, i32 0, i32 10
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  store ptr %t7, ptr %l21
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l21, !tbaa !29
  store ptr %t8, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  %t9 = load ptr, ptr %l4, !tbaa !29
  %t11 = getelementptr %"compiler/load:Module", ptr %t9, i32 0, i32 14
  %t13 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2eLen_3cI32_3e(ptr %v0, ptr %t11)
  store i64 %t13, ptr %l24
  br label %bb2
bb2:
  %t14 = load i64, ptr %l24, !tbaa !24
  store i64 %t14, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t15 = load i64, ptr %l6, !tbaa !24
  %t16 = load i64, ptr %l5, !tbaa !24
  %t19 = icmp sgt i64 %t15, %t16
  br i1 %t19, label %bb3, label %bb4
bb3:
  %t21 = load i64, ptr %l7, !tbaa !24
  %t23 = icmp sgt i64 %t21, 0
  br i1 %t23, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l28, !tbaa !24
  br label %bb8
bb5:
  %t25 = load i64, ptr %l6, !tbaa !24
  %t26 = load i64, ptr %l5, !tbaa !24
  %t29 = sub i64 %t25, %t26
  %t30 = load i64, ptr %l7, !tbaa !24
  %t33 = add i64 %t29, %t30
  %t35 = sub i64 %t33, 1
  %t36 = load i64, ptr %l7, !tbaa !24
  %t39 = sdiv i64 %t35, %t36
  store i64 %t39, ptr %l31, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l31, !tbaa !24
  br label %bb7
bb7:
  %t41 = load i64, ptr %l31, !tbaa !24
  store i64 %t41, ptr %l28, !tbaa !24
  br label %bb8
bb8:
  %t42 = load i64, ptr %l28, !tbaa !24
  store i64 %t42, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb9
bb9:
  %t43 = load i64, ptr %l9, !tbaa !24
  %t44 = load i64, ptr %l8, !tbaa !24
  %t47 = icmp slt i64 %t43, %t44
  %t49 = xor i1 %t47, true
  br i1 %t49, label %bb10, label %bb11
bb10:
  br label %bb45
bb11:
  br label %bb12
bb12:
  %t51 = load i64, ptr %l5, !tbaa !24
  %t52 = load i64, ptr %l9, !tbaa !24
  %t53 = load i64, ptr %l7, !tbaa !24
  %t56 = mul i64 %t52, %t53
  %t59 = add i64 %t51, %t56
  store i64 %t59, ptr %l10, !tbaa !24
  %t61 = load ptr, ptr %l4, !tbaa !29
  %t63 = getelementptr %"compiler/load:Module", ptr %t61, i32 0, i32 14
  %t64 = load i64, ptr %l10, !tbaa !24
  %t67 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2eAt_3cI32_3e(ptr %v0, ptr %t63, i64 %t64)
  store i32 %t67, ptr %l52
  br label %bb13
bb13:
  %t69 = load i32, ptr %l52, !tbaa !23
  %t71 = icmp ne i32 %t69, %a2
  br i1 %t71, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l55, !tbaa !21
  br label %bb17
bb15:
  %t73 = load ptr, ptr %l4, !tbaa !29
  %t75 = getelementptr %"compiler/load:Module", ptr %t73, i32 0, i32 16
  %t76 = load i64, ptr %l10, !tbaa !24
  %t79 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t75, i64 %t76)
  store i64 %t79, ptr %l59
  br label %bb16
bb16:
  %t80 = load i64, ptr @G_2ecompiler_2fload_2ePending, !tbaa !24
  %t81 = load i64, ptr %l59, !tbaa !24
  %t83 = icmp ne i64 %t81, %t80
  store i1 %t83, ptr %l55, !tbaa !21
  br label %bb17
bb17:
  %t85 = load i1, ptr %l55, !tbaa !21
  br i1 %t85, label %bb18, label %bb19
bb18:
  br label %bb44
bb19:
  br label %bb20
bb20:
  %t86 = load ptr, ptr %l4, !tbaa !29
  %t88 = getelementptr %"compiler/load:Module", ptr %t86, i32 0, i32 16
  %t89 = load i64, ptr %l10, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t88, i64 %t89, i64 %a3)
  br label %bb21
bb21:
  store i64 0, ptr %l11, !tbaa !24
  %t94 = load ptr, ptr %l4, !tbaa !29
  %t96 = getelementptr %"compiler/load:Module", ptr %t94, i32 0, i32 14
  %t98 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2eLen_3cI32_3e(ptr %v0, ptr %t96)
  store i64 %t98, ptr %l68
  br label %bb22
bb22:
  %t99 = load i64, ptr %l68, !tbaa !24
  store i64 %t99, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t100 = load i64, ptr %l12, !tbaa !24
  %t101 = load i64, ptr %l11, !tbaa !24
  %t104 = icmp sgt i64 %t100, %t101
  br i1 %t104, label %bb23, label %bb24
bb23:
  %t106 = load i64, ptr %l13, !tbaa !24
  %t108 = icmp sgt i64 %t106, 0
  br i1 %t108, label %bb25, label %bb26
bb24:
  store i64 0, ptr %l72, !tbaa !24
  br label %bb28
bb25:
  %t110 = load i64, ptr %l12, !tbaa !24
  %t111 = load i64, ptr %l11, !tbaa !24
  %t114 = sub i64 %t110, %t111
  %t115 = load i64, ptr %l13, !tbaa !24
  %t118 = add i64 %t114, %t115
  %t120 = sub i64 %t118, 1
  %t121 = load i64, ptr %l13, !tbaa !24
  %t124 = sdiv i64 %t120, %t121
  store i64 %t124, ptr %l75, !tbaa !24
  br label %bb27
bb26:
  store i64 0, ptr %l75, !tbaa !24
  br label %bb27
bb27:
  %t126 = load i64, ptr %l75, !tbaa !24
  store i64 %t126, ptr %l72, !tbaa !24
  br label %bb28
bb28:
  %t127 = load i64, ptr %l72, !tbaa !24
  store i64 %t127, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb29
bb29:
  %t128 = load i64, ptr %l15, !tbaa !24
  %t129 = load i64, ptr %l14, !tbaa !24
  %t132 = icmp slt i64 %t128, %t129
  %t134 = xor i1 %t132, true
  br i1 %t134, label %bb30, label %bb31
bb30:
  br label %bb43
bb31:
  br label %bb32
bb32:
  %t136 = load i64, ptr %l11, !tbaa !24
  %t137 = load i64, ptr %l15, !tbaa !24
  %t138 = load i64, ptr %l13, !tbaa !24
  %t141 = mul i64 %t137, %t138
  %t144 = add i64 %t136, %t141
  store i64 %t144, ptr %l16, !tbaa !24
  %t146 = load ptr, ptr %l4, !tbaa !29
  %t148 = getelementptr %"compiler/load:Module", ptr %t146, i32 0, i32 16
  %t149 = load i64, ptr %l16, !tbaa !24
  %t152 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t148, i64 %t149)
  store i64 %t152, ptr %l96
  br label %bb33
bb33:
  %t153 = load i64, ptr @G_2ecompiler_2fload_2ePending, !tbaa !24
  %t154 = load i64, ptr %l96, !tbaa !24
  %t156 = icmp eq i64 %t154, %t153
  br i1 %t156, label %bb34, label %bb35
bb34:
  %t158 = load ptr, ptr %l4, !tbaa !29
  %t160 = getelementptr %"compiler/load:Module", ptr %t158, i32 0, i32 15
  %t161 = load i64, ptr %l16, !tbaa !24
  %t164 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t160, i64 %t161)
  store i64 %t164, ptr %l103
  br label %bb36
bb35:
  store i1 false, ptr %l99, !tbaa !21
  br label %bb37
bb36:
  %t165 = load i64, ptr %l103, !tbaa !24
  %t166 = icmp sge i64 %t165, 0
  store i1 %t166, ptr %l99, !tbaa !21
  br label %bb37
bb37:
  %t168 = load i1, ptr %l99, !tbaa !21
  br i1 %t168, label %bb38, label %bb39
bb38:
  %t169 = load ptr, ptr %l4, !tbaa !29
  %t171 = getelementptr %"compiler/load:Module", ptr %t169, i32 0, i32 16
  %t172 = load i64, ptr %l16, !tbaa !24
  %t173 = load i64, ptr @G_2ecompiler_2fload_2eNotYet, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t171, i64 %t172, i64 %t173)
  br label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb41
bb41:
  br label %bb42
bb42:
  %t177 = load i64, ptr %l15, !tbaa !24
  %t179 = add i64 %t177, 1
  store i64 %t179, ptr %l15, !tbaa !24
  br label %bb29
bb43:
  br label %bb44
bb44:
  %t181 = load i64, ptr %l9, !tbaa !24
  %t183 = add i64 %t181, 1
  store i64 %t183, ptr %l9, !tbaa !24
  br label %bb9
bb45:
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t187 = getelementptr %"compiler/load:Loader", ptr %t185, i32 0, i32 10
  %t189 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t187)
  store i64 %t189, ptr %l115
  br label %bb46
bb46:
  %t190 = load i64, ptr %l115, !tbaa !24
  store i64 %t190, ptr %l17, !tbaa !24
  %t191 = load ptr, ptr %l0, !tbaa !29
  %t192 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2eloadImports(ptr %v0, ptr %t191, i64 %t192)
  br label %bb47
bb47:
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t196 = load i64, ptr %l1, !tbaa !24
  %t197 = load ptr, ptr %l4, !tbaa !29
  %t199 = getelementptr %"compiler/load:Module", ptr %t197, i32 0, i32 8
  %t200 = load { i64, ptr }, ptr %t199, !tbaa !27
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2egroups(ptr %v0, ptr %v0, ptr %t195, i64 %t196, { i64, ptr } %t200)
  br label %bb48
bb48:
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t206 = getelementptr %"compiler/load:Loader", ptr %t204, i32 0, i32 10
  %t208 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t206)
  store i64 %t208, ptr %l124
  br label %bb49
bb49:
  %t209 = load i64, ptr %l17, !tbaa !24
  %t210 = load i64, ptr %l124, !tbaa !24
  %t212 = icmp sgt i64 %t210, %t209
  br i1 %t212, label %bb50, label %bb51
bb50:
  %t214 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2echeckReach(ptr %v0, ptr %t214)
  br label %bb52
bb51:
  br label %bb53
bb52:
  br label %bb53
bb53:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fload_2ecompiler_2fload_3aLoader_2eEmbedded(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca i32
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/load:Loader", ptr %a0, i32 0, i32 16
  %t7 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H412951a1c1c3c34f4f6a5a14e25e5986(ptr %v0, ptr %v1, ptr %v2, ptr %t3, { i64, ptr } %a1)
  %t8 = extractvalue { i32, { i64, ptr } } %t7, 1
  %t9 = extractvalue { i32, { i64, ptr } } %t7, 0
  store i32 %t9, ptr %l7
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store { i64, ptr } %t8, ptr %l6
  br label %bb1
bb1:
  %t12 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t12, ptr %l2, !tbaa !27
  br label %bb6
bb2:
  br label %bb3
bb3:
  %t13 = icmp sge i64 0, 0
  br i1 %t13, label %bb4, label %bb5
bb4:
  %t15 = mul i64 0, 1
  %t16 = insertvalue { i64, ptr } undef, i64 0, 0
  %t17 = insertvalue { i64, ptr } %t16, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t17, ptr %l2, !tbaa !27
  br label %bb6
bb5:
  call void @__olang_check_failed(ptr @olang_loc_6f6a8c9f8e5b8646_ccdd31ccd2674fa)
  unreachable
bb6:
  %t19 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t19, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fload_2ecompiler_2fload_3aLoader_2eGraph(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca %"std/prelude/text:StringBuilder"
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca ptr
  %l16 = alloca i64
  %l17 = alloca %"compiler/load:Import"
  %l18 = alloca ptr
  %l19 = alloca i64
  %l23 = alloca i64
  %l32 = alloca i64
  %l35 = alloca i64
  %l60 = alloca %"std/prelude/text:StringBuilder"
  %l68 = alloca { i64, ptr }
  %l74 = alloca ptr
  %l80 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l83 = alloca i64
  %l85 = alloca i64
  %l90 = alloca %"compiler/load:Import"
  %l93 = alloca ptr
  %l94 = alloca i64
  %l96 = alloca { i64, ptr }
  %l100 = alloca ptr
  %l110 = alloca i64
  %l112 = alloca i64
  %l117 = alloca { i64, ptr }
  %l125 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t83 = alloca { ptr, ptr }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/load:Loader", ptr %t1, i32 0, i32 10
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l23
  br label %bb1
bb1:
  %t6 = load i64, ptr %l23, !tbaa !24
  %t7 = icmp sge i64 %t6, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load i64, ptr %l23, !tbaa !24
  %t10 = icmp sle i64 %t9, 1152921504606846975
  br i1 %t10, label %bb4, label %bb5
bb3:
  call void @__olang_check_failed(ptr @olang_loc_53eff658f30813a6_f347cd1231cef772)
  unreachable
bb4:
  %t12 = load i64, ptr %l23, !tbaa !24
  %t13 = mul i64 %t12, 8
  %t14 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t13)
  %t15 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t16 = insertvalue { i64, ptr } %t15, ptr %t14, 1
  store { i64, ptr } %t16, ptr %l1, !tbaa !27
  store i64 0, ptr %l2, !tbaa !24
  %t18 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t20 = extractvalue { i64, ptr } %t18, 0
  store i64 %t20, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t22 = load i64, ptr %l3, !tbaa !24
  %t23 = load i64, ptr %l2, !tbaa !24
  %t26 = icmp sgt i64 %t22, %t23
  br i1 %t26, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_53eff658f30813a6_f347cd1231cef772)
  unreachable
bb6:
  %t28 = load i64, ptr %l4, !tbaa !24
  %t30 = icmp sgt i64 %t28, 0
  br i1 %t30, label %bb8, label %bb9
bb7:
  store i64 0, ptr %l32, !tbaa !24
  br label %bb11
bb8:
  %t32 = load i64, ptr %l3, !tbaa !24
  %t33 = load i64, ptr %l2, !tbaa !24
  %t36 = sub i64 %t32, %t33
  %t37 = load i64, ptr %l4, !tbaa !24
  %t40 = add i64 %t36, %t37
  %t42 = sub i64 %t40, 1
  %t43 = load i64, ptr %l4, !tbaa !24
  %t46 = sdiv i64 %t42, %t43
  store i64 %t46, ptr %l35, !tbaa !24
  br label %bb10
bb9:
  store i64 0, ptr %l35, !tbaa !24
  br label %bb10
bb10:
  %t48 = load i64, ptr %l35, !tbaa !24
  store i64 %t48, ptr %l32, !tbaa !24
  br label %bb11
bb11:
  %t49 = load i64, ptr %l32, !tbaa !24
  store i64 %t49, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb12
bb12:
  %t50 = load i64, ptr %l6, !tbaa !24
  %t51 = load i64, ptr %l5, !tbaa !24
  %t54 = icmp slt i64 %t50, %t51
  %t56 = xor i1 %t54, true
  br i1 %t56, label %bb13, label %bb14
bb13:
  br label %bb17
bb14:
  br label %bb15
bb15:
  %t58 = load i64, ptr %l2, !tbaa !24
  %t59 = load i64, ptr %l6, !tbaa !24
  %t60 = load i64, ptr %l4, !tbaa !24
  %t63 = mul i64 %t59, %t60
  %t66 = add i64 %t58, %t63
  store i64 %t66, ptr %l7, !tbaa !24
  %t68 = load i64, ptr %l7, !tbaa !24
  %t69 = load i64, ptr %l7, !tbaa !24
  %t72 = getelementptr { i64, ptr }, ptr %l1, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = getelementptr i64, ptr %t73, i64 %t68
  store i64 %t69, ptr %t74, !tbaa !34
  br label %bb16
bb16:
  %t75 = load i64, ptr %l6, !tbaa !24
  %t77 = add i64 %t75, 1
  store i64 %t77, ptr %l6, !tbaa !24
  br label %bb12
bb17:
  %t79 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr { ptr, ptr }, ptr null, i32 1
  %t82 = ptrtoint ptr %t81 to i64
  %t84 = getelementptr { ptr, ptr }, ptr %t83, i32 0, i32 0
  store ptr %t80, ptr %t84, !tbaa !28
  call void @__olang_scope_escape(ptr %v0)
  %t86 = getelementptr { ptr, ptr }, ptr %t83, i32 0, i32 1
  store ptr %v0, ptr %t86, !tbaa !28
  %t87 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_12, 0
  %t88 = insertvalue { ptr, ptr } %t87, ptr %t83, 1
  %t91 = extractvalue { ptr, ptr } %t88, 0
  %t92 = extractvalue { ptr, ptr } %t88, 1
  call void @std_2fprelude_2farray_2eArray_3cI64_3e_2eSort_3cI64_2c_20_3f_3e(ptr %s0, ptr %s0, { i64, ptr } %t79, ptr %t91, ptr %t92)
  br label %bb18
bb18:
  %t93 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t93, ptr %l60
  br label %bb19
bb19:
  %t94 = load %"std/prelude/text:StringBuilder", ptr %l60
  store %"std/prelude/text:StringBuilder" %t94, ptr %l8
  %t95 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t95, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t97 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t99 = extractvalue { i64, ptr } %t97, 0
  store i64 %t99, ptr %l11, !tbaa !24
  br label %bb20
bb20:
  store %olang.scope zeroinitializer, ptr %s5
  %t101 = load i64, ptr %l10, !tbaa !24
  %t102 = load i64, ptr %l11, !tbaa !24
  %t105 = icmp slt i64 %t101, %t102
  %t107 = xor i1 %t105, true
  br i1 %t107, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s5)
  br label %bb53
bb22:
  br label %bb23
bb23:
  %t109 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t109, ptr %l68, !tbaa !27
  %t110 = load i64, ptr %l10, !tbaa !24
  %t112 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !27
  %t114 = getelementptr i64, ptr %t113, i64 %t110
  %t115 = load i64, ptr %t114, !tbaa !34
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/load:Loader", ptr %t117, i32 0, i32 10
  %t123 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t119, i64 %t115)
  store ptr %t123, ptr %l74
  br label %bb24
bb24:
  %t124 = load ptr, ptr %l74, !tbaa !29
  store ptr %t124, ptr %l13, !tbaa !29
  %t125 = load ptr, ptr %l13, !tbaa !29
  %t127 = getelementptr %"compiler/load:Module", ptr %t125, i32 0, i32 2
  %t128 = load { i64, ptr }, ptr %t127, !tbaa !27
  %t129 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t130 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
  %t132 = extractvalue { i64, ptr } %t128, 1
  %t133 = extractvalue { i64, ptr } %t128, 0
  %t134 = add i64 %t130, %t133
  %t135 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t136 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  %t137 = add i64 %t134, %t136
  %t138 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t137)
  call void @olang_textcopy(ptr %t138, ptr %t129, i64 %t130)
  %t139 = getelementptr i8, ptr %t138, i64 %t130
  call void @olang_textcopy(ptr %t139, ptr %t132, i64 %t133)
  %t140 = getelementptr i8, ptr %t139, i64 %t133
  call void @olang_textcopy(ptr %t140, ptr %t135, i64 %t136)
  %t141 = insertvalue { i64, ptr } undef, i64 %t137, 0
  %t142 = insertvalue { i64, ptr } %t141, ptr %t138, 1
  %t144 = extractvalue { i64, ptr } %t142, 0
  %t145 = extractvalue { i64, ptr } %t142, 1
  %t146 = mul i64 %t144, 1
  %t147 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t146)
  call void @llvm.memcpy.p0.p0.i64(ptr %t147, ptr %t145, i64 %t146, i1 false)
  %t148 = insertvalue { i64, ptr } undef, i64 %t144, 0
  %t149 = insertvalue { i64, ptr } %t148, ptr %t147, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s5, ptr %l8, { i64, ptr } %t149)
  br label %bb25
bb25:
  %t152 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s5, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t152, ptr %l80
  br label %bb26
bb26:
  %t153 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l80
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t153, ptr %l14
  %t154 = load ptr, ptr %l13, !tbaa !29
  %t156 = getelementptr %"compiler/load:Module", ptr %t154, i32 0, i32 11
  store ptr %t156, ptr %l15, !tbaa !29
  store i64 0, ptr %l16, !tbaa !24
  br label %bb27
bb27:
  %t158 = load i64, ptr %l16, !tbaa !24
  store i64 %t158, ptr %l83, !tbaa !24
  %t159 = load ptr, ptr %l15, !tbaa !29
  %t161 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eLen_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %t159)
  store i64 %t161, ptr %l85
  br label %bb28
bb28:
  %t162 = load i64, ptr %l83, !tbaa !24
  %t163 = load i64, ptr %l85, !tbaa !24
  %t164 = icmp slt i64 %t162, %t163
  %t166 = xor i1 %t164, true
  br i1 %t166, label %bb29, label %bb30
bb29:
  br label %bb41
bb30:
  br label %bb31
bb31:
  %t168 = load ptr, ptr %l15, !tbaa !29
  %t169 = load i64, ptr %l16, !tbaa !24
  %t172 = call %"compiler/load:Import" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eAt_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %v0, ptr %t168, i64 %t169)
  store %"compiler/load:Import" %t172, ptr %l90
  br label %bb32
bb32:
  %t173 = load %"compiler/load:Import", ptr %l90
  store %"compiler/load:Import" %t173, ptr %l17
  %t174 = getelementptr %"compiler/load:Import", ptr %l17, i32 0, i32 5
  %t175 = load i64, ptr %t174, !tbaa !24
  %t177 = icmp sge i64 %t175, 0
  br i1 %t177, label %bb33, label %bb34
bb33:
  store ptr %l14, ptr %l93, !tbaa !29
  %t179 = ptrtoint ptr %s5 to i64
  store i64 %t179, ptr %l94, !tbaa !24
  %t180 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t180, label %bb35, label %bb36
bb34:
  br label %bb39
bb35:
  %t182 = call ptr @__olang_region_make(ptr %s5)
  %t183 = ptrtoint ptr %t182 to i64
  store i64 %t183, ptr %l94, !tbaa !24
  br label %bb36
bb36:
  %t184 = getelementptr %"compiler/load:Import", ptr %l17, i32 0, i32 2
  %t185 = load { i64, ptr }, ptr %t184, !tbaa !27
  store { i64, ptr } %t185, ptr %l96, !tbaa !27
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t188 = getelementptr %"compiler/load:Loader", ptr %t186, i32 0, i32 10
  %t189 = getelementptr %"compiler/load:Import", ptr %l17, i32 0, i32 5
  %t190 = load i64, ptr %t189, !tbaa !24
  %t193 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t188, i64 %t190)
  store ptr %t193, ptr %l100
  br label %bb37
bb37:
  %t194 = load ptr, ptr %l100, !tbaa !29
  %t196 = getelementptr %"compiler/load:Module", ptr %t194, i32 0, i32 2
  %t197 = load { i64, ptr }, ptr %t196, !tbaa !27
  %t198 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t199 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t200 = load { i64, ptr }, ptr %l96, !tbaa !27
  %t201 = extractvalue { i64, ptr } %t200, 1
  %t202 = extractvalue { i64, ptr } %t200, 0
  %t203 = add i64 %t199, %t202
  %t204 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t205 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  %t206 = add i64 %t203, %t205
  %t208 = extractvalue { i64, ptr } %t197, 1
  %t209 = extractvalue { i64, ptr } %t197, 0
  %t210 = add i64 %t206, %t209
  %t211 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t212 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  %t213 = add i64 %t210, %t212
  %t214 = load i64, ptr %l94
  %t215 = inttoptr i64 %t214 to ptr
  %t216 = call ptr @__olang_scope_alloc(ptr %t215, i64 %t213)
  call void @olang_textcopy(ptr %t216, ptr %t198, i64 %t199)
  %t217 = getelementptr i8, ptr %t216, i64 %t199
  call void @olang_textcopy(ptr %t217, ptr %t201, i64 %t202)
  %t218 = getelementptr i8, ptr %t217, i64 %t202
  call void @olang_textcopy(ptr %t218, ptr %t204, i64 %t205)
  %t219 = getelementptr i8, ptr %t218, i64 %t205
  call void @olang_textcopy(ptr %t219, ptr %t208, i64 %t209)
  %t220 = getelementptr i8, ptr %t219, i64 %t209
  call void @olang_textcopy(ptr %t220, ptr %t211, i64 %t212)
  %t221 = insertvalue { i64, ptr } undef, i64 %t213, 0
  %t222 = insertvalue { i64, ptr } %t221, ptr %t216, 1
  %t224 = load i64, ptr %l94
  %t225 = inttoptr i64 %t224 to ptr
  %t226 = extractvalue { i64, ptr } %t222, 0
  %t227 = extractvalue { i64, ptr } %t222, 1
  %t228 = mul i64 %t226, 1
  %t229 = call ptr @__olang_scope_alloc(ptr %t225, i64 %t228)
  call void @llvm.memcpy.p0.p0.i64(ptr %t229, ptr %t227, i64 %t228, i1 false)
  %t230 = insertvalue { i64, ptr } undef, i64 %t226, 0
  %t231 = insertvalue { i64, ptr } %t230, ptr %t229, 1
  %t232 = load ptr, ptr %l93, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s5, ptr %s5, ptr %t232, { i64, ptr } %t231)
  br label %bb38
bb38:
  br label %bb39
bb39:
  br label %bb40
bb40:
  %t234 = load i64, ptr %l16, !tbaa !24
  %t236 = add i64 %t234, 1
  store i64 %t236, ptr %l16, !tbaa !24
  br label %bb27
bb41:
  %t238 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_18, 0
  %t239 = insertvalue { ptr, ptr } %t238, ptr null, 1
  %t242 = extractvalue { ptr, ptr } %t239, 0
  %t243 = extractvalue { ptr, ptr } %t239, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H1642129570dad448bb7dcc47c334de83(ptr %s5, ptr %s5, ptr %l14, ptr %t242, ptr %t243)
  br label %bb42
bb42:
  store ptr %l14, ptr %l18, !tbaa !29
  store i64 0, ptr %l19, !tbaa !24
  br label %bb43
bb43:
  %t245 = load i64, ptr %l19, !tbaa !24
  store i64 %t245, ptr %l110, !tbaa !24
  %t246 = load ptr, ptr %l18, !tbaa !29
  %t248 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s5, ptr %t246)
  store i64 %t248, ptr %l112
  br label %bb44
bb44:
  %t249 = load i64, ptr %l110, !tbaa !24
  %t250 = load i64, ptr %l112, !tbaa !24
  %t251 = icmp slt i64 %t249, %t250
  %t253 = xor i1 %t251, true
  br i1 %t253, label %bb45, label %bb46
bb45:
  br label %bb51
bb46:
  br label %bb47
bb47:
  %t255 = load ptr, ptr %l18, !tbaa !29
  %t256 = load i64, ptr %l19, !tbaa !24
  %t259 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s5, ptr %s5, ptr %t255, i64 %t256)
  store { i64, ptr } %t259, ptr %l117
  br label %bb48
bb48:
  %t260 = load { i64, ptr }, ptr %l117, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s5, ptr %l8, { i64, ptr } %t260)
  br label %bb49
bb49:
  br label %bb50
bb50:
  %t264 = load i64, ptr %l19, !tbaa !24
  %t266 = add i64 %t264, 1
  store i64 %t266, ptr %l19, !tbaa !24
  br label %bb43
bb51:
  call void @__olang_scope_close(ptr %s5)
  br label %bb52
bb52:
  %t268 = load i64, ptr %l10, !tbaa !24
  %t270 = add i64 %t268, 1
  store i64 %t270, ptr %l10, !tbaa !24
  br label %bb20
bb53:
  %t273 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l8)
  store { i64, ptr } %t273, ptr %l125
  br label %bb54
bb54:
  call void @__olang_scope_close(ptr %s0)
  %t274 = load { i64, ptr }, ptr %l125, !tbaa !27
  store { i64, ptr } %t274, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fload_2ecompiler_2fload_3aLoader_2eLinksOwnC(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca %"compiler/load:Import"
  %l9 = alloca i64
  %l11 = alloca i64
  %l16 = alloca ptr
  %l19 = alloca i1
  %l22 = alloca i1
  %l26 = alloca i64
  %l28 = alloca i64
  %l33 = alloca %"compiler/load:Import"
  %l35 = alloca i1
  %l42 = alloca i1
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/load:Loader", ptr %a0, i32 0, i32 10
  store ptr %t3, ptr %l1, !tbaa !29
  store i64 0, ptr %l2, !tbaa !24
  br label %bb1
bb1:
  store %olang.scope zeroinitializer, ptr %s2
  %t5 = load i64, ptr %l2, !tbaa !24
  store i64 %t5, ptr %l9, !tbaa !24
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l11
  br label %bb2
bb2:
  %t9 = load i64, ptr %l9, !tbaa !24
  %t10 = load i64, ptr %l11, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s2)
  br label %bb31
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t16 = load i64, ptr %l2, !tbaa !24
  %t19 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t15, i64 %t16)
  store ptr %t19, ptr %l16
  br label %bb6
bb6:
  %t20 = load ptr, ptr %l16, !tbaa !29
  store ptr %t20, ptr %l3, !tbaa !29
  %t21 = load ptr, ptr %l3, !tbaa !29
  %t23 = getelementptr %"compiler/load:Module", ptr %t21, i32 0, i32 30
  %t24 = load i1, ptr %t23, !tbaa !21
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t26 = load ptr, ptr %l3, !tbaa !29
  %t28 = getelementptr %"compiler/load:Module", ptr %t26, i32 0, i32 1
  %t29 = load { i64, ptr }, ptr %t28, !tbaa !27
  %t31 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %s2, { i64, ptr } %t29, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d19, i32 0, i32 1) })
  store i1 %t31, ptr %l22
  br label %bb9
bb8:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb10
bb9:
  %t32 = load i1, ptr %l22, !tbaa !21
  store i1 %t32, ptr %l19, !tbaa !21
  br label %bb10
bb10:
  %t33 = load i1, ptr %l19, !tbaa !21
  br i1 %t33, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s2)
  store i1 true, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t35 = load ptr, ptr %l3, !tbaa !29
  %t37 = getelementptr %"compiler/load:Module", ptr %t35, i32 0, i32 11
  store ptr %t37, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb14
bb14:
  store %olang.scope zeroinitializer, ptr %s5
  %t39 = load i64, ptr %l5, !tbaa !24
  store i64 %t39, ptr %l26, !tbaa !24
  %t40 = load ptr, ptr %l4, !tbaa !29
  %t42 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eLen_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %t40)
  store i64 %t42, ptr %l28
  br label %bb15
bb15:
  %t43 = load i64, ptr %l26, !tbaa !24
  %t44 = load i64, ptr %l28, !tbaa !24
  %t45 = icmp slt i64 %t43, %t44
  %t47 = xor i1 %t45, true
  br i1 %t47, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s5)
  br label %bb25
bb17:
  br label %bb18
bb18:
  %t49 = load ptr, ptr %l4, !tbaa !29
  %t50 = load i64, ptr %l5, !tbaa !24
  %t53 = call %"compiler/load:Import" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eAt_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %v0, ptr %t49, i64 %t50)
  store %"compiler/load:Import" %t53, ptr %l33
  br label %bb19
bb19:
  %t54 = load %"compiler/load:Import", ptr %l33
  store %"compiler/load:Import" %t54, ptr %l6
  %t55 = getelementptr %"compiler/load:Import", ptr %l6, i32 0, i32 6
  %t56 = load { i64, ptr }, ptr %t55, !tbaa !27
  %t58 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s5, { i64, ptr } %t56, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d20, i32 0, i32 1) })
  store i1 %t58, ptr %l35
  br label %bb20
bb20:
  %t59 = load i1, ptr %l35, !tbaa !21
  %t60 = xor i1 %t59, true
  br i1 %t60, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s2)
  store i1 true, ptr %rv
  br label %ret
bb22:
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s5)
  br label %bb24
bb24:
  %t63 = load i64, ptr %l5, !tbaa !24
  %t65 = add i64 %t63, 1
  store i64 %t65, ptr %l5, !tbaa !24
  br label %bb14
bb25:
  %t67 = load ptr, ptr %l3, !tbaa !29
  %t69 = getelementptr %"compiler/load:Module", ptr %t67, i32 0, i32 8
  %t70 = load { i64, ptr }, ptr %t69, !tbaa !27
  %t72 = call i1 @compiler_2fload_2edeclsLink(ptr %v0, { i64, ptr } %t70)
  store i1 %t72, ptr %l42
  br label %bb26
bb26:
  %t73 = load i1, ptr %l42, !tbaa !21
  br i1 %t73, label %bb27, label %bb28
bb27:
  call void @__olang_scope_close(ptr %s2)
  store i1 true, ptr %rv
  br label %ret
bb28:
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s2)
  br label %bb30
bb30:
  %t75 = load i64, ptr %l2, !tbaa !24
  %t77 = add i64 %t75, 1
  store i64 %t77, ptr %l2, !tbaa !24
  br label %bb1
bb31:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2eLoad(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca i32
  %l10 = alloca ptr
  %l12 = alloca i1
  %l14 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l24 = alloca ptr
  %l25 = alloca i64
  %l27 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l29 = alloca i32
  %l34 = alloca { i64, ptr }
  %l38 = alloca i1
  %l40 = alloca ptr
  %l41 = alloca { i64, [3 x i64] }
  %l42 = alloca %"compiler/diagmsg:Msg"
  %l44 = alloca ptr
  %l45 = alloca ptr
  %l46 = alloca { i64, ptr }
  %l49 = alloca { i64, ptr }
  %l51 = alloca i64
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca i64
  %t122 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/load:Loader", ptr %t1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = call { i32, { i64, ptr } } @std_2fos_2eRealPath(ptr %v0, ptr %s0, { i64, ptr } %t4)
  %t7 = extractvalue { i32, { i64, ptr } } %t6, 1
  %t8 = extractvalue { i32, { i64, ptr } } %t6, 0
  store i32 %t8, ptr %l7
  %t9 = icmp ne i32 %t8, 0
  br i1 %t9, label %bb2, label %ok.10, !prof !99
ok.10:
  store { i64, ptr } %t7, ptr %l6
  br label %bb1
bb1:
  %t11 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t11, ptr %l3, !tbaa !27
  br label %bb6
bb2:
  %t12 = load i32, ptr %l7, !tbaa !23
  %t13 = ashr i32 %t12, 16
  %t15 = icmp eq i32 %t13, 1
  br i1 %t15, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d21, i32 0, i32 1) }, ptr %l3, !tbaa !27
  br label %bb6
bb6:
  %t17 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t17, ptr %l2, !tbaa !27
  %t18 = load ptr, ptr %l0, !tbaa !29
  store ptr %t18, ptr %l10, !tbaa !29
  %t19 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t21 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t19, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d22, i32 0, i32 1) })
  store i1 %t21, ptr %l12
  br label %bb7
bb7:
  %t22 = load i1, ptr %l12, !tbaa !21
  %t23 = xor i1 %t22, true
  br i1 %t23, label %bb8, label %bb9
bb8:
  %t25 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t27 = extractvalue { i64, ptr } %t25, 1
  %t28 = extractvalue { i64, ptr } %t25, 0
  %t29 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t28)
  call void @olang_textcopy(ptr %t29, ptr %t27, i64 %t28)
  %t30 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  %t33 = extractvalue { i64, ptr } %t31, 0
  %t34 = extractvalue { i64, ptr } %t31, 1
  %t35 = mul i64 %t33, 1
  %t36 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t35)
  call void @llvm.memcpy.p0.p0.i64(ptr %t36, ptr %t34, i64 %t35, i1 false)
  %t37 = insertvalue { i64, ptr } undef, i64 %t33, 0
  %t38 = insertvalue { i64, ptr } %t37, ptr %t36, 1
  store { i64, ptr } %t38, ptr %l14, !tbaa !27
  br label %bb10
bb9:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/load:Loader", ptr %t40, i32 0, i32 0
  %t43 = load { i64, ptr }, ptr %t42, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t43, 1
  %t46 = extractvalue { i64, ptr } %t43, 0
  %t47 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t46)
  call void @olang_textcopy(ptr %t47, ptr %t45, i64 %t46)
  %t48 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t49 = insertvalue { i64, ptr } %t48, ptr %t47, 1
  %t51 = extractvalue { i64, ptr } %t49, 0
  %t52 = extractvalue { i64, ptr } %t49, 1
  %t53 = mul i64 %t51, 1
  %t54 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t53)
  call void @llvm.memcpy.p0.p0.i64(ptr %t54, ptr %t52, i64 %t53, i1 false)
  %t55 = insertvalue { i64, ptr } undef, i64 %t51, 0
  %t56 = insertvalue { i64, ptr } %t55, ptr %t54, 1
  store { i64, ptr } %t56, ptr %l14, !tbaa !27
  br label %bb10
bb10:
  %t58 = load ptr, ptr %l10, !tbaa !29
  %t59 = getelementptr %"compiler/load:Loader", ptr %t58, i32 0, i32 14
  %t60 = load { i64, ptr }, ptr %t59, !tbaa !27
  store { i64, ptr } %t60, ptr %l22, !tbaa !27
  %t61 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t62 = load ptr, ptr %l10, !tbaa !29
  %t63 = getelementptr %"compiler/load:Loader", ptr %t62, i32 0, i32 14
  store { i64, ptr } %t61, ptr %t63, !tbaa !27
  %t64 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e14
  br i1 %t64, label %bb11, label %bb12
bb11:
  %t66 = load { i64, ptr }, ptr %l22
  %t67 = extractvalue { i64, ptr } %t66, 1
  call void @__olang_region_release(ptr %t67)
  store { i64, ptr } zeroinitializer, ptr %l22
  br label %bb12
bb12:
  %t68 = load ptr, ptr %l0, !tbaa !29
  store ptr %t68, ptr %l24, !tbaa !29
  %t69 = ptrtoint ptr %v0 to i64
  store i64 %t69, ptr %l25, !tbaa !24
  %t70 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e15
  br i1 %t70, label %bb13, label %bb14
bb13:
  %t72 = call ptr @__olang_region_make(ptr %v0)
  %t73 = ptrtoint ptr %t72 to i64
  store i64 %t73, ptr %l25, !tbaa !24
  br label %bb14
bb14:
  %t74 = call { i32, { i64, ptr } } @std_2fos_2eCwd(ptr %s0)
  %t75 = extractvalue { i32, { i64, ptr } } %t74, 1
  %t76 = extractvalue { i32, { i64, ptr } } %t74, 0
  store i32 %t76, ptr %l29
  %t77 = icmp ne i32 %t76, 0
  br i1 %t77, label %bb16, label %ok.78, !prof !99
ok.78:
  store { i64, ptr } %t75, ptr %l28
  br label %bb15
bb15:
  %t79 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t79, ptr %l27, !tbaa !27
  br label %bb20
bb16:
  %t80 = load i32, ptr %l29, !tbaa !23
  %t81 = ashr i32 %t80, 16
  %t83 = icmp eq i32 %t81, 1
  br i1 %t83, label %bb17, label %bb18
bb17:
  call void @__olang_errpay_pop()
  br label %bb18
bb18:
  br label %bb19
bb19:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d23, i32 0, i32 1) }, ptr %l27, !tbaa !27
  br label %bb20
bb20:
  %t85 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t86 = extractvalue { i64, ptr } %t85, 1
  %t87 = extractvalue { i64, ptr } %t85, 0
  %t88 = load i64, ptr %l25
  %t89 = inttoptr i64 %t88 to ptr
  %t90 = call ptr @__olang_scope_alloc(ptr %t89, i64 %t87)
  call void @olang_textcopy(ptr %t90, ptr %t86, i64 %t87)
  %t91 = insertvalue { i64, ptr } undef, i64 %t87, 0
  %t92 = insertvalue { i64, ptr } %t91, ptr %t90, 1
  %t94 = load i64, ptr %l25
  %t95 = inttoptr i64 %t94 to ptr
  %t96 = extractvalue { i64, ptr } %t92, 0
  %t97 = extractvalue { i64, ptr } %t92, 1
  %t98 = mul i64 %t96, 1
  %t99 = call ptr @__olang_scope_alloc(ptr %t95, i64 %t98)
  call void @llvm.memcpy.p0.p0.i64(ptr %t99, ptr %t97, i64 %t98, i1 false)
  %t100 = insertvalue { i64, ptr } undef, i64 %t96, 0
  %t101 = insertvalue { i64, ptr } %t100, ptr %t99, 1
  %t102 = load ptr, ptr %l24, !tbaa !29
  %t103 = getelementptr %"compiler/load:Loader", ptr %t102, i32 0, i32 15
  %t104 = load { i64, ptr }, ptr %t103, !tbaa !27
  store { i64, ptr } %t104, ptr %l34, !tbaa !27
  %t106 = load ptr, ptr %l24, !tbaa !29
  %t107 = getelementptr %"compiler/load:Loader", ptr %t106, i32 0, i32 15
  store { i64, ptr } %t101, ptr %t107, !tbaa !27
  %t108 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e15
  br i1 %t108, label %bb21, label %bb22
bb21:
  %t110 = load { i64, ptr }, ptr %l34
  %t111 = extractvalue { i64, ptr } %t110, 1
  call void @__olang_region_release(ptr %t111)
  store { i64, ptr } zeroinitializer, ptr %l34
  br label %bb22
bb22:
  %t112 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2eLoadPrelude(ptr %v0, ptr %t112)
  br label %bb23
bb23:
  %t114 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t116 = call i1 @std_2fos_2eIsDir(ptr %v1, { i64, ptr } %t114)
  store i1 %t116, ptr %l38
  br label %bb24
bb24:
  %t117 = load i1, ptr %l38, !tbaa !21
  br i1 %t117, label %bb25, label %bb26
bb25:
  store %olang.scope zeroinitializer, ptr %s4
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = getelementptr %"compiler/load:Loader", ptr %t118, i32 0, i32 4
  %t121 = load ptr, ptr %t120, !tbaa !29
  store ptr %t121, ptr %l40, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t122
  %t123 = getelementptr { i64, [3 x i64] }, ptr %t122, i32 0, i32 0
  store i64 0, ptr %t123
  %t124 = load { i64, [3 x i64] }, ptr %t122
  store { i64, [3 x i64] } %t124, ptr %l41
  %t125 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eIsDirectory(ptr %s4)
  store %"compiler/diagmsg:Msg" %t125, ptr %l42
  br label %bb27
bb26:
  br label %bb29
bb27:
  %t126 = load ptr, ptr %l40, !tbaa !29
  %t127 = load { i64, [3 x i64] }, ptr %l41
  %t128 = load %"compiler/diagmsg:Msg", ptr %l42
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eFatal(ptr %v0, ptr %s4, ptr %t126, { i64, [3 x i64] } %t127, %"compiler/diagmsg:Msg" %t128)
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb29:
  %t130 = load ptr, ptr %l0, !tbaa !29
  store ptr %t130, ptr %l44, !tbaa !29
  %t131 = load ptr, ptr %l0, !tbaa !29
  store ptr %t131, ptr %l45, !tbaa !29
  %t132 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t132, ptr %l46, !tbaa !27
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t134 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t137 = call { i64, ptr } @compiler_2fload_2ecompiler_2fload_3aLoader_2erootIdentity(ptr %v0, ptr %v1, ptr %s0, ptr %t133, { i64, ptr } %t134)
  store { i64, ptr } %t137, ptr %l49
  br label %bb30
bb30:
  %t138 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t139 = extractvalue { i64, ptr } %t138, 0
  %t140 = extractvalue { i64, ptr } %t138, 1
  %t141 = mul i64 %t139, 1
  %t142 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t141)
  call void @llvm.memcpy.p0.p0.i64(ptr %t142, ptr %t140, i64 %t141, i1 false)
  %t143 = insertvalue { i64, ptr } undef, i64 %t139, 0
  %t144 = insertvalue { i64, ptr } %t143, ptr %t142, 1
  %t145 = load ptr, ptr %l45, !tbaa !29
  %t146 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t148 = call i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2eload(ptr %v0, ptr %v1, ptr %s0, ptr %t145, { i64, ptr } %t146, { i64, ptr } %t144, i1 false, i1 false)
  store i64 %t148, ptr %l51
  br label %bb31
bb31:
  %t149 = load i64, ptr %l51, !tbaa !24
  %t150 = load ptr, ptr %l44, !tbaa !29
  %t151 = getelementptr %"compiler/load:Loader", ptr %t150, i32 0, i32 12
  store i64 %t149, ptr %t151, !tbaa !24
  %t152 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2echeckReach(ptr %v0, ptr %t152)
  br label %bb32
bb32:
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr %"compiler/load:Loader", ptr %t154, i32 0, i32 12
  %t157 = load i64, ptr %t156, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t157, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2ebranch(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l12 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/load:Module", ptr %t1, i32 0, i32 20
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t3, i64 %a2)
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l1, !tbaa !29
  %t9 = getelementptr %"compiler/load:Module", ptr %t7, i32 0, i32 21
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t9, i64 %a3)
  br label %bb2
bb2:
  %t13 = load ptr, ptr %l1, !tbaa !29
  %t15 = getelementptr %"compiler/load:Module", ptr %t13, i32 0, i32 20
  %t17 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t15)
  store i64 %t17, ptr %l12
  br label %bb3
bb3:
  %t18 = load i64, ptr %l12, !tbaa !24
  %t19 = sub i64 %t18, 1
  store i64 %t19, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2ecImport(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/load:Import" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/load:Import"
  %l3 = alloca ptr
  %l4 = alloca { i64, [3 x i64] }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i1
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l14 = alloca %"std/prelude/text:StringBuilder"
  %l15 = alloca ptr
  %l16 = alloca i64
  %l18 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l23 = alloca %"compiler/bindgen:Translation"
  %l24 = alloca %"std/prelude/text:StringBuilder"
  %l25 = alloca ptr
  %l26 = alloca i64
  %l27 = alloca { i64, ptr }
  %l28 = alloca %"std/os:FileInfo"
  %l29 = alloca { i64, ptr }
  %l30 = alloca { i64, ptr }
  %l31 = alloca i64
  %l32 = alloca ptr
  %l33 = alloca i1
  %l34 = alloca %"std/prelude/text:LineIter"
  %l35 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %l37 = alloca i64
  %l41 = alloca ptr
  %l45 = alloca { i64, [3 x i64] }
  %l48 = alloca i1
  %l51 = alloca { i64, ptr }
  %l53 = alloca i1
  %l54 = alloca i1
  %l56 = alloca i1
  %l57 = alloca { i64, ptr }
  %l59 = alloca { i64, ptr }
  %l65 = alloca { i64, ptr }
  %l68 = alloca i1
  %l70 = alloca { i64, ptr }
  %l72 = alloca i64
  %l74 = alloca { i64, ptr }
  %l75 = alloca { i64, ptr }
  %l76 = alloca i64
  %l77 = alloca { i64, ptr }
  %l78 = alloca { i64, ptr }
  %l79 = alloca { i64, ptr }
  %l80 = alloca i64
  %l81 = alloca { i64, ptr }
  %l82 = alloca { i64, ptr }
  %l83 = alloca { i64, ptr }
  %l84 = alloca i64
  %l85 = alloca { i64, ptr }
  %l87 = alloca i1
  %l88 = alloca i1
  %l90 = alloca i1
  %l92 = alloca { i64, ptr }
  %l94 = alloca { i64, ptr }
  %l95 = alloca i32
  %l99 = alloca i1
  %l101 = alloca { i64, ptr }
  %l107 = alloca { i64, ptr }
  %l109 = alloca i64
  %l113 = alloca { i64, ptr }
  %l115 = alloca i64
  %l118 = alloca i1
  %l119 = alloca { i64, ptr }
  %l121 = alloca { i64, ptr }
  %l126 = alloca { i64, ptr }
  %l129 = alloca i64
  %l132 = alloca i1
  %l134 = alloca i1
  %l135 = alloca i1
  %l137 = alloca i1
  %l138 = alloca i1
  %l140 = alloca i1
  %l142 = alloca ptr
  %l143 = alloca { i64, [3 x i64] }
  %l145 = alloca %"compiler/diagmsg:Msg"
  %l146 = alloca i64
  %l149 = alloca { i64, ptr }
  %l151 = alloca i64
  %l154 = alloca { i64, ptr }
  %l156 = alloca i64
  %l160 = alloca i1
  %l161 = alloca ptr
  %l162 = alloca i64
  %l164 = alloca { i64, ptr }
  %l166 = alloca { i64, ptr }
  %l170 = alloca i64
  %l174 = alloca %"std/prelude/text:StringBuilder"
  %l183 = alloca i64
  %l185 = alloca i64
  %l190 = alloca { i64, ptr }
  %l198 = alloca { i64, ptr }
  %l201 = alloca { i64, ptr }
  %l202 = alloca i64
  %l207 = alloca ptr
  %l210 = alloca { i64, ptr }
  %l211 = alloca { i64, ptr }
  %l215 = alloca { i64, ptr }
  %l218 = alloca { i64, ptr }
  %l219 = alloca i64
  %l224 = alloca { i64, ptr }
  %l230 = alloca { i64, ptr }
  %l232 = alloca i1
  %l233 = alloca { i64, ptr }
  %l234 = alloca { i64, ptr }
  %l236 = alloca { i64, ptr }
  %l239 = alloca { i64, ptr }
  %l242 = alloca %"compiler/bindgen:Translation"
  %l244 = alloca i1
  %l248 = alloca ptr
  %l249 = alloca { i64, [3 x i64] }
  %l251 = alloca %"compiler/diagmsg:Msg"
  %l252 = alloca i64
  %l254 = alloca ptr
  %l255 = alloca { i64, [3 x i64] }
  %l258 = alloca %"compiler/diagmsg:Msg"
  %l259 = alloca i64
  %l261 = alloca %"std/prelude/text:StringBuilder"
  %l263 = alloca i64
  %l265 = alloca i64
  %l270 = alloca { i64, ptr }
  %l271 = alloca %"std/os:FileInfo"
  %l273 = alloca %"std/os:FileInfo"
  %l274 = alloca i32
  %l276 = alloca i1
  %l288 = alloca { i64, ptr }
  %l291 = alloca { i64, ptr }
  %l292 = alloca i64
  %l298 = alloca i1
  %l299 = alloca { i64, ptr }
  %l309 = alloca i1
  %l311 = alloca i1
  %l317 = alloca i1
  %l319 = alloca i1
  %l320 = alloca { i64, ptr }
  %l323 = alloca { i64, ptr }
  %l325 = alloca { i64, ptr }
  %l327 = alloca i1
  %l330 = alloca ptr
  %l331 = alloca { i64, [3 x i64] }
  %l336 = alloca %"compiler/diagmsg:Msg"
  %l337 = alloca i64
  %l340 = alloca { i64, ptr }
  %l342 = alloca i64
  %l344 = alloca i64
  %l345 = alloca { i64, ptr }
  %l351 = alloca i64
  %l358 = alloca ptr
  %l362 = alloca i1
  %l363 = alloca i1
  %l364 = alloca %"std/os:FileInfo"
  %l368 = alloca %"std/os:FileInfo"
  %l369 = alloca i32
  %l371 = alloca i1
  %l375 = alloca %"std/os:FileInfo"
  %l378 = alloca ptr
  %l379 = alloca i64
  %l384 = alloca { i64, ptr }
  %l387 = alloca %"std/prelude/text:LineIter"
  %l388 = alloca { i64, ptr }
  %l390 = alloca { i64, ptr }
  %l391 = alloca i32
  %l393 = alloca i1
  %l395 = alloca i1
  %l396 = alloca { i64, ptr }
  %l399 = alloca i64
  %l400 = alloca i64
  %l405 = alloca { i64, ptr }
  %l410 = alloca ptr
  %l411 = alloca i64
  %l413 = alloca { i64, ptr }
  %l416 = alloca { i64, ptr }
  %l417 = alloca i64
  %l419 = alloca { i64, ptr }
  %l424 = alloca i1
  %l426 = alloca i1
  %l428 = alloca i1
  %l429 = alloca i64
  %l431 = alloca i64
  %l432 = alloca i32
  %l436 = alloca ptr
  %l437 = alloca i64
  %l439 = alloca { i64, ptr }
  %l440 = alloca i64
  %l441 = alloca i64
  %l447 = alloca { i64, ptr }
  %l448 = alloca i64
  %l450 = alloca { i64, ptr }
  %l452 = alloca i64
  %l455 = alloca i64
  %l456 = alloca i64
  %s0 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s23 = alloca %olang.scope
  %s29 = alloca %olang.scope
  %s31 = alloca %olang.scope
  %s32 = alloca %olang.scope
  %s34 = alloca %olang.scope
  %s42 = alloca %olang.scope
  %s51 = alloca %olang.scope
  %s52 = alloca %olang.scope
  %s56 = alloca %olang.scope
  %s58 = alloca %olang.scope
  %s59 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store %"compiler/load:Import" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/load:Loader", ptr %t1, i32 0, i32 10
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store ptr %t7, ptr %l41
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l41, !tbaa !29
  store ptr %t8, ptr %l3, !tbaa !29
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load ptr, ptr %l3, !tbaa !29
  %t11 = getelementptr %"compiler/load:Import", ptr %l2, i32 0, i32 0
  %t12 = load %"compiler/source:Span", ptr %t11
  %t16 = call { i64, [3 x i64] } @compiler_2fload_2ecompiler_2fload_3aLoader_2eat(ptr %v0, ptr %v0, ptr %t9, ptr %t10, %"compiler/source:Span" %t12)
  store { i64, [3 x i64] } %t16, ptr %l45
  br label %bb2
bb2:
  %t17 = load { i64, [3 x i64] }, ptr %l45
  store { i64, [3 x i64] } %t17, ptr %l4
  %t18 = getelementptr %"compiler/load:Import", ptr %l2, i32 0, i32 3
  %t19 = load { i64, ptr }, ptr %t18, !tbaa !27
  store { i64, ptr } %t19, ptr %l5, !tbaa !27
  %t21 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t23 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v1, ptr %s0, { i64, ptr } %t21, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d24, i32 0, i32 1) })
  store i1 %t23, ptr %l48
  br label %bb3
bb3:
  %t24 = load i1, ptr %l48, !tbaa !21
  store i1 %t24, ptr %l6, !tbaa !21
  %t25 = load ptr, ptr %l3, !tbaa !29
  %t27 = getelementptr %"compiler/load:Module", ptr %t25, i32 0, i32 0
  %t28 = load { i64, ptr }, ptr %t27, !tbaa !27
  %t30 = call { i64, ptr } @compiler_2fload_2emoduleDir(ptr %v0, ptr %s0, { i64, ptr } %t28)
  store { i64, ptr } %t30, ptr %l51
  br label %bb4
bb4:
  %t31 = load { i64, ptr }, ptr %l51, !tbaa !27
  store { i64, ptr } %t31, ptr %l7, !tbaa !27
  %t32 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t34 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s0, { i64, ptr } %t32, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d25, i32 0, i32 1) })
  store i1 %t34, ptr %l53
  br label %bb5
bb5:
  %t35 = load i1, ptr %l53, !tbaa !21
  br i1 %t35, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l54, !tbaa !21
  br label %bb9
bb7:
  %t36 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t38 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t36, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) })
  store i1 %t38, ptr %l56
  br label %bb8
bb8:
  %t39 = load i1, ptr %l56, !tbaa !21
  store i1 %t39, ptr %l54, !tbaa !21
  br label %bb9
bb9:
  %t40 = load i1, ptr %l54, !tbaa !21
  br i1 %t40, label %bb10, label %bb11
bb10:
  %t41 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t43 = call { i64, ptr } @compiler_2fload_2eNormalize(ptr %v1, ptr %s0, { i64, ptr } %t41)
  store { i64, ptr } %t43, ptr %l59
  br label %bb12
bb11:
  %t44 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t45 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t47 = extractvalue { i64, ptr } %t44, 1
  %t48 = extractvalue { i64, ptr } %t44, 0
  %t49 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t50 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  %t51 = add i64 %t48, %t50
  %t53 = extractvalue { i64, ptr } %t45, 1
  %t54 = extractvalue { i64, ptr } %t45, 0
  %t55 = add i64 %t51, %t54
  %t56 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t55)
  call void @olang_textcopy(ptr %t56, ptr %t47, i64 %t48)
  %t57 = getelementptr i8, ptr %t56, i64 %t48
  call void @olang_textcopy(ptr %t57, ptr %t49, i64 %t50)
  %t58 = getelementptr i8, ptr %t57, i64 %t50
  call void @olang_textcopy(ptr %t58, ptr %t53, i64 %t54)
  %t59 = insertvalue { i64, ptr } undef, i64 %t55, 0
  %t60 = insertvalue { i64, ptr } %t59, ptr %t56, 1
  %t62 = extractvalue { i64, ptr } %t60, 0
  %t63 = extractvalue { i64, ptr } %t60, 1
  %t64 = mul i64 %t62, 1
  %t65 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t64)
  call void @llvm.memcpy.p0.p0.i64(ptr %t65, ptr %t63, i64 %t64, i1 false)
  %t66 = insertvalue { i64, ptr } undef, i64 %t62, 0
  %t67 = insertvalue { i64, ptr } %t66, ptr %t65, 1
  %t69 = call { i64, ptr } @compiler_2fload_2eNormalize(ptr %s0, ptr %s0, { i64, ptr } %t67)
  store { i64, ptr } %t69, ptr %l65
  br label %bb13
bb12:
  %t70 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t71 = extractvalue { i64, ptr } %t70, 1
  %t72 = extractvalue { i64, ptr } %t70, 0
  %t73 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t72)
  call void @olang_textcopy(ptr %t73, ptr %t71, i64 %t72)
  %t74 = insertvalue { i64, ptr } undef, i64 %t72, 0
  %t75 = insertvalue { i64, ptr } %t74, ptr %t73, 1
  store { i64, ptr } %t75, ptr %l57, !tbaa !27
  br label %bb14
bb13:
  %t77 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t78 = extractvalue { i64, ptr } %t77, 1
  %t79 = extractvalue { i64, ptr } %t77, 0
  %t80 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t79)
  call void @olang_textcopy(ptr %t80, ptr %t78, i64 %t79)
  %t81 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t82 = insertvalue { i64, ptr } %t81, ptr %t80, 1
  store { i64, ptr } %t82, ptr %l57, !tbaa !27
  br label %bb14
bb14:
  %t84 = load { i64, ptr }, ptr %l57, !tbaa !27
  store { i64, ptr } %t84, ptr %l8, !tbaa !27
  %t85 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t87 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s0, { i64, ptr } %t85, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d28, i32 0, i32 1) })
  store i1 %t87, ptr %l68
  br label %bb15
bb15:
  %t88 = load i1, ptr %l68, !tbaa !21
  br i1 %t88, label %bb16, label %bb17
bb16:
  %t89 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t91 = extractvalue { i64, ptr } %t89, 1
  %t92 = extractvalue { i64, ptr } %t89, 0
  %t93 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t92)
  call void @olang_textcopy(ptr %t93, ptr %t91, i64 %t92)
  %t94 = insertvalue { i64, ptr } undef, i64 %t92, 0
  %t95 = insertvalue { i64, ptr } %t94, ptr %t93, 1
  store { i64, ptr } %t95, ptr %l70, !tbaa !27
  %t96 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t97 = extractvalue { i64, ptr } %t96, 0
  %t98 = load { i64, ptr }, ptr %l70, !tbaa !27
  %t99 = extractvalue { i64, ptr } %t98, 0
  store i64 %t99, ptr %l72, !tbaa !24
  %t101 = load i64, ptr %l72, !tbaa !24
  %t102 = icmp eq i64 %t97, %t101
  br i1 %t102, label %bb18, label %bb19
bb17:
  br label %bb21
bb18:
  %t104 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t105 = load ptr, ptr %t104, !tbaa !27
  %t106 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !27
  %t108 = load i64, ptr %l72, !tbaa !24
  %t109 = mul i64 %t108, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t105, ptr %t107, i64 %t109, i1 false)
  br label %bb20
bb19:
  %t110 = load { i64, ptr }, ptr %l70, !tbaa !27
  store { i64, ptr } %t110, ptr %l8, !tbaa !27
  br label %bb20
bb20:
  br label %bb21
bb21:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d29, i32 0, i32 1) }, ptr %l74, !tbaa !27
  %t111 = load { i64, ptr }, ptr %l74, !tbaa !27
  store { i64, ptr } %t111, ptr %l75, !tbaa !27
  %t112 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t113 = extractvalue { i64, ptr } %t112, 0
  store i64 %t113, ptr %l76, !tbaa !24
  %t114 = load i64, ptr %l76, !tbaa !24
  %t115 = mul i64 %t114, 1
  %t116 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t115)
  %t117 = insertvalue { i64, ptr } undef, i64 %t114, 0
  %t118 = insertvalue { i64, ptr } %t117, ptr %t116, 1
  store { i64, ptr } %t118, ptr %l77, !tbaa !27
  %t119 = getelementptr { i64, ptr }, ptr %l77, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !27
  %t121 = getelementptr { i64, ptr }, ptr %l75, i32 0, i32 1
  %t122 = load ptr, ptr %t121, !tbaa !27
  %t123 = load i64, ptr %l76, !tbaa !24
  %t124 = mul i64 %t123, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t120, ptr %t122, i64 %t124, i1 false)
  %t125 = load { i64, ptr }, ptr %l77, !tbaa !27
  store { i64, ptr } %t125, ptr %l9, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d30, i32 0, i32 1) }, ptr %l78, !tbaa !27
  %t126 = load { i64, ptr }, ptr %l78, !tbaa !27
  store { i64, ptr } %t126, ptr %l79, !tbaa !27
  %t127 = load { i64, ptr }, ptr %l79, !tbaa !27
  %t128 = extractvalue { i64, ptr } %t127, 0
  store i64 %t128, ptr %l80, !tbaa !24
  %t129 = load i64, ptr %l80, !tbaa !24
  %t130 = mul i64 %t129, 1
  %t131 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t130)
  %t132 = insertvalue { i64, ptr } undef, i64 %t129, 0
  %t133 = insertvalue { i64, ptr } %t132, ptr %t131, 1
  store { i64, ptr } %t133, ptr %l81, !tbaa !27
  %t134 = getelementptr { i64, ptr }, ptr %l81, i32 0, i32 1
  %t135 = load ptr, ptr %t134, !tbaa !27
  %t136 = getelementptr { i64, ptr }, ptr %l79, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !27
  %t138 = load i64, ptr %l80, !tbaa !24
  %t139 = mul i64 %t138, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t135, ptr %t137, i64 %t139, i1 false)
  %t140 = load { i64, ptr }, ptr %l81, !tbaa !27
  store { i64, ptr } %t140, ptr %l10, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d31, i32 0, i32 1) }, ptr %l82, !tbaa !27
  %t141 = load { i64, ptr }, ptr %l82, !tbaa !27
  store { i64, ptr } %t141, ptr %l83, !tbaa !27
  %t142 = load { i64, ptr }, ptr %l83, !tbaa !27
  %t143 = extractvalue { i64, ptr } %t142, 0
  store i64 %t143, ptr %l84, !tbaa !24
  %t144 = load i64, ptr %l84, !tbaa !24
  %t145 = mul i64 %t144, 1
  %t146 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t145)
  %t147 = insertvalue { i64, ptr } undef, i64 %t144, 0
  %t148 = insertvalue { i64, ptr } %t147, ptr %t146, 1
  store { i64, ptr } %t148, ptr %l85, !tbaa !27
  %t149 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t150 = load ptr, ptr %t149, !tbaa !27
  %t151 = getelementptr { i64, ptr }, ptr %l83, i32 0, i32 1
  %t152 = load ptr, ptr %t151, !tbaa !27
  %t153 = load i64, ptr %l84, !tbaa !24
  %t154 = mul i64 %t153, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t150, ptr %t152, i64 %t154, i1 false)
  %t155 = load { i64, ptr }, ptr %l85, !tbaa !27
  store { i64, ptr } %t155, ptr %l11, !tbaa !27
  %t156 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t158 = call i1 @std_2fos_2eExists(ptr %s0, { i64, ptr } %t156)
  store i1 %t158, ptr %l87
  br label %bb22
bb22:
  %t159 = load i1, ptr %l87, !tbaa !21
  br i1 %t159, label %bb23, label %bb24
bb23:
  %t160 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t162 = call i1 @std_2fos_2eIsDir(ptr %s0, { i64, ptr } %t160)
  store i1 %t162, ptr %l90
  br label %bb25
bb24:
  store i1 false, ptr %l88, !tbaa !21
  br label %bb26
bb25:
  %t163 = load i1, ptr %l90, !tbaa !21
  %t164 = xor i1 %t163, true
  store i1 %t164, ptr %l88, !tbaa !21
  br label %bb26
bb26:
  %t166 = load i1, ptr %l88, !tbaa !21
  br i1 %t166, label %bb27, label %bb28
bb27:
  store %olang.scope zeroinitializer, ptr %s6
  %t167 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t169 = call { i32, { i64, ptr } } @std_2fos_2eRealPath(ptr %s0, ptr %s6, { i64, ptr } %t167)
  %t170 = extractvalue { i32, { i64, ptr } } %t169, 1
  %t171 = extractvalue { i32, { i64, ptr } } %t169, 0
  store i32 %t171, ptr %l95
  %t172 = icmp ne i32 %t171, 0
  br i1 %t172, label %bb30, label %ok.173, !prof !99
ok.173:
  store { i64, ptr } %t170, ptr %l94
  br label %bb29
bb28:
  store %olang.scope zeroinitializer, ptr %s14
  %t174 = load i1, ptr %l6, !tbaa !21
  br i1 %t174, label %bb57, label %bb58
bb29:
  %t176 = load { i64, ptr }, ptr %l94, !tbaa !27
  store { i64, ptr } %t176, ptr %l92, !tbaa !27
  br label %bb34
bb30:
  %t177 = load i32, ptr %l95, !tbaa !23
  %t178 = ashr i32 %t177, 16
  %t180 = icmp eq i32 %t178, 1
  br i1 %t180, label %bb31, label %bb32
bb31:
  call void @__olang_errpay_pop()
  br label %bb32
bb32:
  br label %bb33
bb33:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d32, i32 0, i32 1) }, ptr %l92, !tbaa !27
  br label %bb34
bb34:
  %t182 = load { i64, ptr }, ptr %l92, !tbaa !27
  store { i64, ptr } %t182, ptr %l12, !tbaa !27
  %t183 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t185 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s6, ptr %s6, { i64, ptr } %t183, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d33, i32 0, i32 1) })
  store i1 %t185, ptr %l99
  br label %bb35
bb35:
  %t186 = load i1, ptr %l99, !tbaa !21
  %t187 = xor i1 %t186, true
  br i1 %t187, label %bb36, label %bb37
bb36:
  %t189 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t191 = extractvalue { i64, ptr } %t189, 1
  %t192 = extractvalue { i64, ptr } %t189, 0
  %t193 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t192)
  call void @olang_textcopy(ptr %t193, ptr %t191, i64 %t192)
  %t194 = insertvalue { i64, ptr } undef, i64 %t192, 0
  %t195 = insertvalue { i64, ptr } %t194, ptr %t193, 1
  store { i64, ptr } %t195, ptr %l101, !tbaa !27
  br label %bb38
bb37:
  %t197 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t199 = extractvalue { i64, ptr } %t197, 1
  %t200 = extractvalue { i64, ptr } %t197, 0
  %t201 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t200)
  call void @olang_textcopy(ptr %t201, ptr %t199, i64 %t200)
  %t202 = insertvalue { i64, ptr } undef, i64 %t200, 0
  %t203 = insertvalue { i64, ptr } %t202, ptr %t201, 1
  store { i64, ptr } %t203, ptr %l101, !tbaa !27
  br label %bb38
bb38:
  %t205 = load { i64, ptr }, ptr %l101, !tbaa !27
  store { i64, ptr } %t205, ptr %l13, !tbaa !27
  %t206 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t207 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t208 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  %t210 = extractvalue { i64, ptr } %t206, 1
  %t211 = extractvalue { i64, ptr } %t206, 0
  %t212 = add i64 %t208, %t211
  %t213 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t214 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d35, i32 0, i32 1) }, 0
  %t215 = add i64 %t212, %t214
  %t216 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t215)
  call void @olang_textcopy(ptr %t216, ptr %t207, i64 %t208)
  %t217 = getelementptr i8, ptr %t216, i64 %t208
  call void @olang_textcopy(ptr %t217, ptr %t210, i64 %t211)
  %t218 = getelementptr i8, ptr %t217, i64 %t211
  call void @olang_textcopy(ptr %t218, ptr %t213, i64 %t214)
  %t219 = insertvalue { i64, ptr } undef, i64 %t215, 0
  %t220 = insertvalue { i64, ptr } %t219, ptr %t216, 1
  store { i64, ptr } %t220, ptr %l107, !tbaa !27
  %t221 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t222 = extractvalue { i64, ptr } %t221, 0
  %t223 = load { i64, ptr }, ptr %l107, !tbaa !27
  %t224 = extractvalue { i64, ptr } %t223, 0
  store i64 %t224, ptr %l109, !tbaa !24
  %t226 = load i64, ptr %l109, !tbaa !24
  %t227 = icmp eq i64 %t222, %t226
  br i1 %t227, label %bb39, label %bb40
bb39:
  %t229 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t230 = load ptr, ptr %t229, !tbaa !27
  %t231 = getelementptr { i64, ptr }, ptr %l107, i32 0, i32 1
  %t232 = load ptr, ptr %t231, !tbaa !27
  %t233 = load i64, ptr %l109, !tbaa !24
  %t234 = mul i64 %t233, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t230, ptr %t232, i64 %t234, i1 false)
  br label %bb41
bb40:
  %t235 = load { i64, ptr }, ptr %l107, !tbaa !27
  store { i64, ptr } %t235, ptr %l9, !tbaa !27
  br label %bb41
bb41:
  %t236 = load i1, ptr %l6, !tbaa !21
  br i1 %t236, label %bb42, label %bb43
bb42:
  %t238 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t240 = extractvalue { i64, ptr } %t238, 1
  %t241 = extractvalue { i64, ptr } %t238, 0
  %t242 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t241)
  call void @olang_textcopy(ptr %t242, ptr %t240, i64 %t241)
  %t243 = insertvalue { i64, ptr } undef, i64 %t241, 0
  %t244 = insertvalue { i64, ptr } %t243, ptr %t242, 1
  store { i64, ptr } %t244, ptr %l113, !tbaa !27
  %t245 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t246 = extractvalue { i64, ptr } %t245, 0
  %t247 = load { i64, ptr }, ptr %l113, !tbaa !27
  %t248 = extractvalue { i64, ptr } %t247, 0
  store i64 %t248, ptr %l115, !tbaa !24
  %t250 = load i64, ptr %l115, !tbaa !24
  %t251 = icmp eq i64 %t246, %t250
  br i1 %t251, label %bb44, label %bb45
bb43:
  br label %bb47
bb44:
  %t253 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t254 = load ptr, ptr %t253, !tbaa !27
  %t255 = getelementptr { i64, ptr }, ptr %l113, i32 0, i32 1
  %t256 = load ptr, ptr %t255, !tbaa !27
  %t257 = load i64, ptr %l115, !tbaa !24
  %t258 = mul i64 %t257, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t254, ptr %t256, i64 %t258, i1 false)
  br label %bb46
bb45:
  %t259 = load { i64, ptr }, ptr %l113, !tbaa !27
  store { i64, ptr } %t259, ptr %l10, !tbaa !27
  br label %bb46
bb46:
  br label %bb47
bb47:
  %t260 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t262 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s6, { i64, ptr } %t260, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d36, i32 0, i32 1) })
  store i1 %t262, ptr %l118
  br label %bb48
bb48:
  %t263 = load i1, ptr %l118, !tbaa !21
  br i1 %t263, label %bb49, label %bb50
bb49:
  %t264 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t266 = call { i64, ptr } @std_2ffilepath_2eBase(ptr %v1, ptr %s6, { i64, ptr } %t264)
  store { i64, ptr } %t266, ptr %l121
  br label %bb51
bb50:
  %t267 = load ptr, ptr %l3, !tbaa !29
  %t269 = getelementptr %"compiler/load:Module", ptr %t267, i32 0, i32 2
  %t270 = load { i64, ptr }, ptr %t269, !tbaa !27
  %t271 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t274 = call { i64, ptr } @compiler_2fload_2erelativeIdentity(ptr %v0, ptr %v1, ptr %s6, { i64, ptr } %t270, { i64, ptr } %t271)
  store { i64, ptr } %t274, ptr %l126
  br label %bb52
bb51:
  %t275 = load { i64, ptr }, ptr %l121, !tbaa !27
  %t276 = extractvalue { i64, ptr } %t275, 1
  %t277 = extractvalue { i64, ptr } %t275, 0
  %t278 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t277)
  call void @olang_textcopy(ptr %t278, ptr %t276, i64 %t277)
  %t279 = insertvalue { i64, ptr } undef, i64 %t277, 0
  %t280 = insertvalue { i64, ptr } %t279, ptr %t278, 1
  store { i64, ptr } %t280, ptr %l119, !tbaa !27
  br label %bb53
bb52:
  %t282 = load { i64, ptr }, ptr %l126, !tbaa !27
  %t283 = extractvalue { i64, ptr } %t282, 1
  %t284 = extractvalue { i64, ptr } %t282, 0
  %t285 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t284)
  call void @olang_textcopy(ptr %t285, ptr %t283, i64 %t284)
  %t286 = insertvalue { i64, ptr } undef, i64 %t284, 0
  %t287 = insertvalue { i64, ptr } %t286, ptr %t285, 1
  store { i64, ptr } %t287, ptr %l119, !tbaa !27
  br label %bb53
bb53:
  %t289 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t290 = extractvalue { i64, ptr } %t289, 0
  %t291 = load { i64, ptr }, ptr %l119, !tbaa !27
  %t292 = extractvalue { i64, ptr } %t291, 0
  store i64 %t292, ptr %l129, !tbaa !24
  %t294 = load i64, ptr %l129, !tbaa !24
  %t295 = icmp eq i64 %t290, %t294
  br i1 %t295, label %bb54, label %bb55
bb54:
  %t297 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t298 = load ptr, ptr %t297, !tbaa !27
  %t299 = getelementptr { i64, ptr }, ptr %l119, i32 0, i32 1
  %t300 = load ptr, ptr %t299, !tbaa !27
  %t301 = load i64, ptr %l129, !tbaa !24
  %t302 = mul i64 %t301, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t298, ptr %t300, i64 %t302, i1 false)
  br label %bb56
bb55:
  %t303 = load { i64, ptr }, ptr %l119, !tbaa !27
  store { i64, ptr } %t303, ptr %l11, !tbaa !27
  br label %bb56
bb56:
  call void @__olang_scope_close(ptr %s6)
  br label %bb80
bb57:
  store i1 true, ptr %l132, !tbaa !21
  br label %bb60
bb58:
  %t304 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t306 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s14, { i64, ptr } %t304, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d37, i32 0, i32 1) })
  store i1 %t306, ptr %l134
  br label %bb59
bb59:
  %t307 = load i1, ptr %l134, !tbaa !21
  store i1 %t307, ptr %l132, !tbaa !21
  br label %bb60
bb60:
  %t308 = load i1, ptr %l132, !tbaa !21
  br i1 %t308, label %bb61, label %bb62
bb61:
  store i1 true, ptr %l135, !tbaa !21
  br label %bb64
bb62:
  %t309 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t311 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s14, { i64, ptr } %t309, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d38, i32 0, i32 1) })
  store i1 %t311, ptr %l137
  br label %bb63
bb63:
  %t312 = load i1, ptr %l137, !tbaa !21
  store i1 %t312, ptr %l135, !tbaa !21
  br label %bb64
bb64:
  %t313 = load i1, ptr %l135, !tbaa !21
  br i1 %t313, label %bb65, label %bb66
bb65:
  store i1 true, ptr %l138, !tbaa !21
  br label %bb68
bb66:
  %t314 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t316 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s14, { i64, ptr } %t314, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d39, i32 0, i32 1) })
  store i1 %t316, ptr %l140
  br label %bb67
bb67:
  %t317 = load i1, ptr %l140, !tbaa !21
  store i1 %t317, ptr %l138, !tbaa !21
  br label %bb68
bb68:
  %t318 = load i1, ptr %l138, !tbaa !21
  br i1 %t318, label %bb69, label %bb70
bb69:
  store %olang.scope zeroinitializer, ptr %s15
  %t319 = load ptr, ptr %l0, !tbaa !29
  %t321 = getelementptr %"compiler/load:Loader", ptr %t319, i32 0, i32 4
  %t322 = load ptr, ptr %t321, !tbaa !29
  store ptr %t322, ptr %l142, !tbaa !29
  %t323 = load { i64, [3 x i64] }, ptr %l4
  store { i64, [3 x i64] } %t323, ptr %l143
  %t324 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t326 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCFileNotFound(ptr %s0, ptr %s15, { i64, ptr } %t324)
  store %"compiler/diagmsg:Msg" %t326, ptr %l145
  br label %bb71
bb70:
  %t327 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t328 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d40, i32 0, i32 1) }, 1
  %t329 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d40, i32 0, i32 1) }, 0
  %t331 = extractvalue { i64, ptr } %t327, 1
  %t332 = extractvalue { i64, ptr } %t327, 0
  %t333 = add i64 %t329, %t332
  %t334 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d41, i32 0, i32 1) }, 1
  %t335 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d41, i32 0, i32 1) }, 0
  %t336 = add i64 %t333, %t335
  %t337 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t336)
  call void @olang_textcopy(ptr %t337, ptr %t328, i64 %t329)
  %t338 = getelementptr i8, ptr %t337, i64 %t329
  call void @olang_textcopy(ptr %t338, ptr %t331, i64 %t332)
  %t339 = getelementptr i8, ptr %t338, i64 %t332
  call void @olang_textcopy(ptr %t339, ptr %t334, i64 %t335)
  %t340 = insertvalue { i64, ptr } undef, i64 %t336, 0
  %t341 = insertvalue { i64, ptr } %t340, ptr %t337, 1
  store { i64, ptr } %t341, ptr %l149, !tbaa !27
  %t342 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t343 = extractvalue { i64, ptr } %t342, 0
  %t344 = load { i64, ptr }, ptr %l149, !tbaa !27
  %t345 = extractvalue { i64, ptr } %t344, 0
  store i64 %t345, ptr %l151, !tbaa !24
  %t347 = load i64, ptr %l151, !tbaa !24
  %t348 = icmp eq i64 %t343, %t347
  br i1 %t348, label %bb73, label %bb74
bb71:
  %t350 = load ptr, ptr %l142, !tbaa !29
  %t351 = load { i64, [3 x i64] }, ptr %l143
  %t352 = load %"compiler/diagmsg:Msg", ptr %l145
  %t353 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s15, ptr %t350, { i64, [3 x i64] } %t351, %"compiler/diagmsg:Msg" %t352)
  store i64 %t353, ptr %l146
  br label %bb72
bb72:
  call void @__olang_scope_close(ptr %s15)
  call void @__olang_scope_close(ptr %s14)
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb73:
  %t355 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t356 = load ptr, ptr %t355, !tbaa !27
  %t357 = getelementptr { i64, ptr }, ptr %l149, i32 0, i32 1
  %t358 = load ptr, ptr %t357, !tbaa !27
  %t359 = load i64, ptr %l151, !tbaa !24
  %t360 = mul i64 %t359, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t356, ptr %t358, i64 %t360, i1 false)
  br label %bb75
bb74:
  %t361 = load { i64, ptr }, ptr %l149, !tbaa !27
  store { i64, ptr } %t361, ptr %l9, !tbaa !27
  br label %bb75
bb75:
  %t362 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t363 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d42, i32 0, i32 1) }, 1
  %t364 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d42, i32 0, i32 1) }, 0
  %t366 = extractvalue { i64, ptr } %t362, 1
  %t367 = extractvalue { i64, ptr } %t362, 0
  %t368 = add i64 %t364, %t367
  %t369 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d43, i32 0, i32 1) }, 1
  %t370 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d43, i32 0, i32 1) }, 0
  %t371 = add i64 %t368, %t370
  %t372 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t371)
  call void @olang_textcopy(ptr %t372, ptr %t363, i64 %t364)
  %t373 = getelementptr i8, ptr %t372, i64 %t364
  call void @olang_textcopy(ptr %t373, ptr %t366, i64 %t367)
  %t374 = getelementptr i8, ptr %t373, i64 %t367
  call void @olang_textcopy(ptr %t374, ptr %t369, i64 %t370)
  %t375 = insertvalue { i64, ptr } undef, i64 %t371, 0
  %t376 = insertvalue { i64, ptr } %t375, ptr %t372, 1
  store { i64, ptr } %t376, ptr %l154, !tbaa !27
  %t377 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t378 = extractvalue { i64, ptr } %t377, 0
  %t379 = load { i64, ptr }, ptr %l154, !tbaa !27
  %t380 = extractvalue { i64, ptr } %t379, 0
  store i64 %t380, ptr %l156, !tbaa !24
  %t382 = load i64, ptr %l156, !tbaa !24
  %t383 = icmp eq i64 %t378, %t382
  br i1 %t383, label %bb76, label %bb77
bb76:
  %t385 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t386 = load ptr, ptr %t385, !tbaa !27
  %t387 = getelementptr { i64, ptr }, ptr %l154, i32 0, i32 1
  %t388 = load ptr, ptr %t387, !tbaa !27
  %t389 = load i64, ptr %l156, !tbaa !24
  %t390 = mul i64 %t389, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t386, ptr %t388, i64 %t390, i1 false)
  br label %bb78
bb77:
  %t391 = load { i64, ptr }, ptr %l154, !tbaa !27
  store { i64, ptr } %t391, ptr %l11, !tbaa !27
  br label %bb78
bb78:
  br label %bb79
bb79:
  call void @__olang_scope_close(ptr %s14)
  br label %bb80
bb80:
  %t392 = load ptr, ptr %l0, !tbaa !29
  %t394 = getelementptr %"compiler/load:Loader", ptr %t392, i32 0, i32 19
  %t395 = load { i64, ptr }, ptr %t394, !tbaa !27
  %t397 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t395, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d44, i32 0, i32 1) })
  store i1 %t397, ptr %l160
  br label %bb81
bb81:
  %t398 = load i1, ptr %l160, !tbaa !21
  br i1 %t398, label %bb82, label %bb83
bb82:
  %t399 = load ptr, ptr %l0, !tbaa !29
  store ptr %t399, ptr %l161, !tbaa !29
  %t400 = ptrtoint ptr %v0 to i64
  store i64 %t400, ptr %l162, !tbaa !24
  %t401 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e19
  br i1 %t401, label %bb84, label %bb85
bb83:
  br label %bb89
bb84:
  %t403 = call ptr @__olang_region_make(ptr %v0)
  %t404 = ptrtoint ptr %t403 to i64
  store i64 %t404, ptr %l162, !tbaa !24
  br label %bb85
bb85:
  %t405 = load i64, ptr %l162
  %t406 = inttoptr i64 %t405 to ptr
  %t407 = call { i64, ptr } @compiler_2ftarget_2eFindClang(ptr %t406)
  store { i64, ptr } %t407, ptr %l164
  br label %bb86
bb86:
  %t408 = load { i64, ptr }, ptr %l164, !tbaa !27
  %t409 = load i64, ptr %l162
  %t410 = inttoptr i64 %t409 to ptr
  %t411 = extractvalue { i64, ptr } %t408, 0
  %t412 = extractvalue { i64, ptr } %t408, 1
  %t413 = mul i64 %t411, 1
  %t414 = call ptr @__olang_scope_alloc(ptr %t410, i64 %t413)
  call void @llvm.memcpy.p0.p0.i64(ptr %t414, ptr %t412, i64 %t413, i1 false)
  %t415 = insertvalue { i64, ptr } undef, i64 %t411, 0
  %t416 = insertvalue { i64, ptr } %t415, ptr %t414, 1
  %t417 = load ptr, ptr %l161, !tbaa !29
  %t418 = getelementptr %"compiler/load:Loader", ptr %t417, i32 0, i32 19
  %t419 = load { i64, ptr }, ptr %t418, !tbaa !27
  store { i64, ptr } %t419, ptr %l166, !tbaa !27
  %t421 = load ptr, ptr %l161, !tbaa !29
  %t422 = getelementptr %"compiler/load:Loader", ptr %t421, i32 0, i32 19
  store { i64, ptr } %t416, ptr %t422, !tbaa !27
  %t423 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e19
  br i1 %t423, label %bb87, label %bb88
bb87:
  %t425 = load { i64, ptr }, ptr %l166
  %t426 = extractvalue { i64, ptr } %t425, 1
  call void @__olang_region_release(ptr %t426)
  store { i64, ptr } zeroinitializer, ptr %l166
  br label %bb88
bb88:
  br label %bb89
bb89:
  %t427 = load ptr, ptr %l0, !tbaa !29
  %t429 = getelementptr %"compiler/load:Loader", ptr %t427, i32 0, i32 20
  %t431 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t429)
  store i64 %t431, ptr %l170
  br label %bb90
bb90:
  %t432 = load i64, ptr %l170, !tbaa !24
  %t433 = icmp eq i64 %t432, 0
  br i1 %t433, label %bb91, label %bb92
bb91:
  %t435 = load ptr, ptr %l0, !tbaa !29
  %t437 = getelementptr %"compiler/load:Loader", ptr %t435, i32 0, i32 20
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t437, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d45, i32 0, i32 1) })
  br label %bb93
bb92:
  br label %bb94
bb93:
  br label %bb94
bb94:
  %t439 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t439, ptr %l174
  br label %bb95
bb95:
  %t440 = load %"std/prelude/text:StringBuilder", ptr %l174
  store %"std/prelude/text:StringBuilder" %t440, ptr %l14
  %t441 = load { i64, ptr }, ptr @G_2ecompiler_2fload_2eCImportFormat, !tbaa !27
  %t442 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t443 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t445 = extractvalue { i64, ptr } %t441, 1
  %t446 = extractvalue { i64, ptr } %t441, 0
  %t447 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d46, i32 0, i32 1) }, 1
  %t448 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d46, i32 0, i32 1) }, 0
  %t449 = add i64 %t446, %t448
  %t451 = extractvalue { i64, ptr } %t442, 1
  %t452 = extractvalue { i64, ptr } %t442, 0
  %t453 = add i64 %t449, %t452
  %t454 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d46, i32 0, i32 1) }, 1
  %t455 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d46, i32 0, i32 1) }, 0
  %t456 = add i64 %t453, %t455
  %t458 = extractvalue { i64, ptr } %t443, 1
  %t459 = extractvalue { i64, ptr } %t443, 0
  %t460 = add i64 %t456, %t459
  %t461 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d46, i32 0, i32 1) }, 1
  %t462 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d46, i32 0, i32 1) }, 0
  %t463 = add i64 %t460, %t462
  %t464 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t463)
  call void @olang_textcopy(ptr %t464, ptr %t445, i64 %t446)
  %t465 = getelementptr i8, ptr %t464, i64 %t446
  call void @olang_textcopy(ptr %t465, ptr %t447, i64 %t448)
  %t466 = getelementptr i8, ptr %t465, i64 %t448
  call void @olang_textcopy(ptr %t466, ptr %t451, i64 %t452)
  %t467 = getelementptr i8, ptr %t466, i64 %t452
  call void @olang_textcopy(ptr %t467, ptr %t454, i64 %t455)
  %t468 = getelementptr i8, ptr %t467, i64 %t455
  call void @olang_textcopy(ptr %t468, ptr %t458, i64 %t459)
  %t469 = getelementptr i8, ptr %t468, i64 %t459
  call void @olang_textcopy(ptr %t469, ptr %t461, i64 %t462)
  %t470 = insertvalue { i64, ptr } undef, i64 %t463, 0
  %t471 = insertvalue { i64, ptr } %t470, ptr %t464, 1
  %t473 = extractvalue { i64, ptr } %t471, 0
  %t474 = extractvalue { i64, ptr } %t471, 1
  %t475 = mul i64 %t473, 1
  %t476 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t475)
  call void @llvm.memcpy.p0.p0.i64(ptr %t476, ptr %t474, i64 %t475, i1 false)
  %t477 = insertvalue { i64, ptr } undef, i64 %t473, 0
  %t478 = insertvalue { i64, ptr } %t477, ptr %t476, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l14, { i64, ptr } %t478)
  br label %bb96
bb96:
  %t481 = load ptr, ptr %l0, !tbaa !29
  %t483 = getelementptr %"compiler/load:Loader", ptr %t481, i32 0, i32 20
  store ptr %t483, ptr %l15, !tbaa !29
  store i64 0, ptr %l16, !tbaa !24
  br label %bb97
bb97:
  store %olang.scope zeroinitializer, ptr %s23
  %t485 = load i64, ptr %l16, !tbaa !24
  store i64 %t485, ptr %l183, !tbaa !24
  %t486 = load ptr, ptr %l15, !tbaa !29
  %t488 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t486)
  store i64 %t488, ptr %l185
  br label %bb98
bb98:
  %t489 = load i64, ptr %l183, !tbaa !24
  %t490 = load i64, ptr %l185, !tbaa !24
  %t491 = icmp slt i64 %t489, %t490
  %t493 = xor i1 %t491, true
  br i1 %t493, label %bb99, label %bb100
bb99:
  call void @__olang_scope_close(ptr %s23)
  br label %bb105
bb100:
  br label %bb101
bb101:
  %t495 = load ptr, ptr %l15, !tbaa !29
  %t496 = load i64, ptr %l16, !tbaa !24
  %t499 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t495, i64 %t496)
  store { i64, ptr } %t499, ptr %l190
  br label %bb102
bb102:
  %t500 = load { i64, ptr }, ptr %l190, !tbaa !27
  %t503 = extractvalue { i64, ptr } %t500, 1
  %t504 = extractvalue { i64, ptr } %t500, 0
  %t505 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d47, i32 0, i32 1) }, 1
  %t506 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d47, i32 0, i32 1) }, 0
  %t507 = add i64 %t504, %t506
  %t508 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t507)
  call void @olang_textcopy(ptr %t508, ptr %t503, i64 %t504)
  %t509 = getelementptr i8, ptr %t508, i64 %t504
  call void @olang_textcopy(ptr %t509, ptr %t505, i64 %t506)
  %t510 = insertvalue { i64, ptr } undef, i64 %t507, 0
  %t511 = insertvalue { i64, ptr } %t510, ptr %t508, 1
  %t513 = extractvalue { i64, ptr } %t511, 0
  %t514 = extractvalue { i64, ptr } %t511, 1
  %t515 = mul i64 %t513, 1
  %t516 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t515)
  call void @llvm.memcpy.p0.p0.i64(ptr %t516, ptr %t514, i64 %t515, i1 false)
  %t517 = insertvalue { i64, ptr } undef, i64 %t513, 0
  %t518 = insertvalue { i64, ptr } %t517, ptr %t516, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s23, ptr %l14, { i64, ptr } %t518)
  br label %bb103
bb103:
  call void @__olang_scope_close(ptr %s23)
  br label %bb104
bb104:
  %t521 = load i64, ptr %l16, !tbaa !24
  %t523 = add i64 %t521, 1
  store i64 %t523, ptr %l16, !tbaa !24
  br label %bb97
bb105:
  %t526 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %l14)
  store { i64, ptr } %t526, ptr %l198
  br label %bb106
bb106:
  %t527 = load { i64, ptr }, ptr %l198, !tbaa !27
  %t529 = extractvalue { i64, ptr } %t527, 0
  %t530 = extractvalue { i64, ptr } %t527, 1
  %t531 = mul i64 %t529, 1
  %t532 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t531)
  call void @llvm.memcpy.p0.p0.i64(ptr %t532, ptr %t530, i64 %t531, i1 false)
  %t533 = insertvalue { i64, ptr } undef, i64 %t529, 0
  %t534 = insertvalue { i64, ptr } %t533, ptr %t532, 1
  %t536 = call { i64, ptr } @std_2fsha256_2eHex(ptr %s0, ptr %s0, { i64, ptr } %t534)
  store { i64, ptr } %t536, ptr %l201
  br label %bb107
bb107:
  %t537 = load { i64, ptr }, ptr %l201, !tbaa !27
  %t538 = extractvalue { i64, ptr } %t537, 0
  store i64 %t538, ptr %l202, !tbaa !24
  %t539 = icmp sge i64 0, 0
  br i1 %t539, label %bb108, label %bb109
bb108:
  %t541 = icmp sle i64 0, 12
  br i1 %t541, label %bb110, label %bb111
bb109:
  call void @__olang_check_failed(ptr @olang_loc_4449aa9d363b5b4e_4db0be62c6b6e3d2)
  unreachable
bb110:
  %t543 = load i64, ptr %l202, !tbaa !24
  %t544 = icmp sle i64 12, %t543
  br i1 %t544, label %bb112, label %bb113
bb111:
  call void @__olang_check_failed(ptr @olang_loc_4449aa9d363b5b4e_4db0be62c6b6e3d2)
  unreachable
bb112:
  %t546 = getelementptr { i64, ptr }, ptr %l201, i32 0, i32 1
  %t547 = load ptr, ptr %t546, !tbaa !27
  %t548 = getelementptr i8, ptr %t547, i64 0
  %t549 = sub i64 12, 0
  %t550 = insertvalue { i64, ptr } undef, i64 %t549, 0
  %t551 = insertvalue { i64, ptr } %t550, ptr %t548, 1
  store { i64, ptr } %t551, ptr %l18, !tbaa !27
  store ptr %l14, ptr %l207, !tbaa !29
  %t553 = load ptr, ptr %l0, !tbaa !29
  %t555 = getelementptr %"compiler/load:Loader", ptr %t553, i32 0, i32 19
  %t556 = load { i64, ptr }, ptr %t555, !tbaa !27
  %t558 = call { i64, ptr } @compiler_2fload_2efileStamp(ptr %v0, ptr %s0, { i64, ptr } %t556)
  store { i64, ptr } %t558, ptr %l210
  br label %bb114
bb113:
  call void @__olang_check_failed(ptr @olang_loc_4449aa9d363b5b4e_4db0be62c6b6e3d2)
  unreachable
bb114:
  %t559 = call { i64, ptr } @compiler_2fload_2efileStamp(ptr %s0, ptr %s0, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d48, i32 0, i32 1) })
  store { i64, ptr } %t559, ptr %l211
  br label %bb115
bb115:
  %t560 = load { i64, ptr }, ptr %l210, !tbaa !27
  %t561 = extractvalue { i64, ptr } %t560, 1
  %t562 = extractvalue { i64, ptr } %t560, 0
  %t563 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d49, i32 0, i32 1) }, 1
  %t564 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d49, i32 0, i32 1) }, 0
  %t565 = add i64 %t562, %t564
  %t566 = load { i64, ptr }, ptr %l211, !tbaa !27
  %t567 = extractvalue { i64, ptr } %t566, 1
  %t568 = extractvalue { i64, ptr } %t566, 0
  %t569 = add i64 %t565, %t568
  %t570 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d49, i32 0, i32 1) }, 1
  %t571 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d49, i32 0, i32 1) }, 0
  %t572 = add i64 %t569, %t571
  %t573 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t572)
  call void @olang_textcopy(ptr %t573, ptr %t561, i64 %t562)
  %t574 = getelementptr i8, ptr %t573, i64 %t562
  call void @olang_textcopy(ptr %t574, ptr %t563, i64 %t564)
  %t575 = getelementptr i8, ptr %t574, i64 %t564
  call void @olang_textcopy(ptr %t575, ptr %t567, i64 %t568)
  %t576 = getelementptr i8, ptr %t575, i64 %t568
  call void @olang_textcopy(ptr %t576, ptr %t570, i64 %t571)
  %t577 = insertvalue { i64, ptr } undef, i64 %t572, 0
  %t578 = insertvalue { i64, ptr } %t577, ptr %t573, 1
  %t580 = extractvalue { i64, ptr } %t578, 0
  %t581 = extractvalue { i64, ptr } %t578, 1
  %t582 = mul i64 %t580, 1
  %t583 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t582)
  call void @llvm.memcpy.p0.p0.i64(ptr %t583, ptr %t581, i64 %t582, i1 false)
  %t584 = insertvalue { i64, ptr } undef, i64 %t580, 0
  %t585 = insertvalue { i64, ptr } %t584, ptr %t583, 1
  %t586 = load ptr, ptr %l207, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t586, { i64, ptr } %t585)
  br label %bb116
bb116:
  %t589 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %l14)
  store { i64, ptr } %t589, ptr %l215
  br label %bb117
bb117:
  %t590 = load { i64, ptr }, ptr %l215, !tbaa !27
  %t592 = extractvalue { i64, ptr } %t590, 0
  %t593 = extractvalue { i64, ptr } %t590, 1
  %t594 = mul i64 %t592, 1
  %t595 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t594)
  call void @llvm.memcpy.p0.p0.i64(ptr %t595, ptr %t593, i64 %t594, i1 false)
  %t596 = insertvalue { i64, ptr } undef, i64 %t592, 0
  %t597 = insertvalue { i64, ptr } %t596, ptr %t595, 1
  %t599 = call { i64, ptr } @std_2fsha256_2eHex(ptr %s0, ptr %s0, { i64, ptr } %t597)
  store { i64, ptr } %t599, ptr %l218
  br label %bb118
bb118:
  %t600 = load { i64, ptr }, ptr %l218, !tbaa !27
  %t601 = extractvalue { i64, ptr } %t600, 0
  store i64 %t601, ptr %l219, !tbaa !24
  %t602 = icmp sge i64 0, 0
  br i1 %t602, label %bb119, label %bb120
bb119:
  %t604 = icmp sle i64 0, 32
  br i1 %t604, label %bb121, label %bb122
bb120:
  call void @__olang_check_failed(ptr @olang_loc_7c6f8f6ffdbdf94b_ce4c5ade044a53cf)
  unreachable
bb121:
  %t606 = load i64, ptr %l219, !tbaa !24
  %t607 = icmp sle i64 32, %t606
  br i1 %t607, label %bb123, label %bb124
bb122:
  call void @__olang_check_failed(ptr @olang_loc_7c6f8f6ffdbdf94b_ce4c5ade044a53cf)
  unreachable
bb123:
  %t609 = getelementptr { i64, ptr }, ptr %l218, i32 0, i32 1
  %t610 = load ptr, ptr %t609, !tbaa !27
  %t611 = getelementptr i8, ptr %t610, i64 0
  %t612 = sub i64 32, 0
  %t613 = insertvalue { i64, ptr } undef, i64 %t612, 0
  %t614 = insertvalue { i64, ptr } %t613, ptr %t611, 1
  store { i64, ptr } %t614, ptr %l19, !tbaa !27
  %t616 = call { i64, ptr } @compiler_2ffetch_2eCacheDir(ptr %s0)
  store { i64, ptr } %t616, ptr %l224
  br label %bb125
bb124:
  call void @__olang_check_failed(ptr @olang_loc_7c6f8f6ffdbdf94b_ce4c5ade044a53cf)
  unreachable
bb125:
  %t617 = load { i64, ptr }, ptr %l224, !tbaa !27
  %t618 = extractvalue { i64, ptr } %t617, 1
  %t619 = extractvalue { i64, ptr } %t617, 0
  %t620 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d50, i32 0, i32 1) }, 1
  %t621 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d50, i32 0, i32 1) }, 0
  %t622 = add i64 %t619, %t621
  %t623 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t622)
  call void @olang_textcopy(ptr %t623, ptr %t618, i64 %t619)
  %t624 = getelementptr i8, ptr %t623, i64 %t619
  call void @olang_textcopy(ptr %t624, ptr %t620, i64 %t621)
  %t625 = insertvalue { i64, ptr } undef, i64 %t622, 0
  %t626 = insertvalue { i64, ptr } %t625, ptr %t623, 1
  store { i64, ptr } %t626, ptr %l20, !tbaa !27
  %t628 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t629 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t631 = extractvalue { i64, ptr } %t628, 1
  %t632 = extractvalue { i64, ptr } %t628, 0
  %t633 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d51, i32 0, i32 1) }, 1
  %t634 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d51, i32 0, i32 1) }, 0
  %t635 = add i64 %t632, %t634
  %t637 = extractvalue { i64, ptr } %t629, 1
  %t638 = extractvalue { i64, ptr } %t629, 0
  %t639 = add i64 %t635, %t638
  %t640 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t639)
  call void @olang_textcopy(ptr %t640, ptr %t631, i64 %t632)
  %t641 = getelementptr i8, ptr %t640, i64 %t632
  call void @olang_textcopy(ptr %t641, ptr %t633, i64 %t634)
  %t642 = getelementptr i8, ptr %t641, i64 %t634
  call void @olang_textcopy(ptr %t642, ptr %t637, i64 %t638)
  %t643 = insertvalue { i64, ptr } undef, i64 %t639, 0
  %t644 = insertvalue { i64, ptr } %t643, ptr %t640, 1
  store { i64, ptr } %t644, ptr %l21, !tbaa !27
  %t646 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t648 = call { i64, ptr } @compiler_2fload_2ecachedTranslation(ptr %s0, ptr %s0, { i64, ptr } %t646)
  store { i64, ptr } %t648, ptr %l230
  br label %bb126
bb126:
  %t649 = load { i64, ptr }, ptr %l230, !tbaa !27
  store { i64, ptr } %t649, ptr %l22, !tbaa !27
  %t650 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t652 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t650, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d52, i32 0, i32 1) })
  store i1 %t652, ptr %l232
  br label %bb127
bb127:
  %t653 = load i1, ptr %l232, !tbaa !21
  br i1 %t653, label %bb128, label %bb129
bb128:
  store %olang.scope zeroinitializer, ptr %s29
  %t654 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t654, ptr %l233, !tbaa !27
  %t655 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t655, ptr %l234, !tbaa !27
  %t656 = load ptr, ptr %l0, !tbaa !29
  %t658 = getelementptr %"compiler/load:Loader", ptr %t656, i32 0, i32 19
  %t659 = load { i64, ptr }, ptr %t658, !tbaa !27
  store { i64, ptr } %t659, ptr %l236, !tbaa !27
  %t660 = load ptr, ptr %l0, !tbaa !29
  %t662 = getelementptr %"compiler/load:Loader", ptr %t660, i32 0, i32 20
  %t664 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v0, ptr %v0, ptr %t662)
  store { i64, ptr } %t664, ptr %l239
  br label %bb130
bb129:
  br label %bb189
bb130:
  %t665 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t666 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t667 = load { i64, ptr }, ptr %l233, !tbaa !27
  %t668 = load { i64, ptr }, ptr %l234, !tbaa !27
  %t669 = load { i64, ptr }, ptr %l236, !tbaa !27
  %t670 = load { i64, ptr }, ptr %l239, !tbaa !27
  %t673 = call %"compiler/bindgen:Translation" @compiler_2fbindgen_2eTranslation_2eTranslate(ptr %s0, ptr %s0, ptr %v0, ptr %v0, ptr %s0, ptr %v1, ptr %s29, { i64, ptr } %t667, { i64, ptr } %t668, { i64, ptr } %t669, { i64, ptr } %t670, { i64, ptr } %t665, { i64, ptr } %t666)
  store %"compiler/bindgen:Translation" %t673, ptr %l242
  br label %bb131
bb131:
  %t674 = load %"compiler/bindgen:Translation", ptr %l242
  store %"compiler/bindgen:Translation" %t674, ptr %l23
  %t675 = getelementptr %"compiler/bindgen:Translation", ptr %l23, i32 0, i32 3
  %t676 = load { i64, ptr }, ptr %t675, !tbaa !27
  %t678 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s29, ptr %s29, { i64, ptr } %t676, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d53, i32 0, i32 1) })
  store i1 %t678, ptr %l244
  br label %bb132
bb132:
  %t679 = load i1, ptr %l244, !tbaa !21
  %t680 = xor i1 %t679, true
  br i1 %t680, label %bb133, label %bb134
bb133:
  %t682 = getelementptr %"compiler/bindgen:Translation", ptr %l23, i32 0, i32 4
  %t683 = load i1, ptr %t682, !tbaa !21
  br i1 %t683, label %bb135, label %bb136
bb134:
  br label %bb142
bb135:
  store %olang.scope zeroinitializer, ptr %s31
  %t685 = load ptr, ptr %l0, !tbaa !29
  %t687 = getelementptr %"compiler/load:Loader", ptr %t685, i32 0, i32 4
  %t688 = load ptr, ptr %t687, !tbaa !29
  store ptr %t688, ptr %l248, !tbaa !29
  %t689 = load { i64, [3 x i64] }, ptr %l4
  store { i64, [3 x i64] } %t689, ptr %l249
  %t690 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t692 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCHeaderNotFound(ptr %v1, ptr %s31, { i64, ptr } %t690)
  store %"compiler/diagmsg:Msg" %t692, ptr %l251
  br label %bb137
bb136:
  store %olang.scope zeroinitializer, ptr %s32
  %t693 = load ptr, ptr %l0, !tbaa !29
  %t695 = getelementptr %"compiler/load:Loader", ptr %t693, i32 0, i32 4
  %t696 = load ptr, ptr %t695, !tbaa !29
  store ptr %t696, ptr %l254, !tbaa !29
  %t697 = load { i64, [3 x i64] }, ptr %l4
  store { i64, [3 x i64] } %t697, ptr %l255
  %t698 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t699 = getelementptr %"compiler/bindgen:Translation", ptr %l23, i32 0, i32 3
  %t700 = load { i64, ptr }, ptr %t699, !tbaa !27
  %t703 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCImportFailed(ptr %v1, ptr %s29, ptr %s32, { i64, ptr } %t698, { i64, ptr } %t700)
  store %"compiler/diagmsg:Msg" %t703, ptr %l258
  br label %bb139
bb137:
  %t704 = load ptr, ptr %l248, !tbaa !29
  %t705 = load { i64, [3 x i64] }, ptr %l249
  %t706 = load %"compiler/diagmsg:Msg", ptr %l251
  %t707 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s31, ptr %t704, { i64, [3 x i64] } %t705, %"compiler/diagmsg:Msg" %t706)
  store i64 %t707, ptr %l252
  br label %bb138
bb138:
  call void @__olang_scope_close(ptr %s31)
  br label %bb141
bb139:
  %t708 = load ptr, ptr %l254, !tbaa !29
  %t709 = load { i64, [3 x i64] }, ptr %l255
  %t710 = load %"compiler/diagmsg:Msg", ptr %l258
  %t711 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s32, ptr %t708, { i64, [3 x i64] } %t709, %"compiler/diagmsg:Msg" %t710)
  store i64 %t711, ptr %l259
  br label %bb140
bb140:
  call void @__olang_scope_close(ptr %s32)
  br label %bb141
bb141:
  call void @__olang_scope_close(ptr %s29)
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb142:
  %t713 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s29)
  store %"std/prelude/text:StringBuilder" %t713, ptr %l261
  br label %bb143
bb143:
  %t714 = load %"std/prelude/text:StringBuilder", ptr %l261
  store %"std/prelude/text:StringBuilder" %t714, ptr %l24
  %t715 = getelementptr %"compiler/bindgen:Translation", ptr %l23, i32 0, i32 2
  store ptr %t715, ptr %l25, !tbaa !29
  store i64 0, ptr %l26, !tbaa !24
  br label %bb144
bb144:
  store %olang.scope zeroinitializer, ptr %s34
  %t717 = load i64, ptr %l26, !tbaa !24
  store i64 %t717, ptr %l263, !tbaa !24
  %t718 = load ptr, ptr %l25, !tbaa !29
  %t720 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s29, ptr %t718)
  store i64 %t720, ptr %l265
  br label %bb145
bb145:
  %t721 = load i64, ptr %l263, !tbaa !24
  %t722 = load i64, ptr %l265, !tbaa !24
  %t723 = icmp slt i64 %t721, %t722
  %t725 = xor i1 %t723, true
  br i1 %t725, label %bb146, label %bb147
bb146:
  call void @__olang_scope_close(ptr %s34)
  br label %bb158
bb147:
  br label %bb148
bb148:
  %t727 = load ptr, ptr %l25, !tbaa !29
  %t728 = load i64, ptr %l26, !tbaa !24
  %t731 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s29, ptr %s29, ptr %t727, i64 %t728)
  store { i64, ptr } %t731, ptr %l270
  br label %bb149
bb149:
  %t732 = load { i64, ptr }, ptr %l270, !tbaa !27
  store { i64, ptr } %t732, ptr %l27, !tbaa !27
  %t733 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t735 = call { i32, %"std/os:FileInfo" } @std_2fos_2eFileInfo_2eStat(ptr %s29, { i64, ptr } %t733)
  %t736 = extractvalue { i32, %"std/os:FileInfo" } %t735, 1
  %t737 = extractvalue { i32, %"std/os:FileInfo" } %t735, 0
  store i32 %t737, ptr %l274
  %t738 = icmp ne i32 %t737, 0
  br i1 %t738, label %bb151, label %ok.739, !prof !99
ok.739:
  store %"std/os:FileInfo" %t736, ptr %l273
  br label %bb150
bb150:
  %t740 = load %"std/os:FileInfo", ptr %l273
  store %"std/os:FileInfo" %t740, ptr %l271
  br label %bb155
bb151:
  %t741 = load i32, ptr %l274, !tbaa !23
  %t742 = ashr i32 %t741, 16
  %t744 = icmp eq i32 %t742, 1
  store i1 %t744, ptr %l276, !tbaa !21
  %t745 = load i32, ptr %l274, !tbaa !23
  %t746 = ashr i32 %t745, 16
  %t748 = icmp eq i32 %t746, 1
  br i1 %t748, label %bb152, label %bb153
bb152:
  call void @__olang_errpay_pop()
  br label %bb153
bb153:
  br label %bb154
bb154:
  call void @__olang_scope_close(ptr %s34)
  br label %bb157
bb155:
  %t750 = load %"std/os:FileInfo", ptr %l271
  store %"std/os:FileInfo" %t750, ptr %l28
  %t751 = getelementptr %"std/os:FileInfo", ptr %l28, i32 0, i32 1
  %t752 = load i64, ptr %t751, !tbaa !24
  %t753 = getelementptr %"std/os:FileInfo", ptr %l28, i32 0, i32 2
  %t754 = load i64, ptr %t753, !tbaa !24
  %t755 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t757 = call i64 @__olang_fmt_i64(ptr null, i64 %t752)
  %t758 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d54, i32 0, i32 1) }, 1
  %t759 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d54, i32 0, i32 1) }, 0
  %t760 = add i64 %t757, %t759
  %t762 = call i64 @__olang_fmt_i64(ptr null, i64 %t754)
  %t763 = add i64 %t760, %t762
  %t764 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d54, i32 0, i32 1) }, 1
  %t765 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d54, i32 0, i32 1) }, 0
  %t766 = add i64 %t763, %t765
  %t768 = extractvalue { i64, ptr } %t755, 1
  %t769 = extractvalue { i64, ptr } %t755, 0
  %t770 = add i64 %t766, %t769
  %t771 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d55, i32 0, i32 1) }, 1
  %t772 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d55, i32 0, i32 1) }, 0
  %t773 = add i64 %t770, %t772
  %t774 = call ptr @__olang_scope_alloc(ptr %s34, i64 %t773)
  %t775 = call i64 @__olang_fmt_i64(ptr %t774, i64 %t752)
  %t776 = getelementptr i8, ptr %t774, i64 %t757
  call void @olang_textcopy(ptr %t776, ptr %t758, i64 %t759)
  %t777 = getelementptr i8, ptr %t776, i64 %t759
  %t778 = call i64 @__olang_fmt_i64(ptr %t777, i64 %t754)
  %t779 = getelementptr i8, ptr %t777, i64 %t762
  call void @olang_textcopy(ptr %t779, ptr %t764, i64 %t765)
  %t780 = getelementptr i8, ptr %t779, i64 %t765
  call void @olang_textcopy(ptr %t780, ptr %t768, i64 %t769)
  %t781 = getelementptr i8, ptr %t780, i64 %t769
  call void @olang_textcopy(ptr %t781, ptr %t771, i64 %t772)
  %t782 = insertvalue { i64, ptr } undef, i64 %t773, 0
  %t783 = insertvalue { i64, ptr } %t782, ptr %t774, 1
  %t785 = extractvalue { i64, ptr } %t783, 0
  %t786 = extractvalue { i64, ptr } %t783, 1
  %t787 = mul i64 %t785, 1
  %t788 = call ptr @__olang_scope_alloc(ptr %s34, i64 %t787)
  call void @llvm.memcpy.p0.p0.i64(ptr %t788, ptr %t786, i64 %t787, i1 false)
  %t789 = insertvalue { i64, ptr } undef, i64 %t785, 0
  %t790 = insertvalue { i64, ptr } %t789, ptr %t788, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s29, ptr %s34, ptr %l24, { i64, ptr } %t790)
  br label %bb156
bb156:
  call void @__olang_scope_close(ptr %s34)
  br label %bb157
bb157:
  %t793 = load i64, ptr %l26, !tbaa !24
  %t795 = add i64 %t793, 1
  store i64 %t795, ptr %l26, !tbaa !24
  br label %bb144
bb158:
  %t798 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s29, ptr %s29, ptr %l24)
  store { i64, ptr } %t798, ptr %l288
  br label %bb159
bb159:
  %t799 = load { i64, ptr }, ptr %l288, !tbaa !27
  %t801 = extractvalue { i64, ptr } %t799, 0
  %t802 = extractvalue { i64, ptr } %t799, 1
  %t803 = mul i64 %t801, 1
  %t804 = call ptr @__olang_scope_alloc(ptr %s29, i64 %t803)
  call void @llvm.memcpy.p0.p0.i64(ptr %t804, ptr %t802, i64 %t803, i1 false)
  %t805 = insertvalue { i64, ptr } undef, i64 %t801, 0
  %t806 = insertvalue { i64, ptr } %t805, ptr %t804, 1
  %t808 = call { i64, ptr } @std_2fsha256_2eHex(ptr %s29, ptr %s29, { i64, ptr } %t806)
  store { i64, ptr } %t808, ptr %l291
  br label %bb160
bb160:
  %t809 = load { i64, ptr }, ptr %l291, !tbaa !27
  %t810 = extractvalue { i64, ptr } %t809, 0
  store i64 %t810, ptr %l292, !tbaa !24
  %t811 = icmp sge i64 0, 0
  br i1 %t811, label %bb161, label %bb162
bb161:
  %t813 = icmp sle i64 0, 16
  br i1 %t813, label %bb163, label %bb164
bb162:
  call void @__olang_check_failed(ptr @olang_loc_cc736817fb6c70d0_6e757e50f6c823e4)
  unreachable
bb163:
  %t815 = load i64, ptr %l292, !tbaa !24
  %t816 = icmp sle i64 16, %t815
  br i1 %t816, label %bb165, label %bb166
bb164:
  call void @__olang_check_failed(ptr @olang_loc_cc736817fb6c70d0_6e757e50f6c823e4)
  unreachable
bb165:
  %t818 = getelementptr { i64, ptr }, ptr %l291, i32 0, i32 1
  %t819 = load ptr, ptr %t818, !tbaa !27
  %t820 = getelementptr i8, ptr %t819, i64 0
  %t821 = sub i64 16, 0
  %t822 = insertvalue { i64, ptr } undef, i64 %t821, 0
  %t823 = insertvalue { i64, ptr } %t822, ptr %t820, 1
  store { i64, ptr } %t823, ptr %l29, !tbaa !27
  %t825 = getelementptr %"compiler/bindgen:Translation", ptr %l23, i32 0, i32 1
  %t826 = load { i64, ptr }, ptr %t825, !tbaa !27
  %t828 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s29, ptr %s29, { i64, ptr } %t826, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d56, i32 0, i32 1) })
  store i1 %t828, ptr %l298
  br label %bb167
bb166:
  call void @__olang_check_failed(ptr @olang_loc_cc736817fb6c70d0_6e757e50f6c823e4)
  unreachable
bb167:
  %t829 = load i1, ptr %l298, !tbaa !21
  br i1 %t829, label %bb168, label %bb169
bb168:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d57, i32 0, i32 1) }, ptr %l299, !tbaa !27
  br label %bb170
bb169:
  %t830 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t831 = getelementptr %"compiler/bindgen:Translation", ptr %l23, i32 0, i32 1
  %t832 = load { i64, ptr }, ptr %t831, !tbaa !27
  %t833 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d58, i32 0, i32 1) }, 1
  %t834 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d58, i32 0, i32 1) }, 0
  %t836 = extractvalue { i64, ptr } %t830, 1
  %t837 = extractvalue { i64, ptr } %t830, 0
  %t838 = add i64 %t834, %t837
  %t839 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d59, i32 0, i32 1) }, 1
  %t840 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d59, i32 0, i32 1) }, 0
  %t841 = add i64 %t838, %t840
  %t843 = extractvalue { i64, ptr } %t832, 1
  %t844 = extractvalue { i64, ptr } %t832, 0
  %t845 = add i64 %t841, %t844
  %t846 = call ptr @__olang_scope_alloc(ptr %s29, i64 %t845)
  call void @olang_textcopy(ptr %t846, ptr %t833, i64 %t834)
  %t847 = getelementptr i8, ptr %t846, i64 %t834
  call void @olang_textcopy(ptr %t847, ptr %t836, i64 %t837)
  %t848 = getelementptr i8, ptr %t847, i64 %t837
  call void @olang_textcopy(ptr %t848, ptr %t839, i64 %t840)
  %t849 = getelementptr i8, ptr %t848, i64 %t840
  call void @olang_textcopy(ptr %t849, ptr %t843, i64 %t844)
  %t850 = insertvalue { i64, ptr } undef, i64 %t845, 0
  %t851 = insertvalue { i64, ptr } %t850, ptr %t846, 1
  %t853 = extractvalue { i64, ptr } %t851, 0
  %t854 = extractvalue { i64, ptr } %t851, 1
  %t855 = mul i64 %t853, 1
  %t856 = call ptr @__olang_scope_alloc(ptr %s29, i64 %t855)
  call void @llvm.memcpy.p0.p0.i64(ptr %t856, ptr %t854, i64 %t855, i1 false)
  %t857 = insertvalue { i64, ptr } undef, i64 %t853, 0
  %t858 = insertvalue { i64, ptr } %t857, ptr %t856, 1
  store { i64, ptr } %t858, ptr %l299, !tbaa !27
  br label %bb170
bb170:
  %t860 = load { i64, ptr }, ptr %l299, !tbaa !27
  store { i64, ptr } %t860, ptr %l30, !tbaa !27
  %t861 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t862 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t864 = extractvalue { i64, ptr } %t862, 1
  %t865 = extractvalue { i64, ptr } %t862, 0
  %t866 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d60, i32 0, i32 1) }, 1
  %t867 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d60, i32 0, i32 1) }, 0
  %t868 = add i64 %t865, %t867
  %t869 = call ptr @__olang_scope_alloc(ptr %s29, i64 %t868)
  call void @olang_textcopy(ptr %t869, ptr %t864, i64 %t865)
  %t870 = getelementptr i8, ptr %t869, i64 %t865
  call void @olang_textcopy(ptr %t870, ptr %t866, i64 %t867)
  %t871 = insertvalue { i64, ptr } undef, i64 %t868, 0
  %t872 = insertvalue { i64, ptr } %t871, ptr %t869, 1
  %t874 = extractvalue { i64, ptr } %t872, 0
  %t875 = extractvalue { i64, ptr } %t872, 1
  %t876 = mul i64 %t874, 1
  %t877 = call ptr @__olang_scope_alloc(ptr %s29, i64 %t876)
  call void @llvm.memcpy.p0.p0.i64(ptr %t877, ptr %t875, i64 %t876, i1 false)
  %t878 = insertvalue { i64, ptr } undef, i64 %t874, 0
  %t879 = insertvalue { i64, ptr } %t878, ptr %t877, 1
  %t880 = getelementptr %"compiler/bindgen:Translation", ptr %l23, i32 0, i32 0
  %t881 = load { i64, ptr }, ptr %t880, !tbaa !27
  %t885 = call i1 @compiler_2fload_2ekeepFile(ptr %s0, ptr %s29, ptr %s29, { i64, ptr } %t861, { i64, ptr } %t879, { i64, ptr } %t881)
  store i1 %t885, ptr %l309
  br label %bb171
bb171:
  %t886 = load i1, ptr %l309, !tbaa !21
  %t887 = xor i1 %t886, true
  br i1 %t887, label %bb172, label %bb173
bb172:
  store i1 true, ptr %l311, !tbaa !21
  br label %bb175
bb173:
  %t889 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t890 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t892 = extractvalue { i64, ptr } %t890, 1
  %t893 = extractvalue { i64, ptr } %t890, 0
  %t894 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d61, i32 0, i32 1) }, 1
  %t895 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d61, i32 0, i32 1) }, 0
  %t896 = add i64 %t893, %t895
  %t897 = call ptr @__olang_scope_alloc(ptr %s29, i64 %t896)
  call void @olang_textcopy(ptr %t897, ptr %t892, i64 %t893)
  %t898 = getelementptr i8, ptr %t897, i64 %t893
  call void @olang_textcopy(ptr %t898, ptr %t894, i64 %t895)
  %t899 = insertvalue { i64, ptr } undef, i64 %t896, 0
  %t900 = insertvalue { i64, ptr } %t899, ptr %t897, 1
  %t902 = extractvalue { i64, ptr } %t900, 0
  %t903 = extractvalue { i64, ptr } %t900, 1
  %t904 = mul i64 %t902, 1
  %t905 = call ptr @__olang_scope_alloc(ptr %s29, i64 %t904)
  call void @llvm.memcpy.p0.p0.i64(ptr %t905, ptr %t903, i64 %t904, i1 false)
  %t906 = insertvalue { i64, ptr } undef, i64 %t902, 0
  %t907 = insertvalue { i64, ptr } %t906, ptr %t905, 1
  %t908 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t912 = call i1 @compiler_2fload_2ekeepFile(ptr %s0, ptr %s29, ptr %s29, { i64, ptr } %t889, { i64, ptr } %t907, { i64, ptr } %t908)
  store i1 %t912, ptr %l317
  br label %bb174
bb174:
  %t913 = load i1, ptr %l317, !tbaa !21
  %t914 = xor i1 %t913, true
  store i1 %t914, ptr %l311, !tbaa !21
  br label %bb175
bb175:
  %t916 = load i1, ptr %l311, !tbaa !21
  br i1 %t916, label %bb176, label %bb177
bb176:
  store i1 true, ptr %l319, !tbaa !21
  br label %bb180
bb177:
  %t917 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t917, ptr %l320, !tbaa !27
  %t918 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t920 = extractvalue { i64, ptr } %t918, 1
  %t921 = extractvalue { i64, ptr } %t918, 0
  %t922 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d62, i32 0, i32 1) }, 1
  %t923 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d62, i32 0, i32 1) }, 0
  %t924 = add i64 %t921, %t923
  %t925 = call ptr @__olang_scope_alloc(ptr %s29, i64 %t924)
  call void @olang_textcopy(ptr %t925, ptr %t920, i64 %t921)
  %t926 = getelementptr i8, ptr %t925, i64 %t921
  call void @olang_textcopy(ptr %t926, ptr %t922, i64 %t923)
  %t927 = insertvalue { i64, ptr } undef, i64 %t924, 0
  %t928 = insertvalue { i64, ptr } %t927, ptr %t925, 1
  %t930 = extractvalue { i64, ptr } %t928, 0
  %t931 = extractvalue { i64, ptr } %t928, 1
  %t932 = mul i64 %t930, 1
  %t933 = call ptr @__olang_scope_alloc(ptr %s29, i64 %t932)
  call void @llvm.memcpy.p0.p0.i64(ptr %t933, ptr %t931, i64 %t932, i1 false)
  %t934 = insertvalue { i64, ptr } undef, i64 %t930, 0
  %t935 = insertvalue { i64, ptr } %t934, ptr %t933, 1
  store { i64, ptr } %t935, ptr %l323, !tbaa !27
  %t937 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s29, ptr %s29, ptr %l24)
  store { i64, ptr } %t937, ptr %l325
  br label %bb178
bb178:
  %t938 = load { i64, ptr }, ptr %l325, !tbaa !27
  %t939 = extractvalue { i64, ptr } %t938, 0
  %t940 = extractvalue { i64, ptr } %t938, 1
  %t941 = mul i64 %t939, 1
  %t942 = call ptr @__olang_scope_alloc(ptr %s29, i64 %t941)
  call void @llvm.memcpy.p0.p0.i64(ptr %t942, ptr %t940, i64 %t941, i1 false)
  %t943 = insertvalue { i64, ptr } undef, i64 %t939, 0
  %t944 = insertvalue { i64, ptr } %t943, ptr %t942, 1
  %t945 = load { i64, ptr }, ptr %l320, !tbaa !27
  %t946 = load { i64, ptr }, ptr %l323, !tbaa !27
  %t948 = call i1 @compiler_2fload_2ekeepFile(ptr %s0, ptr %s29, ptr %s29, { i64, ptr } %t945, { i64, ptr } %t946, { i64, ptr } %t944)
  store i1 %t948, ptr %l327
  br label %bb179
bb179:
  %t949 = load i1, ptr %l327, !tbaa !21
  %t950 = xor i1 %t949, true
  store i1 %t950, ptr %l319, !tbaa !21
  br label %bb180
bb180:
  %t952 = load i1, ptr %l319, !tbaa !21
  br i1 %t952, label %bb181, label %bb182
bb181:
  store %olang.scope zeroinitializer, ptr %s42
  %t953 = load ptr, ptr %l0, !tbaa !29
  %t955 = getelementptr %"compiler/load:Loader", ptr %t953, i32 0, i32 4
  %t956 = load ptr, ptr %t955, !tbaa !29
  store ptr %t956, ptr %l330, !tbaa !29
  %t957 = load { i64, [3 x i64] }, ptr %l4
  store { i64, [3 x i64] } %t957, ptr %l331
  %t958 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t959 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t960 = extractvalue { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d63, i32 0, i32 1) }, 1
  %t961 = extractvalue { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d63, i32 0, i32 1) }, 0
  %t963 = extractvalue { i64, ptr } %t959, 1
  %t964 = extractvalue { i64, ptr } %t959, 0
  %t965 = add i64 %t961, %t964
  %t966 = call ptr @__olang_scope_alloc(ptr %s42, i64 %t965)
  call void @olang_textcopy(ptr %t966, ptr %t960, i64 %t961)
  %t967 = getelementptr i8, ptr %t966, i64 %t961
  call void @olang_textcopy(ptr %t967, ptr %t963, i64 %t964)
  %t968 = insertvalue { i64, ptr } undef, i64 %t965, 0
  %t969 = insertvalue { i64, ptr } %t968, ptr %t966, 1
  %t971 = extractvalue { i64, ptr } %t969, 0
  %t972 = extractvalue { i64, ptr } %t969, 1
  %t973 = mul i64 %t971, 1
  %t974 = call ptr @__olang_scope_alloc(ptr %s42, i64 %t973)
  call void @llvm.memcpy.p0.p0.i64(ptr %t974, ptr %t972, i64 %t973, i1 false)
  %t975 = insertvalue { i64, ptr } undef, i64 %t971, 0
  %t976 = insertvalue { i64, ptr } %t975, ptr %t974, 1
  %t979 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCImportFailed(ptr %v1, ptr %s42, ptr %s42, { i64, ptr } %t958, { i64, ptr } %t976)
  store %"compiler/diagmsg:Msg" %t979, ptr %l336
  br label %bb183
bb182:
  br label %bb185
bb183:
  %t980 = load ptr, ptr %l330, !tbaa !29
  %t981 = load { i64, [3 x i64] }, ptr %l331
  %t982 = load %"compiler/diagmsg:Msg", ptr %l336
  %t983 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s42, ptr %t980, { i64, [3 x i64] } %t981, %"compiler/diagmsg:Msg" %t982)
  store i64 %t983, ptr %l337
  br label %bb184
bb184:
  call void @__olang_scope_close(ptr %s42)
  call void @__olang_scope_close(ptr %s29)
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb185:
  %t985 = getelementptr %"compiler/bindgen:Translation", ptr %l23, i32 0, i32 0
  %t986 = load { i64, ptr }, ptr %t985, !tbaa !27
  store { i64, ptr } %t986, ptr %l340, !tbaa !27
  %t988 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t989 = extractvalue { i64, ptr } %t988, 0
  %t990 = load { i64, ptr }, ptr %l340, !tbaa !27
  %t991 = extractvalue { i64, ptr } %t990, 0
  store i64 %t991, ptr %l342, !tbaa !24
  %t993 = load i64, ptr %l342, !tbaa !24
  %t994 = icmp eq i64 %t989, %t993
  br i1 %t994, label %bb186, label %bb187
bb186:
  %t996 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t997 = load ptr, ptr %t996, !tbaa !27
  %t998 = getelementptr { i64, ptr }, ptr %l340, i32 0, i32 1
  %t999 = load ptr, ptr %t998, !tbaa !27
  %t1000 = load i64, ptr %l342, !tbaa !24
  %t1001 = mul i64 %t1000, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t997, ptr %t999, i64 %t1001, i1 false)
  br label %bb188
bb187:
  %t1002 = load { i64, ptr }, ptr %l340, !tbaa !27
  %t1003 = extractvalue { i64, ptr } %t1002, 0
  store i64 %t1003, ptr %l344, !tbaa !24
  %t1004 = load i64, ptr %l344, !tbaa !24
  %t1005 = mul i64 %t1004, 1
  %t1006 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1005)
  %t1007 = insertvalue { i64, ptr } undef, i64 %t1004, 0
  %t1008 = insertvalue { i64, ptr } %t1007, ptr %t1006, 1
  store { i64, ptr } %t1008, ptr %l345, !tbaa !27
  %t1009 = getelementptr { i64, ptr }, ptr %l345, i32 0, i32 1
  %t1010 = load ptr, ptr %t1009, !tbaa !27
  %t1011 = getelementptr { i64, ptr }, ptr %l340, i32 0, i32 1
  %t1012 = load ptr, ptr %t1011, !tbaa !27
  %t1013 = load i64, ptr %l344, !tbaa !24
  %t1014 = mul i64 %t1013, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1010, ptr %t1012, i64 %t1014, i1 false)
  %t1015 = load { i64, ptr }, ptr %l345, !tbaa !27
  store { i64, ptr } %t1015, ptr %l22, !tbaa !27
  br label %bb188
bb188:
  call void @__olang_scope_close(ptr %s29)
  br label %bb189
bb189:
  %t1016 = load ptr, ptr %l0, !tbaa !29
  %t1017 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t1019 = extractvalue { i64, ptr } %t1017, 1
  %t1020 = extractvalue { i64, ptr } %t1017, 0
  %t1021 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d64, i32 0, i32 1) }, 1
  %t1022 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d64, i32 0, i32 1) }, 0
  %t1023 = add i64 %t1020, %t1022
  %t1024 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1023)
  call void @olang_textcopy(ptr %t1024, ptr %t1019, i64 %t1020)
  %t1025 = getelementptr i8, ptr %t1024, i64 %t1020
  call void @olang_textcopy(ptr %t1025, ptr %t1021, i64 %t1022)
  %t1026 = insertvalue { i64, ptr } undef, i64 %t1023, 0
  %t1027 = insertvalue { i64, ptr } %t1026, ptr %t1024, 1
  %t1029 = extractvalue { i64, ptr } %t1027, 0
  %t1030 = extractvalue { i64, ptr } %t1027, 1
  %t1031 = mul i64 %t1029, 1
  %t1032 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1031)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1032, ptr %t1030, i64 %t1031, i1 false)
  %t1033 = insertvalue { i64, ptr } undef, i64 %t1029, 0
  %t1034 = insertvalue { i64, ptr } %t1033, ptr %t1032, 1
  %t1035 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t1039 = call i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2eload(ptr %v0, ptr %s0, ptr %s0, ptr %t1016, { i64, ptr } %t1034, { i64, ptr } %t1035, i1 false, i1 true)
  store i64 %t1039, ptr %l351
  br label %bb190
bb190:
  %t1040 = load i64, ptr %l351, !tbaa !24
  store i64 %t1040, ptr %l31, !tbaa !24
  %t1041 = load i64, ptr %l31, !tbaa !24
  %t1043 = icmp slt i64 %t1041, 0
  br i1 %t1043, label %bb191, label %bb192
bb191:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb192:
  br label %bb193
bb193:
  %t1046 = load ptr, ptr %l0, !tbaa !29
  %t1048 = getelementptr %"compiler/load:Loader", ptr %t1046, i32 0, i32 10
  %t1049 = load i64, ptr %l31, !tbaa !24
  %t1052 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t1048, i64 %t1049)
  store ptr %t1052, ptr %l358
  br label %bb194
bb194:
  %t1053 = load ptr, ptr %l358, !tbaa !29
  store ptr %t1053, ptr %l32, !tbaa !29
  %t1054 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t1056 = extractvalue { i64, ptr } %t1054, 1
  %t1057 = extractvalue { i64, ptr } %t1054, 0
  %t1058 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d65, i32 0, i32 1) }, 1
  %t1059 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d65, i32 0, i32 1) }, 0
  %t1060 = add i64 %t1057, %t1059
  %t1061 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1060)
  call void @olang_textcopy(ptr %t1061, ptr %t1056, i64 %t1057)
  %t1062 = getelementptr i8, ptr %t1061, i64 %t1057
  call void @olang_textcopy(ptr %t1062, ptr %t1058, i64 %t1059)
  %t1063 = insertvalue { i64, ptr } undef, i64 %t1060, 0
  %t1064 = insertvalue { i64, ptr } %t1063, ptr %t1061, 1
  %t1066 = extractvalue { i64, ptr } %t1064, 0
  %t1067 = extractvalue { i64, ptr } %t1064, 1
  %t1068 = mul i64 %t1066, 1
  %t1069 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1068)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1069, ptr %t1067, i64 %t1068, i1 false)
  %t1070 = insertvalue { i64, ptr } undef, i64 %t1066, 0
  %t1071 = insertvalue { i64, ptr } %t1070, ptr %t1069, 1
  %t1073 = call i1 @std_2fos_2eExists(ptr %s0, { i64, ptr } %t1071)
  store i1 %t1073, ptr %l362
  br label %bb195
bb195:
  %t1074 = load i1, ptr %l362, !tbaa !21
  br i1 %t1074, label %bb196, label %bb197
bb196:
  %t1075 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t1077 = extractvalue { i64, ptr } %t1075, 1
  %t1078 = extractvalue { i64, ptr } %t1075, 0
  %t1079 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d66, i32 0, i32 1) }, 1
  %t1080 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d66, i32 0, i32 1) }, 0
  %t1081 = add i64 %t1078, %t1080
  %t1082 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1081)
  call void @olang_textcopy(ptr %t1082, ptr %t1077, i64 %t1078)
  %t1083 = getelementptr i8, ptr %t1082, i64 %t1078
  call void @olang_textcopy(ptr %t1083, ptr %t1079, i64 %t1080)
  %t1084 = insertvalue { i64, ptr } undef, i64 %t1081, 0
  %t1085 = insertvalue { i64, ptr } %t1084, ptr %t1082, 1
  %t1087 = extractvalue { i64, ptr } %t1085, 0
  %t1088 = extractvalue { i64, ptr } %t1085, 1
  %t1089 = mul i64 %t1087, 1
  %t1090 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1089)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1090, ptr %t1088, i64 %t1089, i1 false)
  %t1091 = insertvalue { i64, ptr } undef, i64 %t1087, 0
  %t1092 = insertvalue { i64, ptr } %t1091, ptr %t1090, 1
  %t1094 = call { i32, %"std/os:FileInfo" } @std_2fos_2eFileInfo_2eStat(ptr %s0, { i64, ptr } %t1092)
  %t1095 = extractvalue { i32, %"std/os:FileInfo" } %t1094, 1
  %t1096 = extractvalue { i32, %"std/os:FileInfo" } %t1094, 0
  store i32 %t1096, ptr %l369
  %t1097 = icmp ne i32 %t1096, 0
  br i1 %t1097, label %bb199, label %ok.1098, !prof !99
ok.1098:
  store %"std/os:FileInfo" %t1095, ptr %l368
  br label %bb198
bb197:
  store i1 false, ptr %l363, !tbaa !21
  br label %bb205
bb198:
  %t1099 = load %"std/os:FileInfo", ptr %l368
  store %"std/os:FileInfo" %t1099, ptr %l364
  br label %bb204
bb199:
  %t1100 = load i32, ptr %l369, !tbaa !23
  %t1101 = ashr i32 %t1100, 16
  %t1103 = icmp eq i32 %t1101, 1
  store i1 %t1103, ptr %l371, !tbaa !21
  %t1104 = load i32, ptr %l369, !tbaa !23
  %t1105 = ashr i32 %t1104, 16
  %t1107 = icmp eq i32 %t1105, 1
  br i1 %t1107, label %bb200, label %bb201
bb200:
  call void @__olang_errpay_pop()
  br label %bb201
bb201:
  br label %bb202
bb202:
  %t1110 = call %"std/os:FileInfo" @std_2fos_3aFileInfo_2ector(ptr %s0, i32 2, i64 0, i64 0)
  store %"std/os:FileInfo" %t1110, ptr %l375
  br label %bb203
bb203:
  %t1111 = load %"std/os:FileInfo", ptr %l375
  store %"std/os:FileInfo" %t1111, ptr %l364
  br label %bb204
bb204:
  %t1112 = getelementptr %"std/os:FileInfo", ptr %l364, i32 0, i32 1
  %t1113 = load i64, ptr %t1112, !tbaa !24
  %t1115 = icmp sgt i64 %t1113, 0
  store i1 %t1115, ptr %l363, !tbaa !21
  br label %bb205
bb205:
  %t1117 = load i1, ptr %l363, !tbaa !21
  br i1 %t1117, label %bb206, label %bb207
bb206:
  %t1118 = load ptr, ptr %l32, !tbaa !29
  store ptr %t1118, ptr %l378, !tbaa !29
  %t1119 = ptrtoint ptr %v0 to i64
  store i64 %t1119, ptr %l379, !tbaa !24
  %t1120 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e31
  br i1 %t1120, label %bb208, label %bb209
bb207:
  br label %bb212
bb208:
  %t1122 = call ptr @__olang_region_make(ptr %v0)
  %t1123 = ptrtoint ptr %t1122 to i64
  store i64 %t1123, ptr %l379, !tbaa !24
  br label %bb209
bb209:
  %t1124 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t1126 = extractvalue { i64, ptr } %t1124, 1
  %t1127 = extractvalue { i64, ptr } %t1124, 0
  %t1128 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d67, i32 0, i32 1) }, 1
  %t1129 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d67, i32 0, i32 1) }, 0
  %t1130 = add i64 %t1127, %t1129
  %t1131 = load i64, ptr %l379
  %t1132 = inttoptr i64 %t1131 to ptr
  %t1133 = call ptr @__olang_scope_alloc(ptr %t1132, i64 %t1130)
  call void @olang_textcopy(ptr %t1133, ptr %t1126, i64 %t1127)
  %t1134 = getelementptr i8, ptr %t1133, i64 %t1127
  call void @olang_textcopy(ptr %t1134, ptr %t1128, i64 %t1129)
  %t1135 = insertvalue { i64, ptr } undef, i64 %t1130, 0
  %t1136 = insertvalue { i64, ptr } %t1135, ptr %t1133, 1
  %t1138 = load i64, ptr %l379
  %t1139 = inttoptr i64 %t1138 to ptr
  %t1140 = extractvalue { i64, ptr } %t1136, 0
  %t1141 = extractvalue { i64, ptr } %t1136, 1
  %t1142 = mul i64 %t1140, 1
  %t1143 = call ptr @__olang_scope_alloc(ptr %t1139, i64 %t1142)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1143, ptr %t1141, i64 %t1142, i1 false)
  %t1144 = insertvalue { i64, ptr } undef, i64 %t1140, 0
  %t1145 = insertvalue { i64, ptr } %t1144, ptr %t1143, 1
  %t1146 = load ptr, ptr %l378, !tbaa !29
  %t1147 = getelementptr %"compiler/load:Module", ptr %t1146, i32 0, i32 31
  %t1148 = load { i64, ptr }, ptr %t1147, !tbaa !27
  store { i64, ptr } %t1148, ptr %l384, !tbaa !27
  %t1150 = load ptr, ptr %l378, !tbaa !29
  %t1151 = getelementptr %"compiler/load:Module", ptr %t1150, i32 0, i32 31
  store { i64, ptr } %t1145, ptr %t1151, !tbaa !27
  %t1152 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e31
  br i1 %t1152, label %bb210, label %bb211
bb210:
  %t1154 = load { i64, ptr }, ptr %l384
  %t1155 = extractvalue { i64, ptr } %t1154, 1
  call void @__olang_region_release(ptr %t1155)
  store { i64, ptr } zeroinitializer, ptr %l384
  br label %bb211
bb211:
  br label %bb212
bb212:
  store i1 false, ptr %l33, !tbaa !21
  %t1156 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t1158 = call %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %s0, ptr %s0, { i64, ptr } %t1156)
  store %"std/prelude/text:LineIter" %t1158, ptr %l387
  br label %bb213
bb213:
  %t1159 = load %"std/prelude/text:LineIter", ptr %l387
  store %"std/prelude/text:LineIter" %t1159, ptr %l34
  br label %bb214
bb214:
  store %olang.scope zeroinitializer, ptr %s51
  %t1161 = call { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %s0, ptr %s0, ptr %l34)
  %t1162 = extractvalue { i32, { i64, ptr } } %t1161, 1
  %t1163 = extractvalue { i32, { i64, ptr } } %t1161, 0
  store i32 %t1163, ptr %l391
  %t1164 = icmp ne i32 %t1163, 0
  br i1 %t1164, label %bb216, label %ok.1165, !prof !99
ok.1165:
  store { i64, ptr } %t1162, ptr %l390
  br label %bb215
bb215:
  %t1166 = load { i64, ptr }, ptr %l390, !tbaa !27
  store { i64, ptr } %t1166, ptr %l388, !tbaa !27
  br label %bb218
bb216:
  %t1167 = load i32, ptr %l391, !tbaa !23
  %t1168 = ashr i32 %t1167, 16
  %t1170 = icmp eq i32 %t1168, 1
  store i1 %t1170, ptr %l393, !tbaa !21
  br label %bb217
bb217:
  call void @__olang_scope_close(ptr %s51)
  br label %bb274
bb218:
  %t1171 = load { i64, ptr }, ptr %l388, !tbaa !27
  store { i64, ptr } %t1171, ptr %l35, !tbaa !27
  %t1172 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t1174 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s51, { i64, ptr } %t1172, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d68, i32 0, i32 1) })
  store i1 %t1174, ptr %l395
  br label %bb219
bb219:
  %t1175 = load i1, ptr %l395, !tbaa !21
  br i1 %t1175, label %bb220, label %bb221
bb220:
  store %olang.scope zeroinitializer, ptr %s52
  %t1176 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t1176, ptr %l396, !tbaa !27
  %t1177 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t1180 = extractvalue { i64, ptr } %t1177, 0
  store i64 %t1180, ptr %l399, !tbaa !24
  %t1181 = load { i64, ptr }, ptr %l396, !tbaa !27
  %t1182 = extractvalue { i64, ptr } %t1181, 0
  store i64 %t1182, ptr %l400, !tbaa !24
  %t1183 = icmp sge i64 9, 0
  br i1 %t1183, label %bb222, label %bb223
bb221:
  store %olang.scope zeroinitializer, ptr %s56
  %t1185 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t1187 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s56, { i64, ptr } %t1185, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d69, i32 0, i32 1) })
  store i1 %t1187, ptr %l424
  br label %bb237
bb222:
  %t1188 = load i64, ptr %l399, !tbaa !24
  %t1189 = icmp sle i64 9, %t1188
  br i1 %t1189, label %bb224, label %bb225
bb223:
  call void @__olang_check_failed(ptr @olang_loc_d93100fd80a187ad_1e56be64fe5806d1)
  unreachable
bb224:
  %t1191 = load i64, ptr %l399, !tbaa !24
  %t1192 = load i64, ptr %l400, !tbaa !24
  %t1193 = icmp sle i64 %t1191, %t1192
  br i1 %t1193, label %bb226, label %bb227
bb225:
  call void @__olang_check_failed(ptr @olang_loc_d93100fd80a187ad_1e56be64fe5806d1)
  unreachable
bb226:
  %t1195 = getelementptr { i64, ptr }, ptr %l396, i32 0, i32 1
  %t1196 = load ptr, ptr %t1195, !tbaa !27
  %t1197 = load i64, ptr %l399, !tbaa !24
  %t1198 = getelementptr i8, ptr %t1196, i64 9
  %t1199 = sub i64 %t1197, 9
  %t1200 = insertvalue { i64, ptr } undef, i64 %t1199, 0
  %t1201 = insertvalue { i64, ptr } %t1200, ptr %t1198, 1
  %t1203 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %s0, ptr %s52, ptr %s52, { i64, ptr } %t1201, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d70, i32 0, i32 1) })
  store { i64, ptr } %t1203, ptr %l405
  br label %bb228
bb227:
  call void @__olang_check_failed(ptr @olang_loc_d93100fd80a187ad_1e56be64fe5806d1)
  unreachable
bb228:
  %t1204 = load { i64, ptr }, ptr %l405, !tbaa !27
  store { i64, ptr } %t1204, ptr %l36, !tbaa !27
  %t1205 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t1207 = extractvalue { i64, ptr } %t1205, 0
  %t1209 = icmp eq i64 %t1207, 2
  br i1 %t1209, label %bb229, label %bb230
bb229:
  %t1211 = load ptr, ptr %l32, !tbaa !29
  %t1213 = getelementptr %"compiler/load:Module", ptr %t1211, i32 0, i32 32
  store ptr %t1213, ptr %l410, !tbaa !29
  %t1214 = ptrtoint ptr %v0 to i64
  store i64 %t1214, ptr %l411, !tbaa !24
  %t1215 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20st_Ha3f33385783b00c3f13cf90b683d8670
  br i1 %t1215, label %bb231, label %bb232
bb230:
  br label %bb236
bb231:
  %t1217 = call ptr @__olang_region_make(ptr %v0)
  %t1218 = ptrtoint ptr %t1217 to i64
  store i64 %t1218, ptr %l411, !tbaa !24
  br label %bb232
bb232:
  %t1219 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t1219, ptr %l413, !tbaa !27
  %t1220 = getelementptr { i64, ptr }, ptr %l413, i32 0, i32 1
  %t1221 = load ptr, ptr %t1220, !tbaa !27
  %t1222 = getelementptr { i64, ptr }, ptr %t1221, i64 0
  %t1223 = load { i64, ptr }, ptr %t1222, !tbaa !37
  %t1225 = extractvalue { i64, ptr } %t1223, 1
  %t1226 = extractvalue { i64, ptr } %t1223, 0
  %t1227 = load i64, ptr %l411
  %t1228 = inttoptr i64 %t1227 to ptr
  %t1229 = call ptr @__olang_scope_alloc(ptr %t1228, i64 %t1226)
  call void @olang_textcopy(ptr %t1229, ptr %t1225, i64 %t1226)
  %t1230 = insertvalue { i64, ptr } undef, i64 %t1226, 0
  %t1231 = insertvalue { i64, ptr } %t1230, ptr %t1229, 1
  %t1233 = load i64, ptr %l411
  %t1234 = inttoptr i64 %t1233 to ptr
  %t1235 = extractvalue { i64, ptr } %t1231, 0
  %t1236 = extractvalue { i64, ptr } %t1231, 1
  %t1237 = mul i64 %t1235, 1
  %t1238 = call ptr @__olang_scope_alloc(ptr %t1234, i64 %t1237)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1238, ptr %t1236, i64 %t1237, i1 false)
  %t1239 = insertvalue { i64, ptr } undef, i64 %t1235, 0
  %t1240 = insertvalue { i64, ptr } %t1239, ptr %t1238, 1
  store { i64, ptr } %t1240, ptr %l416, !tbaa !27
  %t1241 = ptrtoint ptr %v0 to i64
  store i64 %t1241, ptr %l417, !tbaa !24
  %t1242 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20st_Ha3f33285783aff10f13cf80b683d8c03
  br i1 %t1242, label %bb233, label %bb234
bb233:
  %t1244 = call ptr @__olang_region_make(ptr %v0)
  %t1245 = ptrtoint ptr %t1244 to i64
  store i64 %t1245, ptr %l417, !tbaa !24
  br label %bb234
bb234:
  %t1246 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t1246, ptr %l419, !tbaa !27
  %t1247 = getelementptr { i64, ptr }, ptr %l419, i32 0, i32 1
  %t1248 = load ptr, ptr %t1247, !tbaa !27
  %t1249 = getelementptr { i64, ptr }, ptr %t1248, i64 1
  %t1250 = load { i64, ptr }, ptr %t1249, !tbaa !37
  %t1252 = extractvalue { i64, ptr } %t1250, 1
  %t1253 = extractvalue { i64, ptr } %t1250, 0
  %t1254 = load i64, ptr %l417
  %t1255 = inttoptr i64 %t1254 to ptr
  %t1256 = call ptr @__olang_scope_alloc(ptr %t1255, i64 %t1253)
  call void @olang_textcopy(ptr %t1256, ptr %t1252, i64 %t1253)
  %t1257 = insertvalue { i64, ptr } undef, i64 %t1253, 0
  %t1258 = insertvalue { i64, ptr } %t1257, ptr %t1256, 1
  %t1260 = load i64, ptr %l417
  %t1261 = inttoptr i64 %t1260 to ptr
  %t1262 = extractvalue { i64, ptr } %t1258, 0
  %t1263 = extractvalue { i64, ptr } %t1258, 1
  %t1264 = mul i64 %t1262, 1
  %t1265 = call ptr @__olang_scope_alloc(ptr %t1261, i64 %t1264)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1265, ptr %t1263, i64 %t1264, i1 false)
  %t1266 = insertvalue { i64, ptr } undef, i64 %t1262, 0
  %t1267 = insertvalue { i64, ptr } %t1266, ptr %t1265, 1
  %t1268 = load ptr, ptr %l410, !tbaa !29
  %t1269 = load { i64, ptr }, ptr %l416, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6f7a2f8d839c49b6e7a19c287d4b190c(ptr %v0, ptr %v0, ptr %v0, ptr %t1268, { i64, ptr } %t1269, { i64, ptr } %t1267)
  br label %bb235
bb235:
  br label %bb236
bb236:
  call void @__olang_scope_close(ptr %s52)
  br label %bb272
bb237:
  %t1271 = load i1, ptr %l424, !tbaa !21
  br i1 %t1271, label %bb238, label %bb239
bb238:
  store i1 true, ptr %l33, !tbaa !21
  br label %bb271
bb239:
  store %olang.scope zeroinitializer, ptr %s58
  %t1272 = load i1, ptr %l33, !tbaa !21
  br i1 %t1272, label %bb240, label %bb241
bb240:
  %t1274 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t1276 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s58, { i64, ptr } %t1274, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d71, i32 0, i32 1) })
  store i1 %t1276, ptr %l428
  br label %bb242
bb241:
  store i1 false, ptr %l426, !tbaa !21
  br label %bb243
bb242:
  %t1277 = load i1, ptr %l428, !tbaa !21
  store i1 %t1277, ptr %l426, !tbaa !21
  br label %bb243
bb243:
  %t1278 = load i1, ptr %l426, !tbaa !21
  br i1 %t1278, label %bb244, label %bb245
bb244:
  store %olang.scope zeroinitializer, ptr %s59
  %t1279 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t1281 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %s0, ptr %s59, { i64, ptr } %t1279, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d72, i32 0, i32 1) })
  %t1282 = extractvalue { i32, i64 } %t1281, 1
  %t1283 = extractvalue { i32, i64 } %t1281, 0
  store i32 %t1283, ptr %l432
  %t1284 = icmp ne i32 %t1283, 0
  br i1 %t1284, label %bb247, label %ok.1285, !prof !99
ok.1285:
  store i64 %t1282, ptr %l431
  br label %bb246
bb245:
  br label %bb270
bb246:
  %t1286 = load i64, ptr %l431, !tbaa !24
  store i64 %t1286, ptr %l429, !tbaa !24
  br label %bb249
bb247:
  br label %bb248
bb248:
  store i64 -1, ptr %l429, !tbaa !24
  br label %bb249
bb249:
  %t1287 = load i64, ptr %l429, !tbaa !24
  store i64 %t1287, ptr %l37, !tbaa !24
  %t1288 = load i64, ptr %l37, !tbaa !24
  %t1290 = icmp sgt i64 %t1288, 4
  br i1 %t1290, label %bb250, label %bb251
bb250:
  %t1292 = load ptr, ptr %l32, !tbaa !29
  %t1294 = getelementptr %"compiler/load:Module", ptr %t1292, i32 0, i32 33
  store ptr %t1294, ptr %l436, !tbaa !29
  %t1295 = ptrtoint ptr %v0 to i64
  store i64 %t1295, ptr %l437, !tbaa !24
  %t1296 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20st_Ha3f33385783b00c3f13cf90b683d8670
  br i1 %t1296, label %bb252, label %bb253
bb251:
  br label %bb269
bb252:
  %t1298 = call ptr @__olang_region_make(ptr %v0)
  %t1299 = ptrtoint ptr %t1298 to i64
  store i64 %t1299, ptr %l437, !tbaa !24
  br label %bb253
bb253:
  %t1300 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t1300, ptr %l439, !tbaa !27
  %t1301 = load i64, ptr %l37, !tbaa !24
  store i64 %t1301, ptr %l440, !tbaa !24
  %t1302 = load { i64, ptr }, ptr %l439, !tbaa !27
  %t1303 = extractvalue { i64, ptr } %t1302, 0
  store i64 %t1303, ptr %l441, !tbaa !24
  %t1304 = icmp sge i64 4, 0
  br i1 %t1304, label %bb254, label %bb255
bb254:
  %t1306 = load i64, ptr %l440, !tbaa !24
  %t1307 = icmp sle i64 4, %t1306
  br i1 %t1307, label %bb256, label %bb257
bb255:
  call void @__olang_check_failed(ptr @olang_loc_2997e1d684418a32_f4dc9b5865eb58ee)
  unreachable
bb256:
  %t1309 = load i64, ptr %l440, !tbaa !24
  %t1310 = load i64, ptr %l441, !tbaa !24
  %t1311 = icmp sle i64 %t1309, %t1310
  br i1 %t1311, label %bb258, label %bb259
bb257:
  call void @__olang_check_failed(ptr @olang_loc_2997e1d684418a32_f4dc9b5865eb58ee)
  unreachable
bb258:
  %t1313 = getelementptr { i64, ptr }, ptr %l439, i32 0, i32 1
  %t1314 = load ptr, ptr %t1313, !tbaa !27
  %t1315 = load i64, ptr %l440, !tbaa !24
  %t1316 = getelementptr i8, ptr %t1314, i64 4
  %t1317 = sub i64 %t1315, 4
  %t1318 = insertvalue { i64, ptr } undef, i64 %t1317, 0
  %t1319 = insertvalue { i64, ptr } %t1318, ptr %t1316, 1
  %t1321 = extractvalue { i64, ptr } %t1319, 1
  %t1322 = extractvalue { i64, ptr } %t1319, 0
  %t1323 = load i64, ptr %l437
  %t1324 = inttoptr i64 %t1323 to ptr
  %t1325 = call ptr @__olang_scope_alloc(ptr %t1324, i64 %t1322)
  call void @olang_textcopy(ptr %t1325, ptr %t1321, i64 %t1322)
  %t1326 = insertvalue { i64, ptr } undef, i64 %t1322, 0
  %t1327 = insertvalue { i64, ptr } %t1326, ptr %t1325, 1
  %t1329 = load i64, ptr %l437
  %t1330 = inttoptr i64 %t1329 to ptr
  %t1331 = extractvalue { i64, ptr } %t1327, 0
  %t1332 = extractvalue { i64, ptr } %t1327, 1
  %t1333 = mul i64 %t1331, 1
  %t1334 = call ptr @__olang_scope_alloc(ptr %t1330, i64 %t1333)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1334, ptr %t1332, i64 %t1333, i1 false)
  %t1335 = insertvalue { i64, ptr } undef, i64 %t1331, 0
  %t1336 = insertvalue { i64, ptr } %t1335, ptr %t1334, 1
  store { i64, ptr } %t1336, ptr %l447, !tbaa !27
  %t1337 = ptrtoint ptr %v0 to i64
  store i64 %t1337, ptr %l448, !tbaa !24
  %t1338 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20st_Ha3f33285783aff10f13cf80b683d8c03
  br i1 %t1338, label %bb260, label %bb261
bb259:
  call void @__olang_check_failed(ptr @olang_loc_2997e1d684418a32_f4dc9b5865eb58ee)
  unreachable
bb260:
  %t1340 = call ptr @__olang_region_make(ptr %v0)
  %t1341 = ptrtoint ptr %t1340 to i64
  store i64 %t1341, ptr %l448, !tbaa !24
  br label %bb261
bb261:
  %t1342 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t1342, ptr %l450, !tbaa !27
  %t1343 = load i64, ptr %l37, !tbaa !24
  %t1345 = add i64 %t1343, 2
  store i64 %t1345, ptr %l452, !tbaa !24
  %t1346 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t1349 = extractvalue { i64, ptr } %t1346, 0
  store i64 %t1349, ptr %l455, !tbaa !24
  %t1350 = load { i64, ptr }, ptr %l450, !tbaa !27
  %t1351 = extractvalue { i64, ptr } %t1350, 0
  store i64 %t1351, ptr %l456, !tbaa !24
  %t1352 = load i64, ptr %l452, !tbaa !24
  %t1353 = icmp sge i64 %t1352, 0
  br i1 %t1353, label %bb262, label %bb263
bb262:
  %t1355 = load i64, ptr %l452, !tbaa !24
  %t1356 = load i64, ptr %l455, !tbaa !24
  %t1357 = icmp sle i64 %t1355, %t1356
  br i1 %t1357, label %bb264, label %bb265
bb263:
  call void @__olang_check_failed(ptr @olang_loc_2997e1d684418a32_f4dc9b5865eb58ee)
  unreachable
bb264:
  %t1359 = load i64, ptr %l455, !tbaa !24
  %t1360 = load i64, ptr %l456, !tbaa !24
  %t1361 = icmp sle i64 %t1359, %t1360
  br i1 %t1361, label %bb266, label %bb267
bb265:
  call void @__olang_check_failed(ptr @olang_loc_2997e1d684418a32_f4dc9b5865eb58ee)
  unreachable
bb266:
  %t1363 = getelementptr { i64, ptr }, ptr %l450, i32 0, i32 1
  %t1364 = load ptr, ptr %t1363, !tbaa !27
  %t1365 = load i64, ptr %l452, !tbaa !24
  %t1366 = load i64, ptr %l455, !tbaa !24
  %t1367 = getelementptr i8, ptr %t1364, i64 %t1365
  %t1368 = sub i64 %t1366, %t1365
  %t1369 = insertvalue { i64, ptr } undef, i64 %t1368, 0
  %t1370 = insertvalue { i64, ptr } %t1369, ptr %t1367, 1
  %t1372 = extractvalue { i64, ptr } %t1370, 1
  %t1373 = extractvalue { i64, ptr } %t1370, 0
  %t1374 = load i64, ptr %l448
  %t1375 = inttoptr i64 %t1374 to ptr
  %t1376 = call ptr @__olang_scope_alloc(ptr %t1375, i64 %t1373)
  call void @olang_textcopy(ptr %t1376, ptr %t1372, i64 %t1373)
  %t1377 = insertvalue { i64, ptr } undef, i64 %t1373, 0
  %t1378 = insertvalue { i64, ptr } %t1377, ptr %t1376, 1
  %t1380 = load i64, ptr %l448
  %t1381 = inttoptr i64 %t1380 to ptr
  %t1382 = extractvalue { i64, ptr } %t1378, 0
  %t1383 = extractvalue { i64, ptr } %t1378, 1
  %t1384 = mul i64 %t1382, 1
  %t1385 = call ptr @__olang_scope_alloc(ptr %t1381, i64 %t1384)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1385, ptr %t1383, i64 %t1384, i1 false)
  %t1386 = insertvalue { i64, ptr } undef, i64 %t1382, 0
  %t1387 = insertvalue { i64, ptr } %t1386, ptr %t1385, 1
  %t1388 = load ptr, ptr %l436, !tbaa !29
  %t1389 = load { i64, ptr }, ptr %l447, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6f7a2f8d839c49b6e7a19c287d4b190c(ptr %v0, ptr %v0, ptr %v0, ptr %t1388, { i64, ptr } %t1389, { i64, ptr } %t1387)
  br label %bb268
bb267:
  call void @__olang_check_failed(ptr @olang_loc_2997e1d684418a32_f4dc9b5865eb58ee)
  unreachable
bb268:
  br label %bb269
bb269:
  call void @__olang_scope_close(ptr %s59)
  br label %bb270
bb270:
  call void @__olang_scope_close(ptr %s58)
  br label %bb271
bb271:
  call void @__olang_scope_close(ptr %s56)
  br label %bb272
bb272:
  call void @__olang_scope_close(ptr %s51)
  br label %bb273
bb273:
  br label %bb214
bb274:
  %t1391 = load i64, ptr %l31, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t1391, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fload_2ecompiler_2fload_3aLoader_2echains(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2, { i64, ptr } %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca %"compiler/load:Import"
  %l8 = alloca { i64, ptr }
  %l9 = alloca ptr
  %l10 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca i64
  %l20 = alloca ptr
  %l23 = alloca i64
  %l25 = alloca i64
  %l30 = alloca %"compiler/load:Import"
  %l39 = alloca ptr
  %l42 = alloca i64
  %l44 = alloca i64
  %l49 = alloca { i64, ptr }
  %l60 = alloca ptr
  %l63 = alloca i64
  %l65 = alloca i64
  %l70 = alloca { i64, ptr }
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l4, !tbaa !24
  %t3 = icmp sge i64 %t1, 4
  br i1 %t3, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/load:Loader", ptr %t5, i32 0, i32 10
  %t11 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t7, i64 %a2)
  store ptr %t11, ptr %l20
  br label %bb4
bb4:
  %t12 = load ptr, ptr %l20, !tbaa !29
  %t14 = getelementptr %"compiler/load:Module", ptr %t12, i32 0, i32 11
  store ptr %t14, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb5
bb5:
  store %olang.scope zeroinitializer, ptr %s3
  %t16 = load i64, ptr %l6, !tbaa !24
  store i64 %t16, ptr %l23, !tbaa !24
  %t17 = load ptr, ptr %l5, !tbaa !29
  %t19 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eLen_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %t17)
  store i64 %t19, ptr %l25
  br label %bb6
bb6:
  %t20 = load i64, ptr %l23, !tbaa !24
  %t21 = load i64, ptr %l25, !tbaa !24
  %t22 = icmp slt i64 %t20, %t21
  %t24 = xor i1 %t22, true
  br i1 %t24, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s3)
  br label %bb36
bb8:
  br label %bb9
bb9:
  %t26 = load ptr, ptr %l5, !tbaa !29
  %t27 = load i64, ptr %l6, !tbaa !24
  %t30 = call %"compiler/load:Import" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eAt_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %v0, ptr %t26, i64 %t27)
  store %"compiler/load:Import" %t30, ptr %l30
  br label %bb10
bb10:
  %t31 = load %"compiler/load:Import", ptr %l30
  store %"compiler/load:Import" %t31, ptr %l7
  %t32 = getelementptr %"compiler/load:Import", ptr %l7, i32 0, i32 5
  %t33 = load i64, ptr %t32, !tbaa !24
  %t35 = icmp slt i64 %t33, 0
  br i1 %t35, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s3)
  br label %bb35
bb12:
  br label %bb13
bb13:
  %t38 = getelementptr %"compiler/load:Import", ptr %l7, i32 0, i32 2
  %t39 = load { i64, ptr }, ptr %t38, !tbaa !27
  %t41 = extractvalue { i64, ptr } %a3, 1
  %t42 = extractvalue { i64, ptr } %a3, 0
  %t44 = extractvalue { i64, ptr } %t39, 1
  %t45 = extractvalue { i64, ptr } %t39, 0
  %t46 = add i64 %t42, %t45
  %t47 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t46)
  call void @olang_textcopy(ptr %t47, ptr %t41, i64 %t42)
  %t48 = getelementptr i8, ptr %t47, i64 %t42
  call void @olang_textcopy(ptr %t48, ptr %t44, i64 %t45)
  %t49 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t50 = insertvalue { i64, ptr } %t49, ptr %t47, 1
  store { i64, ptr } %t50, ptr %l8, !tbaa !27
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/load:Loader", ptr %t52, i32 0, i32 10
  %t55 = getelementptr %"compiler/load:Import", ptr %l7, i32 0, i32 5
  %t56 = load i64, ptr %t55, !tbaa !24
  %t59 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t54, i64 %t56)
  store ptr %t59, ptr %l39
  br label %bb14
bb14:
  %t60 = load ptr, ptr %l39, !tbaa !29
  %t62 = getelementptr %"compiler/load:Module", ptr %t60, i32 0, i32 9
  store ptr %t62, ptr %l9, !tbaa !29
  store i64 0, ptr %l10, !tbaa !24
  br label %bb15
bb15:
  %t64 = load i64, ptr %l10, !tbaa !24
  store i64 %t64, ptr %l42, !tbaa !24
  %t65 = load ptr, ptr %l9, !tbaa !29
  %t67 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t65)
  store i64 %t67, ptr %l44
  br label %bb16
bb16:
  %t68 = load i64, ptr %l42, !tbaa !24
  %t69 = load i64, ptr %l44, !tbaa !24
  %t70 = icmp slt i64 %t68, %t69
  %t72 = xor i1 %t70, true
  br i1 %t72, label %bb17, label %bb18
bb17:
  br label %bb23
bb18:
  br label %bb19
bb19:
  %t74 = load ptr, ptr %l9, !tbaa !29
  %t75 = load i64, ptr %l10, !tbaa !24
  %t78 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t74, i64 %t75)
  store { i64, ptr } %t78, ptr %l49
  br label %bb20
bb20:
  %t79 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t80 = load ptr, ptr %l1, !tbaa !29
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/load:Loader", ptr %t81, i32 0, i32 3
  %t84 = load ptr, ptr %t83, !tbaa !29
  %t85 = load { i64, ptr }, ptr %l8, !tbaa !27
  call void @compiler_2fparse_2ecompiler_2fparse_3aOracle_2eAdd(ptr %v1, ptr %v0, ptr %s3, ptr %v0, ptr %t80, ptr %t84, { i64, ptr } %t85, { i64, ptr } %t79)
  br label %bb21
bb21:
  br label %bb22
bb22:
  %t91 = load i64, ptr %l10, !tbaa !24
  %t93 = add i64 %t91, 1
  store i64 %t93, ptr %l10, !tbaa !24
  br label %bb15
bb23:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"compiler/load:Loader", ptr %t95, i32 0, i32 10
  %t98 = getelementptr %"compiler/load:Import", ptr %l7, i32 0, i32 5
  %t99 = load i64, ptr %t98, !tbaa !24
  %t102 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t97, i64 %t99)
  store ptr %t102, ptr %l60
  br label %bb24
bb24:
  %t103 = load ptr, ptr %l60, !tbaa !29
  %t105 = getelementptr %"compiler/load:Module", ptr %t103, i32 0, i32 10
  store ptr %t105, ptr %l12, !tbaa !29
  store i64 0, ptr %l13, !tbaa !24
  br label %bb25
bb25:
  %t107 = load i64, ptr %l13, !tbaa !24
  store i64 %t107, ptr %l63, !tbaa !24
  %t108 = load ptr, ptr %l12, !tbaa !29
  %t110 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t108)
  store i64 %t110, ptr %l65
  br label %bb26
bb26:
  %t111 = load i64, ptr %l63, !tbaa !24
  %t112 = load i64, ptr %l65, !tbaa !24
  %t113 = icmp slt i64 %t111, %t112
  %t115 = xor i1 %t113, true
  br i1 %t115, label %bb27, label %bb28
bb27:
  br label %bb33
bb28:
  br label %bb29
bb29:
  %t117 = load ptr, ptr %l12, !tbaa !29
  %t118 = load i64, ptr %l13, !tbaa !24
  %t121 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t117, i64 %t118)
  store { i64, ptr } %t121, ptr %l70
  br label %bb30
bb30:
  %t122 = load { i64, ptr }, ptr %l70, !tbaa !27
  %t123 = load ptr, ptr %l1, !tbaa !29
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t126 = getelementptr %"compiler/load:Loader", ptr %t124, i32 0, i32 3
  %t127 = load ptr, ptr %t126, !tbaa !29
  %t128 = load { i64, ptr }, ptr %l8, !tbaa !27
  call void @compiler_2fparse_2ecompiler_2fparse_3aOracle_2eAddFn(ptr %v1, ptr %v0, ptr %s3, ptr %v0, ptr %t123, ptr %t127, { i64, ptr } %t128, { i64, ptr } %t122)
  br label %bb31
bb31:
  br label %bb32
bb32:
  %t134 = load i64, ptr %l13, !tbaa !24
  %t136 = add i64 %t134, 1
  store i64 %t136, ptr %l13, !tbaa !24
  br label %bb25
bb33:
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t139 = load ptr, ptr %l1, !tbaa !29
  %t140 = getelementptr %"compiler/load:Import", ptr %l7, i32 0, i32 5
  %t141 = load i64, ptr %t140, !tbaa !24
  %t142 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t144 = extractvalue { i64, ptr } %t142, 1
  %t145 = extractvalue { i64, ptr } %t142, 0
  %t146 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d73, i32 0, i32 1) }, 1
  %t147 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d73, i32 0, i32 1) }, 0
  %t148 = add i64 %t145, %t147
  %t149 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t148)
  call void @olang_textcopy(ptr %t149, ptr %t144, i64 %t145)
  %t150 = getelementptr i8, ptr %t149, i64 %t145
  call void @olang_textcopy(ptr %t150, ptr %t146, i64 %t147)
  %t151 = insertvalue { i64, ptr } undef, i64 %t148, 0
  %t152 = insertvalue { i64, ptr } %t151, ptr %t149, 1
  %t154 = extractvalue { i64, ptr } %t152, 0
  %t155 = extractvalue { i64, ptr } %t152, 1
  %t156 = mul i64 %t154, 1
  %t157 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t156)
  call void @llvm.memcpy.p0.p0.i64(ptr %t157, ptr %t155, i64 %t156, i1 false)
  %t158 = insertvalue { i64, ptr } undef, i64 %t154, 0
  %t159 = insertvalue { i64, ptr } %t158, ptr %t157, 1
  %t160 = load i64, ptr %l4, !tbaa !24
  %t162 = add i64 %t160, 1
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2echains(ptr %v0, ptr %v1, ptr %s3, ptr %t138, ptr %t139, i64 %t141, { i64, ptr } %t159, i64 %t162)
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s3)
  br label %bb35
bb35:
  %t168 = load i64, ptr %l6, !tbaa !24
  %t170 = add i64 %t168, 1
  store i64 %t170, ptr %l6, !tbaa !24
  br label %bb5
bb36:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fload_2ecompiler_2fload_3aLoader_2edecide(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca %"compiler/cond:Decision"
  %l17 = alloca ptr
  %l21 = alloca i64
  %l24 = alloca ptr
  %l25 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l46 = alloca i64
  %l48 = alloca i64
  %l51 = alloca i64
  %l53 = alloca i64
  %l56 = alloca i64
  %l61 = alloca i64
  %l67 = alloca i64
  %l70 = alloca i64
  %l88 = alloca ptr
  %l89 = alloca i64
  %l93 = alloca i64
  %l94 = alloca %"compiler/cond:Decision"
  %l103 = alloca i1
  %l114 = alloca ptr
  %l115 = alloca i64
  %l119 = alloca i1
  %l120 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/load:Loader", ptr %t1, i32 0, i32 10
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  store ptr %t7, ptr %l17
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l17, !tbaa !29
  store ptr %t8, ptr %l3, !tbaa !29
  %t9 = load ptr, ptr %l3, !tbaa !29
  %t11 = getelementptr %"compiler/load:Module", ptr %t9, i32 0, i32 16
  %t12 = load i64, ptr %l2, !tbaa !24
  %t15 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t11, i64 %t12)
  store i64 %t15, ptr %l21
  br label %bb2
bb2:
  %t16 = load i64, ptr @G_2ecompiler_2fload_2eNotYet, !tbaa !24
  %t17 = load i64, ptr %l21, !tbaa !24
  %t19 = icmp ne i64 %t17, %t16
  br i1 %t19, label %bb3, label %bb4
bb3:
  br label %ret
bb4:
  br label %bb5
bb5:
  %t21 = load ptr, ptr %l0, !tbaa !29
  store ptr %t21, ptr %l24, !tbaa !29
  %t22 = load i64, ptr %l1, !tbaa !24
  store i64 %t22, ptr %l25, !tbaa !24
  %t23 = load ptr, ptr %l3, !tbaa !29
  %t25 = getelementptr %"compiler/load:Module", ptr %t23, i32 0, i32 15
  %t26 = load i64, ptr %l2, !tbaa !24
  %t29 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t25, i64 %t26)
  store i64 %t29, ptr %l29
  br label %bb6
bb6:
  %t30 = load ptr, ptr %l24, !tbaa !29
  %t31 = load i64, ptr %l25, !tbaa !24
  %t32 = load i64, ptr %l29, !tbaa !24
  %t33 = call i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2etaken(ptr %v0, ptr %t30, i64 %t31, i64 %t32)
  store i64 %t33, ptr %l30
  br label %bb7
bb7:
  %t34 = load i64, ptr %l30, !tbaa !24
  store i64 %t34, ptr %l4, !tbaa !24
  %t35 = load i64, ptr %l4, !tbaa !24
  %t37 = icmp eq i64 %t35, 0
  br i1 %t37, label %bb8, label %bb9
bb8:
  %t39 = load ptr, ptr %l3, !tbaa !29
  %t41 = getelementptr %"compiler/load:Module", ptr %t39, i32 0, i32 16
  %t42 = load i64, ptr %l2, !tbaa !24
  %t43 = load i64, ptr @G_2ecompiler_2fload_2eNoBranch, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t41, i64 %t42, i64 %t43)
  br label %bb10
bb9:
  br label %bb11
bb10:
  br label %ret
bb11:
  %t47 = load i64, ptr %l4, !tbaa !24
  %t49 = icmp slt i64 %t47, 0
  br i1 %t49, label %bb12, label %bb13
bb12:
  %t51 = load ptr, ptr %l3, !tbaa !29
  %t53 = getelementptr %"compiler/load:Module", ptr %t51, i32 0, i32 16
  %t54 = load i64, ptr %l2, !tbaa !24
  %t55 = load i64, ptr @G_2ecompiler_2fload_2ePending, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t53, i64 %t54, i64 %t55)
  br label %bb14
bb13:
  br label %bb15
bb14:
  br label %ret
bb15:
  %t59 = load ptr, ptr %l3, !tbaa !29
  %t61 = getelementptr %"compiler/load:Module", ptr %t59, i32 0, i32 18
  %t62 = load i64, ptr %l2, !tbaa !24
  %t65 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t61, i64 %t62)
  store i64 %t65, ptr %l46
  br label %bb16
bb16:
  %t66 = load i64, ptr %l46, !tbaa !24
  store i64 %t66, ptr %l5, !tbaa !24
  %t67 = load i64, ptr %l2, !tbaa !24
  %t69 = add i64 %t67, 1
  store i64 %t69, ptr %l48, !tbaa !24
  %t70 = load ptr, ptr %l3, !tbaa !29
  %t72 = getelementptr %"compiler/load:Module", ptr %t70, i32 0, i32 18
  %t74 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t72)
  store i64 %t74, ptr %l51
  br label %bb17
bb17:
  %t75 = load i64, ptr %l48, !tbaa !24
  %t76 = load i64, ptr %l51, !tbaa !24
  %t77 = icmp eq i64 %t75, %t76
  br i1 %t77, label %bb18, label %bb19
bb18:
  %t79 = load ptr, ptr %l3, !tbaa !29
  %t81 = getelementptr %"compiler/load:Module", ptr %t79, i32 0, i32 19
  %t83 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t81)
  store i64 %t83, ptr %l56
  br label %bb20
bb19:
  %t84 = load ptr, ptr %l3, !tbaa !29
  %t86 = getelementptr %"compiler/load:Module", ptr %t84, i32 0, i32 18
  %t87 = load i64, ptr %l2, !tbaa !24
  %t89 = add i64 %t87, 1
  %t92 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t86, i64 %t89)
  store i64 %t92, ptr %l61
  br label %bb21
bb20:
  %t93 = load i64, ptr %l56, !tbaa !24
  store i64 %t93, ptr %l53, !tbaa !24
  br label %bb22
bb21:
  %t94 = load i64, ptr %l61, !tbaa !24
  store i64 %t94, ptr %l53, !tbaa !24
  br label %bb22
bb22:
  %t95 = load i64, ptr %l53, !tbaa !24
  store i64 %t95, ptr %l6, !tbaa !24
  %t96 = load i64, ptr %l5, !tbaa !24
  store i64 %t96, ptr %l7, !tbaa !24
  %t98 = load i64, ptr %l6, !tbaa !24
  store i64 %t98, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t100 = load i64, ptr %l8, !tbaa !24
  %t101 = load i64, ptr %l7, !tbaa !24
  %t104 = icmp sgt i64 %t100, %t101
  br i1 %t104, label %bb23, label %bb24
bb23:
  %t106 = load i64, ptr %l9, !tbaa !24
  %t108 = icmp sgt i64 %t106, 0
  br i1 %t108, label %bb25, label %bb26
bb24:
  store i64 0, ptr %l67, !tbaa !24
  br label %bb28
bb25:
  %t110 = load i64, ptr %l8, !tbaa !24
  %t111 = load i64, ptr %l7, !tbaa !24
  %t114 = sub i64 %t110, %t111
  %t115 = load i64, ptr %l9, !tbaa !24
  %t118 = add i64 %t114, %t115
  %t120 = sub i64 %t118, 1
  %t121 = load i64, ptr %l9, !tbaa !24
  %t124 = sdiv i64 %t120, %t121
  store i64 %t124, ptr %l70, !tbaa !24
  br label %bb27
bb26:
  store i64 0, ptr %l70, !tbaa !24
  br label %bb27
bb27:
  %t126 = load i64, ptr %l70, !tbaa !24
  store i64 %t126, ptr %l67, !tbaa !24
  br label %bb28
bb28:
  %t127 = load i64, ptr %l67, !tbaa !24
  store i64 %t127, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb29
bb29:
  %t128 = load i64, ptr %l11, !tbaa !24
  %t129 = load i64, ptr %l10, !tbaa !24
  %t132 = icmp slt i64 %t128, %t129
  %t134 = xor i1 %t132, true
  br i1 %t134, label %bb30, label %bb31
bb30:
  br label %bb47
bb31:
  br label %bb32
bb32:
  %t136 = load i64, ptr %l7, !tbaa !24
  %t137 = load i64, ptr %l11, !tbaa !24
  %t138 = load i64, ptr %l9, !tbaa !24
  %t141 = mul i64 %t137, %t138
  %t144 = add i64 %t136, %t141
  store i64 %t144, ptr %l12, !tbaa !24
  %t146 = load ptr, ptr %l0, !tbaa !29
  store ptr %t146, ptr %l88, !tbaa !29
  %t147 = load i64, ptr %l1, !tbaa !24
  store i64 %t147, ptr %l89, !tbaa !24
  %t148 = load ptr, ptr %l3, !tbaa !29
  %t150 = getelementptr %"compiler/load:Module", ptr %t148, i32 0, i32 19
  %t151 = load i64, ptr %l12, !tbaa !24
  %t154 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t150, i64 %t151)
  store i64 %t154, ptr %l93
  br label %bb33
bb33:
  %t155 = load ptr, ptr %l88, !tbaa !29
  %t156 = load i64, ptr %l89, !tbaa !24
  %t157 = load i64, ptr %l93, !tbaa !24
  %t158 = call %"compiler/cond:Decision" @compiler_2fload_2ecompiler_2fload_3aLoader_2eevalCond(ptr %v0, ptr %t155, i64 %t156, i64 %t157)
  store %"compiler/cond:Decision" %t158, ptr %l94
  br label %bb34
bb34:
  %t159 = load %"compiler/cond:Decision", ptr %l94
  store %"compiler/cond:Decision" %t159, ptr %l13
  %t160 = getelementptr %"compiler/cond:Decision", ptr %l13, i32 0, i32 0
  %t161 = load i32, ptr %t160, !range !{i32 0, i32 5}
  %t163 = trunc i64 1 to i32
  %t164 = icmp eq i32 %t161, %t163
  br i1 %t164, label %bb35, label %bb36
bb35:
  %t166 = load ptr, ptr %l3, !tbaa !29
  %t168 = getelementptr %"compiler/load:Module", ptr %t166, i32 0, i32 16
  %t169 = load i64, ptr %l2, !tbaa !24
  %t170 = load i64, ptr @G_2ecompiler_2fload_2ePending, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t168, i64 %t169, i64 %t170)
  br label %bb37
bb36:
  br label %bb38
bb37:
  br label %ret
bb38:
  %t174 = getelementptr %"compiler/cond:Decision", ptr %l13, i32 0, i32 0
  %t175 = load i32, ptr %t174, !range !{i32 0, i32 5}
  %t177 = trunc i64 0 to i32
  %t178 = icmp eq i32 %t175, %t177
  br i1 %t178, label %bb39, label %bb40
bb39:
  %t180 = getelementptr %"compiler/cond:Decision", ptr %l13, i32 0, i32 1
  %t181 = load i1, ptr %t180, !tbaa !21
  store i1 %t181, ptr %l103, !tbaa !21
  br label %bb41
bb40:
  store i1 false, ptr %l103, !tbaa !21
  br label %bb41
bb41:
  %t183 = load i1, ptr %l103, !tbaa !21
  br i1 %t183, label %bb42, label %bb43
bb42:
  %t184 = load ptr, ptr %l3, !tbaa !29
  %t186 = getelementptr %"compiler/load:Module", ptr %t184, i32 0, i32 16
  %t187 = load i64, ptr %l2, !tbaa !24
  %t188 = load i64, ptr %l12, !tbaa !24
  %t189 = load i64, ptr %l5, !tbaa !24
  %t192 = sub i64 %t188, %t189
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t186, i64 %t187, i64 %t192)
  br label %bb44
bb43:
  br label %bb45
bb44:
  br label %ret
bb45:
  br label %bb46
bb46:
  %t196 = load i64, ptr %l11, !tbaa !24
  %t198 = add i64 %t196, 1
  store i64 %t198, ptr %l11, !tbaa !24
  br label %bb29
bb47:
  %t200 = load ptr, ptr %l3, !tbaa !29
  %t202 = getelementptr %"compiler/load:Module", ptr %t200, i32 0, i32 16
  store ptr %t202, ptr %l114, !tbaa !29
  %t203 = load i64, ptr %l2, !tbaa !24
  store i64 %t203, ptr %l115, !tbaa !24
  %t204 = load ptr, ptr %l3, !tbaa !29
  %t206 = getelementptr %"compiler/load:Module", ptr %t204, i32 0, i32 17
  %t207 = load i64, ptr %l2, !tbaa !24
  %t210 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t206, i64 %t207)
  store i1 %t210, ptr %l119
  br label %bb48
bb48:
  %t211 = load i1, ptr %l119, !tbaa !21
  br i1 %t211, label %bb49, label %bb50
bb49:
  %t212 = load i64, ptr %l6, !tbaa !24
  %t213 = load i64, ptr %l5, !tbaa !24
  %t216 = sub i64 %t212, %t213
  store i64 %t216, ptr %l120, !tbaa !24
  br label %bb51
bb50:
  %t218 = load i64, ptr @G_2ecompiler_2fload_2eNoBranch, !tbaa !24
  store i64 %t218, ptr %l120, !tbaa !24
  br label %bb51
bb51:
  %t220 = load ptr, ptr %l114, !tbaa !29
  %t221 = load i64, ptr %l115, !tbaa !24
  %t222 = load i64, ptr %l120, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t220, i64 %t221, i64 %t222)
  br label %bb52
bb52:
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/cond:Decision" @compiler_2fload_2ecompiler_2fload_3aLoader_2eevalCond(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca %"compiler/cond:Decision"
  %l7 = alloca { %"compiler/source:Span", %"compiler/diagmsg:Msg" }
  %l9 = alloca %"compiler/diagmsg:Msg"
  %l13 = alloca ptr
  %l16 = alloca ptr
  %l23 = alloca ptr
  %l24 = alloca i32
  %l26 = alloca %"compiler/cond:Decision"
  %l33 = alloca { i64, ptr }
  %l39 = alloca i64
  %l44 = alloca %"compiler/cond:Decision"
  %l51 = alloca { i64, ptr }
  %l53 = alloca ptr
  %l61 = alloca %"compiler/cond:Eval"
  %l65 = alloca %"compiler/cond:Decision"
  %l69 = alloca { %"compiler/source:Span", %"compiler/diagmsg:Msg" }
  %l73 = alloca ptr
  %l77 = alloca { i64, [3 x i64] }
  %l79 = alloca i64
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca %"compiler/cond:Decision"
  %t114 = alloca %"compiler/cond:Eval", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/load:Loader", ptr %t1, i32 0, i32 10
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store ptr %t7, ptr %l13
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l13, !tbaa !29
  store ptr %t8, ptr %l3, !tbaa !29
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2eCondParser(ptr %v0, ptr %v0, ptr %t9, ptr %t10)
  br label %bb2
bb2:
  %t13 = load ptr, ptr %l3, !tbaa !29
  %t15 = getelementptr %"compiler/load:Module", ptr %t13, i32 0, i32 24
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t18 = icmp eq ptr %t16, null
  br i1 %t18, label %bb3, label %bb4
bb3:
  call void @__olang_check_failed(ptr @olang_loc_10115782cae2d59a_b13624e5abc6764e)
  unreachable
bb4:
  br label %bb5
bb5:
  %t20 = load ptr, ptr %l3, !tbaa !29
  %t22 = getelementptr %"compiler/load:Module", ptr %t20, i32 0, i32 24
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t27 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eExprAt(ptr %v0, ptr %v0, ptr %t23, i64 %a2)
  %t28 = extractvalue { i32, ptr } %t27, 1
  %t29 = extractvalue { i32, ptr } %t27, 0
  store i32 %t29, ptr %l24
  %t30 = icmp ne i32 %t29, 0
  br i1 %t30, label %bb7, label %ok.31, !prof !99
ok.31:
  store ptr %t28, ptr %l23
  br label %bb6
bb6:
  %t32 = load ptr, ptr %l23, !tbaa !29
  store ptr %t32, ptr %l16, !tbaa !29
  br label %bb10
bb7:
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s1
  %t34 = call %"compiler/cond:Decision" @compiler_2fcond_3aDecision_2ector(ptr %s1, i32 2, i1 false)
  store %"compiler/cond:Decision" %t34, ptr %l26
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t35 = load %"compiler/cond:Decision", ptr %l26
  store %"compiler/cond:Decision" %t35, ptr %rv
  br label %ret
bb10:
  %t36 = load ptr, ptr %l16, !tbaa !29
  store ptr %t36, ptr %l4, !tbaa !29
  %t37 = load ptr, ptr %l3, !tbaa !29
  %t39 = getelementptr %"compiler/load:Module", ptr %t37, i32 0, i32 7
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t42 = icmp eq ptr %t40, null
  br i1 %t42, label %bb11, label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_c8cfdf98ee3f2b21_1207f6627874c5f5)
  unreachable
bb12:
  br label %bb13
bb13:
  %t44 = load ptr, ptr %l3, !tbaa !29
  %t46 = getelementptr %"compiler/load:Module", ptr %t44, i32 0, i32 7
  %t47 = load ptr, ptr %t46, !tbaa !29
  %t50 = getelementptr %"compiler/scan:Tokens", ptr %t47, i32 0, i32 0
  %t51 = load { i64, ptr }, ptr %t50, !tbaa !27
  store { i64, ptr } %t51, ptr %l33, !tbaa !27
  %t52 = load ptr, ptr %l3, !tbaa !29
  %t54 = getelementptr %"compiler/load:Module", ptr %t52, i32 0, i32 24
  %t55 = load ptr, ptr %t54, !tbaa !29
  %t57 = icmp eq ptr %t55, null
  br i1 %t57, label %bb14, label %bb15
bb14:
  call void @__olang_check_failed(ptr @olang_loc_c8cfdf98ee3f2b21_1207f6627874c5f5)
  unreachable
bb15:
  br label %bb16
bb16:
  %t59 = load ptr, ptr %l3, !tbaa !29
  %t61 = getelementptr %"compiler/load:Module", ptr %t59, i32 0, i32 24
  %t62 = load ptr, ptr %t61, !tbaa !29
  %t64 = call i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ePos(ptr %v0, ptr %t62)
  store i64 %t64, ptr %l39
  br label %bb17
bb17:
  %t65 = load i64, ptr %l39, !tbaa !24
  %t66 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !27
  %t68 = getelementptr %"compiler/token:Token", ptr %t67, i64 %t65
  %t69 = getelementptr %"compiler/token:Token", ptr %t68, i32 0, i32 0
  %t70 = load i32, ptr %t69, !range !{i32 0, i32 114}
  %t72 = trunc i64 112 to i32
  %t73 = icmp eq i32 %t70, %t72
  %t75 = xor i1 %t73, true
  br i1 %t75, label %bb18, label %bb19
bb18:
  store %olang.scope zeroinitializer, ptr %s2
  %t78 = call %"compiler/cond:Decision" @compiler_2fcond_3aDecision_2ector(ptr %s2, i32 1, i1 false)
  store %"compiler/cond:Decision" %t78, ptr %l44
  br label %bb20
bb19:
  br label %bb21
bb20:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t79 = load %"compiler/cond:Decision", ptr %l44
  store %"compiler/cond:Decision" %t79, ptr %rv
  br label %ret
bb21:
  %t80 = load ptr, ptr %l3, !tbaa !29
  %t82 = getelementptr %"compiler/load:Module", ptr %t80, i32 0, i32 6
  %t83 = load ptr, ptr %t82, !tbaa !29
  %t85 = icmp eq ptr %t83, null
  br i1 %t85, label %bb22, label %bb23
bb22:
  call void @__olang_check_failed(ptr @olang_loc_b990dbcfbe082b6c_e09e9a90e433de0)
  unreachable
bb23:
  br label %bb24
bb24:
  %t87 = load ptr, ptr %l3, !tbaa !29
  %t89 = getelementptr %"compiler/load:Module", ptr %t87, i32 0, i32 6
  %t90 = load ptr, ptr %t89, !tbaa !29
  %t93 = getelementptr %"compiler/source:Source", ptr %t90, i32 0, i32 1
  %t94 = load { i64, ptr }, ptr %t93, !tbaa !27
  store { i64, ptr } %t94, ptr %l51, !tbaa !27
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"compiler/load:Loader", ptr %t95, i32 0, i32 3
  %t98 = load ptr, ptr %t97, !tbaa !29
  store ptr %t98, ptr %l53, !tbaa !29
  %t99 = load ptr, ptr %l3, !tbaa !29
  %t101 = getelementptr %"compiler/load:Module", ptr %t99, i32 0, i32 23
  %t102 = load ptr, ptr %t101, !tbaa !29
  %t104 = icmp eq ptr %t102, null
  br i1 %t104, label %bb25, label %bb26
bb25:
  call void @__olang_check_failed(ptr @olang_loc_b990dbcfbe082b6c_e09e9a90e433de0)
  unreachable
bb26:
  br label %bb27
bb27:
  %t106 = load ptr, ptr %l3, !tbaa !29
  %t108 = getelementptr %"compiler/load:Module", ptr %t106, i32 0, i32 23
  %t109 = load ptr, ptr %t108, !tbaa !29
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/load:Loader", ptr %t110, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !29
  %t115 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t116 = load ptr, ptr %l53, !tbaa !29
  call void @compiler_2fcond_3aEval_2ector(ptr %t114, ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %s0, { i64, ptr } %t115, ptr %t116, ptr %t109, ptr %t113)
  call void @llvm.memmove.p0.p0.i64(ptr %l61, ptr %t114, i64 152, i1 false)
  br label %bb28
bb28:
  %t119 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 152, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t119, ptr %l61, i64 152, i1 false)
  store ptr %t119, ptr %l5, !tbaa !29
  %t121 = load ptr, ptr %l5, !tbaa !29
  %t122 = load ptr, ptr %l4, !tbaa !29
  %t125 = call %"compiler/cond:Decision" @compiler_2fcond_2ecompiler_2fcond_3aEval_2eTop(ptr %s0, ptr %v0, ptr %t121, ptr %t122)
  store %"compiler/cond:Decision" %t125, ptr %l65
  br label %bb29
bb29:
  %t126 = load %"compiler/cond:Decision", ptr %l65
  store %"compiler/cond:Decision" %t126, ptr %l6
  %t127 = getelementptr %"compiler/cond:Decision", ptr %l6, i32 0, i32 0
  %t128 = load i32, ptr %t127, !range !{i32 0, i32 5}
  %t130 = trunc i64 2 to i32
  %t131 = icmp eq i32 %t128, %t130
  br i1 %t131, label %bb30, label %bb31
bb30:
  store %olang.scope zeroinitializer, ptr %s3
  %t133 = load ptr, ptr %l5, !tbaa !29
  %t135 = call { %"compiler/source:Span", %"compiler/diagmsg:Msg" } @compiler_2fcond_2ecompiler_2fcond_3aEval_2eError(ptr %s0, ptr %s3, ptr %t133)
  store { %"compiler/source:Span", %"compiler/diagmsg:Msg" } %t135, ptr %l69
  br label %bb32
bb31:
  br label %bb35
bb32:
  %t136 = load { %"compiler/source:Span", %"compiler/diagmsg:Msg" }, ptr %l69
  store { %"compiler/source:Span", %"compiler/diagmsg:Msg" } %t136, ptr %l7
  %t137 = getelementptr { %"compiler/source:Span", %"compiler/diagmsg:Msg" }, ptr %l7, i32 0, i32 0
  %t138 = load %"compiler/source:Span", ptr %t137
  %t140 = getelementptr { %"compiler/source:Span", %"compiler/diagmsg:Msg" }, ptr %l7, i32 0, i32 1
  %t141 = load %"compiler/diagmsg:Msg", ptr %t140
  store %"compiler/diagmsg:Msg" %t141, ptr %l9
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t145 = getelementptr %"compiler/load:Loader", ptr %t143, i32 0, i32 4
  %t146 = load ptr, ptr %t145, !tbaa !29
  store ptr %t146, ptr %l73, !tbaa !29
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t148 = load ptr, ptr %l3, !tbaa !29
  %t153 = call { i64, [3 x i64] } @compiler_2fload_2ecompiler_2fload_3aLoader_2eat(ptr %v0, ptr %v0, ptr %t147, ptr %t148, %"compiler/source:Span" %t138)
  store { i64, [3 x i64] } %t153, ptr %l77
  br label %bb33
bb33:
  %t154 = load %"compiler/diagmsg:Msg", ptr %l9
  %t155 = load ptr, ptr %l73, !tbaa !29
  %t156 = load { i64, [3 x i64] }, ptr %l77
  %t158 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s3, ptr %t155, { i64, [3 x i64] } %t156, %"compiler/diagmsg:Msg" %t154)
  store i64 %t158, ptr %l79
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s3)
  br label %bb35
bb35:
  %t159 = load %"compiler/cond:Decision", ptr %l6
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/cond:Decision" %t159, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/cond:Decision", ptr %rv
  ret %"compiler/cond:Decision" %rr
}

define dso_local void @compiler_2fload_2ecompiler_2fload_3aLoader_2egroups(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l16 = alloca { i64, ptr }
  %l19 = alloca ptr
  %l20 = alloca i1
  %l25 = alloca ptr
  %l26 = alloca i64
  %l32 = alloca %"compiler/source:Span"
  %l34 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a2, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  store i64 %t5, ptr %l5, !tbaa !24
  br label %bb1
bb1:
  %t7 = load i64, ptr %l4, !tbaa !24
  %t8 = load i64, ptr %l5, !tbaa !24
  %t11 = icmp slt i64 %t7, %t8
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  br label %bb23
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t15, ptr %l16, !tbaa !27
  %t16 = load i64, ptr %l4, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr ptr, ptr %t19, i64 %t16
  %t21 = load ptr, ptr %t20, !tbaa !39
  store ptr %t21, ptr %l6, !tbaa !29
  %t23 = load ptr, ptr %l6, !tbaa !29
  store ptr %t23, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t24 = load ptr, ptr %l19, !tbaa !29
  %t25 = icmp ne ptr %t24, null
  br i1 %t25, label %bb5, label %bb6
bb5:
  %t27 = load ptr, ptr %l19, !tbaa !29
  %t28 = load i64, ptr %t27, !range !{i64 0, i64 11}
  %t30 = icmp eq i64 %t28, 7
  store i1 %t30, ptr %l20, !tbaa !21
  br label %bb6
bb6:
  %t31 = load i1, ptr %l20, !tbaa !21
  br i1 %t31, label %bb7, label %bb8
bb7:
  %t32 = load ptr, ptr %l6, !tbaa !29
  %t34 = getelementptr { i64, [8 x i64] }, ptr %t32, i32 0, i32 1
  %t35 = getelementptr { %"compiler/source:Span", ptr }, ptr %t34, i32 0, i32 1
  %t36 = load ptr, ptr %t35
  store ptr %t36, ptr %l7, !tbaa !29
  br label %bb9
bb8:
  br label %bb16
bb9:
  %t38 = load ptr, ptr %l0, !tbaa !29
  store ptr %t38, ptr %l25, !tbaa !29
  %t39 = load i64, ptr %l1, !tbaa !24
  store i64 %t39, ptr %l26, !tbaa !24
  %t40 = load ptr, ptr %l7, !tbaa !29
  %t42 = getelementptr %"compiler/ast:TopIf", ptr %t40, i32 0, i32 0
  %t43 = load ptr, ptr %t42, !tbaa !29
  %t45 = icmp eq ptr %t43, null
  br i1 %t45, label %bb10, label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_e0f283e125550868_38a74932bc9801b4)
  unreachable
bb11:
  br label %bb12
bb12:
  %t47 = load ptr, ptr %l7, !tbaa !29
  %t49 = getelementptr %"compiler/ast:TopIf", ptr %t47, i32 0, i32 0
  %t50 = load ptr, ptr %t49, !tbaa !29
  %t52 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t50)
  store %"compiler/source:Span" %t52, ptr %l32
  br label %bb13
bb13:
  %t53 = getelementptr %"compiler/source:Span", ptr %l32, i32 0, i32 0
  %t54 = load i32, ptr %t53, !tbaa !23
  %t55 = load ptr, ptr %l25, !tbaa !29
  %t56 = load i64, ptr %l26, !tbaa !24
  %t58 = call i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2eChosen(ptr %v0, ptr %t55, i64 %t56, i32 %t54)
  store i64 %t58, ptr %l34
  br label %bb14
bb14:
  %t59 = load i64, ptr %l34, !tbaa !24
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load i64, ptr %l1, !tbaa !24
  %t62 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2echainGroups(ptr %v0, ptr %v1, ptr %t60, i64 %t61, ptr %t62, i64 %t59, i64 0)
  br label %bb15
bb15:
  br label %bb21
bb16:
  br i1 true, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb21
bb20:
  call void @__olang_check_failed(ptr @olang_loc_d07ee4e1bf4c721e_f2d4ed263b6afcda)
  unreachable
bb21:
  br label %bb22
bb22:
  %t68 = load i64, ptr %l4, !tbaa !24
  %t70 = add i64 %t68, 1
  store i64 %t70, ptr %l4, !tbaa !24
  br label %bb1
bb23:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fload_2ecompiler_2fload_3aLoader_2eimportAt(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca %"compiler/source:Span"
  %l8 = alloca %"compiler/source:Span"
  %l9 = alloca { i64, ptr }
  %l10 = alloca ptr
  %l20 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l22 = alloca i64
  %l23 = alloca { i64, ptr }
  %l24 = alloca %"compiler/source:Span"
  %l25 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %l32 = alloca { i64, ptr }
  %l35 = alloca %"compiler/source:Span"
  %l42 = alloca { i64, ptr }
  %l43 = alloca { i64, ptr }
  %l46 = alloca i64
  %l47 = alloca { i64, ptr }
  %l50 = alloca i64
  %l51 = alloca i64
  %l56 = alloca { i64, ptr }
  %l58 = alloca i64
  %l62 = alloca { i64, ptr }
  %l67 = alloca { i64, ptr }
  %l70 = alloca { i64, ptr }
  %l73 = alloca %"compiler/source:Span"
  %l80 = alloca { i64, ptr }
  %l82 = alloca i64
  %l84 = alloca i64
  %l85 = alloca i64
  %l90 = alloca { i64, ptr }
  %l92 = alloca i1
  %l94 = alloca { i64, ptr }
  %l95 = alloca { i64, ptr }
  %l97 = alloca i64
  %l100 = alloca %"compiler/source:Span"
  %l101 = alloca %"compiler/source:Span"
  %l102 = alloca i64
  %l106 = alloca { i64, ptr }
  %l107 = alloca i64
  %l113 = alloca %"compiler/load:Import"
  %l115 = alloca { i64, ptr }
  %l120 = alloca i1
  %l127 = alloca { i64, ptr }
  %l128 = alloca { i64, ptr }
  %l132 = alloca i64
  %l133 = alloca { i64, ptr }
  %l137 = alloca i64
  %l138 = alloca i64
  %l143 = alloca i1
  %l144 = alloca i1
  %l145 = alloca { i64, ptr }
  %l150 = alloca ptr
  %l151 = alloca { i64, ptr }
  %l155 = alloca { i64, ptr }
  %l159 = alloca %"compiler/source:Span"
  %l160 = alloca ptr
  %l161 = alloca i64
  %l169 = alloca { i64, ptr }
  %l172 = alloca i64
  %l175 = alloca i64
  %l176 = alloca i64
  %l181 = alloca { i64, ptr }
  %l184 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s8 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/load:Module", ptr %t1, i32 0, i32 7
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  br i1 %t6, label %bb1, label %bb2
bb1:
  call void @__olang_check_failed(ptr @olang_loc_88eba3596c4d138c_c1530d55fa80a9b0)
  unreachable
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l1, !tbaa !29
  %t10 = getelementptr %"compiler/load:Module", ptr %t8, i32 0, i32 7
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t14 = getelementptr %"compiler/scan:Tokens", ptr %t11, i32 0, i32 0
  %t15 = load { i64, ptr }, ptr %t14, !tbaa !27
  store { i64, ptr } %t15, ptr %l4, !tbaa !27
  %t19 = add i64 %a2, 1
  store i64 %t19, ptr %l5, !tbaa !24
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d74, i32 0, i32 1) }, ptr %l20, !tbaa !27
  %t21 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t21, ptr %l21, !tbaa !27
  %t22 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t22, 0
  store i64 %t23, ptr %l22, !tbaa !24
  %t24 = load i64, ptr %l22, !tbaa !24
  %t25 = mul i64 %t24, 1
  %t26 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t25)
  %t27 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t26, 1
  store { i64, ptr } %t28, ptr %l23, !tbaa !27
  %t29 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = load i64, ptr %l22, !tbaa !24
  %t34 = mul i64 %t33, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t30, ptr %t32, i64 %t34, i1 false)
  %t35 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t35, ptr %l6, !tbaa !27
  %t36 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 0, i32 0)
  store %"compiler/source:Span" %t36, ptr %l24
  br label %bb4
bb4:
  %t37 = load %"compiler/source:Span", ptr %l24
  store %"compiler/source:Span" %t37, ptr %l7
  %t38 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t38, ptr %l25, !tbaa !27
  %t39 = load i64, ptr %l5, !tbaa !24
  %t41 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !27
  %t43 = getelementptr %"compiler/token:Token", ptr %t42, i64 %t39
  %t44 = getelementptr %"compiler/token:Token", ptr %t43, i32 0, i32 0
  %t45 = load i32, ptr %t44, !range !{i32 0, i32 114}
  %t47 = trunc i64 1 to i32
  %t48 = icmp eq i32 %t45, %t47
  br i1 %t48, label %bb5, label %bb6
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t50 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t50, ptr %l29, !tbaa !27
  %t51 = load i64, ptr %l5, !tbaa !24
  %t53 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !27
  %t55 = getelementptr %"compiler/token:Token", ptr %t54, i64 %t51
  %t56 = getelementptr %"compiler/token:Token", ptr %t55, i32 0, i32 2
  %t57 = load i32, ptr %t56, !tbaa !23
  %t58 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t58, ptr %l32, !tbaa !27
  %t59 = load i64, ptr %l5, !tbaa !24
  %t61 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !27
  %t63 = getelementptr %"compiler/token:Token", ptr %t62, i64 %t59
  %t64 = getelementptr %"compiler/token:Token", ptr %t63, i32 0, i32 3
  %t65 = load i32, ptr %t64, !tbaa !23
  %t68 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s1, i32 %t57, i32 %t65)
  store %"compiler/source:Span" %t68, ptr %l35
  br label %bb7
bb6:
  br label %bb20
bb7:
  %t69 = load %"compiler/source:Span", ptr %l35
  store %"compiler/source:Span" %t69, ptr %l7
  %t70 = load ptr, ptr %l1, !tbaa !29
  %t72 = getelementptr %"compiler/load:Module", ptr %t70, i32 0, i32 6
  %t73 = load ptr, ptr %t72, !tbaa !29
  %t75 = icmp eq ptr %t73, null
  br i1 %t75, label %bb8, label %bb9
bb8:
  call void @__olang_check_failed(ptr @olang_loc_17f5e01691795fb_80a050950937648f)
  unreachable
bb9:
  br label %bb10
bb10:
  %t77 = load ptr, ptr %l1, !tbaa !29
  %t79 = getelementptr %"compiler/load:Module", ptr %t77, i32 0, i32 6
  %t80 = load ptr, ptr %t79, !tbaa !29
  %t83 = getelementptr %"compiler/source:Source", ptr %t80, i32 0, i32 1
  %t84 = load { i64, ptr }, ptr %t83, !tbaa !27
  store { i64, ptr } %t84, ptr %l42, !tbaa !27
  %t85 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t85, ptr %l43, !tbaa !27
  %t86 = load i64, ptr %l5, !tbaa !24
  %t88 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !27
  %t90 = getelementptr %"compiler/token:Token", ptr %t89, i64 %t86
  %t91 = getelementptr %"compiler/token:Token", ptr %t90, i32 0, i32 2
  %t92 = load i32, ptr %t91, !tbaa !23
  %t94 = sext i32 %t92 to i64
  store i64 %t94, ptr %l46, !tbaa !24
  %t95 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t95, ptr %l47, !tbaa !27
  %t96 = load i64, ptr %l5, !tbaa !24
  %t98 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !27
  %t100 = getelementptr %"compiler/token:Token", ptr %t99, i64 %t96
  %t101 = getelementptr %"compiler/token:Token", ptr %t100, i32 0, i32 3
  %t102 = load i32, ptr %t101, !tbaa !23
  %t104 = sext i32 %t102 to i64
  store i64 %t104, ptr %l50, !tbaa !24
  %t105 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t106 = extractvalue { i64, ptr } %t105, 0
  store i64 %t106, ptr %l51, !tbaa !24
  %t107 = load i64, ptr %l46, !tbaa !24
  %t108 = icmp sge i64 %t107, 0
  br i1 %t108, label %bb11, label %bb12
bb11:
  %t110 = load i64, ptr %l46, !tbaa !24
  %t111 = load i64, ptr %l50, !tbaa !24
  %t112 = icmp sle i64 %t110, %t111
  br i1 %t112, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_fd1d115e36d277d2_104a63438b39a3d6)
  unreachable
bb13:
  %t114 = load i64, ptr %l50, !tbaa !24
  %t115 = load i64, ptr %l51, !tbaa !24
  %t116 = icmp sle i64 %t114, %t115
  br i1 %t116, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_fd1d115e36d277d2_104a63438b39a3d6)
  unreachable
bb15:
  %t118 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t119 = load ptr, ptr %t118, !tbaa !27
  %t120 = load i64, ptr %l46, !tbaa !24
  %t121 = load i64, ptr %l50, !tbaa !24
  %t122 = getelementptr i8, ptr %t119, i64 %t120
  %t123 = sub i64 %t121, %t120
  %t124 = insertvalue { i64, ptr } undef, i64 %t123, 0
  %t125 = insertvalue { i64, ptr } %t124, ptr %t122, 1
  %t127 = extractvalue { i64, ptr } %t125, 1
  %t128 = extractvalue { i64, ptr } %t125, 0
  %t129 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t128)
  call void @olang_textcopy(ptr %t129, ptr %t127, i64 %t128)
  %t130 = insertvalue { i64, ptr } undef, i64 %t128, 0
  %t131 = insertvalue { i64, ptr } %t130, ptr %t129, 1
  store { i64, ptr } %t131, ptr %l56, !tbaa !27
  %t132 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t133 = extractvalue { i64, ptr } %t132, 0
  %t134 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t135 = extractvalue { i64, ptr } %t134, 0
  store i64 %t135, ptr %l58, !tbaa !24
  %t137 = load i64, ptr %l58, !tbaa !24
  %t138 = icmp eq i64 %t133, %t137
  br i1 %t138, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_fd1d115e36d277d2_104a63438b39a3d6)
  unreachable
bb17:
  %t140 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t141 = load ptr, ptr %t140, !tbaa !27
  %t142 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t143 = load ptr, ptr %t142, !tbaa !27
  %t144 = load i64, ptr %l58, !tbaa !24
  %t145 = mul i64 %t144, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t141, ptr %t143, i64 %t145, i1 false)
  br label %bb19
bb18:
  %t146 = load { i64, ptr }, ptr %l56, !tbaa !27
  store { i64, ptr } %t146, ptr %l6, !tbaa !27
  br label %bb19
bb19:
  %t147 = load i64, ptr %l5, !tbaa !24
  %t149 = add i64 %t147, 1
  store i64 %t149, ptr %l5, !tbaa !24
  call void @__olang_scope_close(ptr %s1)
  br label %bb20
bb20:
  %t151 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t151, ptr %l62, !tbaa !27
  %t152 = load i64, ptr %l5, !tbaa !24
  %t154 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t155 = load ptr, ptr %t154, !tbaa !27
  %t156 = getelementptr %"compiler/token:Token", ptr %t155, i64 %t152
  %t157 = getelementptr %"compiler/token:Token", ptr %t156, i32 0, i32 0
  %t158 = load i32, ptr %t157, !range !{i32 0, i32 114}
  %t160 = trunc i64 5 to i32
  %t161 = icmp eq i32 %t158, %t160
  %t163 = xor i1 %t161, true
  br i1 %t163, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb22:
  br label %bb23
bb23:
  %t165 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t165, ptr %l67, !tbaa !27
  %t166 = load i64, ptr %l5, !tbaa !24
  %t168 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t169 = load ptr, ptr %t168, !tbaa !27
  %t170 = getelementptr %"compiler/token:Token", ptr %t169, i64 %t166
  %t171 = getelementptr %"compiler/token:Token", ptr %t170, i32 0, i32 2
  %t172 = load i32, ptr %t171, !tbaa !23
  %t173 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t173, ptr %l70, !tbaa !27
  %t174 = load i64, ptr %l5, !tbaa !24
  %t176 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t177 = load ptr, ptr %t176, !tbaa !27
  %t178 = getelementptr %"compiler/token:Token", ptr %t177, i64 %t174
  %t179 = getelementptr %"compiler/token:Token", ptr %t178, i32 0, i32 3
  %t180 = load i32, ptr %t179, !tbaa !23
  %t183 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 %t172, i32 %t180)
  store %"compiler/source:Span" %t183, ptr %l73
  br label %bb24
bb24:
  %t184 = load %"compiler/source:Span", ptr %l73
  store %"compiler/source:Span" %t184, ptr %l8
  %t185 = load ptr, ptr %l1, !tbaa !29
  %t187 = getelementptr %"compiler/load:Module", ptr %t185, i32 0, i32 6
  %t188 = load ptr, ptr %t187, !tbaa !29
  %t190 = icmp eq ptr %t188, null
  br i1 %t190, label %bb25, label %bb26
bb25:
  call void @__olang_check_failed(ptr @olang_loc_3753a1d7262b2cc1_bd09a853d1b85305)
  unreachable
bb26:
  br label %bb27
bb27:
  %t192 = load ptr, ptr %l1, !tbaa !29
  %t194 = getelementptr %"compiler/load:Module", ptr %t192, i32 0, i32 6
  %t195 = load ptr, ptr %t194, !tbaa !29
  %t198 = getelementptr %"compiler/source:Source", ptr %t195, i32 0, i32 1
  %t199 = load { i64, ptr }, ptr %t198, !tbaa !27
  store { i64, ptr } %t199, ptr %l80, !tbaa !27
  %t200 = getelementptr %"compiler/source:Span", ptr %l8, i32 0, i32 0
  %t201 = load i32, ptr %t200, !tbaa !23
  %t203 = sext i32 %t201 to i64
  store i64 %t203, ptr %l82, !tbaa !24
  %t204 = getelementptr %"compiler/source:Span", ptr %l8, i32 0, i32 1
  %t205 = load i32, ptr %t204, !tbaa !23
  %t207 = sext i32 %t205 to i64
  store i64 %t207, ptr %l84, !tbaa !24
  %t208 = load { i64, ptr }, ptr %l80, !tbaa !27
  %t209 = extractvalue { i64, ptr } %t208, 0
  store i64 %t209, ptr %l85, !tbaa !24
  %t210 = load i64, ptr %l82, !tbaa !24
  %t211 = icmp sge i64 %t210, 0
  br i1 %t211, label %bb28, label %bb29
bb28:
  %t213 = load i64, ptr %l82, !tbaa !24
  %t214 = load i64, ptr %l84, !tbaa !24
  %t215 = icmp sle i64 %t213, %t214
  br i1 %t215, label %bb30, label %bb31
bb29:
  call void @__olang_check_failed(ptr @olang_loc_a7b0777888cd5d70_d2e13e44ce4d5eec)
  unreachable
bb30:
  %t217 = load i64, ptr %l84, !tbaa !24
  %t218 = load i64, ptr %l85, !tbaa !24
  %t219 = icmp sle i64 %t217, %t218
  br i1 %t219, label %bb32, label %bb33
bb31:
  call void @__olang_check_failed(ptr @olang_loc_a7b0777888cd5d70_d2e13e44ce4d5eec)
  unreachable
bb32:
  %t221 = getelementptr { i64, ptr }, ptr %l80, i32 0, i32 1
  %t222 = load ptr, ptr %t221, !tbaa !27
  %t223 = load i64, ptr %l82, !tbaa !24
  %t224 = load i64, ptr %l84, !tbaa !24
  %t225 = getelementptr i8, ptr %t222, i64 %t223
  %t226 = sub i64 %t224, %t223
  %t227 = insertvalue { i64, ptr } undef, i64 %t226, 0
  %t228 = insertvalue { i64, ptr } %t227, ptr %t225, 1
  %t230 = call { i64, ptr } @compiler_2fscan_2eLiteralText(ptr %v1, ptr %s0, { i64, ptr } %t228)
  store { i64, ptr } %t230, ptr %l90
  br label %bb34
bb33:
  call void @__olang_check_failed(ptr @olang_loc_a7b0777888cd5d70_d2e13e44ce4d5eec)
  unreachable
bb34:
  %t231 = load { i64, ptr }, ptr %l90, !tbaa !27
  store { i64, ptr } %t231, ptr %l9, !tbaa !27
  %t232 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t234 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t232, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d75, i32 0, i32 1) })
  store i1 %t234, ptr %l92
  br label %bb35
bb35:
  %t235 = load i1, ptr %l92, !tbaa !21
  br i1 %t235, label %bb36, label %bb37
bb36:
  store %olang.scope zeroinitializer, ptr %s4
  %t236 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t238 = call { i64, ptr } @compiler_2fload_2eDeriveAlias(ptr %s0, ptr %s4, { i64, ptr } %t236)
  store { i64, ptr } %t238, ptr %l94
  br label %bb38
bb37:
  br label %bb42
bb38:
  %t239 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t240 = extractvalue { i64, ptr } %t239, 1
  %t241 = extractvalue { i64, ptr } %t239, 0
  %t242 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t241)
  call void @olang_textcopy(ptr %t242, ptr %t240, i64 %t241)
  %t243 = insertvalue { i64, ptr } undef, i64 %t241, 0
  %t244 = insertvalue { i64, ptr } %t243, ptr %t242, 1
  store { i64, ptr } %t244, ptr %l95, !tbaa !27
  %t245 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t246 = extractvalue { i64, ptr } %t245, 0
  %t247 = load { i64, ptr }, ptr %l95, !tbaa !27
  %t248 = extractvalue { i64, ptr } %t247, 0
  store i64 %t248, ptr %l97, !tbaa !24
  %t250 = load i64, ptr %l97, !tbaa !24
  %t251 = icmp eq i64 %t246, %t250
  br i1 %t251, label %bb39, label %bb40
bb39:
  %t253 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t254 = load ptr, ptr %t253, !tbaa !27
  %t255 = getelementptr { i64, ptr }, ptr %l95, i32 0, i32 1
  %t256 = load ptr, ptr %t255, !tbaa !27
  %t257 = load i64, ptr %l97, !tbaa !24
  %t258 = mul i64 %t257, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t254, ptr %t256, i64 %t258, i1 false)
  br label %bb41
bb40:
  %t259 = load { i64, ptr }, ptr %l95, !tbaa !27
  store { i64, ptr } %t259, ptr %l6, !tbaa !27
  br label %bb41
bb41:
  %t260 = load %"compiler/source:Span", ptr %l8
  store %"compiler/source:Span" %t260, ptr %l7
  call void @__olang_scope_close(ptr %s4)
  br label %bb42
bb42:
  %t262 = load %"compiler/source:Span", ptr %l8
  store %"compiler/source:Span" %t262, ptr %l100
  %t263 = load %"compiler/source:Span", ptr %l7
  store %"compiler/source:Span" %t263, ptr %l101
  %t264 = ptrtoint ptr %v1 to i64
  store i64 %t264, ptr %l102, !tbaa !24
  %t265 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aImport_2e2
  br i1 %t265, label %bb43, label %bb44
bb43:
  %t267 = call ptr @__olang_region_make(ptr %v1)
  %t268 = ptrtoint ptr %t267 to i64
  store i64 %t268, ptr %l102, !tbaa !24
  br label %bb44
bb44:
  %t269 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t271 = extractvalue { i64, ptr } %t269, 1
  %t272 = extractvalue { i64, ptr } %t269, 0
  %t273 = load i64, ptr %l102
  %t274 = inttoptr i64 %t273 to ptr
  %t275 = call ptr @__olang_scope_alloc(ptr %t274, i64 %t272)
  call void @olang_textcopy(ptr %t275, ptr %t271, i64 %t272)
  %t276 = insertvalue { i64, ptr } undef, i64 %t272, 0
  %t277 = insertvalue { i64, ptr } %t276, ptr %t275, 1
  %t279 = load i64, ptr %l102
  %t280 = inttoptr i64 %t279 to ptr
  %t281 = extractvalue { i64, ptr } %t277, 0
  %t282 = extractvalue { i64, ptr } %t277, 1
  %t283 = mul i64 %t281, 1
  %t284 = call ptr @__olang_scope_alloc(ptr %t280, i64 %t283)
  call void @llvm.memcpy.p0.p0.i64(ptr %t284, ptr %t282, i64 %t283, i1 false)
  %t285 = insertvalue { i64, ptr } undef, i64 %t281, 0
  %t286 = insertvalue { i64, ptr } %t285, ptr %t284, 1
  store { i64, ptr } %t286, ptr %l106, !tbaa !27
  %t287 = ptrtoint ptr %v1 to i64
  store i64 %t287, ptr %l107, !tbaa !24
  %t288 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aImport_2e3
  br i1 %t288, label %bb45, label %bb46
bb45:
  %t290 = call ptr @__olang_region_make(ptr %v1)
  %t291 = ptrtoint ptr %t290 to i64
  store i64 %t291, ptr %l107, !tbaa !24
  br label %bb46
bb46:
  %t292 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t294 = extractvalue { i64, ptr } %t292, 1
  %t295 = extractvalue { i64, ptr } %t292, 0
  %t296 = load i64, ptr %l107
  %t297 = inttoptr i64 %t296 to ptr
  %t298 = call ptr @__olang_scope_alloc(ptr %t297, i64 %t295)
  call void @olang_textcopy(ptr %t298, ptr %t294, i64 %t295)
  %t299 = insertvalue { i64, ptr } undef, i64 %t295, 0
  %t300 = insertvalue { i64, ptr } %t299, ptr %t298, 1
  %t302 = load i64, ptr %l107
  %t303 = inttoptr i64 %t302 to ptr
  %t304 = extractvalue { i64, ptr } %t300, 0
  %t305 = extractvalue { i64, ptr } %t300, 1
  %t306 = mul i64 %t304, 1
  %t307 = call ptr @__olang_scope_alloc(ptr %t303, i64 %t306)
  call void @llvm.memcpy.p0.p0.i64(ptr %t307, ptr %t305, i64 %t306, i1 false)
  %t308 = insertvalue { i64, ptr } undef, i64 %t304, 0
  %t309 = insertvalue { i64, ptr } %t308, ptr %t307, 1
  %t311 = load %"compiler/source:Span", ptr %l100
  %t312 = load %"compiler/source:Span", ptr %l101
  %t313 = load { i64, ptr }, ptr %l106, !tbaa !27
  %t316 = call %"compiler/load:Import" @compiler_2fload_3aImport_2ector(ptr %v1, ptr %v1, ptr %v1, %"compiler/source:Span" %t311, %"compiler/source:Span" %t312, { i64, ptr } %t313, { i64, ptr } %t309, i64 %a3)
  store %"compiler/load:Import" %t316, ptr %l113
  br label %bb47
bb47:
  %t317 = load %"compiler/load:Import", ptr %l113
  %t318 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 88, i64 8)
  store %"compiler/load:Import" %t317, ptr %t318
  store ptr %t318, ptr %l10, !tbaa !29
  %t320 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t320, ptr %l115, !tbaa !27
  %t321 = load i64, ptr %l5, !tbaa !24
  %t323 = add i64 %t321, 1
  %t325 = getelementptr { i64, ptr }, ptr %l115, i32 0, i32 1
  %t326 = load ptr, ptr %t325, !tbaa !27
  %t327 = getelementptr %"compiler/token:Token", ptr %t326, i64 %t323
  %t328 = getelementptr %"compiler/token:Token", ptr %t327, i32 0, i32 0
  %t329 = load i32, ptr %t328, !range !{i32 0, i32 114}
  %t331 = trunc i64 1 to i32
  %t332 = icmp eq i32 %t329, %t331
  br i1 %t332, label %bb48, label %bb49
bb48:
  %t334 = load ptr, ptr %l1, !tbaa !29
  %t336 = getelementptr %"compiler/load:Module", ptr %t334, i32 0, i32 6
  %t337 = load ptr, ptr %t336, !tbaa !29
  %t339 = icmp eq ptr %t337, null
  br i1 %t339, label %bb50, label %bb51
bb49:
  store i1 false, ptr %l120, !tbaa !21
  br label %bb60
bb50:
  call void @__olang_check_failed(ptr @olang_loc_8e32ae472cd64327_c149890ad1056c3)
  unreachable
bb51:
  br label %bb52
bb52:
  %t341 = load ptr, ptr %l1, !tbaa !29
  %t343 = getelementptr %"compiler/load:Module", ptr %t341, i32 0, i32 6
  %t344 = load ptr, ptr %t343, !tbaa !29
  %t347 = getelementptr %"compiler/source:Source", ptr %t344, i32 0, i32 1
  %t348 = load { i64, ptr }, ptr %t347, !tbaa !27
  store { i64, ptr } %t348, ptr %l127, !tbaa !27
  %t349 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t349, ptr %l128, !tbaa !27
  %t350 = load i64, ptr %l5, !tbaa !24
  %t352 = add i64 %t350, 1
  %t354 = getelementptr { i64, ptr }, ptr %l128, i32 0, i32 1
  %t355 = load ptr, ptr %t354, !tbaa !27
  %t356 = getelementptr %"compiler/token:Token", ptr %t355, i64 %t352
  %t357 = getelementptr %"compiler/token:Token", ptr %t356, i32 0, i32 2
  %t358 = load i32, ptr %t357, !tbaa !23
  %t360 = sext i32 %t358 to i64
  store i64 %t360, ptr %l132, !tbaa !24
  %t361 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t361, ptr %l133, !tbaa !27
  %t362 = load i64, ptr %l5, !tbaa !24
  %t364 = add i64 %t362, 1
  %t366 = getelementptr { i64, ptr }, ptr %l133, i32 0, i32 1
  %t367 = load ptr, ptr %t366, !tbaa !27
  %t368 = getelementptr %"compiler/token:Token", ptr %t367, i64 %t364
  %t369 = getelementptr %"compiler/token:Token", ptr %t368, i32 0, i32 3
  %t370 = load i32, ptr %t369, !tbaa !23
  %t372 = sext i32 %t370 to i64
  store i64 %t372, ptr %l137, !tbaa !24
  %t373 = load { i64, ptr }, ptr %l127, !tbaa !27
  %t374 = extractvalue { i64, ptr } %t373, 0
  store i64 %t374, ptr %l138, !tbaa !24
  %t375 = load i64, ptr %l132, !tbaa !24
  %t376 = icmp sge i64 %t375, 0
  br i1 %t376, label %bb53, label %bb54
bb53:
  %t378 = load i64, ptr %l132, !tbaa !24
  %t379 = load i64, ptr %l137, !tbaa !24
  %t380 = icmp sle i64 %t378, %t379
  br i1 %t380, label %bb55, label %bb56
bb54:
  call void @__olang_check_failed(ptr @olang_loc_a448ee53d606ecee_601f65a9d3b58c7a)
  unreachable
bb55:
  %t382 = load i64, ptr %l137, !tbaa !24
  %t383 = load i64, ptr %l138, !tbaa !24
  %t384 = icmp sle i64 %t382, %t383
  br i1 %t384, label %bb57, label %bb58
bb56:
  call void @__olang_check_failed(ptr @olang_loc_a448ee53d606ecee_601f65a9d3b58c7a)
  unreachable
bb57:
  %t386 = getelementptr { i64, ptr }, ptr %l127, i32 0, i32 1
  %t387 = load ptr, ptr %t386, !tbaa !27
  %t388 = load i64, ptr %l132, !tbaa !24
  %t389 = load i64, ptr %l137, !tbaa !24
  %t390 = getelementptr i8, ptr %t387, i64 %t388
  %t391 = sub i64 %t389, %t388
  %t392 = insertvalue { i64, ptr } undef, i64 %t391, 0
  %t393 = insertvalue { i64, ptr } %t392, ptr %t390, 1
  %t395 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t393, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d76, i32 0, i32 1) })
  store i1 %t395, ptr %l143
  br label %bb59
bb58:
  call void @__olang_check_failed(ptr @olang_loc_a448ee53d606ecee_601f65a9d3b58c7a)
  unreachable
bb59:
  %t396 = load i1, ptr %l143, !tbaa !21
  store i1 %t396, ptr %l120, !tbaa !21
  br label %bb60
bb60:
  %t397 = load i1, ptr %l120, !tbaa !21
  br i1 %t397, label %bb61, label %bb62
bb61:
  %t398 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t398, ptr %l145, !tbaa !27
  %t399 = load i64, ptr %l5, !tbaa !24
  %t401 = add i64 %t399, 2
  %t403 = getelementptr { i64, ptr }, ptr %l145, i32 0, i32 1
  %t404 = load ptr, ptr %t403, !tbaa !27
  %t405 = getelementptr %"compiler/token:Token", ptr %t404, i64 %t401
  %t406 = getelementptr %"compiler/token:Token", ptr %t405, i32 0, i32 0
  %t407 = load i32, ptr %t406, !range !{i32 0, i32 114}
  %t409 = trunc i64 5 to i32
  %t410 = icmp eq i32 %t407, %t409
  store i1 %t410, ptr %l144, !tbaa !21
  br label %bb63
bb62:
  store i1 false, ptr %l144, !tbaa !21
  br label %bb63
bb63:
  %t412 = load i1, ptr %l144, !tbaa !21
  br i1 %t412, label %bb64, label %bb65
bb64:
  store %olang.scope zeroinitializer, ptr %s8
  %t413 = load ptr, ptr %l10, !tbaa !29
  store ptr %t413, ptr %l150, !tbaa !29
  %t414 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t414, ptr %l151, !tbaa !27
  %t415 = load i64, ptr %l5, !tbaa !24
  %t417 = add i64 %t415, 2
  %t419 = getelementptr { i64, ptr }, ptr %l151, i32 0, i32 1
  %t420 = load ptr, ptr %t419, !tbaa !27
  %t421 = getelementptr %"compiler/token:Token", ptr %t420, i64 %t417
  %t422 = getelementptr %"compiler/token:Token", ptr %t421, i32 0, i32 2
  %t423 = load i32, ptr %t422, !tbaa !23
  %t424 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t424, ptr %l155, !tbaa !27
  %t425 = load i64, ptr %l5, !tbaa !24
  %t427 = add i64 %t425, 2
  %t429 = getelementptr { i64, ptr }, ptr %l155, i32 0, i32 1
  %t430 = load ptr, ptr %t429, !tbaa !27
  %t431 = getelementptr %"compiler/token:Token", ptr %t430, i64 %t427
  %t432 = getelementptr %"compiler/token:Token", ptr %t431, i32 0, i32 3
  %t433 = load i32, ptr %t432, !tbaa !23
  %t436 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s8, i32 %t423, i32 %t433)
  store %"compiler/source:Span" %t436, ptr %l159
  br label %bb66
bb65:
  br label %bb81
bb66:
  %t437 = load %"compiler/source:Span", ptr %l159
  %t438 = load ptr, ptr %l150, !tbaa !29
  %t439 = getelementptr %"compiler/load:Import", ptr %t438, i32 0, i32 7
  store %"compiler/source:Span" %t437, ptr %t439
  %t440 = load ptr, ptr %l10, !tbaa !29
  store ptr %t440, ptr %l160, !tbaa !29
  %t441 = ptrtoint ptr %v1 to i64
  store i64 %t441, ptr %l161, !tbaa !24
  %t442 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aImport_2e6
  br i1 %t442, label %bb67, label %bb68
bb67:
  %t444 = call ptr @__olang_region_make(ptr %v1)
  %t445 = ptrtoint ptr %t444 to i64
  store i64 %t445, ptr %l161, !tbaa !24
  br label %bb68
bb68:
  %t446 = load ptr, ptr %l1, !tbaa !29
  %t448 = getelementptr %"compiler/load:Module", ptr %t446, i32 0, i32 6
  %t449 = load ptr, ptr %t448, !tbaa !29
  %t451 = icmp eq ptr %t449, null
  br i1 %t451, label %bb69, label %bb70
bb69:
  call void @__olang_check_failed(ptr @olang_loc_7e96417109578add_9add255974295329)
  unreachable
bb70:
  br label %bb71
bb71:
  %t453 = load ptr, ptr %l1, !tbaa !29
  %t455 = getelementptr %"compiler/load:Module", ptr %t453, i32 0, i32 6
  %t456 = load ptr, ptr %t455, !tbaa !29
  %t459 = getelementptr %"compiler/source:Source", ptr %t456, i32 0, i32 1
  %t460 = load { i64, ptr }, ptr %t459, !tbaa !27
  store { i64, ptr } %t460, ptr %l169, !tbaa !27
  %t461 = load ptr, ptr %l10, !tbaa !29
  %t463 = getelementptr %"compiler/load:Import", ptr %t461, i32 0, i32 7
  %t464 = getelementptr %"compiler/source:Span", ptr %t463, i32 0, i32 0
  %t465 = load i32, ptr %t464, !tbaa !23
  %t467 = sext i32 %t465 to i64
  store i64 %t467, ptr %l172, !tbaa !24
  %t468 = load ptr, ptr %l10, !tbaa !29
  %t470 = getelementptr %"compiler/load:Import", ptr %t468, i32 0, i32 7
  %t471 = getelementptr %"compiler/source:Span", ptr %t470, i32 0, i32 1
  %t472 = load i32, ptr %t471, !tbaa !23
  %t474 = sext i32 %t472 to i64
  store i64 %t474, ptr %l175, !tbaa !24
  %t475 = load { i64, ptr }, ptr %l169, !tbaa !27
  %t476 = extractvalue { i64, ptr } %t475, 0
  store i64 %t476, ptr %l176, !tbaa !24
  %t477 = load i64, ptr %l172, !tbaa !24
  %t478 = icmp sge i64 %t477, 0
  br i1 %t478, label %bb72, label %bb73
bb72:
  %t480 = load i64, ptr %l172, !tbaa !24
  %t481 = load i64, ptr %l175, !tbaa !24
  %t482 = icmp sle i64 %t480, %t481
  br i1 %t482, label %bb74, label %bb75
bb73:
  call void @__olang_check_failed(ptr @olang_loc_7fc0c111e9e5248c_f920a424be87ad0)
  unreachable
bb74:
  %t484 = load i64, ptr %l175, !tbaa !24
  %t485 = load i64, ptr %l176, !tbaa !24
  %t486 = icmp sle i64 %t484, %t485
  br i1 %t486, label %bb76, label %bb77
bb75:
  call void @__olang_check_failed(ptr @olang_loc_7fc0c111e9e5248c_f920a424be87ad0)
  unreachable
bb76:
  %t488 = getelementptr { i64, ptr }, ptr %l169, i32 0, i32 1
  %t489 = load ptr, ptr %t488, !tbaa !27
  %t490 = load i64, ptr %l172, !tbaa !24
  %t491 = load i64, ptr %l175, !tbaa !24
  %t492 = getelementptr i8, ptr %t489, i64 %t490
  %t493 = sub i64 %t491, %t490
  %t494 = insertvalue { i64, ptr } undef, i64 %t493, 0
  %t495 = insertvalue { i64, ptr } %t494, ptr %t492, 1
  %t497 = call { i64, ptr } @compiler_2fscan_2eLiteralText(ptr %v1, ptr %s8, { i64, ptr } %t495)
  store { i64, ptr } %t497, ptr %l181
  br label %bb78
bb77:
  call void @__olang_check_failed(ptr @olang_loc_7fc0c111e9e5248c_f920a424be87ad0)
  unreachable
bb78:
  %t498 = load { i64, ptr }, ptr %l181, !tbaa !27
  %t499 = extractvalue { i64, ptr } %t498, 1
  %t500 = extractvalue { i64, ptr } %t498, 0
  %t501 = load i64, ptr %l161
  %t502 = inttoptr i64 %t501 to ptr
  %t503 = call ptr @__olang_scope_alloc(ptr %t502, i64 %t500)
  call void @olang_textcopy(ptr %t503, ptr %t499, i64 %t500)
  %t504 = insertvalue { i64, ptr } undef, i64 %t500, 0
  %t505 = insertvalue { i64, ptr } %t504, ptr %t503, 1
  %t507 = load i64, ptr %l161
  %t508 = inttoptr i64 %t507 to ptr
  %t509 = extractvalue { i64, ptr } %t505, 0
  %t510 = extractvalue { i64, ptr } %t505, 1
  %t511 = mul i64 %t509, 1
  %t512 = call ptr @__olang_scope_alloc(ptr %t508, i64 %t511)
  call void @llvm.memcpy.p0.p0.i64(ptr %t512, ptr %t510, i64 %t511, i1 false)
  %t513 = insertvalue { i64, ptr } undef, i64 %t509, 0
  %t514 = insertvalue { i64, ptr } %t513, ptr %t512, 1
  %t515 = load ptr, ptr %l160, !tbaa !29
  %t516 = getelementptr %"compiler/load:Import", ptr %t515, i32 0, i32 6
  %t517 = load { i64, ptr }, ptr %t516, !tbaa !27
  store { i64, ptr } %t517, ptr %l184, !tbaa !27
  %t519 = load ptr, ptr %l160, !tbaa !29
  %t520 = getelementptr %"compiler/load:Import", ptr %t519, i32 0, i32 6
  store { i64, ptr } %t514, ptr %t520, !tbaa !27
  %t521 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aImport_2e6
  br i1 %t521, label %bb79, label %bb80
bb79:
  %t523 = load { i64, ptr }, ptr %l184
  %t524 = extractvalue { i64, ptr } %t523, 1
  call void @__olang_region_release(ptr %t524)
  store { i64, ptr } zeroinitializer, ptr %l184
  br label %bb80
bb80:
  call void @__olang_scope_close(ptr %s8)
  br label %bb81
bb81:
  %t525 = load ptr, ptr %l1, !tbaa !29
  %t527 = getelementptr %"compiler/load:Module", ptr %t525, i32 0, i32 11
  %t528 = load ptr, ptr %l10, !tbaa !29
  %t530 = load %"compiler/load:Import", ptr %t528
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2ePush_3ccompiler_2fload_3aImport_3e(ptr %v1, ptr %v1, ptr %t527, %"compiler/load:Import" %t530)
  br label %bb82
bb82:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fload_2ecompiler_2fload_3aLoader_2elinksIf(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i64 %a1, ptr %a2, i64 %a3, i64 %a4, ptr %a5, ptr %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l10 = alloca i1
  %l20 = alloca ptr
  %l21 = alloca i64
  %l35 = alloca ptr
  %l36 = alloca i64
  %l51 = alloca i1
  %l56 = alloca i1
  %l66 = alloca ptr
  %l67 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i64 %a3, ptr %l3
  store i64 %a4, ptr %l4
  store ptr %a5, ptr %l5
  store ptr %a6, ptr %l6
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l3, !tbaa !24
  %t2 = load i64, ptr %l4, !tbaa !24
  %t5 = icmp eq i64 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load ptr, ptr %l2, !tbaa !29
  %t9 = getelementptr %"compiler/ast:TopIf", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = icmp eq ptr %t10, null
  br i1 %t12, label %bb3, label %bb4
bb2:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb6
bb3:
  call void @__olang_check_failed(ptr @olang_loc_8d00da697bdede94_44bec053299cee38)
  unreachable
bb4:
  br label %bb5
bb5:
  %t14 = load ptr, ptr %l2, !tbaa !29
  %t16 = getelementptr %"compiler/ast:TopIf", ptr %t14, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !29
  %t20 = getelementptr %"compiler/ast:TopBranch", ptr %t17, i32 0, i32 1
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t21, 0
  %t25 = icmp sgt i64 %t23, 0
  store i1 %t25, ptr %l10, !tbaa !21
  br label %bb6
bb6:
  %t27 = load i1, ptr %l10, !tbaa !21
  br i1 %t27, label %bb7, label %bb8
bb7:
  %t28 = load ptr, ptr %l0, !tbaa !29
  store ptr %t28, ptr %l20, !tbaa !29
  %t29 = load i64, ptr %l1, !tbaa !24
  store i64 %t29, ptr %l21, !tbaa !24
  %t30 = load ptr, ptr %l2, !tbaa !29
  %t32 = getelementptr %"compiler/ast:TopIf", ptr %t30, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t35 = icmp eq ptr %t33, null
  br i1 %t35, label %bb9, label %bb10
bb8:
  br label %bb13
bb9:
  call void @__olang_check_failed(ptr @olang_loc_8d00da697bdede94_44bec053299cee38)
  unreachable
bb10:
  br label %bb11
bb11:
  %t37 = load ptr, ptr %l2, !tbaa !29
  %t39 = getelementptr %"compiler/ast:TopIf", ptr %t37, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t43 = getelementptr %"compiler/ast:TopBranch", ptr %t40, i32 0, i32 1
  %t44 = load { i64, ptr }, ptr %t43, !tbaa !27
  %t45 = load ptr, ptr %l5, !tbaa !29
  %t46 = load ptr, ptr %l6, !tbaa !29
  %t47 = load ptr, ptr %l20, !tbaa !29
  %t48 = load i64, ptr %l21, !tbaa !24
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2elinksIn(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t47, i64 %t48, { i64, ptr } %t44, ptr %t45, ptr %t46)
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t52 = load ptr, ptr %l2, !tbaa !29
  %t54 = getelementptr %"compiler/ast:TopIf", ptr %t52, i32 0, i32 2
  %t55 = load ptr, ptr %t54, !tbaa !29
  %t57 = icmp eq ptr %t55, null
  %t59 = xor i1 %t57, true
  br i1 %t59, label %bb14, label %bb15
bb14:
  %t61 = load ptr, ptr %l0, !tbaa !29
  store ptr %t61, ptr %l35, !tbaa !29
  %t62 = load i64, ptr %l1, !tbaa !24
  store i64 %t62, ptr %l36, !tbaa !24
  %t63 = load ptr, ptr %l2, !tbaa !29
  %t65 = getelementptr %"compiler/ast:TopIf", ptr %t63, i32 0, i32 2
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t68 = icmp eq ptr %t66, null
  br i1 %t68, label %bb16, label %bb17
bb15:
  br label %bb20
bb16:
  call void @__olang_check_failed(ptr @olang_loc_48f6b1615f8729a3_475230e078a39a57)
  unreachable
bb17:
  br label %bb18
bb18:
  %t70 = load ptr, ptr %l2, !tbaa !29
  %t72 = getelementptr %"compiler/ast:TopIf", ptr %t70, i32 0, i32 2
  %t73 = load ptr, ptr %t72, !tbaa !29
  %t74 = load i64, ptr %l3, !tbaa !24
  %t75 = load i64, ptr %l4, !tbaa !24
  %t77 = add i64 %t75, 1
  %t78 = load ptr, ptr %l5, !tbaa !29
  %t79 = load ptr, ptr %l6, !tbaa !29
  %t80 = load ptr, ptr %l35, !tbaa !29
  %t81 = load i64, ptr %l36, !tbaa !24
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2elinksIf(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t80, i64 %t81, ptr %t73, i64 %t74, i64 %t77, ptr %t78, ptr %t79)
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t87 = load ptr, ptr %l2, !tbaa !29
  %t89 = getelementptr %"compiler/ast:TopIf", ptr %t87, i32 0, i32 3
  %t90 = load ptr, ptr %t89, !tbaa !29
  %t92 = icmp eq ptr %t90, null
  %t94 = xor i1 %t92, true
  br i1 %t94, label %bb21, label %bb22
bb21:
  %t96 = load i64, ptr %l3, !tbaa !24
  %t97 = load i64, ptr %l4, !tbaa !24
  %t99 = add i64 %t97, 1
  %t102 = icmp eq i64 %t96, %t99
  store i1 %t102, ptr %l51, !tbaa !21
  br label %bb23
bb22:
  store i1 false, ptr %l51, !tbaa !21
  br label %bb23
bb23:
  %t104 = load i1, ptr %l51, !tbaa !21
  br i1 %t104, label %bb24, label %bb25
bb24:
  %t105 = load ptr, ptr %l2, !tbaa !29
  %t107 = getelementptr %"compiler/ast:TopIf", ptr %t105, i32 0, i32 3
  %t108 = load ptr, ptr %t107, !tbaa !29
  %t110 = icmp eq ptr %t108, null
  br i1 %t110, label %bb26, label %bb27
bb25:
  store i1 false, ptr %l56, !tbaa !21
  br label %bb29
bb26:
  call void @__olang_check_failed(ptr @olang_loc_84ff0c17d81b0522_bd67c888a6b30066)
  unreachable
bb27:
  br label %bb28
bb28:
  %t112 = load ptr, ptr %l2, !tbaa !29
  %t114 = getelementptr %"compiler/ast:TopIf", ptr %t112, i32 0, i32 3
  %t115 = load ptr, ptr %t114, !tbaa !29
  %t118 = getelementptr %"compiler/ast:TopBranch", ptr %t115, i32 0, i32 1
  %t119 = load { i64, ptr }, ptr %t118, !tbaa !27
  %t121 = extractvalue { i64, ptr } %t119, 0
  %t123 = icmp sgt i64 %t121, 0
  store i1 %t123, ptr %l56, !tbaa !21
  br label %bb29
bb29:
  %t125 = load i1, ptr %l56, !tbaa !21
  br i1 %t125, label %bb30, label %bb31
bb30:
  %t126 = load ptr, ptr %l0, !tbaa !29
  store ptr %t126, ptr %l66, !tbaa !29
  %t127 = load i64, ptr %l1, !tbaa !24
  store i64 %t127, ptr %l67, !tbaa !24
  %t128 = load ptr, ptr %l2, !tbaa !29
  %t130 = getelementptr %"compiler/ast:TopIf", ptr %t128, i32 0, i32 3
  %t131 = load ptr, ptr %t130, !tbaa !29
  %t133 = icmp eq ptr %t131, null
  br i1 %t133, label %bb32, label %bb33
bb31:
  br label %bb36
bb32:
  call void @__olang_check_failed(ptr @olang_loc_84ff0c17d81b0522_bd67c888a6b30066)
  unreachable
bb33:
  br label %bb34
bb34:
  %t135 = load ptr, ptr %l2, !tbaa !29
  %t137 = getelementptr %"compiler/ast:TopIf", ptr %t135, i32 0, i32 3
  %t138 = load ptr, ptr %t137, !tbaa !29
  %t141 = getelementptr %"compiler/ast:TopBranch", ptr %t138, i32 0, i32 1
  %t142 = load { i64, ptr }, ptr %t141, !tbaa !27
  %t143 = load ptr, ptr %l5, !tbaa !29
  %t144 = load ptr, ptr %l6, !tbaa !29
  %t145 = load ptr, ptr %l66, !tbaa !29
  %t146 = load i64, ptr %l67, !tbaa !24
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2elinksIn(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t145, i64 %t146, { i64, ptr } %t142, ptr %t143, ptr %t144)
  br label %bb35
bb35:
  br label %bb36
bb36:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fload_2ecompiler_2fload_3aLoader_2elinksIn(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i64 %a1, { i64, ptr } %a2, ptr %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca %"compiler/source:Span"
  %l10 = alloca ptr
  %l18 = alloca { i64, ptr }
  %l21 = alloca ptr
  %l22 = alloca i1
  %l34 = alloca ptr
  %l35 = alloca i1
  %l40 = alloca ptr
  %l41 = alloca i64
  %l42 = alloca ptr
  %l43 = alloca ptr
  %l44 = alloca i64
  %l50 = alloca %"compiler/source:Span"
  %l52 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a3, ptr %l3
  store ptr %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a2, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  store i64 %t5, ptr %l7, !tbaa !24
  br label %bb1
bb1:
  %t7 = load i64, ptr %l6, !tbaa !24
  %t8 = load i64, ptr %l7, !tbaa !24
  %t11 = icmp slt i64 %t7, %t8
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  br label %bb33
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t15, ptr %l18, !tbaa !27
  %t16 = load i64, ptr %l6, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr ptr, ptr %t19, i64 %t16
  %t21 = load ptr, ptr %t20, !tbaa !39
  store ptr %t21, ptr %l8, !tbaa !29
  %t23 = load ptr, ptr %l8, !tbaa !29
  store ptr %t23, ptr %l21, !tbaa !29
  store i1 false, ptr %l22, !tbaa !21
  %t24 = load ptr, ptr %l21, !tbaa !29
  %t25 = icmp ne ptr %t24, null
  br i1 %t25, label %bb5, label %bb6
bb5:
  %t27 = load ptr, ptr %l21, !tbaa !29
  %t28 = load i64, ptr %t27, !range !{i64 0, i64 11}
  %t30 = icmp eq i64 %t28, 10
  store i1 %t30, ptr %l22, !tbaa !21
  br label %bb6
bb6:
  %t31 = load i1, ptr %l22, !tbaa !21
  br i1 %t31, label %bb7, label %bb8
bb7:
  %t32 = load ptr, ptr %l8, !tbaa !29
  %t34 = getelementptr { i64, [8 x i64] }, ptr %t32, i32 0, i32 1
  %t35 = getelementptr { %"compiler/source:Span", %"compiler/source:Span", { i64, ptr } }, ptr %t34, i32 0, i32 1
  %t36 = load %"compiler/source:Span", ptr %t35
  store %"compiler/source:Span" %t36, ptr %l9
  br label %bb9
bb8:
  br label %bb14
bb9:
  %t38 = getelementptr %"compiler/source:Span", ptr %l9, i32 0, i32 1
  %t39 = load i32, ptr %t38, !tbaa !23
  %t41 = icmp sgt i32 %t39, 0
  br i1 %t41, label %bb10, label %bb11
bb10:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = load i64, ptr %l1, !tbaa !24
  %t45 = load %"compiler/source:Span", ptr %l9
  %t46 = load ptr, ptr %l3, !tbaa !29
  %t47 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2eaddLink(ptr %v0, ptr %v2, ptr %v3, ptr %t43, i64 %t44, %"compiler/source:Span" %t45, ptr %t46, ptr %t47)
  br label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb13
bb13:
  br label %bb31
bb14:
  %t53 = load ptr, ptr %l8, !tbaa !29
  store ptr %t53, ptr %l34, !tbaa !29
  store i1 false, ptr %l35, !tbaa !21
  %t54 = load ptr, ptr %l34, !tbaa !29
  %t55 = icmp ne ptr %t54, null
  br i1 %t55, label %bb15, label %bb16
bb15:
  %t57 = load ptr, ptr %l34, !tbaa !29
  %t58 = load i64, ptr %t57, !range !{i64 0, i64 11}
  %t60 = icmp eq i64 %t58, 7
  store i1 %t60, ptr %l35, !tbaa !21
  br label %bb16
bb16:
  %t61 = load i1, ptr %l35, !tbaa !21
  br i1 %t61, label %bb17, label %bb18
bb17:
  %t62 = load ptr, ptr %l8, !tbaa !29
  %t64 = getelementptr { i64, [8 x i64] }, ptr %t62, i32 0, i32 1
  %t65 = getelementptr { %"compiler/source:Span", ptr }, ptr %t64, i32 0, i32 1
  %t66 = load ptr, ptr %t65
  store ptr %t66, ptr %l10, !tbaa !29
  br label %bb19
bb18:
  br label %bb26
bb19:
  %t68 = load ptr, ptr %l0, !tbaa !29
  store ptr %t68, ptr %l40, !tbaa !29
  %t69 = load i64, ptr %l1, !tbaa !24
  store i64 %t69, ptr %l41, !tbaa !24
  %t70 = load ptr, ptr %l10, !tbaa !29
  store ptr %t70, ptr %l42, !tbaa !29
  %t71 = load ptr, ptr %l0, !tbaa !29
  store ptr %t71, ptr %l43, !tbaa !29
  %t72 = load i64, ptr %l1, !tbaa !24
  store i64 %t72, ptr %l44, !tbaa !24
  %t73 = load ptr, ptr %l10, !tbaa !29
  %t75 = getelementptr %"compiler/ast:TopIf", ptr %t73, i32 0, i32 0
  %t76 = load ptr, ptr %t75, !tbaa !29
  %t78 = icmp eq ptr %t76, null
  br i1 %t78, label %bb20, label %bb21
bb20:
  call void @__olang_check_failed(ptr @olang_loc_d94d7cabf7c0d80c_70e4be23ec99f380)
  unreachable
bb21:
  br label %bb22
bb22:
  %t80 = load ptr, ptr %l10, !tbaa !29
  %t82 = getelementptr %"compiler/ast:TopIf", ptr %t80, i32 0, i32 0
  %t83 = load ptr, ptr %t82, !tbaa !29
  %t85 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t83)
  store %"compiler/source:Span" %t85, ptr %l50
  br label %bb23
bb23:
  %t86 = getelementptr %"compiler/source:Span", ptr %l50, i32 0, i32 0
  %t87 = load i32, ptr %t86, !tbaa !23
  %t88 = load ptr, ptr %l43, !tbaa !29
  %t89 = load i64, ptr %l44, !tbaa !24
  %t91 = call i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2eChosen(ptr %v0, ptr %t88, i64 %t89, i32 %t87)
  store i64 %t91, ptr %l52
  br label %bb24
bb24:
  %t92 = load ptr, ptr %l3, !tbaa !29
  %t93 = load ptr, ptr %l4, !tbaa !29
  %t94 = load ptr, ptr %l40, !tbaa !29
  %t95 = load i64, ptr %l41, !tbaa !24
  %t96 = load ptr, ptr %l42, !tbaa !29
  %t97 = load i64, ptr %l52, !tbaa !24
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2elinksIf(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t94, i64 %t95, ptr %t96, i64 %t97, i64 0, ptr %t92, ptr %t93)
  br label %bb25
bb25:
  br label %bb31
bb26:
  br i1 true, label %bb27, label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb31
bb30:
  call void @__olang_check_failed(ptr @olang_loc_5b111b92813268a2_708e5f917af86066)
  unreachable
bb31:
  br label %bb32
bb32:
  %t100 = load i64, ptr %l6, !tbaa !24
  %t102 = add i64 %t100, 1
  store i64 %t102, ptr %l6, !tbaa !24
  br label %bb1
bb33:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2eload(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, i1 %a3, i1 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l4 = alloca i1
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca ptr
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca %"compiler/scan:Diag"
  %l22 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l25 = alloca i32
  %l29 = alloca i1
  %l31 = alloca { i64, ptr }
  %l38 = alloca i64
  %l42 = alloca i64
  %l45 = alloca i64
  %l66 = alloca ptr
  %l70 = alloca i1
  %l76 = alloca i64
  %l78 = alloca ptr
  %l79 = alloca i64
  %l83 = alloca { i64, ptr }
  %l84 = alloca i64
  %l88 = alloca { i64, ptr }
  %l89 = alloca i64
  %l95 = alloca %"compiler/load:Module"
  %l100 = alloca ptr
  %l105 = alloca i1
  %l106 = alloca ptr
  %l107 = alloca i64
  %l109 = alloca i64
  %l114 = alloca { i64, ptr }
  %l115 = alloca { i64, ptr }
  %l119 = alloca { i64, ptr }
  %l120 = alloca i32
  %l122 = alloca %"compiler/source:Source"
  %l124 = alloca ptr
  %l126 = alloca ptr
  %l127 = alloca i64
  %l129 = alloca %"compiler/source:Source"
  %l132 = alloca %"compiler/source:Source"
  %l133 = alloca i32
  %l135 = alloca i1
  %l142 = alloca i64
  %l144 = alloca ptr
  %l146 = alloca { i64, [3 x i64] }
  %l147 = alloca %"compiler/diagmsg:Msg"
  %l148 = alloca i64
  %l149 = alloca ptr
  %l152 = alloca ptr
  %l153 = alloca i32
  %l156 = alloca ptr
  %l160 = alloca ptr
  %l162 = alloca ptr
  %l164 = alloca { i64, ptr }
  %l171 = alloca { i64, ptr }
  %l174 = alloca i1
  %l175 = alloca i1
  %l177 = alloca i64
  %l178 = alloca ptr
  %l186 = alloca %"compiler/scan:Tokens"
  %l201 = alloca { i64, ptr }
  %l206 = alloca ptr
  %l213 = alloca { i64, [3 x i64] }
  %l214 = alloca i32
  %l216 = alloca { i64, ptr }
  %l217 = alloca i64
  %l220 = alloca { i64, ptr }
  %l222 = alloca %"compiler/diagmsg:Msg"
  %l223 = alloca i64
  %l228 = alloca ptr
  %l229 = alloca i64
  %l231 = alloca %"compiler/parse:Oracle"
  %l233 = alloca ptr
  %s0 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %rv = alloca i64
  %t191 = alloca %"compiler/load:Module", align 8
  %t331 = alloca { i64, [3 x i64] }, align 8
  %t489 = alloca { i64, [3 x i64] }, align 8
  %t543 = alloca %"compiler/parse:Oracle", align 8
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store i1 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = call { i32, { i64, ptr } } @std_2fos_2eRealPath(ptr %v1, ptr %s0, { i64, ptr } %t1)
  %t4 = extractvalue { i32, { i64, ptr } } %t3, 1
  %t5 = extractvalue { i32, { i64, ptr } } %t3, 0
  store i32 %t5, ptr %l25
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store { i64, ptr } %t4, ptr %l24
  br label %bb1
bb1:
  %t8 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t8, ptr %l22, !tbaa !27
  br label %bb6
bb2:
  %t9 = load i32, ptr %l25, !tbaa !23
  %t10 = ashr i32 %t9, 16
  %t12 = icmp eq i32 %t10, 1
  br i1 %t12, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d77, i32 0, i32 1) }, ptr %l22, !tbaa !27
  br label %bb6
bb6:
  %t14 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t14, ptr %l5, !tbaa !27
  %t15 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t17 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t15, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d78, i32 0, i32 1) })
  store i1 %t17, ptr %l29
  br label %bb7
bb7:
  %t18 = load i1, ptr %l29, !tbaa !21
  %t19 = xor i1 %t18, true
  br i1 %t19, label %bb8, label %bb9
bb8:
  %t21 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t21, 1
  %t24 = extractvalue { i64, ptr } %t21, 0
  %t25 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t24)
  call void @olang_textcopy(ptr %t25, ptr %t23, i64 %t24)
  %t26 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  store { i64, ptr } %t27, ptr %l31, !tbaa !27
  br label %bb10
bb9:
  %t29 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t29, 1
  %t32 = extractvalue { i64, ptr } %t29, 0
  %t33 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t32)
  call void @olang_textcopy(ptr %t33, ptr %t31, i64 %t32)
  %t34 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t35 = insertvalue { i64, ptr } %t34, ptr %t33, 1
  store { i64, ptr } %t35, ptr %l31, !tbaa !27
  br label %bb10
bb10:
  %t37 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t37, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/load:Loader", ptr %t38, i32 0, i32 10
  %t42 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t40)
  store i64 %t42, ptr %l38
  br label %bb11
bb11:
  %t43 = load i64, ptr %l38, !tbaa !24
  store i64 %t43, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t44 = load i64, ptr %l8, !tbaa !24
  %t45 = load i64, ptr %l7, !tbaa !24
  %t48 = icmp sgt i64 %t44, %t45
  br i1 %t48, label %bb12, label %bb13
bb12:
  %t50 = load i64, ptr %l9, !tbaa !24
  %t52 = icmp sgt i64 %t50, 0
  br i1 %t52, label %bb14, label %bb15
bb13:
  store i64 0, ptr %l42, !tbaa !24
  br label %bb17
bb14:
  %t54 = load i64, ptr %l8, !tbaa !24
  %t55 = load i64, ptr %l7, !tbaa !24
  %t58 = sub i64 %t54, %t55
  %t59 = load i64, ptr %l9, !tbaa !24
  %t62 = add i64 %t58, %t59
  %t64 = sub i64 %t62, 1
  %t65 = load i64, ptr %l9, !tbaa !24
  %t68 = sdiv i64 %t64, %t65
  store i64 %t68, ptr %l45, !tbaa !24
  br label %bb16
bb15:
  store i64 0, ptr %l45, !tbaa !24
  br label %bb16
bb16:
  %t70 = load i64, ptr %l45, !tbaa !24
  store i64 %t70, ptr %l42, !tbaa !24
  br label %bb17
bb17:
  %t71 = load i64, ptr %l42, !tbaa !24
  store i64 %t71, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb18
bb18:
  %t72 = load i64, ptr %l11, !tbaa !24
  %t73 = load i64, ptr %l10, !tbaa !24
  %t76 = icmp slt i64 %t72, %t73
  %t78 = xor i1 %t76, true
  br i1 %t78, label %bb19, label %bb20
bb19:
  br label %bb28
bb20:
  br label %bb21
bb21:
  %t80 = load i64, ptr %l7, !tbaa !24
  %t81 = load i64, ptr %l11, !tbaa !24
  %t82 = load i64, ptr %l9, !tbaa !24
  %t85 = mul i64 %t81, %t82
  %t88 = add i64 %t80, %t85
  store i64 %t88, ptr %l12, !tbaa !24
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/load:Loader", ptr %t90, i32 0, i32 10
  %t93 = load i64, ptr %l12, !tbaa !24
  %t96 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t92, i64 %t93)
  store ptr %t96, ptr %l66
  br label %bb22
bb22:
  %t97 = load ptr, ptr %l66, !tbaa !29
  %t99 = getelementptr %"compiler/load:Module", ptr %t97, i32 0, i32 1
  %t100 = load { i64, ptr }, ptr %t99, !tbaa !27
  %t101 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t104 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t100, { i64, ptr } %t101)
  store i1 %t104, ptr %l70
  br label %bb23
bb23:
  %t105 = load i1, ptr %l70, !tbaa !21
  br i1 %t105, label %bb24, label %bb25
bb24:
  %t106 = load i64, ptr %l12, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t106, ptr %rv
  br label %ret
bb25:
  br label %bb26
bb26:
  br label %bb27
bb27:
  %t108 = load i64, ptr %l11, !tbaa !24
  %t110 = add i64 %t108, 1
  store i64 %t110, ptr %l11, !tbaa !24
  br label %bb18
bb28:
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"compiler/load:Loader", ptr %t112, i32 0, i32 10
  %t116 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t114)
  store i64 %t116, ptr %l76
  br label %bb29
bb29:
  %t117 = load i64, ptr %l76, !tbaa !24
  store i64 %t117, ptr %l13, !tbaa !24
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = getelementptr %"compiler/load:Loader", ptr %t118, i32 0, i32 10
  store ptr %t120, ptr %l78, !tbaa !29
  %t121 = ptrtoint ptr %v0 to i64
  store i64 %t121, ptr %l79, !tbaa !24
  %t122 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e0
  br i1 %t122, label %bb30, label %bb31
bb30:
  %t124 = call ptr @__olang_region_make(ptr %v0)
  %t125 = ptrtoint ptr %t124 to i64
  store i64 %t125, ptr %l79, !tbaa !24
  br label %bb31
bb31:
  %t126 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t128 = extractvalue { i64, ptr } %t126, 1
  %t129 = extractvalue { i64, ptr } %t126, 0
  %t130 = load i64, ptr %l79
  %t131 = inttoptr i64 %t130 to ptr
  %t132 = call ptr @__olang_scope_alloc(ptr %t131, i64 %t129)
  call void @olang_textcopy(ptr %t132, ptr %t128, i64 %t129)
  %t133 = insertvalue { i64, ptr } undef, i64 %t129, 0
  %t134 = insertvalue { i64, ptr } %t133, ptr %t132, 1
  %t136 = load i64, ptr %l79
  %t137 = inttoptr i64 %t136 to ptr
  %t138 = extractvalue { i64, ptr } %t134, 0
  %t139 = extractvalue { i64, ptr } %t134, 1
  %t140 = mul i64 %t138, 1
  %t141 = call ptr @__olang_scope_alloc(ptr %t137, i64 %t140)
  call void @llvm.memcpy.p0.p0.i64(ptr %t141, ptr %t139, i64 %t140, i1 false)
  %t142 = insertvalue { i64, ptr } undef, i64 %t138, 0
  %t143 = insertvalue { i64, ptr } %t142, ptr %t141, 1
  store { i64, ptr } %t143, ptr %l83, !tbaa !27
  %t144 = ptrtoint ptr %v0 to i64
  store i64 %t144, ptr %l84, !tbaa !24
  %t145 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e1
  br i1 %t145, label %bb32, label %bb33
bb32:
  %t147 = call ptr @__olang_region_make(ptr %v0)
  %t148 = ptrtoint ptr %t147 to i64
  store i64 %t148, ptr %l84, !tbaa !24
  br label %bb33
bb33:
  %t149 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t151 = extractvalue { i64, ptr } %t149, 1
  %t152 = extractvalue { i64, ptr } %t149, 0
  %t153 = load i64, ptr %l84
  %t154 = inttoptr i64 %t153 to ptr
  %t155 = call ptr @__olang_scope_alloc(ptr %t154, i64 %t152)
  call void @olang_textcopy(ptr %t155, ptr %t151, i64 %t152)
  %t156 = insertvalue { i64, ptr } undef, i64 %t152, 0
  %t157 = insertvalue { i64, ptr } %t156, ptr %t155, 1
  %t159 = load i64, ptr %l84
  %t160 = inttoptr i64 %t159 to ptr
  %t161 = extractvalue { i64, ptr } %t157, 0
  %t162 = extractvalue { i64, ptr } %t157, 1
  %t163 = mul i64 %t161, 1
  %t164 = call ptr @__olang_scope_alloc(ptr %t160, i64 %t163)
  call void @llvm.memcpy.p0.p0.i64(ptr %t164, ptr %t162, i64 %t163, i1 false)
  %t165 = insertvalue { i64, ptr } undef, i64 %t161, 0
  %t166 = insertvalue { i64, ptr } %t165, ptr %t164, 1
  store { i64, ptr } %t166, ptr %l88, !tbaa !27
  %t167 = ptrtoint ptr %v0 to i64
  store i64 %t167, ptr %l89, !tbaa !24
  %t168 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e2
  br i1 %t168, label %bb34, label %bb35
bb34:
  %t170 = call ptr @__olang_region_make(ptr %v0)
  %t171 = ptrtoint ptr %t170 to i64
  store i64 %t171, ptr %l89, !tbaa !24
  br label %bb35
bb35:
  %t174 = extractvalue { i64, ptr } %a2, 1
  %t175 = extractvalue { i64, ptr } %a2, 0
  %t176 = load i64, ptr %l89
  %t177 = inttoptr i64 %t176 to ptr
  %t178 = call ptr @__olang_scope_alloc(ptr %t177, i64 %t175)
  call void @olang_textcopy(ptr %t178, ptr %t174, i64 %t175)
  %t179 = insertvalue { i64, ptr } undef, i64 %t175, 0
  %t180 = insertvalue { i64, ptr } %t179, ptr %t178, 1
  %t182 = load i64, ptr %l89
  %t183 = inttoptr i64 %t182 to ptr
  %t184 = extractvalue { i64, ptr } %t180, 0
  %t185 = extractvalue { i64, ptr } %t180, 1
  %t186 = mul i64 %t184, 1
  %t187 = call ptr @__olang_scope_alloc(ptr %t183, i64 %t186)
  call void @llvm.memcpy.p0.p0.i64(ptr %t187, ptr %t185, i64 %t186, i1 false)
  %t188 = insertvalue { i64, ptr } undef, i64 %t184, 0
  %t189 = insertvalue { i64, ptr } %t188, ptr %t187, 1
  %t192 = load { i64, ptr }, ptr %l83, !tbaa !27
  %t193 = load { i64, ptr }, ptr %l88, !tbaa !27
  call void @compiler_2fload_3aModule_2ector(ptr %t191, ptr %v0, ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t192, { i64, ptr } %t193, { i64, ptr } %t189, i1 %a3)
  call void @llvm.memmove.p0.p0.i64(ptr %l95, ptr %t191, i64 768, i1 false)
  br label %bb36
bb36:
  %t196 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 768, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t196, ptr %l95, i64 768, i1 false)
  %t197 = load ptr, ptr %l78, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hadc5a27c7dd302cda1d0e8a7732d6686(ptr %v0, ptr %v0, ptr %t197, ptr %t196)
  br label %bb37
bb37:
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t201 = getelementptr %"compiler/load:Loader", ptr %t199, i32 0, i32 10
  %t202 = load i64, ptr %l13, !tbaa !24
  %t205 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t201, i64 %t202)
  store ptr %t205, ptr %l100
  br label %bb38
bb38:
  %t206 = load ptr, ptr %l100, !tbaa !29
  store ptr %t206, ptr %l14, !tbaa !29
  %t207 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t211 = getelementptr %"compiler/load:Loader", ptr %t209, i32 0, i32 13
  %t215 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_He27db0a1785588531472bfd2db42574f(ptr %v0, ptr %s0, ptr %t211, { i64, ptr } %t207)
  store i1 %t215, ptr %l105
  br label %bb39
bb39:
  %t216 = load i1, ptr %l105, !tbaa !21
  br i1 %t216, label %bb40, label %bb41
bb40:
  %t217 = load ptr, ptr %l14, !tbaa !29
  store ptr %t217, ptr %l106, !tbaa !29
  %t218 = ptrtoint ptr %v0 to i64
  store i64 %t218, ptr %l107, !tbaa !24
  %t219 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e6
  br i1 %t219, label %bb42, label %bb43
bb41:
  %t221 = load ptr, ptr %l14, !tbaa !29
  store ptr %t221, ptr %l126, !tbaa !29
  %t222 = ptrtoint ptr %v0 to i64
  store i64 %t222, ptr %l127, !tbaa !24
  %t223 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e6
  br i1 %t223, label %bb54, label %bb55
bb42:
  %t225 = call ptr @__olang_region_make(ptr %v0)
  %t226 = ptrtoint ptr %t225 to i64
  store i64 %t226, ptr %l107, !tbaa !24
  br label %bb43
bb43:
  %t227 = load i64, ptr %l107
  %t228 = inttoptr i64 %t227 to ptr
  %t229 = ptrtoint ptr %t228 to i64
  store i64 %t229, ptr %l109, !tbaa !24
  %t230 = load i1, ptr @olang_2esole_2ecompiler_2fsource_3aSource_2e0
  br i1 %t230, label %bb44, label %bb45
bb44:
  %t232 = load i64, ptr %l107
  %t233 = inttoptr i64 %t232 to ptr
  %t234 = call ptr @__olang_region_make(ptr %t233)
  %t235 = ptrtoint ptr %t234 to i64
  store i64 %t235, ptr %l109, !tbaa !24
  br label %bb45
bb45:
  %t236 = load ptr, ptr %l14, !tbaa !29
  %t238 = getelementptr %"compiler/load:Module", ptr %t236, i32 0, i32 0
  %t239 = load { i64, ptr }, ptr %t238, !tbaa !27
  %t241 = extractvalue { i64, ptr } %t239, 1
  %t242 = extractvalue { i64, ptr } %t239, 0
  %t243 = load i64, ptr %l109
  %t244 = inttoptr i64 %t243 to ptr
  %t245 = call ptr @__olang_scope_alloc(ptr %t244, i64 %t242)
  call void @olang_textcopy(ptr %t245, ptr %t241, i64 %t242)
  %t246 = insertvalue { i64, ptr } undef, i64 %t242, 0
  %t247 = insertvalue { i64, ptr } %t246, ptr %t245, 1
  %t249 = load i64, ptr %l109
  %t250 = inttoptr i64 %t249 to ptr
  %t251 = extractvalue { i64, ptr } %t247, 0
  %t252 = extractvalue { i64, ptr } %t247, 1
  %t253 = mul i64 %t251, 1
  %t254 = call ptr @__olang_scope_alloc(ptr %t250, i64 %t253)
  call void @llvm.memcpy.p0.p0.i64(ptr %t254, ptr %t252, i64 %t253, i1 false)
  %t255 = insertvalue { i64, ptr } undef, i64 %t251, 0
  %t256 = insertvalue { i64, ptr } %t255, ptr %t254, 1
  store { i64, ptr } %t256, ptr %l114, !tbaa !27
  %t257 = load ptr, ptr %l0, !tbaa !29
  %t259 = getelementptr %"compiler/load:Loader", ptr %t257, i32 0, i32 13
  %t260 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t263 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha4444909f5ef14f7626d25b8f59e6ba2(ptr %v0, ptr %s0, ptr %v0, ptr %t259, { i64, ptr } %t260)
  %t264 = extractvalue { i32, { i64, ptr } } %t263, 1
  %t265 = extractvalue { i32, { i64, ptr } } %t263, 0
  store i32 %t265, ptr %l120
  %t266 = icmp ne i32 %t265, 0
  br i1 %t266, label %bb47, label %ok.267, !prof !99
ok.267:
  store { i64, ptr } %t264, ptr %l119
  br label %bb46
bb46:
  %t268 = load { i64, ptr }, ptr %l119, !tbaa !27
  store { i64, ptr } %t268, ptr %l115, !tbaa !27
  br label %bb50
bb47:
  %t269 = load i32, ptr %l120, !tbaa !23
  %t270 = icmp eq i32 %t269, 65536
  br i1 %t270, label %bb48, label %bb49
bb48:
  call void @__olang_bang_failed_plain(ptr @olang_loc_67b56c0a83b8bd03_8d743f7b3592caff)
  unreachable
bb49:
  call void @__olang_bang_failed_plain(ptr @olang_loc_867763f6879c47c1_85ff3e3f6e82a415)
  unreachable
bb50:
  %t272 = load i64, ptr %l107
  %t273 = inttoptr i64 %t272 to ptr
  %t274 = load i64, ptr %l107
  %t275 = inttoptr i64 %t274 to ptr
  %t276 = load { i64, ptr }, ptr %l114, !tbaa !27
  %t277 = load { i64, ptr }, ptr %l115, !tbaa !27
  %t278 = call %"compiler/source:Source" @compiler_2fsource_3aSource_2ector(ptr %t273, ptr %v0, ptr %t275, { i64, ptr } %t276, { i64, ptr } %t277)
  store %"compiler/source:Source" %t278, ptr %l122
  br label %bb51
bb51:
  %t279 = load %"compiler/source:Source", ptr %l122
  %t280 = load i64, ptr %l107
  %t281 = inttoptr i64 %t280 to ptr
  %t282 = call ptr @__olang_scope_alloc_a(ptr %t281, i64 48, i64 8)
  store %"compiler/source:Source" %t279, ptr %t282
  %t283 = load ptr, ptr %l106, !tbaa !29
  %t284 = getelementptr %"compiler/load:Module", ptr %t283, i32 0, i32 6
  %t285 = load ptr, ptr %t284, !tbaa !29
  store ptr %t285, ptr %l124, !tbaa !29
  %t287 = load ptr, ptr %l106, !tbaa !29
  %t288 = getelementptr %"compiler/load:Module", ptr %t287, i32 0, i32 6
  store ptr %t282, ptr %t288, !tbaa !29
  %t289 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e6
  br i1 %t289, label %bb52, label %bb53
bb52:
  %t291 = load ptr, ptr %l124
  call void @__olang_region_release(ptr %t291)
  store ptr null, ptr %l124
  br label %bb53
bb53:
  br label %bb71
bb54:
  %t292 = call ptr @__olang_region_make(ptr %v0)
  %t293 = ptrtoint ptr %t292 to i64
  store i64 %t293, ptr %l127, !tbaa !24
  br label %bb55
bb55:
  %t294 = load ptr, ptr %l14, !tbaa !29
  %t296 = getelementptr %"compiler/load:Module", ptr %t294, i32 0, i32 0
  %t297 = load { i64, ptr }, ptr %t296, !tbaa !27
  %t299 = call { i32, %"compiler/source:Source" } @compiler_2fsource_2eSource_2eRead(ptr %v0, ptr %v0, { i64, ptr } %t297)
  %t300 = extractvalue { i32, %"compiler/source:Source" } %t299, 1
  %t301 = extractvalue { i32, %"compiler/source:Source" } %t299, 0
  store i32 %t301, ptr %l133
  %t302 = icmp ne i32 %t301, 0
  br i1 %t302, label %bb57, label %ok.303, !prof !99
ok.303:
  store %"compiler/source:Source" %t300, ptr %l132
  br label %bb56
bb56:
  %t304 = load %"compiler/source:Source", ptr %l132
  store %"compiler/source:Source" %t304, ptr %l129
  br label %bb68
bb57:
  %t305 = load i32, ptr %l133, !tbaa !23
  %t306 = ashr i32 %t305, 16
  %t308 = icmp eq i32 %t306, 1
  store i1 %t308, ptr %l135, !tbaa !21
  %t309 = load i32, ptr %l133, !tbaa !23
  %t310 = ashr i32 %t309, 16
  %t312 = icmp eq i32 %t310, 1
  br i1 %t312, label %bb58, label %bb59
bb58:
  call void @__olang_errpay_pop()
  br label %bb59
bb59:
  br label %bb60
bb60:
  store %olang.scope zeroinitializer, ptr %s13
  %t314 = load ptr, ptr %l0, !tbaa !29
  %t316 = getelementptr %"compiler/load:Loader", ptr %t314, i32 0, i32 4
  %t317 = load ptr, ptr %t316, !tbaa !29
  %t318 = load ptr, ptr %l14, !tbaa !29
  %t320 = getelementptr %"compiler/load:Module", ptr %t318, i32 0, i32 0
  %t321 = load { i64, ptr }, ptr %t320, !tbaa !27
  %t324 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eAddFile(ptr %v0, ptr %v0, ptr %v0, ptr %t317, { i64, ptr } %t321, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d79, i32 0, i32 1) }, i1 false)
  store i64 %t324, ptr %l142
  br label %bb61
bb61:
  %t325 = load i64, ptr %l142, !tbaa !24
  %t326 = load ptr, ptr %l0, !tbaa !29
  %t328 = getelementptr %"compiler/load:Loader", ptr %t326, i32 0, i32 4
  %t329 = load ptr, ptr %t328, !tbaa !29
  store ptr %t329, ptr %l144, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t331
  %t332 = getelementptr { i64, [3 x i64] }, ptr %t331, i32 0, i32 0
  store i64 1, ptr %t332
  %t334 = insertvalue { i64 } undef, i64 %t325, 0
  %t335 = getelementptr { i64, [3 x i64] }, ptr %t331, i32 0, i32 1
  store { i64 } %t334, ptr %t335
  %t336 = load { i64, [3 x i64] }, ptr %t331
  store { i64, [3 x i64] } %t336, ptr %l146
  %t337 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCannotOpen(ptr %s13)
  store %"compiler/diagmsg:Msg" %t337, ptr %l147
  br label %bb62
bb62:
  %t338 = load ptr, ptr %l144, !tbaa !29
  %t339 = load { i64, [3 x i64] }, ptr %l146
  %t340 = load %"compiler/diagmsg:Msg", ptr %l147
  %t341 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s13, ptr %t338, { i64, [3 x i64] } %t339, %"compiler/diagmsg:Msg" %t340)
  store i64 %t341, ptr %l148
  br label %bb63
bb63:
  %t342 = load ptr, ptr %l0, !tbaa !29
  %t344 = getelementptr %"compiler/load:Loader", ptr %t342, i32 0, i32 10
  %t346 = call { i32, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H30b952b85dc190b6cd5306b9d98a7749(ptr %v0, ptr %v0, ptr %t344)
  %t347 = extractvalue { i32, ptr } %t346, 1
  %t348 = extractvalue { i32, ptr } %t346, 0
  store i32 %t348, ptr %l153
  %t349 = icmp ne i32 %t348, 0
  br i1 %t349, label %bb65, label %ok.350, !prof !99
ok.350:
  store ptr %t347, ptr %l152
  br label %bb64
bb64:
  %t351 = load ptr, ptr %l152, !tbaa !29
  store ptr %t351, ptr %l149, !tbaa !29
  br label %bb67
bb65:
  br label %bb66
bb66:
  br label %bb67
bb67:
  call void @__olang_scope_close(ptr %s13)
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb68:
  %t353 = load %"compiler/source:Source", ptr %l129
  %t354 = load i64, ptr %l127
  %t355 = inttoptr i64 %t354 to ptr
  %t356 = call ptr @__olang_scope_alloc_a(ptr %t355, i64 48, i64 8)
  store %"compiler/source:Source" %t353, ptr %t356
  %t357 = load ptr, ptr %l126, !tbaa !29
  %t358 = getelementptr %"compiler/load:Module", ptr %t357, i32 0, i32 6
  %t359 = load ptr, ptr %t358, !tbaa !29
  store ptr %t359, ptr %l156, !tbaa !29
  %t361 = load ptr, ptr %l126, !tbaa !29
  %t362 = getelementptr %"compiler/load:Module", ptr %t361, i32 0, i32 6
  store ptr %t356, ptr %t362, !tbaa !29
  %t363 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e6
  br i1 %t363, label %bb69, label %bb70
bb69:
  %t365 = load ptr, ptr %l156
  call void @__olang_region_release(ptr %t365)
  store ptr null, ptr %l156
  br label %bb70
bb70:
  br label %bb71
bb71:
  %t366 = load ptr, ptr %l14, !tbaa !29
  %t367 = load i1, ptr %l4, !tbaa !21
  %t370 = getelementptr %"compiler/load:Module", ptr %t366, i32 0, i32 30
  store i1 %t367, ptr %t370, !tbaa !21
  %t371 = load ptr, ptr %l14, !tbaa !29
  store ptr %t371, ptr %l160, !tbaa !29
  %t372 = load ptr, ptr %l0, !tbaa !29
  %t374 = getelementptr %"compiler/load:Loader", ptr %t372, i32 0, i32 4
  %t375 = load ptr, ptr %t374, !tbaa !29
  store ptr %t375, ptr %l162, !tbaa !29
  %t376 = load ptr, ptr %l14, !tbaa !29
  %t378 = getelementptr %"compiler/load:Module", ptr %t376, i32 0, i32 0
  %t379 = load { i64, ptr }, ptr %t378, !tbaa !27
  store { i64, ptr } %t379, ptr %l164, !tbaa !27
  %t380 = load ptr, ptr %l14, !tbaa !29
  %t382 = getelementptr %"compiler/load:Module", ptr %t380, i32 0, i32 6
  %t383 = load ptr, ptr %t382, !tbaa !29
  %t385 = icmp eq ptr %t383, null
  br i1 %t385, label %bb72, label %bb73
bb72:
  call void @__olang_check_failed(ptr @olang_loc_bf0719959bfa757a_6a83aba191150c56)
  unreachable
bb73:
  br label %bb74
bb74:
  %t387 = load ptr, ptr %l14, !tbaa !29
  %t389 = getelementptr %"compiler/load:Module", ptr %t387, i32 0, i32 6
  %t390 = load ptr, ptr %t389, !tbaa !29
  %t393 = getelementptr %"compiler/source:Source", ptr %t390, i32 0, i32 1
  %t394 = load { i64, ptr }, ptr %t393, !tbaa !27
  store { i64, ptr } %t394, ptr %l171, !tbaa !27
  %t395 = load ptr, ptr %l14, !tbaa !29
  %t397 = getelementptr %"compiler/load:Module", ptr %t395, i32 0, i32 2
  %t398 = load { i64, ptr }, ptr %t397, !tbaa !27
  %t400 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t398, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d80, i32 0, i32 1) })
  store i1 %t400, ptr %l174
  br label %bb75
bb75:
  %t401 = load i1, ptr %l174, !tbaa !21
  br i1 %t401, label %bb76, label %bb77
bb76:
  store i1 true, ptr %l175, !tbaa !21
  br label %bb78
bb77:
  %t402 = load i1, ptr %l4, !tbaa !21
  store i1 %t402, ptr %l175, !tbaa !21
  br label %bb78
bb78:
  %t404 = load ptr, ptr %l162, !tbaa !29
  %t405 = load { i64, ptr }, ptr %l164, !tbaa !27
  %t406 = load { i64, ptr }, ptr %l171, !tbaa !27
  %t407 = load i1, ptr %l175, !tbaa !21
  %t408 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eAddFile(ptr %v0, ptr %v0, ptr %v0, ptr %t404, { i64, ptr } %t405, { i64, ptr } %t406, i1 %t407)
  store i64 %t408, ptr %l177
  br label %bb79
bb79:
  %t409 = load i64, ptr %l177, !tbaa !24
  %t410 = load ptr, ptr %l160, !tbaa !29
  %t411 = getelementptr %"compiler/load:Module", ptr %t410, i32 0, i32 4
  store i64 %t409, ptr %t411, !tbaa !24
  %t412 = load ptr, ptr %l14, !tbaa !29
  store ptr %t412, ptr %l178, !tbaa !29
  %t413 = load ptr, ptr %l14, !tbaa !29
  %t415 = getelementptr %"compiler/load:Module", ptr %t413, i32 0, i32 6
  %t416 = load ptr, ptr %t415, !tbaa !29
  %t418 = icmp eq ptr %t416, null
  br i1 %t418, label %bb80, label %bb81
bb80:
  call void @__olang_check_failed(ptr @olang_loc_97fda29c929b9401_a297b77e137a783d)
  unreachable
bb81:
  br label %bb82
bb82:
  %t420 = load ptr, ptr %l14, !tbaa !29
  %t422 = getelementptr %"compiler/load:Module", ptr %t420, i32 0, i32 6
  %t423 = load ptr, ptr %t422, !tbaa !29
  %t426 = getelementptr %"compiler/source:Source", ptr %t423, i32 0, i32 1
  %t427 = load { i64, ptr }, ptr %t426, !tbaa !27
  %t429 = call %"compiler/scan:Tokens" @compiler_2fscan_2eTokens_2eScan(ptr %v0, ptr %v0, { i64, ptr } %t427)
  store %"compiler/scan:Tokens" %t429, ptr %l186
  br label %bb83
bb83:
  %t430 = load %"compiler/scan:Tokens", ptr %l186
  %t431 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 64, i64 8)
  store %"compiler/scan:Tokens" %t430, ptr %t431
  %t433 = load ptr, ptr %l178, !tbaa !29
  %t434 = getelementptr %"compiler/load:Module", ptr %t433, i32 0, i32 7
  store ptr %t431, ptr %t434, !tbaa !29
  %t435 = load ptr, ptr %l14, !tbaa !29
  %t437 = getelementptr %"compiler/load:Module", ptr %t435, i32 0, i32 7
  %t438 = load ptr, ptr %t437, !tbaa !29
  %t440 = icmp eq ptr %t438, null
  br i1 %t440, label %bb84, label %bb85
bb84:
  call void @__olang_check_failed(ptr @olang_loc_8eb73d0fe26fae48_56cde13f0d79d76c)
  unreachable
bb85:
  br label %bb86
bb86:
  %t442 = load ptr, ptr %l14, !tbaa !29
  %t444 = getelementptr %"compiler/load:Module", ptr %t442, i32 0, i32 7
  %t445 = load ptr, ptr %t444, !tbaa !29
  %t448 = getelementptr %"compiler/scan:Tokens", ptr %t445, i32 0, i32 3
  %t449 = load { i64, ptr }, ptr %t448, !tbaa !27
  store { i64, ptr } %t449, ptr %l17, !tbaa !27
  store i64 0, ptr %l18, !tbaa !24
  %t451 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t453 = extractvalue { i64, ptr } %t451, 0
  store i64 %t453, ptr %l19, !tbaa !24
  br label %bb87
bb87:
  store %olang.scope zeroinitializer, ptr %s16
  %t455 = load i64, ptr %l18, !tbaa !24
  %t456 = load i64, ptr %l19, !tbaa !24
  %t459 = icmp slt i64 %t455, %t456
  %t461 = xor i1 %t459, true
  br i1 %t461, label %bb88, label %bb89
bb88:
  call void @__olang_scope_close(ptr %s16)
  br label %bb98
bb89:
  br label %bb90
bb90:
  %t463 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t463, ptr %l201, !tbaa !27
  %t464 = load i64, ptr %l18, !tbaa !24
  %t466 = getelementptr { i64, ptr }, ptr %l201, i32 0, i32 1
  %t467 = load ptr, ptr %t466, !tbaa !27
  %t468 = getelementptr %"compiler/scan:Diag", ptr %t467, i64 %t464
  %t469 = load %"compiler/scan:Diag", ptr %t468
  store %"compiler/scan:Diag" %t469, ptr %l20
  %t471 = getelementptr %"compiler/scan:Diag", ptr %l20, i32 0, i32 1
  %t472 = load i32, ptr %t471, !tbaa !23
  %t474 = load ptr, ptr %l0, !tbaa !29
  %t476 = getelementptr %"compiler/load:Loader", ptr %t474, i32 0, i32 4
  %t477 = load ptr, ptr %t476, !tbaa !29
  store ptr %t477, ptr %l206, !tbaa !29
  %t478 = load ptr, ptr %l14, !tbaa !29
  %t480 = getelementptr %"compiler/load:Module", ptr %t478, i32 0, i32 4
  %t481 = load i64, ptr %t480, !tbaa !24
  %t484 = sext i32 %t472 to i64
  %t485 = getelementptr %"compiler/scan:Diag", ptr %l20, i32 0, i32 2
  %t486 = load i32, ptr %t485, !tbaa !23
  %t488 = sext i32 %t486 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t489
  %t490 = getelementptr { i64, [3 x i64] }, ptr %t489, i32 0, i32 0
  store i64 3, ptr %t490
  %t492 = insertvalue { i64, i64, i64 } undef, i64 %t481, 0
  %t494 = insertvalue { i64, i64, i64 } %t492, i64 %t484, 1
  %t496 = insertvalue { i64, i64, i64 } %t494, i64 %t488, 2
  %t497 = getelementptr { i64, [3 x i64] }, ptr %t489, i32 0, i32 1
  store { i64, i64, i64 } %t496, ptr %t497
  %t498 = load { i64, [3 x i64] }, ptr %t489
  store { i64, [3 x i64] } %t498, ptr %l213
  store i32 57, ptr %l214
  %t499 = load %"compiler/scan:Diag", ptr %l20
  %t501 = call { i64, ptr } @compiler_2fscan_2ecompiler_2fscan_3aDiag_2eRule(ptr %s16, %"compiler/scan:Diag" %t499)
  store { i64, ptr } %t501, ptr %l216
  br label %bb91
bb91:
  %t502 = ptrtoint ptr %s16 to i64
  store i64 %t502, ptr %l217, !tbaa !24
  %t503 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t503, label %bb92, label %bb93
bb92:
  %t505 = call ptr @__olang_region_make(ptr %s16)
  %t506 = ptrtoint ptr %t505 to i64
  store i64 %t506, ptr %l217, !tbaa !24
  br label %bb93
bb93:
  %t507 = load %"compiler/scan:Diag", ptr %l20
  %t508 = load i64, ptr %l217
  %t509 = inttoptr i64 %t508 to ptr
  %t511 = call { i64, ptr } @compiler_2fscan_2ecompiler_2fscan_3aDiag_2eMessage(ptr %t509, %"compiler/scan:Diag" %t507)
  store { i64, ptr } %t511, ptr %l220
  br label %bb94
bb94:
  %t512 = load { i64, ptr }, ptr %l220, !tbaa !27
  %t513 = load i64, ptr %l217
  %t514 = inttoptr i64 %t513 to ptr
  %t515 = extractvalue { i64, ptr } %t512, 0
  %t516 = extractvalue { i64, ptr } %t512, 1
  %t517 = mul i64 %t515, 1
  %t518 = call ptr @__olang_scope_alloc(ptr %t514, i64 %t517)
  call void @llvm.memcpy.p0.p0.i64(ptr %t518, ptr %t516, i64 %t517, i1 false)
  %t519 = insertvalue { i64, ptr } undef, i64 %t515, 0
  %t520 = insertvalue { i64, ptr } %t519, ptr %t518, 1
  %t521 = load i32, ptr %l214, !range !{i32 0, i32 884}
  %t522 = load { i64, ptr }, ptr %l216, !tbaa !27
  %t524 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %s16, ptr %s16, ptr %s16, i32 %t521, { i64, ptr } %t522, { i64, ptr } %t520)
  store %"compiler/diagmsg:Msg" %t524, ptr %l222
  br label %bb95
bb95:
  %t525 = load ptr, ptr %l206, !tbaa !29
  %t526 = load { i64, [3 x i64] }, ptr %l213
  %t527 = load %"compiler/diagmsg:Msg", ptr %l222
  %t528 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s16, ptr %t525, { i64, [3 x i64] } %t526, %"compiler/diagmsg:Msg" %t527)
  store i64 %t528, ptr %l223
  br label %bb96
bb96:
  call void @__olang_scope_close(ptr %s16)
  br label %bb97
bb97:
  %t529 = load i64, ptr %l18, !tbaa !24
  %t531 = add i64 %t529, 1
  store i64 %t531, ptr %l18, !tbaa !24
  br label %bb87
bb98:
  %t533 = load ptr, ptr %l0, !tbaa !29
  %t534 = load ptr, ptr %l14, !tbaa !29
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2eprescan(ptr %v0, ptr %v0, ptr %t533, ptr %t534)
  br label %bb99
bb99:
  %t537 = load ptr, ptr %l14, !tbaa !29
  store ptr %t537, ptr %l228, !tbaa !29
  %t538 = ptrtoint ptr %v0 to i64
  store i64 %t538, ptr %l229, !tbaa !24
  %t539 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e12
  br i1 %t539, label %bb100, label %bb101
bb100:
  %t541 = call ptr @__olang_region_make(ptr %v0)
  %t542 = ptrtoint ptr %t541 to i64
  store i64 %t542, ptr %l229, !tbaa !24
  br label %bb101
bb101:
  %t544 = load i64, ptr %l229
  %t545 = inttoptr i64 %t544 to ptr
  call void @compiler_2fparse_3aOracle_2ector(ptr %t543, ptr %t545)
  call void @llvm.memmove.p0.p0.i64(ptr %l231, ptr %t543, i64 288, i1 false)
  br label %bb102
bb102:
  %t546 = load i64, ptr %l229
  %t547 = inttoptr i64 %t546 to ptr
  %t548 = call ptr @__olang_scope_alloc_a(ptr %t547, i64 288, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t548, ptr %l231, i64 288, i1 false)
  %t549 = load ptr, ptr %l228, !tbaa !29
  %t550 = getelementptr %"compiler/load:Module", ptr %t549, i32 0, i32 12
  %t551 = load ptr, ptr %t550, !tbaa !29
  store ptr %t551, ptr %l233, !tbaa !29
  %t553 = load ptr, ptr %l228, !tbaa !29
  %t554 = getelementptr %"compiler/load:Module", ptr %t553, i32 0, i32 12
  store ptr %t548, ptr %t554, !tbaa !29
  %t555 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e12
  br i1 %t555, label %bb103, label %bb104
bb103:
  %t557 = load ptr, ptr %l233
  call void @__olang_region_release(ptr %t557)
  store ptr null, ptr %l233
  br label %bb104
bb104:
  %t558 = load ptr, ptr %l0, !tbaa !29
  %t559 = load ptr, ptr %l14, !tbaa !29
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2eownNames(ptr %v0, ptr %v0, ptr %t558, ptr %t559)
  br label %bb105
bb105:
  %t562 = load ptr, ptr %l0, !tbaa !29
  %t563 = load i64, ptr %l13, !tbaa !24
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2eloadImports(ptr %v0, ptr %t562, i64 %t563)
  br label %bb106
bb106:
  %t566 = load ptr, ptr %l0, !tbaa !29
  %t567 = load i64, ptr %l13, !tbaa !24
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2eparse(ptr %v0, ptr %t566, i64 %t567)
  br label %bb107
bb107:
  %t570 = load i64, ptr %l13, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t570, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fload_2ecompiler_2fload_3aLoader_2eloadImports(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca %"compiler/load:Import"
  %l11 = alloca i64
  %l13 = alloca i64
  %l14 = alloca { { i64, ptr }, { i64, ptr } }
  %l17 = alloca i1
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l29 = alloca ptr
  %l32 = alloca i64
  %l36 = alloca i64
  %l39 = alloca i64
  %l60 = alloca %"compiler/load:Import"
  %l63 = alloca i1
  %l69 = alloca i64
  %l75 = alloca ptr
  %l79 = alloca i1
  %l82 = alloca ptr
  %l86 = alloca { i64, [3 x i64] }
  %l88 = alloca %"compiler/diagmsg:Msg"
  %l89 = alloca i64
  %l91 = alloca i1
  %l92 = alloca i1
  %l94 = alloca i1
  %l98 = alloca i64
  %l100 = alloca i1
  %l103 = alloca ptr
  %l107 = alloca { i64, [3 x i64] }
  %l108 = alloca %"compiler/diagmsg:Msg"
  %l109 = alloca i64
  %l110 = alloca { { i64, ptr }, { i64, ptr } }
  %l114 = alloca { { i64, ptr }, { i64, ptr } }
  %l115 = alloca i32
  %l121 = alloca i64
  %l126 = alloca i64
  %l130 = alloca i64
  %l133 = alloca i64
  %l154 = alloca i1
  %l158 = alloca %"compiler/load:Import"
  %l161 = alloca i1
  %l165 = alloca %"compiler/load:Import"
  %l168 = alloca i1
  %l173 = alloca ptr
  %l177 = alloca { i64, [3 x i64] }
  %l179 = alloca %"compiler/diagmsg:Msg"
  %l180 = alloca i64
  %l185 = alloca ptr
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s15 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/load:Loader", ptr %t1, i32 0, i32 10
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  store ptr %t7, ptr %l29
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l29, !tbaa !29
  store ptr %t8, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  %t9 = load ptr, ptr %l2, !tbaa !29
  %t11 = getelementptr %"compiler/load:Module", ptr %t9, i32 0, i32 11
  %t13 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eLen_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %t11)
  store i64 %t13, ptr %l32
  br label %bb2
bb2:
  %t14 = load i64, ptr %l32, !tbaa !24
  store i64 %t14, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t15 = load i64, ptr %l4, !tbaa !24
  %t16 = load i64, ptr %l3, !tbaa !24
  %t19 = icmp sgt i64 %t15, %t16
  br i1 %t19, label %bb3, label %bb4
bb3:
  %t21 = load i64, ptr %l5, !tbaa !24
  %t23 = icmp sgt i64 %t21, 0
  br i1 %t23, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l36, !tbaa !24
  br label %bb8
bb5:
  %t25 = load i64, ptr %l4, !tbaa !24
  %t26 = load i64, ptr %l3, !tbaa !24
  %t29 = sub i64 %t25, %t26
  %t30 = load i64, ptr %l5, !tbaa !24
  %t33 = add i64 %t29, %t30
  %t35 = sub i64 %t33, 1
  %t36 = load i64, ptr %l5, !tbaa !24
  %t39 = sdiv i64 %t35, %t36
  store i64 %t39, ptr %l39, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l39, !tbaa !24
  br label %bb7
bb7:
  %t41 = load i64, ptr %l39, !tbaa !24
  store i64 %t41, ptr %l36, !tbaa !24
  br label %bb8
bb8:
  %t42 = load i64, ptr %l36, !tbaa !24
  store i64 %t42, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb9
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t43 = load i64, ptr %l7, !tbaa !24
  %t44 = load i64, ptr %l6, !tbaa !24
  %t47 = icmp slt i64 %t43, %t44
  %t49 = xor i1 %t47, true
  br i1 %t49, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb89
bb11:
  br label %bb12
bb12:
  %t51 = load i64, ptr %l3, !tbaa !24
  %t52 = load i64, ptr %l7, !tbaa !24
  %t53 = load i64, ptr %l5, !tbaa !24
  %t56 = mul i64 %t52, %t53
  %t59 = add i64 %t51, %t56
  store i64 %t59, ptr %l8, !tbaa !24
  %t61 = load ptr, ptr %l2, !tbaa !29
  %t63 = getelementptr %"compiler/load:Module", ptr %t61, i32 0, i32 11
  %t64 = load i64, ptr %l8, !tbaa !24
  %t67 = call %"compiler/load:Import" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eAt_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %v0, ptr %t63, i64 %t64)
  store %"compiler/load:Import" %t67, ptr %l60
  br label %bb13
bb13:
  %t68 = load %"compiler/load:Import", ptr %l60
  store %"compiler/load:Import" %t68, ptr %l9
  %t69 = getelementptr %"compiler/load:Import", ptr %l9, i32 0, i32 5
  %t70 = load i64, ptr %t69, !tbaa !24
  %t72 = icmp sge i64 %t70, 0
  br i1 %t72, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l63, !tbaa !21
  br label %bb16
bb15:
  %t74 = getelementptr %"compiler/load:Import", ptr %l9, i32 0, i32 5
  %t75 = load i64, ptr %t74, !tbaa !24
  %t77 = icmp eq i64 %t75, -2
  store i1 %t77, ptr %l63, !tbaa !21
  br label %bb16
bb16:
  %t79 = load i1, ptr %l63, !tbaa !21
  br i1 %t79, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s2)
  br label %bb88
bb18:
  br label %bb19
bb19:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load i64, ptr %l1, !tbaa !24
  %t82 = getelementptr %"compiler/load:Import", ptr %l9, i32 0, i32 4
  %t83 = load i64, ptr %t82, !tbaa !24
  %t87 = call i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2etaken(ptr %v0, ptr %t80, i64 %t81, i64 %t83)
  store i64 %t87, ptr %l69
  br label %bb20
bb20:
  %t88 = load i64, ptr %l69, !tbaa !24
  %t89 = icmp ne i64 %t88, 1
  br i1 %t89, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s2)
  br label %bb88
bb22:
  br label %bb23
bb23:
  %t91 = load i64, ptr %l8, !tbaa !24
  store i64 -2, ptr %l11, !tbaa !24
  %t93 = load ptr, ptr %l2, !tbaa !29
  %t95 = getelementptr %"compiler/load:Module", ptr %t93, i32 0, i32 11
  %t99 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eRefMut_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %v0, ptr %t95, i64 %t91)
  store ptr %t99, ptr %l75
  br label %bb24
bb24:
  %t100 = load ptr, ptr %l75, !tbaa !29
  %t102 = load i64, ptr %l11, !tbaa !24
  %t105 = getelementptr %"compiler/load:Import", ptr %t100, i32 0, i32 5
  store i64 %t102, ptr %t105, !tbaa !24
  %t106 = getelementptr %"compiler/load:Import", ptr %l9, i32 0, i32 2
  %t107 = load { i64, ptr }, ptr %t106, !tbaa !27
  %t109 = call i1 @compiler_2fload_2eAliasShape(ptr %v0, { i64, ptr } %t107)
  store i1 %t109, ptr %l79
  br label %bb25
bb25:
  %t110 = load i1, ptr %l79, !tbaa !21
  %t111 = xor i1 %t110, true
  br i1 %t111, label %bb26, label %bb27
bb26:
  store %olang.scope zeroinitializer, ptr %s5
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t115 = getelementptr %"compiler/load:Loader", ptr %t113, i32 0, i32 4
  %t116 = load ptr, ptr %t115, !tbaa !29
  store ptr %t116, ptr %l82, !tbaa !29
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t118 = load ptr, ptr %l2, !tbaa !29
  %t119 = getelementptr %"compiler/load:Import", ptr %l9, i32 0, i32 1
  %t120 = load %"compiler/source:Span", ptr %t119
  %t124 = call { i64, [3 x i64] } @compiler_2fload_2ecompiler_2fload_3aLoader_2eat(ptr %v0, ptr %v0, ptr %t117, ptr %t118, %"compiler/source:Span" %t120)
  store { i64, [3 x i64] } %t124, ptr %l86
  br label %bb28
bb27:
  br label %bb31
bb28:
  %t125 = getelementptr %"compiler/load:Import", ptr %l9, i32 0, i32 2
  %t126 = load { i64, ptr }, ptr %t125, !tbaa !27
  %t128 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportAliasInvalid(ptr %v0, ptr %s5, { i64, ptr } %t126)
  store %"compiler/diagmsg:Msg" %t128, ptr %l88
  br label %bb29
bb29:
  %t129 = load ptr, ptr %l82, !tbaa !29
  %t130 = load { i64, [3 x i64] }, ptr %l86
  %t131 = load %"compiler/diagmsg:Msg", ptr %l88
  %t132 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s5, ptr %t129, { i64, [3 x i64] } %t130, %"compiler/diagmsg:Msg" %t131)
  store i64 %t132, ptr %l89
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s2)
  br label %bb88
bb31:
  store i64 -1, ptr %l13, !tbaa !24
  %t133 = getelementptr %"compiler/load:Import", ptr %l9, i32 0, i32 3
  %t134 = load { i64, ptr }, ptr %t133, !tbaa !27
  %t136 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %s2, { i64, ptr } %t134, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d81, i32 0, i32 1) })
  store i1 %t136, ptr %l91
  br label %bb32
bb32:
  %t137 = load i1, ptr %l91, !tbaa !21
  br i1 %t137, label %bb33, label %bb34
bb33:
  store i1 true, ptr %l92, !tbaa !21
  br label %bb36
bb34:
  %t138 = getelementptr %"compiler/load:Import", ptr %l9, i32 0, i32 3
  %t139 = load { i64, ptr }, ptr %t138, !tbaa !27
  %t141 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %s2, { i64, ptr } %t139, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d82, i32 0, i32 1) })
  store i1 %t141, ptr %l94
  br label %bb35
bb35:
  %t142 = load i1, ptr %l94, !tbaa !21
  store i1 %t142, ptr %l92, !tbaa !21
  br label %bb36
bb36:
  %t143 = load i1, ptr %l92, !tbaa !21
  br i1 %t143, label %bb37, label %bb38
bb37:
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t145 = load i64, ptr %l1, !tbaa !24
  %t146 = load %"compiler/load:Import", ptr %l9
  %t150 = call i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2ecImport(ptr %v0, ptr %v0, ptr %t144, i64 %t145, %"compiler/load:Import" %t146)
  store i64 %t150, ptr %l98
  br label %bb39
bb38:
  store %olang.scope zeroinitializer, ptr %s7
  %t151 = getelementptr %"compiler/load:Import", ptr %l9, i32 0, i32 6
  %t152 = load { i64, ptr }, ptr %t151, !tbaa !27
  %t154 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s7, { i64, ptr } %t152, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d83, i32 0, i32 1) })
  store i1 %t154, ptr %l100
  br label %bb40
bb39:
  %t155 = load i64, ptr %l98, !tbaa !24
  store i64 %t155, ptr %l13, !tbaa !24
  br label %bb52
bb40:
  %t156 = load i1, ptr %l100, !tbaa !21
  %t157 = xor i1 %t156, true
  br i1 %t157, label %bb41, label %bb42
bb41:
  store %olang.scope zeroinitializer, ptr %s8
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t161 = getelementptr %"compiler/load:Loader", ptr %t159, i32 0, i32 4
  %t162 = load ptr, ptr %t161, !tbaa !29
  store ptr %t162, ptr %l103, !tbaa !29
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t164 = load ptr, ptr %l2, !tbaa !29
  %t165 = getelementptr %"compiler/load:Import", ptr %l9, i32 0, i32 7
  %t166 = load %"compiler/source:Span", ptr %t165
  %t170 = call { i64, [3 x i64] } @compiler_2fload_2ecompiler_2fload_3aLoader_2eat(ptr %v0, ptr %v0, ptr %t163, ptr %t164, %"compiler/source:Span" %t166)
  store { i64, [3 x i64] } %t170, ptr %l107
  br label %bb43
bb42:
  br label %bb46
bb43:
  %t171 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLinkOnOlangImport(ptr %s8)
  store %"compiler/diagmsg:Msg" %t171, ptr %l108
  br label %bb44
bb44:
  %t172 = load ptr, ptr %l103, !tbaa !29
  %t173 = load { i64, [3 x i64] }, ptr %l107
  %t174 = load %"compiler/diagmsg:Msg", ptr %l108
  %t175 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s8, ptr %t172, { i64, [3 x i64] } %t173, %"compiler/diagmsg:Msg" %t174)
  store i64 %t175, ptr %l109
  br label %bb45
bb45:
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s2)
  br label %bb88
bb46:
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t177 = load i64, ptr %l1, !tbaa !24
  %t178 = load %"compiler/load:Import", ptr %l9
  %t182 = call { i32, { { i64, ptr }, { i64, ptr } } } @compiler_2fload_2ecompiler_2fload_3aLoader_2eresolve(ptr %v0, ptr %v0, ptr %s7, ptr %t176, i64 %t177, %"compiler/load:Import" %t178)
  %t183 = extractvalue { i32, { { i64, ptr }, { i64, ptr } } } %t182, 1
  %t184 = extractvalue { i32, { { i64, ptr }, { i64, ptr } } } %t182, 0
  store i32 %t184, ptr %l115
  %t185 = icmp ne i32 %t184, 0
  br i1 %t185, label %bb48, label %ok.186, !prof !99
ok.186:
  store { { i64, ptr }, { i64, ptr } } %t183, ptr %l114
  br label %bb47
bb47:
  %t187 = load { { i64, ptr }, { i64, ptr } }, ptr %l114
  store { { i64, ptr }, { i64, ptr } } %t187, ptr %l110
  br label %bb50
bb48:
  br label %bb49
bb49:
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s2)
  br label %bb88
bb50:
  %t188 = load { { i64, ptr }, { i64, ptr } }, ptr %l110
  store { { i64, ptr }, { i64, ptr } } %t188, ptr %l14
  %t189 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l14, i32 0, i32 0
  %t190 = load { i64, ptr }, ptr %t189, !tbaa !27
  %t192 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l14, i32 0, i32 1
  %t193 = load { i64, ptr }, ptr %t192, !tbaa !27
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t201 = call i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2eload(ptr %v0, ptr %s7, ptr %s7, ptr %t195, { i64, ptr } %t190, { i64, ptr } %t193, i1 false, i1 false)
  store i64 %t201, ptr %l121
  br label %bb51
bb51:
  %t202 = load i64, ptr %l121, !tbaa !24
  store i64 %t202, ptr %l13, !tbaa !24
  call void @__olang_scope_close(ptr %s7)
  br label %bb52
bb52:
  %t203 = load i64, ptr %l13, !tbaa !24
  %t205 = icmp slt i64 %t203, 0
  br i1 %t205, label %bb53, label %bb54
bb53:
  call void @__olang_scope_close(ptr %s2)
  br label %bb88
bb54:
  br label %bb55
bb55:
  store i1 false, ptr %l17, !tbaa !21
  store i64 0, ptr %l18, !tbaa !24
  %t207 = load ptr, ptr %l2, !tbaa !29
  %t209 = getelementptr %"compiler/load:Module", ptr %t207, i32 0, i32 11
  %t211 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eLen_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %t209)
  store i64 %t211, ptr %l126
  br label %bb56
bb56:
  %t212 = load i64, ptr %l126, !tbaa !24
  store i64 %t212, ptr %l19, !tbaa !24
  store i64 1, ptr %l20, !tbaa !24
  %t213 = load i64, ptr %l19, !tbaa !24
  %t214 = load i64, ptr %l18, !tbaa !24
  %t217 = icmp sgt i64 %t213, %t214
  br i1 %t217, label %bb57, label %bb58
bb57:
  %t219 = load i64, ptr %l20, !tbaa !24
  %t221 = icmp sgt i64 %t219, 0
  br i1 %t221, label %bb59, label %bb60
bb58:
  store i64 0, ptr %l130, !tbaa !24
  br label %bb62
bb59:
  %t223 = load i64, ptr %l19, !tbaa !24
  %t224 = load i64, ptr %l18, !tbaa !24
  %t227 = sub i64 %t223, %t224
  %t228 = load i64, ptr %l20, !tbaa !24
  %t231 = add i64 %t227, %t228
  %t233 = sub i64 %t231, 1
  %t234 = load i64, ptr %l20, !tbaa !24
  %t237 = sdiv i64 %t233, %t234
  store i64 %t237, ptr %l133, !tbaa !24
  br label %bb61
bb60:
  store i64 0, ptr %l133, !tbaa !24
  br label %bb61
bb61:
  %t239 = load i64, ptr %l133, !tbaa !24
  store i64 %t239, ptr %l130, !tbaa !24
  br label %bb62
bb62:
  %t240 = load i64, ptr %l130, !tbaa !24
  store i64 %t240, ptr %l21, !tbaa !24
  store i64 0, ptr %l22, !tbaa !24
  br label %bb63
bb63:
  store %olang.scope zeroinitializer, ptr %s12
  %t241 = load i64, ptr %l22, !tbaa !24
  %t242 = load i64, ptr %l21, !tbaa !24
  %t245 = icmp slt i64 %t241, %t242
  %t247 = xor i1 %t245, true
  br i1 %t247, label %bb64, label %bb65
bb64:
  call void @__olang_scope_close(ptr %s12)
  br label %bb80
bb65:
  br label %bb66
bb66:
  %t249 = load i64, ptr %l18, !tbaa !24
  %t250 = load i64, ptr %l22, !tbaa !24
  %t251 = load i64, ptr %l20, !tbaa !24
  %t254 = mul i64 %t250, %t251
  %t257 = add i64 %t249, %t254
  store i64 %t257, ptr %l23, !tbaa !24
  %t259 = load i64, ptr %l23, !tbaa !24
  %t260 = load i64, ptr %l8, !tbaa !24
  %t263 = icmp ne i64 %t259, %t260
  br i1 %t263, label %bb67, label %bb68
bb67:
  %t265 = load ptr, ptr %l2, !tbaa !29
  %t267 = getelementptr %"compiler/load:Module", ptr %t265, i32 0, i32 11
  %t268 = load i64, ptr %l23, !tbaa !24
  %t271 = call %"compiler/load:Import" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eAt_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %s12, ptr %t267, i64 %t268)
  store %"compiler/load:Import" %t271, ptr %l158
  br label %bb69
bb68:
  store i1 false, ptr %l154, !tbaa !21
  br label %bb70
bb69:
  %t272 = getelementptr %"compiler/load:Import", ptr %l158, i32 0, i32 5
  %t273 = load i64, ptr %t272, !tbaa !24
  %t275 = icmp sge i64 %t273, 0
  store i1 %t275, ptr %l154, !tbaa !21
  br label %bb70
bb70:
  %t277 = load i1, ptr %l154, !tbaa !21
  br i1 %t277, label %bb71, label %bb72
bb71:
  %t278 = load ptr, ptr %l2, !tbaa !29
  %t280 = getelementptr %"compiler/load:Module", ptr %t278, i32 0, i32 11
  %t281 = load i64, ptr %l23, !tbaa !24
  %t284 = call %"compiler/load:Import" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eAt_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %v0, ptr %t280, i64 %t281)
  store %"compiler/load:Import" %t284, ptr %l165
  br label %bb73
bb72:
  store i1 false, ptr %l161, !tbaa !21
  br label %bb75
bb73:
  %t285 = getelementptr %"compiler/load:Import", ptr %l165, i32 0, i32 2
  %t286 = load { i64, ptr }, ptr %t285, !tbaa !27
  %t287 = getelementptr %"compiler/load:Import", ptr %l9, i32 0, i32 2
  %t288 = load { i64, ptr }, ptr %t287, !tbaa !27
  %t291 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v0, { i64, ptr } %t286, { i64, ptr } %t288)
  store i1 %t291, ptr %l168
  br label %bb74
bb74:
  %t292 = load i1, ptr %l168, !tbaa !21
  store i1 %t292, ptr %l161, !tbaa !21
  br label %bb75
bb75:
  %t293 = load i1, ptr %l161, !tbaa !21
  br i1 %t293, label %bb76, label %bb77
bb76:
  store i1 true, ptr %l17, !tbaa !21
  br label %bb78
bb77:
  br label %bb78
bb78:
  call void @__olang_scope_close(ptr %s12)
  br label %bb79
bb79:
  %t294 = load i64, ptr %l22, !tbaa !24
  %t296 = add i64 %t294, 1
  store i64 %t296, ptr %l22, !tbaa !24
  br label %bb63
bb80:
  %t298 = load i1, ptr %l17, !tbaa !21
  br i1 %t298, label %bb81, label %bb82
bb81:
  store %olang.scope zeroinitializer, ptr %s15
  %t300 = load ptr, ptr %l0, !tbaa !29
  %t302 = getelementptr %"compiler/load:Loader", ptr %t300, i32 0, i32 4
  %t303 = load ptr, ptr %t302, !tbaa !29
  store ptr %t303, ptr %l173, !tbaa !29
  %t304 = load ptr, ptr %l0, !tbaa !29
  %t305 = load ptr, ptr %l2, !tbaa !29
  %t306 = getelementptr %"compiler/load:Import", ptr %l9, i32 0, i32 1
  %t307 = load %"compiler/source:Span", ptr %t306
  %t311 = call { i64, [3 x i64] } @compiler_2fload_2ecompiler_2fload_3aLoader_2eat(ptr %v0, ptr %v0, ptr %t304, ptr %t305, %"compiler/source:Span" %t307)
  store { i64, [3 x i64] } %t311, ptr %l177
  br label %bb83
bb82:
  br label %bb86
bb83:
  %t312 = getelementptr %"compiler/load:Import", ptr %l9, i32 0, i32 2
  %t313 = load { i64, ptr }, ptr %t312, !tbaa !27
  %t315 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportAliasConflict(ptr %v0, ptr %s15, { i64, ptr } %t313)
  store %"compiler/diagmsg:Msg" %t315, ptr %l179
  br label %bb84
bb84:
  %t316 = load ptr, ptr %l173, !tbaa !29
  %t317 = load { i64, [3 x i64] }, ptr %l177
  %t318 = load %"compiler/diagmsg:Msg", ptr %l179
  %t319 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s15, ptr %t316, { i64, [3 x i64] } %t317, %"compiler/diagmsg:Msg" %t318)
  store i64 %t319, ptr %l180
  br label %bb85
bb85:
  call void @__olang_scope_close(ptr %s15)
  call void @__olang_scope_close(ptr %s2)
  br label %bb88
bb86:
  %t320 = load i64, ptr %l8, !tbaa !24
  %t322 = load ptr, ptr %l2, !tbaa !29
  %t324 = getelementptr %"compiler/load:Module", ptr %t322, i32 0, i32 11
  %t328 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eRefMut_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %v0, ptr %t324, i64 %t320)
  store ptr %t328, ptr %l185
  br label %bb87
bb87:
  %t329 = load ptr, ptr %l185, !tbaa !29
  %t331 = load i64, ptr %l13, !tbaa !24
  %t334 = getelementptr %"compiler/load:Import", ptr %t329, i32 0, i32 5
  store i64 %t331, ptr %t334, !tbaa !24
  call void @__olang_scope_close(ptr %s2)
  br label %bb88
bb88:
  %t335 = load i64, ptr %l7, !tbaa !24
  %t337 = add i64 %t335, 1
  store i64 %t337, ptr %l7, !tbaa !24
  br label %bb9
bb89:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fload_2ecompiler_2fload_3aLoader_2eownNames(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l13 = alloca i64
  %l15 = alloca i64
  %l20 = alloca { i64, ptr }
  %l33 = alloca i64
  %l35 = alloca i64
  %l40 = alloca { i64, ptr }
  %l53 = alloca i64
  %l55 = alloca i64
  %l60 = alloca { i64, ptr }
  %l61 = alloca { i64, ptr }
  %l63 = alloca i1
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s9 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/load:Module", ptr %t1, i32 0, i32 9
  store ptr %t3, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  store %olang.scope zeroinitializer, ptr %s2
  %t5 = load i64, ptr %l3, !tbaa !24
  store i64 %t5, ptr %l13, !tbaa !24
  %t6 = load ptr, ptr %l2, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v1, ptr %t6)
  store i64 %t8, ptr %l15
  br label %bb2
bb2:
  %t9 = load i64, ptr %l13, !tbaa !24
  %t10 = load i64, ptr %l15, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s2)
  br label %bb12
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l2, !tbaa !29
  %t16 = load i64, ptr %l3, !tbaa !24
  %t19 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t15, i64 %t16)
  store { i64, ptr } %t19, ptr %l20
  br label %bb6
bb6:
  %t20 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t20, ptr %l4, !tbaa !27
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t23 = getelementptr %"compiler/load:Module", ptr %t21, i32 0, i32 12
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t26 = icmp eq ptr %t24, null
  br i1 %t26, label %bb7, label %bb8
bb7:
  call void @__olang_check_failed(ptr @olang_loc_fb45b5897f8c270_56a4f9a48484bf74)
  unreachable
bb8:
  br label %bb9
bb9:
  %t28 = load ptr, ptr %l1, !tbaa !29
  %t30 = getelementptr %"compiler/load:Module", ptr %t28, i32 0, i32 12
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/load:Loader", ptr %t32, i32 0, i32 3
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t36 = load { i64, ptr }, ptr %l4, !tbaa !27
  call void @compiler_2fparse_2ecompiler_2fparse_3aOracle_2eAdd(ptr %v1, ptr %v0, ptr %s2, ptr %v1, ptr %t31, ptr %t35, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d84, i32 0, i32 1) }, { i64, ptr } %t36)
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb11
bb11:
  %t40 = load i64, ptr %l3, !tbaa !24
  %t42 = add i64 %t40, 1
  store i64 %t42, ptr %l3, !tbaa !24
  br label %bb1
bb12:
  %t44 = load ptr, ptr %l1, !tbaa !29
  %t46 = getelementptr %"compiler/load:Module", ptr %t44, i32 0, i32 10
  store ptr %t46, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb13
bb13:
  store %olang.scope zeroinitializer, ptr %s5
  %t48 = load i64, ptr %l6, !tbaa !24
  store i64 %t48, ptr %l33, !tbaa !24
  %t49 = load ptr, ptr %l5, !tbaa !29
  %t51 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v1, ptr %t49)
  store i64 %t51, ptr %l35
  br label %bb14
bb14:
  %t52 = load i64, ptr %l33, !tbaa !24
  %t53 = load i64, ptr %l35, !tbaa !24
  %t54 = icmp slt i64 %t52, %t53
  %t56 = xor i1 %t54, true
  br i1 %t56, label %bb15, label %bb16
bb15:
  call void @__olang_scope_close(ptr %s5)
  br label %bb24
bb16:
  br label %bb17
bb17:
  %t58 = load ptr, ptr %l5, !tbaa !29
  %t59 = load i64, ptr %l6, !tbaa !24
  %t62 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t58, i64 %t59)
  store { i64, ptr } %t62, ptr %l40
  br label %bb18
bb18:
  %t63 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t63, ptr %l7, !tbaa !27
  %t64 = load ptr, ptr %l1, !tbaa !29
  %t66 = getelementptr %"compiler/load:Module", ptr %t64, i32 0, i32 12
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t69 = icmp eq ptr %t67, null
  br i1 %t69, label %bb19, label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_4820d8be822def4f_666b99eead9f0f03)
  unreachable
bb20:
  br label %bb21
bb21:
  %t71 = load ptr, ptr %l1, !tbaa !29
  %t73 = getelementptr %"compiler/load:Module", ptr %t71, i32 0, i32 12
  %t74 = load ptr, ptr %t73, !tbaa !29
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/load:Loader", ptr %t75, i32 0, i32 3
  %t78 = load ptr, ptr %t77, !tbaa !29
  %t79 = load { i64, ptr }, ptr %l7, !tbaa !27
  call void @compiler_2fparse_2ecompiler_2fparse_3aOracle_2eAddFn(ptr %v1, ptr %v0, ptr %s5, ptr %v1, ptr %t74, ptr %t78, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d85, i32 0, i32 1) }, { i64, ptr } %t79)
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s5)
  br label %bb23
bb23:
  %t83 = load i64, ptr %l6, !tbaa !24
  %t85 = add i64 %t83, 1
  store i64 %t85, ptr %l6, !tbaa !24
  br label %bb13
bb24:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/load:Loader", ptr %t87, i32 0, i32 11
  store ptr %t89, ptr %l8, !tbaa !29
  store i64 0, ptr %l9, !tbaa !24
  br label %bb25
bb25:
  %t91 = load i64, ptr %l9, !tbaa !24
  store i64 %t91, ptr %l53, !tbaa !24
  %t92 = load ptr, ptr %l8, !tbaa !29
  %t94 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t92)
  store i64 %t94, ptr %l55
  br label %bb26
bb26:
  %t95 = load i64, ptr %l53, !tbaa !24
  %t96 = load i64, ptr %l55, !tbaa !24
  %t97 = icmp slt i64 %t95, %t96
  %t99 = xor i1 %t97, true
  br i1 %t99, label %bb27, label %bb28
bb27:
  br label %bb40
bb28:
  br label %bb29
bb29:
  %t101 = load ptr, ptr %l8, !tbaa !29
  %t102 = load i64, ptr %l9, !tbaa !24
  %t105 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t101, i64 %t102)
  store { i64, ptr } %t105, ptr %l60
  br label %bb30
bb30:
  %t106 = load { i64, ptr }, ptr %l60, !tbaa !27
  store { i64, ptr } %t106, ptr %l10, !tbaa !27
  %t107 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t107, ptr %l61, !tbaa !27
  %t108 = getelementptr { i64, ptr }, ptr %l61, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !27
  %t110 = getelementptr i8, ptr %t109, i64 0
  %t111 = load i8, ptr %t110, !tbaa !32
  %t113 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %t111)
  store i1 %t113, ptr %l63
  br label %bb31
bb31:
  %t114 = load i1, ptr %l63, !tbaa !21
  br i1 %t114, label %bb32, label %bb33
bb32:
  store %olang.scope zeroinitializer, ptr %s9
  %t115 = load ptr, ptr %l1, !tbaa !29
  %t117 = getelementptr %"compiler/load:Module", ptr %t115, i32 0, i32 12
  %t118 = load ptr, ptr %t117, !tbaa !29
  %t120 = icmp eq ptr %t118, null
  br i1 %t120, label %bb34, label %bb35
bb33:
  br label %bb38
bb34:
  call void @__olang_check_failed(ptr @olang_loc_d940f9862e24151e_9dcc71718a42ab82)
  unreachable
bb35:
  br label %bb36
bb36:
  %t122 = load ptr, ptr %l1, !tbaa !29
  %t124 = getelementptr %"compiler/load:Module", ptr %t122, i32 0, i32 12
  %t125 = load ptr, ptr %t124, !tbaa !29
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t128 = getelementptr %"compiler/load:Loader", ptr %t126, i32 0, i32 3
  %t129 = load ptr, ptr %t128, !tbaa !29
  %t130 = load { i64, ptr }, ptr %l10, !tbaa !27
  call void @compiler_2fparse_2ecompiler_2fparse_3aOracle_2eAdd(ptr %v1, ptr %v0, ptr %s9, ptr %v0, ptr %t125, ptr %t129, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d86, i32 0, i32 1) }, { i64, ptr } %t130)
  br label %bb37
bb37:
  call void @__olang_scope_close(ptr %s9)
  br label %bb38
bb38:
  br label %bb39
bb39:
  %t134 = load i64, ptr %l9, !tbaa !24
  %t136 = add i64 %t134, 1
  store i64 %t136, ptr %l9, !tbaa !24
  br label %bb25
bb40:
  %t138 = load ptr, ptr %l1, !tbaa !29
  %t140 = getelementptr %"compiler/load:Module", ptr %t138, i32 0, i32 12
  %t141 = load ptr, ptr %t140, !tbaa !29
  %t143 = icmp eq ptr %t141, null
  br i1 %t143, label %bb41, label %bb42
bb41:
  call void @__olang_check_failed(ptr @olang_loc_2ca78ec550b059c5_f5cdcad03c843269)
  unreachable
bb42:
  br label %bb43
bb43:
  %t145 = load ptr, ptr %l1, !tbaa !29
  %t147 = getelementptr %"compiler/load:Module", ptr %t145, i32 0, i32 12
  %t148 = load ptr, ptr %t147, !tbaa !29
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t151 = getelementptr %"compiler/load:Loader", ptr %t149, i32 0, i32 3
  %t152 = load ptr, ptr %t151, !tbaa !29
  call void @compiler_2fparse_2ecompiler_2fparse_3aOracle_2eAdd(ptr %v1, ptr %v0, ptr %s0, ptr %s0, ptr %t148, ptr %t152, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d87, i32 0, i32 1) }, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d88, i32 0, i32 1) })
  br label %bb44
bb44:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fload_2ecompiler_2fload_3aLoader_2eprescan(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l20 = alloca ptr
  %l21 = alloca i64
  %l23 = alloca i64
  %l28 = alloca { i64, ptr }
  %l30 = alloca ptr
  %l31 = alloca i64
  %l44 = alloca { i64, ptr }
  %l50 = alloca ptr
  %l51 = alloca i64
  %l53 = alloca i64
  %l58 = alloca { i64, ptr }
  %l60 = alloca ptr
  %l61 = alloca i64
  %l68 = alloca ptr
  %l69 = alloca ptr
  %s1 = alloca %olang.scope
  %s5 = alloca %olang.scope
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s1
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/load:Module", ptr %t1, i32 0, i32 6
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  br i1 %t6, label %bb1, label %bb2
bb1:
  call void @__olang_check_failed(ptr @olang_loc_2753d2bb7793a0fa_e1a4644f7c04bcf6)
  unreachable
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l1, !tbaa !29
  %t10 = getelementptr %"compiler/load:Module", ptr %t8, i32 0, i32 6
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t14 = getelementptr %"compiler/source:Source", ptr %t11, i32 0, i32 1
  %t15 = load { i64, ptr }, ptr %t14, !tbaa !27
  store { i64, ptr } %t15, ptr %l14, !tbaa !27
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr %"compiler/load:Module", ptr %t16, i32 0, i32 7
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t21 = icmp eq ptr %t19, null
  br i1 %t21, label %bb4, label %bb5
bb4:
  call void @__olang_check_failed(ptr @olang_loc_2753d2bb7793a0fa_e1a4644f7c04bcf6)
  unreachable
bb5:
  br label %bb6
bb6:
  %t23 = load ptr, ptr %l1, !tbaa !29
  %t25 = getelementptr %"compiler/load:Module", ptr %t23, i32 0, i32 7
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t27 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t29 = call ptr @compiler_2fload_2etypeNames(ptr %v1, ptr %v1, ptr %s1, { i64, ptr } %t27, ptr %t26)
  store ptr %t29, ptr %l20
  br label %bb7
bb7:
  %t30 = load ptr, ptr %l20, !tbaa !29
  store ptr %t30, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb8
bb8:
  %t31 = load i64, ptr %l3, !tbaa !24
  store i64 %t31, ptr %l21, !tbaa !24
  %t32 = load ptr, ptr %l2, !tbaa !29
  %t34 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s1, ptr %t32)
  store i64 %t34, ptr %l23
  br label %bb9
bb9:
  %t35 = load i64, ptr %l21, !tbaa !24
  %t36 = load i64, ptr %l23, !tbaa !24
  %t37 = icmp slt i64 %t35, %t36
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb10, label %bb11
bb10:
  br label %bb18
bb11:
  br label %bb12
bb12:
  %t41 = load ptr, ptr %l2, !tbaa !29
  %t42 = load i64, ptr %l3, !tbaa !24
  %t45 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s1, ptr %s1, ptr %t41, i64 %t42)
  store { i64, ptr } %t45, ptr %l28
  br label %bb13
bb13:
  %t46 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t46, ptr %l4, !tbaa !27
  %t47 = load ptr, ptr %l1, !tbaa !29
  %t49 = getelementptr %"compiler/load:Module", ptr %t47, i32 0, i32 9
  store ptr %t49, ptr %l30, !tbaa !29
  %t50 = ptrtoint ptr %v1 to i64
  store i64 %t50, ptr %l31, !tbaa !24
  %t51 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t51, label %bb14, label %bb15
bb14:
  %t53 = call ptr @__olang_region_make(ptr %v1)
  %t54 = ptrtoint ptr %t53 to i64
  store i64 %t54, ptr %l31, !tbaa !24
  br label %bb15
bb15:
  %t55 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t57 = extractvalue { i64, ptr } %t55, 1
  %t58 = extractvalue { i64, ptr } %t55, 0
  %t59 = load i64, ptr %l31
  %t60 = inttoptr i64 %t59 to ptr
  %t61 = call ptr @__olang_scope_alloc(ptr %t60, i64 %t58)
  call void @olang_textcopy(ptr %t61, ptr %t57, i64 %t58)
  %t62 = insertvalue { i64, ptr } undef, i64 %t58, 0
  %t63 = insertvalue { i64, ptr } %t62, ptr %t61, 1
  %t65 = load i64, ptr %l31
  %t66 = inttoptr i64 %t65 to ptr
  %t67 = extractvalue { i64, ptr } %t63, 0
  %t68 = extractvalue { i64, ptr } %t63, 1
  %t69 = mul i64 %t67, 1
  %t70 = call ptr @__olang_scope_alloc(ptr %t66, i64 %t69)
  call void @llvm.memcpy.p0.p0.i64(ptr %t70, ptr %t68, i64 %t69, i1 false)
  %t71 = insertvalue { i64, ptr } undef, i64 %t67, 0
  %t72 = insertvalue { i64, ptr } %t71, ptr %t70, 1
  %t73 = load ptr, ptr %l30, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t73, { i64, ptr } %t72)
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t75 = load i64, ptr %l3, !tbaa !24
  %t77 = add i64 %t75, 1
  store i64 %t77, ptr %l3, !tbaa !24
  br label %bb8
bb18:
  call void @__olang_scope_close(ptr %s1)
  store %olang.scope zeroinitializer, ptr %s5
  %t79 = load ptr, ptr %l1, !tbaa !29
  %t81 = getelementptr %"compiler/load:Module", ptr %t79, i32 0, i32 6
  %t82 = load ptr, ptr %t81, !tbaa !29
  %t84 = icmp eq ptr %t82, null
  br i1 %t84, label %bb19, label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_4a5bc26e34bf81_f78399c125ad415d)
  unreachable
bb20:
  br label %bb21
bb21:
  %t86 = load ptr, ptr %l1, !tbaa !29
  %t88 = getelementptr %"compiler/load:Module", ptr %t86, i32 0, i32 6
  %t89 = load ptr, ptr %t88, !tbaa !29
  %t92 = getelementptr %"compiler/source:Source", ptr %t89, i32 0, i32 1
  %t93 = load { i64, ptr }, ptr %t92, !tbaa !27
  store { i64, ptr } %t93, ptr %l44, !tbaa !27
  %t94 = load ptr, ptr %l1, !tbaa !29
  %t96 = getelementptr %"compiler/load:Module", ptr %t94, i32 0, i32 7
  %t97 = load ptr, ptr %t96, !tbaa !29
  %t99 = icmp eq ptr %t97, null
  br i1 %t99, label %bb22, label %bb23
bb22:
  call void @__olang_check_failed(ptr @olang_loc_4a5bc26e34bf81_f78399c125ad415d)
  unreachable
bb23:
  br label %bb24
bb24:
  %t101 = load ptr, ptr %l1, !tbaa !29
  %t103 = getelementptr %"compiler/load:Module", ptr %t101, i32 0, i32 7
  %t104 = load ptr, ptr %t103, !tbaa !29
  %t105 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t107 = call ptr @compiler_2fparse_2eGenericFnNames(ptr %v1, ptr %v1, ptr %s5, { i64, ptr } %t105, ptr %t104)
  store ptr %t107, ptr %l50
  br label %bb25
bb25:
  %t108 = load ptr, ptr %l50, !tbaa !29
  store ptr %t108, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb26
bb26:
  %t109 = load i64, ptr %l6, !tbaa !24
  store i64 %t109, ptr %l51, !tbaa !24
  %t110 = load ptr, ptr %l5, !tbaa !29
  %t112 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s5, ptr %t110)
  store i64 %t112, ptr %l53
  br label %bb27
bb27:
  %t113 = load i64, ptr %l51, !tbaa !24
  %t114 = load i64, ptr %l53, !tbaa !24
  %t115 = icmp slt i64 %t113, %t114
  %t117 = xor i1 %t115, true
  br i1 %t117, label %bb28, label %bb29
bb28:
  br label %bb36
bb29:
  br label %bb30
bb30:
  %t119 = load ptr, ptr %l5, !tbaa !29
  %t120 = load i64, ptr %l6, !tbaa !24
  %t123 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s5, ptr %s5, ptr %t119, i64 %t120)
  store { i64, ptr } %t123, ptr %l58
  br label %bb31
bb31:
  %t124 = load { i64, ptr }, ptr %l58, !tbaa !27
  store { i64, ptr } %t124, ptr %l7, !tbaa !27
  %t125 = load ptr, ptr %l1, !tbaa !29
  %t127 = getelementptr %"compiler/load:Module", ptr %t125, i32 0, i32 10
  store ptr %t127, ptr %l60, !tbaa !29
  %t128 = ptrtoint ptr %v1 to i64
  store i64 %t128, ptr %l61, !tbaa !24
  %t129 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t129, label %bb32, label %bb33
bb32:
  %t131 = call ptr @__olang_region_make(ptr %v1)
  %t132 = ptrtoint ptr %t131 to i64
  store i64 %t132, ptr %l61, !tbaa !24
  br label %bb33
bb33:
  %t133 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t135 = extractvalue { i64, ptr } %t133, 1
  %t136 = extractvalue { i64, ptr } %t133, 0
  %t137 = load i64, ptr %l61
  %t138 = inttoptr i64 %t137 to ptr
  %t139 = call ptr @__olang_scope_alloc(ptr %t138, i64 %t136)
  call void @olang_textcopy(ptr %t139, ptr %t135, i64 %t136)
  %t140 = insertvalue { i64, ptr } undef, i64 %t136, 0
  %t141 = insertvalue { i64, ptr } %t140, ptr %t139, 1
  %t143 = load i64, ptr %l61
  %t144 = inttoptr i64 %t143 to ptr
  %t145 = extractvalue { i64, ptr } %t141, 0
  %t146 = extractvalue { i64, ptr } %t141, 1
  %t147 = mul i64 %t145, 1
  %t148 = call ptr @__olang_scope_alloc(ptr %t144, i64 %t147)
  call void @llvm.memcpy.p0.p0.i64(ptr %t148, ptr %t146, i64 %t147, i1 false)
  %t149 = insertvalue { i64, ptr } undef, i64 %t145, 0
  %t150 = insertvalue { i64, ptr } %t149, ptr %t148, 1
  %t151 = load ptr, ptr %l60, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t151, { i64, ptr } %t150)
  br label %bb34
bb34:
  br label %bb35
bb35:
  %t153 = load i64, ptr %l6, !tbaa !24
  %t155 = add i64 %t153, 1
  store i64 %t155, ptr %l6, !tbaa !24
  br label %bb26
bb36:
  call void @__olang_scope_close(ptr %s5)
  store ptr %a0, ptr %l68, !tbaa !29
  %t158 = load ptr, ptr %l1, !tbaa !29
  store ptr %t158, ptr %l69, !tbaa !29
  %t159 = load ptr, ptr %l1, !tbaa !29
  %t161 = getelementptr %"compiler/load:Module", ptr %t159, i32 0, i32 7
  %t162 = load ptr, ptr %t161, !tbaa !29
  %t164 = icmp eq ptr %t162, null
  br i1 %t164, label %bb37, label %bb38
bb37:
  call void @__olang_check_failed(ptr @olang_loc_75be0ecbfd40364c_3ba616ba9e8cb88)
  unreachable
bb38:
  br label %bb39
bb39:
  %t166 = load ptr, ptr %l1, !tbaa !29
  %t168 = getelementptr %"compiler/load:Module", ptr %t166, i32 0, i32 7
  %t169 = load ptr, ptr %t168, !tbaa !29
  %t172 = getelementptr %"compiler/scan:Tokens", ptr %t169, i32 0, i32 0
  %t173 = load { i64, ptr }, ptr %t172, !tbaa !27
  %t175 = extractvalue { i64, ptr } %t173, 0
  %t177 = sub i64 %t175, 1
  %t178 = load ptr, ptr %l68, !tbaa !29
  %t179 = load ptr, ptr %l69, !tbaa !29
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2eregion(ptr %v0, ptr %v1, ptr %t178, ptr %t179, i64 0, i64 %t177, i64 -1)
  br label %bb40
bb40:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fload_2ecompiler_2fload_3aLoader_2eregion(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i64 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i1
  %l8 = alloca i32
  %l9 = alloca i64
  %l10 = alloca i1
  %l23 = alloca { i64, ptr }
  %l35 = alloca i32
  %l43 = alloca i1
  %l49 = alloca i1
  %l53 = alloca i1
  %l54 = alloca { i64, ptr }
  %l59 = alloca i1
  %l60 = alloca { i64, ptr }
  %l68 = alloca i1
  %l75 = alloca i64
  %l84 = alloca i1
  %l86 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
  store i64 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/load:Module", ptr %t1, i32 0, i32 7
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  br i1 %t6, label %bb1, label %bb2
bb1:
  call void @__olang_check_failed(ptr @olang_loc_d161242c40b74370_507871439a6630a4)
  unreachable
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l1, !tbaa !29
  %t10 = getelementptr %"compiler/load:Module", ptr %t8, i32 0, i32 7
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t14 = getelementptr %"compiler/scan:Tokens", ptr %t11, i32 0, i32 0
  %t15 = load { i64, ptr }, ptr %t14, !tbaa !27
  store { i64, ptr } %t15, ptr %l5, !tbaa !27
  %t17 = load i64, ptr %l2, !tbaa !24
  store i64 %t17, ptr %l6, !tbaa !24
  store i1 true, ptr %l7, !tbaa !21
  br label %bb4
bb4:
  %t19 = load i64, ptr %l6, !tbaa !24
  %t20 = load i64, ptr %l3, !tbaa !24
  %t23 = icmp slt i64 %t19, %t20
  %t25 = xor i1 %t23, true
  br i1 %t25, label %bb5, label %bb6
bb5:
  br label %bb55
bb6:
  br label %bb7
bb7:
  %t27 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t27, ptr %l23, !tbaa !27
  %t28 = load i64, ptr %l6, !tbaa !24
  %t30 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !27
  %t32 = getelementptr %"compiler/token:Token", ptr %t31, i64 %t28
  %t33 = getelementptr %"compiler/token:Token", ptr %t32, i32 0, i32 0
  %t34 = load i32, ptr %t33, !range !{i32 0, i32 114}
  store i32 %t34, ptr %l8
  %t36 = load i32, ptr %l8, !range !{i32 0, i32 114}
  %t38 = trunc i64 112 to i32
  %t39 = icmp eq i32 %t36, %t38
  br i1 %t39, label %bb8, label %bb9
bb8:
  %t41 = load ptr, ptr %l1, !tbaa !29
  %t43 = getelementptr %"compiler/load:Module", ptr %t41, i32 0, i32 7
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t46 = icmp eq ptr %t44, null
  br i1 %t46, label %bb10, label %bb11
bb9:
  br label %bb17
bb10:
  call void @__olang_check_failed(ptr @olang_loc_9cda1922aec704f_35a4007cf0fda73)
  unreachable
bb11:
  br label %bb12
bb12:
  %t48 = load ptr, ptr %l1, !tbaa !29
  %t50 = getelementptr %"compiler/load:Module", ptr %t48, i32 0, i32 7
  %t51 = load ptr, ptr %t50, !tbaa !29
  %t52 = load i64, ptr %l6, !tbaa !24
  %t54 = trunc i64 %t52 to i32
  %t57 = call i32 @compiler_2fscan_2ecompiler_2fscan_3aTokens_2eMatch(ptr %v1, ptr %t51, i32 %t54)
  store i32 %t57, ptr %l35
  br label %bb13
bb13:
  %t58 = load i32, ptr %l35, !tbaa !23
  %t59 = sext i32 %t58 to i64
  store i64 %t59, ptr %l9, !tbaa !24
  %t61 = load i64, ptr %l9, !tbaa !24
  %t63 = icmp slt i64 %t61, 0
  br i1 %t63, label %bb14, label %bb15
bb14:
  br label %ret
bb15:
  br label %bb16
bb16:
  %t65 = load i64, ptr %l9, !tbaa !24
  %t67 = add i64 %t65, 1
  store i64 %t67, ptr %l6, !tbaa !24
  store i1 true, ptr %l7, !tbaa !21
  br label %bb54
bb17:
  %t69 = load i32, ptr %l8, !range !{i32 0, i32 114}
  %t71 = trunc i64 8 to i32
  %t72 = icmp eq i32 %t69, %t71
  br i1 %t72, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l43, !tbaa !21
  br label %bb20
bb19:
  %t74 = load i32, ptr %l8, !range !{i32 0, i32 114}
  %t76 = trunc i64 113 to i32
  %t77 = icmp eq i32 %t74, %t76
  store i1 %t77, ptr %l43, !tbaa !21
  br label %bb20
bb20:
  %t79 = load i1, ptr %l43, !tbaa !21
  br i1 %t79, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l7, !tbaa !21
  %t80 = load i64, ptr %l6, !tbaa !24
  %t82 = add i64 %t80, 1
  store i64 %t82, ptr %l6, !tbaa !24
  br label %bb54
bb22:
  br label %bb23
bb23:
  %t84 = load i1, ptr %l7, !tbaa !21
  br i1 %t84, label %bb24, label %bb25
bb24:
  store i1 true, ptr %l49, !tbaa !21
  br label %bb32
bb25:
  %t86 = load i64, ptr %l6, !tbaa !24
  %t87 = load i64, ptr %l2, !tbaa !24
  %t90 = icmp sgt i64 %t86, %t87
  br i1 %t90, label %bb26, label %bb27
bb26:
  %t92 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t92, ptr %l54, !tbaa !27
  %t93 = load i64, ptr %l6, !tbaa !24
  %t95 = sub i64 %t93, 1
  %t97 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !27
  %t99 = getelementptr %"compiler/token:Token", ptr %t98, i64 %t95
  %t100 = getelementptr %"compiler/token:Token", ptr %t99, i32 0, i32 0
  %t101 = load i32, ptr %t100, !range !{i32 0, i32 114}
  %t103 = trunc i64 101 to i32
  %t104 = icmp eq i32 %t101, %t103
  store i1 %t104, ptr %l53, !tbaa !21
  br label %bb28
bb27:
  store i1 false, ptr %l53, !tbaa !21
  br label %bb28
bb28:
  %t106 = load i1, ptr %l53, !tbaa !21
  br i1 %t106, label %bb29, label %bb30
bb29:
  %t107 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t107, ptr %l60, !tbaa !27
  %t108 = load i64, ptr %l6, !tbaa !24
  %t110 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr %"compiler/token:Token", ptr %t111, i64 %t108
  %t113 = getelementptr %"compiler/token:Token", ptr %t112, i32 0, i32 1
  %t114 = load i8, ptr %t113, !tbaa !22
  %t115 = load i8, ptr @G_2ecompiler_2ftoken_2eLineBreak, !tbaa !22
  %t118 = and i8 %t114, %t115
  %t120 = icmp ne i8 %t118, 0
  store i1 %t120, ptr %l59, !tbaa !21
  br label %bb31
bb30:
  store i1 false, ptr %l59, !tbaa !21
  br label %bb31
bb31:
  %t122 = load i1, ptr %l59, !tbaa !21
  store i1 %t122, ptr %l49, !tbaa !21
  br label %bb32
bb32:
  %t123 = load i1, ptr %l49, !tbaa !21
  store i1 %t123, ptr %l10, !tbaa !21
  store i1 false, ptr %l7, !tbaa !21
  %t124 = load i32, ptr %l8, !range !{i32 0, i32 114}
  %t126 = trunc i64 9 to i32
  %t127 = icmp eq i32 %t124, %t126
  br i1 %t127, label %bb33, label %bb34
bb33:
  %t129 = load i1, ptr %l10, !tbaa !21
  store i1 %t129, ptr %l68, !tbaa !21
  br label %bb35
bb34:
  store i1 false, ptr %l68, !tbaa !21
  br label %bb35
bb35:
  %t131 = load i1, ptr %l68, !tbaa !21
  br i1 %t131, label %bb36, label %bb37
bb36:
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t133 = load ptr, ptr %l1, !tbaa !29
  %t134 = load i64, ptr %l6, !tbaa !24
  %t135 = load i64, ptr %l3, !tbaa !24
  %t136 = load i64, ptr %l4, !tbaa !24
  %t142 = call i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2etopIf(ptr %v0, ptr %v1, ptr %t132, ptr %t133, i64 %t134, i64 %t135, i64 %t136)
  store i64 %t142, ptr %l75
  br label %bb38
bb37:
  br label %bb39
bb38:
  %t143 = load i64, ptr %l75, !tbaa !24
  store i64 %t143, ptr %l6, !tbaa !24
  store i1 true, ptr %l7, !tbaa !21
  br label %bb54
bb39:
  %t144 = load i32, ptr %l8, !range !{i32 0, i32 114}
  %t146 = trunc i64 40 to i32
  %t147 = icmp eq i32 %t144, %t146
  br i1 %t147, label %bb40, label %bb41
bb40:
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t150 = load ptr, ptr %l1, !tbaa !29
  %t151 = load i64, ptr %l6, !tbaa !24
  %t152 = load i64, ptr %l4, !tbaa !24
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2eimportAt(ptr %v0, ptr %v1, ptr %t149, ptr %t150, i64 %t151, i64 %t152)
  br label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb43
bb43:
  %t157 = load i32, ptr %l8, !range !{i32 0, i32 114}
  %t159 = trunc i64 1 to i32
  %t160 = icmp eq i32 %t157, %t159
  br i1 %t160, label %bb44, label %bb45
bb44:
  %t162 = load i1, ptr %l10, !tbaa !21
  store i1 %t162, ptr %l84, !tbaa !21
  br label %bb46
bb45:
  store i1 false, ptr %l84, !tbaa !21
  br label %bb46
bb46:
  %t164 = load i1, ptr %l84, !tbaa !21
  br i1 %t164, label %bb47, label %bb48
bb47:
  %t165 = load i64, ptr %l4, !tbaa !24
  %t167 = icmp slt i64 %t165, 0
  store i1 %t167, ptr %l86, !tbaa !21
  br label %bb49
bb48:
  store i1 false, ptr %l86, !tbaa !21
  br label %bb49
bb49:
  %t169 = load i1, ptr %l86, !tbaa !21
  br i1 %t169, label %bb50, label %bb51
bb50:
  %t170 = load ptr, ptr %l1, !tbaa !29
  %t172 = getelementptr %"compiler/load:Module", ptr %t170, i32 0, i32 22
  %t173 = load i64, ptr %l6, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t172, i64 %t173)
  br label %bb52
bb51:
  br label %bb53
bb52:
  br label %bb53
bb53:
  %t176 = load i64, ptr %l6, !tbaa !24
  %t178 = add i64 %t176, 1
  store i64 %t178, ptr %l6, !tbaa !24
  br label %bb54
bb54:
  br label %bb4
bb55:
  br label %ret
ret:
  ret void
}

define dso_local { i32, { { i64, ptr }, { i64, ptr } } } @compiler_2fload_2ecompiler_2fload_3aLoader_2eresolve(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, %"compiler/load:Import" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/load:Import"
  %l3 = alloca ptr
  %l4 = alloca { i64, [3 x i64] }
  %l5 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %lp8 = alloca ptr
  %lp9 = alloca ptr
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca %"std/prelude/text:StringBuilder"
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l23 = alloca i1
  %l27 = alloca ptr
  %l31 = alloca { i64, [3 x i64] }
  %l37 = alloca ptr
  %l38 = alloca { i64, [3 x i64] }
  %l39 = alloca %"compiler/diagmsg:Msg"
  %l40 = alloca i64
  %l43 = alloca i1
  %l45 = alloca ptr
  %l46 = alloca { i64, [3 x i64] }
  %l47 = alloca %"compiler/diagmsg:Msg"
  %l48 = alloca i64
  %l50 = alloca i64
  %l53 = alloca i64
  %l54 = alloca i32
  %l57 = alloca { i64, ptr }
  %l58 = alloca i64
  %l59 = alloca i64
  %l64 = alloca { i64, ptr }
  %l65 = alloca { i64, ptr }
  %l66 = alloca i64
  %l67 = alloca { i64, ptr }
  %l68 = alloca { i64, ptr }
  %l69 = alloca { i64, ptr }
  %l70 = alloca i64
  %l71 = alloca { i64, ptr }
  %l73 = alloca i1
  %l75 = alloca { i64, ptr }
  %l76 = alloca { i64, ptr }
  %l79 = alloca i64
  %l80 = alloca i64
  %l87 = alloca { i64, ptr }
  %l88 = alloca { i64, ptr }
  %l90 = alloca i64
  %l93 = alloca { i64, ptr }
  %l94 = alloca { i64, ptr }
  %l96 = alloca i64
  %l99 = alloca i1
  %l102 = alloca ptr
  %l103 = alloca { i64, [3 x i64] }
  %l104 = alloca %"compiler/diagmsg:Msg"
  %l105 = alloca i64
  %l109 = alloca { i64, ptr }
  %l110 = alloca i1
  %l111 = alloca i1
  %l113 = alloca i1
  %l115 = alloca i1
  %l117 = alloca i1
  %l120 = alloca { i64, ptr }
  %l125 = alloca ptr
  %l126 = alloca { i64, [3 x i64] }
  %l127 = alloca %"compiler/diagmsg:Msg"
  %l128 = alloca i64
  %l130 = alloca { i64, ptr }
  %l133 = alloca { i64, ptr }
  %l135 = alloca { i64, ptr }
  %l137 = alloca { i64, ptr }
  %l139 = alloca { i64, ptr }
  %l140 = alloca i32
  %l147 = alloca ptr
  %l148 = alloca { i64, [3 x i64] }
  %l149 = alloca %"compiler/diagmsg:Msg"
  %l150 = alloca i64
  %l151 = alloca { i64, ptr }
  %l154 = alloca ptr
  %l155 = alloca { i64, [3 x i64] }
  %l157 = alloca { i64, ptr }
  %l159 = alloca %"compiler/diagmsg:Msg"
  %l160 = alloca i64
  %l161 = alloca { i64, ptr }
  %l164 = alloca ptr
  %l165 = alloca { i64, [3 x i64] }
  %l167 = alloca { i64, ptr }
  %l169 = alloca %"compiler/diagmsg:Msg"
  %l170 = alloca i64
  %l171 = alloca { i64, ptr }
  %l174 = alloca ptr
  %l175 = alloca { i64, [3 x i64] }
  %l177 = alloca { i64, ptr }
  %l179 = alloca %"compiler/diagmsg:Msg"
  %l180 = alloca i64
  %l181 = alloca { i64, ptr }
  %l183 = alloca i64
  %l184 = alloca { i64, ptr }
  %l186 = alloca i1
  %l188 = alloca %"std/prelude/text:StringBuilder"
  %l196 = alloca i64
  %l199 = alloca i64
  %l219 = alloca { i64, ptr }
  %l226 = alloca { i64, ptr }
  %l228 = alloca { i64, ptr }
  %l229 = alloca { i64, ptr }
  %l231 = alloca i64
  %l234 = alloca { i64, ptr }
  %l235 = alloca { i64, ptr }
  %l237 = alloca i64
  %l240 = alloca { i64, ptr }
  %l245 = alloca i1
  %l248 = alloca ptr
  %l249 = alloca { i64, [3 x i64] }
  %l251 = alloca %"compiler/diagmsg:Msg"
  %l252 = alloca i64
  %l256 = alloca { i64, ptr }
  %l258 = alloca i1
  %l259 = alloca i1
  %l261 = alloca i1
  %l265 = alloca { i64, ptr }
  %l266 = alloca { i64, ptr }
  %l268 = alloca i64
  %l274 = alloca { i64, ptr }
  %l275 = alloca { i64, ptr }
  %l277 = alloca i64
  %l280 = alloca i1
  %l281 = alloca { i64, ptr }
  %l283 = alloca { i64, ptr }
  %l288 = alloca { i64, ptr }
  %l291 = alloca i64
  %l293 = alloca { i64, ptr }
  %l294 = alloca { i64, ptr }
  %l295 = alloca i64
  %l296 = alloca { i64, ptr }
  %l298 = alloca { i64, ptr }
  %l299 = alloca i64
  %l303 = alloca i64
  %l304 = alloca i32
  %l308 = alloca i64
  %l315 = alloca { i64, ptr }
  %l316 = alloca i1
  %l317 = alloca i1
  %l319 = alloca i1
  %l321 = alloca i1
  %l323 = alloca i1
  %l327 = alloca i1
  %l328 = alloca { i64, ptr }
  %l329 = alloca { i64, ptr }
  %l331 = alloca i64
  %l333 = alloca i64
  %l334 = alloca { i64, ptr }
  %l336 = alloca i1
  %l340 = alloca { i64, ptr }
  %l341 = alloca i1
  %l344 = alloca { i64, ptr }
  %l345 = alloca { i64, ptr }
  %l347 = alloca i64
  %l350 = alloca i1
  %l352 = alloca i1
  %l357 = alloca i1
  %l360 = alloca ptr
  %l361 = alloca { i64, [3 x i64] }
  %l363 = alloca %"compiler/diagmsg:Msg"
  %l364 = alloca i64
  %l367 = alloca i1
  %l369 = alloca i1
  %l371 = alloca i1
  %l373 = alloca ptr
  %l374 = alloca { i64, [3 x i64] }
  %l376 = alloca %"compiler/diagmsg:Msg"
  %l377 = alloca i64
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s22 = alloca %olang.scope
  %s23 = alloca %olang.scope
  %s24 = alloca %olang.scope
  %s27 = alloca %olang.scope
  %s33 = alloca %olang.scope
  %s34 = alloca %olang.scope
  %s37 = alloca %olang.scope
  %s38 = alloca %olang.scope
  %rv = alloca { i32, { { i64, ptr }, { i64, ptr } } }
  store ptr %a0, ptr %l0
  store %"compiler/load:Import" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/load:Loader", ptr %t1, i32 0, i32 10
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store ptr %t7, ptr %l27
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l27, !tbaa !29
  store ptr %t8, ptr %l3, !tbaa !29
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load ptr, ptr %l3, !tbaa !29
  %t11 = getelementptr %"compiler/load:Import", ptr %l2, i32 0, i32 0
  %t12 = load %"compiler/source:Span", ptr %t11
  %t16 = call { i64, [3 x i64] } @compiler_2fload_2ecompiler_2fload_3aLoader_2eat(ptr %v0, ptr %v0, ptr %t9, ptr %t10, %"compiler/source:Span" %t12)
  store { i64, [3 x i64] } %t16, ptr %l31
  br label %bb2
bb2:
  %t17 = load { i64, [3 x i64] }, ptr %l31
  store { i64, [3 x i64] } %t17, ptr %l4
  %t18 = getelementptr %"compiler/load:Import", ptr %l2, i32 0, i32 3
  %t19 = load { i64, ptr }, ptr %t18, !tbaa !27
  store { i64, ptr } %t19, ptr %l5, !tbaa !27
  %t21 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t21, 0
  %t25 = icmp sge i64 %t23, 4096
  br i1 %t25, label %bb3, label %bb4
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/load:Loader", ptr %t27, i32 0, i32 4
  %t30 = load ptr, ptr %t29, !tbaa !29
  store ptr %t30, ptr %l37, !tbaa !29
  %t31 = load { i64, [3 x i64] }, ptr %l4
  store { i64, [3 x i64] } %t31, ptr %l38
  %t32 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportPathTooLong(ptr %s1)
  store %"compiler/diagmsg:Msg" %t32, ptr %l39
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t33 = load ptr, ptr %l37, !tbaa !29
  %t34 = load { i64, [3 x i64] }, ptr %l38
  %t35 = load %"compiler/diagmsg:Msg", ptr %l39
  %t36 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s1, ptr %t33, { i64, [3 x i64] } %t34, %"compiler/diagmsg:Msg" %t35)
  store i64 %t36, ptr %l40
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t38 = insertvalue { i32, { { i64, ptr }, { i64, ptr } } } zeroinitializer, i32 65536, 0
  store { i32, { { i64, ptr }, { i64, ptr } } } %t38, ptr %rv
  br label %ret
bb7:
  %t39 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t41 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v1, ptr %s0, { i64, ptr } %t39, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d89, i32 0, i32 1) })
  store i1 %t41, ptr %l43
  br label %bb8
bb8:
  %t42 = load i1, ptr %l43, !tbaa !21
  br i1 %t42, label %bb9, label %bb10
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/load:Loader", ptr %t43, i32 0, i32 4
  %t46 = load ptr, ptr %t45, !tbaa !29
  store ptr %t46, ptr %l45, !tbaa !29
  %t47 = load { i64, [3 x i64] }, ptr %l4
  store { i64, [3 x i64] } %t47, ptr %l46
  %t48 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportHasExtension(ptr %s2)
  store %"compiler/diagmsg:Msg" %t48, ptr %l47
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t49 = load ptr, ptr %l45, !tbaa !29
  %t50 = load { i64, [3 x i64] }, ptr %l46
  %t51 = load %"compiler/diagmsg:Msg", ptr %l47
  %t52 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s2, ptr %t49, { i64, [3 x i64] } %t50, %"compiler/diagmsg:Msg" %t51)
  store i64 %t52, ptr %l48
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t54 = insertvalue { i32, { { i64, ptr }, { i64, ptr } } } zeroinitializer, i32 65536, 0
  store { i32, { { i64, ptr }, { i64, ptr } } } %t54, ptr %rv
  br label %ret
bb13:
  %t55 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t58 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v1, { i64, ptr } %t55, i8 47)
  %t59 = extractvalue { i32, i64 } %t58, 1
  %t60 = extractvalue { i32, i64 } %t58, 0
  store i32 %t60, ptr %l54
  %t61 = icmp ne i32 %t60, 0
  br i1 %t61, label %bb15, label %ok.62, !prof !99
ok.62:
  store i64 %t59, ptr %l53
  br label %bb14
bb14:
  %t63 = load i64, ptr %l53, !tbaa !24
  store i64 %t63, ptr %l50, !tbaa !24
  br label %bb17
bb15:
  br label %bb16
bb16:
  %t64 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t66 = extractvalue { i64, ptr } %t64, 0
  store i64 %t66, ptr %l50, !tbaa !24
  br label %bb17
bb17:
  %t68 = load i64, ptr %l50, !tbaa !24
  %t69 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t69, ptr %l57, !tbaa !27
  store i64 %t68, ptr %l58, !tbaa !24
  %t71 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t72 = extractvalue { i64, ptr } %t71, 0
  store i64 %t72, ptr %l59, !tbaa !24
  %t73 = icmp sge i64 0, 0
  br i1 %t73, label %bb18, label %bb19
bb18:
  %t75 = load i64, ptr %l58, !tbaa !24
  %t76 = icmp sle i64 0, %t75
  br i1 %t76, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_6772f502359d02a_1b697b2141371efe)
  unreachable
bb20:
  %t78 = load i64, ptr %l58, !tbaa !24
  %t79 = load i64, ptr %l59, !tbaa !24
  %t80 = icmp sle i64 %t78, %t79
  br i1 %t80, label %bb22, label %bb23
bb21:
  call void @__olang_check_failed(ptr @olang_loc_6772f502359d02a_1b697b2141371efe)
  unreachable
bb22:
  %t82 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !27
  %t84 = load i64, ptr %l58, !tbaa !24
  %t85 = getelementptr i8, ptr %t83, i64 0
  %t86 = sub i64 %t84, 0
  %t87 = insertvalue { i64, ptr } undef, i64 %t86, 0
  %t88 = insertvalue { i64, ptr } %t87, ptr %t85, 1
  store { i64, ptr } %t88, ptr %l7, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d90, i32 0, i32 1) }, ptr %l64, !tbaa !27
  %t90 = load { i64, ptr }, ptr %l64, !tbaa !27
  store { i64, ptr } %t90, ptr %l65, !tbaa !27
  %t91 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t92 = extractvalue { i64, ptr } %t91, 0
  store i64 %t92, ptr %l66, !tbaa !24
  %t93 = load i64, ptr %l66, !tbaa !24
  %t94 = mul i64 %t93, 1
  %t95 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t94)
  %t96 = insertvalue { i64, ptr } undef, i64 %t93, 0
  %t97 = insertvalue { i64, ptr } %t96, ptr %t95, 1
  store { i64, ptr } %t97, ptr %l67, !tbaa !27
  %t98 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !27
  %t100 = getelementptr { i64, ptr }, ptr %l65, i32 0, i32 1
  %t101 = load ptr, ptr %t100, !tbaa !27
  %t102 = load i64, ptr %l66, !tbaa !24
  %t103 = mul i64 %t102, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t99, ptr %t101, i64 %t103, i1 false)
  %t104 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t104, ptr %lp8
  %t105 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t106 = load ptr, ptr %lp8
  store { i64, ptr } %t105, ptr %t106, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d91, i32 0, i32 1) }, ptr %l68, !tbaa !27
  %t107 = load { i64, ptr }, ptr %l68, !tbaa !27
  store { i64, ptr } %t107, ptr %l69, !tbaa !27
  %t108 = load { i64, ptr }, ptr %l69, !tbaa !27
  %t109 = extractvalue { i64, ptr } %t108, 0
  store i64 %t109, ptr %l70, !tbaa !24
  %t110 = load i64, ptr %l70, !tbaa !24
  %t111 = mul i64 %t110, 1
  %t112 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t111)
  %t113 = insertvalue { i64, ptr } undef, i64 %t110, 0
  %t114 = insertvalue { i64, ptr } %t113, ptr %t112, 1
  store { i64, ptr } %t114, ptr %l71, !tbaa !27
  %t115 = getelementptr { i64, ptr }, ptr %l71, i32 0, i32 1
  %t116 = load ptr, ptr %t115, !tbaa !27
  %t117 = getelementptr { i64, ptr }, ptr %l69, i32 0, i32 1
  %t118 = load ptr, ptr %t117, !tbaa !27
  %t119 = load i64, ptr %l70, !tbaa !24
  %t120 = mul i64 %t119, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t116, ptr %t118, i64 %t120, i1 false)
  %t121 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t121, ptr %lp9
  %t122 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t123 = load ptr, ptr %lp9
  store { i64, ptr } %t122, ptr %t123, !tbaa !27
  %t124 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t126 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s0, { i64, ptr } %t124, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d92, i32 0, i32 1) })
  store i1 %t126, ptr %l73
  br label %bb24
bb23:
  call void @__olang_check_failed(ptr @olang_loc_6772f502359d02a_1b697b2141371efe)
  unreachable
bb24:
  %t127 = load i1, ptr %l73, !tbaa !21
  br i1 %t127, label %bb25, label %bb26
bb25:
  store %olang.scope zeroinitializer, ptr %s3
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t130 = getelementptr %"compiler/load:Loader", ptr %t128, i32 0, i32 0
  %t131 = load { i64, ptr }, ptr %t130, !tbaa !27
  store { i64, ptr } %t131, ptr %l75, !tbaa !27
  %t132 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t132, ptr %l76, !tbaa !27
  %t133 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t136 = extractvalue { i64, ptr } %t133, 0
  store i64 %t136, ptr %l79, !tbaa !24
  %t137 = load { i64, ptr }, ptr %l76, !tbaa !27
  %t138 = extractvalue { i64, ptr } %t137, 0
  store i64 %t138, ptr %l80, !tbaa !24
  %t139 = icmp sge i64 4, 0
  br i1 %t139, label %bb27, label %bb28
bb26:
  store %olang.scope zeroinitializer, ptr %s8
  %t141 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d93, i32 0, i32 1) }, ptr %l109, !tbaa !27
  %t144 = load { i64, ptr }, ptr %l109, !tbaa !27
  %t145 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v1, ptr %s8, { i64, ptr } %t141, { i64, ptr } %t144)
  store i1 %t145, ptr %l110
  br label %bb47
bb27:
  %t146 = load i64, ptr %l79, !tbaa !24
  %t147 = icmp sle i64 4, %t146
  br i1 %t147, label %bb29, label %bb30
bb28:
  call void @__olang_check_failed(ptr @olang_loc_c7e55e824de13607_c088d15fef4da17b)
  unreachable
bb29:
  %t149 = load i64, ptr %l79, !tbaa !24
  %t150 = load i64, ptr %l80, !tbaa !24
  %t151 = icmp sle i64 %t149, %t150
  br i1 %t151, label %bb31, label %bb32
bb30:
  call void @__olang_check_failed(ptr @olang_loc_c7e55e824de13607_c088d15fef4da17b)
  unreachable
bb31:
  %t153 = getelementptr { i64, ptr }, ptr %l76, i32 0, i32 1
  %t154 = load ptr, ptr %t153, !tbaa !27
  %t155 = load i64, ptr %l79, !tbaa !24
  %t156 = getelementptr i8, ptr %t154, i64 4
  %t157 = sub i64 %t155, 4
  %t158 = insertvalue { i64, ptr } undef, i64 %t157, 0
  %t159 = insertvalue { i64, ptr } %t158, ptr %t156, 1
  %t160 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t161 = extractvalue { i64, ptr } %t160, 1
  %t162 = extractvalue { i64, ptr } %t160, 0
  %t163 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d94, i32 0, i32 1) }, 1
  %t164 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d94, i32 0, i32 1) }, 0
  %t165 = add i64 %t162, %t164
  %t167 = extractvalue { i64, ptr } %t159, 1
  %t168 = extractvalue { i64, ptr } %t159, 0
  %t169 = add i64 %t165, %t168
  %t170 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d95, i32 0, i32 1) }, 1
  %t171 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d95, i32 0, i32 1) }, 0
  %t172 = add i64 %t169, %t171
  %t173 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t172)
  call void @olang_textcopy(ptr %t173, ptr %t161, i64 %t162)
  %t174 = getelementptr i8, ptr %t173, i64 %t162
  call void @olang_textcopy(ptr %t174, ptr %t163, i64 %t164)
  %t175 = getelementptr i8, ptr %t174, i64 %t164
  call void @olang_textcopy(ptr %t175, ptr %t167, i64 %t168)
  %t176 = getelementptr i8, ptr %t175, i64 %t168
  call void @olang_textcopy(ptr %t176, ptr %t170, i64 %t171)
  %t177 = insertvalue { i64, ptr } undef, i64 %t172, 0
  %t178 = insertvalue { i64, ptr } %t177, ptr %t173, 1
  %t180 = extractvalue { i64, ptr } %t178, 0
  %t181 = extractvalue { i64, ptr } %t178, 1
  %t182 = mul i64 %t180, 1
  %t183 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t182)
  call void @llvm.memcpy.p0.p0.i64(ptr %t183, ptr %t181, i64 %t182, i1 false)
  %t184 = insertvalue { i64, ptr } undef, i64 %t180, 0
  %t185 = insertvalue { i64, ptr } %t184, ptr %t183, 1
  %t187 = call { i64, ptr } @compiler_2fload_2eNormalize(ptr %s3, ptr %s3, { i64, ptr } %t185)
  store { i64, ptr } %t187, ptr %l87
  br label %bb33
bb32:
  call void @__olang_check_failed(ptr @olang_loc_c7e55e824de13607_c088d15fef4da17b)
  unreachable
bb33:
  %t188 = load { i64, ptr }, ptr %l87, !tbaa !27
  %t189 = extractvalue { i64, ptr } %t188, 1
  %t190 = extractvalue { i64, ptr } %t188, 0
  %t191 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t190)
  call void @olang_textcopy(ptr %t191, ptr %t189, i64 %t190)
  %t192 = insertvalue { i64, ptr } undef, i64 %t190, 0
  %t193 = insertvalue { i64, ptr } %t192, ptr %t191, 1
  store { i64, ptr } %t193, ptr %l88, !tbaa !27
  %t194 = load ptr, ptr %lp8
  %t195 = load { i64, ptr }, ptr %t194, !tbaa !27
  %t196 = extractvalue { i64, ptr } %t195, 0
  %t197 = load { i64, ptr }, ptr %l88, !tbaa !27
  %t198 = extractvalue { i64, ptr } %t197, 0
  store i64 %t198, ptr %l90, !tbaa !24
  %t200 = load i64, ptr %l90, !tbaa !24
  %t201 = icmp eq i64 %t196, %t200
  br i1 %t201, label %bb34, label %bb35
bb34:
  %t203 = load ptr, ptr %lp8
  %t204 = getelementptr { i64, ptr }, ptr %t203, i32 0, i32 1
  %t205 = load ptr, ptr %t204, !tbaa !27
  %t206 = getelementptr { i64, ptr }, ptr %l88, i32 0, i32 1
  %t207 = load ptr, ptr %t206, !tbaa !27
  %t208 = load i64, ptr %l90, !tbaa !24
  %t209 = mul i64 %t208, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t205, ptr %t207, i64 %t209, i1 false)
  br label %bb36
bb35:
  %t210 = load { i64, ptr }, ptr %l88, !tbaa !27
  %t211 = load ptr, ptr %lp8
  store { i64, ptr } %t210, ptr %t211, !tbaa !27
  br label %bb36
bb36:
  %t212 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t214 = call { i64, ptr } @compiler_2fload_2eNormalize(ptr %v1, ptr %s3, { i64, ptr } %t212)
  store { i64, ptr } %t214, ptr %l93
  br label %bb37
bb37:
  %t215 = load { i64, ptr }, ptr %l93, !tbaa !27
  %t216 = extractvalue { i64, ptr } %t215, 1
  %t217 = extractvalue { i64, ptr } %t215, 0
  %t218 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t217)
  call void @olang_textcopy(ptr %t218, ptr %t216, i64 %t217)
  %t219 = insertvalue { i64, ptr } undef, i64 %t217, 0
  %t220 = insertvalue { i64, ptr } %t219, ptr %t218, 1
  store { i64, ptr } %t220, ptr %l94, !tbaa !27
  %t221 = load ptr, ptr %lp9
  %t222 = load { i64, ptr }, ptr %t221, !tbaa !27
  %t223 = extractvalue { i64, ptr } %t222, 0
  %t224 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t225 = extractvalue { i64, ptr } %t224, 0
  store i64 %t225, ptr %l96, !tbaa !24
  %t227 = load i64, ptr %l96, !tbaa !24
  %t228 = icmp eq i64 %t223, %t227
  br i1 %t228, label %bb38, label %bb39
bb38:
  %t230 = load ptr, ptr %lp9
  %t231 = getelementptr { i64, ptr }, ptr %t230, i32 0, i32 1
  %t232 = load ptr, ptr %t231, !tbaa !27
  %t233 = getelementptr { i64, ptr }, ptr %l94, i32 0, i32 1
  %t234 = load ptr, ptr %t233, !tbaa !27
  %t235 = load i64, ptr %l96, !tbaa !24
  %t236 = mul i64 %t235, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t232, ptr %t234, i64 %t236, i1 false)
  br label %bb40
bb39:
  %t237 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t238 = load ptr, ptr %lp9
  store { i64, ptr } %t237, ptr %t238, !tbaa !27
  br label %bb40
bb40:
  %t239 = load ptr, ptr %lp9
  %t240 = load { i64, ptr }, ptr %t239, !tbaa !27
  %t242 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v2, ptr %s3, { i64, ptr } %t240, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d96, i32 0, i32 1) })
  store i1 %t242, ptr %l99
  br label %bb41
bb41:
  %t243 = load i1, ptr %l99, !tbaa !21
  %t244 = xor i1 %t243, true
  br i1 %t244, label %bb42, label %bb43
bb42:
  store %olang.scope zeroinitializer, ptr %s7
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t248 = getelementptr %"compiler/load:Loader", ptr %t246, i32 0, i32 4
  %t249 = load ptr, ptr %t248, !tbaa !29
  store ptr %t249, ptr %l102, !tbaa !29
  %t250 = load { i64, [3 x i64] }, ptr %l4
  store { i64, [3 x i64] } %t250, ptr %l103
  %t251 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportLeavesRoot(ptr %s7, ptr %s7, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d97, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t251, ptr %l104
  br label %bb44
bb43:
  br label %bb46
bb44:
  %t252 = load ptr, ptr %l102, !tbaa !29
  %t253 = load { i64, [3 x i64] }, ptr %l103
  %t254 = load %"compiler/diagmsg:Msg", ptr %l104
  %t255 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s7, ptr %t252, { i64, [3 x i64] } %t253, %"compiler/diagmsg:Msg" %t254)
  store i64 %t255, ptr %l105
  br label %bb45
bb45:
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t257 = insertvalue { i32, { { i64, ptr }, { i64, ptr } } } zeroinitializer, i32 65536, 0
  store { i32, { { i64, ptr }, { i64, ptr } } } %t257, ptr %rv
  br label %ret
bb46:
  call void @__olang_scope_close(ptr %s3)
  br label %bb201
bb47:
  %t258 = load i1, ptr %l110, !tbaa !21
  br i1 %t258, label %bb48, label %bb49
bb48:
  %t259 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t261 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s8, { i64, ptr } %t259, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d98, i32 0, i32 1) })
  store i1 %t261, ptr %l113
  br label %bb50
bb49:
  store i1 false, ptr %l111, !tbaa !21
  br label %bb51
bb50:
  %t262 = load i1, ptr %l113, !tbaa !21
  %t263 = xor i1 %t262, true
  store i1 %t263, ptr %l111, !tbaa !21
  br label %bb51
bb51:
  %t265 = load i1, ptr %l111, !tbaa !21
  br i1 %t265, label %bb52, label %bb53
bb52:
  %t266 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t268 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s8, { i64, ptr } %t266, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d99, i32 0, i32 1) })
  store i1 %t268, ptr %l117
  br label %bb54
bb53:
  store i1 false, ptr %l115, !tbaa !21
  br label %bb55
bb54:
  %t269 = load i1, ptr %l117, !tbaa !21
  %t270 = xor i1 %t269, true
  store i1 %t270, ptr %l115, !tbaa !21
  br label %bb55
bb55:
  %t272 = load i1, ptr %l115, !tbaa !21
  br i1 %t272, label %bb56, label %bb57
bb56:
  store %olang.scope zeroinitializer, ptr %s9
  %t273 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t275 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %v1, ptr %s9, ptr %s9, { i64, ptr } %t273, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d100, i32 0, i32 1) })
  store { i64, ptr } %t275, ptr %l120
  br label %bb58
bb57:
  store %olang.scope zeroinitializer, ptr %s23
  %t276 = load ptr, ptr %l3, !tbaa !29
  %t278 = getelementptr %"compiler/load:Module", ptr %t276, i32 0, i32 0
  %t279 = load { i64, ptr }, ptr %t278, !tbaa !27
  %t281 = call { i64, ptr } @compiler_2fload_2emoduleDir(ptr %v0, ptr %s23, { i64, ptr } %t279)
  store { i64, ptr } %t281, ptr %l256
  br label %bb127
bb58:
  %t282 = load { i64, ptr }, ptr %l120, !tbaa !27
  store { i64, ptr } %t282, ptr %l10, !tbaa !27
  %t283 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t285 = extractvalue { i64, ptr } %t283, 0
  %t287 = icmp slt i64 %t285, 4
  br i1 %t287, label %bb59, label %bb60
bb59:
  store %olang.scope zeroinitializer, ptr %s10
  %t289 = load ptr, ptr %l0, !tbaa !29
  %t291 = getelementptr %"compiler/load:Loader", ptr %t289, i32 0, i32 4
  %t292 = load ptr, ptr %t291, !tbaa !29
  store ptr %t292, ptr %l125, !tbaa !29
  %t293 = load { i64, [3 x i64] }, ptr %l4
  store { i64, [3 x i64] } %t293, ptr %l126
  %t294 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportRemoteNeedsFile(ptr %s10)
  store %"compiler/diagmsg:Msg" %t294, ptr %l127
  br label %bb61
bb60:
  br label %bb63
bb61:
  %t295 = load ptr, ptr %l125, !tbaa !29
  %t296 = load { i64, [3 x i64] }, ptr %l126
  %t297 = load %"compiler/diagmsg:Msg", ptr %l127
  %t298 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s10, ptr %t295, { i64, [3 x i64] } %t296, %"compiler/diagmsg:Msg" %t297)
  store i64 %t298, ptr %l128
  br label %bb62
bb62:
  call void @__olang_scope_close(ptr %s10)
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s0)
  %t300 = insertvalue { i32, { { i64, ptr }, { i64, ptr } } } zeroinitializer, i32 65536, 0
  store { i32, { { i64, ptr }, { i64, ptr } } } %t300, ptr %rv
  br label %ret
bb63:
  %t301 = load ptr, ptr %l0, !tbaa !29
  %t303 = getelementptr %"compiler/load:Loader", ptr %t301, i32 0, i32 2
  %t304 = load ptr, ptr %t303, !tbaa !29
  %t305 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t305, ptr %l133, !tbaa !27
  %t306 = getelementptr { i64, ptr }, ptr %l133, i32 0, i32 1
  %t307 = load ptr, ptr %t306, !tbaa !27
  %t308 = getelementptr { i64, ptr }, ptr %t307, i64 0
  %t309 = load { i64, ptr }, ptr %t308, !tbaa !37
  %t310 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t310, ptr %l135, !tbaa !27
  %t311 = getelementptr { i64, ptr }, ptr %l135, i32 0, i32 1
  %t312 = load ptr, ptr %t311, !tbaa !27
  %t313 = getelementptr { i64, ptr }, ptr %t312, i64 1
  %t314 = load { i64, ptr }, ptr %t313, !tbaa !37
  %t315 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t315, ptr %l137, !tbaa !27
  %t316 = getelementptr { i64, ptr }, ptr %l137, i32 0, i32 1
  %t317 = load ptr, ptr %t316, !tbaa !27
  %t318 = getelementptr { i64, ptr }, ptr %t317, i64 2
  %t319 = load { i64, ptr }, ptr %t318, !tbaa !37
  %t324 = call { i32, { i64, ptr } } @compiler_2ffetch_2ecompiler_2ffetch_3aFetcher_2eFetch(ptr %v0, ptr %s9, ptr %s9, ptr %s9, ptr %s9, ptr %t304, { i64, ptr } %t309, { i64, ptr } %t314, { i64, ptr } %t319)
  %t325 = extractvalue { i32, { i64, ptr } } %t324, 1
  %t326 = extractvalue { i32, { i64, ptr } } %t324, 0
  store i32 %t326, ptr %l140
  %t327 = icmp ne i32 %t326, 0
  br i1 %t327, label %bb65, label %ok.328, !prof !99
ok.328:
  store { i64, ptr } %t325, ptr %l139
  br label %bb64
bb64:
  %t329 = load { i64, ptr }, ptr %l139, !tbaa !27
  store { i64, ptr } %t329, ptr %l130, !tbaa !27
  br label %bb89
bb65:
  %t330 = load i32, ptr %l140, !tbaa !23
  %t331 = icmp eq i32 %t330, 65536
  br i1 %t331, label %bb66, label %bb67
bb66:
  br label %bb68
bb67:
  %t333 = load i32, ptr %l140, !tbaa !23
  %t334 = icmp eq i32 %t333, 65537
  br i1 %t334, label %bb69, label %bb70
bb68:
  store %olang.scope zeroinitializer, ptr %s11
  %t336 = load ptr, ptr %l0, !tbaa !29
  %t338 = getelementptr %"compiler/load:Loader", ptr %t336, i32 0, i32 4
  %t339 = load ptr, ptr %t338, !tbaa !29
  store ptr %t339, ptr %l147, !tbaa !29
  %t340 = load { i64, [3 x i64] }, ptr %l4
  store { i64, [3 x i64] } %t340, ptr %l148
  %t341 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportRemoteBadName(ptr %s11)
  store %"compiler/diagmsg:Msg" %t341, ptr %l149
  br label %bb78
bb69:
  br label %bb71
bb70:
  %t342 = load i32, ptr %l140, !tbaa !23
  %t343 = icmp eq i32 %t342, 65538
  br i1 %t343, label %bb72, label %bb73
bb71:
  store %olang.scope zeroinitializer, ptr %s12
  %t345 = load ptr, ptr %l0, !tbaa !29
  %t347 = getelementptr %"compiler/load:Loader", ptr %t345, i32 0, i32 4
  %t348 = load ptr, ptr %t347, !tbaa !29
  store ptr %t348, ptr %l154, !tbaa !29
  %t349 = load { i64, [3 x i64] }, ptr %l4
  store { i64, [3 x i64] } %t349, ptr %l155
  %t350 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t352 = call { i64, ptr } @compiler_2fload_2ekey(ptr %s9, ptr %s12, { i64, ptr } %t350)
  store { i64, ptr } %t352, ptr %l157
  br label %bb80
bb72:
  br label %bb74
bb73:
  %t353 = load i32, ptr %l140, !tbaa !23
  %t354 = icmp eq i32 %t353, 65539
  br i1 %t354, label %bb75, label %bb76
bb74:
  store %olang.scope zeroinitializer, ptr %s13
  %t356 = load ptr, ptr %l0, !tbaa !29
  %t358 = getelementptr %"compiler/load:Loader", ptr %t356, i32 0, i32 4
  %t359 = load ptr, ptr %t358, !tbaa !29
  store ptr %t359, ptr %l164, !tbaa !29
  %t360 = load { i64, [3 x i64] }, ptr %l4
  store { i64, [3 x i64] } %t360, ptr %l165
  %t361 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t363 = call { i64, ptr } @compiler_2fload_2ekey(ptr %s9, ptr %s13, { i64, ptr } %t361)
  store { i64, ptr } %t363, ptr %l167
  br label %bb83
bb75:
  br label %bb77
bb76:
  %t364 = load i32, ptr %l140, !tbaa !23
  %t365 = lshr i32 %t364, 16
  %t366 = and i32 %t364, 65535
  %t367 = icmp eq i32 %t365, 1
  %t368 = select i1 %t367, i32 0, i32 0
  %t369 = icmp eq i32 %t364, 0
  %t370 = shl i32 %t368, 16
  %t371 = or i32 %t370, %t366
  %t372 = select i1 %t369, i32 0, i32 %t371
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s0)
  %t374 = insertvalue { i32, { { i64, ptr }, { i64, ptr } } } zeroinitializer, i32 %t372, 0
  store { i32, { { i64, ptr }, { i64, ptr } } } %t374, ptr %rv
  br label %ret
bb77:
  store %olang.scope zeroinitializer, ptr %s14
  %t375 = load ptr, ptr %l0, !tbaa !29
  %t377 = getelementptr %"compiler/load:Loader", ptr %t375, i32 0, i32 4
  %t378 = load ptr, ptr %t377, !tbaa !29
  store ptr %t378, ptr %l174, !tbaa !29
  %t379 = load { i64, [3 x i64] }, ptr %l4
  store { i64, [3 x i64] } %t379, ptr %l175
  %t380 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t382 = call { i64, ptr } @compiler_2fload_2ekey(ptr %s9, ptr %s14, { i64, ptr } %t380)
  store { i64, ptr } %t382, ptr %l177
  br label %bb86
bb78:
  %t383 = load ptr, ptr %l147, !tbaa !29
  %t384 = load { i64, [3 x i64] }, ptr %l148
  %t385 = load %"compiler/diagmsg:Msg", ptr %l149
  %t386 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s11, ptr %t383, { i64, [3 x i64] } %t384, %"compiler/diagmsg:Msg" %t385)
  store i64 %t386, ptr %l150
  br label %bb79
bb79:
  call void @__olang_scope_close(ptr %s11)
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d101, i32 0, i32 1) }, ptr %l151, !tbaa !27
  %t387 = load { i64, ptr }, ptr %l151, !tbaa !27
  store { i64, ptr } %t387, ptr %l130, !tbaa !27
  br label %bb89
bb80:
  %t389 = load { i64, ptr }, ptr %l157, !tbaa !27
  %t390 = extractvalue { i64, ptr } %t389, 0
  %t391 = extractvalue { i64, ptr } %t389, 1
  %t392 = mul i64 %t390, 1
  %t393 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t392)
  call void @llvm.memcpy.p0.p0.i64(ptr %t393, ptr %t391, i64 %t392, i1 false)
  %t394 = insertvalue { i64, ptr } undef, i64 %t390, 0
  %t395 = insertvalue { i64, ptr } %t394, ptr %t393, 1
  %t397 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportLockNotACommit(ptr %s12, ptr %s12, { i64, ptr } %t395)
  store %"compiler/diagmsg:Msg" %t397, ptr %l159
  br label %bb81
bb81:
  %t398 = load ptr, ptr %l154, !tbaa !29
  %t399 = load { i64, [3 x i64] }, ptr %l155
  %t400 = load %"compiler/diagmsg:Msg", ptr %l159
  %t401 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s12, ptr %t398, { i64, [3 x i64] } %t399, %"compiler/diagmsg:Msg" %t400)
  store i64 %t401, ptr %l160
  br label %bb82
bb82:
  call void @__olang_scope_close(ptr %s12)
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d102, i32 0, i32 1) }, ptr %l161, !tbaa !27
  %t402 = load { i64, ptr }, ptr %l161, !tbaa !27
  store { i64, ptr } %t402, ptr %l130, !tbaa !27
  br label %bb89
bb83:
  %t404 = load { i64, ptr }, ptr %l167, !tbaa !27
  %t405 = extractvalue { i64, ptr } %t404, 0
  %t406 = extractvalue { i64, ptr } %t404, 1
  %t407 = mul i64 %t405, 1
  %t408 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t407)
  call void @llvm.memcpy.p0.p0.i64(ptr %t408, ptr %t406, i64 %t407, i1 false)
  %t409 = insertvalue { i64, ptr } undef, i64 %t405, 0
  %t410 = insertvalue { i64, ptr } %t409, ptr %t408, 1
  %t412 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportFetchFailed(ptr %s13, ptr %s13, { i64, ptr } %t410)
  store %"compiler/diagmsg:Msg" %t412, ptr %l169
  br label %bb84
bb84:
  %t413 = load ptr, ptr %l164, !tbaa !29
  %t414 = load { i64, [3 x i64] }, ptr %l165
  %t415 = load %"compiler/diagmsg:Msg", ptr %l169
  %t416 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s13, ptr %t413, { i64, [3 x i64] } %t414, %"compiler/diagmsg:Msg" %t415)
  store i64 %t416, ptr %l170
  br label %bb85
bb85:
  call void @__olang_scope_close(ptr %s13)
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d103, i32 0, i32 1) }, ptr %l171, !tbaa !27
  %t417 = load { i64, ptr }, ptr %l171, !tbaa !27
  store { i64, ptr } %t417, ptr %l130, !tbaa !27
  br label %bb89
bb86:
  %t419 = load { i64, ptr }, ptr %l177, !tbaa !27
  %t420 = extractvalue { i64, ptr } %t419, 0
  %t421 = extractvalue { i64, ptr } %t419, 1
  %t422 = mul i64 %t420, 1
  %t423 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t422)
  call void @llvm.memcpy.p0.p0.i64(ptr %t423, ptr %t421, i64 %t422, i1 false)
  %t424 = insertvalue { i64, ptr } undef, i64 %t420, 0
  %t425 = insertvalue { i64, ptr } %t424, ptr %t423, 1
  %t427 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportLockedFetchFailed(ptr %s14, ptr %s14, { i64, ptr } %t425)
  store %"compiler/diagmsg:Msg" %t427, ptr %l179
  br label %bb87
bb87:
  %t428 = load ptr, ptr %l174, !tbaa !29
  %t429 = load { i64, [3 x i64] }, ptr %l175
  %t430 = load %"compiler/diagmsg:Msg", ptr %l179
  %t431 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s14, ptr %t428, { i64, [3 x i64] } %t429, %"compiler/diagmsg:Msg" %t430)
  store i64 %t431, ptr %l180
  br label %bb88
bb88:
  call void @__olang_scope_close(ptr %s14)
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d104, i32 0, i32 1) }, ptr %l181, !tbaa !27
  %t432 = load { i64, ptr }, ptr %l181, !tbaa !27
  store { i64, ptr } %t432, ptr %l130, !tbaa !27
  br label %bb89
bb89:
  %t434 = load { i64, ptr }, ptr %l130, !tbaa !27
  %t435 = extractvalue { i64, ptr } %t434, 0
  store i64 %t435, ptr %l183, !tbaa !24
  %t436 = load i64, ptr %l183, !tbaa !24
  %t437 = mul i64 %t436, 1
  %t438 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t437)
  %t439 = insertvalue { i64, ptr } undef, i64 %t436, 0
  %t440 = insertvalue { i64, ptr } %t439, ptr %t438, 1
  store { i64, ptr } %t440, ptr %l184, !tbaa !27
  %t441 = getelementptr { i64, ptr }, ptr %l184, i32 0, i32 1
  %t442 = load ptr, ptr %t441, !tbaa !27
  %t443 = getelementptr { i64, ptr }, ptr %l130, i32 0, i32 1
  %t444 = load ptr, ptr %t443, !tbaa !27
  %t445 = load i64, ptr %l183, !tbaa !24
  %t446 = mul i64 %t445, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t442, ptr %t444, i64 %t446, i1 false)
  %t447 = load { i64, ptr }, ptr %l184, !tbaa !27
  store { i64, ptr } %t447, ptr %l11, !tbaa !27
  %t448 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t450 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s9, ptr %s9, { i64, ptr } %t448, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d105, i32 0, i32 1) })
  store i1 %t450, ptr %l186
  br label %bb90
bb90:
  %t451 = load i1, ptr %l186, !tbaa !21
  br i1 %t451, label %bb91, label %bb92
bb91:
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s0)
  %t453 = insertvalue { i32, { { i64, ptr }, { i64, ptr } } } zeroinitializer, i32 65536, 0
  store { i32, { { i64, ptr }, { i64, ptr } } } %t453, ptr %rv
  br label %ret
bb92:
  br label %bb93
bb93:
  %t454 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s9)
  store %"std/prelude/text:StringBuilder" %t454, ptr %l188
  br label %bb94
bb94:
  %t455 = load %"std/prelude/text:StringBuilder", ptr %l188
  store %"std/prelude/text:StringBuilder" %t455, ptr %l12
  %t456 = load { i64, ptr }, ptr %l11, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s9, ptr %s9, ptr %l12, { i64, ptr } %t456)
  br label %bb95
bb95:
  store i64 3, ptr %l13, !tbaa !24
  %t459 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t461 = extractvalue { i64, ptr } %t459, 0
  store i64 %t461, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t463 = load i64, ptr %l14, !tbaa !24
  %t464 = load i64, ptr %l13, !tbaa !24
  %t467 = icmp sgt i64 %t463, %t464
  br i1 %t467, label %bb96, label %bb97
bb96:
  %t469 = load i64, ptr %l15, !tbaa !24
  %t471 = icmp sgt i64 %t469, 0
  br i1 %t471, label %bb98, label %bb99
bb97:
  store i64 0, ptr %l196, !tbaa !24
  br label %bb101
bb98:
  %t473 = load i64, ptr %l14, !tbaa !24
  %t474 = load i64, ptr %l13, !tbaa !24
  %t477 = sub i64 %t473, %t474
  %t478 = load i64, ptr %l15, !tbaa !24
  %t481 = add i64 %t477, %t478
  %t483 = sub i64 %t481, 1
  %t484 = load i64, ptr %l15, !tbaa !24
  %t487 = sdiv i64 %t483, %t484
  store i64 %t487, ptr %l199, !tbaa !24
  br label %bb100
bb99:
  store i64 0, ptr %l199, !tbaa !24
  br label %bb100
bb100:
  %t489 = load i64, ptr %l199, !tbaa !24
  store i64 %t489, ptr %l196, !tbaa !24
  br label %bb101
bb101:
  %t490 = load i64, ptr %l196, !tbaa !24
  store i64 %t490, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb102
bb102:
  %t491 = load i64, ptr %l17, !tbaa !24
  %t492 = load i64, ptr %l16, !tbaa !24
  %t495 = icmp slt i64 %t491, %t492
  %t497 = xor i1 %t495, true
  br i1 %t497, label %bb103, label %bb104
bb103:
  br label %bb109
bb104:
  br label %bb105
bb105:
  %t499 = load i64, ptr %l13, !tbaa !24
  %t500 = load i64, ptr %l17, !tbaa !24
  %t501 = load i64, ptr %l15, !tbaa !24
  %t504 = mul i64 %t500, %t501
  %t507 = add i64 %t499, %t504
  store i64 %t507, ptr %l18, !tbaa !24
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s9, ptr %l12, i8 47)
  br label %bb106
bb106:
  %t510 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t510, ptr %l219, !tbaa !27
  %t511 = load i64, ptr %l18, !tbaa !24
  %t513 = getelementptr { i64, ptr }, ptr %l219, i32 0, i32 1
  %t514 = load ptr, ptr %t513, !tbaa !27
  %t515 = getelementptr { i64, ptr }, ptr %t514, i64 %t511
  %t516 = load { i64, ptr }, ptr %t515, !tbaa !37
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s9, ptr %s9, ptr %l12, { i64, ptr } %t516)
  br label %bb107
bb107:
  br label %bb108
bb108:
  %t519 = load i64, ptr %l17, !tbaa !24
  %t521 = add i64 %t519, 1
  store i64 %t521, ptr %l17, !tbaa !24
  br label %bb102
bb109:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s9, ptr %s9, ptr %l12, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d106, i32 0, i32 1) })
  br label %bb110
bb110:
  %t525 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s9, ptr %s9, ptr %l12)
  store { i64, ptr } %t525, ptr %l226
  br label %bb111
bb111:
  %t526 = load { i64, ptr }, ptr %l226, !tbaa !27
  %t527 = extractvalue { i64, ptr } %t526, 0
  %t528 = extractvalue { i64, ptr } %t526, 1
  %t529 = mul i64 %t527, 1
  %t530 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t529)
  call void @llvm.memcpy.p0.p0.i64(ptr %t530, ptr %t528, i64 %t529, i1 false)
  %t531 = insertvalue { i64, ptr } undef, i64 %t527, 0
  %t532 = insertvalue { i64, ptr } %t531, ptr %t530, 1
  %t534 = call { i64, ptr } @compiler_2fload_2eNormalize(ptr %s9, ptr %s9, { i64, ptr } %t532)
  store { i64, ptr } %t534, ptr %l228
  br label %bb112
bb112:
  %t535 = load { i64, ptr }, ptr %l228, !tbaa !27
  %t536 = extractvalue { i64, ptr } %t535, 1
  %t537 = extractvalue { i64, ptr } %t535, 0
  %t538 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t537)
  call void @olang_textcopy(ptr %t538, ptr %t536, i64 %t537)
  %t539 = insertvalue { i64, ptr } undef, i64 %t537, 0
  %t540 = insertvalue { i64, ptr } %t539, ptr %t538, 1
  store { i64, ptr } %t540, ptr %l229, !tbaa !27
  %t541 = load ptr, ptr %lp8
  %t542 = load { i64, ptr }, ptr %t541, !tbaa !27
  %t543 = extractvalue { i64, ptr } %t542, 0
  %t544 = load { i64, ptr }, ptr %l229, !tbaa !27
  %t545 = extractvalue { i64, ptr } %t544, 0
  store i64 %t545, ptr %l231, !tbaa !24
  %t547 = load i64, ptr %l231, !tbaa !24
  %t548 = icmp eq i64 %t543, %t547
  br i1 %t548, label %bb113, label %bb114
bb113:
  %t550 = load ptr, ptr %lp8
  %t551 = getelementptr { i64, ptr }, ptr %t550, i32 0, i32 1
  %t552 = load ptr, ptr %t551, !tbaa !27
  %t553 = getelementptr { i64, ptr }, ptr %l229, i32 0, i32 1
  %t554 = load ptr, ptr %t553, !tbaa !27
  %t555 = load i64, ptr %l231, !tbaa !24
  %t556 = mul i64 %t555, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t552, ptr %t554, i64 %t556, i1 false)
  br label %bb115
bb114:
  %t557 = load { i64, ptr }, ptr %l229, !tbaa !27
  %t558 = load ptr, ptr %lp8
  store { i64, ptr } %t557, ptr %t558, !tbaa !27
  br label %bb115
bb115:
  %t559 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t561 = call { i64, ptr } @compiler_2fload_2eNormalize(ptr %v1, ptr %s9, { i64, ptr } %t559)
  store { i64, ptr } %t561, ptr %l234
  br label %bb116
bb116:
  %t562 = load { i64, ptr }, ptr %l234, !tbaa !27
  %t563 = extractvalue { i64, ptr } %t562, 1
  %t564 = extractvalue { i64, ptr } %t562, 0
  %t565 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t564)
  call void @olang_textcopy(ptr %t565, ptr %t563, i64 %t564)
  %t566 = insertvalue { i64, ptr } undef, i64 %t564, 0
  %t567 = insertvalue { i64, ptr } %t566, ptr %t565, 1
  store { i64, ptr } %t567, ptr %l235, !tbaa !27
  %t568 = load ptr, ptr %lp9
  %t569 = load { i64, ptr }, ptr %t568, !tbaa !27
  %t570 = extractvalue { i64, ptr } %t569, 0
  %t571 = load { i64, ptr }, ptr %l235, !tbaa !27
  %t572 = extractvalue { i64, ptr } %t571, 0
  store i64 %t572, ptr %l237, !tbaa !24
  %t574 = load i64, ptr %l237, !tbaa !24
  %t575 = icmp eq i64 %t570, %t574
  br i1 %t575, label %bb117, label %bb118
bb117:
  %t577 = load ptr, ptr %lp9
  %t578 = getelementptr { i64, ptr }, ptr %t577, i32 0, i32 1
  %t579 = load ptr, ptr %t578, !tbaa !27
  %t580 = getelementptr { i64, ptr }, ptr %l235, i32 0, i32 1
  %t581 = load ptr, ptr %t580, !tbaa !27
  %t582 = load i64, ptr %l237, !tbaa !24
  %t583 = mul i64 %t582, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t579, ptr %t581, i64 %t583, i1 false)
  br label %bb119
bb118:
  %t584 = load { i64, ptr }, ptr %l235, !tbaa !27
  %t585 = load ptr, ptr %lp9
  store { i64, ptr } %t584, ptr %t585, !tbaa !27
  br label %bb119
bb119:
  %t586 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t588 = call { i64, ptr } @compiler_2fload_2ekey(ptr %s9, ptr %s9, { i64, ptr } %t586)
  store { i64, ptr } %t588, ptr %l240
  br label %bb120
bb120:
  %t589 = load { i64, ptr }, ptr %l240, !tbaa !27
  store { i64, ptr } %t589, ptr %l19, !tbaa !27
  %t590 = load ptr, ptr %lp9
  %t591 = load { i64, ptr }, ptr %t590, !tbaa !27
  %t592 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t594 = extractvalue { i64, ptr } %t592, 1
  %t595 = extractvalue { i64, ptr } %t592, 0
  %t596 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d107, i32 0, i32 1) }, 1
  %t597 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d107, i32 0, i32 1) }, 0
  %t598 = add i64 %t595, %t597
  %t599 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t598)
  call void @olang_textcopy(ptr %t599, ptr %t594, i64 %t595)
  %t600 = getelementptr i8, ptr %t599, i64 %t595
  call void @olang_textcopy(ptr %t600, ptr %t596, i64 %t597)
  %t601 = insertvalue { i64, ptr } undef, i64 %t598, 0
  %t602 = insertvalue { i64, ptr } %t601, ptr %t599, 1
  %t604 = extractvalue { i64, ptr } %t602, 0
  %t605 = extractvalue { i64, ptr } %t602, 1
  %t606 = mul i64 %t604, 1
  %t607 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t606)
  call void @llvm.memcpy.p0.p0.i64(ptr %t607, ptr %t605, i64 %t606, i1 false)
  %t608 = insertvalue { i64, ptr } undef, i64 %t604, 0
  %t609 = insertvalue { i64, ptr } %t608, ptr %t607, 1
  %t612 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v2, ptr %s9, { i64, ptr } %t591, { i64, ptr } %t609)
  store i1 %t612, ptr %l245
  br label %bb121
bb121:
  %t613 = load i1, ptr %l245, !tbaa !21
  %t614 = xor i1 %t613, true
  br i1 %t614, label %bb122, label %bb123
bb122:
  store %olang.scope zeroinitializer, ptr %s22
  %t616 = load ptr, ptr %l0, !tbaa !29
  %t618 = getelementptr %"compiler/load:Loader", ptr %t616, i32 0, i32 4
  %t619 = load ptr, ptr %t618, !tbaa !29
  store ptr %t619, ptr %l248, !tbaa !29
  %t620 = load { i64, [3 x i64] }, ptr %l4
  store { i64, [3 x i64] } %t620, ptr %l249
  %t621 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t623 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportLeavesRoot(ptr %s9, ptr %s22, { i64, ptr } %t621)
  store %"compiler/diagmsg:Msg" %t623, ptr %l251
  br label %bb124
bb123:
  br label %bb126
bb124:
  %t624 = load ptr, ptr %l248, !tbaa !29
  %t625 = load { i64, [3 x i64] }, ptr %l249
  %t626 = load %"compiler/diagmsg:Msg", ptr %l251
  %t627 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s22, ptr %t624, { i64, [3 x i64] } %t625, %"compiler/diagmsg:Msg" %t626)
  store i64 %t627, ptr %l252
  br label %bb125
bb125:
  call void @__olang_scope_close(ptr %s22)
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s0)
  %t629 = insertvalue { i32, { { i64, ptr }, { i64, ptr } } } zeroinitializer, i32 65536, 0
  store { i32, { { i64, ptr }, { i64, ptr } } } %t629, ptr %rv
  br label %ret
bb126:
  call void @__olang_scope_close(ptr %s9)
  br label %bb200
bb127:
  %t630 = load { i64, ptr }, ptr %l256, !tbaa !27
  store { i64, ptr } %t630, ptr %l20, !tbaa !27
  %t631 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t633 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s23, { i64, ptr } %t631, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d108, i32 0, i32 1) })
  store i1 %t633, ptr %l258
  br label %bb128
bb128:
  %t634 = load i1, ptr %l258, !tbaa !21
  br i1 %t634, label %bb129, label %bb130
bb129:
  store i1 true, ptr %l259, !tbaa !21
  br label %bb132
bb130:
  %t635 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t637 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s23, ptr %s23, { i64, ptr } %t635, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d109, i32 0, i32 1) })
  store i1 %t637, ptr %l261
  br label %bb131
bb131:
  %t638 = load i1, ptr %l261, !tbaa !21
  store i1 %t638, ptr %l259, !tbaa !21
  br label %bb132
bb132:
  %t639 = load i1, ptr %l259, !tbaa !21
  br i1 %t639, label %bb133, label %bb134
bb133:
  store %olang.scope zeroinitializer, ptr %s24
  %t640 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t642 = extractvalue { i64, ptr } %t640, 1
  %t643 = extractvalue { i64, ptr } %t640, 0
  %t644 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d110, i32 0, i32 1) }, 1
  %t645 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d110, i32 0, i32 1) }, 0
  %t646 = add i64 %t643, %t645
  %t647 = call ptr @__olang_scope_alloc(ptr %s24, i64 %t646)
  call void @olang_textcopy(ptr %t647, ptr %t642, i64 %t643)
  %t648 = getelementptr i8, ptr %t647, i64 %t643
  call void @olang_textcopy(ptr %t648, ptr %t644, i64 %t645)
  %t649 = insertvalue { i64, ptr } undef, i64 %t646, 0
  %t650 = insertvalue { i64, ptr } %t649, ptr %t647, 1
  %t652 = extractvalue { i64, ptr } %t650, 0
  %t653 = extractvalue { i64, ptr } %t650, 1
  %t654 = mul i64 %t652, 1
  %t655 = call ptr @__olang_scope_alloc(ptr %s24, i64 %t654)
  call void @llvm.memcpy.p0.p0.i64(ptr %t655, ptr %t653, i64 %t654, i1 false)
  %t656 = insertvalue { i64, ptr } undef, i64 %t652, 0
  %t657 = insertvalue { i64, ptr } %t656, ptr %t655, 1
  %t659 = call { i64, ptr } @compiler_2fload_2eNormalize(ptr %s24, ptr %s24, { i64, ptr } %t657)
  store { i64, ptr } %t659, ptr %l265
  br label %bb135
bb134:
  store %olang.scope zeroinitializer, ptr %s27
  %t660 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t661 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t663 = extractvalue { i64, ptr } %t660, 1
  %t664 = extractvalue { i64, ptr } %t660, 0
  %t665 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d111, i32 0, i32 1) }, 1
  %t666 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d111, i32 0, i32 1) }, 0
  %t667 = add i64 %t664, %t666
  %t669 = extractvalue { i64, ptr } %t661, 1
  %t670 = extractvalue { i64, ptr } %t661, 0
  %t671 = add i64 %t667, %t670
  %t672 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d112, i32 0, i32 1) }, 1
  %t673 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d112, i32 0, i32 1) }, 0
  %t674 = add i64 %t671, %t673
  %t675 = call ptr @__olang_scope_alloc(ptr %s27, i64 %t674)
  call void @olang_textcopy(ptr %t675, ptr %t663, i64 %t664)
  %t676 = getelementptr i8, ptr %t675, i64 %t664
  call void @olang_textcopy(ptr %t676, ptr %t665, i64 %t666)
  %t677 = getelementptr i8, ptr %t676, i64 %t666
  call void @olang_textcopy(ptr %t677, ptr %t669, i64 %t670)
  %t678 = getelementptr i8, ptr %t677, i64 %t670
  call void @olang_textcopy(ptr %t678, ptr %t672, i64 %t673)
  %t679 = insertvalue { i64, ptr } undef, i64 %t674, 0
  %t680 = insertvalue { i64, ptr } %t679, ptr %t675, 1
  %t682 = extractvalue { i64, ptr } %t680, 0
  %t683 = extractvalue { i64, ptr } %t680, 1
  %t684 = mul i64 %t682, 1
  %t685 = call ptr @__olang_scope_alloc(ptr %s27, i64 %t684)
  call void @llvm.memcpy.p0.p0.i64(ptr %t685, ptr %t683, i64 %t684, i1 false)
  %t686 = insertvalue { i64, ptr } undef, i64 %t682, 0
  %t687 = insertvalue { i64, ptr } %t686, ptr %t685, 1
  %t689 = call { i64, ptr } @compiler_2fload_2eNormalize(ptr %s27, ptr %s27, { i64, ptr } %t687)
  store { i64, ptr } %t689, ptr %l274
  br label %bb139
bb135:
  %t690 = load { i64, ptr }, ptr %l265, !tbaa !27
  %t691 = extractvalue { i64, ptr } %t690, 1
  %t692 = extractvalue { i64, ptr } %t690, 0
  %t693 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t692)
  call void @olang_textcopy(ptr %t693, ptr %t691, i64 %t692)
  %t694 = insertvalue { i64, ptr } undef, i64 %t692, 0
  %t695 = insertvalue { i64, ptr } %t694, ptr %t693, 1
  store { i64, ptr } %t695, ptr %l266, !tbaa !27
  %t696 = load ptr, ptr %lp8
  %t697 = load { i64, ptr }, ptr %t696, !tbaa !27
  %t698 = extractvalue { i64, ptr } %t697, 0
  %t699 = load { i64, ptr }, ptr %l266, !tbaa !27
  %t700 = extractvalue { i64, ptr } %t699, 0
  store i64 %t700, ptr %l268, !tbaa !24
  %t702 = load i64, ptr %l268, !tbaa !24
  %t703 = icmp eq i64 %t698, %t702
  br i1 %t703, label %bb136, label %bb137
bb136:
  %t705 = load ptr, ptr %lp8
  %t706 = getelementptr { i64, ptr }, ptr %t705, i32 0, i32 1
  %t707 = load ptr, ptr %t706, !tbaa !27
  %t708 = getelementptr { i64, ptr }, ptr %l266, i32 0, i32 1
  %t709 = load ptr, ptr %t708, !tbaa !27
  %t710 = load i64, ptr %l268, !tbaa !24
  %t711 = mul i64 %t710, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t707, ptr %t709, i64 %t711, i1 false)
  br label %bb138
bb137:
  %t712 = load { i64, ptr }, ptr %l266, !tbaa !27
  %t713 = load ptr, ptr %lp8
  store { i64, ptr } %t712, ptr %t713, !tbaa !27
  br label %bb138
bb138:
  call void @__olang_scope_close(ptr %s24)
  br label %bb143
bb139:
  %t714 = load { i64, ptr }, ptr %l274, !tbaa !27
  %t715 = extractvalue { i64, ptr } %t714, 1
  %t716 = extractvalue { i64, ptr } %t714, 0
  %t717 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t716)
  call void @olang_textcopy(ptr %t717, ptr %t715, i64 %t716)
  %t718 = insertvalue { i64, ptr } undef, i64 %t716, 0
  %t719 = insertvalue { i64, ptr } %t718, ptr %t717, 1
  store { i64, ptr } %t719, ptr %l275, !tbaa !27
  %t720 = load ptr, ptr %lp8
  %t721 = load { i64, ptr }, ptr %t720, !tbaa !27
  %t722 = extractvalue { i64, ptr } %t721, 0
  %t723 = load { i64, ptr }, ptr %l275, !tbaa !27
  %t724 = extractvalue { i64, ptr } %t723, 0
  store i64 %t724, ptr %l277, !tbaa !24
  %t726 = load i64, ptr %l277, !tbaa !24
  %t727 = icmp eq i64 %t722, %t726
  br i1 %t727, label %bb140, label %bb141
bb140:
  %t729 = load ptr, ptr %lp8
  %t730 = getelementptr { i64, ptr }, ptr %t729, i32 0, i32 1
  %t731 = load ptr, ptr %t730, !tbaa !27
  %t732 = getelementptr { i64, ptr }, ptr %l275, i32 0, i32 1
  %t733 = load ptr, ptr %t732, !tbaa !27
  %t734 = load i64, ptr %l277, !tbaa !24
  %t735 = mul i64 %t734, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t731, ptr %t733, i64 %t735, i1 false)
  br label %bb142
bb141:
  %t736 = load { i64, ptr }, ptr %l275, !tbaa !27
  %t737 = load ptr, ptr %lp8
  store { i64, ptr } %t736, ptr %t737, !tbaa !27
  br label %bb142
bb142:
  call void @__olang_scope_close(ptr %s27)
  br label %bb143
bb143:
  %t738 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t740 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s23, { i64, ptr } %t738, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d113, i32 0, i32 1) })
  store i1 %t740, ptr %l280
  br label %bb144
bb144:
  %t741 = load i1, ptr %l280, !tbaa !21
  br i1 %t741, label %bb145, label %bb146
bb145:
  %t742 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t744 = call { i64, ptr } @std_2ffilepath_2eBase(ptr %v1, ptr %s23, { i64, ptr } %t742)
  store { i64, ptr } %t744, ptr %l283
  br label %bb147
bb146:
  %t745 = load ptr, ptr %l3, !tbaa !29
  %t747 = getelementptr %"compiler/load:Module", ptr %t745, i32 0, i32 2
  %t748 = load { i64, ptr }, ptr %t747, !tbaa !27
  %t749 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t752 = call { i64, ptr } @compiler_2fload_2erelativeIdentity(ptr %v0, ptr %v1, ptr %s23, { i64, ptr } %t748, { i64, ptr } %t749)
  store { i64, ptr } %t752, ptr %l288
  br label %bb148
bb147:
  %t753 = load { i64, ptr }, ptr %l283, !tbaa !27
  %t754 = extractvalue { i64, ptr } %t753, 1
  %t755 = extractvalue { i64, ptr } %t753, 0
  %t756 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t755)
  call void @olang_textcopy(ptr %t756, ptr %t754, i64 %t755)
  %t757 = insertvalue { i64, ptr } undef, i64 %t755, 0
  %t758 = insertvalue { i64, ptr } %t757, ptr %t756, 1
  store { i64, ptr } %t758, ptr %l281, !tbaa !27
  br label %bb149
bb148:
  %t760 = load { i64, ptr }, ptr %l288, !tbaa !27
  %t761 = extractvalue { i64, ptr } %t760, 1
  %t762 = extractvalue { i64, ptr } %t760, 0
  %t763 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t762)
  call void @olang_textcopy(ptr %t763, ptr %t761, i64 %t762)
  %t764 = insertvalue { i64, ptr } undef, i64 %t762, 0
  %t765 = insertvalue { i64, ptr } %t764, ptr %t763, 1
  store { i64, ptr } %t765, ptr %l281, !tbaa !27
  br label %bb149
bb149:
  %t767 = load ptr, ptr %lp9
  %t768 = load { i64, ptr }, ptr %t767, !tbaa !27
  %t769 = extractvalue { i64, ptr } %t768, 0
  %t770 = load { i64, ptr }, ptr %l281, !tbaa !27
  %t771 = extractvalue { i64, ptr } %t770, 0
  store i64 %t771, ptr %l291, !tbaa !24
  %t773 = load i64, ptr %l291, !tbaa !24
  %t774 = icmp eq i64 %t769, %t773
  br i1 %t774, label %bb150, label %bb151
bb150:
  %t776 = load ptr, ptr %lp9
  %t777 = getelementptr { i64, ptr }, ptr %t776, i32 0, i32 1
  %t778 = load ptr, ptr %t777, !tbaa !27
  %t779 = getelementptr { i64, ptr }, ptr %l281, i32 0, i32 1
  %t780 = load ptr, ptr %t779, !tbaa !27
  %t781 = load i64, ptr %l291, !tbaa !24
  %t782 = mul i64 %t781, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t778, ptr %t780, i64 %t782, i1 false)
  br label %bb152
bb151:
  %t783 = load { i64, ptr }, ptr %l281, !tbaa !27
  %t784 = load ptr, ptr %lp9
  store { i64, ptr } %t783, ptr %t784, !tbaa !27
  br label %bb152
bb152:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d114, i32 0, i32 1) }, ptr %l293, !tbaa !27
  %t785 = load { i64, ptr }, ptr %l293, !tbaa !27
  store { i64, ptr } %t785, ptr %l294, !tbaa !27
  %t786 = load { i64, ptr }, ptr %l294, !tbaa !27
  %t787 = extractvalue { i64, ptr } %t786, 0
  store i64 %t787, ptr %l295, !tbaa !24
  %t788 = load i64, ptr %l295, !tbaa !24
  %t789 = mul i64 %t788, 1
  %t790 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t789)
  %t791 = insertvalue { i64, ptr } undef, i64 %t788, 0
  %t792 = insertvalue { i64, ptr } %t791, ptr %t790, 1
  store { i64, ptr } %t792, ptr %l296, !tbaa !27
  %t793 = getelementptr { i64, ptr }, ptr %l296, i32 0, i32 1
  %t794 = load ptr, ptr %t793, !tbaa !27
  %t795 = getelementptr { i64, ptr }, ptr %l294, i32 0, i32 1
  %t796 = load ptr, ptr %t795, !tbaa !27
  %t797 = load i64, ptr %l295, !tbaa !24
  %t798 = mul i64 %t797, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t794, ptr %t796, i64 %t798, i1 false)
  %t799 = load { i64, ptr }, ptr %l296, !tbaa !27
  store { i64, ptr } %t799, ptr %l21, !tbaa !27
  %t800 = load ptr, ptr %l3, !tbaa !29
  %t802 = getelementptr %"compiler/load:Module", ptr %t800, i32 0, i32 2
  %t803 = load { i64, ptr }, ptr %t802, !tbaa !27
  store { i64, ptr } %t803, ptr %l298, !tbaa !27
  %t804 = load ptr, ptr %l3, !tbaa !29
  %t806 = getelementptr %"compiler/load:Module", ptr %t804, i32 0, i32 2
  %t807 = load { i64, ptr }, ptr %t806, !tbaa !27
  %t810 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v0, { i64, ptr } %t807, i8 47)
  %t811 = extractvalue { i32, i64 } %t810, 1
  %t812 = extractvalue { i32, i64 } %t810, 0
  store i32 %t812, ptr %l304
  %t813 = icmp ne i32 %t812, 0
  br i1 %t813, label %bb154, label %ok.814, !prof !99
ok.814:
  store i64 %t811, ptr %l303
  br label %bb153
bb153:
  %t815 = load i64, ptr %l303, !tbaa !24
  store i64 %t815, ptr %l299, !tbaa !24
  br label %bb156
bb154:
  br label %bb155
bb155:
  %t816 = load ptr, ptr %l3, !tbaa !29
  %t818 = getelementptr %"compiler/load:Module", ptr %t816, i32 0, i32 2
  %t819 = load { i64, ptr }, ptr %t818, !tbaa !27
  %t821 = extractvalue { i64, ptr } %t819, 0
  store i64 %t821, ptr %l299, !tbaa !24
  br label %bb156
bb156:
  %t823 = load { i64, ptr }, ptr %l298, !tbaa !27
  %t824 = extractvalue { i64, ptr } %t823, 0
  store i64 %t824, ptr %l308, !tbaa !24
  %t825 = icmp sge i64 0, 0
  br i1 %t825, label %bb157, label %bb158
bb157:
  %t827 = load i64, ptr %l299, !tbaa !24
  %t828 = icmp sle i64 0, %t827
  br i1 %t828, label %bb159, label %bb160
bb158:
  call void @__olang_check_failed(ptr @olang_loc_91ed1932ac5cd85c_f28264288e99980)
  unreachable
bb159:
  %t830 = load i64, ptr %l299, !tbaa !24
  %t831 = load i64, ptr %l308, !tbaa !24
  %t832 = icmp sle i64 %t830, %t831
  br i1 %t832, label %bb161, label %bb162
bb160:
  call void @__olang_check_failed(ptr @olang_loc_91ed1932ac5cd85c_f28264288e99980)
  unreachable
bb161:
  %t834 = getelementptr { i64, ptr }, ptr %l298, i32 0, i32 1
  %t835 = load ptr, ptr %t834, !tbaa !27
  %t836 = load i64, ptr %l299, !tbaa !24
  %t837 = getelementptr i8, ptr %t835, i64 0
  %t838 = sub i64 %t836, 0
  %t839 = insertvalue { i64, ptr } undef, i64 %t838, 0
  %t840 = insertvalue { i64, ptr } %t839, ptr %t837, 1
  store { i64, ptr } %t840, ptr %l22, !tbaa !27
  %t842 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d115, i32 0, i32 1) }, ptr %l315, !tbaa !27
  %t845 = load { i64, ptr }, ptr %l315, !tbaa !27
  %t846 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %s23, { i64, ptr } %t842, { i64, ptr } %t845)
  store i1 %t846, ptr %l316
  br label %bb163
bb162:
  call void @__olang_check_failed(ptr @olang_loc_91ed1932ac5cd85c_f28264288e99980)
  unreachable
bb163:
  %t847 = load i1, ptr %l316, !tbaa !21
  br i1 %t847, label %bb164, label %bb165
bb164:
  %t848 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t850 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s23, { i64, ptr } %t848, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d116, i32 0, i32 1) })
  store i1 %t850, ptr %l319
  br label %bb166
bb165:
  store i1 false, ptr %l317, !tbaa !21
  br label %bb167
bb166:
  %t851 = load i1, ptr %l319, !tbaa !21
  %t852 = xor i1 %t851, true
  store i1 %t852, ptr %l317, !tbaa !21
  br label %bb167
bb167:
  %t854 = load i1, ptr %l317, !tbaa !21
  br i1 %t854, label %bb168, label %bb169
bb168:
  %t855 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t857 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s23, { i64, ptr } %t855, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d117, i32 0, i32 1) })
  store i1 %t857, ptr %l323
  br label %bb170
bb169:
  store i1 false, ptr %l321, !tbaa !21
  br label %bb171
bb170:
  %t858 = load i1, ptr %l323, !tbaa !21
  %t859 = xor i1 %t858, true
  store i1 %t859, ptr %l321, !tbaa !21
  br label %bb171
bb171:
  %t861 = load i1, ptr %l321, !tbaa !21
  store i1 %t861, ptr %l23, !tbaa !21
  %t862 = load ptr, ptr %l3, !tbaa !29
  %t864 = getelementptr %"compiler/load:Module", ptr %t862, i32 0, i32 2
  %t865 = load { i64, ptr }, ptr %t864, !tbaa !27
  %t867 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s23, { i64, ptr } %t865, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d118, i32 0, i32 1) })
  store i1 %t867, ptr %l327
  br label %bb172
bb172:
  %t868 = load i1, ptr %l327, !tbaa !21
  br i1 %t868, label %bb173, label %bb174
bb173:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d119, i32 0, i32 1) }, ptr %l328, !tbaa !27
  %t869 = load { i64, ptr }, ptr %l328, !tbaa !27
  store { i64, ptr } %t869, ptr %l329, !tbaa !27
  %t870 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t871 = extractvalue { i64, ptr } %t870, 0
  %t872 = load { i64, ptr }, ptr %l329, !tbaa !27
  %t873 = extractvalue { i64, ptr } %t872, 0
  store i64 %t873, ptr %l331, !tbaa !24
  %t875 = load i64, ptr %l331, !tbaa !24
  %t876 = icmp eq i64 %t871, %t875
  br i1 %t876, label %bb175, label %bb176
bb174:
  store %olang.scope zeroinitializer, ptr %s33
  %t878 = load i1, ptr %l23, !tbaa !21
  br i1 %t878, label %bb178, label %bb179
bb175:
  %t880 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t881 = load ptr, ptr %t880, !tbaa !27
  %t882 = getelementptr { i64, ptr }, ptr %l329, i32 0, i32 1
  %t883 = load ptr, ptr %t882, !tbaa !27
  %t884 = load i64, ptr %l331, !tbaa !24
  %t885 = mul i64 %t884, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t881, ptr %t883, i64 %t885, i1 false)
  br label %bb177
bb176:
  %t886 = load { i64, ptr }, ptr %l329, !tbaa !27
  %t887 = extractvalue { i64, ptr } %t886, 0
  store i64 %t887, ptr %l333, !tbaa !24
  %t888 = load i64, ptr %l333, !tbaa !24
  %t889 = mul i64 %t888, 1
  %t890 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t889)
  %t891 = insertvalue { i64, ptr } undef, i64 %t888, 0
  %t892 = insertvalue { i64, ptr } %t891, ptr %t890, 1
  store { i64, ptr } %t892, ptr %l334, !tbaa !27
  %t893 = getelementptr { i64, ptr }, ptr %l334, i32 0, i32 1
  %t894 = load ptr, ptr %t893, !tbaa !27
  %t895 = getelementptr { i64, ptr }, ptr %l329, i32 0, i32 1
  %t896 = load ptr, ptr %t895, !tbaa !27
  %t897 = load i64, ptr %l333, !tbaa !24
  %t898 = mul i64 %t897, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t894, ptr %t896, i64 %t898, i1 false)
  %t899 = load { i64, ptr }, ptr %l334, !tbaa !27
  store { i64, ptr } %t899, ptr %l21, !tbaa !27
  br label %bb177
bb177:
  br label %bb189
bb178:
  %t900 = load ptr, ptr %l3, !tbaa !29
  %t902 = getelementptr %"compiler/load:Module", ptr %t900, i32 0, i32 2
  %t903 = load { i64, ptr }, ptr %t902, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d120, i32 0, i32 1) }, ptr %l340, !tbaa !27
  %t906 = load { i64, ptr }, ptr %l340, !tbaa !27
  %t907 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %s33, { i64, ptr } %t903, { i64, ptr } %t906)
  store i1 %t907, ptr %l341
  br label %bb180
bb179:
  store i1 false, ptr %l336, !tbaa !21
  br label %bb181
bb180:
  %t908 = load i1, ptr %l341, !tbaa !21
  store i1 %t908, ptr %l336, !tbaa !21
  br label %bb181
bb181:
  %t909 = load i1, ptr %l336, !tbaa !21
  br i1 %t909, label %bb182, label %bb183
bb182:
  store %olang.scope zeroinitializer, ptr %s34
  %t910 = load ptr, ptr %l3, !tbaa !29
  %t912 = getelementptr %"compiler/load:Module", ptr %t910, i32 0, i32 2
  %t913 = load { i64, ptr }, ptr %t912, !tbaa !27
  %t915 = call { i64, ptr } @compiler_2fload_2efirstElems(ptr %v0, ptr %s34, { i64, ptr } %t913, i64 3)
  store { i64, ptr } %t915, ptr %l344
  br label %bb184
bb183:
  br label %bb188
bb184:
  %t916 = load { i64, ptr }, ptr %l344, !tbaa !27
  %t917 = extractvalue { i64, ptr } %t916, 1
  %t918 = extractvalue { i64, ptr } %t916, 0
  %t919 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t918)
  call void @olang_textcopy(ptr %t919, ptr %t917, i64 %t918)
  %t920 = insertvalue { i64, ptr } undef, i64 %t918, 0
  %t921 = insertvalue { i64, ptr } %t920, ptr %t919, 1
  store { i64, ptr } %t921, ptr %l345, !tbaa !27
  %t922 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t923 = extractvalue { i64, ptr } %t922, 0
  %t924 = load { i64, ptr }, ptr %l345, !tbaa !27
  %t925 = extractvalue { i64, ptr } %t924, 0
  store i64 %t925, ptr %l347, !tbaa !24
  %t927 = load i64, ptr %l347, !tbaa !24
  %t928 = icmp eq i64 %t923, %t927
  br i1 %t928, label %bb185, label %bb186
bb185:
  %t930 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t931 = load ptr, ptr %t930, !tbaa !27
  %t932 = getelementptr { i64, ptr }, ptr %l345, i32 0, i32 1
  %t933 = load ptr, ptr %t932, !tbaa !27
  %t934 = load i64, ptr %l347, !tbaa !24
  %t935 = mul i64 %t934, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t931, ptr %t933, i64 %t935, i1 false)
  br label %bb187
bb186:
  %t936 = load { i64, ptr }, ptr %l345, !tbaa !27
  store { i64, ptr } %t936, ptr %l21, !tbaa !27
  br label %bb187
bb187:
  call void @__olang_scope_close(ptr %s34)
  br label %bb188
bb188:
  call void @__olang_scope_close(ptr %s33)
  br label %bb189
bb189:
  %t937 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t939 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s23, ptr %s23, { i64, ptr } %t937, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d121, i32 0, i32 1) })
  store i1 %t939, ptr %l350
  br label %bb190
bb190:
  %t940 = load i1, ptr %l350, !tbaa !21
  %t941 = xor i1 %t940, true
  br i1 %t941, label %bb191, label %bb192
bb191:
  %t943 = load ptr, ptr %lp9
  %t944 = load { i64, ptr }, ptr %t943, !tbaa !27
  %t945 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t947 = extractvalue { i64, ptr } %t945, 1
  %t948 = extractvalue { i64, ptr } %t945, 0
  %t949 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d122, i32 0, i32 1) }, 1
  %t950 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d122, i32 0, i32 1) }, 0
  %t951 = add i64 %t948, %t950
  %t952 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t951)
  call void @olang_textcopy(ptr %t952, ptr %t947, i64 %t948)
  %t953 = getelementptr i8, ptr %t952, i64 %t948
  call void @olang_textcopy(ptr %t953, ptr %t949, i64 %t950)
  %t954 = insertvalue { i64, ptr } undef, i64 %t951, 0
  %t955 = insertvalue { i64, ptr } %t954, ptr %t952, 1
  %t957 = extractvalue { i64, ptr } %t955, 0
  %t958 = extractvalue { i64, ptr } %t955, 1
  %t959 = mul i64 %t957, 1
  %t960 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t959)
  call void @llvm.memcpy.p0.p0.i64(ptr %t960, ptr %t958, i64 %t959, i1 false)
  %t961 = insertvalue { i64, ptr } undef, i64 %t957, 0
  %t962 = insertvalue { i64, ptr } %t961, ptr %t960, 1
  %t965 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v2, ptr %s23, { i64, ptr } %t944, { i64, ptr } %t962)
  store i1 %t965, ptr %l357
  br label %bb193
bb192:
  store i1 false, ptr %l352, !tbaa !21
  br label %bb194
bb193:
  %t966 = load i1, ptr %l357, !tbaa !21
  %t967 = xor i1 %t966, true
  store i1 %t967, ptr %l352, !tbaa !21
  br label %bb194
bb194:
  %t969 = load i1, ptr %l352, !tbaa !21
  br i1 %t969, label %bb195, label %bb196
bb195:
  store %olang.scope zeroinitializer, ptr %s37
  %t970 = load ptr, ptr %l0, !tbaa !29
  %t972 = getelementptr %"compiler/load:Loader", ptr %t970, i32 0, i32 4
  %t973 = load ptr, ptr %t972, !tbaa !29
  store ptr %t973, ptr %l360, !tbaa !29
  %t974 = load { i64, [3 x i64] }, ptr %l4
  store { i64, [3 x i64] } %t974, ptr %l361
  %t975 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t977 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportLeavesRoot(ptr %s23, ptr %s37, { i64, ptr } %t975)
  store %"compiler/diagmsg:Msg" %t977, ptr %l363
  br label %bb197
bb196:
  br label %bb199
bb197:
  %t978 = load ptr, ptr %l360, !tbaa !29
  %t979 = load { i64, [3 x i64] }, ptr %l361
  %t980 = load %"compiler/diagmsg:Msg", ptr %l363
  %t981 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s37, ptr %t978, { i64, [3 x i64] } %t979, %"compiler/diagmsg:Msg" %t980)
  store i64 %t981, ptr %l364
  br label %bb198
bb198:
  call void @__olang_scope_close(ptr %s37)
  call void @__olang_scope_close(ptr %s23)
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s0)
  %t983 = insertvalue { i32, { { i64, ptr }, { i64, ptr } } } zeroinitializer, i32 65536, 0
  store { i32, { { i64, ptr }, { i64, ptr } } } %t983, ptr %rv
  br label %ret
bb199:
  call void @__olang_scope_close(ptr %s23)
  br label %bb200
bb200:
  call void @__olang_scope_close(ptr %s8)
  br label %bb201
bb201:
  %t984 = load ptr, ptr %lp8
  %t985 = load { i64, ptr }, ptr %t984, !tbaa !27
  %t987 = call i1 @std_2fos_2eExists(ptr %v2, { i64, ptr } %t985)
  store i1 %t987, ptr %l367
  br label %bb202
bb202:
  %t988 = load i1, ptr %l367, !tbaa !21
  %t989 = xor i1 %t988, true
  br i1 %t989, label %bb203, label %bb204
bb203:
  store i1 true, ptr %l369, !tbaa !21
  br label %bb206
bb204:
  %t991 = load ptr, ptr %lp8
  %t992 = load { i64, ptr }, ptr %t991, !tbaa !27
  %t994 = call i1 @std_2fos_2eIsDir(ptr %v2, { i64, ptr } %t992)
  store i1 %t994, ptr %l371
  br label %bb205
bb205:
  %t995 = load i1, ptr %l371, !tbaa !21
  store i1 %t995, ptr %l369, !tbaa !21
  br label %bb206
bb206:
  %t996 = load i1, ptr %l369, !tbaa !21
  br i1 %t996, label %bb207, label %bb208
bb207:
  store %olang.scope zeroinitializer, ptr %s38
  %t997 = load ptr, ptr %l0, !tbaa !29
  %t999 = getelementptr %"compiler/load:Loader", ptr %t997, i32 0, i32 4
  %t1000 = load ptr, ptr %t999, !tbaa !29
  store ptr %t1000, ptr %l373, !tbaa !29
  %t1001 = load { i64, [3 x i64] }, ptr %l4
  store { i64, [3 x i64] } %t1001, ptr %l374
  %t1002 = load ptr, ptr %lp8
  %t1003 = load { i64, ptr }, ptr %t1002, !tbaa !27
  %t1005 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportFileNotFound(ptr %v2, ptr %s38, { i64, ptr } %t1003)
  store %"compiler/diagmsg:Msg" %t1005, ptr %l376
  br label %bb209
bb208:
  br label %bb211
bb209:
  %t1006 = load ptr, ptr %l373, !tbaa !29
  %t1007 = load { i64, [3 x i64] }, ptr %l374
  %t1008 = load %"compiler/diagmsg:Msg", ptr %l376
  %t1009 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s38, ptr %t1006, { i64, [3 x i64] } %t1007, %"compiler/diagmsg:Msg" %t1008)
  store i64 %t1009, ptr %l377
  br label %bb210
bb210:
  call void @__olang_scope_close(ptr %s38)
  call void @__olang_scope_close(ptr %s0)
  %t1011 = insertvalue { i32, { { i64, ptr }, { i64, ptr } } } zeroinitializer, i32 65536, 0
  store { i32, { { i64, ptr }, { i64, ptr } } } %t1011, ptr %rv
  br label %ret
bb211:
  %t1012 = load ptr, ptr %lp8
  %t1013 = load { i64, ptr }, ptr %t1012, !tbaa !27
  %t1014 = load ptr, ptr %lp9
  %t1015 = load { i64, ptr }, ptr %t1014, !tbaa !27
  %t1017 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t1013, 0
  %t1019 = insertvalue { { i64, ptr }, { i64, ptr } } %t1017, { i64, ptr } %t1015, 1
  call void @__olang_scope_close(ptr %s0)
  %t1021 = insertvalue { i32, { { i64, ptr }, { i64, ptr } } } zeroinitializer, { { i64, ptr }, { i64, ptr } } %t1019, 1
  store { i32, { { i64, ptr }, { i64, ptr } } } %t1021, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { { i64, ptr }, { i64, ptr } } }, ptr %rv
  ret { i32, { { i64, ptr }, { i64, ptr } } } %rr
}

define dso_local { i64, ptr } @compiler_2fload_2ecompiler_2fload_3aLoader_2erootIdentity(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %lp6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca i32
  %l14 = alloca i1
  %l16 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l23 = alloca i64
  %l24 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l27 = alloca i64
  %l28 = alloca { i64, ptr }
  %l34 = alloca i1
  %l38 = alloca i64
  %l40 = alloca i64
  %l41 = alloca i64
  %l46 = alloca { i64, ptr }
  %l48 = alloca i64
  %l50 = alloca { i64, ptr }
  %l51 = alloca { i64, ptr }
  %l53 = alloca i64
  %l55 = alloca i64
  %l56 = alloca { i64, ptr }
  %l62 = alloca i1
  %l66 = alloca i64
  %l68 = alloca i64
  %l69 = alloca i64
  %l74 = alloca { i64, ptr }
  %l76 = alloca i64
  %l79 = alloca i1
  %l81 = alloca { i64, ptr }
  %l86 = alloca { i64, ptr }
  %l89 = alloca i1
  %l90 = alloca { i64, ptr }
  %l93 = alloca i64
  %l94 = alloca i64
  %s0 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = call { i32, { i64, ptr } } @std_2fos_2eRealPath(ptr %v1, ptr %s0, { i64, ptr } %t1)
  %t4 = extractvalue { i32, { i64, ptr } } %t3, 1
  %t5 = extractvalue { i32, { i64, ptr } } %t3, 0
  store i32 %t5, ptr %l10
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store { i64, ptr } %t4, ptr %l9
  br label %bb1
bb1:
  %t8 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t8, ptr %l7, !tbaa !27
  br label %bb6
bb2:
  %t9 = load i32, ptr %l10, !tbaa !23
  %t10 = ashr i32 %t9, 16
  %t12 = icmp eq i32 %t10, 1
  br i1 %t12, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d123, i32 0, i32 1) }, ptr %l7, !tbaa !27
  br label %bb6
bb6:
  %t14 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t14, ptr %l2, !tbaa !27
  %t15 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t17 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t15, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d124, i32 0, i32 1) })
  store i1 %t17, ptr %l14
  br label %bb7
bb7:
  %t18 = load i1, ptr %l14, !tbaa !21
  %t19 = xor i1 %t18, true
  br i1 %t19, label %bb8, label %bb9
bb8:
  %t21 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t21, 1
  %t24 = extractvalue { i64, ptr } %t21, 0
  %t25 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t24)
  call void @olang_textcopy(ptr %t25, ptr %t23, i64 %t24)
  %t26 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  store { i64, ptr } %t27, ptr %l16, !tbaa !27
  br label %bb10
bb9:
  %t29 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t29, 1
  %t32 = extractvalue { i64, ptr } %t29, 0
  %t33 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t32)
  call void @olang_textcopy(ptr %t33, ptr %t31, i64 %t32)
  %t34 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t35 = insertvalue { i64, ptr } %t34, ptr %t33, 1
  store { i64, ptr } %t35, ptr %l16, !tbaa !27
  br label %bb10
bb10:
  %t37 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t37, ptr %l3, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d125, i32 0, i32 1) }, ptr %l21, !tbaa !27
  %t38 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t38, ptr %l22, !tbaa !27
  %t39 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t39, 0
  store i64 %t40, ptr %l23, !tbaa !24
  %t41 = load i64, ptr %l23, !tbaa !24
  %t42 = mul i64 %t41, 1
  %t43 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t42)
  %t44 = insertvalue { i64, ptr } undef, i64 %t41, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t43, 1
  store { i64, ptr } %t45, ptr %l24, !tbaa !27
  %t46 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !27
  %t50 = load i64, ptr %l23, !tbaa !24
  %t51 = mul i64 %t50, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t47, ptr %t49, i64 %t51, i1 false)
  %t52 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t52, ptr %l4, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d126, i32 0, i32 1) }, ptr %l25, !tbaa !27
  %t53 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t53, ptr %l26, !tbaa !27
  %t54 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t55 = extractvalue { i64, ptr } %t54, 0
  store i64 %t55, ptr %l27, !tbaa !24
  %t56 = load i64, ptr %l27, !tbaa !24
  %t57 = mul i64 %t56, 1
  %t58 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t57)
  %t59 = insertvalue { i64, ptr } undef, i64 %t56, 0
  %t60 = insertvalue { i64, ptr } %t59, ptr %t58, 1
  store { i64, ptr } %t60, ptr %l28, !tbaa !27
  %t61 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !27
  %t63 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !27
  %t65 = load i64, ptr %l27, !tbaa !24
  %t66 = mul i64 %t65, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t62, ptr %t64, i64 %t66, i1 false)
  %t67 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t67, ptr %l5, !tbaa !27
  %t68 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/load:Loader", ptr %t69, i32 0, i32 14
  %t72 = load { i64, ptr }, ptr %t71, !tbaa !27
  %t74 = extractvalue { i64, ptr } %t72, 1
  %t75 = extractvalue { i64, ptr } %t72, 0
  %t76 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d127, i32 0, i32 1) }, 1
  %t77 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d127, i32 0, i32 1) }, 0
  %t78 = add i64 %t75, %t77
  %t79 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t78)
  call void @olang_textcopy(ptr %t79, ptr %t74, i64 %t75)
  %t80 = getelementptr i8, ptr %t79, i64 %t75
  call void @olang_textcopy(ptr %t80, ptr %t76, i64 %t77)
  %t81 = insertvalue { i64, ptr } undef, i64 %t78, 0
  %t82 = insertvalue { i64, ptr } %t81, ptr %t79, 1
  %t84 = extractvalue { i64, ptr } %t82, 0
  %t85 = extractvalue { i64, ptr } %t82, 1
  %t86 = mul i64 %t84, 1
  %t87 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t86)
  call void @llvm.memcpy.p0.p0.i64(ptr %t87, ptr %t85, i64 %t86, i1 false)
  %t88 = insertvalue { i64, ptr } undef, i64 %t84, 0
  %t89 = insertvalue { i64, ptr } %t88, ptr %t87, 1
  %t92 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s0, { i64, ptr } %t68, { i64, ptr } %t89)
  store i1 %t92, ptr %l34
  br label %bb11
bb11:
  %t93 = load i1, ptr %l34, !tbaa !21
  br i1 %t93, label %bb12, label %bb13
bb12:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/load:Loader", ptr %t94, i32 0, i32 14
  %t97 = load { i64, ptr }, ptr %t96, !tbaa !27
  %t99 = extractvalue { i64, ptr } %t97, 0
  %t101 = add i64 %t99, 1
  store i64 %t101, ptr %l38, !tbaa !24
  %t102 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t104 = extractvalue { i64, ptr } %t102, 0
  store i64 %t104, ptr %l40, !tbaa !24
  %t105 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t106 = extractvalue { i64, ptr } %t105, 0
  store i64 %t106, ptr %l41, !tbaa !24
  %t107 = load i64, ptr %l38, !tbaa !24
  %t108 = icmp sge i64 %t107, 0
  br i1 %t108, label %bb14, label %bb15
bb13:
  store %olang.scope zeroinitializer, ptr %s6
  %t110 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/load:Loader", ptr %t111, i32 0, i32 15
  %t114 = load { i64, ptr }, ptr %t113, !tbaa !27
  %t116 = extractvalue { i64, ptr } %t114, 1
  %t117 = extractvalue { i64, ptr } %t114, 0
  %t118 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d128, i32 0, i32 1) }, 1
  %t119 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d128, i32 0, i32 1) }, 0
  %t120 = add i64 %t117, %t119
  %t121 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t120)
  call void @olang_textcopy(ptr %t121, ptr %t116, i64 %t117)
  %t122 = getelementptr i8, ptr %t121, i64 %t117
  call void @olang_textcopy(ptr %t122, ptr %t118, i64 %t119)
  %t123 = insertvalue { i64, ptr } undef, i64 %t120, 0
  %t124 = insertvalue { i64, ptr } %t123, ptr %t121, 1
  %t126 = extractvalue { i64, ptr } %t124, 0
  %t127 = extractvalue { i64, ptr } %t124, 1
  %t128 = mul i64 %t126, 1
  %t129 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t128)
  call void @llvm.memcpy.p0.p0.i64(ptr %t129, ptr %t127, i64 %t128, i1 false)
  %t130 = insertvalue { i64, ptr } undef, i64 %t126, 0
  %t131 = insertvalue { i64, ptr } %t130, ptr %t129, 1
  %t134 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s6, { i64, ptr } %t110, { i64, ptr } %t131)
  store i1 %t134, ptr %l62
  br label %bb26
bb14:
  %t135 = load i64, ptr %l38, !tbaa !24
  %t136 = load i64, ptr %l40, !tbaa !24
  %t137 = icmp sle i64 %t135, %t136
  br i1 %t137, label %bb16, label %bb17
bb15:
  call void @__olang_check_failed(ptr @olang_loc_d9612e2b18e8b492_6662b34d58c1f606)
  unreachable
bb16:
  %t139 = load i64, ptr %l40, !tbaa !24
  %t140 = load i64, ptr %l41, !tbaa !24
  %t141 = icmp sle i64 %t139, %t140
  br i1 %t141, label %bb18, label %bb19
bb17:
  call void @__olang_check_failed(ptr @olang_loc_d9612e2b18e8b492_6662b34d58c1f606)
  unreachable
bb18:
  %t143 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t144 = load ptr, ptr %t143, !tbaa !27
  %t145 = load i64, ptr %l38, !tbaa !24
  %t146 = load i64, ptr %l40, !tbaa !24
  %t147 = getelementptr i8, ptr %t144, i64 %t145
  %t148 = sub i64 %t146, %t145
  %t149 = insertvalue { i64, ptr } undef, i64 %t148, 0
  %t150 = insertvalue { i64, ptr } %t149, ptr %t147, 1
  %t152 = extractvalue { i64, ptr } %t150, 1
  %t153 = extractvalue { i64, ptr } %t150, 0
  %t154 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t153)
  call void @olang_textcopy(ptr %t154, ptr %t152, i64 %t153)
  %t155 = insertvalue { i64, ptr } undef, i64 %t153, 0
  %t156 = insertvalue { i64, ptr } %t155, ptr %t154, 1
  store { i64, ptr } %t156, ptr %l46, !tbaa !27
  %t157 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t158 = extractvalue { i64, ptr } %t157, 0
  %t159 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t160 = extractvalue { i64, ptr } %t159, 0
  store i64 %t160, ptr %l48, !tbaa !24
  %t162 = load i64, ptr %l48, !tbaa !24
  %t163 = icmp eq i64 %t158, %t162
  br i1 %t163, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_d9612e2b18e8b492_6662b34d58c1f606)
  unreachable
bb20:
  %t165 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t166 = load ptr, ptr %t165, !tbaa !27
  %t167 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t168 = load ptr, ptr %t167, !tbaa !27
  %t169 = load i64, ptr %l48, !tbaa !24
  %t170 = mul i64 %t169, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t166, ptr %t168, i64 %t170, i1 false)
  br label %bb22
bb21:
  %t171 = load { i64, ptr }, ptr %l46, !tbaa !27
  store { i64, ptr } %t171, ptr %l4, !tbaa !27
  br label %bb22
bb22:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d129, i32 0, i32 1) }, ptr %l50, !tbaa !27
  %t172 = load { i64, ptr }, ptr %l50, !tbaa !27
  store { i64, ptr } %t172, ptr %l51, !tbaa !27
  %t173 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t174 = extractvalue { i64, ptr } %t173, 0
  %t175 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t176 = extractvalue { i64, ptr } %t175, 0
  store i64 %t176, ptr %l53, !tbaa !24
  %t178 = load i64, ptr %l53, !tbaa !24
  %t179 = icmp eq i64 %t174, %t178
  br i1 %t179, label %bb23, label %bb24
bb23:
  %t181 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t182 = load ptr, ptr %t181, !tbaa !27
  %t183 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t184 = load ptr, ptr %t183, !tbaa !27
  %t185 = load i64, ptr %l53, !tbaa !24
  %t186 = mul i64 %t185, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t182, ptr %t184, i64 %t186, i1 false)
  br label %bb25
bb24:
  %t187 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t188 = extractvalue { i64, ptr } %t187, 0
  store i64 %t188, ptr %l55, !tbaa !24
  %t189 = load i64, ptr %l55, !tbaa !24
  %t190 = mul i64 %t189, 1
  %t191 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t190)
  %t192 = insertvalue { i64, ptr } undef, i64 %t189, 0
  %t193 = insertvalue { i64, ptr } %t192, ptr %t191, 1
  store { i64, ptr } %t193, ptr %l56, !tbaa !27
  %t194 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t195 = load ptr, ptr %t194, !tbaa !27
  %t196 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t197 = load ptr, ptr %t196, !tbaa !27
  %t198 = load i64, ptr %l55, !tbaa !24
  %t199 = mul i64 %t198, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t195, ptr %t197, i64 %t199, i1 false)
  %t200 = load { i64, ptr }, ptr %l56, !tbaa !27
  store { i64, ptr } %t200, ptr %l5, !tbaa !27
  br label %bb25
bb25:
  br label %bb39
bb26:
  %t201 = load i1, ptr %l62, !tbaa !21
  br i1 %t201, label %bb27, label %bb28
bb27:
  %t202 = load ptr, ptr %l0, !tbaa !29
  %t204 = getelementptr %"compiler/load:Loader", ptr %t202, i32 0, i32 15
  %t205 = load { i64, ptr }, ptr %t204, !tbaa !27
  %t207 = extractvalue { i64, ptr } %t205, 0
  %t209 = add i64 %t207, 1
  store i64 %t209, ptr %l66, !tbaa !24
  %t210 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t212 = extractvalue { i64, ptr } %t210, 0
  store i64 %t212, ptr %l68, !tbaa !24
  %t213 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t214 = extractvalue { i64, ptr } %t213, 0
  store i64 %t214, ptr %l69, !tbaa !24
  %t215 = load i64, ptr %l66, !tbaa !24
  %t216 = icmp sge i64 %t215, 0
  br i1 %t216, label %bb29, label %bb30
bb28:
  br label %bb38
bb29:
  %t218 = load i64, ptr %l66, !tbaa !24
  %t219 = load i64, ptr %l68, !tbaa !24
  %t220 = icmp sle i64 %t218, %t219
  br i1 %t220, label %bb31, label %bb32
bb30:
  call void @__olang_check_failed(ptr @olang_loc_e481e3499ae60e8f_66ba2a1e23e9a0e3)
  unreachable
bb31:
  %t222 = load i64, ptr %l68, !tbaa !24
  %t223 = load i64, ptr %l69, !tbaa !24
  %t224 = icmp sle i64 %t222, %t223
  br i1 %t224, label %bb33, label %bb34
bb32:
  call void @__olang_check_failed(ptr @olang_loc_e481e3499ae60e8f_66ba2a1e23e9a0e3)
  unreachable
bb33:
  %t226 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t227 = load ptr, ptr %t226, !tbaa !27
  %t228 = load i64, ptr %l66, !tbaa !24
  %t229 = load i64, ptr %l68, !tbaa !24
  %t230 = getelementptr i8, ptr %t227, i64 %t228
  %t231 = sub i64 %t229, %t228
  %t232 = insertvalue { i64, ptr } undef, i64 %t231, 0
  %t233 = insertvalue { i64, ptr } %t232, ptr %t230, 1
  %t235 = extractvalue { i64, ptr } %t233, 1
  %t236 = extractvalue { i64, ptr } %t233, 0
  %t237 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t236)
  call void @olang_textcopy(ptr %t237, ptr %t235, i64 %t236)
  %t238 = insertvalue { i64, ptr } undef, i64 %t236, 0
  %t239 = insertvalue { i64, ptr } %t238, ptr %t237, 1
  store { i64, ptr } %t239, ptr %l74, !tbaa !27
  %t240 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t241 = extractvalue { i64, ptr } %t240, 0
  %t242 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t243 = extractvalue { i64, ptr } %t242, 0
  store i64 %t243, ptr %l76, !tbaa !24
  %t245 = load i64, ptr %l76, !tbaa !24
  %t246 = icmp eq i64 %t241, %t245
  br i1 %t246, label %bb35, label %bb36
bb34:
  call void @__olang_check_failed(ptr @olang_loc_e481e3499ae60e8f_66ba2a1e23e9a0e3)
  unreachable
bb35:
  %t248 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t249 = load ptr, ptr %t248, !tbaa !27
  %t250 = getelementptr { i64, ptr }, ptr %l74, i32 0, i32 1
  %t251 = load ptr, ptr %t250, !tbaa !27
  %t252 = load i64, ptr %l76, !tbaa !24
  %t253 = mul i64 %t252, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t249, ptr %t251, i64 %t253, i1 false)
  br label %bb37
bb36:
  %t254 = load { i64, ptr }, ptr %l74, !tbaa !27
  store { i64, ptr } %t254, ptr %l4, !tbaa !27
  br label %bb37
bb37:
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s6)
  br label %bb39
bb39:
  %t255 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t257 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t255, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d130, i32 0, i32 1) })
  store i1 %t257, ptr %l79
  br label %bb40
bb40:
  %t258 = load i1, ptr %l79, !tbaa !21
  %t259 = xor i1 %t258, true
  br i1 %t259, label %bb41, label %bb42
bb41:
  %t261 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t262 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t264 = extractvalue { i64, ptr } %t261, 1
  %t265 = extractvalue { i64, ptr } %t261, 0
  %t267 = extractvalue { i64, ptr } %t262, 1
  %t268 = extractvalue { i64, ptr } %t262, 0
  %t269 = add i64 %t265, %t268
  %t270 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t269)
  call void @olang_textcopy(ptr %t270, ptr %t264, i64 %t265)
  %t271 = getelementptr i8, ptr %t270, i64 %t265
  call void @olang_textcopy(ptr %t271, ptr %t267, i64 %t268)
  %t272 = insertvalue { i64, ptr } undef, i64 %t269, 0
  %t273 = insertvalue { i64, ptr } %t272, ptr %t270, 1
  store { i64, ptr } %t273, ptr %l81, !tbaa !27
  br label %bb44
bb42:
  %t275 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t277 = call { i64, ptr } @std_2ffilepath_2eBase(ptr %s0, ptr %s0, { i64, ptr } %t275)
  store { i64, ptr } %t277, ptr %l86
  br label %bb43
bb43:
  %t278 = load { i64, ptr }, ptr %l86, !tbaa !27
  %t279 = extractvalue { i64, ptr } %t278, 1
  %t280 = extractvalue { i64, ptr } %t278, 0
  %t281 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t280)
  call void @olang_textcopy(ptr %t281, ptr %t279, i64 %t280)
  %t282 = insertvalue { i64, ptr } undef, i64 %t280, 0
  %t283 = insertvalue { i64, ptr } %t282, ptr %t281, 1
  store { i64, ptr } %t283, ptr %l81, !tbaa !27
  br label %bb44
bb44:
  %t285 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t285, ptr %lp6
  %t286 = load { i64, ptr }, ptr %l81, !tbaa !27
  %t287 = load ptr, ptr %lp6
  store { i64, ptr } %t286, ptr %t287, !tbaa !27
  %t288 = load ptr, ptr %lp6
  %t289 = load { i64, ptr }, ptr %t288, !tbaa !27
  %t291 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v2, ptr %s0, { i64, ptr } %t289, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d131, i32 0, i32 1) })
  store i1 %t291, ptr %l89
  br label %bb45
bb45:
  %t292 = load i1, ptr %l89, !tbaa !21
  br i1 %t292, label %bb46, label %bb47
bb46:
  %t293 = load ptr, ptr %lp6
  %t294 = load { i64, ptr }, ptr %t293, !tbaa !27
  %t296 = extractvalue { i64, ptr } %t294, 0
  %t298 = sub i64 %t296, 6
  store i64 %t298, ptr %l93, !tbaa !24
  %t299 = load ptr, ptr %lp6
  %t300 = load { i64, ptr }, ptr %t299, !tbaa !27
  %t301 = extractvalue { i64, ptr } %t300, 0
  store i64 %t301, ptr %l94, !tbaa !24
  %t302 = icmp sge i64 0, 0
  br i1 %t302, label %bb48, label %bb49
bb47:
  %t304 = load ptr, ptr %lp6
  %t305 = load { i64, ptr }, ptr %t304, !tbaa !27
  store { i64, ptr } %t305, ptr %l90, !tbaa !27
  br label %bb54
bb48:
  %t307 = load i64, ptr %l93, !tbaa !24
  %t308 = icmp sle i64 0, %t307
  br i1 %t308, label %bb50, label %bb51
bb49:
  call void @__olang_check_failed(ptr @olang_loc_281d6687dd267da4_55752feab9766ac8)
  unreachable
bb50:
  %t310 = load i64, ptr %l93, !tbaa !24
  %t311 = load i64, ptr %l94, !tbaa !24
  %t312 = icmp sle i64 %t310, %t311
  br i1 %t312, label %bb52, label %bb53
bb51:
  call void @__olang_check_failed(ptr @olang_loc_281d6687dd267da4_55752feab9766ac8)
  unreachable
bb52:
  %t314 = load ptr, ptr %lp6
  %t315 = getelementptr { i64, ptr }, ptr %t314, i32 0, i32 1
  %t316 = load ptr, ptr %t315, !tbaa !27
  %t317 = load i64, ptr %l93, !tbaa !24
  %t318 = getelementptr i8, ptr %t316, i64 0
  %t319 = sub i64 %t317, 0
  %t320 = insertvalue { i64, ptr } undef, i64 %t319, 0
  %t321 = insertvalue { i64, ptr } %t320, ptr %t318, 1
  %t323 = extractvalue { i64, ptr } %t321, 1
  %t324 = extractvalue { i64, ptr } %t321, 0
  %t325 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t324)
  call void @olang_textcopy(ptr %t325, ptr %t323, i64 %t324)
  %t326 = insertvalue { i64, ptr } undef, i64 %t324, 0
  %t327 = insertvalue { i64, ptr } %t326, ptr %t325, 1
  store { i64, ptr } %t327, ptr %l90, !tbaa !27
  br label %bb54
bb53:
  call void @__olang_check_failed(ptr @olang_loc_281d6687dd267da4_55752feab9766ac8)
  unreachable
bb54:
  call void @__olang_scope_close(ptr %s0)
  %t329 = load { i64, ptr }, ptr %l90, !tbaa !27
  store { i64, ptr } %t329, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2etopIf(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i64 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l12 = alloca i64
  %l23 = alloca i64
  %l26 = alloca { i64, ptr }
  %l39 = alloca ptr
  %l42 = alloca i64
  %l49 = alloca i64
  %l65 = alloca i32
  %l74 = alloca i64
  %l83 = alloca { i64, ptr }
  %l91 = alloca { i64, ptr }
  %l98 = alloca { i64, ptr }
  %l114 = alloca i32
  %l126 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/load:Module", ptr %t1, i32 0, i32 7
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  br i1 %t6, label %bb1, label %bb2
bb1:
  call void @__olang_check_failed(ptr @olang_loc_f33836f530001f0a_3e5ddd8b9e2e63ae)
  unreachable
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l1, !tbaa !29
  %t10 = getelementptr %"compiler/load:Module", ptr %t8, i32 0, i32 7
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t14 = getelementptr %"compiler/scan:Tokens", ptr %t11, i32 0, i32 0
  %t15 = load { i64, ptr }, ptr %t14, !tbaa !27
  store { i64, ptr } %t15, ptr %l5, !tbaa !27
  %t17 = load ptr, ptr %l1, !tbaa !29
  %t19 = getelementptr %"compiler/load:Module", ptr %t17, i32 0, i32 14
  %t21 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2eLen_3cI32_3e(ptr %v1, ptr %t19)
  store i64 %t21, ptr %l23
  br label %bb4
bb4:
  %t22 = load i64, ptr %l23, !tbaa !24
  store i64 %t22, ptr %l6, !tbaa !24
  %t23 = load ptr, ptr %l1, !tbaa !29
  %t25 = getelementptr %"compiler/load:Module", ptr %t23, i32 0, i32 14
  %t26 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t26, ptr %l26, !tbaa !27
  %t27 = load i64, ptr %l2, !tbaa !24
  %t29 = add i64 %t27, 1
  %t31 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = getelementptr %"compiler/token:Token", ptr %t32, i64 %t29
  %t34 = getelementptr %"compiler/token:Token", ptr %t33, i32 0, i32 2
  %t35 = load i32, ptr %t34, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2ePush_3cI32_3e(ptr %v1, ptr %t25, i32 %t35)
  br label %bb5
bb5:
  %t38 = load ptr, ptr %l1, !tbaa !29
  %t40 = getelementptr %"compiler/load:Module", ptr %t38, i32 0, i32 15
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t40, i64 %a4)
  br label %bb6
bb6:
  %t44 = load ptr, ptr %l1, !tbaa !29
  %t46 = getelementptr %"compiler/load:Module", ptr %t44, i32 0, i32 16
  %t47 = load i64, ptr @G_2ecompiler_2fload_2eNotYet, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t46, i64 %t47)
  br label %bb7
bb7:
  %t50 = load ptr, ptr %l1, !tbaa !29
  %t52 = getelementptr %"compiler/load:Module", ptr %t50, i32 0, i32 17
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v1, ptr %t52, i1 false)
  br label %bb8
bb8:
  %t54 = load ptr, ptr %l1, !tbaa !29
  %t56 = getelementptr %"compiler/load:Module", ptr %t54, i32 0, i32 18
  store ptr %t56, ptr %l39, !tbaa !29
  %t57 = load ptr, ptr %l1, !tbaa !29
  %t59 = getelementptr %"compiler/load:Module", ptr %t57, i32 0, i32 19
  %t61 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t59)
  store i64 %t61, ptr %l42
  br label %bb9
bb9:
  %t62 = load ptr, ptr %l39, !tbaa !29
  %t63 = load i64, ptr %l42, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t62, i64 %t63)
  br label %bb10
bb10:
  %t64 = load i64, ptr %l2, !tbaa !24
  store i64 %t64, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb11
bb11:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load ptr, ptr %l1, !tbaa !29
  %t68 = load i64, ptr %l7, !tbaa !24
  %t70 = add i64 %t68, 1
  %t71 = load i64, ptr %l3, !tbaa !24
  %t76 = call i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2econdEnd(ptr %v0, ptr %v1, ptr %t66, ptr %t67, i64 %t70, i64 %t71)
  store i64 %t76, ptr %l49
  br label %bb12
bb12:
  %t77 = load i64, ptr %l49, !tbaa !24
  store i64 %t77, ptr %l9, !tbaa !24
  %t78 = load i64, ptr %l9, !tbaa !24
  %t80 = icmp slt i64 %t78, 0
  br i1 %t80, label %bb13, label %bb14
bb13:
  %t82 = load i64, ptr %l7, !tbaa !24
  %t84 = add i64 %t82, 1
  store i64 %t84, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t86 = load ptr, ptr %l1, !tbaa !29
  %t88 = getelementptr %"compiler/load:Module", ptr %t86, i32 0, i32 19
  %t89 = load i64, ptr %l7, !tbaa !24
  %t91 = add i64 %t89, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t88, i64 %t91)
  br label %bb16
bb16:
  %t94 = load ptr, ptr %l1, !tbaa !29
  %t96 = getelementptr %"compiler/load:Module", ptr %t94, i32 0, i32 7
  %t97 = load ptr, ptr %t96, !tbaa !29
  %t99 = icmp eq ptr %t97, null
  br i1 %t99, label %bb17, label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_e83704c0903811_d990170ae1d54355)
  unreachable
bb18:
  br label %bb19
bb19:
  %t101 = load ptr, ptr %l1, !tbaa !29
  %t103 = getelementptr %"compiler/load:Module", ptr %t101, i32 0, i32 7
  %t104 = load ptr, ptr %t103, !tbaa !29
  %t105 = load i64, ptr %l9, !tbaa !24
  %t107 = trunc i64 %t105 to i32
  %t110 = call i32 @compiler_2fscan_2ecompiler_2fscan_3aTokens_2eMatch(ptr %v1, ptr %t104, i32 %t107)
  store i32 %t110, ptr %l65
  br label %bb20
bb20:
  %t111 = load i32, ptr %l65, !tbaa !23
  %t112 = sext i32 %t111 to i64
  store i64 %t112, ptr %l10, !tbaa !24
  %t114 = load i64, ptr %l10, !tbaa !24
  %t116 = icmp slt i64 %t114, 0
  br i1 %t116, label %bb21, label %bb22
bb21:
  %t118 = load i64, ptr %l3, !tbaa !24
  store i64 %t118, ptr %rv
  br label %ret
bb22:
  br label %bb23
bb23:
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t121 = load ptr, ptr %l1, !tbaa !29
  %t122 = load i64, ptr %l6, !tbaa !24
  %t123 = load i64, ptr %l8, !tbaa !24
  %t128 = call i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2ebranch(ptr %v0, ptr %v1, ptr %t120, ptr %t121, i64 %t122, i64 %t123)
  store i64 %t128, ptr %l74
  br label %bb24
bb24:
  %t129 = load i64, ptr %l74, !tbaa !24
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t131 = load ptr, ptr %l1, !tbaa !29
  %t132 = load i64, ptr %l9, !tbaa !24
  %t134 = add i64 %t132, 1
  %t135 = load i64, ptr %l10, !tbaa !24
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2eregion(ptr %v0, ptr %v1, ptr %t130, ptr %t131, i64 %t134, i64 %t135, i64 %t129)
  br label %bb25
bb25:
  %t142 = load i64, ptr %l10, !tbaa !24
  %t144 = add i64 %t142, 1
  store i64 %t144, ptr %l7, !tbaa !24
  %t146 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t146, ptr %l83, !tbaa !27
  %t147 = load i64, ptr %l7, !tbaa !24
  %t149 = getelementptr { i64, ptr }, ptr %l83, i32 0, i32 1
  %t150 = load ptr, ptr %t149, !tbaa !27
  %t151 = getelementptr %"compiler/token:Token", ptr %t150, i64 %t147
  %t152 = getelementptr %"compiler/token:Token", ptr %t151, i32 0, i32 0
  %t153 = load i32, ptr %t152, !range !{i32 0, i32 114}
  %t155 = trunc i64 10 to i32
  %t156 = icmp eq i32 %t153, %t155
  %t158 = xor i1 %t156, true
  br i1 %t158, label %bb26, label %bb27
bb26:
  %t160 = load i64, ptr %l7, !tbaa !24
  store i64 %t160, ptr %rv
  br label %ret
bb27:
  br label %bb28
bb28:
  %t162 = load i64, ptr %l8, !tbaa !24
  %t164 = add i64 %t162, 1
  store i64 %t164, ptr %l8, !tbaa !24
  %t166 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t166, ptr %l91, !tbaa !27
  %t167 = load i64, ptr %l7, !tbaa !24
  %t169 = add i64 %t167, 1
  %t171 = getelementptr { i64, ptr }, ptr %l91, i32 0, i32 1
  %t172 = load ptr, ptr %t171, !tbaa !27
  %t173 = getelementptr %"compiler/token:Token", ptr %t172, i64 %t169
  %t174 = getelementptr %"compiler/token:Token", ptr %t173, i32 0, i32 0
  %t175 = load i32, ptr %t174, !range !{i32 0, i32 114}
  %t177 = trunc i64 9 to i32
  %t178 = icmp eq i32 %t175, %t177
  br i1 %t178, label %bb29, label %bb30
bb29:
  %t180 = load i64, ptr %l7, !tbaa !24
  %t182 = add i64 %t180, 1
  store i64 %t182, ptr %l7, !tbaa !24
  br label %bb45
bb30:
  br label %bb31
bb31:
  %t184 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t184, ptr %l98, !tbaa !27
  %t185 = load i64, ptr %l7, !tbaa !24
  %t187 = add i64 %t185, 1
  %t189 = getelementptr { i64, ptr }, ptr %l98, i32 0, i32 1
  %t190 = load ptr, ptr %t189, !tbaa !27
  %t191 = getelementptr %"compiler/token:Token", ptr %t190, i64 %t187
  %t192 = getelementptr %"compiler/token:Token", ptr %t191, i32 0, i32 0
  %t193 = load i32, ptr %t192, !range !{i32 0, i32 114}
  %t195 = trunc i64 112 to i32
  %t196 = icmp eq i32 %t193, %t195
  %t198 = xor i1 %t196, true
  br i1 %t198, label %bb32, label %bb33
bb32:
  %t200 = load i64, ptr %l7, !tbaa !24
  %t202 = add i64 %t200, 1
  store i64 %t202, ptr %rv
  br label %ret
bb33:
  br label %bb34
bb34:
  %t204 = load ptr, ptr %l1, !tbaa !29
  %t206 = getelementptr %"compiler/load:Module", ptr %t204, i32 0, i32 7
  %t207 = load ptr, ptr %t206, !tbaa !29
  %t209 = icmp eq ptr %t207, null
  br i1 %t209, label %bb35, label %bb36
bb35:
  call void @__olang_check_failed(ptr @olang_loc_766ae0e3e1f9b91c_7764041251e8a940)
  unreachable
bb36:
  br label %bb37
bb37:
  %t211 = load ptr, ptr %l1, !tbaa !29
  %t213 = getelementptr %"compiler/load:Module", ptr %t211, i32 0, i32 7
  %t214 = load ptr, ptr %t213, !tbaa !29
  %t215 = load i64, ptr %l7, !tbaa !24
  %t217 = add i64 %t215, 1
  %t219 = trunc i64 %t217 to i32
  %t222 = call i32 @compiler_2fscan_2ecompiler_2fscan_3aTokens_2eMatch(ptr %v1, ptr %t214, i32 %t219)
  store i32 %t222, ptr %l114
  br label %bb38
bb38:
  %t223 = load i32, ptr %l114, !tbaa !23
  %t224 = sext i32 %t223 to i64
  store i64 %t224, ptr %l12, !tbaa !24
  %t226 = load i64, ptr %l12, !tbaa !24
  %t228 = icmp slt i64 %t226, 0
  br i1 %t228, label %bb39, label %bb40
bb39:
  %t230 = load i64, ptr %l3, !tbaa !24
  store i64 %t230, ptr %rv
  br label %ret
bb40:
  br label %bb41
bb41:
  %t232 = load ptr, ptr %l1, !tbaa !29
  %t234 = getelementptr %"compiler/load:Module", ptr %t232, i32 0, i32 17
  %t235 = load i64, ptr %l6, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v1, ptr %t234, i64 %t235, i1 true)
  br label %bb42
bb42:
  %t238 = load ptr, ptr %l0, !tbaa !29
  %t239 = load ptr, ptr %l1, !tbaa !29
  %t240 = load i64, ptr %l6, !tbaa !24
  %t241 = load i64, ptr %l8, !tbaa !24
  %t246 = call i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2ebranch(ptr %v0, ptr %v1, ptr %t238, ptr %t239, i64 %t240, i64 %t241)
  store i64 %t246, ptr %l126
  br label %bb43
bb43:
  %t247 = load i64, ptr %l126, !tbaa !24
  %t248 = load ptr, ptr %l0, !tbaa !29
  %t249 = load ptr, ptr %l1, !tbaa !29
  %t250 = load i64, ptr %l7, !tbaa !24
  %t252 = add i64 %t250, 2
  %t253 = load i64, ptr %l12, !tbaa !24
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2eregion(ptr %v0, ptr %v1, ptr %t248, ptr %t249, i64 %t252, i64 %t253, i64 %t247)
  br label %bb44
bb44:
  %t260 = load i64, ptr %l12, !tbaa !24
  %t262 = add i64 %t260, 1
  store i64 %t262, ptr %rv
  br label %ret
bb45:
  br label %bb11
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2fload_2efirstElems(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l16 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l27 = alloca i64
  %l28 = alloca i64
  %l35 = alloca { i64, ptr }
  %l38 = alloca i64
  %l39 = alloca i64
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t1, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  store i64 %t5, ptr %l5, !tbaa !24
  br label %bb1
bb1:
  %t7 = load i64, ptr %l4, !tbaa !24
  %t8 = load i64, ptr %l5, !tbaa !24
  %t11 = icmp slt i64 %t7, %t8
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  br label %bb18
bb3:
  br label %bb4
bb4:
  %t15 = load i64, ptr %l4, !tbaa !24
  store i64 %t15, ptr %l6, !tbaa !24
  %t17 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t17, ptr %l16, !tbaa !27
  %t18 = load i64, ptr %l4, !tbaa !24
  %t20 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr i8, ptr %t21, i64 %t18
  %t23 = load i8, ptr %t22, !tbaa !32
  %t27 = icmp eq i8 %t23, 47
  br i1 %t27, label %bb5, label %bb6
bb5:
  %t29 = load i64, ptr %l2, !tbaa !24
  %t31 = add i64 %t29, 1
  store i64 %t31, ptr %l2, !tbaa !24
  %t33 = load i64, ptr %l2, !tbaa !24
  %t37 = icmp eq i64 %t33, %a1
  br i1 %t37, label %bb7, label %bb8
bb6:
  br label %bb16
bb7:
  %t39 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t39, ptr %l26, !tbaa !27
  %t40 = load i64, ptr %l6, !tbaa !24
  store i64 %t40, ptr %l27, !tbaa !24
  %t41 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t42 = extractvalue { i64, ptr } %t41, 0
  store i64 %t42, ptr %l28, !tbaa !24
  %t43 = icmp sge i64 0, 0
  br i1 %t43, label %bb9, label %bb10
bb8:
  br label %bb15
bb9:
  %t45 = load i64, ptr %l27, !tbaa !24
  %t46 = icmp sle i64 0, %t45
  br i1 %t46, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_4f7ff751eb66f618_e3b0711c9f747694)
  unreachable
bb11:
  %t48 = load i64, ptr %l27, !tbaa !24
  %t49 = load i64, ptr %l28, !tbaa !24
  %t50 = icmp sle i64 %t48, %t49
  br i1 %t50, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_4f7ff751eb66f618_e3b0711c9f747694)
  unreachable
bb13:
  %t52 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !27
  %t54 = load i64, ptr %l27, !tbaa !24
  %t55 = getelementptr i8, ptr %t53, i64 0
  %t56 = sub i64 %t54, 0
  %t57 = insertvalue { i64, ptr } undef, i64 %t56, 0
  %t58 = insertvalue { i64, ptr } %t57, ptr %t55, 1
  store { i64, ptr } %t58, ptr %rv
  br label %ret
bb14:
  call void @__olang_check_failed(ptr @olang_loc_4f7ff751eb66f618_e3b0711c9f747694)
  unreachable
bb15:
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t60 = load i64, ptr %l4, !tbaa !24
  %t62 = add i64 %t60, 1
  store i64 %t62, ptr %l4, !tbaa !24
  br label %bb1
bb18:
  %t64 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t64, ptr %l35, !tbaa !27
  %t65 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t68 = extractvalue { i64, ptr } %t65, 0
  store i64 %t68, ptr %l38, !tbaa !24
  %t69 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t70 = extractvalue { i64, ptr } %t69, 0
  store i64 %t70, ptr %l39, !tbaa !24
  %t71 = icmp sge i64 0, 0
  br i1 %t71, label %bb19, label %bb20
bb19:
  %t73 = load i64, ptr %l38, !tbaa !24
  %t74 = icmp sle i64 0, %t73
  br i1 %t74, label %bb21, label %bb22
bb20:
  call void @__olang_check_failed(ptr @olang_loc_4fa7c22e4d470d75_c9a9030dc047401)
  unreachable
bb21:
  %t76 = load i64, ptr %l38, !tbaa !24
  %t77 = load i64, ptr %l39, !tbaa !24
  %t78 = icmp sle i64 %t76, %t77
  br i1 %t78, label %bb23, label %bb24
bb22:
  call void @__olang_check_failed(ptr @olang_loc_4fa7c22e4d470d75_c9a9030dc047401)
  unreachable
bb23:
  %t80 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !27
  %t82 = load i64, ptr %l38, !tbaa !24
  %t83 = getelementptr i8, ptr %t81, i64 0
  %t84 = sub i64 %t82, 0
  %t85 = insertvalue { i64, ptr } undef, i64 %t84, 0
  %t86 = insertvalue { i64, ptr } %t85, ptr %t83, 1
  store { i64, ptr } %t86, ptr %rv
  br label %ret
bb24:
  call void @__olang_check_failed(ptr @olang_loc_4fa7c22e4d470d75_c9a9030dc047401)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fload_2egit(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d132, i32 0, i32 1) }, ptr %l5, !tbaa !27
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

define dso_local i1 @compiler_2fload_2eifLinks(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l5 = alloca i1
  %l13 = alloca i1
  %l19 = alloca i1
  %l25 = alloca i1
  %l31 = alloca i1
  %l39 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/ast:TopIf", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  %t8 = xor i1 %t6, true
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/ast:TopIf", ptr %t10, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = icmp eq ptr %t13, null
  br i1 %t15, label %bb3, label %bb4
bb2:
  store i1 false, ptr %l5, !tbaa !21
  br label %bb7
bb3:
  call void @__olang_check_failed(ptr @olang_loc_9030b146fc4de6e4_df02f4157fd8ffa0)
  unreachable
bb4:
  br label %bb5
bb5:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/ast:TopIf", ptr %t17, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !29
  %t23 = getelementptr %"compiler/ast:TopBranch", ptr %t20, i32 0, i32 1
  %t24 = load { i64, ptr }, ptr %t23, !tbaa !27
  %t26 = call i1 @compiler_2fload_2edeclsLink(ptr %v0, { i64, ptr } %t24)
  store i1 %t26, ptr %l13
  br label %bb6
bb6:
  %t27 = load i1, ptr %l13, !tbaa !21
  store i1 %t27, ptr %l5, !tbaa !21
  br label %bb7
bb7:
  %t28 = load i1, ptr %l5, !tbaa !21
  br i1 %t28, label %bb8, label %bb9
bb8:
  store i1 true, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/ast:TopIf", ptr %t30, i32 0, i32 2
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t35 = icmp eq ptr %t33, null
  %t37 = xor i1 %t35, true
  br i1 %t37, label %bb11, label %bb12
bb11:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/ast:TopIf", ptr %t39, i32 0, i32 2
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t44 = icmp eq ptr %t42, null
  br i1 %t44, label %bb13, label %bb14
bb12:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb17
bb13:
  call void @__olang_check_failed(ptr @olang_loc_37cfce4d2d6116b3_dac403d93f0f31bf)
  unreachable
bb14:
  br label %bb15
bb15:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/ast:TopIf", ptr %t46, i32 0, i32 2
  %t49 = load ptr, ptr %t48, !tbaa !29
  %t51 = call i1 @compiler_2fload_2eifLinks(ptr %v0, ptr %t49)
  store i1 %t51, ptr %l25
  br label %bb16
bb16:
  %t52 = load i1, ptr %l25, !tbaa !21
  store i1 %t52, ptr %l19, !tbaa !21
  br label %bb17
bb17:
  %t53 = load i1, ptr %l19, !tbaa !21
  br i1 %t53, label %bb18, label %bb19
bb18:
  store i1 true, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/ast:TopIf", ptr %t55, i32 0, i32 3
  %t58 = load ptr, ptr %t57, !tbaa !29
  %t60 = icmp eq ptr %t58, null
  %t62 = xor i1 %t60, true
  br i1 %t62, label %bb21, label %bb22
bb21:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/ast:TopIf", ptr %t64, i32 0, i32 3
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t69 = icmp eq ptr %t67, null
  br i1 %t69, label %bb23, label %bb24
bb22:
  store i1 false, ptr %l31, !tbaa !21
  br label %bb27
bb23:
  call void @__olang_check_failed(ptr @olang_loc_eaa065d2073c0672_9cd5a42be91f6f0e)
  unreachable
bb24:
  br label %bb25
bb25:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/ast:TopIf", ptr %t71, i32 0, i32 3
  %t74 = load ptr, ptr %t73, !tbaa !29
  %t77 = getelementptr %"compiler/ast:TopBranch", ptr %t74, i32 0, i32 1
  %t78 = load { i64, ptr }, ptr %t77, !tbaa !27
  %t80 = call i1 @compiler_2fload_2edeclsLink(ptr %v0, { i64, ptr } %t78)
  store i1 %t80, ptr %l39
  br label %bb26
bb26:
  %t81 = load i1, ptr %l39, !tbaa !21
  store i1 %t81, ptr %l31, !tbaa !21
  br label %bb27
bb27:
  %t82 = load i1, ptr %l31, !tbaa !21
  store i1 %t82, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fload_2erelativeIdentity(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i32
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l21 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d133, i32 0, i32 1) })
  %t4 = extractvalue { i32, i64 } %t3, 1
  %t5 = extractvalue { i32, i64 } %t3, 0
  store i32 %t5, ptr %l6
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store i64 %t4, ptr %l5
  br label %bb1
bb1:
  %t8 = load i64, ptr %l5, !tbaa !24
  store i64 %t8, ptr %l3, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i64 -1, ptr %l3, !tbaa !24
  br label %bb4
bb4:
  %t9 = load i64, ptr %l3, !tbaa !24
  store i64 %t9, ptr %l2, !tbaa !24
  %t10 = load i64, ptr %l2, !tbaa !24
  %t12 = icmp slt i64 %t10, 0
  br i1 %t12, label %bb5, label %bb6
bb5:
  %t14 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t16 = call { i64, ptr } @compiler_2fload_2eNormalize(ptr %v1, ptr %v2, { i64, ptr } %t14)
  store { i64, ptr } %t16, ptr %l10
  br label %bb7
bb6:
  br label %bb8
bb7:
  call void @__olang_scope_close(ptr %s0)
  %t17 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t17, ptr %rv
  br label %ret
bb8:
  %t18 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t18, ptr %l11, !tbaa !27
  %t19 = load i64, ptr %l2, !tbaa !24
  store i64 %t19, ptr %l12, !tbaa !24
  %t20 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t20, 0
  store i64 %t21, ptr %l13, !tbaa !24
  %t22 = icmp sge i64 0, 0
  br i1 %t22, label %bb9, label %bb10
bb9:
  %t24 = load i64, ptr %l12, !tbaa !24
  %t25 = icmp sle i64 0, %t24
  br i1 %t25, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_738c5ab5e9ce8338_c044a83eb6fe7eb4)
  unreachable
bb11:
  %t27 = load i64, ptr %l12, !tbaa !24
  %t28 = load i64, ptr %l13, !tbaa !24
  %t29 = icmp sle i64 %t27, %t28
  br i1 %t29, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_738c5ab5e9ce8338_c044a83eb6fe7eb4)
  unreachable
bb13:
  %t31 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = load i64, ptr %l12, !tbaa !24
  %t34 = getelementptr i8, ptr %t32, i64 0
  %t35 = sub i64 %t33, 0
  %t36 = insertvalue { i64, ptr } undef, i64 %t35, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t34, 1
  %t38 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t37, 1
  %t41 = extractvalue { i64, ptr } %t37, 0
  %t42 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d134, i32 0, i32 1) }, 1
  %t43 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d134, i32 0, i32 1) }, 0
  %t44 = add i64 %t41, %t43
  %t46 = extractvalue { i64, ptr } %t38, 1
  %t47 = extractvalue { i64, ptr } %t38, 0
  %t48 = add i64 %t44, %t47
  %t49 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t48)
  call void @olang_textcopy(ptr %t49, ptr %t40, i64 %t41)
  %t50 = getelementptr i8, ptr %t49, i64 %t41
  call void @olang_textcopy(ptr %t50, ptr %t42, i64 %t43)
  %t51 = getelementptr i8, ptr %t50, i64 %t43
  call void @olang_textcopy(ptr %t51, ptr %t46, i64 %t47)
  %t52 = insertvalue { i64, ptr } undef, i64 %t48, 0
  %t53 = insertvalue { i64, ptr } %t52, ptr %t49, 1
  %t55 = extractvalue { i64, ptr } %t53, 0
  %t56 = extractvalue { i64, ptr } %t53, 1
  %t57 = mul i64 %t55, 1
  %t58 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t57)
  call void @llvm.memcpy.p0.p0.i64(ptr %t58, ptr %t56, i64 %t57, i1 false)
  %t59 = insertvalue { i64, ptr } undef, i64 %t55, 0
  %t60 = insertvalue { i64, ptr } %t59, ptr %t58, 1
  %t62 = call { i64, ptr } @compiler_2fload_2eNormalize(ptr %v2, ptr %v2, { i64, ptr } %t60)
  store { i64, ptr } %t62, ptr %l21
  br label %bb15
bb14:
  call void @__olang_check_failed(ptr @olang_loc_738c5ab5e9ce8338_c044a83eb6fe7eb4)
  unreachable
bb15:
  call void @__olang_scope_close(ptr %s0)
  %t63 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t63, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local ptr @compiler_2fload_2etypeNames(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, ptr %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i32
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l21 = alloca i64
  %l24 = alloca i64
  %l42 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l53 = alloca ptr
  %l54 = alloca { i64, ptr }
  %l55 = alloca { i64, ptr }
  %l59 = alloca i64
  %l60 = alloca { i64, ptr }
  %l64 = alloca i64
  %l65 = alloca i64
  %rv = alloca ptr
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l11
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  %t3 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %t3
  store ptr %t3, ptr %l2, !tbaa !29
  %t7 = getelementptr %"compiler/scan:Tokens", ptr %a1, i32 0, i32 0
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  store { i64, ptr } %t8, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t10 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t10, 0
  %t14 = sub i64 %t12, 2
  store i64 %t14, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t16 = load i64, ptr %l5, !tbaa !24
  %t17 = load i64, ptr %l4, !tbaa !24
  %t20 = icmp sgt i64 %t16, %t17
  br i1 %t20, label %bb2, label %bb3
bb2:
  %t22 = load i64, ptr %l6, !tbaa !24
  %t24 = icmp sgt i64 %t22, 0
  br i1 %t24, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb7
bb4:
  %t26 = load i64, ptr %l5, !tbaa !24
  %t27 = load i64, ptr %l4, !tbaa !24
  %t30 = sub i64 %t26, %t27
  %t31 = load i64, ptr %l6, !tbaa !24
  %t34 = add i64 %t30, %t31
  %t36 = sub i64 %t34, 1
  %t37 = load i64, ptr %l6, !tbaa !24
  %t40 = sdiv i64 %t36, %t37
  store i64 %t40, ptr %l24, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb6
bb6:
  %t42 = load i64, ptr %l24, !tbaa !24
  store i64 %t42, ptr %l21, !tbaa !24
  br label %bb7
bb7:
  %t43 = load i64, ptr %l21, !tbaa !24
  store i64 %t43, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb8
bb8:
  %t44 = load i64, ptr %l8, !tbaa !24
  %t45 = load i64, ptr %l7, !tbaa !24
  %t48 = icmp slt i64 %t44, %t45
  %t50 = xor i1 %t48, true
  br i1 %t50, label %bb9, label %bb10
bb9:
  br label %bb26
bb10:
  br label %bb11
bb11:
  %t52 = load i64, ptr %l4, !tbaa !24
  %t53 = load i64, ptr %l8, !tbaa !24
  %t54 = load i64, ptr %l6, !tbaa !24
  %t57 = mul i64 %t53, %t54
  %t60 = add i64 %t52, %t57
  store i64 %t60, ptr %l9, !tbaa !24
  %t62 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t62, ptr %l42, !tbaa !27
  %t63 = load i64, ptr %l9, !tbaa !24
  %t65 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !27
  %t67 = getelementptr %"compiler/token:Token", ptr %t66, i64 %t63
  %t68 = getelementptr %"compiler/token:Token", ptr %t67, i32 0, i32 0
  %t69 = load i32, ptr %t68, !range !{i32 0, i32 114}
  store i32 %t69, ptr %l10
  %t71 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t71, ptr %l45, !tbaa !27
  %t72 = load i64, ptr %l9, !tbaa !24
  %t74 = add i64 %t72, 1
  %t76 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !27
  %t78 = getelementptr %"compiler/token:Token", ptr %t77, i64 %t74
  %t79 = getelementptr %"compiler/token:Token", ptr %t78, i32 0, i32 0
  %t80 = load i32, ptr %t79, !range !{i32 0, i32 114}
  %t82 = trunc i64 1 to i32
  %t83 = icmp eq i32 %t80, %t82
  %t85 = xor i1 %t83, true
  br i1 %t85, label %bb12, label %bb13
bb12:
  br label %bb25
bb13:
  br label %bb14
bb14:
  %t87 = load i32, ptr %l10, !range !{i32 0, i32 114}
  %t89 = trunc i64 33 to i32
  %t90 = icmp eq i32 %t87, %t89
  br i1 %t90, label %bb15, label %bb16
bb15:
  %t92 = load ptr, ptr %l2, !tbaa !29
  store ptr %t92, ptr %l53, !tbaa !29
  store { i64, ptr } %a0, ptr %l54, !tbaa !27
  %t94 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t94, ptr %l55, !tbaa !27
  %t95 = load i64, ptr %l9, !tbaa !24
  %t97 = add i64 %t95, 1
  %t99 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !27
  %t101 = getelementptr %"compiler/token:Token", ptr %t100, i64 %t97
  %t102 = getelementptr %"compiler/token:Token", ptr %t101, i32 0, i32 2
  %t103 = load i32, ptr %t102, !tbaa !23
  %t105 = sext i32 %t103 to i64
  store i64 %t105, ptr %l59, !tbaa !24
  %t106 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t106, ptr %l60, !tbaa !27
  %t107 = load i64, ptr %l9, !tbaa !24
  %t109 = add i64 %t107, 1
  %t111 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t112 = load ptr, ptr %t111, !tbaa !27
  %t113 = getelementptr %"compiler/token:Token", ptr %t112, i64 %t109
  %t114 = getelementptr %"compiler/token:Token", ptr %t113, i32 0, i32 3
  %t115 = load i32, ptr %t114, !tbaa !23
  %t117 = sext i32 %t115 to i64
  store i64 %t117, ptr %l64, !tbaa !24
  %t118 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t119 = extractvalue { i64, ptr } %t118, 0
  store i64 %t119, ptr %l65, !tbaa !24
  %t120 = load i64, ptr %l59, !tbaa !24
  %t121 = icmp sge i64 %t120, 0
  br i1 %t121, label %bb17, label %bb18
bb16:
  br label %bb24
bb17:
  %t123 = load i64, ptr %l59, !tbaa !24
  %t124 = load i64, ptr %l64, !tbaa !24
  %t125 = icmp sle i64 %t123, %t124
  br i1 %t125, label %bb19, label %bb20
bb18:
  call void @__olang_check_failed(ptr @olang_loc_61485bf8b9fa4014_95a81608270a26e0)
  unreachable
bb19:
  %t127 = load i64, ptr %l64, !tbaa !24
  %t128 = load i64, ptr %l65, !tbaa !24
  %t129 = icmp sle i64 %t127, %t128
  br i1 %t129, label %bb21, label %bb22
bb20:
  call void @__olang_check_failed(ptr @olang_loc_61485bf8b9fa4014_95a81608270a26e0)
  unreachable
bb21:
  %t131 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t132 = load ptr, ptr %t131, !tbaa !27
  %t133 = load i64, ptr %l59, !tbaa !24
  %t134 = load i64, ptr %l64, !tbaa !24
  %t135 = getelementptr i8, ptr %t132, i64 %t133
  %t136 = sub i64 %t134, %t133
  %t137 = insertvalue { i64, ptr } undef, i64 %t136, 0
  %t138 = insertvalue { i64, ptr } %t137, ptr %t135, 1
  %t139 = load ptr, ptr %l53, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v2, ptr %v0, ptr %t139, { i64, ptr } %t138)
  br label %bb23
bb22:
  call void @__olang_check_failed(ptr @olang_loc_61485bf8b9fa4014_95a81608270a26e0)
  unreachable
bb23:
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t141 = load i64, ptr %l8, !tbaa !24
  %t143 = add i64 %t141, 1
  store i64 %t143, ptr %l8, !tbaa !24
  br label %bb8
bb26:
  %t145 = load ptr, ptr %l2, !tbaa !29
  store ptr %t145, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local %"compiler/load:Import" @compiler_2fload_3aImport_2ector(ptr %v0, ptr %v1, ptr %v2, %"compiler/source:Span" %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2, { i64, ptr } %a3, i64 %a4) #0 {
entry:
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca { i64, ptr }
  %l18 = alloca %"compiler/source:Span"
  %rv = alloca %"compiler/load:Import"
  br label %start
start:
  br label %bb0
bb0:
  store %"compiler/source:Span" %a0, ptr %l5
  store %"compiler/source:Span" %a1, ptr %l6
  store { i64, ptr } %a2, ptr %l7, !tbaa !27
  store { i64, ptr } %a3, ptr %l8, !tbaa !27
  store i64 %a4, ptr %l9, !tbaa !24
  store i64 -1, ptr %l10, !tbaa !24
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d135, i32 0, i32 1) }, ptr %l11, !tbaa !27
  %t11 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v2, i32 0, i32 0)
  store %"compiler/source:Span" %t11, ptr %l18
  br label %bb1
bb1:
  %t12 = load %"compiler/source:Span", ptr %l18
  %t13 = load %"compiler/source:Span", ptr %l5
  %t14 = insertvalue %"compiler/load:Import" undef, %"compiler/source:Span" %t13, 0
  %t15 = load %"compiler/source:Span", ptr %l6
  %t16 = insertvalue %"compiler/load:Import" %t14, %"compiler/source:Span" %t15, 1
  %t17 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t18 = insertvalue %"compiler/load:Import" %t16, { i64, ptr } %t17, 2
  %t19 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t20 = insertvalue %"compiler/load:Import" %t18, { i64, ptr } %t19, 3
  %t21 = load i64, ptr %l9, !tbaa !24
  %t22 = insertvalue %"compiler/load:Import" %t20, i64 %t21, 4
  %t23 = load i64, ptr %l10, !tbaa !24
  %t24 = insertvalue %"compiler/load:Import" %t22, i64 %t23, 5
  %t25 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t26 = insertvalue %"compiler/load:Import" %t24, { i64, ptr } %t25, 6
  %t28 = insertvalue %"compiler/load:Import" %t26, %"compiler/source:Span" %t12, 7
  store %"compiler/load:Import" %t28, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/load:Import", ptr %rv
  ret %"compiler/load:Import" %rr
}

define dso_local void @compiler_2fload_3aLoader_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, { i64, ptr } %a0, ptr %a1, ptr %a2, ptr %a3, ptr %a4) #0 {
entry:
  %l5 = alloca { i64, ptr }
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l11 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l12 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l13 = alloca i1
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca i64
  %l18 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l19 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l21 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l22 = alloca i1
  %l23 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l24 = alloca { i64, ptr }
  %l31 = alloca i64
  %l33 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l35 = alloca i64
  %l37 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l39 = alloca i64
  %l41 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l43 = alloca i64
  %l45 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l47 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l48 = alloca i64
  %l50 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l52 = alloca i64
  %l54 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l56 = alloca i64
  %l58 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l60 = alloca i64
  %l62 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l64 = alloca i64
  %l66 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l68 = alloca %"compiler/load:Loader"
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a0, ptr %l5, !tbaa !27
  store ptr %a1, ptr %l6, !tbaa !29
  store ptr %a2, ptr %l7, !tbaa !29
  store ptr %a3, ptr %l8, !tbaa !29
  store ptr %a4, ptr %l9, !tbaa !29
  %t11 = ptrtoint ptr %v5 to i64
  store i64 %t11, ptr %l31, !tbaa !24
  %t12 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e5
  br i1 %t12, label %bb1, label %bb2
bb1:
  %t14 = call ptr @__olang_region_make(ptr %v5)
  %t15 = ptrtoint ptr %t14 to i64
  store i64 %t15, ptr %l31, !tbaa !24
  br label %bb2
bb2:
  %t16 = load i64, ptr %l31
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %t17)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t18, ptr %l33
  br label %bb3
bb3:
  %t19 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e5
  br i1 %t19, label %bb4, label %bb5
bb4:
  %t21 = load i64, ptr %l31
  %t22 = inttoptr i64 %t21 to ptr
  %t23 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l33, i32 0, i32 2
  %t24 = load { i64, ptr }, ptr %t23
  %t25 = extractvalue { i64, ptr } %t24, 1
  %t26 = call ptr @__olang_region_or(ptr %t25, ptr null)
  %t27 = icmp ne ptr %t26, null
  %t28 = select i1 %t27, ptr %t26, ptr null
  %t29 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l33, i32 0, i32 1
  %t30 = load { i64, ptr }, ptr %t29
  %t31 = extractvalue { i64, ptr } %t30, 1
  %t32 = call ptr @__olang_region_or(ptr %t31, ptr null)
  %t33 = icmp ne ptr %t32, null
  %t34 = select i1 %t33, ptr %t32, ptr %t28
  %t35 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l33, i32 0, i32 0
  %t36 = load { i64, ptr }, ptr %t35
  %t37 = extractvalue { i64, ptr } %t36, 1
  %t38 = call ptr @__olang_region_or(ptr %t37, ptr null)
  %t39 = icmp ne ptr %t38, null
  %t40 = select i1 %t39, ptr %t38, ptr %t34
  %t41 = icmp eq ptr %t40, %t22
  call void @__olang_region_settle(ptr %t22, i1 %t41)
  br label %bb5
bb5:
  %t42 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l33
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t42, ptr %l10
  %t43 = ptrtoint ptr %v5 to i64
  store i64 %t43, ptr %l35, !tbaa !24
  %t44 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e6
  br i1 %t44, label %bb6, label %bb7
bb6:
  %t46 = call ptr @__olang_region_make(ptr %v5)
  %t47 = ptrtoint ptr %t46 to i64
  store i64 %t47, ptr %l35, !tbaa !24
  br label %bb7
bb7:
  %t48 = load i64, ptr %l35
  %t49 = inttoptr i64 %t48 to ptr
  %t50 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t49)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t50, ptr %l37
  br label %bb8
bb8:
  %t51 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e6
  br i1 %t51, label %bb9, label %bb10
bb9:
  %t53 = load i64, ptr %l35
  %t54 = inttoptr i64 %t53 to ptr
  %t55 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l37, i32 0, i32 2
  %t56 = load { i64, ptr }, ptr %t55
  %t57 = extractvalue { i64, ptr } %t56, 1
  %t58 = call ptr @__olang_region_or(ptr %t57, ptr null)
  %t59 = icmp ne ptr %t58, null
  %t60 = select i1 %t59, ptr %t58, ptr null
  %t61 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l37, i32 0, i32 1
  %t62 = load { i64, ptr }, ptr %t61
  %t63 = extractvalue { i64, ptr } %t62, 1
  %t64 = call ptr @__olang_region_or(ptr %t63, ptr null)
  %t65 = icmp ne ptr %t64, null
  %t66 = select i1 %t65, ptr %t64, ptr %t60
  %t67 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l37, i32 0, i32 0
  %t68 = load { i64, ptr }, ptr %t67
  %t69 = extractvalue { i64, ptr } %t68, 1
  %t70 = call ptr @__olang_region_or(ptr %t69, ptr null)
  %t71 = icmp ne ptr %t70, null
  %t72 = select i1 %t71, ptr %t70, ptr %t66
  %t73 = icmp eq ptr %t72, %t54
  call void @__olang_region_settle(ptr %t54, i1 %t73)
  br label %bb10
bb10:
  %t74 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l37
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t74, ptr %l11
  %t75 = ptrtoint ptr %v5 to i64
  store i64 %t75, ptr %l39, !tbaa !24
  %t76 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e7
  br i1 %t76, label %bb11, label %bb12
bb11:
  %t78 = call ptr @__olang_region_make(ptr %v5)
  %t79 = ptrtoint ptr %t78 to i64
  store i64 %t79, ptr %l39, !tbaa !24
  br label %bb12
bb12:
  %t80 = load i64, ptr %l39
  %t81 = inttoptr i64 %t80 to ptr
  %t82 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t81)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t82, ptr %l41
  br label %bb13
bb13:
  %t83 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e7
  br i1 %t83, label %bb14, label %bb15
bb14:
  %t85 = load i64, ptr %l39
  %t86 = inttoptr i64 %t85 to ptr
  %t87 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l41, i32 0, i32 2
  %t88 = load { i64, ptr }, ptr %t87
  %t89 = extractvalue { i64, ptr } %t88, 1
  %t90 = call ptr @__olang_region_or(ptr %t89, ptr null)
  %t91 = icmp ne ptr %t90, null
  %t92 = select i1 %t91, ptr %t90, ptr null
  %t93 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l41, i32 0, i32 1
  %t94 = load { i64, ptr }, ptr %t93
  %t95 = extractvalue { i64, ptr } %t94, 1
  %t96 = call ptr @__olang_region_or(ptr %t95, ptr null)
  %t97 = icmp ne ptr %t96, null
  %t98 = select i1 %t97, ptr %t96, ptr %t92
  %t99 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l41, i32 0, i32 0
  %t100 = load { i64, ptr }, ptr %t99
  %t101 = extractvalue { i64, ptr } %t100, 1
  %t102 = call ptr @__olang_region_or(ptr %t101, ptr null)
  %t103 = icmp ne ptr %t102, null
  %t104 = select i1 %t103, ptr %t102, ptr %t98
  %t105 = icmp eq ptr %t104, %t86
  call void @__olang_region_settle(ptr %t86, i1 %t105)
  br label %bb15
bb15:
  %t106 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l41
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t106, ptr %l12
  store i1 true, ptr %l13, !tbaa !21
  %t107 = ptrtoint ptr %v5 to i64
  store i64 %t107, ptr %l43, !tbaa !24
  %t108 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e9
  br i1 %t108, label %bb16, label %bb17
bb16:
  %t110 = call ptr @__olang_region_make(ptr %v5)
  %t111 = ptrtoint ptr %t110 to i64
  store i64 %t111, ptr %l43, !tbaa !24
  br label %bb17
bb17:
  %t112 = load i64, ptr %l43
  %t113 = inttoptr i64 %t112 to ptr
  %t114 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t113, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t114, ptr %l45
  br label %bb18
bb18:
  %t115 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e9
  br i1 %t115, label %bb19, label %bb20
bb19:
  %t117 = load i64, ptr %l43
  %t118 = inttoptr i64 %t117 to ptr
  %t119 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l45, i32 0, i32 0
  %t120 = load { i64, ptr }, ptr %t119
  %t121 = extractvalue { i64, ptr } %t120, 1
  %t122 = call ptr @__olang_region_or(ptr %t121, ptr null)
  %t123 = icmp ne ptr %t122, null
  %t124 = select i1 %t123, ptr %t122, ptr null
  %t125 = icmp eq ptr %t124, %t118
  call void @__olang_region_settle(ptr %t118, i1 %t125)
  br label %bb20
bb20:
  %t126 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l45
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t126, ptr %l14
  %t127 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2ector(ptr %v5, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t127, ptr %l47
  br label %bb21
bb21:
  %t128 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l47
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t128, ptr %l15
  %t129 = ptrtoint ptr %v5 to i64
  store i64 %t129, ptr %l48, !tbaa !24
  %t130 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e11
  br i1 %t130, label %bb22, label %bb23
bb22:
  %t132 = call ptr @__olang_region_make(ptr %v5)
  %t133 = ptrtoint ptr %t132 to i64
  store i64 %t133, ptr %l48, !tbaa !24
  br label %bb23
bb23:
  %t134 = load i64, ptr %l48
  %t135 = inttoptr i64 %t134 to ptr
  %t136 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t135, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t136, ptr %l50
  br label %bb24
bb24:
  %t137 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e11
  br i1 %t137, label %bb25, label %bb26
bb25:
  %t139 = load i64, ptr %l48
  %t140 = inttoptr i64 %t139 to ptr
  %t141 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l50, i32 0, i32 0
  %t142 = load { i64, ptr }, ptr %t141
  %t143 = extractvalue { i64, ptr } %t142, 1
  %t144 = call ptr @__olang_region_or(ptr %t143, ptr null)
  %t145 = icmp ne ptr %t144, null
  %t146 = select i1 %t145, ptr %t144, ptr null
  %t147 = icmp eq ptr %t146, %t140
  call void @__olang_region_settle(ptr %t140, i1 %t147)
  br label %bb26
bb26:
  %t148 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l50
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t148, ptr %l16
  store i64 -1, ptr %l17, !tbaa !24
  %t149 = ptrtoint ptr %v5 to i64
  store i64 %t149, ptr %l52, !tbaa !24
  %t150 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e13
  br i1 %t150, label %bb27, label %bb28
bb27:
  %t152 = call ptr @__olang_region_make(ptr %v5)
  %t153 = ptrtoint ptr %t152 to i64
  store i64 %t153, ptr %l52, !tbaa !24
  br label %bb28
bb28:
  %t154 = load i64, ptr %l52
  %t155 = inttoptr i64 %t154 to ptr
  %t156 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aStr_H4eff2894ad89de6e140d6d54faebb689(ptr %t155)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t156, ptr %l54
  br label %bb29
bb29:
  %t157 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e13
  br i1 %t157, label %bb30, label %bb31
bb30:
  %t159 = load i64, ptr %l52
  %t160 = inttoptr i64 %t159 to ptr
  %t161 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l54, i32 0, i32 2
  %t162 = load { i64, ptr }, ptr %t161
  %t163 = extractvalue { i64, ptr } %t162, 1
  %t164 = call ptr @__olang_region_or(ptr %t163, ptr null)
  %t165 = icmp ne ptr %t164, null
  %t166 = select i1 %t165, ptr %t164, ptr null
  %t167 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l54, i32 0, i32 1
  %t168 = load { i64, ptr }, ptr %t167
  %t169 = extractvalue { i64, ptr } %t168, 1
  %t170 = call ptr @__olang_region_or(ptr %t169, ptr null)
  %t171 = icmp ne ptr %t170, null
  %t172 = select i1 %t171, ptr %t170, ptr %t166
  %t173 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l54, i32 0, i32 0
  %t174 = load { i64, ptr }, ptr %t173
  %t175 = extractvalue { i64, ptr } %t174, 1
  %t176 = call ptr @__olang_region_or(ptr %t175, ptr null)
  %t177 = icmp ne ptr %t176, null
  %t178 = select i1 %t177, ptr %t176, ptr %t172
  %t179 = icmp eq ptr %t178, %t160
  call void @__olang_region_settle(ptr %t160, i1 %t179)
  br label %bb31
bb31:
  %t180 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l54
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t180, ptr %l18
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d136, i32 0, i32 1) }, ptr %l19, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d137, i32 0, i32 1) }, ptr %l20, !tbaa !27
  %t181 = ptrtoint ptr %v5 to i64
  store i64 %t181, ptr %l56, !tbaa !24
  %t182 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e16
  br i1 %t182, label %bb32, label %bb33
bb32:
  %t184 = call ptr @__olang_region_make(ptr %v5)
  %t185 = ptrtoint ptr %t184 to i64
  store i64 %t185, ptr %l56, !tbaa !24
  br label %bb33
bb33:
  %t186 = load i64, ptr %l56
  %t187 = inttoptr i64 %t186 to ptr
  %t188 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Array_3cU8_3e_26_3e(ptr %t187)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t188, ptr %l58
  br label %bb34
bb34:
  %t189 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e16
  br i1 %t189, label %bb35, label %bb36
bb35:
  %t191 = load i64, ptr %l56
  %t192 = inttoptr i64 %t191 to ptr
  %t193 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l58, i32 0, i32 2
  %t194 = load { i64, ptr }, ptr %t193
  %t195 = extractvalue { i64, ptr } %t194, 1
  %t196 = call ptr @__olang_region_or(ptr %t195, ptr null)
  %t197 = icmp ne ptr %t196, null
  %t198 = select i1 %t197, ptr %t196, ptr null
  %t199 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l58, i32 0, i32 1
  %t200 = load { i64, ptr }, ptr %t199
  %t201 = extractvalue { i64, ptr } %t200, 1
  %t202 = call ptr @__olang_region_or(ptr %t201, ptr null)
  %t203 = icmp ne ptr %t202, null
  %t204 = select i1 %t203, ptr %t202, ptr %t198
  %t205 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l58, i32 0, i32 0
  %t206 = load { i64, ptr }, ptr %t205
  %t207 = extractvalue { i64, ptr } %t206, 1
  %t208 = call ptr @__olang_region_or(ptr %t207, ptr null)
  %t209 = icmp ne ptr %t208, null
  %t210 = select i1 %t209, ptr %t208, ptr %t204
  %t211 = icmp eq ptr %t210, %t192
  call void @__olang_region_settle(ptr %t192, i1 %t211)
  br label %bb36
bb36:
  %t212 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l58
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t212, ptr %l21
  store i1 false, ptr %l22, !tbaa !21
  %t213 = ptrtoint ptr %v5 to i64
  store i64 %t213, ptr %l60, !tbaa !24
  %t214 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e18
  br i1 %t214, label %bb37, label %bb38
bb37:
  %t216 = call ptr @__olang_region_make(ptr %v5)
  %t217 = ptrtoint ptr %t216 to i64
  store i64 %t217, ptr %l60, !tbaa !24
  br label %bb38
bb38:
  %t218 = load i64, ptr %l60
  %t219 = inttoptr i64 %t218 to ptr
  %t220 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t219)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t220, ptr %l62
  br label %bb39
bb39:
  %t221 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e18
  br i1 %t221, label %bb40, label %bb41
bb40:
  %t223 = load i64, ptr %l60
  %t224 = inttoptr i64 %t223 to ptr
  %t225 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l62, i32 0, i32 2
  %t226 = load { i64, ptr }, ptr %t225
  %t227 = extractvalue { i64, ptr } %t226, 1
  %t228 = call ptr @__olang_region_or(ptr %t227, ptr null)
  %t229 = icmp ne ptr %t228, null
  %t230 = select i1 %t229, ptr %t228, ptr null
  %t231 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l62, i32 0, i32 1
  %t232 = load { i64, ptr }, ptr %t231
  %t233 = extractvalue { i64, ptr } %t232, 1
  %t234 = call ptr @__olang_region_or(ptr %t233, ptr null)
  %t235 = icmp ne ptr %t234, null
  %t236 = select i1 %t235, ptr %t234, ptr %t230
  %t237 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l62, i32 0, i32 0
  %t238 = load { i64, ptr }, ptr %t237
  %t239 = extractvalue { i64, ptr } %t238, 1
  %t240 = call ptr @__olang_region_or(ptr %t239, ptr null)
  %t241 = icmp ne ptr %t240, null
  %t242 = select i1 %t241, ptr %t240, ptr %t236
  %t243 = icmp eq ptr %t242, %t224
  call void @__olang_region_settle(ptr %t224, i1 %t243)
  br label %bb41
bb41:
  %t244 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l62
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t244, ptr %l23
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d138, i32 0, i32 1) }, ptr %l24, !tbaa !27
  %t245 = ptrtoint ptr %v5 to i64
  store i64 %t245, ptr %l64, !tbaa !24
  %t246 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e20
  br i1 %t246, label %bb42, label %bb43
bb42:
  %t248 = call ptr @__olang_region_make(ptr %v5)
  %t249 = ptrtoint ptr %t248 to i64
  store i64 %t249, ptr %l64, !tbaa !24
  br label %bb43
bb43:
  %t250 = load i64, ptr %l64
  %t251 = inttoptr i64 %t250 to ptr
  %t252 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t251, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t252, ptr %l66
  br label %bb44
bb44:
  %t253 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e20
  br i1 %t253, label %bb45, label %bb46
bb45:
  %t255 = load i64, ptr %l64
  %t256 = inttoptr i64 %t255 to ptr
  %t257 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l66, i32 0, i32 0
  %t258 = load { i64, ptr }, ptr %t257
  %t259 = extractvalue { i64, ptr } %t258, 1
  %t260 = call ptr @__olang_region_or(ptr %t259, ptr null)
  %t261 = icmp ne ptr %t260, null
  %t262 = select i1 %t261, ptr %t260, ptr null
  %t263 = icmp eq ptr %t262, %t256
  call void @__olang_region_settle(ptr %t256, i1 %t263)
  br label %bb46
bb46:
  %t264 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l66
  %t265 = getelementptr %"compiler/load:Loader", ptr %l68, i32 0, i32 0
  %t266 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t266, ptr %t265, !tbaa !27
  %t267 = getelementptr %"compiler/load:Loader", ptr %l68, i32 0, i32 1
  %t268 = load ptr, ptr %l6, !tbaa !29
  store ptr %t268, ptr %t267, !tbaa !29
  %t269 = getelementptr %"compiler/load:Loader", ptr %l68, i32 0, i32 2
  %t270 = load ptr, ptr %l7, !tbaa !29
  store ptr %t270, ptr %t269, !tbaa !29
  %t271 = getelementptr %"compiler/load:Loader", ptr %l68, i32 0, i32 3
  %t272 = load ptr, ptr %l8, !tbaa !29
  store ptr %t272, ptr %t271, !tbaa !29
  %t273 = getelementptr %"compiler/load:Loader", ptr %l68, i32 0, i32 4
  %t274 = load ptr, ptr %l9, !tbaa !29
  store ptr %t274, ptr %t273, !tbaa !29
  %t275 = getelementptr %"compiler/load:Loader", ptr %l68, i32 0, i32 5
  %t276 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l10
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t276, ptr %t275
  %t277 = getelementptr %"compiler/load:Loader", ptr %l68, i32 0, i32 6
  %t278 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l11
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t278, ptr %t277
  %t279 = getelementptr %"compiler/load:Loader", ptr %l68, i32 0, i32 7
  %t280 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l12
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t280, ptr %t279
  %t281 = getelementptr %"compiler/load:Loader", ptr %l68, i32 0, i32 8
  %t282 = load i1, ptr %l13, !tbaa !21
  store i1 %t282, ptr %t281, !tbaa !21
  %t283 = getelementptr %"compiler/load:Loader", ptr %l68, i32 0, i32 9
  %t284 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t284, ptr %t283
  %t285 = getelementptr %"compiler/load:Loader", ptr %l68, i32 0, i32 10
  %t286 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t286, ptr %t285
  %t287 = getelementptr %"compiler/load:Loader", ptr %l68, i32 0, i32 11
  %t288 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t288, ptr %t287
  %t289 = getelementptr %"compiler/load:Loader", ptr %l68, i32 0, i32 12
  %t290 = load i64, ptr %l17, !tbaa !24
  store i64 %t290, ptr %t289, !tbaa !24
  %t291 = getelementptr %"compiler/load:Loader", ptr %l68, i32 0, i32 13
  %t292 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l18
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t292, ptr %t291
  %t293 = getelementptr %"compiler/load:Loader", ptr %l68, i32 0, i32 14
  %t294 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t294, ptr %t293, !tbaa !27
  %t295 = getelementptr %"compiler/load:Loader", ptr %l68, i32 0, i32 15
  %t296 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t296, ptr %t295, !tbaa !27
  %t297 = getelementptr %"compiler/load:Loader", ptr %l68, i32 0, i32 16
  %t298 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l21
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t298, ptr %t297
  %t299 = getelementptr %"compiler/load:Loader", ptr %l68, i32 0, i32 17
  %t300 = load i1, ptr %l22, !tbaa !21
  store i1 %t300, ptr %t299, !tbaa !21
  %t301 = getelementptr %"compiler/load:Loader", ptr %l68, i32 0, i32 18
  %t302 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l23
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t302, ptr %t301
  %t303 = getelementptr %"compiler/load:Loader", ptr %l68, i32 0, i32 19
  %t304 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t304, ptr %t303, !tbaa !27
  %t305 = getelementptr %"compiler/load:Loader", ptr %l68, i32 0, i32 20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t264, ptr %t305
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l68, i64 680, i1 false)
  br label %ret
ret:
  ret void
}

@.d0 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d1 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".a" }>, align 8
@.d2 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".o" }>, align 8
@.d3 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c".so" }>, align 8
@.d4 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c".so." }>, align 8
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
@.d5 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"olang.lock" }>, align 8
@.d6 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"OLANG_STD" }>, align 8
declare void @__olang_errpay_pop()
@.d7 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d8 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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
@.d9 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"/proc/self/exe" }>, align 8
@.d10 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"std" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d11 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"/../std" }>, align 8
@__olang_empty_array = external constant [16 x i64]
declare void @__olang_check_failed(ptr) cold noreturn
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
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
define internal i1 @olang_lambda_12(ptr %env, i64 %a0, i64 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l6 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l12 = alloca ptr
  %l15 = alloca i1
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
  %t3 = getelementptr %"compiler/load:Loader", ptr %t1, i32 0, i32 10
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %vc0, ptr %vc0, ptr %t3, i64 %a0)
  store ptr %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l6, !tbaa !29
  %t10 = getelementptr %"compiler/load:Module", ptr %t8, i32 0, i32 2
  %t11 = load { i64, ptr }, ptr %t10, !tbaa !27
  store { i64, ptr } %t11, ptr %l8, !tbaa !27
  %t12 = load ptr, ptr %l2, !tbaa !29
  %t14 = getelementptr %"compiler/load:Loader", ptr %t12, i32 0, i32 10
  %t18 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %vc0, ptr %vc0, ptr %t14, i64 %a1)
  store ptr %t18, ptr %l12
  br label %bb2
bb2:
  %t19 = load ptr, ptr %l12, !tbaa !29
  %t21 = getelementptr %"compiler/load:Module", ptr %t19, i32 0, i32 2
  %t22 = load { i64, ptr }, ptr %t21, !tbaa !27
  %t23 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t25 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLess(ptr %vc0, ptr %vc0, { i64, ptr } %t23, { i64, ptr } %t22)
  store i1 %t25, ptr %l15
  br label %bb3
bb3:
  %t26 = load i1, ptr %l15, !tbaa !21
  store i1 %t26, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@.d13 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"module " }>, align 8
@.d14 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d15 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"  " }>, align 8
@.d16 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d17 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
define internal i1 @olang_lambda_18(ptr %env, ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l4 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLess(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
  store i1 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i1, ptr %l4, !tbaa !21
  store i1 %t6, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@.d19 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".c" }>, align 8
@.d20 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d21 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d22 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fload_3aLoader_2e14 = weak hidden constant i1 false
declare void @__olang_region_release(ptr) noinline
@olang_2esole_2ecompiler_2fload_3aLoader_2e15 = weak hidden constant i1 false
@.d23 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d24 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".c" }>, align 8
@.d25 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d26 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d27 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d28 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d29 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d30 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d31 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d32 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d33 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d34 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"#include \22" }>, align 8
@.d35 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\22" }>, align 8
@.d36 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d37 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d38 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"./" }>, align 8
@.d39 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"../" }>, align 8
@.d40 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"#include <" }>, align 8
@.d41 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c">" }>, align 8
@.d42 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"<" }>, align 8
@.d43 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c">" }>, align 8
@.d44 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fload_3aLoader_2e19 = weak hidden constant i1 false
@.d45 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"-D_GNU_SOURCE" }>, align 8
@.d46 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d47 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d48 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"/proc/self/exe" }>, align 8
@.d49 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d50 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"/cimport" }>, align 8
@.d51 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d52 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d53 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d54 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d55 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d56 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d57 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d58 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"/* " }>, align 8
@.d59 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" */\0A" }>, align 8
@.d60 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".olang" }>, align 8
@.d61 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".c" }>, align 8
@.d62 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".deps" }>, align 8
@.d63 = private constant <{ i64, [39 x i8] }> <{ i64 0, [39 x i8] c"its translation cannot be written into " }>, align 8
@.d64 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".olang" }>, align 8
@.d65 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".c" }>, align 8
@.d66 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".c" }>, align 8
@olang_2esole_2ecompiler_2fload_3aModule_2e31 = weak hidden constant i1 false
@.d67 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".c" }>, align 8
@.d68 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"# symbol " }>, align 8
@.d69 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"# not declared:" }>, align 8
@.d70 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20st_Ha3f33385783b00c3f13cf90b683d8670 = weak hidden constant i1 false
@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20st_Ha3f33285783aff10f13cf80b683d8c03 = weak hidden constant i1 false
@.d71 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"#   " }>, align 8
@.d72 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d73 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
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
@.d74 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d75 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fload_3aImport_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fload_3aImport_2e3 = weak hidden constant i1 false
@.d76 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"link" }>, align 8
@olang_2esole_2ecompiler_2fload_3aImport_2e6 = weak hidden constant i1 false
@.d77 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d78 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fload_3aModule_2e0 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fload_3aModule_2e1 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fload_3aModule_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fload_3aModule_2e6 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fsource_3aSource_2e0 = weak hidden constant i1 false
declare void @__olang_bang_failed_plain(ptr) cold noreturn
@.d79 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d80 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"std/" }>, align 8
@olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fload_3aModule_2e12 = weak hidden constant i1 false
@.d81 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".h" }>, align 8
@.d82 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".c" }>, align 8
@.d83 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d84 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d85 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d86 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d87 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d88 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Array" }>, align 8
@.d89 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".olang" }>, align 8
@.d90 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d91 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d92 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"std/" }>, align 8
@.d93 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d94 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d95 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".olang" }>, align 8
@.d96 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"std/" }>, align 8
@.d97 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"std" }>, align 8
@.d98 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d99 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".." }>, align 8
@.d100 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d101 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d102 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d103 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d104 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d105 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d106 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".olang" }>, align 8
@.d107 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d108 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d109 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d110 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".olang" }>, align 8
@.d111 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d112 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".olang" }>, align 8
@.d113 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d114 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d115 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d116 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d117 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".." }>, align 8
@.d118 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"std/" }>, align 8
@.d119 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"std" }>, align 8
@.d120 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d121 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d122 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d123 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d124 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d125 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d126 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d127 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d128 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d129 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"std/" }>, align 8
@.d130 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d131 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".olang" }>, align 8
@.d132 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d133 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d134 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d135 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fload_3aLoader_2e5 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e_2ector(ptr %v0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1, ptr %l0
  br label %bb1
bb1:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %rv
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %rr
}

declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
@olang_2esole_2ecompiler_2fload_3aLoader_2e6 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ector(ptr %v0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1, ptr %l0
  br label %bb1
bb1:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %rv
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %rr
}

@olang_2esole_2ecompiler_2fload_3aLoader_2e7 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fload_3aLoader_2e9 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fload_3aLoader_2e11 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fload_3aLoader_2e13 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aStr_H4eff2894ad89de6e140d6d54faebb689(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1, ptr %l0
  br label %bb1
bb1:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %rv
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %rr
}

@.d136 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d137 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fload_3aLoader_2e16 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Array_3cU8_3e_26_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Array_3cU8_3e_26_3e_2ector(ptr %v0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1, ptr %l0
  br label %bb1
bb1:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %rv
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %rr
}

@olang_2esole_2ecompiler_2fload_3aLoader_2e18 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ector(ptr %v0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1, ptr %l0
  br label %bb1
bb1:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %rv
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %rr
}

@.d138 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fload_3aLoader_2e20 = weak hidden constant i1 false
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
declare noalias ptr @__olang_scope_alloc_slow(ptr, i64, i64) noinline
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
declare i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2ffilepath_2eDir(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @std_2ffilepath_2eJoin(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i32, { i64, ptr } } @std_2fos_2eReadLink(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2eLen_3cI32_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2eAt_3cI32_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2fload_2ePending = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FD\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@G_2ecompiler_2fload_2eNotYet = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FE\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %a0)
declare void @compiler_2fload_2ecompiler_2fload_3aLoader_2echeckReach(ptr %v0, ptr %a0)
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H412951a1c1c3c34f4f6a5a14e25e5986(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
@olang_loc_6f6a8c9f8e5b8646_ccdd31ccd2674fa = external constant [0 x i8]
@olang_loc_53eff658f30813a6_f347cd1231cef772 = external constant [0 x i8]
declare void @std_2fprelude_2farray_2eArray_3cI64_3e_2eSort_3cI64_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1c, ptr %a1e)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eLen_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %a0)
declare %"compiler/load:Import" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eAt_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H1642129570dad448bb7dcc47c334de83(ptr %v0, ptr %v1, ptr %a0, ptr %a1c, ptr %a1e)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2fload_2edeclsLink(ptr %v0, { i64, ptr } %a0)
declare { i32, { i64, ptr } } @std_2fos_2eRealPath(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, { i64, ptr } } @std_2fos_2eCwd(ptr %v0)
declare void @compiler_2fload_2ecompiler_2fload_3aLoader_2eLoadPrelude(ptr %v0, ptr %a0)
declare i1 @std_2fos_2eIsDir(ptr %v0, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eIsDirectory(ptr %v0)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eFatal(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare { i64, [3 x i64] } @compiler_2fload_2ecompiler_2fload_3aLoader_2eat(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2)
declare { i64, ptr } @compiler_2fload_2emoduleDir(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fload_2eNormalize(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @std_2fos_2eExists(ptr %v0, { i64, ptr } %a0)
declare { i64, ptr } @std_2ffilepath_2eBase(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCFileNotFound(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare { i64, ptr } @compiler_2ftarget_2eFindClang(ptr %v0)
@G_2ecompiler_2fload_2eCImportFormat = external constant <{ [8 x i8], ptr }>
declare { i64, ptr } @std_2fsha256_2eHex(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_4449aa9d363b5b4e_4db0be62c6b6e3d2 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fload_2efileStamp(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_7c6f8f6ffdbdf94b_ce4c5ade044a53cf = external constant [0 x i8]
declare { i64, ptr } @compiler_2ffetch_2eCacheDir(ptr %v0)
declare { i64, ptr } @compiler_2fload_2ecachedTranslation(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/bindgen:Translation" @compiler_2fbindgen_2eTranslation_2eTranslate(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %v6, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, { i64, ptr } %a4, { i64, ptr } %a5)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCHeaderNotFound(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCImportFailed(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i32, %"std/os:FileInfo" } @std_2fos_2eFileInfo_2eStat(ptr %v0, { i64, ptr } %a0)
@olang_loc_cc736817fb6c70d0_6e757e50f6c823e4 = external constant [0 x i8]
declare i1 @compiler_2fload_2ekeepFile(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare %"std/os:FileInfo" @std_2fos_3aFileInfo_2ector(ptr %v0, i32 %a0, i64 %a1, i64 %a2)
declare %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_d93100fd80a187ad_1e56be64fe5806d1 = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6f7a2f8d839c49b6e7a19c287d4b190c(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_2997e1d684418a32_f4dc9b5865eb58ee = external constant [0 x i8]
declare void @compiler_2fparse_2ecompiler_2fparse_3aOracle_2eAdd(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare void @compiler_2fparse_2ecompiler_2fparse_3aOracle_2eAddFn(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2etaken(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@G_2ecompiler_2fload_2eNoBranch = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fload_2ecompiler_2fload_3aLoader_2eCondParser(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_10115782cae2d59a_b13624e5abc6764e = external constant [0 x i8]
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eExprAt(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/cond:Decision" @compiler_2fcond_3aDecision_2ector(ptr %v0, i32 %a0, i1 %a1)
@olang_loc_c8cfdf98ee3f2b21_1207f6627874c5f5 = external constant [0 x i8]
declare i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ePos(ptr %v0, ptr %a0)
@olang_loc_b990dbcfbe082b6c_e09e9a90e433de0 = external constant [0 x i8]
declare void @compiler_2fcond_3aEval_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, ptr %a1, ptr %a2, ptr %a3)
declare %"compiler/cond:Decision" @compiler_2fcond_2ecompiler_2fcond_3aEval_2eTop(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { %"compiler/source:Span", %"compiler/diagmsg:Msg" } @compiler_2fcond_2ecompiler_2fcond_3aEval_2eError(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_e0f283e125550868_38a74932bc9801b4 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare void @compiler_2fload_2ecompiler_2fload_3aLoader_2echainGroups(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, i64 %a3, i64 %a4)
@olang_loc_d07ee4e1bf4c721e_f2d4ed263b6afcda = external constant [0 x i8]
@olang_loc_88eba3596c4d138c_c1530d55fa80a9b0 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
@olang_loc_17f5e01691795fb_80a050950937648f = external constant [0 x i8]
@olang_loc_fd1d115e36d277d2_104a63438b39a3d6 = external constant [0 x i8]
@olang_loc_3753a1d7262b2cc1_bd09a853d1b85305 = external constant [0 x i8]
@olang_loc_a7b0777888cd5d70_d2e13e44ce4d5eec = external constant [0 x i8]
declare { i64, ptr } @compiler_2fscan_2eLiteralText(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @compiler_2fload_2eDeriveAlias(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_8e32ae472cd64327_c149890ad1056c3 = external constant [0 x i8]
@olang_loc_a448ee53d606ecee_601f65a9d3b58c7a = external constant [0 x i8]
@olang_loc_7e96417109578add_9add255974295329 = external constant [0 x i8]
@olang_loc_7fc0c111e9e5248c_f920a424be87ad0 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2ePush_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/load:Import" %a1)
@olang_loc_8d00da697bdede94_44bec053299cee38 = external constant [0 x i8]
@olang_loc_48f6b1615f8729a3_475230e078a39a57 = external constant [0 x i8]
@olang_loc_84ff0c17d81b0522_bd67c888a6b30066 = external constant [0 x i8]
declare void @compiler_2fload_2ecompiler_2fload_3aLoader_2eaddLink(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, %"compiler/source:Span" %a2, ptr %a3, ptr %a4)
@olang_loc_d94d7cabf7c0d80c_70e4be23ec99f380 = external constant [0 x i8]
@olang_loc_5b111b92813268a2_708e5f917af86066 = external constant [0 x i8]
declare void @compiler_2fload_3aModule_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, i1 %a3)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hadc5a27c7dd302cda1d0e8a7732d6686(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_He27db0a1785588531472bfd2db42574f(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha4444909f5ef14f7626d25b8f59e6ba2(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
@olang_loc_67b56c0a83b8bd03_8d743f7b3592caff = external constant [0 x i8]
@olang_loc_867763f6879c47c1_85ff3e3f6e82a415 = external constant [0 x i8]
declare %"compiler/source:Source" @compiler_2fsource_3aSource_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i32, %"compiler/source:Source" } @compiler_2fsource_2eSource_2eRead(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eAddFile(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, i1 %a3)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCannotOpen(ptr %v0)
declare { i32, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H30b952b85dc190b6cd5306b9d98a7749(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_bf0719959bfa757a_6a83aba191150c56 = external constant [0 x i8]
@olang_loc_97fda29c929b9401_a297b77e137a783d = external constant [0 x i8]
declare %"compiler/scan:Tokens" @compiler_2fscan_2eTokens_2eScan(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_8eb73d0fe26fae48_56cde13f0d79d76c = external constant [0 x i8]
declare { i64, ptr } @compiler_2fscan_2ecompiler_2fscan_3aDiag_2eRule(ptr %v0, %"compiler/scan:Diag" %a0)
declare { i64, ptr } @compiler_2fscan_2ecompiler_2fscan_3aDiag_2eMessage(ptr %v0, %"compiler/scan:Diag" %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v1, ptr %v2, i32 %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare void @compiler_2fparse_3aOracle_2ector(ptr %out, ptr %v0)
declare void @compiler_2fload_2ecompiler_2fload_3aLoader_2eparse(ptr %v0, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eRefMut_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fload_2eAliasShape(ptr %v0, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportAliasInvalid(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLinkOnOlangImport(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportAliasConflict(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_fb45b5897f8c270_56a4f9a48484bf74 = external constant [0 x i8]
@olang_loc_4820d8be822def4f_666b99eead9f0f03 = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %a0)
@olang_loc_d940f9862e24151e_9dcc71718a42ab82 = external constant [0 x i8]
@olang_loc_2ca78ec550b059c5_f5cdcad03c843269 = external constant [0 x i8]
@olang_loc_2753d2bb7793a0fa_e1a4644f7c04bcf6 = external constant [0 x i8]
@olang_loc_4a5bc26e34bf81_f78399c125ad415d = external constant [0 x i8]
declare ptr @compiler_2fparse_2eGenericFnNames(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, ptr %a1)
@olang_loc_75be0ecbfd40364c_3ba616ba9e8cb88 = external constant [0 x i8]
@olang_loc_d161242c40b74370_507871439a6630a4 = external constant [0 x i8]
@olang_loc_9cda1922aec704f_35a4007cf0fda73 = external constant [0 x i8]
declare i32 @compiler_2fscan_2ecompiler_2fscan_3aTokens_2eMatch(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftoken_2eLineBreak = available_externally constant <{ [1 x i8] }> <{ [1 x i8] c"\01" }>, align 8
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportPathTooLong(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportHasExtension(ptr %v0)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v0, { i64, ptr } %a0, i8 %a1)
@olang_loc_6772f502359d02a_1b697b2141371efe = external constant [0 x i8]
@olang_loc_c7e55e824de13607_c088d15fef4da17b = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportLeavesRoot(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportRemoteNeedsFile(ptr %v0)
declare { i32, { i64, ptr } } @compiler_2ffetch_2ecompiler_2ffetch_3aFetcher_2eFetch(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportRemoteBadName(ptr %v0)
declare { i64, ptr } @compiler_2fload_2ekey(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportLockNotACommit(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportFetchFailed(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportLockedFetchFailed(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
@olang_loc_91ed1932ac5cd85c_f28264288e99980 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportFileNotFound(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_d9612e2b18e8b492_6662b34d58c1f606 = external constant [0 x i8]
@olang_loc_e481e3499ae60e8f_66ba2a1e23e9a0e3 = external constant [0 x i8]
@olang_loc_281d6687dd267da4_55752feab9766ac8 = external constant [0 x i8]
@olang_loc_f33836f530001f0a_3e5ddd8b9e2e63ae = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2ePush_3cI32_3e(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %a0, i1 %a1)
declare i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2econdEnd(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i64 %a3)
@olang_loc_e83704c0903811_d990170ae1d54355 = external constant [0 x i8]
@olang_loc_766ae0e3e1f9b91c_7764041251e8a940 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
@olang_loc_4f7ff751eb66f618_e3b0711c9f747694 = external constant [0 x i8]
@olang_loc_4fa7c22e4d470d75_c9a9030dc047401 = external constant [0 x i8]
declare { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, i1 %a2, { i64, ptr } %a3)
@olang_loc_9030b146fc4de6e4_df02f4157fd8ffa0 = external constant [0 x i8]
@olang_loc_37cfce4d2d6116b3_dac403d93f0f31bf = external constant [0 x i8]
@olang_loc_eaa065d2073c0672_9cd5a42be91f6f0e = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_738c5ab5e9ce8338_c044a83eb6fe7eb4 = external constant [0 x i8]
@olang_loc_61485bf8b9fa4014_95a81608270a26e0 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2ector(ptr %v0, i64 %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLess(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Array_3cU8_3e_26_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ector(ptr %v0)

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
