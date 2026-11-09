source_filename = "compiler_load-1.quick.ll"
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
  %l47 = alloca i64
  %l51 = alloca { i64, ptr }
  %l53 = alloca i64
  %s0 = alloca %olang.scope
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
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = getelementptr %"compiler/load:Loader", ptr %t118, i32 0, i32 4
  %t121 = load ptr, ptr %t120, !tbaa !29
  store ptr %t121, ptr %l40, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t122
  %t123 = getelementptr { i64, [3 x i64] }, ptr %t122, i32 0, i32 0
  store i64 0, ptr %t123
  %t124 = load { i64, [3 x i64] }, ptr %t122
  store { i64, [3 x i64] } %t124, ptr %l41
  %t125 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eIsDirectory(ptr %v0)
  store %"compiler/diagmsg:Msg" %t125, ptr %l42
  br label %bb27
bb26:
  br label %bb29
bb27:
  %t126 = load ptr, ptr %l40, !tbaa !29
  %t127 = load { i64, [3 x i64] }, ptr %l41
  %t128 = load %"compiler/diagmsg:Msg", ptr %l42
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eFatal(ptr %v0, ptr %v0, ptr %t126, { i64, [3 x i64] } %t127, %"compiler/diagmsg:Msg" %t128)
  br label %bb28
bb28:
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
  %t133 = ptrtoint ptr %v0 to i64
  store i64 %t133, ptr %l47, !tbaa !24
  %t134 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e2
  br i1 %t134, label %bb30, label %bb31
bb30:
  %t136 = call ptr @__olang_region_make(ptr %v0)
  %t137 = ptrtoint ptr %t136 to i64
  store i64 %t137, ptr %l47, !tbaa !24
  br label %bb31
bb31:
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t139 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t140 = load i64, ptr %l47
  %t141 = inttoptr i64 %t140 to ptr
  %t144 = call { i64, ptr } @compiler_2fload_2ecompiler_2fload_3aLoader_2erootIdentity(ptr %v0, ptr %v1, ptr %t141, ptr %t138, { i64, ptr } %t139)
  store { i64, ptr } %t144, ptr %l51
  br label %bb32
bb32:
  %t145 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t146 = load i64, ptr %l47
  %t147 = inttoptr i64 %t146 to ptr
  %t148 = extractvalue { i64, ptr } %t145, 0
  %t149 = extractvalue { i64, ptr } %t145, 1
  %t150 = mul i64 %t148, 1
  %t151 = call ptr @__olang_scope_alloc(ptr %t147, i64 %t150)
  call void @llvm.memcpy.p0.p0.i64(ptr %t151, ptr %t149, i64 %t150, i1 false)
  %t152 = insertvalue { i64, ptr } undef, i64 %t148, 0
  %t153 = insertvalue { i64, ptr } %t152, ptr %t151, 1
  %t154 = load ptr, ptr %l45, !tbaa !29
  %t155 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t157 = call i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2eload(ptr %v0, ptr %v1, ptr %v0, ptr %t154, { i64, ptr } %t155, { i64, ptr } %t153, i1 false, i1 false)
  store i64 %t157, ptr %l53
  br label %bb33
bb33:
  %t158 = load i64, ptr %l53, !tbaa !24
  %t159 = load ptr, ptr %l44, !tbaa !29
  %t160 = getelementptr %"compiler/load:Loader", ptr %t159, i32 0, i32 12
  store i64 %t158, ptr %t160, !tbaa !24
  %t161 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2echeckReach(ptr %v0, ptr %t161)
  br label %bb34
bb34:
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t165 = getelementptr %"compiler/load:Loader", ptr %t163, i32 0, i32 12
  %t166 = load i64, ptr %t165, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t166, ptr %rv
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
  %lp11 = alloca ptr
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
  %l346 = alloca ptr
  %l347 = alloca i64
  %l353 = alloca i64
  %l360 = alloca ptr
  %l364 = alloca i1
  %l365 = alloca i1
  %l366 = alloca %"std/os:FileInfo"
  %l370 = alloca %"std/os:FileInfo"
  %l371 = alloca i32
  %l373 = alloca i1
  %l377 = alloca %"std/os:FileInfo"
  %l380 = alloca ptr
  %l381 = alloca i64
  %l386 = alloca { i64, ptr }
  %l389 = alloca %"std/prelude/text:LineIter"
  %l390 = alloca { i64, ptr }
  %l392 = alloca { i64, ptr }
  %l393 = alloca i32
  %l395 = alloca i1
  %l397 = alloca i1
  %l398 = alloca { i64, ptr }
  %l401 = alloca i64
  %l402 = alloca i64
  %l407 = alloca { i64, ptr }
  %l412 = alloca ptr
  %l413 = alloca i64
  %l415 = alloca { i64, ptr }
  %l418 = alloca { i64, ptr }
  %l419 = alloca i64
  %l421 = alloca { i64, ptr }
  %l426 = alloca i1
  %l428 = alloca i1
  %l430 = alloca i1
  %l431 = alloca i64
  %l433 = alloca i64
  %l434 = alloca i32
  %l438 = alloca ptr
  %l439 = alloca i64
  %l441 = alloca { i64, ptr }
  %l442 = alloca i64
  %l443 = alloca i64
  %l449 = alloca { i64, ptr }
  %l450 = alloca i64
  %l452 = alloca { i64, ptr }
  %l454 = alloca i64
  %l457 = alloca i64
  %l458 = alloca i64
  %s0 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s23 = alloca %olang.scope
  %s29 = alloca %olang.scope
  %s34 = alloca %olang.scope
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
  %t146 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t145)
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
  %t155 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 16, i64 8)
  store ptr %t155, ptr %lp11
  %t156 = load { i64, ptr }, ptr %l85, !tbaa !27
  %t157 = load ptr, ptr %lp11
  store { i64, ptr } %t156, ptr %t157, !tbaa !27
  %t158 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t160 = call i1 @std_2fos_2eExists(ptr %s0, { i64, ptr } %t158)
  store i1 %t160, ptr %l87
  br label %bb22
bb22:
  %t161 = load i1, ptr %l87, !tbaa !21
  br i1 %t161, label %bb23, label %bb24
bb23:
  %t162 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t164 = call i1 @std_2fos_2eIsDir(ptr %s0, { i64, ptr } %t162)
  store i1 %t164, ptr %l90
  br label %bb25
bb24:
  store i1 false, ptr %l88, !tbaa !21
  br label %bb26
bb25:
  %t165 = load i1, ptr %l90, !tbaa !21
  %t166 = xor i1 %t165, true
  store i1 %t166, ptr %l88, !tbaa !21
  br label %bb26
bb26:
  %t168 = load i1, ptr %l88, !tbaa !21
  br i1 %t168, label %bb27, label %bb28
bb27:
  store %olang.scope zeroinitializer, ptr %s6
  %t169 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t171 = call { i32, { i64, ptr } } @std_2fos_2eRealPath(ptr %s0, ptr %s6, { i64, ptr } %t169)
  %t172 = extractvalue { i32, { i64, ptr } } %t171, 1
  %t173 = extractvalue { i32, { i64, ptr } } %t171, 0
  store i32 %t173, ptr %l95
  %t174 = icmp ne i32 %t173, 0
  br i1 %t174, label %bb30, label %ok.175, !prof !99
ok.175:
  store { i64, ptr } %t172, ptr %l94
  br label %bb29
bb28:
  store %olang.scope zeroinitializer, ptr %s14
  %t176 = load i1, ptr %l6, !tbaa !21
  br i1 %t176, label %bb57, label %bb58
bb29:
  %t178 = load { i64, ptr }, ptr %l94, !tbaa !27
  store { i64, ptr } %t178, ptr %l92, !tbaa !27
  br label %bb34
bb30:
  %t179 = load i32, ptr %l95, !tbaa !23
  %t180 = ashr i32 %t179, 16
  %t182 = icmp eq i32 %t180, 1
  br i1 %t182, label %bb31, label %bb32
bb31:
  call void @__olang_errpay_pop()
  br label %bb32
bb32:
  br label %bb33
bb33:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d32, i32 0, i32 1) }, ptr %l92, !tbaa !27
  br label %bb34
bb34:
  %t184 = load { i64, ptr }, ptr %l92, !tbaa !27
  store { i64, ptr } %t184, ptr %l12, !tbaa !27
  %t185 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t187 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s6, ptr %s6, { i64, ptr } %t185, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d33, i32 0, i32 1) })
  store i1 %t187, ptr %l99
  br label %bb35
bb35:
  %t188 = load i1, ptr %l99, !tbaa !21
  %t189 = xor i1 %t188, true
  br i1 %t189, label %bb36, label %bb37
bb36:
  %t191 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t193 = extractvalue { i64, ptr } %t191, 1
  %t194 = extractvalue { i64, ptr } %t191, 0
  %t195 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t194)
  call void @olang_textcopy(ptr %t195, ptr %t193, i64 %t194)
  %t196 = insertvalue { i64, ptr } undef, i64 %t194, 0
  %t197 = insertvalue { i64, ptr } %t196, ptr %t195, 1
  store { i64, ptr } %t197, ptr %l101, !tbaa !27
  br label %bb38
bb37:
  %t199 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t201 = extractvalue { i64, ptr } %t199, 1
  %t202 = extractvalue { i64, ptr } %t199, 0
  %t203 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t202)
  call void @olang_textcopy(ptr %t203, ptr %t201, i64 %t202)
  %t204 = insertvalue { i64, ptr } undef, i64 %t202, 0
  %t205 = insertvalue { i64, ptr } %t204, ptr %t203, 1
  store { i64, ptr } %t205, ptr %l101, !tbaa !27
  br label %bb38
bb38:
  %t207 = load { i64, ptr }, ptr %l101, !tbaa !27
  store { i64, ptr } %t207, ptr %l13, !tbaa !27
  %t208 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t209 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t210 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  %t212 = extractvalue { i64, ptr } %t208, 1
  %t213 = extractvalue { i64, ptr } %t208, 0
  %t214 = add i64 %t210, %t213
  %t215 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t216 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d35, i32 0, i32 1) }, 0
  %t217 = add i64 %t214, %t216
  %t218 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t217)
  call void @olang_textcopy(ptr %t218, ptr %t209, i64 %t210)
  %t219 = getelementptr i8, ptr %t218, i64 %t210
  call void @olang_textcopy(ptr %t219, ptr %t212, i64 %t213)
  %t220 = getelementptr i8, ptr %t219, i64 %t213
  call void @olang_textcopy(ptr %t220, ptr %t215, i64 %t216)
  %t221 = insertvalue { i64, ptr } undef, i64 %t217, 0
  %t222 = insertvalue { i64, ptr } %t221, ptr %t218, 1
  store { i64, ptr } %t222, ptr %l107, !tbaa !27
  %t223 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t224 = extractvalue { i64, ptr } %t223, 0
  %t225 = load { i64, ptr }, ptr %l107, !tbaa !27
  %t226 = extractvalue { i64, ptr } %t225, 0
  store i64 %t226, ptr %l109, !tbaa !24
  %t228 = load i64, ptr %l109, !tbaa !24
  %t229 = icmp eq i64 %t224, %t228
  br i1 %t229, label %bb39, label %bb40
bb39:
  %t231 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t232 = load ptr, ptr %t231, !tbaa !27
  %t233 = getelementptr { i64, ptr }, ptr %l107, i32 0, i32 1
  %t234 = load ptr, ptr %t233, !tbaa !27
  %t235 = load i64, ptr %l109, !tbaa !24
  %t236 = mul i64 %t235, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t232, ptr %t234, i64 %t236, i1 false)
  br label %bb41
bb40:
  %t237 = load { i64, ptr }, ptr %l107, !tbaa !27
  store { i64, ptr } %t237, ptr %l9, !tbaa !27
  br label %bb41
bb41:
  %t238 = load i1, ptr %l6, !tbaa !21
  br i1 %t238, label %bb42, label %bb43
bb42:
  %t240 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t242 = extractvalue { i64, ptr } %t240, 1
  %t243 = extractvalue { i64, ptr } %t240, 0
  %t244 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t243)
  call void @olang_textcopy(ptr %t244, ptr %t242, i64 %t243)
  %t245 = insertvalue { i64, ptr } undef, i64 %t243, 0
  %t246 = insertvalue { i64, ptr } %t245, ptr %t244, 1
  store { i64, ptr } %t246, ptr %l113, !tbaa !27
  %t247 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t248 = extractvalue { i64, ptr } %t247, 0
  %t249 = load { i64, ptr }, ptr %l113, !tbaa !27
  %t250 = extractvalue { i64, ptr } %t249, 0
  store i64 %t250, ptr %l115, !tbaa !24
  %t252 = load i64, ptr %l115, !tbaa !24
  %t253 = icmp eq i64 %t248, %t252
  br i1 %t253, label %bb44, label %bb45
bb43:
  br label %bb47
bb44:
  %t255 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t256 = load ptr, ptr %t255, !tbaa !27
  %t257 = getelementptr { i64, ptr }, ptr %l113, i32 0, i32 1
  %t258 = load ptr, ptr %t257, !tbaa !27
  %t259 = load i64, ptr %l115, !tbaa !24
  %t260 = mul i64 %t259, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t256, ptr %t258, i64 %t260, i1 false)
  br label %bb46
bb45:
  %t261 = load { i64, ptr }, ptr %l113, !tbaa !27
  store { i64, ptr } %t261, ptr %l10, !tbaa !27
  br label %bb46
bb46:
  br label %bb47
bb47:
  %t262 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t264 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s6, { i64, ptr } %t262, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d36, i32 0, i32 1) })
  store i1 %t264, ptr %l118
  br label %bb48
bb48:
  %t265 = load i1, ptr %l118, !tbaa !21
  br i1 %t265, label %bb49, label %bb50
bb49:
  %t266 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t268 = call { i64, ptr } @std_2ffilepath_2eBase(ptr %v1, ptr %s6, { i64, ptr } %t266)
  store { i64, ptr } %t268, ptr %l121
  br label %bb51
bb50:
  %t269 = load ptr, ptr %l3, !tbaa !29
  %t271 = getelementptr %"compiler/load:Module", ptr %t269, i32 0, i32 2
  %t272 = load { i64, ptr }, ptr %t271, !tbaa !27
  %t273 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t276 = call { i64, ptr } @compiler_2fload_2erelativeIdentity(ptr %v0, ptr %v1, ptr %s6, { i64, ptr } %t272, { i64, ptr } %t273)
  store { i64, ptr } %t276, ptr %l126
  br label %bb52
bb51:
  %t277 = load { i64, ptr }, ptr %l121, !tbaa !27
  %t278 = extractvalue { i64, ptr } %t277, 1
  %t279 = extractvalue { i64, ptr } %t277, 0
  %t280 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t279)
  call void @olang_textcopy(ptr %t280, ptr %t278, i64 %t279)
  %t281 = insertvalue { i64, ptr } undef, i64 %t279, 0
  %t282 = insertvalue { i64, ptr } %t281, ptr %t280, 1
  store { i64, ptr } %t282, ptr %l119, !tbaa !27
  br label %bb53
bb52:
  %t284 = load { i64, ptr }, ptr %l126, !tbaa !27
  %t285 = extractvalue { i64, ptr } %t284, 1
  %t286 = extractvalue { i64, ptr } %t284, 0
  %t287 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t286)
  call void @olang_textcopy(ptr %t287, ptr %t285, i64 %t286)
  %t288 = insertvalue { i64, ptr } undef, i64 %t286, 0
  %t289 = insertvalue { i64, ptr } %t288, ptr %t287, 1
  store { i64, ptr } %t289, ptr %l119, !tbaa !27
  br label %bb53
bb53:
  %t291 = load ptr, ptr %lp11
  %t292 = load { i64, ptr }, ptr %t291, !tbaa !27
  %t293 = extractvalue { i64, ptr } %t292, 0
  %t294 = load { i64, ptr }, ptr %l119, !tbaa !27
  %t295 = extractvalue { i64, ptr } %t294, 0
  store i64 %t295, ptr %l129, !tbaa !24
  %t297 = load i64, ptr %l129, !tbaa !24
  %t298 = icmp eq i64 %t293, %t297
  br i1 %t298, label %bb54, label %bb55
bb54:
  %t300 = load ptr, ptr %lp11
  %t301 = getelementptr { i64, ptr }, ptr %t300, i32 0, i32 1
  %t302 = load ptr, ptr %t301, !tbaa !27
  %t303 = getelementptr { i64, ptr }, ptr %l119, i32 0, i32 1
  %t304 = load ptr, ptr %t303, !tbaa !27
  %t305 = load i64, ptr %l129, !tbaa !24
  %t306 = mul i64 %t305, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t302, ptr %t304, i64 %t306, i1 false)
  br label %bb56
bb55:
  %t307 = load { i64, ptr }, ptr %l119, !tbaa !27
  %t308 = load ptr, ptr %lp11
  store { i64, ptr } %t307, ptr %t308, !tbaa !27
  br label %bb56
bb56:
  call void @__olang_scope_close(ptr %s6)
  br label %bb80
bb57:
  store i1 true, ptr %l132, !tbaa !21
  br label %bb60
bb58:
  %t309 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t311 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s14, { i64, ptr } %t309, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d37, i32 0, i32 1) })
  store i1 %t311, ptr %l134
  br label %bb59
bb59:
  %t312 = load i1, ptr %l134, !tbaa !21
  store i1 %t312, ptr %l132, !tbaa !21
  br label %bb60
bb60:
  %t313 = load i1, ptr %l132, !tbaa !21
  br i1 %t313, label %bb61, label %bb62
bb61:
  store i1 true, ptr %l135, !tbaa !21
  br label %bb64
bb62:
  %t314 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t316 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s14, { i64, ptr } %t314, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d38, i32 0, i32 1) })
  store i1 %t316, ptr %l137
  br label %bb63
bb63:
  %t317 = load i1, ptr %l137, !tbaa !21
  store i1 %t317, ptr %l135, !tbaa !21
  br label %bb64
bb64:
  %t318 = load i1, ptr %l135, !tbaa !21
  br i1 %t318, label %bb65, label %bb66
bb65:
  store i1 true, ptr %l138, !tbaa !21
  br label %bb68
bb66:
  %t319 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t321 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s14, { i64, ptr } %t319, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d39, i32 0, i32 1) })
  store i1 %t321, ptr %l140
  br label %bb67
bb67:
  %t322 = load i1, ptr %l140, !tbaa !21
  store i1 %t322, ptr %l138, !tbaa !21
  br label %bb68
bb68:
  %t323 = load i1, ptr %l138, !tbaa !21
  br i1 %t323, label %bb69, label %bb70
bb69:
  %t324 = load ptr, ptr %l0, !tbaa !29
  %t326 = getelementptr %"compiler/load:Loader", ptr %t324, i32 0, i32 4
  %t327 = load ptr, ptr %t326, !tbaa !29
  store ptr %t327, ptr %l142, !tbaa !29
  %t328 = load { i64, [3 x i64] }, ptr %l4
  store { i64, [3 x i64] } %t328, ptr %l143
  %t329 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t331 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCFileNotFound(ptr %s0, ptr %v0, { i64, ptr } %t329)
  store %"compiler/diagmsg:Msg" %t331, ptr %l145
  br label %bb71
bb70:
  %t332 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t333 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d40, i32 0, i32 1) }, 1
  %t334 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d40, i32 0, i32 1) }, 0
  %t336 = extractvalue { i64, ptr } %t332, 1
  %t337 = extractvalue { i64, ptr } %t332, 0
  %t338 = add i64 %t334, %t337
  %t339 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d41, i32 0, i32 1) }, 1
  %t340 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d41, i32 0, i32 1) }, 0
  %t341 = add i64 %t338, %t340
  %t342 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t341)
  call void @olang_textcopy(ptr %t342, ptr %t333, i64 %t334)
  %t343 = getelementptr i8, ptr %t342, i64 %t334
  call void @olang_textcopy(ptr %t343, ptr %t336, i64 %t337)
  %t344 = getelementptr i8, ptr %t343, i64 %t337
  call void @olang_textcopy(ptr %t344, ptr %t339, i64 %t340)
  %t345 = insertvalue { i64, ptr } undef, i64 %t341, 0
  %t346 = insertvalue { i64, ptr } %t345, ptr %t342, 1
  store { i64, ptr } %t346, ptr %l149, !tbaa !27
  %t347 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t348 = extractvalue { i64, ptr } %t347, 0
  %t349 = load { i64, ptr }, ptr %l149, !tbaa !27
  %t350 = extractvalue { i64, ptr } %t349, 0
  store i64 %t350, ptr %l151, !tbaa !24
  %t352 = load i64, ptr %l151, !tbaa !24
  %t353 = icmp eq i64 %t348, %t352
  br i1 %t353, label %bb73, label %bb74
bb71:
  %t355 = load ptr, ptr %l142, !tbaa !29
  %t356 = load { i64, [3 x i64] }, ptr %l143
  %t357 = load %"compiler/diagmsg:Msg", ptr %l145
  %t358 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t355, { i64, [3 x i64] } %t356, %"compiler/diagmsg:Msg" %t357)
  store i64 %t358, ptr %l146
  br label %bb72
bb72:
  call void @__olang_scope_close(ptr %s14)
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb73:
  %t360 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t361 = load ptr, ptr %t360, !tbaa !27
  %t362 = getelementptr { i64, ptr }, ptr %l149, i32 0, i32 1
  %t363 = load ptr, ptr %t362, !tbaa !27
  %t364 = load i64, ptr %l151, !tbaa !24
  %t365 = mul i64 %t364, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t361, ptr %t363, i64 %t365, i1 false)
  br label %bb75
bb74:
  %t366 = load { i64, ptr }, ptr %l149, !tbaa !27
  store { i64, ptr } %t366, ptr %l9, !tbaa !27
  br label %bb75
bb75:
  %t367 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t368 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d42, i32 0, i32 1) }, 1
  %t369 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d42, i32 0, i32 1) }, 0
  %t371 = extractvalue { i64, ptr } %t367, 1
  %t372 = extractvalue { i64, ptr } %t367, 0
  %t373 = add i64 %t369, %t372
  %t374 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d43, i32 0, i32 1) }, 1
  %t375 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d43, i32 0, i32 1) }, 0
  %t376 = add i64 %t373, %t375
  %t377 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t376)
  call void @olang_textcopy(ptr %t377, ptr %t368, i64 %t369)
  %t378 = getelementptr i8, ptr %t377, i64 %t369
  call void @olang_textcopy(ptr %t378, ptr %t371, i64 %t372)
  %t379 = getelementptr i8, ptr %t378, i64 %t372
  call void @olang_textcopy(ptr %t379, ptr %t374, i64 %t375)
  %t380 = insertvalue { i64, ptr } undef, i64 %t376, 0
  %t381 = insertvalue { i64, ptr } %t380, ptr %t377, 1
  store { i64, ptr } %t381, ptr %l154, !tbaa !27
  %t382 = load ptr, ptr %lp11
  %t383 = load { i64, ptr }, ptr %t382, !tbaa !27
  %t384 = extractvalue { i64, ptr } %t383, 0
  %t385 = load { i64, ptr }, ptr %l154, !tbaa !27
  %t386 = extractvalue { i64, ptr } %t385, 0
  store i64 %t386, ptr %l156, !tbaa !24
  %t388 = load i64, ptr %l156, !tbaa !24
  %t389 = icmp eq i64 %t384, %t388
  br i1 %t389, label %bb76, label %bb77
bb76:
  %t391 = load ptr, ptr %lp11
  %t392 = getelementptr { i64, ptr }, ptr %t391, i32 0, i32 1
  %t393 = load ptr, ptr %t392, !tbaa !27
  %t394 = getelementptr { i64, ptr }, ptr %l154, i32 0, i32 1
  %t395 = load ptr, ptr %t394, !tbaa !27
  %t396 = load i64, ptr %l156, !tbaa !24
  %t397 = mul i64 %t396, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t393, ptr %t395, i64 %t397, i1 false)
  br label %bb78
bb77:
  %t398 = load { i64, ptr }, ptr %l154, !tbaa !27
  %t399 = load ptr, ptr %lp11
  store { i64, ptr } %t398, ptr %t399, !tbaa !27
  br label %bb78
bb78:
  br label %bb79
bb79:
  call void @__olang_scope_close(ptr %s14)
  br label %bb80
bb80:
  %t400 = load ptr, ptr %l0, !tbaa !29
  %t402 = getelementptr %"compiler/load:Loader", ptr %t400, i32 0, i32 19
  %t403 = load { i64, ptr }, ptr %t402, !tbaa !27
  %t405 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t403, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d44, i32 0, i32 1) })
  store i1 %t405, ptr %l160
  br label %bb81
bb81:
  %t406 = load i1, ptr %l160, !tbaa !21
  br i1 %t406, label %bb82, label %bb83
bb82:
  %t407 = load ptr, ptr %l0, !tbaa !29
  store ptr %t407, ptr %l161, !tbaa !29
  %t408 = ptrtoint ptr %v0 to i64
  store i64 %t408, ptr %l162, !tbaa !24
  %t409 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e19
  br i1 %t409, label %bb84, label %bb85
bb83:
  br label %bb89
bb84:
  %t411 = call ptr @__olang_region_make(ptr %v0)
  %t412 = ptrtoint ptr %t411 to i64
  store i64 %t412, ptr %l162, !tbaa !24
  br label %bb85
bb85:
  %t413 = load i64, ptr %l162
  %t414 = inttoptr i64 %t413 to ptr
  %t415 = call { i64, ptr } @compiler_2ftarget_2eFindClang(ptr %t414)
  store { i64, ptr } %t415, ptr %l164
  br label %bb86
