source_filename = "compiler_listing.quick.ll"
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
%"compiler/listing:Namer" = type { { i64, ptr } }
%"compiler/build:Unit" = type { { i64, ptr }, i32, { i64, ptr }, { i64, ptr } }
%"compiler/build:Program" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/listing:Remark" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/listing:Writer" = type { { i64, ptr }, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, { i64, ptr }, { i64, ptr }, i64, %"std/prelude/text:StringBuilder", i64 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/listing:Inputs" = type { ptr, ptr, { i64, ptr }, { i64, ptr }, i1 }
%"compiler/build:Code" = type { { i64, ptr }, { i64, ptr }, i64, { i64, ptr } }
%"compiler/build:Listed" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/text:LineIter" = type { { i64, ptr }, i64 }
%"compiler/listing:Sources" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr } }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
define dso_local %"compiler/listing:Namer" @compiler_2flisting_2eNamer_2eMake(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %lp1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca %"compiler/build:Unit"
  %l5 = alloca %"compiler/listing:Namer"
  %l8 = alloca i64
  %l10 = alloca i64
  %l15 = alloca %"compiler/build:Unit"
  %l18 = alloca i1
  %l21 = alloca i64
  %l26 = alloca { i64, ptr }
  %rv = alloca %"compiler/listing:Namer"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"compiler/listing:Namer" @compiler_2flisting_3aNamer_2ector(ptr %v1)
  store %"compiler/listing:Namer" %t1, ptr %l5
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t2, ptr %lp1
  %t3 = load %"compiler/listing:Namer", ptr %l5
  %t4 = load ptr, ptr %lp1
  store %"compiler/listing:Namer" %t3, ptr %t4
  %t7 = getelementptr %"compiler/build:Program", ptr %a0, i32 0, i32 0
  store ptr %t7, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t9 = load i64, ptr %l3, !tbaa !24
  store i64 %t9, ptr %l8, !tbaa !24
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aUnit_3e_2eLen_3ccompiler_2fbuild_3aUnit_3e(ptr %v0, ptr %t10)
  store i64 %t12, ptr %l10
  br label %bb3
bb3:
  %t13 = load i64, ptr %l8, !tbaa !24
  %t14 = load i64, ptr %l10, !tbaa !24
  %t15 = icmp slt i64 %t13, %t14
  %t17 = xor i1 %t15, true
  br i1 %t17, label %bb4, label %bb5
bb4:
  br label %bb19
bb5:
  br label %bb6
bb6:
  %t19 = load ptr, ptr %l2, !tbaa !29
  %t20 = load i64, ptr %l3, !tbaa !24
  %t23 = call %"compiler/build:Unit" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aUnit_3e_2eAt_3ccompiler_2fbuild_3aUnit_3e(ptr %v0, ptr %v0, ptr %t19, i64 %t20)
  store %"compiler/build:Unit" %t23, ptr %l15
  br label %bb7
bb7:
  %t24 = load %"compiler/build:Unit", ptr %l15
  store %"compiler/build:Unit" %t24, ptr %l4
  %t25 = getelementptr %"compiler/build:Unit", ptr %l4, i32 0, i32 1
  %t26 = load i32, ptr %t25, !range !{i32 0, i32 5}
  %t28 = trunc i64 1 to i32
  %t29 = icmp eq i32 %t26, %t28
  br i1 %t29, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb10
bb9:
  %t31 = getelementptr %"compiler/build:Unit", ptr %l4, i32 0, i32 1
  %t32 = load i32, ptr %t31, !range !{i32 0, i32 5}
  %t34 = trunc i64 2 to i32
  %t35 = icmp eq i32 %t32, %t34
  store i1 %t35, ptr %l18, !tbaa !21
  br label %bb10
bb10:
  %t37 = load i1, ptr %l18, !tbaa !21
  br i1 %t37, label %bb11, label %bb12
bb11:
  %t38 = ptrtoint ptr %v1 to i64
  store i64 %t38, ptr %l21, !tbaa !24
  %t39 = load i1, ptr @olang_2esole_2ecompiler_2flisting_3aNamer_2e0
  br i1 %t39, label %bb13, label %bb14
bb12:
  br label %bb17
bb13:
  %t41 = call ptr @__olang_region_make(ptr %v1)
  %t42 = ptrtoint ptr %t41 to i64
  store i64 %t42, ptr %l21, !tbaa !24
  br label %bb14
bb14:
  %t43 = getelementptr %"compiler/build:Unit", ptr %l4, i32 0, i32 0
  %t44 = load { i64, ptr }, ptr %t43, !tbaa !27
  %t46 = extractvalue { i64, ptr } %t44, 1
  %t47 = extractvalue { i64, ptr } %t44, 0
  %t48 = load i64, ptr %l21
  %t49 = inttoptr i64 %t48 to ptr
  %t50 = call ptr @__olang_scope_alloc(ptr %t49, i64 %t47)
  call void @olang_textcopy(ptr %t50, ptr %t46, i64 %t47)
  %t51 = insertvalue { i64, ptr } undef, i64 %t47, 0
  %t52 = insertvalue { i64, ptr } %t51, ptr %t50, 1
  %t54 = load i64, ptr %l21
  %t55 = inttoptr i64 %t54 to ptr
  %t56 = extractvalue { i64, ptr } %t52, 0
  %t57 = extractvalue { i64, ptr } %t52, 1
  %t58 = mul i64 %t56, 1
  %t59 = call ptr @__olang_scope_alloc(ptr %t55, i64 %t58)
  call void @llvm.memcpy.p0.p0.i64(ptr %t59, ptr %t57, i64 %t58, i1 false)
  %t60 = insertvalue { i64, ptr } undef, i64 %t56, 0
  %t61 = insertvalue { i64, ptr } %t60, ptr %t59, 1
  %t62 = load ptr, ptr %lp1
  %t63 = getelementptr %"compiler/listing:Namer", ptr %t62, i32 0, i32 0
  %t64 = load { i64, ptr }, ptr %t63, !tbaa !27
  store { i64, ptr } %t64, ptr %l26, !tbaa !27
  %t66 = load ptr, ptr %lp1
  %t67 = getelementptr %"compiler/listing:Namer", ptr %t66, i32 0, i32 0
  store { i64, ptr } %t61, ptr %t67, !tbaa !27
  %t68 = load i1, ptr @olang_2esole_2ecompiler_2flisting_3aNamer_2e0
  br i1 %t68, label %bb15, label %bb16
bb15:
  %t70 = load { i64, ptr }, ptr %l26
  %t71 = extractvalue { i64, ptr } %t70, 1
  call void @__olang_region_release(ptr %t71)
  store { i64, ptr } zeroinitializer, ptr %l26
  br label %bb16
bb16:
  br label %bb17
bb17:
  br label %bb18
bb18:
  %t72 = load i64, ptr %l3, !tbaa !24
  %t74 = add i64 %t72, 1
  store i64 %t74, ptr %l3, !tbaa !24
  br label %bb2
bb19:
  %t76 = load ptr, ptr %lp1
  %t77 = load %"compiler/listing:Namer", ptr %t76
  store %"compiler/listing:Namer" %t77, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/listing:Namer", ptr %rv
  ret %"compiler/listing:Namer" %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2flisting_2eRemarks(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, ptr %a2) #0 {
entry:
  %lp3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca i64
  %l12 = alloca i64
  %l17 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l21 = alloca i32
  %l23 = alloca i1
  %s2 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2flisting_3aRemark_3e_2ector(ptr %v3, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l8
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 32, i64 8)
  store ptr %t2, ptr %lp3
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  %t4 = load ptr, ptr %lp3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  store ptr %a0, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  store %olang.scope zeroinitializer, ptr %s2
  %t7 = load i64, ptr %l5, !tbaa !24
  store i64 %t7, ptr %l10, !tbaa !24
  %t8 = load ptr, ptr %l4, !tbaa !29
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l12
  br label %bb3
bb3:
  %t11 = load i64, ptr %l10, !tbaa !24
  %t12 = load i64, ptr %l12, !tbaa !24
  %t13 = icmp slt i64 %t11, %t12
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s2)
  br label %bb16
bb5:
  br label %bb6
bb6:
  %t17 = load ptr, ptr %l4, !tbaa !29
  %t18 = load i64, ptr %l5, !tbaa !24
  %t21 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t17, i64 %t18)
  store { i64, ptr } %t21, ptr %l17
  br label %bb7
bb7:
  %t22 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t25 = call { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %v0, ptr %s2, { i64, ptr } %t22)
  %t26 = extractvalue { i32, { i64, ptr } } %t25, 1
  %t27 = extractvalue { i32, { i64, ptr } } %t25, 0
  store i32 %t27, ptr %l21
  %t28 = icmp ne i32 %t27, 0
  br i1 %t28, label %bb9, label %ok.29, !prof !99
ok.29:
  store { i64, ptr } %t26, ptr %l20
  br label %bb8
bb8:
  %t30 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t30, ptr %l18, !tbaa !27
  br label %bb13
bb9:
  %t31 = load i32, ptr %l21, !tbaa !23
  %t32 = ashr i32 %t31, 16
  %t34 = icmp eq i32 %t32, 1
  store i1 %t34, ptr %l23, !tbaa !21
  %t35 = load i32, ptr %l21, !tbaa !23
  %t36 = ashr i32 %t35, 16
  %t38 = icmp eq i32 %t36, 1
  br i1 %t38, label %bb10, label %bb11
bb10:
  call void @__olang_errpay_pop()
  br label %bb11
bb11:
  br label %bb12
bb12:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d0, i32 0, i32 1) }, ptr %l18, !tbaa !27
  br label %bb13
bb13:
  %t40 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t44 = load ptr, ptr %lp3
  call void @compiler_2flisting_2ereadRemarks(ptr %s2, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %t40, { i64, ptr } %a1, ptr %a2, ptr %t44)
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s2)
  br label %bb15
bb15:
  %t49 = load i64, ptr %l5, !tbaa !24
  %t51 = add i64 %t49, 1
  store i64 %t51, ptr %l5, !tbaa !24
  br label %bb2
bb16:
  %t53 = load ptr, ptr %lp3
  %t54 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t53
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t54, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2flisting_2ecallersOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %lp2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca %"compiler/listing:Remark"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca i64
  %l11 = alloca i64
  %l16 = alloca %"compiler/listing:Remark"
  %l18 = alloca i1
  %l20 = alloca i1
  %l22 = alloca i1
  %l24 = alloca i1
  %l27 = alloca i1
  %l32 = alloca i1
  %s2 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l7
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t2, ptr %lp2
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  %t4 = load ptr, ptr %lp2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  store ptr %a0, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  store %olang.scope zeroinitializer, ptr %s2
  %t7 = load i64, ptr %l4, !tbaa !24
  store i64 %t7, ptr %l9, !tbaa !24
  %t8 = load ptr, ptr %l3, !tbaa !29
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flisting_3aRemark_3e_2eLen_3ccompiler_2flisting_3aRemark_3e(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l11
  br label %bb3
bb3:
  %t11 = load i64, ptr %l9, !tbaa !24
  %t12 = load i64, ptr %l11, !tbaa !24
  %t13 = icmp slt i64 %t11, %t12
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s2)
  br label %bb26
bb5:
  br label %bb6
bb6:
  %t17 = load ptr, ptr %l3, !tbaa !29
  %t18 = load i64, ptr %l4, !tbaa !24
  %t21 = call %"compiler/listing:Remark" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flisting_3aRemark_3e_2eAt_3ccompiler_2flisting_3aRemark_3e(ptr %v0, ptr %v0, ptr %t17, i64 %t18)
  store %"compiler/listing:Remark" %t21, ptr %l16
  br label %bb7
bb7:
  %t22 = load %"compiler/listing:Remark", ptr %l16
  store %"compiler/listing:Remark" %t22, ptr %l5
  %t23 = getelementptr %"compiler/listing:Remark", ptr %l5, i32 0, i32 1
  %t24 = load { i64, ptr }, ptr %t23, !tbaa !27
  %t26 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t24, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d1, i32 0, i32 1) })
  store i1 %t26, ptr %l18
  br label %bb8
bb8:
  %t27 = load i1, ptr %l18, !tbaa !21
  %t28 = xor i1 %t27, true
  br i1 %t28, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb12
bb10:
  %t30 = getelementptr %"compiler/listing:Remark", ptr %l5, i32 0, i32 0
  %t31 = load { i64, ptr }, ptr %t30, !tbaa !27
  %t33 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t31, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d2, i32 0, i32 1) })
  store i1 %t33, ptr %l22
  br label %bb11
bb11:
  %t34 = load i1, ptr %l22, !tbaa !21
  %t35 = xor i1 %t34, true
  store i1 %t35, ptr %l20, !tbaa !21
  br label %bb12
bb12:
  %t37 = load i1, ptr %l20, !tbaa !21
  br i1 %t37, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb16
bb14:
  %t38 = getelementptr %"compiler/listing:Remark", ptr %l5, i32 0, i32 6
  %t39 = load { i64, ptr }, ptr %t38, !tbaa !27
  %t43 = call i1 @compiler_2flisting_2eofSym(ptr %v0, ptr %v1, { i64, ptr } %t39, { i64, ptr } %a1)
  store i1 %t43, ptr %l27
  br label %bb15
bb15:
  %t44 = load i1, ptr %l27, !tbaa !21
  %t45 = xor i1 %t44, true
  store i1 %t45, ptr %l24, !tbaa !21
  br label %bb16
bb16:
  %t47 = load i1, ptr %l24, !tbaa !21
  br i1 %t47, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s2)
  br label %bb25
bb18:
  br label %bb19
bb19:
  %t48 = getelementptr %"compiler/listing:Remark", ptr %l5, i32 0, i32 5
  %t49 = load { i64, ptr }, ptr %t48, !tbaa !27
  %t51 = load ptr, ptr %lp2
  %t55 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H0127831368543eff3b7740d7d3240080(ptr %v2, ptr %v0, ptr %t51, { i64, ptr } %t49)
  store i1 %t55, ptr %l32
  br label %bb20
bb20:
  %t56 = load i1, ptr %l32, !tbaa !21
  %t57 = xor i1 %t56, true
  br i1 %t57, label %bb21, label %bb22
bb21:
  %t59 = load ptr, ptr %lp2
  %t60 = getelementptr %"compiler/listing:Remark", ptr %l5, i32 0, i32 5
  %t61 = load { i64, ptr }, ptr %t60, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v2, ptr %v0, ptr %t59, { i64, ptr } %t61)
  br label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s2)
  br label %bb25
bb25:
  %t64 = load i64, ptr %l4, !tbaa !24
  %t66 = add i64 %t64, 1
  store i64 %t66, ptr %l4, !tbaa !24
  br label %bb2
bb26:
  %t68 = load ptr, ptr %lp2
  %t69 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t68
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t69, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local { i64, ptr } @compiler_2flisting_2ecompiler_2flisting_3aNamer_2eName(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l8 = alloca i1
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i32
  %l19 = alloca ptr
  %l20 = alloca { i64, ptr }
  %l21 = alloca i64
  %l22 = alloca i64
  %l27 = alloca { i64, ptr }
  %l30 = alloca i1
  %l31 = alloca ptr
  %l32 = alloca { i64, ptr }
  %l35 = alloca i64
  %l36 = alloca i64
  %l41 = alloca { i64, ptr }
  %l44 = alloca i1
  %l45 = alloca ptr
  %l46 = alloca { i64, ptr }
  %l49 = alloca i64
  %l50 = alloca i64
  %l55 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l58 = alloca i64
  %l59 = alloca { i64, ptr }
  %l62 = alloca i1
  %l65 = alloca i64
  %l67 = alloca i64
  %l68 = alloca i32
  %l71 = alloca { i64, ptr }
  %l72 = alloca i64
  %l73 = alloca i64
  %l79 = alloca i1
  %l81 = alloca i1
  %l84 = alloca { i64, ptr }
  %l85 = alloca i1
  %l87 = alloca i1
  %l90 = alloca { i64, ptr }
  %l91 = alloca i1
  %l93 = alloca i1
  %l96 = alloca { i64, ptr }
  %l97 = alloca i1
  %l100 = alloca i64
  %l102 = alloca i64
  %l103 = alloca i64
  %l110 = alloca { i64, ptr }
  %l111 = alloca i1
  %l112 = alloca { i64, ptr }
  %l115 = alloca { i64, ptr }
  %l119 = alloca i1
  %l120 = alloca { i64, ptr }
  %l124 = alloca i64
  %l128 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store i1 %t3, ptr %l8
  br label %bb1
bb1:
  %t4 = load i1, ptr %l8, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d4, i32 0, i32 1) }, ptr %l9, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t5, ptr %l10, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t6, 0
  store i64 %t7, ptr %l11, !tbaa !24
  %t8 = load i64, ptr %l11, !tbaa !24
  %t9 = mul i64 %t8, 1
  %t10 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t9)
  %t11 = insertvalue { i64, ptr } undef, i64 %t8, 0
  %t12 = insertvalue { i64, ptr } %t11, ptr %t10, 1
  store { i64, ptr } %t12, ptr %l12, !tbaa !27
  %t13 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !27
  %t15 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !27
  %t17 = load i64, ptr %l11, !tbaa !24
  %t18 = mul i64 %t17, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t14, ptr %t16, i64 %t18, i1 false)
  %t19 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t19, ptr %l10, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t20 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t20, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t21 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t23 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v1, ptr %s0, { i64, ptr } %t21, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d5, i32 0, i32 1) })
  %t24 = extractvalue { i32, i64 } %t23, 1
  %t25 = extractvalue { i32, i64 } %t23, 0
  store i32 %t25, ptr %l16
  %t26 = icmp ne i32 %t25, 0
  br i1 %t26, label %bb6, label %ok.27, !prof !99
ok.27:
  store i64 %t24, ptr %l15
  br label %bb5
bb5:
  %t28 = load i64, ptr %l15, !tbaa !24
  store i64 %t28, ptr %l13, !tbaa !24
  br label %bb8
bb6:
  br label %bb7
bb7:
  store i64 -1, ptr %l13, !tbaa !24
  br label %bb8
bb8:
  %t29 = load i64, ptr %l13, !tbaa !24
  store i64 %t29, ptr %l2, !tbaa !24
  %t30 = load i64, ptr %l2, !tbaa !24
  %t32 = icmp sgt i64 %t30, 0
  br i1 %t32, label %bb9, label %bb10
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t34 = load ptr, ptr %l0, !tbaa !29
  store ptr %t34, ptr %l19, !tbaa !29
  %t35 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t35, ptr %l20, !tbaa !27
  %t36 = load i64, ptr %l2, !tbaa !24
  store i64 %t36, ptr %l21, !tbaa !24
  %t37 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t38 = extractvalue { i64, ptr } %t37, 0
  store i64 %t38, ptr %l22, !tbaa !24
  %t39 = icmp sge i64 0, 0
  br i1 %t39, label %bb11, label %bb12
bb10:
  br label %bb18
bb11:
  %t41 = load i64, ptr %l21, !tbaa !24
  %t42 = icmp sle i64 0, %t41
  br i1 %t42, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_4c5476cd02c9d569_d2b16f8f5de4ce55)
  unreachable
bb13:
  %t44 = load i64, ptr %l21, !tbaa !24
  %t45 = load i64, ptr %l22, !tbaa !24
  %t46 = icmp sle i64 %t44, %t45
  br i1 %t46, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_4c5476cd02c9d569_d2b16f8f5de4ce55)
  unreachable
bb15:
  %t48 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !27
  %t50 = load i64, ptr %l21, !tbaa !24
  %t51 = getelementptr i8, ptr %t49, i64 0
  %t52 = sub i64 %t50, 0
  %t53 = insertvalue { i64, ptr } undef, i64 %t52, 0
  %t54 = insertvalue { i64, ptr } %t53, ptr %t51, 1
  %t55 = load ptr, ptr %l19, !tbaa !29
  %t57 = call { i64, ptr } @compiler_2flisting_2ecompiler_2flisting_3aNamer_2eName(ptr %v0, ptr %v1, ptr %s2, ptr %t55, { i64, ptr } %t54)
  store { i64, ptr } %t57, ptr %l27
  br label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_4c5476cd02c9d569_d2b16f8f5de4ce55)
  unreachable
bb17:
  %t58 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t59 = extractvalue { i64, ptr } %t58, 1
  %t60 = extractvalue { i64, ptr } %t58, 0
  %t61 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t62 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t63 = add i64 %t60, %t62
  %t64 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t63)
  call void @olang_textcopy(ptr %t64, ptr %t59, i64 %t60)
  %t65 = getelementptr i8, ptr %t64, i64 %t60
  call void @olang_textcopy(ptr %t65, ptr %t61, i64 %t62)
  %t66 = insertvalue { i64, ptr } undef, i64 %t63, 0
  %t67 = insertvalue { i64, ptr } %t66, ptr %t64, 1
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t67, ptr %rv
  br label %ret
bb18:
  %t69 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t71 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v1, ptr %s0, { i64, ptr } %t69, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d7, i32 0, i32 1) })
  store i1 %t71, ptr %l30
  br label %bb19
bb19:
  %t72 = load i1, ptr %l30, !tbaa !21
  br i1 %t72, label %bb20, label %bb21
bb20:
  store %olang.scope zeroinitializer, ptr %s4
  %t73 = load ptr, ptr %l0, !tbaa !29
  store ptr %t73, ptr %l31, !tbaa !29
  %t74 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t74, ptr %l32, !tbaa !27
  %t75 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t77 = extractvalue { i64, ptr } %t75, 0
  %t79 = sub i64 %t77, 8
  store i64 %t79, ptr %l35, !tbaa !24
  %t80 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t81 = extractvalue { i64, ptr } %t80, 0
  store i64 %t81, ptr %l36, !tbaa !24
  %t82 = icmp sge i64 0, 0
  br i1 %t82, label %bb22, label %bb23
bb21:
  br label %bb29
bb22:
  %t84 = load i64, ptr %l35, !tbaa !24
  %t85 = icmp sle i64 0, %t84
  br i1 %t85, label %bb24, label %bb25
bb23:
  call void @__olang_check_failed(ptr @olang_loc_82458c7f9e0fa77c_b0b89e2c08a7ae78)
  unreachable
bb24:
  %t87 = load i64, ptr %l35, !tbaa !24
  %t88 = load i64, ptr %l36, !tbaa !24
  %t89 = icmp sle i64 %t87, %t88
  br i1 %t89, label %bb26, label %bb27
bb25:
  call void @__olang_check_failed(ptr @olang_loc_82458c7f9e0fa77c_b0b89e2c08a7ae78)
  unreachable
bb26:
  %t91 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !27
  %t93 = load i64, ptr %l35, !tbaa !24
  %t94 = getelementptr i8, ptr %t92, i64 0
  %t95 = sub i64 %t93, 0
  %t96 = insertvalue { i64, ptr } undef, i64 %t95, 0
  %t97 = insertvalue { i64, ptr } %t96, ptr %t94, 1
  %t98 = load ptr, ptr %l31, !tbaa !29
  %t100 = call { i64, ptr } @compiler_2flisting_2ecompiler_2flisting_3aNamer_2eName(ptr %v0, ptr %v1, ptr %s4, ptr %t98, { i64, ptr } %t97)
  store { i64, ptr } %t100, ptr %l41
  br label %bb28
bb27:
  call void @__olang_check_failed(ptr @olang_loc_82458c7f9e0fa77c_b0b89e2c08a7ae78)
  unreachable
bb28:
  %t101 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t102 = extractvalue { i64, ptr } %t101, 1
  %t103 = extractvalue { i64, ptr } %t101, 0
  %t104 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t105 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  %t106 = add i64 %t103, %t105
  %t107 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t106)
  call void @olang_textcopy(ptr %t107, ptr %t102, i64 %t103)
  %t108 = getelementptr i8, ptr %t107, i64 %t103
  call void @olang_textcopy(ptr %t108, ptr %t104, i64 %t105)
  %t109 = insertvalue { i64, ptr } undef, i64 %t106, 0
  %t110 = insertvalue { i64, ptr } %t109, ptr %t107, 1
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t110, ptr %rv
  br label %ret
bb29:
  %t112 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t114 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v1, ptr %s0, { i64, ptr } %t112, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d9, i32 0, i32 1) })
  store i1 %t114, ptr %l44
  br label %bb30
bb30:
  %t115 = load i1, ptr %l44, !tbaa !21
  br i1 %t115, label %bb31, label %bb32
bb31:
  %t116 = load ptr, ptr %l0, !tbaa !29
  store ptr %t116, ptr %l45, !tbaa !29
  %t117 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t117, ptr %l46, !tbaa !27
  %t118 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t120 = extractvalue { i64, ptr } %t118, 0
  %t122 = sub i64 %t120, 7
  store i64 %t122, ptr %l49, !tbaa !24
  %t123 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t124 = extractvalue { i64, ptr } %t123, 0
  store i64 %t124, ptr %l50, !tbaa !24
  %t125 = icmp sge i64 0, 0
  br i1 %t125, label %bb33, label %bb34
bb32:
  br label %bb40
bb33:
  %t127 = load i64, ptr %l49, !tbaa !24
  %t128 = icmp sle i64 0, %t127
  br i1 %t128, label %bb35, label %bb36
bb34:
  call void @__olang_check_failed(ptr @olang_loc_1aee9fefcdd9cd27_6fa15990af9654d3)
  unreachable
bb35:
  %t130 = load i64, ptr %l49, !tbaa !24
  %t131 = load i64, ptr %l50, !tbaa !24
  %t132 = icmp sle i64 %t130, %t131
  br i1 %t132, label %bb37, label %bb38
bb36:
  call void @__olang_check_failed(ptr @olang_loc_1aee9fefcdd9cd27_6fa15990af9654d3)
  unreachable
bb37:
  %t134 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t135 = load ptr, ptr %t134, !tbaa !27
  %t136 = load i64, ptr %l49, !tbaa !24
  %t137 = getelementptr i8, ptr %t135, i64 0
  %t138 = sub i64 %t136, 0
  %t139 = insertvalue { i64, ptr } undef, i64 %t138, 0
  %t140 = insertvalue { i64, ptr } %t139, ptr %t137, 1
  %t141 = load ptr, ptr %l45, !tbaa !29
  %t143 = call { i64, ptr } @compiler_2flisting_2ecompiler_2flisting_3aNamer_2eName(ptr %v0, ptr %v1, ptr %v2, ptr %t141, { i64, ptr } %t140)
  store { i64, ptr } %t143, ptr %l55
  br label %bb39
bb38:
  call void @__olang_check_failed(ptr @olang_loc_1aee9fefcdd9cd27_6fa15990af9654d3)
  unreachable
bb39:
  call void @__olang_scope_close(ptr %s0)
  %t144 = load { i64, ptr }, ptr %l55, !tbaa !27
  store { i64, ptr } %t144, ptr %rv
  br label %ret
bb40:
  %t145 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t147 = call { i64, ptr } @compiler_2ftypes_2eDemangle(ptr %v1, ptr %s0, { i64, ptr } %t145)
  store { i64, ptr } %t147, ptr %l57
  br label %bb41
bb41:
  %t148 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t149 = extractvalue { i64, ptr } %t148, 0
  store i64 %t149, ptr %l58, !tbaa !24
  %t150 = load i64, ptr %l58, !tbaa !24
  %t151 = mul i64 %t150, 1
  %t152 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t151)
  %t153 = insertvalue { i64, ptr } undef, i64 %t150, 0
  %t154 = insertvalue { i64, ptr } %t153, ptr %t152, 1
  store { i64, ptr } %t154, ptr %l59, !tbaa !27
  %t155 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t156 = load ptr, ptr %t155, !tbaa !27
  %t157 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t158 = load ptr, ptr %t157, !tbaa !27
  %t159 = load i64, ptr %l58, !tbaa !24
  %t160 = mul i64 %t159, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t156, ptr %t158, i64 %t160, i1 false)
  %t161 = load { i64, ptr }, ptr %l59, !tbaa !27
  store { i64, ptr } %t161, ptr %l3, !tbaa !27
  %t162 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t163 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t166 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %v1, { i64, ptr } %t162, { i64, ptr } %t163)
  store i1 %t166, ptr %l62
  br label %bb42
bb42:
  %t167 = load i1, ptr %l62, !tbaa !21
  br i1 %t167, label %bb43, label %bb44
bb43:
  %t168 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t170 = extractvalue { i64, ptr } %t168, 1
  %t171 = extractvalue { i64, ptr } %t168, 0
  %t172 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t171)
  call void @olang_textcopy(ptr %t172, ptr %t170, i64 %t171)
  %t173 = insertvalue { i64, ptr } undef, i64 %t171, 0
  %t174 = insertvalue { i64, ptr } %t173, ptr %t172, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t174, ptr %rv
  br label %ret
bb44:
  br label %bb45
bb45:
  %t176 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t178 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %s0, ptr %s0, { i64, ptr } %t176, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d10, i32 0, i32 1) })
  %t179 = extractvalue { i32, i64 } %t178, 1
  %t180 = extractvalue { i32, i64 } %t178, 0
  store i32 %t180, ptr %l68
  %t181 = icmp ne i32 %t180, 0
  br i1 %t181, label %bb47, label %ok.182, !prof !99
ok.182:
  store i64 %t179, ptr %l67
  br label %bb46
bb46:
  %t183 = load i64, ptr %l67, !tbaa !24
  store i64 %t183, ptr %l65, !tbaa !24
  br label %bb49
bb47:
  br label %bb48
bb48:
  store i64 -1, ptr %l65, !tbaa !24
  br label %bb49
bb49:
  %t184 = load i64, ptr %l65, !tbaa !24
  store i64 %t184, ptr %l4, !tbaa !24
  %t185 = load i64, ptr %l4, !tbaa !24
  %t187 = icmp sgt i64 %t185, 0
  br i1 %t187, label %bb50, label %bb51
bb50:
  %t189 = load i64, ptr %l4, !tbaa !24
  store i64 %t189, ptr %l72, !tbaa !24
  %t190 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t191 = extractvalue { i64, ptr } %t190, 0
  store i64 %t191, ptr %l73, !tbaa !24
  %t192 = icmp sge i64 0, 0
  br i1 %t192, label %bb52, label %bb53
bb51:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d11, i32 0, i32 1) }, ptr %l71, !tbaa !27
  br label %bb58
bb52:
  %t194 = load i64, ptr %l72, !tbaa !24
  %t195 = icmp sle i64 0, %t194
  br i1 %t195, label %bb54, label %bb55
bb53:
  call void @__olang_check_failed(ptr @olang_loc_6a5ec5f2c3534a4a_bf3e4e4bffc8a476)
  unreachable
bb54:
  %t197 = load i64, ptr %l72, !tbaa !24
  %t198 = load i64, ptr %l73, !tbaa !24
  %t199 = icmp sle i64 %t197, %t198
  br i1 %t199, label %bb56, label %bb57
bb55:
  call void @__olang_check_failed(ptr @olang_loc_6a5ec5f2c3534a4a_bf3e4e4bffc8a476)
  unreachable
bb56:
  %t201 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t202 = load ptr, ptr %t201, !tbaa !27
  %t203 = load i64, ptr %l72, !tbaa !24
  %t204 = getelementptr i8, ptr %t202, i64 0
  %t205 = sub i64 %t203, 0
  %t206 = insertvalue { i64, ptr } undef, i64 %t205, 0
  %t207 = insertvalue { i64, ptr } %t206, ptr %t204, 1
  store { i64, ptr } %t207, ptr %l71, !tbaa !27
  br label %bb58
bb57:
  call void @__olang_check_failed(ptr @olang_loc_6a5ec5f2c3534a4a_bf3e4e4bffc8a476)
  unreachable
bb58:
  %t209 = load { i64, ptr }, ptr %l71, !tbaa !27
  store { i64, ptr } %t209, ptr %l5, !tbaa !27
  %t210 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t212 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t210, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d12, i32 0, i32 1) })
  store i1 %t212, ptr %l79
  br label %bb59
bb59:
  %t213 = load i1, ptr %l79, !tbaa !21
  %t214 = xor i1 %t213, true
  br i1 %t214, label %bb60, label %bb61
bb60:
  %t216 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d13, i32 0, i32 1) }, ptr %l84, !tbaa !27
  %t219 = load { i64, ptr }, ptr %l84, !tbaa !27
  %t220 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %s0, ptr %s0, { i64, ptr } %t216, { i64, ptr } %t219)
  store i1 %t220, ptr %l85
  br label %bb62
bb61:
  store i1 false, ptr %l81, !tbaa !21
  br label %bb63
bb62:
  %t221 = load i1, ptr %l85, !tbaa !21
  %t222 = xor i1 %t221, true
  store i1 %t222, ptr %l81, !tbaa !21
  br label %bb63
bb63:
  %t224 = load i1, ptr %l81, !tbaa !21
  br i1 %t224, label %bb64, label %bb65
bb64:
  %t225 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) }, ptr %l90, !tbaa !27
  %t228 = load { i64, ptr }, ptr %l90, !tbaa !27
  %t229 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %s0, ptr %s0, { i64, ptr } %t225, { i64, ptr } %t228)
  store i1 %t229, ptr %l91
  br label %bb66
bb65:
  store i1 false, ptr %l87, !tbaa !21
  br label %bb67
bb66:
  %t230 = load i1, ptr %l91, !tbaa !21
  %t231 = xor i1 %t230, true
  store i1 %t231, ptr %l87, !tbaa !21
  br label %bb67
bb67:
  %t233 = load i1, ptr %l87, !tbaa !21
  br i1 %t233, label %bb68, label %bb69
bb68:
  %t234 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, ptr %l96, !tbaa !27
  %t237 = load { i64, ptr }, ptr %l96, !tbaa !27
  %t238 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %s0, ptr %s0, { i64, ptr } %t234, { i64, ptr } %t237)
  store i1 %t238, ptr %l97
  br label %bb70
bb69:
  store i1 false, ptr %l93, !tbaa !21
  br label %bb71
bb70:
  %t239 = load i1, ptr %l97, !tbaa !21
  %t240 = xor i1 %t239, true
  store i1 %t240, ptr %l93, !tbaa !21
  br label %bb71
