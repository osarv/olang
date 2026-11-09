source_filename = "compiler_listing-1.quick.ll"
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
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/listing:Namer" = type { { i64, ptr } }
%"compiler/listing:Sources" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr } }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/build:Code" = type { { i64, ptr }, { i64, ptr }, i64, { i64, ptr } }
%"compiler/listing:Inputs" = type { ptr, ptr, { i64, ptr }, { i64, ptr }, i1 }
%"compiler/build:Listed" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/build:Program" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/listing:Remark" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/listing:Writer" = type { { i64, ptr }, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, { i64, ptr }, { i64, ptr }, i64, %"std/prelude/text:StringBuilder", i64 }
%"compiler/build:Config" = type { { i64, ptr }, { i64, ptr }, %"compiler/target:Target", %"compiler/cond:Consts", i1, i1, i1, i1, i1, i1, { i64, ptr }, i64, i1, i1, i1, { i64, ptr }, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i1, { i64, ptr }, { i64, ptr }, i64, i64, i1, { i64, ptr }, { i64, ptr } }
%"compiler/target:Target" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i1, i1 }
%"compiler/cond:Consts" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/text:LineIter" = type { { i64, ptr }, i64 }
define dso_local { i64, ptr } @compiler_2flisting_2eRender(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/prelude/text:StringBuilder"
  %l2 = alloca %"compiler/listing:Namer"
  %l3 = alloca %"compiler/listing:Sources"
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca i64
  %lp8 = alloca ptr
  %l9 = alloca %"std/prelude/text:StringBuilder"
  %l12 = alloca %"compiler/listing:Namer"
  %l13 = alloca %"compiler/listing:Sources"
  %l15 = alloca ptr
  %l16 = alloca i64
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l25 = alloca i64
  %l27 = alloca ptr
  %l29 = alloca { i64, ptr }
  %l33 = alloca i64
  %l37 = alloca { i64, ptr }
  %l41 = alloca i64
  %l43 = alloca i64
  %l49 = alloca %"compiler/build:Code"
  %l53 = alloca ptr
  %l59 = alloca { i64, ptr }
  %l64 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l9
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l9
  store %"std/prelude/text:StringBuilder" %t2, ptr %l1
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/listing:Inputs", ptr %t3, i32 0, i32 0
  %t6 = load ptr, ptr %t5, !tbaa !29
  %t8 = call %"compiler/listing:Namer" @compiler_2flisting_2eNamer_2eMake(ptr %v0, ptr %s0, ptr %t6)
  store %"compiler/listing:Namer" %t8, ptr %l12
  br label %bb2
bb2:
  %t9 = load %"compiler/listing:Namer", ptr %l12
  store %"compiler/listing:Namer" %t9, ptr %l2
  %t10 = call %"compiler/listing:Sources" @compiler_2flisting_2eSources_2eMake(ptr %s0)
  store %"compiler/listing:Sources" %t10, ptr %l13
  br label %bb3
bb3:
  %t11 = load %"compiler/listing:Sources", ptr %l13
  store %"compiler/listing:Sources" %t11, ptr %l3
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/listing:Inputs", ptr %t12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !29
  store ptr %t15, ptr %l15, !tbaa !29
  %t16 = ptrtoint ptr %v0 to i64
  store i64 %t16, ptr %l16, !tbaa !24
  %t17 = load i1, ptr @olang_2esole_2ecompiler_2flisting_3aInputs_2e1
  br i1 %t17, label %bb4, label %bb5
bb4:
  %t19 = load ptr, ptr %l15, !tbaa !29
  %t20 = call ptr @__olang_region_or(ptr %t19, ptr %v0)
  %t21 = ptrtoint ptr %t20 to i64
  store i64 %t21, ptr %l16, !tbaa !24
  br label %bb5
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/listing:Inputs", ptr %t22, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/build:Listed", ptr %t25, i32 0, i32 0
  %t28 = load i64, ptr %l16
  %t29 = inttoptr i64 %t28 to ptr
  %t31 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2flisting_2ereadParts(ptr %t29, ptr %s0, ptr %t27)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t31, ptr %l21
  br label %bb6
bb6:
  %t32 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t32, ptr %l4
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/listing:Inputs", ptr %t33, i32 0, i32 0
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t38 = getelementptr %"compiler/build:Program", ptr %t36, i32 0, i32 8
  %t40 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aCode_3e_2eLen_3ccompiler_2fbuild_3aCode_3e(ptr %v0, ptr %t38)
  store i64 %t40, ptr %l25
  br label %bb7
bb7:
  %t41 = load i64, ptr %l25, !tbaa !24
  %t42 = icmp eq i64 %t41, 0
  br i1 %t42, label %bb8, label %bb9
bb8:
  store %olang.scope zeroinitializer, ptr %s1
  store ptr %l1, ptr %l27, !tbaa !29
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/listing:Inputs", ptr %t44, i32 0, i32 3
  %t47 = load { i64, ptr }, ptr %t46, !tbaa !27
  store { i64, ptr } %t47, ptr %l29, !tbaa !27
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/listing:Inputs", ptr %t48, i32 0, i32 0
  %t51 = load ptr, ptr %t50, !tbaa !29
  %t53 = getelementptr %"compiler/build:Program", ptr %t51, i32 0, i32 8
  %t55 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aCode_3e_2eLen_3ccompiler_2fbuild_3aCode_3e(ptr %v0, ptr %t53)
  store i64 %t55, ptr %l33
  br label %bb10
bb9:
  br label %bb13
bb10:
  %t56 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t57 = extractvalue { i64, ptr } %t56, 1
  %t58 = extractvalue { i64, ptr } %t56, 0
  %t59 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d0, i32 0, i32 1) }, 1
  %t60 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d0, i32 0, i32 1) }, 0
  %t61 = add i64 %t58, %t60
  %t62 = load i64, ptr %l33, !tbaa !24
  %t63 = call i64 @__olang_fmt_i64(ptr null, i64 %t62)
  %t64 = add i64 %t61, %t63
  %t65 = extractvalue { i64, ptr } { i64 67, ptr getelementptr inbounds (<{ i64, [67 x i8] }>, ptr @.d1, i32 0, i32 1) }, 1
  %t66 = extractvalue { i64, ptr } { i64 67, ptr getelementptr inbounds (<{ i64, [67 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  %t67 = add i64 %t64, %t66
  %t68 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t67)
  call void @olang_textcopy(ptr %t68, ptr %t57, i64 %t58)
  %t69 = getelementptr i8, ptr %t68, i64 %t58
  call void @olang_textcopy(ptr %t69, ptr %t59, i64 %t60)
  %t70 = getelementptr i8, ptr %t69, i64 %t60
  %t71 = call i64 @__olang_fmt_i64(ptr %t70, i64 %t62)
  %t72 = getelementptr i8, ptr %t70, i64 %t63
  call void @olang_textcopy(ptr %t72, ptr %t65, i64 %t66)
  %t73 = insertvalue { i64, ptr } undef, i64 %t67, 0
  %t74 = insertvalue { i64, ptr } %t73, ptr %t68, 1
  %t76 = extractvalue { i64, ptr } %t74, 0
  %t77 = extractvalue { i64, ptr } %t74, 1
  %t78 = mul i64 %t76, 1
  %t79 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t78)
  call void @llvm.memcpy.p0.p0.i64(ptr %t79, ptr %t77, i64 %t78, i1 false)
  %t80 = insertvalue { i64, ptr } undef, i64 %t76, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t79, 1
  %t82 = load ptr, ptr %l27, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s1, ptr %t82, { i64, ptr } %t81)
  br label %bb11
bb11:
  %t85 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l1)
  store { i64, ptr } %t85, ptr %l37
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t86 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t86, ptr %rv
  br label %ret
bb13:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/listing:Inputs", ptr %t87, i32 0, i32 0
  %t90 = load ptr, ptr %t89, !tbaa !29
  %t92 = getelementptr %"compiler/build:Program", ptr %t90, i32 0, i32 8
  store ptr %t92, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb14
bb14:
  store %olang.scope zeroinitializer, ptr %s4
  %t94 = load i64, ptr %l6, !tbaa !24
  store i64 %t94, ptr %l41, !tbaa !24
  %t95 = load ptr, ptr %l5, !tbaa !29
  %t97 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aCode_3e_2eLen_3ccompiler_2fbuild_3aCode_3e(ptr %v0, ptr %t95)
  store i64 %t97, ptr %l43
  br label %bb15
bb15:
  %t98 = load i64, ptr %l41, !tbaa !24
  %t99 = load i64, ptr %l43, !tbaa !24
  %t100 = icmp slt i64 %t98, %t99
  %t102 = xor i1 %t100, true
  br i1 %t102, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s4)
  br label %bb27
bb17:
  br label %bb18
bb18:
  %t104 = load i64, ptr %l6, !tbaa !24
  store i64 %t104, ptr %l7, !tbaa !24
  %t106 = load ptr, ptr %l5, !tbaa !29
  %t107 = load i64, ptr %l6, !tbaa !24
  %t110 = call %"compiler/build:Code" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aCode_3e_2eAt_3ccompiler_2fbuild_3aCode_3e(ptr %v0, ptr %v0, ptr %t106, i64 %t107)
  store %"compiler/build:Code" %t110, ptr %l49
  br label %bb19
bb19:
  %t111 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 56, i64 8)
  store ptr %t111, ptr %lp8
  %t112 = load %"compiler/build:Code", ptr %l49
  %t113 = load ptr, ptr %lp8
  store %"compiler/build:Code" %t112, ptr %t113
  %t114 = load i64, ptr %l7, !tbaa !24
  %t116 = icmp sgt i64 %t114, 0
  br i1 %t116, label %bb20, label %bb21
bb20:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 10)
  br label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb23
bb23:
  store ptr %l1, ptr %l53, !tbaa !29
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t120 = load ptr, ptr %lp8
  %t126 = call { i64, ptr } @compiler_2flisting_2einstance(ptr %v0, ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %s4, ptr %t119, ptr %t120, ptr %l4, ptr %l2, ptr %l3)
  store { i64, ptr } %t126, ptr %l59
  br label %bb24
bb24:
  %t127 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t128 = extractvalue { i64, ptr } %t127, 0
  %t129 = extractvalue { i64, ptr } %t127, 1
  %t130 = mul i64 %t128, 1
  %t131 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t130)
  call void @llvm.memcpy.p0.p0.i64(ptr %t131, ptr %t129, i64 %t130, i1 false)
  %t132 = insertvalue { i64, ptr } undef, i64 %t128, 0
  %t133 = insertvalue { i64, ptr } %t132, ptr %t131, 1
  %t134 = load ptr, ptr %l53, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s4, ptr %t134, { i64, ptr } %t133)
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s4)
  br label %bb26
bb26:
  %t136 = load i64, ptr %l6, !tbaa !24
  %t138 = add i64 %t136, 1
  store i64 %t138, ptr %l6, !tbaa !24
  br label %bb14
bb27:
  %t141 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l1)
  store { i64, ptr } %t141, ptr %l64
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s0)
  %t142 = load { i64, ptr }, ptr %l64, !tbaa !27
  store { i64, ptr } %t142, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"compiler/listing:Sources" @compiler_2flisting_2eSources_2eMake(ptr %v0) #0 {
entry:
  %lp0 = alloca ptr
  %l1 = alloca %"compiler/listing:Sources"
  %l2 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i32
  %l11 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/listing:Sources"
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"compiler/listing:Sources" @compiler_2flisting_3aSources_2ector(ptr %v0)
  store %"compiler/listing:Sources" %t1, ptr %l1
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 88, i64 8)
  store ptr %t2, ptr %lp0
  %t3 = load %"compiler/listing:Sources", ptr %l1
  %t4 = load ptr, ptr %lp0
  store %"compiler/listing:Sources" %t3, ptr %t4
  %t5 = ptrtoint ptr %v0 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  %t6 = load i1, ptr @olang_2esole_2ecompiler_2flisting_3aSources_2e1
  br i1 %t6, label %bb2, label %bb3
bb2:
  %t8 = call ptr @__olang_region_make(ptr %v0)
  %t9 = ptrtoint ptr %t8 to i64
  store i64 %t9, ptr %l2, !tbaa !24
  br label %bb3
bb3:
  %t10 = call { i64, ptr } @compiler_2fload_2eStdDir(ptr %s0)
  store { i64, ptr } %t10, ptr %l5
  br label %bb4
bb4:
  %t11 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t11, 0
  %t13 = extractvalue { i64, ptr } %t11, 1
  %t14 = mul i64 %t12, 1
  %t15 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t14)
  call void @llvm.memcpy.p0.p0.i64(ptr %t15, ptr %t13, i64 %t14, i1 false)
  %t16 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t17 = insertvalue { i64, ptr } %t16, ptr %t15, 1
  %t19 = call { i32, { i64, ptr } } @std_2fos_2eRealPath(ptr %s0, ptr %s0, { i64, ptr } %t17)
  %t20 = extractvalue { i32, { i64, ptr } } %t19, 1
  %t21 = extractvalue { i32, { i64, ptr } } %t19, 0
  store i32 %t21, ptr %l8
  %t22 = icmp ne i32 %t21, 0
  br i1 %t22, label %bb6, label %ok.23, !prof !99
ok.23:
  store { i64, ptr } %t20, ptr %l7
  br label %bb5
bb5:
  %t24 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t24, ptr %l4, !tbaa !27
  br label %bb11
bb6:
  %t25 = load i32, ptr %l8, !tbaa !23
  %t26 = ashr i32 %t25, 16
  %t28 = icmp eq i32 %t26, 1
  br i1 %t28, label %bb7, label %bb8
bb7:
  call void @__olang_errpay_pop()
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t30 = call { i64, ptr } @compiler_2fload_2eStdDir(ptr %s0)
  store { i64, ptr } %t30, ptr %l11
  br label %bb10
bb10:
  %t31 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t31, 0
  %t33 = extractvalue { i64, ptr } %t31, 1
  %t34 = mul i64 %t32, 1
  %t35 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t34)
  call void @llvm.memcpy.p0.p0.i64(ptr %t35, ptr %t33, i64 %t34, i1 false)
  %t36 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t35, 1
  store { i64, ptr } %t37, ptr %l4, !tbaa !27
  br label %bb11
bb11:
  %t39 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t39, 1
  %t41 = extractvalue { i64, ptr } %t39, 0
  %t42 = load i64, ptr %l2
  %t43 = inttoptr i64 %t42 to ptr
  %t44 = call ptr @__olang_scope_alloc(ptr %t43, i64 %t41)
  call void @olang_textcopy(ptr %t44, ptr %t40, i64 %t41)
  %t45 = insertvalue { i64, ptr } undef, i64 %t41, 0
  %t46 = insertvalue { i64, ptr } %t45, ptr %t44, 1
  %t48 = load i64, ptr %l2
  %t49 = inttoptr i64 %t48 to ptr
  %t50 = extractvalue { i64, ptr } %t46, 0
  %t51 = extractvalue { i64, ptr } %t46, 1
  %t52 = mul i64 %t50, 1
  %t53 = call ptr @__olang_scope_alloc(ptr %t49, i64 %t52)
  call void @llvm.memcpy.p0.p0.i64(ptr %t53, ptr %t51, i64 %t52, i1 false)
  %t54 = insertvalue { i64, ptr } undef, i64 %t50, 0
  %t55 = insertvalue { i64, ptr } %t54, ptr %t53, 1
  %t56 = load ptr, ptr %lp0
  %t57 = getelementptr %"compiler/listing:Sources", ptr %t56, i32 0, i32 1
  %t58 = load { i64, ptr }, ptr %t57, !tbaa !27
  store { i64, ptr } %t58, ptr %l15, !tbaa !27
  %t60 = load ptr, ptr %lp0
  %t61 = getelementptr %"compiler/listing:Sources", ptr %t60, i32 0, i32 1
  store { i64, ptr } %t55, ptr %t61, !tbaa !27
  %t62 = load i1, ptr @olang_2esole_2ecompiler_2flisting_3aSources_2e1
  br i1 %t62, label %bb12, label %bb13
bb12:
  %t64 = load { i64, ptr }, ptr %l15
  %t65 = extractvalue { i64, ptr } %t64, 1
  call void @__olang_region_release(ptr %t65)
  store { i64, ptr } zeroinitializer, ptr %l15
  br label %bb13
bb13:
  %t66 = load ptr, ptr %lp0
  %t67 = load %"compiler/listing:Sources", ptr %t66
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/listing:Sources" %t67, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/listing:Sources", ptr %rv
  ret %"compiler/listing:Sources" %rr
}

define dso_local { i64, ptr } @compiler_2flisting_2ealiasee(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i32
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca { i64, ptr }
  %l19 = alloca i1
  %l20 = alloca { i64, ptr }
  %l23 = alloca i1
  %l24 = alloca i1
  %l25 = alloca { i64, ptr }
  %l28 = alloca i1
  %l29 = alloca i1
  %l30 = alloca { i64, ptr }
  %l34 = alloca i1
  %l35 = alloca { i64, ptr }
  %l42 = alloca { i64, ptr }
  %l44 = alloca i64
  %l45 = alloca i64
  %l46 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) })
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
  store i64 %t9, ptr %l1, !tbaa !24
  %t10 = load i64, ptr %l1, !tbaa !24
  %t12 = icmp slt i64 %t10, 0
  br i1 %t12, label %bb5, label %bb6
bb5:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) }, ptr %l9, !tbaa !27
  %t14 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t14, ptr %l10, !tbaa !27
  %t15 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t15, 0
  store i64 %t16, ptr %l11, !tbaa !24
  %t17 = load i64, ptr %l11, !tbaa !24
  %t18 = mul i64 %t17, 1
  %t19 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t18)
  %t20 = insertvalue { i64, ptr } undef, i64 %t17, 0
  %t21 = insertvalue { i64, ptr } %t20, ptr %t19, 1
  store { i64, ptr } %t21, ptr %l12, !tbaa !27
  %t22 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = load i64, ptr %l11, !tbaa !24
  %t27 = mul i64 %t26, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t23, ptr %t25, i64 %t27, i1 false)
  %t28 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t28, ptr %l10, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t29 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t29, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t30 = load i64, ptr %l1, !tbaa !24
  %t32 = add i64 %t30, 1
  store i64 %t32, ptr %l2, !tbaa !24
  br label %bb8
bb8:
  %t34 = load i64, ptr %l2, !tbaa !24
  %t35 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t35, 0
  %t40 = icmp slt i64 %t34, %t37
  br i1 %t40, label %bb9, label %bb10
bb9:
  %t42 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t42, ptr %l20, !tbaa !27
  %t43 = load i64, ptr %l2, !tbaa !24
  %t45 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !27
  %t47 = getelementptr i8, ptr %t46, i64 %t43
  %t48 = load i8, ptr %t47, !tbaa !32
  %t50 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t48)
  store i1 %t50, ptr %l23
  br label %bb11
bb10:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb22
bb11:
  %t51 = load i1, ptr %l23, !tbaa !21
  br i1 %t51, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb15
bb13:
  %t52 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t52, ptr %l25, !tbaa !27
  %t53 = load i64, ptr %l2, !tbaa !24
  %t55 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !27
  %t57 = getelementptr i8, ptr %t56, i64 %t53
  %t58 = load i8, ptr %t57, !tbaa !32
  %t60 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t58)
  store i1 %t60, ptr %l28
  br label %bb14
bb14:
  %t61 = load i1, ptr %l28, !tbaa !21
  store i1 %t61, ptr %l24, !tbaa !21
  br label %bb15
bb15:
  %t62 = load i1, ptr %l24, !tbaa !21
  br i1 %t62, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l29, !tbaa !21
  br label %bb18
bb17:
  %t63 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t63, ptr %l30, !tbaa !27
  %t64 = load i64, ptr %l2, !tbaa !24
  %t66 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !27
  %t68 = getelementptr i8, ptr %t67, i64 %t64
  %t69 = load i8, ptr %t68, !tbaa !32
  %t71 = icmp eq i8 %t69, 95
  store i1 %t71, ptr %l29, !tbaa !21
  br label %bb18
bb18:
  %t73 = load i1, ptr %l29, !tbaa !21
  br i1 %t73, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l34, !tbaa !21
  br label %bb21
bb20:
  %t74 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t74, ptr %l35, !tbaa !27
  %t75 = load i64, ptr %l2, !tbaa !24
  %t77 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !27
  %t79 = getelementptr i8, ptr %t78, i64 %t75
  %t80 = load i8, ptr %t79, !tbaa !32
  %t82 = icmp eq i8 %t80, 46
  store i1 %t82, ptr %l34, !tbaa !21
  br label %bb21
bb21:
  %t84 = load i1, ptr %l34, !tbaa !21
  store i1 %t84, ptr %l19, !tbaa !21
  br label %bb22
bb22:
  %t85 = load i1, ptr %l19, !tbaa !21
  %t86 = xor i1 %t85, true
  br i1 %t86, label %bb23, label %bb24
bb23:
  br label %bb27
bb24:
  br label %bb25
bb25:
  %t88 = load i64, ptr %l2, !tbaa !24
  %t90 = add i64 %t88, 1
  store i64 %t90, ptr %l2, !tbaa !24
  br label %bb26
bb26:
  br label %bb8
bb27:
  %t92 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t92, ptr %l42, !tbaa !27
  %t93 = load i64, ptr %l1, !tbaa !24
  %t95 = add i64 %t93, 1
  store i64 %t95, ptr %l44, !tbaa !24
  %t96 = load i64, ptr %l2, !tbaa !24
  store i64 %t96, ptr %l45, !tbaa !24
  %t97 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t98 = extractvalue { i64, ptr } %t97, 0
  store i64 %t98, ptr %l46, !tbaa !24
  %t99 = load i64, ptr %l44, !tbaa !24
  %t100 = icmp sge i64 %t99, 0
  br i1 %t100, label %bb28, label %bb29
bb28:
  %t102 = load i64, ptr %l44, !tbaa !24
  %t103 = load i64, ptr %l45, !tbaa !24
  %t104 = icmp sle i64 %t102, %t103
  br i1 %t104, label %bb30, label %bb31
bb29:
  call void @__olang_check_failed(ptr @olang_loc_60a4feb33ac0cdc_badaef821bc3f128)
  unreachable
bb30:
  %t106 = load i64, ptr %l45, !tbaa !24
  %t107 = load i64, ptr %l46, !tbaa !24
  %t108 = icmp sle i64 %t106, %t107
  br i1 %t108, label %bb32, label %bb33
bb31:
  call void @__olang_check_failed(ptr @olang_loc_60a4feb33ac0cdc_badaef821bc3f128)
  unreachable
bb32:
  %t110 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = load i64, ptr %l44, !tbaa !24
  %t113 = load i64, ptr %l45, !tbaa !24
  %t114 = getelementptr i8, ptr %t111, i64 %t112
  %t115 = sub i64 %t113, %t112
  %t116 = insertvalue { i64, ptr } undef, i64 %t115, 0
  %t117 = insertvalue { i64, ptr } %t116, ptr %t114, 1
  %t119 = extractvalue { i64, ptr } %t117, 1
  %t120 = extractvalue { i64, ptr } %t117, 0
  %t121 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t120)
  call void @olang_textcopy(ptr %t121, ptr %t119, i64 %t120)
  %t122 = insertvalue { i64, ptr } undef, i64 %t120, 0
  %t123 = insertvalue { i64, ptr } %t122, ptr %t121, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t123, ptr %rv
  br label %ret
bb33:
  call void @__olang_check_failed(ptr @olang_loc_60a4feb33ac0cdc_badaef821bc3f128)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2flisting_2ebody(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %v6, ptr %v7, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, ptr %a4, ptr %a5, ptr %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l5 = alloca ptr
  %lp7 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %lp12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca i64
  %l16 = alloca { i64, ptr }
  %l17 = alloca %"std/prelude/text:StringBuilder"
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca ptr
  %l20 = alloca i64
  %l21 = alloca %"compiler/listing:Remark"
  %l23 = alloca { i64, ptr }
  %l24 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l32 = alloca { i64, ptr }
  %l42 = alloca ptr
  %l43 = alloca i64
  %l47 = alloca ptr
  %l49 = alloca { i64, ptr }
  %l51 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l53 = alloca { i64, ptr }
  %l54 = alloca ptr
  %l55 = alloca ptr
  %l56 = alloca i64
  %l59 = alloca { i64, ptr }
  %l60 = alloca %"compiler/listing:Writer"
  %l63 = alloca i64
  %l65 = alloca i64
  %l70 = alloca { i64, ptr }
  %l81 = alloca i64
  %l85 = alloca %"std/prelude/text:StringBuilder"
  %l86 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l88 = alloca i64
  %l90 = alloca i64
  %l95 = alloca %"compiler/listing:Remark"
  %l97 = alloca i1
  %l98 = alloca i1
  %l100 = alloca i1
  %l101 = alloca i1
  %l105 = alloca i1
  %l106 = alloca i1
  %l109 = alloca { i64, ptr }
  %l112 = alloca i1
  %l114 = alloca ptr
  %l115 = alloca i64
  %l119 = alloca { i64, ptr }
  %l124 = alloca { i64, ptr }
  %l126 = alloca i64
  %l129 = alloca { i64, ptr }
  %l133 = alloca i1
  %l135 = alloca { i64, ptr }
  %l138 = alloca { i64, ptr }
  %l139 = alloca { i64, ptr }
  %l141 = alloca i64
  %l144 = alloca i64
  %l146 = alloca { i64, ptr }
  %l148 = alloca { i64, ptr }
  %l149 = alloca { i64, ptr }
  %l151 = alloca i64
  %l157 = alloca ptr
  %l160 = alloca { i64, ptr }
  %l162 = alloca ptr
  %l164 = alloca { i64, ptr }
  %l167 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t84 = alloca %"compiler/listing:Writer", align 8
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store ptr %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v6, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l24
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v6, i64 32, i64 8)
  store ptr %t2, ptr %lp7
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l24
  %t4 = load ptr, ptr %lp7
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  store { i64, ptr } %a3, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t7 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  store i64 %t9, ptr %l10, !tbaa !24
  br label %bb2
bb2:
  %t11 = load i64, ptr %l9, !tbaa !24
  %t12 = load i64, ptr %l10, !tbaa !24
  %t15 = icmp slt i64 %t11, %t12
  %t17 = xor i1 %t15, true
  br i1 %t17, label %bb3, label %bb4
bb3:
  br label %bb8
bb4:
  br label %bb5
bb5:
  %t19 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t19, ptr %l32, !tbaa !27
  %t20 = load i64, ptr %l9, !tbaa !24
  %t22 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = getelementptr { i64, ptr }, ptr %t23, i64 %t20
  %t25 = load { i64, ptr }, ptr %t24, !tbaa !37
  %t27 = load ptr, ptr %lp7
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v6, ptr %v3, ptr %t27, { i64, ptr } %t25)
  br label %bb6
bb6:
  br label %bb7
bb7:
  %t31 = load i64, ptr %l9, !tbaa !24
  %t33 = add i64 %t31, 1
  store i64 %t33, ptr %l9, !tbaa !24
  br label %bb2
bb8:
  %t35 = load ptr, ptr %lp7
  %t36 = load { i64, ptr }, ptr %l1, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v6, ptr %v1, ptr %t35, { i64, ptr } %t36)
  br label %bb9
bb9:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/listing:Inputs", ptr %t39, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !29
  store ptr %t42, ptr %l42, !tbaa !29
  %t43 = ptrtoint ptr %v0 to i64
  store i64 %t43, ptr %l43, !tbaa !24
  %t44 = load i1, ptr @olang_2esole_2ecompiler_2flisting_3aInputs_2e1
  br i1 %t44, label %bb10, label %bb11
bb10:
  %t46 = load ptr, ptr %l42, !tbaa !29
  %t47 = call ptr @__olang_region_or(ptr %t46, ptr %v0)
  %t48 = ptrtoint ptr %t47 to i64
  store i64 %t48, ptr %l43, !tbaa !24
  br label %bb11
bb11:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/listing:Inputs", ptr %t49, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t54 = getelementptr %"compiler/build:Listed", ptr %t52, i32 0, i32 1
  store ptr %t54, ptr %l47, !tbaa !29
  %t55 = load ptr, ptr %lp7
  %t57 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v6, ptr %v6, ptr %t55)
  store { i64, ptr } %t57, ptr %l49
  br label %bb12
bb12:
  %t58 = load ptr, ptr %l5, !tbaa !29
  %t59 = load i64, ptr %l43
  %t60 = inttoptr i64 %t59 to ptr
  %t61 = load ptr, ptr %l47, !tbaa !29
  %t62 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t64 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2flisting_2eRemarks(ptr %t60, ptr %v6, ptr %v5, ptr %v6, ptr %t61, { i64, ptr } %t62, ptr %t58)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t64, ptr %l51
  br label %bb13
bb13:
  %t65 = call ptr @__olang_scope_alloc_a(ptr %v6, i64 32, i64 8)
  store ptr %t65, ptr %lp12
  %t66 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l51
  %t67 = load ptr, ptr %lp12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t66, ptr %t67
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/listing:Inputs", ptr %t68, i32 0, i32 3
  %t71 = load { i64, ptr }, ptr %t70, !tbaa !27
  store { i64, ptr } %t71, ptr %l53, !tbaa !27
  store ptr %a6, ptr %l54, !tbaa !29
  %t73 = load ptr, ptr %lp12
  store ptr %t73, ptr %l55, !tbaa !29
  %t74 = ptrtoint ptr %v6 to i64
  store i64 %t74, ptr %l56, !tbaa !24
  %t75 = load i1, ptr @olang_2esole_2ecompiler_2flisting_3aWriter_2e3
  br i1 %t75, label %bb14, label %bb15
bb14:
  %t77 = call ptr @__olang_region_make(ptr %v6)
  %t78 = ptrtoint ptr %t77 to i64
  store i64 %t78, ptr %l56, !tbaa !24
  br label %bb15
bb15:
  %t79 = load ptr, ptr %lp7
  %t80 = load i64, ptr %l56
  %t81 = inttoptr i64 %t80 to ptr
  %t83 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v6, ptr %t81, ptr %t79)
  store { i64, ptr } %t83, ptr %l59
  br label %bb16
bb16:
  %t85 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t86 = load ptr, ptr %l54, !tbaa !29
  %t87 = load ptr, ptr %l55, !tbaa !29
  %t88 = load { i64, ptr }, ptr %l59, !tbaa !27
  call void @compiler_2flisting_3aWriter_2ector(ptr %t84, ptr %v0, ptr %v6, ptr %v6, ptr %v6, ptr %v6, { i64, ptr } %t85, ptr %t86, ptr %t87, { i64, ptr } %t88)
  call void @llvm.memmove.p0.p0.i64(ptr %l60, ptr %t84, i64 184, i1 false)
  br label %bb17
bb17:
  %t89 = call ptr @__olang_scope_alloc_a(ptr %v6, i64 184, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t89, ptr %l60, i64 184, i1 false)
  store ptr %t89, ptr %l13, !tbaa !29
  store ptr %a4, ptr %l14, !tbaa !29
  store i64 0, ptr %l15, !tbaa !24
  br label %bb18
bb18:
  %t93 = load i64, ptr %l15, !tbaa !24
  store i64 %t93, ptr %l63, !tbaa !24
  %t94 = load ptr, ptr %l14, !tbaa !29
  %t96 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v4, ptr %t94)
  store i64 %t96, ptr %l65
  br label %bb19
bb19:
  %t97 = load i64, ptr %l63, !tbaa !24
  %t98 = load i64, ptr %l65, !tbaa !24
  %t99 = icmp slt i64 %t97, %t98
  %t101 = xor i1 %t99, true
  br i1 %t101, label %bb20, label %bb21
bb20:
  br label %bb34
bb21:
  br label %bb22
bb22:
  %t103 = load ptr, ptr %l14, !tbaa !29
  %t104 = load i64, ptr %l15, !tbaa !24
  %t107 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v4, ptr %v4, ptr %t103, i64 %t104)
  store { i64, ptr } %t107, ptr %l70
  br label %bb23
bb23:
  %t108 = load { i64, ptr }, ptr %l70, !tbaa !27
  store { i64, ptr } %t108, ptr %l16, !tbaa !27
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = getelementptr %"compiler/listing:Inputs", ptr %t109, i32 0, i32 4
  %t112 = load i1, ptr %t111, !tbaa !21
  br i1 %t112, label %bb24, label %bb25
bb24:
  %t114 = load ptr, ptr %l13, !tbaa !29
  %t115 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t116 = load { i64, ptr }, ptr %l1, !tbaa !27
  call void @compiler_2flisting_2ecompiler_2flisting_3aWriter_2eirPart(ptr %v6, ptr %v4, ptr %v1, ptr %v6, ptr %v6, ptr %v6, ptr %t114, { i64, ptr } %t115, { i64, ptr } %t116)
  br label %bb26
bb25:
  %t120 = load ptr, ptr %l13, !tbaa !29
  %t121 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t122 = load { i64, ptr }, ptr %l1, !tbaa !27
  call void @compiler_2flisting_2ecompiler_2flisting_3aWriter_2easmPart(ptr %v6, ptr %v4, ptr %v1, ptr %v6, ptr %v6, ptr %v6, ptr %t120, { i64, ptr } %t121, { i64, ptr } %t122)
  br label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb28
bb28:
  %t126 = load ptr, ptr %l13, !tbaa !29
  %t128 = getelementptr %"compiler/listing:Writer", ptr %t126, i32 0, i32 10
  %t130 = call i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %v6, ptr %t128)
  store i64 %t130, ptr %l81
  br label %bb29
bb29:
  %t131 = load i64, ptr %l81, !tbaa !24
  %t132 = icmp sgt i64 %t131, 0
  br i1 %t132, label %bb30, label %bb31
bb30:
  br label %bb34
bb31:
  br label %bb32
bb32:
  br label %bb33
bb33:
  %t134 = load i64, ptr %l15, !tbaa !24
  %t136 = add i64 %t134, 1
  store i64 %t136, ptr %l15, !tbaa !24
  br label %bb18
bb34:
  %t138 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t138, ptr %l85
  br label %bb35
bb35:
  %t139 = load %"std/prelude/text:StringBuilder", ptr %l85
  store %"std/prelude/text:StringBuilder" %t139, ptr %l17
  %t140 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t140, ptr %l86
  br label %bb36
bb36:
  %t141 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l86
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t141, ptr %l18
  %t142 = load ptr, ptr %lp12
  store ptr %t142, ptr %l19, !tbaa !29
  store i64 0, ptr %l20, !tbaa !24
  br label %bb37
bb37:
  store %olang.scope zeroinitializer, ptr %s11
  %t144 = load i64, ptr %l20, !tbaa !24
  store i64 %t144, ptr %l88, !tbaa !24
  %t145 = load ptr, ptr %l19, !tbaa !29
  %t147 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flisting_3aRemark_3e_2eLen_3ccompiler_2flisting_3aRemark_3e(ptr %v6, ptr %t145)
  store i64 %t147, ptr %l90
  br label %bb38
bb38:
  %t148 = load i64, ptr %l88, !tbaa !24
  %t149 = load i64, ptr %l90, !tbaa !24
  %t150 = icmp slt i64 %t148, %t149
  %t152 = xor i1 %t150, true
  br i1 %t152, label %bb39, label %bb40
bb39:
  call void @__olang_scope_close(ptr %s11)
  br label %bb65
bb40:
  br label %bb41
bb41:
  %t154 = load ptr, ptr %l19, !tbaa !29
  %t155 = load i64, ptr %l20, !tbaa !24
  %t158 = call %"compiler/listing:Remark" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flisting_3aRemark_3e_2eAt_3ccompiler_2flisting_3aRemark_3e(ptr %v6, ptr %v6, ptr %t154, i64 %t155)
  store %"compiler/listing:Remark" %t158, ptr %l95
  br label %bb42
bb42:
  %t159 = load %"compiler/listing:Remark", ptr %l95
  store %"compiler/listing:Remark" %t159, ptr %l21
  %t160 = getelementptr %"compiler/listing:Remark", ptr %l21, i32 0, i32 1
  %t161 = load { i64, ptr }, ptr %t160, !tbaa !27
  %t163 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v6, ptr %s11, { i64, ptr } %t161, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d4, i32 0, i32 1) })
  store i1 %t163, ptr %l97
  br label %bb43
bb43:
  %t164 = load i1, ptr %l97, !tbaa !21
  br i1 %t164, label %bb44, label %bb45
bb44:
  %t165 = getelementptr %"compiler/listing:Remark", ptr %l21, i32 0, i32 0
  %t166 = load { i64, ptr }, ptr %t165, !tbaa !27
  %t168 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v6, ptr %s11, { i64, ptr } %t166, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d5, i32 0, i32 1) })
  store i1 %t168, ptr %l100
  br label %bb46
bb45:
  store i1 false, ptr %l98, !tbaa !21
  br label %bb47
