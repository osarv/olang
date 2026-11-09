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
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" = type { ptr, i64 }
define dso_local { i64, ptr } @compiler_2ffacts_2eToken(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l4 = alloca i1
  %l8 = alloca i1
  %l11 = alloca { i64, ptr }
  %l12 = alloca i1
  %l14 = alloca i1
  %l17 = alloca { i64, ptr }
  %l18 = alloca i1
  %l20 = alloca i1
  %l22 = alloca i1
  %l28 = alloca { i64, ptr }
  %l29 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp sgt i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  %t11 = icmp sle i64 %t9, 40
  store i1 %t11, ptr %l4, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb3
bb3:
  %t13 = load i1, ptr %l4, !tbaa !21
  br i1 %t13, label %bb4, label %bb5
bb4:
  %t14 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d0, i32 0, i32 1) }, ptr %l11, !tbaa !27
  %t17 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t18 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %s0, { i64, ptr } %t14, { i64, ptr } %t17)
  store i1 %t18, ptr %l12
  br label %bb6
bb5:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb7
bb6:
  %t19 = load i1, ptr %l12, !tbaa !21
  %t20 = xor i1 %t19, true
  store i1 %t20, ptr %l8, !tbaa !21
  br label %bb7
bb7:
  %t22 = load i1, ptr %l8, !tbaa !21
  br i1 %t22, label %bb8, label %bb9
bb8:
  %t23 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) }, ptr %l17, !tbaa !27
  %t26 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t27 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %s0, { i64, ptr } %t23, { i64, ptr } %t26)
  store i1 %t27, ptr %l18
  br label %bb10
bb9:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb11
bb10:
  %t28 = load i1, ptr %l18, !tbaa !21
  %t29 = xor i1 %t28, true
  store i1 %t29, ptr %l14, !tbaa !21
  br label %bb11
bb11:
  %t31 = load i1, ptr %l14, !tbaa !21
  br i1 %t31, label %bb12, label %bb13
bb12:
  %t32 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t34 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t32, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) })
  store i1 %t34, ptr %l22
  br label %bb14
bb13:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb15
bb14:
  %t35 = load i1, ptr %l22, !tbaa !21
  %t36 = xor i1 %t35, true
  store i1 %t36, ptr %l20, !tbaa !21
  br label %bb15
bb15:
  %t38 = load i1, ptr %l20, !tbaa !21
  br i1 %t38, label %bb16, label %bb17
bb16:
  %t39 = load { i64, ptr }, ptr %l0, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t39, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t42 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t45 = call { i64, ptr } @std_2fsha256_2eHex(ptr %v0, ptr %s0, { i64, ptr } %t42)
  store { i64, ptr } %t45, ptr %l28
  br label %bb19
bb19:
  %t46 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t47 = extractvalue { i64, ptr } %t46, 0
  store i64 %t47, ptr %l29, !tbaa !24
  %t48 = icmp sge i64 0, 0
  br i1 %t48, label %bb20, label %bb21
bb20:
  %t50 = icmp sle i64 0, 32
  br i1 %t50, label %bb22, label %bb23
bb21:
  call void @__olang_check_failed(ptr @olang_loc_8ed5d3ba35d14a58_c4d17542e0ab7bdc)
  unreachable
bb22:
  %t52 = load i64, ptr %l29, !tbaa !24
  %t53 = icmp sle i64 32, %t52
  br i1 %t53, label %bb24, label %bb25
bb23:
  call void @__olang_check_failed(ptr @olang_loc_8ed5d3ba35d14a58_c4d17542e0ab7bdc)
  unreachable
bb24:
  %t55 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !27
  %t57 = getelementptr i8, ptr %t56, i64 0
  %t58 = sub i64 32, 0
  %t59 = insertvalue { i64, ptr } undef, i64 %t58, 0
  %t60 = insertvalue { i64, ptr } %t59, ptr %t57, 1
  %t61 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t62 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  %t64 = extractvalue { i64, ptr } %t60, 1
  %t65 = extractvalue { i64, ptr } %t60, 0
  %t66 = add i64 %t62, %t65
  %t67 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t66)
  call void @olang_textcopy(ptr %t67, ptr %t61, i64 %t62)
  %t68 = getelementptr i8, ptr %t67, i64 %t62
  call void @olang_textcopy(ptr %t68, ptr %t64, i64 %t65)
  %t69 = insertvalue { i64, ptr } undef, i64 %t66, 0
  %t70 = insertvalue { i64, ptr } %t69, ptr %t67, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t70, ptr %rv
  br label %ret
bb25:
  call void @__olang_check_failed(ptr @olang_loc_8ed5d3ba35d14a58_c4d17542e0ab7bdc)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2ffacts_2ecompiler_2ffacts_3aTable_2eDecide(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l14 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l20 = alloca i32
  %l21 = alloca i64
  %l22 = alloca { i64, ptr }
  %l31 = alloca i1
  %l32 = alloca i1
  %l34 = alloca { i64, ptr }
  %l37 = alloca i1
  %l39 = alloca { i64, ptr }
  %l40 = alloca ptr
  %l46 = alloca ptr
  %l48 = alloca { i64, ptr }
  %l49 = alloca i64
  %l52 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %t68 = alloca { { i64, ptr }, ptr }, align 8
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l6, !tbaa !29
  %t2 = load ptr, ptr %l6, !tbaa !29
  %t3 = getelementptr %"compiler/facts:Table", ptr %t2, i32 0, i32 3
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = add i64 %t4, 1
  %t8 = load ptr, ptr %l6, !tbaa !29
  %t9 = getelementptr %"compiler/facts:Table", ptr %t8, i32 0, i32 3
  store i64 %t6, ptr %t9, !tbaa !24
  br i1 %a3, label %bb1, label %bb2
bb1:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/facts:Table", ptr %t12, i32 0, i32 1
  %t15 = load { i64, ptr }, ptr %l1, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Boo_H6b1fa5c8028973ecd947936aac3caef3(ptr %v0, ptr %t14, { i64, ptr } %t15, i1 true)
  br label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb4
bb4:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/facts:Table", ptr %t19, i32 0, i32 0
  %t22 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t26 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20std_H356792b4f24dc0e780a541ed32f3163e(ptr %v0, ptr %s0, ptr %t21, { i64, ptr } %t22)
  %t27 = extractvalue { i32, { i64, ptr } } %t26, 1
  %t28 = extractvalue { i32, { i64, ptr } } %t26, 0
  store i32 %t28, ptr %l20
  %t29 = icmp ne i32 %t28, 0
  br i1 %t29, label %bb6, label %ok.30, !prof !99
ok.30:
  store { i64, ptr } %t27, ptr %l19
  br label %bb5
bb5:
  %t31 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t31, 0
  store i64 %t32, ptr %l21, !tbaa !24
  %t33 = load i64, ptr %l21, !tbaa !24
  %t34 = mul i64 %t33, 1
  %t35 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t34)
  %t36 = insertvalue { i64, ptr } undef, i64 %t33, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t35, 1
  store { i64, ptr } %t37, ptr %l22, !tbaa !27
  %t38 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !27
  %t40 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !27
  %t42 = load i64, ptr %l21, !tbaa !24
  %t43 = mul i64 %t42, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t39, ptr %t41, i64 %t43, i1 false)
  %t44 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t44, ptr %l14, !tbaa !27
  br label %bb9
bb6:
  br label %bb7
bb7:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/facts:Table", ptr %t45, i32 0, i32 0
  %t48 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t50 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20std_H355c087bc072a56a762bdfa87b1c9c86(ptr %v0, ptr %t47, { i64, ptr } %t48, { i64, ptr } %t50)
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb9:
  %t55 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t55, ptr %l4, !tbaa !27
  %t56 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t57 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t60 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %v2, { i64, ptr } %t56, { i64, ptr } %t57)
  store i1 %t60, ptr %l31
  br label %bb10
bb10:
  %t61 = load i1, ptr %l31, !tbaa !21
  br i1 %t61, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l32, !tbaa !21
  br label %bb15
bb12:
  %t62 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t64 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t62, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) })
  store { i64, ptr } %t64, ptr %l34
  br label %bb13