bb71:
  %t242 = load i1, ptr %l93, !tbaa !21
  br i1 %t242, label %bb72, label %bb73
bb72:
  store %olang.scope zeroinitializer, ptr %s9
  %t243 = load i64, ptr %l4, !tbaa !24
  %t245 = add i64 %t243, 1
  store i64 %t245, ptr %l100, !tbaa !24
  %t246 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t248 = extractvalue { i64, ptr } %t246, 0
  store i64 %t248, ptr %l102, !tbaa !24
  %t249 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t250 = extractvalue { i64, ptr } %t249, 0
  store i64 %t250, ptr %l103, !tbaa !24
  %t251 = load i64, ptr %l100, !tbaa !24
  %t252 = icmp sge i64 %t251, 0
  br i1 %t252, label %bb74, label %bb75
bb73:
  br label %bb89
bb74:
  %t254 = load i64, ptr %l100, !tbaa !24
  %t255 = load i64, ptr %l102, !tbaa !24
  %t256 = icmp sle i64 %t254, %t255
  br i1 %t256, label %bb76, label %bb77
bb75:
  call void @__olang_check_failed(ptr @olang_loc_af9ac36a56bc89c5_7398c12160466739)
  unreachable
bb76:
  %t258 = load i64, ptr %l102, !tbaa !24
  %t259 = load i64, ptr %l103, !tbaa !24
  %t260 = icmp sle i64 %t258, %t259
  br i1 %t260, label %bb78, label %bb79
bb77:
  call void @__olang_check_failed(ptr @olang_loc_af9ac36a56bc89c5_7398c12160466739)
  unreachable
bb78:
  %t262 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t263 = load ptr, ptr %t262, !tbaa !27
  %t264 = load i64, ptr %l100, !tbaa !24
  %t265 = load i64, ptr %l102, !tbaa !24
  %t266 = getelementptr i8, ptr %t263, i64 %t264
  %t267 = sub i64 %t265, %t264
  %t268 = insertvalue { i64, ptr } undef, i64 %t267, 0
  %t269 = insertvalue { i64, ptr } %t268, ptr %t266, 1
  store { i64, ptr } %t269, ptr %l6, !tbaa !27
  %t271 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, ptr %l110, !tbaa !27
  %t274 = load { i64, ptr }, ptr %l110, !tbaa !27
  %t275 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %s0, ptr %s9, { i64, ptr } %t271, { i64, ptr } %t274)
  store i1 %t275, ptr %l111
  br label %bb80
bb79:
  call void @__olang_check_failed(ptr @olang_loc_af9ac36a56bc89c5_7398c12160466739)
  unreachable
bb80:
  %t276 = load i1, ptr %l111, !tbaa !21
  br i1 %t276, label %bb81, label %bb82
bb81:
  %t277 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t279 = extractvalue { i64, ptr } %t277, 1
  %t280 = extractvalue { i64, ptr } %t277, 0
  %t281 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t280)
  call void @olang_textcopy(ptr %t281, ptr %t279, i64 %t280)
  %t282 = insertvalue { i64, ptr } undef, i64 %t280, 0
  %t283 = insertvalue { i64, ptr } %t282, ptr %t281, 1
  store { i64, ptr } %t283, ptr %l112, !tbaa !27
  br label %bb85
bb82:
  %t285 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t285, ptr %l115, !tbaa !27
  %t286 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t287 = load ptr, ptr %l0, !tbaa !29
  %t289 = getelementptr %"compiler/listing:Namer", ptr %t287, i32 0, i32 0
  %t290 = load { i64, ptr }, ptr %t289, !tbaa !27
  %t293 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %v0, { i64, ptr } %t286, { i64, ptr } %t290)
  store i1 %t293, ptr %l119
  br label %bb83
bb83:
  %t294 = load { i64, ptr }, ptr %l115, !tbaa !27
  %t295 = load i1, ptr %l119, !tbaa !21
  %t296 = call { i64, ptr } @compiler_2fload_2eErrQualifier(ptr %s0, ptr %s9, { i64, ptr } %t294, i1 %t295)
  store { i64, ptr } %t296, ptr %l120
  br label %bb84
bb84:
  %t297 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t298 = load { i64, ptr }, ptr %l120, !tbaa !27
  %t299 = extractvalue { i64, ptr } %t298, 1
  %t300 = extractvalue { i64, ptr } %t298, 0
  %t302 = extractvalue { i64, ptr } %t297, 1
  %t303 = extractvalue { i64, ptr } %t297, 0
  %t304 = add i64 %t300, %t303
  %t305 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t304)
  call void @olang_textcopy(ptr %t305, ptr %t299, i64 %t300)
  %t306 = getelementptr i8, ptr %t305, i64 %t300
  call void @olang_textcopy(ptr %t306, ptr %t302, i64 %t303)
  %t307 = insertvalue { i64, ptr } undef, i64 %t304, 0
  %t308 = insertvalue { i64, ptr } %t307, ptr %t305, 1
  store { i64, ptr } %t308, ptr %l112, !tbaa !27
  br label %bb85
bb85:
  %t310 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t311 = extractvalue { i64, ptr } %t310, 0
  %t312 = load { i64, ptr }, ptr %l112, !tbaa !27
  %t313 = extractvalue { i64, ptr } %t312, 0
  store i64 %t313, ptr %l124, !tbaa !24
  %t315 = load i64, ptr %l124, !tbaa !24
  %t316 = icmp eq i64 %t311, %t315
  br i1 %t316, label %bb86, label %bb87
bb86:
  %t318 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t319 = load ptr, ptr %t318, !tbaa !27
  %t320 = getelementptr { i64, ptr }, ptr %l112, i32 0, i32 1
  %t321 = load ptr, ptr %t320, !tbaa !27
  %t322 = load i64, ptr %l124, !tbaa !24
  %t323 = mul i64 %t322, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t319, ptr %t321, i64 %t323, i1 false)
  br label %bb88
bb87:
  %t324 = load { i64, ptr }, ptr %l112, !tbaa !27
  store { i64, ptr } %t324, ptr %l3, !tbaa !27
  br label %bb88
bb88:
  call void @__olang_scope_close(ptr %s9)
  br label %bb89
bb89:
  %t325 = load ptr, ptr %l0, !tbaa !29
  %t326 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t329 = call { i64, ptr } @compiler_2flisting_2ecompiler_2flisting_3aNamer_2etypesNamed(ptr %v0, ptr %s0, ptr %v2, ptr %t325, { i64, ptr } %t326)
  store { i64, ptr } %t329, ptr %l128
  br label %bb90
bb90:
  call void @__olang_scope_close(ptr %s0)
  %t330 = load { i64, ptr }, ptr %l128, !tbaa !27
  store { i64, ptr } %t330, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2flisting_2ecompiler_2flisting_3aWriter_2easmLine(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %v6, ptr %v7, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, ptr %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l5 = alloca { i64, i64 }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca ptr
  %l11 = alloca i64
  %l12 = alloca i64
  %l15 = alloca i1
  %l16 = alloca i1
  %l18 = alloca i1
  %l20 = alloca { i64, i64 }
  %l23 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l27 = alloca i32
  %l28 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l32 = alloca i32
  %l33 = alloca ptr
  %l34 = alloca { i64, ptr }
  %l36 = alloca i1
  %l37 = alloca i1
  %l39 = alloca i1
  %l40 = alloca { i64, ptr }
  %l60 = alloca i1
  %l64 = alloca i1
  %l65 = alloca ptr
  %l66 = alloca { i64, ptr }
  %l68 = alloca i1
  %l70 = alloca i1
  %l72 = alloca i1
  %l74 = alloca i1
  %l76 = alloca i1
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v2, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d17, i32 0, i32 1) })
  store i1 %t3, ptr %l15
  br label %bb1
bb1:
  %t4 = load i1, ptr %l15, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb5
bb3:
  %t5 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t7 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v2, ptr %s0, { i64, ptr } %t5, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d18, i32 0, i32 1) })
  store i1 %t7, ptr %l18
  br label %bb4
bb4:
  %t8 = load i1, ptr %l18, !tbaa !21
  store i1 %t8, ptr %l16, !tbaa !21
  br label %bb5
bb5:
  %t9 = load i1, ptr %l16, !tbaa !21
  br i1 %t9, label %bb6, label %bb7
bb6:
  store %olang.scope zeroinitializer, ptr %s1
  %t10 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t12 = call { i64, i64 } @compiler_2flisting_2elocOf(ptr %v2, { i64, ptr } %t10)
  store { i64, i64 } %t12, ptr %l20
  br label %bb8
bb7:
  br label %bb26
bb8:
  %t13 = load { i64, i64 }, ptr %l20
  store { i64, i64 } %t13, ptr %l5
  %t14 = getelementptr { i64, i64 }, ptr %l5, i32 0, i32 0
  %t15 = load i64, ptr %t14, !tbaa !24
  store i64 %t15, ptr %l6, !tbaa !24
  %t17 = getelementptr { i64, i64 }, ptr %l5, i32 0, i32 1
  %t18 = load i64, ptr %t17, !tbaa !24
  store i64 %t18, ptr %l7, !tbaa !24
  %t21 = load i64, ptr %l6, !tbaa !24
  %t24 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %v3, ptr %v3, ptr %a3, i64 %t21)
  %t25 = extractvalue { i32, { i64, ptr } } %t24, 1
  %t26 = extractvalue { i32, { i64, ptr } } %t24, 0
  store i32 %t26, ptr %l27
  %t27 = icmp ne i32 %t26, 0
  br i1 %t27, label %bb10, label %ok.28, !prof !99
ok.28:
  store { i64, ptr } %t25, ptr %l26
  br label %bb9
bb9:
  %t29 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t29, ptr %l23, !tbaa !27
  br label %bb12
bb10:
  br label %bb11
bb11:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d19, i32 0, i32 1) }, ptr %l23, !tbaa !27
  br label %bb12
bb12:
  %t30 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t30, ptr %l8, !tbaa !27
  %t32 = load i64, ptr %l6, !tbaa !24
  %t35 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %v4, ptr %v4, ptr %a4, i64 %t32)
  %t36 = extractvalue { i32, { i64, ptr } } %t35, 1
  %t37 = extractvalue { i32, { i64, ptr } } %t35, 0
  store i32 %t37, ptr %l32
  %t38 = icmp ne i32 %t37, 0
  br i1 %t38, label %bb14, label %ok.39, !prof !99
ok.39:
  store { i64, ptr } %t36, ptr %l31
  br label %bb13
bb13:
  %t40 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t40, ptr %l28, !tbaa !27
  br label %bb16
bb14:
  br label %bb15
bb15:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d20, i32 0, i32 1) }, ptr %l28, !tbaa !27
  br label %bb16
bb16:
  %t41 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t41, ptr %l9, !tbaa !27
  %t42 = load ptr, ptr %l0, !tbaa !29
  store ptr %t42, ptr %l33, !tbaa !29
  %t43 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t43, ptr %l34, !tbaa !27
  %t44 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t46 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v3, ptr %s1, { i64, ptr } %t44, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) })
  store i1 %t46, ptr %l36
  br label %bb17
bb17:
  %t47 = load i1, ptr %l36, !tbaa !21
  br i1 %t47, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l37, !tbaa !21
  br label %bb21
bb19:
  %t48 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t50 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v4, ptr %s1, { i64, ptr } %t48, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d22, i32 0, i32 1) })
  store i1 %t50, ptr %l39
  br label %bb20
bb20:
  %t51 = load i1, ptr %l39, !tbaa !21
  store i1 %t51, ptr %l37, !tbaa !21
  br label %bb21
bb21:
  %t52 = load i1, ptr %l37, !tbaa !21
  br i1 %t52, label %bb22, label %bb23
bb22:
  %t53 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t53, ptr %l40, !tbaa !27
  br label %bb24
bb23:
  %t55 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t56 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t58 = extractvalue { i64, ptr } %t55, 1
  %t59 = extractvalue { i64, ptr } %t55, 0
  %t60 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d23, i32 0, i32 1) }, 1
  %t61 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d23, i32 0, i32 1) }, 0
  %t62 = add i64 %t59, %t61
  %t64 = extractvalue { i64, ptr } %t56, 1
  %t65 = extractvalue { i64, ptr } %t56, 0
  %t66 = add i64 %t62, %t65
  %t67 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t66)
  call void @olang_textcopy(ptr %t67, ptr %t58, i64 %t59)
  %t68 = getelementptr i8, ptr %t67, i64 %t59
  call void @olang_textcopy(ptr %t68, ptr %t60, i64 %t61)
  %t69 = getelementptr i8, ptr %t68, i64 %t61
  call void @olang_textcopy(ptr %t69, ptr %t64, i64 %t65)
  %t70 = insertvalue { i64, ptr } undef, i64 %t66, 0
  %t71 = insertvalue { i64, ptr } %t70, ptr %t67, 1
  %t73 = extractvalue { i64, ptr } %t71, 0
  %t74 = extractvalue { i64, ptr } %t71, 1
  %t75 = mul i64 %t73, 1
  %t76 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t75)
  call void @llvm.memcpy.p0.p0.i64(ptr %t76, ptr %t74, i64 %t75, i1 false)
  %t77 = insertvalue { i64, ptr } undef, i64 %t73, 0
  %t78 = insertvalue { i64, ptr } %t77, ptr %t76, 1
  store { i64, ptr } %t78, ptr %l40, !tbaa !27
  br label %bb24
bb24:
  %t80 = load i64, ptr %l7, !tbaa !24
  %t81 = load ptr, ptr %l33, !tbaa !29
  %t82 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t83 = load { i64, ptr }, ptr %l40, !tbaa !27
  call void @compiler_2flisting_2ecompiler_2flisting_3aWriter_2ereach(ptr %v0, ptr %v3, ptr %v3, ptr %t81, { i64, ptr } %t82, { i64, ptr } %t83, i64 %t80)
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb26:
  store %olang.scope zeroinitializer, ptr %s3
  %t85 = insertvalue [6 x { i64, ptr }] undef, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d24, i32 0, i32 1) }, 0
  %t86 = insertvalue [6 x { i64, ptr }] %t85, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t87 = insertvalue [6 x { i64, ptr }] %t86, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d26, i32 0, i32 1) }, 2
  %t88 = insertvalue [6 x { i64, ptr }] %t87, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d27, i32 0, i32 1) }, 3
  %t89 = insertvalue [6 x { i64, ptr }] %t88, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d28, i32 0, i32 1) }, 4
  %t90 = insertvalue [6 x { i64, ptr }] %t89, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d29, i32 0, i32 1) }, 5
  %t92 = call ptr @__olang_scope_alloc_a(ptr %s3, i64 96, i64 8)
  store [6 x { i64, ptr }] %t90, ptr %t92
  store ptr %t92, ptr %l10
  store i64 0, ptr %l11, !tbaa !24
  %t94 = load ptr, ptr %l10
  store i64 6, ptr %l12, !tbaa !24
  br label %bb27
bb27:
  %t97 = load i64, ptr %l11, !tbaa !24
  %t98 = load i64, ptr %l12, !tbaa !24
  %t101 = icmp slt i64 %t97, %t98
  %t103 = xor i1 %t101, true
  br i1 %t103, label %bb28, label %bb29
bb28:
  br label %bb36
bb29:
  br label %bb30
bb30:
  %t105 = load ptr, ptr %l10
  %t106 = load i64, ptr %l11, !tbaa !24
  %t109 = getelementptr [6 x { i64, ptr }], ptr %t105, i64 0, i64 %t106
  %t110 = load { i64, ptr }, ptr %t109, !tbaa !37
  %t112 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t114 = load ptr, ptr @__olang_prog_scope
  %t117 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v2, ptr %t114, { i64, ptr } %t112, { i64, ptr } %t110)
  store i1 %t117, ptr %l60
  br label %bb31
bb31:
  %t118 = load i1, ptr %l60, !tbaa !21
  br i1 %t118, label %bb32, label %bb33
bb32:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb33:
  br label %bb34
bb34:
  br label %bb35
bb35:
  %t119 = load i64, ptr %l11, !tbaa !24
  %t121 = add i64 %t119, 1
  store i64 %t121, ptr %l11, !tbaa !24
  br label %bb27
bb36:
  call void @__olang_scope_close(ptr %s3)
  %t123 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t125 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t123, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d30, i32 0, i32 1) })
  store i1 %t125, ptr %l64
  br label %bb37
bb37:
  %t126 = load i1, ptr %l64, !tbaa !21
  br i1 %t126, label %bb38, label %bb39
bb38:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb39:
  br label %bb40
bb40:
  %t127 = load ptr, ptr %l0, !tbaa !29
  store ptr %t127, ptr %l65, !tbaa !29
  store { i64, ptr } %a1, ptr %l66, !tbaa !27
  %t129 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t131 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v2, ptr %s0, { i64, ptr } %t129, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d31, i32 0, i32 1) })
  store i1 %t131, ptr %l68
  br label %bb41
bb41:
  %t132 = load i1, ptr %l68, !tbaa !21
  %t133 = xor i1 %t132, true
  br i1 %t133, label %bb42, label %bb43
bb42:
  %t135 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t137 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v2, ptr %s0, { i64, ptr } %t135, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d32, i32 0, i32 1) })
  store i1 %t137, ptr %l72
  br label %bb44
bb43:
  store i1 false, ptr %l70, !tbaa !21
  br label %bb45
bb44:
  %t138 = load i1, ptr %l72, !tbaa !21
  %t139 = xor i1 %t138, true
  store i1 %t139, ptr %l70, !tbaa !21
  br label %bb45
bb45:
  %t141 = load i1, ptr %l70, !tbaa !21
  br i1 %t141, label %bb46, label %bb47
bb46:
  %t142 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t144 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v2, ptr %s0, { i64, ptr } %t142, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d33, i32 0, i32 1) })
  store i1 %t144, ptr %l76
  br label %bb48
bb47:
  store i1 false, ptr %l74, !tbaa !21
  br label %bb49
bb48:
  %t145 = load i1, ptr %l76, !tbaa !21
  %t146 = xor i1 %t145, true
  store i1 %t146, ptr %l74, !tbaa !21
  br label %bb49
bb49:
  %t148 = load ptr, ptr %l65, !tbaa !29
  %t149 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t150 = load i1, ptr %l74, !tbaa !21
  call void @compiler_2flisting_2ecompiler_2flisting_3aWriter_2ecode(ptr %v0, ptr %v1, ptr %v5, ptr %v6, ptr %v7, ptr %t148, { i64, ptr } %t149, i1 %t150)
  br label %bb50
bb50:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flisting_2ecompiler_2flisting_3aWriter_2ecode(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i1
  %l4 = alloca i1
  %l8 = alloca i1
  %l14 = alloca i1
  %l19 = alloca i1
  %l23 = alloca ptr
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i1 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i1, ptr %l2, !tbaa !21
  br i1 %t1, label %bb1, label %bb2
bb1:
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/listing:Writer", ptr %t3, i32 0, i32 9
  %t6 = load i64, ptr %t5, !tbaa !24
  %t8 = icmp sge i64 %t6, 0
  store i1 %t8, ptr %l4, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb3
bb3:
  %t10 = load i1, ptr %l4, !tbaa !21
  br i1 %t10, label %bb4, label %bb5
bb4:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/listing:Writer", ptr %t11, i32 0, i32 9
  %t14 = load i64, ptr %t13, !tbaa !24
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/listing:Writer", ptr %t15, i32 0, i32 6
  %t18 = load i64, ptr %t17, !tbaa !24
  %t21 = icmp ne i64 %t14, %t18
  br i1 %t21, label %bb6, label %bb7
bb5:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb10
bb6:
  store i1 true, ptr %l14, !tbaa !21
  br label %bb9
bb7:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/listing:Writer", ptr %t23, i32 0, i32 7
  %t26 = load { i64, ptr }, ptr %t25, !tbaa !27
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/listing:Writer", ptr %t27, i32 0, i32 5
  %t30 = load { i64, ptr }, ptr %t29, !tbaa !27
  %t33 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v0, { i64, ptr } %t26, { i64, ptr } %t30)
  store i1 %t33, ptr %l19
  br label %bb8
bb8:
  %t34 = load i1, ptr %l19, !tbaa !21
  %t35 = xor i1 %t34, true
  store i1 %t35, ptr %l14, !tbaa !21
  br label %bb9
bb9:
  %t37 = load i1, ptr %l14, !tbaa !21
  store i1 %t37, ptr %l8, !tbaa !21
  br label %bb10
bb10:
  %t38 = load i1, ptr %l8, !tbaa !21
  br i1 %t38, label %bb11, label %bb12
bb11:
  %t39 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flisting_2ecompiler_2flisting_3aWriter_2eplace(ptr %v0, ptr %v2, ptr %v3, ptr %v4, ptr %t39)
  br label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb14
bb14:
  %t41 = load i1, ptr %l2, !tbaa !21
  br i1 %t41, label %bb15, label %bb16
bb15:
  %t43 = load ptr, ptr %l0, !tbaa !29
  store ptr %t43, ptr %l23, !tbaa !29
  %t44 = load ptr, ptr %l23, !tbaa !29
  %t45 = getelementptr %"compiler/listing:Writer", ptr %t44, i32 0, i32 11
  %t46 = load i64, ptr %t45, !tbaa !24
  %t48 = add i64 %t46, 1
  %t50 = load ptr, ptr %l23, !tbaa !29
  %t51 = getelementptr %"compiler/listing:Writer", ptr %t50, i32 0, i32 11
  store i64 %t48, ptr %t51, !tbaa !24
  br label %bb17
bb16:
  br label %bb17
bb17:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/listing:Writer", ptr %t52, i32 0, i32 10
  %t57 = extractvalue { i64, ptr } %a1, 1
  %t58 = extractvalue { i64, ptr } %a1, 0
  %t59 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t60 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  %t61 = add i64 %t58, %t60
  %t62 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t61)
  call void @olang_textcopy(ptr %t62, ptr %t57, i64 %t58)
  %t63 = getelementptr i8, ptr %t62, i64 %t58
  call void @olang_textcopy(ptr %t63, ptr %t59, i64 %t60)
  %t64 = insertvalue { i64, ptr } undef, i64 %t61, 0
  %t65 = insertvalue { i64, ptr } %t64, ptr %t62, 1
  %t67 = extractvalue { i64, ptr } %t65, 0
  %t68 = extractvalue { i64, ptr } %t65, 1
  %t69 = mul i64 %t67, 1
  %t70 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t69)
  call void @llvm.memcpy.p0.p0.i64(ptr %t70, ptr %t68, i64 %t69, i1 false)
  %t71 = insertvalue { i64, ptr } undef, i64 %t67, 0
  %t72 = insertvalue { i64, ptr } %t71, ptr %t70, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s0, ptr %t54, { i64, ptr } %t72)
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flisting_2ecompiler_2flisting_3aWriter_2eirLine(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, { i64, ptr } %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i32
  %l22 = alloca i1
  %l23 = alloca { i64, ptr }
  %l26 = alloca i1
  %l30 = alloca i64
  %l31 = alloca { i64, ptr }
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i64
  %l39 = alloca { i64, ptr }
  %l40 = alloca i64
  %l41 = alloca i32
  %l42 = alloca i64
  %l43 = alloca i32
  %l46 = alloca i1
  %l47 = alloca { i64, ptr }
  %l52 = alloca i64
  %l57 = alloca { i64, ptr }
  %l58 = alloca i64
  %l59 = alloca i64
  %l63 = alloca { i64, ptr }
  %l64 = alloca { i64, ptr }
  %l65 = alloca i64
  %l68 = alloca i64
  %l69 = alloca i64
  %l74 = alloca { i64, ptr }
  %l76 = alloca i64
  %l79 = alloca i1
  %l83 = alloca ptr
  %l84 = alloca { i64, ptr }
  %l86 = alloca i1
  %l87 = alloca i1
  %l89 = alloca { i64, ptr }
  %l90 = alloca i1
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v1, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d35, i32 0, i32 1) })
  %t4 = extractvalue { i32, i64 } %t3, 1
  %t5 = extractvalue { i32, i64 } %t3, 0
  store i32 %t5, ptr %l11
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store i64 %t4, ptr %l10
  br label %bb1
bb1:
  %t8 = load i64, ptr %l10, !tbaa !24
  store i64 %t8, ptr %l8, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i64 -1, ptr %l8, !tbaa !24
  br label %bb4
bb4:
  %t9 = load i64, ptr %l8, !tbaa !24
  store i64 %t9, ptr %l3, !tbaa !24
  %t10 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t10, 1
  %t13 = extractvalue { i64, ptr } %t10, 0
  %t14 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t13)
  call void @olang_textcopy(ptr %t14, ptr %t12, i64 %t13)
  %t15 = insertvalue { i64, ptr } undef, i64 %t13, 0
  %t16 = insertvalue { i64, ptr } %t15, ptr %t14, 1
  store { i64, ptr } %t16, ptr %l4, !tbaa !27
  %t18 = load i64, ptr %l3, !tbaa !24
  %t20 = icmp sge i64 %t18, 0
  br i1 %t20, label %bb5, label %bb6
bb5:
  store %olang.scope zeroinitializer, ptr %s2
  %t22 = load i64, ptr %l3, !tbaa !24
  %t24 = add i64 %t22, 6
  store i64 %t24, ptr %l5, !tbaa !24
  br label %bb7
bb6:
  br label %bb55
bb7:
  %t26 = load i64, ptr %l5, !tbaa !24
  %t27 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t27, 0
  %t32 = icmp slt i64 %t26, %t29
  br i1 %t32, label %bb8, label %bb9
bb8:
  %t34 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t34, ptr %l23, !tbaa !27
  %t35 = load i64, ptr %l5, !tbaa !24
  %t37 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = getelementptr i8, ptr %t38, i64 %t35
  %t40 = load i8, ptr %t39, !tbaa !32
  %t42 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t40)
  store i1 %t42, ptr %l26
  br label %bb10
bb9:
  store i1 false, ptr %l22, !tbaa !21
  br label %bb11
bb10:
  %t43 = load i1, ptr %l26, !tbaa !21
  store i1 %t43, ptr %l22, !tbaa !21
  br label %bb11
bb11:
  %t44 = load i1, ptr %l22, !tbaa !21
  %t45 = xor i1 %t44, true
  br i1 %t45, label %bb12, label %bb13
bb12:
  br label %bb16
bb13:
  br label %bb14
bb14:
  %t47 = load i64, ptr %l5, !tbaa !24
  %t49 = add i64 %t47, 1
  store i64 %t49, ptr %l5, !tbaa !24
  br label %bb15
bb15:
  br label %bb7
bb16:
  %t51 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t51, ptr %l31, !tbaa !27
  %t52 = load i64, ptr %l3, !tbaa !24
  %t54 = add i64 %t52, 6
  store i64 %t54, ptr %l33, !tbaa !24
  %t55 = load i64, ptr %l5, !tbaa !24
  store i64 %t55, ptr %l34, !tbaa !24
  %t56 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t57 = extractvalue { i64, ptr } %t56, 0
  store i64 %t57, ptr %l35, !tbaa !24
  %t58 = load i64, ptr %l33, !tbaa !24
  %t59 = icmp sge i64 %t58, 0
  br i1 %t59, label %bb17, label %bb18
bb17:
  %t61 = load i64, ptr %l33, !tbaa !24
  %t62 = load i64, ptr %l34, !tbaa !24
  %t63 = icmp sle i64 %t61, %t62
  br i1 %t63, label %bb19, label %bb20
bb18:
  call void @__olang_check_failed(ptr @olang_loc_6783e9980d688233_30d5d90792fe0dc7)
  unreachable
bb19:
  %t65 = load i64, ptr %l34, !tbaa !24
  %t66 = load i64, ptr %l35, !tbaa !24
  %t67 = icmp sle i64 %t65, %t66
  br i1 %t67, label %bb21, label %bb22
bb20:
  call void @__olang_check_failed(ptr @olang_loc_6783e9980d688233_30d5d90792fe0dc7)
  unreachable
bb21:
  %t69 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !27
  %t71 = load i64, ptr %l33, !tbaa !24
  %t72 = load i64, ptr %l34, !tbaa !24
  %t73 = getelementptr i8, ptr %t70, i64 %t71
  %t74 = sub i64 %t72, %t71
  %t75 = insertvalue { i64, ptr } undef, i64 %t74, 0
  %t76 = insertvalue { i64, ptr } %t75, ptr %t73, 1
  store { i64, ptr } %t76, ptr %l39, !tbaa !27
  %t77 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s2, i64 10)
  %t78 = extractvalue { i32, i64 } %t77, 1
  %t79 = extractvalue { i32, i64 } %t77, 0
  store i32 %t79, ptr %l41
  %t80 = icmp ne i32 %t79, 0
  br i1 %t80, label %bb24, label %ok.81, !prof !99
ok.81:
  store i64 %t78, ptr %l40
  br label %bb23
bb22:
  call void @__olang_check_failed(ptr @olang_loc_6783e9980d688233_30d5d90792fe0dc7)
  unreachable
bb23:
  %t82 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t83 = load i64, ptr %l40, !tbaa !24
  %t84 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v1, { i64, ptr } %t82, i64 %t83)
  %t85 = extractvalue { i32, i64 } %t84, 1
  %t86 = extractvalue { i32, i64 } %t84, 0
  store i32 %t86, ptr %l43
  %t87 = icmp ne i32 %t86, 0
  br i1 %t87, label %bb27, label %ok.88, !prof !99
ok.88:
  store i64 %t85, ptr %l42
  br label %bb26
bb24:
  br label %bb25
bb25:
  store i64 -1, ptr %l30, !tbaa !24
  br label %bb28
bb26:
  %t89 = load i64, ptr %l42, !tbaa !24
  store i64 %t89, ptr %l30, !tbaa !24
  br label %bb28
bb27:
  br label %bb25
bb28:
  %t90 = load i64, ptr %l30, !tbaa !24
  store i64 %t90, ptr %l6, !tbaa !24
  %t91 = load i64, ptr %l3, !tbaa !24
  %t93 = icmp sge i64 %t91, 2
  br i1 %t93, label %bb29, label %bb30
bb29:
  %t95 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t95, ptr %l47, !tbaa !27
  %t96 = load i64, ptr %l3, !tbaa !24
  %t98 = sub i64 %t96, 2
  %t100 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t101 = load ptr, ptr %t100, !tbaa !27
  %t102 = getelementptr i8, ptr %t101, i64 %t98
  %t103 = load i8, ptr %t102, !tbaa !32
  %t105 = icmp eq i8 %t103, 44
  store i1 %t105, ptr %l46, !tbaa !21
  br label %bb31
bb30:
  store i1 false, ptr %l46, !tbaa !21
  br label %bb31
bb31:
  %t107 = load i1, ptr %l46, !tbaa !21
  br i1 %t107, label %bb32, label %bb33
bb32:
  %t108 = load i64, ptr %l3, !tbaa !24
  %t110 = sub i64 %t108, 2
  store i64 %t110, ptr %l52, !tbaa !24
  br label %bb34
bb33:
  %t112 = load i64, ptr %l3, !tbaa !24
  %t114 = sub i64 %t112, 1
  store i64 %t114, ptr %l52, !tbaa !24
  br label %bb34
bb34:
  %t116 = load i64, ptr %l52, !tbaa !24
  %t117 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t117, ptr %l57, !tbaa !27
  store i64 %t116, ptr %l58, !tbaa !24
  %t119 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t120 = extractvalue { i64, ptr } %t119, 0
  store i64 %t120, ptr %l59, !tbaa !24
  %t121 = icmp sge i64 0, 0
  br i1 %t121, label %bb35, label %bb36
bb35:
  %t123 = load i64, ptr %l58, !tbaa !24
  %t124 = icmp sle i64 0, %t123
  br i1 %t124, label %bb37, label %bb38
bb36:
  call void @__olang_check_failed(ptr @olang_loc_681ac7b531dd0cd6_76b1194f7bcdc9ea)
  unreachable
bb37:
  %t126 = load i64, ptr %l58, !tbaa !24
  %t127 = load i64, ptr %l59, !tbaa !24
  %t128 = icmp sle i64 %t126, %t127
  br i1 %t128, label %bb39, label %bb40
bb38:
  call void @__olang_check_failed(ptr @olang_loc_681ac7b531dd0cd6_76b1194f7bcdc9ea)
  unreachable
bb39:
  %t130 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !27
  %t132 = load i64, ptr %l58, !tbaa !24
  %t133 = getelementptr i8, ptr %t131, i64 0
  %t134 = sub i64 %t132, 0
  %t135 = insertvalue { i64, ptr } undef, i64 %t134, 0
  %t136 = insertvalue { i64, ptr } %t135, ptr %t133, 1
  store { i64, ptr } %t136, ptr %l63, !tbaa !27
  %t137 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t137, ptr %l64, !tbaa !27
  %t138 = load i64, ptr %l5, !tbaa !24
  store i64 %t138, ptr %l65, !tbaa !24
  %t139 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t142 = extractvalue { i64, ptr } %t139, 0
  store i64 %t142, ptr %l68, !tbaa !24
  %t143 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t144 = extractvalue { i64, ptr } %t143, 0
  store i64 %t144, ptr %l69, !tbaa !24
  %t145 = load i64, ptr %l65, !tbaa !24
  %t146 = icmp sge i64 %t145, 0
  br i1 %t146, label %bb41, label %bb42
bb40:
  call void @__olang_check_failed(ptr @olang_loc_681ac7b531dd0cd6_76b1194f7bcdc9ea)
  unreachable
bb41:
  %t148 = load i64, ptr %l65, !tbaa !24
  %t149 = load i64, ptr %l68, !tbaa !24
  %t150 = icmp sle i64 %t148, %t149
  br i1 %t150, label %bb43, label %bb44
bb42:
  call void @__olang_check_failed(ptr @olang_loc_681ac7b531dd0cd6_76b1194f7bcdc9ea)
  unreachable