bb46:
  %t169 = load i1, ptr %l100, !tbaa !21
  store i1 %t169, ptr %l98, !tbaa !21
  br label %bb47
bb47:
  %t170 = load i1, ptr %l98, !tbaa !21
  br i1 %t170, label %bb48, label %bb49
bb48:
  %t171 = getelementptr %"compiler/listing:Remark", ptr %l21, i32 0, i32 5
  %t172 = load { i64, ptr }, ptr %t171, !tbaa !27
  %t173 = load ptr, ptr %l13, !tbaa !29
  %t175 = getelementptr %"compiler/listing:Writer", ptr %t173, i32 0, i32 3
  %t176 = load { i64, ptr }, ptr %t175, !tbaa !27
  %t179 = call i1 @compiler_2flisting_2eofAny(ptr %v6, ptr %v6, { i64, ptr } %t172, { i64, ptr } %t176)
  store i1 %t179, ptr %l105
  br label %bb50
bb49:
  store i1 false, ptr %l101, !tbaa !21
  br label %bb51
bb50:
  %t180 = load i1, ptr %l105, !tbaa !21
  store i1 %t180, ptr %l101, !tbaa !21
  br label %bb51
bb51:
  %t181 = load i1, ptr %l101, !tbaa !21
  br i1 %t181, label %bb52, label %bb53
bb52:
  %t182 = load ptr, ptr %l5, !tbaa !29
  %t183 = getelementptr %"compiler/listing:Remark", ptr %l21, i32 0, i32 6
  %t184 = load { i64, ptr }, ptr %t183, !tbaa !27
  %t187 = call { i64, ptr } @compiler_2flisting_2ecompiler_2flisting_3aNamer_2eName(ptr %v5, ptr %v6, ptr %s11, ptr %t182, { i64, ptr } %t184)
  store { i64, ptr } %t187, ptr %l109
  br label %bb54
bb53:
  store i1 false, ptr %l106, !tbaa !21
  br label %bb56
bb54:
  %t188 = load { i64, ptr }, ptr %l109, !tbaa !27
  %t192 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H0127831368543eff3b7740d7d3240080(ptr %s0, ptr %s11, ptr %l18, { i64, ptr } %t188)
  store i1 %t192, ptr %l112
  br label %bb55
bb55:
  %t193 = load i1, ptr %l112, !tbaa !21
  %t194 = xor i1 %t193, true
  store i1 %t194, ptr %l106, !tbaa !21
  br label %bb56
bb56:
  %t196 = load i1, ptr %l106, !tbaa !21
  br i1 %t196, label %bb57, label %bb58
bb57:
  store ptr %l18, ptr %l114, !tbaa !29
  %t197 = ptrtoint ptr %s0 to i64
  store i64 %t197, ptr %l115, !tbaa !24
  %t198 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t198, label %bb59, label %bb60
bb58:
  br label %bb63
bb59:
  %t200 = call ptr @__olang_region_make(ptr %s0)
  %t201 = ptrtoint ptr %t200 to i64
  store i64 %t201, ptr %l115, !tbaa !24
  br label %bb60
bb60:
  %t202 = load ptr, ptr %l5, !tbaa !29
  %t203 = getelementptr %"compiler/listing:Remark", ptr %l21, i32 0, i32 6
  %t204 = load { i64, ptr }, ptr %t203, !tbaa !27
  %t205 = load i64, ptr %l115
  %t206 = inttoptr i64 %t205 to ptr
  %t209 = call { i64, ptr } @compiler_2flisting_2ecompiler_2flisting_3aNamer_2eName(ptr %v5, ptr %v6, ptr %t206, ptr %t202, { i64, ptr } %t204)
  store { i64, ptr } %t209, ptr %l119
  br label %bb61
bb61:
  %t210 = load { i64, ptr }, ptr %l119, !tbaa !27
  %t211 = load i64, ptr %l115
  %t212 = inttoptr i64 %t211 to ptr
  %t213 = extractvalue { i64, ptr } %t210, 0
  %t214 = extractvalue { i64, ptr } %t210, 1
  %t215 = mul i64 %t213, 1
  %t216 = call ptr @__olang_scope_alloc(ptr %t212, i64 %t215)
  call void @llvm.memcpy.p0.p0.i64(ptr %t216, ptr %t214, i64 %t215, i1 false)
  %t217 = insertvalue { i64, ptr } undef, i64 %t213, 0
  %t218 = insertvalue { i64, ptr } %t217, ptr %t216, 1
  %t219 = load ptr, ptr %l114, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t219, { i64, ptr } %t218)
  br label %bb62
bb62:
  br label %bb63
bb63:
  call void @__olang_scope_close(ptr %s11)
  br label %bb64
bb64:
  %t221 = load i64, ptr %l20, !tbaa !24
  %t223 = add i64 %t221, 1
  store i64 %t223, ptr %l20, !tbaa !24
  br label %bb37
bb65:
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t227 = getelementptr %"compiler/listing:Inputs", ptr %t225, i32 0, i32 3
  %t228 = load { i64, ptr }, ptr %t227, !tbaa !27
  store { i64, ptr } %t228, ptr %l124, !tbaa !27
  %t229 = load ptr, ptr %l13, !tbaa !29
  %t231 = getelementptr %"compiler/listing:Writer", ptr %t229, i32 0, i32 11
  %t232 = load i64, ptr %t231, !tbaa !24
  store i64 %t232, ptr %l126, !tbaa !24
  %t233 = load ptr, ptr %l0, !tbaa !29
  %t235 = getelementptr %"compiler/listing:Inputs", ptr %t233, i32 0, i32 4
  %t236 = load i1, ptr %t235, !tbaa !21
  br i1 %t236, label %bb66, label %bb67
bb66:
  store { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d6, i32 0, i32 1) }, ptr %l129, !tbaa !27
  br label %bb68
bb67:
  store { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d7, i32 0, i32 1) }, ptr %l129, !tbaa !27
  br label %bb68
bb68:
  %t238 = load { i64, ptr }, ptr %l124, !tbaa !27
  %t239 = extractvalue { i64, ptr } %t238, 1
  %t240 = extractvalue { i64, ptr } %t238, 0
  %t241 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t242 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  %t243 = add i64 %t240, %t242
  %t244 = load i64, ptr %l126, !tbaa !24
  %t245 = call i64 @__olang_fmt_i64(ptr null, i64 %t244)
  %t246 = add i64 %t243, %t245
  %t247 = load { i64, ptr }, ptr %l129, !tbaa !27
  %t248 = extractvalue { i64, ptr } %t247, 1
  %t249 = extractvalue { i64, ptr } %t247, 0
  %t250 = add i64 %t246, %t249
  %t251 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t250)
  call void @olang_textcopy(ptr %t251, ptr %t239, i64 %t240)
  %t252 = getelementptr i8, ptr %t251, i64 %t240
  call void @olang_textcopy(ptr %t252, ptr %t241, i64 %t242)
  %t253 = getelementptr i8, ptr %t252, i64 %t242
  %t254 = call i64 @__olang_fmt_i64(ptr %t253, i64 %t244)
  %t255 = getelementptr i8, ptr %t253, i64 %t245
  call void @olang_textcopy(ptr %t255, ptr %t248, i64 %t249)
  %t256 = insertvalue { i64, ptr } undef, i64 %t250, 0
  %t257 = insertvalue { i64, ptr } %t256, ptr %t251, 1
  store { i64, ptr } %t257, ptr %l23, !tbaa !27
  %t259 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t263 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %v2, { i64, ptr } %t259, { i64, ptr } %a2)
  store i1 %t263, ptr %l133
  br label %bb69
bb69:
  %t264 = load i1, ptr %l133, !tbaa !21
  %t265 = xor i1 %t264, true
  br i1 %t265, label %bb70, label %bb71
bb70:
  store %olang.scope zeroinitializer, ptr %s15
  %t267 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t267, ptr %l135, !tbaa !27
  %t268 = load ptr, ptr %l5, !tbaa !29
  %t269 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t272 = call { i64, ptr } @compiler_2flisting_2ecompiler_2flisting_3aNamer_2eName(ptr %v5, ptr %v1, ptr %s15, ptr %t268, { i64, ptr } %t269)
  store { i64, ptr } %t272, ptr %l138
  br label %bb72
bb71:
  br label %bb76
bb72:
  %t273 = load { i64, ptr }, ptr %l135, !tbaa !27
  %t274 = extractvalue { i64, ptr } %t273, 1
  %t275 = extractvalue { i64, ptr } %t273, 0
  %t276 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t277 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  %t278 = add i64 %t275, %t277
  %t279 = load { i64, ptr }, ptr %l138, !tbaa !27
  %t280 = extractvalue { i64, ptr } %t279, 1
  %t281 = extractvalue { i64, ptr } %t279, 0
  %t282 = add i64 %t278, %t281
  %t283 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t284 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  %t285 = add i64 %t282, %t284
  %t286 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t285)
  call void @olang_textcopy(ptr %t286, ptr %t274, i64 %t275)
  %t287 = getelementptr i8, ptr %t286, i64 %t275
  call void @olang_textcopy(ptr %t287, ptr %t276, i64 %t277)
  %t288 = getelementptr i8, ptr %t287, i64 %t277
  call void @olang_textcopy(ptr %t288, ptr %t280, i64 %t281)
  %t289 = getelementptr i8, ptr %t288, i64 %t281
  call void @olang_textcopy(ptr %t289, ptr %t283, i64 %t284)
  %t290 = insertvalue { i64, ptr } undef, i64 %t285, 0
  %t291 = insertvalue { i64, ptr } %t290, ptr %t286, 1
  store { i64, ptr } %t291, ptr %l139, !tbaa !27
  %t292 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t293 = extractvalue { i64, ptr } %t292, 0
  %t294 = load { i64, ptr }, ptr %l139, !tbaa !27
  %t295 = extractvalue { i64, ptr } %t294, 0
  store i64 %t295, ptr %l141, !tbaa !24
  %t297 = load i64, ptr %l141, !tbaa !24
  %t298 = icmp eq i64 %t293, %t297
  br i1 %t298, label %bb73, label %bb74
bb73:
  %t300 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t301 = load ptr, ptr %t300, !tbaa !27
  %t302 = getelementptr { i64, ptr }, ptr %l139, i32 0, i32 1
  %t303 = load ptr, ptr %t302, !tbaa !27
  %t304 = load i64, ptr %l141, !tbaa !24
  %t305 = mul i64 %t304, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t301, ptr %t303, i64 %t305, i1 false)
  br label %bb75
bb74:
  %t306 = load { i64, ptr }, ptr %l139, !tbaa !27
  store { i64, ptr } %t306, ptr %l23, !tbaa !27
  br label %bb75
bb75:
  call void @__olang_scope_close(ptr %s15)
  br label %bb76
bb76:
  %t308 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l18)
  store i64 %t308, ptr %l144
  br label %bb77
bb77:
  %t309 = load i64, ptr %l144, !tbaa !24
  %t310 = icmp sgt i64 %t309, 0
  br i1 %t310, label %bb78, label %bb79
bb78:
  store %olang.scope zeroinitializer, ptr %s17
  %t312 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t312, ptr %l146, !tbaa !27
  %t314 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %s0, ptr %s17, ptr %s17, ptr %l18, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d11, i32 0, i32 1) })
  store { i64, ptr } %t314, ptr %l148
  br label %bb80
bb79:
  br label %bb84
bb80:
  %t315 = load { i64, ptr }, ptr %l146, !tbaa !27
  %t316 = extractvalue { i64, ptr } %t315, 1
  %t317 = extractvalue { i64, ptr } %t315, 0
  %t318 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t319 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  %t320 = add i64 %t317, %t319
  %t321 = load { i64, ptr }, ptr %l148, !tbaa !27
  %t322 = extractvalue { i64, ptr } %t321, 1
  %t323 = extractvalue { i64, ptr } %t321, 0
  %t324 = add i64 %t320, %t323
  %t325 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t324)
  call void @olang_textcopy(ptr %t325, ptr %t316, i64 %t317)
  %t326 = getelementptr i8, ptr %t325, i64 %t317
  call void @olang_textcopy(ptr %t326, ptr %t318, i64 %t319)
  %t327 = getelementptr i8, ptr %t326, i64 %t319
  call void @olang_textcopy(ptr %t327, ptr %t322, i64 %t323)
  %t328 = insertvalue { i64, ptr } undef, i64 %t324, 0
  %t329 = insertvalue { i64, ptr } %t328, ptr %t325, 1
  store { i64, ptr } %t329, ptr %l149, !tbaa !27
  %t330 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t331 = extractvalue { i64, ptr } %t330, 0
  %t332 = load { i64, ptr }, ptr %l149, !tbaa !27
  %t333 = extractvalue { i64, ptr } %t332, 0
  store i64 %t333, ptr %l151, !tbaa !24
  %t335 = load i64, ptr %l151, !tbaa !24
  %t336 = icmp eq i64 %t331, %t335
  br i1 %t336, label %bb81, label %bb82
bb81:
  %t338 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t339 = load ptr, ptr %t338, !tbaa !27
  %t340 = getelementptr { i64, ptr }, ptr %l149, i32 0, i32 1
  %t341 = load ptr, ptr %t340, !tbaa !27
  %t342 = load i64, ptr %l151, !tbaa !24
  %t343 = mul i64 %t342, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t339, ptr %t341, i64 %t343, i1 false)
  br label %bb83
bb82:
  %t344 = load { i64, ptr }, ptr %l149, !tbaa !27
  store { i64, ptr } %t344, ptr %l23, !tbaa !27
  br label %bb83
bb83:
  call void @__olang_scope_close(ptr %s17)
  br label %bb84
bb84:
  %t345 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t347 = extractvalue { i64, ptr } %t345, 1
  %t348 = extractvalue { i64, ptr } %t345, 0
  %t349 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t350 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
  %t351 = add i64 %t348, %t350
  %t352 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t351)
  call void @olang_textcopy(ptr %t352, ptr %t347, i64 %t348)
  %t353 = getelementptr i8, ptr %t352, i64 %t348
  call void @olang_textcopy(ptr %t353, ptr %t349, i64 %t350)
  %t354 = insertvalue { i64, ptr } undef, i64 %t351, 0
  %t355 = insertvalue { i64, ptr } %t354, ptr %t352, 1
  %t357 = extractvalue { i64, ptr } %t355, 0
  %t358 = extractvalue { i64, ptr } %t355, 1
  %t359 = mul i64 %t357, 1
  %t360 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t359)
  call void @llvm.memcpy.p0.p0.i64(ptr %t360, ptr %t358, i64 %t359, i1 false)
  %t361 = insertvalue { i64, ptr } undef, i64 %t357, 0
  %t362 = insertvalue { i64, ptr } %t361, ptr %t360, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l17, { i64, ptr } %t362)
  br label %bb85
bb85:
  store ptr %l17, ptr %l157, !tbaa !29
  %t365 = load ptr, ptr %l13, !tbaa !29
  %t367 = getelementptr %"compiler/listing:Writer", ptr %t365, i32 0, i32 10
  %t369 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v6, ptr %s0, ptr %t367)
  store { i64, ptr } %t369, ptr %l160
  br label %bb86
bb86:
  %t370 = load { i64, ptr }, ptr %l160, !tbaa !27
  %t371 = extractvalue { i64, ptr } %t370, 0
  %t372 = extractvalue { i64, ptr } %t370, 1
  %t373 = mul i64 %t371, 1
  %t374 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t373)
  call void @llvm.memcpy.p0.p0.i64(ptr %t374, ptr %t372, i64 %t373, i1 false)
  %t375 = insertvalue { i64, ptr } undef, i64 %t371, 0
  %t376 = insertvalue { i64, ptr } %t375, ptr %t374, 1
  %t377 = load ptr, ptr %l157, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t377, { i64, ptr } %t376)
  br label %bb87
bb87:
  store ptr %l17, ptr %l162, !tbaa !29
  %t379 = load ptr, ptr %l13, !tbaa !29
  %t381 = call { i64, ptr } @compiler_2flisting_2ecompiler_2flisting_3aWriter_2eleftover(ptr %v6, ptr %s0, ptr %v6, ptr %v6, ptr %v6, ptr %t379)
  store { i64, ptr } %t381, ptr %l164
  br label %bb88
bb88:
  %t382 = load { i64, ptr }, ptr %l164, !tbaa !27
  %t383 = extractvalue { i64, ptr } %t382, 0
  %t384 = extractvalue { i64, ptr } %t382, 1
  %t385 = mul i64 %t383, 1
  %t386 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t385)
  call void @llvm.memcpy.p0.p0.i64(ptr %t386, ptr %t384, i64 %t385, i1 false)
  %t387 = insertvalue { i64, ptr } undef, i64 %t383, 0
  %t388 = insertvalue { i64, ptr } %t387, ptr %t386, 1
  %t389 = load ptr, ptr %l162, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t389, { i64, ptr } %t388)
  br label %bb89
bb89:
  %t392 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v7, ptr %l17)
  store { i64, ptr } %t392, ptr %l167
  br label %bb90
bb90:
  call void @__olang_scope_close(ptr %s0)
  %t393 = load { i64, ptr }, ptr %l167, !tbaa !27
  store { i64, ptr } %t393, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2flisting_2ecommentOf(ptr %v0, ptr %v1, ptr %a0, i1 %a1) #0 {
entry:
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l9 = alloca i1
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  br i1 %a1, label %bb1, label %bb2
bb1:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) }, ptr %l3, !tbaa !27
  %t3 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t3, ptr %l4, !tbaa !27
  %t4 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t4, 0
  store i64 %t5, ptr %l5, !tbaa !24
  %t6 = load i64, ptr %l5, !tbaa !24
  %t7 = mul i64 %t6, 1
  %t8 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t7)
  %t9 = insertvalue { i64, ptr } undef, i64 %t6, 0
  %t10 = insertvalue { i64, ptr } %t9, ptr %t8, 1
  store { i64, ptr } %t10, ptr %l6, !tbaa !27
  %t11 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !27
  %t13 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !27
  %t15 = load i64, ptr %l5, !tbaa !24
  %t16 = mul i64 %t15, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t12, ptr %t14, i64 %t16, i1 false)
  %t17 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t17, ptr %l4, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t18 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t21 = getelementptr %"compiler/build:Config", ptr %a0, i32 0, i32 2
  %t22 = getelementptr %"compiler/target:Target", ptr %t21, i32 0, i32 2
  %t23 = load { i64, ptr }, ptr %t22, !tbaa !27
  %t25 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t23, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d15, i32 0, i32 1) })
  store i1 %t25, ptr %l9
  br label %bb4
bb4:
  %t26 = load i1, ptr %l9, !tbaa !21
  br i1 %t26, label %bb5, label %bb6
bb5:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d16, i32 0, i32 1) }, ptr %l11, !tbaa !27
  %t27 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t27, ptr %l10, !tbaa !27
  br label %bb7
bb6:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, ptr %l13, !tbaa !27
  %t29 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t29, ptr %l10, !tbaa !27
  br label %bb7
bb7:
  %t31 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t31, 0
  store i64 %t32, ptr %l15, !tbaa !24
  %t33 = load i64, ptr %l15, !tbaa !24
  %t34 = mul i64 %t33, 1
  %t35 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t34)
  %t36 = insertvalue { i64, ptr } undef, i64 %t33, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t35, 1
  store { i64, ptr } %t37, ptr %l16, !tbaa !27
  %t38 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !27
  %t40 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !27
  %t42 = load i64, ptr %l15, !tbaa !24
  %t43 = mul i64 %t42, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t39, ptr %t41, i64 %t43, i1 false)
  %t44 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t44, ptr %l10, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t45 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t45, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2flisting_2ecompiler_2flisting_3aNamer_2etypesNamed(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca %"std/prelude/text:StringBuilder"
  %l20 = alloca { i64, ptr }
  %l29 = alloca i1
  %l30 = alloca { i64, ptr }
  %l34 = alloca i1
  %l39 = alloca ptr
  %l40 = alloca { i64, ptr }
  %l41 = alloca i64
  %l42 = alloca i64
  %l43 = alloca i64
  %l48 = alloca { i64, ptr }
  %l49 = alloca i64
  %l50 = alloca i64
  %l51 = alloca i64
  %l56 = alloca ptr
  %l57 = alloca { i64, ptr }
  %l61 = alloca i1
  %l62 = alloca { i64, ptr }
  %l68 = alloca ptr
  %l69 = alloca { i64, ptr }
  %l70 = alloca i64
  %l73 = alloca i64
  %l74 = alloca i64
  %l80 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l11
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l11
  store %"std/prelude/text:StringBuilder" %t2, ptr %l2
  store i64 0, ptr %l3, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t3, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t5 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  store i64 %t7, ptr %l6, !tbaa !24
  br label %bb2
bb2:
  store %olang.scope zeroinitializer, ptr %s2
  %t9 = load i64, ptr %l5, !tbaa !24
  %t10 = load i64, ptr %l6, !tbaa !24
  %t13 = icmp slt i64 %t9, %t10
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s2)
  br label %bb36
bb4:
  br label %bb5
bb5:
  %t17 = load i64, ptr %l5, !tbaa !24
  store i64 %t17, ptr %l7, !tbaa !24
  %t19 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t19, ptr %l20, !tbaa !27
  %t20 = load i64, ptr %l5, !tbaa !24
  %t22 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = getelementptr i8, ptr %t23, i64 %t20
  %t25 = load i8, ptr %t24, !tbaa !32
  %t29 = icmp ne i8 %t25, 58
  br i1 %t29, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s2)
  br label %bb35
bb7:
  br label %bb8
bb8:
  %t31 = load i64, ptr %l7, !tbaa !24
  store i64 %t31, ptr %l9, !tbaa !24
  br label %bb9
bb9:
  %t33 = load i64, ptr %l9, !tbaa !24
  %t34 = load i64, ptr %l3, !tbaa !24
  %t37 = icmp sgt i64 %t33, %t34
  br i1 %t37, label %bb10, label %bb11
bb10:
  %t39 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t39, ptr %l30, !tbaa !27
  %t40 = load i64, ptr %l9, !tbaa !24
  %t42 = sub i64 %t40, 1
  %t44 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !27
  %t46 = getelementptr i8, ptr %t45, i64 %t42
  %t47 = load i8, ptr %t46, !tbaa !32
  %t49 = call i1 @compiler_2flisting_2etypeDelim(i8 %t47)
  store i1 %t49, ptr %l34
  br label %bb12
bb11:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb13
bb12:
  %t50 = load i1, ptr %l34, !tbaa !21
  %t51 = xor i1 %t50, true
  store i1 %t51, ptr %l29, !tbaa !21
  br label %bb13
bb13:
  %t53 = load i1, ptr %l29, !tbaa !21
  %t54 = xor i1 %t53, true
  br i1 %t54, label %bb14, label %bb15
bb14:
  br label %bb18
bb15:
  br label %bb16
bb16:
  %t56 = load i64, ptr %l9, !tbaa !24
  %t58 = sub i64 %t56, 1
  store i64 %t58, ptr %l9, !tbaa !24
  br label %bb17
bb17:
  br label %bb9
bb18:
  store ptr %l2, ptr %l39, !tbaa !29
  %t60 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t60, ptr %l40, !tbaa !27
  %t61 = load i64, ptr %l3, !tbaa !24
  store i64 %t61, ptr %l41, !tbaa !24
  %t62 = load i64, ptr %l9, !tbaa !24
  store i64 %t62, ptr %l42, !tbaa !24
  %t63 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t64 = extractvalue { i64, ptr } %t63, 0
  store i64 %t64, ptr %l43, !tbaa !24
  %t65 = load i64, ptr %l41, !tbaa !24
  %t66 = icmp sge i64 %t65, 0
  br i1 %t66, label %bb19, label %bb20
bb19:
  %t68 = load i64, ptr %l41, !tbaa !24
  %t69 = load i64, ptr %l42, !tbaa !24
  %t70 = icmp sle i64 %t68, %t69
  br i1 %t70, label %bb21, label %bb22
bb20:
  call void @__olang_check_failed(ptr @olang_loc_49807d4f96be5ab6_2af2c5a6dfc4a7ea)
  unreachable
bb21:
  %t72 = load i64, ptr %l42, !tbaa !24
  %t73 = load i64, ptr %l43, !tbaa !24
  %t74 = icmp sle i64 %t72, %t73
  br i1 %t74, label %bb23, label %bb24
bb22:
  call void @__olang_check_failed(ptr @olang_loc_49807d4f96be5ab6_2af2c5a6dfc4a7ea)
  unreachable
bb23:
  %t76 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !27
  %t78 = load i64, ptr %l41, !tbaa !24
  %t79 = load i64, ptr %l42, !tbaa !24
  %t80 = getelementptr i8, ptr %t77, i64 %t78
  %t81 = sub i64 %t79, %t78
  %t82 = insertvalue { i64, ptr } undef, i64 %t81, 0
  %t83 = insertvalue { i64, ptr } %t82, ptr %t80, 1
  %t84 = load ptr, ptr %l39, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v1, ptr %t84, { i64, ptr } %t83)
  br label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_49807d4f96be5ab6_2af2c5a6dfc4a7ea)
  unreachable
bb25:
  %t86 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t86, ptr %l48, !tbaa !27
  %t87 = load i64, ptr %l9, !tbaa !24
  store i64 %t87, ptr %l49, !tbaa !24
  %t88 = load i64, ptr %l7, !tbaa !24
  store i64 %t88, ptr %l50, !tbaa !24
  %t89 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t90 = extractvalue { i64, ptr } %t89, 0
  store i64 %t90, ptr %l51, !tbaa !24
  %t91 = load i64, ptr %l49, !tbaa !24
  %t92 = icmp sge i64 %t91, 0
  br i1 %t92, label %bb26, label %bb27
bb26:
  %t94 = load i64, ptr %l49, !tbaa !24
  %t95 = load i64, ptr %l50, !tbaa !24
  %t96 = icmp sle i64 %t94, %t95
  br i1 %t96, label %bb28, label %bb29
bb27:
  call void @__olang_check_failed(ptr @olang_loc_4991736aef41bf13_e517855ef6f4ebc7)
  unreachable
bb28:
  %t98 = load i64, ptr %l50, !tbaa !24
  %t99 = load i64, ptr %l51, !tbaa !24
  %t100 = icmp sle i64 %t98, %t99
  br i1 %t100, label %bb30, label %bb31
bb29:
  call void @__olang_check_failed(ptr @olang_loc_4991736aef41bf13_e517855ef6f4ebc7)
  unreachable
bb30:
  %t102 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t103 = load ptr, ptr %t102, !tbaa !27
  %t104 = load i64, ptr %l49, !tbaa !24
  %t105 = load i64, ptr %l50, !tbaa !24
  %t106 = getelementptr i8, ptr %t103, i64 %t104
  %t107 = sub i64 %t105, %t104
  %t108 = insertvalue { i64, ptr } undef, i64 %t107, 0
  %t109 = insertvalue { i64, ptr } %t108, ptr %t106, 1
  store { i64, ptr } %t109, ptr %l10, !tbaa !27
  store ptr %l2, ptr %l56, !tbaa !29
  %t111 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t111, ptr %l57, !tbaa !27
  %t112 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t115 = getelementptr %"compiler/listing:Namer", ptr %a0, i32 0, i32 0
  %t116 = load { i64, ptr }, ptr %t115, !tbaa !27
  %t119 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %v0, { i64, ptr } %t112, { i64, ptr } %t116)
  store i1 %t119, ptr %l61
  br label %bb32
bb31:
  call void @__olang_check_failed(ptr @olang_loc_4991736aef41bf13_e517855ef6f4ebc7)
  unreachable
bb32:
  %t120 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t121 = load i1, ptr %l61, !tbaa !21
  %t122 = call { i64, ptr } @compiler_2fload_2eErrQualifier(ptr %v1, ptr %s2, { i64, ptr } %t120, i1 %t121)
  store { i64, ptr } %t122, ptr %l62
  br label %bb33
bb33:
  %t123 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t124 = extractvalue { i64, ptr } %t123, 0
  %t125 = extractvalue { i64, ptr } %t123, 1
  %t126 = mul i64 %t124, 1
  %t127 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t126)
  call void @llvm.memcpy.p0.p0.i64(ptr %t127, ptr %t125, i64 %t126, i1 false)
  %t128 = insertvalue { i64, ptr } undef, i64 %t124, 0
  %t129 = insertvalue { i64, ptr } %t128, ptr %t127, 1
  %t130 = load ptr, ptr %l56, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %t130, { i64, ptr } %t129)
  br label %bb34
bb34:
  %t132 = load i64, ptr %l7, !tbaa !24
  %t134 = add i64 %t132, 1
  store i64 %t134, ptr %l3, !tbaa !24
  call void @__olang_scope_close(ptr %s2)
  br label %bb35
bb35:
  %t136 = load i64, ptr %l5, !tbaa !24
  %t138 = add i64 %t136, 1
  store i64 %t138, ptr %l5, !tbaa !24
  br label %bb2
bb36:
  store ptr %l2, ptr %l68, !tbaa !29
  %t140 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t140, ptr %l69, !tbaa !27
  %t141 = load i64, ptr %l3, !tbaa !24
  store i64 %t141, ptr %l70, !tbaa !24
  %t142 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t145 = extractvalue { i64, ptr } %t142, 0
  store i64 %t145, ptr %l73, !tbaa !24
  %t146 = load { i64, ptr }, ptr %l69, !tbaa !27
  %t147 = extractvalue { i64, ptr } %t146, 0
  store i64 %t147, ptr %l74, !tbaa !24
  %t148 = load i64, ptr %l70, !tbaa !24
  %t149 = icmp sge i64 %t148, 0
  br i1 %t149, label %bb37, label %bb38
bb37:
  %t151 = load i64, ptr %l70, !tbaa !24
  %t152 = load i64, ptr %l73, !tbaa !24
  %t153 = icmp sle i64 %t151, %t152
  br i1 %t153, label %bb39, label %bb40
bb38:
  call void @__olang_check_failed(ptr @olang_loc_3adca15b088d1ab8_ad89d21976d6c71c)
  unreachable
bb39:
  %t155 = load i64, ptr %l73, !tbaa !24
  %t156 = load i64, ptr %l74, !tbaa !24
  %t157 = icmp sle i64 %t155, %t156
  br i1 %t157, label %bb41, label %bb42
bb40:
  call void @__olang_check_failed(ptr @olang_loc_3adca15b088d1ab8_ad89d21976d6c71c)
  unreachable
bb41:
  %t159 = getelementptr { i64, ptr }, ptr %l69, i32 0, i32 1
  %t160 = load ptr, ptr %t159, !tbaa !27
  %t161 = load i64, ptr %l70, !tbaa !24
  %t162 = load i64, ptr %l73, !tbaa !24
  %t163 = getelementptr i8, ptr %t160, i64 %t161
  %t164 = sub i64 %t162, %t161
  %t165 = insertvalue { i64, ptr } undef, i64 %t164, 0
  %t166 = insertvalue { i64, ptr } %t165, ptr %t163, 1
  %t167 = load ptr, ptr %l68, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v1, ptr %t167, { i64, ptr } %t166)
  br label %bb43
bb42:
  call void @__olang_check_failed(ptr @olang_loc_3adca15b088d1ab8_ad89d21976d6c71c)
  unreachable
bb43:
  %t170 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v2, ptr %l2)
  store { i64, ptr } %t170, ptr %l80
  br label %bb44
bb44:
  call void @__olang_scope_close(ptr %s0)
  %t171 = load { i64, ptr }, ptr %l80, !tbaa !27
  store { i64, ptr } %t171, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2flisting_2ecompiler_2flisting_3aSources_2eShown(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l4 = alloca i1
  %l6 = alloca i1
  %l12 = alloca i1
  %l13 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l18 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/listing:Sources", ptr %t1, i32 0, i32 1
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t4, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d18, i32 0, i32 1) })
  store i1 %t6, ptr %l4
  br label %bb1
bb1:
  %t7 = load i1, ptr %l4, !tbaa !21
  %t8 = xor i1 %t7, true
  br i1 %t8, label %bb2, label %bb3
bb2:
  %t10 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/listing:Sources", ptr %t11, i32 0, i32 1
  %t14 = load { i64, ptr }, ptr %t13, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t14, 1
  %t17 = extractvalue { i64, ptr } %t14, 0
  %t18 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  %t20 = add i64 %t17, %t19
  %t21 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t20)
  call void @olang_textcopy(ptr %t21, ptr %t16, i64 %t17)
  %t22 = getelementptr i8, ptr %t21, i64 %t17
  call void @olang_textcopy(ptr %t22, ptr %t18, i64 %t19)
  %t23 = insertvalue { i64, ptr } undef, i64 %t20, 0
  %t24 = insertvalue { i64, ptr } %t23, ptr %t21, 1
  %t26 = extractvalue { i64, ptr } %t24, 0
  %t27 = extractvalue { i64, ptr } %t24, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  %t34 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s0, { i64, ptr } %t10, { i64, ptr } %t31)
  store i1 %t34, ptr %l12
  br label %bb4
bb3:
  store i1 false, ptr %l6, !tbaa !21
  br label %bb5
bb4:
  %t35 = load i1, ptr %l12, !tbaa !21
  store i1 %t35, ptr %l6, !tbaa !21
  br label %bb5
bb5:
  %t36 = load i1, ptr %l6, !tbaa !21
  br i1 %t36, label %bb6, label %bb7
bb6:
  %t37 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t37, ptr %l14, !tbaa !27
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/listing:Sources", ptr %t38, i32 0, i32 1
  %t41 = load { i64, ptr }, ptr %t40, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t41, 0
  %t45 = add i64 %t43, 1
  store i64 %t45, ptr %l18, !tbaa !24
  %t46 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t49 = extractvalue { i64, ptr } %t46, 0
  store i64 %t49, ptr %l21, !tbaa !24
  %t50 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t51 = extractvalue { i64, ptr } %t50, 0
  store i64 %t51, ptr %l22, !tbaa !24
  %t52 = load i64, ptr %l18, !tbaa !24
  %t53 = icmp sge i64 %t52, 0
  br i1 %t53, label %bb8, label %bb9
bb7:
  %t55 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t57 = extractvalue { i64, ptr } %t55, 1
  %t58 = extractvalue { i64, ptr } %t55, 0
  %t59 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t58)
  call void @olang_textcopy(ptr %t59, ptr %t57, i64 %t58)
  %t60 = insertvalue { i64, ptr } undef, i64 %t58, 0
  %t61 = insertvalue { i64, ptr } %t60, ptr %t59, 1
  store { i64, ptr } %t61, ptr %l13, !tbaa !27
  br label %bb14
bb8:
  %t63 = load i64, ptr %l18, !tbaa !24
  %t64 = load i64, ptr %l21, !tbaa !24
  %t65 = icmp sle i64 %t63, %t64
  br i1 %t65, label %bb10, label %bb11
bb9:
  call void @__olang_check_failed(ptr @olang_loc_1b7d32817576de5e_73fc7def7ca382d2)
  unreachable
bb10:
  %t67 = load i64, ptr %l21, !tbaa !24
  %t68 = load i64, ptr %l22, !tbaa !24
  %t69 = icmp sle i64 %t67, %t68
  br i1 %t69, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_1b7d32817576de5e_73fc7def7ca382d2)
  unreachable
bb12:
  %t71 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !27
  %t73 = load i64, ptr %l18, !tbaa !24
  %t74 = load i64, ptr %l21, !tbaa !24
  %t75 = getelementptr i8, ptr %t72, i64 %t73
  %t76 = sub i64 %t74, %t73
  %t77 = insertvalue { i64, ptr } undef, i64 %t76, 0
  %t78 = insertvalue { i64, ptr } %t77, ptr %t75, 1
  %t79 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t80 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  %t82 = extractvalue { i64, ptr } %t78, 1
  %t83 = extractvalue { i64, ptr } %t78, 0
  %t84 = add i64 %t80, %t83
  %t85 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t84)
  call void @olang_textcopy(ptr %t85, ptr %t79, i64 %t80)
  %t86 = getelementptr i8, ptr %t85, i64 %t80
  call void @olang_textcopy(ptr %t86, ptr %t82, i64 %t83)
  %t87 = insertvalue { i64, ptr } undef, i64 %t84, 0
  %t88 = insertvalue { i64, ptr } %t87, ptr %t85, 1
  store { i64, ptr } %t88, ptr %l13, !tbaa !27
  br label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_1b7d32817576de5e_73fc7def7ca382d2)
  unreachable