bb13:
  %t65 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t66 = getelementptr { { i64, ptr }, ptr }, ptr null, i32 1
  %t67 = ptrtoint ptr %t66 to i64
  %t69 = getelementptr { { i64, ptr }, ptr }, ptr %t68, i32 0, i32 0
  store { i64, ptr } %t65, ptr %t69, !tbaa !28
  call void @__olang_scope_escape(ptr %v2)
  %t71 = getelementptr { { i64, ptr }, ptr }, ptr %t68, i32 0, i32 1
  store ptr %v2, ptr %t71, !tbaa !28
  %t72 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_5, 0
  %t73 = insertvalue { ptr, ptr } %t72, ptr %t68, 1
  %t74 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t76 = extractvalue { ptr, ptr } %t73, 0
  %t77 = extractvalue { ptr, ptr } %t73, 1
  %t78 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eSome_3cstd_2fprelu_H83fc947e980a7768a96047c3a0b10532(ptr %s0, ptr %s0, { i64, ptr } %t74, ptr %t76, ptr %t77)
  store i1 %t78, ptr %l37
  br label %bb14
bb14:
  %t79 = load i1, ptr %l37, !tbaa !21
  store i1 %t79, ptr %l32, !tbaa !21
  br label %bb15
bb15:
  %t80 = load i1, ptr %l32, !tbaa !21
  br i1 %t80, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb17:
  br label %bb18
bb18:
  %t81 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t83 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t81, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) })
  store { i64, ptr } %t83, ptr %l39
  br label %bb19
bb19:
  %t84 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t85 = call ptr @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eToVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %s0, ptr %s0, { i64, ptr } %t84)
  store ptr %t85, ptr %l40
  br label %bb20
bb20:
  %t86 = load ptr, ptr %l40, !tbaa !29
  store ptr %t86, ptr %l5, !tbaa !29
  %t87 = load ptr, ptr %l5, !tbaa !29
  %t88 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %v2, ptr %t87, { i64, ptr } %t88)
  br label %bb21
bb21:
  %t91 = load ptr, ptr %l5, !tbaa !29
  %t92 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_7, 0
  %t93 = insertvalue { ptr, ptr } %t92, ptr null, 1
  %t96 = extractvalue { ptr, ptr } %t93, 0
  %t97 = extractvalue { ptr, ptr } %t93, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H1642129570dad448bb7dcc47c334de83(ptr %s0, ptr %s0, ptr %t91, ptr %t96, ptr %t97)
  br label %bb22
bb22:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/facts:Table", ptr %t98, i32 0, i32 0
  store ptr %t100, ptr %l46, !tbaa !29
  %t101 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t101, ptr %l48, !tbaa !27
  %t103 = ptrtoint ptr %s0 to i64
  store i64 %t103, ptr %l49, !tbaa !24
  %t104 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_2c_20std_2fprelude_2ftext_3aString_3e_2e1
  br i1 %t104, label %bb23, label %bb24
bb23:
  %t106 = call ptr @__olang_region_make(ptr %s0)
  %t107 = ptrtoint ptr %t106 to i64
  store i64 %t107, ptr %l49, !tbaa !24
  br label %bb24
bb24:
  %t108 = load ptr, ptr %l5, !tbaa !29
  %t109 = load i64, ptr %l49
  %t110 = inttoptr i64 %t109 to ptr
  %t112 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %s0, ptr %s0, ptr %t110, ptr %t108, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d8, i32 0, i32 1) })
  store { i64, ptr } %t112, ptr %l52
  br label %bb25
bb25:
  %t113 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_2c_20std_2fprelude_2ftext_3aString_3e_2e1
  br i1 %t113, label %bb26, label %bb27
bb26:
  %t115 = load i64, ptr %l49
  %t116 = inttoptr i64 %t115 to ptr
  %t117 = load { i64, ptr }, ptr %l52
  %t118 = extractvalue { i64, ptr } %t117, 1
  %t119 = call ptr @__olang_region_or(ptr %t118, ptr null)
  %t120 = icmp ne ptr %t119, null
  %t121 = select i1 %t120, ptr %t119, ptr null
  %t122 = icmp eq ptr %t121, %t116
  call void @__olang_region_settle(ptr %t116, i1 %t122)
  br label %bb27
bb27:
  %t123 = load ptr, ptr %l46, !tbaa !29
  %t124 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t125 = load { i64, ptr }, ptr %l52, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20std_H355c087bc072a56a762bdfa87b1c9c86(ptr %v0, ptr %t123, { i64, ptr } %t124, { i64, ptr } %t125)
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ffacts_2ecompiler_2ffacts_3aTable_2eForget(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l4 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l18 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l19 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l22 = alloca i32
  %l24 = alloca i1
  %l25 = alloca i64
  %l26 = alloca { i64, ptr }
  %l29 = alloca i1
  %l33 = alloca i64
  %l35 = alloca i64
  %l40 = alloca { i64, ptr }
  %l45 = alloca i1
  %l50 = alloca i1
  %l53 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l56 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l57 = alloca { i64, ptr }
  %l59 = alloca { i64, ptr }
  %l60 = alloca i32
  %l62 = alloca i1
  %l63 = alloca i64
  %l64 = alloca { i64, ptr }
  %l68 = alloca i64
  %l70 = alloca i64
  %l75 = alloca { i64, ptr }
  %l76 = alloca i64
  %l78 = alloca i64
  %l79 = alloca i32
  %l80 = alloca { i64, ptr }
  %l82 = alloca i64
  %l85 = alloca i64
  %l86 = alloca i64
  %l92 = alloca i1
  %l97 = alloca i1
  %s0 = alloca %olang.scope
  %s10 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l15
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l2
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/facts:Table", ptr %t3, i32 0, i32 0
  %t7 = call %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20std_H05b307291733a0818adbf21489237518(ptr %v0, ptr %v0, ptr %t5)
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t7, ptr %l18
  br label %bb2
bb2:
  %t8 = load %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l18
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t8, ptr %l3
  br label %bb3
bb3:
  %t10 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cstd_2fprelude_2ftext_3aString_2_Hc048e18d790977ed6ce46f33e20db3dd(ptr %v0, ptr %s0, ptr %l3)
  %t11 = extractvalue { i32, { i64, ptr } } %t10, 1
  %t12 = extractvalue { i32, { i64, ptr } } %t10, 0
  store i32 %t12, ptr %l22
  %t13 = icmp ne i32 %t12, 0
  br i1 %t13, label %bb5, label %ok.14, !prof !99
ok.14:
  store { i64, ptr } %t11, ptr %l21
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t15, 0
  store i64 %t16, ptr %l25, !tbaa !24
  %t17 = load i64, ptr %l25, !tbaa !24
  %t18 = mul i64 %t17, 1
  %t19 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t18)
  %t20 = insertvalue { i64, ptr } undef, i64 %t17, 0
  %t21 = insertvalue { i64, ptr } %t20, ptr %t19, 1
  store { i64, ptr } %t21, ptr %l26, !tbaa !27
  %t22 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = load i64, ptr %l25, !tbaa !24
  %t27 = mul i64 %t26, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t23, ptr %t25, i64 %t27, i1 false)
  %t28 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t28, ptr %l19, !tbaa !27
  br label %bb7
bb5:
  %t29 = load i32, ptr %l22, !tbaa !23
  %t30 = ashr i32 %t29, 16
  %t32 = icmp eq i32 %t30, 1
  store i1 %t32, ptr %l24, !tbaa !21
  br label %bb6
bb6:
  br label %bb14
bb7:
  %t33 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t33, ptr %l4, !tbaa !27
  %t34 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t35 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t38 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %v1, { i64, ptr } %t34, { i64, ptr } %t35)
  store i1 %t38, ptr %l29
  br label %bb8
bb8:
  %t39 = load i1, ptr %l29, !tbaa !21
  br i1 %t39, label %bb9, label %bb10
bb9:
  %t40 = load { i64, ptr }, ptr %l4, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l2, { i64, ptr } %t40)
  br label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb12
bb12:
  br label %bb13
bb13:
  br label %bb3
bb14:
  store ptr %l2, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb15
bb15:
  %t44 = load i64, ptr %l6, !tbaa !24
  store i64 %t44, ptr %l33, !tbaa !24
  %t45 = load ptr, ptr %l5, !tbaa !29
  %t47 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %t45)
  store i64 %t47, ptr %l35
  br label %bb16