bb43:
  %t152 = load i64, ptr %l68, !tbaa !24
  %t153 = load i64, ptr %l69, !tbaa !24
  %t154 = icmp sle i64 %t152, %t153
  br i1 %t154, label %bb45, label %bb46
bb44:
  call void @__olang_check_failed(ptr @olang_loc_681ac7b531dd0cd6_76b1194f7bcdc9ea)
  unreachable
bb45:
  %t156 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t157 = load ptr, ptr %t156, !tbaa !27
  %t158 = load i64, ptr %l65, !tbaa !24
  %t159 = load i64, ptr %l68, !tbaa !24
  %t160 = getelementptr i8, ptr %t157, i64 %t158
  %t161 = sub i64 %t159, %t158
  %t162 = insertvalue { i64, ptr } undef, i64 %t161, 0
  %t163 = insertvalue { i64, ptr } %t162, ptr %t160, 1
  %t164 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t165 = extractvalue { i64, ptr } %t164, 1
  %t166 = extractvalue { i64, ptr } %t164, 0
  %t168 = extractvalue { i64, ptr } %t163, 1
  %t169 = extractvalue { i64, ptr } %t163, 0
  %t170 = add i64 %t166, %t169
  %t171 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t170)
  call void @olang_textcopy(ptr %t171, ptr %t165, i64 %t166)
  %t172 = getelementptr i8, ptr %t171, i64 %t166
  call void @olang_textcopy(ptr %t172, ptr %t168, i64 %t169)
  %t173 = insertvalue { i64, ptr } undef, i64 %t170, 0
  %t174 = insertvalue { i64, ptr } %t173, ptr %t171, 1
  store { i64, ptr } %t174, ptr %l74, !tbaa !27
  %t175 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t176 = extractvalue { i64, ptr } %t175, 0
  %t177 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t178 = extractvalue { i64, ptr } %t177, 0
  store i64 %t178, ptr %l76, !tbaa !24
  %t180 = load i64, ptr %l76, !tbaa !24
  %t181 = icmp eq i64 %t176, %t180
  br i1 %t181, label %bb47, label %bb48
bb46:
  call void @__olang_check_failed(ptr @olang_loc_681ac7b531dd0cd6_76b1194f7bcdc9ea)
  unreachable
bb47:
  %t183 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t184 = load ptr, ptr %t183, !tbaa !27
  %t185 = getelementptr { i64, ptr }, ptr %l74, i32 0, i32 1
  %t186 = load ptr, ptr %t185, !tbaa !27
  %t187 = load i64, ptr %l76, !tbaa !24
  %t188 = mul i64 %t187, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t184, ptr %t186, i64 %t188, i1 false)
  br label %bb49
bb48:
  %t189 = load { i64, ptr }, ptr %l74, !tbaa !27
  store { i64, ptr } %t189, ptr %l4, !tbaa !27
  br label %bb49
bb49:
  %t190 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t192 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s2, { i64, ptr } %t190, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d36, i32 0, i32 1) })
  store i1 %t192, ptr %l79
  br label %bb50
bb50:
  %t193 = load i1, ptr %l79, !tbaa !21
  br i1 %t193, label %bb51, label %bb52
bb51:
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t195 = load i64, ptr %l6, !tbaa !24
  call void @compiler_2flisting_2ecompiler_2flisting_3aWriter_2eirPlace(ptr %v0, ptr %v2, ptr %t194, i64 %t195, ptr %a2)
  br label %bb53
bb52:
  br label %bb54
bb53:
  br label %bb54
bb54:
  call void @__olang_scope_close(ptr %s2)
  br label %bb55
bb55:
  %t200 = load ptr, ptr %l0, !tbaa !29
  store ptr %t200, ptr %l83, !tbaa !29
  %t201 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t201, ptr %l84, !tbaa !27
  %t202 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t204 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s0, { i64, ptr } %t202, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d37, i32 0, i32 1) })
  store i1 %t204, ptr %l86
  br label %bb56
bb56:
  %t205 = load i1, ptr %l86, !tbaa !21
  br i1 %t205, label %bb57, label %bb58
bb57:
  %t206 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t208 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v1, ptr %v1, { i64, ptr } %t206)
  store { i64, ptr } %t208, ptr %l89
  br label %bb59
bb58:
  store i1 false, ptr %l87, !tbaa !21
  br label %bb61
bb59:
  %t209 = load { i64, ptr }, ptr %l89, !tbaa !27
  %t210 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s0, { i64, ptr } %t209, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d38, i32 0, i32 1) })
  store i1 %t210, ptr %l90
  br label %bb60
bb60:
  %t211 = load i1, ptr %l90, !tbaa !21
  %t212 = xor i1 %t211, true
  store i1 %t212, ptr %l87, !tbaa !21
  br label %bb61
bb61:
  %t214 = load ptr, ptr %l83, !tbaa !29
  %t215 = load { i64, ptr }, ptr %l84, !tbaa !27
  %t216 = load i1, ptr %l87, !tbaa !21
  call void @compiler_2flisting_2ecompiler_2flisting_3aWriter_2ecode(ptr %v0, ptr %s0, ptr %v3, ptr %v4, ptr %v5, ptr %t214, { i64, ptr } %t215, i1 %t216)
  br label %bb62
bb62:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2flisting_2ecompiler_2flisting_3aWriter_2eleftover(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca %"compiler/listing:Remark"
  %l6 = alloca { i64, ptr }
  %l8 = alloca %"std/prelude/text:StringBuilder"
  %l9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca i64
  %l18 = alloca ptr
  %l20 = alloca i64
  %l24 = alloca ptr
  %l27 = alloca %"compiler/listing:Remark"
  %l30 = alloca i64
  %l32 = alloca i1
  %l36 = alloca i1
  %l37 = alloca i1
  %l40 = alloca { i64, ptr }
  %l42 = alloca i1
  %l45 = alloca { i64, ptr }
  %l46 = alloca { i64, ptr }
  %l47 = alloca i64
  %l48 = alloca { i64, ptr }
  %l51 = alloca i1
  %l58 = alloca i64
  %l60 = alloca { i64, ptr }
  %l61 = alloca { i64, ptr }
  %l62 = alloca i64
  %l63 = alloca { i64, ptr }
  %l66 = alloca %"std/prelude/text:StringBuilder"
  %l73 = alloca i64
  %l75 = alloca i64
  %l80 = alloca { i64, ptr }
  %l81 = alloca i64
  %l83 = alloca i64
  %l84 = alloca i32
  %l86 = alloca i1
  %l87 = alloca { i64, ptr }
  %l89 = alloca ptr
  %l90 = alloca { i64, ptr }
  %l91 = alloca i64
  %l92 = alloca i64
  %l98 = alloca { i64, ptr }
  %l99 = alloca { i64, ptr }
  %l100 = alloca i64
  %l103 = alloca i64
  %l104 = alloca i64
  %l117 = alloca ptr
  %l120 = alloca { i64, ptr }
  %l125 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l14
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l1
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/listing:Writer", ptr %t3, i32 0, i32 2
  %t6 = load ptr, ptr %t5, !tbaa !29
  store ptr %t6, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  store %olang.scope zeroinitializer, ptr %s2
  %t8 = load i64, ptr %l3, !tbaa !24
  store i64 %t8, ptr %l17, !tbaa !24
  %t9 = load ptr, ptr %l2, !tbaa !29
  store ptr %t9, ptr %l18, !tbaa !29
  %t10 = load ptr, ptr %l18, !tbaa !29
  %t11 = call ptr @__olang_scope_or(ptr %v2, ptr %t10)
  %t12 = ptrtoint ptr %t11 to i64
  %t14 = inttoptr i64 %t12 to ptr
  %t15 = load ptr, ptr %l18, !tbaa !29
  %t16 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flisting_3aRemark_3e_2eLen_3ccompiler_2flisting_3aRemark_3e(ptr %t14, ptr %t15)
  store i64 %t16, ptr %l20
  br label %bb3
bb3:
  %t17 = load i64, ptr %l17, !tbaa !24
  %t18 = load i64, ptr %l20, !tbaa !24
  %t19 = icmp slt i64 %t17, %t18
  %t21 = xor i1 %t19, true
  br i1 %t21, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s2)
  br label %bb27
bb5:
  br label %bb6
bb6:
  %t23 = load i64, ptr %l3, !tbaa !24
  store i64 %t23, ptr %l4, !tbaa !24
  %t25 = load ptr, ptr %l2, !tbaa !29
  store ptr %t25, ptr %l24, !tbaa !29
  %t26 = load i64, ptr %l3, !tbaa !24
  %t27 = load ptr, ptr %l24, !tbaa !29
  %t28 = call ptr @__olang_scope_or(ptr %v2, ptr %t27)
  %t29 = ptrtoint ptr %t28 to i64
  %t31 = inttoptr i64 %t29 to ptr
  %t32 = load ptr, ptr %l24, !tbaa !29
  %t34 = call %"compiler/listing:Remark" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flisting_3aRemark_3e_2eAt_3ccompiler_2flisting_3aRemark_3e(ptr %t31, ptr %s2, ptr %t32, i64 %t26)
  store %"compiler/listing:Remark" %t34, ptr %l27
  br label %bb7
bb7:
  %t35 = load %"compiler/listing:Remark", ptr %l27
  store %"compiler/listing:Remark" %t35, ptr %l5
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/listing:Writer", ptr %t36, i32 0, i32 4
  %t40 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t38)
  store i64 %t40, ptr %l30
  br label %bb8
bb8:
  %t41 = load i64, ptr %l30, !tbaa !24
  %t42 = icmp sgt i64 %t41, 0
  br i1 %t42, label %bb9, label %bb10
bb9:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/listing:Writer", ptr %t44, i32 0, i32 4
  %t47 = load i64, ptr %l4, !tbaa !24
  %t50 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t46, i64 %t47)
  store i1 %t50, ptr %l36
  br label %bb11
bb10:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb12
bb11:
  %t51 = load i1, ptr %l36, !tbaa !21
  store i1 %t51, ptr %l32, !tbaa !21
  br label %bb12
bb12:
  %t52 = load i1, ptr %l32, !tbaa !21
  br i1 %t52, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l37, !tbaa !21
  br label %bb16
bb14:
  %t53 = getelementptr %"compiler/listing:Remark", ptr %l5, i32 0, i32 5
  %t54 = load { i64, ptr }, ptr %t53, !tbaa !27
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/listing:Writer", ptr %t55, i32 0, i32 3
  %t58 = load { i64, ptr }, ptr %t57, !tbaa !27
  store { i64, ptr } %t58, ptr %l40, !tbaa !27
  %t59 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t60 = extractvalue { i64, ptr } %t59, 1
  %t61 = call ptr @__olang_scope_or(ptr %v3, ptr %t60)
  %t62 = ptrtoint ptr %t61 to i64
  %t64 = inttoptr i64 %t62 to ptr
  %t66 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t67 = call i1 @compiler_2flisting_2eofAny(ptr %s2, ptr %t64, { i64, ptr } %t54, { i64, ptr } %t66)
  store i1 %t67, ptr %l42
  br label %bb15
bb15:
  %t68 = load i1, ptr %l42, !tbaa !21
  %t69 = xor i1 %t68, true
  store i1 %t69, ptr %l37, !tbaa !21
  br label %bb16
bb16:
  %t71 = load i1, ptr %l37, !tbaa !21
  br i1 %t71, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s2)
  br label %bb26
bb18:
  br label %bb19
bb19:
  %t73 = call { i64, ptr } @compiler_2flisting_2eplaceOf(ptr %s2, ptr %s0, ptr %l5)
  store { i64, ptr } %t73, ptr %l45
  br label %bb20
bb20:
  %t74 = load { i64, ptr }, ptr %l45, !tbaa !27
  store { i64, ptr } %t74, ptr %l6, !tbaa !27
  %t75 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t75, ptr %l46, !tbaa !27
  %t76 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t77 = extractvalue { i64, ptr } %t76, 0
  store i64 %t77, ptr %l47, !tbaa !24
  %t78 = load i64, ptr %l47, !tbaa !24
  %t79 = mul i64 %t78, 1
  %t80 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t79)
  %t81 = insertvalue { i64, ptr } undef, i64 %t78, 0
  %t82 = insertvalue { i64, ptr } %t81, ptr %t80, 1
  store { i64, ptr } %t82, ptr %l48, !tbaa !27
  %t83 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t84 = load ptr, ptr %t83, !tbaa !27
  %t85 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !27
  %t87 = load i64, ptr %l47, !tbaa !24
  %t88 = mul i64 %t87, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t84, ptr %t86, i64 %t88, i1 false)
  %t89 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t93 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H0127831368543eff3b7740d7d3240080(ptr %s0, ptr %s2, ptr %l1, { i64, ptr } %t89)
  store i1 %t93, ptr %l51
  br label %bb21
bb21:
  %t94 = load i1, ptr %l51, !tbaa !21
  %t95 = xor i1 %t94, true
  br i1 %t95, label %bb22, label %bb23
bb22:
  %t97 = load { i64, ptr }, ptr %l6, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l1, { i64, ptr } %t97)
  br label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s2)
  br label %bb26
bb26:
  %t100 = load i64, ptr %l3, !tbaa !24
  %t102 = add i64 %t100, 1
  store i64 %t102, ptr %l3, !tbaa !24
  br label %bb2
bb27:
  %t105 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l1)
  store i64 %t105, ptr %l58
  br label %bb28
bb28:
  %t106 = load i64, ptr %l58, !tbaa !24
  %t107 = icmp eq i64 %t106, 0
  br i1 %t107, label %bb29, label %bb30
bb29:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d39, i32 0, i32 1) }, ptr %l60, !tbaa !27
  %t109 = load { i64, ptr }, ptr %l60, !tbaa !27
  store { i64, ptr } %t109, ptr %l61, !tbaa !27
  %t110 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t111 = extractvalue { i64, ptr } %t110, 0
  store i64 %t111, ptr %l62, !tbaa !24
  %t112 = load i64, ptr %l62, !tbaa !24
  %t113 = mul i64 %t112, 1
  %t114 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t113)
  %t115 = insertvalue { i64, ptr } undef, i64 %t112, 0
  %t116 = insertvalue { i64, ptr } %t115, ptr %t114, 1
  store { i64, ptr } %t116, ptr %l63, !tbaa !27
  %t117 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t118 = load ptr, ptr %t117, !tbaa !27
  %t119 = getelementptr { i64, ptr }, ptr %l61, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !27
  %t121 = load i64, ptr %l62, !tbaa !24
  %t122 = mul i64 %t121, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t118, ptr %t120, i64 %t122, i1 false)
  %t123 = load { i64, ptr }, ptr %l63, !tbaa !27
  store { i64, ptr } %t123, ptr %l61, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t124 = load { i64, ptr }, ptr %l61, !tbaa !27
  store { i64, ptr } %t124, ptr %rv
  br label %ret
bb30:
  br label %bb31
bb31:
  %t125 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_40, 0
  %t126 = insertvalue { ptr, ptr } %t125, ptr null, 1
  %t129 = extractvalue { ptr, ptr } %t126, 0
  %t130 = extractvalue { ptr, ptr } %t126, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H1642129570dad448bb7dcc47c334de83(ptr %s0, ptr %s0, ptr %l1, ptr %t129, ptr %t130)
  br label %bb32
bb32:
  %t131 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t131, ptr %l66
  br label %bb33
bb33:
  %t132 = load %"std/prelude/text:StringBuilder", ptr %l66
  store %"std/prelude/text:StringBuilder" %t132, ptr %l8
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t135 = getelementptr %"compiler/listing:Writer", ptr %t133, i32 0, i32 0
  %t136 = load { i64, ptr }, ptr %t135, !tbaa !27
  %t138 = extractvalue { i64, ptr } %t136, 1
  %t139 = extractvalue { i64, ptr } %t136, 0
  %t140 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d41, i32 0, i32 1) }, 1
  %t141 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d41, i32 0, i32 1) }, 0
  %t142 = add i64 %t139, %t141
  %t143 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t142)
  call void @olang_textcopy(ptr %t143, ptr %t138, i64 %t139)
  %t144 = getelementptr i8, ptr %t143, i64 %t139
  call void @olang_textcopy(ptr %t144, ptr %t140, i64 %t141)
  %t145 = insertvalue { i64, ptr } undef, i64 %t142, 0
  %t146 = insertvalue { i64, ptr } %t145, ptr %t143, 1
  %t148 = extractvalue { i64, ptr } %t146, 0
  %t149 = extractvalue { i64, ptr } %t146, 1
  %t150 = mul i64 %t148, 1
  %t151 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t150)
  call void @llvm.memcpy.p0.p0.i64(ptr %t151, ptr %t149, i64 %t150, i1 false)
  %t152 = insertvalue { i64, ptr } undef, i64 %t148, 0
  %t153 = insertvalue { i64, ptr } %t152, ptr %t151, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l8, { i64, ptr } %t153)
  br label %bb34
bb34:
  store ptr %l1, ptr %l9, !tbaa !29
  store i64 0, ptr %l10, !tbaa !24
  br label %bb35
bb35:
  store %olang.scope zeroinitializer, ptr %s9
  %t157 = load i64, ptr %l10, !tbaa !24
  store i64 %t157, ptr %l73, !tbaa !24
  %t158 = load ptr, ptr %l9, !tbaa !29
  %t160 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %t158)
  store i64 %t160, ptr %l75
  br label %bb36
bb36:
  %t161 = load i64, ptr %l73, !tbaa !24
  %t162 = load i64, ptr %l75, !tbaa !24
  %t163 = icmp slt i64 %t161, %t162
  %t165 = xor i1 %t163, true
  br i1 %t165, label %bb37, label %bb38
bb37:
  call void @__olang_scope_close(ptr %s9)
  br label %bb66
bb38:
  br label %bb39
bb39:
  %t167 = load ptr, ptr %l9, !tbaa !29
  %t168 = load i64, ptr %l10, !tbaa !24
  %t171 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %t167, i64 %t168)
  store { i64, ptr } %t171, ptr %l80
  br label %bb40
bb40:
  %t172 = load { i64, ptr }, ptr %l80, !tbaa !27
  store { i64, ptr } %t172, ptr %l11, !tbaa !27
  %t173 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t175 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %s0, ptr %s9, { i64, ptr } %t173, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d42, i32 0, i32 1) })
  %t176 = extractvalue { i32, i64 } %t175, 1
  %t177 = extractvalue { i32, i64 } %t175, 0
  store i32 %t177, ptr %l84
  %t178 = icmp ne i32 %t177, 0
  br i1 %t178, label %bb42, label %ok.179, !prof !99
ok.179:
  store i64 %t176, ptr %l83
  br label %bb41
bb41:
  %t180 = load i64, ptr %l83, !tbaa !24
  store i64 %t180, ptr %l81, !tbaa !24
  br label %bb44
bb42:
  br label %bb43
bb43:
  store i64 0, ptr %l81, !tbaa !24
  br label %bb44
bb44:
  %t181 = load i64, ptr %l81, !tbaa !24
  store i64 %t181, ptr %l12, !tbaa !24
  %t182 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t184 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s9, { i64, ptr } %t182, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d43, i32 0, i32 1) })
  store i1 %t184, ptr %l86
  br label %bb45
bb45:
  %t185 = load i1, ptr %l86, !tbaa !21
  br i1 %t185, label %bb46, label %bb47
bb46:
  store { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d44, i32 0, i32 1) }, ptr %l87, !tbaa !27
  br label %bb61
bb47:
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t188 = getelementptr %"compiler/listing:Writer", ptr %t186, i32 0, i32 1
  %t189 = load ptr, ptr %t188, !tbaa !29
  store ptr %t189, ptr %l89, !tbaa !29
  %t190 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t190, ptr %l90, !tbaa !27
  %t191 = load i64, ptr %l12, !tbaa !24
  store i64 %t191, ptr %l91, !tbaa !24
  %t192 = load { i64, ptr }, ptr %l90, !tbaa !27
  %t193 = extractvalue { i64, ptr } %t192, 0
  store i64 %t193, ptr %l92, !tbaa !24
  %t194 = icmp sge i64 0, 0
  br i1 %t194, label %bb48, label %bb49
bb48:
  %t196 = load i64, ptr %l91, !tbaa !24
  %t197 = icmp sle i64 0, %t196
  br i1 %t197, label %bb50, label %bb51
bb49:
  call void @__olang_check_failed(ptr @olang_loc_c76de25993fa5b69_1c32ce588582e85d)
  unreachable
bb50:
  %t199 = load i64, ptr %l91, !tbaa !24
  %t200 = load i64, ptr %l92, !tbaa !24
  %t201 = icmp sle i64 %t199, %t200
  br i1 %t201, label %bb52, label %bb53
bb51:
  call void @__olang_check_failed(ptr @olang_loc_c76de25993fa5b69_1c32ce588582e85d)
  unreachable
bb52:
  %t203 = getelementptr { i64, ptr }, ptr %l90, i32 0, i32 1
  %t204 = load ptr, ptr %t203, !tbaa !27
  %t205 = load i64, ptr %l91, !tbaa !24
  %t206 = getelementptr i8, ptr %t204, i64 0
  %t207 = sub i64 %t205, 0
  %t208 = insertvalue { i64, ptr } undef, i64 %t207, 0
  %t209 = insertvalue { i64, ptr } %t208, ptr %t206, 1
  %t210 = load ptr, ptr %l89, !tbaa !29
  %t211 = call ptr @__olang_scope_or(ptr %v4, ptr %t210)
  %t212 = ptrtoint ptr %t211 to i64
  %t214 = inttoptr i64 %t212 to ptr
  %t215 = load ptr, ptr %l89, !tbaa !29
  %t217 = call { i64, ptr } @compiler_2flisting_2ecompiler_2flisting_3aSources_2eShown(ptr %t214, ptr %s0, ptr %s9, ptr %t215, { i64, ptr } %t209)
  store { i64, ptr } %t217, ptr %l98
  br label %bb54
bb53:
  call void @__olang_check_failed(ptr @olang_loc_c76de25993fa5b69_1c32ce588582e85d)
  unreachable
bb54:
  %t218 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t218, ptr %l99, !tbaa !27
  %t219 = load i64, ptr %l12, !tbaa !24
  store i64 %t219, ptr %l100, !tbaa !24
  %t220 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t223 = extractvalue { i64, ptr } %t220, 0
  store i64 %t223, ptr %l103, !tbaa !24
  %t224 = load { i64, ptr }, ptr %l99, !tbaa !27
  %t225 = extractvalue { i64, ptr } %t224, 0
  store i64 %t225, ptr %l104, !tbaa !24
  %t226 = load i64, ptr %l100, !tbaa !24
  %t227 = icmp sge i64 %t226, 0
  br i1 %t227, label %bb55, label %bb56
bb55:
  %t229 = load i64, ptr %l100, !tbaa !24
  %t230 = load i64, ptr %l103, !tbaa !24
  %t231 = icmp sle i64 %t229, %t230
  br i1 %t231, label %bb57, label %bb58
bb56:
  call void @__olang_check_failed(ptr @olang_loc_c76de25993fa5b69_1c32ce588582e85d)
  unreachable
bb57:
  %t233 = load i64, ptr %l103, !tbaa !24
  %t234 = load i64, ptr %l104, !tbaa !24
  %t235 = icmp sle i64 %t233, %t234
  br i1 %t235, label %bb59, label %bb60
bb58:
  call void @__olang_check_failed(ptr @olang_loc_c76de25993fa5b69_1c32ce588582e85d)
  unreachable
bb59:
  %t237 = getelementptr { i64, ptr }, ptr %l99, i32 0, i32 1
  %t238 = load ptr, ptr %t237, !tbaa !27
  %t239 = load i64, ptr %l100, !tbaa !24
  %t240 = load i64, ptr %l103, !tbaa !24
  %t241 = getelementptr i8, ptr %t238, i64 %t239
  %t242 = sub i64 %t240, %t239
  %t243 = insertvalue { i64, ptr } undef, i64 %t242, 0
  %t244 = insertvalue { i64, ptr } %t243, ptr %t241, 1
  %t245 = load { i64, ptr }, ptr %l98, !tbaa !27
  %t246 = extractvalue { i64, ptr } %t245, 1
  %t247 = extractvalue { i64, ptr } %t245, 0
  %t249 = extractvalue { i64, ptr } %t244, 1
  %t250 = extractvalue { i64, ptr } %t244, 0
  %t251 = add i64 %t247, %t250
  %t252 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t251)
  call void @olang_textcopy(ptr %t252, ptr %t246, i64 %t247)
  %t253 = getelementptr i8, ptr %t252, i64 %t247
  call void @olang_textcopy(ptr %t253, ptr %t249, i64 %t250)
  %t254 = insertvalue { i64, ptr } undef, i64 %t251, 0
  %t255 = insertvalue { i64, ptr } %t254, ptr %t252, 1
  %t257 = extractvalue { i64, ptr } %t255, 0
  %t258 = extractvalue { i64, ptr } %t255, 1
  %t259 = mul i64 %t257, 1
  %t260 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t259)
  call void @llvm.memcpy.p0.p0.i64(ptr %t260, ptr %t258, i64 %t259, i1 false)
  %t261 = insertvalue { i64, ptr } undef, i64 %t257, 0
  %t262 = insertvalue { i64, ptr } %t261, ptr %t260, 1
  store { i64, ptr } %t262, ptr %l87, !tbaa !27
  br label %bb61
bb60:
  call void @__olang_check_failed(ptr @olang_loc_c76de25993fa5b69_1c32ce588582e85d)
  unreachable
bb61:
  %t264 = load { i64, ptr }, ptr %l87, !tbaa !27
  %t265 = load ptr, ptr %l0, !tbaa !29
  %t267 = getelementptr %"compiler/listing:Writer", ptr %t265, i32 0, i32 0
  %t268 = load { i64, ptr }, ptr %t267, !tbaa !27
  %t271 = extractvalue { i64, ptr } %t268, 1
  %t272 = extractvalue { i64, ptr } %t268, 0
  %t273 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d45, i32 0, i32 1) }, 1
  %t274 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d45, i32 0, i32 1) }, 0
  %t275 = add i64 %t272, %t274
  %t277 = extractvalue { i64, ptr } %t264, 1
  %t278 = extractvalue { i64, ptr } %t264, 0
  %t279 = add i64 %t275, %t278
  %t280 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d46, i32 0, i32 1) }, 1
  %t281 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d46, i32 0, i32 1) }, 0
  %t282 = add i64 %t279, %t281
  %t283 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t282)
  call void @olang_textcopy(ptr %t283, ptr %t271, i64 %t272)
  %t284 = getelementptr i8, ptr %t283, i64 %t272
  call void @olang_textcopy(ptr %t284, ptr %t273, i64 %t274)
  %t285 = getelementptr i8, ptr %t284, i64 %t274
  call void @olang_textcopy(ptr %t285, ptr %t277, i64 %t278)
  %t286 = getelementptr i8, ptr %t285, i64 %t278
  call void @olang_textcopy(ptr %t286, ptr %t280, i64 %t281)
  %t287 = insertvalue { i64, ptr } undef, i64 %t282, 0
  %t288 = insertvalue { i64, ptr } %t287, ptr %t283, 1
  %t290 = extractvalue { i64, ptr } %t288, 0
  %t291 = extractvalue { i64, ptr } %t288, 1
  %t292 = mul i64 %t290, 1
  %t293 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t292)
  call void @llvm.memcpy.p0.p0.i64(ptr %t293, ptr %t291, i64 %t292, i1 false)
  %t294 = insertvalue { i64, ptr } undef, i64 %t290, 0
  %t295 = insertvalue { i64, ptr } %t294, ptr %t293, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s9, ptr %l8, { i64, ptr } %t295)
  br label %bb62
bb62:
  store ptr %l8, ptr %l117, !tbaa !29
  %t298 = load ptr, ptr %l0, !tbaa !29
  %t299 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t302 = call { i64, ptr } @compiler_2flisting_2ecompiler_2flisting_3aWriter_2eremarksAt(ptr %v0, ptr %s0, ptr %s9, ptr %s9, ptr %v2, ptr %v3, ptr %t298, { i64, ptr } %t299, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d47, i32 0, i32 1) })
  store { i64, ptr } %t302, ptr %l120
  br label %bb63
bb63:
  %t303 = load { i64, ptr }, ptr %l120, !tbaa !27
  %t304 = extractvalue { i64, ptr } %t303, 0
  %t305 = extractvalue { i64, ptr } %t303, 1
  %t306 = mul i64 %t304, 1
  %t307 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t306)
  call void @llvm.memcpy.p0.p0.i64(ptr %t307, ptr %t305, i64 %t306, i1 false)
  %t308 = insertvalue { i64, ptr } undef, i64 %t304, 0
  %t309 = insertvalue { i64, ptr } %t308, ptr %t307, 1
  %t310 = load ptr, ptr %l117, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s9, ptr %t310, { i64, ptr } %t309)
  br label %bb64
bb64:
  call void @__olang_scope_close(ptr %s9)
  br label %bb65
bb65:
  %t312 = load i64, ptr %l10, !tbaa !24
  %t314 = add i64 %t312, 1
  store i64 %t314, ptr %l10, !tbaa !24
  br label %bb35
bb66:
  %t317 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l8)
  store { i64, ptr } %t317, ptr %l125
  br label %bb67
bb67:
  call void @__olang_scope_close(ptr %s0)
  %t318 = load { i64, ptr }, ptr %l125, !tbaa !27
  store { i64, ptr } %t318, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2flisting_2ecompiler_2flisting_3aWriter_2eplace(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i1
  %l8 = alloca i1
  %l11 = alloca i1
  %l12 = alloca i1
  %l15 = alloca i1
  %l17 = alloca i1
  %l29 = alloca ptr
  %l30 = alloca { i64, ptr }
  %l32 = alloca ptr
  %l36 = alloca { i64, ptr }
  %l38 = alloca i64
  %l40 = alloca ptr
  %l46 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l52 = alloca ptr
  %l60 = alloca { i64, ptr }
  %l62 = alloca ptr
  %l65 = alloca { i64, ptr }
  %l67 = alloca ptr
  %l69 = alloca i64
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/listing:Writer", ptr %t1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l1, !tbaa !27
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/listing:Writer", ptr %t6, i32 0, i32 9
  %t9 = load i64, ptr %t8, !tbaa !24
  %t11 = icmp eq i64 %t9, 0
  br i1 %t11, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb4
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/listing:Writer", ptr %t13, i32 0, i32 7
  %t16 = load { i64, ptr }, ptr %t15, !tbaa !27
  %t18 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t16, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d48, i32 0, i32 1) })
  store i1 %t18, ptr %l11
  br label %bb3
bb3:
  %t19 = load i1, ptr %l11, !tbaa !21
  store i1 %t19, ptr %l8, !tbaa !21
  br label %bb4
bb4:
  %t20 = load i1, ptr %l8, !tbaa !21
  br i1 %t20, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb8
bb6:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/listing:Writer", ptr %t21, i32 0, i32 7
  %t24 = load { i64, ptr }, ptr %t23, !tbaa !27
  %t26 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t24, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d49, i32 0, i32 1) })
  store i1 %t26, ptr %l15
  br label %bb7
bb7:
  %t27 = load i1, ptr %l15, !tbaa !21
  store i1 %t27, ptr %l12, !tbaa !21
  br label %bb8
bb8:
  %t28 = load i1, ptr %l12, !tbaa !21
  store i1 %t28, ptr %l2, !tbaa !21
  %t29 = load i1, ptr %l2, !tbaa !21
  br i1 %t29, label %bb9, label %bb10
bb9:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/listing:Writer", ptr %t31, i32 0, i32 6
  %t34 = load i64, ptr %t33, !tbaa !24
  %t36 = icmp ne i64 %t34, 0
  store i1 %t36, ptr %l17, !tbaa !21
  br label %bb11
bb10:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb11
bb11:
  %t38 = load i1, ptr %l17, !tbaa !21
  br i1 %t38, label %bb12, label %bb13
bb12:
  store %olang.scope zeroinitializer, ptr %s1
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/listing:Writer", ptr %t39, i32 0, i32 10
  %t42 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t44 = extractvalue { i64, ptr } %t42, 1
  %t45 = extractvalue { i64, ptr } %t42, 0
  %t46 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d50, i32 0, i32 1) }, 1
  %t47 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d50, i32 0, i32 1) }, 0
  %t48 = add i64 %t45, %t47
  %t49 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t48)
  call void @olang_textcopy(ptr %t49, ptr %t44, i64 %t45)
  %t50 = getelementptr i8, ptr %t49, i64 %t45
  call void @olang_textcopy(ptr %t50, ptr %t46, i64 %t47)
  %t51 = insertvalue { i64, ptr } undef, i64 %t48, 0
  %t52 = insertvalue { i64, ptr } %t51, ptr %t49, 1
  %t54 = extractvalue { i64, ptr } %t52, 0
  %t55 = extractvalue { i64, ptr } %t52, 1
  %t56 = mul i64 %t54, 1
  %t57 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t56)
  call void @llvm.memcpy.p0.p0.i64(ptr %t57, ptr %t55, i64 %t56, i1 false)
  %t58 = insertvalue { i64, ptr } undef, i64 %t54, 0
  %t59 = insertvalue { i64, ptr } %t58, ptr %t57, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s1, ptr %t41, { i64, ptr } %t59)
  br label %bb14
bb13:
  br label %bb15
bb14:
  call void @__olang_scope_close(ptr %s1)
  br label %bb15
bb15:
  %t62 = load i1, ptr %l2, !tbaa !21
  %t64 = xor i1 %t62, true
  br i1 %t64, label %bb16, label %bb17
