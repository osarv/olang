source_filename = "compiler_source.quick.ll"
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
%"compiler/source:Source" = type { { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/source:Names" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/source:Span" = type { i32, i32 }
define dso_local { i64, ptr } @compiler_2fsource_2eLineStarts(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %lp6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l20 = alloca { i64, ptr }
  %l29 = alloca i64
  %l41 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 1, ptr %l1, !tbaa !24
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t1, ptr %l2, !tbaa !27
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
  br label %bb9
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t15, ptr %l20, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr i8, ptr %t19, i64 %t16
  %t21 = load i8, ptr %t20, !tbaa !32
  %t25 = icmp eq i8 %t21, 10
  br i1 %t25, label %bb5, label %bb6
bb5:
  %t27 = load i64, ptr %l1, !tbaa !24
  %t29 = add i64 %t27, 1
  store i64 %t29, ptr %l1, !tbaa !24
  br label %bb7
bb6:
  br label %bb7
bb7:
  br label %bb8
bb8:
  %t31 = load i64, ptr %l3, !tbaa !24
  %t33 = add i64 %t31, 1
  store i64 %t33, ptr %l3, !tbaa !24
  br label %bb1
bb9:
  %t35 = load i64, ptr %l1, !tbaa !24
  store i64 %t35, ptr %l29, !tbaa !24
  %t36 = load i64, ptr %l29, !tbaa !24
  %t37 = icmp sge i64 %t36, 0
  br i1 %t37, label %bb10, label %bb11
bb10:
  %t39 = load i64, ptr %l29, !tbaa !24
  %t40 = icmp sle i64 %t39, 2305843009213693951
  br i1 %t40, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_de064195a6d3d57e_27bd6cdd46c96b6a)
  unreachable
bb12:
  %t42 = load i64, ptr %l29, !tbaa !24
  %t43 = mul i64 %t42, 4
  %t44 = call ptr @__olang_scope_alloc_zeroed(ptr %v1, i64 %t43)
  %t45 = insertvalue { i64, ptr } undef, i64 %t42, 0
  %t46 = insertvalue { i64, ptr } %t45, ptr %t44, 1
  %t47 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t47, ptr %lp6
  %t49 = load ptr, ptr %lp6
  store { i64, ptr } %t46, ptr %t49, !tbaa !27
  store i64 1, ptr %l7, !tbaa !24
  %t50 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t50, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t52 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t54 = extractvalue { i64, ptr } %t52, 0
  store i64 %t54, ptr %l10, !tbaa !24
  br label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_de064195a6d3d57e_27bd6cdd46c96b6a)
  unreachable
bb14:
  %t56 = load i64, ptr %l9, !tbaa !24
  %t57 = load i64, ptr %l10, !tbaa !24
  %t60 = icmp slt i64 %t56, %t57
  %t62 = xor i1 %t60, true
  br i1 %t62, label %bb15, label %bb16
bb15:
  br label %bb22
bb16:
  br label %bb17
bb17:
  %t64 = load i64, ptr %l9, !tbaa !24
  store i64 %t64, ptr %l11, !tbaa !24
  %t66 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t66, ptr %l41, !tbaa !27
  %t67 = load i64, ptr %l9, !tbaa !24
  %t69 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !27
  %t71 = getelementptr i8, ptr %t70, i64 %t67
  %t72 = load i8, ptr %t71, !tbaa !32
  %t76 = icmp eq i8 %t72, 10
  br i1 %t76, label %bb18, label %bb19
bb18:
  %t78 = load i64, ptr %l7, !tbaa !24
  %t79 = load i64, ptr %l11, !tbaa !24
  %t81 = add i64 %t79, 1
  %t83 = trunc i64 %t81 to i32
  %t85 = load ptr, ptr %lp6
  %t87 = getelementptr { i64, ptr }, ptr %t85, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !27
  %t89 = getelementptr i32, ptr %t88, i64 %t78
  store i32 %t83, ptr %t89, !tbaa !33
  %t90 = load i64, ptr %l7, !tbaa !24
  %t92 = add i64 %t90, 1
  store i64 %t92, ptr %l7, !tbaa !24
  br label %bb20
bb19:
  br label %bb20
bb20:
  br label %bb21
bb21:
  %t94 = load i64, ptr %l9, !tbaa !24
  %t96 = add i64 %t94, 1
  store i64 %t96, ptr %l9, !tbaa !24
  br label %bb14
bb22:
  %t98 = load ptr, ptr %lp6
  %t99 = load { i64, ptr }, ptr %t98, !tbaa !27
  store { i64, ptr } %t99, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i32, %"compiler/source:Source" } @compiler_2fsource_2eSource_2eRead(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i32
  %l15 = alloca %"compiler/source:Source"
  %s0 = alloca %olang.scope
  %rv = alloca { i32, %"compiler/source:Source" }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %v0, ptr %v1, { i64, ptr } %t1)
  %t4 = extractvalue { i32, { i64, ptr } } %t3, 1
  %t5 = extractvalue { i32, { i64, ptr } } %t3, 0
  store i32 %t5, ptr %l5
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store { i64, ptr } %t4, ptr %l4
  br label %bb1