bb16:
  %t48 = load i64, ptr %l33, !tbaa !24
  %t49 = load i64, ptr %l35, !tbaa !24
  %t50 = icmp slt i64 %t48, %t49
  %t52 = xor i1 %t50, true
  br i1 %t52, label %bb17, label %bb18
bb17:
  br label %bb24
bb18:
  br label %bb19
bb19:
  %t54 = load ptr, ptr %l5, !tbaa !29
  %t55 = load i64, ptr %l6, !tbaa !24
  %t58 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %t54, i64 %t55)
  store { i64, ptr } %t58, ptr %l40
  br label %bb20
bb20:
  %t59 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t59, ptr %l7, !tbaa !27
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/facts:Table", ptr %t60, i32 0, i32 0
  %t63 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t67 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20std_H3f1be25370c74fcd9b69b9384a2c675b(ptr %v0, ptr %t62, { i64, ptr } %t63)
  store i1 %t67, ptr %l45
  br label %bb21
bb21:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/facts:Table", ptr %t68, i32 0, i32 1
  %t71 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t75 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Boo_H30aee0de007d74f17ea1c60665763ebd(ptr %v0, ptr %t70, { i64, ptr } %t71)
  store i1 %t75, ptr %l50
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t76 = load i64, ptr %l6, !tbaa !24
  %t78 = add i64 %t76, 1
  store i64 %t78, ptr %l6, !tbaa !24
  br label %bb15
bb24:
  %t80 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t80, ptr %l53
  br label %bb25
bb25:
  %t81 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l53
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t81, ptr %l8
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/facts:Table", ptr %t82, i32 0, i32 2
  %t86 = call %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Boo_Hc20348a7e3f4966d079d7d53957fcef1(ptr %v0, ptr %v0, ptr %t84)
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t86, ptr %l56
  br label %bb26
bb26:
  %t87 = load %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l56
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t87, ptr %l9
  br label %bb27
bb27:
  %t89 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cstd_2fprelude_2ftext_3aString_2_H25a1fa74df5469e35efe3ff4130517ef(ptr %v0, ptr %s0, ptr %l9)
  %t90 = extractvalue { i32, { i64, ptr } } %t89, 1
  %t91 = extractvalue { i32, { i64, ptr } } %t89, 0
  store i32 %t91, ptr %l60
  %t92 = icmp ne i32 %t91, 0
  br i1 %t92, label %bb29, label %ok.93, !prof !99
ok.93:
  store { i64, ptr } %t90, ptr %l59
  br label %bb28
bb28:
  %t94 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t95 = extractvalue { i64, ptr } %t94, 0
  store i64 %t95, ptr %l63, !tbaa !24
  %t96 = load i64, ptr %l63, !tbaa !24
  %t97 = mul i64 %t96, 1
  %t98 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t97)
  %t99 = insertvalue { i64, ptr } undef, i64 %t96, 0
  %t100 = insertvalue { i64, ptr } %t99, ptr %t98, 1
  store { i64, ptr } %t100, ptr %l64, !tbaa !27
  %t101 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !27
  %t103 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t104 = load ptr, ptr %t103, !tbaa !27
  %t105 = load i64, ptr %l63, !tbaa !24
  %t106 = mul i64 %t105, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t102, ptr %t104, i64 %t106, i1 false)
  %t107 = load { i64, ptr }, ptr %l64, !tbaa !27
  store { i64, ptr } %t107, ptr %l57, !tbaa !27
  br label %bb31
bb29:
  %t108 = load i32, ptr %l60, !tbaa !23
  %t109 = ashr i32 %t108, 16
  %t111 = icmp eq i32 %t109, 1
  store i1 %t111, ptr %l62, !tbaa !21
  br label %bb30
bb30:
  br label %bb34
bb31:
  %t112 = load { i64, ptr }, ptr %l57, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l8, { i64, ptr } %t112)
  br label %bb32
bb32:
  br label %bb33
bb33:
  br label %bb27
bb34:
  store ptr %l8, ptr %l11, !tbaa !29
  store i64 0, ptr %l12, !tbaa !24
  br label %bb35
bb35:
  store %olang.scope zeroinitializer, ptr %s10
  %t117 = load i64, ptr %l12, !tbaa !24
  store i64 %t117, ptr %l68, !tbaa !24
  %t118 = load ptr, ptr %l11, !tbaa !29
  %t120 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %t118)
  store i64 %t120, ptr %l70
  br label %bb36
bb36:
  %t121 = load i64, ptr %l68, !tbaa !24
  %t122 = load i64, ptr %l70, !tbaa !24
  %t123 = icmp slt i64 %t121, %t122
  %t125 = xor i1 %t123, true
  br i1 %t125, label %bb37, label %bb38
bb37:
  call void @__olang_scope_close(ptr %s10)
  br label %bb57
bb38:
  br label %bb39
bb39:
  %t127 = load ptr, ptr %l11, !tbaa !29
  %t128 = load i64, ptr %l12, !tbaa !24
  %t131 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %t127, i64 %t128)
  store { i64, ptr } %t131, ptr %l75
  br label %bb40
bb40:
  %t132 = load { i64, ptr }, ptr %l75, !tbaa !27
  store { i64, ptr } %t132, ptr %l13, !tbaa !27
  %t133 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t135 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %s0, ptr %s10, { i64, ptr } %t133, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d9, i32 0, i32 1) })
  %t136 = extractvalue { i32, i64 } %t135, 1
  %t137 = extractvalue { i32, i64 } %t135, 0
  store i32 %t137, ptr %l79
  %t138 = icmp ne i32 %t137, 0
  br i1 %t138, label %bb42, label %ok.139, !prof !99
ok.139:
  store i64 %t136, ptr %l78
  br label %bb41
bb41:
  %t140 = load i64, ptr %l78, !tbaa !24
  store i64 %t140, ptr %l76, !tbaa !24
  br label %bb44
bb42:
  br label %bb43
bb43:
  call void @__olang_scope_close(ptr %s10)
  br label %bb56
bb44:
  %t141 = load i64, ptr %l76, !tbaa !24
  %t142 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t142, ptr %l80, !tbaa !27
  %t145 = add i64 %t141, 1
  store i64 %t145, ptr %l82, !tbaa !24
  %t146 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t149 = extractvalue { i64, ptr } %t146, 0
  store i64 %t149, ptr %l85, !tbaa !24
  %t150 = load { i64, ptr }, ptr %l80, !tbaa !27
  %t151 = extractvalue { i64, ptr } %t150, 0
  store i64 %t151, ptr %l86, !tbaa !24
  %t152 = load i64, ptr %l82, !tbaa !24
  %t153 = icmp sge i64 %t152, 0
  br i1 %t153, label %bb45, label %bb46
bb45:
  %t155 = load i64, ptr %l82, !tbaa !24
  %t156 = load i64, ptr %l85, !tbaa !24
  %t157 = icmp sle i64 %t155, %t156
  br i1 %t157, label %bb47, label %bb48
bb46:
  call void @__olang_check_failed(ptr @olang_loc_fb92b303a6a491ca_28d0443004aa12f6)
  unreachable
bb47:
  %t159 = load i64, ptr %l85, !tbaa !24
  %t160 = load i64, ptr %l86, !tbaa !24
  %t161 = icmp sle i64 %t159, %t160
  br i1 %t161, label %bb49, label %bb50
bb48:
  call void @__olang_check_failed(ptr @olang_loc_fb92b303a6a491ca_28d0443004aa12f6)
  unreachable
bb49:
  %t163 = getelementptr { i64, ptr }, ptr %l80, i32 0, i32 1
  %t164 = load ptr, ptr %t163, !tbaa !27
  %t165 = load i64, ptr %l82, !tbaa !24
  %t166 = load i64, ptr %l85, !tbaa !24
  %t167 = getelementptr i8, ptr %t164, i64 %t165
  %t168 = sub i64 %t166, %t165
  %t169 = insertvalue { i64, ptr } undef, i64 %t168, 0
  %t170 = insertvalue { i64, ptr } %t169, ptr %t167, 1
  %t171 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t174 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %v1, { i64, ptr } %t170, { i64, ptr } %t171)
  store i1 %t174, ptr %l92
  br label %bb51
bb50:
  call void @__olang_check_failed(ptr @olang_loc_fb92b303a6a491ca_28d0443004aa12f6)
  unreachable