bb16:
  store %olang.scope zeroinitializer, ptr %s3
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/listing:Writer", ptr %t66, i32 0, i32 10
  store ptr %t68, ptr %l29, !tbaa !29
  %t69 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t69, ptr %l30, !tbaa !27
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/listing:Writer", ptr %t70, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !29
  store ptr %t73, ptr %l32, !tbaa !29
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/listing:Writer", ptr %t74, i32 0, i32 7
  %t77 = load { i64, ptr }, ptr %t76, !tbaa !27
  %t78 = load ptr, ptr %l32, !tbaa !29
  %t79 = call ptr @__olang_scope_or(ptr %v1, ptr %t78)
  %t80 = ptrtoint ptr %t79 to i64
  %t82 = inttoptr i64 %t80 to ptr
  %t83 = load ptr, ptr %l32, !tbaa !29
  %t85 = call { i64, ptr } @compiler_2flisting_2ecompiler_2flisting_3aSources_2eShown(ptr %t82, ptr %v0, ptr %s3, ptr %t83, { i64, ptr } %t77)
  store { i64, ptr } %t85, ptr %l36
  br label %bb18
bb17:
  br label %bb24
bb18:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/listing:Writer", ptr %t86, i32 0, i32 9
  %t89 = load i64, ptr %t88, !tbaa !24
  store i64 %t89, ptr %l38, !tbaa !24
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/listing:Writer", ptr %t90, i32 0, i32 1
  %t93 = load ptr, ptr %t92, !tbaa !29
  store ptr %t93, ptr %l40, !tbaa !29
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/listing:Writer", ptr %t94, i32 0, i32 8
  %t97 = load { i64, ptr }, ptr %t96, !tbaa !27
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/listing:Writer", ptr %t98, i32 0, i32 9
  %t101 = load i64, ptr %t100, !tbaa !24
  %t102 = load ptr, ptr %l40, !tbaa !29
  %t103 = call ptr @__olang_scope_or(ptr %v1, ptr %t102)
  %t104 = ptrtoint ptr %t103 to i64
  %t106 = inttoptr i64 %t104 to ptr
  %t107 = load ptr, ptr %l40, !tbaa !29
  %t110 = call { i64, ptr } @compiler_2flisting_2ecompiler_2flisting_3aSources_2eText(ptr %t106, ptr %v0, ptr %s3, ptr %t107, { i64, ptr } %t97, i64 %t101)
  store { i64, ptr } %t110, ptr %l46
  br label %bb19
bb19:
  %t111 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t112 = extractvalue { i64, ptr } %t111, 0
  %t113 = extractvalue { i64, ptr } %t111, 1
  %t114 = mul i64 %t112, 1
  %t115 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t114)
  call void @llvm.memcpy.p0.p0.i64(ptr %t115, ptr %t113, i64 %t114, i1 false)
  %t116 = insertvalue { i64, ptr } undef, i64 %t112, 0
  %t117 = insertvalue { i64, ptr } %t116, ptr %t115, 1
  %t119 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %s3, ptr %s3, { i64, ptr } %t117)
  store { i64, ptr } %t119, ptr %l48
  br label %bb20
bb20:
  %t120 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t121 = extractvalue { i64, ptr } %t120, 1
  %t122 = extractvalue { i64, ptr } %t120, 0
  %t123 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d51, i32 0, i32 1) }, 1
  %t124 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d51, i32 0, i32 1) }, 0
  %t125 = add i64 %t122, %t124
  %t126 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t127 = extractvalue { i64, ptr } %t126, 1
  %t128 = extractvalue { i64, ptr } %t126, 0
  %t129 = add i64 %t125, %t128
  %t130 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d52, i32 0, i32 1) }, 1
  %t131 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d52, i32 0, i32 1) }, 0
  %t132 = add i64 %t129, %t131
  %t133 = load i64, ptr %l38, !tbaa !24
  %t134 = call i64 @__olang_fmt_i64(ptr null, i64 %t133)
  %t135 = add i64 %t132, %t134
  %t136 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d53, i32 0, i32 1) }, 1
  %t137 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d53, i32 0, i32 1) }, 0
  %t138 = add i64 %t135, %t137
  %t139 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t140 = extractvalue { i64, ptr } %t139, 1
  %t141 = extractvalue { i64, ptr } %t139, 0
  %t142 = add i64 %t138, %t141
  %t143 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d54, i32 0, i32 1) }, 1
  %t144 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d54, i32 0, i32 1) }, 0
  %t145 = add i64 %t142, %t144
  %t146 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t145)
  call void @olang_textcopy(ptr %t146, ptr %t121, i64 %t122)
  %t147 = getelementptr i8, ptr %t146, i64 %t122
  call void @olang_textcopy(ptr %t147, ptr %t123, i64 %t124)
  %t148 = getelementptr i8, ptr %t147, i64 %t124
  call void @olang_textcopy(ptr %t148, ptr %t127, i64 %t128)
  %t149 = getelementptr i8, ptr %t148, i64 %t128
  call void @olang_textcopy(ptr %t149, ptr %t130, i64 %t131)
  %t150 = getelementptr i8, ptr %t149, i64 %t131
  %t151 = call i64 @__olang_fmt_i64(ptr %t150, i64 %t133)
  %t152 = getelementptr i8, ptr %t150, i64 %t134
  call void @olang_textcopy(ptr %t152, ptr %t136, i64 %t137)
  %t153 = getelementptr i8, ptr %t152, i64 %t137
  call void @olang_textcopy(ptr %t153, ptr %t140, i64 %t141)
  %t154 = getelementptr i8, ptr %t153, i64 %t141
  call void @olang_textcopy(ptr %t154, ptr %t143, i64 %t144)
  %t155 = insertvalue { i64, ptr } undef, i64 %t145, 0
  %t156 = insertvalue { i64, ptr } %t155, ptr %t146, 1
  %t158 = extractvalue { i64, ptr } %t156, 0
  %t159 = extractvalue { i64, ptr } %t156, 1
  %t160 = mul i64 %t158, 1
  %t161 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t160)
  call void @llvm.memcpy.p0.p0.i64(ptr %t161, ptr %t159, i64 %t160, i1 false)
  %t162 = insertvalue { i64, ptr } undef, i64 %t158, 0
  %t163 = insertvalue { i64, ptr } %t162, ptr %t161, 1
  %t164 = load ptr, ptr %l29, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s3, ptr %t164, { i64, ptr } %t163)
  br label %bb21
bb21:
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t168 = getelementptr %"compiler/listing:Writer", ptr %t166, i32 0, i32 10
  store ptr %t168, ptr %l52, !tbaa !29
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t172 = getelementptr %"compiler/listing:Writer", ptr %t170, i32 0, i32 7
  %t173 = load { i64, ptr }, ptr %t172, !tbaa !27
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t176 = getelementptr %"compiler/listing:Writer", ptr %t174, i32 0, i32 9
  %t177 = load i64, ptr %t176, !tbaa !24
  %t179 = extractvalue { i64, ptr } %t173, 1
  %t180 = extractvalue { i64, ptr } %t173, 0
  %t181 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d55, i32 0, i32 1) }, 1
  %t182 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d55, i32 0, i32 1) }, 0
  %t183 = add i64 %t180, %t182
  %t185 = call i64 @__olang_fmt_i64(ptr null, i64 %t177)
  %t186 = add i64 %t183, %t185
  %t187 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t186)
  call void @olang_textcopy(ptr %t187, ptr %t179, i64 %t180)
  %t188 = getelementptr i8, ptr %t187, i64 %t180
  call void @olang_textcopy(ptr %t188, ptr %t181, i64 %t182)
  %t189 = getelementptr i8, ptr %t188, i64 %t182
  %t190 = call i64 @__olang_fmt_i64(ptr %t189, i64 %t177)
  %t191 = insertvalue { i64, ptr } undef, i64 %t186, 0
  %t192 = insertvalue { i64, ptr } %t191, ptr %t187, 1
  %t194 = extractvalue { i64, ptr } %t192, 0
  %t195 = extractvalue { i64, ptr } %t192, 1
  %t196 = mul i64 %t194, 1
  %t197 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t196)
  call void @llvm.memcpy.p0.p0.i64(ptr %t197, ptr %t195, i64 %t196, i1 false)
  %t198 = insertvalue { i64, ptr } undef, i64 %t194, 0
  %t199 = insertvalue { i64, ptr } %t198, ptr %t197, 1
  %t202 = call { i64, ptr } @compiler_2flisting_2ecompiler_2flisting_3aWriter_2eremarksAt(ptr %v0, ptr %s3, ptr %s3, ptr %s3, ptr %v2, ptr %v3, ptr %t169, { i64, ptr } %t199, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d56, i32 0, i32 1) })
  store { i64, ptr } %t202, ptr %l60
  br label %bb22
bb22:
  %t203 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t204 = extractvalue { i64, ptr } %t203, 0
  %t205 = extractvalue { i64, ptr } %t203, 1
  %t206 = mul i64 %t204, 1
  %t207 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t206)
  call void @llvm.memcpy.p0.p0.i64(ptr %t207, ptr %t205, i64 %t206, i1 false)
  %t208 = insertvalue { i64, ptr } undef, i64 %t204, 0
  %t209 = insertvalue { i64, ptr } %t208, ptr %t207, 1
  %t210 = load ptr, ptr %l52, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s3, ptr %t210, { i64, ptr } %t209)
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s3)
  br label %bb24
bb24:
  %t212 = load ptr, ptr %l0, !tbaa !29
  store ptr %t212, ptr %l62, !tbaa !29
  %t213 = load ptr, ptr %l0, !tbaa !29
  %t215 = getelementptr %"compiler/listing:Writer", ptr %t213, i32 0, i32 7
  %t216 = load { i64, ptr }, ptr %t215, !tbaa !27
  %t217 = load ptr, ptr %l62, !tbaa !29
  %t218 = getelementptr %"compiler/listing:Writer", ptr %t217, i32 0, i32 5
  %t219 = load { i64, ptr }, ptr %t218, !tbaa !27
  store { i64, ptr } %t219, ptr %l65, !tbaa !27
  %t221 = load ptr, ptr %l62, !tbaa !29
  %t222 = getelementptr %"compiler/listing:Writer", ptr %t221, i32 0, i32 5
  store { i64, ptr } %t216, ptr %t222, !tbaa !27
  %t223 = load i1, ptr @olang_2esole_2ecompiler_2flisting_3aWriter_2e5
  br i1 %t223, label %bb25, label %bb26
bb25:
  %t225 = load { i64, ptr }, ptr %l65
  %t226 = extractvalue { i64, ptr } %t225, 1
  call void @__olang_region_release(ptr %t226)
  store { i64, ptr } zeroinitializer, ptr %l65
  br label %bb26
bb26:
  %t227 = load ptr, ptr %l0, !tbaa !29
  store ptr %t227, ptr %l67, !tbaa !29
  %t228 = load i1, ptr %l2, !tbaa !21
  br i1 %t228, label %bb27, label %bb28
bb27:
  store i64 0, ptr %l69, !tbaa !24
  br label %bb29
bb28:
  %t230 = load ptr, ptr %l0, !tbaa !29
  %t232 = getelementptr %"compiler/listing:Writer", ptr %t230, i32 0, i32 9
  %t233 = load i64, ptr %t232, !tbaa !24
  store i64 %t233, ptr %l69, !tbaa !24
  br label %bb29
bb29:
  %t235 = load i64, ptr %l69, !tbaa !24
  %t236 = load ptr, ptr %l67, !tbaa !29
  %t237 = getelementptr %"compiler/listing:Writer", ptr %t236, i32 0, i32 6
  store i64 %t235, ptr %t237, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flisting_2ecompiler_2flisting_3aWriter_2ereach(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l8 = alloca ptr
  %l10 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l4, !tbaa !29
  %t3 = load ptr, ptr %l4, !tbaa !29
  %t4 = getelementptr %"compiler/listing:Writer", ptr %t3, i32 0, i32 7
  %t5 = load { i64, ptr }, ptr %t4, !tbaa !27
  store { i64, ptr } %t5, ptr %l6, !tbaa !27
  %t7 = load ptr, ptr %l4, !tbaa !29
  %t8 = getelementptr %"compiler/listing:Writer", ptr %t7, i32 0, i32 7
  store { i64, ptr } %a1, ptr %t8, !tbaa !27
  %t9 = load i1, ptr @olang_2esole_2ecompiler_2flisting_3aWriter_2e7
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = load { i64, ptr }, ptr %l6
  %t12 = extractvalue { i64, ptr } %t11, 1
  call void @__olang_region_release(ptr %t12)
  store { i64, ptr } zeroinitializer, ptr %l6
  br label %bb2
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  store ptr %t13, ptr %l8, !tbaa !29
  %t15 = load ptr, ptr %l8, !tbaa !29
  %t16 = getelementptr %"compiler/listing:Writer", ptr %t15, i32 0, i32 8
  %t17 = load { i64, ptr }, ptr %t16, !tbaa !27
  store { i64, ptr } %t17, ptr %l10, !tbaa !27
  %t19 = load ptr, ptr %l8, !tbaa !29
  %t20 = getelementptr %"compiler/listing:Writer", ptr %t19, i32 0, i32 8
  store { i64, ptr } %a2, ptr %t20, !tbaa !27
  %t21 = load i1, ptr @olang_2esole_2ecompiler_2flisting_3aWriter_2e8
  br i1 %t21, label %bb3, label %bb4
bb3:
  %t23 = load { i64, ptr }, ptr %l10
  %t24 = extractvalue { i64, ptr } %t23, 1
  call void @__olang_region_release(ptr %t24)
  store { i64, ptr } zeroinitializer, ptr %l10
  br label %bb4
bb4:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/listing:Writer", ptr %t25, i32 0, i32 9
  store i64 %a3, ptr %t29, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2flisting_2einstance(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, ptr %a1, ptr %a2, ptr %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca %"std/prelude/text:StringBuilder"
  %l6 = alloca { i64, ptr }
  %lp7 = alloca ptr
  %lp8 = alloca ptr
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca %"std/prelude/text:StringBuilder"
  %l21 = alloca ptr
  %l22 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l33 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l42 = alloca { i64, ptr }
  %l44 = alloca i1
  %l46 = alloca ptr
  %l47 = alloca ptr
  %l48 = alloca { i64, ptr }
  %l50 = alloca { i64, ptr }
  %l52 = alloca { i64, ptr }
  %l56 = alloca { i64, ptr }
  %l59 = alloca { i64, ptr }
  %l60 = alloca { i64, ptr }
  %l61 = alloca { i64, ptr }
  %l62 = alloca i64
  %l63 = alloca { i64, ptr }
  %l65 = alloca i1
  %l66 = alloca i1
  %l68 = alloca i64
  %l71 = alloca ptr
  %l73 = alloca i64
  %l75 = alloca { i64, ptr }
  %l77 = alloca ptr
  %l78 = alloca i64
  %l82 = alloca ptr
  %l83 = alloca i64
  %l88 = alloca { i64, ptr }
  %l90 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l93 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l95 = alloca i64
  %l97 = alloca ptr
  %l102 = alloca { i64, ptr }
  %l105 = alloca { i64, ptr }
  %l106 = alloca { i64, ptr }
  %l108 = alloca i1
  %l109 = alloca { i64, ptr }
  %l110 = alloca ptr
  %l112 = alloca { i64, ptr }
  %l113 = alloca { i64, ptr }
  %l114 = alloca { i64, ptr }
  %l116 = alloca i64
  %l118 = alloca ptr
  %l119 = alloca i64
  %l122 = alloca { i64, ptr }
  %l125 = alloca ptr
  %l127 = alloca { i64, ptr }
  %l130 = alloca { i64, ptr }
  %l132 = alloca i64
  %l135 = alloca i1
  %l142 = alloca { i64, ptr }
  %l148 = alloca ptr
  %l149 = alloca ptr
  %l150 = alloca { i64, ptr }
  %l151 = alloca { i64, ptr }
  %l153 = alloca { i64, ptr }
  %l157 = alloca { i64, ptr }
  %l160 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  store ptr %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l12
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l12
  store %"std/prelude/text:StringBuilder" %t2, ptr %l5
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/listing:Inputs", ptr %t3, i32 0, i32 3
  %t6 = load { i64, ptr }, ptr %t5, !tbaa !27
  store { i64, ptr } %t6, ptr %l6, !tbaa !27
  %t8 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t9 = load ptr, ptr %l1, !tbaa !29
  %t11 = getelementptr %"compiler/build:Code", ptr %t9, i32 0, i32 0
  %t12 = load { i64, ptr }, ptr %t11, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t8, 1
  %t15 = extractvalue { i64, ptr } %t8, 0
  %t16 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d57, i32 0, i32 1) }, 1
  %t17 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d57, i32 0, i32 1) }, 0
  %t18 = add i64 %t15, %t17
  %t20 = extractvalue { i64, ptr } %t12, 1
  %t21 = extractvalue { i64, ptr } %t12, 0
  %t22 = add i64 %t18, %t21
  %t23 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d58, i32 0, i32 1) }, 1
  %t24 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d58, i32 0, i32 1) }, 0
  %t25 = add i64 %t22, %t24
  %t26 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t25)
  call void @olang_textcopy(ptr %t26, ptr %t14, i64 %t15)
  %t27 = getelementptr i8, ptr %t26, i64 %t15
  call void @olang_textcopy(ptr %t27, ptr %t16, i64 %t17)
  %t28 = getelementptr i8, ptr %t27, i64 %t17
  call void @olang_textcopy(ptr %t28, ptr %t20, i64 %t21)
  %t29 = getelementptr i8, ptr %t28, i64 %t21
  call void @olang_textcopy(ptr %t29, ptr %t23, i64 %t24)
  %t30 = insertvalue { i64, ptr } undef, i64 %t25, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t26, 1
  %t33 = extractvalue { i64, ptr } %t31, 0
  %t34 = extractvalue { i64, ptr } %t31, 1
  %t35 = mul i64 %t33, 1
  %t36 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t35)
  call void @llvm.memcpy.p0.p0.i64(ptr %t36, ptr %t34, i64 %t35, i1 false)
  %t37 = insertvalue { i64, ptr } undef, i64 %t33, 0
  %t38 = insertvalue { i64, ptr } %t37, ptr %t36, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l5, { i64, ptr } %t38)
  br label %bb2
bb2:
  store ptr %l5, ptr %l21, !tbaa !29
  %t41 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t41, ptr %l22, !tbaa !27
  %t42 = load ptr, ptr %l4, !tbaa !29
  %t43 = load ptr, ptr %l1, !tbaa !29
  %t45 = getelementptr %"compiler/build:Code", ptr %t43, i32 0, i32 1
  %t46 = load { i64, ptr }, ptr %t45, !tbaa !27
  %t49 = call { i64, ptr } @compiler_2flisting_2ecompiler_2flisting_3aSources_2eShown(ptr %v4, ptr %v1, ptr %s0, ptr %t42, { i64, ptr } %t46)
  store { i64, ptr } %t49, ptr %l26
  br label %bb3
bb3:
  %t50 = load ptr, ptr %l1, !tbaa !29
  %t52 = getelementptr %"compiler/build:Code", ptr %t50, i32 0, i32 2
  %t53 = load i64, ptr %t52, !tbaa !24
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/listing:Inputs", ptr %t54, i32 0, i32 2
  %t57 = load { i64, ptr }, ptr %t56, !tbaa !27
  %t58 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t59 = extractvalue { i64, ptr } %t58, 1
  %t60 = extractvalue { i64, ptr } %t58, 0
  %t61 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d59, i32 0, i32 1) }, 1
  %t62 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d59, i32 0, i32 1) }, 0
  %t63 = add i64 %t60, %t62
  %t64 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t65 = extractvalue { i64, ptr } %t64, 1
  %t66 = extractvalue { i64, ptr } %t64, 0
  %t67 = add i64 %t63, %t66
  %t68 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d60, i32 0, i32 1) }, 1
  %t69 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d60, i32 0, i32 1) }, 0
  %t70 = add i64 %t67, %t69
  %t72 = call i64 @__olang_fmt_i64(ptr null, i64 %t53)
  %t73 = add i64 %t70, %t72
  %t74 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d61, i32 0, i32 1) }, 1
  %t75 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d61, i32 0, i32 1) }, 0
  %t76 = add i64 %t73, %t75
  %t78 = extractvalue { i64, ptr } %t57, 1
  %t79 = extractvalue { i64, ptr } %t57, 0
  %t80 = add i64 %t76, %t79
  %t81 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d62, i32 0, i32 1) }, 1
  %t82 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d62, i32 0, i32 1) }, 0
  %t83 = add i64 %t80, %t82
  %t84 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t83)
  call void @olang_textcopy(ptr %t84, ptr %t59, i64 %t60)
  %t85 = getelementptr i8, ptr %t84, i64 %t60
  call void @olang_textcopy(ptr %t85, ptr %t61, i64 %t62)
  %t86 = getelementptr i8, ptr %t85, i64 %t62
  call void @olang_textcopy(ptr %t86, ptr %t65, i64 %t66)
  %t87 = getelementptr i8, ptr %t86, i64 %t66
  call void @olang_textcopy(ptr %t87, ptr %t68, i64 %t69)
  %t88 = getelementptr i8, ptr %t87, i64 %t69
  %t89 = call i64 @__olang_fmt_i64(ptr %t88, i64 %t53)
  %t90 = getelementptr i8, ptr %t88, i64 %t72
  call void @olang_textcopy(ptr %t90, ptr %t74, i64 %t75)
  %t91 = getelementptr i8, ptr %t90, i64 %t75
  call void @olang_textcopy(ptr %t91, ptr %t78, i64 %t79)
  %t92 = getelementptr i8, ptr %t91, i64 %t79
  call void @olang_textcopy(ptr %t92, ptr %t81, i64 %t82)
  %t93 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t94 = insertvalue { i64, ptr } %t93, ptr %t84, 1
  %t96 = extractvalue { i64, ptr } %t94, 0
  %t97 = extractvalue { i64, ptr } %t94, 1
  %t98 = mul i64 %t96, 1
  %t99 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t98)
  call void @llvm.memcpy.p0.p0.i64(ptr %t99, ptr %t97, i64 %t98, i1 false)
  %t100 = insertvalue { i64, ptr } undef, i64 %t96, 0
  %t101 = insertvalue { i64, ptr } %t100, ptr %t99, 1
  %t102 = load ptr, ptr %l21, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t102, { i64, ptr } %t101)
  br label %bb4
bb4:
  %t104 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v4, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t104, ptr %l33
  br label %bb5
bb5:
  %t105 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 32, i64 8)
  store ptr %t105, ptr %lp7
  %t106 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l33
  %t107 = load ptr, ptr %lp7
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t106, ptr %t107
  %t108 = load ptr, ptr %lp7
  %t109 = load ptr, ptr %l1, !tbaa !29
  %t111 = getelementptr %"compiler/build:Code", ptr %t109, i32 0, i32 3
  %t112 = load { i64, ptr }, ptr %t111, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v4, ptr %v1, ptr %t108, { i64, ptr } %t112)
  br label %bb6
bb6:
  %t115 = load ptr, ptr %l2, !tbaa !29
  %t116 = load ptr, ptr %l1, !tbaa !29
  %t118 = getelementptr %"compiler/build:Code", ptr %t116, i32 0, i32 3
  %t119 = load { i64, ptr }, ptr %t118, !tbaa !27
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = getelementptr %"compiler/listing:Inputs", ptr %t120, i32 0, i32 4
  %t123 = load i1, ptr %t122, !tbaa !21
  %t127 = call { i64, ptr } @compiler_2flisting_2efound(ptr %v2, ptr %v1, ptr %v4, ptr %t115, { i64, ptr } %t119, i1 %t123)
  store { i64, ptr } %t127, ptr %l42
  br label %bb7
bb7:
  %t128 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 16, i64 8)
  store ptr %t128, ptr %lp8
  %t129 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t130 = load ptr, ptr %lp8
  store { i64, ptr } %t129, ptr %t130, !tbaa !27
  %t131 = load ptr, ptr %lp8
  %t132 = load { i64, ptr }, ptr %t131, !tbaa !27
  %t134 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v4, ptr %s0, { i64, ptr } %t132, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d63, i32 0, i32 1) })
  store i1 %t134, ptr %l44
  br label %bb8
bb8:
  %t135 = load i1, ptr %l44, !tbaa !21
  %t136 = xor i1 %t135, true
  br i1 %t136, label %bb9, label %bb10
bb9:
  store %olang.scope zeroinitializer, ptr %s3
  store ptr %l5, ptr %l46, !tbaa !29
  %t138 = load ptr, ptr %l0, !tbaa !29
  store ptr %t138, ptr %l47, !tbaa !29
  %t139 = load ptr, ptr %lp8
  %t140 = load { i64, ptr }, ptr %t139, !tbaa !27
  store { i64, ptr } %t140, ptr %l48, !tbaa !27
  %t141 = load ptr, ptr %l1, !tbaa !29
  %t143 = getelementptr %"compiler/build:Code", ptr %t141, i32 0, i32 3
  %t144 = load { i64, ptr }, ptr %t143, !tbaa !27
  store { i64, ptr } %t144, ptr %l50, !tbaa !27
  %t145 = load ptr, ptr %lp7
  %t147 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v4, ptr %v4, ptr %t145)
  store { i64, ptr } %t147, ptr %l52
  br label %bb11
bb10:
  br label %bb15
bb11:
  %t148 = load ptr, ptr %l2, !tbaa !29
  %t149 = load ptr, ptr %l3, !tbaa !29
  %t150 = load ptr, ptr %l4, !tbaa !29
  %t151 = load ptr, ptr %l47, !tbaa !29
  %t152 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t153 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t154 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t158 = call { i64, ptr } @compiler_2flisting_2ebody(ptr %v0, ptr %v4, ptr %v1, ptr %v4, ptr %v2, ptr %v3, ptr %v4, ptr %s3, ptr %t151, { i64, ptr } %t152, { i64, ptr } %t153, { i64, ptr } %t154, ptr %t148, ptr %t149, ptr %t150)
  store { i64, ptr } %t158, ptr %l56
  br label %bb12
bb12:
  %t159 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t160 = extractvalue { i64, ptr } %t159, 0
  %t161 = extractvalue { i64, ptr } %t159, 1
  %t162 = mul i64 %t160, 1
  %t163 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t162)
  call void @llvm.memcpy.p0.p0.i64(ptr %t163, ptr %t161, i64 %t162, i1 false)
  %t164 = insertvalue { i64, ptr } undef, i64 %t160, 0
  %t165 = insertvalue { i64, ptr } %t164, ptr %t163, 1
  %t166 = load ptr, ptr %l46, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s3, ptr %t166, { i64, ptr } %t165)
  br label %bb13
bb13:
  %t169 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v5, ptr %l5)
  store { i64, ptr } %t169, ptr %l59
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t170 = load { i64, ptr }, ptr %l59, !tbaa !27
  store { i64, ptr } %t170, ptr %rv
  br label %ret
bb15:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d64, i32 0, i32 1) }, ptr %l60, !tbaa !27
  %t171 = load { i64, ptr }, ptr %l60, !tbaa !27
  store { i64, ptr } %t171, ptr %l61, !tbaa !27
  %t172 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t173 = extractvalue { i64, ptr } %t172, 0
  store i64 %t173, ptr %l62, !tbaa !24
  %t174 = load i64, ptr %l62, !tbaa !24
  %t175 = mul i64 %t174, 1
  %t176 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t175)
  %t177 = insertvalue { i64, ptr } undef, i64 %t174, 0
  %t178 = insertvalue { i64, ptr } %t177, ptr %t176, 1
  store { i64, ptr } %t178, ptr %l63, !tbaa !27
  %t179 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t180 = load ptr, ptr %t179, !tbaa !27
  %t181 = getelementptr { i64, ptr }, ptr %l61, i32 0, i32 1
  %t182 = load ptr, ptr %t181, !tbaa !27
  %t183 = load i64, ptr %l62, !tbaa !24
  %t184 = mul i64 %t183, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t180, ptr %t182, i64 %t184, i1 false)
  %t185 = load { i64, ptr }, ptr %l63, !tbaa !27
  store { i64, ptr } %t185, ptr %l9, !tbaa !27
  br label %bb16
bb16:
  store %olang.scope zeroinitializer, ptr %s4
  %t186 = load ptr, ptr %lp8
  %t187 = load { i64, ptr }, ptr %t186, !tbaa !27
  %t189 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v4, ptr %s4, { i64, ptr } %t187, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d65, i32 0, i32 1) })
  store i1 %t189, ptr %l65
  br label %bb17
bb17:
  %t190 = load i1, ptr %l65, !tbaa !21
  br i1 %t190, label %bb18, label %bb19
bb18:
  %t191 = load ptr, ptr %lp7
  %t193 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v4, ptr %t191)
  store i64 %t193, ptr %l68
  br label %bb20
bb19:
  store i1 false, ptr %l66, !tbaa !21
  br label %bb21
bb20:
  %t194 = load i64, ptr %l68, !tbaa !24
  %t195 = icmp sle i64 %t194, 8
  store i1 %t195, ptr %l66, !tbaa !21
  br label %bb21
bb21:
  %t197 = load i1, ptr %l66, !tbaa !21
  %t198 = xor i1 %t197, true
  br i1 %t198, label %bb22, label %bb23
bb22:
  call void @__olang_scope_close(ptr %s4)
  br label %bb59
bb23:
  br label %bb24
bb24:
  %t200 = load ptr, ptr %lp7
  store ptr %t200, ptr %l71, !tbaa !29
  %t201 = load ptr, ptr %lp7
  %t203 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v4, ptr %t201)
  store i64 %t203, ptr %l73
  br label %bb25
bb25:
  %t204 = load i64, ptr %l73, !tbaa !24
  %t205 = sub i64 %t204, 1
  %t206 = load ptr, ptr %l71, !tbaa !29
  %t208 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v4, ptr %v4, ptr %t206, i64 %t205)
  store { i64, ptr } %t208, ptr %l75
  br label %bb26
bb26:
  %t209 = load { i64, ptr }, ptr %l75, !tbaa !27
  store { i64, ptr } %t209, ptr %l10, !tbaa !27
  %t210 = load ptr, ptr %l0, !tbaa !29
  %t212 = getelementptr %"compiler/listing:Inputs", ptr %t210, i32 0, i32 1
  %t213 = load ptr, ptr %t212, !tbaa !29
  store ptr %t213, ptr %l77, !tbaa !29
  %t214 = ptrtoint ptr %v0 to i64
  store i64 %t214, ptr %l78, !tbaa !24
  %t215 = load i1, ptr @olang_2esole_2ecompiler_2flisting_3aInputs_2e1
  br i1 %t215, label %bb27, label %bb28
bb27:
  %t217 = load ptr, ptr %l77, !tbaa !29
  %t218 = call ptr @__olang_region_or(ptr %t217, ptr %v0)
  %t219 = ptrtoint ptr %t218 to i64
  store i64 %t219, ptr %l78, !tbaa !24
  br label %bb28
bb28:
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t222 = getelementptr %"compiler/listing:Inputs", ptr %t220, i32 0, i32 1
  %t223 = load ptr, ptr %t222, !tbaa !29
  %t225 = getelementptr %"compiler/build:Listed", ptr %t223, i32 0, i32 1
  store ptr %t225, ptr %l82, !tbaa !29
  %t226 = ptrtoint ptr %s4 to i64
  store i64 %t226, ptr %l83, !tbaa !24
  %t227 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_201_3e_2e_2d1
  br i1 %t227, label %bb29, label %bb30
bb29:
  %t229 = call ptr @__olang_region_make(ptr %s4)
  %t230 = ptrtoint ptr %t229 to i64
  store i64 %t230, ptr %l83, !tbaa !24
  br label %bb30
bb30:
  %t231 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t233 = extractvalue { i64, ptr } %t231, 1
  %t234 = extractvalue { i64, ptr } %t231, 0
  %t235 = load i64, ptr %l83
  %t236 = inttoptr i64 %t235 to ptr
  %t237 = call ptr @__olang_scope_alloc(ptr %t236, i64 %t234)
  call void @olang_textcopy(ptr %t237, ptr %t233, i64 %t234)
  %t238 = insertvalue { i64, ptr } undef, i64 %t234, 0
  %t239 = insertvalue { i64, ptr } %t238, ptr %t237, 1
  %t241 = load i64, ptr %l83
  %t242 = inttoptr i64 %t241 to ptr
  %t243 = extractvalue { i64, ptr } %t239, 0
  %t244 = extractvalue { i64, ptr } %t239, 1
  %t245 = mul i64 %t243, 1
  %t246 = call ptr @__olang_scope_alloc(ptr %t242, i64 %t245)
  call void @llvm.memcpy.p0.p0.i64(ptr %t246, ptr %t244, i64 %t245, i1 false)
  %t247 = insertvalue { i64, ptr } undef, i64 %t243, 0
  %t248 = insertvalue { i64, ptr } %t247, ptr %t246, 1
  %t249 = mul i64 1, 16
  %t250 = call ptr @__olang_scope_alloc_zeroed(ptr %s4, i64 %t249)
  %t251 = insertvalue { i64, ptr } undef, i64 1, 0
  %t252 = insertvalue { i64, ptr } %t251, ptr %t250, 1
  store { i64, ptr } %t252, ptr %l88, !tbaa !27
  %t254 = getelementptr { i64, ptr }, ptr %l88, i32 0, i32 1
  %t255 = load ptr, ptr %t254, !tbaa !27
  %t256 = getelementptr { i64, ptr }, ptr %t255, i64 0
  store { i64, ptr } %t248, ptr %t256, !tbaa !37
  %t257 = load ptr, ptr %l3, !tbaa !29
  %t258 = load i64, ptr %l78
  %t259 = inttoptr i64 %t258 to ptr
  %t260 = load ptr, ptr %l82, !tbaa !29
  %t261 = load { i64, ptr }, ptr %l88, !tbaa !27
  %t263 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2flisting_2eRemarks(ptr %t259, ptr %s4, ptr %v3, ptr %s4, ptr %t260, { i64, ptr } %t261, ptr %t257)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t263, ptr %l90
  br label %bb31
bb31:
  %t264 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l90
  %t265 = call ptr @__olang_scope_alloc_a(ptr %s4, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t264, ptr %t265
  %t266 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t269 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2flisting_2ecallersOf(ptr %s4, ptr %v4, ptr %s4, ptr %t265, { i64, ptr } %t266)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t269, ptr %l93
  br label %bb32
bb32:
  %t270 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l93
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t270, ptr %l11
  %t272 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s4, ptr %l11)
  store i64 %t272, ptr %l95
  br label %bb33