bb14:
  call void @__olang_scope_close(ptr %s0)
  %t90 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t90, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2flisting_2ecompiler_2flisting_3aSources_2eText(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %lp3 = alloca ptr
  %l5 = alloca %"std/prelude/text:LineIter"
  %l7 = alloca { i64, ptr }
  %l11 = alloca i1
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l17 = alloca i32
  %l19 = alloca i1
  %l23 = alloca %"std/prelude/text:LineIter"
  %l24 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l27 = alloca i32
  %l29 = alloca i1
  %l33 = alloca ptr
  %l34 = alloca { i64, ptr }
  %l35 = alloca i64
  %l38 = alloca { i64, ptr }
  %l39 = alloca { i64, ptr }
  %l43 = alloca { i64, ptr }
  %l44 = alloca i32
  %l50 = alloca i1
  %l55 = alloca { i64, ptr }
  %l56 = alloca { i64, ptr }
  %l60 = alloca { i64, ptr }
  %l62 = alloca { i64, ptr }
  %l64 = alloca i64
  %l65 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/listing:Sources", ptr %t1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t7 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H7e371d56fd28e687545500cc2dc4b78e(ptr %v0, ptr %v1, ptr %t3, { i64, ptr } %t4)
  store i1 %t7, ptr %l11
  br label %bb1
bb1:
  %t8 = load i1, ptr %l11, !tbaa !21
  %t9 = xor i1 %t8, true
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t11, ptr %l13
  br label %bb4
bb3:
  br label %bb24
bb4:
  %t12 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store ptr %t12, ptr %lp3
  %t13 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  %t14 = load ptr, ptr %lp3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t13, ptr %t14
  %t15 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t17 = call { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %v1, ptr %v0, { i64, ptr } %t15)
  %t18 = extractvalue { i32, { i64, ptr } } %t17, 1
  %t19 = extractvalue { i32, { i64, ptr } } %t17, 0
  store i32 %t19, ptr %l17
  %t20 = icmp ne i32 %t19, 0
  br i1 %t20, label %bb6, label %ok.21, !prof !99
ok.21:
  store { i64, ptr } %t18, ptr %l16
  br label %bb5
bb5:
  %t22 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t22, ptr %l14, !tbaa !27
  br label %bb10
bb6:
  %t23 = load i32, ptr %l17, !tbaa !23
  %t24 = ashr i32 %t23, 16
  %t26 = icmp eq i32 %t24, 1
  store i1 %t26, ptr %l19, !tbaa !21
  %t27 = load i32, ptr %l17, !tbaa !23
  %t28 = ashr i32 %t27, 16
  %t30 = icmp eq i32 %t28, 1
  br i1 %t30, label %bb7, label %bb8
bb7:
  call void @__olang_errpay_pop()
  br label %bb8
bb8:
  br label %bb9
bb9:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d21, i32 0, i32 1) }, ptr %l14, !tbaa !27
  br label %bb10
bb10:
  %t32 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t35 = call %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %v0, ptr %v0, { i64, ptr } %t32)
  store %"std/prelude/text:LineIter" %t35, ptr %l23
  br label %bb11
bb11:
  %t36 = load %"std/prelude/text:LineIter", ptr %l23
  store %"std/prelude/text:LineIter" %t36, ptr %l5
  br label %bb12
bb12:
  %t38 = call { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %v0, ptr %v0, ptr %l5)
  %t39 = extractvalue { i32, { i64, ptr } } %t38, 1
  %t40 = extractvalue { i32, { i64, ptr } } %t38, 0
  store i32 %t40, ptr %l27
  %t41 = icmp ne i32 %t40, 0
  br i1 %t41, label %bb14, label %ok.42, !prof !99
ok.42:
  store { i64, ptr } %t39, ptr %l26
  br label %bb13
bb13:
  %t43 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t43, ptr %l24, !tbaa !27
  br label %bb16
bb14:
  %t44 = load i32, ptr %l27, !tbaa !23
  %t45 = ashr i32 %t44, 16
  %t47 = icmp eq i32 %t45, 1
  store i1 %t47, ptr %l29, !tbaa !21
  br label %bb15
bb15:
  br label %bb19
bb16:
  %t48 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t49 = load ptr, ptr %lp3
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t49, { i64, ptr } %t48)
  br label %bb17
bb17:
  br label %bb18
bb18:
  br label %bb12
bb19:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/listing:Sources", ptr %t53, i32 0, i32 0
  store ptr %t55, ptr %l33, !tbaa !29
  %t56 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t56, ptr %l34, !tbaa !27
  %t57 = ptrtoint ptr %v0 to i64
  store i64 %t57, ptr %l35, !tbaa !24
  %t58 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20Ar_Hc159a7d0a154ef35bbad4e01018de015
  br i1 %t58, label %bb20, label %bb21
bb20:
  %t60 = call ptr @__olang_region_make(ptr %v0)
  %t61 = ptrtoint ptr %t60 to i64
  store i64 %t61, ptr %l35, !tbaa !24
  br label %bb21
bb21:
  %t62 = load ptr, ptr %lp3
  %t63 = load i64, ptr %l35
  %t64 = inttoptr i64 %t63 to ptr
  %t66 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v0, ptr %t64, ptr %t62)
  store { i64, ptr } %t66, ptr %l38
  br label %bb22
bb22:
  %t67 = load ptr, ptr %l33, !tbaa !29
  %t68 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t69 = load { i64, ptr }, ptr %l38, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_He566606ea489086acfe37a2d8fe143fc(ptr %v0, ptr %v1, ptr %v0, ptr %t67, { i64, ptr } %t68, { i64, ptr } %t69)
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/listing:Sources", ptr %t70, i32 0, i32 0
  %t73 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t76 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H1a06a15e944bd533c307ed632a66227d(ptr %v0, ptr %v1, ptr %v0, ptr %t72, { i64, ptr } %t73)
  %t77 = extractvalue { i32, { i64, ptr } } %t76, 1
  %t78 = extractvalue { i32, { i64, ptr } } %t76, 0
  store i32 %t78, ptr %l44
  %t79 = icmp ne i32 %t78, 0
  br i1 %t79, label %bb26, label %ok.80, !prof !99
ok.80:
  store { i64, ptr } %t77, ptr %l43
  br label %bb25
bb25:
  %t81 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t81, ptr %l39, !tbaa !27
  br label %bb32
bb26:
  br label %bb27
bb27:
  %t82 = icmp sge i64 0, 0
  br i1 %t82, label %bb28, label %bb29
bb28:
  %t84 = icmp sle i64 0, 576460752303423487
  br i1 %t84, label %bb30, label %bb31
bb29:
  call void @__olang_check_failed(ptr @olang_loc_3ba8e4c8ab4044f8_de2322bbe0a12f8c)
  unreachable
bb30:
  %t86 = mul i64 0, 16
  %t87 = insertvalue { i64, ptr } undef, i64 0, 0
  %t88 = insertvalue { i64, ptr } %t87, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t88, ptr %l39, !tbaa !27
  br label %bb32
bb31:
  call void @__olang_check_failed(ptr @olang_loc_3ba8e4c8ab4044f8_de2322bbe0a12f8c)
  unreachable
bb32:
  %t90 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t90, ptr %l7, !tbaa !27
  %t91 = load i64, ptr %l2, !tbaa !24
  %t93 = icmp sge i64 %t91, 1
  br i1 %t93, label %bb33, label %bb34
bb33:
  %t95 = load i64, ptr %l2, !tbaa !24
  %t96 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t98 = extractvalue { i64, ptr } %t96, 0
  %t101 = icmp sle i64 %t95, %t98
  store i1 %t101, ptr %l50, !tbaa !21
  br label %bb35
bb34:
  store i1 false, ptr %l50, !tbaa !21
  br label %bb35
bb35:
  %t103 = load i1, ptr %l50, !tbaa !21
  br i1 %t103, label %bb36, label %bb37
bb36:
  %t104 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t104, ptr %l56, !tbaa !27
  %t105 = load i64, ptr %l2, !tbaa !24
  %t107 = sub i64 %t105, 1
  %t109 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t110 = load ptr, ptr %t109, !tbaa !27
  %t111 = getelementptr { i64, ptr }, ptr %t110, i64 %t107
  %t112 = load { i64, ptr }, ptr %t111, !tbaa !37
  %t114 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrimEnd(ptr %v0, ptr %s0, { i64, ptr } %t112)
  store { i64, ptr } %t114, ptr %l60
  br label %bb38
bb37:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d22, i32 0, i32 1) }, ptr %l62, !tbaa !27
  %t115 = load { i64, ptr }, ptr %l62, !tbaa !27
  store { i64, ptr } %t115, ptr %l55, !tbaa !27
  br label %bb39
bb38:
  %t117 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t118 = extractvalue { i64, ptr } %t117, 1
  %t119 = extractvalue { i64, ptr } %t117, 0
  %t120 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t119)
  call void @olang_textcopy(ptr %t120, ptr %t118, i64 %t119)
  %t121 = insertvalue { i64, ptr } undef, i64 %t119, 0
  %t122 = insertvalue { i64, ptr } %t121, ptr %t120, 1
  store { i64, ptr } %t122, ptr %l55, !tbaa !27
  br label %bb39
bb39:
  %t124 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t125 = extractvalue { i64, ptr } %t124, 0
  store i64 %t125, ptr %l64, !tbaa !24
  %t126 = load i64, ptr %l64, !tbaa !24
  %t127 = mul i64 %t126, 1
  %t128 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t127)
  %t129 = insertvalue { i64, ptr } undef, i64 %t126, 0
  %t130 = insertvalue { i64, ptr } %t129, ptr %t128, 1
  store { i64, ptr } %t130, ptr %l65, !tbaa !27
  %t131 = getelementptr { i64, ptr }, ptr %l65, i32 0, i32 1
  %t132 = load ptr, ptr %t131, !tbaa !27
  %t133 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t134 = load ptr, ptr %t133, !tbaa !27
  %t135 = load i64, ptr %l64, !tbaa !24
  %t136 = mul i64 %t135, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t132, ptr %t134, i64 %t136, i1 false)
  %t137 = load { i64, ptr }, ptr %l65, !tbaa !27
  store { i64, ptr } %t137, ptr %l55, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t138 = load { i64, ptr }, ptr %l55, !tbaa !27
  store { i64, ptr } %t138, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2flisting_2ecompiler_2flisting_3aWriter_2easmPart(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %lp3 = alloca ptr
  %l4 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l5 = alloca i1
  %l6 = alloca %"std/prelude/text:LineIter"
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i1
  %l10 = alloca { i64, ptr }
  %l11 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l12 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l14 = alloca %"std/prelude/text:LineIter"
  %l15 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l18 = alloca i32
  %l20 = alloca i1
  %l22 = alloca { i64, ptr }
  %l24 = alloca i1
  %l25 = alloca i1
  %l27 = alloca i1
  %l32 = alloca i1
  %l33 = alloca i1
  %l35 = alloca i1
  %l37 = alloca i1
  %l39 = alloca i1
  %l41 = alloca i1
  %l43 = alloca i1
  %l46 = alloca { i64, ptr }
  %l47 = alloca i1
  %l48 = alloca i1
  %l51 = alloca { i64, ptr }
  %l52 = alloca i64
  %l54 = alloca i64
  %l55 = alloca i32
  %l56 = alloca i64
  %l62 = alloca i1
  %l66 = alloca i1
  %l68 = alloca i1
  %l70 = alloca i1
  %l72 = alloca i1
  %l74 = alloca i1
  %l76 = alloca i1
  %l78 = alloca i1
  %l81 = alloca { i64, ptr }
  %l82 = alloca i1
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e(ptr %v0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1, ptr %l11
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 72, i64 8)
  store ptr %t2, ptr %lp3
  %t3 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l11
  %t4 = load ptr, ptr %lp3
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t3, ptr %t4
  %t5 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t5, ptr %l12
  br label %bb2
bb2:
  %t6 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l12
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t6, ptr %l4
  store i1 false, ptr %l5, !tbaa !21
  %t9 = call %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %v1, ptr %v1, { i64, ptr } %a1)
  store %"std/prelude/text:LineIter" %t9, ptr %l14
  br label %bb3
bb3:
  %t10 = load %"std/prelude/text:LineIter", ptr %l14
  store %"std/prelude/text:LineIter" %t10, ptr %l6
  br label %bb4
bb4:
  store %olang.scope zeroinitializer, ptr %s2
  %t12 = call { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %v1, ptr %v1, ptr %l6)
  %t13 = extractvalue { i32, { i64, ptr } } %t12, 1
  %t14 = extractvalue { i32, { i64, ptr } } %t12, 0
  store i32 %t14, ptr %l18
  %t15 = icmp ne i32 %t14, 0
  br i1 %t15, label %bb6, label %ok.16, !prof !99
ok.16:
  store { i64, ptr } %t13, ptr %l17
  br label %bb5
bb5:
  %t17 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t17, ptr %l15, !tbaa !27
  br label %bb8
bb6:
  %t18 = load i32, ptr %l18, !tbaa !23
  %t19 = ashr i32 %t18, 16
  %t21 = icmp eq i32 %t19, 1
  store i1 %t21, ptr %l20, !tbaa !21
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s2)
  br label %bb79
bb8:
  %t22 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t22, ptr %l7, !tbaa !27
  %t23 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t25 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v1, ptr %v1, { i64, ptr } %t23)
  store { i64, ptr } %t25, ptr %l22
  br label %bb9
bb9:
  %t26 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t26, ptr %l8, !tbaa !27
  %t27 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t29 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s2, { i64, ptr } %t27, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d23, i32 0, i32 1) })
  store i1 %t29, ptr %l24
  br label %bb10
bb10:
  %t30 = load i1, ptr %l24, !tbaa !21
  br i1 %t30, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l25, !tbaa !21
  br label %bb14
bb12:
  %t31 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t33 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s2, { i64, ptr } %t31, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d24, i32 0, i32 1) })
  store i1 %t33, ptr %l27
  br label %bb13
bb13:
  %t34 = load i1, ptr %l27, !tbaa !21
  store i1 %t34, ptr %l25, !tbaa !21
  br label %bb14
bb14:
  %t35 = load i1, ptr %l25, !tbaa !21
  br i1 %t35, label %bb15, label %bb16
bb15:
  %t36 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t37 = load ptr, ptr %lp3
  call void @compiler_2flisting_2efileLine(ptr %v1, ptr %v0, ptr %s0, { i64, ptr } %t36, ptr %t37, ptr %l4)
  br label %bb17
bb16:
  br label %bb18
bb17:
  call void @__olang_scope_close(ptr %s2)
  br label %bb78
bb18:
  %t41 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t43 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s2, { i64, ptr } %t41, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d25, i32 0, i32 1) })
  store i1 %t43, ptr %l32
  br label %bb19
bb19:
  %t44 = load i1, ptr %l32, !tbaa !21
  br i1 %t44, label %bb20, label %bb21
bb20:
  store i1 true, ptr %l33, !tbaa !21
  br label %bb23
bb21:
  %t45 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t47 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s2, { i64, ptr } %t45, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d26, i32 0, i32 1) })
  store i1 %t47, ptr %l35
  br label %bb22
bb22:
  %t48 = load i1, ptr %l35, !tbaa !21
  store i1 %t48, ptr %l33, !tbaa !21
  br label %bb23
bb23:
  %t49 = load i1, ptr %l33, !tbaa !21
  store i1 %t49, ptr %l9, !tbaa !21
  %t50 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t52 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s2, { i64, ptr } %t50, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) })
  store i1 %t52, ptr %l37
  br label %bb24
bb24:
  %t53 = load i1, ptr %l37, !tbaa !21
  %t54 = xor i1 %t53, true
  br i1 %t54, label %bb25, label %bb26
bb25:
  %t56 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t58 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s2, { i64, ptr } %t56, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d28, i32 0, i32 1) })
  store i1 %t58, ptr %l41
  br label %bb27
bb26:
  store i1 false, ptr %l39, !tbaa !21
  br label %bb28
bb27:
  %t59 = load i1, ptr %l41, !tbaa !21
  %t60 = xor i1 %t59, true
  store i1 %t60, ptr %l39, !tbaa !21
  br label %bb28
bb28:
  %t62 = load i1, ptr %l39, !tbaa !21
  br i1 %t62, label %bb29, label %bb30
bb29:
  %t63 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d29, i32 0, i32 1) }, ptr %l46, !tbaa !27
  %t66 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t67 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v1, ptr %s2, { i64, ptr } %t63, { i64, ptr } %t66)
  store i1 %t67, ptr %l47
  br label %bb31
bb30:
  store i1 false, ptr %l43, !tbaa !21
  br label %bb32
bb31:
  %t68 = load i1, ptr %l47, !tbaa !21
  store i1 %t68, ptr %l43, !tbaa !21
  br label %bb32
bb32:
  %t69 = load i1, ptr %l43, !tbaa !21
  br i1 %t69, label %bb33, label %bb34
bb33:
  %t70 = load i1, ptr %l9, !tbaa !21
  %t72 = xor i1 %t70, true
  store i1 %t72, ptr %l48, !tbaa !21
  br label %bb35
bb34:
  store i1 false, ptr %l48, !tbaa !21
  br label %bb35
bb35:
  %t74 = load i1, ptr %l48, !tbaa !21
  br i1 %t74, label %bb36, label %bb37
bb36:
  store %olang.scope zeroinitializer, ptr %s4
  %t75 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t75, ptr %l51, !tbaa !27
  %t76 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t78 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v1, ptr %s4, { i64, ptr } %t76, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) })
  %t79 = extractvalue { i32, i64 } %t78, 1
  %t80 = extractvalue { i32, i64 } %t78, 0
  store i32 %t80, ptr %l55
  %t81 = icmp ne i32 %t80, 0
  br i1 %t81, label %bb39, label %ok.82, !prof !99
ok.82:
  store i64 %t79, ptr %l54
  br label %bb38
bb37:
  br label %bb73
bb38:
  %t83 = load i64, ptr %l54, !tbaa !24
  store i64 %t83, ptr %l52, !tbaa !24
  br label %bb41
bb39:
  br label %bb40
bb40:
  store i64 0, ptr %l52, !tbaa !24
  br label %bb41
bb41:
  %t84 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t85 = extractvalue { i64, ptr } %t84, 0
  store i64 %t85, ptr %l56, !tbaa !24
  %t86 = icmp sge i64 0, 0
  br i1 %t86, label %bb42, label %bb43
bb42:
  %t88 = load i64, ptr %l52, !tbaa !24
  %t89 = icmp sle i64 0, %t88
  br i1 %t89, label %bb44, label %bb45
bb43:
  call void @__olang_check_failed(ptr @olang_loc_499282f3f30fac94_8f31adef023c0138)
  unreachable
bb44:
  %t91 = load i64, ptr %l52, !tbaa !24
  %t92 = load i64, ptr %l56, !tbaa !24
  %t93 = icmp sle i64 %t91, %t92
  br i1 %t93, label %bb46, label %bb47
bb45:
  call void @__olang_check_failed(ptr @olang_loc_499282f3f30fac94_8f31adef023c0138)
  unreachable
bb46:
  %t95 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !27
  %t97 = load i64, ptr %l52, !tbaa !24
  %t98 = getelementptr i8, ptr %t96, i64 0
  %t99 = sub i64 %t97, 0
  %t100 = insertvalue { i64, ptr } undef, i64 %t99, 0
  %t101 = insertvalue { i64, ptr } %t100, ptr %t98, 1
  store { i64, ptr } %t101, ptr %l10, !tbaa !27
  %t103 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t105 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s4, { i64, ptr } %t103, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d31, i32 0, i32 1) })
  store i1 %t105, ptr %l62
  br label %bb48
bb47:
  call void @__olang_check_failed(ptr @olang_loc_499282f3f30fac94_8f31adef023c0138)
  unreachable
bb48:
  %t106 = load i1, ptr %l62, !tbaa !21
  %t107 = xor i1 %t106, true
  br i1 %t107, label %bb49, label %bb50
bb49:
  %t109 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t113 = call i1 @compiler_2flisting_2eofSym(ptr %v1, ptr %v2, { i64, ptr } %t109, { i64, ptr } %a2)
  store i1 %t113, ptr %l66
  br label %bb51
bb50:
  br label %bb52
bb51:
  %t114 = load i1, ptr %l66, !tbaa !21
  store i1 %t114, ptr %l5, !tbaa !21
  br label %bb52
bb52:
  %t115 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t117 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s4, { i64, ptr } %t115, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d32, i32 0, i32 1) })
  store i1 %t117, ptr %l68
  br label %bb53
bb53:
  %t118 = load i1, ptr %l68, !tbaa !21
  br i1 %t118, label %bb54, label %bb55
bb54:
  store i1 false, ptr %l5, !tbaa !21
  br label %bb56
bb55:
  br label %bb56
bb56:
  %t119 = load i1, ptr %l5, !tbaa !21
  br i1 %t119, label %bb57, label %bb58
bb57:
  %t121 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t123 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s4, { i64, ptr } %t121, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d33, i32 0, i32 1) })
  store i1 %t123, ptr %l72
  br label %bb59
bb58:
  store i1 false, ptr %l70, !tbaa !21
  br label %bb60
bb59:
  %t124 = load i1, ptr %l72, !tbaa !21
  %t125 = xor i1 %t124, true
  store i1 %t125, ptr %l70, !tbaa !21
  br label %bb60
bb60:
  %t127 = load i1, ptr %l70, !tbaa !21
  br i1 %t127, label %bb61, label %bb62
bb61:
  %t128 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t130 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s4, { i64, ptr } %t128, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d34, i32 0, i32 1) })
  store i1 %t130, ptr %l76
  br label %bb63
bb62:
  store i1 false, ptr %l74, !tbaa !21
  br label %bb64
bb63:
  %t131 = load i1, ptr %l76, !tbaa !21
  %t132 = xor i1 %t131, true
  store i1 %t132, ptr %l74, !tbaa !21
  br label %bb64
bb64:
  %t134 = load i1, ptr %l74, !tbaa !21
  br i1 %t134, label %bb65, label %bb66
bb65:
  %t135 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d35, i32 0, i32 1) }, ptr %l81, !tbaa !27
  %t138 = load { i64, ptr }, ptr %l81, !tbaa !27
  %t139 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v1, ptr %s4, { i64, ptr } %t135, { i64, ptr } %t138)
  store i1 %t139, ptr %l82
  br label %bb67
bb66:
  store i1 false, ptr %l78, !tbaa !21
  br label %bb68
bb67:
  %t140 = load i1, ptr %l82, !tbaa !21
  %t141 = xor i1 %t140, true
  store i1 %t141, ptr %l78, !tbaa !21
  br label %bb68
bb68:
  %t143 = load i1, ptr %l78, !tbaa !21
  br i1 %t143, label %bb69, label %bb70
bb69:
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t145 = load { i64, ptr }, ptr %l7, !tbaa !27
  call void @compiler_2flisting_2ecompiler_2flisting_3aWriter_2ecode(ptr %v0, ptr %v1, ptr %v3, ptr %v4, ptr %v5, ptr %t144, { i64, ptr } %t145, i1 false)
  br label %bb71
bb70:
  br label %bb72
bb71:
  br label %bb72
bb72:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s2)
  br label %bb78
bb73:
  %t148 = load i1, ptr %l5, !tbaa !21
  br i1 %t148, label %bb74, label %bb75
bb74:
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t151 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t152 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t153 = load ptr, ptr %lp3
  call void @compiler_2flisting_2ecompiler_2flisting_3aWriter_2easmLine(ptr %v0, ptr %v1, ptr %v1, ptr %v0, ptr %s0, ptr %v3, ptr %v4, ptr %v5, ptr %t150, { i64, ptr } %t151, { i64, ptr } %t152, ptr %t153, ptr %l4)
  br label %bb76
bb75:
  br label %bb77
bb76:
  br label %bb77
bb77:
  call void @__olang_scope_close(ptr %s2)
  br label %bb78
bb78:
  br label %bb4
bb79:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flisting_2ecompiler_2flisting_3aWriter_2eirPart(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l3 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l4 = alloca %"std/prelude/text:LineIter"
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i1
  %l8 = alloca %"std/prelude/text:LineIter"
  %l9 = alloca { i64, ptr }
  %l10 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l12 = alloca %"std/prelude/text:LineIter"
  %l13 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l16 = alloca i32
  %l18 = alloca i1
  %l20 = alloca i1
  %l21 = alloca i1
  %l24 = alloca { i64, ptr }
  %l25 = alloca i1
  %l26 = alloca i1
  %l29 = alloca { i64, ptr }
  %l30 = alloca i1
  %l31 = alloca i1
  %l34 = alloca { i64, ptr }
  %l35 = alloca i1
  %l36 = alloca i1
  %l39 = alloca { i64, ptr }
  %l40 = alloca i1
  %l41 = alloca i64
  %l42 = alloca { i64, ptr }
  %l43 = alloca i64
  %l45 = alloca i64
  %l46 = alloca i32
  %l47 = alloca i64
  %l51 = alloca { i64, ptr }
  %l52 = alloca i64
  %l53 = alloca i32
  %l54 = alloca i64
  %l55 = alloca i32
  %l62 = alloca %"std/prelude/text:LineIter"
  %l63 = alloca { i64, ptr }
  %l65 = alloca { i64, ptr }
  %l66 = alloca i32
  %l68 = alloca i1
  %l70 = alloca i1
  %l71 = alloca i1
  %l74 = alloca i1
  %l81 = alloca i1
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s6 = alloca %olang.scope
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1, ptr %l10
  br label %bb1
bb1:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l10
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %l3
  %t3 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t5 = call %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %v1, ptr %v1, { i64, ptr } %t3)
  store %"std/prelude/text:LineIter" %t5, ptr %l12
  br label %bb2
bb2:
  %t6 = load %"std/prelude/text:LineIter", ptr %l12
  store %"std/prelude/text:LineIter" %t6, ptr %l4
  br label %bb3
bb3:
  store %olang.scope zeroinitializer, ptr %s2
  %t8 = call { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %v1, ptr %v1, ptr %l4)
  %t9 = extractvalue { i32, { i64, ptr } } %t8, 1
  %t10 = extractvalue { i32, { i64, ptr } } %t8, 0
  store i32 %t10, ptr %l16
  %t11 = icmp ne i32 %t10, 0
  br i1 %t11, label %bb5, label %ok.12, !prof !99
ok.12:
  store { i64, ptr } %t9, ptr %l15
  br label %bb4
bb4:
  %t13 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t13, ptr %l13, !tbaa !27
  br label %bb7
bb5:
  %t14 = load i32, ptr %l16, !tbaa !23
  %t15 = ashr i32 %t14, 16
  %t17 = icmp eq i32 %t15, 1
  store i1 %t17, ptr %l18, !tbaa !21
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s2)
  br label %bb49
bb7:
  %t18 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t18, ptr %l5, !tbaa !27
  %t19 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t21 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s2, { i64, ptr } %t19, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d36, i32 0, i32 1) })
  store i1 %t21, ptr %l20
  br label %bb8
bb8:
  %t22 = load i1, ptr %l20, !tbaa !21
  br i1 %t22, label %bb9, label %bb10
bb9:
  %t23 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d37, i32 0, i32 1) }, ptr %l24, !tbaa !27
  %t26 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t27 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v1, ptr %s2, { i64, ptr } %t23, { i64, ptr } %t26)
  store i1 %t27, ptr %l25
  br label %bb11
bb10:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb24
bb11:
  %t28 = load i1, ptr %l25, !tbaa !21
  br i1 %t28, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb15
bb13:
  %t29 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d38, i32 0, i32 1) }, ptr %l29, !tbaa !27
  %t32 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t33 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v1, ptr %s2, { i64, ptr } %t29, { i64, ptr } %t32)
  store i1 %t33, ptr %l30
  br label %bb14
bb14:
  %t34 = load i1, ptr %l30, !tbaa !21
  store i1 %t34, ptr %l26, !tbaa !21
  br label %bb15
bb15:
  %t35 = load i1, ptr %l26, !tbaa !21
  br i1 %t35, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l31, !tbaa !21
  br label %bb19
bb17:
  %t36 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d39, i32 0, i32 1) }, ptr %l34, !tbaa !27
  %t39 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t40 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v1, ptr %s2, { i64, ptr } %t36, { i64, ptr } %t39)
  store i1 %t40, ptr %l35
  br label %bb18
bb18:
  %t41 = load i1, ptr %l35, !tbaa !21
  store i1 %t41, ptr %l31, !tbaa !21
  br label %bb19
bb19:
  %t42 = load i1, ptr %l31, !tbaa !21
  br i1 %t42, label %bb20, label %bb21
bb20:
  store i1 true, ptr %l36, !tbaa !21
  br label %bb23
bb21:
  %t43 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d40, i32 0, i32 1) }, ptr %l39, !tbaa !27
  %t46 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t47 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v1, ptr %s2, { i64, ptr } %t43, { i64, ptr } %t46)
  store i1 %t47, ptr %l40
  br label %bb22
bb22:
  %t48 = load i1, ptr %l40, !tbaa !21
  store i1 %t48, ptr %l36, !tbaa !21
  br label %bb23
bb23:
  %t49 = load i1, ptr %l36, !tbaa !21
  store i1 %t49, ptr %l21, !tbaa !21
  br label %bb24
bb24:
  %t50 = load i1, ptr %l21, !tbaa !21
  br i1 %t50, label %bb25, label %bb26
bb25:
  store %olang.scope zeroinitializer, ptr %s3
  %t51 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t51, ptr %l42, !tbaa !27
  %t52 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t54 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v1, ptr %s3, { i64, ptr } %t52, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d41, i32 0, i32 1) })
  %t55 = extractvalue { i32, i64 } %t54, 1
  %t56 = extractvalue { i32, i64 } %t54, 0
  store i32 %t56, ptr %l46
  %t57 = icmp ne i32 %t56, 0
  br i1 %t57, label %bb28, label %ok.58, !prof !99
ok.58:
  store i64 %t55, ptr %l45
  br label %bb27
bb26:
  br label %bb47
bb27:
  %t59 = load i64, ptr %l45, !tbaa !24
  store i64 %t59, ptr %l43, !tbaa !24
  br label %bb30
bb28:
  br label %bb29
bb29:
  store i64 1, ptr %l43, !tbaa !24
  br label %bb30
bb30:
  %t60 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t61 = extractvalue { i64, ptr } %t60, 0
  store i64 %t61, ptr %l47, !tbaa !24
  %t62 = icmp sge i64 1, 0
  br i1 %t62, label %bb31, label %bb32
bb31:
  %t64 = load i64, ptr %l43, !tbaa !24
  %t65 = icmp sle i64 1, %t64
  br i1 %t65, label %bb33, label %bb34
bb32:
  call void @__olang_check_failed(ptr @olang_loc_4e22a6b8cb4b0f4e_d8ececdffd9edfc2)
  unreachable
bb33:
  %t67 = load i64, ptr %l43, !tbaa !24
  %t68 = load i64, ptr %l47, !tbaa !24
  %t69 = icmp sle i64 %t67, %t68
  br i1 %t69, label %bb35, label %bb36
bb34:
  call void @__olang_check_failed(ptr @olang_loc_4e22a6b8cb4b0f4e_d8ececdffd9edfc2)
  unreachable
bb35:
  %t71 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !27
  %t73 = load i64, ptr %l43, !tbaa !24
  %t74 = getelementptr i8, ptr %t72, i64 1
  %t75 = sub i64 %t73, 1
  %t76 = insertvalue { i64, ptr } undef, i64 %t75, 0
  %t77 = insertvalue { i64, ptr } %t76, ptr %t74, 1
  store { i64, ptr } %t77, ptr %l51, !tbaa !27
  %t78 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s3, i64 10)
  %t79 = extractvalue { i32, i64 } %t78, 1
  %t80 = extractvalue { i32, i64 } %t78, 0
  store i32 %t80, ptr %l53
  %t81 = icmp ne i32 %t80, 0
  br i1 %t81, label %bb38, label %ok.82, !prof !99
ok.82:
  store i64 %t79, ptr %l52
  br label %bb37
bb36:
  call void @__olang_check_failed(ptr @olang_loc_4e22a6b8cb4b0f4e_d8ececdffd9edfc2)
  unreachable
bb37:
  %t83 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t84 = load i64, ptr %l52, !tbaa !24
  %t85 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v1, { i64, ptr } %t83, i64 %t84)
  %t86 = extractvalue { i32, i64 } %t85, 1
  %t87 = extractvalue { i32, i64 } %t85, 0
  store i32 %t87, ptr %l55
  %t88 = icmp ne i32 %t87, 0
  br i1 %t88, label %bb41, label %ok.89, !prof !99
ok.89:
  store i64 %t86, ptr %l54
  br label %bb40
bb38:
  br label %bb39
bb39:
  store i64 -1, ptr %l41, !tbaa !24
  br label %bb42
bb40:
  %t90 = load i64, ptr %l54, !tbaa !24
  store i64 %t90, ptr %l41, !tbaa !24
  br label %bb42
bb41:
  br label %bb39
bb42:
  %t91 = load i64, ptr %l41, !tbaa !24
  store i64 %t91, ptr %l6, !tbaa !24
  %t92 = load i64, ptr %l6, !tbaa !24
  %t94 = icmp sge i64 %t92, 0
  br i1 %t94, label %bb43, label %bb44
bb43:
  %t96 = load i64, ptr %l6, !tbaa !24
  %t97 = load { i64, ptr }, ptr %l5, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_Hc3dff1927e5c626a9d95abfdf4e9a462(ptr %s0, ptr %v1, ptr %l3, i64 %t96, { i64, ptr } %t97)
  br label %bb45
bb44:
  br label %bb46
bb45:
  br label %bb46
bb46:
  call void @__olang_scope_close(ptr %s3)
  br label %bb47
bb47:
  call void @__olang_scope_close(ptr %s2)
  br label %bb48
bb48:
  br label %bb3
bb49:
  store i1 false, ptr %l7, !tbaa !21
  %t101 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t103 = call %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %v1, ptr %v1, { i64, ptr } %t101)
  store %"std/prelude/text:LineIter" %t103, ptr %l62
  br label %bb50
bb50:
  %t104 = load %"std/prelude/text:LineIter", ptr %l62
  store %"std/prelude/text:LineIter" %t104, ptr %l8
  br label %bb51
bb51:
  store %olang.scope zeroinitializer, ptr %s6
  %t106 = call { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %v1, ptr %v1, ptr %l8)
  %t107 = extractvalue { i32, { i64, ptr } } %t106, 1
  %t108 = extractvalue { i32, { i64, ptr } } %t106, 0
  store i32 %t108, ptr %l66
  %t109 = icmp ne i32 %t108, 0
  br i1 %t109, label %bb53, label %ok.110, !prof !99
ok.110:
  store { i64, ptr } %t107, ptr %l65
  br label %bb52
bb52:
  %t111 = load { i64, ptr }, ptr %l65, !tbaa !27
  store { i64, ptr } %t111, ptr %l63, !tbaa !27
  br label %bb55
bb53:
  %t112 = load i32, ptr %l66, !tbaa !23
  %t113 = ashr i32 %t112, 16
  %t115 = icmp eq i32 %t113, 1
  store i1 %t115, ptr %l68, !tbaa !21
  br label %bb54
bb54:
  call void @__olang_scope_close(ptr %s6)
  br label %bb73
bb55:
  %t116 = load { i64, ptr }, ptr %l63, !tbaa !27
  store { i64, ptr } %t116, ptr %l9, !tbaa !27
  %t117 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t119 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s6, { i64, ptr } %t117, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d42, i32 0, i32 1) })
  store i1 %t119, ptr %l70
  br label %bb56
bb56:
  %t120 = load i1, ptr %l70, !tbaa !21
  br i1 %t120, label %bb57, label %bb58
bb57:
  %t121 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t125 = call i1 @compiler_2flisting_2eirDefines(ptr %v1, ptr %v2, { i64, ptr } %t121, { i64, ptr } %a2)
  store i1 %t125, ptr %l74
  br label %bb59
bb58:
  store i1 false, ptr %l71, !tbaa !21
  br label %bb60
bb59:
  %t126 = load i1, ptr %l74, !tbaa !21
  store i1 %t126, ptr %l71, !tbaa !21
  br label %bb60
bb60:
  %t127 = load i1, ptr %l71, !tbaa !21
  br i1 %t127, label %bb61, label %bb62
bb61:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb63
bb62:
  br label %bb63
bb63:
  %t128 = load i1, ptr %l7, !tbaa !21
  %t130 = xor i1 %t128, true
  br i1 %t130, label %bb64, label %bb65
bb64:
  call void @__olang_scope_close(ptr %s6)
  br label %bb72
bb65:
  br label %bb66
bb66:
  %t133 = load { i64, ptr }, ptr %l9, !tbaa !27
  call void @compiler_2flisting_2ecompiler_2flisting_3aWriter_2eirLine(ptr %v0, ptr %v1, ptr %s0, ptr %v3, ptr %v4, ptr %v5, ptr %a0, { i64, ptr } %t133, ptr %l3)
  br label %bb67
bb67:
  %t137 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t139 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s6, { i64, ptr } %t137, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d43, i32 0, i32 1) })
  store i1 %t139, ptr %l81
  br label %bb68