bb51:
  %t175 = load i1, ptr %l92, !tbaa !21
  br i1 %t175, label %bb52, label %bb53
bb52:
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t178 = getelementptr %"compiler/facts:Table", ptr %t176, i32 0, i32 2
  %t179 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t183 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Boo_H30aee0de007d74f17ea1c60665763ebd(ptr %v0, ptr %t178, { i64, ptr } %t179)
  store i1 %t183, ptr %l97
  br label %bb54
bb53:
  br label %bb55
bb54:
  br label %bb55
bb55:
  call void @__olang_scope_close(ptr %s10)
  br label %bb56
bb56:
  %t184 = load i64, ptr %l12, !tbaa !24
  %t186 = add i64 %t184, 1
  store i64 %t186, ptr %l12, !tbaa !24
  br label %bb35
bb57:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2ffacts_2ecompiler_2ffacts_3aTable_2eHolds(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l16 = alloca { i64, ptr }
  %l20 = alloca i1
  %l23 = alloca i64
  %l24 = alloca { i64, ptr }
  %l27 = alloca i64
  %l28 = alloca i64
  %l33 = alloca i64
  %l34 = alloca i32
  %l36 = alloca { i64, ptr }
  %l39 = alloca i64
  %l42 = alloca i64
  %l43 = alloca i64
  %l48 = alloca { i64, ptr }
  %l53 = alloca { i64, ptr }
  %l54 = alloca i32
  %l55 = alloca i64
  %l56 = alloca { i64, ptr }
  %l59 = alloca { i64, ptr }
  %l60 = alloca { i64, ptr }
  %l61 = alloca { i64, ptr }
  %l63 = alloca i64
  %l64 = alloca i64
  %l69 = alloca i1
  %s2 = alloca %olang.scope
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
  store %olang.scope zeroinitializer, ptr %s2
  %t7 = load i64, ptr %l3, !tbaa !24
  %t8 = load i64, ptr %l4, !tbaa !24
  %t11 = icmp slt i64 %t7, %t8
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s2)
  br label %bb41
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t15, ptr %l16, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr { i64, ptr }, ptr %t19, i64 %t16
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !37
  store { i64, ptr } %t21, ptr %l5, !tbaa !27
  %t23 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t25 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s2, { i64, ptr } %t23, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d10, i32 0, i32 1) })
  store i1 %t25, ptr %l20
  br label %bb5
bb5:
  %t26 = load i1, ptr %l20, !tbaa !21
  %t27 = xor i1 %t26, true
  br i1 %t27, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s2)
  store i1 false, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t30 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t30, ptr %l24, !tbaa !27
  %t31 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t31, 0
  store i64 %t34, ptr %l27, !tbaa !24
  %t35 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t36 = extractvalue { i64, ptr } %t35, 0
  store i64 %t36, ptr %l28, !tbaa !24
  %t37 = icmp sge i64 5, 0
  br i1 %t37, label %bb9, label %bb10
bb9:
  %t39 = load i64, ptr %l27, !tbaa !24
  %t40 = icmp sle i64 5, %t39
  br i1 %t40, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_e390912e6a1bdc3f_6a056665eef072d3)
  unreachable
bb11:
  %t42 = load i64, ptr %l27, !tbaa !24
  %t43 = load i64, ptr %l28, !tbaa !24
  %t44 = icmp sle i64 %t42, %t43
  br i1 %t44, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_e390912e6a1bdc3f_6a056665eef072d3)
  unreachable
bb13:
  %t46 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = load i64, ptr %l27, !tbaa !24
  %t49 = getelementptr i8, ptr %t47, i64 5
  %t50 = sub i64 %t48, 5
  %t51 = insertvalue { i64, ptr } undef, i64 %t50, 0
  %t52 = insertvalue { i64, ptr } %t51, ptr %t49, 1
  %t54 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v1, ptr %s2, { i64, ptr } %t52, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) })
  %t55 = extractvalue { i32, i64 } %t54, 1
  %t56 = extractvalue { i32, i64 } %t54, 0
  store i32 %t56, ptr %l34
  %t57 = icmp ne i32 %t56, 0
  br i1 %t57, label %bb16, label %ok.58, !prof !99
ok.58:
  store i64 %t55, ptr %l33
  br label %bb15
bb14:
  call void @__olang_check_failed(ptr @olang_loc_e390912e6a1bdc3f_6a056665eef072d3)
  unreachable
bb15:
  %t59 = load i64, ptr %l33, !tbaa !24
  store i64 %t59, ptr %l23, !tbaa !24
  br label %bb18
bb16:
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s2)
  store i1 false, ptr %rv
  br label %ret
bb18:
  %t61 = load i64, ptr %l23, !tbaa !24
  store i64 %t61, ptr %l6, !tbaa !24
  %t62 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t62, ptr %l36, !tbaa !27
  %t63 = load i64, ptr %l6, !tbaa !24
  %t65 = add i64 5, %t63
  %t67 = add i64 %t65, 1
  store i64 %t67, ptr %l39, !tbaa !24
  %t68 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t71 = extractvalue { i64, ptr } %t68, 0
  store i64 %t71, ptr %l42, !tbaa !24
  %t72 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t73 = extractvalue { i64, ptr } %t72, 0
  store i64 %t73, ptr %l43, !tbaa !24
  %t74 = load i64, ptr %l39, !tbaa !24
  %t75 = icmp sge i64 %t74, 0
  br i1 %t75, label %bb19, label %bb20
bb19:
  %t77 = load i64, ptr %l39, !tbaa !24
  %t78 = load i64, ptr %l42, !tbaa !24
  %t79 = icmp sle i64 %t77, %t78
  br i1 %t79, label %bb21, label %bb22
bb20:
  call void @__olang_check_failed(ptr @olang_loc_4da891c857fa9a42_b9a25b213f22c276)
  unreachable
bb21:
  %t81 = load i64, ptr %l42, !tbaa !24
  %t82 = load i64, ptr %l43, !tbaa !24
  %t83 = icmp sle i64 %t81, %t82
  br i1 %t83, label %bb23, label %bb24
bb22:
  call void @__olang_check_failed(ptr @olang_loc_4da891c857fa9a42_b9a25b213f22c276)
  unreachable
bb23:
  %t85 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !27
  %t87 = load i64, ptr %l39, !tbaa !24
  %t88 = load i64, ptr %l42, !tbaa !24
  %t89 = getelementptr i8, ptr %t86, i64 %t87
  %t90 = sub i64 %t88, %t87
  %t91 = insertvalue { i64, ptr } undef, i64 %t90, 0
  %t92 = insertvalue { i64, ptr } %t91, ptr %t89, 1
  %t96 = getelementptr %"compiler/facts:Table", ptr %a0, i32 0, i32 0
  %t101 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20std_H356792b4f24dc0e780a541ed32f3163e(ptr %v0, ptr %s2, ptr %t96, { i64, ptr } %t92)
  %t102 = extractvalue { i32, { i64, ptr } } %t101, 1
  %t103 = extractvalue { i32, { i64, ptr } } %t101, 0
  store i32 %t103, ptr %l54
  %t104 = icmp ne i32 %t103, 0
  br i1 %t104, label %bb26, label %ok.105, !prof !99
ok.105:
  store { i64, ptr } %t102, ptr %l53
  br label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_4da891c857fa9a42_b9a25b213f22c276)
  unreachable
bb25:
  %t106 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t107 = extractvalue { i64, ptr } %t106, 0
  store i64 %t107, ptr %l55, !tbaa !24
  %t108 = load i64, ptr %l55, !tbaa !24
  %t109 = mul i64 %t108, 1
  %t110 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t109)
  %t111 = insertvalue { i64, ptr } undef, i64 %t108, 0
  %t112 = insertvalue { i64, ptr } %t111, ptr %t110, 1
  store { i64, ptr } %t112, ptr %l56, !tbaa !27
  %t113 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !27
  %t115 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t116 = load ptr, ptr %t115, !tbaa !27
  %t117 = load i64, ptr %l55, !tbaa !24
  %t118 = mul i64 %t117, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t114, ptr %t116, i64 %t118, i1 false)
  %t119 = load { i64, ptr }, ptr %l56, !tbaa !27
  store { i64, ptr } %t119, ptr %l48, !tbaa !27
  br label %bb28