bb33:
  %t273 = load i64, ptr %l95, !tbaa !24
  %t274 = icmp ne i64 %t273, 1
  br i1 %t274, label %bb34, label %bb35
bb34:
  store %olang.scope zeroinitializer, ptr %s6
  store ptr %l5, ptr %l97, !tbaa !29
  %t276 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t277 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t278 = load ptr, ptr %l3, !tbaa !29
  %t283 = call { i64, ptr } @compiler_2flisting_2enoCode(ptr %v0, ptr %s0, ptr %s4, ptr %v3, ptr %s6, { i64, ptr } %t276, { i64, ptr } %t277, ptr %l11, ptr %t278)
  store { i64, ptr } %t283, ptr %l102
  br label %bb36
bb35:
  br label %bb39
bb36:
  %t284 = load { i64, ptr }, ptr %l102, !tbaa !27
  %t285 = extractvalue { i64, ptr } %t284, 0
  %t286 = extractvalue { i64, ptr } %t284, 1
  %t287 = mul i64 %t285, 1
  %t288 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t287)
  call void @llvm.memcpy.p0.p0.i64(ptr %t288, ptr %t286, i64 %t287, i1 false)
  %t289 = insertvalue { i64, ptr } undef, i64 %t285, 0
  %t290 = insertvalue { i64, ptr } %t289, ptr %t288, 1
  %t291 = load ptr, ptr %l97, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s6, ptr %t291, { i64, ptr } %t290)
  br label %bb37
bb37:
  %t294 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v5, ptr %l5)
  store { i64, ptr } %t294, ptr %l105
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  %t295 = load { i64, ptr }, ptr %l105, !tbaa !27
  store { i64, ptr } %t295, ptr %rv
  br label %ret
bb39:
  %t296 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t296, ptr %l106, !tbaa !27
  %t297 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t299 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s4, { i64, ptr } %t297, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d66, i32 0, i32 1) })
  store i1 %t299, ptr %l108
  br label %bb40
bb40:
  %t300 = load i1, ptr %l108, !tbaa !21
  br i1 %t300, label %bb41, label %bb42
bb41:
  store { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d67, i32 0, i32 1) }, ptr %l109, !tbaa !27
  br label %bb43
bb42:
  store { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d68, i32 0, i32 1) }, ptr %l109, !tbaa !27
  br label %bb43
bb43:
  %t301 = load ptr, ptr %l3, !tbaa !29
  store ptr %t301, ptr %l110, !tbaa !29
  %t303 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s4, ptr %s4, ptr %l11, i64 0)
  store { i64, ptr } %t303, ptr %l112
  br label %bb44
bb44:
  %t304 = load ptr, ptr %l110, !tbaa !29
  %t305 = load { i64, ptr }, ptr %l112, !tbaa !27
  %t306 = call { i64, ptr } @compiler_2flisting_2ecompiler_2flisting_3aNamer_2eName(ptr %v3, ptr %s4, ptr %s4, ptr %t304, { i64, ptr } %t305)
  store { i64, ptr } %t306, ptr %l113
  br label %bb45
bb45:
  %t307 = load { i64, ptr }, ptr %l106, !tbaa !27
  %t308 = extractvalue { i64, ptr } %t307, 1
  %t309 = extractvalue { i64, ptr } %t307, 0
  %t310 = load { i64, ptr }, ptr %l109, !tbaa !27
  %t311 = extractvalue { i64, ptr } %t310, 1
  %t312 = extractvalue { i64, ptr } %t310, 0
  %t313 = add i64 %t309, %t312
  %t314 = load { i64, ptr }, ptr %l113, !tbaa !27
  %t315 = extractvalue { i64, ptr } %t314, 1
  %t316 = extractvalue { i64, ptr } %t314, 0
  %t317 = add i64 %t313, %t316
  %t318 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t317)
  call void @olang_textcopy(ptr %t318, ptr %t308, i64 %t309)
  %t319 = getelementptr i8, ptr %t318, i64 %t309
  call void @olang_textcopy(ptr %t319, ptr %t311, i64 %t312)
  %t320 = getelementptr i8, ptr %t319, i64 %t312
  call void @olang_textcopy(ptr %t320, ptr %t315, i64 %t316)
  %t321 = insertvalue { i64, ptr } undef, i64 %t317, 0
  %t322 = insertvalue { i64, ptr } %t321, ptr %t318, 1
  store { i64, ptr } %t322, ptr %l114, !tbaa !27
  %t323 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t324 = extractvalue { i64, ptr } %t323, 0
  %t325 = load { i64, ptr }, ptr %l114, !tbaa !27
  %t326 = extractvalue { i64, ptr } %t325, 0
  store i64 %t326, ptr %l116, !tbaa !24
  %t328 = load i64, ptr %l116, !tbaa !24
  %t329 = icmp eq i64 %t324, %t328
  br i1 %t329, label %bb46, label %bb47
bb46:
  %t331 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t332 = load ptr, ptr %t331, !tbaa !27
  %t333 = getelementptr { i64, ptr }, ptr %l114, i32 0, i32 1
  %t334 = load ptr, ptr %t333, !tbaa !27
  %t335 = load i64, ptr %l116, !tbaa !24
  %t336 = mul i64 %t335, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t332, ptr %t334, i64 %t336, i1 false)
  br label %bb48
bb47:
  %t337 = load { i64, ptr }, ptr %l114, !tbaa !27
  store { i64, ptr } %t337, ptr %l9, !tbaa !27
  br label %bb48
bb48:
  %t338 = load ptr, ptr %lp7
  store ptr %t338, ptr %l118, !tbaa !29
  %t339 = ptrtoint ptr %v4 to i64
  store i64 %t339, ptr %l119, !tbaa !24
  %t340 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t340, label %bb49, label %bb50
bb49:
  %t342 = call ptr @__olang_region_make(ptr %v4)
  %t343 = ptrtoint ptr %t342 to i64
  store i64 %t343, ptr %l119, !tbaa !24
  br label %bb50
bb50:
  %t345 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s4, ptr %s4, ptr %l11, i64 0)
  store { i64, ptr } %t345, ptr %l122
  br label %bb51
bb51:
  %t346 = load { i64, ptr }, ptr %l122, !tbaa !27
  %t347 = extractvalue { i64, ptr } %t346, 1
  %t348 = extractvalue { i64, ptr } %t346, 0
  %t349 = load i64, ptr %l119
  %t350 = inttoptr i64 %t349 to ptr
  %t351 = call ptr @__olang_scope_alloc(ptr %t350, i64 %t348)
  call void @olang_textcopy(ptr %t351, ptr %t347, i64 %t348)
  %t352 = insertvalue { i64, ptr } undef, i64 %t348, 0
  %t353 = insertvalue { i64, ptr } %t352, ptr %t351, 1
  %t355 = load i64, ptr %l119
  %t356 = inttoptr i64 %t355 to ptr
  %t357 = extractvalue { i64, ptr } %t353, 0
  %t358 = extractvalue { i64, ptr } %t353, 1
  %t359 = mul i64 %t357, 1
  %t360 = call ptr @__olang_scope_alloc(ptr %t356, i64 %t359)
  call void @llvm.memcpy.p0.p0.i64(ptr %t360, ptr %t358, i64 %t359, i1 false)
  %t361 = insertvalue { i64, ptr } undef, i64 %t357, 0
  %t362 = insertvalue { i64, ptr } %t361, ptr %t360, 1
  %t363 = load ptr, ptr %l118, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v4, ptr %v4, ptr %t363, { i64, ptr } %t362)
  br label %bb52
bb52:
  %t365 = load ptr, ptr %l2, !tbaa !29
  store ptr %t365, ptr %l125, !tbaa !29
  %t367 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s4, ptr %s4, ptr %l11, i64 0)
  store { i64, ptr } %t367, ptr %l127
  br label %bb53
bb53:
  %t368 = load ptr, ptr %l0, !tbaa !29
  %t370 = getelementptr %"compiler/listing:Inputs", ptr %t368, i32 0, i32 4
  %t371 = load i1, ptr %t370, !tbaa !21
  %t372 = load ptr, ptr %l125, !tbaa !29
  %t373 = load { i64, ptr }, ptr %l127, !tbaa !27
  %t375 = call { i64, ptr } @compiler_2flisting_2efound(ptr %v2, ptr %s4, ptr %v4, ptr %t372, { i64, ptr } %t373, i1 %t371)
  store { i64, ptr } %t375, ptr %l130
  br label %bb54
bb54:
  %t376 = load ptr, ptr %lp8
  %t377 = load { i64, ptr }, ptr %t376, !tbaa !27
  %t378 = extractvalue { i64, ptr } %t377, 0
  %t379 = load { i64, ptr }, ptr %l130, !tbaa !27
  %t380 = extractvalue { i64, ptr } %t379, 0
  store i64 %t380, ptr %l132, !tbaa !24
  %t382 = load i64, ptr %l132, !tbaa !24
  %t383 = icmp eq i64 %t378, %t382
  br i1 %t383, label %bb55, label %bb56
bb55:
  %t385 = load ptr, ptr %lp8
  %t386 = getelementptr { i64, ptr }, ptr %t385, i32 0, i32 1
  %t387 = load ptr, ptr %t386, !tbaa !27
  %t388 = getelementptr { i64, ptr }, ptr %l130, i32 0, i32 1
  %t389 = load ptr, ptr %t388, !tbaa !27
  %t390 = load i64, ptr %l132, !tbaa !24
  %t391 = mul i64 %t390, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t387, ptr %t389, i64 %t391, i1 false)
  br label %bb57
bb56:
  %t392 = load { i64, ptr }, ptr %l130, !tbaa !27
  %t393 = load ptr, ptr %lp8
  store { i64, ptr } %t392, ptr %t393, !tbaa !27
  br label %bb57
bb57:
  call void @__olang_scope_close(ptr %s4)
  br label %bb58
bb58:
  br label %bb16
bb59:
  %t394 = load ptr, ptr %lp8
  %t395 = load { i64, ptr }, ptr %t394, !tbaa !27
  %t397 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v4, ptr %s0, { i64, ptr } %t395, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d69, i32 0, i32 1) })
  store i1 %t397, ptr %l135
  br label %bb60
bb60:
  %t398 = load i1, ptr %l135, !tbaa !21
  br i1 %t398, label %bb61, label %bb62
bb61:
  store %olang.scope zeroinitializer, ptr %s9
  %t399 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t400 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t402 = extractvalue { i64, ptr } %t399, 1
  %t403 = extractvalue { i64, ptr } %t399, 0
  %t404 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d70, i32 0, i32 1) }, 1
  %t405 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d70, i32 0, i32 1) }, 0
  %t406 = add i64 %t403, %t405
  %t408 = extractvalue { i64, ptr } %t400, 1
  %t409 = extractvalue { i64, ptr } %t400, 0
  %t410 = add i64 %t406, %t409
  %t411 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d71, i32 0, i32 1) }, 1
  %t412 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d71, i32 0, i32 1) }, 0
  %t413 = add i64 %t410, %t412
  %t414 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t413)
  call void @olang_textcopy(ptr %t414, ptr %t402, i64 %t403)
  %t415 = getelementptr i8, ptr %t414, i64 %t403
  call void @olang_textcopy(ptr %t415, ptr %t404, i64 %t405)
  %t416 = getelementptr i8, ptr %t415, i64 %t405
  call void @olang_textcopy(ptr %t416, ptr %t408, i64 %t409)
  %t417 = getelementptr i8, ptr %t416, i64 %t409
  call void @olang_textcopy(ptr %t417, ptr %t411, i64 %t412)
  %t418 = insertvalue { i64, ptr } undef, i64 %t413, 0
  %t419 = insertvalue { i64, ptr } %t418, ptr %t414, 1
  %t421 = extractvalue { i64, ptr } %t419, 0
  %t422 = extractvalue { i64, ptr } %t419, 1
  %t423 = mul i64 %t421, 1
  %t424 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t423)
  call void @llvm.memcpy.p0.p0.i64(ptr %t424, ptr %t422, i64 %t423, i1 false)
  %t425 = insertvalue { i64, ptr } undef, i64 %t421, 0
  %t426 = insertvalue { i64, ptr } %t425, ptr %t424, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s9, ptr %l5, { i64, ptr } %t426)
  br label %bb63
bb62:
  br label %bb65
bb63:
  %t430 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v5, ptr %l5)
  store { i64, ptr } %t430, ptr %l142
  br label %bb64
bb64:
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s0)
  %t431 = load { i64, ptr }, ptr %l142, !tbaa !27
  store { i64, ptr } %t431, ptr %rv
  br label %ret
bb65:
  %t432 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t433 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t435 = extractvalue { i64, ptr } %t432, 1
  %t436 = extractvalue { i64, ptr } %t432, 0
  %t437 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d72, i32 0, i32 1) }, 1
  %t438 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d72, i32 0, i32 1) }, 0
  %t439 = add i64 %t436, %t438
  %t441 = extractvalue { i64, ptr } %t433, 1
  %t442 = extractvalue { i64, ptr } %t433, 0
  %t443 = add i64 %t439, %t442
  %t444 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d73, i32 0, i32 1) }, 1
  %t445 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d73, i32 0, i32 1) }, 0
  %t446 = add i64 %t443, %t445
  %t447 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t446)
  call void @olang_textcopy(ptr %t447, ptr %t435, i64 %t436)
  %t448 = getelementptr i8, ptr %t447, i64 %t436
  call void @olang_textcopy(ptr %t448, ptr %t437, i64 %t438)
  %t449 = getelementptr i8, ptr %t448, i64 %t438
  call void @olang_textcopy(ptr %t449, ptr %t441, i64 %t442)
  %t450 = getelementptr i8, ptr %t449, i64 %t442
  call void @olang_textcopy(ptr %t450, ptr %t444, i64 %t445)
  %t451 = insertvalue { i64, ptr } undef, i64 %t446, 0
  %t452 = insertvalue { i64, ptr } %t451, ptr %t447, 1
  %t454 = extractvalue { i64, ptr } %t452, 0
  %t455 = extractvalue { i64, ptr } %t452, 1
  %t456 = mul i64 %t454, 1
  %t457 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t456)
  call void @llvm.memcpy.p0.p0.i64(ptr %t457, ptr %t455, i64 %t456, i1 false)
  %t458 = insertvalue { i64, ptr } undef, i64 %t454, 0
  %t459 = insertvalue { i64, ptr } %t458, ptr %t457, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l5, { i64, ptr } %t459)
  br label %bb66
bb66:
  store ptr %l5, ptr %l148, !tbaa !29
  %t462 = load ptr, ptr %l0, !tbaa !29
  store ptr %t462, ptr %l149, !tbaa !29
  %t463 = load ptr, ptr %lp8
  %t464 = load { i64, ptr }, ptr %t463, !tbaa !27
  store { i64, ptr } %t464, ptr %l150, !tbaa !27
  %t465 = load ptr, ptr %lp8
  %t466 = load { i64, ptr }, ptr %t465, !tbaa !27
  store { i64, ptr } %t466, ptr %l151, !tbaa !27
  %t467 = load ptr, ptr %lp7
  %t469 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v4, ptr %v4, ptr %t467)
  store { i64, ptr } %t469, ptr %l153
  br label %bb67
bb67:
  %t470 = load ptr, ptr %l2, !tbaa !29
  %t471 = load ptr, ptr %l3, !tbaa !29
  %t472 = load ptr, ptr %l4, !tbaa !29
  %t473 = load ptr, ptr %l149, !tbaa !29
  %t474 = load { i64, ptr }, ptr %l150, !tbaa !27
  %t475 = load { i64, ptr }, ptr %l151, !tbaa !27
  %t476 = load { i64, ptr }, ptr %l153, !tbaa !27
  %t480 = call { i64, ptr } @compiler_2flisting_2ebody(ptr %v0, ptr %v4, ptr %v4, ptr %v4, ptr %v2, ptr %v3, ptr %v4, ptr %s0, ptr %t473, { i64, ptr } %t474, { i64, ptr } %t475, { i64, ptr } %t476, ptr %t470, ptr %t471, ptr %t472)
  store { i64, ptr } %t480, ptr %l157
  br label %bb68
bb68:
  %t481 = load { i64, ptr }, ptr %l157, !tbaa !27
  %t482 = extractvalue { i64, ptr } %t481, 0
  %t483 = extractvalue { i64, ptr } %t481, 1
  %t484 = mul i64 %t482, 1
  %t485 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t484)
  call void @llvm.memcpy.p0.p0.i64(ptr %t485, ptr %t483, i64 %t484, i1 false)
  %t486 = insertvalue { i64, ptr } undef, i64 %t482, 0
  %t487 = insertvalue { i64, ptr } %t486, ptr %t485, 1
  %t488 = load ptr, ptr %l148, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t488, { i64, ptr } %t487)
  br label %bb69
bb69:
  %t491 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v5, ptr %l5)
  store { i64, ptr } %t491, ptr %l160
  br label %bb70
bb70:
  call void @__olang_scope_close(ptr %s0)
  %t492 = load { i64, ptr }, ptr %l160, !tbaa !27
  store { i64, ptr } %t492, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2flisting_2eirDefines(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l8 = alloca i1
  %l9 = alloca i1
  %l16 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t4 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d74, i32 0, i32 1) }, 1
  %t5 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d74, i32 0, i32 1) }, 0
  %t7 = extractvalue { i64, ptr } %t3, 1
  %t8 = extractvalue { i64, ptr } %t3, 0
  %t9 = add i64 %t5, %t8
  %t10 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d75, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d75, i32 0, i32 1) }, 0
  %t12 = add i64 %t9, %t11
  %t13 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t12)
  call void @olang_textcopy(ptr %t13, ptr %t4, i64 %t5)
  %t14 = getelementptr i8, ptr %t13, i64 %t5
  call void @olang_textcopy(ptr %t14, ptr %t7, i64 %t8)
  %t15 = getelementptr i8, ptr %t14, i64 %t8
  call void @olang_textcopy(ptr %t15, ptr %t10, i64 %t11)
  %t16 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t17 = insertvalue { i64, ptr } %t16, ptr %t13, 1
  %t20 = extractvalue { i64, ptr } %t17, 0
  %t21 = extractvalue { i64, ptr } %t17, 1
  %t22 = mul i64 %t20, 1
  %t23 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t22)
  call void @llvm.memcpy.p0.p0.i64(ptr %t23, ptr %t21, i64 %t22, i1 false)
  %t24 = insertvalue { i64, ptr } undef, i64 %t20, 0
  %t25 = insertvalue { i64, ptr } %t24, ptr %t23, 1
  %t28 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } %t25)
  store i1 %t28, ptr %l8
  br label %bb1
bb1:
  %t29 = load i1, ptr %l8, !tbaa !21
  br i1 %t29, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb5
bb3:
  %t30 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t32 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t33 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d76, i32 0, i32 1) }, 1
  %t34 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d76, i32 0, i32 1) }, 0
  %t36 = extractvalue { i64, ptr } %t32, 1
  %t37 = extractvalue { i64, ptr } %t32, 0
  %t38 = add i64 %t34, %t37
  %t39 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d77, i32 0, i32 1) }, 1
  %t40 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d77, i32 0, i32 1) }, 0
  %t41 = add i64 %t38, %t40
  %t42 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t41)
  call void @olang_textcopy(ptr %t42, ptr %t33, i64 %t34)
  %t43 = getelementptr i8, ptr %t42, i64 %t34
  call void @olang_textcopy(ptr %t43, ptr %t36, i64 %t37)
  %t44 = getelementptr i8, ptr %t43, i64 %t37
  call void @olang_textcopy(ptr %t44, ptr %t39, i64 %t40)
  %t45 = insertvalue { i64, ptr } undef, i64 %t41, 0
  %t46 = insertvalue { i64, ptr } %t45, ptr %t42, 1
  %t49 = extractvalue { i64, ptr } %t46, 0
  %t50 = extractvalue { i64, ptr } %t46, 1
  %t51 = mul i64 %t49, 1
  %t52 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t51)
  call void @llvm.memcpy.p0.p0.i64(ptr %t52, ptr %t50, i64 %t51, i1 false)
  %t53 = insertvalue { i64, ptr } undef, i64 %t49, 0
  %t54 = insertvalue { i64, ptr } %t53, ptr %t52, 1
  %t57 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %s0, { i64, ptr } %t30, { i64, ptr } %t54)
  store i1 %t57, ptr %l16
  br label %bb4
bb4:
  %t58 = load i1, ptr %l16, !tbaa !21
  store i1 %t58, ptr %l9, !tbaa !21
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  %t59 = load i1, ptr %l9, !tbaa !21
  store i1 %t59, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, i64 } @compiler_2flisting_2elocOf(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l27 = alloca i1
  %l34 = alloca i64
  %l37 = alloca i64
  %l39 = alloca { i64, ptr }
  %l40 = alloca i64
  %l41 = alloca i32
  %l42 = alloca i64
  %l43 = alloca i32
  %l44 = alloca i64
  %l46 = alloca { i64, ptr }
  %l47 = alloca i64
  %l48 = alloca i32
  %l49 = alloca i64
  %l50 = alloca i32
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i64, i64 }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l6
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l1
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, ptr %l9, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d79, i32 0, i32 1) }, ptr %l10, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t8 = call { i64, ptr } @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eReplace_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %a0, { i64, ptr } %t6, { i64, ptr } %t7)
  store { i64, ptr } %t8, ptr %l11
  br label %bb2
bb2:
  %t9 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t9, 0
  store i64 %t10, ptr %l12, !tbaa !24
  %t11 = load i64, ptr %l12, !tbaa !24
  %t12 = mul i64 %t11, 1
  %t13 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t12)
  %t14 = insertvalue { i64, ptr } undef, i64 %t11, 0
  %t15 = insertvalue { i64, ptr } %t14, ptr %t13, 1
  store { i64, ptr } %t15, ptr %l13, !tbaa !27
  %t16 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = load i64, ptr %l12, !tbaa !24
  %t21 = mul i64 %t20, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t17, ptr %t19, i64 %t21, i1 false)
  %t22 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t24 = extractvalue { i64, ptr } %t22, 0
  %t25 = extractvalue { i64, ptr } %t22, 1
  %t26 = mul i64 %t24, 1
  %t27 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t26)
  call void @llvm.memcpy.p0.p0.i64(ptr %t27, ptr %t25, i64 %t26, i1 false)
  %t28 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t29 = insertvalue { i64, ptr } %t28, ptr %t27, 1
  %t31 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t29, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d80, i32 0, i32 1) })
  store { i64, ptr } %t31, ptr %l16
  br label %bb3
bb3:
  %t32 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t32, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t33 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t33, 0
  store i64 %t35, ptr %l4, !tbaa !24
  br label %bb4
bb4:
  store %olang.scope zeroinitializer, ptr %s2
  %t37 = load i64, ptr %l3, !tbaa !24
  %t38 = load i64, ptr %l4, !tbaa !24
  %t41 = icmp slt i64 %t37, %t38
  %t43 = xor i1 %t41, true
  br i1 %t43, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s2)
  br label %bb14
bb6:
  br label %bb7
bb7:
  %t45 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t45, ptr %l23, !tbaa !27
  %t46 = load i64, ptr %l3, !tbaa !24
  %t48 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !27
  %t50 = getelementptr { i64, ptr }, ptr %t49, i64 %t46
  %t51 = load { i64, ptr }, ptr %t50, !tbaa !37
  store { i64, ptr } %t51, ptr %l5, !tbaa !27
  %t53 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t55 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s2, { i64, ptr } %t53, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d81, i32 0, i32 1) })
  store i1 %t55, ptr %l27
  br label %bb8
bb8:
  %t56 = load i1, ptr %l27, !tbaa !21
  %t57 = xor i1 %t56, true
  br i1 %t57, label %bb9, label %bb10
bb9:
  %t59 = load { i64, ptr }, ptr %l5, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l1, { i64, ptr } %t59)
  br label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s2)
  br label %bb13
bb13:
  %t62 = load i64, ptr %l3, !tbaa !24
  %t64 = add i64 %t62, 1
  store i64 %t64, ptr %l3, !tbaa !24
  br label %bb4
bb14:
  %t67 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l1)
  store i64 %t67, ptr %l34
  br label %bb15
bb15:
  %t68 = load i64, ptr %l34, !tbaa !24
  %t69 = icmp slt i64 %t68, 3
  br i1 %t69, label %bb16, label %bb17
bb16:
  %t71 = insertvalue { i64, i64 } undef, i64 -1, 0
  %t72 = insertvalue { i64, i64 } %t71, i64 0, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, i64 } %t72, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t75 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %l1, i64 1)
  store { i64, ptr } %t75, ptr %l39
  br label %bb19
bb19:
  %t76 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s0, i64 10)
  %t77 = extractvalue { i32, i64 } %t76, 1
  %t78 = extractvalue { i32, i64 } %t76, 0
  store i32 %t78, ptr %l41
  %t79 = icmp ne i32 %t78, 0
  br i1 %t79, label %bb21, label %ok.80, !prof !99
ok.80:
  store i64 %t77, ptr %l40
  br label %bb20
bb20:
  %t81 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t82 = load i64, ptr %l40, !tbaa !24
  %t83 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %s0, { i64, ptr } %t81, i64 %t82)
  %t84 = extractvalue { i32, i64 } %t83, 1
  %t85 = extractvalue { i32, i64 } %t83, 0
  store i32 %t85, ptr %l43
  %t86 = icmp ne i32 %t85, 0
  br i1 %t86, label %bb24, label %ok.87, !prof !99
ok.87:
  store i64 %t84, ptr %l42
  br label %bb23
bb21:
  br label %bb22
bb22:
  store i64 -1, ptr %l37, !tbaa !24
  br label %bb25
bb23:
  %t88 = load i64, ptr %l42, !tbaa !24
  store i64 %t88, ptr %l37, !tbaa !24
  br label %bb25
bb24:
  br label %bb22
bb25:
  %t90 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %l1, i64 2)
  store { i64, ptr } %t90, ptr %l46
  br label %bb26
bb26:
  %t91 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s0, i64 10)
  %t92 = extractvalue { i32, i64 } %t91, 1
  %t93 = extractvalue { i32, i64 } %t91, 0
  store i32 %t93, ptr %l48
  %t94 = icmp ne i32 %t93, 0
  br i1 %t94, label %bb28, label %ok.95, !prof !99
ok.95:
  store i64 %t92, ptr %l47
  br label %bb27
bb27:
  %t96 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t97 = load i64, ptr %l47, !tbaa !24
  %t98 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %s0, { i64, ptr } %t96, i64 %t97)
  %t99 = extractvalue { i32, i64 } %t98, 1
  %t100 = extractvalue { i32, i64 } %t98, 0
  store i32 %t100, ptr %l50
  %t101 = icmp ne i32 %t100, 0
  br i1 %t101, label %bb31, label %ok.102, !prof !99
ok.102:
  store i64 %t99, ptr %l49
  br label %bb30
bb28:
  br label %bb29
bb29:
  store i64 0, ptr %l44, !tbaa !24
  br label %bb32
bb30:
  %t103 = load i64, ptr %l49, !tbaa !24
  store i64 %t103, ptr %l44, !tbaa !24
  br label %bb32
bb31:
  br label %bb29
bb32:
  %t104 = load i64, ptr %l37, !tbaa !24
  %t105 = insertvalue { i64, i64 } undef, i64 %t104, 0
  %t106 = load i64, ptr %l44, !tbaa !24
  %t107 = insertvalue { i64, i64 } %t105, i64 %t106, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, i64 } %t107, ptr %rv
  br label %ret
ret:
  %rr = load { i64, i64 }, ptr %rv
  ret { i64, i64 } %rr
}

define dso_local { i64, ptr } @compiler_2flisting_2emetaField(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i32
  %l16 = alloca i1
  %l17 = alloca { i64, ptr }
  %l21 = alloca i1
  %l22 = alloca i1
  %l23 = alloca { i64, ptr }
  %l27 = alloca i1
  %l29 = alloca i64
  %l30 = alloca { i64, ptr }
  %l32 = alloca i64
  %l35 = alloca i64
  %l36 = alloca i64
  %l44 = alloca i64
  %l45 = alloca i32
  %l48 = alloca i64
  %l55 = alloca { i64, ptr }
  %l56 = alloca { i64, ptr }
  %l57 = alloca i64
  %l58 = alloca { i64, ptr }
  %l59 = alloca { i64, ptr }
  %l64 = alloca i64
  %l67 = alloca i64
  %l68 = alloca i64
  %l74 = alloca i1
  %l75 = alloca i64
  %l76 = alloca { i64, ptr }
  %l79 = alloca i64
  %l80 = alloca i64
  %l85 = alloca i64
  %l86 = alloca i32
  %l89 = alloca { i64, ptr }
  %l90 = alloca { i64, ptr }
  %l93 = alloca i64
  %l94 = alloca i64
  %l100 = alloca { i64, ptr }
  %l102 = alloca i64
  %l103 = alloca i64
  %l113 = alloca i1
  %l114 = alloca { i64, ptr }
  %l118 = alloca i1
  %l119 = alloca { i64, ptr }
  %l126 = alloca { i64, ptr }
  %l127 = alloca i64
  %l128 = alloca i64
  %l133 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t2 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t4 = extractvalue { i64, ptr } %t2, 1
  %t5 = extractvalue { i64, ptr } %t2, 0
  %t6 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d82, i32 0, i32 1) }, 1
  %t7 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d82, i32 0, i32 1) }, 0
  %t8 = add i64 %t5, %t7
  %t9 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t8)
  call void @olang_textcopy(ptr %t9, ptr %t4, i64 %t5)
  %t10 = getelementptr i8, ptr %t9, i64 %t5
  call void @olang_textcopy(ptr %t10, ptr %t6, i64 %t7)
  %t11 = insertvalue { i64, ptr } undef, i64 %t8, 0
  %t12 = insertvalue { i64, ptr } %t11, ptr %t9, 1
  %t14 = extractvalue { i64, ptr } %t12, 0
  %t15 = extractvalue { i64, ptr } %t12, 1
  %t16 = mul i64 %t14, 1
  %t17 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t16)
  call void @llvm.memcpy.p0.p0.i64(ptr %t17, ptr %t15, i64 %t16, i1 false)
  %t18 = insertvalue { i64, ptr } undef, i64 %t14, 0
  %t19 = insertvalue { i64, ptr } %t18, ptr %t17, 1
  %t22 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } %t19)
  %t23 = extractvalue { i32, i64 } %t22, 1
  %t24 = extractvalue { i32, i64 } %t22, 0
  store i32 %t24, ptr %l13
  %t25 = icmp ne i32 %t24, 0
  br i1 %t25, label %bb2, label %ok.26, !prof !99
ok.26:
  store i64 %t23, ptr %l12
  br label %bb1
bb1:
  %t27 = load i64, ptr %l12, !tbaa !24
  store i64 %t27, ptr %l7, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i64 -1, ptr %l7, !tbaa !24
  br label %bb4
bb4:
  %t28 = load i64, ptr %l7, !tbaa !24
  store i64 %t28, ptr %l2, !tbaa !24
  br label %bb5
bb5:
  store %olang.scope zeroinitializer, ptr %s2
  %t29 = load i64, ptr %l2, !tbaa !24
  %t31 = icmp sgt i64 %t29, 0
  br i1 %t31, label %bb6, label %bb7
bb6:
  %t33 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t33, ptr %l17, !tbaa !27
  %t34 = load i64, ptr %l2, !tbaa !24
  %t36 = sub i64 %t34, 1
  %t38 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !27
  %t40 = getelementptr i8, ptr %t39, i64 %t36
  %t41 = load i8, ptr %t40, !tbaa !32
  %t43 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t41)
  store i1 %t43, ptr %l21
  br label %bb8
bb7:
  store i1 false, ptr %l16, !tbaa !21
  br label %bb13
bb8:
  %t44 = load i1, ptr %l21, !tbaa !21
  br i1 %t44, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb12
bb10:
  %t45 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t45, ptr %l23, !tbaa !27
  %t46 = load i64, ptr %l2, !tbaa !24
  %t48 = sub i64 %t46, 1
  %t50 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !27
  %t52 = getelementptr i8, ptr %t51, i64 %t48
  %t53 = load i8, ptr %t52, !tbaa !32
  %t55 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t53)
  store i1 %t55, ptr %l27
  br label %bb11
bb11:
  %t56 = load i1, ptr %l27, !tbaa !21
  store i1 %t56, ptr %l22, !tbaa !21
  br label %bb12
bb12:
  %t57 = load i1, ptr %l22, !tbaa !21
  store i1 %t57, ptr %l16, !tbaa !21
  br label %bb13
bb13:
  %t58 = load i1, ptr %l16, !tbaa !21
  %t59 = xor i1 %t58, true
  br i1 %t59, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s2)
  br label %bb31
bb15:
  br label %bb16
bb16:
  %t61 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t61, ptr %l30, !tbaa !27
  %t62 = load i64, ptr %l2, !tbaa !24
  %t64 = add i64 %t62, 1
  store i64 %t64, ptr %l32, !tbaa !24
  %t65 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t68 = extractvalue { i64, ptr } %t65, 0
  store i64 %t68, ptr %l35, !tbaa !24
  %t69 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t70 = extractvalue { i64, ptr } %t69, 0
  store i64 %t70, ptr %l36, !tbaa !24
  %t71 = load i64, ptr %l32, !tbaa !24
  %t72 = icmp sge i64 %t71, 0
  br i1 %t72, label %bb17, label %bb18
bb17:
  %t74 = load i64, ptr %l32, !tbaa !24
  %t75 = load i64, ptr %l35, !tbaa !24
  %t76 = icmp sle i64 %t74, %t75
  br i1 %t76, label %bb19, label %bb20
bb18:
  call void @__olang_check_failed(ptr @olang_loc_61ce4b4de8e9e57b_f7600b48bd811137)
  unreachable
bb19:
  %t78 = load i64, ptr %l35, !tbaa !24
  %t79 = load i64, ptr %l36, !tbaa !24
  %t80 = icmp sle i64 %t78, %t79
  br i1 %t80, label %bb21, label %bb22