bb68:
  %t140 = load i1, ptr %l81, !tbaa !21
  br i1 %t140, label %bb69, label %bb70
bb69:
  store i1 false, ptr %l7, !tbaa !21
  br label %bb71
bb70:
  br label %bb71
bb71:
  call void @__olang_scope_close(ptr %s6)
  br label %bb72
bb72:
  br label %bb51
bb73:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flisting_2ecompiler_2flisting_3aWriter_2eirPlace(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %lp8 = alloca ptr
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l14 = alloca i32
  %l17 = alloca { i64, ptr }
  %l18 = alloca i1
  %l20 = alloca i64
  %l22 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l24 = alloca i64
  %l25 = alloca i32
  %l26 = alloca i64
  %l27 = alloca i32
  %l28 = alloca i64
  %l30 = alloca { i64, ptr }
  %l32 = alloca { i64, ptr }
  %l34 = alloca i64
  %l35 = alloca i64
  %l39 = alloca { i64, ptr }
  %l40 = alloca i64
  %l41 = alloca i32
  %l42 = alloca i64
  %l43 = alloca i32
  %l44 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l48 = alloca i32
  %l49 = alloca { i64, ptr }
  %l50 = alloca ptr
  %l51 = alloca i64
  %l53 = alloca { i64, ptr }
  %l55 = alloca { i64, ptr }
  %l57 = alloca i64
  %l58 = alloca i64
  %l62 = alloca { i64, ptr }
  %l63 = alloca i64
  %l64 = alloca i32
  %l65 = alloca i64
  %l66 = alloca i32
  %l67 = alloca { i64, ptr }
  %l68 = alloca i32
  %l70 = alloca { i64, ptr }
  %l72 = alloca { i64, ptr }
  %l73 = alloca ptr
  %l74 = alloca { i64, ptr }
  %l76 = alloca i1
  %l77 = alloca i1
  %l79 = alloca i1
  %l80 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t5 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %v1, ptr %v1, ptr %t1, i64 %a1)
  %t6 = extractvalue { i32, { i64, ptr } } %t5, 1
  %t7 = extractvalue { i32, { i64, ptr } } %t5, 0
  store i32 %t7, ptr %l14
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb2, label %ok.9, !prof !99
ok.9:
  store { i64, ptr } %t6, ptr %l13
  br label %bb1
bb1:
  %t10 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t10, ptr %l10, !tbaa !27
  br label %bb4
bb2:
  br label %bb3
bb3:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d44, i32 0, i32 1) }, ptr %l10, !tbaa !27
  br label %bb4
bb4:
  %t11 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t11, ptr %l3, !tbaa !27
  %t12 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d45, i32 0, i32 1) }, ptr %l17, !tbaa !27
  %t15 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t16 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v1, ptr %s0, { i64, ptr } %t12, { i64, ptr } %t15)
  store i1 %t16, ptr %l18
  br label %bb5
bb5:
  %t17 = load i1, ptr %l18, !tbaa !21
  %t18 = xor i1 %t17, true
  br i1 %t18, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb7:
  br label %bb8
bb8:
  %t20 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t22 = call { i64, ptr } @compiler_2flisting_2emetaField(ptr %v1, ptr %s0, ptr %s0, { i64, ptr } %t20, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d46, i32 0, i32 1) })
  store { i64, ptr } %t22, ptr %l22
  br label %bb9
bb9:
  %t23 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t24 = extractvalue { i64, ptr } %t23, 0
  %t25 = extractvalue { i64, ptr } %t23, 1
  %t26 = mul i64 %t24, 1
  %t27 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t26)
  call void @llvm.memcpy.p0.p0.i64(ptr %t27, ptr %t25, i64 %t26, i1 false)
  %t28 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t29 = insertvalue { i64, ptr } %t28, ptr %t27, 1
  store { i64, ptr } %t29, ptr %l23, !tbaa !27
  %t30 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s0, i64 10)
  %t31 = extractvalue { i32, i64 } %t30, 1
  %t32 = extractvalue { i32, i64 } %t30, 0
  store i32 %t32, ptr %l25
  %t33 = icmp ne i32 %t32, 0
  br i1 %t33, label %bb11, label %ok.34, !prof !99
ok.34:
  store i64 %t31, ptr %l24
  br label %bb10
bb10:
  %t35 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t36 = load i64, ptr %l24, !tbaa !24
  %t37 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %s0, { i64, ptr } %t35, i64 %t36)
  %t38 = extractvalue { i32, i64 } %t37, 1
  %t39 = extractvalue { i32, i64 } %t37, 0
  store i32 %t39, ptr %l27
  %t40 = icmp ne i32 %t39, 0
  br i1 %t40, label %bb14, label %ok.41, !prof !99
ok.41:
  store i64 %t38, ptr %l26
  br label %bb13
bb11:
  br label %bb12
bb12:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb15
bb13:
  %t42 = load i64, ptr %l26, !tbaa !24
  store i64 %t42, ptr %l20, !tbaa !24
  br label %bb15
bb14:
  br label %bb12
bb15:
  %t43 = load i64, ptr %l20, !tbaa !24
  store i64 %t43, ptr %l4, !tbaa !24
  %t44 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t46 = call { i64, ptr } @compiler_2flisting_2emetaField(ptr %v1, ptr %s0, ptr %s0, { i64, ptr } %t44, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d47, i32 0, i32 1) })
  store { i64, ptr } %t46, ptr %l30
  br label %bb16
bb16:
  %t47 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t49 = call { i64, ptr } @compiler_2flisting_2emetaField(ptr %v1, ptr %s0, ptr %s0, { i64, ptr } %t47, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d47, i32 0, i32 1) })
  store { i64, ptr } %t49, ptr %l32
  br label %bb17
bb17:
  %t50 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t52 = extractvalue { i64, ptr } %t50, 0
  store i64 %t52, ptr %l34, !tbaa !24
  %t53 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t54 = extractvalue { i64, ptr } %t53, 0
  store i64 %t54, ptr %l35, !tbaa !24
  %t55 = icmp sge i64 1, 0
  br i1 %t55, label %bb18, label %bb19
bb18:
  %t57 = load i64, ptr %l34, !tbaa !24
  %t58 = icmp sle i64 1, %t57
  br i1 %t58, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_b8d38b69b79cf91c_5a0dc70c1127b970)
  unreachable
bb20:
  %t60 = load i64, ptr %l34, !tbaa !24
  %t61 = load i64, ptr %l35, !tbaa !24
  %t62 = icmp sle i64 %t60, %t61
  br i1 %t62, label %bb22, label %bb23
bb21:
  call void @__olang_check_failed(ptr @olang_loc_b8d38b69b79cf91c_5a0dc70c1127b970)
  unreachable
bb22:
  %t64 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !27
  %t66 = load i64, ptr %l34, !tbaa !24
  %t67 = getelementptr i8, ptr %t65, i64 1
  %t68 = sub i64 %t66, 1
  %t69 = insertvalue { i64, ptr } undef, i64 %t68, 0
  %t70 = insertvalue { i64, ptr } %t69, ptr %t67, 1
  store { i64, ptr } %t70, ptr %l39, !tbaa !27
  %t71 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s0, i64 10)
  %t72 = extractvalue { i32, i64 } %t71, 1
  %t73 = extractvalue { i32, i64 } %t71, 0
  store i32 %t73, ptr %l41
  %t74 = icmp ne i32 %t73, 0
  br i1 %t74, label %bb25, label %ok.75, !prof !99
ok.75:
  store i64 %t72, ptr %l40
  br label %bb24
bb23:
  call void @__olang_check_failed(ptr @olang_loc_b8d38b69b79cf91c_5a0dc70c1127b970)
  unreachable
bb24:
  %t76 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t77 = load i64, ptr %l40, !tbaa !24
  %t78 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %s0, { i64, ptr } %t76, i64 %t77)
  %t79 = extractvalue { i32, i64 } %t78, 1
  %t80 = extractvalue { i32, i64 } %t78, 0
  store i32 %t80, ptr %l43
  %t81 = icmp ne i32 %t80, 0
  br i1 %t81, label %bb28, label %ok.82, !prof !99
ok.82:
  store i64 %t79, ptr %l42
  br label %bb27
bb25:
  br label %bb26
bb26:
  store i64 -1, ptr %l28, !tbaa !24
  br label %bb29
bb27:
  %t83 = load i64, ptr %l42, !tbaa !24
  store i64 %t83, ptr %l28, !tbaa !24
  br label %bb29
bb28:
  br label %bb26
bb29:
  %t84 = load i64, ptr %l28, !tbaa !24
  %t85 = load ptr, ptr %l2, !tbaa !29
  %t89 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %v1, ptr %v1, ptr %t85, i64 %t84)
  %t90 = extractvalue { i32, { i64, ptr } } %t89, 1
  %t91 = extractvalue { i32, { i64, ptr } } %t89, 0
  store i32 %t91, ptr %l48
  %t92 = icmp ne i32 %t91, 0
  br i1 %t92, label %bb31, label %ok.93, !prof !99
ok.93:
  store { i64, ptr } %t90, ptr %l47
  br label %bb30
bb30:
  %t94 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t94, ptr %l44, !tbaa !27
  br label %bb33
bb31:
  br label %bb32
bb32:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d48, i32 0, i32 1) }, ptr %l44, !tbaa !27
  br label %bb33
bb33:
  %t95 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t95, ptr %l6, !tbaa !27
  %t96 = load ptr, ptr %l2, !tbaa !29
  store ptr %t96, ptr %l50, !tbaa !29
  %t97 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t99 = call { i64, ptr } @compiler_2flisting_2emetaField(ptr %v1, ptr %s0, ptr %s0, { i64, ptr } %t97, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d49, i32 0, i32 1) })
  store { i64, ptr } %t99, ptr %l53
  br label %bb34
bb34:
  %t100 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t102 = call { i64, ptr } @compiler_2flisting_2emetaField(ptr %v1, ptr %s0, ptr %s0, { i64, ptr } %t100, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d49, i32 0, i32 1) })
  store { i64, ptr } %t102, ptr %l55
  br label %bb35
bb35:
  %t103 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t105 = extractvalue { i64, ptr } %t103, 0
  store i64 %t105, ptr %l57, !tbaa !24
  %t106 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t107 = extractvalue { i64, ptr } %t106, 0
  store i64 %t107, ptr %l58, !tbaa !24
  %t108 = icmp sge i64 1, 0
  br i1 %t108, label %bb36, label %bb37
bb36:
  %t110 = load i64, ptr %l57, !tbaa !24
  %t111 = icmp sle i64 1, %t110
  br i1 %t111, label %bb38, label %bb39
bb37:
  call void @__olang_check_failed(ptr @olang_loc_43ec7269e82cf689_7116d248b5a11b4d)
  unreachable
bb38:
  %t113 = load i64, ptr %l57, !tbaa !24
  %t114 = load i64, ptr %l58, !tbaa !24
  %t115 = icmp sle i64 %t113, %t114
  br i1 %t115, label %bb40, label %bb41
bb39:
  call void @__olang_check_failed(ptr @olang_loc_43ec7269e82cf689_7116d248b5a11b4d)
  unreachable
bb40:
  %t117 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t118 = load ptr, ptr %t117, !tbaa !27
  %t119 = load i64, ptr %l57, !tbaa !24
  %t120 = getelementptr i8, ptr %t118, i64 1
  %t121 = sub i64 %t119, 1
  %t122 = insertvalue { i64, ptr } undef, i64 %t121, 0
  %t123 = insertvalue { i64, ptr } %t122, ptr %t120, 1
  store { i64, ptr } %t123, ptr %l62, !tbaa !27
  %t124 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s0, i64 10)
  %t125 = extractvalue { i32, i64 } %t124, 1
  %t126 = extractvalue { i32, i64 } %t124, 0
  store i32 %t126, ptr %l64
  %t127 = icmp ne i32 %t126, 0
  br i1 %t127, label %bb43, label %ok.128, !prof !99
ok.128:
  store i64 %t125, ptr %l63
  br label %bb42
bb41:
  call void @__olang_check_failed(ptr @olang_loc_43ec7269e82cf689_7116d248b5a11b4d)
  unreachable
bb42:
  %t129 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t130 = load i64, ptr %l63, !tbaa !24
  %t131 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %s0, { i64, ptr } %t129, i64 %t130)
  %t132 = extractvalue { i32, i64 } %t131, 1
  %t133 = extractvalue { i32, i64 } %t131, 0
  store i32 %t133, ptr %l66
  %t134 = icmp ne i32 %t133, 0
  br i1 %t134, label %bb46, label %ok.135, !prof !99
ok.135:
  store i64 %t132, ptr %l65
  br label %bb45
bb43:
  br label %bb44
bb44:
  store i64 -1, ptr %l51, !tbaa !24
  br label %bb47
bb45:
  %t136 = load i64, ptr %l65, !tbaa !24
  store i64 %t136, ptr %l51, !tbaa !24
  br label %bb47
bb46:
  br label %bb44
bb47:
  %t137 = load ptr, ptr %l50, !tbaa !29
  %t138 = load i64, ptr %l51, !tbaa !24
  %t139 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %v1, ptr %v1, ptr %t137, i64 %t138)
  %t140 = extractvalue { i32, { i64, ptr } } %t139, 1
  %t141 = extractvalue { i32, { i64, ptr } } %t139, 0
  store i32 %t141, ptr %l68
  %t142 = icmp ne i32 %t141, 0
  br i1 %t142, label %bb49, label %ok.143, !prof !99
ok.143:
  store { i64, ptr } %t140, ptr %l67
  br label %bb48
bb48:
  %t144 = load { i64, ptr }, ptr %l67, !tbaa !27
  store { i64, ptr } %t144, ptr %l49, !tbaa !27
  br label %bb51
bb49:
  br label %bb50
bb50:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d50, i32 0, i32 1) }, ptr %l49, !tbaa !27
  br label %bb51
bb51:
  %t145 = load { i64, ptr }, ptr %l49, !tbaa !27
  store { i64, ptr } %t145, ptr %l7, !tbaa !27
  %t146 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t148 = call { i64, ptr } @compiler_2flisting_2emetaField(ptr %v1, ptr %v0, ptr %v0, { i64, ptr } %t146, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d51, i32 0, i32 1) })
  store { i64, ptr } %t148, ptr %l70
  br label %bb52
bb52:
  %t149 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 16, i64 8)
  store ptr %t149, ptr %lp8
  %t150 = load { i64, ptr }, ptr %l70, !tbaa !27
  %t151 = load ptr, ptr %lp8
  store { i64, ptr } %t150, ptr %t151, !tbaa !27
  %t152 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t154 = call { i64, ptr } @compiler_2flisting_2emetaField(ptr %v1, ptr %s0, ptr %s0, { i64, ptr } %t152, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d52, i32 0, i32 1) })
  store { i64, ptr } %t154, ptr %l72
  br label %bb53
bb53:
  %t155 = load { i64, ptr }, ptr %l72, !tbaa !27
  store { i64, ptr } %t155, ptr %l9, !tbaa !27
  store ptr %a0, ptr %l73, !tbaa !29
  %t157 = load ptr, ptr %lp8
  %t158 = load { i64, ptr }, ptr %t157, !tbaa !27
  store { i64, ptr } %t158, ptr %l74, !tbaa !27
  %t159 = load ptr, ptr %lp8
  %t160 = load { i64, ptr }, ptr %t159, !tbaa !27
  %t162 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t160, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d53, i32 0, i32 1) })
  store i1 %t162, ptr %l76
  br label %bb54
bb54:
  %t163 = load i1, ptr %l76, !tbaa !21
  br i1 %t163, label %bb55, label %bb56
bb55:
  store i1 true, ptr %l77, !tbaa !21
  br label %bb58
bb56:
  %t164 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t166 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t164, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d54, i32 0, i32 1) })
  store i1 %t166, ptr %l79
  br label %bb57
bb57:
  %t167 = load i1, ptr %l79, !tbaa !21
  store i1 %t167, ptr %l77, !tbaa !21
  br label %bb58
bb58:
  %t168 = load i1, ptr %l77, !tbaa !21
  br i1 %t168, label %bb59, label %bb60
bb59:
  %t169 = load ptr, ptr %lp8
  %t170 = load { i64, ptr }, ptr %t169, !tbaa !27
  store { i64, ptr } %t170, ptr %l80, !tbaa !27
  br label %bb61
bb60:
  %t172 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t173 = load ptr, ptr %lp8
  %t174 = load { i64, ptr }, ptr %t173, !tbaa !27
  %t176 = extractvalue { i64, ptr } %t172, 1
  %t177 = extractvalue { i64, ptr } %t172, 0
  %t178 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d55, i32 0, i32 1) }, 1
  %t179 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d55, i32 0, i32 1) }, 0
  %t180 = add i64 %t177, %t179
  %t182 = extractvalue { i64, ptr } %t174, 1
  %t183 = extractvalue { i64, ptr } %t174, 0
  %t184 = add i64 %t180, %t183
  %t185 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t184)
  call void @olang_textcopy(ptr %t185, ptr %t176, i64 %t177)
  %t186 = getelementptr i8, ptr %t185, i64 %t177
  call void @olang_textcopy(ptr %t186, ptr %t178, i64 %t179)
  %t187 = getelementptr i8, ptr %t186, i64 %t179
  call void @olang_textcopy(ptr %t187, ptr %t182, i64 %t183)
  %t188 = insertvalue { i64, ptr } undef, i64 %t184, 0
  %t189 = insertvalue { i64, ptr } %t188, ptr %t185, 1
  %t191 = extractvalue { i64, ptr } %t189, 0
  %t192 = extractvalue { i64, ptr } %t189, 1
  %t193 = mul i64 %t191, 1
  %t194 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t193)
  call void @llvm.memcpy.p0.p0.i64(ptr %t194, ptr %t192, i64 %t193, i1 false)
  %t195 = insertvalue { i64, ptr } undef, i64 %t191, 0
  %t196 = insertvalue { i64, ptr } %t195, ptr %t194, 1
  store { i64, ptr } %t196, ptr %l80, !tbaa !27
  br label %bb61
bb61:
  %t198 = load i64, ptr %l4, !tbaa !24
  %t199 = load ptr, ptr %l73, !tbaa !29
  %t200 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t201 = load { i64, ptr }, ptr %l80, !tbaa !27
  call void @compiler_2flisting_2ecompiler_2flisting_3aWriter_2ereach(ptr %v0, ptr %v0, ptr %v0, ptr %t199, { i64, ptr } %t200, { i64, ptr } %t201, i64 %t198)
  br label %bb62
bb62:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2flisting_2ecompiler_2flisting_3aWriter_2eremarksAt(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca %"compiler/listing:Remark"
  %l6 = alloca %"std/prelude/text:StringBuilder"
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca %"compiler/listing:Remark"
  %l11 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca %"compiler/listing:Remark"
  %l18 = alloca i64
  %l22 = alloca i64
  %l23 = alloca ptr
  %l25 = alloca i64
  %l28 = alloca ptr
  %l31 = alloca %"compiler/listing:Remark"
  %l36 = alloca %"std/prelude/text:StringBuilder"
  %l39 = alloca i64
  %l40 = alloca ptr
  %l42 = alloca i64
  %l46 = alloca ptr
  %l49 = alloca %"compiler/listing:Remark"
  %l53 = alloca i1
  %l54 = alloca i1
  %l56 = alloca { i64, ptr }
  %l59 = alloca i1
  %l61 = alloca i1
  %l64 = alloca { i64, ptr }
  %l66 = alloca i1
  %l70 = alloca i64
  %l71 = alloca ptr
  %l73 = alloca i64
  %l77 = alloca ptr
  %l80 = alloca %"compiler/listing:Remark"
  %l83 = alloca i1
  %l84 = alloca i1
  %l87 = alloca { i64, ptr }
  %l89 = alloca i1
  %l90 = alloca i1
  %l94 = alloca i1
  %l103 = alloca ptr
  %l105 = alloca { i64, ptr }
  %l106 = alloca { i64, ptr }
  %l108 = alloca { i64, ptr }
  %l109 = alloca i64
  %l110 = alloca { i64, ptr }
  %l111 = alloca { i64, ptr }
  %l112 = alloca { i64, ptr }
  %l115 = alloca { i64, ptr }
  %l124 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/listing:Writer", ptr %t1, i32 0, i32 4
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l18
  br label %bb1
bb1:
  %t6 = load i64, ptr %l18, !tbaa !24
  %t7 = icmp eq i64 %t6, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/listing:Writer", ptr %t9, i32 0, i32 2
  %t12 = load ptr, ptr %t11, !tbaa !29
  store ptr %t12, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb4
bb3:
  br label %bb13
bb4:
  store %olang.scope zeroinitializer, ptr %s3
  %t14 = load i64, ptr %l4, !tbaa !24
  store i64 %t14, ptr %l22, !tbaa !24
  %t15 = load ptr, ptr %l3, !tbaa !29
  store ptr %t15, ptr %l23, !tbaa !29
  %t16 = load ptr, ptr %l23, !tbaa !29
  %t17 = call ptr @__olang_scope_or(ptr %v4, ptr %t16)
  %t18 = ptrtoint ptr %t17 to i64
  %t20 = inttoptr i64 %t18 to ptr
  %t21 = load ptr, ptr %l23, !tbaa !29
  %t22 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flisting_3aRemark_3e_2eLen_3ccompiler_2flisting_3aRemark_3e(ptr %t20, ptr %t21)
  store i64 %t22, ptr %l25
  br label %bb5
bb5:
  %t23 = load i64, ptr %l22, !tbaa !24
  %t24 = load i64, ptr %l25, !tbaa !24
  %t25 = icmp slt i64 %t23, %t24
  %t27 = xor i1 %t25, true
  br i1 %t27, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s3)
  br label %bb12
bb7:
  br label %bb8
bb8:
  %t29 = load ptr, ptr %l3, !tbaa !29
  store ptr %t29, ptr %l28, !tbaa !29
  %t30 = load i64, ptr %l4, !tbaa !24
  %t31 = load ptr, ptr %l28, !tbaa !29
  %t32 = call ptr @__olang_scope_or(ptr %v4, ptr %t31)
  %t33 = ptrtoint ptr %t32 to i64
  %t35 = inttoptr i64 %t33 to ptr
  %t36 = load ptr, ptr %l28, !tbaa !29
  %t38 = call %"compiler/listing:Remark" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flisting_3aRemark_3e_2eAt_3ccompiler_2flisting_3aRemark_3e(ptr %t35, ptr %s3, ptr %t36, i64 %t30)
  store %"compiler/listing:Remark" %t38, ptr %l31
  br label %bb9
bb9:
  %t39 = load %"compiler/listing:Remark", ptr %l31
  store %"compiler/listing:Remark" %t39, ptr %l5
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/listing:Writer", ptr %t40, i32 0, i32 4
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t42, i1 false)
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s3)
  br label %bb11
bb11:
  %t44 = load i64, ptr %l4, !tbaa !24
  %t46 = add i64 %t44, 1
  store i64 %t46, ptr %l4, !tbaa !24
  br label %bb4
bb12:
  br label %bb13
bb13:
  %t48 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t48, ptr %l36
  br label %bb14
bb14:
  %t49 = load %"std/prelude/text:StringBuilder", ptr %l36
  store %"std/prelude/text:StringBuilder" %t49, ptr %l6
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/listing:Writer", ptr %t50, i32 0, i32 2
  %t53 = load ptr, ptr %t52, !tbaa !29
  store ptr %t53, ptr %l7, !tbaa !29
  store i64 0, ptr %l8, !tbaa !24
  br label %bb15
bb15:
  store %olang.scope zeroinitializer, ptr %s6
  %t55 = load i64, ptr %l8, !tbaa !24
  store i64 %t55, ptr %l39, !tbaa !24
  %t56 = load ptr, ptr %l7, !tbaa !29
  store ptr %t56, ptr %l40, !tbaa !29
  %t57 = load ptr, ptr %l40, !tbaa !29
  %t58 = call ptr @__olang_scope_or(ptr %v4, ptr %t57)
  %t59 = ptrtoint ptr %t58 to i64
  %t61 = inttoptr i64 %t59 to ptr
  %t62 = load ptr, ptr %l40, !tbaa !29
  %t63 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flisting_3aRemark_3e_2eLen_3ccompiler_2flisting_3aRemark_3e(ptr %t61, ptr %t62)
  store i64 %t63, ptr %l42
  br label %bb16
bb16:
  %t64 = load i64, ptr %l39, !tbaa !24
  %t65 = load i64, ptr %l42, !tbaa !24
  %t66 = icmp slt i64 %t64, %t65
  %t68 = xor i1 %t66, true
  br i1 %t68, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s6)
  br label %bb61
bb18:
  br label %bb19
bb19:
  %t70 = load i64, ptr %l8, !tbaa !24
  store i64 %t70, ptr %l9, !tbaa !24
  %t72 = load ptr, ptr %l7, !tbaa !29
  store ptr %t72, ptr %l46, !tbaa !29
  %t73 = load i64, ptr %l8, !tbaa !24
  %t74 = load ptr, ptr %l46, !tbaa !29
  %t75 = call ptr @__olang_scope_or(ptr %v4, ptr %t74)
  %t76 = ptrtoint ptr %t75 to i64
  %t78 = inttoptr i64 %t76 to ptr
  %t79 = load ptr, ptr %l46, !tbaa !29
  %t81 = call %"compiler/listing:Remark" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flisting_3aRemark_3e_2eAt_3ccompiler_2flisting_3aRemark_3e(ptr %t78, ptr %s6, ptr %t79, i64 %t73)
  store %"compiler/listing:Remark" %t81, ptr %l49
  br label %bb20
bb20:
  %t82 = load %"compiler/listing:Remark", ptr %l49
  store %"compiler/listing:Remark" %t82, ptr %l10
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/listing:Writer", ptr %t83, i32 0, i32 4
  %t86 = load i64, ptr %l9, !tbaa !24
  %t89 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t85, i64 %t86)
  store i1 %t89, ptr %l53
  br label %bb21
bb21:
  %t90 = load i1, ptr %l53, !tbaa !21
  br i1 %t90, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l54, !tbaa !21
  br label %bb26
bb23:
  %t92 = call { i64, ptr } @compiler_2flisting_2eplaceOf(ptr %s6, ptr %s6, ptr %l10)
  store { i64, ptr } %t92, ptr %l56
  br label %bb24
bb24:
  %t93 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t94 = extractvalue { i64, ptr } %t93, 0
  %t95 = extractvalue { i64, ptr } %t93, 1
  %t96 = mul i64 %t94, 1
  %t97 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t96)
  call void @llvm.memcpy.p0.p0.i64(ptr %t97, ptr %t95, i64 %t96, i1 false)
  %t98 = insertvalue { i64, ptr } undef, i64 %t94, 0
  %t99 = insertvalue { i64, ptr } %t98, ptr %t97, 1
  %t103 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s6, ptr %v1, { i64, ptr } %t99, { i64, ptr } %a1)
  store i1 %t103, ptr %l59
  br label %bb25
bb25:
  %t104 = load i1, ptr %l59, !tbaa !21
  %t105 = xor i1 %t104, true
  store i1 %t105, ptr %l54, !tbaa !21
  br label %bb26
bb26:
  %t107 = load i1, ptr %l54, !tbaa !21
  br i1 %t107, label %bb27, label %bb28
bb27:
  store i1 true, ptr %l61, !tbaa !21
  br label %bb30
bb28:
  %t108 = getelementptr %"compiler/listing:Remark", ptr %l10, i32 0, i32 5
  %t109 = load { i64, ptr }, ptr %t108, !tbaa !27
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/listing:Writer", ptr %t110, i32 0, i32 3
  %t113 = load { i64, ptr }, ptr %t112, !tbaa !27
  store { i64, ptr } %t113, ptr %l64, !tbaa !27
  %t114 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t115 = extractvalue { i64, ptr } %t114, 1
  %t116 = call ptr @__olang_scope_or(ptr %v5, ptr %t115)
  %t117 = ptrtoint ptr %t116 to i64
  %t119 = inttoptr i64 %t117 to ptr
  %t121 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t122 = call i1 @compiler_2flisting_2eofAny(ptr %s6, ptr %t119, { i64, ptr } %t109, { i64, ptr } %t121)
  store i1 %t122, ptr %l66
  br label %bb29
bb29:
  %t123 = load i1, ptr %l66, !tbaa !21
  %t124 = xor i1 %t123, true
  store i1 %t124, ptr %l61, !tbaa !21
  br label %bb30
bb30:
  %t126 = load i1, ptr %l61, !tbaa !21
  br i1 %t126, label %bb31, label %bb32
bb31:
  call void @__olang_scope_close(ptr %s6)
  br label %bb60
bb32:
  br label %bb33
bb33:
  store i64 0, ptr %l11, !tbaa !24
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/listing:Writer", ptr %t127, i32 0, i32 2
  %t130 = load ptr, ptr %t129, !tbaa !29
  store ptr %t130, ptr %l12, !tbaa !29
  store i64 0, ptr %l13, !tbaa !24
  br label %bb34
bb34:
  store %olang.scope zeroinitializer, ptr %s9
  %t132 = load i64, ptr %l13, !tbaa !24
  store i64 %t132, ptr %l70, !tbaa !24
  %t133 = load ptr, ptr %l12, !tbaa !29
  store ptr %t133, ptr %l71, !tbaa !29
  %t134 = load ptr, ptr %l71, !tbaa !29
  %t135 = call ptr @__olang_scope_or(ptr %v4, ptr %t134)
  %t136 = ptrtoint ptr %t135 to i64
  %t138 = inttoptr i64 %t136 to ptr
  %t139 = load ptr, ptr %l71, !tbaa !29
  %t140 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flisting_3aRemark_3e_2eLen_3ccompiler_2flisting_3aRemark_3e(ptr %t138, ptr %t139)
  store i64 %t140, ptr %l73
  br label %bb35
bb35:
  %t141 = load i64, ptr %l70, !tbaa !24
  %t142 = load i64, ptr %l73, !tbaa !24
  %t143 = icmp slt i64 %t141, %t142
  %t145 = xor i1 %t143, true
  br i1 %t145, label %bb36, label %bb37
bb36:
  call void @__olang_scope_close(ptr %s9)
  br label %bb54
bb37:
  br label %bb38
bb38:
  %t147 = load i64, ptr %l13, !tbaa !24
  store i64 %t147, ptr %l14, !tbaa !24
  %t149 = load ptr, ptr %l12, !tbaa !29
  store ptr %t149, ptr %l77, !tbaa !29
  %t150 = load i64, ptr %l13, !tbaa !24
  %t151 = load ptr, ptr %l77, !tbaa !29
  %t152 = call ptr @__olang_scope_or(ptr %v4, ptr %t151)
  %t153 = ptrtoint ptr %t152 to i64
  %t155 = inttoptr i64 %t153 to ptr
  %t156 = load ptr, ptr %l77, !tbaa !29
  %t158 = call %"compiler/listing:Remark" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flisting_3aRemark_3e_2eAt_3ccompiler_2flisting_3aRemark_3e(ptr %t155, ptr %s9, ptr %t156, i64 %t150)
  store %"compiler/listing:Remark" %t158, ptr %l80
  br label %bb39
bb39:
  %t159 = load %"compiler/listing:Remark", ptr %l80
  store %"compiler/listing:Remark" %t159, ptr %l15
  %t162 = call i1 @compiler_2flisting_2esame(ptr %s6, ptr %s9, ptr %l10, ptr %l15)
  store i1 %t162, ptr %l83
  br label %bb40
bb40:
  %t163 = load i1, ptr %l83, !tbaa !21
  br i1 %t163, label %bb41, label %bb42
bb41:
  %t164 = getelementptr %"compiler/listing:Remark", ptr %l15, i32 0, i32 5
  %t165 = load { i64, ptr }, ptr %t164, !tbaa !27
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t168 = getelementptr %"compiler/listing:Writer", ptr %t166, i32 0, i32 3
  %t169 = load { i64, ptr }, ptr %t168, !tbaa !27
  store { i64, ptr } %t169, ptr %l87, !tbaa !27
  %t170 = load { i64, ptr }, ptr %l87, !tbaa !27
  %t171 = extractvalue { i64, ptr } %t170, 1
  %t172 = call ptr @__olang_scope_or(ptr %v5, ptr %t171)
  %t173 = ptrtoint ptr %t172 to i64
  %t175 = inttoptr i64 %t173 to ptr
  %t177 = load { i64, ptr }, ptr %l87, !tbaa !27
  %t178 = call i1 @compiler_2flisting_2eofAny(ptr %s9, ptr %t175, { i64, ptr } %t165, { i64, ptr } %t177)
  store i1 %t178, ptr %l89
  br label %bb43
bb42:
  store i1 false, ptr %l84, !tbaa !21
  br label %bb44
bb43:
  %t179 = load i1, ptr %l89, !tbaa !21
  store i1 %t179, ptr %l84, !tbaa !21
  br label %bb44
bb44:
  %t180 = load i1, ptr %l84, !tbaa !21
  br i1 %t180, label %bb45, label %bb46
bb45:
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t183 = getelementptr %"compiler/listing:Writer", ptr %t181, i32 0, i32 4
  %t184 = load i64, ptr %l14, !tbaa !24
  %t187 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t183, i64 %t184)
  store i1 %t187, ptr %l94
  br label %bb47
bb46:
  store i1 false, ptr %l90, !tbaa !21
  br label %bb48
bb47:
  %t188 = load i1, ptr %l94, !tbaa !21
  %t189 = xor i1 %t188, true
  store i1 %t189, ptr %l90, !tbaa !21
  br label %bb48
bb48:
  %t191 = load i1, ptr %l90, !tbaa !21
  br i1 %t191, label %bb49, label %bb50
bb49:
  %t192 = load ptr, ptr %l0, !tbaa !29
  %t194 = getelementptr %"compiler/listing:Writer", ptr %t192, i32 0, i32 4
  %t195 = load i64, ptr %l14, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t194, i64 %t195, i1 true)
  br label %bb51
bb50:
  br label %bb52
bb51:
  %t198 = load i64, ptr %l11, !tbaa !24
  %t200 = add i64 %t198, 1
  store i64 %t200, ptr %l11, !tbaa !24
  br label %bb52
bb52:
  call void @__olang_scope_close(ptr %s9)
  br label %bb53
bb53:
  %t202 = load i64, ptr %l13, !tbaa !24
  %t204 = add i64 %t202, 1
  store i64 %t204, ptr %l13, !tbaa !24
  br label %bb34
bb54:
  store ptr %l6, ptr %l103, !tbaa !29
  %t206 = load ptr, ptr %l0, !tbaa !29
  %t208 = getelementptr %"compiler/listing:Writer", ptr %t206, i32 0, i32 0
  %t209 = load { i64, ptr }, ptr %t208, !tbaa !27
  store { i64, ptr } %t209, ptr %l105, !tbaa !27
  store { i64, ptr } %a2, ptr %l106, !tbaa !27
  %t211 = getelementptr %"compiler/listing:Remark", ptr %l10, i32 0, i32 0
  %t212 = load { i64, ptr }, ptr %t211, !tbaa !27
  %t214 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2ePadEnd(ptr %s6, ptr %s6, { i64, ptr } %t212, i64 9, i8 32)
  store { i64, ptr } %t214, ptr %l108
  br label %bb55
bb55:
  %t215 = load { i64, ptr }, ptr %l108, !tbaa !27
  %t216 = extractvalue { i64, ptr } %t215, 0
  store i64 %t216, ptr %l109, !tbaa !24
  %t217 = load i64, ptr %l109, !tbaa !24
  %t218 = mul i64 %t217, 1
  %t219 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t218)
  %t220 = insertvalue { i64, ptr } undef, i64 %t217, 0
  %t221 = insertvalue { i64, ptr } %t220, ptr %t219, 1
  store { i64, ptr } %t221, ptr %l110, !tbaa !27
  %t222 = getelementptr { i64, ptr }, ptr %l110, i32 0, i32 1
  %t223 = load ptr, ptr %t222, !tbaa !27
  %t224 = getelementptr { i64, ptr }, ptr %l108, i32 0, i32 1
  %t225 = load ptr, ptr %t224, !tbaa !27
  %t226 = load i64, ptr %l109, !tbaa !24
  %t227 = mul i64 %t226, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t223, ptr %t225, i64 %t227, i1 false)
  %t228 = getelementptr %"compiler/listing:Remark", ptr %l10, i32 0, i32 1
  %t229 = load { i64, ptr }, ptr %t228, !tbaa !27
  store { i64, ptr } %t229, ptr %l111, !tbaa !27
  %t230 = getelementptr %"compiler/listing:Remark", ptr %l10, i32 0, i32 7
  %t231 = load { i64, ptr }, ptr %t230, !tbaa !27
  store { i64, ptr } %t231, ptr %l112, !tbaa !27
  %t232 = load i64, ptr %l11, !tbaa !24
  %t234 = icmp sgt i64 %t232, 1
  br i1 %t234, label %bb56, label %bb57