bb1:
  %t8 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t8, ptr %l2, !tbaa !27
  br label %bb3
bb2:
  %t9 = load i32, ptr %l5, !tbaa !23
  %t10 = lshr i32 %t9, 16
  %t11 = and i32 %t9, 65535
  %t12 = icmp eq i32 %t10, 1
  %t13 = select i1 %t12, i32 1, i32 0
  %t14 = icmp eq i32 %t9, 0
  %t15 = shl i32 %t13, 16
  %t16 = or i32 %t15, %t11
  %t17 = select i1 %t14, i32 0, i32 %t16
  call void @__olang_scope_close(ptr %s0)
  %t19 = insertvalue { i32, %"compiler/source:Source" } zeroinitializer, i32 %t17, 0
  store { i32, %"compiler/source:Source" } %t19, ptr %rv
  br label %ret
bb3:
  %t20 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t20, ptr %l1, !tbaa !27
  %t21 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t21, 0
  %t25 = icmp slt i64 %t23, 2147483647
  br i1 %t25, label %bb4, label %bb5
bb4:
  %t27 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t28 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t31 = call %"compiler/source:Source" @compiler_2fsource_3aSource_2ector(ptr %v0, ptr %v1, ptr %v1, { i64, ptr } %t27, { i64, ptr } %t28)
  store %"compiler/source:Source" %t31, ptr %l15
  br label %bb6
bb5:
  %t32 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t33 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d0, i32 0, i32 1) }, 1
  %t34 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d0, i32 0, i32 1) }, 0
  %t36 = extractvalue { i64, ptr } %t32, 1
  %t37 = extractvalue { i64, ptr } %t32, 0
  %t38 = add i64 %t34, %t37
  %t39 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d1, i32 0, i32 1) }, 1
  %t40 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  %t41 = add i64 %t38, %t40
  %t42 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t41)
  call void @olang_textcopy(ptr %t42, ptr %t33, i64 %t34)
  %t43 = getelementptr i8, ptr %t42, i64 %t34
  call void @olang_textcopy(ptr %t43, ptr %t36, i64 %t37)
  %t44 = getelementptr i8, ptr %t43, i64 %t37
  call void @olang_textcopy(ptr %t44, ptr %t39, i64 %t40)
  %t45 = insertvalue { i64, ptr } undef, i64 %t41, 0
  %t46 = insertvalue { i64, ptr } %t45, ptr %t42, 1
  %t48 = extractvalue { i64, ptr } %t46, 0
  %t49 = extractvalue { i64, ptr } %t46, 1
  %t50 = mul i64 %t48, 1
  %t51 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t50)
  call void @llvm.memcpy.p0.p0.i64(ptr %t51, ptr %t49, i64 %t50, i1 false)
  %t52 = insertvalue { i64, ptr } undef, i64 %t48, 0
  %t53 = insertvalue { i64, ptr } %t52, ptr %t51, 1
  %t55 = extractvalue { i64, ptr } %t53, 1
  %t56 = extractvalue { i64, ptr } %t53, 0
  %t57 = insertvalue { i64, ptr } undef, i64 %t56, 0
  %t58 = insertvalue { i64, ptr } %t57, ptr %t55, 1
  call void @__olang_check_failed_text(ptr @olang_loc_9c3ec55262acfc2c_a977145394bbbed8, { i64, ptr } %t58)
  unreachable
bb6:
  call void @__olang_scope_close(ptr %s0)
  %t59 = load %"compiler/source:Source", ptr %l15
  %t60 = insertvalue { i32, %"compiler/source:Source" } zeroinitializer, %"compiler/source:Source" %t59, 1
  store { i32, %"compiler/source:Source" } %t60, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"compiler/source:Source" }, ptr %rv
  ret { i32, %"compiler/source:Source" } %rr
}