bb86:
  %t416 = load { i64, ptr }, ptr %l164, !tbaa !27
  %t417 = load i64, ptr %l162
  %t418 = inttoptr i64 %t417 to ptr
  %t419 = extractvalue { i64, ptr } %t416, 0
  %t420 = extractvalue { i64, ptr } %t416, 1
  %t421 = mul i64 %t419, 1
  %t422 = call ptr @__olang_scope_alloc(ptr %t418, i64 %t421)
  call void @llvm.memcpy.p0.p0.i64(ptr %t422, ptr %t420, i64 %t421, i1 false)
  %t423 = insertvalue { i64, ptr } undef, i64 %t419, 0
  %t424 = insertvalue { i64, ptr } %t423, ptr %t422, 1
  %t425 = load ptr, ptr %l161, !tbaa !29
  %t426 = getelementptr %"compiler/load:Loader", ptr %t425, i32 0, i32 19
  %t427 = load { i64, ptr }, ptr %t426, !tbaa !27
  store { i64, ptr } %t427, ptr %l166, !tbaa !27
  %t429 = load ptr, ptr %l161, !tbaa !29
  %t430 = getelementptr %"compiler/load:Loader", ptr %t429, i32 0, i32 19
  store { i64, ptr } %t424, ptr %t430, !tbaa !27
  %t431 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e19
  br i1 %t431, label %bb87, label %bb88
bb87:
  %t433 = load { i64, ptr }, ptr %l166
  %t434 = extractvalue { i64, ptr } %t433, 1
  call void @__olang_region_release(ptr %t434)
  store { i64, ptr } zeroinitializer, ptr %l166
  br label %bb88
bb88:
  br label %bb89
bb89:
  %t435 = load ptr, ptr %l0, !tbaa !29
  %t437 = getelementptr %"compiler/load:Loader", ptr %t435, i32 0, i32 20
  %t439 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t437)
  store i64 %t439, ptr %l170
  br label %bb90
bb90:
  %t440 = load i64, ptr %l170, !tbaa !24
  %t441 = icmp eq i64 %t440, 0
  br i1 %t441, label %bb91, label %bb92
bb91:
  %t443 = load ptr, ptr %l0, !tbaa !29
  %t445 = getelementptr %"compiler/load:Loader", ptr %t443, i32 0, i32 20
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t445, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d45, i32 0, i32 1) })
  br label %bb93
bb92:
  br label %bb94
bb93:
  br label %bb94
bb94:
  %t447 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t447, ptr %l174
  br label %bb95
bb95:
  %t448 = load %"std/prelude/text:StringBuilder", ptr %l174
  store %"std/prelude/text:StringBuilder" %t448, ptr %l14
  %t449 = load { i64, ptr }, ptr @G_2ecompiler_2fload_2eCImportFormat, !tbaa !27
  %t450 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t451 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t453 = extractvalue { i64, ptr } %t449, 1
  %t454 = extractvalue { i64, ptr } %t449, 0
  %t455 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d46, i32 0, i32 1) }, 1
  %t456 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d46, i32 0, i32 1) }, 0
  %t457 = add i64 %t454, %t456
  %t459 = extractvalue { i64, ptr } %t450, 1
  %t460 = extractvalue { i64, ptr } %t450, 0
  %t461 = add i64 %t457, %t460
  %t462 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d46, i32 0, i32 1) }, 1
  %t463 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d46, i32 0, i32 1) }, 0
  %t464 = add i64 %t461, %t463
  %t466 = extractvalue { i64, ptr } %t451, 1
  %t467 = extractvalue { i64, ptr } %t451, 0
  %t468 = add i64 %t464, %t467
  %t469 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d46, i32 0, i32 1) }, 1
  %t470 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d46, i32 0, i32 1) }, 0
  %t471 = add i64 %t468, %t470
  %t472 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t471)
  call void @olang_textcopy(ptr %t472, ptr %t453, i64 %t454)
  %t473 = getelementptr i8, ptr %t472, i64 %t454
  call void @olang_textcopy(ptr %t473, ptr %t455, i64 %t456)
  %t474 = getelementptr i8, ptr %t473, i64 %t456
  call void @olang_textcopy(ptr %t474, ptr %t459, i64 %t460)
  %t475 = getelementptr i8, ptr %t474, i64 %t460
  call void @olang_textcopy(ptr %t475, ptr %t462, i64 %t463)
  %t476 = getelementptr i8, ptr %t475, i64 %t463
  call void @olang_textcopy(ptr %t476, ptr %t466, i64 %t467)
  %t477 = getelementptr i8, ptr %t476, i64 %t467
  call void @olang_textcopy(ptr %t477, ptr %t469, i64 %t470)
  %t478 = insertvalue { i64, ptr } undef, i64 %t471, 0
  %t479 = insertvalue { i64, ptr } %t478, ptr %t472, 1
  %t481 = extractvalue { i64, ptr } %t479, 0
  %t482 = extractvalue { i64, ptr } %t479, 1
  %t483 = mul i64 %t481, 1
  %t484 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t483)
  call void @llvm.memcpy.p0.p0.i64(ptr %t484, ptr %t482, i64 %t483, i1 false)
  %t485 = insertvalue { i64, ptr } undef, i64 %t481, 0
  %t486 = insertvalue { i64, ptr } %t485, ptr %t484, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l14, { i64, ptr } %t486)
  br label %bb96
bb96:
  %t489 = load ptr, ptr %l0, !tbaa !29
  %t491 = getelementptr %"compiler/load:Loader", ptr %t489, i32 0, i32 20
  store ptr %t491, ptr %l15, !tbaa !29
  store i64 0, ptr %l16, !tbaa !24
  br label %bb97
bb97:
  store %olang.scope zeroinitializer, ptr %s23
  %t493 = load i64, ptr %l16, !tbaa !24
  store i64 %t493, ptr %l183, !tbaa !24
  %t494 = load ptr, ptr %l15, !tbaa !29
  %t496 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t494)
  store i64 %t496, ptr %l185
  br label %bb98
bb98:
  %t497 = load i64, ptr %l183, !tbaa !24
  %t498 = load i64, ptr %l185, !tbaa !24
  %t499 = icmp slt i64 %t497, %t498
  %t501 = xor i1 %t499, true
  br i1 %t501, label %bb99, label %bb100
bb99:
  call void @__olang_scope_close(ptr %s23)
  br label %bb105
bb100:
  br label %bb101
bb101:
  %t503 = load ptr, ptr %l15, !tbaa !29
  %t504 = load i64, ptr %l16, !tbaa !24
  %t507 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t503, i64 %t504)
  store { i64, ptr } %t507, ptr %l190
  br label %bb102
bb102:
  %t508 = load { i64, ptr }, ptr %l190, !tbaa !27
  %t511 = extractvalue { i64, ptr } %t508, 1
  %t512 = extractvalue { i64, ptr } %t508, 0
  %t513 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d47, i32 0, i32 1) }, 1
  %t514 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d47, i32 0, i32 1) }, 0
  %t515 = add i64 %t512, %t514
  %t516 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t515)
  call void @olang_textcopy(ptr %t516, ptr %t511, i64 %t512)
  %t517 = getelementptr i8, ptr %t516, i64 %t512
  call void @olang_textcopy(ptr %t517, ptr %t513, i64 %t514)
  %t518 = insertvalue { i64, ptr } undef, i64 %t515, 0
  %t519 = insertvalue { i64, ptr } %t518, ptr %t516, 1
  %t521 = extractvalue { i64, ptr } %t519, 0
  %t522 = extractvalue { i64, ptr } %t519, 1
  %t523 = mul i64 %t521, 1
  %t524 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t523)
  call void @llvm.memcpy.p0.p0.i64(ptr %t524, ptr %t522, i64 %t523, i1 false)
  %t525 = insertvalue { i64, ptr } undef, i64 %t521, 0
  %t526 = insertvalue { i64, ptr } %t525, ptr %t524, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s23, ptr %l14, { i64, ptr } %t526)
  br label %bb103
bb103:
  call void @__olang_scope_close(ptr %s23)
  br label %bb104
bb104:
  %t529 = load i64, ptr %l16, !tbaa !24
  %t531 = add i64 %t529, 1
  store i64 %t531, ptr %l16, !tbaa !24
  br label %bb97
bb105:
  %t534 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %l14)
  store { i64, ptr } %t534, ptr %l198
  br label %bb106
bb106:
  %t535 = load { i64, ptr }, ptr %l198, !tbaa !27
  %t537 = extractvalue { i64, ptr } %t535, 0
  %t538 = extractvalue { i64, ptr } %t535, 1
  %t539 = mul i64 %t537, 1
  %t540 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t539)
  call void @llvm.memcpy.p0.p0.i64(ptr %t540, ptr %t538, i64 %t539, i1 false)
  %t541 = insertvalue { i64, ptr } undef, i64 %t537, 0
  %t542 = insertvalue { i64, ptr } %t541, ptr %t540, 1
  %t544 = call { i64, ptr } @std_2fsha256_2eHex(ptr %s0, ptr %s0, { i64, ptr } %t542)
  store { i64, ptr } %t544, ptr %l201
  br label %bb107
bb107:
  %t545 = load { i64, ptr }, ptr %l201, !tbaa !27
  %t546 = extractvalue { i64, ptr } %t545, 0
  store i64 %t546, ptr %l202, !tbaa !24
  %t547 = icmp sge i64 0, 0
  br i1 %t547, label %bb108, label %bb109
bb108:
  %t549 = icmp sle i64 0, 12
  br i1 %t549, label %bb110, label %bb111
bb109:
  call void @__olang_check_failed(ptr @olang_loc_4449aa9d363b5b4e_4db0be62c6b6e3d2)
  unreachable
bb110:
  %t551 = load i64, ptr %l202, !tbaa !24
  %t552 = icmp sle i64 12, %t551
  br i1 %t552, label %bb112, label %bb113
bb111:
  call void @__olang_check_failed(ptr @olang_loc_4449aa9d363b5b4e_4db0be62c6b6e3d2)
  unreachable
bb112:
  %t554 = getelementptr { i64, ptr }, ptr %l201, i32 0, i32 1
  %t555 = load ptr, ptr %t554, !tbaa !27
  %t556 = getelementptr i8, ptr %t555, i64 0
  %t557 = sub i64 12, 0
  %t558 = insertvalue { i64, ptr } undef, i64 %t557, 0
  %t559 = insertvalue { i64, ptr } %t558, ptr %t556, 1
  store { i64, ptr } %t559, ptr %l18, !tbaa !27
  store ptr %l14, ptr %l207, !tbaa !29
  %t561 = load ptr, ptr %l0, !tbaa !29
  %t563 = getelementptr %"compiler/load:Loader", ptr %t561, i32 0, i32 19
  %t564 = load { i64, ptr }, ptr %t563, !tbaa !27
  %t566 = call { i64, ptr } @compiler_2fload_2efileStamp(ptr %v0, ptr %s0, { i64, ptr } %t564)
  store { i64, ptr } %t566, ptr %l210
  br label %bb114
bb113:
  call void @__olang_check_failed(ptr @olang_loc_4449aa9d363b5b4e_4db0be62c6b6e3d2)
  unreachable
bb114:
  %t567 = call { i64, ptr } @compiler_2fload_2efileStamp(ptr %s0, ptr %s0, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d48, i32 0, i32 1) })
  store { i64, ptr } %t567, ptr %l211
  br label %bb115
bb115:
  %t568 = load { i64, ptr }, ptr %l210, !tbaa !27
  %t569 = extractvalue { i64, ptr } %t568, 1
  %t570 = extractvalue { i64, ptr } %t568, 0
  %t571 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d49, i32 0, i32 1) }, 1
  %t572 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d49, i32 0, i32 1) }, 0
  %t573 = add i64 %t570, %t572
  %t574 = load { i64, ptr }, ptr %l211, !tbaa !27
  %t575 = extractvalue { i64, ptr } %t574, 1
  %t576 = extractvalue { i64, ptr } %t574, 0
  %t577 = add i64 %t573, %t576
  %t578 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d49, i32 0, i32 1) }, 1
  %t579 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d49, i32 0, i32 1) }, 0
  %t580 = add i64 %t577, %t579
  %t581 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t580)
  call void @olang_textcopy(ptr %t581, ptr %t569, i64 %t570)
  %t582 = getelementptr i8, ptr %t581, i64 %t570
  call void @olang_textcopy(ptr %t582, ptr %t571, i64 %t572)
  %t583 = getelementptr i8, ptr %t582, i64 %t572
  call void @olang_textcopy(ptr %t583, ptr %t575, i64 %t576)
  %t584 = getelementptr i8, ptr %t583, i64 %t576
  call void @olang_textcopy(ptr %t584, ptr %t578, i64 %t579)
  %t585 = insertvalue { i64, ptr } undef, i64 %t580, 0
  %t586 = insertvalue { i64, ptr } %t585, ptr %t581, 1
  %t588 = extractvalue { i64, ptr } %t586, 0
  %t589 = extractvalue { i64, ptr } %t586, 1
  %t590 = mul i64 %t588, 1
  %t591 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t590)
  call void @llvm.memcpy.p0.p0.i64(ptr %t591, ptr %t589, i64 %t590, i1 false)
  %t592 = insertvalue { i64, ptr } undef, i64 %t588, 0
  %t593 = insertvalue { i64, ptr } %t592, ptr %t591, 1
  %t594 = load ptr, ptr %l207, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t594, { i64, ptr } %t593)
  br label %bb116
bb116:
  %t597 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %l14)
  store { i64, ptr } %t597, ptr %l215
  br label %bb117
bb117:
  %t598 = load { i64, ptr }, ptr %l215, !tbaa !27
  %t600 = extractvalue { i64, ptr } %t598, 0
  %t601 = extractvalue { i64, ptr } %t598, 1
  %t602 = mul i64 %t600, 1
  %t603 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t602)
  call void @llvm.memcpy.p0.p0.i64(ptr %t603, ptr %t601, i64 %t602, i1 false)
  %t604 = insertvalue { i64, ptr } undef, i64 %t600, 0
  %t605 = insertvalue { i64, ptr } %t604, ptr %t603, 1
  %t607 = call { i64, ptr } @std_2fsha256_2eHex(ptr %s0, ptr %s0, { i64, ptr } %t605)
  store { i64, ptr } %t607, ptr %l218
  br label %bb118
bb118:
  %t608 = load { i64, ptr }, ptr %l218, !tbaa !27
  %t609 = extractvalue { i64, ptr } %t608, 0
  store i64 %t609, ptr %l219, !tbaa !24
  %t610 = icmp sge i64 0, 0
  br i1 %t610, label %bb119, label %bb120
bb119:
  %t612 = icmp sle i64 0, 32
  br i1 %t612, label %bb121, label %bb122
bb120:
  call void @__olang_check_failed(ptr @olang_loc_7c6f8f6ffdbdf94b_ce4c5ade044a53cf)
  unreachable
bb121:
  %t614 = load i64, ptr %l219, !tbaa !24
  %t615 = icmp sle i64 32, %t614
  br i1 %t615, label %bb123, label %bb124
bb122:
  call void @__olang_check_failed(ptr @olang_loc_7c6f8f6ffdbdf94b_ce4c5ade044a53cf)
  unreachable
bb123:
  %t617 = getelementptr { i64, ptr }, ptr %l218, i32 0, i32 1
  %t618 = load ptr, ptr %t617, !tbaa !27
  %t619 = getelementptr i8, ptr %t618, i64 0
  %t620 = sub i64 32, 0
  %t621 = insertvalue { i64, ptr } undef, i64 %t620, 0
  %t622 = insertvalue { i64, ptr } %t621, ptr %t619, 1
  store { i64, ptr } %t622, ptr %l19, !tbaa !27
  %t624 = call { i64, ptr } @compiler_2ffetch_2eCacheDir(ptr %s0)
  store { i64, ptr } %t624, ptr %l224
  br label %bb125
bb124:
  call void @__olang_check_failed(ptr @olang_loc_7c6f8f6ffdbdf94b_ce4c5ade044a53cf)
  unreachable
bb125:
  %t625 = load { i64, ptr }, ptr %l224, !tbaa !27
  %t626 = extractvalue { i64, ptr } %t625, 1
  %t627 = extractvalue { i64, ptr } %t625, 0
  %t628 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d50, i32 0, i32 1) }, 1
  %t629 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d50, i32 0, i32 1) }, 0
  %t630 = add i64 %t627, %t629
  %t631 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t630)
  call void @olang_textcopy(ptr %t631, ptr %t626, i64 %t627)
  %t632 = getelementptr i8, ptr %t631, i64 %t627
  call void @olang_textcopy(ptr %t632, ptr %t628, i64 %t629)
  %t633 = insertvalue { i64, ptr } undef, i64 %t630, 0
  %t634 = insertvalue { i64, ptr } %t633, ptr %t631, 1
  store { i64, ptr } %t634, ptr %l20, !tbaa !27
  %t636 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t637 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t639 = extractvalue { i64, ptr } %t636, 1
  %t640 = extractvalue { i64, ptr } %t636, 0
  %t641 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d51, i32 0, i32 1) }, 1
  %t642 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d51, i32 0, i32 1) }, 0
  %t643 = add i64 %t640, %t642
  %t645 = extractvalue { i64, ptr } %t637, 1
  %t646 = extractvalue { i64, ptr } %t637, 0
  %t647 = add i64 %t643, %t646
  %t648 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t647)
  call void @olang_textcopy(ptr %t648, ptr %t639, i64 %t640)
  %t649 = getelementptr i8, ptr %t648, i64 %t640
  call void @olang_textcopy(ptr %t649, ptr %t641, i64 %t642)
  %t650 = getelementptr i8, ptr %t649, i64 %t642
  call void @olang_textcopy(ptr %t650, ptr %t645, i64 %t646)
  %t651 = insertvalue { i64, ptr } undef, i64 %t647, 0
  %t652 = insertvalue { i64, ptr } %t651, ptr %t648, 1
  store { i64, ptr } %t652, ptr %l21, !tbaa !27
  %t654 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t656 = call { i64, ptr } @compiler_2fload_2ecachedTranslation(ptr %s0, ptr %s0, { i64, ptr } %t654)
  store { i64, ptr } %t656, ptr %l230
  br label %bb126
bb126:
  %t657 = load { i64, ptr }, ptr %l230, !tbaa !27
  store { i64, ptr } %t657, ptr %l22, !tbaa !27
  %t658 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t660 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t658, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d52, i32 0, i32 1) })
  store i1 %t660, ptr %l232
  br label %bb127
bb127:
  %t661 = load i1, ptr %l232, !tbaa !21
  br i1 %t661, label %bb128, label %bb129
bb128:
  store %olang.scope zeroinitializer, ptr %s29
  %t662 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t662, ptr %l233, !tbaa !27
  %t663 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t663, ptr %l234, !tbaa !27
  %t664 = load ptr, ptr %l0, !tbaa !29
  %t666 = getelementptr %"compiler/load:Loader", ptr %t664, i32 0, i32 19
  %t667 = load { i64, ptr }, ptr %t666, !tbaa !27
  store { i64, ptr } %t667, ptr %l236, !tbaa !27
  %t668 = load ptr, ptr %l0, !tbaa !29
  %t670 = getelementptr %"compiler/load:Loader", ptr %t668, i32 0, i32 20
  %t672 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v0, ptr %v0, ptr %t670)
  store { i64, ptr } %t672, ptr %l239
  br label %bb130
bb129:
  br label %bb189
bb130:
  %t673 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t674 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t675 = load { i64, ptr }, ptr %l233, !tbaa !27
  %t676 = load { i64, ptr }, ptr %l234, !tbaa !27
  %t677 = load { i64, ptr }, ptr %l236, !tbaa !27
  %t678 = load { i64, ptr }, ptr %l239, !tbaa !27
  %t681 = call %"compiler/bindgen:Translation" @compiler_2fbindgen_2eTranslation_2eTranslate(ptr %s0, ptr %s0, ptr %v0, ptr %v0, ptr %s0, ptr %v1, ptr %s29, { i64, ptr } %t675, { i64, ptr } %t676, { i64, ptr } %t677, { i64, ptr } %t678, { i64, ptr } %t673, { i64, ptr } %t674)
  store %"compiler/bindgen:Translation" %t681, ptr %l242
  br label %bb131
bb131:
  %t682 = load %"compiler/bindgen:Translation", ptr %l242
  store %"compiler/bindgen:Translation" %t682, ptr %l23
  %t683 = getelementptr %"compiler/bindgen:Translation", ptr %l23, i32 0, i32 3
  %t684 = load { i64, ptr }, ptr %t683, !tbaa !27
  %t686 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s29, ptr %s29, { i64, ptr } %t684, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d53, i32 0, i32 1) })
  store i1 %t686, ptr %l244
  br label %bb132
bb132:
  %t687 = load i1, ptr %l244, !tbaa !21
  %t688 = xor i1 %t687, true
  br i1 %t688, label %bb133, label %bb134
bb133:
  %t690 = getelementptr %"compiler/bindgen:Translation", ptr %l23, i32 0, i32 4
  %t691 = load i1, ptr %t690, !tbaa !21
  br i1 %t691, label %bb135, label %bb136
bb134:
  br label %bb142
bb135:
  %t693 = load ptr, ptr %l0, !tbaa !29
  %t695 = getelementptr %"compiler/load:Loader", ptr %t693, i32 0, i32 4
  %t696 = load ptr, ptr %t695, !tbaa !29
  store ptr %t696, ptr %l248, !tbaa !29
  %t697 = load { i64, [3 x i64] }, ptr %l4
  store { i64, [3 x i64] } %t697, ptr %l249
  %t698 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t700 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCHeaderNotFound(ptr %v1, ptr %v0, { i64, ptr } %t698)
  store %"compiler/diagmsg:Msg" %t700, ptr %l251
  br label %bb137
bb136:
  %t701 = load ptr, ptr %l0, !tbaa !29
  %t703 = getelementptr %"compiler/load:Loader", ptr %t701, i32 0, i32 4
  %t704 = load ptr, ptr %t703, !tbaa !29
  store ptr %t704, ptr %l254, !tbaa !29
  %t705 = load { i64, [3 x i64] }, ptr %l4
  store { i64, [3 x i64] } %t705, ptr %l255
  %t706 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t707 = getelementptr %"compiler/bindgen:Translation", ptr %l23, i32 0, i32 3
  %t708 = load { i64, ptr }, ptr %t707, !tbaa !27
  %t711 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCImportFailed(ptr %v1, ptr %s29, ptr %v0, { i64, ptr } %t706, { i64, ptr } %t708)
  store %"compiler/diagmsg:Msg" %t711, ptr %l258
  br label %bb139
bb137:
  %t712 = load ptr, ptr %l248, !tbaa !29
  %t713 = load { i64, [3 x i64] }, ptr %l249
  %t714 = load %"compiler/diagmsg:Msg", ptr %l251
  %t715 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t712, { i64, [3 x i64] } %t713, %"compiler/diagmsg:Msg" %t714)
  store i64 %t715, ptr %l252
  br label %bb138
bb138:
  br label %bb141
bb139:
  %t716 = load ptr, ptr %l254, !tbaa !29
  %t717 = load { i64, [3 x i64] }, ptr %l255
  %t718 = load %"compiler/diagmsg:Msg", ptr %l258
  %t719 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t716, { i64, [3 x i64] } %t717, %"compiler/diagmsg:Msg" %t718)
  store i64 %t719, ptr %l259
  br label %bb140
bb140:
  br label %bb141
bb141:
  call void @__olang_scope_close(ptr %s29)
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb142:
  %t721 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s29)
  store %"std/prelude/text:StringBuilder" %t721, ptr %l261
  br label %bb143
bb143:
  %t722 = load %"std/prelude/text:StringBuilder", ptr %l261
  store %"std/prelude/text:StringBuilder" %t722, ptr %l24
  %t723 = getelementptr %"compiler/bindgen:Translation", ptr %l23, i32 0, i32 2
  store ptr %t723, ptr %l25, !tbaa !29
  store i64 0, ptr %l26, !tbaa !24
  br label %bb144
bb144:
  store %olang.scope zeroinitializer, ptr %s34
  %t725 = load i64, ptr %l26, !tbaa !24
  store i64 %t725, ptr %l263, !tbaa !24
  %t726 = load ptr, ptr %l25, !tbaa !29
  %t728 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s29, ptr %t726)
  store i64 %t728, ptr %l265
  br label %bb145
bb145:
  %t729 = load i64, ptr %l263, !tbaa !24
  %t730 = load i64, ptr %l265, !tbaa !24
  %t731 = icmp slt i64 %t729, %t730
  %t733 = xor i1 %t731, true
  br i1 %t733, label %bb146, label %bb147
bb146:
  call void @__olang_scope_close(ptr %s34)
  br label %bb158
bb147:
  br label %bb148
bb148:
  %t735 = load ptr, ptr %l25, !tbaa !29
  %t736 = load i64, ptr %l26, !tbaa !24
  %t739 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s29, ptr %s29, ptr %t735, i64 %t736)
  store { i64, ptr } %t739, ptr %l270
  br label %bb149
bb149:
  %t740 = load { i64, ptr }, ptr %l270, !tbaa !27
  store { i64, ptr } %t740, ptr %l27, !tbaa !27
  %t741 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t743 = call { i32, %"std/os:FileInfo" } @std_2fos_2eFileInfo_2eStat(ptr %s29, { i64, ptr } %t741)
  %t744 = extractvalue { i32, %"std/os:FileInfo" } %t743, 1
  %t745 = extractvalue { i32, %"std/os:FileInfo" } %t743, 0
  store i32 %t745, ptr %l274
  %t746 = icmp ne i32 %t745, 0
  br i1 %t746, label %bb151, label %ok.747, !prof !99
ok.747:
  store %"std/os:FileInfo" %t744, ptr %l273
  br label %bb150
bb150:
  %t748 = load %"std/os:FileInfo", ptr %l273
  store %"std/os:FileInfo" %t748, ptr %l271
  br label %bb155
bb151:
  %t749 = load i32, ptr %l274, !tbaa !23
  %t750 = ashr i32 %t749, 16
  %t752 = icmp eq i32 %t750, 1
  store i1 %t752, ptr %l276, !tbaa !21
  %t753 = load i32, ptr %l274, !tbaa !23
  %t754 = ashr i32 %t753, 16
  %t756 = icmp eq i32 %t754, 1
  br i1 %t756, label %bb152, label %bb153
bb152:
  call void @__olang_errpay_pop()
  br label %bb153
bb153:
  br label %bb154
bb154:
  call void @__olang_scope_close(ptr %s34)
  br label %bb157