bb56:
  %t236 = load i64, ptr %l11, !tbaa !24
  %t237 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d56, i32 0, i32 1) }, 1
  %t238 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d56, i32 0, i32 1) }, 0
  %t240 = call i64 @__olang_fmt_i64(ptr null, i64 %t236)
  %t241 = add i64 %t238, %t240
  %t242 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d57, i32 0, i32 1) }, 1
  %t243 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d57, i32 0, i32 1) }, 0
  %t244 = add i64 %t241, %t243
  %t245 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t244)
  call void @olang_textcopy(ptr %t245, ptr %t237, i64 %t238)
  %t246 = getelementptr i8, ptr %t245, i64 %t238
  %t247 = call i64 @__olang_fmt_i64(ptr %t246, i64 %t236)
  %t248 = getelementptr i8, ptr %t246, i64 %t240
  call void @olang_textcopy(ptr %t248, ptr %t242, i64 %t243)
  %t249 = insertvalue { i64, ptr } undef, i64 %t244, 0
  %t250 = insertvalue { i64, ptr } %t249, ptr %t245, 1
  %t252 = extractvalue { i64, ptr } %t250, 0
  %t253 = extractvalue { i64, ptr } %t250, 1
  %t254 = mul i64 %t252, 1
  %t255 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t254)
  call void @llvm.memcpy.p0.p0.i64(ptr %t255, ptr %t253, i64 %t254, i1 false)
  %t256 = insertvalue { i64, ptr } undef, i64 %t252, 0
  %t257 = insertvalue { i64, ptr } %t256, ptr %t255, 1
  store { i64, ptr } %t257, ptr %l115, !tbaa !27
  br label %bb58
bb57:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d58, i32 0, i32 1) }, ptr %l115, !tbaa !27
  br label %bb58
bb58:
  %t259 = load { i64, ptr }, ptr %l105, !tbaa !27
  %t260 = extractvalue { i64, ptr } %t259, 1
  %t261 = extractvalue { i64, ptr } %t259, 0
  %t262 = load { i64, ptr }, ptr %l106, !tbaa !27
  %t263 = extractvalue { i64, ptr } %t262, 1
  %t264 = extractvalue { i64, ptr } %t262, 0
  %t265 = add i64 %t261, %t264
  %t266 = load { i64, ptr }, ptr %l110, !tbaa !27
  %t267 = extractvalue { i64, ptr } %t266, 1
  %t268 = extractvalue { i64, ptr } %t266, 0
  %t269 = add i64 %t265, %t268
  %t270 = load { i64, ptr }, ptr %l111, !tbaa !27
  %t271 = extractvalue { i64, ptr } %t270, 1
  %t272 = extractvalue { i64, ptr } %t270, 0
  %t273 = add i64 %t269, %t272
  %t274 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d59, i32 0, i32 1) }, 1
  %t275 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d59, i32 0, i32 1) }, 0
  %t276 = add i64 %t273, %t275
  %t277 = load { i64, ptr }, ptr %l112, !tbaa !27
  %t278 = extractvalue { i64, ptr } %t277, 1
  %t279 = extractvalue { i64, ptr } %t277, 0
  %t280 = add i64 %t276, %t279
  %t281 = load { i64, ptr }, ptr %l115, !tbaa !27
  %t282 = extractvalue { i64, ptr } %t281, 1
  %t283 = extractvalue { i64, ptr } %t281, 0
  %t284 = add i64 %t280, %t283
  %t285 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d60, i32 0, i32 1) }, 1
  %t286 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d60, i32 0, i32 1) }, 0
  %t287 = add i64 %t284, %t286
  %t288 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t287)
  call void @olang_textcopy(ptr %t288, ptr %t260, i64 %t261)
  %t289 = getelementptr i8, ptr %t288, i64 %t261
  call void @olang_textcopy(ptr %t289, ptr %t263, i64 %t264)
  %t290 = getelementptr i8, ptr %t289, i64 %t264
  call void @olang_textcopy(ptr %t290, ptr %t267, i64 %t268)
  %t291 = getelementptr i8, ptr %t290, i64 %t268
  call void @olang_textcopy(ptr %t291, ptr %t271, i64 %t272)
  %t292 = getelementptr i8, ptr %t291, i64 %t272
  call void @olang_textcopy(ptr %t292, ptr %t274, i64 %t275)
  %t293 = getelementptr i8, ptr %t292, i64 %t275
  call void @olang_textcopy(ptr %t293, ptr %t278, i64 %t279)
  %t294 = getelementptr i8, ptr %t293, i64 %t279
  call void @olang_textcopy(ptr %t294, ptr %t282, i64 %t283)
  %t295 = getelementptr i8, ptr %t294, i64 %t283
  call void @olang_textcopy(ptr %t295, ptr %t285, i64 %t286)
  %t296 = insertvalue { i64, ptr } undef, i64 %t287, 0
  %t297 = insertvalue { i64, ptr } %t296, ptr %t288, 1
  %t299 = extractvalue { i64, ptr } %t297, 0
  %t300 = extractvalue { i64, ptr } %t297, 1
  %t301 = mul i64 %t299, 1
  %t302 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t301)
  call void @llvm.memcpy.p0.p0.i64(ptr %t302, ptr %t300, i64 %t301, i1 false)
  %t303 = insertvalue { i64, ptr } undef, i64 %t299, 0
  %t304 = insertvalue { i64, ptr } %t303, ptr %t302, 1
  %t305 = load ptr, ptr %l103, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s6, ptr %t305, { i64, ptr } %t304)
  br label %bb59
bb59:
  call void @__olang_scope_close(ptr %s6)
  br label %bb60
bb60:
  %t307 = load i64, ptr %l8, !tbaa !24
  %t309 = add i64 %t307, 1
  store i64 %t309, ptr %l8, !tbaa !24
  br label %bb15
bb61:
  %t312 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v3, ptr %l6)
  store { i64, ptr } %t312, ptr %l124
  br label %bb62
bb62:
  call void @__olang_scope_close(ptr %s0)
  %t313 = load { i64, ptr }, ptr %l124, !tbaa !27
  store { i64, ptr } %t313, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2flisting_2edefinedIn(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1, i1 %a2) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca i1
  %l3 = alloca %"std/prelude/text:LineIter"
  %l4 = alloca { i64, ptr }
  %l6 = alloca %"std/prelude/text:LineIter"
  %l7 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca i32
  %l12 = alloca i1
  %l14 = alloca i1
  %l16 = alloca i1
  %l17 = alloca i1
  %l20 = alloca i1
  %l24 = alloca i1
  %l29 = alloca i1
  %l30 = alloca i1
  %l33 = alloca { i64, ptr }
  %l34 = alloca i1
  %l36 = alloca { i64, ptr }
  %l39 = alloca i1
  %l42 = alloca i1
  %l43 = alloca i1
  %l48 = alloca i1
  %l49 = alloca i1
  %l54 = alloca i1
  %l59 = alloca i1
  %l61 = alloca { i64, ptr }
  %l65 = alloca i1
  %l67 = alloca { i64, ptr }
  %l68 = alloca { i64, ptr }
  %l71 = alloca i64
  %l73 = alloca { i64, ptr }
  %l76 = alloca i64
  %l77 = alloca i64
  %l82 = alloca { i64, ptr }
  %l84 = alloca { i64, ptr }
  %l85 = alloca { i64, ptr }
  %l86 = alloca i64
  %l87 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a1, ptr %l1
  store i1 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %v0, ptr %v0, { i64, ptr } %a0)
  store %"std/prelude/text:LineIter" %t3, ptr %l6
  br label %bb1
bb1:
  %t4 = load %"std/prelude/text:LineIter", ptr %l6
  store %"std/prelude/text:LineIter" %t4, ptr %l3
  br label %bb2
bb2:
  store %olang.scope zeroinitializer, ptr %s2
  %t6 = call { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %v0, ptr %v0, ptr %l3)
  %t7 = extractvalue { i32, { i64, ptr } } %t6, 1
  %t8 = extractvalue { i32, { i64, ptr } } %t6, 0
  store i32 %t8, ptr %l10
  %t9 = icmp ne i32 %t8, 0
  br i1 %t9, label %bb4, label %ok.10, !prof !99
ok.10:
  store { i64, ptr } %t7, ptr %l9
  br label %bb3
bb3:
  %t11 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t11, ptr %l7, !tbaa !27
  br label %bb6
bb4:
  %t12 = load i32, ptr %l10, !tbaa !23
  %t13 = ashr i32 %t12, 16
  %t15 = icmp eq i32 %t13, 1
  store i1 %t15, ptr %l12, !tbaa !21
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s2)
  br label %bb63
bb6:
  %t16 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t16, ptr %l4, !tbaa !27
  %t17 = load i1, ptr %l2, !tbaa !21
  br i1 %t17, label %bb7, label %bb8
bb7:
  %t19 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t21 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s2, { i64, ptr } %t19, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d61, i32 0, i32 1) })
  store i1 %t21, ptr %l16
  br label %bb9
bb8:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb10
bb9:
  %t22 = load i1, ptr %l16, !tbaa !21
  store i1 %t22, ptr %l14, !tbaa !21
  br label %bb10
bb10:
  %t23 = load i1, ptr %l14, !tbaa !21
  br i1 %t23, label %bb11, label %bb12
bb11:
  %t24 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t25 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t28 = call i1 @compiler_2flisting_2eirDefines(ptr %v0, ptr %v1, { i64, ptr } %t24, { i64, ptr } %t25)
  store i1 %t28, ptr %l20
  br label %bb13
bb12:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb14
bb13:
  %t29 = load i1, ptr %l20, !tbaa !21
  store i1 %t29, ptr %l17, !tbaa !21
  br label %bb14
bb14:
  %t30 = load i1, ptr %l17, !tbaa !21
  br i1 %t30, label %bb15, label %bb16
bb15:
  %t31 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t33 = extractvalue { i64, ptr } %t31, 1
  %t34 = extractvalue { i64, ptr } %t31, 0
  %t35 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t34)
  call void @olang_textcopy(ptr %t35, ptr %t33, i64 %t34)
  %t36 = insertvalue { i64, ptr } undef, i64 %t34, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t35, 1
  call void @__olang_scope_close(ptr %s2)
  store { i64, ptr } %t37, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t39 = load i1, ptr %l2, !tbaa !21
  br i1 %t39, label %bb18, label %bb19
bb18:
  %t41 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t42 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t43 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d62, i32 0, i32 1) }, 1
  %t44 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d62, i32 0, i32 1) }, 0
  %t46 = extractvalue { i64, ptr } %t42, 1
  %t47 = extractvalue { i64, ptr } %t42, 0
  %t48 = add i64 %t44, %t47
  %t49 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d63, i32 0, i32 1) }, 1
  %t50 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d63, i32 0, i32 1) }, 0
  %t51 = add i64 %t48, %t50
  %t52 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t51)
  call void @olang_textcopy(ptr %t52, ptr %t43, i64 %t44)
  %t53 = getelementptr i8, ptr %t52, i64 %t44
  call void @olang_textcopy(ptr %t53, ptr %t46, i64 %t47)
  %t54 = getelementptr i8, ptr %t53, i64 %t47
  call void @olang_textcopy(ptr %t54, ptr %t49, i64 %t50)
  %t55 = insertvalue { i64, ptr } undef, i64 %t51, 0
  %t56 = insertvalue { i64, ptr } %t55, ptr %t52, 1
  %t58 = extractvalue { i64, ptr } %t56, 0
  %t59 = extractvalue { i64, ptr } %t56, 1
  %t60 = mul i64 %t58, 1
  %t61 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t60)
  call void @llvm.memcpy.p0.p0.i64(ptr %t61, ptr %t59, i64 %t60, i1 false)
  %t62 = insertvalue { i64, ptr } undef, i64 %t58, 0
  %t63 = insertvalue { i64, ptr } %t62, ptr %t61, 1
  %t66 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s2, { i64, ptr } %t41, { i64, ptr } %t63)
  store i1 %t66, ptr %l29
  br label %bb20
bb19:
  store i1 false, ptr %l24, !tbaa !21
  br label %bb21
bb20:
  %t67 = load i1, ptr %l29, !tbaa !21
  store i1 %t67, ptr %l24, !tbaa !21
  br label %bb21
bb21:
  %t68 = load i1, ptr %l24, !tbaa !21
  br i1 %t68, label %bb22, label %bb23
bb22:
  %t69 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d64, i32 0, i32 1) }, ptr %l33, !tbaa !27
  %t72 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t73 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %s2, { i64, ptr } %t69, { i64, ptr } %t72)
  store i1 %t73, ptr %l34
  br label %bb24
bb23:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb25
bb24:
  %t74 = load i1, ptr %l34, !tbaa !21
  store i1 %t74, ptr %l30, !tbaa !21
  br label %bb25
bb25:
  %t75 = load i1, ptr %l30, !tbaa !21
  br i1 %t75, label %bb26, label %bb27
bb26:
  %t76 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t78 = call { i64, ptr } @compiler_2flisting_2ealiasee(ptr %v0, ptr %v2, { i64, ptr } %t76)
  store { i64, ptr } %t78, ptr %l36
  br label %bb28
bb27:
  br label %bb29
bb28:
  call void @__olang_scope_close(ptr %s2)
  %t79 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t79, ptr %rv
  br label %ret
bb29:
  %t80 = load i1, ptr %l2, !tbaa !21
  %t82 = xor i1 %t80, true
  br i1 %t82, label %bb30, label %bb31
bb30:
  %t84 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t85 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t88 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %t84, { i64, ptr } %t85)
  store i1 %t88, ptr %l42
  br label %bb32
bb31:
  store i1 false, ptr %l39, !tbaa !21
  br label %bb33
bb32:
  %t89 = load i1, ptr %l42, !tbaa !21
  store i1 %t89, ptr %l39, !tbaa !21
  br label %bb33
bb33:
  %t90 = load i1, ptr %l39, !tbaa !21
  br i1 %t90, label %bb34, label %bb35
bb34:
  %t91 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t92 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t94 = extractvalue { i64, ptr } %t92, 1
  %t95 = extractvalue { i64, ptr } %t92, 0
  %t96 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d65, i32 0, i32 1) }, 1
  %t97 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d65, i32 0, i32 1) }, 0
  %t98 = add i64 %t95, %t97
  %t99 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t98)
  call void @olang_textcopy(ptr %t99, ptr %t94, i64 %t95)
  %t100 = getelementptr i8, ptr %t99, i64 %t95
  call void @olang_textcopy(ptr %t100, ptr %t96, i64 %t97)
  %t101 = insertvalue { i64, ptr } undef, i64 %t98, 0
  %t102 = insertvalue { i64, ptr } %t101, ptr %t99, 1
  %t104 = extractvalue { i64, ptr } %t102, 0
  %t105 = extractvalue { i64, ptr } %t102, 1
  %t106 = mul i64 %t104, 1
  %t107 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t106)
  call void @llvm.memcpy.p0.p0.i64(ptr %t107, ptr %t105, i64 %t106, i1 false)
  %t108 = insertvalue { i64, ptr } undef, i64 %t104, 0
  %t109 = insertvalue { i64, ptr } %t108, ptr %t107, 1
  %t112 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s2, { i64, ptr } %t91, { i64, ptr } %t109)
  store i1 %t112, ptr %l48
  br label %bb36
bb35:
  store i1 false, ptr %l43, !tbaa !21
  br label %bb41
bb36:
  %t113 = load i1, ptr %l48, !tbaa !21
  br i1 %t113, label %bb37, label %bb38
bb37:
  store i1 true, ptr %l49, !tbaa !21
  br label %bb40
bb38:
  %t114 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t115 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t117 = extractvalue { i64, ptr } %t115, 1
  %t118 = extractvalue { i64, ptr } %t115, 0
  %t119 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d66, i32 0, i32 1) }, 1
  %t120 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d66, i32 0, i32 1) }, 0
  %t121 = add i64 %t118, %t120
  %t122 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t121)
  call void @olang_textcopy(ptr %t122, ptr %t117, i64 %t118)
  %t123 = getelementptr i8, ptr %t122, i64 %t118
  call void @olang_textcopy(ptr %t123, ptr %t119, i64 %t120)
  %t124 = insertvalue { i64, ptr } undef, i64 %t121, 0
  %t125 = insertvalue { i64, ptr } %t124, ptr %t122, 1
  %t127 = extractvalue { i64, ptr } %t125, 0
  %t128 = extractvalue { i64, ptr } %t125, 1
  %t129 = mul i64 %t127, 1
  %t130 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t129)
  call void @llvm.memcpy.p0.p0.i64(ptr %t130, ptr %t128, i64 %t129, i1 false)
  %t131 = insertvalue { i64, ptr } undef, i64 %t127, 0
  %t132 = insertvalue { i64, ptr } %t131, ptr %t130, 1
  %t135 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s2, { i64, ptr } %t114, { i64, ptr } %t132)
  store i1 %t135, ptr %l54
  br label %bb39
bb39:
  %t136 = load i1, ptr %l54, !tbaa !21
  store i1 %t136, ptr %l49, !tbaa !21
  br label %bb40
bb40:
  %t137 = load i1, ptr %l49, !tbaa !21
  store i1 %t137, ptr %l43, !tbaa !21
  br label %bb41
bb41:
  %t138 = load i1, ptr %l43, !tbaa !21
  br i1 %t138, label %bb42, label %bb43
bb42:
  %t139 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t141 = extractvalue { i64, ptr } %t139, 1
  %t142 = extractvalue { i64, ptr } %t139, 0
  %t143 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t142)
  call void @olang_textcopy(ptr %t143, ptr %t141, i64 %t142)
  %t144 = insertvalue { i64, ptr } undef, i64 %t142, 0
  %t145 = insertvalue { i64, ptr } %t144, ptr %t143, 1
  call void @__olang_scope_close(ptr %s2)
  store { i64, ptr } %t145, ptr %rv
  br label %ret
bb43:
  br label %bb44
bb44:
  %t147 = load i1, ptr %l2, !tbaa !21
  %t149 = xor i1 %t147, true
  br i1 %t149, label %bb45, label %bb46
bb45:
  %t151 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t153 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v0, ptr %v0, { i64, ptr } %t151)
  store { i64, ptr } %t153, ptr %l61
  br label %bb47
bb46:
  store i1 false, ptr %l59, !tbaa !21
  br label %bb49
bb47:
  %t154 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t155 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d67, i32 0, i32 1) }, 1
  %t156 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d67, i32 0, i32 1) }, 0
  %t158 = extractvalue { i64, ptr } %t154, 1
  %t159 = extractvalue { i64, ptr } %t154, 0
  %t160 = add i64 %t156, %t159
  %t161 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d68, i32 0, i32 1) }, 1
  %t162 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d68, i32 0, i32 1) }, 0
  %t163 = add i64 %t160, %t162
  %t164 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t163)
  call void @olang_textcopy(ptr %t164, ptr %t155, i64 %t156)
  %t165 = getelementptr i8, ptr %t164, i64 %t156
  call void @olang_textcopy(ptr %t165, ptr %t158, i64 %t159)
  %t166 = getelementptr i8, ptr %t165, i64 %t159
  call void @olang_textcopy(ptr %t166, ptr %t161, i64 %t162)
  %t167 = insertvalue { i64, ptr } undef, i64 %t163, 0
  %t168 = insertvalue { i64, ptr } %t167, ptr %t164, 1
  %t170 = extractvalue { i64, ptr } %t168, 0
  %t171 = extractvalue { i64, ptr } %t168, 1
  %t172 = mul i64 %t170, 1
  %t173 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t172)
  call void @llvm.memcpy.p0.p0.i64(ptr %t173, ptr %t171, i64 %t172, i1 false)
  %t174 = insertvalue { i64, ptr } undef, i64 %t170, 0
  %t175 = insertvalue { i64, ptr } %t174, ptr %t173, 1
  %t176 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t178 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s2, { i64, ptr } %t176, { i64, ptr } %t175)
  store i1 %t178, ptr %l65
  br label %bb48
bb48:
  %t179 = load i1, ptr %l65, !tbaa !21
  store i1 %t179, ptr %l59, !tbaa !21
  br label %bb49
bb49:
  %t180 = load i1, ptr %l59, !tbaa !21
  br i1 %t180, label %bb50, label %bb51
bb50:
  store %olang.scope zeroinitializer, ptr %s12
  %t181 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t183 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v0, ptr %v0, { i64, ptr } %t181)
  store { i64, ptr } %t183, ptr %l67
  br label %bb52
bb51:
  br label %bb61
bb52:
  %t184 = load { i64, ptr }, ptr %l67, !tbaa !27
  store { i64, ptr } %t184, ptr %l68, !tbaa !27
  %t185 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t187 = extractvalue { i64, ptr } %t185, 0
  %t189 = add i64 %t187, 7
  store i64 %t189, ptr %l71, !tbaa !24
  %t190 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t192 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v0, ptr %v0, { i64, ptr } %t190)
  store { i64, ptr } %t192, ptr %l73
  br label %bb53
bb53:
  %t193 = load { i64, ptr }, ptr %l73, !tbaa !27
  %t196 = extractvalue { i64, ptr } %t193, 0
  store i64 %t196, ptr %l76, !tbaa !24
  %t197 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t198 = extractvalue { i64, ptr } %t197, 0
  store i64 %t198, ptr %l77, !tbaa !24
  %t199 = load i64, ptr %l71, !tbaa !24
  %t200 = icmp sge i64 %t199, 0
  br i1 %t200, label %bb54, label %bb55
bb54:
  %t202 = load i64, ptr %l71, !tbaa !24
  %t203 = load i64, ptr %l76, !tbaa !24
  %t204 = icmp sle i64 %t202, %t203
  br i1 %t204, label %bb56, label %bb57
bb55:
  call void @__olang_check_failed(ptr @olang_loc_5a79b11f9a8ea358_a6600b1bb9cded74)
  unreachable
bb56:
  %t206 = load i64, ptr %l76, !tbaa !24
  %t207 = load i64, ptr %l77, !tbaa !24
  %t208 = icmp sle i64 %t206, %t207
  br i1 %t208, label %bb58, label %bb59
bb57:
  call void @__olang_check_failed(ptr @olang_loc_5a79b11f9a8ea358_a6600b1bb9cded74)
  unreachable
bb58:
  %t210 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t211 = load ptr, ptr %t210, !tbaa !27
  %t212 = load i64, ptr %l71, !tbaa !24
  %t213 = load i64, ptr %l76, !tbaa !24
  %t214 = getelementptr i8, ptr %t211, i64 %t212
  %t215 = sub i64 %t213, %t212
  %t216 = insertvalue { i64, ptr } undef, i64 %t215, 0
  %t217 = insertvalue { i64, ptr } %t216, ptr %t214, 1
  %t219 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v0, ptr %s12, { i64, ptr } %t217)
  store { i64, ptr } %t219, ptr %l82
  br label %bb60
bb59:
  call void @__olang_check_failed(ptr @olang_loc_5a79b11f9a8ea358_a6600b1bb9cded74)
  unreachable
bb60:
  %t220 = load { i64, ptr }, ptr %l82, !tbaa !27
  %t221 = extractvalue { i64, ptr } %t220, 1
  %t222 = extractvalue { i64, ptr } %t220, 0
  %t223 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t222)
  call void @olang_textcopy(ptr %t223, ptr %t221, i64 %t222)
  %t224 = insertvalue { i64, ptr } undef, i64 %t222, 0
  %t225 = insertvalue { i64, ptr } %t224, ptr %t223, 1
  call void @__olang_scope_close(ptr %s12)
  call void @__olang_scope_close(ptr %s2)
  store { i64, ptr } %t225, ptr %rv
  br label %ret
bb61:
  call void @__olang_scope_close(ptr %s2)
  br label %bb62
bb62:
  br label %bb2
bb63:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d69, i32 0, i32 1) }, ptr %l84, !tbaa !27
  %t227 = load { i64, ptr }, ptr %l84, !tbaa !27
  store { i64, ptr } %t227, ptr %l85, !tbaa !27
  %t228 = load { i64, ptr }, ptr %l85, !tbaa !27
  %t229 = extractvalue { i64, ptr } %t228, 0
  store i64 %t229, ptr %l86, !tbaa !24
  %t230 = load i64, ptr %l86, !tbaa !24
  %t231 = mul i64 %t230, 1
  %t232 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t231)
  %t233 = insertvalue { i64, ptr } undef, i64 %t230, 0
  %t234 = insertvalue { i64, ptr } %t233, ptr %t232, 1
  store { i64, ptr } %t234, ptr %l87, !tbaa !27
  %t235 = getelementptr { i64, ptr }, ptr %l87, i32 0, i32 1
  %t236 = load ptr, ptr %t235, !tbaa !27
  %t237 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t238 = load ptr, ptr %t237, !tbaa !27
  %t239 = load i64, ptr %l86, !tbaa !24
  %t240 = mul i64 %t239, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t236, ptr %t238, i64 %t240, i1 false)
  %t241 = load { i64, ptr }, ptr %l87, !tbaa !27
  store { i64, ptr } %t241, ptr %l85, !tbaa !27
  %t242 = load { i64, ptr }, ptr %l85, !tbaa !27
  store { i64, ptr } %t242, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2flisting_2efield(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i8
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i32
  %l16 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l25 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l35 = alloca i1
  %l36 = alloca i1
  %l38 = alloca i1
  %l39 = alloca { i64, ptr }
  %l46 = alloca { i64, ptr }
  %l51 = alloca i1
  %l54 = alloca i1
  %l60 = alloca i1
  %l61 = alloca { i64, ptr }
  %l66 = alloca i64
  %l69 = alloca i1
  %l70 = alloca { i64, ptr }
  %l75 = alloca i64
  %l77 = alloca { i64, ptr }
  %l82 = alloca i64
  %l86 = alloca i64
  %l91 = alloca { i64, ptr }
  %l92 = alloca i64
  %l94 = alloca i64
  %l95 = alloca i32
  %l98 = alloca i64
  %l100 = alloca i64
  %l101 = alloca i32
  %l104 = alloca { i64, ptr }
  %l105 = alloca i64
  %l106 = alloca i64
  %l111 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s6 = alloca %olang.scope
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
  %t6 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d70, i32 0, i32 1) }, 1
  %t7 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d70, i32 0, i32 1) }, 0
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
  %t29 = load i64, ptr %l2, !tbaa !24
  %t31 = icmp slt i64 %t29, 0
  br i1 %t31, label %bb5, label %bb6
bb5:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d71, i32 0, i32 1) }, ptr %l16, !tbaa !27
  %t33 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t33, ptr %l17, !tbaa !27
  %t34 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t34, 0
  store i64 %t35, ptr %l18, !tbaa !24
  %t36 = load i64, ptr %l18, !tbaa !24
  %t37 = mul i64 %t36, 1
  %t38 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t37)
  %t39 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t40 = insertvalue { i64, ptr } %t39, ptr %t38, 1
  store { i64, ptr } %t40, ptr %l19, !tbaa !27
  %t41 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !27
  %t43 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !27
  %t45 = load i64, ptr %l18, !tbaa !24
  %t46 = mul i64 %t45, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t42, ptr %t44, i64 %t46, i1 false)
  %t47 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t47, ptr %l17, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t48 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t48, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t49 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t49, ptr %l20, !tbaa !27
  %t50 = load i64, ptr %l2, !tbaa !24
  %t51 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t53 = extractvalue { i64, ptr } %t51, 0
  %t56 = add i64 %t50, %t53
  %t58 = add i64 %t56, 2
  store i64 %t58, ptr %l25, !tbaa !24
  %t59 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t62 = extractvalue { i64, ptr } %t59, 0
  store i64 %t62, ptr %l28, !tbaa !24
  %t63 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t64 = extractvalue { i64, ptr } %t63, 0
  store i64 %t64, ptr %l29, !tbaa !24
  %t65 = load i64, ptr %l25, !tbaa !24
  %t66 = icmp sge i64 %t65, 0
  br i1 %t66, label %bb8, label %bb9
bb8:
  %t68 = load i64, ptr %l25, !tbaa !24
  %t69 = load i64, ptr %l28, !tbaa !24
  %t70 = icmp sle i64 %t68, %t69
  br i1 %t70, label %bb10, label %bb11
bb9:
  call void @__olang_check_failed(ptr @olang_loc_6afa1fda02b1904e_762f30cdf4bfe02)
  unreachable
bb10:
  %t72 = load i64, ptr %l28, !tbaa !24
  %t73 = load i64, ptr %l29, !tbaa !24
  %t74 = icmp sle i64 %t72, %t73
  br i1 %t74, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_6afa1fda02b1904e_762f30cdf4bfe02)
  unreachable
bb12:
  %t76 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !27
  %t78 = load i64, ptr %l25, !tbaa !24
  %t79 = load i64, ptr %l28, !tbaa !24
  %t80 = getelementptr i8, ptr %t77, i64 %t78
  %t81 = sub i64 %t79, %t78
  %t82 = insertvalue { i64, ptr } undef, i64 %t81, 0
  %t83 = insertvalue { i64, ptr } %t82, ptr %t80, 1
  store { i64, ptr } %t83, ptr %l3, !tbaa !27
  %t85 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t87 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t85, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d72, i32 0, i32 1) })
  store i1 %t87, ptr %l35
  br label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_6afa1fda02b1904e_762f30cdf4bfe02)
  unreachable
bb14:
  %t88 = load i1, ptr %l35, !tbaa !21
  br i1 %t88, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l36, !tbaa !21
  br label %bb18
bb16:
  %t89 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t91 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t89, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d73, i32 0, i32 1) })
  store i1 %t91, ptr %l38
  br label %bb17
bb17:
  %t92 = load i1, ptr %l38, !tbaa !21
  store i1 %t92, ptr %l36, !tbaa !21
  br label %bb18
bb18:
  %t93 = load i1, ptr %l36, !tbaa !21
  br i1 %t93, label %bb19, label %bb20
bb19:
  %t94 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t94, ptr %l39, !tbaa !27
  %t95 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !27
  %t97 = getelementptr i8, ptr %t96, i64 0
  %t98 = load i8, ptr %t97, !tbaa !32
  store i8 %t98, ptr %l4, !tbaa !22
  store i64 1, ptr %l5, !tbaa !24
  br label %bb21
bb20:
  br label %bb55
bb21:
  %t100 = load i64, ptr %l5, !tbaa !24
  %t101 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t103 = extractvalue { i64, ptr } %t101, 0
  %t106 = icmp slt i64 %t100, %t103
  %t108 = xor i1 %t106, true
  br i1 %t108, label %bb22, label %bb23
bb22:
  br label %bb44
bb23:
  br label %bb24
bb24:
  %t110 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t110, ptr %l46, !tbaa !27
  %t111 = load i64, ptr %l5, !tbaa !24
  %t113 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !27
  %t115 = getelementptr i8, ptr %t114, i64 %t111
  %t116 = load i8, ptr %t115, !tbaa !32
  %t117 = load i8, ptr %l4, !tbaa !22
  %t120 = icmp eq i8 %t116, %t117
  br i1 %t120, label %bb25, label %bb26
bb25:
  %t122 = load i8, ptr %l4, !tbaa !22
  %t124 = icmp ne i8 %t122, 39
  br i1 %t124, label %bb27, label %bb28
bb26:
  store i1 false, ptr %l51, !tbaa !21
  br label %bb33
bb27:
  store i1 true, ptr %l54, !tbaa !21
  br label %bb29
bb28:
  %t126 = load i64, ptr %l5, !tbaa !24
  %t128 = add i64 %t126, 1
  %t129 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t131 = extractvalue { i64, ptr } %t129, 0
  %t134 = icmp sge i64 %t128, %t131
  store i1 %t134, ptr %l54, !tbaa !21
  br label %bb29
bb29:
  %t136 = load i1, ptr %l54, !tbaa !21
  br i1 %t136, label %bb30, label %bb31
bb30:
  store i1 true, ptr %l60, !tbaa !21
  br label %bb32
bb31:
  %t137 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t137, ptr %l61, !tbaa !27
  %t138 = load i64, ptr %l5, !tbaa !24
  %t140 = add i64 %t138, 1
  %t142 = getelementptr { i64, ptr }, ptr %l61, i32 0, i32 1
  %t143 = load ptr, ptr %t142, !tbaa !27
  %t144 = getelementptr i8, ptr %t143, i64 %t140
  %t145 = load i8, ptr %t144, !tbaa !32
  %t147 = icmp ne i8 %t145, 39
  store i1 %t147, ptr %l60, !tbaa !21
  br label %bb32
bb32:
  %t149 = load i1, ptr %l60, !tbaa !21
  store i1 %t149, ptr %l51, !tbaa !21
  br label %bb33
bb33:
  %t150 = load i1, ptr %l51, !tbaa !21
  br i1 %t150, label %bb34, label %bb35
bb34:
  br label %bb44
bb35:
  br label %bb36
bb36:
  %t151 = load i64, ptr %l5, !tbaa !24
  store i64 %t151, ptr %l66, !tbaa !24
  %t152 = load i8, ptr %l4, !tbaa !22
  %t154 = icmp eq i8 %t152, 39
  br i1 %t154, label %bb37, label %bb38
bb37:
  %t156 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t156, ptr %l70, !tbaa !27
  %t157 = load i64, ptr %l5, !tbaa !24
  %t159 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t160 = load ptr, ptr %t159, !tbaa !27
  %t161 = getelementptr i8, ptr %t160, i64 %t157
  %t162 = load i8, ptr %t161, !tbaa !32
  %t163 = load i8, ptr %l4, !tbaa !22
  %t166 = icmp eq i8 %t162, %t163
  store i1 %t166, ptr %l69, !tbaa !21
  br label %bb39
bb38:
  store i1 false, ptr %l69, !tbaa !21
  br label %bb39
bb39:
  %t168 = load i1, ptr %l69, !tbaa !21
  br i1 %t168, label %bb40, label %bb41
bb40:
  store i64 2, ptr %l75, !tbaa !24
  br label %bb42
bb41:
  store i64 1, ptr %l75, !tbaa !24
  br label %bb42
bb42:
  %t169 = load i64, ptr %l66, !tbaa !24
  %t170 = load i64, ptr %l75, !tbaa !24
  %t171 = add i64 %t169, %t170
  store i64 %t171, ptr %l5, !tbaa !24
  br label %bb43
bb43:
  br label %bb21
bb44:
  %t173 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t173, ptr %l77, !tbaa !27
  %t174 = load i64, ptr %l5, !tbaa !24
  %t175 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t177 = extractvalue { i64, ptr } %t175, 0
  %t180 = icmp slt i64 %t174, %t177
  br i1 %t180, label %bb45, label %bb46
bb45:
  %t182 = load i64, ptr %l5, !tbaa !24
  %t184 = add i64 %t182, 1
  store i64 %t184, ptr %l82, !tbaa !24
  br label %bb47
bb46:
  %t186 = load i64, ptr %l5, !tbaa !24
  store i64 %t186, ptr %l82, !tbaa !24
  br label %bb47
bb47:
  %t188 = load { i64, ptr }, ptr %l77, !tbaa !27
  %t189 = extractvalue { i64, ptr } %t188, 0
  store i64 %t189, ptr %l86, !tbaa !24
  %t190 = icmp sge i64 0, 0
  br i1 %t190, label %bb48, label %bb49
bb48:
  %t192 = load i64, ptr %l82, !tbaa !24
  %t193 = icmp sle i64 0, %t192
  br i1 %t193, label %bb50, label %bb51
bb49:
  call void @__olang_check_failed(ptr @olang_loc_a32004acca342e4b_53d1fb3a96a10aff)
  unreachable
bb50:
  %t195 = load i64, ptr %l82, !tbaa !24
  %t196 = load i64, ptr %l86, !tbaa !24
  %t197 = icmp sle i64 %t195, %t196
  br i1 %t197, label %bb52, label %bb53
bb51:
  call void @__olang_check_failed(ptr @olang_loc_a32004acca342e4b_53d1fb3a96a10aff)
  unreachable
bb52:
  %t199 = getelementptr { i64, ptr }, ptr %l77, i32 0, i32 1
  %t200 = load ptr, ptr %t199, !tbaa !27
  %t201 = load i64, ptr %l82, !tbaa !24
  %t202 = getelementptr i8, ptr %t200, i64 0
  %t203 = sub i64 %t201, 0
  %t204 = insertvalue { i64, ptr } undef, i64 %t203, 0
  %t205 = insertvalue { i64, ptr } %t204, ptr %t202, 1
  %t207 = call { i64, ptr } @compiler_2flisting_2eunquote(ptr %v0, ptr %v2, { i64, ptr } %t205)
  store { i64, ptr } %t207, ptr %l91
  br label %bb54
bb53:
  call void @__olang_check_failed(ptr @olang_loc_a32004acca342e4b_53d1fb3a96a10aff)
  unreachable