define dso_local i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l4 = alloca i64
  %l7 = alloca i32
  %l8 = alloca i32
  %l12 = alloca i32
  %l13 = alloca i32
  %l16 = alloca i32
  %s1 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/source:Names", ptr %t1, i32 0, i32 0
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i64, ptr %l4, !tbaa !24
  %t7 = icmp eq i64 %t6, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eadd(ptr %v0, ptr %s1, ptr %t9, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) })
  store i32 %t11, ptr %l7
  br label %bb4
bb3:
  br label %bb5
bb4:
  call void @__olang_scope_close(ptr %s1)
  br label %bb5
bb5:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/source:Names", ptr %t12, i32 0, i32 1
  %t15 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t18 = call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H7cdf11fa982e6abfb09bba8099b31363(ptr %v0, ptr %v1, ptr %t14, { i64, ptr } %t15)
  %t19 = extractvalue { i32, i32 } %t18, 1
  %t20 = extractvalue { i32, i32 } %t18, 0
  store i32 %t20, ptr %l13
  %t21 = icmp ne i32 %t20, 0
  br i1 %t21, label %bb7, label %ok.22, !prof !99
ok.22:
  store i32 %t19, ptr %l12
  br label %bb6
bb6:
  %t23 = load i32, ptr %l12, !tbaa !23
  store i32 %t23, ptr %l8, !tbaa !23
  br label %bb10
bb7:
  br label %bb8
bb8:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t28 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eadd(ptr %v0, ptr %v1, ptr %t24, { i64, ptr } %t25)
  store i32 %t28, ptr %l16
  br label %bb9
bb9:
  %t29 = load i32, ptr %l16, !tbaa !23
  store i32 %t29, ptr %l8, !tbaa !23
  br label %bb10
bb10:
  %t30 = load i32, ptr %l8, !tbaa !23
  store i32 %t30, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l6 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/source:Names", ptr %a0, i32 0, i32 0
  %t6 = sext i32 %a1 to i64
  %t9 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %t3, i64 %t6)
  store { i64, ptr } %t9, ptr %l6
  br label %bb1
bb1:
  %t10 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t10, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eadd(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l5 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca i64
  %l16 = alloca ptr
  %l18 = alloca ptr
  %l21 = alloca i64
  %l23 = alloca { i64, ptr }
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/source:Names", ptr %t1, i32 0, i32 0
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i64, ptr %l5, !tbaa !24
  %t7 = trunc i64 %t6 to i32
  store i32 %t7, ptr %l2, !tbaa !23
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/source:Names", ptr %t10, i32 0, i32 0
  store ptr %t12, ptr %l9, !tbaa !29
  %t13 = ptrtoint ptr %v0 to i64
  store i64 %t13, ptr %l10, !tbaa !24
  %t14 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t14, label %bb2, label %bb3
bb2:
  %t16 = call ptr @__olang_region_make(ptr %v0)
  %t17 = ptrtoint ptr %t16 to i64
  store i64 %t17, ptr %l10, !tbaa !24
  br label %bb3
bb3:
  %t20 = extractvalue { i64, ptr } %a1, 1
  %t21 = extractvalue { i64, ptr } %a1, 0
  %t22 = load i64, ptr %l10
  %t23 = inttoptr i64 %t22 to ptr
  %t24 = call ptr @__olang_scope_alloc(ptr %t23, i64 %t21)
  call void @olang_textcopy(ptr %t24, ptr %t20, i64 %t21)
  %t25 = insertvalue { i64, ptr } undef, i64 %t21, 0
  %t26 = insertvalue { i64, ptr } %t25, ptr %t24, 1
  %t28 = load i64, ptr %l10
  %t29 = inttoptr i64 %t28 to ptr
  %t30 = extractvalue { i64, ptr } %t26, 0
  %t31 = extractvalue { i64, ptr } %t26, 1
  %t32 = mul i64 %t30, 1
  %t33 = call ptr @__olang_scope_alloc(ptr %t29, i64 %t32)
  call void @llvm.memcpy.p0.p0.i64(ptr %t33, ptr %t31, i64 %t32, i1 false)
  %t34 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t35 = insertvalue { i64, ptr } %t34, ptr %t33, 1
  %t36 = load ptr, ptr %l9, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t36, { i64, ptr } %t35)
  br label %bb4