bb155:
  %t758 = load %"std/os:FileInfo", ptr %l271
  store %"std/os:FileInfo" %t758, ptr %l28
  %t759 = getelementptr %"std/os:FileInfo", ptr %l28, i32 0, i32 1
  %t760 = load i64, ptr %t759, !tbaa !24
  %t761 = getelementptr %"std/os:FileInfo", ptr %l28, i32 0, i32 2
  %t762 = load i64, ptr %t761, !tbaa !24
  %t763 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t765 = call i64 @__olang_fmt_i64(ptr null, i64 %t760)
  %t766 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d54, i32 0, i32 1) }, 1
  %t767 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d54, i32 0, i32 1) }, 0
  %t768 = add i64 %t765, %t767
  %t770 = call i64 @__olang_fmt_i64(ptr null, i64 %t762)
  %t771 = add i64 %t768, %t770
  %t772 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d54, i32 0, i32 1) }, 1
  %t773 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d54, i32 0, i32 1) }, 0
  %t774 = add i64 %t771, %t773
  %t776 = extractvalue { i64, ptr } %t763, 1
  %t777 = extractvalue { i64, ptr } %t763, 0
  %t778 = add i64 %t774, %t777
  %t779 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d55, i32 0, i32 1) }, 1
  %t780 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d55, i32 0, i32 1) }, 0
  %t781 = add i64 %t778, %t780
  %t782 = call ptr @__olang_scope_alloc(ptr %s34, i64 %t781)
  %t783 = call i64 @__olang_fmt_i64(ptr %t782, i64 %t760)
  %t784 = getelementptr i8, ptr %t782, i64 %t765
  call void @olang_textcopy(ptr %t784, ptr %t766, i64 %t767)
  %t785 = getelementptr i8, ptr %t784, i64 %t767
  %t786 = call i64 @__olang_fmt_i64(ptr %t785, i64 %t762)
  %t787 = getelementptr i8, ptr %t785, i64 %t770
  call void @olang_textcopy(ptr %t787, ptr %t772, i64 %t773)
  %t788 = getelementptr i8, ptr %t787, i64 %t773
  call void @olang_textcopy(ptr %t788, ptr %t776, i64 %t777)
  %t789 = getelementptr i8, ptr %t788, i64 %t777
  call void @olang_textcopy(ptr %t789, ptr %t779, i64 %t780)
  %t790 = insertvalue { i64, ptr } undef, i64 %t781, 0
  %t791 = insertvalue { i64, ptr } %t790, ptr %t782, 1
  %t793 = extractvalue { i64, ptr } %t791, 0
  %t794 = extractvalue { i64, ptr } %t791, 1
  %t795 = mul i64 %t793, 1
  %t796 = call ptr @__olang_scope_alloc(ptr %s34, i64 %t795)
  call void @llvm.memcpy.p0.p0.i64(ptr %t796, ptr %t794, i64 %t795, i1 false)
  %t797 = insertvalue { i64, ptr } undef, i64 %t793, 0
  %t798 = insertvalue { i64, ptr } %t797, ptr %t796, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s29, ptr %s34, ptr %l24, { i64, ptr } %t798)
  br label %bb156
bb156:
  call void @__olang_scope_close(ptr %s34)
  br label %bb157
bb157:
  %t801 = load i64, ptr %l26, !tbaa !24
  %t803 = add i64 %t801, 1
  store i64 %t803, ptr %l26, !tbaa !24
  br label %bb144
bb158:
  %t806 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s29, ptr %s29, ptr %l24)
  store { i64, ptr } %t806, ptr %l288
  br label %bb159
bb159:
  %t807 = load { i64, ptr }, ptr %l288, !tbaa !27
  %t809 = extractvalue { i64, ptr } %t807, 0
  %t810 = extractvalue { i64, ptr } %t807, 1
  %t811 = mul i64 %t809, 1
  %t812 = call ptr @__olang_scope_alloc(ptr %s29, i64 %t811)
  call void @llvm.memcpy.p0.p0.i64(ptr %t812, ptr %t810, i64 %t811, i1 false)
  %t813 = insertvalue { i64, ptr } undef, i64 %t809, 0
  %t814 = insertvalue { i64, ptr } %t813, ptr %t812, 1
  %t816 = call { i64, ptr } @std_2fsha256_2eHex(ptr %s29, ptr %s29, { i64, ptr } %t814)
  store { i64, ptr } %t816, ptr %l291
  br label %bb160
bb160:
  %t817 = load { i64, ptr }, ptr %l291, !tbaa !27
  %t818 = extractvalue { i64, ptr } %t817, 0
  store i64 %t818, ptr %l292, !tbaa !24
  %t819 = icmp sge i64 0, 0
  br i1 %t819, label %bb161, label %bb162
bb161:
  %t821 = icmp sle i64 0, 16
  br i1 %t821, label %bb163, label %bb164
bb162:
  call void @__olang_check_failed(ptr @olang_loc_cc736817fb6c70d0_6e757e50f6c823e4)
  unreachable
bb163:
  %t823 = load i64, ptr %l292, !tbaa !24
  %t824 = icmp sle i64 16, %t823
  br i1 %t824, label %bb165, label %bb166
bb164:
  call void @__olang_check_failed(ptr @olang_loc_cc736817fb6c70d0_6e757e50f6c823e4)
  unreachable
bb165:
  %t826 = getelementptr { i64, ptr }, ptr %l291, i32 0, i32 1
  %t827 = load ptr, ptr %t826, !tbaa !27
  %t828 = getelementptr i8, ptr %t827, i64 0
  %t829 = sub i64 16, 0
  %t830 = insertvalue { i64, ptr } undef, i64 %t829, 0
  %t831 = insertvalue { i64, ptr } %t830, ptr %t828, 1
  store { i64, ptr } %t831, ptr %l29, !tbaa !27
  %t833 = getelementptr %"compiler/bindgen:Translation", ptr %l23, i32 0, i32 1
  %t834 = load { i64, ptr }, ptr %t833, !tbaa !27
  %t836 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s29, ptr %s29, { i64, ptr } %t834, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d56, i32 0, i32 1) })
  store i1 %t836, ptr %l298
  br label %bb167
bb166:
  call void @__olang_check_failed(ptr @olang_loc_cc736817fb6c70d0_6e757e50f6c823e4)
  unreachable
bb167:
  %t837 = load i1, ptr %l298, !tbaa !21
  br i1 %t837, label %bb168, label %bb169
bb168:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d57, i32 0, i32 1) }, ptr %l299, !tbaa !27
  br label %bb170
bb169:
  %t838 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t839 = getelementptr %"compiler/bindgen:Translation", ptr %l23, i32 0, i32 1
  %t840 = load { i64, ptr }, ptr %t839, !tbaa !27
  %t841 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d58, i32 0, i32 1) }, 1
  %t842 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d58, i32 0, i32 1) }, 0
  %t844 = extractvalue { i64, ptr } %t838, 1
  %t845 = extractvalue { i64, ptr } %t838, 0
  %t846 = add i64 %t842, %t845
  %t847 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d59, i32 0, i32 1) }, 1
  %t848 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d59, i32 0, i32 1) }, 0
  %t849 = add i64 %t846, %t848
  %t851 = extractvalue { i64, ptr } %t840, 1
  %t852 = extractvalue { i64, ptr } %t840, 0
  %t853 = add i64 %t849, %t852
  %t854 = call ptr @__olang_scope_alloc(ptr %s29, i64 %t853)
  call void @olang_textcopy(ptr %t854, ptr %t841, i64 %t842)
  %t855 = getelementptr i8, ptr %t854, i64 %t842
  call void @olang_textcopy(ptr %t855, ptr %t844, i64 %t845)
  %t856 = getelementptr i8, ptr %t855, i64 %t845
  call void @olang_textcopy(ptr %t856, ptr %t847, i64 %t848)
  %t857 = getelementptr i8, ptr %t856, i64 %t848
  call void @olang_textcopy(ptr %t857, ptr %t851, i64 %t852)
  %t858 = insertvalue { i64, ptr } undef, i64 %t853, 0
  %t859 = insertvalue { i64, ptr } %t858, ptr %t854, 1
  %t861 = extractvalue { i64, ptr } %t859, 0
  %t862 = extractvalue { i64, ptr } %t859, 1
  %t863 = mul i64 %t861, 1
  %t864 = call ptr @__olang_scope_alloc(ptr %s29, i64 %t863)
  call void @llvm.memcpy.p0.p0.i64(ptr %t864, ptr %t862, i64 %t863, i1 false)
  %t865 = insertvalue { i64, ptr } undef, i64 %t861, 0
  %t866 = insertvalue { i64, ptr } %t865, ptr %t864, 1
  store { i64, ptr } %t866, ptr %l299, !tbaa !27
  br label %bb170
bb170:
  %t868 = load { i64, ptr }, ptr %l299, !tbaa !27
  store { i64, ptr } %t868, ptr %l30, !tbaa !27
  %t869 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t870 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t872 = extractvalue { i64, ptr } %t870, 1
  %t873 = extractvalue { i64, ptr } %t870, 0
  %t874 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d60, i32 0, i32 1) }, 1
  %t875 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d60, i32 0, i32 1) }, 0
  %t876 = add i64 %t873, %t875
  %t877 = call ptr @__olang_scope_alloc(ptr %s29, i64 %t876)
  call void @olang_textcopy(ptr %t877, ptr %t872, i64 %t873)
  %t878 = getelementptr i8, ptr %t877, i64 %t873
  call void @olang_textcopy(ptr %t878, ptr %t874, i64 %t875)
  %t879 = insertvalue { i64, ptr } undef, i64 %t876, 0
  %t880 = insertvalue { i64, ptr } %t879, ptr %t877, 1
  %t882 = extractvalue { i64, ptr } %t880, 0
  %t883 = extractvalue { i64, ptr } %t880, 1
  %t884 = mul i64 %t882, 1
  %t885 = call ptr @__olang_scope_alloc(ptr %s29, i64 %t884)
  call void @llvm.memcpy.p0.p0.i64(ptr %t885, ptr %t883, i64 %t884, i1 false)
  %t886 = insertvalue { i64, ptr } undef, i64 %t882, 0
  %t887 = insertvalue { i64, ptr } %t886, ptr %t885, 1
  %t888 = getelementptr %"compiler/bindgen:Translation", ptr %l23, i32 0, i32 0
  %t889 = load { i64, ptr }, ptr %t888, !tbaa !27
  %t893 = call i1 @compiler_2fload_2ekeepFile(ptr %s0, ptr %s29, ptr %s29, { i64, ptr } %t869, { i64, ptr } %t887, { i64, ptr } %t889)
  store i1 %t893, ptr %l309
  br label %bb171
bb171:
  %t894 = load i1, ptr %l309, !tbaa !21
  %t895 = xor i1 %t894, true
  br i1 %t895, label %bb172, label %bb173
bb172:
  store i1 true, ptr %l311, !tbaa !21
  br label %bb175
bb173:
  %t897 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t898 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t900 = extractvalue { i64, ptr } %t898, 1
  %t901 = extractvalue { i64, ptr } %t898, 0
  %t902 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d61, i32 0, i32 1) }, 1
  %t903 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d61, i32 0, i32 1) }, 0
  %t904 = add i64 %t901, %t903
  %t905 = call ptr @__olang_scope_alloc(ptr %s29, i64 %t904)
  call void @olang_textcopy(ptr %t905, ptr %t900, i64 %t901)
  %t906 = getelementptr i8, ptr %t905, i64 %t901
  call void @olang_textcopy(ptr %t906, ptr %t902, i64 %t903)
  %t907 = insertvalue { i64, ptr } undef, i64 %t904, 0
  %t908 = insertvalue { i64, ptr } %t907, ptr %t905, 1
  %t910 = extractvalue { i64, ptr } %t908, 0
  %t911 = extractvalue { i64, ptr } %t908, 1
  %t912 = mul i64 %t910, 1
  %t913 = call ptr @__olang_scope_alloc(ptr %s29, i64 %t912)
  call void @llvm.memcpy.p0.p0.i64(ptr %t913, ptr %t911, i64 %t912, i1 false)
  %t914 = insertvalue { i64, ptr } undef, i64 %t910, 0
  %t915 = insertvalue { i64, ptr } %t914, ptr %t913, 1
  %t916 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t920 = call i1 @compiler_2fload_2ekeepFile(ptr %s0, ptr %s29, ptr %s29, { i64, ptr } %t897, { i64, ptr } %t915, { i64, ptr } %t916)
  store i1 %t920, ptr %l317
  br label %bb174
bb174:
  %t921 = load i1, ptr %l317, !tbaa !21
  %t922 = xor i1 %t921, true
  store i1 %t922, ptr %l311, !tbaa !21
  br label %bb175
bb175:
  %t924 = load i1, ptr %l311, !tbaa !21
  br i1 %t924, label %bb176, label %bb177
bb176:
  store i1 true, ptr %l319, !tbaa !21
  br label %bb180
bb177:
  %t925 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t925, ptr %l320, !tbaa !27
  %t926 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t928 = extractvalue { i64, ptr } %t926, 1
  %t929 = extractvalue { i64, ptr } %t926, 0
  %t930 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d62, i32 0, i32 1) }, 1
  %t931 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d62, i32 0, i32 1) }, 0
  %t932 = add i64 %t929, %t931
  %t933 = call ptr @__olang_scope_alloc(ptr %s29, i64 %t932)
  call void @olang_textcopy(ptr %t933, ptr %t928, i64 %t929)
  %t934 = getelementptr i8, ptr %t933, i64 %t929
  call void @olang_textcopy(ptr %t934, ptr %t930, i64 %t931)
  %t935 = insertvalue { i64, ptr } undef, i64 %t932, 0
  %t936 = insertvalue { i64, ptr } %t935, ptr %t933, 1
  %t938 = extractvalue { i64, ptr } %t936, 0
  %t939 = extractvalue { i64, ptr } %t936, 1
  %t940 = mul i64 %t938, 1
  %t941 = call ptr @__olang_scope_alloc(ptr %s29, i64 %t940)
  call void @llvm.memcpy.p0.p0.i64(ptr %t941, ptr %t939, i64 %t940, i1 false)
  %t942 = insertvalue { i64, ptr } undef, i64 %t938, 0
  %t943 = insertvalue { i64, ptr } %t942, ptr %t941, 1
  store { i64, ptr } %t943, ptr %l323, !tbaa !27
  %t945 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s29, ptr %s29, ptr %l24)
  store { i64, ptr } %t945, ptr %l325
  br label %bb178
bb178:
  %t946 = load { i64, ptr }, ptr %l325, !tbaa !27
  %t947 = extractvalue { i64, ptr } %t946, 0
  %t948 = extractvalue { i64, ptr } %t946, 1
  %t949 = mul i64 %t947, 1
  %t950 = call ptr @__olang_scope_alloc(ptr %s29, i64 %t949)
  call void @llvm.memcpy.p0.p0.i64(ptr %t950, ptr %t948, i64 %t949, i1 false)
  %t951 = insertvalue { i64, ptr } undef, i64 %t947, 0
  %t952 = insertvalue { i64, ptr } %t951, ptr %t950, 1
  %t953 = load { i64, ptr }, ptr %l320, !tbaa !27
  %t954 = load { i64, ptr }, ptr %l323, !tbaa !27
  %t956 = call i1 @compiler_2fload_2ekeepFile(ptr %s0, ptr %s29, ptr %s29, { i64, ptr } %t953, { i64, ptr } %t954, { i64, ptr } %t952)
  store i1 %t956, ptr %l327
  br label %bb179
bb179:
  %t957 = load i1, ptr %l327, !tbaa !21
  %t958 = xor i1 %t957, true
  store i1 %t958, ptr %l319, !tbaa !21
  br label %bb180
bb180:
  %t960 = load i1, ptr %l319, !tbaa !21
  br i1 %t960, label %bb181, label %bb182
bb181:
  %t961 = load ptr, ptr %l0, !tbaa !29
  %t963 = getelementptr %"compiler/load:Loader", ptr %t961, i32 0, i32 4
  %t964 = load ptr, ptr %t963, !tbaa !29
  store ptr %t964, ptr %l330, !tbaa !29
  %t965 = load { i64, [3 x i64] }, ptr %l4
  store { i64, [3 x i64] } %t965, ptr %l331
  %t966 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t967 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t968 = extractvalue { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d63, i32 0, i32 1) }, 1
  %t969 = extractvalue { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d63, i32 0, i32 1) }, 0
  %t971 = extractvalue { i64, ptr } %t967, 1
  %t972 = extractvalue { i64, ptr } %t967, 0
  %t973 = add i64 %t969, %t972
  %t974 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t973)
  call void @olang_textcopy(ptr %t974, ptr %t968, i64 %t969)
  %t975 = getelementptr i8, ptr %t974, i64 %t969
  call void @olang_textcopy(ptr %t975, ptr %t971, i64 %t972)
  %t976 = insertvalue { i64, ptr } undef, i64 %t973, 0
  %t977 = insertvalue { i64, ptr } %t976, ptr %t974, 1
  %t979 = extractvalue { i64, ptr } %t977, 0
  %t980 = extractvalue { i64, ptr } %t977, 1
  %t981 = mul i64 %t979, 1
  %t982 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t981)
  call void @llvm.memcpy.p0.p0.i64(ptr %t982, ptr %t980, i64 %t981, i1 false)
  %t983 = insertvalue { i64, ptr } undef, i64 %t979, 0
  %t984 = insertvalue { i64, ptr } %t983, ptr %t982, 1
  %t987 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCImportFailed(ptr %v1, ptr %v0, ptr %v0, { i64, ptr } %t966, { i64, ptr } %t984)
  store %"compiler/diagmsg:Msg" %t987, ptr %l336
  br label %bb183
bb182:
  br label %bb185
bb183:
  %t988 = load ptr, ptr %l330, !tbaa !29
  %t989 = load { i64, [3 x i64] }, ptr %l331
  %t990 = load %"compiler/diagmsg:Msg", ptr %l336
  %t991 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t988, { i64, [3 x i64] } %t989, %"compiler/diagmsg:Msg" %t990)
  store i64 %t991, ptr %l337
  br label %bb184
bb184:
  call void @__olang_scope_close(ptr %s29)
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb185:
  %t993 = getelementptr %"compiler/bindgen:Translation", ptr %l23, i32 0, i32 0
  %t994 = load { i64, ptr }, ptr %t993, !tbaa !27
  store { i64, ptr } %t994, ptr %l340, !tbaa !27
  %t996 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t997 = extractvalue { i64, ptr } %t996, 0
  %t998 = load { i64, ptr }, ptr %l340, !tbaa !27
  %t999 = extractvalue { i64, ptr } %t998, 0
  store i64 %t999, ptr %l342, !tbaa !24
  %t1001 = load i64, ptr %l342, !tbaa !24
  %t1002 = icmp eq i64 %t997, %t1001
  br i1 %t1002, label %bb186, label %bb187
bb186:
  %t1004 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t1005 = load ptr, ptr %t1004, !tbaa !27
  %t1006 = getelementptr { i64, ptr }, ptr %l340, i32 0, i32 1
  %t1007 = load ptr, ptr %t1006, !tbaa !27
  %t1008 = load i64, ptr %l342, !tbaa !24
  %t1009 = mul i64 %t1008, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1005, ptr %t1007, i64 %t1009, i1 false)
  br label %bb188
bb187:
  %t1010 = load { i64, ptr }, ptr %l340, !tbaa !27
  %t1011 = extractvalue { i64, ptr } %t1010, 0
  store i64 %t1011, ptr %l344, !tbaa !24
  %t1012 = load i64, ptr %l344, !tbaa !24
  %t1013 = mul i64 %t1012, 1
  %t1014 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1013)
  %t1015 = insertvalue { i64, ptr } undef, i64 %t1012, 0
  %t1016 = insertvalue { i64, ptr } %t1015, ptr %t1014, 1
  store { i64, ptr } %t1016, ptr %l345, !tbaa !27
  %t1017 = getelementptr { i64, ptr }, ptr %l345, i32 0, i32 1
  %t1018 = load ptr, ptr %t1017, !tbaa !27
  %t1019 = getelementptr { i64, ptr }, ptr %l340, i32 0, i32 1
  %t1020 = load ptr, ptr %t1019, !tbaa !27
  %t1021 = load i64, ptr %l344, !tbaa !24
  %t1022 = mul i64 %t1021, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1018, ptr %t1020, i64 %t1022, i1 false)
  %t1023 = load { i64, ptr }, ptr %l345, !tbaa !27
  store { i64, ptr } %t1023, ptr %l22, !tbaa !27
  br label %bb188
bb188:
  call void @__olang_scope_close(ptr %s29)
  br label %bb189
bb189:
  %t1024 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1024, ptr %l346, !tbaa !29
  %t1025 = ptrtoint ptr %v0 to i64
  store i64 %t1025, ptr %l347, !tbaa !24
  %t1026 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e0
  br i1 %t1026, label %bb190, label %bb191
bb190:
  %t1028 = call ptr @__olang_region_make(ptr %v0)
  %t1029 = ptrtoint ptr %t1028 to i64
  store i64 %t1029, ptr %l347, !tbaa !24
  br label %bb191
bb191:
  %t1030 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t1032 = extractvalue { i64, ptr } %t1030, 1
  %t1033 = extractvalue { i64, ptr } %t1030, 0
  %t1034 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d64, i32 0, i32 1) }, 1
  %t1035 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d64, i32 0, i32 1) }, 0
  %t1036 = add i64 %t1033, %t1035
  %t1037 = load i64, ptr %l347
  %t1038 = inttoptr i64 %t1037 to ptr
  %t1039 = call ptr @__olang_scope_alloc(ptr %t1038, i64 %t1036)
  call void @olang_textcopy(ptr %t1039, ptr %t1032, i64 %t1033)
  %t1040 = getelementptr i8, ptr %t1039, i64 %t1033
  call void @olang_textcopy(ptr %t1040, ptr %t1034, i64 %t1035)
  %t1041 = insertvalue { i64, ptr } undef, i64 %t1036, 0
  %t1042 = insertvalue { i64, ptr } %t1041, ptr %t1039, 1
  %t1044 = load i64, ptr %l347
  %t1045 = inttoptr i64 %t1044 to ptr
  %t1046 = extractvalue { i64, ptr } %t1042, 0
  %t1047 = extractvalue { i64, ptr } %t1042, 1
  %t1048 = mul i64 %t1046, 1
  %t1049 = call ptr @__olang_scope_alloc(ptr %t1045, i64 %t1048)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1049, ptr %t1047, i64 %t1048, i1 false)
  %t1050 = insertvalue { i64, ptr } undef, i64 %t1046, 0
  %t1051 = insertvalue { i64, ptr } %t1050, ptr %t1049, 1
  %t1052 = load ptr, ptr %lp11
  %t1053 = load { i64, ptr }, ptr %t1052, !tbaa !27
  %t1054 = load ptr, ptr %l346, !tbaa !29
  %t1057 = call i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2eload(ptr %v0, ptr %v0, ptr %v0, ptr %t1054, { i64, ptr } %t1051, { i64, ptr } %t1053, i1 false, i1 true)
  store i64 %t1057, ptr %l353
  br label %bb192
bb192:
  %t1058 = load i64, ptr %l353, !tbaa !24
  store i64 %t1058, ptr %l31, !tbaa !24
  %t1059 = load i64, ptr %l31, !tbaa !24
  %t1061 = icmp slt i64 %t1059, 0
  br i1 %t1061, label %bb193, label %bb194
bb193:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb194:
  br label %bb195
bb195:
  %t1064 = load ptr, ptr %l0, !tbaa !29
  %t1066 = getelementptr %"compiler/load:Loader", ptr %t1064, i32 0, i32 10
  %t1067 = load i64, ptr %l31, !tbaa !24
  %t1070 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t1066, i64 %t1067)
  store ptr %t1070, ptr %l360
  br label %bb196
bb196:
  %t1071 = load ptr, ptr %l360, !tbaa !29
  store ptr %t1071, ptr %l32, !tbaa !29
  %t1072 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t1074 = extractvalue { i64, ptr } %t1072, 1
  %t1075 = extractvalue { i64, ptr } %t1072, 0
  %t1076 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d65, i32 0, i32 1) }, 1
  %t1077 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d65, i32 0, i32 1) }, 0
  %t1078 = add i64 %t1075, %t1077
  %t1079 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1078)
  call void @olang_textcopy(ptr %t1079, ptr %t1074, i64 %t1075)
  %t1080 = getelementptr i8, ptr %t1079, i64 %t1075
  call void @olang_textcopy(ptr %t1080, ptr %t1076, i64 %t1077)
  %t1081 = insertvalue { i64, ptr } undef, i64 %t1078, 0
  %t1082 = insertvalue { i64, ptr } %t1081, ptr %t1079, 1
  %t1084 = extractvalue { i64, ptr } %t1082, 0
  %t1085 = extractvalue { i64, ptr } %t1082, 1
  %t1086 = mul i64 %t1084, 1
  %t1087 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1086)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1087, ptr %t1085, i64 %t1086, i1 false)
  %t1088 = insertvalue { i64, ptr } undef, i64 %t1084, 0
  %t1089 = insertvalue { i64, ptr } %t1088, ptr %t1087, 1
  %t1091 = call i1 @std_2fos_2eExists(ptr %s0, { i64, ptr } %t1089)
  store i1 %t1091, ptr %l364
  br label %bb197
bb197:
  %t1092 = load i1, ptr %l364, !tbaa !21
  br i1 %t1092, label %bb198, label %bb199