bb54:
  call void @__olang_scope_close(ptr %s0)
  %t208 = load { i64, ptr }, ptr %l91, !tbaa !27
  store { i64, ptr } %t208, ptr %rv
  br label %ret
bb55:
  %t209 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t211 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %s0, { i64, ptr } %t209, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d74, i32 0, i32 1) })
  %t212 = extractvalue { i32, i64 } %t211, 1
  %t213 = extractvalue { i32, i64 } %t211, 0
  store i32 %t213, ptr %l95
  %t214 = icmp ne i32 %t213, 0
  br i1 %t214, label %bb57, label %ok.215, !prof !99
ok.215:
  store i64 %t212, ptr %l94
  br label %bb56
bb56:
  %t216 = load i64, ptr %l94, !tbaa !24
  store i64 %t216, ptr %l92, !tbaa !24
  br label %bb59
bb57:
  br label %bb58
bb58:
  store i64 -1, ptr %l92, !tbaa !24
  br label %bb59
bb59:
  %t217 = load i64, ptr %l92, !tbaa !24
  store i64 %t217, ptr %l6, !tbaa !24
  %t218 = load i64, ptr %l6, !tbaa !24
  %t220 = icmp slt i64 %t218, 0
  br i1 %t220, label %bb60, label %bb61
bb60:
  store %olang.scope zeroinitializer, ptr %s6
  %t222 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t224 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %s6, { i64, ptr } %t222, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d75, i32 0, i32 1) })
  %t225 = extractvalue { i32, i64 } %t224, 1
  %t226 = extractvalue { i32, i64 } %t224, 0
  store i32 %t226, ptr %l101
  %t227 = icmp ne i32 %t226, 0
  br i1 %t227, label %bb63, label %ok.228, !prof !99
ok.228:
  store i64 %t225, ptr %l100
  br label %bb62
bb61:
  br label %bb66
bb62:
  %t229 = load i64, ptr %l100, !tbaa !24
  store i64 %t229, ptr %l98, !tbaa !24
  br label %bb65
bb63:
  br label %bb64
bb64:
  %t230 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t232 = extractvalue { i64, ptr } %t230, 0
  store i64 %t232, ptr %l98, !tbaa !24
  br label %bb65
bb65:
  %t234 = load i64, ptr %l98, !tbaa !24
  store i64 %t234, ptr %l6, !tbaa !24
  call void @__olang_scope_close(ptr %s6)
  br label %bb66
bb66:
  %t235 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t235, ptr %l104, !tbaa !27
  %t236 = load i64, ptr %l6, !tbaa !24
  store i64 %t236, ptr %l105, !tbaa !24
  %t237 = load { i64, ptr }, ptr %l104, !tbaa !27
  %t238 = extractvalue { i64, ptr } %t237, 0
  store i64 %t238, ptr %l106, !tbaa !24
  %t239 = icmp sge i64 0, 0
  br i1 %t239, label %bb67, label %bb68
bb67:
  %t241 = load i64, ptr %l105, !tbaa !24
  %t242 = icmp sle i64 0, %t241
  br i1 %t242, label %bb69, label %bb70
bb68:
  call void @__olang_check_failed(ptr @olang_loc_f323dd54c7e2a5d0_8d4c3c3918b6d694)
  unreachable
bb69:
  %t244 = load i64, ptr %l105, !tbaa !24
  %t245 = load i64, ptr %l106, !tbaa !24
  %t246 = icmp sle i64 %t244, %t245
  br i1 %t246, label %bb71, label %bb72
bb70:
  call void @__olang_check_failed(ptr @olang_loc_f323dd54c7e2a5d0_8d4c3c3918b6d694)
  unreachable
bb71:
  %t248 = getelementptr { i64, ptr }, ptr %l104, i32 0, i32 1
  %t249 = load ptr, ptr %t248, !tbaa !27
  %t250 = load i64, ptr %l105, !tbaa !24
  %t251 = getelementptr i8, ptr %t249, i64 0
  %t252 = sub i64 %t250, 0
  %t253 = insertvalue { i64, ptr } undef, i64 %t252, 0
  %t254 = insertvalue { i64, ptr } %t253, ptr %t251, 1
  %t256 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v0, ptr %s0, { i64, ptr } %t254)
  store { i64, ptr } %t256, ptr %l111
  br label %bb73
bb72:
  call void @__olang_check_failed(ptr @olang_loc_f323dd54c7e2a5d0_8d4c3c3918b6d694)
  unreachable
bb73:
  %t257 = load { i64, ptr }, ptr %l111, !tbaa !27
  %t258 = extractvalue { i64, ptr } %t257, 1
  %t259 = extractvalue { i64, ptr } %t257, 0
  %t260 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t259)
  call void @olang_textcopy(ptr %t260, ptr %t258, i64 %t259)
  %t261 = insertvalue { i64, ptr } undef, i64 %t259, 0
  %t262 = insertvalue { i64, ptr } %t261, ptr %t260, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t262, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2flisting_2efileLine(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca i64
  %l21 = alloca { i64, ptr }
  %l22 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i32
  %l26 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i32
  %l32 = alloca i1
  %l35 = alloca i1
  %l39 = alloca i64
  %l44 = alloca i64
  %l45 = alloca { i64, ptr }
  %l46 = alloca i64
  %l47 = alloca i64
  %l51 = alloca { i64, ptr }
  %l52 = alloca i64
  %l53 = alloca i32
  %l54 = alloca i64
  %l55 = alloca i32
  %l58 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l59 = alloca { i64, ptr }
  %l60 = alloca i64
  %l63 = alloca i64
  %l64 = alloca i64
  %l71 = alloca { i64, ptr }
  %l72 = alloca i1
  %l73 = alloca i1
  %l75 = alloca i64
  %l78 = alloca i64
  %l80 = alloca i64
  %l81 = alloca i32
  %l82 = alloca i64
  %l83 = alloca { i64, ptr }
  %l85 = alloca i64
  %l88 = alloca i64
  %l89 = alloca i64
  %l94 = alloca i64
  %l95 = alloca i32
  %l98 = alloca ptr
  %l99 = alloca i64
  %l101 = alloca { i64, ptr }
  %l103 = alloca i64
  %l107 = alloca i64
  %l108 = alloca i64
  %l115 = alloca { i64, ptr }
  %l119 = alloca i64
  %l122 = alloca i64
  %l123 = alloca i64
  %l129 = alloca i64
  %l131 = alloca ptr
  %l132 = alloca i64
  %l133 = alloca i64
  %l135 = alloca ptr
  %l137 = alloca i64
  %l139 = alloca { i64, ptr }
  %l142 = alloca ptr
  %l143 = alloca i64
  %l144 = alloca i64
  %l147 = alloca i64
  %l149 = alloca { i64, ptr }
  %l151 = alloca { i64, ptr }
  %l153 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t1, ptr %l12, !tbaa !27
  %t2 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t2, 0
  store i64 %t5, ptr %l15, !tbaa !24
  %t6 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t6, 0
  store i64 %t7, ptr %l16, !tbaa !24
  %t8 = icmp sge i64 5, 0
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load i64, ptr %l15, !tbaa !24
  %t11 = icmp sle i64 5, %t10
  br i1 %t11, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_2238304466d31cdc_a18281d53071ef08)
  unreachable
bb3:
  %t13 = load i64, ptr %l15, !tbaa !24
  %t14 = load i64, ptr %l16, !tbaa !24
  %t15 = icmp sle i64 %t13, %t14
  br i1 %t15, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_2238304466d31cdc_a18281d53071ef08)
  unreachable
bb5:
  %t17 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !27
  %t19 = load i64, ptr %l15, !tbaa !24
  %t20 = getelementptr i8, ptr %t18, i64 5
  %t21 = sub i64 %t19, 5
  %t22 = insertvalue { i64, ptr } undef, i64 %t21, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t20, 1
  %t25 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v0, ptr %v0, { i64, ptr } %t23)
  store { i64, ptr } %t25, ptr %l21
  br label %bb7
bb6:
  call void @__olang_check_failed(ptr @olang_loc_2238304466d31cdc_a18281d53071ef08)
  unreachable
bb7:
  %t26 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t26, ptr %l3, !tbaa !27
  %t27 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t29 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %s0, { i64, ptr } %t27, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d76, i32 0, i32 1) })
  %t30 = extractvalue { i32, i64 } %t29, 1
  %t31 = extractvalue { i32, i64 } %t29, 0
  store i32 %t31, ptr %l25
  %t32 = icmp ne i32 %t31, 0
  br i1 %t32, label %bb9, label %ok.33, !prof !99
ok.33:
  store i64 %t30, ptr %l24
  br label %bb8
bb8:
  %t34 = load i64, ptr %l24, !tbaa !24
  store i64 %t34, ptr %l22, !tbaa !24
  br label %bb11
bb9:
  br label %bb10
bb10:
  store i64 -1, ptr %l22, !tbaa !24
  br label %bb11
bb11:
  %t35 = load i64, ptr %l22, !tbaa !24
  store i64 %t35, ptr %l4, !tbaa !24
  %t36 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t38 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %s0, { i64, ptr } %t36, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) })
  %t39 = extractvalue { i32, i64 } %t38, 1
  %t40 = extractvalue { i32, i64 } %t38, 0
  store i32 %t40, ptr %l29
  %t41 = icmp ne i32 %t40, 0
  br i1 %t41, label %bb13, label %ok.42, !prof !99
ok.42:
  store i64 %t39, ptr %l28
  br label %bb12
bb12:
  %t43 = load i64, ptr %l28, !tbaa !24
  store i64 %t43, ptr %l26, !tbaa !24
  br label %bb15
bb13:
  br label %bb14
bb14:
  store i64 -1, ptr %l26, !tbaa !24
  br label %bb15
bb15:
  %t44 = load i64, ptr %l26, !tbaa !24
  store i64 %t44, ptr %l5, !tbaa !24
  %t45 = load i64, ptr %l4, !tbaa !24
  %t47 = icmp sge i64 %t45, 0
  br i1 %t47, label %bb16, label %bb17
bb16:
  %t49 = load i64, ptr %l5, !tbaa !24
  %t51 = icmp slt i64 %t49, 0
  br i1 %t51, label %bb18, label %bb19
bb17:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb21
bb18:
  store i1 true, ptr %l35, !tbaa !21
  br label %bb20
bb19:
  %t53 = load i64, ptr %l4, !tbaa !24
  %t54 = load i64, ptr %l5, !tbaa !24
  %t57 = icmp slt i64 %t53, %t54
  store i1 %t57, ptr %l35, !tbaa !21
  br label %bb20
bb20:
  %t59 = load i1, ptr %l35, !tbaa !21
  store i1 %t59, ptr %l32, !tbaa !21
  br label %bb21
bb21:
  %t60 = load i1, ptr %l32, !tbaa !21
  br i1 %t60, label %bb22, label %bb23
bb22:
  %t61 = load i64, ptr %l4, !tbaa !24
  store i64 %t61, ptr %l39, !tbaa !24
  br label %bb24
bb23:
  %t63 = load i64, ptr %l5, !tbaa !24
  store i64 %t63, ptr %l39, !tbaa !24
  br label %bb24
bb24:
  %t65 = load i64, ptr %l39, !tbaa !24
  store i64 %t65, ptr %l6, !tbaa !24
  %t66 = load i64, ptr %l6, !tbaa !24
  %t68 = icmp slt i64 %t66, 0
  br i1 %t68, label %bb25, label %bb26
bb25:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb26:
  br label %bb27
bb27:
  %t70 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t70, ptr %l45, !tbaa !27
  %t71 = load i64, ptr %l6, !tbaa !24
  store i64 %t71, ptr %l46, !tbaa !24
  %t72 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t73 = extractvalue { i64, ptr } %t72, 0
  store i64 %t73, ptr %l47, !tbaa !24
  %t74 = icmp sge i64 0, 0
  br i1 %t74, label %bb28, label %bb29
bb28:
  %t76 = load i64, ptr %l46, !tbaa !24
  %t77 = icmp sle i64 0, %t76
  br i1 %t77, label %bb30, label %bb31
bb29:
  call void @__olang_check_failed(ptr @olang_loc_a0e57960875e3249_f03c8e9377147565)
  unreachable
bb30:
  %t79 = load i64, ptr %l46, !tbaa !24
  %t80 = load i64, ptr %l47, !tbaa !24
  %t81 = icmp sle i64 %t79, %t80
  br i1 %t81, label %bb32, label %bb33
bb31:
  call void @__olang_check_failed(ptr @olang_loc_a0e57960875e3249_f03c8e9377147565)
  unreachable
bb32:
  %t83 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t84 = load ptr, ptr %t83, !tbaa !27
  %t85 = load i64, ptr %l46, !tbaa !24
  %t86 = getelementptr i8, ptr %t84, i64 0
  %t87 = sub i64 %t85, 0
  %t88 = insertvalue { i64, ptr } undef, i64 %t87, 0
  %t89 = insertvalue { i64, ptr } %t88, ptr %t86, 1
  store { i64, ptr } %t89, ptr %l51, !tbaa !27
  %t90 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s0, i64 10)
  %t91 = extractvalue { i32, i64 } %t90, 1
  %t92 = extractvalue { i32, i64 } %t90, 0
  store i32 %t92, ptr %l53
  %t93 = icmp ne i32 %t92, 0
  br i1 %t93, label %bb35, label %ok.94, !prof !99
ok.94:
  store i64 %t91, ptr %l52
  br label %bb34
bb33:
  call void @__olang_check_failed(ptr @olang_loc_a0e57960875e3249_f03c8e9377147565)
  unreachable
bb34:
  %t95 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t96 = load i64, ptr %l52, !tbaa !24
  %t97 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v0, { i64, ptr } %t95, i64 %t96)
  %t98 = extractvalue { i32, i64 } %t97, 1
  %t99 = extractvalue { i32, i64 } %t97, 0
  store i32 %t99, ptr %l55
  %t100 = icmp ne i32 %t99, 0
  br i1 %t100, label %bb38, label %ok.101, !prof !99
ok.101:
  store i64 %t98, ptr %l54
  br label %bb37
bb35:
  br label %bb36
bb36:
  store i64 -1, ptr %l44, !tbaa !24
  br label %bb39
bb37:
  %t102 = load i64, ptr %l54, !tbaa !24
  store i64 %t102, ptr %l44, !tbaa !24
  br label %bb39
bb38:
  br label %bb36
bb39:
  %t103 = load i64, ptr %l44, !tbaa !24
  store i64 %t103, ptr %l7, !tbaa !24
  %t104 = load i64, ptr %l7, !tbaa !24
  %t106 = icmp slt i64 %t104, 0
  br i1 %t106, label %bb40, label %bb41
bb40:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb41:
  br label %bb42
bb42:
  %t108 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t108, ptr %l58
  br label %bb43
bb43:
  %t109 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l58
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t109, ptr %l8
  %t110 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t110, ptr %l59, !tbaa !27
  %t111 = load i64, ptr %l6, !tbaa !24
  store i64 %t111, ptr %l60, !tbaa !24
  %t112 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t115 = extractvalue { i64, ptr } %t112, 0
  store i64 %t115, ptr %l63, !tbaa !24
  %t116 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t117 = extractvalue { i64, ptr } %t116, 0
  store i64 %t117, ptr %l64, !tbaa !24
  %t118 = load i64, ptr %l60, !tbaa !24
  %t119 = icmp sge i64 %t118, 0
  br i1 %t119, label %bb44, label %bb45
bb44:
  %t121 = load i64, ptr %l60, !tbaa !24
  %t122 = load i64, ptr %l63, !tbaa !24
  %t123 = icmp sle i64 %t121, %t122
  br i1 %t123, label %bb46, label %bb47
bb45:
  call void @__olang_check_failed(ptr @olang_loc_96c24661ddd014aa_b59c706e032d6c46)
  unreachable
bb46:
  %t125 = load i64, ptr %l63, !tbaa !24
  %t126 = load i64, ptr %l64, !tbaa !24
  %t127 = icmp sle i64 %t125, %t126
  br i1 %t127, label %bb48, label %bb49
bb47:
  call void @__olang_check_failed(ptr @olang_loc_96c24661ddd014aa_b59c706e032d6c46)
  unreachable
bb48:
  %t129 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t130 = load ptr, ptr %t129, !tbaa !27
  %t131 = load i64, ptr %l60, !tbaa !24
  %t132 = load i64, ptr %l63, !tbaa !24
  %t133 = getelementptr i8, ptr %t130, i64 %t131
  %t134 = sub i64 %t132, %t131
  %t135 = insertvalue { i64, ptr } undef, i64 %t134, 0
  %t136 = insertvalue { i64, ptr } %t135, ptr %t133, 1
  store { i64, ptr } %t136, ptr %l9, !tbaa !27
  br label %bb50
bb49:
  call void @__olang_check_failed(ptr @olang_loc_96c24661ddd014aa_b59c706e032d6c46)
  unreachable
bb50:
  store %olang.scope zeroinitializer, ptr %s3
  %t138 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, ptr %l71, !tbaa !27
  %t141 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t142 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %s3, { i64, ptr } %t138, { i64, ptr } %t141)
  store i1 %t142, ptr %l72
  br label %bb51
bb51:
  %t143 = load i1, ptr %l72, !tbaa !21
  br i1 %t143, label %bb52, label %bb53
bb52:
  %t145 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l8)
  store i64 %t145, ptr %l75
  br label %bb54
bb53:
  store i1 false, ptr %l73, !tbaa !21
  br label %bb55
bb54:
  %t146 = load i64, ptr %l75, !tbaa !24
  %t147 = icmp slt i64 %t146, 2
  store i1 %t147, ptr %l73, !tbaa !21
  br label %bb55
bb55:
  %t149 = load i1, ptr %l73, !tbaa !21
  %t150 = xor i1 %t149, true
  br i1 %t150, label %bb56, label %bb57
bb56:
  call void @__olang_scope_close(ptr %s3)
  br label %bb92
bb57:
  br label %bb58
bb58:
  %t152 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t154 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %s3, { i64, ptr } %t152, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d79, i32 0, i32 1) })
  %t155 = extractvalue { i32, i64 } %t154, 1
  %t156 = extractvalue { i32, i64 } %t154, 0
  store i32 %t156, ptr %l81
  %t157 = icmp ne i32 %t156, 0
  br i1 %t157, label %bb60, label %ok.158, !prof !99
ok.158:
  store i64 %t155, ptr %l80
  br label %bb59
bb59:
  %t159 = load i64, ptr %l80, !tbaa !24
  store i64 %t159, ptr %l78, !tbaa !24
  br label %bb62
bb60:
  br label %bb61
bb61:
  store i64 0, ptr %l78, !tbaa !24
  br label %bb62
bb62:
  %t160 = load i64, ptr %l78, !tbaa !24
  store i64 %t160, ptr %l10, !tbaa !24
  %t161 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t161, ptr %l83, !tbaa !27
  %t162 = load i64, ptr %l10, !tbaa !24
  %t164 = add i64 %t162, 1
  store i64 %t164, ptr %l85, !tbaa !24
  %t165 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t168 = extractvalue { i64, ptr } %t165, 0
  store i64 %t168, ptr %l88, !tbaa !24
  %t169 = load { i64, ptr }, ptr %l83, !tbaa !27
  %t170 = extractvalue { i64, ptr } %t169, 0
  store i64 %t170, ptr %l89, !tbaa !24
  %t171 = load i64, ptr %l85, !tbaa !24
  %t172 = icmp sge i64 %t171, 0
  br i1 %t172, label %bb63, label %bb64
bb63:
  %t174 = load i64, ptr %l85, !tbaa !24
  %t175 = load i64, ptr %l88, !tbaa !24
  %t176 = icmp sle i64 %t174, %t175
  br i1 %t176, label %bb65, label %bb66
bb64:
  call void @__olang_check_failed(ptr @olang_loc_5830759408577a87_15470f09e840e423)
  unreachable
bb65:
  %t178 = load i64, ptr %l88, !tbaa !24
  %t179 = load i64, ptr %l89, !tbaa !24
  %t180 = icmp sle i64 %t178, %t179
  br i1 %t180, label %bb67, label %bb68
bb66:
  call void @__olang_check_failed(ptr @olang_loc_5830759408577a87_15470f09e840e423)
  unreachable
bb67:
  %t182 = getelementptr { i64, ptr }, ptr %l83, i32 0, i32 1
  %t183 = load ptr, ptr %t182, !tbaa !27
  %t184 = load i64, ptr %l85, !tbaa !24
  %t185 = load i64, ptr %l88, !tbaa !24
  %t186 = getelementptr i8, ptr %t183, i64 %t184
  %t187 = sub i64 %t185, %t184
  %t188 = insertvalue { i64, ptr } undef, i64 %t187, 0
  %t189 = insertvalue { i64, ptr } %t188, ptr %t186, 1
  %t191 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %s3, { i64, ptr } %t189, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d80, i32 0, i32 1) })
  %t192 = extractvalue { i32, i64 } %t191, 1
  %t193 = extractvalue { i32, i64 } %t191, 0
  store i32 %t193, ptr %l95
  %t194 = icmp ne i32 %t193, 0
  br i1 %t194, label %bb70, label %ok.195, !prof !99
ok.195:
  store i64 %t192, ptr %l94
  br label %bb69
bb68:
  call void @__olang_check_failed(ptr @olang_loc_5830759408577a87_15470f09e840e423)
  unreachable
bb69:
  %t196 = load i64, ptr %l94, !tbaa !24
  store i64 %t196, ptr %l82, !tbaa !24
  br label %bb72
bb70:
  br label %bb71
bb71:
  store i64 -1, ptr %l82, !tbaa !24
  br label %bb72
bb72:
  %t197 = load i64, ptr %l82, !tbaa !24
  store i64 %t197, ptr %l11, !tbaa !24
  %t198 = load i64, ptr %l11, !tbaa !24
  %t200 = icmp slt i64 %t198, 0
  br i1 %t200, label %bb73, label %bb74
bb73:
  call void @__olang_scope_close(ptr %s3)
  br label %bb92
bb74:
  br label %bb75
bb75:
  store ptr %l8, ptr %l98, !tbaa !29
  %t202 = ptrtoint ptr %s0 to i64
  store i64 %t202, ptr %l99, !tbaa !24
  %t203 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t203, label %bb76, label %bb77
bb76:
  %t205 = call ptr @__olang_region_make(ptr %s0)
  %t206 = ptrtoint ptr %t205 to i64
  store i64 %t206, ptr %l99, !tbaa !24
  br label %bb77
bb77:
  %t207 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t207, ptr %l101, !tbaa !27
  %t208 = load i64, ptr %l10, !tbaa !24
  %t210 = add i64 %t208, 1
  store i64 %t210, ptr %l103, !tbaa !24
  %t211 = load i64, ptr %l10, !tbaa !24
  %t213 = add i64 %t211, 1
  %t214 = load i64, ptr %l11, !tbaa !24
  %t217 = add i64 %t213, %t214
  store i64 %t217, ptr %l107, !tbaa !24
  %t218 = load { i64, ptr }, ptr %l101, !tbaa !27
  %t219 = extractvalue { i64, ptr } %t218, 0
  store i64 %t219, ptr %l108, !tbaa !24
  %t220 = load i64, ptr %l103, !tbaa !24
  %t221 = icmp sge i64 %t220, 0
  br i1 %t221, label %bb78, label %bb79
bb78:
  %t223 = load i64, ptr %l103, !tbaa !24
  %t224 = load i64, ptr %l107, !tbaa !24
  %t225 = icmp sle i64 %t223, %t224
  br i1 %t225, label %bb80, label %bb81
bb79:
  call void @__olang_check_failed(ptr @olang_loc_89a4da7eaed16d48_97b863eee78c099c)
  unreachable
bb80:
  %t227 = load i64, ptr %l107, !tbaa !24
  %t228 = load i64, ptr %l108, !tbaa !24
  %t229 = icmp sle i64 %t227, %t228
  br i1 %t229, label %bb82, label %bb83
bb81:
  call void @__olang_check_failed(ptr @olang_loc_89a4da7eaed16d48_97b863eee78c099c)
  unreachable
bb82:
  %t231 = getelementptr { i64, ptr }, ptr %l101, i32 0, i32 1
  %t232 = load ptr, ptr %t231, !tbaa !27
  %t233 = load i64, ptr %l103, !tbaa !24
  %t234 = load i64, ptr %l107, !tbaa !24
  %t235 = getelementptr i8, ptr %t232, i64 %t233
  %t236 = sub i64 %t234, %t233
  %t237 = insertvalue { i64, ptr } undef, i64 %t236, 0
  %t238 = insertvalue { i64, ptr } %t237, ptr %t235, 1
  %t240 = extractvalue { i64, ptr } %t238, 1
  %t241 = extractvalue { i64, ptr } %t238, 0
  %t242 = load i64, ptr %l99
  %t243 = inttoptr i64 %t242 to ptr
  %t244 = call ptr @__olang_scope_alloc(ptr %t243, i64 %t241)
  call void @olang_textcopy(ptr %t244, ptr %t240, i64 %t241)
  %t245 = insertvalue { i64, ptr } undef, i64 %t241, 0
  %t246 = insertvalue { i64, ptr } %t245, ptr %t244, 1
  %t248 = load i64, ptr %l99
  %t249 = inttoptr i64 %t248 to ptr
  %t250 = extractvalue { i64, ptr } %t246, 0
  %t251 = extractvalue { i64, ptr } %t246, 1
  %t252 = mul i64 %t250, 1
  %t253 = call ptr @__olang_scope_alloc(ptr %t249, i64 %t252)
  call void @llvm.memcpy.p0.p0.i64(ptr %t253, ptr %t251, i64 %t252, i1 false)
  %t254 = insertvalue { i64, ptr } undef, i64 %t250, 0
  %t255 = insertvalue { i64, ptr } %t254, ptr %t253, 1
  %t256 = load ptr, ptr %l98, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t256, { i64, ptr } %t255)
  br label %bb84
bb83:
  call void @__olang_check_failed(ptr @olang_loc_89a4da7eaed16d48_97b863eee78c099c)
  unreachable
bb84:
  %t258 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t258, ptr %l115, !tbaa !27
  %t259 = load i64, ptr %l10, !tbaa !24
  %t261 = add i64 %t259, 2
  %t262 = load i64, ptr %l11, !tbaa !24
  %t265 = add i64 %t261, %t262
  store i64 %t265, ptr %l119, !tbaa !24
  %t266 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t269 = extractvalue { i64, ptr } %t266, 0
  store i64 %t269, ptr %l122, !tbaa !24
  %t270 = load { i64, ptr }, ptr %l115, !tbaa !27
  %t271 = extractvalue { i64, ptr } %t270, 0
  store i64 %t271, ptr %l123, !tbaa !24
  %t272 = load i64, ptr %l119, !tbaa !24
  %t273 = icmp sge i64 %t272, 0
  br i1 %t273, label %bb85, label %bb86
bb85:
  %t275 = load i64, ptr %l119, !tbaa !24
  %t276 = load i64, ptr %l122, !tbaa !24
  %t277 = icmp sle i64 %t275, %t276
  br i1 %t277, label %bb87, label %bb88
bb86:
  call void @__olang_check_failed(ptr @olang_loc_4256a3bf93089da5_22d14aef181c0709)
  unreachable
bb87:
  %t279 = load i64, ptr %l122, !tbaa !24
  %t280 = load i64, ptr %l123, !tbaa !24
  %t281 = icmp sle i64 %t279, %t280
  br i1 %t281, label %bb89, label %bb90
bb88:
  call void @__olang_check_failed(ptr @olang_loc_4256a3bf93089da5_22d14aef181c0709)
  unreachable
bb89:
  %t283 = getelementptr { i64, ptr }, ptr %l115, i32 0, i32 1
  %t284 = load ptr, ptr %t283, !tbaa !27
  %t285 = load i64, ptr %l119, !tbaa !24
  %t286 = load i64, ptr %l122, !tbaa !24
  %t287 = getelementptr i8, ptr %t284, i64 %t285
  %t288 = sub i64 %t286, %t285
  %t289 = insertvalue { i64, ptr } undef, i64 %t288, 0
  %t290 = insertvalue { i64, ptr } %t289, ptr %t287, 1
  store { i64, ptr } %t290, ptr %l9, !tbaa !27
  call void @__olang_scope_close(ptr %s3)
  br label %bb91
bb90:
  call void @__olang_check_failed(ptr @olang_loc_4256a3bf93089da5_22d14aef181c0709)
  unreachable
bb91:
  br label %bb50
bb92:
  %t293 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l8)
  store i64 %t293, ptr %l129
  br label %bb93
bb93:
  %t294 = load i64, ptr %l129, !tbaa !24
  %t295 = icmp eq i64 %t294, 0
  br i1 %t295, label %bb94, label %bb95
bb94:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb95:
  br label %bb96
bb96:
  store ptr %a1, ptr %l131, !tbaa !29
  %t298 = load i64, ptr %l7, !tbaa !24
  store i64 %t298, ptr %l132, !tbaa !24
  %t299 = ptrtoint ptr %v1 to i64
  store i64 %t299, ptr %l133, !tbaa !24
  %t300 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e_2e1
  br i1 %t300, label %bb97, label %bb98
bb97:
  %t302 = call ptr @__olang_region_make(ptr %v1)
  %t303 = ptrtoint ptr %t302 to i64
  store i64 %t303, ptr %l133, !tbaa !24
  br label %bb98
bb98:
  store ptr %l8, ptr %l135, !tbaa !29
  %t305 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l8)
  store i64 %t305, ptr %l137
  br label %bb99
bb99:
  %t306 = load i64, ptr %l137, !tbaa !24
  %t307 = sub i64 %t306, 1
  %t308 = load ptr, ptr %l135, !tbaa !29
  %t310 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %t308, i64 %t307)
  store { i64, ptr } %t310, ptr %l139
  br label %bb100
bb100:
  %t311 = load { i64, ptr }, ptr %l139, !tbaa !27
  %t312 = extractvalue { i64, ptr } %t311, 1
  %t313 = extractvalue { i64, ptr } %t311, 0
  %t314 = load i64, ptr %l133
  %t315 = inttoptr i64 %t314 to ptr
  %t316 = call ptr @__olang_scope_alloc(ptr %t315, i64 %t313)
  call void @olang_textcopy(ptr %t316, ptr %t312, i64 %t313)
  %t317 = insertvalue { i64, ptr } undef, i64 %t313, 0
  %t318 = insertvalue { i64, ptr } %t317, ptr %t316, 1
  %t320 = load i64, ptr %l133
  %t321 = inttoptr i64 %t320 to ptr
  %t322 = extractvalue { i64, ptr } %t318, 0
  %t323 = extractvalue { i64, ptr } %t318, 1
  %t324 = mul i64 %t322, 1
  %t325 = call ptr @__olang_scope_alloc(ptr %t321, i64 %t324)
  call void @llvm.memcpy.p0.p0.i64(ptr %t325, ptr %t323, i64 %t324, i1 false)
  %t326 = insertvalue { i64, ptr } undef, i64 %t322, 0
  %t327 = insertvalue { i64, ptr } %t326, ptr %t325, 1
  %t328 = load ptr, ptr %l131, !tbaa !29
  %t329 = load i64, ptr %l132, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_Hc3dff1927e5c626a9d95abfdf4e9a462(ptr %v1, ptr %v1, ptr %t328, i64 %t329, { i64, ptr } %t327)
  br label %bb101
bb101:
  store ptr %a2, ptr %l142, !tbaa !29
  %t332 = load i64, ptr %l7, !tbaa !24
  store i64 %t332, ptr %l143, !tbaa !24
  %t333 = ptrtoint ptr %v2 to i64
  store i64 %t333, ptr %l144, !tbaa !24
  %t334 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e_2e1
  br i1 %t334, label %bb102, label %bb103
bb102:
  %t336 = call ptr @__olang_region_make(ptr %v2)
  %t337 = ptrtoint ptr %t336 to i64
  store i64 %t337, ptr %l144, !tbaa !24
  br label %bb103
bb103:
  %t339 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l8)
  store i64 %t339, ptr %l147
  br label %bb104
bb104:
  %t340 = load i64, ptr %l147, !tbaa !24
  %t341 = icmp eq i64 %t340, 2
  br i1 %t341, label %bb105, label %bb106
bb105:
  %t344 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %l8, i64 0)
  store { i64, ptr } %t344, ptr %l151
  br label %bb107
bb106:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d81, i32 0, i32 1) }, ptr %l153, !tbaa !27
  %t345 = load { i64, ptr }, ptr %l153, !tbaa !27
  store { i64, ptr } %t345, ptr %l149, !tbaa !27
  br label %bb108
bb107:
  %t347 = load { i64, ptr }, ptr %l151, !tbaa !27
  %t348 = extractvalue { i64, ptr } %t347, 1
  %t349 = extractvalue { i64, ptr } %t347, 0
  %t350 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t349)
  call void @olang_textcopy(ptr %t350, ptr %t348, i64 %t349)
  %t351 = insertvalue { i64, ptr } undef, i64 %t349, 0
  %t352 = insertvalue { i64, ptr } %t351, ptr %t350, 1
  store { i64, ptr } %t352, ptr %l149, !tbaa !27
  br label %bb108
bb108:
  %t354 = load { i64, ptr }, ptr %l149, !tbaa !27
  %t355 = load i64, ptr %l144
  %t356 = inttoptr i64 %t355 to ptr
  %t357 = extractvalue { i64, ptr } %t354, 0
  %t358 = extractvalue { i64, ptr } %t354, 1
  %t359 = mul i64 %t357, 1
  %t360 = call ptr @__olang_scope_alloc(ptr %t356, i64 %t359)
  call void @llvm.memcpy.p0.p0.i64(ptr %t360, ptr %t358, i64 %t359, i1 false)
  %t361 = insertvalue { i64, ptr } undef, i64 %t357, 0
  %t362 = insertvalue { i64, ptr } %t361, ptr %t360, 1
  %t363 = load ptr, ptr %l142, !tbaa !29
  %t364 = load i64, ptr %l143, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_Hc3dff1927e5c626a9d95abfdf4e9a462(ptr %v2, ptr %v2, ptr %t363, i64 %t364, { i64, ptr } %t362)
  br label %bb109
bb109:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2flisting_2efound(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i1 %a2) #0 {
entry:
  %l3 = alloca ptr
  %l4 = alloca i64
  %lp6 = alloca ptr
  %l8 = alloca i64
  %l10 = alloca i64
  %l15 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l21 = alloca i1
  %l26 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l28 = alloca i64
  %l29 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb1
bb1:
  store %olang.scope zeroinitializer, ptr %s2
  %t3 = load i64, ptr %l4, !tbaa !24
  store i64 %t3, ptr %l8, !tbaa !24
  %t4 = load ptr, ptr %l3, !tbaa !29
  %t6 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t4)
  store i64 %t6, ptr %l10
  br label %bb2
bb2:
  %t7 = load i64, ptr %l8, !tbaa !24
  %t8 = load i64, ptr %l10, !tbaa !24
  %t9 = icmp slt i64 %t7, %t8
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s2)
  br label %bb13
bb4:
  br label %bb5
bb5:
  %t13 = load ptr, ptr %l3, !tbaa !29
  %t14 = load i64, ptr %l4, !tbaa !24
  %t17 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t13, i64 %t14)
  store { i64, ptr } %t17, ptr %l15
  br label %bb6
bb6:
  %t18 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t25 = call { i64, ptr } @compiler_2flisting_2edefinedIn(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %t18, { i64, ptr } %a1, i1 %a2)
  store { i64, ptr } %t25, ptr %l19
  br label %bb7
bb7:
  %t26 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t26, ptr %lp6
  %t27 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t28 = load ptr, ptr %lp6
  store { i64, ptr } %t27, ptr %t28, !tbaa !27
  %t29 = load ptr, ptr %lp6
  %t30 = load { i64, ptr }, ptr %t29, !tbaa !27
  %t32 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s2, { i64, ptr } %t30, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d82, i32 0, i32 1) })
  store i1 %t32, ptr %l21
  br label %bb8
bb8:
  %t33 = load i1, ptr %l21, !tbaa !21
  %t34 = xor i1 %t33, true
  br i1 %t34, label %bb9, label %bb10
bb9:
  %t36 = load ptr, ptr %lp6
  %t37 = load { i64, ptr }, ptr %t36, !tbaa !27
  call void @__olang_scope_close(ptr %s2)
  store { i64, ptr } %t37, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s2)
  br label %bb12
bb12:
  %t39 = load i64, ptr %l4, !tbaa !24
  %t41 = add i64 %t39, 1
  store i64 %t41, ptr %l4, !tbaa !24
  br label %bb1