bb26:
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s2)
  store i1 false, ptr %rv
  br label %ret
bb28:
  %t121 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t124 = call { i64, ptr } @compiler_2ffacts_2eToken(ptr %s2, ptr %s2, { i64, ptr } %t121)
  store { i64, ptr } %t124, ptr %l59
  br label %bb29
bb29:
  %t125 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t126 = extractvalue { i64, ptr } %t125, 0
  %t127 = extractvalue { i64, ptr } %t125, 1
  %t128 = mul i64 %t126, 1
  %t129 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t128)
  call void @llvm.memcpy.p0.p0.i64(ptr %t129, ptr %t127, i64 %t128, i1 false)
  %t130 = insertvalue { i64, ptr } undef, i64 %t126, 0
  %t131 = insertvalue { i64, ptr } %t130, ptr %t129, 1
  store { i64, ptr } %t131, ptr %l60, !tbaa !27
  %t132 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t132, ptr %l61, !tbaa !27
  %t133 = load i64, ptr %l6, !tbaa !24
  %t135 = add i64 5, %t133
  store i64 %t135, ptr %l63, !tbaa !24
  %t136 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t137 = extractvalue { i64, ptr } %t136, 0
  store i64 %t137, ptr %l64, !tbaa !24
  %t138 = icmp sge i64 5, 0
  br i1 %t138, label %bb30, label %bb31
bb30:
  %t140 = load i64, ptr %l63, !tbaa !24
  %t141 = icmp sle i64 5, %t140
  br i1 %t141, label %bb32, label %bb33
bb31:
  call void @__olang_check_failed(ptr @olang_loc_ed9b7f5b14b4ab41_cd157c649d3eec55)
  unreachable
bb32:
  %t143 = load i64, ptr %l63, !tbaa !24
  %t144 = load i64, ptr %l64, !tbaa !24
  %t145 = icmp sle i64 %t143, %t144
  br i1 %t145, label %bb34, label %bb35
bb33:
  call void @__olang_check_failed(ptr @olang_loc_ed9b7f5b14b4ab41_cd157c649d3eec55)
  unreachable
bb34:
  %t147 = getelementptr { i64, ptr }, ptr %l61, i32 0, i32 1
  %t148 = load ptr, ptr %t147, !tbaa !27
  %t149 = load i64, ptr %l63, !tbaa !24
  %t150 = getelementptr i8, ptr %t148, i64 5
  %t151 = sub i64 %t149, 5
  %t152 = insertvalue { i64, ptr } undef, i64 %t151, 0
  %t153 = insertvalue { i64, ptr } %t152, ptr %t150, 1
  %t154 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t156 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %v1, { i64, ptr } %t154, { i64, ptr } %t153)
  store i1 %t156, ptr %l69
  br label %bb36
bb35:
  call void @__olang_check_failed(ptr @olang_loc_ed9b7f5b14b4ab41_cd157c649d3eec55)
  unreachable
bb36:
  %t157 = load i1, ptr %l69, !tbaa !21
  %t158 = xor i1 %t157, true
  br i1 %t158, label %bb37, label %bb38
bb37:
  call void @__olang_scope_close(ptr %s2)
  store i1 false, ptr %rv
  br label %ret
bb38:
  br label %bb39
bb39:
  call void @__olang_scope_close(ptr %s2)
  br label %bb40
bb40:
  %t161 = load i64, ptr %l3, !tbaa !24
  %t163 = add i64 %t161, 1
  store i64 %t163, ptr %l3, !tbaa !24
  br label %bb1
bb41:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i32, { i64, ptr } } @compiler_2ffacts_2ecompiler_2ffacts_3aTable_2eRead(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %lp3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca i32
  %l11 = alloca i64
  %l12 = alloca { i64, ptr }
  %l14 = alloca ptr
  %l18 = alloca ptr
  %l19 = alloca i64
  %l23 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/facts:Table", ptr %t1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t8 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20std_H356792b4f24dc0e780a541ed32f3163e(ptr %v0, ptr %v2, ptr %t3, { i64, ptr } %t4)
  %t9 = extractvalue { i32, { i64, ptr } } %t8, 1
  %t10 = extractvalue { i32, { i64, ptr } } %t8, 0
  store i32 %t10, ptr %l10
  %t11 = icmp ne i32 %t10, 0
  br i1 %t11, label %bb2, label %ok.12, !prof !99
ok.12:
  store { i64, ptr } %t9, ptr %l9
  br label %bb1
bb1:
  %t13 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t13, 0
  store i64 %t14, ptr %l11, !tbaa !24
  %t15 = load i64, ptr %l11, !tbaa !24
  %t16 = mul i64 %t15, 1
  %t17 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t16)
  %t18 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t19 = insertvalue { i64, ptr } %t18, ptr %t17, 1
  store { i64, ptr } %t19, ptr %l12, !tbaa !27
  %t20 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = load i64, ptr %l11, !tbaa !24
  %t25 = mul i64 %t24, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t21, ptr %t23, i64 %t25, i1 false)
  %t26 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t26, ptr %l4, !tbaa !27
  br label %bb4
bb2:
  br label %bb3
bb3:
  call void @__olang_scope_close(ptr %s0)
  %t28 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t28, ptr %rv
  br label %ret
bb4:
  %t29 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t29, ptr %lp3
  %t30 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t31 = load ptr, ptr %lp3
  store { i64, ptr } %t30, ptr %t31, !tbaa !27
  %t32 = load ptr, ptr %l0, !tbaa !29
  store ptr %t32, ptr %l14, !tbaa !29
  %t33 = load ptr, ptr %l14, !tbaa !29
  %t34 = getelementptr %"compiler/facts:Table", ptr %t33, i32 0, i32 4
  %t35 = load i64, ptr %t34, !tbaa !24
  %t37 = add i64 %t35, 1
  %t39 = load ptr, ptr %l14, !tbaa !29
  %t40 = getelementptr %"compiler/facts:Table", ptr %t39, i32 0, i32 4
  store i64 %t37, ptr %t40, !tbaa !24
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/facts:Table", ptr %t41, i32 0, i32 2
  store ptr %t43, ptr %l18, !tbaa !29
  %t44 = ptrtoint ptr %s0 to i64
  store i64 %t44, ptr %l19, !tbaa !24
  %t45 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_2c_20Bool_3e_2e0
  br i1 %t45, label %bb5, label %bb6
bb5:
  %t47 = call ptr @__olang_region_make(ptr %s0)
  %t48 = ptrtoint ptr %t47 to i64
  store i64 %t48, ptr %l19, !tbaa !24
  br label %bb6
bb6:
  %t50 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t52 = call i64 @__olang_fmt_i64(ptr null, i64 %a1)
  %t53 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t54 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  %t55 = add i64 %t52, %t54
  %t57 = extractvalue { i64, ptr } %t50, 1
  %t58 = extractvalue { i64, ptr } %t50, 0
  %t59 = add i64 %t55, %t58
  %t60 = load i64, ptr %l19
  %t61 = inttoptr i64 %t60 to ptr
  %t62 = call ptr @__olang_scope_alloc(ptr %t61, i64 %t59)
  %t63 = call i64 @__olang_fmt_i64(ptr %t62, i64 %a1)
  %t64 = getelementptr i8, ptr %t62, i64 %t52
  call void @olang_textcopy(ptr %t64, ptr %t53, i64 %t54)
  %t65 = getelementptr i8, ptr %t64, i64 %t54
  call void @olang_textcopy(ptr %t65, ptr %t57, i64 %t58)
  %t66 = insertvalue { i64, ptr } undef, i64 %t59, 0
  %t67 = insertvalue { i64, ptr } %t66, ptr %t62, 1
  store { i64, ptr } %t67, ptr %l23, !tbaa !27
  %t68 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_2c_20Bool_3e_2e0
  br i1 %t68, label %bb7, label %bb8
bb7:
  %t70 = load i64, ptr %l19
  %t71 = inttoptr i64 %t70 to ptr
  %t72 = load { i64, ptr }, ptr %l23
  %t73 = extractvalue { i64, ptr } %t72, 1
  %t74 = call ptr @__olang_region_or(ptr %t73, ptr null)
  %t75 = icmp ne ptr %t74, null
  %t76 = select i1 %t75, ptr %t74, ptr null
  %t77 = icmp eq ptr %t76, %t71
  call void @__olang_region_settle(ptr %t71, i1 %t77)
  br label %bb8