bb198:
  %t1093 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t1095 = extractvalue { i64, ptr } %t1093, 1
  %t1096 = extractvalue { i64, ptr } %t1093, 0
  %t1097 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d66, i32 0, i32 1) }, 1
  %t1098 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d66, i32 0, i32 1) }, 0
  %t1099 = add i64 %t1096, %t1098
  %t1100 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1099)
  call void @olang_textcopy(ptr %t1100, ptr %t1095, i64 %t1096)
  %t1101 = getelementptr i8, ptr %t1100, i64 %t1096
  call void @olang_textcopy(ptr %t1101, ptr %t1097, i64 %t1098)
  %t1102 = insertvalue { i64, ptr } undef, i64 %t1099, 0
  %t1103 = insertvalue { i64, ptr } %t1102, ptr %t1100, 1
  %t1105 = extractvalue { i64, ptr } %t1103, 0
  %t1106 = extractvalue { i64, ptr } %t1103, 1
  %t1107 = mul i64 %t1105, 1
  %t1108 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1107)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1108, ptr %t1106, i64 %t1107, i1 false)
  %t1109 = insertvalue { i64, ptr } undef, i64 %t1105, 0
  %t1110 = insertvalue { i64, ptr } %t1109, ptr %t1108, 1
  %t1112 = call { i32, %"std/os:FileInfo" } @std_2fos_2eFileInfo_2eStat(ptr %s0, { i64, ptr } %t1110)
  %t1113 = extractvalue { i32, %"std/os:FileInfo" } %t1112, 1
  %t1114 = extractvalue { i32, %"std/os:FileInfo" } %t1112, 0
  store i32 %t1114, ptr %l371
  %t1115 = icmp ne i32 %t1114, 0
  br i1 %t1115, label %bb201, label %ok.1116, !prof !99
ok.1116:
  store %"std/os:FileInfo" %t1113, ptr %l370
  br label %bb200
bb199:
  store i1 false, ptr %l365, !tbaa !21
  br label %bb207
bb200:
  %t1117 = load %"std/os:FileInfo", ptr %l370
  store %"std/os:FileInfo" %t1117, ptr %l366
  br label %bb206
bb201:
  %t1118 = load i32, ptr %l371, !tbaa !23
  %t1119 = ashr i32 %t1118, 16
  %t1121 = icmp eq i32 %t1119, 1
  store i1 %t1121, ptr %l373, !tbaa !21
  %t1122 = load i32, ptr %l371, !tbaa !23
  %t1123 = ashr i32 %t1122, 16
  %t1125 = icmp eq i32 %t1123, 1
  br i1 %t1125, label %bb202, label %bb203
bb202:
  call void @__olang_errpay_pop()
  br label %bb203
bb203:
  br label %bb204
bb204:
  %t1128 = call %"std/os:FileInfo" @std_2fos_3aFileInfo_2ector(ptr %s0, i32 2, i64 0, i64 0)
  store %"std/os:FileInfo" %t1128, ptr %l377
  br label %bb205
bb205:
  %t1129 = load %"std/os:FileInfo", ptr %l377
  store %"std/os:FileInfo" %t1129, ptr %l366
  br label %bb206
bb206:
  %t1130 = getelementptr %"std/os:FileInfo", ptr %l366, i32 0, i32 1
  %t1131 = load i64, ptr %t1130, !tbaa !24
  %t1133 = icmp sgt i64 %t1131, 0
  store i1 %t1133, ptr %l365, !tbaa !21
  br label %bb207
bb207:
  %t1135 = load i1, ptr %l365, !tbaa !21
  br i1 %t1135, label %bb208, label %bb209
bb208:
  %t1136 = load ptr, ptr %l32, !tbaa !29
  store ptr %t1136, ptr %l380, !tbaa !29
  %t1137 = ptrtoint ptr %v0 to i64
  store i64 %t1137, ptr %l381, !tbaa !24
  %t1138 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e31
  br i1 %t1138, label %bb210, label %bb211
bb209:
  br label %bb214
bb210:
  %t1140 = call ptr @__olang_region_make(ptr %v0)
  %t1141 = ptrtoint ptr %t1140 to i64
  store i64 %t1141, ptr %l381, !tbaa !24
  br label %bb211
bb211:
  %t1142 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t1144 = extractvalue { i64, ptr } %t1142, 1
  %t1145 = extractvalue { i64, ptr } %t1142, 0
  %t1146 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d67, i32 0, i32 1) }, 1
  %t1147 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d67, i32 0, i32 1) }, 0
  %t1148 = add i64 %t1145, %t1147
  %t1149 = load i64, ptr %l381
  %t1150 = inttoptr i64 %t1149 to ptr
  %t1151 = call ptr @__olang_scope_alloc(ptr %t1150, i64 %t1148)
  call void @olang_textcopy(ptr %t1151, ptr %t1144, i64 %t1145)
  %t1152 = getelementptr i8, ptr %t1151, i64 %t1145
  call void @olang_textcopy(ptr %t1152, ptr %t1146, i64 %t1147)
  %t1153 = insertvalue { i64, ptr } undef, i64 %t1148, 0
  %t1154 = insertvalue { i64, ptr } %t1153, ptr %t1151, 1
  %t1156 = load i64, ptr %l381
  %t1157 = inttoptr i64 %t1156 to ptr
  %t1158 = extractvalue { i64, ptr } %t1154, 0
  %t1159 = extractvalue { i64, ptr } %t1154, 1
  %t1160 = mul i64 %t1158, 1
  %t1161 = call ptr @__olang_scope_alloc(ptr %t1157, i64 %t1160)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1161, ptr %t1159, i64 %t1160, i1 false)
  %t1162 = insertvalue { i64, ptr } undef, i64 %t1158, 0
  %t1163 = insertvalue { i64, ptr } %t1162, ptr %t1161, 1
  %t1164 = load ptr, ptr %l380, !tbaa !29
  %t1165 = getelementptr %"compiler/load:Module", ptr %t1164, i32 0, i32 31
  %t1166 = load { i64, ptr }, ptr %t1165, !tbaa !27
  store { i64, ptr } %t1166, ptr %l386, !tbaa !27
  %t1168 = load ptr, ptr %l380, !tbaa !29
  %t1169 = getelementptr %"compiler/load:Module", ptr %t1168, i32 0, i32 31
  store { i64, ptr } %t1163, ptr %t1169, !tbaa !27
  %t1170 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e31
  br i1 %t1170, label %bb212, label %bb213
bb212:
  %t1172 = load { i64, ptr }, ptr %l386
  %t1173 = extractvalue { i64, ptr } %t1172, 1
  call void @__olang_region_release(ptr %t1173)
  store { i64, ptr } zeroinitializer, ptr %l386
  br label %bb213
bb213:
  br label %bb214
bb214:
  store i1 false, ptr %l33, !tbaa !21
  %t1174 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t1176 = call %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %s0, ptr %s0, { i64, ptr } %t1174)
  store %"std/prelude/text:LineIter" %t1176, ptr %l389
  br label %bb215
bb215:
  %t1177 = load %"std/prelude/text:LineIter", ptr %l389
  store %"std/prelude/text:LineIter" %t1177, ptr %l34
  br label %bb216
bb216:
  store %olang.scope zeroinitializer, ptr %s51
  %t1179 = call { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %s0, ptr %s0, ptr %l34)
  %t1180 = extractvalue { i32, { i64, ptr } } %t1179, 1
  %t1181 = extractvalue { i32, { i64, ptr } } %t1179, 0
  store i32 %t1181, ptr %l393
  %t1182 = icmp ne i32 %t1181, 0
  br i1 %t1182, label %bb218, label %ok.1183, !prof !99
ok.1183:
  store { i64, ptr } %t1180, ptr %l392
  br label %bb217
bb217:
  %t1184 = load { i64, ptr }, ptr %l392, !tbaa !27
  store { i64, ptr } %t1184, ptr %l390, !tbaa !27
  br label %bb220
bb218:
  %t1185 = load i32, ptr %l393, !tbaa !23
  %t1186 = ashr i32 %t1185, 16
  %t1188 = icmp eq i32 %t1186, 1
  store i1 %t1188, ptr %l395, !tbaa !21
  br label %bb219
bb219:
  call void @__olang_scope_close(ptr %s51)
  br label %bb276
bb220:
  %t1189 = load { i64, ptr }, ptr %l390, !tbaa !27
  store { i64, ptr } %t1189, ptr %l35, !tbaa !27
  %t1190 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t1192 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s51, { i64, ptr } %t1190, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d68, i32 0, i32 1) })
  store i1 %t1192, ptr %l397
  br label %bb221
bb221:
  %t1193 = load i1, ptr %l397, !tbaa !21
  br i1 %t1193, label %bb222, label %bb223
bb222:
  store %olang.scope zeroinitializer, ptr %s52
  %t1194 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t1194, ptr %l398, !tbaa !27
  %t1195 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t1198 = extractvalue { i64, ptr } %t1195, 0
  store i64 %t1198, ptr %l401, !tbaa !24
  %t1199 = load { i64, ptr }, ptr %l398, !tbaa !27
  %t1200 = extractvalue { i64, ptr } %t1199, 0
  store i64 %t1200, ptr %l402, !tbaa !24
  %t1201 = icmp sge i64 9, 0
  br i1 %t1201, label %bb224, label %bb225
bb223:
  store %olang.scope zeroinitializer, ptr %s56
  %t1203 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t1205 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s56, { i64, ptr } %t1203, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d69, i32 0, i32 1) })
  store i1 %t1205, ptr %l426
  br label %bb239
bb224:
  %t1206 = load i64, ptr %l401, !tbaa !24
  %t1207 = icmp sle i64 9, %t1206
  br i1 %t1207, label %bb226, label %bb227
bb225:
  call void @__olang_check_failed(ptr @olang_loc_d93100fd80a187ad_1e56be64fe5806d1)
  unreachable
bb226:
  %t1209 = load i64, ptr %l401, !tbaa !24
  %t1210 = load i64, ptr %l402, !tbaa !24
  %t1211 = icmp sle i64 %t1209, %t1210
  br i1 %t1211, label %bb228, label %bb229
bb227:
  call void @__olang_check_failed(ptr @olang_loc_d93100fd80a187ad_1e56be64fe5806d1)
  unreachable
bb228:
  %t1213 = getelementptr { i64, ptr }, ptr %l398, i32 0, i32 1
  %t1214 = load ptr, ptr %t1213, !tbaa !27
  %t1215 = load i64, ptr %l401, !tbaa !24
  %t1216 = getelementptr i8, ptr %t1214, i64 9
  %t1217 = sub i64 %t1215, 9
  %t1218 = insertvalue { i64, ptr } undef, i64 %t1217, 0
  %t1219 = insertvalue { i64, ptr } %t1218, ptr %t1216, 1
  %t1221 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %s0, ptr %s52, ptr %s52, { i64, ptr } %t1219, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d70, i32 0, i32 1) })
  store { i64, ptr } %t1221, ptr %l407
  br label %bb230
bb229:
  call void @__olang_check_failed(ptr @olang_loc_d93100fd80a187ad_1e56be64fe5806d1)
  unreachable
bb230:
  %t1222 = load { i64, ptr }, ptr %l407, !tbaa !27
  store { i64, ptr } %t1222, ptr %l36, !tbaa !27
  %t1223 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t1225 = extractvalue { i64, ptr } %t1223, 0
  %t1227 = icmp eq i64 %t1225, 2
  br i1 %t1227, label %bb231, label %bb232
bb231:
  %t1229 = load ptr, ptr %l32, !tbaa !29
  %t1231 = getelementptr %"compiler/load:Module", ptr %t1229, i32 0, i32 32
  store ptr %t1231, ptr %l412, !tbaa !29
  %t1232 = ptrtoint ptr %v0 to i64
  store i64 %t1232, ptr %l413, !tbaa !24
  %t1233 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20st_Ha3f33385783b00c3f13cf90b683d8670
  br i1 %t1233, label %bb233, label %bb234
bb232:
  br label %bb238
bb233:
  %t1235 = call ptr @__olang_region_make(ptr %v0)
  %t1236 = ptrtoint ptr %t1235 to i64
  store i64 %t1236, ptr %l413, !tbaa !24
  br label %bb234
bb234:
  %t1237 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t1237, ptr %l415, !tbaa !27
  %t1238 = getelementptr { i64, ptr }, ptr %l415, i32 0, i32 1
  %t1239 = load ptr, ptr %t1238, !tbaa !27
  %t1240 = getelementptr { i64, ptr }, ptr %t1239, i64 0
  %t1241 = load { i64, ptr }, ptr %t1240, !tbaa !37
  %t1243 = extractvalue { i64, ptr } %t1241, 1
  %t1244 = extractvalue { i64, ptr } %t1241, 0
  %t1245 = load i64, ptr %l413
  %t1246 = inttoptr i64 %t1245 to ptr
  %t1247 = call ptr @__olang_scope_alloc(ptr %t1246, i64 %t1244)
  call void @olang_textcopy(ptr %t1247, ptr %t1243, i64 %t1244)
  %t1248 = insertvalue { i64, ptr } undef, i64 %t1244, 0
  %t1249 = insertvalue { i64, ptr } %t1248, ptr %t1247, 1
  %t1251 = load i64, ptr %l413
  %t1252 = inttoptr i64 %t1251 to ptr
  %t1253 = extractvalue { i64, ptr } %t1249, 0
  %t1254 = extractvalue { i64, ptr } %t1249, 1
  %t1255 = mul i64 %t1253, 1
  %t1256 = call ptr @__olang_scope_alloc(ptr %t1252, i64 %t1255)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1256, ptr %t1254, i64 %t1255, i1 false)
  %t1257 = insertvalue { i64, ptr } undef, i64 %t1253, 0
  %t1258 = insertvalue { i64, ptr } %t1257, ptr %t1256, 1
  store { i64, ptr } %t1258, ptr %l418, !tbaa !27
  %t1259 = ptrtoint ptr %v0 to i64
  store i64 %t1259, ptr %l419, !tbaa !24
  %t1260 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20st_Ha3f33285783aff10f13cf80b683d8c03
  br i1 %t1260, label %bb235, label %bb236
bb235:
  %t1262 = call ptr @__olang_region_make(ptr %v0)
  %t1263 = ptrtoint ptr %t1262 to i64
  store i64 %t1263, ptr %l419, !tbaa !24
  br label %bb236
bb236:
  %t1264 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t1264, ptr %l421, !tbaa !27
  %t1265 = getelementptr { i64, ptr }, ptr %l421, i32 0, i32 1
  %t1266 = load ptr, ptr %t1265, !tbaa !27
  %t1267 = getelementptr { i64, ptr }, ptr %t1266, i64 1
  %t1268 = load { i64, ptr }, ptr %t1267, !tbaa !37
  %t1270 = extractvalue { i64, ptr } %t1268, 1
  %t1271 = extractvalue { i64, ptr } %t1268, 0
  %t1272 = load i64, ptr %l419
  %t1273 = inttoptr i64 %t1272 to ptr
  %t1274 = call ptr @__olang_scope_alloc(ptr %t1273, i64 %t1271)
  call void @olang_textcopy(ptr %t1274, ptr %t1270, i64 %t1271)
  %t1275 = insertvalue { i64, ptr } undef, i64 %t1271, 0
  %t1276 = insertvalue { i64, ptr } %t1275, ptr %t1274, 1
  %t1278 = load i64, ptr %l419
  %t1279 = inttoptr i64 %t1278 to ptr
  %t1280 = extractvalue { i64, ptr } %t1276, 0
  %t1281 = extractvalue { i64, ptr } %t1276, 1
  %t1282 = mul i64 %t1280, 1
  %t1283 = call ptr @__olang_scope_alloc(ptr %t1279, i64 %t1282)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1283, ptr %t1281, i64 %t1282, i1 false)
  %t1284 = insertvalue { i64, ptr } undef, i64 %t1280, 0
  %t1285 = insertvalue { i64, ptr } %t1284, ptr %t1283, 1
  %t1286 = load ptr, ptr %l412, !tbaa !29
  %t1287 = load { i64, ptr }, ptr %l418, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6f7a2f8d839c49b6e7a19c287d4b190c(ptr %v0, ptr %v0, ptr %v0, ptr %t1286, { i64, ptr } %t1287, { i64, ptr } %t1285)
  br label %bb237
bb237:
  br label %bb238
bb238:
  call void @__olang_scope_close(ptr %s52)
  br label %bb274
bb239:
  %t1289 = load i1, ptr %l426, !tbaa !21
  br i1 %t1289, label %bb240, label %bb241
bb240:
  store i1 true, ptr %l33, !tbaa !21
  br label %bb273
bb241:
  store %olang.scope zeroinitializer, ptr %s58
  %t1290 = load i1, ptr %l33, !tbaa !21
  br i1 %t1290, label %bb242, label %bb243
bb242:
  %t1292 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t1294 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s58, { i64, ptr } %t1292, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d71, i32 0, i32 1) })
  store i1 %t1294, ptr %l430
  br label %bb244
bb243:
  store i1 false, ptr %l428, !tbaa !21
  br label %bb245
bb244:
  %t1295 = load i1, ptr %l430, !tbaa !21
  store i1 %t1295, ptr %l428, !tbaa !21
  br label %bb245
bb245:
  %t1296 = load i1, ptr %l428, !tbaa !21
  br i1 %t1296, label %bb246, label %bb247
bb246:
  store %olang.scope zeroinitializer, ptr %s59
  %t1297 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t1299 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %s0, ptr %s59, { i64, ptr } %t1297, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d72, i32 0, i32 1) })
  %t1300 = extractvalue { i32, i64 } %t1299, 1
  %t1301 = extractvalue { i32, i64 } %t1299, 0
  store i32 %t1301, ptr %l434
  %t1302 = icmp ne i32 %t1301, 0
  br i1 %t1302, label %bb249, label %ok.1303, !prof !99
ok.1303:
  store i64 %t1300, ptr %l433
  br label %bb248
bb247:
  br label %bb272
bb248:
  %t1304 = load i64, ptr %l433, !tbaa !24
  store i64 %t1304, ptr %l431, !tbaa !24
  br label %bb251
bb249:
  br label %bb250
bb250:
  store i64 -1, ptr %l431, !tbaa !24
  br label %bb251
bb251:
  %t1305 = load i64, ptr %l431, !tbaa !24
  store i64 %t1305, ptr %l37, !tbaa !24
  %t1306 = load i64, ptr %l37, !tbaa !24
  %t1308 = icmp sgt i64 %t1306, 4
  br i1 %t1308, label %bb252, label %bb253
bb252:
  %t1310 = load ptr, ptr %l32, !tbaa !29
  %t1312 = getelementptr %"compiler/load:Module", ptr %t1310, i32 0, i32 33
  store ptr %t1312, ptr %l438, !tbaa !29
  %t1313 = ptrtoint ptr %v0 to i64
  store i64 %t1313, ptr %l439, !tbaa !24
  %t1314 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20st_Ha3f33385783b00c3f13cf90b683d8670
  br i1 %t1314, label %bb254, label %bb255
bb253:
  br label %bb271
bb254:
  %t1316 = call ptr @__olang_region_make(ptr %v0)
  %t1317 = ptrtoint ptr %t1316 to i64
  store i64 %t1317, ptr %l439, !tbaa !24
  br label %bb255
bb255:
  %t1318 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t1318, ptr %l441, !tbaa !27
  %t1319 = load i64, ptr %l37, !tbaa !24
  store i64 %t1319, ptr %l442, !tbaa !24
  %t1320 = load { i64, ptr }, ptr %l441, !tbaa !27
  %t1321 = extractvalue { i64, ptr } %t1320, 0
  store i64 %t1321, ptr %l443, !tbaa !24
  %t1322 = icmp sge i64 4, 0
  br i1 %t1322, label %bb256, label %bb257
bb256:
  %t1324 = load i64, ptr %l442, !tbaa !24
  %t1325 = icmp sle i64 4, %t1324
  br i1 %t1325, label %bb258, label %bb259
bb257:
  call void @__olang_check_failed(ptr @olang_loc_2997e1d684418a32_f4dc9b5865eb58ee)
  unreachable
bb258:
  %t1327 = load i64, ptr %l442, !tbaa !24
  %t1328 = load i64, ptr %l443, !tbaa !24
  %t1329 = icmp sle i64 %t1327, %t1328
  br i1 %t1329, label %bb260, label %bb261
bb259:
  call void @__olang_check_failed(ptr @olang_loc_2997e1d684418a32_f4dc9b5865eb58ee)
  unreachable
bb260:
  %t1331 = getelementptr { i64, ptr }, ptr %l441, i32 0, i32 1
  %t1332 = load ptr, ptr %t1331, !tbaa !27
  %t1333 = load i64, ptr %l442, !tbaa !24
  %t1334 = getelementptr i8, ptr %t1332, i64 4
  %t1335 = sub i64 %t1333, 4
  %t1336 = insertvalue { i64, ptr } undef, i64 %t1335, 0
  %t1337 = insertvalue { i64, ptr } %t1336, ptr %t1334, 1
  %t1339 = extractvalue { i64, ptr } %t1337, 1
  %t1340 = extractvalue { i64, ptr } %t1337, 0
  %t1341 = load i64, ptr %l439
  %t1342 = inttoptr i64 %t1341 to ptr
  %t1343 = call ptr @__olang_scope_alloc(ptr %t1342, i64 %t1340)
  call void @olang_textcopy(ptr %t1343, ptr %t1339, i64 %t1340)
  %t1344 = insertvalue { i64, ptr } undef, i64 %t1340, 0
  %t1345 = insertvalue { i64, ptr } %t1344, ptr %t1343, 1
  %t1347 = load i64, ptr %l439
  %t1348 = inttoptr i64 %t1347 to ptr
  %t1349 = extractvalue { i64, ptr } %t1345, 0
  %t1350 = extractvalue { i64, ptr } %t1345, 1
  %t1351 = mul i64 %t1349, 1
  %t1352 = call ptr @__olang_scope_alloc(ptr %t1348, i64 %t1351)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1352, ptr %t1350, i64 %t1351, i1 false)
  %t1353 = insertvalue { i64, ptr } undef, i64 %t1349, 0
  %t1354 = insertvalue { i64, ptr } %t1353, ptr %t1352, 1
  store { i64, ptr } %t1354, ptr %l449, !tbaa !27
  %t1355 = ptrtoint ptr %v0 to i64
  store i64 %t1355, ptr %l450, !tbaa !24
  %t1356 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20st_Ha3f33285783aff10f13cf80b683d8c03
  br i1 %t1356, label %bb262, label %bb263
bb261:
  call void @__olang_check_failed(ptr @olang_loc_2997e1d684418a32_f4dc9b5865eb58ee)
  unreachable
bb262:
  %t1358 = call ptr @__olang_region_make(ptr %v0)
  %t1359 = ptrtoint ptr %t1358 to i64
  store i64 %t1359, ptr %l450, !tbaa !24
  br label %bb263
bb263:
  %t1360 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t1360, ptr %l452, !tbaa !27
  %t1361 = load i64, ptr %l37, !tbaa !24
  %t1363 = add i64 %t1361, 2
  store i64 %t1363, ptr %l454, !tbaa !24
  %t1364 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t1367 = extractvalue { i64, ptr } %t1364, 0
  store i64 %t1367, ptr %l457, !tbaa !24
  %t1368 = load { i64, ptr }, ptr %l452, !tbaa !27
  %t1369 = extractvalue { i64, ptr } %t1368, 0
  store i64 %t1369, ptr %l458, !tbaa !24
  %t1370 = load i64, ptr %l454, !tbaa !24
  %t1371 = icmp sge i64 %t1370, 0
  br i1 %t1371, label %bb264, label %bb265
bb264:
  %t1373 = load i64, ptr %l454, !tbaa !24
  %t1374 = load i64, ptr %l457, !tbaa !24
  %t1375 = icmp sle i64 %t1373, %t1374
  br i1 %t1375, label %bb266, label %bb267
bb265:
  call void @__olang_check_failed(ptr @olang_loc_2997e1d684418a32_f4dc9b5865eb58ee)
  unreachable
bb266:
  %t1377 = load i64, ptr %l457, !tbaa !24
  %t1378 = load i64, ptr %l458, !tbaa !24
  %t1379 = icmp sle i64 %t1377, %t1378
  br i1 %t1379, label %bb268, label %bb269
bb267:
  call void @__olang_check_failed(ptr @olang_loc_2997e1d684418a32_f4dc9b5865eb58ee)
  unreachable
bb268:
  %t1381 = getelementptr { i64, ptr }, ptr %l452, i32 0, i32 1
  %t1382 = load ptr, ptr %t1381, !tbaa !27
  %t1383 = load i64, ptr %l454, !tbaa !24
  %t1384 = load i64, ptr %l457, !tbaa !24
  %t1385 = getelementptr i8, ptr %t1382, i64 %t1383
  %t1386 = sub i64 %t1384, %t1383
  %t1387 = insertvalue { i64, ptr } undef, i64 %t1386, 0
  %t1388 = insertvalue { i64, ptr } %t1387, ptr %t1385, 1
  %t1390 = extractvalue { i64, ptr } %t1388, 1
  %t1391 = extractvalue { i64, ptr } %t1388, 0
  %t1392 = load i64, ptr %l450
  %t1393 = inttoptr i64 %t1392 to ptr
  %t1394 = call ptr @__olang_scope_alloc(ptr %t1393, i64 %t1391)
  call void @olang_textcopy(ptr %t1394, ptr %t1390, i64 %t1391)
  %t1395 = insertvalue { i64, ptr } undef, i64 %t1391, 0
  %t1396 = insertvalue { i64, ptr } %t1395, ptr %t1394, 1
  %t1398 = load i64, ptr %l450
  %t1399 = inttoptr i64 %t1398 to ptr
  %t1400 = extractvalue { i64, ptr } %t1396, 0
  %t1401 = extractvalue { i64, ptr } %t1396, 1
  %t1402 = mul i64 %t1400, 1
  %t1403 = call ptr @__olang_scope_alloc(ptr %t1399, i64 %t1402)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1403, ptr %t1401, i64 %t1402, i1 false)
  %t1404 = insertvalue { i64, ptr } undef, i64 %t1400, 0
  %t1405 = insertvalue { i64, ptr } %t1404, ptr %t1403, 1
  %t1406 = load ptr, ptr %l438, !tbaa !29
  %t1407 = load { i64, ptr }, ptr %l449, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6f7a2f8d839c49b6e7a19c287d4b190c(ptr %v0, ptr %v0, ptr %v0, ptr %t1406, { i64, ptr } %t1407, { i64, ptr } %t1405)
  br label %bb270
bb269:
  call void @__olang_check_failed(ptr @olang_loc_2997e1d684418a32_f4dc9b5865eb58ee)
  unreachable
bb270:
  br label %bb271
bb271:
  call void @__olang_scope_close(ptr %s59)
  br label %bb272