bb13:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d83, i32 0, i32 1) }, ptr %l26, !tbaa !27
  %t43 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t43, ptr %l27, !tbaa !27
  %t44 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t44, 0
  store i64 %t45, ptr %l28, !tbaa !24
  %t46 = load i64, ptr %l28, !tbaa !24
  %t47 = mul i64 %t46, 1
  %t48 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t47)
  %t49 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t50 = insertvalue { i64, ptr } %t49, ptr %t48, 1
  store { i64, ptr } %t50, ptr %l29, !tbaa !27
  %t51 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !27
  %t53 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !27
  %t55 = load i64, ptr %l28, !tbaa !24
  %t56 = mul i64 %t55, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t52, ptr %t54, i64 %t56, i1 false)
  %t57 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t57, ptr %l27, !tbaa !27
  %t58 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t58, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2flisting_2ehow(ptr %v0, ptr %v1, ptr %a0, i1 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  br i1 %a1, label %bb1, label %bb2
bb1:
  store { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d84, i32 0, i32 1) }, ptr %l5, !tbaa !27
  br label %bb3
bb2:
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/build:Config", ptr %t3, i32 0, i32 2
  %t6 = getelementptr %"compiler/target:Target", ptr %t5, i32 0, i32 2
  %t7 = load { i64, ptr }, ptr %t6, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 1
  %t10 = extractvalue { i64, ptr } %t7, 0
  %t11 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d85, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d85, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t14 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t13)
  call void @olang_textcopy(ptr %t14, ptr %t9, i64 %t10)
  %t15 = getelementptr i8, ptr %t14, i64 %t10
  call void @olang_textcopy(ptr %t15, ptr %t11, i64 %t12)
  %t16 = insertvalue { i64, ptr } undef, i64 %t13, 0
  %t17 = insertvalue { i64, ptr } %t16, ptr %t14, 1
  %t19 = extractvalue { i64, ptr } %t17, 0
  %t20 = extractvalue { i64, ptr } %t17, 1
  %t21 = mul i64 %t19, 1
  %t22 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t21)
  call void @llvm.memcpy.p0.p0.i64(ptr %t22, ptr %t20, i64 %t21, i1 false)
  %t23 = insertvalue { i64, ptr } undef, i64 %t19, 0
  %t24 = insertvalue { i64, ptr } %t23, ptr %t22, 1
  store { i64, ptr } %t24, ptr %l5, !tbaa !27
  br label %bb3
bb3:
  %t26 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t26, ptr %l2, !tbaa !27
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/build:Config", ptr %t27, i32 0, i32 5
  %t30 = load i1, ptr %t29, !tbaa !21
  br i1 %t30, label %bb4, label %bb5
bb4:
  store { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d86, i32 0, i32 1) }, ptr %l12, !tbaa !27
  br label %bb6
bb5:
  store { i64, ptr } { i64 45, ptr getelementptr inbounds (<{ i64, [45 x i8] }>, ptr @.d87, i32 0, i32 1) }, ptr %l12, !tbaa !27
  br label %bb6
bb6:
  %t32 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t33 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/build:Config", ptr %t35, i32 0, i32 2
  %t38 = getelementptr %"compiler/target:Target", ptr %t37, i32 0, i32 4
  %t39 = load { i64, ptr }, ptr %t38, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t33, 1
  %t42 = extractvalue { i64, ptr } %t33, 0
  %t43 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d88, i32 0, i32 1) }, 1
  %t44 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d88, i32 0, i32 1) }, 0
  %t45 = add i64 %t42, %t44
  %t47 = extractvalue { i64, ptr } %t32, 1
  %t48 = extractvalue { i64, ptr } %t32, 0
  %t49 = add i64 %t45, %t48
  %t50 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d89, i32 0, i32 1) }, 1
  %t51 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d89, i32 0, i32 1) }, 0
  %t52 = add i64 %t49, %t51
  %t54 = extractvalue { i64, ptr } %t39, 1
  %t55 = extractvalue { i64, ptr } %t39, 0
  %t56 = add i64 %t52, %t55
  %t57 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t56)
  call void @olang_textcopy(ptr %t57, ptr %t41, i64 %t42)
  %t58 = getelementptr i8, ptr %t57, i64 %t42
  call void @olang_textcopy(ptr %t58, ptr %t43, i64 %t44)
  %t59 = getelementptr i8, ptr %t58, i64 %t44
  call void @olang_textcopy(ptr %t59, ptr %t47, i64 %t48)
  %t60 = getelementptr i8, ptr %t59, i64 %t48
  call void @olang_textcopy(ptr %t60, ptr %t50, i64 %t51)
  %t61 = getelementptr i8, ptr %t60, i64 %t51
  call void @olang_textcopy(ptr %t61, ptr %t54, i64 %t55)
  %t62 = insertvalue { i64, ptr } undef, i64 %t56, 0
  %t63 = insertvalue { i64, ptr } %t62, ptr %t57, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t63, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { { i64, ptr }, { i64, ptr } } @compiler_2flisting_2ekeyValue(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i32
  %l8 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l12 = alloca { { i64, ptr }, { i64, ptr } }
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca i64
  %l26 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l30 = alloca i64
  %l33 = alloca i64
  %l34 = alloca i64
  %l39 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { { i64, ptr }, { i64, ptr } }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d90, i32 0, i32 1) })
  %t4 = extractvalue { i32, i64 } %t3, 1
  %t5 = extractvalue { i32, i64 } %t3, 0
  store i32 %t5, ptr %l5
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store i64 %t4, ptr %l4
  br label %bb1
bb1:
  %t8 = load i64, ptr %l4, !tbaa !24
  store i64 %t8, ptr %l2, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i64 -1, ptr %l2, !tbaa !24
  br label %bb4
bb4:
  %t9 = load i64, ptr %l2, !tbaa !24
  store i64 %t9, ptr %l1, !tbaa !24
  %t10 = load i64, ptr %l1, !tbaa !24
  %t12 = icmp slt i64 %t10, 0
  br i1 %t12, label %bb5, label %bb6
bb5:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d91, i32 0, i32 1) }, ptr %l8, !tbaa !27
  %t14 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d92, i32 0, i32 1) }, ptr %l10, !tbaa !27
  %t15 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t17 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t14, 0
  %t19 = insertvalue { { i64, ptr }, { i64, ptr } } %t17, { i64, ptr } %t15, 1
  store { { i64, ptr }, { i64, ptr } } %t19, ptr %l12
  %t20 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l12, i32 0, i32 0
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !27
  store { i64, ptr } %t21, ptr %l13, !tbaa !27
  %t22 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t22, 0
  store i64 %t23, ptr %l14, !tbaa !24
  %t24 = load i64, ptr %l14, !tbaa !24
  %t25 = mul i64 %t24, 1
  %t26 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t25)
  %t27 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t26, 1
  store { i64, ptr } %t28, ptr %l15, !tbaa !27
  %t29 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = load i64, ptr %l14, !tbaa !24
  %t34 = mul i64 %t33, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t30, ptr %t32, i64 %t34, i1 false)
  %t35 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t36 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l12, i32 0, i32 0
  store { i64, ptr } %t35, ptr %t36, !tbaa !27
  %t37 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l12, i32 0, i32 1
  %t38 = load { i64, ptr }, ptr %t37, !tbaa !27
  store { i64, ptr } %t38, ptr %l16, !tbaa !27
  %t39 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t39, 0
  store i64 %t40, ptr %l17, !tbaa !24
  %t41 = load i64, ptr %l17, !tbaa !24
  %t42 = mul i64 %t41, 1
  %t43 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t42)
  %t44 = insertvalue { i64, ptr } undef, i64 %t41, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t43, 1
  store { i64, ptr } %t45, ptr %l18, !tbaa !27
  %t46 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !27
  %t50 = load i64, ptr %l17, !tbaa !24
  %t51 = mul i64 %t50, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t47, ptr %t49, i64 %t51, i1 false)
  %t52 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t53 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l12, i32 0, i32 1
  store { i64, ptr } %t52, ptr %t53, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t54 = load { { i64, ptr }, { i64, ptr } }, ptr %l12
  store { { i64, ptr }, { i64, ptr } } %t54, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t55 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t55, ptr %l19, !tbaa !27
  %t56 = load i64, ptr %l1, !tbaa !24
  store i64 %t56, ptr %l20, !tbaa !24
  %t57 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t58 = extractvalue { i64, ptr } %t57, 0
  store i64 %t58, ptr %l21, !tbaa !24
  %t59 = icmp sge i64 0, 0
  br i1 %t59, label %bb8, label %bb9
bb8:
  %t61 = load i64, ptr %l20, !tbaa !24
  %t62 = icmp sle i64 0, %t61
  br i1 %t62, label %bb10, label %bb11
bb9:
  call void @__olang_check_failed(ptr @olang_loc_419e18d9533a9898_764a2322a7d2db2c)
  unreachable
bb10:
  %t64 = load i64, ptr %l20, !tbaa !24
  %t65 = load i64, ptr %l21, !tbaa !24
  %t66 = icmp sle i64 %t64, %t65
  br i1 %t66, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_419e18d9533a9898_764a2322a7d2db2c)
  unreachable
bb12:
  %t68 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !27
  %t70 = load i64, ptr %l20, !tbaa !24
  %t71 = getelementptr i8, ptr %t69, i64 0
  %t72 = sub i64 %t70, 0
  %t73 = insertvalue { i64, ptr } undef, i64 %t72, 0
  %t74 = insertvalue { i64, ptr } %t73, ptr %t71, 1
  %t76 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v0, ptr %s0, { i64, ptr } %t74)
  store { i64, ptr } %t76, ptr %l26
  br label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_419e18d9533a9898_764a2322a7d2db2c)
  unreachable
bb14:
  %t77 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t78 = extractvalue { i64, ptr } %t77, 1
  %t79 = extractvalue { i64, ptr } %t77, 0
  %t80 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t79)
  call void @olang_textcopy(ptr %t80, ptr %t78, i64 %t79)
  %t81 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t82 = insertvalue { i64, ptr } %t81, ptr %t80, 1
  store { i64, ptr } %t82, ptr %l27, !tbaa !27
  %t83 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t83, ptr %l28, !tbaa !27
  %t84 = load i64, ptr %l1, !tbaa !24
  %t86 = add i64 %t84, 1
  store i64 %t86, ptr %l30, !tbaa !24
  %t87 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t90 = extractvalue { i64, ptr } %t87, 0
  store i64 %t90, ptr %l33, !tbaa !24
  %t91 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t92 = extractvalue { i64, ptr } %t91, 0
  store i64 %t92, ptr %l34, !tbaa !24
  %t93 = load i64, ptr %l30, !tbaa !24
  %t94 = icmp sge i64 %t93, 0
  br i1 %t94, label %bb15, label %bb16
bb15:
  %t96 = load i64, ptr %l30, !tbaa !24
  %t97 = load i64, ptr %l33, !tbaa !24
  %t98 = icmp sle i64 %t96, %t97
  br i1 %t98, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_419e18d9533a9898_764a2322a7d2db2c)
  unreachable
bb17:
  %t100 = load i64, ptr %l33, !tbaa !24
  %t101 = load i64, ptr %l34, !tbaa !24
  %t102 = icmp sle i64 %t100, %t101
  br i1 %t102, label %bb19, label %bb20
bb18:
  call void @__olang_check_failed(ptr @olang_loc_419e18d9533a9898_764a2322a7d2db2c)
  unreachable
bb19:
  %t104 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t105 = load ptr, ptr %t104, !tbaa !27
  %t106 = load i64, ptr %l30, !tbaa !24
  %t107 = load i64, ptr %l33, !tbaa !24
  %t108 = getelementptr i8, ptr %t105, i64 %t106
  %t109 = sub i64 %t107, %t106
  %t110 = insertvalue { i64, ptr } undef, i64 %t109, 0
  %t111 = insertvalue { i64, ptr } %t110, ptr %t108, 1
  %t113 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v0, ptr %s0, { i64, ptr } %t111)
  store { i64, ptr } %t113, ptr %l39
  br label %bb21
bb20:
  call void @__olang_check_failed(ptr @olang_loc_419e18d9533a9898_764a2322a7d2db2c)
  unreachable
bb21:
  %t114 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t115 = extractvalue { i64, ptr } %t114, 1
  %t116 = extractvalue { i64, ptr } %t114, 0
  %t117 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t116)
  call void @olang_textcopy(ptr %t117, ptr %t115, i64 %t116)
  %t118 = insertvalue { i64, ptr } undef, i64 %t116, 0
  %t119 = insertvalue { i64, ptr } %t118, ptr %t117, 1
  %t120 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t121 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t120, 0
  %t123 = insertvalue { { i64, ptr }, { i64, ptr } } %t121, { i64, ptr } %t119, 1
  call void @__olang_scope_close(ptr %s0)
  store { { i64, ptr }, { i64, ptr } } %t123, ptr %rv
  br label %ret
ret:
  %rr = load { { i64, ptr }, { i64, ptr } }, ptr %rv
  ret { { i64, ptr }, { i64, ptr } } %rr
}

define dso_local { i64, ptr } @compiler_2flisting_2ekindWord(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca i1
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l8 = alloca i1
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca { i64, ptr }
  %l14 = alloca i1
  %l15 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d93, i32 0, i32 1) })
  store i1 %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load i1, ptr %l2, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d94, i32 0, i32 1) }, ptr %l3, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t5, ptr %l4, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t6, 0
  store i64 %t7, ptr %l5, !tbaa !24
  %t8 = load i64, ptr %l5, !tbaa !24
  %t9 = mul i64 %t8, 1
  %t10 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t9)
  %t11 = insertvalue { i64, ptr } undef, i64 %t8, 0
  %t12 = insertvalue { i64, ptr } %t11, ptr %t10, 1
  store { i64, ptr } %t12, ptr %l6, !tbaa !27
  %t13 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !27
  %t15 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !27
  %t17 = load i64, ptr %l5, !tbaa !24
  %t18 = mul i64 %t17, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t14, ptr %t16, i64 %t18, i1 false)
  %t19 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t19, ptr %l4, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t20 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t20, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t21 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t23 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t21, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d95, i32 0, i32 1) })
  store i1 %t23, ptr %l8
  br label %bb5
bb5:
  %t24 = load i1, ptr %l8, !tbaa !21
  br i1 %t24, label %bb6, label %bb7
bb6:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d96, i32 0, i32 1) }, ptr %l9, !tbaa !27
  %t25 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t25, ptr %l10, !tbaa !27
  %t26 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t27 = extractvalue { i64, ptr } %t26, 0
  store i64 %t27, ptr %l11, !tbaa !24
  %t28 = load i64, ptr %l11, !tbaa !24
  %t29 = mul i64 %t28, 1
  %t30 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t29)
  %t31 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t30, 1
  store { i64, ptr } %t32, ptr %l12, !tbaa !27
  %t33 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !27
  %t35 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !27
  %t37 = load i64, ptr %l11, !tbaa !24
  %t38 = mul i64 %t37, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t34, ptr %t36, i64 %t38, i1 false)
  %t39 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t39, ptr %l10, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t40 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t40, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t41 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t43 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t41, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d97, i32 0, i32 1) })
  store i1 %t43, ptr %l14
  br label %bb9
bb9:
  %t44 = load i1, ptr %l14, !tbaa !21
  br i1 %t44, label %bb10, label %bb11
bb10:
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d98, i32 0, i32 1) }, ptr %l15, !tbaa !27
  %t45 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t45, ptr %l16, !tbaa !27
  %t46 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t47 = extractvalue { i64, ptr } %t46, 0
  store i64 %t47, ptr %l17, !tbaa !24
  %t48 = load i64, ptr %l17, !tbaa !24
  %t49 = mul i64 %t48, 1
  %t50 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t49)
  %t51 = insertvalue { i64, ptr } undef, i64 %t48, 0
  %t52 = insertvalue { i64, ptr } %t51, ptr %t50, 1
  store { i64, ptr } %t52, ptr %l18, !tbaa !27
  %t53 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !27
  %t55 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !27
  %t57 = load i64, ptr %l17, !tbaa !24
  %t58 = mul i64 %t57, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t54, ptr %t56, i64 %t58, i1 false)
  %t59 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t59, ptr %l16, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t60 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t60, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t61 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t63 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eToLower(ptr %v0, ptr %v1, { i64, ptr } %t61)
  store { i64, ptr } %t63, ptr %l20
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s0)
  %t64 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t64, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2flisting_2enoCode(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca ptr
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca i64
  %l12 = alloca i64
  %l17 = alloca { i64, ptr }
  %l18 = alloca ptr
  %l19 = alloca i64
  %l23 = alloca { i64, ptr }
  %l28 = alloca i1
  %l29 = alloca i1
  %l31 = alloca i64
  %l36 = alloca i1
  %l37 = alloca { i64, ptr }
  %l39 = alloca { i64, ptr }
  %l42 = alloca i64
  %l47 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l50 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l8
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l4
  %t3 = load ptr, ptr %l2, !tbaa !29
  store ptr %t3, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb2
bb2:
  %t5 = load i64, ptr %l6, !tbaa !24
  store i64 %t5, ptr %l10, !tbaa !24
  %t6 = load ptr, ptr %l5, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v2, ptr %t6)
  store i64 %t8, ptr %l12
  br label %bb3
bb3:
  %t9 = load i64, ptr %l10, !tbaa !24
  %t10 = load i64, ptr %l12, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb4, label %bb5
bb4:
  br label %bb13
bb5:
  br label %bb6
bb6:
  %t15 = load ptr, ptr %l5, !tbaa !29
  %t16 = load i64, ptr %l6, !tbaa !24
  %t19 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v2, ptr %v2, ptr %t15, i64 %t16)
  store { i64, ptr } %t19, ptr %l17
  br label %bb7
bb7:
  %t20 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t20, ptr %l7, !tbaa !27
  store ptr %l4, ptr %l18, !tbaa !29
  %t21 = ptrtoint ptr %s0 to i64
  store i64 %t21, ptr %l19, !tbaa !24
  %t22 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t22, label %bb8, label %bb9
bb8:
  %t24 = call ptr @__olang_region_make(ptr %s0)
  %t25 = ptrtoint ptr %t24 to i64
  store i64 %t25, ptr %l19, !tbaa !24
  br label %bb9
bb9:
  %t27 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t28 = load i64, ptr %l19
  %t29 = inttoptr i64 %t28 to ptr
  %t32 = call { i64, ptr } @compiler_2flisting_2ecompiler_2flisting_3aNamer_2eName(ptr %v3, ptr %v2, ptr %t29, ptr %a3, { i64, ptr } %t27)
  store { i64, ptr } %t32, ptr %l23
  br label %bb10
bb10:
  %t33 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t34 = load i64, ptr %l19
  %t35 = inttoptr i64 %t34 to ptr
  %t36 = extractvalue { i64, ptr } %t33, 0
  %t37 = extractvalue { i64, ptr } %t33, 1
  %t38 = mul i64 %t36, 1
  %t39 = call ptr @__olang_scope_alloc(ptr %t35, i64 %t38)
  call void @llvm.memcpy.p0.p0.i64(ptr %t39, ptr %t37, i64 %t38, i1 false)
  %t40 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t39, 1
  %t42 = load ptr, ptr %l18, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t42, { i64, ptr } %t41)
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t44 = load i64, ptr %l6, !tbaa !24
  %t46 = add i64 %t44, 1
  store i64 %t46, ptr %l6, !tbaa !24
  br label %bb2
bb13:
  %t48 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t50 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t48, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d99, i32 0, i32 1) })
  store i1 %t50, ptr %l28
  br label %bb14
bb14:
  %t51 = load i1, ptr %l28, !tbaa !21
  br i1 %t51, label %bb15, label %bb16
bb15:
  %t52 = load ptr, ptr %l2, !tbaa !29
  %t54 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v2, ptr %t52)
  store i64 %t54, ptr %l31
  br label %bb17
bb16:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb18
bb17:
  %t55 = load i64, ptr %l31, !tbaa !24
  %t56 = icmp eq i64 %t55, 0
  store i1 %t56, ptr %l29, !tbaa !21
  br label %bb18
bb18:
  %t58 = load i1, ptr %l29, !tbaa !21
  br i1 %t58, label %bb19, label %bb20
bb19:
  %t59 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t61 = extractvalue { i64, ptr } %t59, 1
  %t62 = extractvalue { i64, ptr } %t59, 0
  %t63 = extractvalue { i64, ptr } { i64 65, ptr getelementptr inbounds (<{ i64, [65 x i8] }>, ptr @.d100, i32 0, i32 1) }, 1
  %t64 = extractvalue { i64, ptr } { i64 65, ptr getelementptr inbounds (<{ i64, [65 x i8] }>, ptr @.d100, i32 0, i32 1) }, 0
  %t65 = add i64 %t62, %t64
  %t66 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t65)
  call void @olang_textcopy(ptr %t66, ptr %t61, i64 %t62)
  %t67 = getelementptr i8, ptr %t66, i64 %t62
  call void @olang_textcopy(ptr %t67, ptr %t63, i64 %t64)
  %t68 = insertvalue { i64, ptr } undef, i64 %t65, 0
  %t69 = insertvalue { i64, ptr } %t68, ptr %t66, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t69, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t71 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t73 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t71, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d101, i32 0, i32 1) })
  store i1 %t73, ptr %l36
  br label %bb22
bb22:
  %t74 = load i1, ptr %l36, !tbaa !21
  br i1 %t74, label %bb23, label %bb24
bb23:
  store %olang.scope zeroinitializer, ptr %s6
  %t75 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t75, ptr %l37, !tbaa !27
  %t77 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %s0, ptr %s6, ptr %s6, ptr %l4, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d102, i32 0, i32 1) })
  store { i64, ptr } %t77, ptr %l39
  br label %bb25
bb24:
  br label %bb26
bb25:
  %t78 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t79 = extractvalue { i64, ptr } %t78, 1
  %t80 = extractvalue { i64, ptr } %t78, 0
  %t81 = extractvalue { i64, ptr } { i64 49, ptr getelementptr inbounds (<{ i64, [49 x i8] }>, ptr @.d103, i32 0, i32 1) }, 1
  %t82 = extractvalue { i64, ptr } { i64 49, ptr getelementptr inbounds (<{ i64, [49 x i8] }>, ptr @.d103, i32 0, i32 1) }, 0
  %t83 = add i64 %t80, %t82
  %t84 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t85 = extractvalue { i64, ptr } %t84, 1
  %t86 = extractvalue { i64, ptr } %t84, 0
  %t87 = add i64 %t83, %t86
  %t88 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d104, i32 0, i32 1) }, 1
  %t89 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d104, i32 0, i32 1) }, 0
  %t90 = add i64 %t87, %t89
  %t91 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t90)
  call void @olang_textcopy(ptr %t91, ptr %t79, i64 %t80)
  %t92 = getelementptr i8, ptr %t91, i64 %t80
  call void @olang_textcopy(ptr %t92, ptr %t81, i64 %t82)
  %t93 = getelementptr i8, ptr %t92, i64 %t82
  call void @olang_textcopy(ptr %t93, ptr %t85, i64 %t86)
  %t94 = getelementptr i8, ptr %t93, i64 %t86
  call void @olang_textcopy(ptr %t94, ptr %t88, i64 %t89)
  %t95 = insertvalue { i64, ptr } undef, i64 %t90, 0
  %t96 = insertvalue { i64, ptr } %t95, ptr %t91, 1
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t96, ptr %rv
  br label %ret
bb26:
  %t98 = load ptr, ptr %l2, !tbaa !29
  %t100 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v2, ptr %t98)
  store i64 %t100, ptr %l42
  br label %bb27
bb27:
  %t101 = load i64, ptr %l42, !tbaa !24
  %t102 = icmp eq i64 %t101, 0
  br i1 %t102, label %bb28, label %bb29
bb28:
  %t104 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t105 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t107 = extractvalue { i64, ptr } %t104, 1
  %t108 = extractvalue { i64, ptr } %t104, 0
  %t109 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d105, i32 0, i32 1) }, 1
  %t110 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d105, i32 0, i32 1) }, 0
  %t111 = add i64 %t108, %t110
  %t113 = extractvalue { i64, ptr } %t105, 1
  %t114 = extractvalue { i64, ptr } %t105, 0
  %t115 = add i64 %t111, %t114
  %t116 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d106, i32 0, i32 1) }, 1
  %t117 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d106, i32 0, i32 1) }, 0
  %t118 = add i64 %t115, %t117
  %t119 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t118)
  call void @olang_textcopy(ptr %t119, ptr %t107, i64 %t108)
  %t120 = getelementptr i8, ptr %t119, i64 %t108
  call void @olang_textcopy(ptr %t120, ptr %t109, i64 %t110)
  %t121 = getelementptr i8, ptr %t120, i64 %t110
  call void @olang_textcopy(ptr %t121, ptr %t113, i64 %t114)
  %t122 = getelementptr i8, ptr %t121, i64 %t114
  call void @olang_textcopy(ptr %t122, ptr %t116, i64 %t117)
  %t123 = insertvalue { i64, ptr } undef, i64 %t118, 0
  %t124 = insertvalue { i64, ptr } %t123, ptr %t119, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t124, ptr %rv
  br label %ret
bb29:
  br label %bb30
bb30:
  %t126 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t126, ptr %l47, !tbaa !27
  %t127 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t127, ptr %l48, !tbaa !27
  %t129 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %s0, ptr %s0, ptr %s0, ptr %l4, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d107, i32 0, i32 1) })
  store { i64, ptr } %t129, ptr %l50
  br label %bb31
bb31:
  %t130 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t131 = extractvalue { i64, ptr } %t130, 1
  %t132 = extractvalue { i64, ptr } %t130, 0
  %t133 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d108, i32 0, i32 1) }, 1
  %t134 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d108, i32 0, i32 1) }, 0
  %t135 = add i64 %t132, %t134
  %t136 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t137 = extractvalue { i64, ptr } %t136, 1
  %t138 = extractvalue { i64, ptr } %t136, 0
  %t139 = add i64 %t135, %t138
  %t140 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d109, i32 0, i32 1) }, 1
  %t141 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d109, i32 0, i32 1) }, 0
  %t142 = add i64 %t139, %t141
  %t143 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t144 = extractvalue { i64, ptr } %t143, 1
  %t145 = extractvalue { i64, ptr } %t143, 0
  %t146 = add i64 %t142, %t145
  %t147 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d110, i32 0, i32 1) }, 1
  %t148 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d110, i32 0, i32 1) }, 0
  %t149 = add i64 %t146, %t148
  %t150 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t149)
  call void @olang_textcopy(ptr %t150, ptr %t131, i64 %t132)
  %t151 = getelementptr i8, ptr %t150, i64 %t132
  call void @olang_textcopy(ptr %t151, ptr %t133, i64 %t134)
  %t152 = getelementptr i8, ptr %t151, i64 %t134
  call void @olang_textcopy(ptr %t152, ptr %t137, i64 %t138)
  %t153 = getelementptr i8, ptr %t152, i64 %t138
  call void @olang_textcopy(ptr %t153, ptr %t140, i64 %t141)
  %t154 = getelementptr i8, ptr %t153, i64 %t141
  call void @olang_textcopy(ptr %t154, ptr %t144, i64 %t145)
  %t155 = getelementptr i8, ptr %t154, i64 %t145
  call void @olang_textcopy(ptr %t155, ptr %t147, i64 %t148)
  %t156 = insertvalue { i64, ptr } undef, i64 %t149, 0
  %t157 = insertvalue { i64, ptr } %t156, ptr %t150, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t157, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2flisting_2eofSym(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l4 = alloca i1
  %l5 = alloca i1
  %l10 = alloca i1
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
  %t2 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t5 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %t1, { i64, ptr } %t2)
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
  %t8 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 1
  %t11 = extractvalue { i64, ptr } %t8, 0
  %t12 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d111, i32 0, i32 1) }, 1
  %t13 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d111, i32 0, i32 1) }, 0
  %t14 = add i64 %t11, %t13
  %t15 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t14)
  call void @olang_textcopy(ptr %t15, ptr %t10, i64 %t11)
  %t16 = getelementptr i8, ptr %t15, i64 %t11
  call void @olang_textcopy(ptr %t16, ptr %t12, i64 %t13)
  %t17 = insertvalue { i64, ptr } undef, i64 %t14, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = extractvalue { i64, ptr } %t18, 0
  %t21 = extractvalue { i64, ptr } %t18, 1
  %t22 = mul i64 %t20, 1
  %t23 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t22)
  call void @llvm.memcpy.p0.p0.i64(ptr %t23, ptr %t21, i64 %t22, i1 false)
  %t24 = insertvalue { i64, ptr } undef, i64 %t20, 0
  %t25 = insertvalue { i64, ptr } %t24, ptr %t23, 1
  %t28 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t7, { i64, ptr } %t25)
  store i1 %t28, ptr %l10
  br label %bb4
bb4:
  %t29 = load i1, ptr %l10, !tbaa !21
  store i1 %t29, ptr %l5, !tbaa !21
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  %t30 = load i1, ptr %l5, !tbaa !21
  store i1 %t30, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2flisting_2eplaceLess(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i32
  %l8 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i32
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l18 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca i64
  %l26 = alloca i1
  %l28 = alloca { i64, ptr }
  %l29 = alloca i64
  %l30 = alloca i64
  %l34 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l36 = alloca i64
  %l37 = alloca i64
  %l42 = alloca i1
  %l43 = alloca i64
  %l44 = alloca { i64, ptr }
  %l46 = alloca i64
  %l49 = alloca i64
  %l50 = alloca i64
  %l54 = alloca { i64, ptr }
  %l55 = alloca i64
  %l56 = alloca i32
  %l57 = alloca i64
  %l58 = alloca i32
  %l59 = alloca i64
  %l60 = alloca { i64, ptr }
  %l62 = alloca i64
  %l65 = alloca i64
  %l66 = alloca i64
  %l70 = alloca { i64, ptr }
  %l71 = alloca i64
  %l72 = alloca i32
  %l73 = alloca i64
  %l74 = alloca i32
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
  %t3 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d112, i32 0, i32 1) })
  %t4 = extractvalue { i32, i64 } %t3, 1
  %t5 = extractvalue { i32, i64 } %t3, 0
  store i32 %t5, ptr %l7
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store i64 %t4, ptr %l6
  br label %bb1
bb1:
  %t8 = load i64, ptr %l6, !tbaa !24
  store i64 %t8, ptr %l4, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i64 0, ptr %l4, !tbaa !24
  br label %bb4
bb4:
  %t9 = load i64, ptr %l4, !tbaa !24
  store i64 %t9, ptr %l2, !tbaa !24
  %t10 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t12 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %v1, ptr %s0, { i64, ptr } %t10, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d113, i32 0, i32 1) })
  %t13 = extractvalue { i32, i64 } %t12, 1
  %t14 = extractvalue { i32, i64 } %t12, 0
  store i32 %t14, ptr %l11
  %t15 = icmp ne i32 %t14, 0
  br i1 %t15, label %bb6, label %ok.16, !prof !99
ok.16:
  store i64 %t13, ptr %l10
  br label %bb5
bb5:
  %t17 = load i64, ptr %l10, !tbaa !24
  store i64 %t17, ptr %l8, !tbaa !24
  br label %bb8
bb6:
  br label %bb7
bb7:
  store i64 0, ptr %l8, !tbaa !24
  br label %bb8
bb8:
  %t18 = load i64, ptr %l8, !tbaa !24
  store i64 %t18, ptr %l3, !tbaa !24
  %t19 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t19, ptr %l12, !tbaa !27
  %t20 = load i64, ptr %l2, !tbaa !24
  store i64 %t20, ptr %l13, !tbaa !24
  %t21 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t22 = extractvalue { i64, ptr } %t21, 0
  store i64 %t22, ptr %l14, !tbaa !24
  %t23 = icmp sge i64 0, 0
  br i1 %t23, label %bb9, label %bb10
bb9:
  %t25 = load i64, ptr %l13, !tbaa !24
  %t26 = icmp sle i64 0, %t25
  br i1 %t26, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_17a8c3c34efffa58_c9c69620944e8c6c)
  unreachable
bb11:
  %t28 = load i64, ptr %l13, !tbaa !24
  %t29 = load i64, ptr %l14, !tbaa !24
  %t30 = icmp sle i64 %t28, %t29
  br i1 %t30, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_17a8c3c34efffa58_c9c69620944e8c6c)
  unreachable
bb13:
  %t32 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !27
  %t34 = load i64, ptr %l13, !tbaa !24
  %t35 = getelementptr i8, ptr %t33, i64 0
  %t36 = sub i64 %t34, 0
  %t37 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t38 = insertvalue { i64, ptr } %t37, ptr %t35, 1
  store { i64, ptr } %t38, ptr %l18, !tbaa !27
  %t39 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t39, ptr %l19, !tbaa !27
  %t40 = load i64, ptr %l3, !tbaa !24
  store i64 %t40, ptr %l20, !tbaa !24
  %t41 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t42 = extractvalue { i64, ptr } %t41, 0
  store i64 %t42, ptr %l21, !tbaa !24
  %t43 = icmp sge i64 0, 0
  br i1 %t43, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_17a8c3c34efffa58_c9c69620944e8c6c)
  unreachable
bb15:
  %t45 = load i64, ptr %l20, !tbaa !24
  %t46 = icmp sle i64 0, %t45
  br i1 %t46, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_17a8c3c34efffa58_c9c69620944e8c6c)
  unreachable
bb17:
  %t48 = load i64, ptr %l20, !tbaa !24
  %t49 = load i64, ptr %l21, !tbaa !24
  %t50 = icmp sle i64 %t48, %t49
  br i1 %t50, label %bb19, label %bb20
bb18:
  call void @__olang_check_failed(ptr @olang_loc_17a8c3c34efffa58_c9c69620944e8c6c)
  unreachable
bb19:
  %t52 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !27
  %t54 = load i64, ptr %l20, !tbaa !24
  %t55 = getelementptr i8, ptr %t53, i64 0
  %t56 = sub i64 %t54, 0
  %t57 = insertvalue { i64, ptr } undef, i64 %t56, 0
  %t58 = insertvalue { i64, ptr } %t57, ptr %t55, 1
  %t59 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t61 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %t59, { i64, ptr } %t58)
  store i1 %t61, ptr %l26
  br label %bb21
bb20:
  call void @__olang_check_failed(ptr @olang_loc_17a8c3c34efffa58_c9c69620944e8c6c)
  unreachable
bb21:
  %t62 = load i1, ptr %l26, !tbaa !21
  %t63 = xor i1 %t62, true
  br i1 %t63, label %bb22, label %bb23
bb22:
  %t65 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t65, ptr %l28, !tbaa !27
  %t66 = load i64, ptr %l2, !tbaa !24
  store i64 %t66, ptr %l29, !tbaa !24
  %t67 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t68 = extractvalue { i64, ptr } %t67, 0
  store i64 %t68, ptr %l30, !tbaa !24
  %t69 = icmp sge i64 0, 0
  br i1 %t69, label %bb24, label %bb25
bb23:
  br label %bb37
bb24:
  %t71 = load i64, ptr %l29, !tbaa !24
  %t72 = icmp sle i64 0, %t71
  br i1 %t72, label %bb26, label %bb27
bb25:
  call void @__olang_check_failed(ptr @olang_loc_17a8c3c34efffa58_c9c69620944e8c6c)
  unreachable
bb26:
  %t74 = load i64, ptr %l29, !tbaa !24
  %t75 = load i64, ptr %l30, !tbaa !24
  %t76 = icmp sle i64 %t74, %t75
  br i1 %t76, label %bb28, label %bb29
bb27:
  call void @__olang_check_failed(ptr @olang_loc_17a8c3c34efffa58_c9c69620944e8c6c)
  unreachable
bb28:
  %t78 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !27
  %t80 = load i64, ptr %l29, !tbaa !24
  %t81 = getelementptr i8, ptr %t79, i64 0
  %t82 = sub i64 %t80, 0
  %t83 = insertvalue { i64, ptr } undef, i64 %t82, 0
  %t84 = insertvalue { i64, ptr } %t83, ptr %t81, 1
  store { i64, ptr } %t84, ptr %l34, !tbaa !27
  %t85 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t85, ptr %l35, !tbaa !27
  %t86 = load i64, ptr %l3, !tbaa !24
  store i64 %t86, ptr %l36, !tbaa !24
  %t87 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t88 = extractvalue { i64, ptr } %t87, 0
  store i64 %t88, ptr %l37, !tbaa !24
  %t89 = icmp sge i64 0, 0
  br i1 %t89, label %bb30, label %bb31
bb29:
  call void @__olang_check_failed(ptr @olang_loc_17a8c3c34efffa58_c9c69620944e8c6c)
  unreachable
bb30:
  %t91 = load i64, ptr %l36, !tbaa !24
  %t92 = icmp sle i64 0, %t91
  br i1 %t92, label %bb32, label %bb33
bb31:
  call void @__olang_check_failed(ptr @olang_loc_17a8c3c34efffa58_c9c69620944e8c6c)
  unreachable