bb20:
  call void @__olang_check_failed(ptr @olang_loc_61ce4b4de8e9e57b_f7600b48bd811137)
  unreachable
bb21:
  %t82 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !27
  %t84 = load i64, ptr %l32, !tbaa !24
  %t85 = load i64, ptr %l35, !tbaa !24
  %t86 = getelementptr i8, ptr %t83, i64 %t84
  %t87 = sub i64 %t85, %t84
  %t88 = insertvalue { i64, ptr } undef, i64 %t87, 0
  %t89 = insertvalue { i64, ptr } %t88, ptr %t86, 1
  %t90 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t92 = extractvalue { i64, ptr } %t90, 1
  %t93 = extractvalue { i64, ptr } %t90, 0
  %t94 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d83, i32 0, i32 1) }, 1
  %t95 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d83, i32 0, i32 1) }, 0
  %t96 = add i64 %t93, %t95
  %t97 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t96)
  call void @olang_textcopy(ptr %t97, ptr %t92, i64 %t93)
  %t98 = getelementptr i8, ptr %t97, i64 %t93
  call void @olang_textcopy(ptr %t98, ptr %t94, i64 %t95)
  %t99 = insertvalue { i64, ptr } undef, i64 %t96, 0
  %t100 = insertvalue { i64, ptr } %t99, ptr %t97, 1
  %t102 = extractvalue { i64, ptr } %t100, 0
  %t103 = extractvalue { i64, ptr } %t100, 1
  %t104 = mul i64 %t102, 1
  %t105 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t104)
  call void @llvm.memcpy.p0.p0.i64(ptr %t105, ptr %t103, i64 %t104, i1 false)
  %t106 = insertvalue { i64, ptr } undef, i64 %t102, 0
  %t107 = insertvalue { i64, ptr } %t106, ptr %t105, 1
  %t110 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %s2, { i64, ptr } %t89, { i64, ptr } %t107)
  %t111 = extractvalue { i32, i64 } %t110, 1
  %t112 = extractvalue { i32, i64 } %t110, 0
  store i32 %t112, ptr %l45
  %t113 = icmp ne i32 %t112, 0
  br i1 %t113, label %bb24, label %ok.114, !prof !99
ok.114:
  store i64 %t111, ptr %l44
  br label %bb23
bb22:
  call void @__olang_check_failed(ptr @olang_loc_61ce4b4de8e9e57b_f7600b48bd811137)
  unreachable
bb23:
  %t115 = load i64, ptr %l44, !tbaa !24
  store i64 %t115, ptr %l29, !tbaa !24
  br label %bb26
bb24:
  br label %bb25
bb25:
  store i64 -1, ptr %l29, !tbaa !24
  br label %bb26
bb26:
  %t116 = load i64, ptr %l29, !tbaa !24
  store i64 %t116, ptr %l3, !tbaa !24
  %t117 = load i64, ptr %l3, !tbaa !24
  %t119 = icmp slt i64 %t117, 0
  br i1 %t119, label %bb27, label %bb28
bb27:
  store i64 -1, ptr %l48, !tbaa !24
  br label %bb29
bb28:
  %t121 = load i64, ptr %l2, !tbaa !24
  %t123 = add i64 %t121, 1
  %t124 = load i64, ptr %l3, !tbaa !24
  %t127 = add i64 %t123, %t124
  store i64 %t127, ptr %l48, !tbaa !24
  br label %bb29
bb29:
  %t129 = load i64, ptr %l48, !tbaa !24
  store i64 %t129, ptr %l2, !tbaa !24
  call void @__olang_scope_close(ptr %s2)
  br label %bb30
bb30:
  br label %bb5
bb31:
  %t130 = load i64, ptr %l2, !tbaa !24
  %t132 = icmp slt i64 %t130, 0
  br i1 %t132, label %bb32, label %bb33
bb32:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d84, i32 0, i32 1) }, ptr %l55, !tbaa !27
  %t134 = load { i64, ptr }, ptr %l55, !tbaa !27
  store { i64, ptr } %t134, ptr %l56, !tbaa !27
  %t135 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t136 = extractvalue { i64, ptr } %t135, 0
  store i64 %t136, ptr %l57, !tbaa !24
  %t137 = load i64, ptr %l57, !tbaa !24
  %t138 = mul i64 %t137, 1
  %t139 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t138)
  %t140 = insertvalue { i64, ptr } undef, i64 %t137, 0
  %t141 = insertvalue { i64, ptr } %t140, ptr %t139, 1
  store { i64, ptr } %t141, ptr %l58, !tbaa !27
  %t142 = getelementptr { i64, ptr }, ptr %l58, i32 0, i32 1
  %t143 = load ptr, ptr %t142, !tbaa !27
  %t144 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t145 = load ptr, ptr %t144, !tbaa !27
  %t146 = load i64, ptr %l57, !tbaa !24
  %t147 = mul i64 %t146, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t143, ptr %t145, i64 %t147, i1 false)
  %t148 = load { i64, ptr }, ptr %l58, !tbaa !27
  store { i64, ptr } %t148, ptr %l56, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t149 = load { i64, ptr }, ptr %l56, !tbaa !27
  store { i64, ptr } %t149, ptr %rv
  br label %ret
bb33:
  br label %bb34
bb34:
  %t150 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t150, ptr %l59, !tbaa !27
  %t151 = load i64, ptr %l2, !tbaa !24
  %t152 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t154 = extractvalue { i64, ptr } %t152, 0
  %t157 = add i64 %t151, %t154
  %t159 = add i64 %t157, 2
  store i64 %t159, ptr %l64, !tbaa !24
  %t160 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t163 = extractvalue { i64, ptr } %t160, 0
  store i64 %t163, ptr %l67, !tbaa !24
  %t164 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t165 = extractvalue { i64, ptr } %t164, 0
  store i64 %t165, ptr %l68, !tbaa !24
  %t166 = load i64, ptr %l64, !tbaa !24
  %t167 = icmp sge i64 %t166, 0
  br i1 %t167, label %bb35, label %bb36
bb35:
  %t169 = load i64, ptr %l64, !tbaa !24
  %t170 = load i64, ptr %l67, !tbaa !24
  %t171 = icmp sle i64 %t169, %t170
  br i1 %t171, label %bb37, label %bb38
bb36:
  call void @__olang_check_failed(ptr @olang_loc_bcaef50f3ad362fe_b83702f58870efda)
  unreachable
bb37:
  %t173 = load i64, ptr %l67, !tbaa !24
  %t174 = load i64, ptr %l68, !tbaa !24
  %t175 = icmp sle i64 %t173, %t174
  br i1 %t175, label %bb39, label %bb40
bb38:
  call void @__olang_check_failed(ptr @olang_loc_bcaef50f3ad362fe_b83702f58870efda)
  unreachable
bb39:
  %t177 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t178 = load ptr, ptr %t177, !tbaa !27
  %t179 = load i64, ptr %l64, !tbaa !24
  %t180 = load i64, ptr %l67, !tbaa !24
  %t181 = getelementptr i8, ptr %t178, i64 %t179
  %t182 = sub i64 %t180, %t179
  %t183 = insertvalue { i64, ptr } undef, i64 %t182, 0
  %t184 = insertvalue { i64, ptr } %t183, ptr %t181, 1
  store { i64, ptr } %t184, ptr %l4, !tbaa !27
  %t186 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t188 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t186, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d85, i32 0, i32 1) })
  store i1 %t188, ptr %l74
  br label %bb41
bb40:
  call void @__olang_check_failed(ptr @olang_loc_bcaef50f3ad362fe_b83702f58870efda)
  unreachable
bb41:
  %t189 = load i1, ptr %l74, !tbaa !21
  br i1 %t189, label %bb42, label %bb43
bb42:
  store %olang.scope zeroinitializer, ptr %s5
  %t190 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t190, ptr %l76, !tbaa !27
  %t191 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t194 = extractvalue { i64, ptr } %t191, 0
  store i64 %t194, ptr %l79, !tbaa !24
  %t195 = load { i64, ptr }, ptr %l76, !tbaa !27
  %t196 = extractvalue { i64, ptr } %t195, 0
  store i64 %t196, ptr %l80, !tbaa !24
  %t197 = icmp sge i64 1, 0
  br i1 %t197, label %bb44, label %bb45
bb43:
  br label %bb69
bb44:
  %t199 = load i64, ptr %l79, !tbaa !24
  %t200 = icmp sle i64 1, %t199
  br i1 %t200, label %bb46, label %bb47
bb45:
  call void @__olang_check_failed(ptr @olang_loc_f4e5321dee5c23dd_4262af410e6ad879)
  unreachable
bb46:
  %t202 = load i64, ptr %l79, !tbaa !24
  %t203 = load i64, ptr %l80, !tbaa !24
  %t204 = icmp sle i64 %t202, %t203
  br i1 %t204, label %bb48, label %bb49
bb47:
  call void @__olang_check_failed(ptr @olang_loc_f4e5321dee5c23dd_4262af410e6ad879)
  unreachable
bb48:
  %t206 = getelementptr { i64, ptr }, ptr %l76, i32 0, i32 1
  %t207 = load ptr, ptr %t206, !tbaa !27
  %t208 = load i64, ptr %l79, !tbaa !24
  %t209 = getelementptr i8, ptr %t207, i64 1
  %t210 = sub i64 %t208, 1
  %t211 = insertvalue { i64, ptr } undef, i64 %t210, 0
  %t212 = insertvalue { i64, ptr } %t211, ptr %t209, 1
  %t214 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %s5, { i64, ptr } %t212, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d86, i32 0, i32 1) })
  %t215 = extractvalue { i32, i64 } %t214, 1
  %t216 = extractvalue { i32, i64 } %t214, 0
  store i32 %t216, ptr %l86
  %t217 = icmp ne i32 %t216, 0
  br i1 %t217, label %bb51, label %ok.218, !prof !99
ok.218:
  store i64 %t215, ptr %l85
  br label %bb50
bb49:
  call void @__olang_check_failed(ptr @olang_loc_f4e5321dee5c23dd_4262af410e6ad879)
  unreachable
bb50:
  %t219 = load i64, ptr %l85, !tbaa !24
  store i64 %t219, ptr %l75, !tbaa !24
  br label %bb53
bb51:
  br label %bb52
bb52:
  store i64 -1, ptr %l75, !tbaa !24
  br label %bb53
bb53:
  %t220 = load i64, ptr %l75, !tbaa !24
  store i64 %t220, ptr %l5, !tbaa !24
  %t221 = load i64, ptr %l5, !tbaa !24
  %t223 = icmp slt i64 %t221, 0
  br i1 %t223, label %bb54, label %bb55
bb54:
  %t225 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t225, ptr %l90, !tbaa !27
  %t226 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t229 = extractvalue { i64, ptr } %t226, 0
  store i64 %t229, ptr %l93, !tbaa !24
  %t230 = load { i64, ptr }, ptr %l90, !tbaa !27
  %t231 = extractvalue { i64, ptr } %t230, 0
  store i64 %t231, ptr %l94, !tbaa !24
  %t232 = icmp sge i64 1, 0
  br i1 %t232, label %bb56, label %bb57
bb55:
  %t234 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t234, ptr %l100, !tbaa !27
  %t235 = load i64, ptr %l5, !tbaa !24
  %t237 = add i64 1, %t235
  store i64 %t237, ptr %l102, !tbaa !24
  %t238 = load { i64, ptr }, ptr %l100, !tbaa !27
  %t239 = extractvalue { i64, ptr } %t238, 0
  store i64 %t239, ptr %l103, !tbaa !24
  %t240 = icmp sge i64 1, 0
  br i1 %t240, label %bb62, label %bb63
bb56:
  %t242 = load i64, ptr %l93, !tbaa !24
  %t243 = icmp sle i64 1, %t242
  br i1 %t243, label %bb58, label %bb59
bb57:
  call void @__olang_check_failed(ptr @olang_loc_b06da0308285dd80_9593e16f44f2444c)
  unreachable
bb58:
  %t245 = load i64, ptr %l93, !tbaa !24
  %t246 = load i64, ptr %l94, !tbaa !24
  %t247 = icmp sle i64 %t245, %t246
  br i1 %t247, label %bb60, label %bb61
bb59:
  call void @__olang_check_failed(ptr @olang_loc_b06da0308285dd80_9593e16f44f2444c)
  unreachable
bb60:
  %t249 = getelementptr { i64, ptr }, ptr %l90, i32 0, i32 1
  %t250 = load ptr, ptr %t249, !tbaa !27
  %t251 = load i64, ptr %l93, !tbaa !24
  %t252 = getelementptr i8, ptr %t250, i64 1
  %t253 = sub i64 %t251, 1
  %t254 = insertvalue { i64, ptr } undef, i64 %t253, 0
  %t255 = insertvalue { i64, ptr } %t254, ptr %t252, 1
  %t257 = extractvalue { i64, ptr } %t255, 1
  %t258 = extractvalue { i64, ptr } %t255, 0
  %t259 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t258)
  call void @olang_textcopy(ptr %t259, ptr %t257, i64 %t258)
  %t260 = insertvalue { i64, ptr } undef, i64 %t258, 0
  %t261 = insertvalue { i64, ptr } %t260, ptr %t259, 1
  store { i64, ptr } %t261, ptr %l89, !tbaa !27
  br label %bb68
bb61:
  call void @__olang_check_failed(ptr @olang_loc_b06da0308285dd80_9593e16f44f2444c)
  unreachable
bb62:
  %t263 = load i64, ptr %l102, !tbaa !24
  %t264 = icmp sle i64 1, %t263
  br i1 %t264, label %bb64, label %bb65
bb63:
  call void @__olang_check_failed(ptr @olang_loc_b06da0308285dd80_9593e16f44f2444c)
  unreachable
bb64:
  %t266 = load i64, ptr %l102, !tbaa !24
  %t267 = load i64, ptr %l103, !tbaa !24
  %t268 = icmp sle i64 %t266, %t267
  br i1 %t268, label %bb66, label %bb67
bb65:
  call void @__olang_check_failed(ptr @olang_loc_b06da0308285dd80_9593e16f44f2444c)
  unreachable
bb66:
  %t270 = getelementptr { i64, ptr }, ptr %l100, i32 0, i32 1
  %t271 = load ptr, ptr %t270, !tbaa !27
  %t272 = load i64, ptr %l102, !tbaa !24
  %t273 = getelementptr i8, ptr %t271, i64 1
  %t274 = sub i64 %t272, 1
  %t275 = insertvalue { i64, ptr } undef, i64 %t274, 0
  %t276 = insertvalue { i64, ptr } %t275, ptr %t273, 1
  %t278 = extractvalue { i64, ptr } %t276, 1
  %t279 = extractvalue { i64, ptr } %t276, 0
  %t280 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t279)
  call void @olang_textcopy(ptr %t280, ptr %t278, i64 %t279)
  %t281 = insertvalue { i64, ptr } undef, i64 %t279, 0
  %t282 = insertvalue { i64, ptr } %t281, ptr %t280, 1
  store { i64, ptr } %t282, ptr %l89, !tbaa !27
  br label %bb68
bb67:
  call void @__olang_check_failed(ptr @olang_loc_b06da0308285dd80_9593e16f44f2444c)
  unreachable
bb68:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  %t284 = load { i64, ptr }, ptr %l89, !tbaa !27
  store { i64, ptr } %t284, ptr %rv
  br label %ret
bb69:
  store i64 0, ptr %l6, !tbaa !24
  br label %bb70
bb70:
  %t285 = load i64, ptr %l6, !tbaa !24
  %t286 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t288 = extractvalue { i64, ptr } %t286, 0
  %t291 = icmp slt i64 %t285, %t288
  br i1 %t291, label %bb71, label %bb72
bb71:
  %t293 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t293, ptr %l114, !tbaa !27
  %t294 = load i64, ptr %l6, !tbaa !24
  %t296 = getelementptr { i64, ptr }, ptr %l114, i32 0, i32 1
  %t297 = load ptr, ptr %t296, !tbaa !27
  %t298 = getelementptr i8, ptr %t297, i64 %t294
  %t299 = load i8, ptr %t298, !tbaa !32
  %t301 = icmp ne i8 %t299, 44
  store i1 %t301, ptr %l113, !tbaa !21
  br label %bb73
bb72:
  store i1 false, ptr %l113, !tbaa !21
  br label %bb73
bb73:
  %t303 = load i1, ptr %l113, !tbaa !21
  br i1 %t303, label %bb74, label %bb75
bb74:
  %t304 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t304, ptr %l119, !tbaa !27
  %t305 = load i64, ptr %l6, !tbaa !24
  %t307 = getelementptr { i64, ptr }, ptr %l119, i32 0, i32 1
  %t308 = load ptr, ptr %t307, !tbaa !27
  %t309 = getelementptr i8, ptr %t308, i64 %t305
  %t310 = load i8, ptr %t309, !tbaa !32
  %t312 = icmp ne i8 %t310, 41
  store i1 %t312, ptr %l118, !tbaa !21
  br label %bb76
bb75:
  store i1 false, ptr %l118, !tbaa !21
  br label %bb76
bb76:
  %t314 = load i1, ptr %l118, !tbaa !21
  %t315 = xor i1 %t314, true
  br i1 %t315, label %bb77, label %bb78
bb77:
  br label %bb81
bb78:
  br label %bb79
bb79:
  %t317 = load i64, ptr %l6, !tbaa !24
  %t319 = add i64 %t317, 1
  store i64 %t319, ptr %l6, !tbaa !24
  br label %bb80
bb80:
  br label %bb70
bb81:
  %t321 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t321, ptr %l126, !tbaa !27
  %t322 = load i64, ptr %l6, !tbaa !24
  store i64 %t322, ptr %l127, !tbaa !24
  %t323 = load { i64, ptr }, ptr %l126, !tbaa !27
  %t324 = extractvalue { i64, ptr } %t323, 0
  store i64 %t324, ptr %l128, !tbaa !24
  %t325 = icmp sge i64 0, 0
  br i1 %t325, label %bb82, label %bb83
bb82:
  %t327 = load i64, ptr %l127, !tbaa !24
  %t328 = icmp sle i64 0, %t327
  br i1 %t328, label %bb84, label %bb85
bb83:
  call void @__olang_check_failed(ptr @olang_loc_50111c761c56dd5f_b5d6bbb7817ca613)
  unreachable
bb84:
  %t330 = load i64, ptr %l127, !tbaa !24
  %t331 = load i64, ptr %l128, !tbaa !24
  %t332 = icmp sle i64 %t330, %t331
  br i1 %t332, label %bb86, label %bb87
bb85:
  call void @__olang_check_failed(ptr @olang_loc_50111c761c56dd5f_b5d6bbb7817ca613)
  unreachable
bb86:
  %t334 = getelementptr { i64, ptr }, ptr %l126, i32 0, i32 1
  %t335 = load ptr, ptr %t334, !tbaa !27
  %t336 = load i64, ptr %l127, !tbaa !24
  %t337 = getelementptr i8, ptr %t335, i64 0
  %t338 = sub i64 %t336, 0
  %t339 = insertvalue { i64, ptr } undef, i64 %t338, 0
  %t340 = insertvalue { i64, ptr } %t339, ptr %t337, 1
  %t342 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v0, ptr %s0, { i64, ptr } %t340)
  store { i64, ptr } %t342, ptr %l133
  br label %bb88
bb87:
  call void @__olang_check_failed(ptr @olang_loc_50111c761c56dd5f_b5d6bbb7817ca613)
  unreachable
bb88:
  %t343 = load { i64, ptr }, ptr %l133, !tbaa !27
  %t344 = extractvalue { i64, ptr } %t343, 1
  %t345 = extractvalue { i64, ptr } %t343, 0
  %t346 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t345)
  call void @olang_textcopy(ptr %t346, ptr %t344, i64 %t345)
  %t347 = insertvalue { i64, ptr } undef, i64 %t345, 0
  %t348 = insertvalue { i64, ptr } %t347, ptr %t346, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t348, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2flisting_2eofAny(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l13 = alloca { i64, ptr }
  %l18 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a1, ptr %l2, !tbaa !27
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
  %t20 = getelementptr { i64, ptr }, ptr %t19, i64 %t16
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !37
  %t27 = call i1 @compiler_2flisting_2eofSym(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %t21)
  store i1 %t27, ptr %l18
  br label %bb5
bb5:
  %t28 = load i1, ptr %l18, !tbaa !21
  br i1 %t28, label %bb6, label %bb7
bb6:
  store i1 true, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t30 = load i64, ptr %l3, !tbaa !24
  %t32 = add i64 %t30, 1
  store i64 %t32, ptr %l3, !tbaa !24
  br label %bb1
bb10:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2flisting_2ereadRemarks(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l4 = alloca ptr
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca i1
  %l7 = alloca %"std/prelude/text:LineIter"
  %l8 = alloca { i64, ptr }
  %l9 = alloca { { i64, ptr }, { i64, ptr } }
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca i64
  %l17 = alloca %"compiler/listing:Remark"
  %l19 = alloca i64
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l24 = alloca %"std/prelude/text:LineIter"
  %l25 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l28 = alloca i32
  %l30 = alloca i1
  %l32 = alloca i1
  %l33 = alloca %"compiler/listing:Remark"
  %l35 = alloca i64
  %l37 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l39 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l41 = alloca ptr
  %l42 = alloca i64
  %l44 = alloca { i64, ptr }
  %l47 = alloca i64
  %l48 = alloca i64
  %l53 = alloca { i64, ptr }
  %l55 = alloca { i64, ptr }
  %l58 = alloca i1
  %l59 = alloca ptr
  %l61 = alloca { i64, ptr }
  %l62 = alloca { i64, ptr }
  %l63 = alloca i64
  %l64 = alloca { i64, ptr }
  %l67 = alloca { i64, ptr }
  %l68 = alloca { i64, ptr }
  %l73 = alloca i1
  %l74 = alloca i1
  %l78 = alloca i1
  %l79 = alloca i1
  %l82 = alloca i1
  %l83 = alloca i1
  %l86 = alloca i1
  %l91 = alloca i1
  %l92 = alloca i1
  %l94 = alloca i1
  %l97 = alloca i1
  %l101 = alloca { i64, ptr }
  %l104 = alloca i64
  %l105 = alloca i64
  %l110 = alloca { { i64, ptr }, { i64, ptr } }
  %l112 = alloca { i64, ptr }
  %l113 = alloca i64
  %l114 = alloca { i64, ptr }
  %l116 = alloca i1
  %l117 = alloca ptr
  %l118 = alloca i64
  %l121 = alloca { i64, ptr }
  %l123 = alloca { i64, ptr }
  %l126 = alloca i1
  %l130 = alloca i1
  %l133 = alloca { i64, ptr }
  %l135 = alloca i1
  %l136 = alloca i1
  %l138 = alloca i1
  %l140 = alloca i1
  %l141 = alloca i1
  %l143 = alloca i1
  %l144 = alloca i1
  %l146 = alloca i1
  %l149 = alloca { i64, ptr }
  %l151 = alloca i64
  %l162 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"compiler/listing:Remark" @compiler_2flisting_3aRemark_2ector(ptr %v3)
  store %"compiler/listing:Remark" %t1, ptr %l17
  br label %bb1
bb1:
  %t2 = load %"compiler/listing:Remark", ptr %l17
  %t3 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 120, i64 8)
  store %"compiler/listing:Remark" %t2, ptr %t3
  store ptr %t3, ptr %l4, !tbaa !29
  %t5 = ptrtoint ptr %s0 to i64
  store i64 %t5, ptr %l19, !tbaa !24
  %t6 = load i1, ptr @olang_2esole_2ecompiler__2flisting__2ereadRemarks_2elocal_2e5
  br i1 %t6, label %bb2, label %bb3
bb2:
  %t8 = call ptr @__olang_region_make(ptr %s0)
  %t9 = ptrtoint ptr %t8 to i64
  store i64 %t9, ptr %l19, !tbaa !24
  br label %bb3
bb3:
  %t10 = load i64, ptr %l19
  %t11 = inttoptr i64 %t10 to ptr
  %t12 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2ector(ptr %t11, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t12, ptr %l21
  br label %bb4
bb4:
  %t13 = load i1, ptr @olang_2esole_2ecompiler__2flisting__2ereadRemarks_2elocal_2e5
  br i1 %t13, label %bb5, label %bb6
bb5:
  %t15 = load i64, ptr %l19
  %t16 = inttoptr i64 %t15 to ptr
  %t17 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21, i32 0, i32 0
  %t18 = load { i64, ptr }, ptr %t17
  %t19 = extractvalue { i64, ptr } %t18, 1
  %t20 = call ptr @__olang_region_or(ptr %t19, ptr null)
  %t21 = icmp ne ptr %t20, null
  %t22 = select i1 %t21, ptr %t20, ptr null
  %t23 = icmp eq ptr %t22, %t16
  call void @__olang_region_settle(ptr %t16, i1 %t23)
  br label %bb6
bb6:
  %t24 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t24, ptr %l5
  store i1 false, ptr %l6, !tbaa !21
  %t27 = call %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %v0, ptr %v0, { i64, ptr } %a0)
  store %"std/prelude/text:LineIter" %t27, ptr %l24
  br label %bb7
bb7:
  %t28 = load %"std/prelude/text:LineIter", ptr %l24
  store %"std/prelude/text:LineIter" %t28, ptr %l7
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t30 = call { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %v0, ptr %v0, ptr %l7)
  %t31 = extractvalue { i32, { i64, ptr } } %t30, 1
  %t32 = extractvalue { i32, { i64, ptr } } %t30, 0
  store i32 %t32, ptr %l28
  %t33 = icmp ne i32 %t32, 0
  br i1 %t33, label %bb10, label %ok.34, !prof !99
ok.34:
  store { i64, ptr } %t31, ptr %l27
  br label %bb9
bb9:
  %t35 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t35, ptr %l25, !tbaa !27
  br label %bb12
bb10:
  %t36 = load i32, ptr %l28, !tbaa !23
  %t37 = ashr i32 %t36, 16
  %t39 = icmp eq i32 %t37, 1
  store i1 %t39, ptr %l30, !tbaa !21
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s2)
  br label %bb133
bb12:
  %t40 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t40, ptr %l8, !tbaa !27
  %t41 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t43 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s2, { i64, ptr } %t41, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d87, i32 0, i32 1) })
  store i1 %t43, ptr %l32
  br label %bb13
bb13:
  %t44 = load i1, ptr %l32, !tbaa !21
  br i1 %t44, label %bb14, label %bb15
bb14:
  %t45 = call %"compiler/listing:Remark" @compiler_2flisting_3aRemark_2ector(ptr %v3)
  store %"compiler/listing:Remark" %t45, ptr %l33
  br label %bb16
bb15:
  br label %bb35
bb16:
  %t46 = load %"compiler/listing:Remark", ptr %l33
  %t47 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 120, i64 8)
  store %"compiler/listing:Remark" %t46, ptr %t47
  store ptr %t47, ptr %l4, !tbaa !29
  %t49 = ptrtoint ptr %s0 to i64
  store i64 %t49, ptr %l35, !tbaa !24
  %t50 = load i1, ptr @olang_2esole_2ecompiler__2flisting__2ereadRemarks_2elocal_2e5
  br i1 %t50, label %bb17, label %bb18
bb17:
  %t52 = call ptr @__olang_region_make(ptr %s0)
  %t53 = ptrtoint ptr %t52 to i64
  store i64 %t53, ptr %l35, !tbaa !24
  br label %bb18
bb18:
  %t54 = load i64, ptr %l35
  %t55 = inttoptr i64 %t54 to ptr
  %t56 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2ector(ptr %t55, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t56, ptr %l37
  br label %bb19
bb19:
  %t57 = load i1, ptr @olang_2esole_2ecompiler__2flisting__2ereadRemarks_2elocal_2e5
  br i1 %t57, label %bb20, label %bb21
bb20:
  %t59 = load i64, ptr %l35
  %t60 = inttoptr i64 %t59 to ptr
  %t61 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l37, i32 0, i32 0
  %t62 = load { i64, ptr }, ptr %t61
  %t63 = extractvalue { i64, ptr } %t62, 1
  %t64 = call ptr @__olang_region_or(ptr %t63, ptr null)
  %t65 = icmp ne ptr %t64, null
  %t66 = select i1 %t65, ptr %t64, ptr null
  %t67 = icmp eq ptr %t66, %t60
  call void @__olang_region_settle(ptr %t60, i1 %t67)
  br label %bb21
bb21:
  %t68 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t68, ptr %l39
  %t69 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l37
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t69, ptr %l5
  %t70 = load i1, ptr @olang_2esole_2ecompiler__2flisting__2ereadRemarks_2elocal_2e5
  br i1 %t70, label %bb22, label %bb23
bb22:
  %t72 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l39, i32 0, i32 0
  %t73 = load { i64, ptr }, ptr %t72
  %t74 = extractvalue { i64, ptr } %t73, 1
  %t75 = call ptr @__olang_region_or(ptr %t74, ptr null)
  %t76 = icmp ne ptr %t75, null
  %t77 = select i1 %t76, ptr %t75, ptr null
  call void @__olang_region_drop(ptr %t77)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l39
  br label %bb23
bb23:
  store i1 false, ptr %l6, !tbaa !21
  %t78 = load ptr, ptr %l4, !tbaa !29
  store ptr %t78, ptr %l41, !tbaa !29
  %t79 = ptrtoint ptr %v3 to i64
  store i64 %t79, ptr %l42, !tbaa !24
  %t80 = load i1, ptr @olang_2esole_2ecompiler_2flisting_3aRemark_2e0
  br i1 %t80, label %bb24, label %bb25
bb24:
  %t82 = call ptr @__olang_region_make(ptr %v3)
  %t83 = ptrtoint ptr %t82 to i64
  store i64 %t83, ptr %l42, !tbaa !24
  br label %bb25
bb25:
  %t84 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t84, ptr %l44, !tbaa !27
  %t85 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t88 = extractvalue { i64, ptr } %t85, 0
  store i64 %t88, ptr %l47, !tbaa !24
  %t89 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t90 = extractvalue { i64, ptr } %t89, 0
  store i64 %t90, ptr %l48, !tbaa !24
  %t91 = icmp sge i64 5, 0
  br i1 %t91, label %bb26, label %bb27
bb26:
  %t93 = load i64, ptr %l47, !tbaa !24
  %t94 = icmp sle i64 5, %t93
  br i1 %t94, label %bb28, label %bb29
bb27:
  call void @__olang_check_failed(ptr @olang_loc_1658fd7d2958cee1_67b9b3ad391c8d45)
  unreachable
bb28:
  %t96 = load i64, ptr %l47, !tbaa !24
  %t97 = load i64, ptr %l48, !tbaa !24
  %t98 = icmp sle i64 %t96, %t97
  br i1 %t98, label %bb30, label %bb31
bb29:
  call void @__olang_check_failed(ptr @olang_loc_1658fd7d2958cee1_67b9b3ad391c8d45)
  unreachable
bb30:
  %t100 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t101 = load ptr, ptr %t100, !tbaa !27
  %t102 = load i64, ptr %l47, !tbaa !24
  %t103 = getelementptr i8, ptr %t101, i64 5
  %t104 = sub i64 %t102, 5
  %t105 = insertvalue { i64, ptr } undef, i64 %t104, 0
  %t106 = insertvalue { i64, ptr } %t105, ptr %t103, 1
  %t107 = load i64, ptr %l42
  %t108 = inttoptr i64 %t107 to ptr
  %t110 = call { i64, ptr } @compiler_2flisting_2ekindWord(ptr %v0, ptr %t108, { i64, ptr } %t106)
  store { i64, ptr } %t110, ptr %l53
  br label %bb32
bb31:
  call void @__olang_check_failed(ptr @olang_loc_1658fd7d2958cee1_67b9b3ad391c8d45)
  unreachable
bb32:
  %t111 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t112 = load i64, ptr %l42
  %t113 = inttoptr i64 %t112 to ptr
  %t114 = extractvalue { i64, ptr } %t111, 0
  %t115 = extractvalue { i64, ptr } %t111, 1
  %t116 = mul i64 %t114, 1
  %t117 = call ptr @__olang_scope_alloc(ptr %t113, i64 %t116)
  call void @llvm.memcpy.p0.p0.i64(ptr %t117, ptr %t115, i64 %t116, i1 false)
  %t118 = insertvalue { i64, ptr } undef, i64 %t114, 0
  %t119 = insertvalue { i64, ptr } %t118, ptr %t117, 1
  %t120 = load ptr, ptr %l41, !tbaa !29
  %t121 = getelementptr %"compiler/listing:Remark", ptr %t120, i32 0, i32 0
  %t122 = load { i64, ptr }, ptr %t121, !tbaa !27
  store { i64, ptr } %t122, ptr %l55, !tbaa !27
  %t124 = load ptr, ptr %l41, !tbaa !29
  %t125 = getelementptr %"compiler/listing:Remark", ptr %t124, i32 0, i32 0
  store { i64, ptr } %t119, ptr %t125, !tbaa !27
  %t126 = load i1, ptr @olang_2esole_2ecompiler_2flisting_3aRemark_2e0
  br i1 %t126, label %bb33, label %bb34
bb33:
  %t128 = load { i64, ptr }, ptr %l55
  %t129 = extractvalue { i64, ptr } %t128, 1
  call void @__olang_region_release(ptr %t129)
  store { i64, ptr } zeroinitializer, ptr %l55
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s2)
  br label %bb132
bb35:
  %t130 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t132 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t130, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d88, i32 0, i32 1) })
  store i1 %t132, ptr %l58
  br label %bb36
bb36:
  %t133 = load i1, ptr %l58, !tbaa !21
  br i1 %t133, label %bb37, label %bb38
bb37:
  store %olang.scope zeroinitializer, ptr %s4
  %t134 = load ptr, ptr %l4, !tbaa !29
  store ptr %t134, ptr %l59, !tbaa !29
  %t136 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2eToArr_H8081e04b38a8da5362a19182ff2ab7d7(ptr %s0, ptr %s4, ptr %l5)
  store { i64, ptr } %t136, ptr %l61
  br label %bb39