bb272:
  call void @__olang_scope_close(ptr %s58)
  br label %bb273
bb273:
  call void @__olang_scope_close(ptr %s56)
  br label %bb274
bb274:
  call void @__olang_scope_close(ptr %s51)
  br label %bb275
bb275:
  br label %bb216
bb276:
  %t1409 = load i64, ptr %l31, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t1409, ptr %rv
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
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca %"compiler/cond:Decision"
  %t114 = alloca %"compiler/cond:Eval", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
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
  call void @compiler_2fcond_3aEval_2ector(ptr %t114, ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t115, ptr %t116, ptr %t109, ptr %t113)
  call void @llvm.memmove.p0.p0.i64(ptr %l61, ptr %t114, i64 152, i1 false)
  br label %bb28
bb28:
  %t119 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 152, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t119, ptr %l61, i64 152, i1 false)
  store ptr %t119, ptr %l5, !tbaa !29
  %t121 = load ptr, ptr %l5, !tbaa !29
  %t122 = load ptr, ptr %l4, !tbaa !29
  %t125 = call %"compiler/cond:Decision" @compiler_2fcond_2ecompiler_2fcond_3aEval_2eTop(ptr %v0, ptr %v0, ptr %t121, ptr %t122)
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
  %t133 = load ptr, ptr %l5, !tbaa !29
  %t135 = call { %"compiler/source:Span", %"compiler/diagmsg:Msg" } @compiler_2fcond_2ecompiler_2fcond_3aEval_2eError(ptr %v0, ptr %v0, ptr %t133)
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
  %t158 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t155, { i64, [3 x i64] } %t156, %"compiler/diagmsg:Msg" %t154)
  store i64 %t158, ptr %l79
  br label %bb34
bb34:
  br label %bb35
bb35:
  %t159 = load %"compiler/cond:Decision", ptr %l6
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
  %lp6 = alloca ptr
  %l7 = alloca %"compiler/source:Span"
  %l8 = alloca %"compiler/source:Span"
  %lp9 = alloca ptr
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
  %l105 = alloca %"compiler/load:Import"
  %l107 = alloca { i64, ptr }
  %l112 = alloca i1
  %l119 = alloca { i64, ptr }
  %l120 = alloca { i64, ptr }
  %l124 = alloca i64
  %l125 = alloca { i64, ptr }
  %l129 = alloca i64
  %l130 = alloca i64
  %l135 = alloca i1
  %l136 = alloca i1
  %l137 = alloca { i64, ptr }
  %l142 = alloca ptr
  %l143 = alloca { i64, ptr }
  %l147 = alloca { i64, ptr }
  %l151 = alloca %"compiler/source:Span"
  %l152 = alloca ptr
  %l153 = alloca i64
  %l161 = alloca { i64, ptr }
  %l164 = alloca i64
  %l167 = alloca i64
  %l168 = alloca i64
  %l173 = alloca { i64, ptr }
  %l176 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
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
  %t26 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t25)
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
  %t35 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t35, ptr %lp6
  %t36 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t37 = load ptr, ptr %lp6
  store { i64, ptr } %t36, ptr %t37, !tbaa !27
  %t38 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 0, i32 0)
  store %"compiler/source:Span" %t38, ptr %l24
  br label %bb4
bb4:
  %t39 = load %"compiler/source:Span", ptr %l24
  store %"compiler/source:Span" %t39, ptr %l7
  %t40 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t40, ptr %l25, !tbaa !27
  %t41 = load i64, ptr %l5, !tbaa !24
  %t43 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !27
  %t45 = getelementptr %"compiler/token:Token", ptr %t44, i64 %t41
  %t46 = getelementptr %"compiler/token:Token", ptr %t45, i32 0, i32 0
  %t47 = load i32, ptr %t46, !range !{i32 0, i32 114}
  %t49 = trunc i64 1 to i32
  %t50 = icmp eq i32 %t47, %t49
  br i1 %t50, label %bb5, label %bb6
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t52 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t52, ptr %l29, !tbaa !27
  %t53 = load i64, ptr %l5, !tbaa !24
  %t55 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !27
  %t57 = getelementptr %"compiler/token:Token", ptr %t56, i64 %t53
  %t58 = getelementptr %"compiler/token:Token", ptr %t57, i32 0, i32 2
  %t59 = load i32, ptr %t58, !tbaa !23
  %t60 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t60, ptr %l32, !tbaa !27
  %t61 = load i64, ptr %l5, !tbaa !24
  %t63 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !27
  %t65 = getelementptr %"compiler/token:Token", ptr %t64, i64 %t61
  %t66 = getelementptr %"compiler/token:Token", ptr %t65, i32 0, i32 3
  %t67 = load i32, ptr %t66, !tbaa !23
  %t70 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s1, i32 %t59, i32 %t67)
  store %"compiler/source:Span" %t70, ptr %l35
  br label %bb7
bb6:
  br label %bb20
bb7:
  %t71 = load %"compiler/source:Span", ptr %l35
  store %"compiler/source:Span" %t71, ptr %l7
  %t72 = load ptr, ptr %l1, !tbaa !29
  %t74 = getelementptr %"compiler/load:Module", ptr %t72, i32 0, i32 6
  %t75 = load ptr, ptr %t74, !tbaa !29
  %t77 = icmp eq ptr %t75, null
  br i1 %t77, label %bb8, label %bb9
bb8:
  call void @__olang_check_failed(ptr @olang_loc_17f5e01691795fb_80a050950937648f)
  unreachable
bb9:
  br label %bb10
bb10:
  %t79 = load ptr, ptr %l1, !tbaa !29
  %t81 = getelementptr %"compiler/load:Module", ptr %t79, i32 0, i32 6
  %t82 = load ptr, ptr %t81, !tbaa !29
  %t85 = getelementptr %"compiler/source:Source", ptr %t82, i32 0, i32 1
  %t86 = load { i64, ptr }, ptr %t85, !tbaa !27
  store { i64, ptr } %t86, ptr %l42, !tbaa !27
  %t87 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t87, ptr %l43, !tbaa !27
  %t88 = load i64, ptr %l5, !tbaa !24
  %t90 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !27
  %t92 = getelementptr %"compiler/token:Token", ptr %t91, i64 %t88
  %t93 = getelementptr %"compiler/token:Token", ptr %t92, i32 0, i32 2
  %t94 = load i32, ptr %t93, !tbaa !23
  %t96 = sext i32 %t94 to i64
  store i64 %t96, ptr %l46, !tbaa !24
  %t97 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t97, ptr %l47, !tbaa !27
  %t98 = load i64, ptr %l5, !tbaa !24
  %t100 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t101 = load ptr, ptr %t100, !tbaa !27
  %t102 = getelementptr %"compiler/token:Token", ptr %t101, i64 %t98
  %t103 = getelementptr %"compiler/token:Token", ptr %t102, i32 0, i32 3
  %t104 = load i32, ptr %t103, !tbaa !23
  %t106 = sext i32 %t104 to i64
  store i64 %t106, ptr %l50, !tbaa !24
  %t107 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t108 = extractvalue { i64, ptr } %t107, 0
  store i64 %t108, ptr %l51, !tbaa !24
  %t109 = load i64, ptr %l46, !tbaa !24
  %t110 = icmp sge i64 %t109, 0
  br i1 %t110, label %bb11, label %bb12
bb11:
  %t112 = load i64, ptr %l46, !tbaa !24
  %t113 = load i64, ptr %l50, !tbaa !24
  %t114 = icmp sle i64 %t112, %t113
  br i1 %t114, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_fd1d115e36d277d2_104a63438b39a3d6)
  unreachable
bb13:
  %t116 = load i64, ptr %l50, !tbaa !24
  %t117 = load i64, ptr %l51, !tbaa !24
  %t118 = icmp sle i64 %t116, %t117
  br i1 %t118, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_fd1d115e36d277d2_104a63438b39a3d6)
  unreachable
bb15:
  %t120 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t121 = load ptr, ptr %t120, !tbaa !27
  %t122 = load i64, ptr %l46, !tbaa !24
  %t123 = load i64, ptr %l50, !tbaa !24
  %t124 = getelementptr i8, ptr %t121, i64 %t122
  %t125 = sub i64 %t123, %t122
  %t126 = insertvalue { i64, ptr } undef, i64 %t125, 0
  %t127 = insertvalue { i64, ptr } %t126, ptr %t124, 1
  %t129 = extractvalue { i64, ptr } %t127, 1
  %t130 = extractvalue { i64, ptr } %t127, 0
  %t131 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t130)
  call void @olang_textcopy(ptr %t131, ptr %t129, i64 %t130)
  %t132 = insertvalue { i64, ptr } undef, i64 %t130, 0
  %t133 = insertvalue { i64, ptr } %t132, ptr %t131, 1
  store { i64, ptr } %t133, ptr %l56, !tbaa !27
  %t134 = load ptr, ptr %lp6
  %t135 = load { i64, ptr }, ptr %t134, !tbaa !27
  %t136 = extractvalue { i64, ptr } %t135, 0
  %t137 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t138 = extractvalue { i64, ptr } %t137, 0
  store i64 %t138, ptr %l58, !tbaa !24
  %t140 = load i64, ptr %l58, !tbaa !24
  %t141 = icmp eq i64 %t136, %t140
  br i1 %t141, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_fd1d115e36d277d2_104a63438b39a3d6)
  unreachable
bb17:
  %t143 = load ptr, ptr %lp6
  %t144 = getelementptr { i64, ptr }, ptr %t143, i32 0, i32 1
  %t145 = load ptr, ptr %t144, !tbaa !27
  %t146 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t147 = load ptr, ptr %t146, !tbaa !27
  %t148 = load i64, ptr %l58, !tbaa !24
  %t149 = mul i64 %t148, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t145, ptr %t147, i64 %t149, i1 false)
  br label %bb19
bb18:
  %t150 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t151 = load ptr, ptr %lp6
  store { i64, ptr } %t150, ptr %t151, !tbaa !27
  br label %bb19
bb19:
  %t152 = load i64, ptr %l5, !tbaa !24
  %t154 = add i64 %t152, 1
  store i64 %t154, ptr %l5, !tbaa !24
  call void @__olang_scope_close(ptr %s1)
  br label %bb20
bb20:
  %t156 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t156, ptr %l62, !tbaa !27
  %t157 = load i64, ptr %l5, !tbaa !24
  %t159 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t160 = load ptr, ptr %t159, !tbaa !27
  %t161 = getelementptr %"compiler/token:Token", ptr %t160, i64 %t157
  %t162 = getelementptr %"compiler/token:Token", ptr %t161, i32 0, i32 0
  %t163 = load i32, ptr %t162, !range !{i32 0, i32 114}
  %t165 = trunc i64 5 to i32
  %t166 = icmp eq i32 %t163, %t165
  %t168 = xor i1 %t166, true
  br i1 %t168, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb22:
  br label %bb23
bb23:
  %t170 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t170, ptr %l67, !tbaa !27
  %t171 = load i64, ptr %l5, !tbaa !24
  %t173 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t174 = load ptr, ptr %t173, !tbaa !27
  %t175 = getelementptr %"compiler/token:Token", ptr %t174, i64 %t171
  %t176 = getelementptr %"compiler/token:Token", ptr %t175, i32 0, i32 2
  %t177 = load i32, ptr %t176, !tbaa !23
  %t178 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t178, ptr %l70, !tbaa !27
  %t179 = load i64, ptr %l5, !tbaa !24
  %t181 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t182 = load ptr, ptr %t181, !tbaa !27
  %t183 = getelementptr %"compiler/token:Token", ptr %t182, i64 %t179
  %t184 = getelementptr %"compiler/token:Token", ptr %t183, i32 0, i32 3
  %t185 = load i32, ptr %t184, !tbaa !23
  %t188 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 %t177, i32 %t185)
  store %"compiler/source:Span" %t188, ptr %l73
  br label %bb24
bb24:
  %t189 = load %"compiler/source:Span", ptr %l73
  store %"compiler/source:Span" %t189, ptr %l8
  %t190 = load ptr, ptr %l1, !tbaa !29
  %t192 = getelementptr %"compiler/load:Module", ptr %t190, i32 0, i32 6
  %t193 = load ptr, ptr %t192, !tbaa !29
  %t195 = icmp eq ptr %t193, null
  br i1 %t195, label %bb25, label %bb26
bb25:
  call void @__olang_check_failed(ptr @olang_loc_3753a1d7262b2cc1_bd09a853d1b85305)
  unreachable
bb26:
  br label %bb27
bb27:
  %t197 = load ptr, ptr %l1, !tbaa !29
  %t199 = getelementptr %"compiler/load:Module", ptr %t197, i32 0, i32 6
  %t200 = load ptr, ptr %t199, !tbaa !29
  %t203 = getelementptr %"compiler/source:Source", ptr %t200, i32 0, i32 1
  %t204 = load { i64, ptr }, ptr %t203, !tbaa !27
  store { i64, ptr } %t204, ptr %l80, !tbaa !27
  %t205 = getelementptr %"compiler/source:Span", ptr %l8, i32 0, i32 0
  %t206 = load i32, ptr %t205, !tbaa !23
  %t208 = sext i32 %t206 to i64
  store i64 %t208, ptr %l82, !tbaa !24
  %t209 = getelementptr %"compiler/source:Span", ptr %l8, i32 0, i32 1
  %t210 = load i32, ptr %t209, !tbaa !23
  %t212 = sext i32 %t210 to i64
  store i64 %t212, ptr %l84, !tbaa !24
  %t213 = load { i64, ptr }, ptr %l80, !tbaa !27
  %t214 = extractvalue { i64, ptr } %t213, 0
  store i64 %t214, ptr %l85, !tbaa !24
  %t215 = load i64, ptr %l82, !tbaa !24
  %t216 = icmp sge i64 %t215, 0
  br i1 %t216, label %bb28, label %bb29
bb28:
  %t218 = load i64, ptr %l82, !tbaa !24
  %t219 = load i64, ptr %l84, !tbaa !24
  %t220 = icmp sle i64 %t218, %t219
  br i1 %t220, label %bb30, label %bb31
bb29:
  call void @__olang_check_failed(ptr @olang_loc_a7b0777888cd5d70_d2e13e44ce4d5eec)
  unreachable
bb30:
  %t222 = load i64, ptr %l84, !tbaa !24
  %t223 = load i64, ptr %l85, !tbaa !24
  %t224 = icmp sle i64 %t222, %t223
  br i1 %t224, label %bb32, label %bb33
bb31:
  call void @__olang_check_failed(ptr @olang_loc_a7b0777888cd5d70_d2e13e44ce4d5eec)
  unreachable
bb32:
  %t226 = getelementptr { i64, ptr }, ptr %l80, i32 0, i32 1
  %t227 = load ptr, ptr %t226, !tbaa !27
  %t228 = load i64, ptr %l82, !tbaa !24
  %t229 = load i64, ptr %l84, !tbaa !24
  %t230 = getelementptr i8, ptr %t227, i64 %t228
  %t231 = sub i64 %t229, %t228
  %t232 = insertvalue { i64, ptr } undef, i64 %t231, 0
  %t233 = insertvalue { i64, ptr } %t232, ptr %t230, 1
  %t235 = call { i64, ptr } @compiler_2fscan_2eLiteralText(ptr %v1, ptr %v1, { i64, ptr } %t233)
  store { i64, ptr } %t235, ptr %l90
  br label %bb34
bb33:
  call void @__olang_check_failed(ptr @olang_loc_a7b0777888cd5d70_d2e13e44ce4d5eec)
  unreachable
bb34:
  %t236 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t236, ptr %lp9
  %t237 = load { i64, ptr }, ptr %l90, !tbaa !27
  %t238 = load ptr, ptr %lp9
  store { i64, ptr } %t237, ptr %t238, !tbaa !27
  %t239 = load ptr, ptr %lp6
  %t240 = load { i64, ptr }, ptr %t239, !tbaa !27
  %t242 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t240, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d75, i32 0, i32 1) })
  store i1 %t242, ptr %l92
  br label %bb35
bb35:
  %t243 = load i1, ptr %l92, !tbaa !21
  br i1 %t243, label %bb36, label %bb37
bb36:
  store %olang.scope zeroinitializer, ptr %s4
  %t244 = load ptr, ptr %lp9
  %t245 = load { i64, ptr }, ptr %t244, !tbaa !27
  %t247 = call { i64, ptr } @compiler_2fload_2eDeriveAlias(ptr %v1, ptr %s4, { i64, ptr } %t245)
  store { i64, ptr } %t247, ptr %l94
  br label %bb38
bb37:
  br label %bb42
bb38:
  %t248 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t249 = extractvalue { i64, ptr } %t248, 1
  %t250 = extractvalue { i64, ptr } %t248, 0
  %t251 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t250)
  call void @olang_textcopy(ptr %t251, ptr %t249, i64 %t250)
  %t252 = insertvalue { i64, ptr } undef, i64 %t250, 0
  %t253 = insertvalue { i64, ptr } %t252, ptr %t251, 1
  store { i64, ptr } %t253, ptr %l95, !tbaa !27
  %t254 = load ptr, ptr %lp6
  %t255 = load { i64, ptr }, ptr %t254, !tbaa !27
  %t256 = extractvalue { i64, ptr } %t255, 0
  %t257 = load { i64, ptr }, ptr %l95, !tbaa !27
  %t258 = extractvalue { i64, ptr } %t257, 0
  store i64 %t258, ptr %l97, !tbaa !24
  %t260 = load i64, ptr %l97, !tbaa !24
  %t261 = icmp eq i64 %t256, %t260
  br i1 %t261, label %bb39, label %bb40
bb39:
  %t263 = load ptr, ptr %lp6
  %t264 = getelementptr { i64, ptr }, ptr %t263, i32 0, i32 1
  %t265 = load ptr, ptr %t264, !tbaa !27
  %t266 = getelementptr { i64, ptr }, ptr %l95, i32 0, i32 1
  %t267 = load ptr, ptr %t266, !tbaa !27
  %t268 = load i64, ptr %l97, !tbaa !24
  %t269 = mul i64 %t268, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t265, ptr %t267, i64 %t269, i1 false)
  br label %bb41
bb40:
  %t270 = load { i64, ptr }, ptr %l95, !tbaa !27
  %t271 = load ptr, ptr %lp6
  store { i64, ptr } %t270, ptr %t271, !tbaa !27
  br label %bb41
bb41:
  %t272 = load %"compiler/source:Span", ptr %l8
  store %"compiler/source:Span" %t272, ptr %l7
  call void @__olang_scope_close(ptr %s4)
  br label %bb42
bb42:
  %t274 = load %"compiler/source:Span", ptr %l8
  %t275 = load %"compiler/source:Span", ptr %l7
  %t276 = load ptr, ptr %lp6
  %t277 = load { i64, ptr }, ptr %t276, !tbaa !27
  %t278 = load ptr, ptr %lp9
  %t279 = load { i64, ptr }, ptr %t278, !tbaa !27
  %t286 = call %"compiler/load:Import" @compiler_2fload_3aImport_2ector(ptr %v1, ptr %v1, ptr %v1, %"compiler/source:Span" %t274, %"compiler/source:Span" %t275, { i64, ptr } %t277, { i64, ptr } %t279, i64 %a3)
  store %"compiler/load:Import" %t286, ptr %l105
  br label %bb43
bb43:
  %t287 = load %"compiler/load:Import", ptr %l105
  %t288 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 88, i64 8)
  store %"compiler/load:Import" %t287, ptr %t288
  store ptr %t288, ptr %l10, !tbaa !29
  %t290 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t290, ptr %l107, !tbaa !27
  %t291 = load i64, ptr %l5, !tbaa !24
  %t293 = add i64 %t291, 1
  %t295 = getelementptr { i64, ptr }, ptr %l107, i32 0, i32 1
  %t296 = load ptr, ptr %t295, !tbaa !27
  %t297 = getelementptr %"compiler/token:Token", ptr %t296, i64 %t293
  %t298 = getelementptr %"compiler/token:Token", ptr %t297, i32 0, i32 0
  %t299 = load i32, ptr %t298, !range !{i32 0, i32 114}
  %t301 = trunc i64 1 to i32
  %t302 = icmp eq i32 %t299, %t301
  br i1 %t302, label %bb44, label %bb45
bb44:
  %t304 = load ptr, ptr %l1, !tbaa !29
  %t306 = getelementptr %"compiler/load:Module", ptr %t304, i32 0, i32 6
  %t307 = load ptr, ptr %t306, !tbaa !29
  %t309 = icmp eq ptr %t307, null
  br i1 %t309, label %bb46, label %bb47
bb45:
  store i1 false, ptr %l112, !tbaa !21
  br label %bb56
bb46:
  call void @__olang_check_failed(ptr @olang_loc_8e32ae472cd64327_c149890ad1056c3)
  unreachable
bb47:
  br label %bb48
bb48:
  %t311 = load ptr, ptr %l1, !tbaa !29
  %t313 = getelementptr %"compiler/load:Module", ptr %t311, i32 0, i32 6
  %t314 = load ptr, ptr %t313, !tbaa !29
  %t317 = getelementptr %"compiler/source:Source", ptr %t314, i32 0, i32 1
  %t318 = load { i64, ptr }, ptr %t317, !tbaa !27
  store { i64, ptr } %t318, ptr %l119, !tbaa !27
  %t319 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t319, ptr %l120, !tbaa !27
  %t320 = load i64, ptr %l5, !tbaa !24
  %t322 = add i64 %t320, 1
  %t324 = getelementptr { i64, ptr }, ptr %l120, i32 0, i32 1
  %t325 = load ptr, ptr %t324, !tbaa !27
  %t326 = getelementptr %"compiler/token:Token", ptr %t325, i64 %t322
  %t327 = getelementptr %"compiler/token:Token", ptr %t326, i32 0, i32 2
  %t328 = load i32, ptr %t327, !tbaa !23
  %t330 = sext i32 %t328 to i64
  store i64 %t330, ptr %l124, !tbaa !24
  %t331 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t331, ptr %l125, !tbaa !27
  %t332 = load i64, ptr %l5, !tbaa !24
  %t334 = add i64 %t332, 1
  %t336 = getelementptr { i64, ptr }, ptr %l125, i32 0, i32 1
  %t337 = load ptr, ptr %t336, !tbaa !27
  %t338 = getelementptr %"compiler/token:Token", ptr %t337, i64 %t334
  %t339 = getelementptr %"compiler/token:Token", ptr %t338, i32 0, i32 3
  %t340 = load i32, ptr %t339, !tbaa !23
  %t342 = sext i32 %t340 to i64
  store i64 %t342, ptr %l129, !tbaa !24
  %t343 = load { i64, ptr }, ptr %l119, !tbaa !27
  %t344 = extractvalue { i64, ptr } %t343, 0
  store i64 %t344, ptr %l130, !tbaa !24
  %t345 = load i64, ptr %l124, !tbaa !24
  %t346 = icmp sge i64 %t345, 0
  br i1 %t346, label %bb49, label %bb50
bb49:
  %t348 = load i64, ptr %l124, !tbaa !24
  %t349 = load i64, ptr %l129, !tbaa !24
  %t350 = icmp sle i64 %t348, %t349
  br i1 %t350, label %bb51, label %bb52
bb50:
  call void @__olang_check_failed(ptr @olang_loc_a448ee53d606ecee_601f65a9d3b58c7a)
  unreachable
bb51:
  %t352 = load i64, ptr %l129, !tbaa !24
  %t353 = load i64, ptr %l130, !tbaa !24
  %t354 = icmp sle i64 %t352, %t353
  br i1 %t354, label %bb53, label %bb54
bb52:
  call void @__olang_check_failed(ptr @olang_loc_a448ee53d606ecee_601f65a9d3b58c7a)
  unreachable
bb53:
  %t356 = getelementptr { i64, ptr }, ptr %l119, i32 0, i32 1
  %t357 = load ptr, ptr %t356, !tbaa !27
  %t358 = load i64, ptr %l124, !tbaa !24
  %t359 = load i64, ptr %l129, !tbaa !24
  %t360 = getelementptr i8, ptr %t357, i64 %t358
  %t361 = sub i64 %t359, %t358
  %t362 = insertvalue { i64, ptr } undef, i64 %t361, 0
  %t363 = insertvalue { i64, ptr } %t362, ptr %t360, 1
  %t365 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t363, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d76, i32 0, i32 1) })
  store i1 %t365, ptr %l135
  br label %bb55
bb54:
  call void @__olang_check_failed(ptr @olang_loc_a448ee53d606ecee_601f65a9d3b58c7a)
  unreachable
bb55:
  %t366 = load i1, ptr %l135, !tbaa !21
  store i1 %t366, ptr %l112, !tbaa !21
  br label %bb56
bb56:
  %t367 = load i1, ptr %l112, !tbaa !21
  br i1 %t367, label %bb57, label %bb58
bb57:
  %t368 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t368, ptr %l137, !tbaa !27
  %t369 = load i64, ptr %l5, !tbaa !24
  %t371 = add i64 %t369, 2
  %t373 = getelementptr { i64, ptr }, ptr %l137, i32 0, i32 1
  %t374 = load ptr, ptr %t373, !tbaa !27
  %t375 = getelementptr %"compiler/token:Token", ptr %t374, i64 %t371
  %t376 = getelementptr %"compiler/token:Token", ptr %t375, i32 0, i32 0
  %t377 = load i32, ptr %t376, !range !{i32 0, i32 114}
  %t379 = trunc i64 5 to i32
  %t380 = icmp eq i32 %t377, %t379
  store i1 %t380, ptr %l136, !tbaa !21
  br label %bb59
bb58:
  store i1 false, ptr %l136, !tbaa !21
  br label %bb59
bb59:
  %t382 = load i1, ptr %l136, !tbaa !21
  br i1 %t382, label %bb60, label %bb61