bb32:
  %t94 = load i64, ptr %l36, !tbaa !24
  %t95 = load i64, ptr %l37, !tbaa !24
  %t96 = icmp sle i64 %t94, %t95
  br i1 %t96, label %bb34, label %bb35
bb33:
  call void @__olang_check_failed(ptr @olang_loc_17a8c3c34efffa58_c9c69620944e8c6c)
  unreachable
bb34:
  %t98 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !27
  %t100 = load i64, ptr %l36, !tbaa !24
  %t101 = getelementptr i8, ptr %t99, i64 0
  %t102 = sub i64 %t100, 0
  %t103 = insertvalue { i64, ptr } undef, i64 %t102, 0
  %t104 = insertvalue { i64, ptr } %t103, ptr %t101, 1
  %t105 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t107 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLess(ptr %v0, ptr %v1, { i64, ptr } %t105, { i64, ptr } %t104)
  store i1 %t107, ptr %l42
  br label %bb36
bb35:
  call void @__olang_check_failed(ptr @olang_loc_17a8c3c34efffa58_c9c69620944e8c6c)
  unreachable
bb36:
  call void @__olang_scope_close(ptr %s0)
  %t108 = load i1, ptr %l42, !tbaa !21
  store i1 %t108, ptr %rv
  br label %ret
bb37:
  %t109 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t109, ptr %l44, !tbaa !27
  %t110 = load i64, ptr %l2, !tbaa !24
  %t112 = add i64 %t110, 1
  store i64 %t112, ptr %l46, !tbaa !24
  %t113 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t116 = extractvalue { i64, ptr } %t113, 0
  store i64 %t116, ptr %l49, !tbaa !24
  %t117 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t118 = extractvalue { i64, ptr } %t117, 0
  store i64 %t118, ptr %l50, !tbaa !24
  %t119 = load i64, ptr %l46, !tbaa !24
  %t120 = icmp sge i64 %t119, 0
  br i1 %t120, label %bb38, label %bb39
bb38:
  %t122 = load i64, ptr %l46, !tbaa !24
  %t123 = load i64, ptr %l49, !tbaa !24
  %t124 = icmp sle i64 %t122, %t123
  br i1 %t124, label %bb40, label %bb41
bb39:
  call void @__olang_check_failed(ptr @olang_loc_f8bac9f6e1e646b5_a02e035c32962b19)
  unreachable
bb40:
  %t126 = load i64, ptr %l49, !tbaa !24
  %t127 = load i64, ptr %l50, !tbaa !24
  %t128 = icmp sle i64 %t126, %t127
  br i1 %t128, label %bb42, label %bb43
bb41:
  call void @__olang_check_failed(ptr @olang_loc_f8bac9f6e1e646b5_a02e035c32962b19)
  unreachable
bb42:
  %t130 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !27
  %t132 = load i64, ptr %l46, !tbaa !24
  %t133 = load i64, ptr %l49, !tbaa !24
  %t134 = getelementptr i8, ptr %t131, i64 %t132
  %t135 = sub i64 %t133, %t132
  %t136 = insertvalue { i64, ptr } undef, i64 %t135, 0
  %t137 = insertvalue { i64, ptr } %t136, ptr %t134, 1
  store { i64, ptr } %t137, ptr %l54, !tbaa !27
  %t138 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s0, i64 10)
  %t139 = extractvalue { i32, i64 } %t138, 1
  %t140 = extractvalue { i32, i64 } %t138, 0
  store i32 %t140, ptr %l56
  %t141 = icmp ne i32 %t140, 0
  br i1 %t141, label %bb45, label %ok.142, !prof !99
ok.142:
  store i64 %t139, ptr %l55
  br label %bb44
bb43:
  call void @__olang_check_failed(ptr @olang_loc_f8bac9f6e1e646b5_a02e035c32962b19)
  unreachable
bb44:
  %t143 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t144 = load i64, ptr %l55, !tbaa !24
  %t145 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v0, { i64, ptr } %t143, i64 %t144)
  %t146 = extractvalue { i32, i64 } %t145, 1
  %t147 = extractvalue { i32, i64 } %t145, 0
  store i32 %t147, ptr %l58
  %t148 = icmp ne i32 %t147, 0
  br i1 %t148, label %bb48, label %ok.149, !prof !99
ok.149:
  store i64 %t146, ptr %l57
  br label %bb47
bb45:
  br label %bb46
bb46:
  store i64 0, ptr %l43, !tbaa !24
  br label %bb49
bb47:
  %t150 = load i64, ptr %l57, !tbaa !24
  store i64 %t150, ptr %l43, !tbaa !24
  br label %bb49
bb48:
  br label %bb46
bb49:
  %t151 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t151, ptr %l60, !tbaa !27
  %t152 = load i64, ptr %l3, !tbaa !24
  %t154 = add i64 %t152, 1
  store i64 %t154, ptr %l62, !tbaa !24
  %t155 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t158 = extractvalue { i64, ptr } %t155, 0
  store i64 %t158, ptr %l65, !tbaa !24
  %t159 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t160 = extractvalue { i64, ptr } %t159, 0
  store i64 %t160, ptr %l66, !tbaa !24
  %t161 = load i64, ptr %l62, !tbaa !24
  %t162 = icmp sge i64 %t161, 0
  br i1 %t162, label %bb50, label %bb51
bb50:
  %t164 = load i64, ptr %l62, !tbaa !24
  %t165 = load i64, ptr %l65, !tbaa !24
  %t166 = icmp sle i64 %t164, %t165
  br i1 %t166, label %bb52, label %bb53
bb51:
  call void @__olang_check_failed(ptr @olang_loc_f8bac9f6e1e646b5_a02e035c32962b19)
  unreachable
bb52:
  %t168 = load i64, ptr %l65, !tbaa !24
  %t169 = load i64, ptr %l66, !tbaa !24
  %t170 = icmp sle i64 %t168, %t169
  br i1 %t170, label %bb54, label %bb55
bb53:
  call void @__olang_check_failed(ptr @olang_loc_f8bac9f6e1e646b5_a02e035c32962b19)
  unreachable
bb54:
  %t172 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t173 = load ptr, ptr %t172, !tbaa !27
  %t174 = load i64, ptr %l62, !tbaa !24
  %t175 = load i64, ptr %l65, !tbaa !24
  %t176 = getelementptr i8, ptr %t173, i64 %t174
  %t177 = sub i64 %t175, %t174
  %t178 = insertvalue { i64, ptr } undef, i64 %t177, 0
  %t179 = insertvalue { i64, ptr } %t178, ptr %t176, 1
  store { i64, ptr } %t179, ptr %l70, !tbaa !27
  %t180 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s0, i64 10)
  %t181 = extractvalue { i32, i64 } %t180, 1
  %t182 = extractvalue { i32, i64 } %t180, 0
  store i32 %t182, ptr %l72
  %t183 = icmp ne i32 %t182, 0
  br i1 %t183, label %bb57, label %ok.184, !prof !99
ok.184:
  store i64 %t181, ptr %l71
  br label %bb56
bb55:
  call void @__olang_check_failed(ptr @olang_loc_f8bac9f6e1e646b5_a02e035c32962b19)
  unreachable
bb56:
  %t185 = load { i64, ptr }, ptr %l70, !tbaa !27
  %t186 = load i64, ptr %l71, !tbaa !24
  %t187 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v1, { i64, ptr } %t185, i64 %t186)
  %t188 = extractvalue { i32, i64 } %t187, 1
  %t189 = extractvalue { i32, i64 } %t187, 0
  store i32 %t189, ptr %l74
  %t190 = icmp ne i32 %t189, 0
  br i1 %t190, label %bb60, label %ok.191, !prof !99
ok.191:
  store i64 %t188, ptr %l73
  br label %bb59
bb57:
  br label %bb58
bb58:
  store i64 0, ptr %l59, !tbaa !24
  br label %bb61
bb59:
  %t192 = load i64, ptr %l73, !tbaa !24
  store i64 %t192, ptr %l59, !tbaa !24
  br label %bb61
bb60:
  br label %bb58
bb61:
  %t193 = load i64, ptr %l43, !tbaa !24
  %t194 = load i64, ptr %l59, !tbaa !24
  %t195 = icmp slt i64 %t193, %t194
  call void @__olang_scope_close(ptr %s0)
  store i1 %t195, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2flisting_2eplaceOf(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i1
  %l4 = alloca i1
  %l7 = alloca i1
  %l8 = alloca i1
  %l12 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/listing:Remark", ptr %t1, i32 0, i32 3
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t4, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d114, i32 0, i32 1) })
  store i1 %t6, ptr %l3
  br label %bb1
bb1:
  %t7 = load i1, ptr %l3, !tbaa !21
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l4, !tbaa !21
  br label %bb5
bb3:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/listing:Remark", ptr %t8, i32 0, i32 3
  %t11 = load { i64, ptr }, ptr %t10, !tbaa !27
  %t13 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t11, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d115, i32 0, i32 1) })
  store i1 %t13, ptr %l7
  br label %bb4
bb4:
  %t14 = load i1, ptr %l7, !tbaa !21
  store i1 %t14, ptr %l4, !tbaa !21
  br label %bb5
bb5:
  %t15 = load i1, ptr %l4, !tbaa !21
  br i1 %t15, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb8
bb7:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/listing:Remark", ptr %t16, i32 0, i32 4
  %t19 = load i64, ptr %t18, !tbaa !24
  %t21 = icmp sle i64 %t19, 0
  store i1 %t21, ptr %l8, !tbaa !21
  br label %bb8
bb8:
  %t23 = load i1, ptr %l8, !tbaa !21
  br i1 %t23, label %bb9, label %bb10
bb9:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d116, i32 0, i32 1) }, ptr %l13, !tbaa !27
  %t24 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t24, ptr %l12, !tbaa !27
  br label %bb11
bb10:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/listing:Remark", ptr %t26, i32 0, i32 3
  %t29 = load { i64, ptr }, ptr %t28, !tbaa !27
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/listing:Remark", ptr %t30, i32 0, i32 4
  %t33 = load i64, ptr %t32, !tbaa !24
  %t35 = extractvalue { i64, ptr } %t29, 1
  %t36 = extractvalue { i64, ptr } %t29, 0
  %t37 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d117, i32 0, i32 1) }, 1
  %t38 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d117, i32 0, i32 1) }, 0
  %t39 = add i64 %t36, %t38
  %t41 = call i64 @__olang_fmt_i64(ptr null, i64 %t33)
  %t42 = add i64 %t39, %t41
  %t43 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t42)
  call void @olang_textcopy(ptr %t43, ptr %t35, i64 %t36)
  %t44 = getelementptr i8, ptr %t43, i64 %t36
  call void @olang_textcopy(ptr %t44, ptr %t37, i64 %t38)
  %t45 = getelementptr i8, ptr %t44, i64 %t38
  %t46 = call i64 @__olang_fmt_i64(ptr %t45, i64 %t33)
  %t47 = insertvalue { i64, ptr } undef, i64 %t42, 0
  %t48 = insertvalue { i64, ptr } %t47, ptr %t43, 1
  store { i64, ptr } %t48, ptr %l12, !tbaa !27
  br label %bb11
bb11:
  %t50 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t51 = extractvalue { i64, ptr } %t50, 0
  store i64 %t51, ptr %l20, !tbaa !24
  %t52 = load i64, ptr %l20, !tbaa !24
  %t53 = mul i64 %t52, 1
  %t54 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t53)
  %t55 = insertvalue { i64, ptr } undef, i64 %t52, 0
  %t56 = insertvalue { i64, ptr } %t55, ptr %t54, 1
  store { i64, ptr } %t56, ptr %l21, !tbaa !27
  %t57 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !27
  %t59 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !27
  %t61 = load i64, ptr %l20, !tbaa !24
  %t62 = mul i64 %t61, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t58, ptr %t60, i64 %t62, i1 false)
  %t63 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t63, ptr %l12, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t64 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t64, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2flisting_2ereadParts(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %lp1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca i64
  %l9 = alloca i64
  %l14 = alloca { i64, ptr }
  %l15 = alloca ptr
  %l16 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l19 = alloca i32
  %l21 = alloca i1
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l5
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t2, ptr %lp1
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t4 = load ptr, ptr %lp1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  store ptr %a0, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t7 = load i64, ptr %l3, !tbaa !24
  store i64 %t7, ptr %l7, !tbaa !24
  %t8 = load ptr, ptr %l2, !tbaa !29
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l9
  br label %bb3
bb3:
  %t11 = load i64, ptr %l7, !tbaa !24
  %t12 = load i64, ptr %l9, !tbaa !24
  %t13 = icmp slt i64 %t11, %t12
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb4, label %bb5
bb4:
  br label %bb16
bb5:
  br label %bb6
bb6:
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t18 = load i64, ptr %l3, !tbaa !24
  %t21 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t17, i64 %t18)
  store { i64, ptr } %t21, ptr %l14
  br label %bb7
bb7:
  %t22 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t23 = load ptr, ptr %lp1
  store ptr %t23, ptr %l15, !tbaa !29
  %t26 = call { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %v0, ptr %v1, { i64, ptr } %t22)
  %t27 = extractvalue { i32, { i64, ptr } } %t26, 1
  %t28 = extractvalue { i32, { i64, ptr } } %t26, 0
  store i32 %t28, ptr %l19
  %t29 = icmp ne i32 %t28, 0
  br i1 %t29, label %bb9, label %ok.30, !prof !99
ok.30:
  store { i64, ptr } %t27, ptr %l18
  br label %bb8
bb8:
  %t31 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t31, ptr %l16, !tbaa !27
  br label %bb13
bb9:
  %t32 = load i32, ptr %l19, !tbaa !23
  %t33 = ashr i32 %t32, 16
  %t35 = icmp eq i32 %t33, 1
  store i1 %t35, ptr %l21, !tbaa !21
  %t36 = load i32, ptr %l19, !tbaa !23
  %t37 = ashr i32 %t36, 16
  %t39 = icmp eq i32 %t37, 1
  br i1 %t39, label %bb10, label %bb11
bb10:
  call void @__olang_errpay_pop()
  br label %bb11
bb11:
  br label %bb12
bb12:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d118, i32 0, i32 1) }, ptr %l16, !tbaa !27
  br label %bb13
bb13:
  %t41 = load ptr, ptr %l15, !tbaa !29
  %t42 = load { i64, ptr }, ptr %l16, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t41, { i64, ptr } %t42)
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t43 = load i64, ptr %l3, !tbaa !24
  %t45 = add i64 %t43, 1
  store i64 %t45, ptr %l3, !tbaa !24
  br label %bb2
bb16:
  %t47 = load ptr, ptr %lp1
  %t48 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t47
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t48, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local i1 @compiler_2flisting_2esame(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l6 = alloca i1
  %l7 = alloca i1
  %l12 = alloca i1
  %l13 = alloca i1
  %l18 = alloca i1
  %l19 = alloca i1
  %l21 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l26 = alloca i1
  %l27 = alloca i1
  %l32 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/listing:Remark", ptr %t1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t7 = getelementptr %"compiler/listing:Remark", ptr %t5, i32 0, i32 0
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  %t11 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %t4, { i64, ptr } %t8)
  store i1 %t11, ptr %l6
  br label %bb1
bb1:
  %t12 = load i1, ptr %l6, !tbaa !21
  br i1 %t12, label %bb2, label %bb3
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/listing:Remark", ptr %t13, i32 0, i32 1
  %t16 = load { i64, ptr }, ptr %t15, !tbaa !27
  %t17 = load ptr, ptr %l1, !tbaa !29
  %t19 = getelementptr %"compiler/listing:Remark", ptr %t17, i32 0, i32 1
  %t20 = load { i64, ptr }, ptr %t19, !tbaa !27
  %t23 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %t16, { i64, ptr } %t20)
  store i1 %t23, ptr %l12
  br label %bb4
bb3:
  store i1 false, ptr %l7, !tbaa !21
  br label %bb5
bb4:
  %t24 = load i1, ptr %l12, !tbaa !21
  store i1 %t24, ptr %l7, !tbaa !21
  br label %bb5
bb5:
  %t25 = load i1, ptr %l7, !tbaa !21
  br i1 %t25, label %bb6, label %bb7
bb6:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/listing:Remark", ptr %t26, i32 0, i32 2
  %t29 = load { i64, ptr }, ptr %t28, !tbaa !27
  %t30 = load ptr, ptr %l1, !tbaa !29
  %t32 = getelementptr %"compiler/listing:Remark", ptr %t30, i32 0, i32 2
  %t33 = load { i64, ptr }, ptr %t32, !tbaa !27
  %t36 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %t29, { i64, ptr } %t33)
  store i1 %t36, ptr %l18
  br label %bb8
bb7:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb9
bb8:
  %t37 = load i1, ptr %l18, !tbaa !21
  store i1 %t37, ptr %l13, !tbaa !21
  br label %bb9
bb9:
  %t38 = load i1, ptr %l13, !tbaa !21
  br i1 %t38, label %bb10, label %bb11
bb10:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = call { i64, ptr } @compiler_2flisting_2eplaceOf(ptr %v0, ptr %s0, ptr %t39)
  store { i64, ptr } %t41, ptr %l21
  br label %bb12
bb11:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb15
bb12:
  %t42 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t42, 0
  %t44 = extractvalue { i64, ptr } %t42, 1
  %t45 = mul i64 %t43, 1
  %t46 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t45)
  call void @llvm.memcpy.p0.p0.i64(ptr %t46, ptr %t44, i64 %t45, i1 false)
  %t47 = insertvalue { i64, ptr } undef, i64 %t43, 0
  %t48 = insertvalue { i64, ptr } %t47, ptr %t46, 1
  store { i64, ptr } %t48, ptr %l22, !tbaa !27
  %t49 = load ptr, ptr %l1, !tbaa !29
  %t51 = call { i64, ptr } @compiler_2flisting_2eplaceOf(ptr %v1, ptr %s0, ptr %t49)
  store { i64, ptr } %t51, ptr %l24
  br label %bb13
bb13:
  %t52 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t53 = extractvalue { i64, ptr } %t52, 0
  %t54 = extractvalue { i64, ptr } %t52, 1
  %t55 = mul i64 %t53, 1
  %t56 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t55)
  call void @llvm.memcpy.p0.p0.i64(ptr %t56, ptr %t54, i64 %t55, i1 false)
  %t57 = insertvalue { i64, ptr } undef, i64 %t53, 0
  %t58 = insertvalue { i64, ptr } %t57, ptr %t56, 1
  %t59 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t61 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t59, { i64, ptr } %t58)
  store i1 %t61, ptr %l26
  br label %bb14
bb14:
  %t62 = load i1, ptr %l26, !tbaa !21
  store i1 %t62, ptr %l19, !tbaa !21
  br label %bb15
bb15:
  %t63 = load i1, ptr %l19, !tbaa !21
  br i1 %t63, label %bb16, label %bb17
bb16:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/listing:Remark", ptr %t64, i32 0, i32 7
  %t67 = load { i64, ptr }, ptr %t66, !tbaa !27
  %t68 = load ptr, ptr %l1, !tbaa !29
  %t70 = getelementptr %"compiler/listing:Remark", ptr %t68, i32 0, i32 7
  %t71 = load { i64, ptr }, ptr %t70, !tbaa !27
  %t74 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %t67, { i64, ptr } %t71)
  store i1 %t74, ptr %l32
  br label %bb18
bb17:
  store i1 false, ptr %l27, !tbaa !21
  br label %bb19
bb18:
  %t75 = load i1, ptr %l32, !tbaa !21
  store i1 %t75, ptr %l27, !tbaa !21
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s0)
  %t76 = load i1, ptr %l27, !tbaa !21
  store i1 %t76, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/listing:Inputs" @compiler_2flisting_3aInputs_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, { i64, ptr } %a2, { i64, ptr } %a3, i1 %a4) #0 {
entry:
  %rv = alloca %"compiler/listing:Inputs"
  br label %start
start:
  br label %bb0
bb0:
  %t12 = insertvalue %"compiler/listing:Inputs" undef, ptr %a0, 0
  %t14 = insertvalue %"compiler/listing:Inputs" %t12, ptr %a1, 1
  %t16 = insertvalue %"compiler/listing:Inputs" %t14, { i64, ptr } %a2, 2
  %t18 = insertvalue %"compiler/listing:Inputs" %t16, { i64, ptr } %a3, 3
  %t20 = insertvalue %"compiler/listing:Inputs" %t18, i1 %a4, 4
  store %"compiler/listing:Inputs" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/listing:Inputs", ptr %rv
  ret %"compiler/listing:Inputs" %rr
}

define dso_local %"compiler/listing:Namer" @compiler_2flisting_3aNamer_2ector(ptr %v0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %rv = alloca %"compiler/listing:Namer"
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d119, i32 0, i32 1) }, ptr %l0, !tbaa !27
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t2 = insertvalue %"compiler/listing:Namer" undef, { i64, ptr } %t1, 0
  store %"compiler/listing:Namer" %t2, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/listing:Namer", ptr %rv
  ret %"compiler/listing:Namer" %rr
}

define dso_local void @compiler_2flisting_3aWriter_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, ptr %a1, ptr %a2, { i64, ptr } %a3) #0 {
entry:
  %l4 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l20 = alloca i64
  %l22 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l24 = alloca i64
  %l26 = alloca %"std/prelude/text:StringBuilder"
  %l28 = alloca %"compiler/listing:Writer"
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a0, ptr %l4, !tbaa !27
  store ptr %a1, ptr %l5, !tbaa !29
  store ptr %a2, ptr %l6, !tbaa !29
  store { i64, ptr } %a3, ptr %l7, !tbaa !27
  %t9 = ptrtoint ptr %v4 to i64
  store i64 %t9, ptr %l20, !tbaa !24
  %t10 = load i1, ptr @olang_2esole_2ecompiler_2flisting_3aWriter_2e4
  br i1 %t10, label %bb1, label %bb2
bb1:
  %t12 = call ptr @__olang_region_make(ptr %v4)
  %t13 = ptrtoint ptr %t12 to i64
  store i64 %t13, ptr %l20, !tbaa !24
  br label %bb2
bb2:
  %t14 = load i64, ptr %l20
  %t15 = inttoptr i64 %t14 to ptr
  %t16 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t15, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t16, ptr %l22
  br label %bb3
bb3:
  %t17 = load i1, ptr @olang_2esole_2ecompiler_2flisting_3aWriter_2e4
  br i1 %t17, label %bb4, label %bb5
bb4:
  %t19 = load i64, ptr %l20
  %t20 = inttoptr i64 %t19 to ptr
  %t21 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l22, i32 0, i32 0
  %t22 = load { i64, ptr }, ptr %t21
  %t23 = extractvalue { i64, ptr } %t22, 1
  %t24 = call ptr @__olang_region_or(ptr %t23, ptr null)
  %t25 = icmp ne ptr %t24, null
  %t26 = select i1 %t25, ptr %t24, ptr null
  %t27 = icmp eq ptr %t26, %t20
  call void @__olang_region_settle(ptr %t20, i1 %t27)
  br label %bb5
bb5:
  %t28 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l22
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t28, ptr %l8
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d120, i32 0, i32 1) }, ptr %l9, !tbaa !27
  store i64 -1, ptr %l10, !tbaa !24
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d121, i32 0, i32 1) }, ptr %l11, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d122, i32 0, i32 1) }, ptr %l12, !tbaa !27
  store i64 -1, ptr %l13, !tbaa !24
  %t29 = ptrtoint ptr %v4 to i64
  store i64 %t29, ptr %l24, !tbaa !24
  %t30 = load i1, ptr @olang_2esole_2ecompiler_2flisting_3aWriter_2e10
  br i1 %t30, label %bb6, label %bb7
bb6:
  %t32 = call ptr @__olang_region_make(ptr %v4)
  %t33 = ptrtoint ptr %t32 to i64
  store i64 %t33, ptr %l24, !tbaa !24
  br label %bb7
bb7:
  %t34 = load i64, ptr %l24
  %t35 = inttoptr i64 %t34 to ptr
  %t36 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %t35)
  store %"std/prelude/text:StringBuilder" %t36, ptr %l26
  br label %bb8
bb8:
  %t37 = load i1, ptr @olang_2esole_2ecompiler_2flisting_3aWriter_2e10
  br i1 %t37, label %bb9, label %bb10
bb9:
  %t39 = load i64, ptr %l24
  %t40 = inttoptr i64 %t39 to ptr
  %t41 = getelementptr %"std/prelude/text:StringBuilder", ptr %l26, i32 0, i32 0
  %t42 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t41, i32 0, i32 0
  %t43 = load { i64, ptr }, ptr %t42
  %t44 = extractvalue { i64, ptr } %t43, 1
  %t45 = call ptr @__olang_region_or(ptr %t44, ptr null)
  %t46 = icmp ne ptr %t45, null
  %t47 = select i1 %t46, ptr %t45, ptr null
  %t48 = icmp eq ptr %t47, %t40
  call void @__olang_region_settle(ptr %t40, i1 %t48)
  br label %bb10
bb10:
  %t49 = load %"std/prelude/text:StringBuilder", ptr %l26
  %t50 = getelementptr %"compiler/listing:Writer", ptr %l28, i32 0, i32 0
  %t51 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t51, ptr %t50, !tbaa !27
  %t52 = getelementptr %"compiler/listing:Writer", ptr %l28, i32 0, i32 1
  %t53 = load ptr, ptr %l5, !tbaa !29
  store ptr %t53, ptr %t52, !tbaa !29
  %t54 = getelementptr %"compiler/listing:Writer", ptr %l28, i32 0, i32 2
  %t55 = load ptr, ptr %l6, !tbaa !29
  store ptr %t55, ptr %t54, !tbaa !29
  %t56 = getelementptr %"compiler/listing:Writer", ptr %l28, i32 0, i32 3
  %t57 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t57, ptr %t56, !tbaa !27
  %t58 = getelementptr %"compiler/listing:Writer", ptr %l28, i32 0, i32 4
  %t59 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t59, ptr %t58
  %t60 = getelementptr %"compiler/listing:Writer", ptr %l28, i32 0, i32 5
  %t61 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t61, ptr %t60, !tbaa !27
  %t62 = getelementptr %"compiler/listing:Writer", ptr %l28, i32 0, i32 6
  %t63 = load i64, ptr %l10, !tbaa !24
  store i64 %t63, ptr %t62, !tbaa !24
  %t64 = getelementptr %"compiler/listing:Writer", ptr %l28, i32 0, i32 7
  %t65 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t65, ptr %t64, !tbaa !27
  %t66 = getelementptr %"compiler/listing:Writer", ptr %l28, i32 0, i32 8
  %t67 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t67, ptr %t66, !tbaa !27
  %t68 = getelementptr %"compiler/listing:Writer", ptr %l28, i32 0, i32 9
  %t69 = load i64, ptr %l13, !tbaa !24
  store i64 %t69, ptr %t68, !tbaa !24
  %t70 = getelementptr %"compiler/listing:Writer", ptr %l28, i32 0, i32 10
  store %"std/prelude/text:StringBuilder" %t49, ptr %t70
  %t72 = getelementptr %"compiler/listing:Writer", ptr %l28, i32 0, i32 11
  store i64 0, ptr %t72, !tbaa !24
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l28, i64 184, i1 false)
  br label %ret
ret:
  ret void
}

@olang_2esole_2ecompiler_2flisting_3aInputs_2e1 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
@.d0 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d1 = private constant <{ i64, [67 x i8] }> <{ i64 0, [67 x i8] c" instances: the program makes no instance of it, so it has no code\0A" }>, align 8
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
@olang_2esole_2ecompiler_2flisting_3aSources_2e1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
declare void @__olang_errpay_pop()
declare void @__olang_region_release(ptr) noinline
@.d2 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"@" }>, align 8
@.d3 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
declare void @__olang_check_failed(ptr) cold noreturn
@olang_2esole_2ecompiler_2flisting_3aWriter_2e3 = weak hidden constant i1 false
@.d4 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"inline" }>, align 8
@.d5 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"passed" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
@.d6 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c" IR instructions" }>, align 8
@.d7 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c" instructions" }>, align 8
@.d8 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d9 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c" (its code merged with " }>, align 8
@.d10 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"'s, which is the same)" }>, align 8
@.d11 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d12 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"; inlined into it: " }>, align 8
@.d13 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d14 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c";" }>, align 8
@.d15 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"aarch64" }>, align 8
@.d16 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"//" }>, align 8
@.d17 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"#" }>, align 8
@.d18 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d19 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d20 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"std/" }>, align 8
@.d21 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20Ar_Hc159a7d0a154ef35bbad4e01018de015 = weak hidden constant i1 false
@__olang_empty_array = external constant [16 x i64]
@.d22 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0)
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

@.d23 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".file\09" }>, align 8
@.d24 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".file " }>, align 8
@.d25 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"#" }>, align 8
@.d26 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"//" }>, align 8
@.d27 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\09" }>, align 8
@.d28 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d29 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d30 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d31 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d32 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c".Lfunc_end" }>, align 8
@.d33 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".Ltmp" }>, align 8
@.d34 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c".Lfunc_begin" }>, align 8
@.d35 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"$local" }>, align 8
@.d36 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"!" }>, align 8
@.d37 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"DILocation(" }>, align 8
@.d38 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"DIFile(" }>, align 8
@.d39 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"DISubprogram(" }>, align 8
@.d40 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"DILexicalBlock" }>, align 8
@.d41 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d42 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"define " }>, align 8
@.d43 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"}" }>, align 8
@.d44 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d45 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"DILocation(" }>, align 8
@.d46 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"line" }>, align 8
@.d47 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"scope" }>, align 8
@.d48 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d49 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"file" }>, align 8
@.d50 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d51 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"filename" }>, align 8
@.d52 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"directory" }>, align 8
@.d53 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d54 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d55 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
declare ptr @__olang_scope_or(ptr, ptr)
@.d56 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" (x" }>, align 8
@.d57 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d58 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d59 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d60 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d61 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"define " }>, align 8
@.d62 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"@" }>, align 8
@.d63 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" = " }>, align 8
@.d64 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" alias " }>, align 8
@.d65 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d66 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".llvm." }>, align 8
@.d67 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".set\09" }>, align 8
@.d68 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d69 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d70 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d71 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d72 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d73 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\22" }>, align 8
@.d74 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"," }>, align 8
@.d75 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" }" }>, align 8
@.d76 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d77 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\09" }>, align 8
@.d78 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\22" }>, align 8
@.d79 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\22" }>, align 8
@.d80 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\22" }>, align 8
@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e_2e1 = weak hidden constant i1 false
@.d81 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d82 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d83 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d84 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"optimized LLVM IR" }>, align 8
@.d85 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c" machine code" }>, align 8
@.d86 = private constant <{ i64, [36 x i8] }> <{ i64 0, [36 x i8] c"-O2, each module on its own (-quick)" }>, align 8
@.d87 = private constant <{ i64, [45 x i8] }> <{ i64 0, [45 x i8] c"-O3, optimized again as the program is linked" }>, align 8
@.d88 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c" as build compiles it: " }>, align 8
@.d89 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", for " }>, align 8
@.d90 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d91 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d92 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d93 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Passed" }>, align 8
@.d94 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"passed" }>, align 8
@.d95 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Missed" }>, align 8
@.d96 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"missed" }>, align 8
@.d97 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"Analysis" }>, align 8
@.d98 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"analysis" }>, align 8
@.d99 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d100 = private constant <{ i64, [65 x i8] }> <{ i64 0, [65 x i8] c" no code: nothing in the program calls it, so the link kept none\0A" }>, align 8
@.d101 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d102 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d103 = private constant <{ i64, [49 x i8] }> <{ i64 0, [49 x i8] c" no code of its own: inlined at every call, into " }>, align 8
@.d104 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d105 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c" no code of its own:" }>, align 8
@.d106 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c", which has none either\0A" }>, align 8
@.d107 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d108 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c" no code of its own:" }>, align 8
@.d109 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c", which is inlined in turn into " }>, align 8
@.d110 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d111 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d112 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d113 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d114 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d115 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"<" }>, align 8
@.d116 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d117 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d118 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d119 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2flisting_3aWriter_2e4 = weak hidden constant i1 false
declare void @__olang_region_settle(ptr, i1)
@.d120 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d121 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d122 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2flisting_3aWriter_2e10 = weak hidden constant i1 false
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
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare %"compiler/listing:Namer" @compiler_2flisting_2eNamer_2eMake(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aCode_3e_2eLen_3ccompiler_2fbuild_3aCode_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/build:Code" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aCode_3e_2eAt_3ccompiler_2fbuild_3aCode_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare { i64, ptr } @compiler_2flisting_2einstance(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, ptr %a1, ptr %a2, ptr %a3, ptr %a4)
declare %"compiler/listing:Sources" @compiler_2flisting_3aSources_2ector(ptr %v0)
declare { i64, ptr } @compiler_2fload_2eStdDir(ptr %v0)
declare { i32, { i64, ptr } } @std_2fos_2eRealPath(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
@olang_loc_60a4feb33ac0cdc_badaef821bc3f128 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v0, ptr %v1, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2flisting_2eRemarks(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, ptr %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flisting_3aRemark_3e_2eLen_3ccompiler_2flisting_3aRemark_3e(ptr %v0, ptr %a0)
declare %"compiler/listing:Remark" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flisting_3aRemark_3e_2eAt_3ccompiler_2flisting_3aRemark_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @compiler_2flisting_2eofAny(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2flisting_2ecompiler_2flisting_3aNamer_2eName(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H0127831368543eff3b7740d7d3240080(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2flisting_2ecompiler_2flisting_3aWriter_2eleftover(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0)
declare i1 @compiler_2flisting_2etypeDelim(i8 %a0)
@olang_loc_49807d4f96be5ab6_2af2c5a6dfc4a7ea = external constant [0 x i8]
@olang_loc_4991736aef41bf13_e517855ef6f4ebc7 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fload_2eErrQualifier(ptr %v0, ptr %v1, { i64, ptr } %a0, i1 %a1)
@olang_loc_3adca15b088d1ab8_ad89d21976d6c71c = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_1b7d32817576de5e_73fc7def7ca382d2 = external constant [0 x i8]
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H7e371d56fd28e687545500cc2dc4b78e(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_He566606ea489086acfe37a2d8fe143fc(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H1a06a15e944bd533c307ed632a66227d(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
@olang_loc_3ba8e4c8ab4044f8_de2322bbe0a12f8c = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrimEnd(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_499282f3f30fac94_8f31adef023c0138 = external constant [0 x i8]
declare void @compiler_2flisting_2ecompiler_2flisting_3aWriter_2ecode(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, i1 %a2)
declare void @compiler_2flisting_2ecompiler_2flisting_3aWriter_2easmLine(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %v6, ptr %v7, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, ptr %a3, ptr %a4)
@olang_loc_4e22a6b8cb4b0f4e_d8ececdffd9edfc2 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %v0, i64 %a0)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v0, { i64, ptr } %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_Hc3dff1927e5c626a9d95abfdf4e9a462(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare i1 @compiler_2flisting_2eirDefines(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @compiler_2flisting_2ecompiler_2flisting_3aWriter_2eirLine(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, { i64, ptr } %a1, ptr %a2)
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2flisting_2emetaField(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_b8d38b69b79cf91c_5a0dc70c1127b970 = external constant [0 x i8]
@olang_loc_43ec7269e82cf689_7116d248b5a11b4d = external constant [0 x i8]
declare void @compiler_2flisting_2ecompiler_2flisting_3aWriter_2ereach(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, i64 %a3)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %a0, i1 %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2ePadEnd(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i8 %a2)
@olang_loc_5a79b11f9a8ea358_a6600b1bb9cded74 = external constant [0 x i8]
@olang_loc_6afa1fda02b1904e_762f30cdf4bfe02 = external constant [0 x i8]
@olang_loc_a32004acca342e4b_53d1fb3a96a10aff = external constant [0 x i8]
declare { i64, ptr } @compiler_2flisting_2eunquote(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_f323dd54c7e2a5d0_8d4c3c3918b6d694 = external constant [0 x i8]
@olang_loc_2238304466d31cdc_a18281d53071ef08 = external constant [0 x i8]
@olang_loc_a0e57960875e3249_f03c8e9377147565 = external constant [0 x i8]
@olang_loc_96c24661ddd014aa_b59c706e032d6c46 = external constant [0 x i8]
@olang_loc_5830759408577a87_15470f09e840e423 = external constant [0 x i8]
@olang_loc_89a4da7eaed16d48_97b863eee78c099c = external constant [0 x i8]
@olang_loc_4256a3bf93089da5_22d14aef181c0709 = external constant [0 x i8]
@olang_loc_419e18d9533a9898_764a2322a7d2db2c = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eToLower(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_17a8c3c34efffa58_c9c69620944e8c6c = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLess(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_f8bac9f6e1e646b5_a02e035c32962b19 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0)

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