bb4:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/source:Names", ptr %t38, i32 0, i32 1
  store ptr %t40, ptr %l16, !tbaa !29
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/source:Names", ptr %t41, i32 0, i32 0
  store ptr %t43, ptr %l18, !tbaa !29
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/source:Names", ptr %t44, i32 0, i32 0
  %t48 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t46)
  store i64 %t48, ptr %l21
  br label %bb5
bb5:
  %t49 = load i64, ptr %l21, !tbaa !24
  %t50 = sub i64 %t49, 1
  %t51 = load ptr, ptr %l18, !tbaa !29
  %t53 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t51, i64 %t50)
  store { i64, ptr } %t53, ptr %l23
  br label %bb6
bb6:
  %t54 = load i32, ptr %l2, !tbaa !23
  %t55 = load ptr, ptr %l16, !tbaa !29
  %t56 = load { i64, ptr }, ptr %l23, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Head3ac46f52d9d4661d8417badad2a94(ptr %v0, ptr %v0, ptr %t55, { i64, ptr } %t56, i32 %t54)
  br label %bb7
bb7:
  %t58 = load i32, ptr %l2, !tbaa !23
  store i32 %t58, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fsource_2ecompiler_2fsource_3aSource_2eLine(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l19 = alloca { i64, ptr }
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/source:Source", ptr %t1, i32 0, i32 2
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t8 = sub i64 %t6, 1
  store i64 %t8, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t10 = load i64, ptr %l2, !tbaa !24
  %t11 = load i64, ptr %l3, !tbaa !24
  %t14 = icmp slt i64 %t10, %t11
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb2, label %bb3
bb2:
  br label %bb9
bb3:
  br label %bb4
bb4:
  %t18 = load i64, ptr %l2, !tbaa !24
  %t19 = load i64, ptr %l3, !tbaa !24
  %t22 = add i64 %t18, %t19
  %t24 = add i64 %t22, 1
  %t26 = sdiv i64 %t24, 2
  store i64 %t26, ptr %l4, !tbaa !24
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/source:Source", ptr %t28, i32 0, i32 2
  %t31 = load { i64, ptr }, ptr %t30, !tbaa !27
  store { i64, ptr } %t31, ptr %l19, !tbaa !27
  %t32 = load i64, ptr %l4, !tbaa !24
  %t34 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !27
  %t36 = getelementptr i32, ptr %t35, i64 %t32
  %t37 = load i32, ptr %t36, !tbaa !33
  %t41 = icmp sle i32 %t37, %a1
  br i1 %t41, label %bb5, label %bb6
bb5:
  %t43 = load i64, ptr %l4, !tbaa !24
  store i64 %t43, ptr %l2, !tbaa !24
  br label %bb7
bb6:
  %t45 = load i64, ptr %l4, !tbaa !24
  %t47 = sub i64 %t45, 1
  store i64 %t47, ptr %l3, !tbaa !24
  br label %bb7
bb7:
  br label %bb8
bb8:
  br label %bb1
bb9:
  %t49 = load i64, ptr %l2, !tbaa !24
  %t51 = add i64 %t49, 1
  %t53 = trunc i64 %t51 to i32
  store i32 %t53, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i32, i32 } @compiler_2fsource_2ecompiler_2fsource_3aSource_2eLineCol(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l5 = alloca i32
  %l9 = alloca { i64, ptr }
  %rv = alloca { i32, i32 }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aSource_2eLine(ptr %v0, ptr %t1, i32 %t2)
  store i32 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i32, ptr %l5, !tbaa !23
  store i32 %t6, ptr %l2, !tbaa !23
  %t7 = load i32, ptr %l2, !tbaa !23
  %t8 = load i32, ptr %l1, !tbaa !23
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/source:Source", ptr %t9, i32 0, i32 2
  %t12 = load { i64, ptr }, ptr %t11, !tbaa !27
  store { i64, ptr } %t12, ptr %l9, !tbaa !27
  %t13 = load i32, ptr %l2, !tbaa !23
  %t15 = sub i32 %t13, 1
  %t17 = sext i32 %t15 to i64
  %t18 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr i32, ptr %t19, i64 %t17
  %t21 = load i32, ptr %t20, !tbaa !33
  %t24 = sub i32 %t8, %t21
  %t26 = add i32 %t24, 1
  %t28 = insertvalue { i32, i32 } undef, i32 %t7, 0
  %t30 = insertvalue { i32, i32 } %t28, i32 %t26, 1
  store { i32, i32 } %t30, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i32 }, ptr %rv
  ret { i32, i32 } %rr
}