bb60:
  store %olang.scope zeroinitializer, ptr %s6
  %t383 = load ptr, ptr %l10, !tbaa !29
  store ptr %t383, ptr %l142, !tbaa !29
  %t384 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t384, ptr %l143, !tbaa !27
  %t385 = load i64, ptr %l5, !tbaa !24
  %t387 = add i64 %t385, 2
  %t389 = getelementptr { i64, ptr }, ptr %l143, i32 0, i32 1
  %t390 = load ptr, ptr %t389, !tbaa !27
  %t391 = getelementptr %"compiler/token:Token", ptr %t390, i64 %t387
  %t392 = getelementptr %"compiler/token:Token", ptr %t391, i32 0, i32 2
  %t393 = load i32, ptr %t392, !tbaa !23
  %t394 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t394, ptr %l147, !tbaa !27
  %t395 = load i64, ptr %l5, !tbaa !24
  %t397 = add i64 %t395, 2
  %t399 = getelementptr { i64, ptr }, ptr %l147, i32 0, i32 1
  %t400 = load ptr, ptr %t399, !tbaa !27
  %t401 = getelementptr %"compiler/token:Token", ptr %t400, i64 %t397
  %t402 = getelementptr %"compiler/token:Token", ptr %t401, i32 0, i32 3
  %t403 = load i32, ptr %t402, !tbaa !23
  %t406 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s6, i32 %t393, i32 %t403)
  store %"compiler/source:Span" %t406, ptr %l151
  br label %bb62
bb61:
  br label %bb77
bb62:
  %t407 = load %"compiler/source:Span", ptr %l151
  %t408 = load ptr, ptr %l142, !tbaa !29
  %t409 = getelementptr %"compiler/load:Import", ptr %t408, i32 0, i32 7
  store %"compiler/source:Span" %t407, ptr %t409
  %t410 = load ptr, ptr %l10, !tbaa !29
  store ptr %t410, ptr %l152, !tbaa !29
  %t411 = ptrtoint ptr %v1 to i64
  store i64 %t411, ptr %l153, !tbaa !24
  %t412 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aImport_2e6
  br i1 %t412, label %bb63, label %bb64
bb63:
  %t414 = call ptr @__olang_region_make(ptr %v1)
  %t415 = ptrtoint ptr %t414 to i64
  store i64 %t415, ptr %l153, !tbaa !24
  br label %bb64
bb64:
  %t416 = load ptr, ptr %l1, !tbaa !29
  %t418 = getelementptr %"compiler/load:Module", ptr %t416, i32 0, i32 6
  %t419 = load ptr, ptr %t418, !tbaa !29
  %t421 = icmp eq ptr %t419, null
  br i1 %t421, label %bb65, label %bb66
bb65:
  call void @__olang_check_failed(ptr @olang_loc_7e96417109578add_9add255974295329)
  unreachable
bb66:
  br label %bb67
bb67:
  %t423 = load ptr, ptr %l1, !tbaa !29
  %t425 = getelementptr %"compiler/load:Module", ptr %t423, i32 0, i32 6
  %t426 = load ptr, ptr %t425, !tbaa !29
  %t429 = getelementptr %"compiler/source:Source", ptr %t426, i32 0, i32 1
  %t430 = load { i64, ptr }, ptr %t429, !tbaa !27
  store { i64, ptr } %t430, ptr %l161, !tbaa !27
  %t431 = load ptr, ptr %l10, !tbaa !29
  %t433 = getelementptr %"compiler/load:Import", ptr %t431, i32 0, i32 7
  %t434 = getelementptr %"compiler/source:Span", ptr %t433, i32 0, i32 0
  %t435 = load i32, ptr %t434, !tbaa !23
  %t437 = sext i32 %t435 to i64
  store i64 %t437, ptr %l164, !tbaa !24
  %t438 = load ptr, ptr %l10, !tbaa !29
  %t440 = getelementptr %"compiler/load:Import", ptr %t438, i32 0, i32 7
  %t441 = getelementptr %"compiler/source:Span", ptr %t440, i32 0, i32 1
  %t442 = load i32, ptr %t441, !tbaa !23
  %t444 = sext i32 %t442 to i64
  store i64 %t444, ptr %l167, !tbaa !24
  %t445 = load { i64, ptr }, ptr %l161, !tbaa !27
  %t446 = extractvalue { i64, ptr } %t445, 0
  store i64 %t446, ptr %l168, !tbaa !24
  %t447 = load i64, ptr %l164, !tbaa !24
  %t448 = icmp sge i64 %t447, 0
  br i1 %t448, label %bb68, label %bb69
bb68:
  %t450 = load i64, ptr %l164, !tbaa !24
  %t451 = load i64, ptr %l167, !tbaa !24
  %t452 = icmp sle i64 %t450, %t451
  br i1 %t452, label %bb70, label %bb71
bb69:
  call void @__olang_check_failed(ptr @olang_loc_7fc0c111e9e5248c_f920a424be87ad0)
  unreachable
bb70:
  %t454 = load i64, ptr %l167, !tbaa !24
  %t455 = load i64, ptr %l168, !tbaa !24
  %t456 = icmp sle i64 %t454, %t455
  br i1 %t456, label %bb72, label %bb73
bb71:
  call void @__olang_check_failed(ptr @olang_loc_7fc0c111e9e5248c_f920a424be87ad0)
  unreachable
bb72:
  %t458 = getelementptr { i64, ptr }, ptr %l161, i32 0, i32 1
  %t459 = load ptr, ptr %t458, !tbaa !27
  %t460 = load i64, ptr %l164, !tbaa !24
  %t461 = load i64, ptr %l167, !tbaa !24
  %t462 = getelementptr i8, ptr %t459, i64 %t460
  %t463 = sub i64 %t461, %t460
  %t464 = insertvalue { i64, ptr } undef, i64 %t463, 0
  %t465 = insertvalue { i64, ptr } %t464, ptr %t462, 1
  %t467 = call { i64, ptr } @compiler_2fscan_2eLiteralText(ptr %v1, ptr %s6, { i64, ptr } %t465)
  store { i64, ptr } %t467, ptr %l173
  br label %bb74
bb73:
  call void @__olang_check_failed(ptr @olang_loc_7fc0c111e9e5248c_f920a424be87ad0)
  unreachable
bb74:
  %t468 = load { i64, ptr }, ptr %l173, !tbaa !27
  %t469 = extractvalue { i64, ptr } %t468, 1
  %t470 = extractvalue { i64, ptr } %t468, 0
  %t471 = load i64, ptr %l153
  %t472 = inttoptr i64 %t471 to ptr
  %t473 = call ptr @__olang_scope_alloc(ptr %t472, i64 %t470)
  call void @olang_textcopy(ptr %t473, ptr %t469, i64 %t470)
  %t474 = insertvalue { i64, ptr } undef, i64 %t470, 0
  %t475 = insertvalue { i64, ptr } %t474, ptr %t473, 1
  %t477 = load i64, ptr %l153
  %t478 = inttoptr i64 %t477 to ptr
  %t479 = extractvalue { i64, ptr } %t475, 0
  %t480 = extractvalue { i64, ptr } %t475, 1
  %t481 = mul i64 %t479, 1
  %t482 = call ptr @__olang_scope_alloc(ptr %t478, i64 %t481)
  call void @llvm.memcpy.p0.p0.i64(ptr %t482, ptr %t480, i64 %t481, i1 false)
  %t483 = insertvalue { i64, ptr } undef, i64 %t479, 0
  %t484 = insertvalue { i64, ptr } %t483, ptr %t482, 1
  %t485 = load ptr, ptr %l152, !tbaa !29
  %t486 = getelementptr %"compiler/load:Import", ptr %t485, i32 0, i32 6
  %t487 = load { i64, ptr }, ptr %t486, !tbaa !27
  store { i64, ptr } %t487, ptr %l176, !tbaa !27
  %t489 = load ptr, ptr %l152, !tbaa !29
  %t490 = getelementptr %"compiler/load:Import", ptr %t489, i32 0, i32 6
  store { i64, ptr } %t484, ptr %t490, !tbaa !27
  %t491 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aImport_2e6
  br i1 %t491, label %bb75, label %bb76
bb75:
  %t493 = load { i64, ptr }, ptr %l176
  %t494 = extractvalue { i64, ptr } %t493, 1
  call void @__olang_region_release(ptr %t494)
  store { i64, ptr } zeroinitializer, ptr %l176
  br label %bb76
bb76:
  call void @__olang_scope_close(ptr %s6)
  br label %bb77
bb77:
  %t495 = load ptr, ptr %l1, !tbaa !29
  %t497 = getelementptr %"compiler/load:Module", ptr %t495, i32 0, i32 11
  %t498 = load ptr, ptr %l10, !tbaa !29
  %t500 = load %"compiler/load:Import", ptr %t498
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2ePush_3ccompiler_2fload_3aImport_3e(ptr %v1, ptr %v1, ptr %t497, %"compiler/load:Import" %t500)
  br label %bb78
bb78:
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
  %lp6 = alloca ptr
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
  %l83 = alloca %"compiler/load:Module"
  %l88 = alloca ptr
  %l89 = alloca { i64, ptr }
  %l90 = alloca i64
  %l91 = alloca { i64, ptr }
  %l95 = alloca i1
  %l96 = alloca ptr
  %l97 = alloca i64
  %l100 = alloca { i64, ptr }
  %l101 = alloca { i64, ptr }
  %l105 = alloca { i64, ptr }
  %l106 = alloca i32
  %l108 = alloca %"compiler/source:Source"
  %l110 = alloca ptr
  %l112 = alloca ptr
  %l113 = alloca i64
  %l115 = alloca %"compiler/source:Source"
  %l118 = alloca %"compiler/source:Source"
  %l119 = alloca i32
  %l121 = alloca i1
  %l128 = alloca i64
  %l130 = alloca ptr
  %l132 = alloca { i64, [3 x i64] }
  %l133 = alloca %"compiler/diagmsg:Msg"
  %l134 = alloca i64
  %l135 = alloca ptr
  %l138 = alloca ptr
  %l139 = alloca i32
  %l142 = alloca ptr
  %l146 = alloca ptr
  %l148 = alloca ptr
  %l150 = alloca { i64, ptr }
  %l157 = alloca { i64, ptr }
  %l160 = alloca i1
  %l161 = alloca i1
  %l163 = alloca i64
  %l164 = alloca ptr
  %l172 = alloca %"compiler/scan:Tokens"
  %l187 = alloca { i64, ptr }
  %l192 = alloca ptr
  %l199 = alloca { i64, [3 x i64] }
  %l200 = alloca i32
  %l202 = alloca { i64, ptr }
  %l203 = alloca i64
  %l206 = alloca { i64, ptr }
  %l208 = alloca %"compiler/diagmsg:Msg"
  %l209 = alloca i64
  %l214 = alloca ptr
  %l215 = alloca i64
  %l217 = alloca %"compiler/parse:Oracle"
  %l219 = alloca ptr
  %s0 = alloca %olang.scope
  %rv = alloca i64
  %t129 = alloca %"compiler/load:Module", align 8
  %t256 = alloca { i64, [3 x i64] }, align 8
  %t414 = alloca { i64, [3 x i64] }, align 8
  %t468 = alloca %"compiler/parse:Oracle", align 8
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
  %t25 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t24)
  call void @olang_textcopy(ptr %t25, ptr %t23, i64 %t24)
  %t26 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  store { i64, ptr } %t27, ptr %l31, !tbaa !27
  br label %bb10
bb9:
  %t29 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t29, 1
  %t32 = extractvalue { i64, ptr } %t29, 0
  %t33 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t32)
  call void @olang_textcopy(ptr %t33, ptr %t31, i64 %t32)
  %t34 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t35 = insertvalue { i64, ptr } %t34, ptr %t33, 1
  store { i64, ptr } %t35, ptr %l31, !tbaa !27
  br label %bb10
bb10:
  %t37 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 16, i64 8)
  store ptr %t37, ptr %lp6
  %t38 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t39 = load ptr, ptr %lp6
  store { i64, ptr } %t38, ptr %t39, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/load:Loader", ptr %t40, i32 0, i32 10
  %t44 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t42)
  store i64 %t44, ptr %l38
  br label %bb11
bb11:
  %t45 = load i64, ptr %l38, !tbaa !24
  store i64 %t45, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t46 = load i64, ptr %l8, !tbaa !24
  %t47 = load i64, ptr %l7, !tbaa !24
  %t50 = icmp sgt i64 %t46, %t47
  br i1 %t50, label %bb12, label %bb13
bb12:
  %t52 = load i64, ptr %l9, !tbaa !24
  %t54 = icmp sgt i64 %t52, 0
  br i1 %t54, label %bb14, label %bb15
bb13:
  store i64 0, ptr %l42, !tbaa !24
  br label %bb17
bb14:
  %t56 = load i64, ptr %l8, !tbaa !24
  %t57 = load i64, ptr %l7, !tbaa !24
  %t60 = sub i64 %t56, %t57
  %t61 = load i64, ptr %l9, !tbaa !24
  %t64 = add i64 %t60, %t61
  %t66 = sub i64 %t64, 1
  %t67 = load i64, ptr %l9, !tbaa !24
  %t70 = sdiv i64 %t66, %t67
  store i64 %t70, ptr %l45, !tbaa !24
  br label %bb16
bb15:
  store i64 0, ptr %l45, !tbaa !24
  br label %bb16
bb16:
  %t72 = load i64, ptr %l45, !tbaa !24
  store i64 %t72, ptr %l42, !tbaa !24
  br label %bb17
bb17:
  %t73 = load i64, ptr %l42, !tbaa !24
  store i64 %t73, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb18
bb18:
  %t74 = load i64, ptr %l11, !tbaa !24
  %t75 = load i64, ptr %l10, !tbaa !24
  %t78 = icmp slt i64 %t74, %t75
  %t80 = xor i1 %t78, true
  br i1 %t80, label %bb19, label %bb20
bb19:
  br label %bb28
bb20:
  br label %bb21
bb21:
  %t82 = load i64, ptr %l7, !tbaa !24
  %t83 = load i64, ptr %l11, !tbaa !24
  %t84 = load i64, ptr %l9, !tbaa !24
  %t87 = mul i64 %t83, %t84
  %t90 = add i64 %t82, %t87
  store i64 %t90, ptr %l12, !tbaa !24
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/load:Loader", ptr %t92, i32 0, i32 10
  %t95 = load i64, ptr %l12, !tbaa !24
  %t98 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t94, i64 %t95)
  store ptr %t98, ptr %l66
  br label %bb22
bb22:
  %t99 = load ptr, ptr %l66, !tbaa !29
  %t101 = getelementptr %"compiler/load:Module", ptr %t99, i32 0, i32 1
  %t102 = load { i64, ptr }, ptr %t101, !tbaa !27
  %t103 = load ptr, ptr %lp6
  %t104 = load { i64, ptr }, ptr %t103, !tbaa !27
  %t107 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v0, { i64, ptr } %t102, { i64, ptr } %t104)
  store i1 %t107, ptr %l70
  br label %bb23
bb23:
  %t108 = load i1, ptr %l70, !tbaa !21
  br i1 %t108, label %bb24, label %bb25
bb24:
  %t109 = load i64, ptr %l12, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t109, ptr %rv
  br label %ret
bb25:
  br label %bb26
bb26:
  br label %bb27
bb27:
  %t111 = load i64, ptr %l11, !tbaa !24
  %t113 = add i64 %t111, 1
  store i64 %t113, ptr %l11, !tbaa !24
  br label %bb18
bb28:
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t117 = getelementptr %"compiler/load:Loader", ptr %t115, i32 0, i32 10
  %t119 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t117)
  store i64 %t119, ptr %l76
  br label %bb29
bb29:
  %t120 = load i64, ptr %l76, !tbaa !24
  store i64 %t120, ptr %l13, !tbaa !24
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t123 = getelementptr %"compiler/load:Loader", ptr %t121, i32 0, i32 10
  store ptr %t123, ptr %l78, !tbaa !29
  %t124 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t125 = load ptr, ptr %lp6
  %t126 = load { i64, ptr }, ptr %t125, !tbaa !27
  call void @compiler_2fload_3aModule_2ector(ptr %t129, ptr %v1, ptr %v0, ptr %v2, ptr %v0, { i64, ptr } %t124, { i64, ptr } %t126, { i64, ptr } %a2, i1 %a3)
  call void @llvm.memmove.p0.p0.i64(ptr %l83, ptr %t129, i64 768, i1 false)
  br label %bb30
bb30:
  %t134 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 768, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t134, ptr %l83, i64 768, i1 false)
  %t135 = load ptr, ptr %l78, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hadc5a27c7dd302cda1d0e8a7732d6686(ptr %v0, ptr %v0, ptr %t135, ptr %t134)
  br label %bb31
bb31:
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t139 = getelementptr %"compiler/load:Loader", ptr %t137, i32 0, i32 10
  %t140 = load i64, ptr %l13, !tbaa !24
  %t143 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t139, i64 %t140)
  store ptr %t143, ptr %l88
  br label %bb32
bb32:
  %t144 = load ptr, ptr %l88, !tbaa !29
  store ptr %t144, ptr %l14, !tbaa !29
  %t145 = load ptr, ptr %lp6
  %t146 = load { i64, ptr }, ptr %t145, !tbaa !27
  store { i64, ptr } %t146, ptr %l89, !tbaa !27
  %t147 = load { i64, ptr }, ptr %l89, !tbaa !27
  %t148 = extractvalue { i64, ptr } %t147, 0
  store i64 %t148, ptr %l90, !tbaa !24
  %t149 = load i64, ptr %l90, !tbaa !24
  %t150 = mul i64 %t149, 1
  %t151 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t150)
  %t152 = insertvalue { i64, ptr } undef, i64 %t149, 0
  %t153 = insertvalue { i64, ptr } %t152, ptr %t151, 1
  store { i64, ptr } %t153, ptr %l91, !tbaa !27
  %t154 = getelementptr { i64, ptr }, ptr %l91, i32 0, i32 1
  %t155 = load ptr, ptr %t154, !tbaa !27
  %t156 = getelementptr { i64, ptr }, ptr %l89, i32 0, i32 1
  %t157 = load ptr, ptr %t156, !tbaa !27
  %t158 = load i64, ptr %l90, !tbaa !24
  %t159 = mul i64 %t158, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t155, ptr %t157, i64 %t159, i1 false)
  %t160 = load { i64, ptr }, ptr %l91, !tbaa !27
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t163 = getelementptr %"compiler/load:Loader", ptr %t161, i32 0, i32 13
  %t167 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_He27db0a1785588531472bfd2db42574f(ptr %v0, ptr %s0, ptr %t163, { i64, ptr } %t160)
  store i1 %t167, ptr %l95
  br label %bb33
bb33:
  %t168 = load i1, ptr %l95, !tbaa !21
  br i1 %t168, label %bb34, label %bb35
bb34:
  %t169 = load ptr, ptr %l14, !tbaa !29
  store ptr %t169, ptr %l96, !tbaa !29
  %t170 = ptrtoint ptr %v0 to i64
  store i64 %t170, ptr %l97, !tbaa !24
  %t171 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e6
  br i1 %t171, label %bb36, label %bb37
bb35:
  %t173 = load ptr, ptr %l14, !tbaa !29
  store ptr %t173, ptr %l112, !tbaa !29
  %t174 = ptrtoint ptr %v0 to i64
  store i64 %t174, ptr %l113, !tbaa !24
  %t175 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e6
  br i1 %t175, label %bb46, label %bb47
bb36:
  %t177 = call ptr @__olang_region_make(ptr %v0)
  %t178 = ptrtoint ptr %t177 to i64
  store i64 %t178, ptr %l97, !tbaa !24
  br label %bb37
bb37:
  %t179 = load ptr, ptr %l14, !tbaa !29
  %t181 = getelementptr %"compiler/load:Module", ptr %t179, i32 0, i32 0
  %t182 = load { i64, ptr }, ptr %t181, !tbaa !27
  store { i64, ptr } %t182, ptr %l100, !tbaa !27
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t185 = getelementptr %"compiler/load:Loader", ptr %t183, i32 0, i32 13
  %t186 = load ptr, ptr %lp6
  %t187 = load { i64, ptr }, ptr %t186, !tbaa !27
  %t190 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha4444909f5ef14f7626d25b8f59e6ba2(ptr %v0, ptr %v0, ptr %v0, ptr %t185, { i64, ptr } %t187)
  %t191 = extractvalue { i32, { i64, ptr } } %t190, 1
  %t192 = extractvalue { i32, { i64, ptr } } %t190, 0
  store i32 %t192, ptr %l106
  %t193 = icmp ne i32 %t192, 0
  br i1 %t193, label %bb39, label %ok.194, !prof !99
ok.194:
  store { i64, ptr } %t191, ptr %l105
  br label %bb38
bb38:
  %t195 = load { i64, ptr }, ptr %l105, !tbaa !27
  store { i64, ptr } %t195, ptr %l101, !tbaa !27
  br label %bb42
bb39:
  %t196 = load i32, ptr %l106, !tbaa !23
  %t197 = icmp eq i32 %t196, 65536
  br i1 %t197, label %bb40, label %bb41
bb40:
  call void @__olang_bang_failed_plain(ptr @olang_loc_67b56c0a83b8bd03_8d743f7b3592caff)
  unreachable
bb41:
  call void @__olang_bang_failed_plain(ptr @olang_loc_867763f6879c47c1_85ff3e3f6e82a415)
  unreachable
bb42:
  %t199 = load i64, ptr %l97
  %t200 = inttoptr i64 %t199 to ptr
  %t201 = load { i64, ptr }, ptr %l100, !tbaa !27
  %t202 = load { i64, ptr }, ptr %l101, !tbaa !27
  %t203 = call %"compiler/source:Source" @compiler_2fsource_3aSource_2ector(ptr %v0, ptr %v0, ptr %t200, { i64, ptr } %t201, { i64, ptr } %t202)
  store %"compiler/source:Source" %t203, ptr %l108
  br label %bb43
bb43:
  %t204 = load %"compiler/source:Source", ptr %l108
  %t205 = load i64, ptr %l97
  %t206 = inttoptr i64 %t205 to ptr
  %t207 = call ptr @__olang_scope_alloc_a(ptr %t206, i64 48, i64 8)
  store %"compiler/source:Source" %t204, ptr %t207
  %t208 = load ptr, ptr %l96, !tbaa !29
  %t209 = getelementptr %"compiler/load:Module", ptr %t208, i32 0, i32 6
  %t210 = load ptr, ptr %t209, !tbaa !29
  store ptr %t210, ptr %l110, !tbaa !29
  %t212 = load ptr, ptr %l96, !tbaa !29
  %t213 = getelementptr %"compiler/load:Module", ptr %t212, i32 0, i32 6
  store ptr %t207, ptr %t213, !tbaa !29
  %t214 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e6
  br i1 %t214, label %bb44, label %bb45
bb44:
  %t216 = load ptr, ptr %l110
  call void @__olang_region_release(ptr %t216)
  store ptr null, ptr %l110
  br label %bb45
bb45:
  br label %bb63
bb46:
  %t217 = call ptr @__olang_region_make(ptr %v0)
  %t218 = ptrtoint ptr %t217 to i64
  store i64 %t218, ptr %l113, !tbaa !24
  br label %bb47
bb47:
  %t219 = load ptr, ptr %l14, !tbaa !29
  %t221 = getelementptr %"compiler/load:Module", ptr %t219, i32 0, i32 0
  %t222 = load { i64, ptr }, ptr %t221, !tbaa !27
  %t224 = call { i32, %"compiler/source:Source" } @compiler_2fsource_2eSource_2eRead(ptr %v0, ptr %v0, { i64, ptr } %t222)
  %t225 = extractvalue { i32, %"compiler/source:Source" } %t224, 1
  %t226 = extractvalue { i32, %"compiler/source:Source" } %t224, 0
  store i32 %t226, ptr %l119
  %t227 = icmp ne i32 %t226, 0
  br i1 %t227, label %bb49, label %ok.228, !prof !99
ok.228:
  store %"compiler/source:Source" %t225, ptr %l118
  br label %bb48
bb48:
  %t229 = load %"compiler/source:Source", ptr %l118
  store %"compiler/source:Source" %t229, ptr %l115
  br label %bb60
bb49:
  %t230 = load i32, ptr %l119, !tbaa !23
  %t231 = ashr i32 %t230, 16
  %t233 = icmp eq i32 %t231, 1
  store i1 %t233, ptr %l121, !tbaa !21
  %t234 = load i32, ptr %l119, !tbaa !23
  %t235 = ashr i32 %t234, 16
  %t237 = icmp eq i32 %t235, 1
  br i1 %t237, label %bb50, label %bb51
bb50:
  call void @__olang_errpay_pop()
  br label %bb51
bb51:
  br label %bb52
bb52:
  %t239 = load ptr, ptr %l0, !tbaa !29
  %t241 = getelementptr %"compiler/load:Loader", ptr %t239, i32 0, i32 4
  %t242 = load ptr, ptr %t241, !tbaa !29
  %t243 = load ptr, ptr %l14, !tbaa !29
  %t245 = getelementptr %"compiler/load:Module", ptr %t243, i32 0, i32 0
  %t246 = load { i64, ptr }, ptr %t245, !tbaa !27
  %t249 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eAddFile(ptr %v0, ptr %v0, ptr %v0, ptr %t242, { i64, ptr } %t246, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d79, i32 0, i32 1) }, i1 false)
  store i64 %t249, ptr %l128
  br label %bb53
bb53:
  %t250 = load i64, ptr %l128, !tbaa !24
  %t251 = load ptr, ptr %l0, !tbaa !29
  %t253 = getelementptr %"compiler/load:Loader", ptr %t251, i32 0, i32 4
  %t254 = load ptr, ptr %t253, !tbaa !29
  store ptr %t254, ptr %l130, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t256
  %t257 = getelementptr { i64, [3 x i64] }, ptr %t256, i32 0, i32 0
  store i64 1, ptr %t257
  %t259 = insertvalue { i64 } undef, i64 %t250, 0
  %t260 = getelementptr { i64, [3 x i64] }, ptr %t256, i32 0, i32 1
  store { i64 } %t259, ptr %t260
  %t261 = load { i64, [3 x i64] }, ptr %t256
  store { i64, [3 x i64] } %t261, ptr %l132
  %t262 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCannotOpen(ptr %v0)
  store %"compiler/diagmsg:Msg" %t262, ptr %l133
  br label %bb54