bb8:
  %t78 = load ptr, ptr %l18, !tbaa !29
  %t79 = load { i64, ptr }, ptr %l23, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Boo_H6b1fa5c8028973ecd947936aac3caef3(ptr %v0, ptr %t78, { i64, ptr } %t79, i1 true)
  br label %bb9
bb9:
  %t80 = load ptr, ptr %lp3
  %t81 = load { i64, ptr }, ptr %t80, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t83 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t81, 1
  store { i32, { i64, ptr } } %t83, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i64, ptr } @compiler_2ffacts_2ecompiler_2ffacts_3aTable_2eRecord(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l14 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l17 = alloca i32
  %l19 = alloca i1
  %l20 = alloca i64
  %l21 = alloca { i64, ptr }
  %l24 = alloca i1
  %l27 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l37 = alloca i1
  %l42 = alloca i1
  %l44 = alloca ptr
  %l45 = alloca i64
  %l47 = alloca { i64, ptr }
  %l52 = alloca { i64, ptr }
  %l53 = alloca i32
  %l54 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l58 = alloca i64
  %l59 = alloca { i64, ptr }
  %l66 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call i64 @__olang_fmt_i64(ptr null, i64 %a1)
  %t4 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t5 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
  %t6 = add i64 %t3, %t5
  %t7 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t6)
  %t8 = call i64 @__olang_fmt_i64(ptr %t7, i64 %a1)
  %t9 = getelementptr i8, ptr %t7, i64 %t3
  call void @olang_textcopy(ptr %t9, ptr %t4, i64 %t5)
  %t10 = insertvalue { i64, ptr } undef, i64 %t6, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t7, 1
  store { i64, ptr } %t11, ptr %l3, !tbaa !27
  %t13 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t13, ptr %l10
  br label %bb1
bb1:
  %t14 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l4
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/facts:Table", ptr %t15, i32 0, i32 2
  %t19 = call %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Boo_Hc20348a7e3f4966d079d7d53957fcef1(ptr %v0, ptr %v0, ptr %t17)
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t19, ptr %l13
  br label %bb2
bb2:
  %t20 = load %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l13
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t20, ptr %l5
  br label %bb3
bb3:
  store %olang.scope zeroinitializer, ptr %s3
  %t22 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cstd_2fprelude_2ftext_3aString_2_H25a1fa74df5469e35efe3ff4130517ef(ptr %v0, ptr %s3, ptr %l5)
  %t23 = extractvalue { i32, { i64, ptr } } %t22, 1
  %t24 = extractvalue { i32, { i64, ptr } } %t22, 0
  store i32 %t24, ptr %l17
  %t25 = icmp ne i32 %t24, 0
  br i1 %t25, label %bb5, label %ok.26, !prof !99
ok.26:
  store { i64, ptr } %t23, ptr %l16
  br label %bb4
bb4:
  %t27 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t28 = extractvalue { i64, ptr } %t27, 0
  store i64 %t28, ptr %l20, !tbaa !24
  %t29 = load i64, ptr %l20, !tbaa !24
  %t30 = mul i64 %t29, 1
  %t31 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t30)
  %t32 = insertvalue { i64, ptr } undef, i64 %t29, 0
  %t33 = insertvalue { i64, ptr } %t32, ptr %t31, 1
  store { i64, ptr } %t33, ptr %l21, !tbaa !27
  %t34 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !27
  %t36 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !27
  %t38 = load i64, ptr %l20, !tbaa !24
  %t39 = mul i64 %t38, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t35, ptr %t37, i64 %t39, i1 false)
  %t40 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t40, ptr %l14, !tbaa !27
  br label %bb7
bb5:
  %t41 = load i32, ptr %l17, !tbaa !23
  %t42 = ashr i32 %t41, 16
  %t44 = icmp eq i32 %t42, 1
  store i1 %t44, ptr %l19, !tbaa !21
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s3)
  br label %bb34
bb7:
  %t45 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t45, ptr %l6, !tbaa !27
  %t46 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t47 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t50 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s3, ptr %s0, { i64, ptr } %t46, { i64, ptr } %t47)
  store i1 %t50, ptr %l24
  br label %bb8
bb8:
  %t51 = load i1, ptr %l24, !tbaa !21
  %t52 = xor i1 %t51, true
  br i1 %t52, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s3)
  br label %bb33
bb10:
  br label %bb11
bb11:
  %t54 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t56 = extractvalue { i64, ptr } %t54, 0
  store i64 %t56, ptr %l27, !tbaa !24
  %t57 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t59 = extractvalue { i64, ptr } %t57, 0
  store i64 %t59, ptr %l29, !tbaa !24
  %t60 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t61 = extractvalue { i64, ptr } %t60, 0
  store i64 %t61, ptr %l30, !tbaa !24
  %t62 = load i64, ptr %l27, !tbaa !24
  %t63 = icmp sge i64 %t62, 0
  br i1 %t63, label %bb12, label %bb13
bb12:
  %t65 = load i64, ptr %l27, !tbaa !24
  %t66 = load i64, ptr %l29, !tbaa !24
  %t67 = icmp sle i64 %t65, %t66
  br i1 %t67, label %bb14, label %bb15
bb13:
  call void @__olang_check_failed(ptr @olang_loc_6da6fc1b7ddde4f6_64b43fc83b407592)
  unreachable
bb14:
  %t69 = load i64, ptr %l29, !tbaa !24
  %t70 = load i64, ptr %l30, !tbaa !24
  %t71 = icmp sle i64 %t69, %t70
  br i1 %t71, label %bb16, label %bb17
bb15:
  call void @__olang_check_failed(ptr @olang_loc_6da6fc1b7ddde4f6_64b43fc83b407592)
  unreachable
bb16:
  %t73 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !27
  %t75 = load i64, ptr %l27, !tbaa !24
  %t76 = load i64, ptr %l29, !tbaa !24
  %t77 = getelementptr i8, ptr %t74, i64 %t75
  %t78 = sub i64 %t76, %t75
  %t79 = insertvalue { i64, ptr } undef, i64 %t78, 0
  %t80 = insertvalue { i64, ptr } %t79, ptr %t77, 1
  store { i64, ptr } %t80, ptr %l7, !tbaa !27
  %t84 = xor i1 %a2, true
  br i1 %t84, label %bb18, label %bb19
bb17:
  call void @__olang_check_failed(ptr @olang_loc_6da6fc1b7ddde4f6_64b43fc83b407592)
  unreachable
bb18:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/facts:Table", ptr %t86, i32 0, i32 1
  %t89 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t93 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Boo_Hb38d151ad2865ce380f5e3d42761bdf3(ptr %v0, ptr %t88, { i64, ptr } %t89)
  store i1 %t93, ptr %l42
  br label %bb20
bb19:
  store i1 false, ptr %l37, !tbaa !21
  br label %bb21
bb20:
  %t94 = load i1, ptr %l42, !tbaa !21
  %t95 = xor i1 %t94, true
  store i1 %t95, ptr %l37, !tbaa !21
  br label %bb21
bb21:
  %t97 = load i1, ptr %l37, !tbaa !21
  br i1 %t97, label %bb22, label %bb23
bb22:
  call void @__olang_scope_close(ptr %s3)
  br label %bb33
bb23:
  br label %bb24
bb24:
  store ptr %l4, ptr %l44, !tbaa !29
  %t98 = ptrtoint ptr %s0 to i64
  store i64 %t98, ptr %l45, !tbaa !24
  %t99 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t99, label %bb25, label %bb26
bb25:
  %t101 = call ptr @__olang_region_make(ptr %s0)
  %t102 = ptrtoint ptr %t101 to i64
  store i64 %t102, ptr %l45, !tbaa !24
  br label %bb26
bb26:
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr %"compiler/facts:Table", ptr %t103, i32 0, i32 0
  %t106 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t110 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20std_H356792b4f24dc0e780a541ed32f3163e(ptr %v0, ptr %s3, ptr %t105, { i64, ptr } %t106)
  %t111 = extractvalue { i32, { i64, ptr } } %t110, 1
  %t112 = extractvalue { i32, { i64, ptr } } %t110, 0
  store i32 %t112, ptr %l53
  %t113 = icmp ne i32 %t112, 0
  br i1 %t113, label %bb28, label %ok.114, !prof !99