bb38:
  br label %bb60
bb39:
  %t137 = load { i64, ptr }, ptr %l61, !tbaa !27
  store { i64, ptr } %t137, ptr %l62, !tbaa !27
  %t138 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t139 = extractvalue { i64, ptr } %t138, 0
  store i64 %t139, ptr %l63, !tbaa !24
  %t140 = load i64, ptr %l63, !tbaa !24
  %t141 = mul i64 %t140, 1
  %t142 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t141)
  %t143 = insertvalue { i64, ptr } undef, i64 %t140, 0
  %t144 = insertvalue { i64, ptr } %t143, ptr %t142, 1
  store { i64, ptr } %t144, ptr %l64, !tbaa !27
  %t145 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t146 = load ptr, ptr %t145, !tbaa !27
  %t147 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t148 = load ptr, ptr %t147, !tbaa !27
  %t149 = load i64, ptr %l63, !tbaa !24
  %t150 = mul i64 %t149, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t146, ptr %t148, i64 %t150, i1 false)
  %t151 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t154 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v3, ptr %v3, { i64, ptr } %t151)
  store { i64, ptr } %t154, ptr %l67
  br label %bb40
bb40:
  %t155 = load ptr, ptr %l59, !tbaa !29
  %t156 = getelementptr %"compiler/listing:Remark", ptr %t155, i32 0, i32 7
  %t157 = load { i64, ptr }, ptr %t156, !tbaa !27
  store { i64, ptr } %t157, ptr %l68, !tbaa !27
  %t158 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t159 = load ptr, ptr %l59, !tbaa !29
  %t160 = getelementptr %"compiler/listing:Remark", ptr %t159, i32 0, i32 7
  store { i64, ptr } %t158, ptr %t160, !tbaa !27
  %t161 = load i1, ptr @olang_2esole_2ecompiler_2flisting_3aRemark_2e7
  br i1 %t161, label %bb41, label %bb42
bb41:
  %t163 = load { i64, ptr }, ptr %l68
  %t164 = extractvalue { i64, ptr } %t163, 1
  call void @__olang_region_release(ptr %t164)
  store { i64, ptr } zeroinitializer, ptr %l68
  br label %bb42
bb42:
  %t165 = load ptr, ptr %l4, !tbaa !29
  %t167 = getelementptr %"compiler/listing:Remark", ptr %t165, i32 0, i32 5
  %t168 = load { i64, ptr }, ptr %t167, !tbaa !27
  %t169 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t172 = call i1 @compiler_2flisting_2eofAny(ptr %v3, ptr %v1, { i64, ptr } %t168, { i64, ptr } %t169)
  store i1 %t172, ptr %l73
  br label %bb43
bb43:
  %t173 = load i1, ptr %l73, !tbaa !21
  br i1 %t173, label %bb44, label %bb45
bb44:
  store i1 true, ptr %l74, !tbaa !21
  br label %bb55
bb45:
  %t174 = load ptr, ptr %l4, !tbaa !29
  %t176 = getelementptr %"compiler/listing:Remark", ptr %t174, i32 0, i32 6
  %t177 = load { i64, ptr }, ptr %t176, !tbaa !27
  %t178 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t181 = call i1 @compiler_2flisting_2eofAny(ptr %v3, ptr %v1, { i64, ptr } %t177, { i64, ptr } %t178)
  store i1 %t181, ptr %l78
  br label %bb46
bb46:
  %t182 = load i1, ptr %l78, !tbaa !21
  br i1 %t182, label %bb47, label %bb48
bb47:
  %t183 = load ptr, ptr %l4, !tbaa !29
  %t185 = getelementptr %"compiler/listing:Remark", ptr %t183, i32 0, i32 0
  %t186 = load { i64, ptr }, ptr %t185, !tbaa !27
  %t188 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v3, ptr %s4, { i64, ptr } %t186, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d89, i32 0, i32 1) })
  store i1 %t188, ptr %l82
  br label %bb49
bb48:
  store i1 false, ptr %l79, !tbaa !21
  br label %bb50
bb49:
  %t189 = load i1, ptr %l82, !tbaa !21
  store i1 %t189, ptr %l79, !tbaa !21
  br label %bb50
bb50:
  %t190 = load i1, ptr %l79, !tbaa !21
  br i1 %t190, label %bb51, label %bb52
bb51:
  %t191 = load ptr, ptr %l4, !tbaa !29
  %t193 = getelementptr %"compiler/listing:Remark", ptr %t191, i32 0, i32 1
  %t194 = load { i64, ptr }, ptr %t193, !tbaa !27
  %t196 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v3, ptr %s4, { i64, ptr } %t194, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d90, i32 0, i32 1) })
  store i1 %t196, ptr %l86
  br label %bb53
bb52:
  store i1 false, ptr %l83, !tbaa !21
  br label %bb54
bb53:
  %t197 = load i1, ptr %l86, !tbaa !21
  store i1 %t197, ptr %l83, !tbaa !21
  br label %bb54
bb54:
  %t198 = load i1, ptr %l83, !tbaa !21
  store i1 %t198, ptr %l74, !tbaa !21
  br label %bb55
bb55:
  %t199 = load i1, ptr %l74, !tbaa !21
  br i1 %t199, label %bb56, label %bb57
bb56:
  %t201 = load ptr, ptr %l4, !tbaa !29
  %t203 = load %"compiler/listing:Remark", ptr %t201
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flisting_3aRemark_3e_2ePush_3ccompiler_2flisting_3aRemark_3e(ptr %v3, ptr %v3, ptr %a3, %"compiler/listing:Remark" %t203)
  br label %bb58
bb57:
  br label %bb59
bb58:
  br label %bb59
bb59:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s2)
  br label %bb132
bb60:
  %t206 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t208 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s2, { i64, ptr } %t206, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d91, i32 0, i32 1) })
  store i1 %t208, ptr %l91
  br label %bb61
bb61:
  %t209 = load i1, ptr %l91, !tbaa !21
  br i1 %t209, label %bb62, label %bb63
bb62:
  %t210 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t212 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s2, { i64, ptr } %t210, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d92, i32 0, i32 1) })
  store i1 %t212, ptr %l94
  br label %bb64
bb63:
  store i1 false, ptr %l92, !tbaa !21
  br label %bb65
bb64:
  %t213 = load i1, ptr %l94, !tbaa !21
  %t214 = xor i1 %t213, true
  store i1 %t214, ptr %l92, !tbaa !21
  br label %bb65
bb65:
  %t216 = load i1, ptr %l92, !tbaa !21
  br i1 %t216, label %bb66, label %bb67
bb66:
  call void @__olang_scope_close(ptr %s2)
  br label %bb132
bb67:
  br label %bb68
bb68:
  %t217 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t219 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s2, { i64, ptr } %t217, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d93, i32 0, i32 1) })
  store i1 %t219, ptr %l97
  br label %bb69
bb69:
  %t220 = load i1, ptr %l97, !tbaa !21
  %t221 = xor i1 %t220, true
  br i1 %t221, label %bb70, label %bb71
bb70:
  %t223 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t224 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2flisting_2etopLevel(ptr %v0, ptr %v3, { i64, ptr } %t223, ptr %t224)
  br label %bb72
bb71:
  br label %bb73
bb72:
  call void @__olang_scope_close(ptr %s2)
  br label %bb132
bb73:
  %t227 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t227, ptr %l101, !tbaa !27
  %t228 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t231 = extractvalue { i64, ptr } %t228, 0
  store i64 %t231, ptr %l104, !tbaa !24
  %t232 = load { i64, ptr }, ptr %l101, !tbaa !27
  %t233 = extractvalue { i64, ptr } %t232, 0
  store i64 %t233, ptr %l105, !tbaa !24
  %t234 = icmp sge i64 4, 0
  br i1 %t234, label %bb74, label %bb75
bb74:
  %t236 = load i64, ptr %l104, !tbaa !24
  %t237 = icmp sle i64 4, %t236
  br i1 %t237, label %bb76, label %bb77
bb75:
  call void @__olang_check_failed(ptr @olang_loc_679d421df08030f4_bd0b7978ad4d2168)
  unreachable
bb76:
  %t239 = load i64, ptr %l104, !tbaa !24
  %t240 = load i64, ptr %l105, !tbaa !24
  %t241 = icmp sle i64 %t239, %t240
  br i1 %t241, label %bb78, label %bb79
bb77:
  call void @__olang_check_failed(ptr @olang_loc_679d421df08030f4_bd0b7978ad4d2168)
  unreachable
bb78:
  %t243 = getelementptr { i64, ptr }, ptr %l101, i32 0, i32 1
  %t244 = load ptr, ptr %t243, !tbaa !27
  %t245 = load i64, ptr %l104, !tbaa !24
  %t246 = getelementptr i8, ptr %t244, i64 4
  %t247 = sub i64 %t245, 4
  %t248 = insertvalue { i64, ptr } undef, i64 %t247, 0
  %t249 = insertvalue { i64, ptr } %t248, ptr %t246, 1
  %t251 = call { { i64, ptr }, { i64, ptr } } @compiler_2flisting_2ekeyValue(ptr %v0, ptr %s2, { i64, ptr } %t249)
  store { { i64, ptr }, { i64, ptr } } %t251, ptr %l110
  br label %bb80
bb79:
  call void @__olang_check_failed(ptr @olang_loc_679d421df08030f4_bd0b7978ad4d2168)
  unreachable
bb80:
  %t252 = load { { i64, ptr }, { i64, ptr } }, ptr %l110
  store { { i64, ptr }, { i64, ptr } } %t252, ptr %l9
  %t253 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l9, i32 0, i32 0
  %t254 = load { i64, ptr }, ptr %t253, !tbaa !27
  store { i64, ptr } %t254, ptr %l10, !tbaa !27
  %t256 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l9, i32 0, i32 1
  %t257 = load { i64, ptr }, ptr %t256, !tbaa !27
  store { i64, ptr } %t257, ptr %l112, !tbaa !27
  %t258 = load { i64, ptr }, ptr %l112, !tbaa !27
  %t259 = extractvalue { i64, ptr } %t258, 0
  store i64 %t259, ptr %l113, !tbaa !24
  %t260 = load i64, ptr %l113, !tbaa !24
  %t261 = mul i64 %t260, 1
  %t262 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t261)
  %t263 = insertvalue { i64, ptr } undef, i64 %t260, 0
  %t264 = insertvalue { i64, ptr } %t263, ptr %t262, 1
  store { i64, ptr } %t264, ptr %l114, !tbaa !27
  %t265 = getelementptr { i64, ptr }, ptr %l114, i32 0, i32 1
  %t266 = load ptr, ptr %t265, !tbaa !27
  %t267 = getelementptr { i64, ptr }, ptr %l112, i32 0, i32 1
  %t268 = load ptr, ptr %t267, !tbaa !27
  %t269 = load i64, ptr %l113, !tbaa !24
  %t270 = mul i64 %t269, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t266, ptr %t268, i64 %t270, i1 false)
  %t271 = load { i64, ptr }, ptr %l114, !tbaa !27
  store { i64, ptr } %t271, ptr %l11, !tbaa !27
  %t272 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t274 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t272, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d94, i32 0, i32 1) })
  store i1 %t274, ptr %l116
  br label %bb81
bb81:
  %t275 = load i1, ptr %l116, !tbaa !21
  br i1 %t275, label %bb82, label %bb83
bb82:
  %t276 = load ptr, ptr %l4, !tbaa !29
  store ptr %t276, ptr %l117, !tbaa !29
  %t277 = ptrtoint ptr %v3 to i64
  store i64 %t277, ptr %l118, !tbaa !24
  %t278 = load i1, ptr @olang_2esole_2ecompiler_2flisting_3aRemark_2e6
  br i1 %t278, label %bb84, label %bb85
bb83:
  br label %bb89
bb84:
  %t280 = call ptr @__olang_region_make(ptr %v3)
  %t281 = ptrtoint ptr %t280 to i64
  store i64 %t281, ptr %l118, !tbaa !24
  br label %bb85
bb85:
  %t282 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t283 = load i64, ptr %l118
  %t284 = inttoptr i64 %t283 to ptr
  %t286 = call { i64, ptr } @compiler_2flisting_2eunquote(ptr %s2, ptr %t284, { i64, ptr } %t282)
  store { i64, ptr } %t286, ptr %l121
  br label %bb86
bb86:
  %t287 = load { i64, ptr }, ptr %l121, !tbaa !27
  %t288 = load i64, ptr %l118
  %t289 = inttoptr i64 %t288 to ptr
  %t290 = extractvalue { i64, ptr } %t287, 0
  %t291 = extractvalue { i64, ptr } %t287, 1
  %t292 = mul i64 %t290, 1
  %t293 = call ptr @__olang_scope_alloc(ptr %t289, i64 %t292)
  call void @llvm.memcpy.p0.p0.i64(ptr %t293, ptr %t291, i64 %t292, i1 false)
  %t294 = insertvalue { i64, ptr } undef, i64 %t290, 0
  %t295 = insertvalue { i64, ptr } %t294, ptr %t293, 1
  %t296 = load ptr, ptr %l117, !tbaa !29
  %t297 = getelementptr %"compiler/listing:Remark", ptr %t296, i32 0, i32 6
  %t298 = load { i64, ptr }, ptr %t297, !tbaa !27
  store { i64, ptr } %t298, ptr %l123, !tbaa !27
  %t300 = load ptr, ptr %l117, !tbaa !29
  %t301 = getelementptr %"compiler/listing:Remark", ptr %t300, i32 0, i32 6
  store { i64, ptr } %t295, ptr %t301, !tbaa !27
  %t302 = load i1, ptr @olang_2esole_2ecompiler_2flisting_3aRemark_2e6
  br i1 %t302, label %bb87, label %bb88
bb87:
  %t304 = load { i64, ptr }, ptr %l123
  %t305 = extractvalue { i64, ptr } %t304, 1
  call void @__olang_region_release(ptr %t305)
  store { i64, ptr } zeroinitializer, ptr %l123
  br label %bb88
bb88:
  br label %bb89
bb89:
  %t306 = load i1, ptr %l6, !tbaa !21
  br i1 %t306, label %bb90, label %bb91
bb90:
  store i1 true, ptr %l126, !tbaa !21
  br label %bb93
bb91:
  %t308 = load ptr, ptr %l4, !tbaa !29
  %t310 = getelementptr %"compiler/listing:Remark", ptr %t308, i32 0, i32 5
  %t311 = load { i64, ptr }, ptr %t310, !tbaa !27
  %t312 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t315 = call i1 @compiler_2flisting_2eofAny(ptr %v3, ptr %v1, { i64, ptr } %t311, { i64, ptr } %t312)
  store i1 %t315, ptr %l130
  br label %bb92
bb92:
  %t316 = load i1, ptr %l130, !tbaa !21
  %t317 = xor i1 %t316, true
  store i1 %t317, ptr %l126, !tbaa !21
  br label %bb93
bb93:
  %t319 = load i1, ptr %l126, !tbaa !21
  br i1 %t319, label %bb94, label %bb95
bb94:
  call void @__olang_scope_close(ptr %s2)
  br label %bb132
bb95:
  br label %bb96
bb96:
  %t320 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t322 = call { i64, ptr } @compiler_2flisting_2eunquote(ptr %s2, ptr %s2, { i64, ptr } %t320)
  store { i64, ptr } %t322, ptr %l133
  br label %bb97
bb97:
  %t323 = load { i64, ptr }, ptr %l133, !tbaa !27
  store { i64, ptr } %t323, ptr %l12, !tbaa !27
  %t324 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t326 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t324, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d95, i32 0, i32 1) })
  store i1 %t326, ptr %l135
  br label %bb98
bb98:
  %t327 = load i1, ptr %l135, !tbaa !21
  br i1 %t327, label %bb99, label %bb100
bb99:
  %t328 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t330 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t328, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d96, i32 0, i32 1) })
  store i1 %t330, ptr %l138
  br label %bb101
bb100:
  store i1 false, ptr %l136, !tbaa !21
  br label %bb102
bb101:
  %t331 = load i1, ptr %l138, !tbaa !21
  store i1 %t331, ptr %l136, !tbaa !21
  br label %bb102
bb102:
  %t332 = load i1, ptr %l136, !tbaa !21
  br i1 %t332, label %bb103, label %bb104
bb103:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb105
bb104:
  br label %bb105
bb105:
  %t333 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t335 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t333, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d97, i32 0, i32 1) })
  store i1 %t335, ptr %l140
  br label %bb106
bb106:
  %t336 = load i1, ptr %l140, !tbaa !21
  br i1 %t336, label %bb107, label %bb108
bb107:
  store i1 true, ptr %l141, !tbaa !21
  br label %bb110
bb108:
  %t337 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t339 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t337, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d98, i32 0, i32 1) })
  store i1 %t339, ptr %l143
  br label %bb109
bb109:
  %t340 = load i1, ptr %l143, !tbaa !21
  store i1 %t340, ptr %l141, !tbaa !21
  br label %bb110
bb110:
  %t341 = load i1, ptr %l141, !tbaa !21
  br i1 %t341, label %bb111, label %bb112
bb111:
  store i1 true, ptr %l144, !tbaa !21
  br label %bb114
bb112:
  %t342 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t344 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t342, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d99, i32 0, i32 1) })
  store i1 %t344, ptr %l146
  br label %bb113
bb113:
  %t345 = load i1, ptr %l146, !tbaa !21
  store i1 %t345, ptr %l144, !tbaa !21
  br label %bb114
bb114:
  %t346 = load i1, ptr %l144, !tbaa !21
  br i1 %t346, label %bb115, label %bb116
bb115:
  %t348 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t351 = call { i64, ptr } @compiler_2flisting_2ecompiler_2flisting_3aNamer_2eName(ptr %v2, ptr %s2, ptr %s2, ptr %a2, { i64, ptr } %t348)
  store { i64, ptr } %t351, ptr %l149
  br label %bb117
bb116:
  br label %bb121
bb117:
  %t352 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t353 = extractvalue { i64, ptr } %t352, 0
  %t354 = load { i64, ptr }, ptr %l149, !tbaa !27
  %t355 = extractvalue { i64, ptr } %t354, 0
  store i64 %t355, ptr %l151, !tbaa !24
  %t357 = load i64, ptr %l151, !tbaa !24
  %t358 = icmp eq i64 %t353, %t357
  br i1 %t358, label %bb118, label %bb119
bb118:
  %t360 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t361 = load ptr, ptr %t360, !tbaa !27
  %t362 = getelementptr { i64, ptr }, ptr %l149, i32 0, i32 1
  %t363 = load ptr, ptr %t362, !tbaa !27
  %t364 = load i64, ptr %l151, !tbaa !24
  %t365 = mul i64 %t364, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t361, ptr %t363, i64 %t365, i1 false)
  br label %bb120
bb119:
  %t366 = load { i64, ptr }, ptr %l149, !tbaa !27
  store { i64, ptr } %t366, ptr %l12, !tbaa !27
  br label %bb120
bb120:
  br label %bb121
bb121:
  %t367 = load i1, ptr %l6, !tbaa !21
  %t369 = xor i1 %t367, true
  br i1 %t369, label %bb122, label %bb123
bb122:
  %t371 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t371, ptr %l13, !tbaa !27
  store i64 0, ptr %l14, !tbaa !24
  %t373 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t375 = extractvalue { i64, ptr } %t373, 0
  store i64 %t375, ptr %l15, !tbaa !24
  br label %bb124
bb123:
  br label %bb131
bb124:
  %t377 = load i64, ptr %l14, !tbaa !24
  %t378 = load i64, ptr %l15, !tbaa !24
  %t381 = icmp slt i64 %t377, %t378
  %t383 = xor i1 %t381, true
  br i1 %t383, label %bb125, label %bb126
bb125:
  br label %bb130
bb126:
  br label %bb127
bb127:
  %t385 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t385, ptr %l162, !tbaa !27
  %t386 = load i64, ptr %l14, !tbaa !24
  %t388 = getelementptr { i64, ptr }, ptr %l162, i32 0, i32 1
  %t389 = load ptr, ptr %t388, !tbaa !27
  %t390 = getelementptr i8, ptr %t389, i64 %t386
  %t391 = load i8, ptr %t390, !tbaa !32
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2ePush_3cstd_2fprelude_2ftext_3aChar_3e(ptr %s0, ptr %l5, i8 %t391)
  br label %bb128
bb128:
  br label %bb129
bb129:
  %t396 = load i64, ptr %l14, !tbaa !24
  %t398 = add i64 %t396, 1
  store i64 %t398, ptr %l14, !tbaa !24
  br label %bb124
bb130:
  br label %bb131
bb131:
  call void @__olang_scope_close(ptr %s2)
  br label %bb132
bb132:
  br label %bb8
bb133:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flisting_2esay(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l2 = alloca i32
  %l4 = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call i32 @std_2fio_2ePrint(ptr %v0, { i64, ptr } %a0)
  store i32 %t3, ptr %l2
  %t4 = icmp ne i32 %t3, 0
  br i1 %t4, label %bb2, label %ok.5, !prof !99
ok.5:
  br label %bb1
bb1:
  br label %bb6
bb2:
  %t6 = load i32, ptr %l2, !tbaa !23
  %t7 = ashr i32 %t6, 16
  %t9 = icmp eq i32 %t7, 1
  store i1 %t9, ptr %l4, !tbaa !21
  %t10 = load i32, ptr %l2, !tbaa !23
  %t11 = ashr i32 %t10, 16
  %t13 = icmp eq i32 %t11, 1
  br i1 %t13, label %bb3, label %bb4
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

define dso_local void @compiler_2flisting_2etopLevel(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca { { i64, ptr }, { i64, ptr } }
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l6 = alloca { { i64, ptr }, { i64, ptr } }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l12 = alloca i1
  %l13 = alloca ptr
  %l14 = alloca i64
  %l17 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l22 = alloca i1
  %l23 = alloca ptr
  %l24 = alloca i64
  %l27 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %l32 = alloca i1
  %l33 = alloca ptr
  %l34 = alloca i64
  %l37 = alloca { i64, ptr }
  %l39 = alloca { i64, ptr }
  %l42 = alloca i1
  %l43 = alloca ptr
  %l44 = alloca i64
  %l47 = alloca { i64, ptr }
  %l49 = alloca { i64, ptr }
  %l51 = alloca ptr
  %l52 = alloca i64
  %l54 = alloca { i64, ptr }
  %l55 = alloca { i64, ptr }
  %l56 = alloca i64
  %l57 = alloca i32
  %l58 = alloca i64
  %l59 = alloca i32
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call { { i64, ptr }, { i64, ptr } } @compiler_2flisting_2ekeyValue(ptr %v0, ptr %s0, { i64, ptr } %a0)
  store { { i64, ptr }, { i64, ptr } } %t3, ptr %l6
  br label %bb1
bb1:
  %t4 = load { { i64, ptr }, { i64, ptr } }, ptr %l6
  store { { i64, ptr }, { i64, ptr } } %t4, ptr %l2
  %t5 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l2, i32 0, i32 0
  %t6 = load { i64, ptr }, ptr %t5, !tbaa !27
  store { i64, ptr } %t6, ptr %l3, !tbaa !27
  %t8 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l2, i32 0, i32 1
  %t9 = load { i64, ptr }, ptr %t8, !tbaa !27
  store { i64, ptr } %t9, ptr %l8, !tbaa !27
  %t10 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t10, 0
  store i64 %t11, ptr %l9, !tbaa !24
  %t12 = load i64, ptr %l9, !tbaa !24
  %t13 = mul i64 %t12, 1
  %t14 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t13)
  %t15 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t16 = insertvalue { i64, ptr } %t15, ptr %t14, 1
  store { i64, ptr } %t16, ptr %l10, !tbaa !27
  %t17 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !27
  %t19 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !27
  %t21 = load i64, ptr %l9, !tbaa !24
  %t22 = mul i64 %t21, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t18, ptr %t20, i64 %t22, i1 false)
  %t23 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t23, ptr %l4, !tbaa !27
  %t24 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t26 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t24, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d100, i32 0, i32 1) })
  store i1 %t26, ptr %l12
  br label %bb2
bb2:
  %t27 = load i1, ptr %l12, !tbaa !21
  br i1 %t27, label %bb3, label %bb4
bb3:
  %t28 = load ptr, ptr %l1, !tbaa !29
  store ptr %t28, ptr %l13, !tbaa !29
  %t29 = ptrtoint ptr %v1 to i64
  store i64 %t29, ptr %l14, !tbaa !24
  %t30 = load i1, ptr @olang_2esole_2ecompiler_2flisting_3aRemark_2e1
  br i1 %t30, label %bb5, label %bb6
bb4:
  br label %bb10
bb5:
  %t32 = call ptr @__olang_region_make(ptr %v1)
  %t33 = ptrtoint ptr %t32 to i64
  store i64 %t33, ptr %l14, !tbaa !24
  br label %bb6
bb6:
  %t34 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t35 = load i64, ptr %l14
  %t36 = inttoptr i64 %t35 to ptr
  %t38 = call { i64, ptr } @compiler_2flisting_2eunquote(ptr %s0, ptr %t36, { i64, ptr } %t34)
  store { i64, ptr } %t38, ptr %l17
  br label %bb7
bb7:
  %t39 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t40 = load i64, ptr %l14
  %t41 = inttoptr i64 %t40 to ptr
  %t42 = extractvalue { i64, ptr } %t39, 0
  %t43 = extractvalue { i64, ptr } %t39, 1
  %t44 = mul i64 %t42, 1
  %t45 = call ptr @__olang_scope_alloc(ptr %t41, i64 %t44)
  call void @llvm.memcpy.p0.p0.i64(ptr %t45, ptr %t43, i64 %t44, i1 false)
  %t46 = insertvalue { i64, ptr } undef, i64 %t42, 0
  %t47 = insertvalue { i64, ptr } %t46, ptr %t45, 1
  %t48 = load ptr, ptr %l13, !tbaa !29
  %t49 = getelementptr %"compiler/listing:Remark", ptr %t48, i32 0, i32 1
  %t50 = load { i64, ptr }, ptr %t49, !tbaa !27
  store { i64, ptr } %t50, ptr %l19, !tbaa !27
  %t52 = load ptr, ptr %l13, !tbaa !29
  %t53 = getelementptr %"compiler/listing:Remark", ptr %t52, i32 0, i32 1
  store { i64, ptr } %t47, ptr %t53, !tbaa !27
  %t54 = load i1, ptr @olang_2esole_2ecompiler_2flisting_3aRemark_2e1
  br i1 %t54, label %bb8, label %bb9
bb8:
  %t56 = load { i64, ptr }, ptr %l19
  %t57 = extractvalue { i64, ptr } %t56, 1
  call void @__olang_region_release(ptr %t57)
  store { i64, ptr } zeroinitializer, ptr %l19
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t58 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t60 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t58, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d101, i32 0, i32 1) })
  store i1 %t60, ptr %l22
  br label %bb11
bb11:
  %t61 = load i1, ptr %l22, !tbaa !21
  br i1 %t61, label %bb12, label %bb13
bb12:
  %t62 = load ptr, ptr %l1, !tbaa !29
  store ptr %t62, ptr %l23, !tbaa !29
  %t63 = ptrtoint ptr %v1 to i64
  store i64 %t63, ptr %l24, !tbaa !24
  %t64 = load i1, ptr @olang_2esole_2ecompiler_2flisting_3aRemark_2e2
  br i1 %t64, label %bb14, label %bb15
bb13:
  br label %bb19
bb14:
  %t66 = call ptr @__olang_region_make(ptr %v1)
  %t67 = ptrtoint ptr %t66 to i64
  store i64 %t67, ptr %l24, !tbaa !24
  br label %bb15
bb15:
  %t68 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t69 = load i64, ptr %l24
  %t70 = inttoptr i64 %t69 to ptr
  %t72 = call { i64, ptr } @compiler_2flisting_2eunquote(ptr %s0, ptr %t70, { i64, ptr } %t68)
  store { i64, ptr } %t72, ptr %l27
  br label %bb16
bb16:
  %t73 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t74 = load i64, ptr %l24
  %t75 = inttoptr i64 %t74 to ptr
  %t76 = extractvalue { i64, ptr } %t73, 0
  %t77 = extractvalue { i64, ptr } %t73, 1
  %t78 = mul i64 %t76, 1
  %t79 = call ptr @__olang_scope_alloc(ptr %t75, i64 %t78)
  call void @llvm.memcpy.p0.p0.i64(ptr %t79, ptr %t77, i64 %t78, i1 false)
  %t80 = insertvalue { i64, ptr } undef, i64 %t76, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t79, 1
  %t82 = load ptr, ptr %l23, !tbaa !29
  %t83 = getelementptr %"compiler/listing:Remark", ptr %t82, i32 0, i32 2
  %t84 = load { i64, ptr }, ptr %t83, !tbaa !27
  store { i64, ptr } %t84, ptr %l29, !tbaa !27
  %t86 = load ptr, ptr %l23, !tbaa !29
  %t87 = getelementptr %"compiler/listing:Remark", ptr %t86, i32 0, i32 2
  store { i64, ptr } %t81, ptr %t87, !tbaa !27
  %t88 = load i1, ptr @olang_2esole_2ecompiler_2flisting_3aRemark_2e2
  br i1 %t88, label %bb17, label %bb18
bb17:
  %t90 = load { i64, ptr }, ptr %l29
  %t91 = extractvalue { i64, ptr } %t90, 1
  call void @__olang_region_release(ptr %t91)
  store { i64, ptr } zeroinitializer, ptr %l29
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t92 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t94 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t92, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d102, i32 0, i32 1) })
  store i1 %t94, ptr %l32
  br label %bb20
bb20:
  %t95 = load i1, ptr %l32, !tbaa !21
  br i1 %t95, label %bb21, label %bb22
bb21:
  %t96 = load ptr, ptr %l1, !tbaa !29
  store ptr %t96, ptr %l33, !tbaa !29
  %t97 = ptrtoint ptr %v1 to i64
  store i64 %t97, ptr %l34, !tbaa !24
  %t98 = load i1, ptr @olang_2esole_2ecompiler_2flisting_3aRemark_2e5
  br i1 %t98, label %bb23, label %bb24
bb22:
  br label %bb28
bb23:
  %t100 = call ptr @__olang_region_make(ptr %v1)
  %t101 = ptrtoint ptr %t100 to i64
  store i64 %t101, ptr %l34, !tbaa !24
  br label %bb24
bb24:
  %t102 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t103 = load i64, ptr %l34
  %t104 = inttoptr i64 %t103 to ptr
  %t106 = call { i64, ptr } @compiler_2flisting_2eunquote(ptr %s0, ptr %t104, { i64, ptr } %t102)
  store { i64, ptr } %t106, ptr %l37
  br label %bb25
bb25:
  %t107 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t108 = load i64, ptr %l34
  %t109 = inttoptr i64 %t108 to ptr
  %t110 = extractvalue { i64, ptr } %t107, 0
  %t111 = extractvalue { i64, ptr } %t107, 1
  %t112 = mul i64 %t110, 1
  %t113 = call ptr @__olang_scope_alloc(ptr %t109, i64 %t112)
  call void @llvm.memcpy.p0.p0.i64(ptr %t113, ptr %t111, i64 %t112, i1 false)
  %t114 = insertvalue { i64, ptr } undef, i64 %t110, 0
  %t115 = insertvalue { i64, ptr } %t114, ptr %t113, 1
  %t116 = load ptr, ptr %l33, !tbaa !29
  %t117 = getelementptr %"compiler/listing:Remark", ptr %t116, i32 0, i32 5
  %t118 = load { i64, ptr }, ptr %t117, !tbaa !27
  store { i64, ptr } %t118, ptr %l39, !tbaa !27
  %t120 = load ptr, ptr %l33, !tbaa !29
  %t121 = getelementptr %"compiler/listing:Remark", ptr %t120, i32 0, i32 5
  store { i64, ptr } %t115, ptr %t121, !tbaa !27
  %t122 = load i1, ptr @olang_2esole_2ecompiler_2flisting_3aRemark_2e5
  br i1 %t122, label %bb26, label %bb27
bb26:
  %t124 = load { i64, ptr }, ptr %l39
  %t125 = extractvalue { i64, ptr } %t124, 1
  call void @__olang_region_release(ptr %t125)
  store { i64, ptr } zeroinitializer, ptr %l39
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t126 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t128 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t126, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d103, i32 0, i32 1) })
  store i1 %t128, ptr %l42
  br label %bb29
bb29:
  %t129 = load i1, ptr %l42, !tbaa !21
  br i1 %t129, label %bb30, label %bb31
bb30:
  store %olang.scope zeroinitializer, ptr %s4
  %t130 = load ptr, ptr %l1, !tbaa !29
  store ptr %t130, ptr %l43, !tbaa !29
  %t131 = ptrtoint ptr %v1 to i64
  store i64 %t131, ptr %l44, !tbaa !24
  %t132 = load i1, ptr @olang_2esole_2ecompiler_2flisting_3aRemark_2e3
  br i1 %t132, label %bb32, label %bb33
bb31:
  br label %bb44
bb32:
  %t134 = call ptr @__olang_region_make(ptr %v1)
  %t135 = ptrtoint ptr %t134 to i64
  store i64 %t135, ptr %l44, !tbaa !24
  br label %bb33
bb33:
  %t136 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t137 = load i64, ptr %l44
  %t138 = inttoptr i64 %t137 to ptr
  %t140 = call { i64, ptr } @compiler_2flisting_2efield(ptr %s0, ptr %v1, ptr %t138, { i64, ptr } %t136, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d104, i32 0, i32 1) })
  store { i64, ptr } %t140, ptr %l47
  br label %bb34