bb54:
  %t263 = load ptr, ptr %l130, !tbaa !29
  %t264 = load { i64, [3 x i64] }, ptr %l132
  %t265 = load %"compiler/diagmsg:Msg", ptr %l133
  %t266 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t263, { i64, [3 x i64] } %t264, %"compiler/diagmsg:Msg" %t265)
  store i64 %t266, ptr %l134
  br label %bb55
bb55:
  %t267 = load ptr, ptr %l0, !tbaa !29
  %t269 = getelementptr %"compiler/load:Loader", ptr %t267, i32 0, i32 10
  %t271 = call { i32, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H30b952b85dc190b6cd5306b9d98a7749(ptr %v0, ptr %v0, ptr %t269)
  %t272 = extractvalue { i32, ptr } %t271, 1
  %t273 = extractvalue { i32, ptr } %t271, 0
  store i32 %t273, ptr %l139
  %t274 = icmp ne i32 %t273, 0
  br i1 %t274, label %bb57, label %ok.275, !prof !99
ok.275:
  store ptr %t272, ptr %l138
  br label %bb56
bb56:
  %t276 = load ptr, ptr %l138, !tbaa !29
  store ptr %t276, ptr %l135, !tbaa !29
  br label %bb59
bb57:
  br label %bb58
bb58:
  br label %bb59
bb59:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb60:
  %t278 = load %"compiler/source:Source", ptr %l115
  %t279 = load i64, ptr %l113
  %t280 = inttoptr i64 %t279 to ptr
  %t281 = call ptr @__olang_scope_alloc_a(ptr %t280, i64 48, i64 8)
  store %"compiler/source:Source" %t278, ptr %t281
  %t282 = load ptr, ptr %l112, !tbaa !29
  %t283 = getelementptr %"compiler/load:Module", ptr %t282, i32 0, i32 6
  %t284 = load ptr, ptr %t283, !tbaa !29
  store ptr %t284, ptr %l142, !tbaa !29
  %t286 = load ptr, ptr %l112, !tbaa !29
  %t287 = getelementptr %"compiler/load:Module", ptr %t286, i32 0, i32 6
  store ptr %t281, ptr %t287, !tbaa !29
  %t288 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e6
  br i1 %t288, label %bb61, label %bb62
bb61:
  %t290 = load ptr, ptr %l142
  call void @__olang_region_release(ptr %t290)
  store ptr null, ptr %l142
  br label %bb62
bb62:
  br label %bb63
bb63:
  %t291 = load ptr, ptr %l14, !tbaa !29
  %t292 = load i1, ptr %l4, !tbaa !21
  %t295 = getelementptr %"compiler/load:Module", ptr %t291, i32 0, i32 30
  store i1 %t292, ptr %t295, !tbaa !21
  %t296 = load ptr, ptr %l14, !tbaa !29
  store ptr %t296, ptr %l146, !tbaa !29
  %t297 = load ptr, ptr %l0, !tbaa !29
  %t299 = getelementptr %"compiler/load:Loader", ptr %t297, i32 0, i32 4
  %t300 = load ptr, ptr %t299, !tbaa !29
  store ptr %t300, ptr %l148, !tbaa !29
  %t301 = load ptr, ptr %l14, !tbaa !29
  %t303 = getelementptr %"compiler/load:Module", ptr %t301, i32 0, i32 0
  %t304 = load { i64, ptr }, ptr %t303, !tbaa !27
  store { i64, ptr } %t304, ptr %l150, !tbaa !27
  %t305 = load ptr, ptr %l14, !tbaa !29
  %t307 = getelementptr %"compiler/load:Module", ptr %t305, i32 0, i32 6
  %t308 = load ptr, ptr %t307, !tbaa !29
  %t310 = icmp eq ptr %t308, null
  br i1 %t310, label %bb64, label %bb65
bb64:
  call void @__olang_check_failed(ptr @olang_loc_bf0719959bfa757a_6a83aba191150c56)
  unreachable
bb65:
  br label %bb66
bb66:
  %t312 = load ptr, ptr %l14, !tbaa !29
  %t314 = getelementptr %"compiler/load:Module", ptr %t312, i32 0, i32 6
  %t315 = load ptr, ptr %t314, !tbaa !29
  %t318 = getelementptr %"compiler/source:Source", ptr %t315, i32 0, i32 1
  %t319 = load { i64, ptr }, ptr %t318, !tbaa !27
  store { i64, ptr } %t319, ptr %l157, !tbaa !27
  %t320 = load ptr, ptr %l14, !tbaa !29
  %t322 = getelementptr %"compiler/load:Module", ptr %t320, i32 0, i32 2
  %t323 = load { i64, ptr }, ptr %t322, !tbaa !27
  %t325 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t323, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d80, i32 0, i32 1) })
  store i1 %t325, ptr %l160
  br label %bb67
bb67:
  %t326 = load i1, ptr %l160, !tbaa !21
  br i1 %t326, label %bb68, label %bb69
bb68:
  store i1 true, ptr %l161, !tbaa !21
  br label %bb70
bb69:
  %t327 = load i1, ptr %l4, !tbaa !21
  store i1 %t327, ptr %l161, !tbaa !21
  br label %bb70
bb70:
  %t329 = load ptr, ptr %l148, !tbaa !29
  %t330 = load { i64, ptr }, ptr %l150, !tbaa !27
  %t331 = load { i64, ptr }, ptr %l157, !tbaa !27
  %t332 = load i1, ptr %l161, !tbaa !21
  %t333 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eAddFile(ptr %v0, ptr %v0, ptr %v0, ptr %t329, { i64, ptr } %t330, { i64, ptr } %t331, i1 %t332)
  store i64 %t333, ptr %l163
  br label %bb71
bb71:
  %t334 = load i64, ptr %l163, !tbaa !24
  %t335 = load ptr, ptr %l146, !tbaa !29
  %t336 = getelementptr %"compiler/load:Module", ptr %t335, i32 0, i32 4
  store i64 %t334, ptr %t336, !tbaa !24
  %t337 = load ptr, ptr %l14, !tbaa !29
  store ptr %t337, ptr %l164, !tbaa !29
  %t338 = load ptr, ptr %l14, !tbaa !29
  %t340 = getelementptr %"compiler/load:Module", ptr %t338, i32 0, i32 6
  %t341 = load ptr, ptr %t340, !tbaa !29
  %t343 = icmp eq ptr %t341, null
  br i1 %t343, label %bb72, label %bb73
bb72:
  call void @__olang_check_failed(ptr @olang_loc_97fda29c929b9401_a297b77e137a783d)
  unreachable
bb73:
  br label %bb74
bb74:
  %t345 = load ptr, ptr %l14, !tbaa !29
  %t347 = getelementptr %"compiler/load:Module", ptr %t345, i32 0, i32 6
  %t348 = load ptr, ptr %t347, !tbaa !29
  %t351 = getelementptr %"compiler/source:Source", ptr %t348, i32 0, i32 1
  %t352 = load { i64, ptr }, ptr %t351, !tbaa !27
  %t354 = call %"compiler/scan:Tokens" @compiler_2fscan_2eTokens_2eScan(ptr %v0, ptr %v0, { i64, ptr } %t352)
  store %"compiler/scan:Tokens" %t354, ptr %l172
  br label %bb75
bb75:
  %t355 = load %"compiler/scan:Tokens", ptr %l172
  %t356 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 64, i64 8)
  store %"compiler/scan:Tokens" %t355, ptr %t356
  %t358 = load ptr, ptr %l164, !tbaa !29
  %t359 = getelementptr %"compiler/load:Module", ptr %t358, i32 0, i32 7
  store ptr %t356, ptr %t359, !tbaa !29
  %t360 = load ptr, ptr %l14, !tbaa !29
  %t362 = getelementptr %"compiler/load:Module", ptr %t360, i32 0, i32 7
  %t363 = load ptr, ptr %t362, !tbaa !29
  %t365 = icmp eq ptr %t363, null
  br i1 %t365, label %bb76, label %bb77
bb76:
  call void @__olang_check_failed(ptr @olang_loc_8eb73d0fe26fae48_56cde13f0d79d76c)
  unreachable
bb77:
  br label %bb78
bb78:
  %t367 = load ptr, ptr %l14, !tbaa !29
  %t369 = getelementptr %"compiler/load:Module", ptr %t367, i32 0, i32 7
  %t370 = load ptr, ptr %t369, !tbaa !29
  %t373 = getelementptr %"compiler/scan:Tokens", ptr %t370, i32 0, i32 3
  %t374 = load { i64, ptr }, ptr %t373, !tbaa !27
  store { i64, ptr } %t374, ptr %l17, !tbaa !27
  store i64 0, ptr %l18, !tbaa !24
  %t376 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t378 = extractvalue { i64, ptr } %t376, 0
  store i64 %t378, ptr %l19, !tbaa !24
  br label %bb79
bb79:
  %t380 = load i64, ptr %l18, !tbaa !24
  %t381 = load i64, ptr %l19, !tbaa !24
  %t384 = icmp slt i64 %t380, %t381
  %t386 = xor i1 %t384, true
  br i1 %t386, label %bb80, label %bb81
bb80:
  br label %bb90
bb81:
  br label %bb82
bb82:
  %t388 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t388, ptr %l187, !tbaa !27
  %t389 = load i64, ptr %l18, !tbaa !24
  %t391 = getelementptr { i64, ptr }, ptr %l187, i32 0, i32 1
  %t392 = load ptr, ptr %t391, !tbaa !27
  %t393 = getelementptr %"compiler/scan:Diag", ptr %t392, i64 %t389
  %t394 = load %"compiler/scan:Diag", ptr %t393
  store %"compiler/scan:Diag" %t394, ptr %l20
  %t396 = getelementptr %"compiler/scan:Diag", ptr %l20, i32 0, i32 1
  %t397 = load i32, ptr %t396, !tbaa !23
  %t399 = load ptr, ptr %l0, !tbaa !29
  %t401 = getelementptr %"compiler/load:Loader", ptr %t399, i32 0, i32 4
  %t402 = load ptr, ptr %t401, !tbaa !29
  store ptr %t402, ptr %l192, !tbaa !29
  %t403 = load ptr, ptr %l14, !tbaa !29
  %t405 = getelementptr %"compiler/load:Module", ptr %t403, i32 0, i32 4
  %t406 = load i64, ptr %t405, !tbaa !24
  %t409 = sext i32 %t397 to i64
  %t410 = getelementptr %"compiler/scan:Diag", ptr %l20, i32 0, i32 2
  %t411 = load i32, ptr %t410, !tbaa !23
  %t413 = sext i32 %t411 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t414
  %t415 = getelementptr { i64, [3 x i64] }, ptr %t414, i32 0, i32 0
  store i64 3, ptr %t415
  %t417 = insertvalue { i64, i64, i64 } undef, i64 %t406, 0
  %t419 = insertvalue { i64, i64, i64 } %t417, i64 %t409, 1
  %t421 = insertvalue { i64, i64, i64 } %t419, i64 %t413, 2
  %t422 = getelementptr { i64, [3 x i64] }, ptr %t414, i32 0, i32 1
  store { i64, i64, i64 } %t421, ptr %t422
  %t423 = load { i64, [3 x i64] }, ptr %t414
  store { i64, [3 x i64] } %t423, ptr %l199
  store i32 57, ptr %l200
  %t424 = load %"compiler/scan:Diag", ptr %l20
  %t426 = call { i64, ptr } @compiler_2fscan_2ecompiler_2fscan_3aDiag_2eRule(ptr %v0, %"compiler/scan:Diag" %t424)
  store { i64, ptr } %t426, ptr %l202
  br label %bb83
bb83:
  %t427 = ptrtoint ptr %v0 to i64
  store i64 %t427, ptr %l203, !tbaa !24
  %t428 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t428, label %bb84, label %bb85
bb84:
  %t430 = call ptr @__olang_region_make(ptr %v0)
  %t431 = ptrtoint ptr %t430 to i64
  store i64 %t431, ptr %l203, !tbaa !24
  br label %bb85
bb85:
  %t432 = load %"compiler/scan:Diag", ptr %l20
  %t433 = load i64, ptr %l203
  %t434 = inttoptr i64 %t433 to ptr
  %t436 = call { i64, ptr } @compiler_2fscan_2ecompiler_2fscan_3aDiag_2eMessage(ptr %t434, %"compiler/scan:Diag" %t432)
  store { i64, ptr } %t436, ptr %l206
  br label %bb86
bb86:
  %t437 = load { i64, ptr }, ptr %l206, !tbaa !27
  %t438 = load i64, ptr %l203
  %t439 = inttoptr i64 %t438 to ptr
  %t440 = extractvalue { i64, ptr } %t437, 0
  %t441 = extractvalue { i64, ptr } %t437, 1
  %t442 = mul i64 %t440, 1
  %t443 = call ptr @__olang_scope_alloc(ptr %t439, i64 %t442)
  call void @llvm.memcpy.p0.p0.i64(ptr %t443, ptr %t441, i64 %t442, i1 false)
  %t444 = insertvalue { i64, ptr } undef, i64 %t440, 0
  %t445 = insertvalue { i64, ptr } %t444, ptr %t443, 1
  %t446 = load i32, ptr %l200, !range !{i32 0, i32 884}
  %t447 = load { i64, ptr }, ptr %l202, !tbaa !27
  %t449 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, i32 %t446, { i64, ptr } %t447, { i64, ptr } %t445)
  store %"compiler/diagmsg:Msg" %t449, ptr %l208
  br label %bb87
bb87:
  %t450 = load ptr, ptr %l192, !tbaa !29
  %t451 = load { i64, [3 x i64] }, ptr %l199
  %t452 = load %"compiler/diagmsg:Msg", ptr %l208
  %t453 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t450, { i64, [3 x i64] } %t451, %"compiler/diagmsg:Msg" %t452)
  store i64 %t453, ptr %l209
  br label %bb88
bb88:
  br label %bb89
bb89:
  %t454 = load i64, ptr %l18, !tbaa !24
  %t456 = add i64 %t454, 1
  store i64 %t456, ptr %l18, !tbaa !24
  br label %bb79
bb90:
  %t458 = load ptr, ptr %l0, !tbaa !29
  %t459 = load ptr, ptr %l14, !tbaa !29
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2eprescan(ptr %v0, ptr %v0, ptr %t458, ptr %t459)
  br label %bb91
bb91:
  %t462 = load ptr, ptr %l14, !tbaa !29
  store ptr %t462, ptr %l214, !tbaa !29
  %t463 = ptrtoint ptr %v0 to i64
  store i64 %t463, ptr %l215, !tbaa !24
  %t464 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e12
  br i1 %t464, label %bb92, label %bb93
bb92:
  %t466 = call ptr @__olang_region_make(ptr %v0)
  %t467 = ptrtoint ptr %t466 to i64
  store i64 %t467, ptr %l215, !tbaa !24
  br label %bb93
bb93:
  %t469 = load i64, ptr %l215
  %t470 = inttoptr i64 %t469 to ptr
  call void @compiler_2fparse_3aOracle_2ector(ptr %t468, ptr %t470)
  call void @llvm.memmove.p0.p0.i64(ptr %l217, ptr %t468, i64 288, i1 false)
  br label %bb94
bb94:
  %t471 = load i64, ptr %l215
  %t472 = inttoptr i64 %t471 to ptr
  %t473 = call ptr @__olang_scope_alloc_a(ptr %t472, i64 288, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t473, ptr %l217, i64 288, i1 false)
  %t474 = load ptr, ptr %l214, !tbaa !29
  %t475 = getelementptr %"compiler/load:Module", ptr %t474, i32 0, i32 12
  %t476 = load ptr, ptr %t475, !tbaa !29
  store ptr %t476, ptr %l219, !tbaa !29
  %t478 = load ptr, ptr %l214, !tbaa !29
  %t479 = getelementptr %"compiler/load:Module", ptr %t478, i32 0, i32 12
  store ptr %t473, ptr %t479, !tbaa !29
  %t480 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e12
  br i1 %t480, label %bb95, label %bb96
bb95:
  %t482 = load ptr, ptr %l219
  call void @__olang_region_release(ptr %t482)
  store ptr null, ptr %l219
  br label %bb96
bb96:
  %t483 = load ptr, ptr %l0, !tbaa !29
  %t484 = load ptr, ptr %l14, !tbaa !29
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2eownNames(ptr %v0, ptr %v0, ptr %t483, ptr %t484)
  br label %bb97
bb97:
  %t487 = load ptr, ptr %l0, !tbaa !29
  %t488 = load i64, ptr %l13, !tbaa !24
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2eloadImports(ptr %v0, ptr %t487, i64 %t488)
  br label %bb98
bb98:
  %t491 = load ptr, ptr %l0, !tbaa !29
  %t492 = load i64, ptr %l13, !tbaa !24
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2eparse(ptr %v0, ptr %t491, i64 %t492)
  br label %bb99
bb99:
  %t495 = load i64, ptr %l13, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t495, ptr %rv
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
  %lp15 = alloca ptr
  %lp16 = alloca ptr
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
  %l116 = alloca { i64, ptr }
  %l117 = alloca i64
  %l118 = alloca { i64, ptr }
  %l119 = alloca { i64, ptr }
  %l120 = alloca i64
  %l121 = alloca { i64, ptr }
  %l125 = alloca i64
  %l130 = alloca i64
  %l134 = alloca i64
  %l137 = alloca i64
  %l158 = alloca i1
  %l162 = alloca %"compiler/load:Import"
  %l165 = alloca i1
  %l169 = alloca %"compiler/load:Import"
  %l172 = alloca i1
  %l177 = alloca ptr
  %l181 = alloca { i64, [3 x i64] }
  %l183 = alloca %"compiler/diagmsg:Msg"
  %l184 = alloca i64
  %l189 = alloca ptr
  %s2 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s12 = alloca %olang.scope
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
  %t128 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportAliasInvalid(ptr %v0, ptr %v0, { i64, ptr } %t126)
  store %"compiler/diagmsg:Msg" %t128, ptr %l88
  br label %bb29
bb29:
  %t129 = load ptr, ptr %l82, !tbaa !29
  %t130 = load { i64, [3 x i64] }, ptr %l86
  %t131 = load %"compiler/diagmsg:Msg", ptr %l88
  %t132 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t129, { i64, [3 x i64] } %t130, %"compiler/diagmsg:Msg" %t131)
  store i64 %t132, ptr %l89
  br label %bb30
bb30:
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
  %t171 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLinkOnOlangImport(ptr %v0)
  store %"compiler/diagmsg:Msg" %t171, ptr %l108
  br label %bb44
bb44:
  %t172 = load ptr, ptr %l103, !tbaa !29
  %t173 = load { i64, [3 x i64] }, ptr %l107
  %t174 = load %"compiler/diagmsg:Msg", ptr %l108
  %t175 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t172, { i64, [3 x i64] } %t173, %"compiler/diagmsg:Msg" %t174)
  store i64 %t175, ptr %l109
  br label %bb45
bb45:
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
  store { i64, ptr } %t190, ptr %l116, !tbaa !27
  %t191 = load { i64, ptr }, ptr %l116, !tbaa !27
  %t192 = extractvalue { i64, ptr } %t191, 0
  store i64 %t192, ptr %l117, !tbaa !24
  %t193 = load i64, ptr %l117, !tbaa !24
  %t194 = mul i64 %t193, 1
  %t195 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t194)
  %t196 = insertvalue { i64, ptr } undef, i64 %t193, 0
  %t197 = insertvalue { i64, ptr } %t196, ptr %t195, 1
  store { i64, ptr } %t197, ptr %l118, !tbaa !27
  %t198 = getelementptr { i64, ptr }, ptr %l118, i32 0, i32 1
  %t199 = load ptr, ptr %t198, !tbaa !27
  %t200 = getelementptr { i64, ptr }, ptr %l116, i32 0, i32 1
  %t201 = load ptr, ptr %t200, !tbaa !27
  %t202 = load i64, ptr %l117, !tbaa !24
  %t203 = mul i64 %t202, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t199, ptr %t201, i64 %t203, i1 false)
  %t204 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 16, i64 8)
  store ptr %t204, ptr %lp15
  %t205 = load { i64, ptr }, ptr %l118, !tbaa !27
  %t206 = load ptr, ptr %lp15
  store { i64, ptr } %t205, ptr %t206, !tbaa !27
  %t207 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l14, i32 0, i32 1
  %t208 = load { i64, ptr }, ptr %t207, !tbaa !27
  store { i64, ptr } %t208, ptr %l119, !tbaa !27
  %t209 = load { i64, ptr }, ptr %l119, !tbaa !27
  %t210 = extractvalue { i64, ptr } %t209, 0
  store i64 %t210, ptr %l120, !tbaa !24
  %t211 = load i64, ptr %l120, !tbaa !24
  %t212 = mul i64 %t211, 1
  %t213 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t212)
  %t214 = insertvalue { i64, ptr } undef, i64 %t211, 0
  %t215 = insertvalue { i64, ptr } %t214, ptr %t213, 1
  store { i64, ptr } %t215, ptr %l121, !tbaa !27
  %t216 = getelementptr { i64, ptr }, ptr %l121, i32 0, i32 1
  %t217 = load ptr, ptr %t216, !tbaa !27
  %t218 = getelementptr { i64, ptr }, ptr %l119, i32 0, i32 1
  %t219 = load ptr, ptr %t218, !tbaa !27
  %t220 = load i64, ptr %l120, !tbaa !24
  %t221 = mul i64 %t220, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t217, ptr %t219, i64 %t221, i1 false)
  %t222 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 16, i64 8)
  store ptr %t222, ptr %lp16
  %t223 = load { i64, ptr }, ptr %l121, !tbaa !27
  %t224 = load ptr, ptr %lp16
  store { i64, ptr } %t223, ptr %t224, !tbaa !27
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t226 = load ptr, ptr %lp15
  %t227 = load { i64, ptr }, ptr %t226, !tbaa !27
  %t228 = load ptr, ptr %lp16
  %t229 = load { i64, ptr }, ptr %t228, !tbaa !27
  %t233 = call i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2eload(ptr %v0, ptr %v0, ptr %v0, ptr %t225, { i64, ptr } %t227, { i64, ptr } %t229, i1 false, i1 false)
  store i64 %t233, ptr %l125
  br label %bb51
bb51:
  %t234 = load i64, ptr %l125, !tbaa !24
  store i64 %t234, ptr %l13, !tbaa !24
  call void @__olang_scope_close(ptr %s7)
  br label %bb52
bb52:
  %t235 = load i64, ptr %l13, !tbaa !24
  %t237 = icmp slt i64 %t235, 0
  br i1 %t237, label %bb53, label %bb54
bb53:
  call void @__olang_scope_close(ptr %s2)
  br label %bb88
bb54:
  br label %bb55
bb55:
  store i1 false, ptr %l17, !tbaa !21
  store i64 0, ptr %l18, !tbaa !24
  %t239 = load ptr, ptr %l2, !tbaa !29
  %t241 = getelementptr %"compiler/load:Module", ptr %t239, i32 0, i32 11
  %t243 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eLen_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %t241)
  store i64 %t243, ptr %l130
  br label %bb56
bb56:
  %t244 = load i64, ptr %l130, !tbaa !24
  store i64 %t244, ptr %l19, !tbaa !24
  store i64 1, ptr %l20, !tbaa !24
  %t245 = load i64, ptr %l19, !tbaa !24
  %t246 = load i64, ptr %l18, !tbaa !24
  %t249 = icmp sgt i64 %t245, %t246
  br i1 %t249, label %bb57, label %bb58
bb57:
  %t251 = load i64, ptr %l20, !tbaa !24
  %t253 = icmp sgt i64 %t251, 0
  br i1 %t253, label %bb59, label %bb60
bb58:
  store i64 0, ptr %l134, !tbaa !24
  br label %bb62
bb59:
  %t255 = load i64, ptr %l19, !tbaa !24
  %t256 = load i64, ptr %l18, !tbaa !24
  %t259 = sub i64 %t255, %t256
  %t260 = load i64, ptr %l20, !tbaa !24
  %t263 = add i64 %t259, %t260
  %t265 = sub i64 %t263, 1
  %t266 = load i64, ptr %l20, !tbaa !24
  %t269 = sdiv i64 %t265, %t266
  store i64 %t269, ptr %l137, !tbaa !24
  br label %bb61
bb60:
  store i64 0, ptr %l137, !tbaa !24
  br label %bb61
bb61:
  %t271 = load i64, ptr %l137, !tbaa !24
  store i64 %t271, ptr %l134, !tbaa !24
  br label %bb62
bb62:
  %t272 = load i64, ptr %l134, !tbaa !24
  store i64 %t272, ptr %l21, !tbaa !24
  store i64 0, ptr %l22, !tbaa !24
  br label %bb63
bb63:
  store %olang.scope zeroinitializer, ptr %s12
  %t273 = load i64, ptr %l22, !tbaa !24
  %t274 = load i64, ptr %l21, !tbaa !24
  %t277 = icmp slt i64 %t273, %t274
  %t279 = xor i1 %t277, true
  br i1 %t279, label %bb64, label %bb65
bb64:
  call void @__olang_scope_close(ptr %s12)
  br label %bb80
bb65:
  br label %bb66
bb66:
  %t281 = load i64, ptr %l18, !tbaa !24
  %t282 = load i64, ptr %l22, !tbaa !24
  %t283 = load i64, ptr %l20, !tbaa !24
  %t286 = mul i64 %t282, %t283
  %t289 = add i64 %t281, %t286
  store i64 %t289, ptr %l23, !tbaa !24
  %t291 = load i64, ptr %l23, !tbaa !24
  %t292 = load i64, ptr %l8, !tbaa !24
  %t295 = icmp ne i64 %t291, %t292
  br i1 %t295, label %bb67, label %bb68
bb67:
  %t297 = load ptr, ptr %l2, !tbaa !29
  %t299 = getelementptr %"compiler/load:Module", ptr %t297, i32 0, i32 11
  %t300 = load i64, ptr %l23, !tbaa !24
  %t303 = call %"compiler/load:Import" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eAt_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %s12, ptr %t299, i64 %t300)
  store %"compiler/load:Import" %t303, ptr %l162
  br label %bb69
bb68:
  store i1 false, ptr %l158, !tbaa !21
  br label %bb70