ok.114:
  store { i64, ptr } %t111, ptr %l52
  br label %bb27
bb27:
  %t115 = load { i64, ptr }, ptr %l52, !tbaa !27
  store { i64, ptr } %t115, ptr %l47, !tbaa !27
  br label %bb30
bb28:
  br label %bb29
bb29:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d14, i32 0, i32 1) }, ptr %l54, !tbaa !27
  %t116 = load { i64, ptr }, ptr %l54, !tbaa !27
  store { i64, ptr } %t116, ptr %l47, !tbaa !27
  br label %bb30
bb30:
  %t118 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t119 = extractvalue { i64, ptr } %t118, 0
  %t120 = extractvalue { i64, ptr } %t118, 1
  %t121 = mul i64 %t119, 1
  %t122 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t121)
  call void @llvm.memcpy.p0.p0.i64(ptr %t122, ptr %t120, i64 %t121, i1 false)
  %t123 = insertvalue { i64, ptr } undef, i64 %t119, 0
  %t124 = insertvalue { i64, ptr } %t123, ptr %t122, 1
  %t126 = call { i64, ptr } @compiler_2ffacts_2eToken(ptr %s3, ptr %s3, { i64, ptr } %t124)
  store { i64, ptr } %t126, ptr %l57
  br label %bb31
bb31:
  %t127 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t128 = extractvalue { i64, ptr } %t127, 0
  store i64 %t128, ptr %l58, !tbaa !24
  %t129 = load i64, ptr %l58, !tbaa !24
  %t130 = mul i64 %t129, 1
  %t131 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t130)
  %t132 = insertvalue { i64, ptr } undef, i64 %t129, 0
  %t133 = insertvalue { i64, ptr } %t132, ptr %t131, 1
  store { i64, ptr } %t133, ptr %l59, !tbaa !27
  %t134 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t135 = load ptr, ptr %t134, !tbaa !27
  %t136 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !27
  %t138 = load i64, ptr %l58, !tbaa !24
  %t139 = mul i64 %t138, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t135, ptr %t137, i64 %t139, i1 false)
  %t140 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t141 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t142 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t143 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t144 = extractvalue { i64, ptr } %t143, 1
  %t145 = extractvalue { i64, ptr } %t143, 0
  %t146 = add i64 %t142, %t145
  %t147 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t148 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  %t149 = add i64 %t146, %t148
  %t151 = extractvalue { i64, ptr } %t140, 1
  %t152 = extractvalue { i64, ptr } %t140, 0
  %t153 = add i64 %t149, %t152
  %t154 = load i64, ptr %l45
  %t155 = inttoptr i64 %t154 to ptr
  %t156 = call ptr @__olang_scope_alloc(ptr %t155, i64 %t153)
  call void @olang_textcopy(ptr %t156, ptr %t141, i64 %t142)
  %t157 = getelementptr i8, ptr %t156, i64 %t142
  call void @olang_textcopy(ptr %t157, ptr %t144, i64 %t145)
  %t158 = getelementptr i8, ptr %t157, i64 %t145
  call void @olang_textcopy(ptr %t158, ptr %t147, i64 %t148)
  %t159 = getelementptr i8, ptr %t158, i64 %t148
  call void @olang_textcopy(ptr %t159, ptr %t151, i64 %t152)
  %t160 = insertvalue { i64, ptr } undef, i64 %t153, 0
  %t161 = insertvalue { i64, ptr } %t160, ptr %t156, 1
  %t163 = load i64, ptr %l45
  %t164 = inttoptr i64 %t163 to ptr
  %t165 = extractvalue { i64, ptr } %t161, 0
  %t166 = extractvalue { i64, ptr } %t161, 1
  %t167 = mul i64 %t165, 1
  %t168 = call ptr @__olang_scope_alloc(ptr %t164, i64 %t167)
  call void @llvm.memcpy.p0.p0.i64(ptr %t168, ptr %t166, i64 %t167, i1 false)
  %t169 = insertvalue { i64, ptr } undef, i64 %t165, 0
  %t170 = insertvalue { i64, ptr } %t169, ptr %t168, 1
  %t171 = load ptr, ptr %l44, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t171, { i64, ptr } %t170)
  br label %bb32
bb32:
  call void @__olang_scope_close(ptr %s3)
  br label %bb33
bb33:
  br label %bb3
bb34:
  %t173 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_17, 0
  %t174 = insertvalue { ptr, ptr } %t173, ptr null, 1
  %t177 = extractvalue { ptr, ptr } %t174, 0
  %t178 = extractvalue { ptr, ptr } %t174, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H1642129570dad448bb7dcc47c334de83(ptr %s0, ptr %s0, ptr %l4, ptr %t177, ptr %t178)
  br label %bb35
bb35:
  %t180 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %s0, ptr %v1, ptr %v1, ptr %l4, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) })
  store { i64, ptr } %t180, ptr %l66
  br label %bb36
bb36:
  call void @__olang_scope_close(ptr %s0)
  %t181 = load { i64, ptr }, ptr %l66, !tbaa !27
  store { i64, ptr } %t181, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2ffacts_3aTable_2ector(ptr %out, ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l1 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l5 = alloca i64
  %l7 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l9 = alloca i64
  %l11 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l13 = alloca i64
  %l15 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l17 = alloca %"compiler/facts:Table"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = ptrtoint ptr %v0 to i64
  store i64 %t1, ptr %l5, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2ffacts_3aTable_2e0
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v0)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  %t6 = load i64, ptr %l5
  %t7 = inttoptr i64 %t6 to ptr
  %t8 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aStr_H3039fadc28672342c764bf5624592fac(ptr %t7)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t8, ptr %l7
  br label %bb3
bb3:
  %t9 = load i1, ptr @olang_2esole_2ecompiler_2ffacts_3aTable_2e0
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t11 = load i64, ptr %l5
  %t12 = inttoptr i64 %t11 to ptr
  %t13 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l7, i32 0, i32 2
  %t14 = load { i64, ptr }, ptr %t13
  %t15 = extractvalue { i64, ptr } %t14, 1
  %t16 = call ptr @__olang_region_or(ptr %t15, ptr null)
  %t17 = icmp ne ptr %t16, null
  %t18 = select i1 %t17, ptr %t16, ptr null
  %t19 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l7, i32 0, i32 1
  %t20 = load { i64, ptr }, ptr %t19
  %t21 = extractvalue { i64, ptr } %t20, 1
  %t22 = call ptr @__olang_region_or(ptr %t21, ptr null)
  %t23 = icmp ne ptr %t22, null
  %t24 = select i1 %t23, ptr %t22, ptr %t18
  %t25 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l7, i32 0, i32 0
  %t26 = load { i64, ptr }, ptr %t25
  %t27 = extractvalue { i64, ptr } %t26, 1
  %t28 = call ptr @__olang_region_or(ptr %t27, ptr null)
  %t29 = icmp ne ptr %t28, null
  %t30 = select i1 %t29, ptr %t28, ptr %t24
  %t31 = icmp eq ptr %t30, %t12
  call void @__olang_region_settle(ptr %t12, i1 %t31)
  br label %bb5
bb5:
  %t32 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l7
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t32, ptr %l0
  %t33 = ptrtoint ptr %v0 to i64
  store i64 %t33, ptr %l9, !tbaa !24
  %t34 = load i1, ptr @olang_2esole_2ecompiler_2ffacts_3aTable_2e1
  br i1 %t34, label %bb6, label %bb7
bb6:
  %t36 = call ptr @__olang_region_make(ptr %v0)
  %t37 = ptrtoint ptr %t36 to i64
  store i64 %t37, ptr %l9, !tbaa !24
  br label %bb7
bb7:
  %t38 = load i64, ptr %l9
  %t39 = inttoptr i64 %t38 to ptr
  %t40 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Bool_3e(ptr %t39)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t40, ptr %l11
  br label %bb8
bb8:
  %t41 = load i1, ptr @olang_2esole_2ecompiler_2ffacts_3aTable_2e1
  br i1 %t41, label %bb9, label %bb10