bb34:
  %t141 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t142 = load i64, ptr %l44
  %t143 = inttoptr i64 %t142 to ptr
  %t144 = extractvalue { i64, ptr } %t141, 0
  %t145 = extractvalue { i64, ptr } %t141, 1
  %t146 = mul i64 %t144, 1
  %t147 = call ptr @__olang_scope_alloc(ptr %t143, i64 %t146)
  call void @llvm.memcpy.p0.p0.i64(ptr %t147, ptr %t145, i64 %t146, i1 false)
  %t148 = insertvalue { i64, ptr } undef, i64 %t144, 0
  %t149 = insertvalue { i64, ptr } %t148, ptr %t147, 1
  %t150 = load ptr, ptr %l43, !tbaa !29
  %t151 = getelementptr %"compiler/listing:Remark", ptr %t150, i32 0, i32 3
  %t152 = load { i64, ptr }, ptr %t151, !tbaa !27
  store { i64, ptr } %t152, ptr %l49, !tbaa !27
  %t154 = load ptr, ptr %l43, !tbaa !29
  %t155 = getelementptr %"compiler/listing:Remark", ptr %t154, i32 0, i32 3
  store { i64, ptr } %t149, ptr %t155, !tbaa !27
  %t156 = load i1, ptr @olang_2esole_2ecompiler_2flisting_3aRemark_2e3
  br i1 %t156, label %bb35, label %bb36
bb35:
  %t158 = load { i64, ptr }, ptr %l49
  %t159 = extractvalue { i64, ptr } %t158, 1
  call void @__olang_region_release(ptr %t159)
  store { i64, ptr } zeroinitializer, ptr %l49
  br label %bb36
bb36:
  %t160 = load ptr, ptr %l1, !tbaa !29
  store ptr %t160, ptr %l51, !tbaa !29
  %t161 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t163 = call { i64, ptr } @compiler_2flisting_2efield(ptr %s0, ptr %s4, ptr %s4, { i64, ptr } %t161, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d105, i32 0, i32 1) })
  store { i64, ptr } %t163, ptr %l54
  br label %bb37
bb37:
  %t164 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t165 = extractvalue { i64, ptr } %t164, 0
  %t166 = extractvalue { i64, ptr } %t164, 1
  %t167 = mul i64 %t165, 1
  %t168 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t167)
  call void @llvm.memcpy.p0.p0.i64(ptr %t168, ptr %t166, i64 %t167, i1 false)
  %t169 = insertvalue { i64, ptr } undef, i64 %t165, 0
  %t170 = insertvalue { i64, ptr } %t169, ptr %t168, 1
  store { i64, ptr } %t170, ptr %l55, !tbaa !27
  %t171 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s4, i64 10)
  %t172 = extractvalue { i32, i64 } %t171, 1
  %t173 = extractvalue { i32, i64 } %t171, 0
  store i32 %t173, ptr %l57
  %t174 = icmp ne i32 %t173, 0
  br i1 %t174, label %bb39, label %ok.175, !prof !99
ok.175:
  store i64 %t172, ptr %l56
  br label %bb38
bb38:
  %t176 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t177 = load i64, ptr %l56, !tbaa !24
  %t178 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %s4, { i64, ptr } %t176, i64 %t177)
  %t179 = extractvalue { i32, i64 } %t178, 1
  %t180 = extractvalue { i32, i64 } %t178, 0
  store i32 %t180, ptr %l59
  %t181 = icmp ne i32 %t180, 0
  br i1 %t181, label %bb42, label %ok.182, !prof !99
ok.182:
  store i64 %t179, ptr %l58
  br label %bb41
bb39:
  br label %bb40
bb40:
  store i64 0, ptr %l52, !tbaa !24
  br label %bb43
bb41:
  %t183 = load i64, ptr %l58, !tbaa !24
  store i64 %t183, ptr %l52, !tbaa !24
  br label %bb43
bb42:
  br label %bb40
bb43:
  %t184 = load i64, ptr %l52, !tbaa !24
  %t185 = load ptr, ptr %l51, !tbaa !29
  %t186 = getelementptr %"compiler/listing:Remark", ptr %t185, i32 0, i32 4
  store i64 %t184, ptr %t186, !tbaa !24
  call void @__olang_scope_close(ptr %s4)
  br label %bb44
bb44:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2flisting_2etypeDelim(i8 %a0) #0 {
entry:
  %l0 = alloca i8
  %l3 = alloca i1
  %l6 = alloca i1
  %l9 = alloca i1
  %l12 = alloca i1
  %l15 = alloca i1
  %l18 = alloca i1
  %rv = alloca i1
  store i8 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i8, ptr %l0, !tbaa !22
  %t3 = icmp eq i8 %t1, 60
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb3
bb2:
  %t5 = load i8, ptr %l0, !tbaa !22
  %t7 = icmp eq i8 %t5, 44
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
  %t12 = icmp eq i8 %t10, 32
  store i1 %t12, ptr %l6, !tbaa !21
  br label %bb6
bb6:
  %t14 = load i1, ptr %l6, !tbaa !21
  br i1 %t14, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb9
bb8:
  %t15 = load i8, ptr %l0, !tbaa !22
  %t17 = icmp eq i8 %t15, 40
  store i1 %t17, ptr %l9, !tbaa !21
  br label %bb9
bb9:
  %t19 = load i1, ptr %l9, !tbaa !21
  br i1 %t19, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb12
bb11:
  %t20 = load i8, ptr %l0, !tbaa !22
  %t22 = icmp eq i8 %t20, 91
  store i1 %t22, ptr %l12, !tbaa !21
  br label %bb12
bb12:
  %t24 = load i1, ptr %l12, !tbaa !21
  br i1 %t24, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb15
bb14:
  %t25 = load i8, ptr %l0, !tbaa !22
  %t27 = icmp eq i8 %t25, 38
  store i1 %t27, ptr %l15, !tbaa !21
  br label %bb15
bb15:
  %t29 = load i1, ptr %l15, !tbaa !21
  br i1 %t29, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb18
bb17:
  %t30 = load i8, ptr %l0, !tbaa !22
  %t32 = icmp eq i8 %t30, 63
  store i1 %t32, ptr %l18, !tbaa !21
  br label %bb18
bb18:
  %t34 = load i1, ptr %l18, !tbaa !21
  store i1 %t34, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2flisting_2eunquote(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca i64
  %l4 = alloca i8
  %l5 = alloca i8
  %l7 = alloca { i64, ptr }
  %l11 = alloca i1
  %l12 = alloca { i64, ptr }
  %l15 = alloca i1
  %l16 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l25 = alloca i64
  %l26 = alloca i64
  %l32 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l35 = alloca i64
  %l36 = alloca { i64, ptr }
  %l41 = alloca i1
  %l42 = alloca { i64, ptr }
  %l45 = alloca i1
  %l46 = alloca { i64, ptr }
  %l54 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l61 = alloca { i64, ptr }
  %l66 = alloca i1
  %l75 = alloca { i64, ptr }
  %l78 = alloca ptr
  %l81 = alloca i8
  %l84 = alloca i8
  %l91 = alloca { i64, ptr }
  %l92 = alloca { i64, ptr }
  %l93 = alloca i64
  %l94 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v0, ptr %v0, { i64, ptr } %a0)
  store { i64, ptr } %t3, ptr %l7
  br label %bb1
bb1:
  %t4 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t4, ptr %l1, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  %t9 = icmp sge i64 %t7, 2
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t11, ptr %l12, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr i8, ptr %t13, i64 0
  %t15 = load i8, ptr %t14, !tbaa !32
  %t17 = icmp eq i8 %t15, 39
  store i1 %t17, ptr %l11, !tbaa !21
  br label %bb4
bb3:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb4
bb4:
  %t19 = load i1, ptr %l11, !tbaa !21
  br i1 %t19, label %bb5, label %bb6
bb5:
  %t20 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t20, ptr %l16, !tbaa !27
  %t21 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t21, 0
  %t25 = sub i64 %t23, 1
  %t27 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = getelementptr i8, ptr %t28, i64 %t25
  %t30 = load i8, ptr %t29, !tbaa !32
  %t32 = icmp eq i8 %t30, 39
  store i1 %t32, ptr %l15, !tbaa !21
  br label %bb7
bb6:
  store i1 false, ptr %l15, !tbaa !21
  br label %bb7
bb7:
  %t34 = load i1, ptr %l15, !tbaa !21
  br i1 %t34, label %bb8, label %bb9
bb8:
  %t35 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t35, ptr %l22, !tbaa !27
  %t36 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t38 = extractvalue { i64, ptr } %t36, 0
  %t40 = sub i64 %t38, 1
  store i64 %t40, ptr %l25, !tbaa !24
  %t41 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t42 = extractvalue { i64, ptr } %t41, 0
  store i64 %t42, ptr %l26, !tbaa !24
  %t43 = icmp sge i64 1, 0
  br i1 %t43, label %bb10, label %bb11
bb9:
  br label %bb17
bb10:
  %t45 = load i64, ptr %l25, !tbaa !24
  %t46 = icmp sle i64 1, %t45
  br i1 %t46, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_99b6d5da9346cc11_b8cfea66ec2c3f15)
  unreachable
bb12:
  %t48 = load i64, ptr %l25, !tbaa !24
  %t49 = load i64, ptr %l26, !tbaa !24
  %t50 = icmp sle i64 %t48, %t49
  br i1 %t50, label %bb14, label %bb15
bb13:
  call void @__olang_check_failed(ptr @olang_loc_99b6d5da9346cc11_b8cfea66ec2c3f15)
  unreachable
bb14:
  %t52 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !27
  %t54 = load i64, ptr %l25, !tbaa !24
  %t55 = getelementptr i8, ptr %t53, i64 1
  %t56 = sub i64 %t54, 1
  %t57 = insertvalue { i64, ptr } undef, i64 %t56, 0
  %t58 = insertvalue { i64, ptr } %t57, ptr %t55, 1
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d106, i32 0, i32 1) }, ptr %l32, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d107, i32 0, i32 1) }, ptr %l33, !tbaa !27
  %t61 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t62 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t63 = call { i64, ptr } @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eReplace_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, ptr %v1, ptr %v1, { i64, ptr } %t58, { i64, ptr } %t61, { i64, ptr } %t62)
  store { i64, ptr } %t63, ptr %l34
  br label %bb16
bb15:
  call void @__olang_check_failed(ptr @olang_loc_99b6d5da9346cc11_b8cfea66ec2c3f15)
  unreachable
bb16:
  %t64 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t65 = extractvalue { i64, ptr } %t64, 0
  store i64 %t65, ptr %l35, !tbaa !24
  %t66 = load i64, ptr %l35, !tbaa !24
  %t67 = mul i64 %t66, 1
  %t68 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t67)
  %t69 = insertvalue { i64, ptr } undef, i64 %t66, 0
  %t70 = insertvalue { i64, ptr } %t69, ptr %t68, 1
  store { i64, ptr } %t70, ptr %l36, !tbaa !27
  %t71 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !27
  %t73 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !27
  %t75 = load i64, ptr %l35, !tbaa !24
  %t76 = mul i64 %t75, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t72, ptr %t74, i64 %t76, i1 false)
  %t77 = load { i64, ptr }, ptr %l36, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t77, ptr %rv
  br label %ret
bb17:
  %t79 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t81 = extractvalue { i64, ptr } %t79, 0
  %t83 = icmp slt i64 %t81, 2
  br i1 %t83, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l41, !tbaa !21
  br label %bb20
bb19:
  %t85 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t85, ptr %l42, !tbaa !27
  %t86 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t87 = load ptr, ptr %t86, !tbaa !27
  %t88 = getelementptr i8, ptr %t87, i64 0
  %t89 = load i8, ptr %t88, !tbaa !32
  %t91 = icmp ne i8 %t89, 34
  store i1 %t91, ptr %l41, !tbaa !21
  br label %bb20
bb20:
  %t93 = load i1, ptr %l41, !tbaa !21
  br i1 %t93, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l45, !tbaa !21
  br label %bb23
bb22:
  %t94 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t94, ptr %l46, !tbaa !27
  %t95 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t97 = extractvalue { i64, ptr } %t95, 0
  %t99 = sub i64 %t97, 1
  %t101 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !27
  %t103 = getelementptr i8, ptr %t102, i64 %t99
  %t104 = load i8, ptr %t103, !tbaa !32
  %t106 = icmp ne i8 %t104, 34
  store i1 %t106, ptr %l45, !tbaa !21
  br label %bb23
bb23:
  %t108 = load i1, ptr %l45, !tbaa !21
  br i1 %t108, label %bb24, label %bb25
bb24:
  %t109 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t111 = extractvalue { i64, ptr } %t109, 1
  %t112 = extractvalue { i64, ptr } %t109, 0
  %t113 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t112)
  call void @olang_textcopy(ptr %t113, ptr %t111, i64 %t112)
  %t114 = insertvalue { i64, ptr } undef, i64 %t112, 0
  %t115 = insertvalue { i64, ptr } %t114, ptr %t113, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t115, ptr %rv
  br label %ret
bb25:
  br label %bb26
bb26:
  %t117 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t117, ptr %l54
  br label %bb27
bb27:
  %t118 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l54
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t118, ptr %l2
  store i64 1, ptr %l3, !tbaa !24
  br label %bb28
bb28:
  %t119 = load i64, ptr %l3, !tbaa !24
  %t120 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t122 = extractvalue { i64, ptr } %t120, 0
  %t124 = sub i64 %t122, 1
  %t127 = icmp slt i64 %t119, %t124
  %t129 = xor i1 %t127, true
  br i1 %t129, label %bb29, label %bb30
bb29:
  br label %bb47
bb30:
  br label %bb31
bb31:
  %t131 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t131, ptr %l61, !tbaa !27
  %t132 = load i64, ptr %l3, !tbaa !24
  %t134 = getelementptr { i64, ptr }, ptr %l61, i32 0, i32 1
  %t135 = load ptr, ptr %t134, !tbaa !27
  %t136 = getelementptr i8, ptr %t135, i64 %t132
  %t137 = load i8, ptr %t136, !tbaa !32
  store i8 %t137, ptr %l4, !tbaa !22
  %t139 = load i8, ptr %l4, !tbaa !22
  %t141 = icmp eq i8 %t139, 92
  br i1 %t141, label %bb32, label %bb33
bb32:
  %t143 = load i64, ptr %l3, !tbaa !24
  %t145 = add i64 %t143, 1
  %t146 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t148 = extractvalue { i64, ptr } %t146, 0
  %t150 = sub i64 %t148, 1
  %t153 = icmp slt i64 %t145, %t150
  store i1 %t153, ptr %l66, !tbaa !21
  br label %bb34
bb33:
  store i1 false, ptr %l66, !tbaa !21
  br label %bb34
bb34:
  %t155 = load i1, ptr %l66, !tbaa !21
  br i1 %t155, label %bb35, label %bb36
bb35:
  %t156 = load i64, ptr %l3, !tbaa !24
  %t158 = add i64 %t156, 1
  store i64 %t158, ptr %l3, !tbaa !24
  %t160 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t160, ptr %l75, !tbaa !27
  %t161 = load i64, ptr %l3, !tbaa !24
  %t163 = getelementptr { i64, ptr }, ptr %l75, i32 0, i32 1
  %t164 = load ptr, ptr %t163, !tbaa !27
  %t165 = getelementptr i8, ptr %t164, i64 %t161
  %t166 = load i8, ptr %t165, !tbaa !32
  store i8 %t166, ptr %l5, !tbaa !22
  store ptr %l2, ptr %l78, !tbaa !29
  %t168 = load i8, ptr %l5, !tbaa !22
  %t170 = icmp eq i8 %t168, 110
  br i1 %t170, label %bb37, label %bb38
bb36:
  %t172 = load i8, ptr %l4, !tbaa !22
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2ePush_3cstd_2fprelude_2ftext_3aChar_3e(ptr %s0, ptr %l2, i8 %t172)
  br label %bb44
bb37:
  store i8 10, ptr %l81, !tbaa !22
  br label %bb42
bb38:
  %t175 = load i8, ptr %l5, !tbaa !22
  %t177 = icmp eq i8 %t175, 116
  br i1 %t177, label %bb39, label %bb40
bb39:
  store i8 9, ptr %l84, !tbaa !22
  br label %bb41
bb40:
  %t179 = load i8, ptr %l5, !tbaa !22
  store i8 %t179, ptr %l84, !tbaa !22
  br label %bb41
bb41:
  %t181 = load i8, ptr %l84, !tbaa !22
  store i8 %t181, ptr %l81, !tbaa !22
  br label %bb42
bb42:
  %t182 = load ptr, ptr %l78, !tbaa !29
  %t183 = load i8, ptr %l81, !tbaa !22
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2ePush_3cstd_2fprelude_2ftext_3aChar_3e(ptr %s0, ptr %t182, i8 %t183)
  br label %bb43
bb43:
  br label %bb45
bb44:
  br label %bb45
bb45:
  %t184 = load i64, ptr %l3, !tbaa !24
  %t186 = add i64 %t184, 1
  store i64 %t186, ptr %l3, !tbaa !24
  br label %bb46
bb46:
  br label %bb28
bb47:
  %t189 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2eToArr_H8081e04b38a8da5362a19182ff2ab7d7(ptr %s0, ptr %s0, ptr %l2)
  store { i64, ptr } %t189, ptr %l91
  br label %bb48
bb48:
  %t190 = load { i64, ptr }, ptr %l91, !tbaa !27
  store { i64, ptr } %t190, ptr %l92, !tbaa !27
  %t191 = load { i64, ptr }, ptr %l92, !tbaa !27
  %t192 = extractvalue { i64, ptr } %t191, 0
  store i64 %t192, ptr %l93, !tbaa !24
  %t193 = load i64, ptr %l93, !tbaa !24
  %t194 = mul i64 %t193, 1
  %t195 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t194)
  %t196 = insertvalue { i64, ptr } undef, i64 %t193, 0
  %t197 = insertvalue { i64, ptr } %t196, ptr %t195, 1
  store { i64, ptr } %t197, ptr %l94, !tbaa !27
  %t198 = getelementptr { i64, ptr }, ptr %l94, i32 0, i32 1
  %t199 = load ptr, ptr %t198, !tbaa !27
  %t200 = getelementptr { i64, ptr }, ptr %l92, i32 0, i32 1
  %t201 = load ptr, ptr %t200, !tbaa !27
  %t202 = load i64, ptr %l93, !tbaa !24
  %t203 = mul i64 %t202, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t199, ptr %t201, i64 %t203, i1 false)
  %t204 = load { i64, ptr }, ptr %l94, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t204, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"compiler/listing:Remark" @compiler_2flisting_3aRemark_2ector(ptr %v0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %rv = alloca %"compiler/listing:Remark"
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d108, i32 0, i32 1) }, ptr %l0, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d109, i32 0, i32 1) }, ptr %l1, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d110, i32 0, i32 1) }, ptr %l2, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d111, i32 0, i32 1) }, ptr %l3, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d112, i32 0, i32 1) }, ptr %l5, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d113, i32 0, i32 1) }, ptr %l6, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d114, i32 0, i32 1) }, ptr %l7, !tbaa !27
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t2 = insertvalue %"compiler/listing:Remark" undef, { i64, ptr } %t1, 0
  %t3 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t4 = insertvalue %"compiler/listing:Remark" %t2, { i64, ptr } %t3, 1
  %t5 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t6 = insertvalue %"compiler/listing:Remark" %t4, { i64, ptr } %t5, 2
  %t7 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t8 = insertvalue %"compiler/listing:Remark" %t6, { i64, ptr } %t7, 3
  %t10 = insertvalue %"compiler/listing:Remark" %t8, i64 0, 4
  %t11 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t12 = insertvalue %"compiler/listing:Remark" %t10, { i64, ptr } %t11, 5
  %t13 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t14 = insertvalue %"compiler/listing:Remark" %t12, { i64, ptr } %t13, 6
  %t15 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t16 = insertvalue %"compiler/listing:Remark" %t14, { i64, ptr } %t15, 7
  store %"compiler/listing:Remark" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/listing:Remark", ptr %rv
  ret %"compiler/listing:Remark" %rr
}

define dso_local %"compiler/listing:Sources" @compiler_2flisting_3aSources_2ector(ptr %v0) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l4 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"compiler/listing:Sources"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = ptrtoint ptr %v0 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2flisting_3aSources_2e0
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v0)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t6 = load i64, ptr %l2
  %t7 = inttoptr i64 %t6 to ptr
  %t8 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aStr_H2f2f5d03ba9d492f1f18315584721893(ptr %t7)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t8, ptr %l4
  br label %bb3
bb3:
  %t9 = load i1, ptr @olang_2esole_2ecompiler_2flisting_3aSources_2e0
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t11 = load i64, ptr %l2
  %t12 = inttoptr i64 %t11 to ptr
  %t13 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l4, i32 0, i32 2
  %t14 = load { i64, ptr }, ptr %t13
  %t15 = extractvalue { i64, ptr } %t14, 1
  %t16 = call ptr @__olang_region_or(ptr %t15, ptr null)
  %t17 = icmp ne ptr %t16, null
  %t18 = select i1 %t17, ptr %t16, ptr null
  %t19 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l4, i32 0, i32 1
  %t20 = load { i64, ptr }, ptr %t19
  %t21 = extractvalue { i64, ptr } %t20, 1
  %t22 = call ptr @__olang_region_or(ptr %t21, ptr null)
  %t23 = icmp ne ptr %t22, null
  %t24 = select i1 %t23, ptr %t22, ptr %t18
  %t25 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l4, i32 0, i32 0
  %t26 = load { i64, ptr }, ptr %t25
  %t27 = extractvalue { i64, ptr } %t26, 1
  %t28 = call ptr @__olang_region_or(ptr %t27, ptr null)
  %t29 = icmp ne ptr %t28, null
  %t30 = select i1 %t29, ptr %t28, ptr %t24
  %t31 = icmp eq ptr %t30, %t12
  call void @__olang_region_settle(ptr %t12, i1 %t31)
  br label %bb5
bb5:
  %t32 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l4
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d115, i32 0, i32 1) }, ptr %l1, !tbaa !27
  %t34 = insertvalue %"compiler/listing:Sources" undef, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t32, 0
  %t35 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t36 = insertvalue %"compiler/listing:Sources" %t34, { i64, ptr } %t35, 1
  store %"compiler/listing:Sources" %t36, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/listing:Sources", ptr %rv
  ret %"compiler/listing:Sources" %rr
}

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
@olang_2esole_2ecompiler_2flisting_3aNamer_2e0 = weak hidden constant i1 false
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
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
declare void @__olang_region_release(ptr) noinline
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
declare void @__olang_errpay_pop()
@.d0 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d1 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"inline" }>, align 8
@.d2 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"passed" }>, align 8
@.d3 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"main" }>, align 8
@.d4 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"startup" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d5 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"_fv_" }>, align 8
declare void @__olang_check_failed(ptr) cold noreturn
@.d6 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c" as a function value" }>, align 8
@.d7 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"_adapter" }>, align 8
@.d8 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" adapted" }>, align 8
@.d9 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"_copied" }>, align 8
@.d10 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d11 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d12 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d13 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"<" }>, align 8
@.d14 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d15 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d16 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d17 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".loc\09" }>, align 8
@.d18 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".loc " }>, align 8
@.d19 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d20 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d21 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d22 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d23 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d24 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".cfi_" }>, align 8
@.d25 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c".p2align" }>, align 8
@.d26 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"#DEBUG_VALUE" }>, align 8
@.d27 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".file" }>, align 8
@.d28 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".type" }>, align 8
@.d29 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".size" }>, align 8
@__olang_prog_scope = external thread_local(initialexec) global ptr
@.d30 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d31 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d32 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"#" }>, align 8
@.d33 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"//" }>, align 8
@.d34 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d35 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"!dbg !" }>, align 8
@.d36 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"  " }>, align 8
@.d37 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"  " }>, align 8
@.d38 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c";" }>, align 8
declare ptr @__olang_scope_or(ptr, ptr)
@.d39 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
define internal i1 @olang_lambda_40(ptr %env, ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l3 = alloca i1
  %l4 = alloca i1
  %l6 = alloca i1
  %l8 = alloca i1
  %l10 = alloca i1
  %l12 = alloca i1
  %l14 = alloca i1
  %l16 = alloca i1
  %l19 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d116, i32 0, i32 1) })
  store i1 %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load i1, ptr %l3, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  %t5 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t7 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t5, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d117, i32 0, i32 1) })
  store i1 %t7, ptr %l6
  br label %bb4
bb3:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb5
bb4:
  %t8 = load i1, ptr %l6, !tbaa !21
  %t9 = xor i1 %t8, true
  store i1 %t9, ptr %l4, !tbaa !21
  br label %bb5
bb5:
  %t11 = load i1, ptr %l4, !tbaa !21
  br i1 %t11, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb17
bb7:
  %t12 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t14 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t12, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d118, i32 0, i32 1) })
  store i1 %t14, ptr %l10
  br label %bb8
bb8:
  %t15 = load i1, ptr %l10, !tbaa !21
  %t16 = xor i1 %t15, true
  br i1 %t16, label %bb9, label %bb10
bb9:
  %t18 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t20 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t18, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d119, i32 0, i32 1) })
  store i1 %t20, ptr %l14
  br label %bb11
bb10:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb12
bb11:
  %t21 = load i1, ptr %l14, !tbaa !21
  %t22 = xor i1 %t21, true
  store i1 %t22, ptr %l12, !tbaa !21
  br label %bb12
bb12:
  %t24 = load i1, ptr %l12, !tbaa !21
  br i1 %t24, label %bb13, label %bb14
bb13:
  %t25 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t26 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t29 = call i1 @compiler_2flisting_2eplaceLess(ptr %v0, ptr %v1, { i64, ptr } %t25, { i64, ptr } %t26)
  store i1 %t29, ptr %l19
  br label %bb15
bb14:
  store i1 false, ptr %l16, !tbaa !21
  br label %bb16
bb15:
  %t30 = load i1, ptr %l19, !tbaa !21
  store i1 %t30, ptr %l16, !tbaa !21
  br label %bb16
bb16:
  %t31 = load i1, ptr %l16, !tbaa !21
  store i1 %t31, ptr %l8, !tbaa !21
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s0)
  %t32 = load i1, ptr %l8, !tbaa !21
  store i1 %t32, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@.d41 = private constant <{ i64, [42 x i8] }> <{ i64 0, [42 x i8] c" remarks on lines left with no code here:\0A" }>, align 8
@.d42 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d43 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d44 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"(no line of the program)" }>, align 8
@.d45 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"   " }>, align 8
@.d46 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d47 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"      " }>, align 8
@.d48 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d49 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"<" }>, align 8
@.d50 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c" (no line of the program)\0A" }>, align 8
@.d51 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d52 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d53 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"  " }>, align 8
@.d54 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d55 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d56 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"    " }>, align 8
@olang_2esole_2ecompiler_2flisting_3aWriter_2e5 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2flisting_3aWriter_2e7 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2flisting_3aWriter_2e8 = weak hidden constant i1 false
@.d57 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d58 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d59 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d60 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d61 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" - " }>, align 8
@.d62 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d63 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d64 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d65 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2flisting_3aInputs_2e1 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_201_3e_2e_2d1 = weak hidden constant i1 false
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@.d66 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d67 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c" inlined at every call, into " }>, align 8
@.d68 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c", and that into " }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
@.d69 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d70 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c" no code of its own:" }>, align 8
@.d71 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d72 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c" no code of its own:" }>, align 8
@.d73 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c", whose code follows\0A" }>, align 8
@.d74 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"@" }>, align 8
@.d75 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d76 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"@" }>, align 8
@.d77 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".llvm." }>, align 8
@.d78 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\09" }>, align 8
@.d79 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d80 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d81 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d82 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d83 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d84 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d85 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\22" }>, align 8
@.d86 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\22" }>, align 8
@olang_2esole_2ecompiler__2flisting__2ereadRemarks_2elocal_2e5 = weak hidden constant i1 false
declare void @__olang_region_settle(ptr, i1)
@.d87 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"--- !" }>, align 8
declare void @__olang_region_drop(ptr) noinline
@olang_2esole_2ecompiler_2flisting_3aRemark_2e0 = weak hidden constant i1 false
@.d88 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"..." }>, align 8
@olang_2esole_2ecompiler_2flisting_3aRemark_2e7 = weak hidden constant i1 false
@.d89 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"passed" }>, align 8
@.d90 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"inline" }>, align 8
@.d91 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d92 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"  - " }>, align 8
@.d93 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"  - " }>, align 8
@.d94 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Callee" }>, align 8
@olang_2esole_2ecompiler_2flisting_3aRemark_2e6 = weak hidden constant i1 false
@.d95 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"String" }>, align 8
@.d96 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c" at callsite " }>, align 8
@.d97 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Callee" }>, align 8
@.d98 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Caller" }>, align 8
@.d99 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"Function" }>, align 8
@.d100 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Pass" }>, align 8
@olang_2esole_2ecompiler_2flisting_3aRemark_2e1 = weak hidden constant i1 false
@.d101 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Name" }>, align 8
@olang_2esole_2ecompiler_2flisting_3aRemark_2e2 = weak hidden constant i1 false
@.d102 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"Function" }>, align 8
@olang_2esole_2ecompiler_2flisting_3aRemark_2e5 = weak hidden constant i1 false
@.d103 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"DebugLoc" }>, align 8
@olang_2esole_2ecompiler_2flisting_3aRemark_2e3 = weak hidden constant i1 false
@.d104 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"File" }>, align 8
@.d105 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Line" }>, align 8
@.d106 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"''" }>, align 8
@.d107 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d108 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d109 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d110 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d111 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d112 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d113 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d114 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2flisting_3aSources_2e0 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aStr_H2f2f5d03ba9d492f1f18315584721893(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Array_3cstd_2fprelude__Hb5aefc70e2d3852a6d29ec0a9aea78a4(ptr %v0)
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

@.d115 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare noalias ptr @__olang_scope_alloc_slow(ptr, i64, i64) noinline
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
@.d116 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d117 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d118 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d119 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare %"compiler/listing:Namer" @compiler_2flisting_3aNamer_2ector(ptr %v0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aUnit_3e_2eLen_3ccompiler_2fbuild_3aUnit_3e(ptr %v0, ptr %a0)
declare %"compiler/build:Unit" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aUnit_3e_2eAt_3ccompiler_2fbuild_3aUnit_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2flisting_3aRemark_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flisting_3aRemark_3e_2eLen_3ccompiler_2flisting_3aRemark_3e(ptr %v0, ptr %a0)
declare %"compiler/listing:Remark" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flisting_3aRemark_3e_2eAt_3ccompiler_2flisting_3aRemark_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @compiler_2flisting_2eofSym(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H0127831368543eff3b7740d7d3240080(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_4c5476cd02c9d569_d2b16f8f5de4ce55 = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_82458c7f9e0fa77c_b0b89e2c08a7ae78 = external constant [0 x i8]
@olang_loc_1aee9fefcdd9cd27_6fa15990af9654d3 = external constant [0 x i8]
declare { i64, ptr } @compiler_2ftypes_2eDemangle(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_6a5ec5f2c3534a4a_bf3e4e4bffc8a476 = external constant [0 x i8]
declare i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_af9ac36a56bc89c5_7398c12160466739 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fload_2eErrQualifier(ptr %v0, ptr %v1, { i64, ptr } %a0, i1 %a1)
declare { i64, ptr } @compiler_2flisting_2ecompiler_2flisting_3aNamer_2etypesNamed(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
@olang_loc_6783e9980d688233_30d5d90792fe0dc7 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %v0, i64 %a0)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v0, { i64, ptr } %a0, i64 %a1)
@olang_loc_681ac7b531dd0cd6_76b1194f7bcdc9ea = external constant [0 x i8]
declare void @compiler_2flisting_2ecompiler_2flisting_3aWriter_2eirPlace(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2flisting_2eplaceOf(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H1642129570dad448bb7dcc47c334de83(ptr %v0, ptr %v1, ptr %a0, ptr %a1c, ptr %a1e)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_c76de25993fa5b69_1c32ce588582e85d = external constant [0 x i8]
declare { i64, ptr } @compiler_2flisting_2ecompiler_2flisting_3aSources_2eShown(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2flisting_2ecompiler_2flisting_3aWriter_2eremarksAt(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @compiler_2flisting_2ecompiler_2flisting_3aSources_2eText(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i64 %a2)
declare { i64, ptr } @compiler_2flisting_2efound(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i1 %a2)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @compiler_2flisting_2ebody(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %v6, ptr %v7, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, ptr %a4, ptr %a5, ptr %a6)
declare { i64, ptr } @compiler_2flisting_2enoCode(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, ptr %a2, ptr %a3)
declare { i64, ptr } @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eReplace_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %a0)
@olang_loc_61ce4b4de8e9e57b_f7600b48bd811137 = external constant [0 x i8]
@olang_loc_bcaef50f3ad362fe_b83702f58870efda = external constant [0 x i8]
@olang_loc_f4e5321dee5c23dd_4262af410e6ad879 = external constant [0 x i8]
@olang_loc_b06da0308285dd80_9593e16f44f2444c = external constant [0 x i8]
@olang_loc_50111c761c56dd5f_b5d6bbb7817ca613 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_1658fd7d2958cee1_67b9b3ad391c8d45 = external constant [0 x i8]
declare { i64, ptr } @compiler_2flisting_2ekindWord(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2eToArr_H8081e04b38a8da5362a19182ff2ab7d7(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flisting_3aRemark_3e_2ePush_3ccompiler_2flisting_3aRemark_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/listing:Remark" %a1)
@olang_loc_679d421df08030f4_bd0b7978ad4d2168 = external constant [0 x i8]
declare { { i64, ptr }, { i64, ptr } } @compiler_2flisting_2ekeyValue(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2ePush_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %a0, i8 %a1)
declare i32 @std_2fio_2ePrint(ptr %v0, { i64, ptr } %a0)
declare { i64, ptr } @compiler_2flisting_2efield(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_99b6d5da9346cc11_b8cfea66ec2c3f15 = external constant [0 x i8]
declare i1 @compiler_2flisting_2eplaceLess(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Array_3cstd_2fprelude__Hb5aefc70e2d3852a6d29ec0a9aea78a4(ptr %v0)

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