bb69:
  %t304 = getelementptr %"compiler/load:Import", ptr %l162, i32 0, i32 5
  %t305 = load i64, ptr %t304, !tbaa !24
  %t307 = icmp sge i64 %t305, 0
  store i1 %t307, ptr %l158, !tbaa !21
  br label %bb70
bb70:
  %t309 = load i1, ptr %l158, !tbaa !21
  br i1 %t309, label %bb71, label %bb72
bb71:
  %t310 = load ptr, ptr %l2, !tbaa !29
  %t312 = getelementptr %"compiler/load:Module", ptr %t310, i32 0, i32 11
  %t313 = load i64, ptr %l23, !tbaa !24
  %t316 = call %"compiler/load:Import" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eAt_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %v0, ptr %t312, i64 %t313)
  store %"compiler/load:Import" %t316, ptr %l169
  br label %bb73
bb72:
  store i1 false, ptr %l165, !tbaa !21
  br label %bb75
bb73:
  %t317 = getelementptr %"compiler/load:Import", ptr %l169, i32 0, i32 2
  %t318 = load { i64, ptr }, ptr %t317, !tbaa !27
  %t319 = getelementptr %"compiler/load:Import", ptr %l9, i32 0, i32 2
  %t320 = load { i64, ptr }, ptr %t319, !tbaa !27
  %t323 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v0, { i64, ptr } %t318, { i64, ptr } %t320)
  store i1 %t323, ptr %l172
  br label %bb74
bb74:
  %t324 = load i1, ptr %l172, !tbaa !21
  store i1 %t324, ptr %l165, !tbaa !21
  br label %bb75
bb75:
  %t325 = load i1, ptr %l165, !tbaa !21
  br i1 %t325, label %bb76, label %bb77
bb76:
  store i1 true, ptr %l17, !tbaa !21
  br label %bb78
bb77:
  br label %bb78
bb78:
  call void @__olang_scope_close(ptr %s12)
  br label %bb79
bb79:
  %t326 = load i64, ptr %l22, !tbaa !24
  %t328 = add i64 %t326, 1
  store i64 %t328, ptr %l22, !tbaa !24
  br label %bb63
bb80:
  %t330 = load i1, ptr %l17, !tbaa !21
  br i1 %t330, label %bb81, label %bb82
bb81:
  %t332 = load ptr, ptr %l0, !tbaa !29
  %t334 = getelementptr %"compiler/load:Loader", ptr %t332, i32 0, i32 4
  %t335 = load ptr, ptr %t334, !tbaa !29
  store ptr %t335, ptr %l177, !tbaa !29
  %t336 = load ptr, ptr %l0, !tbaa !29
  %t337 = load ptr, ptr %l2, !tbaa !29
  %t338 = getelementptr %"compiler/load:Import", ptr %l9, i32 0, i32 1
  %t339 = load %"compiler/source:Span", ptr %t338
  %t343 = call { i64, [3 x i64] } @compiler_2fload_2ecompiler_2fload_3aLoader_2eat(ptr %v0, ptr %v0, ptr %t336, ptr %t337, %"compiler/source:Span" %t339)
  store { i64, [3 x i64] } %t343, ptr %l181
  br label %bb83
bb82:
  br label %bb86
bb83:
  %t344 = getelementptr %"compiler/load:Import", ptr %l9, i32 0, i32 2
  %t345 = load { i64, ptr }, ptr %t344, !tbaa !27
  %t347 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportAliasConflict(ptr %v0, ptr %v0, { i64, ptr } %t345)
  store %"compiler/diagmsg:Msg" %t347, ptr %l183
  br label %bb84
bb84:
  %t348 = load ptr, ptr %l177, !tbaa !29
  %t349 = load { i64, [3 x i64] }, ptr %l181
  %t350 = load %"compiler/diagmsg:Msg", ptr %l183
  %t351 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t348, { i64, [3 x i64] } %t349, %"compiler/diagmsg:Msg" %t350)
  store i64 %t351, ptr %l184
  br label %bb85
bb85:
  call void @__olang_scope_close(ptr %s2)
  br label %bb88
bb86:
  %t352 = load i64, ptr %l8, !tbaa !24
  %t354 = load ptr, ptr %l2, !tbaa !29
  %t356 = getelementptr %"compiler/load:Module", ptr %t354, i32 0, i32 11
  %t360 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eRefMut_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %v0, ptr %t356, i64 %t352)
  store ptr %t360, ptr %l189
  br label %bb87
bb87:
  %t361 = load ptr, ptr %l189, !tbaa !29
  %t363 = load i64, ptr %l13, !tbaa !24
  %t366 = getelementptr %"compiler/load:Import", ptr %t361, i32 0, i32 5
  store i64 %t363, ptr %t366, !tbaa !24
  call void @__olang_scope_close(ptr %s2)
  br label %bb88
bb88:
  %t367 = load i64, ptr %l7, !tbaa !24
  %t369 = add i64 %t367, 1
  store i64 %t369, ptr %l7, !tbaa !24
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
  %l5 = alloca ptr
  %l6 = alloca i64
  %l14 = alloca { i64, ptr }
  %l20 = alloca ptr
  %l21 = alloca i64
  %l23 = alloca i64
  %l28 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l46 = alloca ptr
  %l47 = alloca i64
  %l49 = alloca i64
  %l54 = alloca { i64, ptr }
  %l60 = alloca ptr
  %l61 = alloca ptr
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
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
  %t29 = call ptr @compiler_2fload_2etypeNames(ptr %v1, ptr %v1, ptr %v1, { i64, ptr } %t27, ptr %t26)
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
  %t34 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v1, ptr %t32)
  store i64 %t34, ptr %l23
  br label %bb9
bb9:
  %t35 = load i64, ptr %l21, !tbaa !24
  %t36 = load i64, ptr %l23, !tbaa !24
  %t37 = icmp slt i64 %t35, %t36
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb10, label %bb11
bb10:
  br label %bb16
bb11:
  br label %bb12
bb12:
  %t41 = load ptr, ptr %l2, !tbaa !29
  %t42 = load i64, ptr %l3, !tbaa !24
  %t45 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t41, i64 %t42)
  store { i64, ptr } %t45, ptr %l28
  br label %bb13
bb13:
  %t46 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t47 = load ptr, ptr %l1, !tbaa !29
  %t49 = getelementptr %"compiler/load:Module", ptr %t47, i32 0, i32 9
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t49, { i64, ptr } %t46)
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t53 = load i64, ptr %l3, !tbaa !24
  %t55 = add i64 %t53, 1
  store i64 %t55, ptr %l3, !tbaa !24
  br label %bb8
bb16:
  %t57 = load ptr, ptr %l1, !tbaa !29
  %t59 = getelementptr %"compiler/load:Module", ptr %t57, i32 0, i32 6
  %t60 = load ptr, ptr %t59, !tbaa !29
  %t62 = icmp eq ptr %t60, null
  br i1 %t62, label %bb17, label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_4a5bc26e34bf81_f78399c125ad415d)
  unreachable
bb18:
  br label %bb19
bb19:
  %t64 = load ptr, ptr %l1, !tbaa !29
  %t66 = getelementptr %"compiler/load:Module", ptr %t64, i32 0, i32 6
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t70 = getelementptr %"compiler/source:Source", ptr %t67, i32 0, i32 1
  %t71 = load { i64, ptr }, ptr %t70, !tbaa !27
  store { i64, ptr } %t71, ptr %l40, !tbaa !27
  %t72 = load ptr, ptr %l1, !tbaa !29
  %t74 = getelementptr %"compiler/load:Module", ptr %t72, i32 0, i32 7
  %t75 = load ptr, ptr %t74, !tbaa !29
  %t77 = icmp eq ptr %t75, null
  br i1 %t77, label %bb20, label %bb21
bb20:
  call void @__olang_check_failed(ptr @olang_loc_4a5bc26e34bf81_f78399c125ad415d)
  unreachable
bb21:
  br label %bb22
bb22:
  %t79 = load ptr, ptr %l1, !tbaa !29
  %t81 = getelementptr %"compiler/load:Module", ptr %t79, i32 0, i32 7
  %t82 = load ptr, ptr %t81, !tbaa !29
  %t83 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t85 = call ptr @compiler_2fparse_2eGenericFnNames(ptr %v1, ptr %v1, ptr %v1, { i64, ptr } %t83, ptr %t82)
  store ptr %t85, ptr %l46
  br label %bb23
bb23:
  %t86 = load ptr, ptr %l46, !tbaa !29
  store ptr %t86, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb24
bb24:
  %t87 = load i64, ptr %l6, !tbaa !24
  store i64 %t87, ptr %l47, !tbaa !24
  %t88 = load ptr, ptr %l5, !tbaa !29
  %t90 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v1, ptr %t88)
  store i64 %t90, ptr %l49
  br label %bb25
bb25:
  %t91 = load i64, ptr %l47, !tbaa !24
  %t92 = load i64, ptr %l49, !tbaa !24
  %t93 = icmp slt i64 %t91, %t92
  %t95 = xor i1 %t93, true
  br i1 %t95, label %bb26, label %bb27
bb26:
  br label %bb32
bb27:
  br label %bb28
bb28:
  %t97 = load ptr, ptr %l5, !tbaa !29
  %t98 = load i64, ptr %l6, !tbaa !24
  %t101 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t97, i64 %t98)
  store { i64, ptr } %t101, ptr %l54
  br label %bb29
bb29:
  %t102 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t103 = load ptr, ptr %l1, !tbaa !29
  %t105 = getelementptr %"compiler/load:Module", ptr %t103, i32 0, i32 10
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t105, { i64, ptr } %t102)
  br label %bb30
bb30:
  br label %bb31
bb31:
  %t109 = load i64, ptr %l6, !tbaa !24
  %t111 = add i64 %t109, 1
  store i64 %t111, ptr %l6, !tbaa !24
  br label %bb24
bb32:
  store ptr %a0, ptr %l60, !tbaa !29
  %t114 = load ptr, ptr %l1, !tbaa !29
  store ptr %t114, ptr %l61, !tbaa !29
  %t115 = load ptr, ptr %l1, !tbaa !29
  %t117 = getelementptr %"compiler/load:Module", ptr %t115, i32 0, i32 7
  %t118 = load ptr, ptr %t117, !tbaa !29
  %t120 = icmp eq ptr %t118, null
  br i1 %t120, label %bb33, label %bb34
bb33:
  call void @__olang_check_failed(ptr @olang_loc_75be0ecbfd40364c_3ba616ba9e8cb88)
  unreachable
bb34:
  br label %bb35
bb35:
  %t122 = load ptr, ptr %l1, !tbaa !29
  %t124 = getelementptr %"compiler/load:Module", ptr %t122, i32 0, i32 7
  %t125 = load ptr, ptr %t124, !tbaa !29
  %t128 = getelementptr %"compiler/scan:Tokens", ptr %t125, i32 0, i32 0
  %t129 = load { i64, ptr }, ptr %t128, !tbaa !27
  %t131 = extractvalue { i64, ptr } %t129, 0
  %t133 = sub i64 %t131, 1
  %t134 = load ptr, ptr %l60, !tbaa !29
  %t135 = load ptr, ptr %l61, !tbaa !29
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2eregion(ptr %v0, ptr %v1, ptr %t134, ptr %t135, i64 0, i64 %t133, i64 -1)
  br label %bb36
bb36:
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
  %s3 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s23 = alloca %olang.scope
  %s24 = alloca %olang.scope
  %s27 = alloca %olang.scope
  %s33 = alloca %olang.scope
  %s34 = alloca %olang.scope
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
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/load:Loader", ptr %t27, i32 0, i32 4
  %t30 = load ptr, ptr %t29, !tbaa !29
  store ptr %t30, ptr %l37, !tbaa !29
  %t31 = load { i64, [3 x i64] }, ptr %l4
  store { i64, [3 x i64] } %t31, ptr %l38
  %t32 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportPathTooLong(ptr %v0)
  store %"compiler/diagmsg:Msg" %t32, ptr %l39
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t33 = load ptr, ptr %l37, !tbaa !29
  %t34 = load { i64, [3 x i64] }, ptr %l38
  %t35 = load %"compiler/diagmsg:Msg", ptr %l39
  %t36 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t33, { i64, [3 x i64] } %t34, %"compiler/diagmsg:Msg" %t35)
  store i64 %t36, ptr %l40
  br label %bb6
bb6:
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
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/load:Loader", ptr %t43, i32 0, i32 4
  %t46 = load ptr, ptr %t45, !tbaa !29
  store ptr %t46, ptr %l45, !tbaa !29
  %t47 = load { i64, [3 x i64] }, ptr %l4
  store { i64, [3 x i64] } %t47, ptr %l46
  %t48 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportHasExtension(ptr %v0)
  store %"compiler/diagmsg:Msg" %t48, ptr %l47
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t49 = load ptr, ptr %l45, !tbaa !29
  %t50 = load { i64, [3 x i64] }, ptr %l46
  %t51 = load %"compiler/diagmsg:Msg", ptr %l47
  %t52 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t49, { i64, [3 x i64] } %t50, %"compiler/diagmsg:Msg" %t51)
  store i64 %t52, ptr %l48
  br label %bb12
bb12:
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
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t248 = getelementptr %"compiler/load:Loader", ptr %t246, i32 0, i32 4
  %t249 = load ptr, ptr %t248, !tbaa !29
  store ptr %t249, ptr %l102, !tbaa !29
  %t250 = load { i64, [3 x i64] }, ptr %l4
  store { i64, [3 x i64] } %t250, ptr %l103
  %t251 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportLeavesRoot(ptr %v0, ptr %v0, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d97, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t251, ptr %l104
  br label %bb44
bb43:
  br label %bb46
bb44:
  %t252 = load ptr, ptr %l102, !tbaa !29
  %t253 = load { i64, [3 x i64] }, ptr %l103
  %t254 = load %"compiler/diagmsg:Msg", ptr %l104
  %t255 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t252, { i64, [3 x i64] } %t253, %"compiler/diagmsg:Msg" %t254)
  store i64 %t255, ptr %l105
  br label %bb45
bb45:
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
  %t289 = load ptr, ptr %l0, !tbaa !29
  %t291 = getelementptr %"compiler/load:Loader", ptr %t289, i32 0, i32 4
  %t292 = load ptr, ptr %t291, !tbaa !29
  store ptr %t292, ptr %l125, !tbaa !29
  %t293 = load { i64, [3 x i64] }, ptr %l4
  store { i64, [3 x i64] } %t293, ptr %l126
  %t294 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportRemoteNeedsFile(ptr %v0)
  store %"compiler/diagmsg:Msg" %t294, ptr %l127
  br label %bb61
bb60:
  br label %bb63
bb61:
  %t295 = load ptr, ptr %l125, !tbaa !29
  %t296 = load { i64, [3 x i64] }, ptr %l126
  %t297 = load %"compiler/diagmsg:Msg", ptr %l127
  %t298 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t295, { i64, [3 x i64] } %t296, %"compiler/diagmsg:Msg" %t297)
  store i64 %t298, ptr %l128
  br label %bb62
bb62:
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
  %t336 = load ptr, ptr %l0, !tbaa !29
  %t338 = getelementptr %"compiler/load:Loader", ptr %t336, i32 0, i32 4
  %t339 = load ptr, ptr %t338, !tbaa !29
  store ptr %t339, ptr %l147, !tbaa !29
  %t340 = load { i64, [3 x i64] }, ptr %l4
  store { i64, [3 x i64] } %t340, ptr %l148
  %t341 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportRemoteBadName(ptr %v0)
  store %"compiler/diagmsg:Msg" %t341, ptr %l149
  br label %bb78
bb69:
  br label %bb71
bb70:
  %t342 = load i32, ptr %l140, !tbaa !23
  %t343 = icmp eq i32 %t342, 65538
  br i1 %t343, label %bb72, label %bb73
bb71:
  %t345 = load ptr, ptr %l0, !tbaa !29
  %t347 = getelementptr %"compiler/load:Loader", ptr %t345, i32 0, i32 4
  %t348 = load ptr, ptr %t347, !tbaa !29
  store ptr %t348, ptr %l154, !tbaa !29
  %t349 = load { i64, [3 x i64] }, ptr %l4
  store { i64, [3 x i64] } %t349, ptr %l155
  %t350 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t352 = call { i64, ptr } @compiler_2fload_2ekey(ptr %s9, ptr %v0, { i64, ptr } %t350)
  store { i64, ptr } %t352, ptr %l157
  br label %bb80
bb72:
  br label %bb74
bb73:
  %t353 = load i32, ptr %l140, !tbaa !23
  %t354 = icmp eq i32 %t353, 65539
  br i1 %t354, label %bb75, label %bb76
bb74:
  %t356 = load ptr, ptr %l0, !tbaa !29
  %t358 = getelementptr %"compiler/load:Loader", ptr %t356, i32 0, i32 4
  %t359 = load ptr, ptr %t358, !tbaa !29
  store ptr %t359, ptr %l164, !tbaa !29
  %t360 = load { i64, [3 x i64] }, ptr %l4
  store { i64, [3 x i64] } %t360, ptr %l165
  %t361 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t363 = call { i64, ptr } @compiler_2fload_2ekey(ptr %s9, ptr %v0, { i64, ptr } %t361)
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
  %t375 = load ptr, ptr %l0, !tbaa !29
  %t377 = getelementptr %"compiler/load:Loader", ptr %t375, i32 0, i32 4
  %t378 = load ptr, ptr %t377, !tbaa !29
  store ptr %t378, ptr %l174, !tbaa !29
  %t379 = load { i64, [3 x i64] }, ptr %l4
  store { i64, [3 x i64] } %t379, ptr %l175
  %t380 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t382 = call { i64, ptr } @compiler_2fload_2ekey(ptr %s9, ptr %v0, { i64, ptr } %t380)
  store { i64, ptr } %t382, ptr %l177
  br label %bb86
bb78:
  %t383 = load ptr, ptr %l147, !tbaa !29
  %t384 = load { i64, [3 x i64] }, ptr %l148
  %t385 = load %"compiler/diagmsg:Msg", ptr %l149
  %t386 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t383, { i64, [3 x i64] } %t384, %"compiler/diagmsg:Msg" %t385)
  store i64 %t386, ptr %l150
  br label %bb79
bb79:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d101, i32 0, i32 1) }, ptr %l151, !tbaa !27
  %t387 = load { i64, ptr }, ptr %l151, !tbaa !27
  store { i64, ptr } %t387, ptr %l130, !tbaa !27
  br label %bb89
bb80:
  %t389 = load { i64, ptr }, ptr %l157, !tbaa !27
  %t390 = extractvalue { i64, ptr } %t389, 0
  %t391 = extractvalue { i64, ptr } %t389, 1
  %t392 = mul i64 %t390, 1
  %t393 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t392)
  call void @llvm.memcpy.p0.p0.i64(ptr %t393, ptr %t391, i64 %t392, i1 false)
  %t394 = insertvalue { i64, ptr } undef, i64 %t390, 0
  %t395 = insertvalue { i64, ptr } %t394, ptr %t393, 1
  %t397 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportLockNotACommit(ptr %v0, ptr %v0, { i64, ptr } %t395)
  store %"compiler/diagmsg:Msg" %t397, ptr %l159
  br label %bb81
bb81:
  %t398 = load ptr, ptr %l154, !tbaa !29
  %t399 = load { i64, [3 x i64] }, ptr %l155
  %t400 = load %"compiler/diagmsg:Msg", ptr %l159
  %t401 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t398, { i64, [3 x i64] } %t399, %"compiler/diagmsg:Msg" %t400)
  store i64 %t401, ptr %l160
  br label %bb82
bb82:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d102, i32 0, i32 1) }, ptr %l161, !tbaa !27
  %t402 = load { i64, ptr }, ptr %l161, !tbaa !27
  store { i64, ptr } %t402, ptr %l130, !tbaa !27
  br label %bb89
bb83:
  %t404 = load { i64, ptr }, ptr %l167, !tbaa !27
  %t405 = extractvalue { i64, ptr } %t404, 0
  %t406 = extractvalue { i64, ptr } %t404, 1
  %t407 = mul i64 %t405, 1
  %t408 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t407)
  call void @llvm.memcpy.p0.p0.i64(ptr %t408, ptr %t406, i64 %t407, i1 false)
  %t409 = insertvalue { i64, ptr } undef, i64 %t405, 0
  %t410 = insertvalue { i64, ptr } %t409, ptr %t408, 1
  %t412 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportFetchFailed(ptr %v0, ptr %v0, { i64, ptr } %t410)
  store %"compiler/diagmsg:Msg" %t412, ptr %l169
  br label %bb84
bb84:
  %t413 = load ptr, ptr %l164, !tbaa !29
  %t414 = load { i64, [3 x i64] }, ptr %l165
  %t415 = load %"compiler/diagmsg:Msg", ptr %l169
  %t416 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t413, { i64, [3 x i64] } %t414, %"compiler/diagmsg:Msg" %t415)
  store i64 %t416, ptr %l170
  br label %bb85
bb85:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d103, i32 0, i32 1) }, ptr %l171, !tbaa !27
  %t417 = load { i64, ptr }, ptr %l171, !tbaa !27
  store { i64, ptr } %t417, ptr %l130, !tbaa !27
  br label %bb89
bb86:
  %t419 = load { i64, ptr }, ptr %l177, !tbaa !27
  %t420 = extractvalue { i64, ptr } %t419, 0
  %t421 = extractvalue { i64, ptr } %t419, 1
  %t422 = mul i64 %t420, 1
  %t423 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t422)
  call void @llvm.memcpy.p0.p0.i64(ptr %t423, ptr %t421, i64 %t422, i1 false)
  %t424 = insertvalue { i64, ptr } undef, i64 %t420, 0
  %t425 = insertvalue { i64, ptr } %t424, ptr %t423, 1
  %t427 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportLockedFetchFailed(ptr %v0, ptr %v0, { i64, ptr } %t425)
  store %"compiler/diagmsg:Msg" %t427, ptr %l179
  br label %bb87
bb87:
  %t428 = load ptr, ptr %l174, !tbaa !29
  %t429 = load { i64, [3 x i64] }, ptr %l175
  %t430 = load %"compiler/diagmsg:Msg", ptr %l179
  %t431 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t428, { i64, [3 x i64] } %t429, %"compiler/diagmsg:Msg" %t430)
  store i64 %t431, ptr %l180
  br label %bb88
bb88:
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
  %t616 = load ptr, ptr %l0, !tbaa !29
  %t618 = getelementptr %"compiler/load:Loader", ptr %t616, i32 0, i32 4
  %t619 = load ptr, ptr %t618, !tbaa !29
  store ptr %t619, ptr %l248, !tbaa !29
  %t620 = load { i64, [3 x i64] }, ptr %l4
  store { i64, [3 x i64] } %t620, ptr %l249
  %t621 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t623 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportLeavesRoot(ptr %s9, ptr %v0, { i64, ptr } %t621)
  store %"compiler/diagmsg:Msg" %t623, ptr %l251
  br label %bb124
bb123:
  br label %bb126
bb124:
  %t624 = load ptr, ptr %l248, !tbaa !29
  %t625 = load { i64, [3 x i64] }, ptr %l249
  %t626 = load %"compiler/diagmsg:Msg", ptr %l251
  %t627 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t624, { i64, [3 x i64] } %t625, %"compiler/diagmsg:Msg" %t626)
  store i64 %t627, ptr %l252
  br label %bb125
bb125:
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
  %t970 = load ptr, ptr %l0, !tbaa !29
  %t972 = getelementptr %"compiler/load:Loader", ptr %t970, i32 0, i32 4
  %t973 = load ptr, ptr %t972, !tbaa !29
  store ptr %t973, ptr %l360, !tbaa !29
  %t974 = load { i64, [3 x i64] }, ptr %l4
  store { i64, [3 x i64] } %t974, ptr %l361
  %t975 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t977 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportLeavesRoot(ptr %s23, ptr %v0, { i64, ptr } %t975)
  store %"compiler/diagmsg:Msg" %t977, ptr %l363
  br label %bb197
bb196:
  br label %bb199
bb197:
  %t978 = load ptr, ptr %l360, !tbaa !29
  %t979 = load { i64, [3 x i64] }, ptr %l361
  %t980 = load %"compiler/diagmsg:Msg", ptr %l363
  %t981 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t978, { i64, [3 x i64] } %t979, %"compiler/diagmsg:Msg" %t980)
  store i64 %t981, ptr %l364
  br label %bb198
bb198:
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
  %t997 = load ptr, ptr %l0, !tbaa !29
  %t999 = getelementptr %"compiler/load:Loader", ptr %t997, i32 0, i32 4
  %t1000 = load ptr, ptr %t999, !tbaa !29
  store ptr %t1000, ptr %l373, !tbaa !29
  %t1001 = load { i64, [3 x i64] }, ptr %l4
  store { i64, [3 x i64] } %t1001, ptr %l374
  %t1002 = load ptr, ptr %lp8
  %t1003 = load { i64, ptr }, ptr %t1002, !tbaa !27
  %t1005 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportFileNotFound(ptr %v2, ptr %v0, { i64, ptr } %t1003)
  store %"compiler/diagmsg:Msg" %t1005, ptr %l376
  br label %bb209
bb208:
  br label %bb211
bb209:
  %t1006 = load ptr, ptr %l373, !tbaa !29
  %t1007 = load { i64, [3 x i64] }, ptr %l374
  %t1008 = load %"compiler/diagmsg:Msg", ptr %l376
  %t1009 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t1006, { i64, [3 x i64] } %t1007, %"compiler/diagmsg:Msg" %t1008)
  store i64 %t1009, ptr %l377
  br label %bb210
bb210:
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
@olang_2esole_2ecompiler_2fload_3aModule_2e2 = weak hidden constant i1 false
@.d24 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".c" }>, align 8
@.d25 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d26 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d27 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d28 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d29 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d30 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d31 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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
@olang_2esole_2ecompiler_2fload_3aModule_2e0 = weak hidden constant i1 false
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
@.d74 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d75 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d76 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"link" }>, align 8
@olang_2esole_2ecompiler_2fload_3aImport_2e6 = weak hidden constant i1 false
@.d77 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d78 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fload_3aModule_2e6 = weak hidden constant i1 false
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