bb9:
  %t43 = load i64, ptr %l9
  %t44 = inttoptr i64 %t43 to ptr
  %t45 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l11, i32 0, i32 2
  %t46 = load { i64, ptr }, ptr %t45
  %t47 = extractvalue { i64, ptr } %t46, 1
  %t48 = call ptr @__olang_region_or(ptr %t47, ptr null)
  %t49 = icmp ne ptr %t48, null
  %t50 = select i1 %t49, ptr %t48, ptr null
  %t51 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l11, i32 0, i32 1
  %t52 = load { i64, ptr }, ptr %t51
  %t53 = extractvalue { i64, ptr } %t52, 1
  %t54 = call ptr @__olang_region_or(ptr %t53, ptr null)
  %t55 = icmp ne ptr %t54, null
  %t56 = select i1 %t55, ptr %t54, ptr %t50
  %t57 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l11, i32 0, i32 0
  %t58 = load { i64, ptr }, ptr %t57
  %t59 = extractvalue { i64, ptr } %t58, 1
  %t60 = call ptr @__olang_region_or(ptr %t59, ptr null)
  %t61 = icmp ne ptr %t60, null
  %t62 = select i1 %t61, ptr %t60, ptr %t56
  %t63 = icmp eq ptr %t62, %t44
  call void @__olang_region_settle(ptr %t44, i1 %t63)
  br label %bb10
bb10:
  %t64 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l11
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t64, ptr %l1
  %t65 = ptrtoint ptr %v0 to i64
  store i64 %t65, ptr %l13, !tbaa !24
  %t66 = load i1, ptr @olang_2esole_2ecompiler_2ffacts_3aTable_2e2
  br i1 %t66, label %bb11, label %bb12
bb11:
  %t68 = call ptr @__olang_region_make(ptr %v0)
  %t69 = ptrtoint ptr %t68 to i64
  store i64 %t69, ptr %l13, !tbaa !24
  br label %bb12
bb12:
  %t70 = load i64, ptr %l13
  %t71 = inttoptr i64 %t70 to ptr
  %t72 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Bool_3e(ptr %t71)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t72, ptr %l15
  br label %bb13
bb13:
  %t73 = load i1, ptr @olang_2esole_2ecompiler_2ffacts_3aTable_2e2
  br i1 %t73, label %bb14, label %bb15
bb14:
  %t75 = load i64, ptr %l13
  %t76 = inttoptr i64 %t75 to ptr
  %t77 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l15, i32 0, i32 2
  %t78 = load { i64, ptr }, ptr %t77
  %t79 = extractvalue { i64, ptr } %t78, 1
  %t80 = call ptr @__olang_region_or(ptr %t79, ptr null)
  %t81 = icmp ne ptr %t80, null
  %t82 = select i1 %t81, ptr %t80, ptr null
  %t83 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l15, i32 0, i32 1
  %t84 = load { i64, ptr }, ptr %t83
  %t85 = extractvalue { i64, ptr } %t84, 1
  %t86 = call ptr @__olang_region_or(ptr %t85, ptr null)
  %t87 = icmp ne ptr %t86, null
  %t88 = select i1 %t87, ptr %t86, ptr %t82
  %t89 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l15, i32 0, i32 0
  %t90 = load { i64, ptr }, ptr %t89
  %t91 = extractvalue { i64, ptr } %t90, 1
  %t92 = call ptr @__olang_region_or(ptr %t91, ptr null)
  %t93 = icmp ne ptr %t92, null
  %t94 = select i1 %t93, ptr %t92, ptr %t88
  %t95 = icmp eq ptr %t94, %t76
  call void @__olang_region_settle(ptr %t76, i1 %t95)
  br label %bb15
bb15:
  %t96 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l15
  %t97 = getelementptr %"compiler/facts:Table", ptr %l17, i32 0, i32 0
  %t98 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t98, ptr %t97
  %t99 = getelementptr %"compiler/facts:Table", ptr %l17, i32 0, i32 1
  %t100 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t100, ptr %t99
  %t101 = getelementptr %"compiler/facts:Table", ptr %l17, i32 0, i32 2
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t96, ptr %t101
  %t103 = getelementptr %"compiler/facts:Table", ptr %l17, i32 0, i32 3
  store i64 0, ptr %t103, !tbaa !24
  %t105 = getelementptr %"compiler/facts:Table", ptr %l17, i32 0, i32 4
  store i64 0, ptr %t105, !tbaa !24
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l17, i64 232, i1 false)
  br label %ret
ret:
  ret void
}

@.d0 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d1 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d2 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"#" }>, align 8
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
declare void @__olang_check_failed(ptr) cold noreturn
@.d3 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"#" }>, align 8
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
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d4 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"," }>, align 8
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
define internal i1 @olang_lambda_5(ptr %env, ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l4 = alloca i1
  %rv = alloca i1
  %cp0 = getelementptr { { i64, ptr }, ptr }, ptr %env, i32 0, i32 0
  %cv0 = load { i64, ptr }, ptr %cp0, !tbaa !28
  %vq0 = getelementptr { { i64, ptr }, ptr }, ptr %env, i32 0, i32 1
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %vc0, { i64, ptr } %a0, { i64, ptr } %cv0)
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

@.d6 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"," }>, align 8
define internal i1 @olang_lambda_7(ptr %env, ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
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

@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_2c_20std_2fprelude_2ftext_3aString_3e_2e1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d8 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"," }>, align 8
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
@.d9 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d10 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"read " }>, align 8
@.d11 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
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
@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_2c_20Bool_3e_2e0 = weak hidden constant i1 false
declare i64 @__olang_fmt_i64(ptr, i64)
@.d12 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d13 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
@.d14 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d15 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"read " }>, align 8
@.d16 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
define internal i1 @olang_lambda_17(ptr %env, ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
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

@.d18 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@olang_2esole_2ecompiler_2ffacts_3aTable_2e0 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aStr_H3039fadc28672342c764bf5624592fac(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20std_2fprelude_2ftext_3aString_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2ffacts_3aTable_2e1 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Bool_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Bool_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2ffacts_3aTable_2e2 = weak hidden constant i1 false
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
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fsha256_2eHex(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_8ed5d3ba35d14a58_c4d17542e0ab7bdc = external constant [0 x i8]
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Boo_H6b1fa5c8028973ecd947936aac3caef3(ptr %v0, ptr %a0, { i64, ptr } %a1, i1 %a2)
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20std_H356792b4f24dc0e780a541ed32f3163e(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20std_H355c087bc072a56a762bdfa87b1c9c86(ptr %v0, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eSome_3cstd_2fprelu_H83fc947e980a7768a96047c3a0b10532(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1c, ptr %a1e)
declare ptr @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eToVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H1642129570dad448bb7dcc47c334de83(ptr %v0, ptr %v1, ptr %a0, ptr %a1c, ptr %a1e)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20std_H05b307291733a0818adbf21489237518(ptr %v0, ptr %v1, ptr %a0)
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cstd_2fprelude_2ftext_3aString_2_Hc048e18d790977ed6ce46f33e20db3dd(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20std_H3f1be25370c74fcd9b69b9384a2c675b(ptr %v0, ptr %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Boo_H30aee0de007d74f17ea1c60665763ebd(ptr %v0, ptr %a0, { i64, ptr } %a1)
declare %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Boo_Hc20348a7e3f4966d079d7d53957fcef1(ptr %v0, ptr %v1, ptr %a0)
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cstd_2fprelude_2ftext_3aString_2_H25a1fa74df5469e35efe3ff4130517ef(ptr %v0, ptr %v1, ptr %a0)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_fb92b303a6a491ca_28d0443004aa12f6 = external constant [0 x i8]
@olang_loc_e390912e6a1bdc3f_6a056665eef072d3 = external constant [0 x i8]
@olang_loc_4da891c857fa9a42_b9a25b213f22c276 = external constant [0 x i8]
@olang_loc_ed9b7f5b14b4ab41_cd157c649d3eec55 = external constant [0 x i8]
@olang_loc_6da6fc1b7ddde4f6_64b43fc83b407592 = external constant [0 x i8]
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Boo_Hb38d151ad2865ce380f5e3d42761bdf3(ptr %v0, ptr %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLess(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20std_2fprelude_2ftext_3aString_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Bool_3e_2ector(ptr %v0)

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