define dso_local i32 @compiler_2fsource_2ecompiler_2fsource_3aSource_2eLineStart(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l3 = alloca { i64, ptr }
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/source:Source", ptr %a0, i32 0, i32 2
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l3, !tbaa !27
  %t7 = sub i32 %a1, 1
  %t9 = sext i32 %t7 to i64
  %t10 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t11 = load ptr, ptr %t10, !tbaa !27
  %t12 = getelementptr i32, ptr %t11, i64 %t9
  %t13 = load i32, ptr %t12, !tbaa !33
  store i32 %t13, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i64 @compiler_2fsource_2ecompiler_2fsource_3aSource_2eLines(ptr %v0, ptr %a0) #0 {
entry:
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/source:Source", ptr %a0, i32 0, i32 2
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  store i64 %t6, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aSource_2eTextOf(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1) #0 {
entry:
  %l1 = alloca %"compiler/source:Span"
  %l3 = alloca { i64, ptr }
  %l5 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %rv = alloca { i64, ptr }
  store %"compiler/source:Span" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/source:Source", ptr %a0, i32 0, i32 1
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l3, !tbaa !27
  %t5 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t6 = load i32, ptr %t5, !tbaa !23
  %t8 = sext i32 %t6 to i64
  store i64 %t8, ptr %l5, !tbaa !24
  %t9 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 1
  %t10 = load i32, ptr %t9, !tbaa !23
  %t12 = sext i32 %t10 to i64
  store i64 %t12, ptr %l7, !tbaa !24
  %t13 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t13, 0
  store i64 %t14, ptr %l8, !tbaa !24
  %t15 = load i64, ptr %l5, !tbaa !24
  %t16 = icmp sge i64 %t15, 0
  br i1 %t16, label %bb1, label %bb2
bb1:
  %t18 = load i64, ptr %l5, !tbaa !24
  %t19 = load i64, ptr %l7, !tbaa !24
  %t20 = icmp sle i64 %t18, %t19
  br i1 %t20, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_d8e20da8ac76c558_ce447159404cbf8c)
  unreachable
bb3:
  %t22 = load i64, ptr %l7, !tbaa !24
  %t23 = load i64, ptr %l8, !tbaa !24
  %t24 = icmp sle i64 %t22, %t23
  br i1 %t24, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_d8e20da8ac76c558_ce447159404cbf8c)
  unreachable
bb5:
  %t26 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = load i64, ptr %l5, !tbaa !24
  %t29 = load i64, ptr %l7, !tbaa !24
  %t30 = getelementptr i8, ptr %t27, i64 %t28
  %t31 = sub i64 %t29, %t28
  %t32 = insertvalue { i64, ptr } undef, i64 %t31, 0
  %t33 = insertvalue { i64, ptr } %t32, ptr %t30, 1
  store { i64, ptr } %t33, ptr %rv
  br label %ret
bb6:
  call void @__olang_check_failed(ptr @olang_loc_d8e20da8ac76c558_ce447159404cbf8c)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"compiler/source:Names" @compiler_2fsource_3aNames_2ector(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l2 = alloca i64
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca i64
  %l8 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"compiler/source:Names"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = ptrtoint ptr %v0 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fsource_3aNames_2e0
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v0)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t6 = load i64, ptr %l2
  %t7 = inttoptr i64 %t6 to ptr
  %t8 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t7, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %l4
  br label %bb3
bb3:
  %t9 = load i1, ptr @olang_2esole_2ecompiler_2fsource_3aNames_2e0
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t11 = load i64, ptr %l2
  %t12 = inttoptr i64 %t11 to ptr
  %t13 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l4, i32 0, i32 0
  %t14 = load { i64, ptr }, ptr %t13
  %t15 = extractvalue { i64, ptr } %t14, 1
  %t16 = call ptr @__olang_region_or(ptr %t15, ptr null)
  %t17 = icmp ne ptr %t16, null
  %t18 = select i1 %t17, ptr %t16, ptr null
  %t19 = icmp eq ptr %t18, %t12
  call void @__olang_region_settle(ptr %t12, i1 %t19)
  br label %bb5
bb5:
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %l0
  %t21 = ptrtoint ptr %v0 to i64
  store i64 %t21, ptr %l6, !tbaa !24
  %t22 = load i1, ptr @olang_2esole_2ecompiler_2fsource_3aNames_2e1
  br i1 %t22, label %bb6, label %bb7
bb6:
  %t24 = call ptr @__olang_region_make(ptr %v0)
  %t25 = ptrtoint ptr %t24 to i64
  store i64 %t25, ptr %l6, !tbaa !24
  br label %bb7
bb7:
  %t26 = load i64, ptr %l6
  %t27 = inttoptr i64 %t26 to ptr
  %t28 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aStr_He95eed18a2ff1e1d83d9cd0af9717f33(ptr %t27)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t28, ptr %l8
  br label %bb8
bb8:
  %t29 = load i1, ptr @olang_2esole_2ecompiler_2fsource_3aNames_2e1
  br i1 %t29, label %bb9, label %bb10
bb9:
  %t31 = load i64, ptr %l6
  %t32 = inttoptr i64 %t31 to ptr
  %t33 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l8, i32 0, i32 2
  %t34 = load { i64, ptr }, ptr %t33
  %t35 = extractvalue { i64, ptr } %t34, 1
  %t36 = call ptr @__olang_region_or(ptr %t35, ptr null)
  %t37 = icmp ne ptr %t36, null
  %t38 = select i1 %t37, ptr %t36, ptr null
  %t39 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l8, i32 0, i32 1
  %t40 = load { i64, ptr }, ptr %t39
  %t41 = extractvalue { i64, ptr } %t40, 1
  %t42 = call ptr @__olang_region_or(ptr %t41, ptr null)
  %t43 = icmp ne ptr %t42, null
  %t44 = select i1 %t43, ptr %t42, ptr %t38
  %t45 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l8, i32 0, i32 0
  %t46 = load { i64, ptr }, ptr %t45
  %t47 = extractvalue { i64, ptr } %t46, 1
  %t48 = call ptr @__olang_region_or(ptr %t47, ptr null)
  %t49 = icmp ne ptr %t48, null
  %t50 = select i1 %t49, ptr %t48, ptr %t44
  %t51 = icmp eq ptr %t50, %t32
  call void @__olang_region_settle(ptr %t32, i1 %t51)
  br label %bb10
bb10:
  %t52 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l8
  %t53 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l0
  %t54 = insertvalue %"compiler/source:Names" undef, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t53, 0
  %t56 = insertvalue %"compiler/source:Names" %t54, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t52, 1
  store %"compiler/source:Names" %t56, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Names", ptr %rv
  ret %"compiler/source:Names" %rr
}

define dso_local %"compiler/source:Source" @compiler_2fsource_3aSource_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %rv = alloca %"compiler/source:Source"
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a0, ptr %l2, !tbaa !27
  %t3 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t3, ptr %l3, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t7 = call { i64, ptr } @compiler_2fsource_2eLineStarts(ptr %v1, ptr %v2, { i64, ptr } %t5)
  store { i64, ptr } %t7, ptr %l8
  br label %bb1
bb1:
  %t8 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t10 = insertvalue %"compiler/source:Source" undef, { i64, ptr } %t9, 0
  %t11 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t12 = insertvalue %"compiler/source:Source" %t10, { i64, ptr } %t11, 1
  %t14 = insertvalue %"compiler/source:Source" %t12, { i64, ptr } %t8, 2
  store %"compiler/source:Source" %t14, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Source", ptr %rv
  ret %"compiler/source:Source" %rr
}

define dso_local %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1) #0 {
entry:
  %rv = alloca %"compiler/source:Span"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"compiler/source:Span" undef, i32 %a0, 0
  %t8 = insertvalue %"compiler/source:Span" %t6, i32 %a1, 1
  store %"compiler/source:Span" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

declare void @__olang_check_failed(ptr) cold noreturn
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
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
@.d0 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"source: " }>, align 8
@.d1 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c" is larger than 2 GB" }>, align 8
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
declare void @__olang_check_failed_text(ptr, { i64, ptr }) cold noreturn
@.d2 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@olang_2esole_2ecompiler_2fsource_3aNames_2e0 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
@olang_2esole_2ecompiler_2fsource_3aNames_2e1 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aStr_He95eed18a2ff1e1d83d9cd0af9717f33(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20compiler_2fsource_3aNameId_3e_2ector(ptr %v0)
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
@olang_loc_de064195a6d3d57e_27bd6cdd46c96b6a = external constant [0 x i8]
declare { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_9c3ec55262acfc2c_a977145394bbbed8 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H7cdf11fa982e6abfb09bba8099b31363(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Head3ac46f52d9d4661d8417badad2a94(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i32 %a2)
@olang_loc_d8e20da8ac76c558_ce447159404cbf8c = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20compiler_2fsource_3aNameId_3e_2ector(ptr %v0)

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
