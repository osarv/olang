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
%"std/io:Writer" = type { i32, { i64, ptr }, i64, { i32, { i64, [1 x i64] } } }
%"std/os:Output" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/bindgen:cx" = type { { i64, ptr }, i64, i64, { i64, ptr } }
%"compiler/bindgen:cparse" = type { { i64, ptr }, { i64, ptr }, i64 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/bindgen:gen" = type { { i64, ptr }, i1, { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/text:StringBuilder", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/bindgen:ctype" = type { i32, { i64, ptr }, i64, i1, i64, i64 }
%"compiler/bindgen:ctp" = type { { i64, ptr }, i64 }
%"compiler/bindgen:cFunc" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, { i64, ptr } }
%"compiler/bindgen:record" = type { { i64, ptr }, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, i1, i64, i1, { i64, ptr }, i1, i64, i64, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/json:Object" = type { { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/bindgen:cMacro" = type { { i64, ptr }, i1, { i64, ptr }, { i64, ptr }, i1, i1 }
%"compiler/bindgen:Translation" = type { { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i1 }
define dso_local i32 @compiler_2fbindgen_2eRun(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca %"std/io:Writer"
  %l4 = alloca i32
  %l5 = alloca %"std/io:Writer"
  %l10 = alloca i32
  %l12 = alloca i32
  %l14 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/io:Writer" @std_2fio_3aWriter_2ector(ptr %s0, i32 2, i64 65536)
  store %"std/io:Writer" %t1, ptr %l5
  br label %bb1
bb1:
  %t2 = load %"std/io:Writer", ptr %l5
  store %"std/io:Writer" %t2, ptr %l3
  %t10 = call i32 @compiler_2fbindgen_2erun(ptr %v0, ptr %v1, ptr %v2, ptr %s0, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, ptr %l3)
  store i32 %t10, ptr %l10
  br label %bb2
bb2:
  %t11 = load i32, ptr %l10, !tbaa !23
  store i32 %t11, ptr %l4, !tbaa !23
  %t13 = call i32 @std_2fio_2estd_2fio_3aWriter_2eFlush(ptr %s0, ptr %l3)
  store i32 %t13, ptr %l12
  %t14 = icmp ne i32 %t13, 0
  br i1 %t14, label %bb4, label %ok.15, !prof !99
ok.15:
  br label %bb3
bb3:
  br label %bb8
bb4:
  %t16 = load i32, ptr %l12, !tbaa !23
  %t17 = ashr i32 %t16, 16
  %t19 = icmp eq i32 %t17, 1
  store i1 %t19, ptr %l14, !tbaa !21
  %t20 = load i32, ptr %l12, !tbaa !23
  %t21 = ashr i32 %t20, 16
  %t23 = icmp eq i32 %t21, 1
  br i1 %t23, label %bb5, label %bb6
bb5:
  call void @__olang_errpay_pop()
  br label %bb6
bb6:
  br label %bb7
bb7:
  br label %bb8
bb8:
  %t25 = load i32, ptr %l4, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t25, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i64 @compiler_2fbindgen_2ebodyKind(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l6 = alloca i64
  %l8 = alloca i1
  %l10 = alloca { i64, ptr }
  %l13 = alloca i1
  %l16 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l22 = alloca i64
  %l24 = alloca i64
  %l29 = alloca { i64, ptr }
  %l33 = alloca i1
  %l34 = alloca { i64, ptr }
  %l36 = alloca i1
  %l37 = alloca i1
  %l38 = alloca { i64, ptr }
  %l42 = alloca { i64, ptr }
  %l44 = alloca i1
  %l46 = alloca i1
  %l48 = alloca { i64, ptr }
  %l49 = alloca i1
  %l50 = alloca i1
  %l52 = alloca { i64, ptr }
  %l53 = alloca i1
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t1)
  store i64 %t3, ptr %l6
  br label %bb1
bb1:
  %t4 = load i64, ptr %l6, !tbaa !24
  %t5 = icmp sgt i64 %t4, 0
  br i1 %t5, label %bb2, label %bb3
bb2:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %s0, ptr %t7, i64 0)
  store { i64, ptr } %t9, ptr %l10
  br label %bb4
bb3:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb5
bb4:
  %t10 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t10, 0
  %t13 = icmp sgt i64 %t11, 0
  store i1 %t13, ptr %l8, !tbaa !21
  br label %bb5
bb5:
  %t15 = load i1, ptr %l8, !tbaa !21
  br i1 %t15, label %bb6, label %bb7
bb6:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t19 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %s0, ptr %t16, i64 0)
  store { i64, ptr } %t19, ptr %l16
  br label %bb8
bb7:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb9
bb8:
  %t20 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t20, ptr %l17, !tbaa !27
  %t21 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr i8, ptr %t22, i64 0
  %t24 = load i8, ptr %t23, !tbaa !32
  %t26 = icmp eq i8 %t24, 34
  store i1 %t26, ptr %l13, !tbaa !21
  br label %bb9
bb9:
  %t28 = load i1, ptr %l13, !tbaa !21
  br i1 %t28, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s0)
  store i64 2, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t30 = load ptr, ptr %l0, !tbaa !29
  store ptr %t30, ptr %l1, !tbaa !29
  store i64 0, ptr %l2, !tbaa !24
  br label %bb13
bb13:
  %t32 = load i64, ptr %l2, !tbaa !24
  store i64 %t32, ptr %l22, !tbaa !24
  %t33 = load ptr, ptr %l1, !tbaa !29
  %t35 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t33)
  store i64 %t35, ptr %l24
  br label %bb14
bb14:
  %t36 = load i64, ptr %l22, !tbaa !24
  %t37 = load i64, ptr %l24, !tbaa !24
  %t38 = icmp slt i64 %t36, %t37
  %t40 = xor i1 %t38, true
  br i1 %t40, label %bb15, label %bb16
bb15:
  br label %bb43
bb16:
  br label %bb17
bb17:
  %t42 = load ptr, ptr %l1, !tbaa !29
  %t43 = load i64, ptr %l2, !tbaa !24
  %t46 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t42, i64 %t43)
  store { i64, ptr } %t46, ptr %l29
  br label %bb18
bb18:
  %t47 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t47, ptr %l3, !tbaa !27
  %t48 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t50 = extractvalue { i64, ptr } %t48, 0
  %t52 = icmp sgt i64 %t50, 0
  br i1 %t52, label %bb19, label %bb20
bb19:
  %t54 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t54, ptr %l34, !tbaa !27
  %t55 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !27
  %t57 = getelementptr i8, ptr %t56, i64 0
  %t58 = load i8, ptr %t57, !tbaa !32
  %t60 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t58)
  store i1 %t60, ptr %l36
  br label %bb21
bb20:
  store i1 false, ptr %l33, !tbaa !21
  br label %bb25
bb21:
  %t61 = load i1, ptr %l36, !tbaa !21
  br i1 %t61, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l37, !tbaa !21
  br label %bb24
bb23:
  %t62 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t62, ptr %l38, !tbaa !27
  %t63 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !27
  %t65 = getelementptr i8, ptr %t64, i64 0
  %t66 = load i8, ptr %t65, !tbaa !32
  %t68 = icmp eq i8 %t66, 46
  store i1 %t68, ptr %l37, !tbaa !21
  br label %bb24
bb24:
  %t70 = load i1, ptr %l37, !tbaa !21
  store i1 %t70, ptr %l33, !tbaa !21
  br label %bb25
bb25:
  %t71 = load i1, ptr %l33, !tbaa !21
  br i1 %t71, label %bb26, label %bb27
bb26:
  store %olang.scope zeroinitializer, ptr %s4
  %t72 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t74 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eToLower(ptr %v0, ptr %s4, { i64, ptr } %t72)
  store { i64, ptr } %t74, ptr %l42
  br label %bb28
bb27:
  br label %bb41
bb28:
  %t75 = load { i64, ptr }, ptr %l42, !tbaa !27
  store { i64, ptr } %t75, ptr %l4, !tbaa !27
  %t76 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t78 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s4, ptr %s4, { i64, ptr } %t76, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d0, i32 0, i32 1) })
  store i1 %t78, ptr %l44
  br label %bb29
bb29:
  %t79 = load i1, ptr %l44, !tbaa !21
  %t80 = xor i1 %t79, true
  br i1 %t80, label %bb30, label %bb31
bb30:
  %t82 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) }, ptr %l48, !tbaa !27
  %t84 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t85 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %s4, ptr %s4, { i64, ptr } %t82, { i64, ptr } %t84)
  store i1 %t85, ptr %l49
  br label %bb32
bb31:
  store i1 false, ptr %l46, !tbaa !21
  br label %bb37
bb32:
  %t86 = load i1, ptr %l49, !tbaa !21
  br i1 %t86, label %bb33, label %bb34
bb33:
  store i1 true, ptr %l50, !tbaa !21
  br label %bb36
bb34:
  %t87 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) }, ptr %l52, !tbaa !27
  %t89 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t90 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %s4, ptr %s4, { i64, ptr } %t87, { i64, ptr } %t89)
  store i1 %t90, ptr %l53
  br label %bb35
bb35:
  %t91 = load i1, ptr %l53, !tbaa !21
  store i1 %t91, ptr %l50, !tbaa !21
  br label %bb36
bb36:
  %t92 = load i1, ptr %l50, !tbaa !21
  store i1 %t92, ptr %l46, !tbaa !21
  br label %bb37
bb37:
  %t93 = load i1, ptr %l46, !tbaa !21
  br i1 %t93, label %bb38, label %bb39
bb38:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  store i64 1, ptr %rv
  br label %ret
bb39:
  br label %bb40
bb40:
  call void @__olang_scope_close(ptr %s4)
  br label %bb41
bb41:
  br label %bb42
bb42:
  %t95 = load i64, ptr %l2, !tbaa !24
  %t97 = add i64 %t95, 1
  store i64 %t97, ptr %l2, !tbaa !24
  br label %bb13
bb43:
  call void @__olang_scope_close(ptr %s0)
  store i64 0, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i32, i64 } @compiler_2fbindgen_2echarValue(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i8
  %l7 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l16 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l35 = alloca i64
  %l36 = alloca { i64, ptr }
  %l39 = alloca i64
  %l40 = alloca i64
  %l44 = alloca { i64, ptr }
  %l45 = alloca i64
  %l46 = alloca i32
  %l47 = alloca i64
  %l48 = alloca i32
  %l51 = alloca i1
  %l52 = alloca i64
  %l53 = alloca { i64, ptr }
  %l56 = alloca i64
  %l57 = alloca i64
  %l61 = alloca { i64, ptr }
  %l62 = alloca i64
  %l63 = alloca i32
  %l64 = alloca i64
  %l65 = alloca i32
  %l67 = alloca i64
  %s5 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %rv = alloca { i32, i64 }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp slt i64 %t3, 3
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t8 = insertvalue { i32, i64 } zeroinitializer, i32 65536, 0
  store { i32, i64 } %t8, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t9 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t9, ptr %l7, !tbaa !27
  %t10 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t10, 0
  %t14 = sub i64 %t12, 1
  store i64 %t14, ptr %l10, !tbaa !24
  %t15 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t15, 0
  store i64 %t16, ptr %l11, !tbaa !24
  %t17 = icmp sge i64 1, 0
  br i1 %t17, label %bb4, label %bb5
bb4:
  %t19 = load i64, ptr %l10, !tbaa !24
  %t20 = icmp sle i64 1, %t19
  br i1 %t20, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_e777242b492df290_2cbbd43a2df6cacc)
  unreachable
bb6:
  %t22 = load i64, ptr %l10, !tbaa !24
  %t23 = load i64, ptr %l11, !tbaa !24
  %t24 = icmp sle i64 %t22, %t23
  br i1 %t24, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_e777242b492df290_2cbbd43a2df6cacc)
  unreachable
bb8:
  %t26 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = load i64, ptr %l10, !tbaa !24
  %t29 = getelementptr i8, ptr %t27, i64 1
  %t30 = sub i64 %t28, 1
  %t31 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t29, 1
  store { i64, ptr } %t32, ptr %l1, !tbaa !27
  %t34 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t34, ptr %l16, !tbaa !27
  %t35 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !27
  %t37 = getelementptr i8, ptr %t36, i64 0
  %t38 = load i8, ptr %t37, !tbaa !32
  %t40 = icmp ne i8 %t38, 92
  br i1 %t40, label %bb10, label %bb11
bb9:
  call void @__olang_check_failed(ptr @olang_loc_e777242b492df290_2cbbd43a2df6cacc)
  unreachable
bb10:
  %t42 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t44 = extractvalue { i64, ptr } %t42, 0
  %t46 = icmp ne i64 %t44, 1
  br i1 %t46, label %bb12, label %bb13
bb11:
  br label %bb15
bb12:
  %t49 = insertvalue { i32, i64 } zeroinitializer, i32 65536, 0
  store { i32, i64 } %t49, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t50 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t50, ptr %l23, !tbaa !27
  %t51 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !27
  %t53 = getelementptr i8, ptr %t52, i64 0
  %t54 = load i8, ptr %t53, !tbaa !32
  %t57 = zext i8 %t54 to i64
  %t59 = insertvalue { i32, i64 } zeroinitializer, i64 %t57, 1
  store { i32, i64 } %t59, ptr %rv
  br label %ret
bb15:
  %t60 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t62 = extractvalue { i64, ptr } %t60, 0
  %t64 = icmp slt i64 %t62, 2
  br i1 %t64, label %bb16, label %bb17
bb16:
  %t67 = insertvalue { i32, i64 } zeroinitializer, i32 65536, 0
  store { i32, i64 } %t67, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t68 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t68, ptr %l31, !tbaa !27
  %t69 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !27
  %t71 = getelementptr i8, ptr %t70, i64 1
  %t72 = load i8, ptr %t71, !tbaa !32
  store i8 %t72, ptr %l2, !tbaa !22
  %t74 = load i8, ptr %l2, !tbaa !22
  %t76 = icmp eq i8 %t74, 120
  br i1 %t76, label %bb19, label %bb20
bb19:
  store %olang.scope zeroinitializer, ptr %s5
  %t78 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t78, ptr %l36, !tbaa !27
  %t79 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t82 = extractvalue { i64, ptr } %t79, 0
  store i64 %t82, ptr %l39, !tbaa !24
  %t83 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t84 = extractvalue { i64, ptr } %t83, 0
  store i64 %t84, ptr %l40, !tbaa !24
  %t85 = icmp sge i64 2, 0
  br i1 %t85, label %bb21, label %bb22
bb20:
  br label %bb33
bb21:
  %t87 = load i64, ptr %l39, !tbaa !24
  %t88 = icmp sle i64 2, %t87
  br i1 %t88, label %bb23, label %bb24
bb22:
  call void @__olang_check_failed(ptr @olang_loc_aa3527431bc6906d_d98aa20bf76f5ef9)
  unreachable
bb23:
  %t90 = load i64, ptr %l39, !tbaa !24
  %t91 = load i64, ptr %l40, !tbaa !24
  %t92 = icmp sle i64 %t90, %t91
  br i1 %t92, label %bb25, label %bb26
bb24:
  call void @__olang_check_failed(ptr @olang_loc_aa3527431bc6906d_d98aa20bf76f5ef9)
  unreachable
bb25:
  %t94 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !27
  %t96 = load i64, ptr %l39, !tbaa !24
  %t97 = getelementptr i8, ptr %t95, i64 2
  %t98 = sub i64 %t96, 2
  %t99 = insertvalue { i64, ptr } undef, i64 %t98, 0
  %t100 = insertvalue { i64, ptr } %t99, ptr %t97, 1
  store { i64, ptr } %t100, ptr %l44, !tbaa !27
  %t101 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s5, i64 16)
  %t102 = extractvalue { i32, i64 } %t101, 1
  %t103 = extractvalue { i32, i64 } %t101, 0
  store i32 %t103, ptr %l46
  %t104 = icmp ne i32 %t103, 0
  br i1 %t104, label %bb28, label %ok.105, !prof !99
ok.105:
  store i64 %t102, ptr %l45
  br label %bb27
bb26:
  call void @__olang_check_failed(ptr @olang_loc_aa3527431bc6906d_d98aa20bf76f5ef9)
  unreachable
bb27:
  %t106 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t107 = load i64, ptr %l45, !tbaa !24
  %t108 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v0, { i64, ptr } %t106, i64 %t107)
  %t109 = extractvalue { i32, i64 } %t108, 1
  %t110 = extractvalue { i32, i64 } %t108, 0
  store i32 %t110, ptr %l48
  %t111 = icmp ne i32 %t110, 0
  br i1 %t111, label %bb31, label %ok.112, !prof !99
ok.112:
  store i64 %t109, ptr %l47
  br label %bb30
bb28:
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s5)
  %t114 = insertvalue { i32, i64 } zeroinitializer, i32 65536, 0
  store { i32, i64 } %t114, ptr %rv
  br label %ret
bb30:
  %t115 = load i64, ptr %l47, !tbaa !24
  store i64 %t115, ptr %l35, !tbaa !24
  br label %bb32
bb31:
  br label %bb29
bb32:
  call void @__olang_scope_close(ptr %s5)
  %t116 = load i64, ptr %l35, !tbaa !24
  %t117 = insertvalue { i32, i64 } zeroinitializer, i64 %t116, 1
  store { i32, i64 } %t117, ptr %rv
  br label %ret
bb33:
  %t118 = load i8, ptr %l2, !tbaa !22
  %t120 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t118)
  store i1 %t120, ptr %l51
  br label %bb34
bb34:
  %t121 = load i1, ptr %l51, !tbaa !21
  br i1 %t121, label %bb35, label %bb36
bb35:
  store %olang.scope zeroinitializer, ptr %s7
  %t122 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t122, ptr %l53, !tbaa !27
  %t123 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t126 = extractvalue { i64, ptr } %t123, 0
  store i64 %t126, ptr %l56, !tbaa !24
  %t127 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t128 = extractvalue { i64, ptr } %t127, 0
  store i64 %t128, ptr %l57, !tbaa !24
  %t129 = icmp sge i64 1, 0
  br i1 %t129, label %bb37, label %bb38
bb36:
  br label %bb49
bb37:
  %t131 = load i64, ptr %l56, !tbaa !24
  %t132 = icmp sle i64 1, %t131
  br i1 %t132, label %bb39, label %bb40
bb38:
  call void @__olang_check_failed(ptr @olang_loc_5d1582c4176ede0e_4f5ef5c07175765a)
  unreachable
bb39:
  %t134 = load i64, ptr %l56, !tbaa !24
  %t135 = load i64, ptr %l57, !tbaa !24
  %t136 = icmp sle i64 %t134, %t135
  br i1 %t136, label %bb41, label %bb42
bb40:
  call void @__olang_check_failed(ptr @olang_loc_5d1582c4176ede0e_4f5ef5c07175765a)
  unreachable
bb41:
  %t138 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t139 = load ptr, ptr %t138, !tbaa !27
  %t140 = load i64, ptr %l56, !tbaa !24
  %t141 = getelementptr i8, ptr %t139, i64 1
  %t142 = sub i64 %t140, 1
  %t143 = insertvalue { i64, ptr } undef, i64 %t142, 0
  %t144 = insertvalue { i64, ptr } %t143, ptr %t141, 1
  store { i64, ptr } %t144, ptr %l61, !tbaa !27
  %t145 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s7, i64 8)
  %t146 = extractvalue { i32, i64 } %t145, 1
  %t147 = extractvalue { i32, i64 } %t145, 0
  store i32 %t147, ptr %l63
  %t148 = icmp ne i32 %t147, 0
  br i1 %t148, label %bb44, label %ok.149, !prof !99
ok.149:
  store i64 %t146, ptr %l62
  br label %bb43
bb42:
  call void @__olang_check_failed(ptr @olang_loc_5d1582c4176ede0e_4f5ef5c07175765a)
  unreachable
bb43:
  %t150 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t151 = load i64, ptr %l62, !tbaa !24
  %t152 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v0, { i64, ptr } %t150, i64 %t151)
  %t153 = extractvalue { i32, i64 } %t152, 1
  %t154 = extractvalue { i32, i64 } %t152, 0
  store i32 %t154, ptr %l65
  %t155 = icmp ne i32 %t154, 0
  br i1 %t155, label %bb47, label %ok.156, !prof !99
ok.156:
  store i64 %t153, ptr %l64
  br label %bb46
bb44:
  br label %bb45
bb45:
  call void @__olang_scope_close(ptr %s7)
  %t158 = insertvalue { i32, i64 } zeroinitializer, i32 65536, 0
  store { i32, i64 } %t158, ptr %rv
  br label %ret
bb46:
  %t159 = load i64, ptr %l64, !tbaa !24
  store i64 %t159, ptr %l52, !tbaa !24
  br label %bb48
bb47:
  br label %bb45
bb48:
  call void @__olang_scope_close(ptr %s7)
  %t160 = load i64, ptr %l52, !tbaa !24
  %t161 = insertvalue { i32, i64 } zeroinitializer, i64 %t160, 1
  store { i32, i64 } %t161, ptr %rv
  br label %ret
bb49:
  %t162 = load i8, ptr %l2, !tbaa !22
  %t164 = icmp eq i8 %t162, 110
  br i1 %t164, label %bb50, label %bb51
bb50:
  br label %bb52
bb51:
  br label %bb53
bb52:
  store i64 10, ptr %l67, !tbaa !24
  br label %bb86
bb53:
  %t166 = load i8, ptr %l2, !tbaa !22
  %t168 = icmp eq i8 %t166, 116
  br i1 %t168, label %bb54, label %bb55
bb54:
  br label %bb56
bb55:
  br label %bb57
bb56:
  store i64 9, ptr %l67, !tbaa !24
  br label %bb86
bb57:
  %t170 = load i8, ptr %l2, !tbaa !22
  %t172 = icmp eq i8 %t170, 114
  br i1 %t172, label %bb58, label %bb59
bb58:
  br label %bb60
bb59:
  br label %bb61
bb60:
  store i64 13, ptr %l67, !tbaa !24
  br label %bb86
bb61:
  %t174 = load i8, ptr %l2, !tbaa !22
  %t176 = icmp eq i8 %t174, 48
  br i1 %t176, label %bb62, label %bb63
bb62:
  br label %bb64
bb63:
  br label %bb65
bb64:
  store i64 0, ptr %l67, !tbaa !24
  br label %bb86
bb65:
  %t178 = load i8, ptr %l2, !tbaa !22
  %t180 = icmp eq i8 %t178, 97
  br i1 %t180, label %bb66, label %bb67
bb66:
  br label %bb68
bb67:
  br label %bb69
bb68:
  store i64 7, ptr %l67, !tbaa !24
  br label %bb86
bb69:
  %t182 = load i8, ptr %l2, !tbaa !22
  %t184 = icmp eq i8 %t182, 98
  br i1 %t184, label %bb70, label %bb71
bb70:
  br label %bb72
bb71:
  br label %bb73
bb72:
  store i64 8, ptr %l67, !tbaa !24
  br label %bb86
bb73:
  %t186 = load i8, ptr %l2, !tbaa !22
  %t188 = icmp eq i8 %t186, 102
  br i1 %t188, label %bb74, label %bb75
bb74:
  br label %bb76
bb75:
  br label %bb77
bb76:
  store i64 12, ptr %l67, !tbaa !24
  br label %bb86
bb77:
  %t190 = load i8, ptr %l2, !tbaa !22
  %t192 = icmp eq i8 %t190, 118
  br i1 %t192, label %bb78, label %bb79
bb78:
  br label %bb80
bb79:
  br label %bb81
bb80:
  store i64 11, ptr %l67, !tbaa !24
  br label %bb86
bb81:
  br i1 true, label %bb82, label %bb83
bb82:
  br label %bb84
bb83:
  br label %bb85
bb84:
  %t194 = load i8, ptr %l2, !tbaa !22
  %t197 = zext i8 %t194 to i64
  store i64 %t197, ptr %l67, !tbaa !24
  br label %bb86
bb85:
  call void @__olang_check_failed(ptr @olang_loc_c1a7519d080599a4_d00fb28b8b3fdec0)
  unreachable
bb86:
  %t199 = load i64, ptr %l67, !tbaa !24
  %t200 = insertvalue { i32, i64 } zeroinitializer, i64 %t199, 1
  store { i32, i64 } %t200, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i64 }, ptr %rv
  ret { i32, i64 } %rr
}

define dso_local { i32, %"std/os:Output" } @compiler_2fbindgen_2eclangSays(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %lp1 = alloca ptr
  %l2 = alloca %"std/os:Output"
  %l4 = alloca { i64, ptr }
  %l5 = alloca %"std/os:Output"
  %l6 = alloca i32
  %l8 = alloca i1
  %rv = alloca { i32, %"std/os:Output" }
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) }, ptr %l4, !tbaa !27
  %t3 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t4 = call { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %v0, ptr %v1, ptr %v1, ptr %v1, { i64, ptr } %a0, { i64, ptr } %t3, i1 true, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d4, i32 0, i32 1) })
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
  %t20 = insertvalue { i32, %"std/os:Output" } zeroinitializer, i32 65536, 0
  store { i32, %"std/os:Output" } %t20, ptr %rv
  br label %ret
bb6:
  %t21 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store ptr %t21, ptr %lp1
  %t22 = load %"std/os:Output", ptr %l2
  %t23 = load ptr, ptr %lp1
  store %"std/os:Output" %t22, ptr %t23
  %t24 = load ptr, ptr %lp1
  %t25 = load %"std/os:Output", ptr %t24
  %t27 = insertvalue { i32, %"std/os:Output" } zeroinitializer, %"std/os:Output" %t25, 1
  store { i32, %"std/os:Output" } %t27, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"std/os:Output" }, ptr %rv
  ret { i32, %"std/os:Output" } %rr
}

define dso_local i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ebad(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l5 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t6 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enode(ptr %v0, ptr %v1, ptr %a0, i32 6, { i64, ptr } %a1, i64 -1, i1 false, i64 0)
  store i64 %t6, ptr %l5
  br label %bb1
bb1:
  %t7 = load i64, ptr %l5, !tbaa !24
  store i64 %t7, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i32, %"compiler/bindgen:cx" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecBinary(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %lp3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %lp6 = alloca ptr
  %l7 = alloca %"compiler/bindgen:cx"
  %l8 = alloca %"compiler/bindgen:cx"
  %lp9 = alloca ptr
  %lp10 = alloca ptr
  %l11 = alloca %"compiler/bindgen:cx"
  %l12 = alloca %"compiler/bindgen:cx"
  %l15 = alloca %"compiler/bindgen:cx"
  %l16 = alloca i32
  %l19 = alloca { i64, ptr }
  %l21 = alloca i64
  %l24 = alloca i1
  %l28 = alloca ptr
  %l31 = alloca %"compiler/bindgen:cx"
  %l36 = alloca %"compiler/bindgen:cx"
  %l37 = alloca i32
  %l40 = alloca i1
  %l41 = alloca i1
  %l43 = alloca i1
  %l44 = alloca i64
  %l48 = alloca %"compiler/bindgen:cx"
  %l49 = alloca { i64, ptr }
  %l51 = alloca i1
  %l52 = alloca { i64, ptr }
  %l55 = alloca %"compiler/bindgen:cx"
  %l60 = alloca %"compiler/bindgen:cx"
  %l61 = alloca %"compiler/bindgen:cx"
  %l66 = alloca i1
  %l71 = alloca %"compiler/bindgen:cx"
  %l74 = alloca %"compiler/bindgen:cx"
  %l75 = alloca i64
  %l83 = alloca %"compiler/bindgen:cx"
  %l84 = alloca %"compiler/bindgen:cx"
  %l89 = alloca %"compiler/bindgen:cx"
  %l92 = alloca %"compiler/bindgen:cx"
  %l95 = alloca %"compiler/bindgen:cx"
  %l100 = alloca %"compiler/bindgen:cx"
  %l103 = alloca i1
  %l107 = alloca i1
  %l112 = alloca %"compiler/bindgen:cx"
  %l113 = alloca %"compiler/bindgen:cx"
  %l116 = alloca i64
  %l126 = alloca %"compiler/bindgen:cx"
  %l127 = alloca %"compiler/bindgen:cx"
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca { i32, %"compiler/bindgen:cx" }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t5 = call { i32, %"compiler/bindgen:cx" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecUnary(ptr %v0, ptr %v1, ptr %v2, ptr %t1, ptr %t2)
  %t6 = extractvalue { i32, %"compiler/bindgen:cx" } %t5, 1
  %t7 = extractvalue { i32, %"compiler/bindgen:cx" } %t5, 0
  store i32 %t7, ptr %l16
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb2, label %ok.9, !prof !99
ok.9:
  store %"compiler/bindgen:cx" %t6, ptr %l15
  br label %bb1
bb1:
  %t10 = load %"compiler/bindgen:cx", ptr %l15
  store %"compiler/bindgen:cx" %t10, ptr %l12
  br label %bb3
bb2:
  %t11 = load i32, ptr %l16, !tbaa !23
  %t12 = lshr i32 %t11, 16
  %t13 = and i32 %t11, 65535
  %t14 = icmp eq i32 %t12, 1
  %t15 = select i1 %t14, i32 1, i32 0
  %t16 = icmp eq i32 %t11, 0
  %t17 = shl i32 %t15, 16
  %t18 = or i32 %t17, %t13
  %t19 = select i1 %t16, i32 0, i32 %t18
  %t21 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, i32 %t19, 0
  store { i32, %"compiler/bindgen:cx" } %t21, ptr %rv
  br label %ret
bb3:
  %t22 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store ptr %t22, ptr %lp3
  %t23 = load %"compiler/bindgen:cx", ptr %l12
  %t24 = load ptr, ptr %lp3
  store %"compiler/bindgen:cx" %t23, ptr %t24
  br label %bb4
bb4:
  store %olang.scope zeroinitializer, ptr %s1
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3acparse_2eat(ptr %v1, ptr %s1, ptr %t25)
  store { i64, ptr } %t27, ptr %l19
  br label %bb5
bb5:
  %t28 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t28, ptr %l4, !tbaa !27
  %t29 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t31 = call i64 @compiler_2fbindgen_2ecPrec(ptr %s1, { i64, ptr } %t29)
  store i64 %t31, ptr %l21
  br label %bb6
bb6:
  %t32 = load i64, ptr %l21, !tbaa !24
  store i64 %t32, ptr %l5, !tbaa !24
  %t33 = load i64, ptr %l5, !tbaa !24
  %t35 = icmp eq i64 %t33, 0
  br i1 %t35, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb9
bb8:
  %t37 = load i64, ptr %l5, !tbaa !24
  %t41 = icmp slt i64 %t37, %a2
  store i1 %t41, ptr %l24, !tbaa !21
  br label %bb9
bb9:
  %t43 = load i1, ptr %l24, !tbaa !21
  br i1 %t43, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s1)
  br label %bb80
bb11:
  br label %bb12
bb12:
  %t44 = load ptr, ptr %l1, !tbaa !29
  store ptr %t44, ptr %l28, !tbaa !29
  %t45 = load ptr, ptr %l28, !tbaa !29
  %t46 = getelementptr %"compiler/bindgen:cparse", ptr %t45, i32 0, i32 2
  %t47 = load i64, ptr %t46, !tbaa !24
  %t49 = add i64 %t47, 1
  %t51 = load ptr, ptr %l28, !tbaa !29
  %t52 = getelementptr %"compiler/bindgen:cparse", ptr %t51, i32 0, i32 2
  store i64 %t49, ptr %t52, !tbaa !24
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load ptr, ptr %l1, !tbaa !29
  %t55 = load i64, ptr %l5, !tbaa !24
  %t57 = add i64 %t55, 1
  %t61 = call { i32, %"compiler/bindgen:cx" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecBinary(ptr %v0, ptr %v1, ptr %v2, ptr %t53, ptr %t54, i64 %t57)
  %t62 = extractvalue { i32, %"compiler/bindgen:cx" } %t61, 1
  %t63 = extractvalue { i32, %"compiler/bindgen:cx" } %t61, 0
  store i32 %t63, ptr %l37
  %t64 = icmp ne i32 %t63, 0
  br i1 %t64, label %bb14, label %ok.65, !prof !99
ok.65:
  store %"compiler/bindgen:cx" %t62, ptr %l36
  br label %bb13
bb13:
  %t66 = load %"compiler/bindgen:cx", ptr %l36
  store %"compiler/bindgen:cx" %t66, ptr %l31
  br label %bb15
bb14:
  %t67 = load i32, ptr %l37, !tbaa !23
  %t68 = lshr i32 %t67, 16
  %t69 = and i32 %t67, 65535
  %t70 = icmp eq i32 %t68, 1
  %t71 = select i1 %t70, i32 1, i32 0
  %t72 = icmp eq i32 %t67, 0
  %t73 = shl i32 %t71, 16
  %t74 = or i32 %t73, %t69
  %t75 = select i1 %t72, i32 0, i32 %t74
  call void @__olang_scope_close(ptr %s1)
  %t77 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, i32 %t75, 0
  store { i32, %"compiler/bindgen:cx" } %t77, ptr %rv
  br label %ret
bb15:
  %t78 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store ptr %t78, ptr %lp6
  %t79 = load %"compiler/bindgen:cx", ptr %l31
  %t80 = load ptr, ptr %lp6
  store %"compiler/bindgen:cx" %t79, ptr %t80
  %t81 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t83 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s1, ptr %s1, { i64, ptr } %t81, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d5, i32 0, i32 1) })
  store i1 %t83, ptr %l40
  br label %bb16
bb16:
  %t84 = load i1, ptr %l40, !tbaa !21
  br i1 %t84, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l41, !tbaa !21
  br label %bb20
bb18:
  %t85 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t87 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s1, ptr %s1, { i64, ptr } %t85, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d6, i32 0, i32 1) })
  store i1 %t87, ptr %l43
  br label %bb19
bb19:
  %t88 = load i1, ptr %l43, !tbaa !21
  store i1 %t88, ptr %l41, !tbaa !21
  br label %bb20
bb20:
  %t89 = load i1, ptr %l41, !tbaa !21
  br i1 %t89, label %bb21, label %bb22
bb21:
  store %olang.scope zeroinitializer, ptr %s3
  %t90 = ptrtoint ptr %v2 to i64
  store i64 %t90, ptr %l44, !tbaa !24
  %t91 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acx_2e0
  br i1 %t91, label %bb23, label %bb24
bb22:
  %t93 = load i64, ptr %l5, !tbaa !24
  %t95 = icmp eq i64 %t93, 6
  br i1 %t95, label %bb36, label %bb37
bb23:
  %t97 = call ptr @__olang_region_make(ptr %v2)
  %t98 = ptrtoint ptr %t97 to i64
  store i64 %t98, ptr %l44, !tbaa !24
  br label %bb24
bb24:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t100 = load ptr, ptr %lp3
  %t101 = load %"compiler/bindgen:cx", ptr %t100
  %t104 = call %"compiler/bindgen:cx" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecBool(ptr %v0, ptr %v2, ptr %v2, ptr %t99, %"compiler/bindgen:cx" %t101)
  store %"compiler/bindgen:cx" %t104, ptr %l48
  br label %bb25
bb25:
  %t105 = getelementptr %"compiler/bindgen:cx", ptr %l48, i32 0, i32 0
  %t106 = load { i64, ptr }, ptr %t105, !tbaa !27
  store { i64, ptr } %t106, ptr %l49, !tbaa !27
  %t107 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t109 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s1, ptr %s3, { i64, ptr } %t107, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d7, i32 0, i32 1) })
  store i1 %t109, ptr %l51
  br label %bb26
bb26:
  %t110 = load i1, ptr %l51, !tbaa !21
  br i1 %t110, label %bb27, label %bb28
bb27:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d8, i32 0, i32 1) }, ptr %l52, !tbaa !27
  br label %bb29
bb28:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d9, i32 0, i32 1) }, ptr %l52, !tbaa !27
  br label %bb29
bb29:
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t112 = load ptr, ptr %lp6
  %t113 = load %"compiler/bindgen:cx", ptr %t112
  %t116 = call %"compiler/bindgen:cx" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecBool(ptr %v0, ptr %v2, ptr %v2, ptr %t111, %"compiler/bindgen:cx" %t113)
  store %"compiler/bindgen:cx" %t116, ptr %l55
  br label %bb30
bb30:
  %t117 = getelementptr %"compiler/bindgen:cx", ptr %l55, i32 0, i32 0
  %t118 = load { i64, ptr }, ptr %t117, !tbaa !27
  %t119 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t120 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  %t121 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t122 = extractvalue { i64, ptr } %t121, 1
  %t123 = extractvalue { i64, ptr } %t121, 0
  %t124 = add i64 %t120, %t123
  %t125 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t126 = extractvalue { i64, ptr } %t125, 1
  %t127 = extractvalue { i64, ptr } %t125, 0
  %t128 = add i64 %t124, %t127
  %t130 = extractvalue { i64, ptr } %t118, 1
  %t131 = extractvalue { i64, ptr } %t118, 0
  %t132 = add i64 %t128, %t131
  %t133 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t134 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  %t135 = add i64 %t132, %t134
  %t136 = load i64, ptr %l44
  %t137 = inttoptr i64 %t136 to ptr
  %t138 = call ptr @__olang_scope_alloc(ptr %t137, i64 %t135)
  call void @olang_textcopy(ptr %t138, ptr %t119, i64 %t120)
  %t139 = getelementptr i8, ptr %t138, i64 %t120
  call void @olang_textcopy(ptr %t139, ptr %t122, i64 %t123)
  %t140 = getelementptr i8, ptr %t139, i64 %t123
  call void @olang_textcopy(ptr %t140, ptr %t126, i64 %t127)
  %t141 = getelementptr i8, ptr %t140, i64 %t127
  call void @olang_textcopy(ptr %t141, ptr %t130, i64 %t131)
  %t142 = getelementptr i8, ptr %t141, i64 %t131
  call void @olang_textcopy(ptr %t142, ptr %t133, i64 %t134)
  %t143 = insertvalue { i64, ptr } undef, i64 %t135, 0
  %t144 = insertvalue { i64, ptr } %t143, ptr %t138, 1
  %t146 = load i64, ptr %l44
  %t147 = inttoptr i64 %t146 to ptr
  %t148 = extractvalue { i64, ptr } %t144, 0
  %t149 = extractvalue { i64, ptr } %t144, 1
  %t150 = mul i64 %t148, 1
  %t151 = call ptr @__olang_scope_alloc(ptr %t147, i64 %t150)
  call void @llvm.memcpy.p0.p0.i64(ptr %t151, ptr %t149, i64 %t150, i1 false)
  %t152 = insertvalue { i64, ptr } undef, i64 %t148, 0
  %t153 = insertvalue { i64, ptr } %t152, ptr %t151, 1
  %t154 = load i64, ptr @G_2ecompiler_2fbindgen_2eKBool, !tbaa !24
  %t157 = call %"compiler/bindgen:cx" @compiler_2fbindgen_3acx_2ector(ptr %v2, ptr %v2, ptr %v2, { i64, ptr } %t153, i64 %t154, i64 -1, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d12, i32 0, i32 1) })
  store %"compiler/bindgen:cx" %t157, ptr %l60
  br label %bb31
bb31:
  %t158 = load ptr, ptr %lp3
  %t159 = load %"compiler/bindgen:cx", ptr %t158
  store %"compiler/bindgen:cx" %t159, ptr %l61
  %t160 = load %"compiler/bindgen:cx", ptr %l60
  %t161 = load ptr, ptr %lp3
  store %"compiler/bindgen:cx" %t160, ptr %t161
  %t162 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acx_2e0
  br i1 %t162, label %bb32, label %bb33
bb32:
  %t164 = getelementptr %"compiler/bindgen:cx", ptr %l61, i32 0, i32 0
  %t165 = load { i64, ptr }, ptr %t164
  %t166 = extractvalue { i64, ptr } %t165, 1
  call void @__olang_region_release(ptr %t166)
  store { i64, ptr } zeroinitializer, ptr %t164
  br label %bb33
bb33:
  %t167 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acx_2e3
  br i1 %t167, label %bb34, label %bb35
bb34:
  %t169 = getelementptr %"compiler/bindgen:cx", ptr %l61, i32 0, i32 3
  %t170 = load { i64, ptr }, ptr %t169
  %t171 = extractvalue { i64, ptr } %t170, 1
  call void @__olang_region_release(ptr %t171)
  store { i64, ptr } zeroinitializer, ptr %t169
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s3)
  br label %bb78
bb36:
  store i1 true, ptr %l66, !tbaa !21
  br label %bb38
bb37:
  %t172 = load i64, ptr %l5, !tbaa !24
  %t174 = icmp eq i64 %t172, 7
  store i1 %t174, ptr %l66, !tbaa !21
  br label %bb38
bb38:
  %t176 = load i1, ptr %l66, !tbaa !21
  br i1 %t176, label %bb39, label %bb40
bb39:
  store %olang.scope zeroinitializer, ptr %s6
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t178 = load ptr, ptr %lp3
  %t179 = load %"compiler/bindgen:cx", ptr %t178
  %t182 = call %"compiler/bindgen:cx" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecNum(ptr %v0, ptr %v2, ptr %s6, ptr %t177, %"compiler/bindgen:cx" %t179)
  store %"compiler/bindgen:cx" %t182, ptr %l71
  br label %bb41
bb40:
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t184 = load ptr, ptr %lp3
  %t185 = load %"compiler/bindgen:cx", ptr %t184
  %t188 = call %"compiler/bindgen:cx" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecNum(ptr %v0, ptr %v2, ptr %v2, ptr %t183, %"compiler/bindgen:cx" %t185)
  store %"compiler/bindgen:cx" %t188, ptr %l89
  br label %bb50
bb41:
  %t189 = load %"compiler/bindgen:cx", ptr %l71
  store %"compiler/bindgen:cx" %t189, ptr %l7
  %t190 = load ptr, ptr %l0, !tbaa !29
  %t191 = load ptr, ptr %lp6
  %t192 = load %"compiler/bindgen:cx", ptr %t191
  %t195 = call %"compiler/bindgen:cx" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecNum(ptr %v0, ptr %v2, ptr %s6, ptr %t190, %"compiler/bindgen:cx" %t192)
  store %"compiler/bindgen:cx" %t195, ptr %l74
  br label %bb42
bb42:
  %t196 = load %"compiler/bindgen:cx", ptr %l74
  store %"compiler/bindgen:cx" %t196, ptr %l8
  %t197 = ptrtoint ptr %v2 to i64
  store i64 %t197, ptr %l75, !tbaa !24
  %t198 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acx_2e0
  br i1 %t198, label %bb43, label %bb44
bb43:
  %t200 = call ptr @__olang_region_make(ptr %v2)
  %t201 = ptrtoint ptr %t200 to i64
  store i64 %t201, ptr %l75, !tbaa !24
  br label %bb44
bb44:
  %t202 = getelementptr %"compiler/bindgen:cx", ptr %l7, i32 0, i32 0
  %t203 = load { i64, ptr }, ptr %t202, !tbaa !27
  %t204 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t205 = getelementptr %"compiler/bindgen:cx", ptr %l8, i32 0, i32 0
  %t206 = load { i64, ptr }, ptr %t205, !tbaa !27
  %t207 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t208 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
  %t210 = extractvalue { i64, ptr } %t203, 1
  %t211 = extractvalue { i64, ptr } %t203, 0
  %t212 = add i64 %t208, %t211
  %t213 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t214 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  %t215 = add i64 %t212, %t214
  %t217 = extractvalue { i64, ptr } %t204, 1
  %t218 = extractvalue { i64, ptr } %t204, 0
  %t219 = add i64 %t215, %t218
  %t220 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t221 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  %t222 = add i64 %t219, %t221
  %t224 = extractvalue { i64, ptr } %t206, 1
  %t225 = extractvalue { i64, ptr } %t206, 0
  %t226 = add i64 %t222, %t225
  %t227 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t228 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t229 = add i64 %t226, %t228
  %t230 = load i64, ptr %l75
  %t231 = inttoptr i64 %t230 to ptr
  %t232 = call ptr @__olang_scope_alloc(ptr %t231, i64 %t229)
  call void @olang_textcopy(ptr %t232, ptr %t207, i64 %t208)
  %t233 = getelementptr i8, ptr %t232, i64 %t208
  call void @olang_textcopy(ptr %t233, ptr %t210, i64 %t211)
  %t234 = getelementptr i8, ptr %t233, i64 %t211
  call void @olang_textcopy(ptr %t234, ptr %t213, i64 %t214)
  %t235 = getelementptr i8, ptr %t234, i64 %t214
  call void @olang_textcopy(ptr %t235, ptr %t217, i64 %t218)
  %t236 = getelementptr i8, ptr %t235, i64 %t218
  call void @olang_textcopy(ptr %t236, ptr %t220, i64 %t221)
  %t237 = getelementptr i8, ptr %t236, i64 %t221
  call void @olang_textcopy(ptr %t237, ptr %t224, i64 %t225)
  %t238 = getelementptr i8, ptr %t237, i64 %t225
  call void @olang_textcopy(ptr %t238, ptr %t227, i64 %t228)
  %t239 = insertvalue { i64, ptr } undef, i64 %t229, 0
  %t240 = insertvalue { i64, ptr } %t239, ptr %t232, 1
  %t242 = load i64, ptr %l75
  %t243 = inttoptr i64 %t242 to ptr
  %t244 = extractvalue { i64, ptr } %t240, 0
  %t245 = extractvalue { i64, ptr } %t240, 1
  %t246 = mul i64 %t244, 1
  %t247 = call ptr @__olang_scope_alloc(ptr %t243, i64 %t246)
  call void @llvm.memcpy.p0.p0.i64(ptr %t247, ptr %t245, i64 %t246, i1 false)
  %t248 = insertvalue { i64, ptr } undef, i64 %t244, 0
  %t249 = insertvalue { i64, ptr } %t248, ptr %t247, 1
  %t250 = load i64, ptr @G_2ecompiler_2fbindgen_2eKBool, !tbaa !24
  %t253 = call %"compiler/bindgen:cx" @compiler_2fbindgen_3acx_2ector(ptr %v2, ptr %v2, ptr %v2, { i64, ptr } %t249, i64 %t250, i64 -1, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d16, i32 0, i32 1) })
  store %"compiler/bindgen:cx" %t253, ptr %l83
  br label %bb45
bb45:
  %t254 = load ptr, ptr %lp3
  %t255 = load %"compiler/bindgen:cx", ptr %t254
  store %"compiler/bindgen:cx" %t255, ptr %l84
  %t256 = load %"compiler/bindgen:cx", ptr %l83
  %t257 = load ptr, ptr %lp3
  store %"compiler/bindgen:cx" %t256, ptr %t257
  %t258 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acx_2e0
  br i1 %t258, label %bb46, label %bb47
bb46:
  %t260 = getelementptr %"compiler/bindgen:cx", ptr %l84, i32 0, i32 0
  %t261 = load { i64, ptr }, ptr %t260
  %t262 = extractvalue { i64, ptr } %t261, 1
  call void @__olang_region_release(ptr %t262)
  store { i64, ptr } zeroinitializer, ptr %t260
  br label %bb47
bb47:
  %t263 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acx_2e3
  br i1 %t263, label %bb48, label %bb49
bb48:
  %t265 = getelementptr %"compiler/bindgen:cx", ptr %l84, i32 0, i32 3
  %t266 = load { i64, ptr }, ptr %t265
  %t267 = extractvalue { i64, ptr } %t266, 1
  call void @__olang_region_release(ptr %t267)
  store { i64, ptr } zeroinitializer, ptr %t265
  br label %bb49
bb49:
  call void @__olang_scope_close(ptr %s6)
  br label %bb77
bb50:
  %t268 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store ptr %t268, ptr %lp9
  %t269 = load %"compiler/bindgen:cx", ptr %l89
  %t270 = load ptr, ptr %lp9
  store %"compiler/bindgen:cx" %t269, ptr %t270
  %t271 = load ptr, ptr %l0, !tbaa !29
  %t272 = load ptr, ptr %lp6
  %t273 = load %"compiler/bindgen:cx", ptr %t272
  %t276 = call %"compiler/bindgen:cx" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecNum(ptr %v0, ptr %v2, ptr %v2, ptr %t271, %"compiler/bindgen:cx" %t273)
  store %"compiler/bindgen:cx" %t276, ptr %l92
  br label %bb51
bb51:
  %t277 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store ptr %t277, ptr %lp10
  %t278 = load %"compiler/bindgen:cx", ptr %l92
  %t279 = load ptr, ptr %lp10
  store %"compiler/bindgen:cx" %t278, ptr %t279
  %t280 = load i64, ptr %l5, !tbaa !24
  %t282 = icmp eq i64 %t280, 8
  br i1 %t282, label %bb52, label %bb53
bb52:
  %t284 = load ptr, ptr %lp9
  %t285 = load %"compiler/bindgen:cx", ptr %t284
  store %"compiler/bindgen:cx" %t285, ptr %l95
  br label %bb55
bb53:
  %t287 = load ptr, ptr %l0, !tbaa !29
  %t288 = load ptr, ptr %lp9
  %t289 = load %"compiler/bindgen:cx", ptr %t288
  %t290 = load ptr, ptr %lp10
  %t291 = load %"compiler/bindgen:cx", ptr %t290
  %t295 = call %"compiler/bindgen:cx" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecLead(ptr %v0, ptr %v2, ptr %v2, ptr %v2, ptr %t287, %"compiler/bindgen:cx" %t289, %"compiler/bindgen:cx" %t291)
  store %"compiler/bindgen:cx" %t295, ptr %l100
  br label %bb54
bb54:
  %t296 = load %"compiler/bindgen:cx", ptr %l100
  store %"compiler/bindgen:cx" %t296, ptr %l95
  br label %bb55
bb55:
  %t297 = load %"compiler/bindgen:cx", ptr %l95
  store %"compiler/bindgen:cx" %t297, ptr %l11
  %t298 = load i64, ptr %l5, !tbaa !24
  %t300 = icmp eq i64 %t298, 8
  br i1 %t300, label %bb56, label %bb57
bb56:
  %t302 = load ptr, ptr %lp9
  %t303 = getelementptr %"compiler/bindgen:cx", ptr %t302, i32 0, i32 1
  %t304 = load i64, ptr %t303, !tbaa !24
  %t305 = load i64, ptr @G_2ecompiler_2fbindgen_2eKInt, !tbaa !24
  %t308 = icmp eq i64 %t304, %t305
  store i1 %t308, ptr %l103, !tbaa !21
  br label %bb58
bb57:
  store i1 false, ptr %l103, !tbaa !21
  br label %bb58
bb58:
  %t310 = load i1, ptr %l103, !tbaa !21
  br i1 %t310, label %bb59, label %bb60
bb59:
  %t311 = load ptr, ptr %lp10
  %t312 = getelementptr %"compiler/bindgen:cx", ptr %t311, i32 0, i32 1
  %t313 = load i64, ptr %t312, !tbaa !24
  %t314 = load i64, ptr @G_2ecompiler_2fbindgen_2eKInt, !tbaa !24
  %t317 = icmp ne i64 %t313, %t314
  store i1 %t317, ptr %l107, !tbaa !21
  br label %bb61
bb60:
  store i1 false, ptr %l107, !tbaa !21
  br label %bb61
bb61:
  %t319 = load i1, ptr %l107, !tbaa !21
  br i1 %t319, label %bb62, label %bb63
bb62:
  %t320 = load i64, ptr @G_2ecompiler_2fbindgen_2eKInt, !tbaa !24
  %t322 = call %"compiler/bindgen:cx" @compiler_2fbindgen_2ecx_2elit(ptr %v2, ptr %v2, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d17, i32 0, i32 1) }, i64 %t320)
  store %"compiler/bindgen:cx" %t322, ptr %l112
  br label %bb64
bb63:
  br label %bb69
bb64:
  %t323 = load %"compiler/bindgen:cx", ptr %l11
  store %"compiler/bindgen:cx" %t323, ptr %l113
  %t324 = load %"compiler/bindgen:cx", ptr %l112
  store %"compiler/bindgen:cx" %t324, ptr %l11
  %t325 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acx_2e0
  br i1 %t325, label %bb65, label %bb66
bb65:
  %t327 = getelementptr %"compiler/bindgen:cx", ptr %l113, i32 0, i32 0
  %t328 = load { i64, ptr }, ptr %t327
  %t329 = extractvalue { i64, ptr } %t328, 1
  call void @__olang_region_release(ptr %t329)
  store { i64, ptr } zeroinitializer, ptr %t327
  br label %bb66
bb66:
  %t330 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acx_2e3
  br i1 %t330, label %bb67, label %bb68
bb67:
  %t332 = getelementptr %"compiler/bindgen:cx", ptr %l113, i32 0, i32 3
  %t333 = load { i64, ptr }, ptr %t332
  %t334 = extractvalue { i64, ptr } %t333, 1
  call void @__olang_region_release(ptr %t334)
  store { i64, ptr } zeroinitializer, ptr %t332
  br label %bb68
bb68:
  br label %bb69
bb69:
  %t335 = ptrtoint ptr %v2 to i64
  store i64 %t335, ptr %l116, !tbaa !24
  %t336 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acx_2e0
  br i1 %t336, label %bb70, label %bb71
bb70:
  %t338 = call ptr @__olang_region_make(ptr %v2)
  %t339 = ptrtoint ptr %t338 to i64
  store i64 %t339, ptr %l116, !tbaa !24
  br label %bb71
bb71:
  %t340 = load ptr, ptr %lp9
  %t341 = getelementptr %"compiler/bindgen:cx", ptr %t340, i32 0, i32 0
  %t342 = load { i64, ptr }, ptr %t341, !tbaa !27
  %t343 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t344 = load ptr, ptr %lp10
  %t345 = getelementptr %"compiler/bindgen:cx", ptr %t344, i32 0, i32 0
  %t346 = load { i64, ptr }, ptr %t345, !tbaa !27
  %t347 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t348 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t350 = extractvalue { i64, ptr } %t342, 1
  %t351 = extractvalue { i64, ptr } %t342, 0
  %t352 = add i64 %t348, %t351
  %t353 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t354 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  %t355 = add i64 %t352, %t354
  %t357 = extractvalue { i64, ptr } %t343, 1
  %t358 = extractvalue { i64, ptr } %t343, 0
  %t359 = add i64 %t355, %t358
  %t360 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t361 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  %t362 = add i64 %t359, %t361
  %t364 = extractvalue { i64, ptr } %t346, 1
  %t365 = extractvalue { i64, ptr } %t346, 0
  %t366 = add i64 %t362, %t365
  %t367 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t368 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  %t369 = add i64 %t366, %t368
  %t370 = load i64, ptr %l116
  %t371 = inttoptr i64 %t370 to ptr
  %t372 = call ptr @__olang_scope_alloc(ptr %t371, i64 %t369)
  call void @olang_textcopy(ptr %t372, ptr %t347, i64 %t348)
  %t373 = getelementptr i8, ptr %t372, i64 %t348
  call void @olang_textcopy(ptr %t373, ptr %t350, i64 %t351)
  %t374 = getelementptr i8, ptr %t373, i64 %t351
  call void @olang_textcopy(ptr %t374, ptr %t353, i64 %t354)
  %t375 = getelementptr i8, ptr %t374, i64 %t354
  call void @olang_textcopy(ptr %t375, ptr %t357, i64 %t358)
  %t376 = getelementptr i8, ptr %t375, i64 %t358
  call void @olang_textcopy(ptr %t376, ptr %t360, i64 %t361)
  %t377 = getelementptr i8, ptr %t376, i64 %t361
  call void @olang_textcopy(ptr %t377, ptr %t364, i64 %t365)
  %t378 = getelementptr i8, ptr %t377, i64 %t365
  call void @olang_textcopy(ptr %t378, ptr %t367, i64 %t368)
  %t379 = insertvalue { i64, ptr } undef, i64 %t369, 0
  %t380 = insertvalue { i64, ptr } %t379, ptr %t372, 1
  %t382 = load i64, ptr %l116
  %t383 = inttoptr i64 %t382 to ptr
  %t384 = extractvalue { i64, ptr } %t380, 0
  %t385 = extractvalue { i64, ptr } %t380, 1
  %t386 = mul i64 %t384, 1
  %t387 = call ptr @__olang_scope_alloc(ptr %t383, i64 %t386)
  call void @llvm.memcpy.p0.p0.i64(ptr %t387, ptr %t385, i64 %t386, i1 false)
  %t388 = insertvalue { i64, ptr } undef, i64 %t384, 0
  %t389 = insertvalue { i64, ptr } %t388, ptr %t387, 1
  %t390 = getelementptr %"compiler/bindgen:cx", ptr %l11, i32 0, i32 1
  %t391 = load i64, ptr %t390, !tbaa !24
  %t392 = getelementptr %"compiler/bindgen:cx", ptr %l11, i32 0, i32 2
  %t393 = load i64, ptr %t392, !tbaa !24
  %t394 = getelementptr %"compiler/bindgen:cx", ptr %l11, i32 0, i32 3
  %t395 = load { i64, ptr }, ptr %t394, !tbaa !27
  %t400 = call %"compiler/bindgen:cx" @compiler_2fbindgen_3acx_2ector(ptr %v2, ptr %v2, ptr %v2, { i64, ptr } %t389, i64 %t391, i64 %t393, { i64, ptr } %t395)
  store %"compiler/bindgen:cx" %t400, ptr %l126
  br label %bb72
bb72:
  %t401 = load ptr, ptr %lp3
  %t402 = load %"compiler/bindgen:cx", ptr %t401
  store %"compiler/bindgen:cx" %t402, ptr %l127
  %t403 = load %"compiler/bindgen:cx", ptr %l126
  %t404 = load ptr, ptr %lp3
  store %"compiler/bindgen:cx" %t403, ptr %t404
  %t405 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acx_2e0
  br i1 %t405, label %bb73, label %bb74
bb73:
  %t407 = getelementptr %"compiler/bindgen:cx", ptr %l127, i32 0, i32 0
  %t408 = load { i64, ptr }, ptr %t407
  %t409 = extractvalue { i64, ptr } %t408, 1
  call void @__olang_region_release(ptr %t409)
  store { i64, ptr } zeroinitializer, ptr %t407
  br label %bb74
bb74:
  %t410 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acx_2e3
  br i1 %t410, label %bb75, label %bb76
bb75:
  %t412 = getelementptr %"compiler/bindgen:cx", ptr %l127, i32 0, i32 3
  %t413 = load { i64, ptr }, ptr %t412
  %t414 = extractvalue { i64, ptr } %t413, 1
  call void @__olang_region_release(ptr %t414)
  store { i64, ptr } zeroinitializer, ptr %t412
  br label %bb76
bb76:
  br label %bb77
bb77:
  br label %bb78
bb78:
  call void @__olang_scope_close(ptr %s1)
  br label %bb79
bb79:
  br label %bb4
bb80:
  %t415 = load ptr, ptr %lp3
  %t416 = load %"compiler/bindgen:cx", ptr %t415
  %t418 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, %"compiler/bindgen:cx" %t416, 1
  store { i32, %"compiler/bindgen:cx" } %t418, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"compiler/bindgen:cx" }, ptr %rv
  ret { i32, %"compiler/bindgen:cx" } %rr
}

define dso_local %"compiler/bindgen:cx" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecBool(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/bindgen:cx" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/bindgen:cx"
  %l6 = alloca i64
  %l12 = alloca %"compiler/bindgen:cx"
  %rv = alloca %"compiler/bindgen:cx"
  store ptr %a0, ptr %l0
  store %"compiler/bindgen:cx" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/bindgen:cx", ptr %l1, i32 0, i32 1
  %t2 = load i64, ptr %t1, !tbaa !24
  %t3 = load i64, ptr @G_2ecompiler_2fbindgen_2eKBool, !tbaa !24
  %t6 = icmp eq i64 %t2, %t3
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load %"compiler/bindgen:cx", ptr %l1
  store %"compiler/bindgen:cx" %t8, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t10 = ptrtoint ptr %v2 to i64
  store i64 %t10, ptr %l6, !tbaa !24
  %t11 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acx_2e0
  br i1 %t11, label %bb4, label %bb5
bb4:
  %t13 = call ptr @__olang_region_make(ptr %v2)
  %t14 = ptrtoint ptr %t13 to i64
  store i64 %t14, ptr %l6, !tbaa !24
  br label %bb5
bb5:
  %t15 = getelementptr %"compiler/bindgen:cx", ptr %l1, i32 0, i32 0
  %t16 = load { i64, ptr }, ptr %t15, !tbaa !27
  %t17 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t18 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  %t20 = extractvalue { i64, ptr } %t16, 1
  %t21 = extractvalue { i64, ptr } %t16, 0
  %t22 = add i64 %t18, %t21
  %t23 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t24 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  %t25 = add i64 %t22, %t24
  %t26 = load i64, ptr %l6
  %t27 = inttoptr i64 %t26 to ptr
  %t28 = call ptr @__olang_scope_alloc(ptr %t27, i64 %t25)
  call void @olang_textcopy(ptr %t28, ptr %t17, i64 %t18)
  %t29 = getelementptr i8, ptr %t28, i64 %t18
  call void @olang_textcopy(ptr %t29, ptr %t20, i64 %t21)
  %t30 = getelementptr i8, ptr %t29, i64 %t21
  call void @olang_textcopy(ptr %t30, ptr %t23, i64 %t24)
  %t31 = insertvalue { i64, ptr } undef, i64 %t25, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t28, 1
  %t34 = load i64, ptr %l6
  %t35 = inttoptr i64 %t34 to ptr
  %t36 = extractvalue { i64, ptr } %t32, 0
  %t37 = extractvalue { i64, ptr } %t32, 1
  %t38 = mul i64 %t36, 1
  %t39 = call ptr @__olang_scope_alloc(ptr %t35, i64 %t38)
  call void @llvm.memcpy.p0.p0.i64(ptr %t39, ptr %t37, i64 %t38, i1 false)
  %t40 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t39, 1
  %t42 = load i64, ptr @G_2ecompiler_2fbindgen_2eKBool, !tbaa !24
  %t45 = call %"compiler/bindgen:cx" @compiler_2fbindgen_3acx_2ector(ptr %v2, ptr %v2, ptr %v2, { i64, ptr } %t41, i64 %t42, i64 -1, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d23, i32 0, i32 1) })
  store %"compiler/bindgen:cx" %t45, ptr %l12
  br label %bb6
bb6:
  %t46 = load %"compiler/bindgen:cx", ptr %l12
  store %"compiler/bindgen:cx" %t46, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/bindgen:cx", ptr %rv
  ret %"compiler/bindgen:cx" %rr
}

define dso_local { i32, %"compiler/bindgen:cx" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecUnary(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %lp3 = alloca ptr
  %l4 = alloca %"compiler/bindgen:cx"
  %l5 = alloca i64
  %l6 = alloca %"std/prelude/text:StringBuilder"
  %lp7 = alloca ptr
  %l8 = alloca %"compiler/bindgen:cx"
  %l10 = alloca { i64, ptr }
  %l12 = alloca i1
  %l13 = alloca i1
  %l15 = alloca i1
  %l16 = alloca i1
  %l18 = alloca i1
  %l19 = alloca ptr
  %l22 = alloca ptr
  %l23 = alloca %"compiler/bindgen:cx"
  %l26 = alloca %"compiler/bindgen:cx"
  %l27 = alloca i32
  %l29 = alloca %"compiler/bindgen:cx"
  %l31 = alloca i1
  %l33 = alloca i64
  %l42 = alloca %"compiler/bindgen:cx"
  %l44 = alloca i1
  %l45 = alloca ptr
  %l48 = alloca %"compiler/bindgen:cx"
  %l51 = alloca %"compiler/bindgen:cx"
  %l52 = alloca i32
  %l54 = alloca i64
  %l58 = alloca %"compiler/bindgen:cx"
  %l63 = alloca %"compiler/bindgen:cx"
  %l65 = alloca i1
  %l68 = alloca ptr
  %l71 = alloca %"std/prelude/text:StringBuilder"
  %l78 = alloca i1
  %l80 = alloca { i64, ptr }
  %l82 = alloca i1
  %l85 = alloca ptr
  %l87 = alloca { i64, ptr }
  %l90 = alloca ptr
  %l93 = alloca ptr
  %l95 = alloca { i64, ptr }
  %l97 = alloca { i64, ptr }
  %l99 = alloca i1
  %l101 = alloca i1
  %l103 = alloca { i64, ptr }
  %l105 = alloca i1
  %l106 = alloca ptr
  %l109 = alloca ptr
  %l110 = alloca %"compiler/bindgen:cx"
  %l113 = alloca %"compiler/bindgen:cx"
  %l114 = alloca i32
  %l116 = alloca %"compiler/bindgen:cx"
  %l117 = alloca i64
  %l125 = alloca %"compiler/bindgen:cx"
  %l128 = alloca %"compiler/bindgen:cx"
  %l131 = alloca %"compiler/bindgen:cx"
  %l132 = alloca i32
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %rv = alloca { i32, %"compiler/bindgen:cx" }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3acparse_2eat(ptr %v1, ptr %s0, ptr %t1)
  store { i64, ptr } %t3, ptr %l10
  br label %bb1
bb1:
  %t4 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t4, ptr %l2, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t7 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t5, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d24, i32 0, i32 1) })
  store i1 %t7, ptr %l12
  br label %bb2
bb2:
  %t8 = load i1, ptr %l12, !tbaa !21
  br i1 %t8, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l13, !tbaa !21
  br label %bb6
bb4:
  %t9 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t11 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t9, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d25, i32 0, i32 1) })
  store i1 %t11, ptr %l15
  br label %bb5
bb5:
  %t12 = load i1, ptr %l15, !tbaa !21
  store i1 %t12, ptr %l13, !tbaa !21
  br label %bb6
bb6:
  %t13 = load i1, ptr %l13, !tbaa !21
  br i1 %t13, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb10
bb8:
  %t14 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t16 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t14, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) })
  store i1 %t16, ptr %l18
  br label %bb9
bb9:
  %t17 = load i1, ptr %l18, !tbaa !21
  store i1 %t17, ptr %l16, !tbaa !21
  br label %bb10
bb10:
  %t18 = load i1, ptr %l16, !tbaa !21
  br i1 %t18, label %bb11, label %bb12
bb11:
  store %olang.scope zeroinitializer, ptr %s1
  %t19 = load ptr, ptr %l1, !tbaa !29
  store ptr %t19, ptr %l19, !tbaa !29
  %t20 = load ptr, ptr %l19, !tbaa !29
  %t21 = getelementptr %"compiler/bindgen:cparse", ptr %t20, i32 0, i32 2
  %t22 = load i64, ptr %t21, !tbaa !24
  %t24 = add i64 %t22, 1
  %t26 = load ptr, ptr %l19, !tbaa !29
  %t27 = getelementptr %"compiler/bindgen:cparse", ptr %t26, i32 0, i32 2
  store i64 %t24, ptr %t27, !tbaa !24
  %t28 = load ptr, ptr %l0, !tbaa !29
  store ptr %t28, ptr %l22, !tbaa !29
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = load ptr, ptr %l1, !tbaa !29
  %t33 = call { i32, %"compiler/bindgen:cx" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecUnary(ptr %v0, ptr %v1, ptr %v0, ptr %t29, ptr %t30)
  %t34 = extractvalue { i32, %"compiler/bindgen:cx" } %t33, 1
  %t35 = extractvalue { i32, %"compiler/bindgen:cx" } %t33, 0
  store i32 %t35, ptr %l27
  %t36 = icmp ne i32 %t35, 0
  br i1 %t36, label %bb14, label %ok.37, !prof !99
ok.37:
  store %"compiler/bindgen:cx" %t34, ptr %l26
  br label %bb13
bb12:
  br label %bb24
bb13:
  %t38 = load %"compiler/bindgen:cx", ptr %l26
  store %"compiler/bindgen:cx" %t38, ptr %l23
  br label %bb15
bb14:
  %t39 = load i32, ptr %l27, !tbaa !23
  %t40 = lshr i32 %t39, 16
  %t41 = and i32 %t39, 65535
  %t42 = icmp eq i32 %t40, 1
  %t43 = select i1 %t42, i32 1, i32 0
  %t44 = icmp eq i32 %t39, 0
  %t45 = shl i32 %t43, 16
  %t46 = or i32 %t45, %t41
  %t47 = select i1 %t44, i32 0, i32 %t46
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t49 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, i32 %t47, 0
  store { i32, %"compiler/bindgen:cx" } %t49, ptr %rv
  br label %ret
bb15:
  %t50 = load ptr, ptr %l22, !tbaa !29
  %t51 = load %"compiler/bindgen:cx", ptr %l23
  %t52 = call %"compiler/bindgen:cx" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecNum(ptr %v0, ptr %v0, ptr %v2, ptr %t50, %"compiler/bindgen:cx" %t51)
  store %"compiler/bindgen:cx" %t52, ptr %l29
  br label %bb16
bb16:
  %t53 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store ptr %t53, ptr %lp3
  %t54 = load %"compiler/bindgen:cx", ptr %l29
  %t55 = load ptr, ptr %lp3
  store %"compiler/bindgen:cx" %t54, ptr %t55
  %t56 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t58 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s1, { i64, ptr } %t56, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) })
  store i1 %t58, ptr %l31
  br label %bb17
bb17:
  %t59 = load i1, ptr %l31, !tbaa !21
  br i1 %t59, label %bb18, label %bb19
bb18:
  %t60 = load ptr, ptr %lp3
  %t61 = load %"compiler/bindgen:cx", ptr %t60
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t63 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, %"compiler/bindgen:cx" %t61, 1
  store { i32, %"compiler/bindgen:cx" } %t63, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  %t64 = ptrtoint ptr %v2 to i64
  store i64 %t64, ptr %l33, !tbaa !24
  %t65 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acx_2e0
  br i1 %t65, label %bb21, label %bb22
bb21:
  %t67 = call ptr @__olang_region_make(ptr %v2)
  %t68 = ptrtoint ptr %t67 to i64
  store i64 %t68, ptr %l33, !tbaa !24
  br label %bb22
bb22:
  %t69 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t70 = load ptr, ptr %lp3
  %t71 = getelementptr %"compiler/bindgen:cx", ptr %t70, i32 0, i32 0
  %t72 = load { i64, ptr }, ptr %t71, !tbaa !27
  %t73 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t74 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  %t76 = extractvalue { i64, ptr } %t69, 1
  %t77 = extractvalue { i64, ptr } %t69, 0
  %t78 = add i64 %t74, %t77
  %t80 = extractvalue { i64, ptr } %t72, 1
  %t81 = extractvalue { i64, ptr } %t72, 0
  %t82 = add i64 %t78, %t81
  %t83 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d29, i32 0, i32 1) }, 1
  %t84 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d29, i32 0, i32 1) }, 0
  %t85 = add i64 %t82, %t84
  %t86 = load i64, ptr %l33
  %t87 = inttoptr i64 %t86 to ptr
  %t88 = call ptr @__olang_scope_alloc(ptr %t87, i64 %t85)
  call void @olang_textcopy(ptr %t88, ptr %t73, i64 %t74)
  %t89 = getelementptr i8, ptr %t88, i64 %t74
  call void @olang_textcopy(ptr %t89, ptr %t76, i64 %t77)
  %t90 = getelementptr i8, ptr %t89, i64 %t77
  call void @olang_textcopy(ptr %t90, ptr %t80, i64 %t81)
  %t91 = getelementptr i8, ptr %t90, i64 %t81
  call void @olang_textcopy(ptr %t91, ptr %t83, i64 %t84)
  %t92 = insertvalue { i64, ptr } undef, i64 %t85, 0
  %t93 = insertvalue { i64, ptr } %t92, ptr %t88, 1
  %t95 = load i64, ptr %l33
  %t96 = inttoptr i64 %t95 to ptr
  %t97 = extractvalue { i64, ptr } %t93, 0
  %t98 = extractvalue { i64, ptr } %t93, 1
  %t99 = mul i64 %t97, 1
  %t100 = call ptr @__olang_scope_alloc(ptr %t96, i64 %t99)
  call void @llvm.memcpy.p0.p0.i64(ptr %t100, ptr %t98, i64 %t99, i1 false)
  %t101 = insertvalue { i64, ptr } undef, i64 %t97, 0
  %t102 = insertvalue { i64, ptr } %t101, ptr %t100, 1
  %t103 = load ptr, ptr %lp3
  %t104 = getelementptr %"compiler/bindgen:cx", ptr %t103, i32 0, i32 1
  %t105 = load i64, ptr %t104, !tbaa !24
  %t106 = load ptr, ptr %lp3
  %t107 = getelementptr %"compiler/bindgen:cx", ptr %t106, i32 0, i32 2
  %t108 = load i64, ptr %t107, !tbaa !24
  %t109 = load ptr, ptr %lp3
  %t110 = getelementptr %"compiler/bindgen:cx", ptr %t109, i32 0, i32 3
  %t111 = load { i64, ptr }, ptr %t110, !tbaa !27
  %t116 = call %"compiler/bindgen:cx" @compiler_2fbindgen_3acx_2ector(ptr %v2, ptr %v2, ptr %v2, { i64, ptr } %t102, i64 %t105, i64 %t108, { i64, ptr } %t111)
  store %"compiler/bindgen:cx" %t116, ptr %l42
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t117 = load %"compiler/bindgen:cx", ptr %l42
  %t118 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, %"compiler/bindgen:cx" %t117, 1
  store { i32, %"compiler/bindgen:cx" } %t118, ptr %rv
  br label %ret
bb24:
  %t119 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t121 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t119, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) })
  store i1 %t121, ptr %l44
  br label %bb25
bb25:
  %t122 = load i1, ptr %l44, !tbaa !21
  br i1 %t122, label %bb26, label %bb27
bb26:
  %t123 = load ptr, ptr %l1, !tbaa !29
  store ptr %t123, ptr %l45, !tbaa !29
  %t124 = load ptr, ptr %l45, !tbaa !29
  %t125 = getelementptr %"compiler/bindgen:cparse", ptr %t124, i32 0, i32 2
  %t126 = load i64, ptr %t125, !tbaa !24
  %t128 = add i64 %t126, 1
  %t130 = load ptr, ptr %l45, !tbaa !29
  %t131 = getelementptr %"compiler/bindgen:cparse", ptr %t130, i32 0, i32 2
  store i64 %t128, ptr %t131, !tbaa !24
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t133 = load ptr, ptr %l1, !tbaa !29
  %t136 = call { i32, %"compiler/bindgen:cx" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecUnary(ptr %v0, ptr %v1, ptr %v0, ptr %t132, ptr %t133)
  %t137 = extractvalue { i32, %"compiler/bindgen:cx" } %t136, 1
  %t138 = extractvalue { i32, %"compiler/bindgen:cx" } %t136, 0
  store i32 %t138, ptr %l52
  %t139 = icmp ne i32 %t138, 0
  br i1 %t139, label %bb29, label %ok.140, !prof !99
ok.140:
  store %"compiler/bindgen:cx" %t137, ptr %l51
  br label %bb28
bb27:
  br label %bb35
bb28:
  %t141 = load %"compiler/bindgen:cx", ptr %l51
  store %"compiler/bindgen:cx" %t141, ptr %l48
  br label %bb30
bb29:
  %t142 = load i32, ptr %l52, !tbaa !23
  %t143 = lshr i32 %t142, 16
  %t144 = and i32 %t142, 65535
  %t145 = icmp eq i32 %t143, 1
  %t146 = select i1 %t145, i32 1, i32 0
  %t147 = icmp eq i32 %t142, 0
  %t148 = shl i32 %t146, 16
  %t149 = or i32 %t148, %t144
  %t150 = select i1 %t147, i32 0, i32 %t149
  call void @__olang_scope_close(ptr %s0)
  %t152 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, i32 %t150, 0
  store { i32, %"compiler/bindgen:cx" } %t152, ptr %rv
  br label %ret
bb30:
  %t153 = load %"compiler/bindgen:cx", ptr %l48
  store %"compiler/bindgen:cx" %t153, ptr %l4
  %t154 = ptrtoint ptr %v2 to i64
  store i64 %t154, ptr %l54, !tbaa !24
  %t155 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acx_2e0
  br i1 %t155, label %bb31, label %bb32
bb31:
  %t157 = call ptr @__olang_region_make(ptr %v2)
  %t158 = ptrtoint ptr %t157 to i64
  store i64 %t158, ptr %l54, !tbaa !24
  br label %bb32
bb32:
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t160 = load %"compiler/bindgen:cx", ptr %l4
  %t163 = call %"compiler/bindgen:cx" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecBool(ptr %v0, ptr %v0, ptr %v0, ptr %t159, %"compiler/bindgen:cx" %t160)
  store %"compiler/bindgen:cx" %t163, ptr %l58
  br label %bb33
bb33:
  %t164 = getelementptr %"compiler/bindgen:cx", ptr %l58, i32 0, i32 0
  %t165 = load { i64, ptr }, ptr %t164, !tbaa !27
  %t166 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d31, i32 0, i32 1) }, 1
  %t167 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d31, i32 0, i32 1) }, 0
  %t169 = extractvalue { i64, ptr } %t165, 1
  %t170 = extractvalue { i64, ptr } %t165, 0
  %t171 = add i64 %t167, %t170
  %t172 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d32, i32 0, i32 1) }, 1
  %t173 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d32, i32 0, i32 1) }, 0
  %t174 = add i64 %t171, %t173
  %t175 = load i64, ptr %l54
  %t176 = inttoptr i64 %t175 to ptr
  %t177 = call ptr @__olang_scope_alloc(ptr %t176, i64 %t174)
  call void @olang_textcopy(ptr %t177, ptr %t166, i64 %t167)
  %t178 = getelementptr i8, ptr %t177, i64 %t167
  call void @olang_textcopy(ptr %t178, ptr %t169, i64 %t170)
  %t179 = getelementptr i8, ptr %t178, i64 %t170
  call void @olang_textcopy(ptr %t179, ptr %t172, i64 %t173)
  %t180 = insertvalue { i64, ptr } undef, i64 %t174, 0
  %t181 = insertvalue { i64, ptr } %t180, ptr %t177, 1
  %t183 = load i64, ptr %l54
  %t184 = inttoptr i64 %t183 to ptr
  %t185 = extractvalue { i64, ptr } %t181, 0
  %t186 = extractvalue { i64, ptr } %t181, 1
  %t187 = mul i64 %t185, 1
  %t188 = call ptr @__olang_scope_alloc(ptr %t184, i64 %t187)
  call void @llvm.memcpy.p0.p0.i64(ptr %t188, ptr %t186, i64 %t187, i1 false)
  %t189 = insertvalue { i64, ptr } undef, i64 %t185, 0
  %t190 = insertvalue { i64, ptr } %t189, ptr %t188, 1
  %t191 = load i64, ptr @G_2ecompiler_2fbindgen_2eKBool, !tbaa !24
  %t194 = call %"compiler/bindgen:cx" @compiler_2fbindgen_3acx_2ector(ptr %v2, ptr %v2, ptr %v2, { i64, ptr } %t190, i64 %t191, i64 -1, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d33, i32 0, i32 1) })
  store %"compiler/bindgen:cx" %t194, ptr %l63
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s0)
  %t195 = load %"compiler/bindgen:cx", ptr %l63
  %t196 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, %"compiler/bindgen:cx" %t195, 1
  store { i32, %"compiler/bindgen:cx" } %t196, ptr %rv
  br label %ret
bb35:
  %t197 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t199 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t197, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) })
  store i1 %t199, ptr %l65
  br label %bb36
bb36:
  %t200 = load i1, ptr %l65, !tbaa !21
  br i1 %t200, label %bb37, label %bb38
bb37:
  store %olang.scope zeroinitializer, ptr %s6
  %t201 = load ptr, ptr %l1, !tbaa !29
  %t203 = getelementptr %"compiler/bindgen:cparse", ptr %t201, i32 0, i32 2
  %t204 = load i64, ptr %t203, !tbaa !24
  store i64 %t204, ptr %l5, !tbaa !24
  %t206 = load ptr, ptr %l1, !tbaa !29
  store ptr %t206, ptr %l68, !tbaa !29
  %t207 = load ptr, ptr %l68, !tbaa !29
  %t208 = getelementptr %"compiler/bindgen:cparse", ptr %t207, i32 0, i32 2
  %t209 = load i64, ptr %t208, !tbaa !24
  %t211 = add i64 %t209, 1
  %t213 = load ptr, ptr %l68, !tbaa !29
  %t214 = getelementptr %"compiler/bindgen:cparse", ptr %t213, i32 0, i32 2
  store i64 %t211, ptr %t214, !tbaa !24
  %t215 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s6)
  store %"std/prelude/text:StringBuilder" %t215, ptr %l71
  br label %bb39
bb38:
  br label %bb72
bb39:
  %t216 = load %"std/prelude/text:StringBuilder", ptr %l71
  store %"std/prelude/text:StringBuilder" %t216, ptr %l6
  br label %bb40
bb40:
  store %olang.scope zeroinitializer, ptr %s7
  %t217 = load ptr, ptr %l1, !tbaa !29
  %t219 = getelementptr %"compiler/bindgen:cparse", ptr %t217, i32 0, i32 2
  %t220 = load i64, ptr %t219, !tbaa !24
  %t221 = load ptr, ptr %l1, !tbaa !29
  %t223 = getelementptr %"compiler/bindgen:cparse", ptr %t221, i32 0, i32 0
  %t224 = load { i64, ptr }, ptr %t223, !tbaa !27
  %t226 = extractvalue { i64, ptr } %t224, 0
  %t229 = icmp slt i64 %t220, %t226
  br i1 %t229, label %bb41, label %bb42
bb41:
  %t231 = load ptr, ptr %l1, !tbaa !29
  %t233 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3acparse_2eat(ptr %v1, ptr %s7, ptr %t231)
  store { i64, ptr } %t233, ptr %l80
  br label %bb43
bb42:
  store i1 false, ptr %l78, !tbaa !21
  br label %bb45
bb43:
  %t234 = load { i64, ptr }, ptr %l80, !tbaa !27
  %t235 = extractvalue { i64, ptr } %t234, 0
  %t236 = extractvalue { i64, ptr } %t234, 1
  %t237 = mul i64 %t235, 1
  %t238 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t237)
  call void @llvm.memcpy.p0.p0.i64(ptr %t238, ptr %t236, i64 %t237, i1 false)
  %t239 = insertvalue { i64, ptr } undef, i64 %t235, 0
  %t240 = insertvalue { i64, ptr } %t239, ptr %t238, 1
  %t242 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s7, ptr %s7, { i64, ptr } %t240, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d35, i32 0, i32 1) })
  store i1 %t242, ptr %l82
  br label %bb44
bb44:
  %t243 = load i1, ptr %l82, !tbaa !21
  %t244 = xor i1 %t243, true
  store i1 %t244, ptr %l78, !tbaa !21
  br label %bb45
bb45:
  %t246 = load i1, ptr %l78, !tbaa !21
  %t247 = xor i1 %t246, true
  br i1 %t247, label %bb46, label %bb47
bb46:
  call void @__olang_scope_close(ptr %s7)
  br label %bb53
bb47:
  br label %bb48
bb48:
  store ptr %l6, ptr %l85, !tbaa !29
  %t249 = load ptr, ptr %l1, !tbaa !29
  %t251 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3acparse_2eat(ptr %v1, ptr %s7, ptr %t249)
  store { i64, ptr } %t251, ptr %l87
  br label %bb49
bb49:
  %t252 = load { i64, ptr }, ptr %l87, !tbaa !27
  %t253 = extractvalue { i64, ptr } %t252, 0
  %t254 = extractvalue { i64, ptr } %t252, 1
  %t255 = mul i64 %t253, 1
  %t256 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t255)
  call void @llvm.memcpy.p0.p0.i64(ptr %t256, ptr %t254, i64 %t255, i1 false)
  %t257 = insertvalue { i64, ptr } undef, i64 %t253, 0
  %t258 = insertvalue { i64, ptr } %t257, ptr %t256, 1
  %t259 = load ptr, ptr %l85, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s6, ptr %s7, ptr %t259, { i64, ptr } %t258)
  br label %bb50
bb50:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s6, ptr %s7, ptr %l6, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d36, i32 0, i32 1) })
  br label %bb51
bb51:
  %t262 = load ptr, ptr %l1, !tbaa !29
  store ptr %t262, ptr %l90, !tbaa !29
  %t263 = load ptr, ptr %l90, !tbaa !29
  %t264 = getelementptr %"compiler/bindgen:cparse", ptr %t263, i32 0, i32 2
  %t265 = load i64, ptr %t264, !tbaa !24
  %t267 = add i64 %t265, 1
  %t269 = load ptr, ptr %l90, !tbaa !29
  %t270 = getelementptr %"compiler/bindgen:cparse", ptr %t269, i32 0, i32 2
  store i64 %t267, ptr %t270, !tbaa !24
  call void @__olang_scope_close(ptr %s7)
  br label %bb52
bb52:
  br label %bb40
bb53:
  %t271 = load ptr, ptr %l0, !tbaa !29
  store ptr %t271, ptr %l93, !tbaa !29
  %t273 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s6, ptr %v2, ptr %l6)
  store { i64, ptr } %t273, ptr %l95
  br label %bb54
bb54:
  %t274 = load { i64, ptr }, ptr %l95, !tbaa !27
  %t275 = extractvalue { i64, ptr } %t274, 0
  %t276 = extractvalue { i64, ptr } %t274, 1
  %t277 = mul i64 %t275, 1
  %t278 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t277)
  call void @llvm.memcpy.p0.p0.i64(ptr %t278, ptr %t276, i64 %t277, i1 false)
  %t279 = insertvalue { i64, ptr } undef, i64 %t275, 0
  %t280 = insertvalue { i64, ptr } %t279, ptr %t278, 1
  %t281 = load ptr, ptr %l93, !tbaa !29
  %t283 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecastType(ptr %v0, ptr %v2, ptr %v2, ptr %t281, { i64, ptr } %t280)
  store { i64, ptr } %t283, ptr %l97
  br label %bb55
bb55:
  %t284 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t284, ptr %lp7
  %t285 = load { i64, ptr }, ptr %l97, !tbaa !27
  %t286 = load ptr, ptr %lp7
  store { i64, ptr } %t285, ptr %t286, !tbaa !27
  %t287 = load ptr, ptr %lp7
  %t288 = load { i64, ptr }, ptr %t287, !tbaa !27
  %t290 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s6, { i64, ptr } %t288, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d37, i32 0, i32 1) })
  store i1 %t290, ptr %l99
  br label %bb56
bb56:
  %t291 = load i1, ptr %l99, !tbaa !21
  %t292 = xor i1 %t291, true
  br i1 %t292, label %bb57, label %bb58
bb57:
  %t294 = load ptr, ptr %l1, !tbaa !29
  %t296 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3acparse_2eat(ptr %v1, ptr %s6, ptr %t294)
  store { i64, ptr } %t296, ptr %l103
  br label %bb59
bb58:
  store i1 false, ptr %l101, !tbaa !21
  br label %bb61
bb59:
  %t297 = load { i64, ptr }, ptr %l103, !tbaa !27
  %t298 = extractvalue { i64, ptr } %t297, 0
  %t299 = extractvalue { i64, ptr } %t297, 1
  %t300 = mul i64 %t298, 1
  %t301 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t300)
  call void @llvm.memcpy.p0.p0.i64(ptr %t301, ptr %t299, i64 %t300, i1 false)
  %t302 = insertvalue { i64, ptr } undef, i64 %t298, 0
  %t303 = insertvalue { i64, ptr } %t302, ptr %t301, 1
  %t305 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s6, ptr %s6, { i64, ptr } %t303, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d38, i32 0, i32 1) })
  store i1 %t305, ptr %l105
  br label %bb60
bb60:
  %t306 = load i1, ptr %l105, !tbaa !21
  store i1 %t306, ptr %l101, !tbaa !21
  br label %bb61
bb61:
  %t307 = load i1, ptr %l101, !tbaa !21
  br i1 %t307, label %bb62, label %bb63
bb62:
  store %olang.scope zeroinitializer, ptr %s8
  %t308 = load ptr, ptr %l1, !tbaa !29
  store ptr %t308, ptr %l106, !tbaa !29
  %t309 = load ptr, ptr %l106, !tbaa !29
  %t310 = getelementptr %"compiler/bindgen:cparse", ptr %t309, i32 0, i32 2
  %t311 = load i64, ptr %t310, !tbaa !24
  %t313 = add i64 %t311, 1
  %t315 = load ptr, ptr %l106, !tbaa !29
  %t316 = getelementptr %"compiler/bindgen:cparse", ptr %t315, i32 0, i32 2
  store i64 %t313, ptr %t316, !tbaa !24
  %t317 = load ptr, ptr %l0, !tbaa !29
  store ptr %t317, ptr %l109, !tbaa !29
  %t318 = load ptr, ptr %l0, !tbaa !29
  %t319 = load ptr, ptr %l1, !tbaa !29
  %t322 = call { i32, %"compiler/bindgen:cx" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecUnary(ptr %v0, ptr %v1, ptr %v0, ptr %t318, ptr %t319)
  %t323 = extractvalue { i32, %"compiler/bindgen:cx" } %t322, 1
  %t324 = extractvalue { i32, %"compiler/bindgen:cx" } %t322, 0
  store i32 %t324, ptr %l114
  %t325 = icmp ne i32 %t324, 0
  br i1 %t325, label %bb65, label %ok.326, !prof !99
ok.326:
  store %"compiler/bindgen:cx" %t323, ptr %l113
  br label %bb64
bb63:
  br label %bb71
bb64:
  %t327 = load %"compiler/bindgen:cx", ptr %l113
  store %"compiler/bindgen:cx" %t327, ptr %l110
  br label %bb66
bb65:
  %t328 = load i32, ptr %l114, !tbaa !23
  %t329 = lshr i32 %t328, 16
  %t330 = and i32 %t328, 65535
  %t331 = icmp eq i32 %t329, 1
  %t332 = select i1 %t331, i32 1, i32 0
  %t333 = icmp eq i32 %t328, 0
  %t334 = shl i32 %t332, 16
  %t335 = or i32 %t334, %t330
  %t336 = select i1 %t333, i32 0, i32 %t335
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  %t338 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, i32 %t336, 0
  store { i32, %"compiler/bindgen:cx" } %t338, ptr %rv
  br label %ret
bb66:
  %t339 = load ptr, ptr %l109, !tbaa !29
  %t340 = load %"compiler/bindgen:cx", ptr %l110
  %t341 = call %"compiler/bindgen:cx" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecNum(ptr %v0, ptr %v0, ptr %s8, ptr %t339, %"compiler/bindgen:cx" %t340)
  store %"compiler/bindgen:cx" %t341, ptr %l116
  br label %bb67
bb67:
  %t342 = load %"compiler/bindgen:cx", ptr %l116
  store %"compiler/bindgen:cx" %t342, ptr %l8
  %t343 = ptrtoint ptr %v2 to i64
  store i64 %t343, ptr %l117, !tbaa !24
  %t344 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acx_2e0
  br i1 %t344, label %bb68, label %bb69
bb68:
  %t346 = call ptr @__olang_region_make(ptr %v2)
  %t347 = ptrtoint ptr %t346 to i64
  store i64 %t347, ptr %l117, !tbaa !24
  br label %bb69
bb69:
  %t348 = load ptr, ptr %lp7
  %t349 = load { i64, ptr }, ptr %t348, !tbaa !27
  %t350 = getelementptr %"compiler/bindgen:cx", ptr %l8, i32 0, i32 0
  %t351 = load { i64, ptr }, ptr %t350, !tbaa !27
  %t353 = extractvalue { i64, ptr } %t349, 1
  %t354 = extractvalue { i64, ptr } %t349, 0
  %t355 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d39, i32 0, i32 1) }, 1
  %t356 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d39, i32 0, i32 1) }, 0
  %t357 = add i64 %t354, %t356
  %t359 = extractvalue { i64, ptr } %t351, 1
  %t360 = extractvalue { i64, ptr } %t351, 0
  %t361 = add i64 %t357, %t360
  %t362 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d40, i32 0, i32 1) }, 1
  %t363 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d40, i32 0, i32 1) }, 0
  %t364 = add i64 %t361, %t363
  %t365 = load i64, ptr %l117
  %t366 = inttoptr i64 %t365 to ptr
  %t367 = call ptr @__olang_scope_alloc(ptr %t366, i64 %t364)
  call void @olang_textcopy(ptr %t367, ptr %t353, i64 %t354)
  %t368 = getelementptr i8, ptr %t367, i64 %t354
  call void @olang_textcopy(ptr %t368, ptr %t355, i64 %t356)
  %t369 = getelementptr i8, ptr %t368, i64 %t356
  call void @olang_textcopy(ptr %t369, ptr %t359, i64 %t360)
  %t370 = getelementptr i8, ptr %t369, i64 %t360
  call void @olang_textcopy(ptr %t370, ptr %t362, i64 %t363)
  %t371 = insertvalue { i64, ptr } undef, i64 %t364, 0
  %t372 = insertvalue { i64, ptr } %t371, ptr %t367, 1
  %t374 = load i64, ptr %l117
  %t375 = inttoptr i64 %t374 to ptr
  %t376 = extractvalue { i64, ptr } %t372, 0
  %t377 = extractvalue { i64, ptr } %t372, 1
  %t378 = mul i64 %t376, 1
  %t379 = call ptr @__olang_scope_alloc(ptr %t375, i64 %t378)
  call void @llvm.memcpy.p0.p0.i64(ptr %t379, ptr %t377, i64 %t378, i1 false)
  %t380 = insertvalue { i64, ptr } undef, i64 %t376, 0
  %t381 = insertvalue { i64, ptr } %t380, ptr %t379, 1
  %t382 = load i64, ptr @G_2ecompiler_2fbindgen_2eKType, !tbaa !24
  %t383 = load ptr, ptr %lp7
  %t384 = load { i64, ptr }, ptr %t383, !tbaa !27
  %t388 = call %"compiler/bindgen:cx" @compiler_2fbindgen_3acx_2ector(ptr %v2, ptr %v2, ptr %v2, { i64, ptr } %t381, i64 %t382, i64 -1, { i64, ptr } %t384)
  store %"compiler/bindgen:cx" %t388, ptr %l125
  br label %bb70
bb70:
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  %t389 = load %"compiler/bindgen:cx", ptr %l125
  %t390 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, %"compiler/bindgen:cx" %t389, 1
  store { i32, %"compiler/bindgen:cx" } %t390, ptr %rv
  br label %ret
bb71:
  %t391 = load ptr, ptr %l1, !tbaa !29
  %t392 = load i64, ptr %l5, !tbaa !24
  %t395 = getelementptr %"compiler/bindgen:cparse", ptr %t391, i32 0, i32 2
  store i64 %t392, ptr %t395, !tbaa !24
  call void @__olang_scope_close(ptr %s6)
  br label %bb72
bb72:
  %t396 = load ptr, ptr %l0, !tbaa !29
  %t397 = load ptr, ptr %l1, !tbaa !29
  %t400 = call { i32, %"compiler/bindgen:cx" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecPrimary(ptr %v0, ptr %v1, ptr %v2, ptr %t396, ptr %t397)
  %t401 = extractvalue { i32, %"compiler/bindgen:cx" } %t400, 1
  %t402 = extractvalue { i32, %"compiler/bindgen:cx" } %t400, 0
  store i32 %t402, ptr %l132
  %t403 = icmp ne i32 %t402, 0
  br i1 %t403, label %bb74, label %ok.404, !prof !99
ok.404:
  store %"compiler/bindgen:cx" %t401, ptr %l131
  br label %bb73
bb73:
  %t405 = load %"compiler/bindgen:cx", ptr %l131
  store %"compiler/bindgen:cx" %t405, ptr %l128
  br label %bb75
bb74:
  %t406 = load i32, ptr %l132, !tbaa !23
  %t407 = lshr i32 %t406, 16
  %t408 = and i32 %t406, 65535
  %t409 = icmp eq i32 %t407, 1
  %t410 = select i1 %t409, i32 1, i32 0
  %t411 = icmp eq i32 %t406, 0
  %t412 = shl i32 %t410, 16
  %t413 = or i32 %t412, %t408
  %t414 = select i1 %t411, i32 0, i32 %t413
  call void @__olang_scope_close(ptr %s0)
  %t416 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, i32 %t414, 0
  store { i32, %"compiler/bindgen:cx" } %t416, ptr %rv
  br label %ret
bb75:
  call void @__olang_scope_close(ptr %s0)
  %t417 = load %"compiler/bindgen:cx", ptr %l128
  %t418 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, %"compiler/bindgen:cx" %t417, 1
  store { i32, %"compiler/bindgen:cx" } %t418, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"compiler/bindgen:cx" }, ptr %rv
  ret { i32, %"compiler/bindgen:cx" } %rr
}

define dso_local void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2econstant(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l4 = alloca { i64, ptr }
  %l6 = alloca i1
  %l8 = alloca i1
  %l13 = alloca i1
  %l16 = alloca i1
  %l19 = alloca { i64, ptr }
  %l21 = alloca ptr
  %l22 = alloca i64
  %l30 = alloca ptr
  %l31 = alloca i64
  %l37 = alloca ptr
  %l38 = alloca i64
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = call i1 @compiler_2fbindgen_2eusable(ptr %v1, { i64, ptr } %t1)
  store i1 %t3, ptr %l6
  br label %bb1
bb1:
  %t4 = load i1, ptr %l6, !tbaa !21
  %t5 = xor i1 %t4, true
  br i1 %t5, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb5
bb3:
  %t7 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/bindgen:gen", ptr %t9, i32 0, i32 10
  %t15 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9b83f66eba65594537030636cb0b52b7(ptr %v0, ptr %v1, ptr %t11, { i64, ptr } %t7)
  store i1 %t15, ptr %l13
  br label %bb4
bb4:
  %t16 = load i1, ptr %l13, !tbaa !21
  store i1 %t16, ptr %l8, !tbaa !21
  br label %bb5
bb5:
  %t17 = load i1, ptr %l8, !tbaa !21
  br i1 %t17, label %bb6, label %bb7
bb6:
  br label %ret
bb7:
  br label %bb8
bb8:
  %t18 = load i64, ptr %l2, !tbaa !24
  %t20 = icmp sge i64 %t18, -2147483648
  br i1 %t20, label %bb9, label %bb10
bb9:
  %t22 = load i64, ptr %l2, !tbaa !24
  %t24 = icmp sle i64 %t22, 2147483647
  store i1 %t24, ptr %l16, !tbaa !21
  br label %bb11
bb10:
  store i1 false, ptr %l16, !tbaa !21
  br label %bb11
bb11:
  %t26 = load i1, ptr %l16, !tbaa !21
  br i1 %t26, label %bb12, label %bb13
bb12:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d41, i32 0, i32 1) }, ptr %l19, !tbaa !27
  br label %bb14
bb13:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d42, i32 0, i32 1) }, ptr %l19, !tbaa !27
  br label %bb14
bb14:
  %t27 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t27, ptr %l4, !tbaa !27
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/bindgen:gen", ptr %t28, i32 0, i32 9
  store ptr %t30, ptr %l21, !tbaa !29
  %t31 = ptrtoint ptr %v0 to i64
  store i64 %t31, ptr %l22, !tbaa !24
  %t32 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t32, label %bb15, label %bb16
bb15:
  %t34 = call ptr @__olang_region_make(ptr %v0)
  %t35 = ptrtoint ptr %t34 to i64
  store i64 %t35, ptr %l22, !tbaa !24
  br label %bb16
bb16:
  %t36 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t37 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t38 = load i64, ptr %l2, !tbaa !24
  %t40 = extractvalue { i64, ptr } %t36, 1
  %t41 = extractvalue { i64, ptr } %t36, 0
  %t42 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d43, i32 0, i32 1) }, 1
  %t43 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d43, i32 0, i32 1) }, 0
  %t44 = add i64 %t41, %t43
  %t46 = extractvalue { i64, ptr } %t37, 1
  %t47 = extractvalue { i64, ptr } %t37, 0
  %t48 = add i64 %t44, %t47
  %t49 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d44, i32 0, i32 1) }, 1
  %t50 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d44, i32 0, i32 1) }, 0
  %t51 = add i64 %t48, %t50
  %t53 = call i64 @__olang_fmt_i64(ptr null, i64 %t38)
  %t54 = add i64 %t51, %t53
  %t55 = load i64, ptr %l22
  %t56 = inttoptr i64 %t55 to ptr
  %t57 = call ptr @__olang_scope_alloc(ptr %t56, i64 %t54)
  call void @olang_textcopy(ptr %t57, ptr %t40, i64 %t41)
  %t58 = getelementptr i8, ptr %t57, i64 %t41
  call void @olang_textcopy(ptr %t58, ptr %t42, i64 %t43)
  %t59 = getelementptr i8, ptr %t58, i64 %t43
  call void @olang_textcopy(ptr %t59, ptr %t46, i64 %t47)
  %t60 = getelementptr i8, ptr %t59, i64 %t47
  call void @olang_textcopy(ptr %t60, ptr %t49, i64 %t50)
  %t61 = getelementptr i8, ptr %t60, i64 %t50
  %t62 = call i64 @__olang_fmt_i64(ptr %t61, i64 %t38)
  %t63 = insertvalue { i64, ptr } undef, i64 %t54, 0
  %t64 = insertvalue { i64, ptr } %t63, ptr %t57, 1
  %t66 = load i64, ptr %l22
  %t67 = inttoptr i64 %t66 to ptr
  %t68 = extractvalue { i64, ptr } %t64, 0
  %t69 = extractvalue { i64, ptr } %t64, 1
  %t70 = mul i64 %t68, 1
  %t71 = call ptr @__olang_scope_alloc(ptr %t67, i64 %t70)
  call void @llvm.memcpy.p0.p0.i64(ptr %t71, ptr %t69, i64 %t70, i1 false)
  %t72 = insertvalue { i64, ptr } undef, i64 %t68, 0
  %t73 = insertvalue { i64, ptr } %t72, ptr %t71, 1
  %t74 = load ptr, ptr %l21, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t74, { i64, ptr } %t73)
  br label %bb17
bb17:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/bindgen:gen", ptr %t76, i32 0, i32 10
  store ptr %t78, ptr %l30, !tbaa !29
  %t79 = ptrtoint ptr %v0 to i64
  store i64 %t79, ptr %l31, !tbaa !24
  %t80 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2e0
  br i1 %t80, label %bb18, label %bb19
bb18:
  %t82 = call ptr @__olang_region_make(ptr %v0)
  %t83 = ptrtoint ptr %t82 to i64
  store i64 %t83, ptr %l31, !tbaa !24
  br label %bb19
bb19:
  %t84 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t86 = extractvalue { i64, ptr } %t84, 1
  %t87 = extractvalue { i64, ptr } %t84, 0
  %t88 = load i64, ptr %l31
  %t89 = inttoptr i64 %t88 to ptr
  %t90 = call ptr @__olang_scope_alloc(ptr %t89, i64 %t87)
  call void @olang_textcopy(ptr %t90, ptr %t86, i64 %t87)
  %t91 = insertvalue { i64, ptr } undef, i64 %t87, 0
  %t92 = insertvalue { i64, ptr } %t91, ptr %t90, 1
  %t94 = load i64, ptr %l31
  %t95 = inttoptr i64 %t94 to ptr
  %t96 = extractvalue { i64, ptr } %t92, 0
  %t97 = extractvalue { i64, ptr } %t92, 1
  %t98 = mul i64 %t96, 1
  %t99 = call ptr @__olang_scope_alloc(ptr %t95, i64 %t98)
  call void @llvm.memcpy.p0.p0.i64(ptr %t99, ptr %t97, i64 %t98, i1 false)
  %t100 = insertvalue { i64, ptr } undef, i64 %t96, 0
  %t101 = insertvalue { i64, ptr } %t100, ptr %t99, 1
  %t102 = load ptr, ptr %l30, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v0, ptr %v0, ptr %t102, { i64, ptr } %t101, i64 0)
  br label %bb20
bb20:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/bindgen:gen", ptr %t104, i32 0, i32 21
  store ptr %t106, ptr %l37, !tbaa !29
  %t107 = ptrtoint ptr %v0 to i64
  store i64 %t107, ptr %l38, !tbaa !24
  %t108 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2e0
  br i1 %t108, label %bb21, label %bb22
bb21:
  %t110 = call ptr @__olang_region_make(ptr %v0)
  %t111 = ptrtoint ptr %t110 to i64
  store i64 %t111, ptr %l38, !tbaa !24
  br label %bb22
bb22:
  %t112 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t114 = extractvalue { i64, ptr } %t112, 1
  %t115 = extractvalue { i64, ptr } %t112, 0
  %t116 = load i64, ptr %l38
  %t117 = inttoptr i64 %t116 to ptr
  %t118 = call ptr @__olang_scope_alloc(ptr %t117, i64 %t115)
  call void @olang_textcopy(ptr %t118, ptr %t114, i64 %t115)
  %t119 = insertvalue { i64, ptr } undef, i64 %t115, 0
  %t120 = insertvalue { i64, ptr } %t119, ptr %t118, 1
  %t122 = load i64, ptr %l38
  %t123 = inttoptr i64 %t122 to ptr
  %t124 = extractvalue { i64, ptr } %t120, 0
  %t125 = extractvalue { i64, ptr } %t120, 1
  %t126 = mul i64 %t124, 1
  %t127 = call ptr @__olang_scope_alloc(ptr %t123, i64 %t126)
  call void @llvm.memcpy.p0.p0.i64(ptr %t127, ptr %t125, i64 %t126, i1 false)
  %t128 = insertvalue { i64, ptr } undef, i64 %t124, 0
  %t129 = insertvalue { i64, ptr } %t128, ptr %t127, 1
  %t130 = load ptr, ptr %l37, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v0, ptr %v0, ptr %t130, { i64, ptr } %t129, i64 0)
  br label %bb23
bb23:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2edeclarator(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i1 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i1
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca i1
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca ptr
  %l15 = alloca i64
  %l17 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l31 = alloca { i64, ptr }
  %l33 = alloca i1
  %l39 = alloca i64
  %l40 = alloca ptr
  %l44 = alloca { i64, ptr }
  %l46 = alloca i1
  %l47 = alloca i1
  %l49 = alloca { i64, ptr }
  %l51 = alloca i1
  %l52 = alloca i1
  %l54 = alloca { i64, ptr }
  %l56 = alloca i1
  %l57 = alloca i1
  %l59 = alloca { i64, ptr }
  %l61 = alloca i1
  %l64 = alloca { i64, ptr }
  %l66 = alloca i1
  %l67 = alloca ptr
  %l71 = alloca { i64, ptr }
  %l73 = alloca i1
  %l74 = alloca i1
  %l76 = alloca { i64, ptr }
  %l78 = alloca i1
  %l79 = alloca i1
  %l81 = alloca { i64, ptr }
  %l83 = alloca i1
  %l84 = alloca i1
  %l86 = alloca { i64, ptr }
  %l88 = alloca i1
  %l100 = alloca { i64, ptr }
  %l102 = alloca i1
  %l106 = alloca { i64, ptr }
  %l108 = alloca i1
  %l113 = alloca ptr
  %l116 = alloca ptr
  %l119 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l121 = alloca { i64, ptr }
  %l123 = alloca i1
  %l124 = alloca ptr
  %l127 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l134 = alloca i1
  %l136 = alloca { i64, ptr }
  %l138 = alloca i1
  %l142 = alloca { i64, ptr }
  %l144 = alloca i1
  %l145 = alloca ptr
  %l151 = alloca i64
  %l155 = alloca %"compiler/bindgen:ctype"
  %l158 = alloca i1
  %l160 = alloca i64
  %l162 = alloca i1
  %l164 = alloca { i64, ptr }
  %l166 = alloca i1
  %l171 = alloca { i64, ptr }
  %l173 = alloca i1
  %l174 = alloca ptr
  %l177 = alloca ptr
  %l182 = alloca i64
  %l184 = alloca i64
  %l186 = alloca i64
  %l191 = alloca i64
  %l197 = alloca ptr
  %l198 = alloca i32
  %l200 = alloca { i64, ptr }
  %l201 = alloca i64
  %l203 = alloca i64
  %l204 = alloca i64
  %l209 = alloca ptr
  %l214 = alloca { i64, ptr }
  %l216 = alloca i1
  %l217 = alloca ptr
  %l221 = alloca { i64, ptr }
  %l223 = alloca i1
  %l225 = alloca i64
  %l227 = alloca { i64, ptr }
  %l228 = alloca { i64, ptr }
  %l229 = alloca i64
  %l230 = alloca i32
  %l231 = alloca i64
  %l232 = alloca i32
  %l233 = alloca ptr
  %l236 = alloca ptr
  %l242 = alloca i64
  %l246 = alloca i64
  %l249 = alloca i64
  %l267 = alloca ptr
  %l268 = alloca i32
  %l269 = alloca i64
  %l270 = alloca ptr
  %l272 = alloca i64
  %l276 = alloca i64
  %l277 = alloca i64
  %l290 = alloca i64
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store i64 %a2, ptr %l5, !tbaa !24
  store i1 %a3, ptr %l6, !tbaa !21
  br label %bb1
bb1:
  store %olang.scope zeroinitializer, ptr %s1
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t7 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3actp_2eat(ptr %v1, ptr %s1, ptr %t5, i64 0)
  store { i64, ptr } %t7, ptr %l31
  br label %bb2
bb2:
  %t8 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t8, 0
  %t10 = extractvalue { i64, ptr } %t8, 1
  %t11 = mul i64 %t9, 1
  %t12 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t11)
  call void @llvm.memcpy.p0.p0.i64(ptr %t12, ptr %t10, i64 %t11, i1 false)
  %t13 = insertvalue { i64, ptr } undef, i64 %t9, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr %t12, 1
  %t16 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s1, ptr %s1, { i64, ptr } %t14, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d45, i32 0, i32 1) })
  store i1 %t16, ptr %l33
  br label %bb3
bb3:
  %t17 = load i1, ptr %l33, !tbaa !21
  %t18 = xor i1 %t17, true
  br i1 %t18, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s1)
  br label %bb34
bb5:
  br label %bb6
bb6:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load i64, ptr %l5, !tbaa !24
  %t22 = load i1, ptr %l6, !tbaa !21
  %t27 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enode(ptr %v0, ptr %v0, ptr %t20, i32 3, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d46, i32 0, i32 1) }, i64 %t21, i1 %t22, i64 0)
  store i64 %t27, ptr %l39
  br label %bb7
bb7:
  %t28 = load i64, ptr %l39, !tbaa !24
  store i64 %t28, ptr %l5, !tbaa !24
  %t29 = load ptr, ptr %l1, !tbaa !29
  store ptr %t29, ptr %l40, !tbaa !29
  %t30 = load ptr, ptr %l40, !tbaa !29
  %t31 = getelementptr %"compiler/bindgen:ctp", ptr %t30, i32 0, i32 1
  %t32 = load i64, ptr %t31, !tbaa !24
  %t34 = add i64 %t32, 1
  %t36 = load ptr, ptr %l40, !tbaa !29
  %t37 = getelementptr %"compiler/bindgen:ctp", ptr %t36, i32 0, i32 1
  store i64 %t34, ptr %t37, !tbaa !24
  store i1 false, ptr %l6, !tbaa !21
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t38 = load ptr, ptr %l1, !tbaa !29
  %t40 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3actp_2eat(ptr %v1, ptr %s2, ptr %t38, i64 0)
  store { i64, ptr } %t40, ptr %l44
  br label %bb9
bb9:
  %t41 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t42 = extractvalue { i64, ptr } %t41, 0
  %t43 = extractvalue { i64, ptr } %t41, 1
  %t44 = mul i64 %t42, 1
  %t45 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t44)
  call void @llvm.memcpy.p0.p0.i64(ptr %t45, ptr %t43, i64 %t44, i1 false)
  %t46 = insertvalue { i64, ptr } undef, i64 %t42, 0
  %t47 = insertvalue { i64, ptr } %t46, ptr %t45, 1
  %t49 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t47, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d47, i32 0, i32 1) })
  store i1 %t49, ptr %l46
  br label %bb10
bb10:
  %t50 = load i1, ptr %l46, !tbaa !21
  br i1 %t50, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l47, !tbaa !21
  br label %bb15
bb12:
  %t51 = load ptr, ptr %l1, !tbaa !29
  %t53 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3actp_2eat(ptr %v1, ptr %s2, ptr %t51, i64 0)
  store { i64, ptr } %t53, ptr %l49
  br label %bb13
bb13:
  %t54 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t55 = extractvalue { i64, ptr } %t54, 0
  %t56 = extractvalue { i64, ptr } %t54, 1
  %t57 = mul i64 %t55, 1
  %t58 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t57)
  call void @llvm.memcpy.p0.p0.i64(ptr %t58, ptr %t56, i64 %t57, i1 false)
  %t59 = insertvalue { i64, ptr } undef, i64 %t55, 0
  %t60 = insertvalue { i64, ptr } %t59, ptr %t58, 1
  %t62 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t60, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d48, i32 0, i32 1) })
  store i1 %t62, ptr %l51
  br label %bb14
bb14:
  %t63 = load i1, ptr %l51, !tbaa !21
  store i1 %t63, ptr %l47, !tbaa !21
  br label %bb15
bb15:
  %t64 = load i1, ptr %l47, !tbaa !21
  br i1 %t64, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l52, !tbaa !21
  br label %bb20
bb17:
  %t65 = load ptr, ptr %l1, !tbaa !29
  %t67 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3actp_2eat(ptr %v1, ptr %s2, ptr %t65, i64 0)
  store { i64, ptr } %t67, ptr %l54
  br label %bb18
bb18:
  %t68 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t69 = extractvalue { i64, ptr } %t68, 0
  %t70 = extractvalue { i64, ptr } %t68, 1
  %t71 = mul i64 %t69, 1
  %t72 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t71)
  call void @llvm.memcpy.p0.p0.i64(ptr %t72, ptr %t70, i64 %t71, i1 false)
  %t73 = insertvalue { i64, ptr } undef, i64 %t69, 0
  %t74 = insertvalue { i64, ptr } %t73, ptr %t72, 1
  %t76 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t74, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d49, i32 0, i32 1) })
  store i1 %t76, ptr %l56
  br label %bb19
bb19:
  %t77 = load i1, ptr %l56, !tbaa !21
  store i1 %t77, ptr %l52, !tbaa !21
  br label %bb20
bb20:
  %t78 = load i1, ptr %l52, !tbaa !21
  br i1 %t78, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l57, !tbaa !21
  br label %bb25
bb22:
  %t79 = load ptr, ptr %l1, !tbaa !29
  %t81 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3actp_2eat(ptr %v1, ptr %s2, ptr %t79, i64 0)
  store { i64, ptr } %t81, ptr %l59
  br label %bb23
bb23:
  %t82 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t83 = extractvalue { i64, ptr } %t82, 0
  %t84 = extractvalue { i64, ptr } %t82, 1
  %t85 = mul i64 %t83, 1
  %t86 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t85)
  call void @llvm.memcpy.p0.p0.i64(ptr %t86, ptr %t84, i64 %t85, i1 false)
  %t87 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t88 = insertvalue { i64, ptr } %t87, ptr %t86, 1
  %t90 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t88, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d50, i32 0, i32 1) })
  store i1 %t90, ptr %l61
  br label %bb24
bb24:
  %t91 = load i1, ptr %l61, !tbaa !21
  store i1 %t91, ptr %l57, !tbaa !21
  br label %bb25
bb25:
  %t92 = load i1, ptr %l57, !tbaa !21
  %t93 = xor i1 %t92, true
  br i1 %t93, label %bb26, label %bb27
bb26:
  call void @__olang_scope_close(ptr %s2)
  br label %bb32
bb27:
  br label %bb28
bb28:
  %t95 = load ptr, ptr %l1, !tbaa !29
  %t97 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3actp_2eat(ptr %v1, ptr %s2, ptr %t95, i64 0)
  store { i64, ptr } %t97, ptr %l64
  br label %bb29
bb29:
  %t98 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t99 = extractvalue { i64, ptr } %t98, 0
  %t100 = extractvalue { i64, ptr } %t98, 1
  %t101 = mul i64 %t99, 1
  %t102 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t101)
  call void @llvm.memcpy.p0.p0.i64(ptr %t102, ptr %t100, i64 %t101, i1 false)
  %t103 = insertvalue { i64, ptr } undef, i64 %t99, 0
  %t104 = insertvalue { i64, ptr } %t103, ptr %t102, 1
  %t106 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t104, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d51, i32 0, i32 1) })
  store i1 %t106, ptr %l66
  br label %bb30
bb30:
  %t107 = load i1, ptr %l66, !tbaa !21
  store i1 %t107, ptr %l6, !tbaa !21
  %t108 = load ptr, ptr %l1, !tbaa !29
  store ptr %t108, ptr %l67, !tbaa !29
  %t109 = load ptr, ptr %l67, !tbaa !29
  %t110 = getelementptr %"compiler/bindgen:ctp", ptr %t109, i32 0, i32 1
  %t111 = load i64, ptr %t110, !tbaa !24
  %t113 = add i64 %t111, 1
  %t115 = load ptr, ptr %l67, !tbaa !29
  %t116 = getelementptr %"compiler/bindgen:ctp", ptr %t115, i32 0, i32 1
  store i64 %t113, ptr %t116, !tbaa !24
  call void @__olang_scope_close(ptr %s2)
  br label %bb31
bb31:
  br label %bb8
bb32:
  call void @__olang_scope_close(ptr %s1)
  br label %bb33
bb33:
  br label %bb1
bb34:
  store i64 -1, ptr %l7, !tbaa !24
  %t117 = load ptr, ptr %l1, !tbaa !29
  %t119 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3actp_2eat(ptr %v1, ptr %s0, ptr %t117, i64 0)
  store { i64, ptr } %t119, ptr %l71
  br label %bb35
bb35:
  %t120 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t121 = extractvalue { i64, ptr } %t120, 0
  %t122 = extractvalue { i64, ptr } %t120, 1
  %t123 = mul i64 %t121, 1
  %t124 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t123)
  call void @llvm.memcpy.p0.p0.i64(ptr %t124, ptr %t122, i64 %t123, i1 false)
  %t125 = insertvalue { i64, ptr } undef, i64 %t121, 0
  %t126 = insertvalue { i64, ptr } %t125, ptr %t124, 1
  %t128 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t126, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d52, i32 0, i32 1) })
  store i1 %t128, ptr %l73
  br label %bb36
bb36:
  %t129 = load i1, ptr %l73, !tbaa !21
  br i1 %t129, label %bb37, label %bb38
bb37:
  %t130 = load ptr, ptr %l1, !tbaa !29
  %t132 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3actp_2eat(ptr %v1, ptr %s0, ptr %t130, i64 1)
  store { i64, ptr } %t132, ptr %l76
  br label %bb39
bb38:
  store i1 false, ptr %l74, !tbaa !21
  br label %bb51
bb39:
  %t133 = load { i64, ptr }, ptr %l76, !tbaa !27
  %t134 = extractvalue { i64, ptr } %t133, 0
  %t135 = extractvalue { i64, ptr } %t133, 1
  %t136 = mul i64 %t134, 1
  %t137 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t136)
  call void @llvm.memcpy.p0.p0.i64(ptr %t137, ptr %t135, i64 %t136, i1 false)
  %t138 = insertvalue { i64, ptr } undef, i64 %t134, 0
  %t139 = insertvalue { i64, ptr } %t138, ptr %t137, 1
  %t141 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t139, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d53, i32 0, i32 1) })
  store i1 %t141, ptr %l78
  br label %bb40
bb40:
  %t142 = load i1, ptr %l78, !tbaa !21
  br i1 %t142, label %bb41, label %bb42
bb41:
  store i1 true, ptr %l79, !tbaa !21
  br label %bb45
bb42:
  %t143 = load ptr, ptr %l1, !tbaa !29
  %t145 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3actp_2eat(ptr %v1, ptr %s0, ptr %t143, i64 1)
  store { i64, ptr } %t145, ptr %l81
  br label %bb43
bb43:
  %t146 = load { i64, ptr }, ptr %l81, !tbaa !27
  %t147 = extractvalue { i64, ptr } %t146, 0
  %t148 = extractvalue { i64, ptr } %t146, 1
  %t149 = mul i64 %t147, 1
  %t150 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t149)
  call void @llvm.memcpy.p0.p0.i64(ptr %t150, ptr %t148, i64 %t149, i1 false)
  %t151 = insertvalue { i64, ptr } undef, i64 %t147, 0
  %t152 = insertvalue { i64, ptr } %t151, ptr %t150, 1
  %t154 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t152, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d54, i32 0, i32 1) })
  store i1 %t154, ptr %l83
  br label %bb44
bb44:
  %t155 = load i1, ptr %l83, !tbaa !21
  store i1 %t155, ptr %l79, !tbaa !21
  br label %bb45
bb45:
  %t156 = load i1, ptr %l79, !tbaa !21
  br i1 %t156, label %bb46, label %bb47
bb46:
  store i1 true, ptr %l84, !tbaa !21
  br label %bb50
bb47:
  %t157 = load ptr, ptr %l1, !tbaa !29
  %t159 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3actp_2eat(ptr %v1, ptr %s0, ptr %t157, i64 1)
  store { i64, ptr } %t159, ptr %l86
  br label %bb48
bb48:
  %t160 = load { i64, ptr }, ptr %l86, !tbaa !27
  %t161 = extractvalue { i64, ptr } %t160, 0
  %t162 = extractvalue { i64, ptr } %t160, 1
  %t163 = mul i64 %t161, 1
  %t164 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t163)
  call void @llvm.memcpy.p0.p0.i64(ptr %t164, ptr %t162, i64 %t163, i1 false)
  %t165 = insertvalue { i64, ptr } undef, i64 %t161, 0
  %t166 = insertvalue { i64, ptr } %t165, ptr %t164, 1
  %t168 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t166, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d55, i32 0, i32 1) })
  store i1 %t168, ptr %l88
  br label %bb49
bb49:
  %t169 = load i1, ptr %l88, !tbaa !21
  store i1 %t169, ptr %l84, !tbaa !21
  br label %bb50
bb50:
  %t170 = load i1, ptr %l84, !tbaa !21
  store i1 %t170, ptr %l74, !tbaa !21
  br label %bb51
bb51:
  %t171 = load i1, ptr %l74, !tbaa !21
  br i1 %t171, label %bb52, label %bb53
bb52:
  %t172 = load ptr, ptr %l1, !tbaa !29
  %t174 = getelementptr %"compiler/bindgen:ctp", ptr %t172, i32 0, i32 1
  %t175 = load i64, ptr %t174, !tbaa !24
  %t177 = add i64 %t175, 1
  store i64 %t177, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb54
bb53:
  br label %bb73
bb54:
  store %olang.scope zeroinitializer, ptr %s4
  %t179 = load ptr, ptr %l1, !tbaa !29
  %t181 = getelementptr %"compiler/bindgen:ctp", ptr %t179, i32 0, i32 1
  %t182 = load i64, ptr %t181, !tbaa !24
  %t183 = load ptr, ptr %l1, !tbaa !29
  %t185 = getelementptr %"compiler/bindgen:ctp", ptr %t183, i32 0, i32 0
  %t186 = load { i64, ptr }, ptr %t185, !tbaa !27
  %t188 = extractvalue { i64, ptr } %t186, 0
  %t191 = icmp slt i64 %t182, %t188
  %t193 = xor i1 %t191, true
  br i1 %t193, label %bb55, label %bb56
bb55:
  call void @__olang_scope_close(ptr %s4)
  br label %bb72
bb56:
  br label %bb57
bb57:
  %t195 = load ptr, ptr %l1, !tbaa !29
  %t197 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3actp_2eat(ptr %v1, ptr %s4, ptr %t195, i64 0)
  store { i64, ptr } %t197, ptr %l100
  br label %bb58
bb58:
  %t198 = load { i64, ptr }, ptr %l100, !tbaa !27
  %t199 = extractvalue { i64, ptr } %t198, 0
  %t200 = extractvalue { i64, ptr } %t198, 1
  %t201 = mul i64 %t199, 1
  %t202 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t201)
  call void @llvm.memcpy.p0.p0.i64(ptr %t202, ptr %t200, i64 %t201, i1 false)
  %t203 = insertvalue { i64, ptr } undef, i64 %t199, 0
  %t204 = insertvalue { i64, ptr } %t203, ptr %t202, 1
  %t206 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s4, ptr %s4, { i64, ptr } %t204, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d56, i32 0, i32 1) })
  store i1 %t206, ptr %l102
  br label %bb59
bb59:
  %t207 = load i1, ptr %l102, !tbaa !21
  br i1 %t207, label %bb60, label %bb61
bb60:
  %t208 = load i64, ptr %l8, !tbaa !24
  %t210 = add i64 %t208, 1
  store i64 %t210, ptr %l8, !tbaa !24
  br label %bb62
bb61:
  br label %bb62
bb62:
  %t212 = load ptr, ptr %l1, !tbaa !29
  %t214 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3actp_2eat(ptr %v1, ptr %s4, ptr %t212, i64 0)
  store { i64, ptr } %t214, ptr %l106
  br label %bb63
bb63:
  %t215 = load { i64, ptr }, ptr %l106, !tbaa !27
  %t216 = extractvalue { i64, ptr } %t215, 0
  %t217 = extractvalue { i64, ptr } %t215, 1
  %t218 = mul i64 %t216, 1
  %t219 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t218)
  call void @llvm.memcpy.p0.p0.i64(ptr %t219, ptr %t217, i64 %t218, i1 false)
  %t220 = insertvalue { i64, ptr } undef, i64 %t216, 0
  %t221 = insertvalue { i64, ptr } %t220, ptr %t219, 1
  %t223 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s4, ptr %s4, { i64, ptr } %t221, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d57, i32 0, i32 1) })
  store i1 %t223, ptr %l108
  br label %bb64
bb64:
  %t224 = load i1, ptr %l108, !tbaa !21
  br i1 %t224, label %bb65, label %bb66
bb65:
  %t225 = load i64, ptr %l8, !tbaa !24
  %t227 = sub i64 %t225, 1
  store i64 %t227, ptr %l8, !tbaa !24
  %t229 = load i64, ptr %l8, !tbaa !24
  %t231 = icmp eq i64 %t229, 0
  br i1 %t231, label %bb67, label %bb68
bb66:
  br label %bb70
bb67:
  call void @__olang_scope_close(ptr %s4)
  br label %bb72
bb68:
  br label %bb69
bb69:
  br label %bb70
bb70:
  %t233 = load ptr, ptr %l1, !tbaa !29
  store ptr %t233, ptr %l113, !tbaa !29
  %t234 = load ptr, ptr %l113, !tbaa !29
  %t235 = getelementptr %"compiler/bindgen:ctp", ptr %t234, i32 0, i32 1
  %t236 = load i64, ptr %t235, !tbaa !24
  %t238 = add i64 %t236, 1
  %t240 = load ptr, ptr %l113, !tbaa !29
  %t241 = getelementptr %"compiler/bindgen:ctp", ptr %t240, i32 0, i32 1
  store i64 %t238, ptr %t241, !tbaa !24
  call void @__olang_scope_close(ptr %s4)
  br label %bb71
bb71:
  br label %bb54
bb72:
  %t242 = load ptr, ptr %l1, !tbaa !29
  store ptr %t242, ptr %l116, !tbaa !29
  %t243 = load ptr, ptr %l116, !tbaa !29
  %t244 = getelementptr %"compiler/bindgen:ctp", ptr %t243, i32 0, i32 1
  %t245 = load i64, ptr %t244, !tbaa !24
  %t247 = add i64 %t245, 1
  %t249 = load ptr, ptr %l116, !tbaa !29
  %t250 = getelementptr %"compiler/bindgen:ctp", ptr %t249, i32 0, i32 1
  store i64 %t247, ptr %t250, !tbaa !24
  br label %bb73
bb73:
  %t251 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t251, ptr %l119
  br label %bb74
bb74:
  %t252 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l119
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t252, ptr %l9
  br label %bb75
bb75:
  store %olang.scope zeroinitializer, ptr %s8
  %t253 = load ptr, ptr %l1, !tbaa !29
  %t255 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3actp_2eat(ptr %v1, ptr %s8, ptr %t253, i64 0)
  store { i64, ptr } %t255, ptr %l121
  br label %bb76
bb76:
  %t256 = load { i64, ptr }, ptr %l121, !tbaa !27
  %t257 = extractvalue { i64, ptr } %t256, 0
  %t258 = extractvalue { i64, ptr } %t256, 1
  %t259 = mul i64 %t257, 1
  %t260 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t259)
  call void @llvm.memcpy.p0.p0.i64(ptr %t260, ptr %t258, i64 %t259, i1 false)
  %t261 = insertvalue { i64, ptr } undef, i64 %t257, 0
  %t262 = insertvalue { i64, ptr } %t261, ptr %t260, 1
  %t264 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s8, ptr %s8, { i64, ptr } %t262, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d58, i32 0, i32 1) })
  store i1 %t264, ptr %l123
  br label %bb77
bb77:
  %t265 = load i1, ptr %l123, !tbaa !21
  br i1 %t265, label %bb78, label %bb79
bb78:
  store %olang.scope zeroinitializer, ptr %s9
  %t266 = load ptr, ptr %l1, !tbaa !29
  store ptr %t266, ptr %l124, !tbaa !29
  %t267 = load ptr, ptr %l124, !tbaa !29
  %t268 = getelementptr %"compiler/bindgen:ctp", ptr %t267, i32 0, i32 1
  %t269 = load i64, ptr %t268, !tbaa !24
  %t271 = add i64 %t269, 1
  %t273 = load ptr, ptr %l124, !tbaa !29
  %t274 = getelementptr %"compiler/bindgen:ctp", ptr %t273, i32 0, i32 1
  store i64 %t271, ptr %t274, !tbaa !24
  %t275 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s9, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t275, ptr %l127
  br label %bb80
bb79:
  store %olang.scope zeroinitializer, ptr %s18
  %t276 = load ptr, ptr %l1, !tbaa !29
  %t278 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3actp_2eat(ptr %v1, ptr %s18, ptr %t276, i64 0)
  store { i64, ptr } %t278, ptr %l214
  br label %bb133
bb80:
  %t279 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l127
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t279, ptr %l10
  store i1 false, ptr %l11, !tbaa !21
  br label %bb81
bb81:
  store %olang.scope zeroinitializer, ptr %s10
  %t280 = load ptr, ptr %l1, !tbaa !29
  %t282 = getelementptr %"compiler/bindgen:ctp", ptr %t280, i32 0, i32 1
  %t283 = load i64, ptr %t282, !tbaa !24
  %t284 = load ptr, ptr %l1, !tbaa !29
  %t286 = getelementptr %"compiler/bindgen:ctp", ptr %t284, i32 0, i32 0
  %t287 = load { i64, ptr }, ptr %t286, !tbaa !27
  %t289 = extractvalue { i64, ptr } %t287, 0
  %t292 = icmp slt i64 %t283, %t289
  br i1 %t292, label %bb82, label %bb83
bb82:
  %t294 = load ptr, ptr %l1, !tbaa !29
  %t296 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3actp_2eat(ptr %v1, ptr %s10, ptr %t294, i64 0)
  store { i64, ptr } %t296, ptr %l136
  br label %bb84
bb83:
  store i1 false, ptr %l134, !tbaa !21
  br label %bb86
bb84:
  %t297 = load { i64, ptr }, ptr %l136, !tbaa !27
  %t298 = extractvalue { i64, ptr } %t297, 0
  %t299 = extractvalue { i64, ptr } %t297, 1
  %t300 = mul i64 %t298, 1
  %t301 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t300)
  call void @llvm.memcpy.p0.p0.i64(ptr %t301, ptr %t299, i64 %t300, i1 false)
  %t302 = insertvalue { i64, ptr } undef, i64 %t298, 0
  %t303 = insertvalue { i64, ptr } %t302, ptr %t301, 1
  %t305 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s10, ptr %s10, { i64, ptr } %t303, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d59, i32 0, i32 1) })
  store i1 %t305, ptr %l138
  br label %bb85
bb85:
  %t306 = load i1, ptr %l138, !tbaa !21
  %t307 = xor i1 %t306, true
  store i1 %t307, ptr %l134, !tbaa !21
  br label %bb86
bb86:
  %t309 = load i1, ptr %l134, !tbaa !21
  %t310 = xor i1 %t309, true
  br i1 %t310, label %bb87, label %bb88
bb87:
  call void @__olang_scope_close(ptr %s10)
  br label %bb116
bb88:
  br label %bb89
bb89:
  %t312 = load ptr, ptr %l1, !tbaa !29
  %t314 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3actp_2eat(ptr %v1, ptr %s10, ptr %t312, i64 0)
  store { i64, ptr } %t314, ptr %l142
  br label %bb90
bb90:
  %t315 = load { i64, ptr }, ptr %l142, !tbaa !27
  %t316 = extractvalue { i64, ptr } %t315, 0
  %t317 = extractvalue { i64, ptr } %t315, 1
  %t318 = mul i64 %t316, 1
  %t319 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t318)
  call void @llvm.memcpy.p0.p0.i64(ptr %t319, ptr %t317, i64 %t318, i1 false)
  %t320 = insertvalue { i64, ptr } undef, i64 %t316, 0
  %t321 = insertvalue { i64, ptr } %t320, ptr %t319, 1
  %t323 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s10, ptr %s10, { i64, ptr } %t321, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d60, i32 0, i32 1) })
  store i1 %t323, ptr %l144
  br label %bb91
bb91:
  %t324 = load i1, ptr %l144, !tbaa !21
  br i1 %t324, label %bb92, label %bb93
bb92:
  store i1 true, ptr %l11, !tbaa !21
  %t325 = load ptr, ptr %l1, !tbaa !29
  store ptr %t325, ptr %l145, !tbaa !29
  %t326 = load ptr, ptr %l145, !tbaa !29
  %t327 = getelementptr %"compiler/bindgen:ctp", ptr %t326, i32 0, i32 1
  %t328 = load i64, ptr %t327, !tbaa !24
  %t330 = add i64 %t328, 1
  %t332 = load ptr, ptr %l145, !tbaa !29
  %t333 = getelementptr %"compiler/bindgen:ctp", ptr %t332, i32 0, i32 1
  store i64 %t330, ptr %t333, !tbaa !24
  br label %bb109
bb93:
  store %olang.scope zeroinitializer, ptr %s12
  %t334 = load ptr, ptr %l0, !tbaa !29
  %t335 = load ptr, ptr %l1, !tbaa !29
  %t336 = load i64, ptr %l4, !tbaa !24
  %t340 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2etypeName(ptr %v0, ptr %v1, ptr %t334, ptr %t335, i64 %t336)
  store i64 %t340, ptr %l151
  br label %bb94
bb94:
  %t341 = load i64, ptr %l151, !tbaa !24
  store i64 %t341, ptr %l12, !tbaa !24
  %t342 = load ptr, ptr %l0, !tbaa !29
  %t344 = getelementptr %"compiler/bindgen:gen", ptr %t342, i32 0, i32 16
  %t345 = load i64, ptr %l12, !tbaa !24
  %t348 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %s12, ptr %t344, i64 %t345)
  store %"compiler/bindgen:ctype" %t348, ptr %l155
  br label %bb95
bb95:
  %t349 = getelementptr %"compiler/bindgen:ctype", ptr %l155, i32 0, i32 0
  %t350 = load i32, ptr %t349, !range !{i32 0, i32 7}
  %t352 = trunc i64 0 to i32
  %t353 = icmp eq i32 %t350, %t352
  br i1 %t353, label %bb96, label %bb97
bb96:
  %t356 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s9, ptr %l10)
  store i64 %t356, ptr %l160
  br label %bb98
bb97:
  store i1 false, ptr %l158, !tbaa !21
  br label %bb99
bb98:
  %t357 = load i64, ptr %l160, !tbaa !24
  %t358 = icmp eq i64 %t357, 0
  store i1 %t358, ptr %l158, !tbaa !21
  br label %bb99
bb99:
  %t360 = load i1, ptr %l158, !tbaa !21
  br i1 %t360, label %bb100, label %bb101
bb100:
  %t361 = load ptr, ptr %l1, !tbaa !29
  %t363 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3actp_2eat(ptr %v1, ptr %s12, ptr %t361, i64 0)
  store { i64, ptr } %t363, ptr %l164
  br label %bb102
bb101:
  store i1 false, ptr %l162, !tbaa !21
  br label %bb104
bb102:
  %t364 = load { i64, ptr }, ptr %l164, !tbaa !27
  %t365 = extractvalue { i64, ptr } %t364, 0
  %t366 = extractvalue { i64, ptr } %t364, 1
  %t367 = mul i64 %t365, 1
  %t368 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t367)
  call void @llvm.memcpy.p0.p0.i64(ptr %t368, ptr %t366, i64 %t367, i1 false)
  %t369 = insertvalue { i64, ptr } undef, i64 %t365, 0
  %t370 = insertvalue { i64, ptr } %t369, ptr %t368, 1
  %t372 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s12, ptr %s12, { i64, ptr } %t370, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d61, i32 0, i32 1) })
  store i1 %t372, ptr %l166
  br label %bb103
bb103:
  %t373 = load i1, ptr %l166, !tbaa !21
  store i1 %t373, ptr %l162, !tbaa !21
  br label %bb104
bb104:
  %t374 = load i1, ptr %l162, !tbaa !21
  %t375 = xor i1 %t374, true
  br i1 %t375, label %bb105, label %bb106
bb105:
  %t377 = load i64, ptr %l12, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s9, ptr %l10, i64 %t377)
  br label %bb107
bb106:
  br label %bb108
bb107:
  br label %bb108
bb108:
  call void @__olang_scope_close(ptr %s12)
  br label %bb109
bb109:
  %t380 = load ptr, ptr %l1, !tbaa !29
  %t382 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3actp_2eat(ptr %v1, ptr %s10, ptr %t380, i64 0)
  store { i64, ptr } %t382, ptr %l171
  br label %bb110
bb110:
  %t383 = load { i64, ptr }, ptr %l171, !tbaa !27
  %t384 = extractvalue { i64, ptr } %t383, 0
  %t385 = extractvalue { i64, ptr } %t383, 1
  %t386 = mul i64 %t384, 1
  %t387 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t386)
  call void @llvm.memcpy.p0.p0.i64(ptr %t387, ptr %t385, i64 %t386, i1 false)
  %t388 = insertvalue { i64, ptr } undef, i64 %t384, 0
  %t389 = insertvalue { i64, ptr } %t388, ptr %t387, 1
  %t391 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s10, ptr %s10, { i64, ptr } %t389, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d62, i32 0, i32 1) })
  store i1 %t391, ptr %l173
  br label %bb111
bb111:
  %t392 = load i1, ptr %l173, !tbaa !21
  br i1 %t392, label %bb112, label %bb113
bb112:
  %t393 = load ptr, ptr %l1, !tbaa !29
  store ptr %t393, ptr %l174, !tbaa !29
  %t394 = load ptr, ptr %l174, !tbaa !29
  %t395 = getelementptr %"compiler/bindgen:ctp", ptr %t394, i32 0, i32 1
  %t396 = load i64, ptr %t395, !tbaa !24
  %t398 = add i64 %t396, 1
  %t400 = load ptr, ptr %l174, !tbaa !29
  %t401 = getelementptr %"compiler/bindgen:ctp", ptr %t400, i32 0, i32 1
  store i64 %t398, ptr %t401, !tbaa !24
  br label %bb114
bb113:
  br label %bb114
bb114:
  call void @__olang_scope_close(ptr %s10)
  br label %bb115
bb115:
  br label %bb81
bb116:
  %t402 = load ptr, ptr %l1, !tbaa !29
  store ptr %t402, ptr %l177, !tbaa !29
  %t403 = load ptr, ptr %l177, !tbaa !29
  %t404 = getelementptr %"compiler/bindgen:ctp", ptr %t403, i32 0, i32 1
  %t405 = load i64, ptr %t404, !tbaa !24
  %t407 = add i64 %t405, 1
  %t409 = load ptr, ptr %l177, !tbaa !29
  %t410 = getelementptr %"compiler/bindgen:ctp", ptr %t409, i32 0, i32 1
  store i64 %t407, ptr %t410, !tbaa !24
  %t411 = load ptr, ptr %l0, !tbaa !29
  %t413 = getelementptr %"compiler/bindgen:gen", ptr %t411, i32 0, i32 17
  %t415 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t413)
  store i64 %t415, ptr %l182
  br label %bb117
bb117:
  %t416 = load i64, ptr %l182, !tbaa !24
  store i64 %t416, ptr %l13, !tbaa !24
  store ptr %l10, ptr %l14, !tbaa !29
  store i64 0, ptr %l15, !tbaa !24
  br label %bb118
bb118:
  %t418 = load i64, ptr %l15, !tbaa !24
  store i64 %t418, ptr %l184, !tbaa !24
  %t419 = load ptr, ptr %l14, !tbaa !29
  %t421 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s9, ptr %t419)
  store i64 %t421, ptr %l186
  br label %bb119
bb119:
  %t422 = load i64, ptr %l184, !tbaa !24
  %t423 = load i64, ptr %l186, !tbaa !24
  %t424 = icmp slt i64 %t422, %t423
  %t426 = xor i1 %t424, true
  br i1 %t426, label %bb120, label %bb121
bb120:
  br label %bb126
bb121:
  br label %bb122
bb122:
  %t428 = load ptr, ptr %l14, !tbaa !29
  %t429 = load i64, ptr %l15, !tbaa !24
  %t432 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s9, ptr %t428, i64 %t429)
  store i64 %t432, ptr %l191
  br label %bb123
bb123:
  %t433 = load i64, ptr %l191, !tbaa !24
  %t434 = load ptr, ptr %l0, !tbaa !29
  %t436 = getelementptr %"compiler/bindgen:gen", ptr %t434, i32 0, i32 17
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t436, i64 %t433)
  br label %bb124
bb124:
  br label %bb125
bb125:
  %t440 = load i64, ptr %l15, !tbaa !24
  %t442 = add i64 %t440, 1
  store i64 %t442, ptr %l15, !tbaa !24
  br label %bb118
bb126:
  %t444 = load ptr, ptr %l0, !tbaa !29
  store ptr %t444, ptr %l197, !tbaa !29
  store i32 5, ptr %l198
  %t445 = load i1, ptr %l11, !tbaa !21
  br i1 %t445, label %bb127, label %bb128
bb127:
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d63, i32 0, i32 1) }, ptr %l200, !tbaa !27
  br label %bb129
bb128:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d64, i32 0, i32 1) }, ptr %l200, !tbaa !27
  br label %bb129
bb129:
  %t447 = load i64, ptr %l5, !tbaa !24
  store i64 %t447, ptr %l201, !tbaa !24
  %t449 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s9, ptr %l10)
  store i64 %t449, ptr %l203
  br label %bb130
bb130:
  %t450 = load ptr, ptr %l197, !tbaa !29
  %t451 = load i32, ptr %l198, !range !{i32 0, i32 7}
  %t452 = load { i64, ptr }, ptr %l200, !tbaa !27
  %t453 = load i64, ptr %l201, !tbaa !24
  %t454 = load i64, ptr %l203, !tbaa !24
  %t455 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enode(ptr %v0, ptr %v0, ptr %t450, i32 %t451, { i64, ptr } %t452, i64 %t453, i1 false, i64 %t454)
  store i64 %t455, ptr %l204
  br label %bb131
bb131:
  %t456 = load i64, ptr %l204, !tbaa !24
  store i64 %t456, ptr %l17, !tbaa !24
  %t457 = load i64, ptr %l17, !tbaa !24
  %t459 = load ptr, ptr %l0, !tbaa !29
  %t461 = getelementptr %"compiler/bindgen:gen", ptr %t459, i32 0, i32 16
  %t465 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eRefMut_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %v0, ptr %t461, i64 %t457)
  store ptr %t465, ptr %l209
  br label %bb132
bb132:
  %t466 = load ptr, ptr %l209, !tbaa !29
  %t468 = load i64, ptr %l13, !tbaa !24
  %t471 = getelementptr %"compiler/bindgen:ctype", ptr %t466, i32 0, i32 5
  store i64 %t468, ptr %t471, !tbaa !24
  %t472 = load i64, ptr %l17, !tbaa !24
  store i64 %t472, ptr %l5, !tbaa !24
  call void @__olang_scope_close(ptr %s9)
  br label %bb151
bb133:
  %t474 = load { i64, ptr }, ptr %l214, !tbaa !27
  %t475 = extractvalue { i64, ptr } %t474, 0
  %t476 = extractvalue { i64, ptr } %t474, 1
  %t477 = mul i64 %t475, 1
  %t478 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t477)
  call void @llvm.memcpy.p0.p0.i64(ptr %t478, ptr %t476, i64 %t477, i1 false)
  %t479 = insertvalue { i64, ptr } undef, i64 %t475, 0
  %t480 = insertvalue { i64, ptr } %t479, ptr %t478, 1
  %t482 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s18, ptr %s18, { i64, ptr } %t480, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d65, i32 0, i32 1) })
  store i1 %t482, ptr %l216
  br label %bb134
bb134:
  %t483 = load i1, ptr %l216, !tbaa !21
  br i1 %t483, label %bb135, label %bb136
bb135:
  store %olang.scope zeroinitializer, ptr %s19
  %t484 = load ptr, ptr %l1, !tbaa !29
  store ptr %t484, ptr %l217, !tbaa !29
  %t485 = load ptr, ptr %l217, !tbaa !29
  %t486 = getelementptr %"compiler/bindgen:ctp", ptr %t485, i32 0, i32 1
  %t487 = load i64, ptr %t486, !tbaa !24
  %t489 = add i64 %t487, 1
  %t491 = load ptr, ptr %l217, !tbaa !29
  %t492 = getelementptr %"compiler/bindgen:ctp", ptr %t491, i32 0, i32 1
  store i64 %t489, ptr %t492, !tbaa !24
  store i64 0, ptr %l20, !tbaa !24
  %t493 = load ptr, ptr %l1, !tbaa !29
  %t495 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3actp_2eat(ptr %v1, ptr %s19, ptr %t493, i64 0)
  store { i64, ptr } %t495, ptr %l221
  br label %bb137
bb136:
  call void @__olang_scope_close(ptr %s18)
  call void @__olang_scope_close(ptr %s8)
  br label %bb153
bb137:
  %t496 = load { i64, ptr }, ptr %l221, !tbaa !27
  %t497 = extractvalue { i64, ptr } %t496, 0
  %t498 = extractvalue { i64, ptr } %t496, 1
  %t499 = mul i64 %t497, 1
  %t500 = call ptr @__olang_scope_alloc(ptr %s19, i64 %t499)
  call void @llvm.memcpy.p0.p0.i64(ptr %t500, ptr %t498, i64 %t499, i1 false)
  %t501 = insertvalue { i64, ptr } undef, i64 %t497, 0
  %t502 = insertvalue { i64, ptr } %t501, ptr %t500, 1
  %t504 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s19, ptr %s19, { i64, ptr } %t502, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d66, i32 0, i32 1) })
  store i1 %t504, ptr %l223
  br label %bb138
bb138:
  %t505 = load i1, ptr %l223, !tbaa !21
  %t506 = xor i1 %t505, true
  br i1 %t506, label %bb139, label %bb140
bb139:
  store %olang.scope zeroinitializer, ptr %s20
  %t508 = load ptr, ptr %l1, !tbaa !29
  %t510 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3actp_2eat(ptr %v1, ptr %s20, ptr %t508, i64 0)
  store { i64, ptr } %t510, ptr %l227
  br label %bb141
bb140:
  br label %bb148
bb141:
  %t511 = load { i64, ptr }, ptr %l227, !tbaa !27
  %t512 = extractvalue { i64, ptr } %t511, 0
  %t513 = extractvalue { i64, ptr } %t511, 1
  %t514 = mul i64 %t512, 1
  %t515 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t514)
  call void @llvm.memcpy.p0.p0.i64(ptr %t515, ptr %t513, i64 %t514, i1 false)
  %t516 = insertvalue { i64, ptr } undef, i64 %t512, 0
  %t517 = insertvalue { i64, ptr } %t516, ptr %t515, 1
  store { i64, ptr } %t517, ptr %l228, !tbaa !27
  %t518 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s20, i64 10)
  %t519 = extractvalue { i32, i64 } %t518, 1
  %t520 = extractvalue { i32, i64 } %t518, 0
  store i32 %t520, ptr %l230
  %t521 = icmp ne i32 %t520, 0
  br i1 %t521, label %bb143, label %ok.522, !prof !99
ok.522:
  store i64 %t519, ptr %l229
  br label %bb142
bb142:
  %t523 = load { i64, ptr }, ptr %l228, !tbaa !27
  %t524 = load i64, ptr %l229, !tbaa !24
  %t525 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %s20, { i64, ptr } %t523, i64 %t524)
  %t526 = extractvalue { i32, i64 } %t525, 1
  %t527 = extractvalue { i32, i64 } %t525, 0
  store i32 %t527, ptr %l232
  %t528 = icmp ne i32 %t527, 0
  br i1 %t528, label %bb146, label %ok.529, !prof !99
ok.529:
  store i64 %t526, ptr %l231
  br label %bb145
bb143:
  br label %bb144
bb144:
  store i64 -1, ptr %l225, !tbaa !24
  br label %bb147
bb145:
  %t530 = load i64, ptr %l231, !tbaa !24
  store i64 %t530, ptr %l225, !tbaa !24
  br label %bb147
bb146:
  br label %bb144
bb147:
  %t531 = load i64, ptr %l225, !tbaa !24
  store i64 %t531, ptr %l20, !tbaa !24
  %t532 = load ptr, ptr %l1, !tbaa !29
  store ptr %t532, ptr %l233, !tbaa !29
  %t533 = load ptr, ptr %l233, !tbaa !29
  %t534 = getelementptr %"compiler/bindgen:ctp", ptr %t533, i32 0, i32 1
  %t535 = load i64, ptr %t534, !tbaa !24
  %t537 = add i64 %t535, 1
  %t539 = load ptr, ptr %l233, !tbaa !29
  %t540 = getelementptr %"compiler/bindgen:ctp", ptr %t539, i32 0, i32 1
  store i64 %t537, ptr %t540, !tbaa !24
  call void @__olang_scope_close(ptr %s20)
  br label %bb148
bb148:
  %t541 = load ptr, ptr %l1, !tbaa !29
  store ptr %t541, ptr %l236, !tbaa !29
  %t542 = load ptr, ptr %l236, !tbaa !29
  %t543 = getelementptr %"compiler/bindgen:ctp", ptr %t542, i32 0, i32 1
  %t544 = load i64, ptr %t543, !tbaa !24
  %t546 = add i64 %t544, 1
  %t548 = load ptr, ptr %l236, !tbaa !29
  %t549 = getelementptr %"compiler/bindgen:ctp", ptr %t548, i32 0, i32 1
  store i64 %t546, ptr %t549, !tbaa !24
  %t550 = load i64, ptr %l20, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l9, i64 %t550)
  br label %bb149
bb149:
  call void @__olang_scope_close(ptr %s19)
  br label %bb150
bb150:
  call void @__olang_scope_close(ptr %s18)
  br label %bb151
bb151:
  call void @__olang_scope_close(ptr %s8)
  br label %bb152
bb152:
  br label %bb75
bb153:
  store i64 0, ptr %l21, !tbaa !24
  %t554 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l9)
  store i64 %t554, ptr %l242
  br label %bb154
bb154:
  %t555 = load i64, ptr %l242, !tbaa !24
  store i64 %t555, ptr %l22, !tbaa !24
  store i64 1, ptr %l23, !tbaa !24
  %t556 = load i64, ptr %l22, !tbaa !24
  %t557 = load i64, ptr %l21, !tbaa !24
  %t560 = icmp sgt i64 %t556, %t557
  br i1 %t560, label %bb155, label %bb156
bb155:
  %t562 = load i64, ptr %l23, !tbaa !24
  %t564 = icmp sgt i64 %t562, 0
  br i1 %t564, label %bb157, label %bb158
bb156:
  store i64 0, ptr %l246, !tbaa !24
  br label %bb160
bb157:
  %t566 = load i64, ptr %l22, !tbaa !24
  %t567 = load i64, ptr %l21, !tbaa !24
  %t570 = sub i64 %t566, %t567
  %t571 = load i64, ptr %l23, !tbaa !24
  %t574 = add i64 %t570, %t571
  %t576 = sub i64 %t574, 1
  %t577 = load i64, ptr %l23, !tbaa !24
  %t580 = sdiv i64 %t576, %t577
  store i64 %t580, ptr %l249, !tbaa !24
  br label %bb159
bb158:
  store i64 0, ptr %l249, !tbaa !24
  br label %bb159
bb159:
  %t582 = load i64, ptr %l249, !tbaa !24
  store i64 %t582, ptr %l246, !tbaa !24
  br label %bb160
bb160:
  %t583 = load i64, ptr %l246, !tbaa !24
  store i64 %t583, ptr %l24, !tbaa !24
  store i64 0, ptr %l25, !tbaa !24
  br label %bb161
bb161:
  %t584 = load i64, ptr %l25, !tbaa !24
  %t585 = load i64, ptr %l24, !tbaa !24
  %t588 = icmp slt i64 %t584, %t585
  %t590 = xor i1 %t588, true
  br i1 %t590, label %bb162, label %bb163
bb162:
  br label %bb169
bb163:
  br label %bb164
bb164:
  %t592 = load i64, ptr %l21, !tbaa !24
  %t593 = load i64, ptr %l25, !tbaa !24
  %t594 = load i64, ptr %l23, !tbaa !24
  %t597 = mul i64 %t593, %t594
  %t600 = add i64 %t592, %t597
  store i64 %t600, ptr %l26, !tbaa !24
  %t602 = load ptr, ptr %l0, !tbaa !29
  store ptr %t602, ptr %l267, !tbaa !29
  store i32 4, ptr %l268
  %t603 = load i64, ptr %l5, !tbaa !24
  store i64 %t603, ptr %l269, !tbaa !24
  store ptr %l9, ptr %l270, !tbaa !29
  %t605 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l9)
  store i64 %t605, ptr %l272
  br label %bb165
bb165:
  %t606 = load i64, ptr %l272, !tbaa !24
  %t607 = sub i64 %t606, 1
  %t608 = load i64, ptr %l26, !tbaa !24
  %t611 = sub i64 %t607, %t608
  %t612 = load ptr, ptr %l270, !tbaa !29
  %t614 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t612, i64 %t611)
  store i64 %t614, ptr %l276
  br label %bb166
bb166:
  %t615 = load ptr, ptr %l267, !tbaa !29
  %t616 = load i32, ptr %l268, !range !{i32 0, i32 7}
  %t617 = load i64, ptr %l269, !tbaa !24
  %t618 = load i64, ptr %l276, !tbaa !24
  %t619 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enode(ptr %v0, ptr %v0, ptr %t615, i32 %t616, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d67, i32 0, i32 1) }, i64 %t617, i1 false, i64 %t618)
  store i64 %t619, ptr %l277
  br label %bb167
bb167:
  %t620 = load i64, ptr %l277, !tbaa !24
  store i64 %t620, ptr %l5, !tbaa !24
  br label %bb168
bb168:
  %t621 = load i64, ptr %l25, !tbaa !24
  %t623 = add i64 %t621, 1
  store i64 %t623, ptr %l25, !tbaa !24
  br label %bb161
bb169:
  %t625 = load i64, ptr %l7, !tbaa !24
  %t627 = icmp sge i64 %t625, 0
  br i1 %t627, label %bb170, label %bb171
bb170:
  %t629 = load ptr, ptr %l1, !tbaa !29
  %t631 = getelementptr %"compiler/bindgen:ctp", ptr %t629, i32 0, i32 1
  %t632 = load i64, ptr %t631, !tbaa !24
  store i64 %t632, ptr %l27, !tbaa !24
  %t634 = load ptr, ptr %l1, !tbaa !29
  %t635 = load i64, ptr %l7, !tbaa !24
  %t638 = getelementptr %"compiler/bindgen:ctp", ptr %t634, i32 0, i32 1
  store i64 %t635, ptr %t638, !tbaa !24
  %t639 = load ptr, ptr %l0, !tbaa !29
  %t640 = load ptr, ptr %l1, !tbaa !29
  %t641 = load i64, ptr %l5, !tbaa !24
  %t642 = load i64, ptr %l4, !tbaa !24
  %t647 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2edeclarator(ptr %v0, ptr %v1, ptr %t639, ptr %t640, i64 %t641, i1 false, i64 %t642)
  store i64 %t647, ptr %l290
  br label %bb172
bb171:
  br label %bb173
bb172:
  %t648 = load i64, ptr %l290, !tbaa !24
  store i64 %t648, ptr %l5, !tbaa !24
  %t649 = load ptr, ptr %l1, !tbaa !29
  %t650 = load i64, ptr %l27, !tbaa !24
  %t653 = getelementptr %"compiler/bindgen:ctp", ptr %t649, i32 0, i32 1
  store i64 %t650, ptr %t653, !tbaa !24
  br label %bb173
bb173:
  %t654 = load i64, ptr %l5, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t654, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i32, { i64, ptr } } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2efunction(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i1
  %l5 = alloca %"compiler/bindgen:ctype"
  %l6 = alloca %"std/prelude/text:StringBuilder"
  %l7 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l15 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l22 = alloca i1
  %l25 = alloca i64
  %l29 = alloca %"compiler/bindgen:ctype"
  %l34 = alloca i32
  %l40 = alloca i32
  %l42 = alloca %"std/prelude/text:StringBuilder"
  %l48 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l53 = alloca i64
  %l56 = alloca i64
  %l77 = alloca ptr
  %l83 = alloca { i64, ptr }
  %l85 = alloca { i64, ptr }
  %l90 = alloca { i64, ptr }
  %l91 = alloca ptr
  %l92 = alloca { i64, ptr }
  %l93 = alloca { i64, ptr }
  %l94 = alloca ptr
  %l100 = alloca i64
  %l101 = alloca { i64, ptr }
  %l102 = alloca i32
  %l109 = alloca i1
  %l110 = alloca ptr
  %l113 = alloca { i64, ptr }
  %l118 = alloca %"compiler/bindgen:ctype"
  %l122 = alloca { i64, ptr }
  %l125 = alloca { i64, ptr }
  %l126 = alloca i32
  %l135 = alloca %"compiler/bindgen:ctype"
  %l138 = alloca i1
  %l141 = alloca i1
  %l143 = alloca ptr
  %l144 = alloca i64
  %l149 = alloca { i64, ptr }
  %l150 = alloca i64
  %l158 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/bindgen:cFunc", ptr %t1, i32 0, i32 1
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = call { i64, ptr } @compiler_2fbindgen_2enoReturnOf(ptr %v1, ptr %s0, { i64, ptr } %t4)
  store { i64, ptr } %t6, ptr %l18
  br label %bb1
bb1:
  %t7 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t7, ptr %l2, !tbaa !27
  %t8 = load ptr, ptr %l1, !tbaa !29
  %t10 = getelementptr %"compiler/bindgen:cFunc", ptr %t8, i32 0, i32 1
  %t11 = load { i64, ptr }, ptr %t10, !tbaa !27
  %t12 = load { i64, ptr }, ptr @G_2ecompiler_2fbindgen_2eNoReturnAttr, !tbaa !27
  %t13 = load ptr, ptr @__olang_prog_scope
  %t16 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v1, ptr %t13, { i64, ptr } %t11, { i64, ptr } %t12)
  store i1 %t16, ptr %l22
  br label %bb2
bb2:
  %t17 = load i1, ptr %l22, !tbaa !21
  store i1 %t17, ptr %l3, !tbaa !21
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t22 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eparseType(ptr %v0, ptr %s0, ptr %t18, { i64, ptr } %t19, i64 0)
  store i64 %t22, ptr %l25
  br label %bb3
bb3:
  %t23 = load i64, ptr %l25, !tbaa !24
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/bindgen:gen", ptr %t24, i32 0, i32 16
  %t30 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %v0, ptr %t26, i64 %t23)
  store %"compiler/bindgen:ctype" %t30, ptr %l29
  br label %bb4
bb4:
  %t31 = load %"compiler/bindgen:ctype", ptr %l29
  store %"compiler/bindgen:ctype" %t31, ptr %l5
  %t32 = getelementptr %"compiler/bindgen:ctype", ptr %l5, i32 0, i32 0
  %t33 = load i32, ptr %t32, !range !{i32 0, i32 7}
  %t35 = trunc i64 6 to i32
  %t36 = icmp eq i32 %t33, %t35
  br i1 %t36, label %bb5, label %bb6
bb5:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/bindgen:ctype", ptr %l5, i32 0, i32 1
  %t40 = load { i64, ptr }, ptr %t39, !tbaa !27
  %t43 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %v0, ptr %t38, { i64, ptr } %t40)
  store i32 %t43, ptr %l34
  %t44 = icmp ne i32 %t43, 0
  br i1 %t44, label %bb8, label %ok.45, !prof !99
ok.45:
  br label %bb7
bb6:
  br label %bb10
bb7:
  br label %bb9
bb8:
  %t46 = load i32, ptr %l34, !tbaa !23
  %t47 = lshr i32 %t46, 16
  %t48 = and i32 %t46, 65535
  %t49 = icmp eq i32 %t47, 1
  %t50 = select i1 %t49, i32 1, i32 0
  %t51 = icmp eq i32 %t46, 0
  %t52 = shl i32 %t50, 16
  %t53 = or i32 %t52, %t48
  %t54 = select i1 %t51, i32 0, i32 %t53
  call void @__olang_scope_close(ptr %s0)
  %t56 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t54, 0
  store { i32, { i64, ptr } } %t56, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t57 = getelementptr %"compiler/bindgen:ctype", ptr %l5, i32 0, i32 0
  %t58 = load i32, ptr %t57, !range !{i32 0, i32 7}
  %t60 = trunc i64 5 to i32
  %t61 = icmp eq i32 %t58, %t60
  %t63 = xor i1 %t61, true
  br i1 %t63, label %bb11, label %bb12
bb11:
  store %olang.scope zeroinitializer, ptr %s2
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %s2, ptr %t65, { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d68, i32 0, i32 1) })
  store i32 %t67, ptr %l40
  %t68 = icmp ne i32 %t67, 0
  br i1 %t68, label %bb14, label %ok.69, !prof !99
ok.69:
  br label %bb13
bb12:
  br label %bb16
bb13:
  br label %bb15
bb14:
  %t70 = load i32, ptr %l40, !tbaa !23
  %t71 = lshr i32 %t70, 16
  %t72 = and i32 %t70, 65535
  %t73 = icmp eq i32 %t71, 1
  %t74 = select i1 %t73, i32 1, i32 0
  %t75 = icmp eq i32 %t70, 0
  %t76 = shl i32 %t74, 16
  %t77 = or i32 %t76, %t72
  %t78 = select i1 %t75, i32 0, i32 %t77
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t80 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t78, 0
  store { i32, { i64, ptr } } %t80, ptr %rv
  br label %ret
bb15:
  call void @__olang_scope_close(ptr %s2)
  br label %bb16
bb16:
  %t81 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t81, ptr %l42
  br label %bb17
bb17:
  %t82 = load %"std/prelude/text:StringBuilder", ptr %l42
  store %"std/prelude/text:StringBuilder" %t82, ptr %l6
  %t83 = load ptr, ptr %l1, !tbaa !29
  %t85 = getelementptr %"compiler/bindgen:cFunc", ptr %t83, i32 0, i32 0
  %t86 = load { i64, ptr }, ptr %t85, !tbaa !27
  %t87 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d69, i32 0, i32 1) }, 1
  %t88 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d69, i32 0, i32 1) }, 0
  %t90 = extractvalue { i64, ptr } %t86, 1
  %t91 = extractvalue { i64, ptr } %t86, 0
  %t92 = add i64 %t88, %t91
  %t93 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d70, i32 0, i32 1) }, 1
  %t94 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d70, i32 0, i32 1) }, 0
  %t95 = add i64 %t92, %t94
  %t96 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t95)
  call void @olang_textcopy(ptr %t96, ptr %t87, i64 %t88)
  %t97 = getelementptr i8, ptr %t96, i64 %t88
  call void @olang_textcopy(ptr %t97, ptr %t90, i64 %t91)
  %t98 = getelementptr i8, ptr %t97, i64 %t91
  call void @olang_textcopy(ptr %t98, ptr %t93, i64 %t94)
  %t99 = insertvalue { i64, ptr } undef, i64 %t95, 0
  %t100 = insertvalue { i64, ptr } %t99, ptr %t96, 1
  %t102 = extractvalue { i64, ptr } %t100, 0
  %t103 = extractvalue { i64, ptr } %t100, 1
  %t104 = mul i64 %t102, 1
  %t105 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t104)
  call void @llvm.memcpy.p0.p0.i64(ptr %t105, ptr %t103, i64 %t104, i1 false)
  %t106 = insertvalue { i64, ptr } undef, i64 %t102, 0
  %t107 = insertvalue { i64, ptr } %t106, ptr %t105, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l6, { i64, ptr } %t107)
  br label %bb18
bb18:
  %t110 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2ector(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t110, ptr %l48
  br label %bb19
bb19:
  %t111 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l48
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t111, ptr %l7
  store i64 0, ptr %l8, !tbaa !24
  %t112 = getelementptr %"compiler/bindgen:ctype", ptr %l5, i32 0, i32 4
  %t113 = load i64, ptr %t112, !tbaa !24
  store i64 %t113, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t115 = load i64, ptr %l9, !tbaa !24
  %t116 = load i64, ptr %l8, !tbaa !24
  %t119 = icmp sgt i64 %t115, %t116
  br i1 %t119, label %bb20, label %bb21
bb20:
  %t121 = load i64, ptr %l10, !tbaa !24
  %t123 = icmp sgt i64 %t121, 0
  br i1 %t123, label %bb22, label %bb23
bb21:
  store i64 0, ptr %l53, !tbaa !24
  br label %bb25
bb22:
  %t125 = load i64, ptr %l9, !tbaa !24
  %t126 = load i64, ptr %l8, !tbaa !24
  %t129 = sub i64 %t125, %t126
  %t130 = load i64, ptr %l10, !tbaa !24
  %t133 = add i64 %t129, %t130
  %t135 = sub i64 %t133, 1
  %t136 = load i64, ptr %l10, !tbaa !24
  %t139 = sdiv i64 %t135, %t136
  store i64 %t139, ptr %l56, !tbaa !24
  br label %bb24
bb23:
  store i64 0, ptr %l56, !tbaa !24
  br label %bb24
bb24:
  %t141 = load i64, ptr %l56, !tbaa !24
  store i64 %t141, ptr %l53, !tbaa !24
  br label %bb25
bb25:
  %t142 = load i64, ptr %l53, !tbaa !24
  store i64 %t142, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb26
bb26:
  store %olang.scope zeroinitializer, ptr %s5
  %t143 = load i64, ptr %l12, !tbaa !24
  %t144 = load i64, ptr %l11, !tbaa !24
  %t147 = icmp slt i64 %t143, %t144
  %t149 = xor i1 %t147, true
  br i1 %t149, label %bb27, label %bb28
bb27:
  call void @__olang_scope_close(ptr %s5)
  br label %bb44
bb28:
  br label %bb29
bb29:
  %t151 = load i64, ptr %l8, !tbaa !24
  %t152 = load i64, ptr %l12, !tbaa !24
  %t153 = load i64, ptr %l10, !tbaa !24
  %t156 = mul i64 %t152, %t153
  %t159 = add i64 %t151, %t156
  store i64 %t159, ptr %l13, !tbaa !24
  %t161 = load i64, ptr %l13, !tbaa !24
  %t163 = icmp sgt i64 %t161, 0
  br i1 %t163, label %bb30, label %bb31
bb30:
  store %olang.scope zeroinitializer, ptr %s6
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s6, ptr %l6, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d71, i32 0, i32 1) })
  br label %bb32
bb31:
  br label %bb33
bb32:
  call void @__olang_scope_close(ptr %s6)
  br label %bb33
bb33:
  %t166 = load ptr, ptr %l0, !tbaa !29
  store ptr %t166, ptr %l77, !tbaa !29
  %t167 = load i64, ptr %l13, !tbaa !24
  %t168 = load ptr, ptr %l1, !tbaa !29
  %t170 = getelementptr %"compiler/bindgen:cFunc", ptr %t168, i32 0, i32 2
  %t171 = load { i64, ptr }, ptr %t170, !tbaa !27
  %t173 = extractvalue { i64, ptr } %t171, 0
  %t176 = icmp slt i64 %t167, %t173
  br i1 %t176, label %bb34, label %bb35
bb34:
  %t178 = load ptr, ptr %l1, !tbaa !29
  %t180 = getelementptr %"compiler/bindgen:cFunc", ptr %t178, i32 0, i32 2
  %t181 = load { i64, ptr }, ptr %t180, !tbaa !27
  store { i64, ptr } %t181, ptr %l85, !tbaa !27
  %t182 = load i64, ptr %l13, !tbaa !24
  %t184 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t185 = load ptr, ptr %t184, !tbaa !27
  %t186 = getelementptr { i64, ptr }, ptr %t185, i64 %t182
  %t187 = load { i64, ptr }, ptr %t186, !tbaa !37
  store { i64, ptr } %t187, ptr %l83, !tbaa !27
  br label %bb36
bb35:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d72, i32 0, i32 1) }, ptr %l83, !tbaa !27
  br label %bb36
bb36:
  %t189 = load i64, ptr %l13, !tbaa !24
  %t190 = load ptr, ptr %l77, !tbaa !29
  %t191 = load { i64, ptr }, ptr %l83, !tbaa !27
  %t194 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eparamName(ptr %v0, ptr %v1, ptr %s0, ptr %s5, ptr %t190, { i64, ptr } %t191, i64 %t189, ptr %l7)
  store { i64, ptr } %t194, ptr %l90
  br label %bb37
bb37:
  %t195 = load { i64, ptr }, ptr %l90, !tbaa !27
  store ptr %l6, ptr %l91, !tbaa !29
  store { i64, ptr } %t195, ptr %l92, !tbaa !27
  %t197 = load ptr, ptr %l0, !tbaa !29
  store ptr %t197, ptr %l94, !tbaa !29
  %t198 = load ptr, ptr %l0, !tbaa !29
  %t200 = getelementptr %"compiler/bindgen:gen", ptr %t198, i32 0, i32 17
  %t201 = getelementptr %"compiler/bindgen:ctype", ptr %l5, i32 0, i32 5
  %t202 = load i64, ptr %t201, !tbaa !24
  %t203 = load i64, ptr %l13, !tbaa !24
  %t206 = add i64 %t202, %t203
  %t209 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t200, i64 %t206)
  store i64 %t209, ptr %l100
  br label %bb38
bb38:
  %t210 = load ptr, ptr %l94, !tbaa !29
  %t211 = load i64, ptr %l100, !tbaa !24
  %t212 = call { i32, { i64, ptr } } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eparamType(ptr %v0, ptr %s5, ptr %t210, i64 %t211)
  %t213 = extractvalue { i32, { i64, ptr } } %t212, 1
  %t214 = extractvalue { i32, { i64, ptr } } %t212, 0
  store i32 %t214, ptr %l102
  %t215 = icmp ne i32 %t214, 0
  br i1 %t215, label %bb40, label %ok.216, !prof !99
ok.216:
  store { i64, ptr } %t213, ptr %l101
  br label %bb39
bb39:
  %t217 = load { i64, ptr }, ptr %l101, !tbaa !27
  store { i64, ptr } %t217, ptr %l93, !tbaa !27
  br label %bb41
bb40:
  %t218 = load i32, ptr %l102, !tbaa !23
  %t219 = lshr i32 %t218, 16
  %t220 = and i32 %t218, 65535
  %t221 = icmp eq i32 %t219, 1
  %t222 = select i1 %t221, i32 1, i32 0
  %t223 = icmp eq i32 %t218, 0
  %t224 = shl i32 %t222, 16
  %t225 = or i32 %t224, %t220
  %t226 = select i1 %t223, i32 0, i32 %t225
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  %t228 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t226, 0
  store { i32, { i64, ptr } } %t228, ptr %rv
  br label %ret
bb41:
  %t229 = load { i64, ptr }, ptr %l92, !tbaa !27
  %t230 = extractvalue { i64, ptr } %t229, 1
  %t231 = extractvalue { i64, ptr } %t229, 0
  %t232 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d73, i32 0, i32 1) }, 1
  %t233 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d73, i32 0, i32 1) }, 0
  %t234 = add i64 %t231, %t233
  %t235 = load { i64, ptr }, ptr %l93, !tbaa !27
  %t236 = extractvalue { i64, ptr } %t235, 1
  %t237 = extractvalue { i64, ptr } %t235, 0
  %t238 = add i64 %t234, %t237
  %t239 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t238)
  call void @olang_textcopy(ptr %t239, ptr %t230, i64 %t231)
  %t240 = getelementptr i8, ptr %t239, i64 %t231
  call void @olang_textcopy(ptr %t240, ptr %t232, i64 %t233)
  %t241 = getelementptr i8, ptr %t240, i64 %t233
  call void @olang_textcopy(ptr %t241, ptr %t236, i64 %t237)
  %t242 = insertvalue { i64, ptr } undef, i64 %t238, 0
  %t243 = insertvalue { i64, ptr } %t242, ptr %t239, 1
  %t245 = extractvalue { i64, ptr } %t243, 0
  %t246 = extractvalue { i64, ptr } %t243, 1
  %t247 = mul i64 %t245, 1
  %t248 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t247)
  call void @llvm.memcpy.p0.p0.i64(ptr %t248, ptr %t246, i64 %t247, i1 false)
  %t249 = insertvalue { i64, ptr } undef, i64 %t245, 0
  %t250 = insertvalue { i64, ptr } %t249, ptr %t248, 1
  %t251 = load ptr, ptr %l91, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s5, ptr %t251, { i64, ptr } %t250)
  br label %bb42
bb42:
  call void @__olang_scope_close(ptr %s5)
  br label %bb43
bb43:
  %t253 = load i64, ptr %l12, !tbaa !24
  %t255 = add i64 %t253, 1
  store i64 %t255, ptr %l12, !tbaa !24
  br label %bb26
bb44:
  %t257 = getelementptr %"compiler/bindgen:ctype", ptr %l5, i32 0, i32 1
  %t258 = load { i64, ptr }, ptr %t257, !tbaa !27
  %t260 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t258, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d74, i32 0, i32 1) })
  store i1 %t260, ptr %l109
  br label %bb45
bb45:
  %t261 = load i1, ptr %l109, !tbaa !21
  br i1 %t261, label %bb46, label %bb47
bb46:
  store %olang.scope zeroinitializer, ptr %s9
  store ptr %l6, ptr %l110, !tbaa !29
  %t262 = getelementptr %"compiler/bindgen:ctype", ptr %l5, i32 0, i32 4
  %t263 = load i64, ptr %t262, !tbaa !24
  %t265 = icmp sgt i64 %t263, 0
  br i1 %t265, label %bb48, label %bb49
bb47:
  br label %bb52
bb48:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d75, i32 0, i32 1) }, ptr %l113, !tbaa !27
  br label %bb50
bb49:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d76, i32 0, i32 1) }, ptr %l113, !tbaa !27
  br label %bb50
bb50:
  %t267 = load ptr, ptr %l110, !tbaa !29
  %t268 = load { i64, ptr }, ptr %l113, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s9, ptr %t267, { i64, ptr } %t268)
  br label %bb51
bb51:
  call void @__olang_scope_close(ptr %s9)
  br label %bb52
bb52:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l6, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) })
  br label %bb53
bb53:
  %t270 = load ptr, ptr %l0, !tbaa !29
  %t272 = getelementptr %"compiler/bindgen:gen", ptr %t270, i32 0, i32 16
  %t273 = getelementptr %"compiler/bindgen:ctype", ptr %l5, i32 0, i32 2
  %t274 = load i64, ptr %t273, !tbaa !24
  %t277 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %s0, ptr %t272, i64 %t274)
  store %"compiler/bindgen:ctype" %t277, ptr %l118
  br label %bb54
bb54:
  %t278 = getelementptr %"compiler/bindgen:ctype", ptr %l118, i32 0, i32 0
  %t279 = load i32, ptr %t278, !range !{i32 0, i32 7}
  %t281 = trunc i64 0 to i32
  %t282 = icmp eq i32 %t279, %t281
  %t284 = xor i1 %t282, true
  br i1 %t284, label %bb55, label %bb56
bb55:
  store %olang.scope zeroinitializer, ptr %s10
  %t286 = load ptr, ptr %l0, !tbaa !29
  %t287 = getelementptr %"compiler/bindgen:ctype", ptr %l5, i32 0, i32 2
  %t288 = load i64, ptr %t287, !tbaa !24
  %t291 = call { i32, { i64, ptr } } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2evalueType(ptr %v0, ptr %s10, ptr %t286, i64 %t288, i1 false)
  %t292 = extractvalue { i32, { i64, ptr } } %t291, 1
  %t293 = extractvalue { i32, { i64, ptr } } %t291, 0
  store i32 %t293, ptr %l126
  %t294 = icmp ne i32 %t293, 0
  br i1 %t294, label %bb58, label %ok.295, !prof !99
ok.295:
  store { i64, ptr } %t292, ptr %l125
  br label %bb57
bb56:
  %t296 = load i1, ptr %l3, !tbaa !21
  br i1 %t296, label %bb74, label %bb75
bb57:
  %t298 = load { i64, ptr }, ptr %l125, !tbaa !27
  store { i64, ptr } %t298, ptr %l122, !tbaa !27
  br label %bb59
bb58:
  %t299 = load i32, ptr %l126, !tbaa !23
  %t300 = lshr i32 %t299, 16
  %t301 = and i32 %t299, 65535
  %t302 = icmp eq i32 %t300, 1
  %t303 = select i1 %t302, i32 1, i32 0
  %t304 = icmp eq i32 %t299, 0
  %t305 = shl i32 %t303, 16
  %t306 = or i32 %t305, %t301
  %t307 = select i1 %t304, i32 0, i32 %t306
  call void @__olang_scope_close(ptr %s10)
  call void @__olang_scope_close(ptr %s0)
  %t309 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t307, 0
  store { i32, { i64, ptr } } %t309, ptr %rv
  br label %ret
bb59:
  %t310 = load { i64, ptr }, ptr %l122, !tbaa !27
  store { i64, ptr } %t310, ptr %l15, !tbaa !27
  %t311 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t312 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 1
  %t313 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 0
  %t315 = extractvalue { i64, ptr } %t311, 1
  %t316 = extractvalue { i64, ptr } %t311, 0
  %t317 = add i64 %t313, %t316
  %t318 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t317)
  call void @olang_textcopy(ptr %t318, ptr %t312, i64 %t313)
  %t319 = getelementptr i8, ptr %t318, i64 %t313
  call void @olang_textcopy(ptr %t319, ptr %t315, i64 %t316)
  %t320 = insertvalue { i64, ptr } undef, i64 %t317, 0
  %t321 = insertvalue { i64, ptr } %t320, ptr %t318, 1
  %t323 = extractvalue { i64, ptr } %t321, 0
  %t324 = extractvalue { i64, ptr } %t321, 1
  %t325 = mul i64 %t323, 1
  %t326 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t325)
  call void @llvm.memcpy.p0.p0.i64(ptr %t326, ptr %t324, i64 %t325, i1 false)
  %t327 = insertvalue { i64, ptr } undef, i64 %t323, 0
  %t328 = insertvalue { i64, ptr } %t327, ptr %t326, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s10, ptr %l6, { i64, ptr } %t328)
  br label %bb60
bb60:
  %t331 = load ptr, ptr %l0, !tbaa !29
  %t333 = getelementptr %"compiler/bindgen:gen", ptr %t331, i32 0, i32 16
  %t334 = getelementptr %"compiler/bindgen:ctype", ptr %l5, i32 0, i32 2
  %t335 = load i64, ptr %t334, !tbaa !24
  %t338 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %s10, ptr %t333, i64 %t335)
  store %"compiler/bindgen:ctype" %t338, ptr %l135
  br label %bb61
bb61:
  %t339 = getelementptr %"compiler/bindgen:ctype", ptr %l135, i32 0, i32 0
  %t340 = load i32, ptr %t339, !range !{i32 0, i32 7}
  %t342 = trunc i64 1 to i32
  %t343 = icmp eq i32 %t340, %t342
  br i1 %t343, label %bb62, label %bb63
bb62:
  %t345 = load ptr, ptr %l0, !tbaa !29
  %t346 = load %"compiler/bindgen:ctype", ptr %l5
  %t349 = call i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enumbersOnly(ptr %v0, ptr %v0, ptr %t345, %"compiler/bindgen:ctype" %t346)
  store i1 %t349, ptr %l141
  br label %bb64
bb63:
  store i1 false, ptr %l138, !tbaa !21
  br label %bb65
bb64:
  %t350 = load i1, ptr %l141, !tbaa !21
  store i1 %t350, ptr %l138, !tbaa !21
  br label %bb65
bb65:
  %t351 = load i1, ptr %l138, !tbaa !21
  br i1 %t351, label %bb66, label %bb67
bb66:
  %t352 = load ptr, ptr %l0, !tbaa !29
  %t354 = getelementptr %"compiler/bindgen:gen", ptr %t352, i32 0, i32 15
  store ptr %t354, ptr %l143, !tbaa !29
  %t355 = ptrtoint ptr %v0 to i64
  store i64 %t355, ptr %l144, !tbaa !24
  %t356 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20st_Ha3f33385783b00c3f13cf90b683d8670
  br i1 %t356, label %bb68, label %bb69
bb67:
  br label %bb73
bb68:
  %t358 = call ptr @__olang_region_make(ptr %v0)
  %t359 = ptrtoint ptr %t358 to i64
  store i64 %t359, ptr %l144, !tbaa !24
  br label %bb69
bb69:
  %t360 = load ptr, ptr %l1, !tbaa !29
  %t362 = getelementptr %"compiler/bindgen:cFunc", ptr %t360, i32 0, i32 0
  %t363 = load { i64, ptr }, ptr %t362, !tbaa !27
  %t365 = extractvalue { i64, ptr } %t363, 1
  %t366 = extractvalue { i64, ptr } %t363, 0
  %t367 = load i64, ptr %l144
  %t368 = inttoptr i64 %t367 to ptr
  %t369 = call ptr @__olang_scope_alloc(ptr %t368, i64 %t366)
  call void @olang_textcopy(ptr %t369, ptr %t365, i64 %t366)
  %t370 = insertvalue { i64, ptr } undef, i64 %t366, 0
  %t371 = insertvalue { i64, ptr } %t370, ptr %t369, 1
  %t373 = load i64, ptr %l144
  %t374 = inttoptr i64 %t373 to ptr
  %t375 = extractvalue { i64, ptr } %t371, 0
  %t376 = extractvalue { i64, ptr } %t371, 1
  %t377 = mul i64 %t375, 1
  %t378 = call ptr @__olang_scope_alloc(ptr %t374, i64 %t377)
  call void @llvm.memcpy.p0.p0.i64(ptr %t378, ptr %t376, i64 %t377, i1 false)
  %t379 = insertvalue { i64, ptr } undef, i64 %t375, 0
  %t380 = insertvalue { i64, ptr } %t379, ptr %t378, 1
  store { i64, ptr } %t380, ptr %l149, !tbaa !27
  %t381 = ptrtoint ptr %v0 to i64
  store i64 %t381, ptr %l150, !tbaa !24
  %t382 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20st_Ha3f33285783aff10f13cf80b683d8c03
  br i1 %t382, label %bb70, label %bb71
bb70:
  %t384 = call ptr @__olang_region_make(ptr %v0)
  %t385 = ptrtoint ptr %t384 to i64
  store i64 %t385, ptr %l150, !tbaa !24
  br label %bb71
bb71:
  %t386 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t388 = extractvalue { i64, ptr } %t386, 1
  %t389 = extractvalue { i64, ptr } %t386, 0
  %t390 = load i64, ptr %l150
  %t391 = inttoptr i64 %t390 to ptr
  %t392 = call ptr @__olang_scope_alloc(ptr %t391, i64 %t389)
  call void @olang_textcopy(ptr %t392, ptr %t388, i64 %t389)
  %t393 = insertvalue { i64, ptr } undef, i64 %t389, 0
  %t394 = insertvalue { i64, ptr } %t393, ptr %t392, 1
  %t396 = load i64, ptr %l150
  %t397 = inttoptr i64 %t396 to ptr
  %t398 = extractvalue { i64, ptr } %t394, 0
  %t399 = extractvalue { i64, ptr } %t394, 1
  %t400 = mul i64 %t398, 1
  %t401 = call ptr @__olang_scope_alloc(ptr %t397, i64 %t400)
  call void @llvm.memcpy.p0.p0.i64(ptr %t401, ptr %t399, i64 %t400, i1 false)
  %t402 = insertvalue { i64, ptr } undef, i64 %t398, 0
  %t403 = insertvalue { i64, ptr } %t402, ptr %t401, 1
  %t404 = load ptr, ptr %l143, !tbaa !29
  %t405 = load { i64, ptr }, ptr %l149, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6f7a2f8d839c49b6e7a19c287d4b190c(ptr %v0, ptr %v0, ptr %v0, ptr %t404, { i64, ptr } %t405, { i64, ptr } %t403)
  br label %bb72
bb72:
  br label %bb73
bb73:
  call void @__olang_scope_close(ptr %s10)
  br label %bb78
bb74:
  store %olang.scope zeroinitializer, ptr %s16
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s16, ptr %l6, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d79, i32 0, i32 1) })
  br label %bb76
bb75:
  br label %bb77
bb76:
  call void @__olang_scope_close(ptr %s16)
  br label %bb77
bb77:
  br label %bb78
bb78:
  %t409 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v2, ptr %l6)
  store { i64, ptr } %t409, ptr %l158
  br label %bb79
bb79:
  call void @__olang_scope_close(ptr %s0)
  %t410 = load { i64, ptr }, ptr %l158, !tbaa !27
  %t411 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t410, 1
  store { i32, { i64, ptr } } %t411, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eholdable(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i1
  %l5 = alloca i1
  %l8 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eplain(ptr %v0, ptr %t1, i64 %t2)
  store i1 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i1, ptr %l4, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb5
bb3:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i64, ptr %l1, !tbaa !24
  %t11 = call i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eopaque(ptr %v0, ptr %t7, i64 %t8)
  store i1 %t11, ptr %l8
  br label %bb4
bb4:
  %t12 = load i1, ptr %l8, !tbaa !21
  store i1 %t12, ptr %l5, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l5, !tbaa !21
  store i1 %t13, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ename(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l5 = alloca %"compiler/bindgen:record"
  %l7 = alloca %"compiler/bindgen:record"
  %rv = alloca { i64, ptr }
  %t5 = alloca %"compiler/bindgen:record", align 8
  %t8 = alloca %"compiler/bindgen:record", align 8
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/bindgen:gen", ptr %a0, i32 0, i32 5
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eAt_3ccompiler_2fbindgen_3arecord_3e(ptr %t5, ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  call void @llvm.memmove.p0.p0.i64(ptr %l5, ptr %t5, i64 216, i1 false)
  br label %bb1
bb1:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbindgen_3arecord(ptr %t8, ptr %v0, ptr %l5)
  call void @llvm.memmove.p0.p0.i64(ptr %l7, ptr %t8, i64 216, i1 false)
  br label %bb2
bb2:
  %t10 = getelementptr %"compiler/bindgen:record", ptr %l7, i32 0, i32 7
  %t11 = load { i64, ptr }, ptr %t10, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t11, 1
  %t14 = extractvalue { i64, ptr } %t11, 0
  %t15 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t14)
  call void @olang_textcopy(ptr %t15, ptr %t13, i64 %t14)
  %t16 = insertvalue { i64, ptr } undef, i64 %t14, 0
  %t17 = insertvalue { i64, ptr } %t16, ptr %t15, 1
  store { i64, ptr } %t17, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enameRecord(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l8 = alloca i64
  %l10 = alloca { i64, ptr }
  %l15 = alloca %"compiler/bindgen:record"
  %l17 = alloca %"compiler/bindgen:record"
  %l22 = alloca i1
  %l24 = alloca i1
  %l28 = alloca %"compiler/bindgen:record"
  %l30 = alloca %"compiler/bindgen:record"
  %l32 = alloca i1
  %l40 = alloca ptr
  %l41 = alloca ptr
  %l43 = alloca { i64, ptr }
  %l46 = alloca i1
  %l47 = alloca i64
  %l49 = alloca i64
  %l50 = alloca i32
  %l53 = alloca { i64, ptr }
  %l54 = alloca { i64, ptr }
  %l56 = alloca i64
  %l59 = alloca i64
  %l60 = alloca i64
  %l69 = alloca i64
  %l72 = alloca i1
  %l75 = alloca { i64, ptr }
  %l77 = alloca i64
  %l82 = alloca i1
  %l83 = alloca i1
  %l85 = alloca i1
  %l88 = alloca { i64, ptr }
  %l90 = alloca i64
  %l99 = alloca ptr
  %l100 = alloca ptr
  %l102 = alloca { i64, ptr }
  %l105 = alloca ptr
  %l106 = alloca i64
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %t5 = alloca %"compiler/bindgen:record", align 8
  %t8 = alloca %"compiler/bindgen:record", align 8
  %t31 = alloca %"compiler/bindgen:record", align 8
  %t34 = alloca %"compiler/bindgen:record", align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/bindgen:gen", ptr %t1, i32 0, i32 5
  %t4 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eAt_3ccompiler_2fbindgen_3arecord_3e(ptr %t5, ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  call void @llvm.memmove.p0.p0.i64(ptr %l15, ptr %t5, i64 216, i1 false)
  br label %bb1
bb1:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbindgen_3arecord(ptr %t8, ptr %v0, ptr %l15)
  call void @llvm.memmove.p0.p0.i64(ptr %l17, ptr %t8, i64 216, i1 false)
  br label %bb2
bb2:
  %t10 = getelementptr %"compiler/bindgen:record", ptr %l17, i32 0, i32 0
  %t11 = load { i64, ptr }, ptr %t10, !tbaa !27
  store { i64, ptr } %t11, ptr %l3, !tbaa !27
  %t15 = extractvalue { i64, ptr } %a2, 1
  %t16 = extractvalue { i64, ptr } %a2, 0
  %t17 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t16)
  call void @olang_textcopy(ptr %t17, ptr %t15, i64 %t16)
  %t18 = insertvalue { i64, ptr } undef, i64 %t16, 0
  %t19 = insertvalue { i64, ptr } %t18, ptr %t17, 1
  store { i64, ptr } %t19, ptr %l4, !tbaa !27
  %t21 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t23 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t21, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d80, i32 0, i32 1) })
  store i1 %t23, ptr %l22
  br label %bb3
bb3:
  %t24 = load i1, ptr %l22, !tbaa !21
  %t25 = xor i1 %t24, true
  br i1 %t25, label %bb4, label %bb5
bb4:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/bindgen:gen", ptr %t27, i32 0, i32 5
  %t30 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eAt_3ccompiler_2fbindgen_3arecord_3e(ptr %t31, ptr %v0, ptr %v0, ptr %t29, i64 %t30)
  call void @llvm.memmove.p0.p0.i64(ptr %l28, ptr %t31, i64 216, i1 false)
  br label %bb6
bb5:
  store i1 false, ptr %l24, !tbaa !21
  br label %bb9
bb6:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbindgen_3arecord(ptr %t34, ptr %v0, ptr %l28)
  call void @llvm.memmove.p0.p0.i64(ptr %l30, ptr %t34, i64 216, i1 false)
  br label %bb7
bb7:
  %t36 = getelementptr %"compiler/bindgen:record", ptr %l30, i32 0, i32 11
  %t37 = load { i64, ptr }, ptr %t36, !tbaa !27
  %t39 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t37, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d81, i32 0, i32 1) })
  store i1 %t39, ptr %l32
  br label %bb8
bb8:
  %t40 = load i1, ptr %l32, !tbaa !21
  store i1 %t40, ptr %l24, !tbaa !21
  br label %bb9
bb9:
  %t41 = load i1, ptr %l24, !tbaa !21
  br i1 %t41, label %bb10, label %bb11
bb10:
  %t42 = load i64, ptr %l1, !tbaa !24
  %t44 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t46 = extractvalue { i64, ptr } %t44, 1
  %t47 = extractvalue { i64, ptr } %t44, 0
  %t48 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t47)
  call void @olang_textcopy(ptr %t48, ptr %t46, i64 %t47)
  %t49 = insertvalue { i64, ptr } undef, i64 %t47, 0
  %t50 = insertvalue { i64, ptr } %t49, ptr %t48, 1
  %t52 = extractvalue { i64, ptr } %t50, 0
  %t53 = extractvalue { i64, ptr } %t50, 1
  %t54 = mul i64 %t52, 1
  %t55 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t54)
  call void @llvm.memcpy.p0.p0.i64(ptr %t55, ptr %t53, i64 %t54, i1 false)
  %t56 = insertvalue { i64, ptr } undef, i64 %t52, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t55, 1
  store { i64, ptr } %t57, ptr %l6, !tbaa !27
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/bindgen:gen", ptr %t59, i32 0, i32 5
  %t65 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eRefMu_Hc21bcd245b67ffb6ee3e145838fcf2cf(ptr %v0, ptr %v0, ptr %t61, i64 %t42)
  store ptr %t65, ptr %l40
  br label %bb12
bb11:
  br label %bb15
bb12:
  %t66 = load ptr, ptr %l40, !tbaa !29
  store ptr %t66, ptr %l41, !tbaa !29
  %t68 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t69 = load ptr, ptr %l41, !tbaa !29
  %t70 = getelementptr %"compiler/bindgen:record", ptr %t69, i32 0, i32 11
  %t71 = load { i64, ptr }, ptr %t70, !tbaa !27
  store { i64, ptr } %t71, ptr %l43, !tbaa !27
  %t73 = load ptr, ptr %l41, !tbaa !29
  %t74 = getelementptr %"compiler/bindgen:record", ptr %t73, i32 0, i32 11
  store { i64, ptr } %t68, ptr %t74, !tbaa !27
  %t75 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3arecord_2e11
  br i1 %t75, label %bb13, label %bb14
bb13:
  %t77 = load { i64, ptr }, ptr %l43
  %t78 = extractvalue { i64, ptr } %t77, 1
  call void @__olang_region_release(ptr %t78)
  store { i64, ptr } zeroinitializer, ptr %l43
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t79 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t81 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t79, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d82, i32 0, i32 1) })
  store i1 %t81, ptr %l46
  br label %bb16
bb16:
  %t82 = load i1, ptr %l46, !tbaa !21
  br i1 %t82, label %bb17, label %bb18
bb17:
  store %olang.scope zeroinitializer, ptr %s4
  %t83 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t85 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %s4, { i64, ptr } %t83, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d83, i32 0, i32 1) })
  %t86 = extractvalue { i32, i64 } %t85, 1
  %t87 = extractvalue { i32, i64 } %t85, 0
  store i32 %t87, ptr %l50
  %t88 = icmp ne i32 %t87, 0
  br i1 %t88, label %bb20, label %ok.89, !prof !99
ok.89:
  store i64 %t86, ptr %l49
  br label %bb19
bb18:
  br label %bb35
bb19:
  %t90 = load i64, ptr %l49, !tbaa !24
  store i64 %t90, ptr %l47, !tbaa !24
  br label %bb22
bb20:
  br label %bb21
bb21:
  store i64 -1, ptr %l47, !tbaa !24
  br label %bb22
bb22:
  %t91 = load i64, ptr %l47, !tbaa !24
  store i64 %t91, ptr %l8, !tbaa !24
  %t92 = load i64, ptr %l8, !tbaa !24
  %t94 = icmp sge i64 %t92, 0
  br i1 %t94, label %bb23, label %bb24
bb23:
  %t96 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t96, ptr %l54, !tbaa !27
  %t97 = load i64, ptr %l8, !tbaa !24
  %t99 = add i64 %t97, 1
  store i64 %t99, ptr %l56, !tbaa !24
  %t100 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t103 = extractvalue { i64, ptr } %t100, 0
  store i64 %t103, ptr %l59, !tbaa !24
  %t104 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t105 = extractvalue { i64, ptr } %t104, 0
  store i64 %t105, ptr %l60, !tbaa !24
  %t106 = load i64, ptr %l56, !tbaa !24
  %t107 = icmp sge i64 %t106, 0
  br i1 %t107, label %bb25, label %bb26
bb24:
  %t109 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t111 = extractvalue { i64, ptr } %t109, 1
  %t112 = extractvalue { i64, ptr } %t109, 0
  %t113 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t112)
  call void @olang_textcopy(ptr %t113, ptr %t111, i64 %t112)
  %t114 = insertvalue { i64, ptr } undef, i64 %t112, 0
  %t115 = insertvalue { i64, ptr } %t114, ptr %t113, 1
  store { i64, ptr } %t115, ptr %l53, !tbaa !27
  br label %bb31
bb25:
  %t117 = load i64, ptr %l56, !tbaa !24
  %t118 = load i64, ptr %l59, !tbaa !24
  %t119 = icmp sle i64 %t117, %t118
  br i1 %t119, label %bb27, label %bb28
bb26:
  call void @__olang_check_failed(ptr @olang_loc_7e828aa3d49398bd_dbb08dcf54087001)
  unreachable
bb27:
  %t121 = load i64, ptr %l59, !tbaa !24
  %t122 = load i64, ptr %l60, !tbaa !24
  %t123 = icmp sle i64 %t121, %t122
  br i1 %t123, label %bb29, label %bb30
bb28:
  call void @__olang_check_failed(ptr @olang_loc_7e828aa3d49398bd_dbb08dcf54087001)
  unreachable
bb29:
  %t125 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t126 = load ptr, ptr %t125, !tbaa !27
  %t127 = load i64, ptr %l56, !tbaa !24
  %t128 = load i64, ptr %l59, !tbaa !24
  %t129 = getelementptr i8, ptr %t126, i64 %t127
  %t130 = sub i64 %t128, %t127
  %t131 = insertvalue { i64, ptr } undef, i64 %t130, 0
  %t132 = insertvalue { i64, ptr } %t131, ptr %t129, 1
  %t134 = extractvalue { i64, ptr } %t132, 1
  %t135 = extractvalue { i64, ptr } %t132, 0
  %t136 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t135)
  call void @olang_textcopy(ptr %t136, ptr %t134, i64 %t135)
  %t137 = insertvalue { i64, ptr } undef, i64 %t135, 0
  %t138 = insertvalue { i64, ptr } %t137, ptr %t136, 1
  store { i64, ptr } %t138, ptr %l53, !tbaa !27
  br label %bb31
bb30:
  call void @__olang_check_failed(ptr @olang_loc_7e828aa3d49398bd_dbb08dcf54087001)
  unreachable
bb31:
  %t140 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t141 = extractvalue { i64, ptr } %t140, 0
  %t142 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t143 = extractvalue { i64, ptr } %t142, 0
  store i64 %t143, ptr %l69, !tbaa !24
  %t145 = load i64, ptr %l69, !tbaa !24
  %t146 = icmp eq i64 %t141, %t145
  br i1 %t146, label %bb32, label %bb33
bb32:
  %t148 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !27
  %t150 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t151 = load ptr, ptr %t150, !tbaa !27
  %t152 = load i64, ptr %l69, !tbaa !24
  %t153 = mul i64 %t152, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t149, ptr %t151, i64 %t153, i1 false)
  br label %bb34
bb33:
  %t154 = load { i64, ptr }, ptr %l53, !tbaa !27
  store { i64, ptr } %t154, ptr %l4, !tbaa !27
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s4)
  br label %bb35
bb35:
  %t155 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t157 = call i1 @compiler_2fbindgen_2eusable(ptr %s0, { i64, ptr } %t155)
  store i1 %t157, ptr %l72
  br label %bb36
bb36:
  %t158 = load i1, ptr %l72, !tbaa !21
  %t159 = xor i1 %t158, true
  br i1 %t159, label %bb37, label %bb38
bb37:
  %t161 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t162 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d84, i32 0, i32 1) }, 1
  %t163 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d84, i32 0, i32 1) }, 0
  %t165 = extractvalue { i64, ptr } %t161, 1
  %t166 = extractvalue { i64, ptr } %t161, 0
  %t167 = add i64 %t163, %t166
  %t168 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t167)
  call void @olang_textcopy(ptr %t168, ptr %t162, i64 %t163)
  %t169 = getelementptr i8, ptr %t168, i64 %t163
  call void @olang_textcopy(ptr %t169, ptr %t165, i64 %t166)
  %t170 = insertvalue { i64, ptr } undef, i64 %t167, 0
  %t171 = insertvalue { i64, ptr } %t170, ptr %t168, 1
  store { i64, ptr } %t171, ptr %l75, !tbaa !27
  %t172 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t173 = extractvalue { i64, ptr } %t172, 0
  %t174 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t175 = extractvalue { i64, ptr } %t174, 0
  store i64 %t175, ptr %l77, !tbaa !24
  %t177 = load i64, ptr %l77, !tbaa !24
  %t178 = icmp eq i64 %t173, %t177
  br i1 %t178, label %bb39, label %bb40
bb38:
  br label %bb42
bb39:
  %t180 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t181 = load ptr, ptr %t180, !tbaa !27
  %t182 = getelementptr { i64, ptr }, ptr %l75, i32 0, i32 1
  %t183 = load ptr, ptr %t182, !tbaa !27
  %t184 = load i64, ptr %l77, !tbaa !24
  %t185 = mul i64 %t184, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t181, ptr %t183, i64 %t185, i1 false)
  br label %bb41
bb40:
  %t186 = load { i64, ptr }, ptr %l75, !tbaa !27
  store { i64, ptr } %t186, ptr %l4, !tbaa !27
  br label %bb41
bb41:
  br label %bb42
bb42:
  br label %bb43
bb43:
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t189 = getelementptr %"compiler/bindgen:gen", ptr %t187, i32 0, i32 21
  %t190 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t193 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9b83f66eba65594537030636cb0b52b7(ptr %v0, ptr %s0, ptr %t189, { i64, ptr } %t190)
  store i1 %t193, ptr %l82
  br label %bb44
bb44:
  %t194 = load i1, ptr %l82, !tbaa !21
  br i1 %t194, label %bb45, label %bb46
bb45:
  store i1 true, ptr %l83, !tbaa !21
  br label %bb48
bb46:
  %t195 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t197 = call i1 @compiler_2fbindgen_2epreludeName(ptr %s0, { i64, ptr } %t195)
  store i1 %t197, ptr %l85
  br label %bb47
bb47:
  %t198 = load i1, ptr %l85, !tbaa !21
  store i1 %t198, ptr %l83, !tbaa !21
  br label %bb48
bb48:
  %t199 = load i1, ptr %l83, !tbaa !21
  %t200 = xor i1 %t199, true
  br i1 %t200, label %bb49, label %bb50
bb49:
  br label %bb56
bb50:
  br label %bb51
bb51:
  %t202 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t204 = extractvalue { i64, ptr } %t202, 1
  %t205 = extractvalue { i64, ptr } %t202, 0
  %t206 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d85, i32 0, i32 1) }, 1
  %t207 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d85, i32 0, i32 1) }, 0
  %t208 = add i64 %t205, %t207
  %t209 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t208)
  call void @olang_textcopy(ptr %t209, ptr %t204, i64 %t205)
  %t210 = getelementptr i8, ptr %t209, i64 %t205
  call void @olang_textcopy(ptr %t210, ptr %t206, i64 %t207)
  %t211 = insertvalue { i64, ptr } undef, i64 %t208, 0
  %t212 = insertvalue { i64, ptr } %t211, ptr %t209, 1
  store { i64, ptr } %t212, ptr %l88, !tbaa !27
  %t213 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t214 = extractvalue { i64, ptr } %t213, 0
  %t215 = load { i64, ptr }, ptr %l88, !tbaa !27
  %t216 = extractvalue { i64, ptr } %t215, 0
  store i64 %t216, ptr %l90, !tbaa !24
  %t218 = load i64, ptr %l90, !tbaa !24
  %t219 = icmp eq i64 %t214, %t218
  br i1 %t219, label %bb52, label %bb53
bb52:
  %t221 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t222 = load ptr, ptr %t221, !tbaa !27
  %t223 = getelementptr { i64, ptr }, ptr %l88, i32 0, i32 1
  %t224 = load ptr, ptr %t223, !tbaa !27
  %t225 = load i64, ptr %l90, !tbaa !24
  %t226 = mul i64 %t225, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t222, ptr %t224, i64 %t226, i1 false)
  br label %bb54
bb53:
  %t227 = load { i64, ptr }, ptr %l88, !tbaa !27
  store { i64, ptr } %t227, ptr %l4, !tbaa !27
  br label %bb54
bb54:
  br label %bb55
bb55:
  br label %bb43
bb56:
  %t228 = load i64, ptr %l1, !tbaa !24
  %t230 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t232 = extractvalue { i64, ptr } %t230, 1
  %t233 = extractvalue { i64, ptr } %t230, 0
  %t234 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t233)
  call void @olang_textcopy(ptr %t234, ptr %t232, i64 %t233)
  %t235 = insertvalue { i64, ptr } undef, i64 %t233, 0
  %t236 = insertvalue { i64, ptr } %t235, ptr %t234, 1
  %t238 = extractvalue { i64, ptr } %t236, 0
  %t239 = extractvalue { i64, ptr } %t236, 1
  %t240 = mul i64 %t238, 1
  %t241 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t240)
  call void @llvm.memcpy.p0.p0.i64(ptr %t241, ptr %t239, i64 %t240, i1 false)
  %t242 = insertvalue { i64, ptr } undef, i64 %t238, 0
  %t243 = insertvalue { i64, ptr } %t242, ptr %t241, 1
  store { i64, ptr } %t243, ptr %l10, !tbaa !27
  %t245 = load ptr, ptr %l0, !tbaa !29
  %t247 = getelementptr %"compiler/bindgen:gen", ptr %t245, i32 0, i32 5
  %t251 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eRefMu_Hc21bcd245b67ffb6ee3e145838fcf2cf(ptr %v0, ptr %v0, ptr %t247, i64 %t228)
  store ptr %t251, ptr %l99
  br label %bb57
bb57:
  %t252 = load ptr, ptr %l99, !tbaa !29
  store ptr %t252, ptr %l100, !tbaa !29
  %t254 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t255 = load ptr, ptr %l100, !tbaa !29
  %t256 = getelementptr %"compiler/bindgen:record", ptr %t255, i32 0, i32 7
  %t257 = load { i64, ptr }, ptr %t256, !tbaa !27
  store { i64, ptr } %t257, ptr %l102, !tbaa !27
  %t259 = load ptr, ptr %l100, !tbaa !29
  %t260 = getelementptr %"compiler/bindgen:record", ptr %t259, i32 0, i32 7
  store { i64, ptr } %t254, ptr %t260, !tbaa !27
  %t261 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3arecord_2e7
  br i1 %t261, label %bb58, label %bb59
bb58:
  %t263 = load { i64, ptr }, ptr %l102
  %t264 = extractvalue { i64, ptr } %t263, 1
  call void @__olang_region_release(ptr %t264)
  store { i64, ptr } zeroinitializer, ptr %l102
  br label %bb59
bb59:
  %t265 = load ptr, ptr %l0, !tbaa !29
  %t267 = getelementptr %"compiler/bindgen:gen", ptr %t265, i32 0, i32 21
  store ptr %t267, ptr %l105, !tbaa !29
  %t268 = ptrtoint ptr %v0 to i64
  store i64 %t268, ptr %l106, !tbaa !24
  %t269 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2e0
  br i1 %t269, label %bb60, label %bb61
bb60:
  %t271 = call ptr @__olang_region_make(ptr %v0)
  %t272 = ptrtoint ptr %t271 to i64
  store i64 %t272, ptr %l106, !tbaa !24
  br label %bb61
bb61:
  %t273 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t275 = extractvalue { i64, ptr } %t273, 1
  %t276 = extractvalue { i64, ptr } %t273, 0
  %t277 = load i64, ptr %l106
  %t278 = inttoptr i64 %t277 to ptr
  %t279 = call ptr @__olang_scope_alloc(ptr %t278, i64 %t276)
  call void @olang_textcopy(ptr %t279, ptr %t275, i64 %t276)
  %t280 = insertvalue { i64, ptr } undef, i64 %t276, 0
  %t281 = insertvalue { i64, ptr } %t280, ptr %t279, 1
  %t283 = load i64, ptr %l106
  %t284 = inttoptr i64 %t283 to ptr
  %t285 = extractvalue { i64, ptr } %t281, 0
  %t286 = extractvalue { i64, ptr } %t281, 1
  %t287 = mul i64 %t285, 1
  %t288 = call ptr @__olang_scope_alloc(ptr %t284, i64 %t287)
  call void @llvm.memcpy.p0.p0.i64(ptr %t288, ptr %t286, i64 %t287, i1 false)
  %t289 = insertvalue { i64, ptr } undef, i64 %t285, 0
  %t290 = insertvalue { i64, ptr } %t289, ptr %t288, 1
  %t291 = load ptr, ptr %l105, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v0, ptr %v0, ptr %t291, { i64, ptr } %t290, i64 0)
  br label %bb62
bb62:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enumType(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i1
  %l6 = alloca i1
  %l9 = alloca i64
  %l11 = alloca i1
  %l12 = alloca i1
  %l14 = alloca i1
  %l17 = alloca i64
  %l19 = alloca i1
  %l20 = alloca ptr
  %l21 = alloca i32
  %l24 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l28 = alloca i64
  %l30 = alloca i1
  %l33 = alloca i64
  %l35 = alloca i1
  %l38 = alloca i64
  %l40 = alloca i64
  %l43 = alloca i64
  %l45 = alloca i1
  %l48 = alloca i64
  %l50 = alloca i1
  %l53 = alloca i64
  %l55 = alloca i1
  %l57 = alloca i64
  %l61 = alloca i1
  %l62 = alloca ptr
  %l63 = alloca i32
  %l65 = alloca { i64, ptr }
  %l66 = alloca i64
  %l69 = alloca ptr
  %l70 = alloca i32
  %l72 = alloca { i64, ptr }
  %l73 = alloca i64
  %l74 = alloca ptr
  %l75 = alloca i32
  %l77 = alloca { i64, ptr }
  %l78 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d86, i32 0, i32 1) })
  store i1 %t3, ptr %l6
  br label %bb1
bb1:
  %t4 = load i1, ptr %l6, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t8 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enode(ptr %v0, ptr %v0, ptr %t5, i32 0, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d87, i32 0, i32 1) }, i64 -1, i1 false, i64 0)
  store i64 %t8, ptr %l9
  br label %bb4
bb3:
  br label %bb5
bb4:
  call void @__olang_scope_close(ptr %s0)
  %t9 = load i64, ptr %l9, !tbaa !24
  store i64 %t9, ptr %rv
  br label %ret
bb5:
  %t10 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t12 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t10, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d88, i32 0, i32 1) })
  store i1 %t12, ptr %l11
  br label %bb6
bb6:
  %t13 = load i1, ptr %l11, !tbaa !21
  br i1 %t13, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb10
bb8:
  %t14 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t16 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t14, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d89, i32 0, i32 1) })
  store i1 %t16, ptr %l14
  br label %bb9
bb9:
  %t17 = load i1, ptr %l14, !tbaa !21
  store i1 %t17, ptr %l12, !tbaa !21
  br label %bb10
bb10:
  %t18 = load i1, ptr %l12, !tbaa !21
  br i1 %t18, label %bb11, label %bb12
bb11:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t22 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enode(ptr %v0, ptr %v0, ptr %t19, i32 1, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d90, i32 0, i32 1) }, i64 -1, i1 false, i64 0)
  store i64 %t22, ptr %l17
  br label %bb13
bb12:
  br label %bb14
bb13:
  call void @__olang_scope_close(ptr %s0)
  %t23 = load i64, ptr %l17, !tbaa !24
  store i64 %t23, ptr %rv
  br label %ret
bb14:
  %t24 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t26 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t24, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d91, i32 0, i32 1) })
  store i1 %t26, ptr %l19
  br label %bb15
bb15:
  %t27 = load i1, ptr %l19, !tbaa !21
  br i1 %t27, label %bb16, label %bb17
bb16:
  %t28 = load ptr, ptr %l0, !tbaa !29
  store ptr %t28, ptr %l20, !tbaa !29
  store i32 1, ptr %l21
  %t29 = load i64, ptr %l2, !tbaa !24
  %t31 = icmp eq i64 %t29, 1
  br i1 %t31, label %bb18, label %bb19
bb17:
  br label %bb25
bb18:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d92, i32 0, i32 1) }, ptr %l24, !tbaa !27
  br label %bb23
bb19:
  %t33 = load i64, ptr %l2, !tbaa !24
  %t35 = icmp eq i64 %t33, 2
  br i1 %t35, label %bb20, label %bb21
bb20:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d93, i32 0, i32 1) }, ptr %l27, !tbaa !27
  br label %bb22
bb21:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d94, i32 0, i32 1) }, ptr %l27, !tbaa !27
  br label %bb22
bb22:
  %t37 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t37, ptr %l24, !tbaa !27
  br label %bb23
bb23:
  %t38 = load ptr, ptr %l20, !tbaa !29
  %t39 = load i32, ptr %l21, !range !{i32 0, i32 7}
  %t40 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t41 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enode(ptr %v0, ptr %v0, ptr %t38, i32 %t39, { i64, ptr } %t40, i64 -1, i1 false, i64 0)
  store i64 %t41, ptr %l28
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s0)
  %t42 = load i64, ptr %l28, !tbaa !24
  store i64 %t42, ptr %rv
  br label %ret
bb25:
  %t43 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t45 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t43, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d95, i32 0, i32 1) })
  store i1 %t45, ptr %l30
  br label %bb26
bb26:
  %t46 = load i1, ptr %l30, !tbaa !21
  br i1 %t46, label %bb27, label %bb28
bb27:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t50 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enode(ptr %v0, ptr %v0, ptr %t47, i32 1, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d96, i32 0, i32 1) }, i64 -1, i1 false, i64 0)
  store i64 %t50, ptr %l33
  br label %bb29
bb28:
  br label %bb30
bb29:
  call void @__olang_scope_close(ptr %s0)
  %t51 = load i64, ptr %l33, !tbaa !24
  store i64 %t51, ptr %rv
  br label %ret
bb30:
  %t52 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t54 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t52, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d97, i32 0, i32 1) })
  store i1 %t54, ptr %l35
  br label %bb31
bb31:
  %t55 = load i1, ptr %l35, !tbaa !21
  br i1 %t55, label %bb32, label %bb33
bb32:
  %t56 = load i64, ptr %l3, !tbaa !24
  %t58 = icmp sgt i64 %t56, 0
  br i1 %t58, label %bb34, label %bb35
bb33:
  br label %bb39
bb34:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ebad(ptr %v0, ptr %v0, ptr %t60, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d98, i32 0, i32 1) })
  store i64 %t62, ptr %l40
  br label %bb36
bb35:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t66 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enode(ptr %v0, ptr %v0, ptr %t63, i32 1, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d99, i32 0, i32 1) }, i64 -1, i1 false, i64 0)
  store i64 %t66, ptr %l43
  br label %bb37
bb36:
  %t67 = load i64, ptr %l40, !tbaa !24
  store i64 %t67, ptr %l38, !tbaa !24
  br label %bb38
bb37:
  %t68 = load i64, ptr %l43, !tbaa !24
  store i64 %t68, ptr %l38, !tbaa !24
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s0)
  %t69 = load i64, ptr %l38, !tbaa !24
  store i64 %t69, ptr %rv
  br label %ret
bb39:
  %t70 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t72 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t70, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d100, i32 0, i32 1) })
  store i1 %t72, ptr %l45
  br label %bb40
bb40:
  %t73 = load i1, ptr %l45, !tbaa !21
  br i1 %t73, label %bb41, label %bb42
bb41:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t77 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enode(ptr %v0, ptr %v0, ptr %t74, i32 1, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d101, i32 0, i32 1) }, i64 -1, i1 false, i64 0)
  store i64 %t77, ptr %l48
  br label %bb43
bb42:
  br label %bb44
bb43:
  call void @__olang_scope_close(ptr %s0)
  %t78 = load i64, ptr %l48, !tbaa !24
  store i64 %t78, ptr %rv
  br label %ret
bb44:
  %t79 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t81 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t79, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d102, i32 0, i32 1) })
  store i1 %t81, ptr %l50
  br label %bb45
bb45:
  %t82 = load i1, ptr %l50, !tbaa !21
  br i1 %t82, label %bb46, label %bb47
bb46:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t86 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enode(ptr %v0, ptr %v0, ptr %t83, i32 1, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d103, i32 0, i32 1) }, i64 -1, i1 false, i64 0)
  store i64 %t86, ptr %l53
  br label %bb48
bb47:
  br label %bb49
bb48:
  call void @__olang_scope_close(ptr %s0)
  %t87 = load i64, ptr %l53, !tbaa !24
  store i64 %t87, ptr %rv
  br label %ret
bb49:
  %t88 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t90 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t88, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d104, i32 0, i32 1) })
  store i1 %t90, ptr %l55
  br label %bb50
bb50:
  %t91 = load i1, ptr %l55, !tbaa !21
  br i1 %t91, label %bb51, label %bb52
bb51:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ebad(ptr %v0, ptr %v0, ptr %t92, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d105, i32 0, i32 1) })
  store i64 %t94, ptr %l57
  br label %bb53
bb52:
  br label %bb54
bb53:
  call void @__olang_scope_close(ptr %s0)
  %t95 = load i64, ptr %l57, !tbaa !24
  store i64 %t95, ptr %rv
  br label %ret
bb54:
  %t96 = load i64, ptr %l2, !tbaa !24
  %t98 = icmp eq i64 %t96, 2
  store i1 %t98, ptr %l4, !tbaa !21
  %t100 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t102 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t100, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d106, i32 0, i32 1) })
  store i1 %t102, ptr %l61
  br label %bb55
bb55:
  %t103 = load i1, ptr %l61, !tbaa !21
  br i1 %t103, label %bb56, label %bb57
bb56:
  %t104 = load ptr, ptr %l0, !tbaa !29
  store ptr %t104, ptr %l62, !tbaa !29
  store i32 1, ptr %l63
  %t105 = load i1, ptr %l4, !tbaa !21
  br i1 %t105, label %bb58, label %bb59
bb57:
  br label %bb62
bb58:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d107, i32 0, i32 1) }, ptr %l65, !tbaa !27
  br label %bb60
bb59:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d108, i32 0, i32 1) }, ptr %l65, !tbaa !27
  br label %bb60
bb60:
  %t107 = load ptr, ptr %l62, !tbaa !29
  %t108 = load i32, ptr %l63, !range !{i32 0, i32 7}
  %t109 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t110 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enode(ptr %v0, ptr %v0, ptr %t107, i32 %t108, { i64, ptr } %t109, i64 -1, i1 false, i64 0)
  store i64 %t110, ptr %l66
  br label %bb61
bb61:
  call void @__olang_scope_close(ptr %s0)
  %t111 = load i64, ptr %l66, !tbaa !24
  store i64 %t111, ptr %rv
  br label %ret
bb62:
  %t112 = load i64, ptr %l3, !tbaa !24
  %t114 = icmp sgt i64 %t112, 0
  br i1 %t114, label %bb63, label %bb64
bb63:
  %t116 = load ptr, ptr %l0, !tbaa !29
  store ptr %t116, ptr %l69, !tbaa !29
  store i32 1, ptr %l70
  %t117 = load i1, ptr %l4, !tbaa !21
  br i1 %t117, label %bb65, label %bb66
bb64:
  br label %bb69
bb65:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d109, i32 0, i32 1) }, ptr %l72, !tbaa !27
  br label %bb67
bb66:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d110, i32 0, i32 1) }, ptr %l72, !tbaa !27
  br label %bb67
bb67:
  %t119 = load ptr, ptr %l69, !tbaa !29
  %t120 = load i32, ptr %l70, !range !{i32 0, i32 7}
  %t121 = load { i64, ptr }, ptr %l72, !tbaa !27
  %t122 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enode(ptr %v0, ptr %v0, ptr %t119, i32 %t120, { i64, ptr } %t121, i64 -1, i1 false, i64 0)
  store i64 %t122, ptr %l73
  br label %bb68
bb68:
  call void @__olang_scope_close(ptr %s0)
  %t123 = load i64, ptr %l73, !tbaa !24
  store i64 %t123, ptr %rv
  br label %ret
bb69:
  %t124 = load ptr, ptr %l0, !tbaa !29
  store ptr %t124, ptr %l74, !tbaa !29
  store i32 1, ptr %l75
  %t125 = load i1, ptr %l4, !tbaa !21
  br i1 %t125, label %bb70, label %bb71
bb70:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d111, i32 0, i32 1) }, ptr %l77, !tbaa !27
  br label %bb72
bb71:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d112, i32 0, i32 1) }, ptr %l77, !tbaa !27
  br label %bb72
bb72:
  %t127 = load ptr, ptr %l74, !tbaa !29
  %t128 = load i32, ptr %l75, !range !{i32 0, i32 7}
  %t129 = load { i64, ptr }, ptr %l77, !tbaa !27
  %t130 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enode(ptr %v0, ptr %v0, ptr %t127, i32 %t128, { i64, ptr } %t129, i64 -1, i1 false, i64 0)
  store i64 %t130, ptr %l78
  br label %bb73
bb73:
  call void @__olang_scope_close(ptr %s0)
  %t131 = load i64, ptr %l78, !tbaa !24
  store i64 %t131, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enumbersOnly(ptr %v0, ptr %v1, ptr %a0, %"compiler/bindgen:ctype" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/bindgen:ctype"
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l9 = alloca i1
  %l15 = alloca i64
  %l18 = alloca i64
  %l37 = alloca ptr
  %l43 = alloca i64
  %l44 = alloca %"compiler/bindgen:ctype"
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store %"compiler/bindgen:ctype" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = getelementptr %"compiler/bindgen:ctype", ptr %l1, i32 0, i32 1
  %t2 = load { i64, ptr }, ptr %t1, !tbaa !27
  %t4 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t2, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d113, i32 0, i32 1) })
  store i1 %t4, ptr %l9
  br label %bb1
bb1:
  %t5 = load i1, ptr %l9, !tbaa !21
  br i1 %t5, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  store i64 0, ptr %l2, !tbaa !24
  %t7 = getelementptr %"compiler/bindgen:ctype", ptr %l1, i32 0, i32 4
  %t8 = load i64, ptr %t7, !tbaa !24
  store i64 %t8, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t10 = load i64, ptr %l3, !tbaa !24
  %t11 = load i64, ptr %l2, !tbaa !24
  %t14 = icmp sgt i64 %t10, %t11
  br i1 %t14, label %bb5, label %bb6
bb5:
  %t16 = load i64, ptr %l4, !tbaa !24
  %t18 = icmp sgt i64 %t16, 0
  br i1 %t18, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l15, !tbaa !24
  br label %bb10
bb7:
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = load i64, ptr %l2, !tbaa !24
  %t24 = sub i64 %t20, %t21
  %t25 = load i64, ptr %l4, !tbaa !24
  %t28 = add i64 %t24, %t25
  %t30 = sub i64 %t28, 1
  %t31 = load i64, ptr %l4, !tbaa !24
  %t34 = sdiv i64 %t30, %t31
  store i64 %t34, ptr %l18, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb9
bb9:
  %t36 = load i64, ptr %l18, !tbaa !24
  store i64 %t36, ptr %l15, !tbaa !24
  br label %bb10
bb10:
  %t37 = load i64, ptr %l15, !tbaa !24
  store i64 %t37, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb11
bb11:
  store %olang.scope zeroinitializer, ptr %s3
  %t38 = load i64, ptr %l6, !tbaa !24
  %t39 = load i64, ptr %l5, !tbaa !24
  %t42 = icmp slt i64 %t38, %t39
  %t44 = xor i1 %t42, true
  br i1 %t44, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s3)
  br label %bb21
bb13:
  br label %bb14
bb14:
  %t46 = load i64, ptr %l2, !tbaa !24
  %t47 = load i64, ptr %l6, !tbaa !24
  %t48 = load i64, ptr %l4, !tbaa !24
  %t51 = mul i64 %t47, %t48
  %t54 = add i64 %t46, %t51
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/bindgen:gen", ptr %t56, i32 0, i32 16
  store ptr %t58, ptr %l37, !tbaa !29
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/bindgen:gen", ptr %t59, i32 0, i32 17
  %t62 = getelementptr %"compiler/bindgen:ctype", ptr %l1, i32 0, i32 5
  %t63 = load i64, ptr %t62, !tbaa !24
  %t67 = add i64 %t63, %t54
  %t70 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t61, i64 %t67)
  store i64 %t70, ptr %l43
  br label %bb15
bb15:
  %t71 = load ptr, ptr %l37, !tbaa !29
  %t72 = load i64, ptr %l43, !tbaa !24
  %t73 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %s3, ptr %t71, i64 %t72)
  store %"compiler/bindgen:ctype" %t73, ptr %l44
  br label %bb16
bb16:
  %t74 = getelementptr %"compiler/bindgen:ctype", ptr %l44, i32 0, i32 0
  %t75 = load i32, ptr %t74, !range !{i32 0, i32 7}
  %t77 = trunc i64 1 to i32
  %t78 = icmp eq i32 %t75, %t77
  %t80 = xor i1 %t78, true
  br i1 %t80, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s3)
  br label %bb20
bb20:
  %t83 = load i64, ptr %l6, !tbaa !24
  %t85 = add i64 %t83, 1
  store i64 %t85, ptr %l6, !tbaa !24
  br label %bb11
bb21:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eopaque(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l7 = alloca ptr
  %l11 = alloca i1
  %l17 = alloca i1
  %l22 = alloca ptr
  %l26 = alloca i1
  %l30 = alloca i1
  %l34 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/bindgen:gen", ptr %t1, i32 0, i32 5
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eRef_3ccompiler_2fbindgen_3arecord_3e(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  store ptr %t7, ptr %l7
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l7, !tbaa !29
  store ptr %t8, ptr %l2, !tbaa !29
  %t9 = load ptr, ptr %l2, !tbaa !29
  %t11 = getelementptr %"compiler/bindgen:record", ptr %t9, i32 0, i32 2
  %t12 = load i1, ptr %t11, !tbaa !21
  %t14 = xor i1 %t12, true
  br i1 %t14, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb4
bb3:
  %t16 = load ptr, ptr %l2, !tbaa !29
  %t18 = getelementptr %"compiler/bindgen:record", ptr %t16, i32 0, i32 10
  %t19 = load i1, ptr %t18, !tbaa !21
  store i1 %t19, ptr %l11, !tbaa !21
  br label %bb4
bb4:
  %t21 = load i1, ptr %l11, !tbaa !21
  br i1 %t21, label %bb5, label %bb6
bb5:
  store i1 false, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load i64, ptr %l1, !tbaa !24
  %t27 = call i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eplain(ptr %v0, ptr %t23, i64 %t24)
  store i1 %t27, ptr %l17
  br label %bb8
bb8:
  %t28 = load i1, ptr %l17, !tbaa !21
  br i1 %t28, label %bb9, label %bb10
bb9:
  store i1 false, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/bindgen:gen", ptr %t30, i32 0, i32 5
  %t33 = load i64, ptr %l1, !tbaa !24
  %t36 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eRef_3ccompiler_2fbindgen_3arecord_3e(ptr %v0, ptr %v0, ptr %t32, i64 %t33)
  store ptr %t36, ptr %l22
  br label %bb12
bb12:
  %t37 = load ptr, ptr %l22, !tbaa !29
  store ptr %t37, ptr %l3, !tbaa !29
  %t38 = load ptr, ptr %l3, !tbaa !29
  %t40 = getelementptr %"compiler/bindgen:record", ptr %t38, i32 0, i32 13
  %t41 = load i64, ptr %t40, !tbaa !24
  %t43 = icmp sgt i64 %t41, 0
  br i1 %t43, label %bb13, label %bb14
bb13:
  %t45 = load ptr, ptr %l3, !tbaa !29
  %t47 = getelementptr %"compiler/bindgen:record", ptr %t45, i32 0, i32 14
  %t48 = load i64, ptr %t47, !tbaa !24
  %t50 = icmp sgt i64 %t48, 0
  store i1 %t50, ptr %l26, !tbaa !21
  br label %bb15
bb14:
  store i1 false, ptr %l26, !tbaa !21
  br label %bb15
bb15:
  %t52 = load i1, ptr %l26, !tbaa !21
  br i1 %t52, label %bb16, label %bb17
bb16:
  %t53 = load ptr, ptr %l3, !tbaa !29
  %t55 = getelementptr %"compiler/bindgen:record", ptr %t53, i32 0, i32 14
  %t56 = load i64, ptr %t55, !tbaa !24
  %t58 = icmp sle i64 %t56, 8
  store i1 %t58, ptr %l30, !tbaa !21
  br label %bb18
bb17:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb18
bb18:
  %t60 = load i1, ptr %l30, !tbaa !21
  br i1 %t60, label %bb19, label %bb20
bb19:
  %t61 = load ptr, ptr %l3, !tbaa !29
  %t63 = getelementptr %"compiler/bindgen:record", ptr %t61, i32 0, i32 13
  %t64 = load i64, ptr %t63, !tbaa !24
  %t65 = load ptr, ptr %l3, !tbaa !29
  %t67 = getelementptr %"compiler/bindgen:record", ptr %t65, i32 0, i32 14
  %t68 = load i64, ptr %t67, !tbaa !24
  %t71 = srem i64 %t64, %t68
  %t73 = icmp eq i64 %t71, 0
  store i1 %t73, ptr %l34, !tbaa !21
  br label %bb21
bb20:
  store i1 false, ptr %l34, !tbaa !21
  br label %bb21
bb21:
  %t75 = load i1, ptr %l34, !tbaa !21
  store i1 %t75, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2epackedFields(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %lp2 = alloca ptr
  %l3 = alloca %"compiler/bindgen:record"
  %l4 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l13 = alloca %"compiler/bindgen:ctype"
  %l14 = alloca i64
  %l15 = alloca { i64, ptr }
  %l16 = alloca %"compiler/bindgen:ctype"
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l21 = alloca %"compiler/bindgen:record"
  %l23 = alloca %"compiler/bindgen:record"
  %l26 = alloca i1
  %l28 = alloca i1
  %l30 = alloca i1
  %l32 = alloca i64
  %l35 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l37 = alloca i64
  %l41 = alloca i64
  %l44 = alloca i64
  %l64 = alloca { i64, ptr }
  %l65 = alloca i1
  %l66 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l67 = alloca ptr
  %l70 = alloca { i64, ptr }
  %l71 = alloca i64
  %l75 = alloca %"compiler/bindgen:ctype"
  %l78 = alloca i64
  %l79 = alloca ptr
  %l82 = alloca { i64, ptr }
  %l85 = alloca { i64, ptr }
  %l90 = alloca i1
  %l94 = alloca i1
  %l96 = alloca i1
  %l97 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l98 = alloca ptr
  %l99 = alloca i64
  %l101 = alloca { i64, ptr }
  %l104 = alloca { i64, ptr }
  %l113 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l119 = alloca %"compiler/bindgen:ctype"
  %l123 = alloca i1
  %l125 = alloca i1
  %l126 = alloca i1
  %l128 = alloca i1
  %l129 = alloca i1
  %l131 = alloca i64
  %l133 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l134 = alloca ptr
  %l135 = alloca i64
  %l137 = alloca { i64, ptr }
  %l139 = alloca i1
  %l140 = alloca { i64, ptr }
  %l145 = alloca i64
  %l147 = alloca i64
  %l154 = alloca i1
  %l156 = alloca i64
  %l158 = alloca i1
  %l160 = alloca i1
  %l161 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l162 = alloca ptr
  %l163 = alloca i64
  %l165 = alloca { i64, ptr }
  %l167 = alloca i1
  %l168 = alloca { i64, ptr }
  %l172 = alloca i64
  %l174 = alloca i64
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %t9 = alloca %"compiler/bindgen:record", align 8
  %t12 = alloca %"compiler/bindgen:record", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l17
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t2, ptr %lp2
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  %t4 = load ptr, ptr %lp2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/bindgen:gen", ptr %t5, i32 0, i32 5
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eAt_3ccompiler_2fbindgen_3arecord_3e(ptr %t9, ptr %v0, ptr %v0, ptr %t7, i64 %a1)
  call void @llvm.memmove.p0.p0.i64(ptr %l21, ptr %t9, i64 216, i1 false)
  br label %bb2
bb2:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbindgen_3arecord(ptr %t12, ptr %v0, ptr %l21)
  call void @llvm.memmove.p0.p0.i64(ptr %l23, ptr %t12, i64 216, i1 false)
  br label %bb3
bb3:
  call void @llvm.memmove.p0.p0.i64(ptr %l3, ptr %l23, i64 216, i1 false)
  %t14 = getelementptr %"compiler/bindgen:record", ptr %l3, i32 0, i32 2
  %t15 = load i1, ptr %t14, !tbaa !21
  %t17 = xor i1 %t15, true
  br i1 %t17, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb6
bb5:
  %t19 = getelementptr %"compiler/bindgen:record", ptr %l3, i32 0, i32 1
  %t20 = load i1, ptr %t19, !tbaa !21
  store i1 %t20, ptr %l26, !tbaa !21
  br label %bb6
bb6:
  %t22 = load i1, ptr %l26, !tbaa !21
  br i1 %t22, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l28, !tbaa !21
  br label %bb9
bb8:
  %t23 = getelementptr %"compiler/bindgen:record", ptr %l3, i32 0, i32 10
  %t24 = load i1, ptr %t23, !tbaa !21
  store i1 %t24, ptr %l28, !tbaa !21
  br label %bb9
bb9:
  %t26 = load i1, ptr %l28, !tbaa !21
  br i1 %t26, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb13
bb11:
  %t27 = getelementptr %"compiler/bindgen:record", ptr %l3, i32 0, i32 4
  %t29 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t27)
  store i64 %t29, ptr %l32
  br label %bb12
bb12:
  %t30 = load i64, ptr %l32, !tbaa !24
  %t31 = icmp eq i64 %t30, 0
  store i1 %t31, ptr %l30, !tbaa !21
  br label %bb13
bb13:
  %t33 = load i1, ptr %l30, !tbaa !21
  br i1 %t33, label %bb14, label %bb15
bb14:
  %t34 = load ptr, ptr %lp2
  %t35 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t34
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t35, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t37 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2ector(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t37, ptr %l35
  br label %bb17
bb17:
  %t38 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l35
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t38, ptr %l4
  store i64 0, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  %t39 = getelementptr %"compiler/bindgen:record", ptr %l3, i32 0, i32 4
  %t41 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t39)
  store i64 %t41, ptr %l37
  br label %bb18
bb18:
  %t42 = load i64, ptr %l37, !tbaa !24
  store i64 %t42, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t43 = load i64, ptr %l7, !tbaa !24
  %t44 = load i64, ptr %l6, !tbaa !24
  %t47 = icmp sgt i64 %t43, %t44
  br i1 %t47, label %bb19, label %bb20
bb19:
  %t49 = load i64, ptr %l8, !tbaa !24
  %t51 = icmp sgt i64 %t49, 0
  br i1 %t51, label %bb21, label %bb22
bb20:
  store i64 0, ptr %l41, !tbaa !24
  br label %bb24
bb21:
  %t53 = load i64, ptr %l7, !tbaa !24
  %t54 = load i64, ptr %l6, !tbaa !24
  %t57 = sub i64 %t53, %t54
  %t58 = load i64, ptr %l8, !tbaa !24
  %t61 = add i64 %t57, %t58
  %t63 = sub i64 %t61, 1
  %t64 = load i64, ptr %l8, !tbaa !24
  %t67 = sdiv i64 %t63, %t64
  store i64 %t67, ptr %l44, !tbaa !24
  br label %bb23
bb22:
  store i64 0, ptr %l44, !tbaa !24
  br label %bb23
bb23:
  %t69 = load i64, ptr %l44, !tbaa !24
  store i64 %t69, ptr %l41, !tbaa !24
  br label %bb24
bb24:
  %t70 = load i64, ptr %l41, !tbaa !24
  store i64 %t70, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb25
bb25:
  store %olang.scope zeroinitializer, ptr %s3
  %t71 = load i64, ptr %l10, !tbaa !24
  %t72 = load i64, ptr %l9, !tbaa !24
  %t75 = icmp slt i64 %t71, %t72
  %t77 = xor i1 %t75, true
  br i1 %t77, label %bb26, label %bb27
bb26:
  call void @__olang_scope_close(ptr %s3)
  br label %bb112
bb27:
  br label %bb28
bb28:
  %t79 = load i64, ptr %l6, !tbaa !24
  %t80 = load i64, ptr %l10, !tbaa !24
  %t81 = load i64, ptr %l8, !tbaa !24
  %t84 = mul i64 %t80, %t81
  %t87 = add i64 %t79, %t84
  store i64 %t87, ptr %l11, !tbaa !24
  %t89 = getelementptr %"compiler/bindgen:record", ptr %l3, i32 0, i32 4
  %t90 = load i64, ptr %l11, !tbaa !24
  %t93 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t89, i64 %t90)
  store { i64, ptr } %t93, ptr %l64
  br label %bb29
bb29:
  %t94 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t95 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s3, { i64, ptr } %t94, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d114, i32 0, i32 1) })
  store i1 %t95, ptr %l65
  br label %bb30
bb30:
  %t96 = load i1, ptr %l65, !tbaa !21
  br i1 %t96, label %bb31, label %bb32
bb31:
  %t97 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t97, ptr %l66
  br label %bb33
bb32:
  br label %bb34
bb33:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t98 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l66
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t98, ptr %rv
  br label %ret
bb34:
  %t99 = load ptr, ptr %l0, !tbaa !29
  store ptr %t99, ptr %l67, !tbaa !29
  %t100 = getelementptr %"compiler/bindgen:record", ptr %l3, i32 0, i32 5
  %t101 = load i64, ptr %l11, !tbaa !24
  %t104 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t100, i64 %t101)
  store { i64, ptr } %t104, ptr %l70
  br label %bb35
bb35:
  %t105 = load ptr, ptr %l67, !tbaa !29
  %t106 = load { i64, ptr }, ptr %l70, !tbaa !27
  %t107 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eparseType(ptr %v0, ptr %v0, ptr %t105, { i64, ptr } %t106, i64 0)
  store i64 %t107, ptr %l71
  br label %bb36
bb36:
  %t108 = load i64, ptr %l71, !tbaa !24
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = getelementptr %"compiler/bindgen:gen", ptr %t109, i32 0, i32 16
  %t115 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %v0, ptr %t111, i64 %t108)
  store %"compiler/bindgen:ctype" %t115, ptr %l75
  br label %bb37
bb37:
  %t116 = load %"compiler/bindgen:ctype", ptr %l75
  store %"compiler/bindgen:ctype" %t116, ptr %l13
  %t117 = getelementptr %"compiler/bindgen:record", ptr %l3, i32 0, i32 16
  %t118 = load i64, ptr %l11, !tbaa !24
  %t121 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t117, i64 %t118)
  store i64 %t121, ptr %l78
  br label %bb38
bb38:
  %t122 = load i64, ptr %l78, !tbaa !24
  store i64 %t122, ptr %l14, !tbaa !24
  %t123 = load ptr, ptr %l0, !tbaa !29
  store ptr %t123, ptr %l79, !tbaa !29
  %t124 = getelementptr %"compiler/bindgen:record", ptr %l3, i32 0, i32 4
  %t125 = load i64, ptr %l11, !tbaa !24
  %t128 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t124, i64 %t125)
  store { i64, ptr } %t128, ptr %l82
  br label %bb39
bb39:
  %t129 = load i64, ptr %l11, !tbaa !24
  %t130 = load ptr, ptr %l79, !tbaa !29
  %t131 = load { i64, ptr }, ptr %l82, !tbaa !27
  %t134 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eparamName(ptr %v0, ptr %v0, ptr %s0, ptr %s3, ptr %t130, { i64, ptr } %t131, i64 %t129, ptr %l4)
  store { i64, ptr } %t134, ptr %l85
  br label %bb40
bb40:
  %t135 = load { i64, ptr }, ptr %l85, !tbaa !27
  store { i64, ptr } %t135, ptr %l15, !tbaa !27
  %t136 = load i64, ptr %l14, !tbaa !24
  %t138 = icmp sge i64 %t136, 0
  br i1 %t138, label %bb41, label %bb42
bb41:
  store %olang.scope zeroinitializer, ptr %s5
  %t140 = load i64, ptr %l14, !tbaa !24
  %t142 = icmp eq i64 %t140, 0
  br i1 %t142, label %bb43, label %bb44
bb42:
  br label %bb58
bb43:
  store i1 true, ptr %l90, !tbaa !21
  br label %bb45
bb44:
  %t144 = getelementptr %"compiler/bindgen:ctype", ptr %l13, i32 0, i32 0
  %t145 = load i32, ptr %t144, !range !{i32 0, i32 7}
  %t147 = trunc i64 1 to i32
  %t148 = icmp eq i32 %t145, %t147
  %t150 = xor i1 %t148, true
  store i1 %t150, ptr %l90, !tbaa !21
  br label %bb45
bb45:
  %t152 = load i1, ptr %l90, !tbaa !21
  br i1 %t152, label %bb46, label %bb47
bb46:
  store i1 true, ptr %l94, !tbaa !21
  br label %bb49
bb47:
  %t153 = getelementptr %"compiler/bindgen:ctype", ptr %l13, i32 0, i32 1
  %t154 = load { i64, ptr }, ptr %t153, !tbaa !27
  %t156 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s5, { i64, ptr } %t154, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d115, i32 0, i32 1) })
  store i1 %t156, ptr %l96
  br label %bb48
bb48:
  %t157 = load i1, ptr %l96, !tbaa !21
  store i1 %t157, ptr %l94, !tbaa !21
  br label %bb49
bb49:
  %t158 = load i1, ptr %l94, !tbaa !21
  br i1 %t158, label %bb50, label %bb51
bb50:
  %t159 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t159, ptr %l97
  br label %bb52
bb51:
  br label %bb53
bb52:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t160 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l97
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t160, ptr %rv
  br label %ret
bb53:
  %t161 = load ptr, ptr %lp2
  store ptr %t161, ptr %l98, !tbaa !29
  %t162 = ptrtoint ptr %v1 to i64
  store i64 %t162, ptr %l99, !tbaa !24
  %t163 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t163, label %bb54, label %bb55
bb54:
  %t165 = call ptr @__olang_region_make(ptr %v1)
  %t166 = ptrtoint ptr %t165 to i64
  store i64 %t166, ptr %l99, !tbaa !24
  br label %bb55
bb55:
  %t167 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t167, ptr %l101, !tbaa !27
  %t168 = getelementptr %"compiler/bindgen:ctype", ptr %l13, i32 0, i32 1
  %t169 = load { i64, ptr }, ptr %t168, !tbaa !27
  %t170 = load i64, ptr %l14, !tbaa !24
  %t173 = call { i64, ptr } @compiler_2fbindgen_2ebitfieldType(ptr %v0, ptr %s5, { i64, ptr } %t169, i64 %t170)
  store { i64, ptr } %t173, ptr %l104
  br label %bb56
bb56:
  %t174 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d116, i32 0, i32 1) }, 1
  %t175 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d116, i32 0, i32 1) }, 0
  %t176 = load { i64, ptr }, ptr %l101, !tbaa !27
  %t177 = extractvalue { i64, ptr } %t176, 1
  %t178 = extractvalue { i64, ptr } %t176, 0
  %t179 = add i64 %t175, %t178
  %t180 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d117, i32 0, i32 1) }, 1
  %t181 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d117, i32 0, i32 1) }, 0
  %t182 = add i64 %t179, %t181
  %t183 = load { i64, ptr }, ptr %l104, !tbaa !27
  %t184 = extractvalue { i64, ptr } %t183, 1
  %t185 = extractvalue { i64, ptr } %t183, 0
  %t186 = add i64 %t182, %t185
  %t187 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d118, i32 0, i32 1) }, 1
  %t188 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d118, i32 0, i32 1) }, 0
  %t189 = add i64 %t186, %t188
  %t190 = load i64, ptr %l99
  %t191 = inttoptr i64 %t190 to ptr
  %t192 = call ptr @__olang_scope_alloc(ptr %t191, i64 %t189)
  call void @olang_textcopy(ptr %t192, ptr %t174, i64 %t175)
  %t193 = getelementptr i8, ptr %t192, i64 %t175
  call void @olang_textcopy(ptr %t193, ptr %t177, i64 %t178)
  %t194 = getelementptr i8, ptr %t193, i64 %t178
  call void @olang_textcopy(ptr %t194, ptr %t180, i64 %t181)
  %t195 = getelementptr i8, ptr %t194, i64 %t181
  call void @olang_textcopy(ptr %t195, ptr %t184, i64 %t185)
  %t196 = getelementptr i8, ptr %t195, i64 %t185
  call void @olang_textcopy(ptr %t196, ptr %t187, i64 %t188)
  %t197 = insertvalue { i64, ptr } undef, i64 %t189, 0
  %t198 = insertvalue { i64, ptr } %t197, ptr %t192, 1
  %t200 = load i64, ptr %l99
  %t201 = inttoptr i64 %t200 to ptr
  %t202 = extractvalue { i64, ptr } %t198, 0
  %t203 = extractvalue { i64, ptr } %t198, 1
  %t204 = mul i64 %t202, 1
  %t205 = call ptr @__olang_scope_alloc(ptr %t201, i64 %t204)
  call void @llvm.memcpy.p0.p0.i64(ptr %t205, ptr %t203, i64 %t204, i1 false)
  %t206 = insertvalue { i64, ptr } undef, i64 %t202, 0
  %t207 = insertvalue { i64, ptr } %t206, ptr %t205, 1
  %t208 = load ptr, ptr %l98, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t208, { i64, ptr } %t207)
  br label %bb57
bb57:
  %t210 = load i64, ptr %l5, !tbaa !24
  %t211 = load i64, ptr %l14, !tbaa !24
  %t214 = add i64 %t210, %t211
  store i64 %t214, ptr %l5, !tbaa !24
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s3)
  br label %bb111
bb58:
  %t216 = load i64, ptr %l5, !tbaa !24
  %t218 = srem i64 %t216, 8
  %t220 = icmp ne i64 %t218, 0
  br i1 %t220, label %bb59, label %bb60
bb59:
  %t222 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t222, ptr %l113
  br label %bb61
bb60:
  br label %bb62
bb61:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t223 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l113
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t223, ptr %rv
  br label %ret
bb62:
  %t224 = getelementptr %"compiler/bindgen:ctype", ptr %l13, i32 0, i32 0
  %t225 = load i32, ptr %t224, !range !{i32 0, i32 7}
  %t227 = trunc i64 4 to i32
  %t228 = icmp eq i32 %t225, %t227
  br i1 %t228, label %bb63, label %bb64
bb63:
  store %olang.scope zeroinitializer, ptr %s9
  %t230 = load ptr, ptr %l0, !tbaa !29
  %t232 = getelementptr %"compiler/bindgen:gen", ptr %t230, i32 0, i32 16
  %t233 = getelementptr %"compiler/bindgen:ctype", ptr %l13, i32 0, i32 2
  %t234 = load i64, ptr %t233, !tbaa !24
  %t237 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %v0, ptr %t232, i64 %t234)
  store %"compiler/bindgen:ctype" %t237, ptr %l119
  br label %bb65
bb64:
  br label %bb90
bb65:
  %t238 = load %"compiler/bindgen:ctype", ptr %l119
  store %"compiler/bindgen:ctype" %t238, ptr %l16
  %t239 = getelementptr %"compiler/bindgen:ctype", ptr %l16, i32 0, i32 0
  %t240 = load i32, ptr %t239, !range !{i32 0, i32 7}
  %t242 = trunc i64 1 to i32
  %t243 = icmp eq i32 %t240, %t242
  %t245 = xor i1 %t243, true
  br i1 %t245, label %bb66, label %bb67
bb66:
  store i1 true, ptr %l123, !tbaa !21
  br label %bb69
bb67:
  %t247 = getelementptr %"compiler/bindgen:ctype", ptr %l16, i32 0, i32 1
  %t248 = load { i64, ptr }, ptr %t247, !tbaa !27
  %t250 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s9, { i64, ptr } %t248, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d119, i32 0, i32 1) })
  store i1 %t250, ptr %l125
  br label %bb68
bb68:
  %t251 = load i1, ptr %l125, !tbaa !21
  store i1 %t251, ptr %l123, !tbaa !21
  br label %bb69
bb69:
  %t252 = load i1, ptr %l123, !tbaa !21
  br i1 %t252, label %bb70, label %bb71
bb70:
  store i1 true, ptr %l126, !tbaa !21
  br label %bb73
bb71:
  %t253 = getelementptr %"compiler/bindgen:ctype", ptr %l16, i32 0, i32 1
  %t254 = load { i64, ptr }, ptr %t253, !tbaa !27
  %t256 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s9, { i64, ptr } %t254, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d120, i32 0, i32 1) })
  store i1 %t256, ptr %l128
  br label %bb72
bb72:
  %t257 = load i1, ptr %l128, !tbaa !21
  store i1 %t257, ptr %l126, !tbaa !21
  br label %bb73
bb73:
  %t258 = load i1, ptr %l126, !tbaa !21
  br i1 %t258, label %bb74, label %bb75
bb74:
  store i1 true, ptr %l129, !tbaa !21
  br label %bb77
bb75:
  %t259 = getelementptr %"compiler/bindgen:ctype", ptr %l16, i32 0, i32 1
  %t260 = load { i64, ptr }, ptr %t259, !tbaa !27
  %t262 = call i64 @compiler_2fbindgen_2enumBits(ptr %v0, { i64, ptr } %t260)
  store i64 %t262, ptr %l131
  br label %bb76
bb76:
  %t263 = load i64, ptr %l131, !tbaa !24
  %t264 = icmp eq i64 %t263, 0
  store i1 %t264, ptr %l129, !tbaa !21
  br label %bb77
bb77:
  %t266 = load i1, ptr %l129, !tbaa !21
  br i1 %t266, label %bb78, label %bb79
bb78:
  %t267 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t267, ptr %l133
  br label %bb80
bb79:
  br label %bb81
bb80:
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t268 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l133
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t268, ptr %rv
  br label %ret
bb81:
  %t269 = load ptr, ptr %lp2
  store ptr %t269, ptr %l134, !tbaa !29
  %t270 = ptrtoint ptr %v1 to i64
  store i64 %t270, ptr %l135, !tbaa !24
  %t271 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t271, label %bb82, label %bb83
bb82:
  %t273 = call ptr @__olang_region_make(ptr %v1)
  %t274 = ptrtoint ptr %t273 to i64
  store i64 %t274, ptr %l135, !tbaa !24
  br label %bb83
bb83:
  %t275 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t275, ptr %l137, !tbaa !27
  %t276 = getelementptr %"compiler/bindgen:ctype", ptr %l16, i32 0, i32 1
  %t277 = load { i64, ptr }, ptr %t276, !tbaa !27
  %t279 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s9, { i64, ptr } %t277, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d121, i32 0, i32 1) })
  store i1 %t279, ptr %l139
  br label %bb84
bb84:
  %t280 = load i1, ptr %l139, !tbaa !21
  br i1 %t280, label %bb85, label %bb86
bb85:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d122, i32 0, i32 1) }, ptr %l140, !tbaa !27
  br label %bb87
bb86:
  %t281 = getelementptr %"compiler/bindgen:ctype", ptr %l16, i32 0, i32 1
  %t282 = load { i64, ptr }, ptr %t281, !tbaa !27
  store { i64, ptr } %t282, ptr %l140, !tbaa !27
  br label %bb87
bb87:
  %t284 = getelementptr %"compiler/bindgen:ctype", ptr %l13, i32 0, i32 4
  %t285 = load i64, ptr %t284, !tbaa !24
  %t286 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d123, i32 0, i32 1) }, 1
  %t287 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d123, i32 0, i32 1) }, 0
  %t288 = load { i64, ptr }, ptr %l137, !tbaa !27
  %t289 = extractvalue { i64, ptr } %t288, 1
  %t290 = extractvalue { i64, ptr } %t288, 0
  %t291 = add i64 %t287, %t290
  %t292 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d124, i32 0, i32 1) }, 1
  %t293 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d124, i32 0, i32 1) }, 0
  %t294 = add i64 %t291, %t293
  %t295 = load { i64, ptr }, ptr %l140, !tbaa !27
  %t296 = extractvalue { i64, ptr } %t295, 1
  %t297 = extractvalue { i64, ptr } %t295, 0
  %t298 = add i64 %t294, %t297
  %t299 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d125, i32 0, i32 1) }, 1
  %t300 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d125, i32 0, i32 1) }, 0
  %t301 = add i64 %t298, %t300
  %t303 = call i64 @__olang_fmt_i64(ptr null, i64 %t285)
  %t304 = add i64 %t301, %t303
  %t305 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d126, i32 0, i32 1) }, 1
  %t306 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d126, i32 0, i32 1) }, 0
  %t307 = add i64 %t304, %t306
  %t308 = load i64, ptr %l135
  %t309 = inttoptr i64 %t308 to ptr
  %t310 = call ptr @__olang_scope_alloc(ptr %t309, i64 %t307)
  call void @olang_textcopy(ptr %t310, ptr %t286, i64 %t287)
  %t311 = getelementptr i8, ptr %t310, i64 %t287
  call void @olang_textcopy(ptr %t311, ptr %t289, i64 %t290)
  %t312 = getelementptr i8, ptr %t311, i64 %t290
  call void @olang_textcopy(ptr %t312, ptr %t292, i64 %t293)
  %t313 = getelementptr i8, ptr %t312, i64 %t293
  call void @olang_textcopy(ptr %t313, ptr %t296, i64 %t297)
  %t314 = getelementptr i8, ptr %t313, i64 %t297
  call void @olang_textcopy(ptr %t314, ptr %t299, i64 %t300)
  %t315 = getelementptr i8, ptr %t314, i64 %t300
  %t316 = call i64 @__olang_fmt_i64(ptr %t315, i64 %t285)
  %t317 = getelementptr i8, ptr %t315, i64 %t303
  call void @olang_textcopy(ptr %t317, ptr %t305, i64 %t306)
  %t318 = insertvalue { i64, ptr } undef, i64 %t307, 0
  %t319 = insertvalue { i64, ptr } %t318, ptr %t310, 1
  %t321 = load i64, ptr %l135
  %t322 = inttoptr i64 %t321 to ptr
  %t323 = extractvalue { i64, ptr } %t319, 0
  %t324 = extractvalue { i64, ptr } %t319, 1
  %t325 = mul i64 %t323, 1
  %t326 = call ptr @__olang_scope_alloc(ptr %t322, i64 %t325)
  call void @llvm.memcpy.p0.p0.i64(ptr %t326, ptr %t324, i64 %t325, i1 false)
  %t327 = insertvalue { i64, ptr } undef, i64 %t323, 0
  %t328 = insertvalue { i64, ptr } %t327, ptr %t326, 1
  %t329 = load ptr, ptr %l134, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t329, { i64, ptr } %t328)
  br label %bb88
bb88:
  %t331 = load i64, ptr %l5, !tbaa !24
  store i64 %t331, ptr %l145, !tbaa !24
  %t332 = getelementptr %"compiler/bindgen:ctype", ptr %l16, i32 0, i32 1
  %t333 = load { i64, ptr }, ptr %t332, !tbaa !27
  %t335 = call i64 @compiler_2fbindgen_2enumBits(ptr %v0, { i64, ptr } %t333)
  store i64 %t335, ptr %l147
  br label %bb89
bb89:
  %t336 = getelementptr %"compiler/bindgen:ctype", ptr %l13, i32 0, i32 4
  %t337 = load i64, ptr %t336, !tbaa !24
  %t338 = load i64, ptr %l147, !tbaa !24
  %t340 = mul i64 %t338, %t337
  %t341 = load i64, ptr %l145, !tbaa !24
  %t343 = add i64 %t341, %t340
  store i64 %t343, ptr %l5, !tbaa !24
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s3)
  br label %bb111
bb90:
  %t345 = getelementptr %"compiler/bindgen:ctype", ptr %l13, i32 0, i32 0
  %t346 = load i32, ptr %t345, !range !{i32 0, i32 7}
  %t348 = trunc i64 1 to i32
  %t349 = icmp eq i32 %t346, %t348
  %t351 = xor i1 %t349, true
  br i1 %t351, label %bb91, label %bb92
bb91:
  store i1 true, ptr %l154, !tbaa !21
  br label %bb94
bb92:
  %t353 = getelementptr %"compiler/bindgen:ctype", ptr %l13, i32 0, i32 1
  %t354 = load { i64, ptr }, ptr %t353, !tbaa !27
  %t356 = call i64 @compiler_2fbindgen_2enumBits(ptr %v0, { i64, ptr } %t354)
  store i64 %t356, ptr %l156
  br label %bb93
bb93:
  %t357 = load i64, ptr %l156, !tbaa !24
  %t358 = icmp eq i64 %t357, 0
  store i1 %t358, ptr %l154, !tbaa !21
  br label %bb94
bb94:
  %t360 = load i1, ptr %l154, !tbaa !21
  br i1 %t360, label %bb95, label %bb96
bb95:
  store i1 true, ptr %l158, !tbaa !21
  br label %bb98
bb96:
  %t361 = getelementptr %"compiler/bindgen:ctype", ptr %l13, i32 0, i32 1
  %t362 = load { i64, ptr }, ptr %t361, !tbaa !27
  %t364 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s3, { i64, ptr } %t362, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d127, i32 0, i32 1) })
  store i1 %t364, ptr %l160
  br label %bb97
bb97:
  %t365 = load i1, ptr %l160, !tbaa !21
  store i1 %t365, ptr %l158, !tbaa !21
  br label %bb98
bb98:
  %t366 = load i1, ptr %l158, !tbaa !21
  br i1 %t366, label %bb99, label %bb100
bb99:
  %t367 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t367, ptr %l161
  br label %bb101
bb100:
  br label %bb102
bb101:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t368 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l161
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t368, ptr %rv
  br label %ret
bb102:
  %t369 = load ptr, ptr %lp2
  store ptr %t369, ptr %l162, !tbaa !29
  %t370 = ptrtoint ptr %v1 to i64
  store i64 %t370, ptr %l163, !tbaa !24
  %t371 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t371, label %bb103, label %bb104
bb103:
  %t373 = call ptr @__olang_region_make(ptr %v1)
  %t374 = ptrtoint ptr %t373 to i64
  store i64 %t374, ptr %l163, !tbaa !24
  br label %bb104
bb104:
  %t375 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t375, ptr %l165, !tbaa !27
  %t376 = getelementptr %"compiler/bindgen:ctype", ptr %l13, i32 0, i32 1
  %t377 = load { i64, ptr }, ptr %t376, !tbaa !27
  %t379 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s3, { i64, ptr } %t377, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d128, i32 0, i32 1) })
  store i1 %t379, ptr %l167
  br label %bb105
bb105:
  %t380 = load i1, ptr %l167, !tbaa !21
  br i1 %t380, label %bb106, label %bb107
bb106:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d129, i32 0, i32 1) }, ptr %l168, !tbaa !27
  br label %bb108
bb107:
  %t381 = getelementptr %"compiler/bindgen:ctype", ptr %l13, i32 0, i32 1
  %t382 = load { i64, ptr }, ptr %t381, !tbaa !27
  store { i64, ptr } %t382, ptr %l168, !tbaa !27
  br label %bb108
bb108:
  %t384 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d130, i32 0, i32 1) }, 1
  %t385 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d130, i32 0, i32 1) }, 0
  %t386 = load { i64, ptr }, ptr %l165, !tbaa !27
  %t387 = extractvalue { i64, ptr } %t386, 1
  %t388 = extractvalue { i64, ptr } %t386, 0
  %t389 = add i64 %t385, %t388
  %t390 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d131, i32 0, i32 1) }, 1
  %t391 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d131, i32 0, i32 1) }, 0
  %t392 = add i64 %t389, %t391
  %t393 = load { i64, ptr }, ptr %l168, !tbaa !27
  %t394 = extractvalue { i64, ptr } %t393, 1
  %t395 = extractvalue { i64, ptr } %t393, 0
  %t396 = add i64 %t392, %t395
  %t397 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d132, i32 0, i32 1) }, 1
  %t398 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d132, i32 0, i32 1) }, 0
  %t399 = add i64 %t396, %t398
  %t400 = load i64, ptr %l163
  %t401 = inttoptr i64 %t400 to ptr
  %t402 = call ptr @__olang_scope_alloc(ptr %t401, i64 %t399)
  call void @olang_textcopy(ptr %t402, ptr %t384, i64 %t385)
  %t403 = getelementptr i8, ptr %t402, i64 %t385
  call void @olang_textcopy(ptr %t403, ptr %t387, i64 %t388)
  %t404 = getelementptr i8, ptr %t403, i64 %t388
  call void @olang_textcopy(ptr %t404, ptr %t390, i64 %t391)
  %t405 = getelementptr i8, ptr %t404, i64 %t391
  call void @olang_textcopy(ptr %t405, ptr %t394, i64 %t395)
  %t406 = getelementptr i8, ptr %t405, i64 %t395
  call void @olang_textcopy(ptr %t406, ptr %t397, i64 %t398)
  %t407 = insertvalue { i64, ptr } undef, i64 %t399, 0
  %t408 = insertvalue { i64, ptr } %t407, ptr %t402, 1
  %t410 = load i64, ptr %l163
  %t411 = inttoptr i64 %t410 to ptr
  %t412 = extractvalue { i64, ptr } %t408, 0
  %t413 = extractvalue { i64, ptr } %t408, 1
  %t414 = mul i64 %t412, 1
  %t415 = call ptr @__olang_scope_alloc(ptr %t411, i64 %t414)
  call void @llvm.memcpy.p0.p0.i64(ptr %t415, ptr %t413, i64 %t414, i1 false)
  %t416 = insertvalue { i64, ptr } undef, i64 %t412, 0
  %t417 = insertvalue { i64, ptr } %t416, ptr %t415, 1
  %t418 = load ptr, ptr %l162, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t418, { i64, ptr } %t417)
  br label %bb109
bb109:
  %t420 = load i64, ptr %l5, !tbaa !24
  store i64 %t420, ptr %l172, !tbaa !24
  %t421 = getelementptr %"compiler/bindgen:ctype", ptr %l13, i32 0, i32 1
  %t422 = load { i64, ptr }, ptr %t421, !tbaa !27
  %t424 = call i64 @compiler_2fbindgen_2enumBits(ptr %v0, { i64, ptr } %t422)
  store i64 %t424, ptr %l174
  br label %bb110
bb110:
  %t425 = load i64, ptr %l172, !tbaa !24
  %t426 = load i64, ptr %l174, !tbaa !24
  %t427 = add i64 %t425, %t426
  store i64 %t427, ptr %l5, !tbaa !24
  call void @__olang_scope_close(ptr %s3)
  br label %bb111
bb111:
  %t429 = load i64, ptr %l10, !tbaa !24
  %t431 = add i64 %t429, 1
  store i64 %t431, ptr %l10, !tbaa !24
  br label %bb25
bb112:
  %t433 = load ptr, ptr %lp2
  %t434 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t433
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t434, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2epackedFloat(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l5 = alloca %"compiler/bindgen:ctype"
  %l9 = alloca %"compiler/bindgen:record"
  %l11 = alloca %"compiler/bindgen:record"
  %l13 = alloca i64
  %l15 = alloca i64
  %l20 = alloca { i64, ptr }
  %l22 = alloca ptr
  %l25 = alloca i64
  %l26 = alloca %"compiler/bindgen:ctype"
  %l29 = alloca i1
  %l31 = alloca i1
  %l32 = alloca i1
  %l34 = alloca i1
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca i1
  %t5 = alloca %"compiler/bindgen:record", align 8
  %t8 = alloca %"compiler/bindgen:record", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s1
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/bindgen:gen", ptr %t1, i32 0, i32 5
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eAt_3ccompiler_2fbindgen_3arecord_3e(ptr %t5, ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  call void @llvm.memmove.p0.p0.i64(ptr %l9, ptr %t5, i64 216, i1 false)
  br label %bb1
bb1:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbindgen_3arecord(ptr %t8, ptr %v0, ptr %l9)
  call void @llvm.memmove.p0.p0.i64(ptr %l11, ptr %t8, i64 216, i1 false)
  br label %bb2
bb2:
  %t10 = getelementptr %"compiler/bindgen:record", ptr %l11, i32 0, i32 5
  store ptr %t10, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb3
bb3:
  store %olang.scope zeroinitializer, ptr %s2
  %t12 = load i64, ptr %l3, !tbaa !24
  store i64 %t12, ptr %l13, !tbaa !24
  %t13 = load ptr, ptr %l2, !tbaa !29
  %t15 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s1, ptr %t13)
  store i64 %t15, ptr %l15
  br label %bb4
bb4:
  %t16 = load i64, ptr %l13, !tbaa !24
  %t17 = load i64, ptr %l15, !tbaa !24
  %t18 = icmp slt i64 %t16, %t17
  %t20 = xor i1 %t18, true
  br i1 %t20, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s2)
  br label %bb23
bb6:
  br label %bb7
bb7:
  %t22 = load ptr, ptr %l2, !tbaa !29
  %t23 = load i64, ptr %l3, !tbaa !24
  %t26 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s1, ptr %s1, ptr %t22, i64 %t23)
  store { i64, ptr } %t26, ptr %l20
  br label %bb8
bb8:
  %t27 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/bindgen:gen", ptr %t28, i32 0, i32 16
  store ptr %t30, ptr %l22, !tbaa !29
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t35 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eparseType(ptr %v0, ptr %s1, ptr %t31, { i64, ptr } %t27, i64 0)
  store i64 %t35, ptr %l25
  br label %bb9
bb9:
  %t36 = load ptr, ptr %l22, !tbaa !29
  %t37 = load i64, ptr %l25, !tbaa !24
  %t38 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %v0, ptr %t36, i64 %t37)
  store %"compiler/bindgen:ctype" %t38, ptr %l26
  br label %bb10
bb10:
  %t39 = load %"compiler/bindgen:ctype", ptr %l26
  store %"compiler/bindgen:ctype" %t39, ptr %l5
  %t40 = getelementptr %"compiler/bindgen:ctype", ptr %l5, i32 0, i32 0
  %t41 = load i32, ptr %t40, !range !{i32 0, i32 7}
  %t43 = trunc i64 1 to i32
  %t44 = icmp eq i32 %t41, %t43
  br i1 %t44, label %bb11, label %bb12
bb11:
  %t46 = getelementptr %"compiler/bindgen:ctype", ptr %l5, i32 0, i32 1
  %t47 = load { i64, ptr }, ptr %t46, !tbaa !27
  %t49 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s2, { i64, ptr } %t47, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d133, i32 0, i32 1) })
  store i1 %t49, ptr %l31
  br label %bb13
bb12:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb18
bb13:
  %t50 = load i1, ptr %l31, !tbaa !21
  br i1 %t50, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l32, !tbaa !21
  br label %bb17
bb15:
  %t51 = getelementptr %"compiler/bindgen:ctype", ptr %l5, i32 0, i32 1
  %t52 = load { i64, ptr }, ptr %t51, !tbaa !27
  %t54 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t52, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d134, i32 0, i32 1) })
  store i1 %t54, ptr %l34
  br label %bb16
bb16:
  %t55 = load i1, ptr %l34, !tbaa !21
  store i1 %t55, ptr %l32, !tbaa !21
  br label %bb17
bb17:
  %t56 = load i1, ptr %l32, !tbaa !21
  store i1 %t56, ptr %l29, !tbaa !21
  br label %bb18
bb18:
  %t57 = load i1, ptr %l29, !tbaa !21
  br i1 %t57, label %bb19, label %bb20
bb19:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s1)
  store i1 true, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s2)
  br label %bb22
bb22:
  %t59 = load i64, ptr %l3, !tbaa !24
  %t61 = add i64 %t59, 1
  store i64 %t61, ptr %l3, !tbaa !24
  br label %bb3
bb23:
  call void @__olang_scope_close(ptr %s1)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eparseType(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca %"compiler/bindgen:ctp"
  %l4 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l12 = alloca { i64, ptr }
  %l14 = alloca %"compiler/bindgen:ctp"
  %l18 = alloca i64
  %l23 = alloca ptr
  %l24 = alloca i64
  %l29 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = icmp sgt i64 %t1, 32
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ebad(ptr %v0, ptr %v0, ptr %t5, { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d135, i32 0, i32 1) })
  store i64 %t7, ptr %l8
  br label %bb3
bb2:
  br label %bb4
bb3:
  call void @__olang_scope_close(ptr %s0)
  %t8 = load i64, ptr %l8, !tbaa !24
  store i64 %t8, ptr %rv
  br label %ret
bb4:
  %t9 = ptrtoint ptr %s0 to i64
  store i64 %t9, ptr %l9, !tbaa !24
  %t10 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3actp_2e0
  br i1 %t10, label %bb5, label %bb6
bb5:
  %t12 = call ptr @__olang_region_make(ptr %s0)
  %t13 = ptrtoint ptr %t12 to i64
  store i64 %t13, ptr %l9, !tbaa !24
  br label %bb6
bb6:
  %t14 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t15 = load i64, ptr %l9
  %t16 = inttoptr i64 %t15 to ptr
  %t18 = call { i64, ptr } @compiler_2fbindgen_2ectokens(ptr %v1, ptr %t16, { i64, ptr } %t14)
  store { i64, ptr } %t18, ptr %l12
  br label %bb7
bb7:
  %t19 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t20 = load i64, ptr %l9
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t19, 0
  %t23 = extractvalue { i64, ptr } %t19, 1
  %t24 = mul i64 %t22, 16
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t29 = call %"compiler/bindgen:ctp" @compiler_2fbindgen_3actp_2ector(ptr %s0, ptr %s0, { i64, ptr } %t27)
  store %"compiler/bindgen:ctp" %t29, ptr %l14
  br label %bb8
bb8:
  %t30 = load %"compiler/bindgen:ctp", ptr %l14
  store %"compiler/bindgen:ctp" %t30, ptr %l3
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load i64, ptr %l2, !tbaa !24
  %t36 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2etypeName(ptr %v0, ptr %s0, ptr %t31, ptr %l3, i64 %t32)
  store i64 %t36, ptr %l18
  br label %bb9
bb9:
  %t37 = load i64, ptr %l18, !tbaa !24
  store i64 %t37, ptr %l4, !tbaa !24
  %t38 = getelementptr %"compiler/bindgen:ctp", ptr %l3, i32 0, i32 1
  %t39 = load i64, ptr %t38, !tbaa !24
  %t40 = getelementptr %"compiler/bindgen:ctp", ptr %l3, i32 0, i32 0
  %t41 = load { i64, ptr }, ptr %t40, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t41, 0
  %t46 = icmp slt i64 %t39, %t43
  br i1 %t46, label %bb10, label %bb11
bb10:
  %t48 = load ptr, ptr %l0, !tbaa !29
  store ptr %t48, ptr %l23, !tbaa !29
  %t49 = ptrtoint ptr %v0 to i64
  store i64 %t49, ptr %l24, !tbaa !24
  %t50 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3actype_2e1
  br i1 %t50, label %bb12, label %bb13
bb11:
  br label %bb15
bb12:
  %t52 = call ptr @__olang_region_make(ptr %v0)
  %t53 = ptrtoint ptr %t52 to i64
  store i64 %t53, ptr %l24, !tbaa !24
  br label %bb13
bb13:
  %t54 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t55 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d136, i32 0, i32 1) }, 1
  %t56 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d136, i32 0, i32 1) }, 0
  %t58 = extractvalue { i64, ptr } %t54, 1
  %t59 = extractvalue { i64, ptr } %t54, 0
  %t60 = add i64 %t56, %t59
  %t61 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d137, i32 0, i32 1) }, 1
  %t62 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d137, i32 0, i32 1) }, 0
  %t63 = add i64 %t60, %t62
  %t64 = load i64, ptr %l24
  %t65 = inttoptr i64 %t64 to ptr
  %t66 = call ptr @__olang_scope_alloc(ptr %t65, i64 %t63)
  call void @olang_textcopy(ptr %t66, ptr %t55, i64 %t56)
  %t67 = getelementptr i8, ptr %t66, i64 %t56
  call void @olang_textcopy(ptr %t67, ptr %t58, i64 %t59)
  %t68 = getelementptr i8, ptr %t67, i64 %t59
  call void @olang_textcopy(ptr %t68, ptr %t61, i64 %t62)
  %t69 = insertvalue { i64, ptr } undef, i64 %t63, 0
  %t70 = insertvalue { i64, ptr } %t69, ptr %t66, 1
  %t72 = load i64, ptr %l24
  %t73 = inttoptr i64 %t72 to ptr
  %t74 = extractvalue { i64, ptr } %t70, 0
  %t75 = extractvalue { i64, ptr } %t70, 1
  %t76 = mul i64 %t74, 1
  %t77 = call ptr @__olang_scope_alloc(ptr %t73, i64 %t76)
  call void @llvm.memcpy.p0.p0.i64(ptr %t77, ptr %t75, i64 %t76, i1 false)
  %t78 = insertvalue { i64, ptr } undef, i64 %t74, 0
  %t79 = insertvalue { i64, ptr } %t78, ptr %t77, 1
  %t80 = load ptr, ptr %l23, !tbaa !29
  %t82 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ebad(ptr %v0, ptr %v0, ptr %t80, { i64, ptr } %t79)
  store i64 %t82, ptr %l29
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s0)
  %t83 = load i64, ptr %l29, !tbaa !24
  store i64 %t83, ptr %rv
  br label %ret
bb15:
  %t84 = load i64, ptr %l4, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t84, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i32, { i64, ptr } } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2epointerParam(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca %"compiler/bindgen:ctype"
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca %"compiler/bindgen:ctype"
  %l8 = alloca i64
  %l9 = alloca %"std/prelude/text:StringBuilder"
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l19 = alloca %"compiler/bindgen:ctype"
  %l24 = alloca i1
  %l25 = alloca { i64, ptr }
  %l30 = alloca { i64, ptr }
  %l39 = alloca i64
  %l41 = alloca i1
  %l44 = alloca i1
  %l46 = alloca { i64, ptr }
  %l49 = alloca { i64, ptr }
  %l56 = alloca %"compiler/bindgen:ctype"
  %l59 = alloca i1
  %l60 = alloca { i64, ptr }
  %l61 = alloca { i64, ptr }
  %l62 = alloca i64
  %l63 = alloca { i64, ptr }
  %l68 = alloca i64
  %l71 = alloca i1
  %l75 = alloca { i64, ptr }
  %l79 = alloca i1
  %l82 = alloca { i64, ptr }
  %l83 = alloca { i64, ptr }
  %l84 = alloca i64
  %l85 = alloca { i64, ptr }
  %l87 = alloca { i64, ptr }
  %l91 = alloca i1
  %l93 = alloca i32
  %l95 = alloca %"std/prelude/text:StringBuilder"
  %l101 = alloca i64
  %l104 = alloca i64
  %l125 = alloca ptr
  %l126 = alloca i64
  %l127 = alloca { i64, ptr }
  %l128 = alloca ptr
  %l134 = alloca i64
  %l135 = alloca { i64, ptr }
  %l136 = alloca i32
  %l146 = alloca %"compiler/bindgen:ctype"
  %l150 = alloca ptr
  %l151 = alloca { i64, ptr }
  %l154 = alloca { i64, ptr }
  %l155 = alloca i32
  %l160 = alloca { i64, ptr }
  %l165 = alloca i32
  %l168 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  store ptr %a0, ptr %l0
  store i1 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/bindgen:gen", ptr %t1, i32 0, i32 16
  %t7 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store %"compiler/bindgen:ctype" %t7, ptr %l19
  br label %bb1
bb1:
  %t8 = load %"compiler/bindgen:ctype", ptr %l19
  store %"compiler/bindgen:ctype" %t8, ptr %l3
  %t9 = getelementptr %"compiler/bindgen:ctype", ptr %l3, i32 0, i32 0
  %t10 = load i32, ptr %t9, !range !{i32 0, i32 7}
  store i32 %t10, ptr %l4
  %t12 = load i32, ptr %l4, !range !{i32 0, i32 7}
  %t14 = trunc i64 1 to i32
  %t15 = icmp eq i32 %t12, %t14
  br i1 %t15, label %bb2, label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb12
bb4:
  store %olang.scope zeroinitializer, ptr %s1
  %t17 = getelementptr %"compiler/bindgen:ctype", ptr %l3, i32 0, i32 1
  %t18 = load { i64, ptr }, ptr %t17, !tbaa !27
  %t20 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s1, { i64, ptr } %t18, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d138, i32 0, i32 1) })
  store i1 %t20, ptr %l24
  br label %bb5
bb5:
  %t21 = load i1, ptr %l24, !tbaa !21
  br i1 %t21, label %bb6, label %bb7
bb6:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d139, i32 0, i32 1) }, ptr %l25, !tbaa !27
  br label %bb8
bb7:
  %t22 = getelementptr %"compiler/bindgen:ctype", ptr %l3, i32 0, i32 1
  %t23 = load { i64, ptr }, ptr %t22, !tbaa !27
  %t25 = extractvalue { i64, ptr } %t23, 1
  %t26 = extractvalue { i64, ptr } %t23, 0
  %t27 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t26)
  call void @olang_textcopy(ptr %t27, ptr %t25, i64 %t26)
  %t28 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t29 = insertvalue { i64, ptr } %t28, ptr %t27, 1
  %t31 = extractvalue { i64, ptr } %t29, 0
  %t32 = extractvalue { i64, ptr } %t29, 1
  %t33 = mul i64 %t31, 1
  %t34 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t33)
  call void @llvm.memcpy.p0.p0.i64(ptr %t34, ptr %t32, i64 %t33, i1 false)
  %t35 = insertvalue { i64, ptr } undef, i64 %t31, 0
  %t36 = insertvalue { i64, ptr } %t35, ptr %t34, 1
  store { i64, ptr } %t36, ptr %l25, !tbaa !27
  br label %bb8
bb8:
  %t38 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t38, ptr %l5, !tbaa !27
  %t39 = load i1, ptr %l2, !tbaa !21
  br i1 %t39, label %bb9, label %bb10
bb9:
  %t41 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t42 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d140, i32 0, i32 1) }, 1
  %t43 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d140, i32 0, i32 1) }, 0
  %t45 = extractvalue { i64, ptr } %t41, 1
  %t46 = extractvalue { i64, ptr } %t41, 0
  %t47 = add i64 %t43, %t46
  %t48 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d141, i32 0, i32 1) }, 1
  %t49 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d141, i32 0, i32 1) }, 0
  %t50 = add i64 %t47, %t49
  %t51 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t50)
  call void @olang_textcopy(ptr %t51, ptr %t42, i64 %t43)
  %t52 = getelementptr i8, ptr %t51, i64 %t43
  call void @olang_textcopy(ptr %t52, ptr %t45, i64 %t46)
  %t53 = getelementptr i8, ptr %t52, i64 %t46
  call void @olang_textcopy(ptr %t53, ptr %t48, i64 %t49)
  %t54 = insertvalue { i64, ptr } undef, i64 %t50, 0
  %t55 = insertvalue { i64, ptr } %t54, ptr %t51, 1
  store { i64, ptr } %t55, ptr %l30, !tbaa !27
  br label %bb11
bb10:
  %t57 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t58 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d142, i32 0, i32 1) }, 1
  %t59 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d142, i32 0, i32 1) }, 0
  %t61 = extractvalue { i64, ptr } %t57, 1
  %t62 = extractvalue { i64, ptr } %t57, 0
  %t63 = add i64 %t59, %t62
  %t64 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d143, i32 0, i32 1) }, 1
  %t65 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d143, i32 0, i32 1) }, 0
  %t66 = add i64 %t63, %t65
  %t67 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t66)
  call void @olang_textcopy(ptr %t67, ptr %t58, i64 %t59)
  %t68 = getelementptr i8, ptr %t67, i64 %t59
  call void @olang_textcopy(ptr %t68, ptr %t61, i64 %t62)
  %t69 = getelementptr i8, ptr %t68, i64 %t62
  call void @olang_textcopy(ptr %t69, ptr %t64, i64 %t65)
  %t70 = insertvalue { i64, ptr } undef, i64 %t66, 0
  %t71 = insertvalue { i64, ptr } %t70, ptr %t67, 1
  store { i64, ptr } %t71, ptr %l30, !tbaa !27
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s1)
  %t73 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t74 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t73, 1
  store { i32, { i64, ptr } } %t74, ptr %rv
  br label %ret
bb12:
  %t75 = load i32, ptr %l4, !range !{i32 0, i32 7}
  %t77 = trunc i64 2 to i32
  %t78 = icmp eq i32 %t75, %t77
  br i1 %t78, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb25
bb15:
  store %olang.scope zeroinitializer, ptr %s5
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/bindgen:ctype", ptr %l3, i32 0, i32 1
  %t82 = load { i64, ptr }, ptr %t81, !tbaa !27
  %t85 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2erecOf(ptr %v0, ptr %v0, ptr %t80, { i64, ptr } %t82)
  store i64 %t85, ptr %l39
  br label %bb16
bb16:
  %t86 = load i64, ptr %l39, !tbaa !24
  store i64 %t86, ptr %l6, !tbaa !24
  %t87 = load i1, ptr %l2, !tbaa !21
  br i1 %t87, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l41, !tbaa !21
  br label %bb20
bb18:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = load i64, ptr %l6, !tbaa !24
  %t93 = call i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eholdable(ptr %v0, ptr %t89, i64 %t90)
  store i1 %t93, ptr %l44
  br label %bb19
bb19:
  %t94 = load i1, ptr %l44, !tbaa !21
  %t95 = xor i1 %t94, true
  store i1 %t95, ptr %l41, !tbaa !21
  br label %bb20
bb20:
  %t97 = load i1, ptr %l41, !tbaa !21
  br i1 %t97, label %bb21, label %bb22
bb21:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d144, i32 0, i32 1) }, ptr %l46, !tbaa !27
  br label %bb23
bb22:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d145, i32 0, i32 1) }, ptr %l46, !tbaa !27
  br label %bb23
bb23:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t99 = load i64, ptr %l6, !tbaa !24
  %t102 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ename(ptr %v0, ptr %s5, ptr %t98, i64 %t99)
  store { i64, ptr } %t102, ptr %l49
  br label %bb24
bb24:
  %t103 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t104 = extractvalue { i64, ptr } %t103, 1
  %t105 = extractvalue { i64, ptr } %t103, 0
  %t106 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t107 = extractvalue { i64, ptr } %t106, 1
  %t108 = extractvalue { i64, ptr } %t106, 0
  %t109 = add i64 %t105, %t108
  %t110 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d146, i32 0, i32 1) }, 1
  %t111 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d146, i32 0, i32 1) }, 0
  %t112 = add i64 %t109, %t111
  %t113 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t112)
  call void @olang_textcopy(ptr %t113, ptr %t104, i64 %t105)
  %t114 = getelementptr i8, ptr %t113, i64 %t105
  call void @olang_textcopy(ptr %t114, ptr %t107, i64 %t108)
  %t115 = getelementptr i8, ptr %t114, i64 %t108
  call void @olang_textcopy(ptr %t115, ptr %t110, i64 %t111)
  %t116 = insertvalue { i64, ptr } undef, i64 %t112, 0
  %t117 = insertvalue { i64, ptr } %t116, ptr %t113, 1
  call void @__olang_scope_close(ptr %s5)
  %t119 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t117, 1
  store { i32, { i64, ptr } } %t119, ptr %rv
  br label %ret
bb25:
  %t120 = load i32, ptr %l4, !range !{i32 0, i32 7}
  %t122 = trunc i64 3 to i32
  %t123 = icmp eq i32 %t120, %t122
  br i1 %t123, label %bb26, label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb50
bb28:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = getelementptr %"compiler/bindgen:gen", ptr %t125, i32 0, i32 16
  %t128 = getelementptr %"compiler/bindgen:ctype", ptr %l3, i32 0, i32 2
  %t129 = load i64, ptr %t128, !tbaa !24
  %t132 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %v0, ptr %t127, i64 %t129)
  store %"compiler/bindgen:ctype" %t132, ptr %l56
  br label %bb29
bb29:
  %t133 = load %"compiler/bindgen:ctype", ptr %l56
  store %"compiler/bindgen:ctype" %t133, ptr %l7
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t135 = getelementptr %"compiler/bindgen:ctype", ptr %l3, i32 0, i32 2
  %t136 = load i64, ptr %t135, !tbaa !24
  %t139 = call i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eisChar(ptr %v0, ptr %t134, i64 %t136)
  store i1 %t139, ptr %l59
  br label %bb30
bb30:
  %t140 = load i1, ptr %l59, !tbaa !21
  br i1 %t140, label %bb31, label %bb32
bb31:
  store { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d147, i32 0, i32 1) }, ptr %l60, !tbaa !27
  %t141 = load { i64, ptr }, ptr %l60, !tbaa !27
  store { i64, ptr } %t141, ptr %l61, !tbaa !27
  %t142 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t143 = extractvalue { i64, ptr } %t142, 0
  store i64 %t143, ptr %l62, !tbaa !24
  %t144 = load i64, ptr %l62, !tbaa !24
  %t145 = mul i64 %t144, 1
  %t146 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t145)
  %t147 = insertvalue { i64, ptr } undef, i64 %t144, 0
  %t148 = insertvalue { i64, ptr } %t147, ptr %t146, 1
  store { i64, ptr } %t148, ptr %l63, !tbaa !27
  %t149 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t150 = load ptr, ptr %t149, !tbaa !27
  %t151 = getelementptr { i64, ptr }, ptr %l61, i32 0, i32 1
  %t152 = load ptr, ptr %t151, !tbaa !27
  %t153 = load i64, ptr %l62, !tbaa !24
  %t154 = mul i64 %t153, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t150, ptr %t152, i64 %t154, i1 false)
  %t155 = load { i64, ptr }, ptr %l63, !tbaa !27
  store { i64, ptr } %t155, ptr %l61, !tbaa !27
  %t156 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t157 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t156, 1
  store { i32, { i64, ptr } } %t157, ptr %rv
  br label %ret
bb32:
  br label %bb33
bb33:
  %t158 = getelementptr %"compiler/bindgen:ctype", ptr %l7, i32 0, i32 0
  %t159 = load i32, ptr %t158, !range !{i32 0, i32 7}
  %t161 = trunc i64 2 to i32
  %t162 = icmp eq i32 %t159, %t161
  br i1 %t162, label %bb34, label %bb35
bb34:
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t165 = getelementptr %"compiler/bindgen:ctype", ptr %l7, i32 0, i32 1
  %t166 = load { i64, ptr }, ptr %t165, !tbaa !27
  %t169 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2erecOf(ptr %v0, ptr %v0, ptr %t164, { i64, ptr } %t166)
  store i64 %t169, ptr %l68
  br label %bb36
bb35:
  br label %bb42
bb36:
  %t170 = load i64, ptr %l68, !tbaa !24
  store i64 %t170, ptr %l8, !tbaa !24
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t172 = load i64, ptr %l8, !tbaa !24
  %t175 = call i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eholdable(ptr %v0, ptr %t171, i64 %t172)
  store i1 %t175, ptr %l71
  br label %bb37
bb37:
  %t176 = load i1, ptr %l71, !tbaa !21
  %t177 = xor i1 %t176, true
  br i1 %t177, label %bb38, label %bb39
bb38:
  store %olang.scope zeroinitializer, ptr %s10
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t180 = load i64, ptr %l8, !tbaa !24
  %t183 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ename(ptr %v0, ptr %s10, ptr %t179, i64 %t180)
  store { i64, ptr } %t183, ptr %l75
  br label %bb40
bb39:
  br label %bb41
bb40:
  %t184 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d148, i32 0, i32 1) }, 1
  %t185 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d148, i32 0, i32 1) }, 0
  %t186 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t187 = extractvalue { i64, ptr } %t186, 1
  %t188 = extractvalue { i64, ptr } %t186, 0
  %t189 = add i64 %t185, %t188
  %t190 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d149, i32 0, i32 1) }, 1
  %t191 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d149, i32 0, i32 1) }, 0
  %t192 = add i64 %t189, %t191
  %t193 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t192)
  call void @olang_textcopy(ptr %t193, ptr %t184, i64 %t185)
  %t194 = getelementptr i8, ptr %t193, i64 %t185
  call void @olang_textcopy(ptr %t194, ptr %t187, i64 %t188)
  %t195 = getelementptr i8, ptr %t194, i64 %t188
  call void @olang_textcopy(ptr %t195, ptr %t190, i64 %t191)
  %t196 = insertvalue { i64, ptr } undef, i64 %t192, 0
  %t197 = insertvalue { i64, ptr } %t196, ptr %t193, 1
  call void @__olang_scope_close(ptr %s10)
  %t199 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t197, 1
  store { i32, { i64, ptr } } %t199, ptr %rv
  br label %ret
bb41:
  br label %bb42
bb42:
  %t200 = getelementptr %"compiler/bindgen:ctype", ptr %l7, i32 0, i32 0
  %t201 = load i32, ptr %t200, !range !{i32 0, i32 7}
  %t203 = trunc i64 0 to i32
  %t204 = icmp eq i32 %t201, %t203
  br i1 %t204, label %bb43, label %bb44
bb43:
  store i1 true, ptr %l79, !tbaa !21
  br label %bb45
bb44:
  %t206 = getelementptr %"compiler/bindgen:ctype", ptr %l7, i32 0, i32 0
  %t207 = load i32, ptr %t206, !range !{i32 0, i32 7}
  %t209 = trunc i64 2 to i32
  %t210 = icmp eq i32 %t207, %t209
  store i1 %t210, ptr %l79, !tbaa !21
  br label %bb45
bb45:
  %t212 = load i1, ptr %l79, !tbaa !21
  br i1 %t212, label %bb46, label %bb47
bb46:
  store { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d150, i32 0, i32 1) }, ptr %l82, !tbaa !27
  %t213 = load { i64, ptr }, ptr %l82, !tbaa !27
  store { i64, ptr } %t213, ptr %l83, !tbaa !27
  %t214 = load { i64, ptr }, ptr %l83, !tbaa !27
  %t215 = extractvalue { i64, ptr } %t214, 0
  store i64 %t215, ptr %l84, !tbaa !24
  %t216 = load i64, ptr %l84, !tbaa !24
  %t217 = mul i64 %t216, 1
  %t218 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t217)
  %t219 = insertvalue { i64, ptr } undef, i64 %t216, 0
  %t220 = insertvalue { i64, ptr } %t219, ptr %t218, 1
  store { i64, ptr } %t220, ptr %l85, !tbaa !27
  %t221 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t222 = load ptr, ptr %t221, !tbaa !27
  %t223 = getelementptr { i64, ptr }, ptr %l83, i32 0, i32 1
  %t224 = load ptr, ptr %t223, !tbaa !27
  %t225 = load i64, ptr %l84, !tbaa !24
  %t226 = mul i64 %t225, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t222, ptr %t224, i64 %t226, i1 false)
  %t227 = load { i64, ptr }, ptr %l85, !tbaa !27
  store { i64, ptr } %t227, ptr %l83, !tbaa !27
  %t228 = load { i64, ptr }, ptr %l83, !tbaa !27
  %t229 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t228, 1
  store { i32, { i64, ptr } } %t229, ptr %rv
  br label %ret
bb47:
  br label %bb48
bb48:
  %t230 = load i1, ptr %l2, !tbaa !21
  %t232 = call { i64, ptr } @compiler_2fbindgen_2evoidRef(ptr %v1, i1 %t230)
  store { i64, ptr } %t232, ptr %l87
  br label %bb49
bb49:
  %t233 = load { i64, ptr }, ptr %l87, !tbaa !27
  %t234 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t233, 1
  store { i32, { i64, ptr } } %t234, ptr %rv
  br label %ret
bb50:
  %t235 = load i32, ptr %l4, !range !{i32 0, i32 7}
  %t237 = trunc i64 5 to i32
  %t238 = icmp eq i32 %t235, %t237
  br i1 %t238, label %bb51, label %bb52
bb51:
  br label %bb53
bb52:
  br label %bb94
bb53:
  store %olang.scope zeroinitializer, ptr %s13
  %t240 = getelementptr %"compiler/bindgen:ctype", ptr %l3, i32 0, i32 1
  %t241 = load { i64, ptr }, ptr %t240, !tbaa !27
  %t243 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s13, { i64, ptr } %t241, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d151, i32 0, i32 1) })
  store i1 %t243, ptr %l91
  br label %bb54
bb54:
  %t244 = load i1, ptr %l91, !tbaa !21
  br i1 %t244, label %bb55, label %bb56
bb55:
  store %olang.scope zeroinitializer, ptr %s14
  %t245 = load ptr, ptr %l0, !tbaa !29
  %t247 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %s14, ptr %t245, { i64, ptr } { i64 48, ptr getelementptr inbounds (<{ i64, [48 x i8] }>, ptr @.d152, i32 0, i32 1) })
  store i32 %t247, ptr %l93
  %t248 = icmp ne i32 %t247, 0
  br i1 %t248, label %bb58, label %ok.249, !prof !99
ok.249:
  br label %bb57
bb56:
  br label %bb60
bb57:
  br label %bb59
bb58:
  %t250 = load i32, ptr %l93, !tbaa !23
  %t251 = lshr i32 %t250, 16
  %t252 = and i32 %t250, 65535
  %t253 = icmp eq i32 %t251, 1
  %t254 = select i1 %t253, i32 1, i32 0
  %t255 = icmp eq i32 %t250, 0
  %t256 = shl i32 %t254, 16
  %t257 = or i32 %t256, %t252
  %t258 = select i1 %t255, i32 0, i32 %t257
  call void @__olang_scope_close(ptr %s14)
  call void @__olang_scope_close(ptr %s13)
  %t260 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t258, 0
  store { i32, { i64, ptr } } %t260, ptr %rv
  br label %ret
bb59:
  call void @__olang_scope_close(ptr %s14)
  br label %bb60
bb60:
  %t261 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s13)
  store %"std/prelude/text:StringBuilder" %t261, ptr %l95
  br label %bb61
bb61:
  %t262 = load %"std/prelude/text:StringBuilder", ptr %l95
  store %"std/prelude/text:StringBuilder" %t262, ptr %l9
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s13, ptr %s13, ptr %l9, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d153, i32 0, i32 1) })
  br label %bb62
bb62:
  store i64 0, ptr %l10, !tbaa !24
  %t264 = getelementptr %"compiler/bindgen:ctype", ptr %l3, i32 0, i32 4
  %t265 = load i64, ptr %t264, !tbaa !24
  store i64 %t265, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t267 = load i64, ptr %l11, !tbaa !24
  %t268 = load i64, ptr %l10, !tbaa !24
  %t271 = icmp sgt i64 %t267, %t268
  br i1 %t271, label %bb63, label %bb64
bb63:
  %t273 = load i64, ptr %l12, !tbaa !24
  %t275 = icmp sgt i64 %t273, 0
  br i1 %t275, label %bb65, label %bb66
bb64:
  store i64 0, ptr %l101, !tbaa !24
  br label %bb68
bb65:
  %t277 = load i64, ptr %l11, !tbaa !24
  %t278 = load i64, ptr %l10, !tbaa !24
  %t281 = sub i64 %t277, %t278
  %t282 = load i64, ptr %l12, !tbaa !24
  %t285 = add i64 %t281, %t282
  %t287 = sub i64 %t285, 1
  %t288 = load i64, ptr %l12, !tbaa !24
  %t291 = sdiv i64 %t287, %t288
  store i64 %t291, ptr %l104, !tbaa !24
  br label %bb67
bb66:
  store i64 0, ptr %l104, !tbaa !24
  br label %bb67
bb67:
  %t293 = load i64, ptr %l104, !tbaa !24
  store i64 %t293, ptr %l101, !tbaa !24
  br label %bb68
bb68:
  %t294 = load i64, ptr %l101, !tbaa !24
  store i64 %t294, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb69
bb69:
  store %olang.scope zeroinitializer, ptr %s16
  %t295 = load i64, ptr %l14, !tbaa !24
  %t296 = load i64, ptr %l13, !tbaa !24
  %t299 = icmp slt i64 %t295, %t296
  %t301 = xor i1 %t299, true
  br i1 %t301, label %bb70, label %bb71
bb70:
  call void @__olang_scope_close(ptr %s16)
  br label %bb83
bb71:
  br label %bb72
bb72:
  %t303 = load i64, ptr %l10, !tbaa !24
  %t304 = load i64, ptr %l14, !tbaa !24
  %t305 = load i64, ptr %l12, !tbaa !24
  %t308 = mul i64 %t304, %t305
  %t311 = add i64 %t303, %t308
  store i64 %t311, ptr %l15, !tbaa !24
  %t313 = load i64, ptr %l15, !tbaa !24
  %t315 = icmp sgt i64 %t313, 0
  br i1 %t315, label %bb73, label %bb74
bb73:
  store %olang.scope zeroinitializer, ptr %s17
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s13, ptr %s17, ptr %l9, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d154, i32 0, i32 1) })
  br label %bb75
bb74:
  br label %bb76
bb75:
  call void @__olang_scope_close(ptr %s17)
  br label %bb76
bb76:
  store ptr %l9, ptr %l125, !tbaa !29
  %t318 = load i64, ptr %l15, !tbaa !24
  store i64 %t318, ptr %l126, !tbaa !24
  %t319 = load ptr, ptr %l0, !tbaa !29
  store ptr %t319, ptr %l128, !tbaa !29
  %t320 = load ptr, ptr %l0, !tbaa !29
  %t322 = getelementptr %"compiler/bindgen:gen", ptr %t320, i32 0, i32 17
  %t323 = getelementptr %"compiler/bindgen:ctype", ptr %l3, i32 0, i32 5
  %t324 = load i64, ptr %t323, !tbaa !24
  %t325 = load i64, ptr %l15, !tbaa !24
  %t328 = add i64 %t324, %t325
  %t331 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t322, i64 %t328)
  store i64 %t331, ptr %l134
  br label %bb77
bb77:
  %t332 = load ptr, ptr %l128, !tbaa !29
  %t333 = load i64, ptr %l134, !tbaa !24
  %t334 = call { i32, { i64, ptr } } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2evalueType(ptr %v0, ptr %s16, ptr %t332, i64 %t333, i1 true)
  %t335 = extractvalue { i32, { i64, ptr } } %t334, 1
  %t336 = extractvalue { i32, { i64, ptr } } %t334, 0
  store i32 %t336, ptr %l136
  %t337 = icmp ne i32 %t336, 0
  br i1 %t337, label %bb79, label %ok.338, !prof !99
ok.338:
  store { i64, ptr } %t335, ptr %l135
  br label %bb78
bb78:
  %t339 = load { i64, ptr }, ptr %l135, !tbaa !27
  store { i64, ptr } %t339, ptr %l127, !tbaa !27
  br label %bb80
bb79:
  %t340 = load i32, ptr %l136, !tbaa !23
  %t341 = lshr i32 %t340, 16
  %t342 = and i32 %t340, 65535
  %t343 = icmp eq i32 %t341, 1
  %t344 = select i1 %t343, i32 1, i32 0
  %t345 = icmp eq i32 %t340, 0
  %t346 = shl i32 %t344, 16
  %t347 = or i32 %t346, %t342
  %t348 = select i1 %t345, i32 0, i32 %t347
  call void @__olang_scope_close(ptr %s16)
  call void @__olang_scope_close(ptr %s13)
  %t350 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t348, 0
  store { i32, { i64, ptr } } %t350, ptr %rv
  br label %ret
bb80:
  %t351 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d155, i32 0, i32 1) }, 1
  %t352 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d155, i32 0, i32 1) }, 0
  %t353 = load i64, ptr %l126, !tbaa !24
  %t354 = call i64 @__olang_fmt_i64(ptr null, i64 %t353)
  %t355 = add i64 %t352, %t354
  %t356 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d156, i32 0, i32 1) }, 1
  %t357 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d156, i32 0, i32 1) }, 0
  %t358 = add i64 %t355, %t357
  %t359 = load { i64, ptr }, ptr %l127, !tbaa !27
  %t360 = extractvalue { i64, ptr } %t359, 1
  %t361 = extractvalue { i64, ptr } %t359, 0
  %t362 = add i64 %t358, %t361
  %t363 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t362)
  call void @olang_textcopy(ptr %t363, ptr %t351, i64 %t352)
  %t364 = getelementptr i8, ptr %t363, i64 %t352
  %t365 = call i64 @__olang_fmt_i64(ptr %t364, i64 %t353)
  %t366 = getelementptr i8, ptr %t364, i64 %t354
  call void @olang_textcopy(ptr %t366, ptr %t356, i64 %t357)
  %t367 = getelementptr i8, ptr %t366, i64 %t357
  call void @olang_textcopy(ptr %t367, ptr %t360, i64 %t361)
  %t368 = insertvalue { i64, ptr } undef, i64 %t362, 0
  %t369 = insertvalue { i64, ptr } %t368, ptr %t363, 1
  %t371 = extractvalue { i64, ptr } %t369, 0
  %t372 = extractvalue { i64, ptr } %t369, 1
  %t373 = mul i64 %t371, 1
  %t374 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t373)
  call void @llvm.memcpy.p0.p0.i64(ptr %t374, ptr %t372, i64 %t373, i1 false)
  %t375 = insertvalue { i64, ptr } undef, i64 %t371, 0
  %t376 = insertvalue { i64, ptr } %t375, ptr %t374, 1
  %t377 = load ptr, ptr %l125, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s13, ptr %s16, ptr %t377, { i64, ptr } %t376)
  br label %bb81
bb81:
  call void @__olang_scope_close(ptr %s16)
  br label %bb82
bb82:
  %t379 = load i64, ptr %l14, !tbaa !24
  %t381 = add i64 %t379, 1
  store i64 %t381, ptr %l14, !tbaa !24
  br label %bb69
bb83:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s13, ptr %s13, ptr %l9, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d157, i32 0, i32 1) })
  br label %bb84
bb84:
  %t384 = load ptr, ptr %l0, !tbaa !29
  %t386 = getelementptr %"compiler/bindgen:gen", ptr %t384, i32 0, i32 16
  %t387 = getelementptr %"compiler/bindgen:ctype", ptr %l3, i32 0, i32 2
  %t388 = load i64, ptr %t387, !tbaa !24
  %t391 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %s13, ptr %t386, i64 %t388)
  store %"compiler/bindgen:ctype" %t391, ptr %l146
  br label %bb85
bb85:
  %t392 = getelementptr %"compiler/bindgen:ctype", ptr %l146, i32 0, i32 0
  %t393 = load i32, ptr %t392, !range !{i32 0, i32 7}
  %t395 = trunc i64 0 to i32
  %t396 = icmp eq i32 %t393, %t395
  %t398 = xor i1 %t396, true
  br i1 %t398, label %bb86, label %bb87
bb86:
  store %olang.scope zeroinitializer, ptr %s20
  store ptr %l9, ptr %l150, !tbaa !29
  %t400 = load ptr, ptr %l0, !tbaa !29
  %t401 = getelementptr %"compiler/bindgen:ctype", ptr %l3, i32 0, i32 2
  %t402 = load i64, ptr %t401, !tbaa !24
  %t405 = call { i32, { i64, ptr } } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2evalueType(ptr %v0, ptr %s20, ptr %t400, i64 %t402, i1 true)
  %t406 = extractvalue { i32, { i64, ptr } } %t405, 1
  %t407 = extractvalue { i32, { i64, ptr } } %t405, 0
  store i32 %t407, ptr %l155
  %t408 = icmp ne i32 %t407, 0
  br i1 %t408, label %bb89, label %ok.409, !prof !99
ok.409:
  store { i64, ptr } %t406, ptr %l154
  br label %bb88
bb87:
  br label %bb92
bb88:
  %t410 = load { i64, ptr }, ptr %l154, !tbaa !27
  store { i64, ptr } %t410, ptr %l151, !tbaa !27
  br label %bb90
bb89:
  %t411 = load i32, ptr %l155, !tbaa !23
  %t412 = lshr i32 %t411, 16
  %t413 = and i32 %t411, 65535
  %t414 = icmp eq i32 %t412, 1
  %t415 = select i1 %t414, i32 1, i32 0
  %t416 = icmp eq i32 %t411, 0
  %t417 = shl i32 %t415, 16
  %t418 = or i32 %t417, %t413
  %t419 = select i1 %t416, i32 0, i32 %t418
  call void @__olang_scope_close(ptr %s20)
  call void @__olang_scope_close(ptr %s13)
  %t421 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t419, 0
  store { i32, { i64, ptr } } %t421, ptr %rv
  br label %ret
bb90:
  %t422 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d158, i32 0, i32 1) }, 1
  %t423 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d158, i32 0, i32 1) }, 0
  %t424 = load { i64, ptr }, ptr %l151, !tbaa !27
  %t425 = extractvalue { i64, ptr } %t424, 1
  %t426 = extractvalue { i64, ptr } %t424, 0
  %t427 = add i64 %t423, %t426
  %t428 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t427)
  call void @olang_textcopy(ptr %t428, ptr %t422, i64 %t423)
  %t429 = getelementptr i8, ptr %t428, i64 %t423
  call void @olang_textcopy(ptr %t429, ptr %t425, i64 %t426)
  %t430 = insertvalue { i64, ptr } undef, i64 %t427, 0
  %t431 = insertvalue { i64, ptr } %t430, ptr %t428, 1
  %t433 = extractvalue { i64, ptr } %t431, 0
  %t434 = extractvalue { i64, ptr } %t431, 1
  %t435 = mul i64 %t433, 1
  %t436 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t435)
  call void @llvm.memcpy.p0.p0.i64(ptr %t436, ptr %t434, i64 %t435, i1 false)
  %t437 = insertvalue { i64, ptr } undef, i64 %t433, 0
  %t438 = insertvalue { i64, ptr } %t437, ptr %t436, 1
  %t439 = load ptr, ptr %l150, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s13, ptr %s20, ptr %t439, { i64, ptr } %t438)
  br label %bb91
bb91:
  call void @__olang_scope_close(ptr %s20)
  br label %bb92
bb92:
  %t442 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s13, ptr %v1, ptr %l9)
  store { i64, ptr } %t442, ptr %l160
  br label %bb93
bb93:
  call void @__olang_scope_close(ptr %s13)
  %t443 = load { i64, ptr }, ptr %l160, !tbaa !27
  %t444 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t443, 1
  store { i32, { i64, ptr } } %t444, ptr %rv
  br label %ret
bb94:
  %t445 = load i32, ptr %l4, !range !{i32 0, i32 7}
  %t447 = trunc i64 6 to i32
  %t448 = icmp eq i32 %t445, %t447
  br i1 %t448, label %bb95, label %bb96
bb95:
  br label %bb97
bb96:
  br label %bb101
bb97:
  %t450 = load ptr, ptr %l0, !tbaa !29
  %t451 = getelementptr %"compiler/bindgen:ctype", ptr %l3, i32 0, i32 1
  %t452 = load { i64, ptr }, ptr %t451, !tbaa !27
  %t455 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %v0, ptr %t450, { i64, ptr } %t452)
  store i32 %t455, ptr %l165
  %t456 = icmp ne i32 %t455, 0
  br i1 %t456, label %bb99, label %ok.457, !prof !99
ok.457:
  br label %bb98
bb98:
  br label %bb100
bb99:
  %t458 = load i32, ptr %l165, !tbaa !23
  %t459 = lshr i32 %t458, 16
  %t460 = and i32 %t458, 65535
  %t461 = icmp eq i32 %t459, 1
  %t462 = select i1 %t461, i32 1, i32 0
  %t463 = icmp eq i32 %t458, 0
  %t464 = shl i32 %t462, 16
  %t465 = or i32 %t464, %t460
  %t466 = select i1 %t463, i32 0, i32 %t465
  %t468 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t466, 0
  store { i32, { i64, ptr } } %t468, ptr %rv
  br label %ret
bb100:
  br label %bb106
bb101:
  br i1 true, label %bb102, label %bb103
bb102:
  br label %bb104
bb103:
  br label %bb105
bb104:
  br label %bb106
bb105:
  call void @__olang_check_failed(ptr @olang_loc_55ef846781ac27aa_5519550b25564c26)
  unreachable
bb106:
  %t469 = load i1, ptr %l2, !tbaa !21
  %t471 = call { i64, ptr } @compiler_2fbindgen_2evoidRef(ptr %v1, i1 %t469)
  store { i64, ptr } %t471, ptr %l168
  br label %bb107
bb107:
  %t472 = load { i64, ptr }, ptr %l168, !tbaa !27
  %t473 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t472, 1
  store { i32, { i64, ptr } } %t473, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eread(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca i64
  %l21 = alloca ptr
  %l22 = alloca i64
  %l24 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l29 = alloca i64
  %l30 = alloca { i64, ptr }
  %l31 = alloca i64
  %l32 = alloca i64
  %l33 = alloca ptr
  %l34 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l36 = alloca ptr
  %l37 = alloca ptr
  %l38 = alloca { i64, ptr }
  %l39 = alloca i64
  %l40 = alloca i64
  %l41 = alloca ptr
  %l42 = alloca i1
  %l43 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l46 = alloca { i64, ptr }
  %l54 = alloca { i64, ptr }
  %l58 = alloca ptr
  %l80 = alloca ptr
  %l90 = alloca { i64, ptr }
  %l92 = alloca { i64, ptr }
  %l94 = alloca i1
  %l96 = alloca { i64, ptr }
  %l98 = alloca ptr
  %l99 = alloca i64
  %l103 = alloca { i64, ptr }
  %l104 = alloca i64
  %l110 = alloca { i64, ptr }
  %l118 = alloca { i64, ptr }
  %l122 = alloca ptr
  %l125 = alloca i64
  %l127 = alloca ptr
  %l129 = alloca { i64, ptr }
  %l131 = alloca i64
  %l132 = alloca i32
  %l135 = alloca i1
  %l137 = alloca i1
  %l138 = alloca i1
  %l140 = alloca i1
  %l142 = alloca ptr
  %l143 = alloca i64
  %l156 = alloca ptr
  %l157 = alloca ptr
  %l159 = alloca { i64, ptr }
  %l164 = alloca %"compiler/bindgen:record"
  %l166 = alloca %"compiler/bindgen:record"
  %l168 = alloca i1
  %l176 = alloca ptr
  %l177 = alloca ptr
  %l179 = alloca { i64, ptr }
  %l184 = alloca i1
  %l185 = alloca ptr
  %l186 = alloca ptr
  %l187 = alloca { i64, ptr }
  %l190 = alloca i1
  %l192 = alloca i1
  %l194 = alloca { i64, ptr }
  %l202 = alloca { i64, ptr }
  %l206 = alloca { i64, ptr }
  %l208 = alloca i1
  %l211 = alloca { i64, ptr }
  %l213 = alloca i1
  %l215 = alloca i64
  %l216 = alloca { i64, ptr }
  %l217 = alloca i64
  %l218 = alloca i32
  %l219 = alloca i64
  %l220 = alloca i32
  %l223 = alloca { i64, ptr }
  %l225 = alloca ptr
  %l226 = alloca i64
  %l234 = alloca i1
  %l243 = alloca i1
  %l244 = alloca i1
  %l247 = alloca i1
  %l248 = alloca i1
  %l250 = alloca i1
  %l252 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l254 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l257 = alloca { i64, ptr }
  %l265 = alloca { i64, ptr }
  %l269 = alloca { i64, ptr }
  %l271 = alloca i1
  %l272 = alloca ptr
  %l273 = alloca i64
  %l276 = alloca { i64, ptr }
  %l278 = alloca ptr
  %l279 = alloca i64
  %l282 = alloca { i64, ptr }
  %l287 = alloca { i64, ptr }
  %l289 = alloca i1
  %l290 = alloca i1
  %l292 = alloca i1
  %l295 = alloca i1
  %l298 = alloca ptr
  %l299 = alloca i64
  %l305 = alloca { i64, ptr }
  %l307 = alloca i1
  %l308 = alloca i1
  %l311 = alloca i1
  %l312 = alloca { i64, ptr }
  %l317 = alloca ptr
  %l318 = alloca i64
  %l322 = alloca { i64, ptr }
  %l323 = alloca i64
  %l326 = alloca { i64, ptr }
  %l327 = alloca { i64, ptr }
  %l328 = alloca i64
  %l331 = alloca { i64, ptr }
  %l332 = alloca i64
  %l335 = alloca { i64, ptr }
  %l338 = alloca %"compiler/bindgen:cFunc"
  %l340 = alloca i1
  %l341 = alloca i1
  %l344 = alloca i1
  %l345 = alloca i1
  %l347 = alloca i1
  %l348 = alloca i1
  %l350 = alloca { i64, ptr }
  %l352 = alloca i1
  %l355 = alloca ptr
  %l356 = alloca i64
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s22 = alloca %olang.scope
  %s23 = alloca %olang.scope
  %s25 = alloca %olang.scope
  %s29 = alloca %olang.scope
  %s30 = alloca %olang.scope
  %s31 = alloca %olang.scope
  %t314 = alloca %"compiler/bindgen:record", align 8
  %t317 = alloca %"compiler/bindgen:record", align 8
  store ptr %a0, ptr %l0
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s1
  %t3 = call { i64, ptr } @compiler_2fbindgen_2einner(ptr %v1, ptr %s1, ptr %a1)
  store { i64, ptr } %t3, ptr %l46
  br label %bb1
bb1:
  %t4 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t4, 0
  %t6 = extractvalue { i64, ptr } %t4, 1
  %t7 = mul i64 %t5, 8
  %t8 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t7)
  call void @llvm.memcpy.p0.p0.i64(ptr %t8, ptr %t6, i64 %t7, i1 false)
  %t9 = insertvalue { i64, ptr } undef, i64 %t5, 0
  %t10 = insertvalue { i64, ptr } %t9, ptr %t8, 1
  store { i64, ptr } %t10, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t12 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t12, 0
  store i64 %t14, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  store %olang.scope zeroinitializer, ptr %s2
  %t16 = load i64, ptr %l4, !tbaa !24
  %t17 = load i64, ptr %l5, !tbaa !24
  %t20 = icmp slt i64 %t16, %t17
  %t22 = xor i1 %t20, true
  br i1 %t22, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s2)
  br label %bb210
bb4:
  br label %bb5
bb5:
  %t24 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t24, ptr %l54, !tbaa !27
  %t25 = load i64, ptr %l4, !tbaa !24
  %t27 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = getelementptr ptr, ptr %t28, i64 %t25
  %t30 = load ptr, ptr %t29, !tbaa !39
  store ptr %t30, ptr %l6, !tbaa !29
  %t32 = load ptr, ptr %l6, !tbaa !29
  %t34 = call ptr @compiler_2fbindgen_2emember(ptr %s1, ptr %s1, ptr %s1, ptr %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d159, i32 0, i32 1) })
  store ptr %t34, ptr %l58
  br label %bb6
bb6:
  %t35 = load ptr, ptr %l58, !tbaa !29
  store ptr %t35, ptr %l7, !tbaa !29
  %t36 = load ptr, ptr %l7, !tbaa !29
  %t38 = icmp eq ptr %t36, null
  %t40 = xor i1 %t38, true
  br i1 %t40, label %bb7, label %bb8
bb7:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load ptr, ptr %l7, !tbaa !29
  %t44 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2etrack(ptr %v0, ptr %s1, ptr %v2, ptr %t42, ptr %t43, { i64, ptr } %t44)
  br label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb10
bb10:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/bindgen:gen", ptr %t48, i32 0, i32 26
  %t51 = load i64, ptr %t50, !tbaa !24
  store i64 %t51, ptr %l8, !tbaa !24
  store %olang.scope zeroinitializer, ptr %s4
  %t53 = insertvalue [3 x { i64, ptr }] undef, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d160, i32 0, i32 1) }, 0
  %t54 = insertvalue [3 x { i64, ptr }] %t53, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d161, i32 0, i32 1) }, 1
  %t55 = insertvalue [3 x { i64, ptr }] %t54, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d162, i32 0, i32 1) }, 2
  %t57 = call ptr @__olang_scope_alloc_a(ptr %s4, i64 48, i64 8)
  store [3 x { i64, ptr }] %t55, ptr %t57
  store ptr %t57, ptr %l9
  store i64 0, ptr %l10, !tbaa !24
  %t59 = load ptr, ptr %l9
  store i64 3, ptr %l11, !tbaa !24
  br label %bb11
bb11:
  %t62 = load i64, ptr %l10, !tbaa !24
  %t63 = load i64, ptr %l11, !tbaa !24
  %t66 = icmp slt i64 %t62, %t63
  %t68 = xor i1 %t66, true
  br i1 %t68, label %bb12, label %bb13
bb12:
  br label %bb21
bb13:
  br label %bb14
bb14:
  %t70 = load ptr, ptr %l9
  %t71 = load i64, ptr %l10, !tbaa !24
  %t74 = getelementptr [3 x { i64, ptr }], ptr %t70, i64 0, i64 %t71
  %t75 = load { i64, ptr }, ptr %t74, !tbaa !37
  %t77 = load ptr, ptr %l6, !tbaa !29
  %t79 = load ptr, ptr @__olang_prog_scope
  %t82 = call ptr @compiler_2fbindgen_2emember(ptr %s1, ptr %t79, ptr %s1, ptr %t77, { i64, ptr } %t75)
  store ptr %t82, ptr %l80
  br label %bb15
bb15:
  %t83 = load ptr, ptr %l80, !tbaa !29
  store ptr %t83, ptr %l13, !tbaa !29
  %t84 = load ptr, ptr %l13, !tbaa !29
  %t86 = icmp eq ptr %t84, null
  %t88 = xor i1 %t86, true
  br i1 %t88, label %bb16, label %bb17
bb16:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t91 = load ptr, ptr %l13, !tbaa !29
  %t92 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2etrack(ptr %v0, ptr %s1, ptr %v2, ptr %t90, ptr %t91, { i64, ptr } %t92)
  br label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t96 = load i64, ptr %l10, !tbaa !24
  %t98 = add i64 %t96, 1
  store i64 %t98, ptr %l10, !tbaa !24
  br label %bb11
bb21:
  call void @__olang_scope_close(ptr %s4)
  %t100 = load ptr, ptr %l6, !tbaa !29
  %t102 = call { i64, ptr } @compiler_2fbindgen_2etext(ptr %s1, ptr %s2, ptr %s2, ptr %t100, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d163, i32 0, i32 1) })
  store { i64, ptr } %t102, ptr %l90
  br label %bb22
bb22:
  %t103 = load { i64, ptr }, ptr %l90, !tbaa !27
  store { i64, ptr } %t103, ptr %l14, !tbaa !27
  %t104 = load ptr, ptr %l6, !tbaa !29
  %t106 = call { i64, ptr } @compiler_2fbindgen_2etext(ptr %s1, ptr %s2, ptr %s2, ptr %t104, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d164, i32 0, i32 1) })
  store { i64, ptr } %t106, ptr %l92
  br label %bb23
bb23:
  %t107 = load { i64, ptr }, ptr %l92, !tbaa !27
  store { i64, ptr } %t107, ptr %l15, !tbaa !27
  %t108 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t110 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t108, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d165, i32 0, i32 1) })
  store i1 %t110, ptr %l94
  br label %bb24
bb24:
  %t111 = load i1, ptr %l94, !tbaa !21
  br i1 %t111, label %bb25, label %bb26
bb25:
  store %olang.scope zeroinitializer, ptr %s8
  %t112 = load ptr, ptr %l6, !tbaa !29
  %t114 = call { i64, ptr } @compiler_2fbindgen_2etypeOf(ptr %s1, ptr %s8, ptr %t112)
  store { i64, ptr } %t114, ptr %l96
  br label %bb27
bb26:
  br label %bb75
bb27:
  %t115 = load { i64, ptr }, ptr %l96, !tbaa !27
  store { i64, ptr } %t115, ptr %l16, !tbaa !27
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t118 = getelementptr %"compiler/bindgen:gen", ptr %t116, i32 0, i32 4
  store ptr %t118, ptr %l98, !tbaa !29
  %t119 = ptrtoint ptr %v0 to i64
  store i64 %t119, ptr %l99, !tbaa !24
  %t120 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20st_Ha3f33385783b00c3f13cf90b683d8670
  br i1 %t120, label %bb28, label %bb29
bb28:
  %t122 = call ptr @__olang_region_make(ptr %v0)
  %t123 = ptrtoint ptr %t122 to i64
  store i64 %t123, ptr %l99, !tbaa !24
  br label %bb29
bb29:
  %t124 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t126 = extractvalue { i64, ptr } %t124, 1
  %t127 = extractvalue { i64, ptr } %t124, 0
  %t128 = load i64, ptr %l99
  %t129 = inttoptr i64 %t128 to ptr
  %t130 = call ptr @__olang_scope_alloc(ptr %t129, i64 %t127)
  call void @olang_textcopy(ptr %t130, ptr %t126, i64 %t127)
  %t131 = insertvalue { i64, ptr } undef, i64 %t127, 0
  %t132 = insertvalue { i64, ptr } %t131, ptr %t130, 1
  %t134 = load i64, ptr %l99
  %t135 = inttoptr i64 %t134 to ptr
  %t136 = extractvalue { i64, ptr } %t132, 0
  %t137 = extractvalue { i64, ptr } %t132, 1
  %t138 = mul i64 %t136, 1
  %t139 = call ptr @__olang_scope_alloc(ptr %t135, i64 %t138)
  call void @llvm.memcpy.p0.p0.i64(ptr %t139, ptr %t137, i64 %t138, i1 false)
  %t140 = insertvalue { i64, ptr } undef, i64 %t136, 0
  %t141 = insertvalue { i64, ptr } %t140, ptr %t139, 1
  store { i64, ptr } %t141, ptr %l103, !tbaa !27
  %t142 = ptrtoint ptr %v0 to i64
  store i64 %t142, ptr %l104, !tbaa !24
  %t143 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20st_Ha3f33285783aff10f13cf80b683d8c03
  br i1 %t143, label %bb30, label %bb31
bb30:
  %t145 = call ptr @__olang_region_make(ptr %v0)
  %t146 = ptrtoint ptr %t145 to i64
  store i64 %t146, ptr %l104, !tbaa !24
  br label %bb31
bb31:
  %t147 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t149 = extractvalue { i64, ptr } %t147, 1
  %t150 = extractvalue { i64, ptr } %t147, 0
  %t151 = load i64, ptr %l104
  %t152 = inttoptr i64 %t151 to ptr
  %t153 = call ptr @__olang_scope_alloc(ptr %t152, i64 %t150)
  call void @olang_textcopy(ptr %t153, ptr %t149, i64 %t150)
  %t154 = insertvalue { i64, ptr } undef, i64 %t150, 0
  %t155 = insertvalue { i64, ptr } %t154, ptr %t153, 1
  %t157 = load i64, ptr %l104
  %t158 = inttoptr i64 %t157 to ptr
  %t159 = extractvalue { i64, ptr } %t155, 0
  %t160 = extractvalue { i64, ptr } %t155, 1
  %t161 = mul i64 %t159, 1
  %t162 = call ptr @__olang_scope_alloc(ptr %t158, i64 %t161)
  call void @llvm.memcpy.p0.p0.i64(ptr %t162, ptr %t160, i64 %t161, i1 false)
  %t163 = insertvalue { i64, ptr } undef, i64 %t159, 0
  %t164 = insertvalue { i64, ptr } %t163, ptr %t162, 1
  %t165 = load ptr, ptr %l98, !tbaa !29
  %t166 = load { i64, ptr }, ptr %l103, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6f7a2f8d839c49b6e7a19c287d4b190c(ptr %v0, ptr %v0, ptr %v0, ptr %t165, { i64, ptr } %t166, { i64, ptr } %t164)
  br label %bb32
bb32:
  store %olang.scope zeroinitializer, ptr %s11
  %t168 = load ptr, ptr %l6, !tbaa !29
  %t170 = call { i64, ptr } @compiler_2fbindgen_2einner(ptr %s1, ptr %s11, ptr %t168)
  store { i64, ptr } %t170, ptr %l110
  br label %bb33
bb33:
  %t171 = load { i64, ptr }, ptr %l110, !tbaa !27
  %t172 = extractvalue { i64, ptr } %t171, 0
  %t173 = extractvalue { i64, ptr } %t171, 1
  %t174 = mul i64 %t172, 8
  %t175 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t174)
  call void @llvm.memcpy.p0.p0.i64(ptr %t175, ptr %t173, i64 %t174, i1 false)
  %t176 = insertvalue { i64, ptr } undef, i64 %t172, 0
  %t177 = insertvalue { i64, ptr } %t176, ptr %t175, 1
  store { i64, ptr } %t177, ptr %l17, !tbaa !27
  store i64 0, ptr %l18, !tbaa !24
  %t179 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t181 = extractvalue { i64, ptr } %t179, 0
  store i64 %t181, ptr %l19, !tbaa !24
  br label %bb34
bb34:
  store %olang.scope zeroinitializer, ptr %s12
  %t183 = load i64, ptr %l18, !tbaa !24
  %t184 = load i64, ptr %l19, !tbaa !24
  %t187 = icmp slt i64 %t183, %t184
  %t189 = xor i1 %t187, true
  br i1 %t189, label %bb35, label %bb36
bb35:
  call void @__olang_scope_close(ptr %s12)
  br label %bb74
bb36:
  br label %bb37
bb37:
  %t191 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t191, ptr %l118, !tbaa !27
  %t192 = load i64, ptr %l18, !tbaa !24
  %t194 = getelementptr { i64, ptr }, ptr %l118, i32 0, i32 1
  %t195 = load ptr, ptr %t194, !tbaa !27
  %t196 = getelementptr ptr, ptr %t195, i64 %t192
  %t197 = load ptr, ptr %t196, !tbaa !39
  %t201 = call ptr @compiler_2fbindgen_2emember(ptr %s11, ptr %s11, ptr %s11, ptr %t197, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d166, i32 0, i32 1) })
  store ptr %t201, ptr %l122
  br label %bb38
bb38:
  %t202 = load ptr, ptr %l122, !tbaa !29
  store ptr %t202, ptr %l21, !tbaa !29
  %t203 = load ptr, ptr %l21, !tbaa !29
  %t205 = icmp eq ptr %t203, null
  br i1 %t205, label %bb39, label %bb40
bb39:
  call void @__olang_scope_close(ptr %s12)
  br label %bb73
bb40:
  br label %bb41
bb41:
  %t207 = load ptr, ptr %l0, !tbaa !29
  %t209 = getelementptr %"compiler/bindgen:gen", ptr %t207, i32 0, i32 7
  store ptr %t209, ptr %l127, !tbaa !29
  %t210 = load ptr, ptr %l21, !tbaa !29
  %t212 = call { i64, ptr } @compiler_2fbindgen_2etext(ptr %s11, ptr %s12, ptr %s12, ptr %t210, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d167, i32 0, i32 1) })
  store { i64, ptr } %t212, ptr %l129
  br label %bb42
bb42:
  %t213 = load { i64, ptr }, ptr %l129, !tbaa !27
  %t214 = extractvalue { i64, ptr } %t213, 0
  %t215 = extractvalue { i64, ptr } %t213, 1
  %t216 = mul i64 %t214, 1
  %t217 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t216)
  call void @llvm.memcpy.p0.p0.i64(ptr %t217, ptr %t215, i64 %t216, i1 false)
  %t218 = insertvalue { i64, ptr } undef, i64 %t214, 0
  %t219 = insertvalue { i64, ptr } %t218, ptr %t217, 1
  %t220 = load ptr, ptr %l127, !tbaa !29
  %t222 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9162e3b7f03fcbf954b681204d5f6cca(ptr %v0, ptr %s12, ptr %t220, { i64, ptr } %t219)
  %t223 = extractvalue { i32, i64 } %t222, 1
  %t224 = extractvalue { i32, i64 } %t222, 0
  store i32 %t224, ptr %l132
  %t225 = icmp ne i32 %t224, 0
  br i1 %t225, label %bb44, label %ok.226, !prof !99
ok.226:
  store i64 %t223, ptr %l131
  br label %bb43
bb43:
  %t227 = load i64, ptr %l131, !tbaa !24
  store i64 %t227, ptr %l125, !tbaa !24
  br label %bb46
bb44:
  br label %bb45
bb45:
  store i64 -1, ptr %l125, !tbaa !24
  br label %bb46
bb46:
  %t228 = load i64, ptr %l125, !tbaa !24
  store i64 %t228, ptr %l22, !tbaa !24
  %t229 = load i64, ptr %l22, !tbaa !24
  %t231 = icmp sge i64 %t229, 0
  br i1 %t231, label %bb47, label %bb48
bb47:
  %t233 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t235 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s8, ptr %s12, { i64, ptr } %t233, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d168, i32 0, i32 1) })
  store i1 %t235, ptr %l137
  br label %bb49
bb48:
  store i1 false, ptr %l135, !tbaa !21
  br label %bb54
bb49:
  %t236 = load i1, ptr %l137, !tbaa !21
  br i1 %t236, label %bb50, label %bb51
bb50:
  store i1 true, ptr %l138, !tbaa !21
  br label %bb53
bb51:
  %t237 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t239 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s8, ptr %s12, { i64, ptr } %t237, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d169, i32 0, i32 1) })
  store i1 %t239, ptr %l140
  br label %bb52
bb52:
  %t240 = load i1, ptr %l140, !tbaa !21
  store i1 %t240, ptr %l138, !tbaa !21
  br label %bb53
bb53:
  %t241 = load i1, ptr %l138, !tbaa !21
  store i1 %t241, ptr %l135, !tbaa !21
  br label %bb54
bb54:
  %t242 = load i1, ptr %l135, !tbaa !21
  br i1 %t242, label %bb55, label %bb56
bb55:
  store %olang.scope zeroinitializer, ptr %s14
  %t243 = load ptr, ptr %l0, !tbaa !29
  %t245 = getelementptr %"compiler/bindgen:gen", ptr %t243, i32 0, i32 6
  store ptr %t245, ptr %l142, !tbaa !29
  %t246 = ptrtoint ptr %v0 to i64
  store i64 %t246, ptr %l143, !tbaa !24
  %t247 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2e0
  br i1 %t247, label %bb57, label %bb58
bb56:
  br label %bb72
bb57:
  %t249 = call ptr @__olang_region_make(ptr %v0)
  %t250 = ptrtoint ptr %t249 to i64
  store i64 %t250, ptr %l143, !tbaa !24
  br label %bb58
bb58:
  %t251 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t253 = extractvalue { i64, ptr } %t251, 1
  %t254 = extractvalue { i64, ptr } %t251, 0
  %t255 = load i64, ptr %l143
  %t256 = inttoptr i64 %t255 to ptr
  %t257 = call ptr @__olang_scope_alloc(ptr %t256, i64 %t254)
  call void @olang_textcopy(ptr %t257, ptr %t253, i64 %t254)
  %t258 = insertvalue { i64, ptr } undef, i64 %t254, 0
  %t259 = insertvalue { i64, ptr } %t258, ptr %t257, 1
  %t261 = load i64, ptr %l143
  %t262 = inttoptr i64 %t261 to ptr
  %t263 = extractvalue { i64, ptr } %t259, 0
  %t264 = extractvalue { i64, ptr } %t259, 1
  %t265 = mul i64 %t263, 1
  %t266 = call ptr @__olang_scope_alloc(ptr %t262, i64 %t265)
  call void @llvm.memcpy.p0.p0.i64(ptr %t266, ptr %t264, i64 %t265, i1 false)
  %t267 = insertvalue { i64, ptr } undef, i64 %t263, 0
  %t268 = insertvalue { i64, ptr } %t267, ptr %t266, 1
  %t269 = load i64, ptr %l22, !tbaa !24
  %t270 = load ptr, ptr %l142, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v0, ptr %v0, ptr %t270, { i64, ptr } %t268, i64 %t269)
  br label %bb59
bb59:
  %t273 = load i64, ptr %l22, !tbaa !24
  %t275 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t277 = extractvalue { i64, ptr } %t275, 1
  %t278 = extractvalue { i64, ptr } %t275, 0
  %t279 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t278)
  call void @olang_textcopy(ptr %t279, ptr %t277, i64 %t278)
  %t280 = insertvalue { i64, ptr } undef, i64 %t278, 0
  %t281 = insertvalue { i64, ptr } %t280, ptr %t279, 1
  %t283 = extractvalue { i64, ptr } %t281, 0
  %t284 = extractvalue { i64, ptr } %t281, 1
  %t285 = mul i64 %t283, 1
  %t286 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t285)
  call void @llvm.memcpy.p0.p0.i64(ptr %t286, ptr %t284, i64 %t285, i1 false)
  %t287 = insertvalue { i64, ptr } undef, i64 %t283, 0
  %t288 = insertvalue { i64, ptr } %t287, ptr %t286, 1
  store { i64, ptr } %t288, ptr %l24, !tbaa !27
  %t290 = load ptr, ptr %l0, !tbaa !29
  %t292 = getelementptr %"compiler/bindgen:gen", ptr %t290, i32 0, i32 5
  %t296 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eRefMu_Hc21bcd245b67ffb6ee3e145838fcf2cf(ptr %v0, ptr %v0, ptr %t292, i64 %t273)
  store ptr %t296, ptr %l156
  br label %bb60
bb60:
  %t297 = load ptr, ptr %l156, !tbaa !29
  store ptr %t297, ptr %l157, !tbaa !29
  %t299 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t300 = load ptr, ptr %l157, !tbaa !29
  %t301 = getelementptr %"compiler/bindgen:record", ptr %t300, i32 0, i32 0
  %t302 = load { i64, ptr }, ptr %t301, !tbaa !27
  store { i64, ptr } %t302, ptr %l159, !tbaa !27
  %t304 = load ptr, ptr %l157, !tbaa !29
  %t305 = getelementptr %"compiler/bindgen:record", ptr %t304, i32 0, i32 0
  store { i64, ptr } %t299, ptr %t305, !tbaa !27
  %t306 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3arecord_2e0
  br i1 %t306, label %bb61, label %bb62
bb61:
  %t308 = load { i64, ptr }, ptr %l159
  %t309 = extractvalue { i64, ptr } %t308, 1
  call void @__olang_region_release(ptr %t309)
  store { i64, ptr } zeroinitializer, ptr %l159
  br label %bb62
bb62:
  %t310 = load ptr, ptr %l0, !tbaa !29
  %t312 = getelementptr %"compiler/bindgen:gen", ptr %t310, i32 0, i32 5
  %t313 = load i64, ptr %l22, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eAt_3ccompiler_2fbindgen_3arecord_3e(ptr %t314, ptr %v0, ptr %v0, ptr %t312, i64 %t313)
  call void @llvm.memmove.p0.p0.i64(ptr %l164, ptr %t314, i64 216, i1 false)
  br label %bb63
bb63:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbindgen_3arecord(ptr %t317, ptr %v0, ptr %l164)
  call void @llvm.memmove.p0.p0.i64(ptr %l166, ptr %t317, i64 216, i1 false)
  br label %bb64
bb64:
  %t319 = getelementptr %"compiler/bindgen:record", ptr %l166, i32 0, i32 11
  %t320 = load { i64, ptr }, ptr %t319, !tbaa !27
  %t322 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s14, { i64, ptr } %t320, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d170, i32 0, i32 1) })
  store i1 %t322, ptr %l168
  br label %bb65
bb65:
  %t323 = load i1, ptr %l168, !tbaa !21
  br i1 %t323, label %bb66, label %bb67
bb66:
  %t324 = load i64, ptr %l22, !tbaa !24
  %t326 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t328 = extractvalue { i64, ptr } %t326, 1
  %t329 = extractvalue { i64, ptr } %t326, 0
  %t330 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t329)
  call void @olang_textcopy(ptr %t330, ptr %t328, i64 %t329)
  %t331 = insertvalue { i64, ptr } undef, i64 %t329, 0
  %t332 = insertvalue { i64, ptr } %t331, ptr %t330, 1
  %t334 = extractvalue { i64, ptr } %t332, 0
  %t335 = extractvalue { i64, ptr } %t332, 1
  %t336 = mul i64 %t334, 1
  %t337 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t336)
  call void @llvm.memcpy.p0.p0.i64(ptr %t337, ptr %t335, i64 %t336, i1 false)
  %t338 = insertvalue { i64, ptr } undef, i64 %t334, 0
  %t339 = insertvalue { i64, ptr } %t338, ptr %t337, 1
  store { i64, ptr } %t339, ptr %l27, !tbaa !27
  %t341 = load ptr, ptr %l0, !tbaa !29
  %t343 = getelementptr %"compiler/bindgen:gen", ptr %t341, i32 0, i32 5
  %t347 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eRefMu_Hc21bcd245b67ffb6ee3e145838fcf2cf(ptr %v0, ptr %v0, ptr %t343, i64 %t324)
  store ptr %t347, ptr %l176
  br label %bb68
bb67:
  br label %bb71
bb68:
  %t348 = load ptr, ptr %l176, !tbaa !29
  store ptr %t348, ptr %l177, !tbaa !29
  %t350 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t351 = load ptr, ptr %l177, !tbaa !29
  %t352 = getelementptr %"compiler/bindgen:record", ptr %t351, i32 0, i32 11
  %t353 = load { i64, ptr }, ptr %t352, !tbaa !27
  store { i64, ptr } %t353, ptr %l179, !tbaa !27
  %t355 = load ptr, ptr %l177, !tbaa !29
  %t356 = getelementptr %"compiler/bindgen:record", ptr %t355, i32 0, i32 11
  store { i64, ptr } %t350, ptr %t356, !tbaa !27
  %t357 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3arecord_2e11
  br i1 %t357, label %bb69, label %bb70
bb69:
  %t359 = load { i64, ptr }, ptr %l179
  %t360 = extractvalue { i64, ptr } %t359, 1
  call void @__olang_region_release(ptr %t360)
  store { i64, ptr } zeroinitializer, ptr %l179
  br label %bb70
bb70:
  br label %bb71
bb71:
  call void @__olang_scope_close(ptr %s14)
  br label %bb72
bb72:
  call void @__olang_scope_close(ptr %s12)
  br label %bb73
bb73:
  %t361 = load i64, ptr %l18, !tbaa !24
  %t363 = add i64 %t361, 1
  store i64 %t363, ptr %l18, !tbaa !24
  br label %bb34
bb74:
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s2)
  br label %bb209
bb75:
  %t365 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t367 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t365, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d171, i32 0, i32 1) })
  store i1 %t367, ptr %l184
  br label %bb76
bb76:
  %t368 = load i1, ptr %l184, !tbaa !21
  br i1 %t368, label %bb77, label %bb78
bb77:
  %t369 = load ptr, ptr %l0, !tbaa !29
  store ptr %t369, ptr %l185, !tbaa !29
  %t370 = load ptr, ptr %l6, !tbaa !29
  store ptr %t370, ptr %l186, !tbaa !29
  %t371 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t371, ptr %l187, !tbaa !27
  %t372 = load ptr, ptr %l0, !tbaa !29
  %t373 = load i64, ptr %l8, !tbaa !24
  %t376 = call i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ewanted(ptr %v0, ptr %t372, i64 %t373)
  store i1 %t376, ptr %l190
  br label %bb79
bb78:
  br label %bb81
bb79:
  %t377 = load ptr, ptr %l185, !tbaa !29
  %t378 = load ptr, ptr %l186, !tbaa !29
  %t379 = load { i64, ptr }, ptr %l187, !tbaa !27
  %t380 = load i1, ptr %l190, !tbaa !21
  call void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2erecordDecl(ptr %v0, ptr %s1, ptr %s2, ptr %t377, ptr %t378, { i64, ptr } %t379, i1 %t380)
  br label %bb80
bb80:
  call void @__olang_scope_close(ptr %s2)
  br label %bb209
bb81:
  %t381 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t383 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t381, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d172, i32 0, i32 1) })
  store i1 %t383, ptr %l192
  br label %bb82
bb82:
  %t384 = load i1, ptr %l192, !tbaa !21
  br i1 %t384, label %bb83, label %bb84
bb83:
  store i64 0, ptr %l29, !tbaa !24
  store %olang.scope zeroinitializer, ptr %s22
  %t385 = load ptr, ptr %l6, !tbaa !29
  %t387 = call { i64, ptr } @compiler_2fbindgen_2einner(ptr %s1, ptr %s22, ptr %t385)
  store { i64, ptr } %t387, ptr %l194
  br label %bb85
bb84:
  br label %bb117
bb85:
  %t388 = load { i64, ptr }, ptr %l194, !tbaa !27
  %t389 = extractvalue { i64, ptr } %t388, 0
  %t390 = extractvalue { i64, ptr } %t388, 1
  %t391 = mul i64 %t389, 8
  %t392 = call ptr @__olang_scope_alloc(ptr %s22, i64 %t391)
  call void @llvm.memcpy.p0.p0.i64(ptr %t392, ptr %t390, i64 %t391, i1 false)
  %t393 = insertvalue { i64, ptr } undef, i64 %t389, 0
  %t394 = insertvalue { i64, ptr } %t393, ptr %t392, 1
  store { i64, ptr } %t394, ptr %l30, !tbaa !27
  store i64 0, ptr %l31, !tbaa !24
  %t396 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t398 = extractvalue { i64, ptr } %t396, 0
  store i64 %t398, ptr %l32, !tbaa !24
  br label %bb86
bb86:
  store %olang.scope zeroinitializer, ptr %s23
  %t400 = load i64, ptr %l31, !tbaa !24
  %t401 = load i64, ptr %l32, !tbaa !24
  %t404 = icmp slt i64 %t400, %t401
  %t406 = xor i1 %t404, true
  br i1 %t406, label %bb87, label %bb88
bb87:
  call void @__olang_scope_close(ptr %s23)
  br label %bb116
bb88:
  br label %bb89
bb89:
  %t408 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t408, ptr %l202, !tbaa !27
  %t409 = load i64, ptr %l31, !tbaa !24
  %t411 = getelementptr { i64, ptr }, ptr %l202, i32 0, i32 1
  %t412 = load ptr, ptr %t411, !tbaa !27
  %t413 = getelementptr ptr, ptr %t412, i64 %t409
  %t414 = load ptr, ptr %t413, !tbaa !39
  store ptr %t414, ptr %l33, !tbaa !29
  %t416 = load ptr, ptr %l33, !tbaa !29
  %t418 = call { i64, ptr } @compiler_2fbindgen_2etext(ptr %s22, ptr %s23, ptr %s23, ptr %t416, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d173, i32 0, i32 1) })
  store { i64, ptr } %t418, ptr %l206
  br label %bb90
bb90:
  %t419 = load { i64, ptr }, ptr %l206, !tbaa !27
  %t420 = extractvalue { i64, ptr } %t419, 0
  %t421 = extractvalue { i64, ptr } %t419, 1
  %t422 = mul i64 %t420, 1
  %t423 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t422)
  call void @llvm.memcpy.p0.p0.i64(ptr %t423, ptr %t421, i64 %t422, i1 false)
  %t424 = insertvalue { i64, ptr } undef, i64 %t420, 0
  %t425 = insertvalue { i64, ptr } %t424, ptr %t423, 1
  %t427 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s23, ptr %s23, { i64, ptr } %t425, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d174, i32 0, i32 1) })
  store i1 %t427, ptr %l208
  br label %bb91
bb91:
  %t428 = load i1, ptr %l208, !tbaa !21
  %t429 = xor i1 %t428, true
  br i1 %t429, label %bb92, label %bb93
bb92:
  call void @__olang_scope_close(ptr %s23)
  br label %bb115
bb93:
  br label %bb94
bb94:
  %t431 = load ptr, ptr %l33, !tbaa !29
  %t433 = call { i64, ptr } @compiler_2fbindgen_2econstValue(ptr %s22, ptr %s23, ptr %t431)
  store { i64, ptr } %t433, ptr %l211
  br label %bb95
bb95:
  %t434 = load { i64, ptr }, ptr %l211, !tbaa !27
  store { i64, ptr } %t434, ptr %l34, !tbaa !27
  %t435 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t437 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s23, ptr %s23, { i64, ptr } %t435, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d175, i32 0, i32 1) })
  store i1 %t437, ptr %l213
  br label %bb96
bb96:
  %t438 = load i1, ptr %l213, !tbaa !21
  %t439 = xor i1 %t438, true
  br i1 %t439, label %bb97, label %bb98
bb97:
  store %olang.scope zeroinitializer, ptr %s25
  %t441 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t441, ptr %l216, !tbaa !27
  %t442 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s25, i64 10)
  %t443 = extractvalue { i32, i64 } %t442, 1
  %t444 = extractvalue { i32, i64 } %t442, 0
  store i32 %t444, ptr %l218
  %t445 = icmp ne i32 %t444, 0
  br i1 %t445, label %bb100, label %ok.446, !prof !99
ok.446:
  store i64 %t443, ptr %l217
  br label %bb99
bb98:
  br label %bb105
bb99:
  %t447 = load { i64, ptr }, ptr %l216, !tbaa !27
  %t448 = load i64, ptr %l217, !tbaa !24
  %t449 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %s23, { i64, ptr } %t447, i64 %t448)
  %t450 = extractvalue { i32, i64 } %t449, 1
  %t451 = extractvalue { i32, i64 } %t449, 0
  store i32 %t451, ptr %l220
  %t452 = icmp ne i32 %t451, 0
  br i1 %t452, label %bb103, label %ok.453, !prof !99
ok.453:
  store i64 %t450, ptr %l219
  br label %bb102
bb100:
  br label %bb101
bb101:
  %t454 = load i64, ptr %l29, !tbaa !24
  store i64 %t454, ptr %l215, !tbaa !24
  br label %bb104
bb102:
  %t456 = load i64, ptr %l219, !tbaa !24
  store i64 %t456, ptr %l215, !tbaa !24
  br label %bb104
bb103:
  br label %bb101
bb104:
  %t457 = load i64, ptr %l215, !tbaa !24
  store i64 %t457, ptr %l29, !tbaa !24
  call void @__olang_scope_close(ptr %s25)
  br label %bb105
bb105:
  %t458 = load ptr, ptr %l33, !tbaa !29
  %t460 = call { i64, ptr } @compiler_2fbindgen_2etext(ptr %s22, ptr %s23, ptr %s23, ptr %t458, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d176, i32 0, i32 1) })
  store { i64, ptr } %t460, ptr %l223
  br label %bb106
bb106:
  %t461 = load { i64, ptr }, ptr %l223, !tbaa !27
  store { i64, ptr } %t461, ptr %l35, !tbaa !27
  %t462 = load ptr, ptr %l0, !tbaa !29
  %t464 = getelementptr %"compiler/bindgen:gen", ptr %t462, i32 0, i32 11
  store ptr %t464, ptr %l225, !tbaa !29
  %t465 = ptrtoint ptr %v0 to i64
  store i64 %t465, ptr %l226, !tbaa !24
  %t466 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2e0
  br i1 %t466, label %bb107, label %bb108
bb107:
  %t468 = call ptr @__olang_region_make(ptr %v0)
  %t469 = ptrtoint ptr %t468 to i64
  store i64 %t469, ptr %l226, !tbaa !24
  br label %bb108
bb108:
  %t470 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t472 = extractvalue { i64, ptr } %t470, 1
  %t473 = extractvalue { i64, ptr } %t470, 0
  %t474 = load i64, ptr %l226
  %t475 = inttoptr i64 %t474 to ptr
  %t476 = call ptr @__olang_scope_alloc(ptr %t475, i64 %t473)
  call void @olang_textcopy(ptr %t476, ptr %t472, i64 %t473)
  %t477 = insertvalue { i64, ptr } undef, i64 %t473, 0
  %t478 = insertvalue { i64, ptr } %t477, ptr %t476, 1
  %t480 = load i64, ptr %l226
  %t481 = inttoptr i64 %t480 to ptr
  %t482 = extractvalue { i64, ptr } %t478, 0
  %t483 = extractvalue { i64, ptr } %t478, 1
  %t484 = mul i64 %t482, 1
  %t485 = call ptr @__olang_scope_alloc(ptr %t481, i64 %t484)
  call void @llvm.memcpy.p0.p0.i64(ptr %t485, ptr %t483, i64 %t484, i1 false)
  %t486 = insertvalue { i64, ptr } undef, i64 %t482, 0
  %t487 = insertvalue { i64, ptr } %t486, ptr %t485, 1
  %t488 = load i64, ptr %l29, !tbaa !24
  %t489 = load ptr, ptr %l225, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v0, ptr %v0, ptr %t489, { i64, ptr } %t487, i64 %t488)
  br label %bb109
bb109:
  %t492 = load ptr, ptr %l0, !tbaa !29
  %t493 = load i64, ptr %l8, !tbaa !24
  %t496 = call i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ewanted(ptr %v0, ptr %t492, i64 %t493)
  store i1 %t496, ptr %l234
  br label %bb110
bb110:
  %t497 = load i1, ptr %l234, !tbaa !21
  br i1 %t497, label %bb111, label %bb112
bb111:
  %t498 = load ptr, ptr %l0, !tbaa !29
  %t499 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t500 = load i64, ptr %l29, !tbaa !24
  call void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2econstant(ptr %v0, ptr %s23, ptr %t498, { i64, ptr } %t499, i64 %t500)
  br label %bb113
bb112:
  br label %bb114
bb113:
  br label %bb114
bb114:
  %t504 = load i64, ptr %l29, !tbaa !24
  %t506 = add i64 %t504, 1
  store i64 %t506, ptr %l29, !tbaa !24
  call void @__olang_scope_close(ptr %s23)
  br label %bb115
bb115:
  %t508 = load i64, ptr %l31, !tbaa !24
  %t510 = add i64 %t508, 1
  store i64 %t510, ptr %l31, !tbaa !24
  br label %bb86
bb116:
  call void @__olang_scope_close(ptr %s22)
  call void @__olang_scope_close(ptr %s2)
  br label %bb209
bb117:
  %t512 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t514 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t512, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d177, i32 0, i32 1) })
  store i1 %t514, ptr %l243
  br label %bb118
bb118:
  %t515 = load i1, ptr %l243, !tbaa !21
  br i1 %t515, label %bb119, label %bb120
bb119:
  %t516 = load ptr, ptr %l0, !tbaa !29
  %t517 = load i64, ptr %l8, !tbaa !24
  %t520 = call i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ewanted(ptr %v0, ptr %t516, i64 %t517)
  store i1 %t520, ptr %l247
  br label %bb121
bb120:
  store i1 false, ptr %l244, !tbaa !21
  br label %bb122
bb121:
  %t521 = load i1, ptr %l247, !tbaa !21
  store i1 %t521, ptr %l244, !tbaa !21
  br label %bb122
bb122:
  %t522 = load i1, ptr %l244, !tbaa !21
  br i1 %t522, label %bb123, label %bb124
bb123:
  %t523 = load ptr, ptr %l6, !tbaa !29
  %t525 = call i1 @compiler_2fbindgen_2eflag(ptr %s1, ptr %s2, ptr %t523, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d178, i32 0, i32 1) })
  store i1 %t525, ptr %l250
  br label %bb125
bb124:
  store i1 false, ptr %l248, !tbaa !21
  br label %bb126
bb125:
  %t526 = load i1, ptr %l250, !tbaa !21
  %t527 = xor i1 %t526, true
  store i1 %t527, ptr %l248, !tbaa !21
  br label %bb126
bb126:
  %t529 = load i1, ptr %l248, !tbaa !21
  br i1 %t529, label %bb127, label %bb128
bb127:
  store %olang.scope zeroinitializer, ptr %s29
  %t530 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t530, ptr %l252
  br label %bb129
bb128:
  br label %bb188
bb129:
  %t531 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l252
  %t532 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t531, ptr %t532
  store ptr %t532, ptr %l36, !tbaa !29
  %t534 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t534, ptr %l254
  br label %bb130
bb130:
  %t535 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l254
  %t536 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t535, ptr %t536
  store ptr %t536, ptr %l37, !tbaa !29
  store %olang.scope zeroinitializer, ptr %s30
  %t538 = load ptr, ptr %l6, !tbaa !29
  %t540 = call { i64, ptr } @compiler_2fbindgen_2einner(ptr %s1, ptr %s30, ptr %t538)
  store { i64, ptr } %t540, ptr %l257
  br label %bb131
bb131:
  %t541 = load { i64, ptr }, ptr %l257, !tbaa !27
  %t542 = extractvalue { i64, ptr } %t541, 0
  %t543 = extractvalue { i64, ptr } %t541, 1
  %t544 = mul i64 %t542, 8
  %t545 = call ptr @__olang_scope_alloc(ptr %s30, i64 %t544)
  call void @llvm.memcpy.p0.p0.i64(ptr %t545, ptr %t543, i64 %t544, i1 false)
  %t546 = insertvalue { i64, ptr } undef, i64 %t542, 0
  %t547 = insertvalue { i64, ptr } %t546, ptr %t545, 1
  store { i64, ptr } %t547, ptr %l38, !tbaa !27
  store i64 0, ptr %l39, !tbaa !24
  %t549 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t551 = extractvalue { i64, ptr } %t549, 0
  store i64 %t551, ptr %l40, !tbaa !24
  br label %bb132
bb132:
  store %olang.scope zeroinitializer, ptr %s31
  %t553 = load i64, ptr %l39, !tbaa !24
  %t554 = load i64, ptr %l40, !tbaa !24
  %t557 = icmp slt i64 %t553, %t554
  %t559 = xor i1 %t557, true
  br i1 %t559, label %bb133, label %bb134
bb133:
  call void @__olang_scope_close(ptr %s31)
  br label %bb150
bb134:
  br label %bb135
bb135:
  %t561 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t561, ptr %l265, !tbaa !27
  %t562 = load i64, ptr %l39, !tbaa !24
  %t564 = getelementptr { i64, ptr }, ptr %l265, i32 0, i32 1
  %t565 = load ptr, ptr %t564, !tbaa !27
  %t566 = getelementptr ptr, ptr %t565, i64 %t562
  %t567 = load ptr, ptr %t566, !tbaa !39
  store ptr %t567, ptr %l41, !tbaa !29
  %t569 = load ptr, ptr %l41, !tbaa !29
  %t571 = call { i64, ptr } @compiler_2fbindgen_2etext(ptr %s30, ptr %s31, ptr %s31, ptr %t569, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d179, i32 0, i32 1) })
  store { i64, ptr } %t571, ptr %l269
  br label %bb136
bb136:
  %t572 = load { i64, ptr }, ptr %l269, !tbaa !27
  %t573 = extractvalue { i64, ptr } %t572, 0
  %t574 = extractvalue { i64, ptr } %t572, 1
  %t575 = mul i64 %t573, 1
  %t576 = call ptr @__olang_scope_alloc(ptr %s31, i64 %t575)
  call void @llvm.memcpy.p0.p0.i64(ptr %t576, ptr %t574, i64 %t575, i1 false)
  %t577 = insertvalue { i64, ptr } undef, i64 %t573, 0
  %t578 = insertvalue { i64, ptr } %t577, ptr %t576, 1
  %t580 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s31, ptr %s31, { i64, ptr } %t578, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d180, i32 0, i32 1) })
  store i1 %t580, ptr %l271
  br label %bb137
bb137:
  %t581 = load i1, ptr %l271, !tbaa !21
  br i1 %t581, label %bb138, label %bb139
bb138:
  %t582 = load ptr, ptr %l36, !tbaa !29
  store ptr %t582, ptr %l272, !tbaa !29
  %t583 = ptrtoint ptr %v0 to i64
  store i64 %t583, ptr %l273, !tbaa !24
  %t584 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t584, label %bb140, label %bb141
bb139:
  br label %bb148
bb140:
  %t586 = call ptr @__olang_region_make(ptr %v0)
  %t587 = ptrtoint ptr %t586 to i64
  store i64 %t587, ptr %l273, !tbaa !24
  br label %bb141
bb141:
  %t588 = load ptr, ptr %l41, !tbaa !29
  %t589 = load i64, ptr %l273
  %t590 = inttoptr i64 %t589 to ptr
  %t592 = call { i64, ptr } @compiler_2fbindgen_2etext(ptr %s30, ptr %v0, ptr %t590, ptr %t588, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d181, i32 0, i32 1) })
  store { i64, ptr } %t592, ptr %l276
  br label %bb142
bb142:
  %t593 = load { i64, ptr }, ptr %l276, !tbaa !27
  %t594 = load i64, ptr %l273
  %t595 = inttoptr i64 %t594 to ptr
  %t596 = extractvalue { i64, ptr } %t593, 0
  %t597 = extractvalue { i64, ptr } %t593, 1
  %t598 = mul i64 %t596, 1
  %t599 = call ptr @__olang_scope_alloc(ptr %t595, i64 %t598)
  call void @llvm.memcpy.p0.p0.i64(ptr %t599, ptr %t597, i64 %t598, i1 false)
  %t600 = insertvalue { i64, ptr } undef, i64 %t596, 0
  %t601 = insertvalue { i64, ptr } %t600, ptr %t599, 1
  %t602 = load ptr, ptr %l272, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t602, { i64, ptr } %t601)
  br label %bb143
bb143:
  %t604 = load ptr, ptr %l37, !tbaa !29
  store ptr %t604, ptr %l278, !tbaa !29
  %t605 = ptrtoint ptr %v0 to i64
  store i64 %t605, ptr %l279, !tbaa !24
  %t606 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t606, label %bb144, label %bb145
bb144:
  %t608 = call ptr @__olang_region_make(ptr %v0)
  %t609 = ptrtoint ptr %t608 to i64
  store i64 %t609, ptr %l279, !tbaa !24
  br label %bb145
bb145:
  %t610 = load ptr, ptr %l41, !tbaa !29
  %t611 = load i64, ptr %l279
  %t612 = inttoptr i64 %t611 to ptr
  %t614 = call { i64, ptr } @compiler_2fbindgen_2etypeOf(ptr %s30, ptr %t612, ptr %t610)
  store { i64, ptr } %t614, ptr %l282
  br label %bb146
bb146:
  %t615 = load { i64, ptr }, ptr %l282, !tbaa !27
  %t616 = load i64, ptr %l279
  %t617 = inttoptr i64 %t616 to ptr
  %t618 = extractvalue { i64, ptr } %t615, 0
  %t619 = extractvalue { i64, ptr } %t615, 1
  %t620 = mul i64 %t618, 1
  %t621 = call ptr @__olang_scope_alloc(ptr %t617, i64 %t620)
  call void @llvm.memcpy.p0.p0.i64(ptr %t621, ptr %t619, i64 %t620, i1 false)
  %t622 = insertvalue { i64, ptr } undef, i64 %t618, 0
  %t623 = insertvalue { i64, ptr } %t622, ptr %t621, 1
  %t624 = load ptr, ptr %l278, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t624, { i64, ptr } %t623)
  br label %bb147
bb147:
  br label %bb148
bb148:
  call void @__olang_scope_close(ptr %s31)
  br label %bb149
bb149:
  %t626 = load i64, ptr %l39, !tbaa !24
  %t628 = add i64 %t626, 1
  store i64 %t628, ptr %l39, !tbaa !24
  br label %bb132
bb150:
  call void @__olang_scope_close(ptr %s30)
  %t630 = load ptr, ptr %l6, !tbaa !29
  %t632 = call { i64, ptr } @compiler_2fbindgen_2etext(ptr %s1, ptr %s29, ptr %s29, ptr %t630, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d182, i32 0, i32 1) })
  store { i64, ptr } %t632, ptr %l287
  br label %bb151
bb151:
  %t633 = load { i64, ptr }, ptr %l287, !tbaa !27
  %t634 = extractvalue { i64, ptr } %t633, 0
  %t635 = extractvalue { i64, ptr } %t633, 1
  %t636 = mul i64 %t634, 1
  %t637 = call ptr @__olang_scope_alloc(ptr %s29, i64 %t636)
  call void @llvm.memcpy.p0.p0.i64(ptr %t637, ptr %t635, i64 %t636, i1 false)
  %t638 = insertvalue { i64, ptr } undef, i64 %t634, 0
  %t639 = insertvalue { i64, ptr } %t638, ptr %t637, 1
  %t641 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s29, ptr %s29, { i64, ptr } %t639, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d183, i32 0, i32 1) })
  store i1 %t641, ptr %l289
  br label %bb152
bb152:
  %t642 = load i1, ptr %l289, !tbaa !21
  br i1 %t642, label %bb153, label %bb154
bb153:
  store i1 true, ptr %l290, !tbaa !21
  br label %bb156
bb154:
  %t643 = load ptr, ptr %l6, !tbaa !29
  %t645 = call i1 @compiler_2fbindgen_2eflag(ptr %s1, ptr %s29, ptr %t643, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d184, i32 0, i32 1) })
  store i1 %t645, ptr %l292
  br label %bb155
bb155:
  %t646 = load i1, ptr %l292, !tbaa !21
  store i1 %t646, ptr %l290, !tbaa !21
  br label %bb156
bb156:
  %t647 = load i1, ptr %l290, !tbaa !21
  store i1 %t647, ptr %l42, !tbaa !21
  %t648 = load i64, ptr %l8, !tbaa !24
  %t650 = icmp eq i64 %t648, 1
  br i1 %t650, label %bb157, label %bb158
bb157:
  %t652 = load i1, ptr %l42, !tbaa !21
  store i1 %t652, ptr %l295, !tbaa !21
  br label %bb159
bb158:
  store i1 false, ptr %l295, !tbaa !21
  br label %bb159
bb159:
  %t654 = load i1, ptr %l295, !tbaa !21
  br i1 %t654, label %bb160, label %bb161
bb160:
  %t655 = load ptr, ptr %l0, !tbaa !29
  %t657 = getelementptr %"compiler/bindgen:gen", ptr %t655, i32 0, i32 24
  store ptr %t657, ptr %l298, !tbaa !29
  %t658 = ptrtoint ptr %v0 to i64
  store i64 %t658, ptr %l299, !tbaa !24
  %t659 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2e0
  br i1 %t659, label %bb162, label %bb163
bb161:
  br label %bb165
bb162:
  %t661 = call ptr @__olang_region_make(ptr %v0)
  %t662 = ptrtoint ptr %t661 to i64
  store i64 %t662, ptr %l299, !tbaa !24
  br label %bb163
bb163:
  %t663 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t665 = extractvalue { i64, ptr } %t663, 1
  %t666 = extractvalue { i64, ptr } %t663, 0
  %t667 = load i64, ptr %l299
  %t668 = inttoptr i64 %t667 to ptr
  %t669 = call ptr @__olang_scope_alloc(ptr %t668, i64 %t666)
  call void @olang_textcopy(ptr %t669, ptr %t665, i64 %t666)
  %t670 = insertvalue { i64, ptr } undef, i64 %t666, 0
  %t671 = insertvalue { i64, ptr } %t670, ptr %t669, 1
  %t673 = load i64, ptr %l299
  %t674 = inttoptr i64 %t673 to ptr
  %t675 = extractvalue { i64, ptr } %t671, 0
  %t676 = extractvalue { i64, ptr } %t671, 1
  %t677 = mul i64 %t675, 1
  %t678 = call ptr @__olang_scope_alloc(ptr %t674, i64 %t677)
  call void @llvm.memcpy.p0.p0.i64(ptr %t678, ptr %t676, i64 %t677, i1 false)
  %t679 = insertvalue { i64, ptr } undef, i64 %t675, 0
  %t680 = insertvalue { i64, ptr } %t679, ptr %t678, 1
  %t681 = load ptr, ptr %l298, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v0, ptr %v0, ptr %t681, { i64, ptr } %t680, i64 0)
  br label %bb164
bb164:
  br label %bb165
bb165:
  %t683 = load ptr, ptr %l6, !tbaa !29
  %t685 = call { i64, ptr } @compiler_2fbindgen_2etext(ptr %s1, ptr %s29, ptr %s29, ptr %t683, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d185, i32 0, i32 1) })
  store { i64, ptr } %t685, ptr %l305
  br label %bb166
bb166:
  %t686 = load { i64, ptr }, ptr %l305, !tbaa !27
  store { i64, ptr } %t686, ptr %l43, !tbaa !27
  %t687 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t689 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s29, ptr %s29, { i64, ptr } %t687, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d186, i32 0, i32 1) })
  store i1 %t689, ptr %l307
  br label %bb167
bb167:
  %t690 = load i1, ptr %l307, !tbaa !21
  br i1 %t690, label %bb168, label %bb169
bb168:
  store i1 true, ptr %l308, !tbaa !21
  br label %bb171
bb169:
  %t691 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t692 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t695 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s29, ptr %s2, { i64, ptr } %t691, { i64, ptr } %t692)
  store i1 %t695, ptr %l311
  br label %bb170
bb170:
  %t696 = load i1, ptr %l311, !tbaa !21
  store i1 %t696, ptr %l308, !tbaa !21
  br label %bb171
bb171:
  %t697 = load i1, ptr %l308, !tbaa !21
  br i1 %t697, label %bb172, label %bb173
bb172:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d187, i32 0, i32 1) }, ptr %l312, !tbaa !27
  br label %bb174
bb173:
  %t698 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t698, ptr %l312, !tbaa !27
  br label %bb174
bb174:
  %t700 = load { i64, ptr }, ptr %l312, !tbaa !27
  %t701 = extractvalue { i64, ptr } %t700, 1
  %t702 = extractvalue { i64, ptr } %t700, 0
  %t703 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t702)
  call void @olang_textcopy(ptr %t703, ptr %t701, i64 %t702)
  %t704 = insertvalue { i64, ptr } undef, i64 %t702, 0
  %t705 = insertvalue { i64, ptr } %t704, ptr %t703, 1
  %t707 = extractvalue { i64, ptr } %t705, 0
  %t708 = extractvalue { i64, ptr } %t705, 1
  %t709 = mul i64 %t707, 1
  %t710 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t709)
  call void @llvm.memcpy.p0.p0.i64(ptr %t710, ptr %t708, i64 %t709, i1 false)
  %t711 = insertvalue { i64, ptr } undef, i64 %t707, 0
  %t712 = insertvalue { i64, ptr } %t711, ptr %t710, 1
  store { i64, ptr } %t712, ptr %l44, !tbaa !27
  %t714 = load ptr, ptr %l0, !tbaa !29
  %t716 = getelementptr %"compiler/bindgen:gen", ptr %t714, i32 0, i32 8
  store ptr %t716, ptr %l317, !tbaa !29
  %t717 = ptrtoint ptr %v0 to i64
  store i64 %t717, ptr %l318, !tbaa !24
  %t718 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acFunc_2e0
  br i1 %t718, label %bb175, label %bb176
bb175:
  %t720 = call ptr @__olang_region_make(ptr %v0)
  %t721 = ptrtoint ptr %t720 to i64
  store i64 %t721, ptr %l318, !tbaa !24
  br label %bb176
bb176:
  %t722 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t724 = extractvalue { i64, ptr } %t722, 1
  %t725 = extractvalue { i64, ptr } %t722, 0
  %t726 = load i64, ptr %l318
  %t727 = inttoptr i64 %t726 to ptr
  %t728 = call ptr @__olang_scope_alloc(ptr %t727, i64 %t725)
  call void @olang_textcopy(ptr %t728, ptr %t724, i64 %t725)
  %t729 = insertvalue { i64, ptr } undef, i64 %t725, 0
  %t730 = insertvalue { i64, ptr } %t729, ptr %t728, 1
  %t732 = load i64, ptr %l318
  %t733 = inttoptr i64 %t732 to ptr
  %t734 = extractvalue { i64, ptr } %t730, 0
  %t735 = extractvalue { i64, ptr } %t730, 1
  %t736 = mul i64 %t734, 1
  %t737 = call ptr @__olang_scope_alloc(ptr %t733, i64 %t736)
  call void @llvm.memcpy.p0.p0.i64(ptr %t737, ptr %t735, i64 %t736, i1 false)
  %t738 = insertvalue { i64, ptr } undef, i64 %t734, 0
  %t739 = insertvalue { i64, ptr } %t738, ptr %t737, 1
  store { i64, ptr } %t739, ptr %l322, !tbaa !27
  %t740 = ptrtoint ptr %v0 to i64
  store i64 %t740, ptr %l323, !tbaa !24
  %t741 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acFunc_2e1
  br i1 %t741, label %bb177, label %bb178
bb177:
  %t743 = call ptr @__olang_region_make(ptr %v0)
  %t744 = ptrtoint ptr %t743 to i64
  store i64 %t744, ptr %l323, !tbaa !24
  br label %bb178
bb178:
  %t745 = load ptr, ptr %l6, !tbaa !29
  %t746 = load i64, ptr %l323
  %t747 = inttoptr i64 %t746 to ptr
  %t749 = call { i64, ptr } @compiler_2fbindgen_2etypeOf(ptr %s1, ptr %t747, ptr %t745)
  store { i64, ptr } %t749, ptr %l326
  br label %bb179
bb179:
  %t750 = load { i64, ptr }, ptr %l326, !tbaa !27
  %t751 = load i64, ptr %l323
  %t752 = inttoptr i64 %t751 to ptr
  %t753 = extractvalue { i64, ptr } %t750, 0
  %t754 = extractvalue { i64, ptr } %t750, 1
  %t755 = mul i64 %t753, 1
  %t756 = call ptr @__olang_scope_alloc(ptr %t752, i64 %t755)
  call void @llvm.memcpy.p0.p0.i64(ptr %t756, ptr %t754, i64 %t755, i1 false)
  %t757 = insertvalue { i64, ptr } undef, i64 %t753, 0
  %t758 = insertvalue { i64, ptr } %t757, ptr %t756, 1
  store { i64, ptr } %t758, ptr %l327, !tbaa !27
  %t759 = ptrtoint ptr %v0 to i64
  store i64 %t759, ptr %l328, !tbaa !24
  %t760 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acFunc_2e2
  br i1 %t760, label %bb180, label %bb181
bb180:
  %t762 = call ptr @__olang_region_make(ptr %v0)
  %t763 = ptrtoint ptr %t762 to i64
  store i64 %t763, ptr %l328, !tbaa !24
  br label %bb181
bb181:
  %t764 = load ptr, ptr %l36, !tbaa !29
  %t765 = load i64, ptr %l328
  %t766 = inttoptr i64 %t765 to ptr
  %t768 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v0, ptr %t766, ptr %t764)
  store { i64, ptr } %t768, ptr %l331
  br label %bb182
bb182:
  %t769 = ptrtoint ptr %v0 to i64
  store i64 %t769, ptr %l332, !tbaa !24
  %t770 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acFunc_2e3
  br i1 %t770, label %bb183, label %bb184
bb183:
  %t772 = call ptr @__olang_region_make(ptr %v0)
  %t773 = ptrtoint ptr %t772 to i64
  store i64 %t773, ptr %l332, !tbaa !24
  br label %bb184
bb184:
  %t774 = load ptr, ptr %l37, !tbaa !29
  %t775 = load i64, ptr %l332
  %t776 = inttoptr i64 %t775 to ptr
  %t778 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v0, ptr %t776, ptr %t774)
  store { i64, ptr } %t778, ptr %l335
  br label %bb185
bb185:
  %t779 = load i1, ptr %l42, !tbaa !21
  %t780 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t781 = load { i64, ptr }, ptr %l322, !tbaa !27
  %t782 = load { i64, ptr }, ptr %l327, !tbaa !27
  %t783 = load { i64, ptr }, ptr %l331, !tbaa !27
  %t784 = load { i64, ptr }, ptr %l335, !tbaa !27
  %t787 = call %"compiler/bindgen:cFunc" @compiler_2fbindgen_3acFunc_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t781, { i64, ptr } %t782, { i64, ptr } %t783, { i64, ptr } %t784, i1 %t779, { i64, ptr } %t780)
  store %"compiler/bindgen:cFunc" %t787, ptr %l338
  br label %bb186
bb186:
  %t788 = load ptr, ptr %l317, !tbaa !29
  %t789 = load %"compiler/bindgen:cFunc", ptr %l338
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acFunc_3e_2ePush_3ccompiler_2fbindgen_3acFunc_3e(ptr %v0, ptr %v0, ptr %t788, %"compiler/bindgen:cFunc" %t789)
  br label %bb187
bb187:
  call void @__olang_scope_close(ptr %s29)
  call void @__olang_scope_close(ptr %s2)
  br label %bb209
bb188:
  %t790 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t792 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t790, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d188, i32 0, i32 1) })
  store i1 %t792, ptr %l340
  br label %bb189
bb189:
  %t793 = load i1, ptr %l340, !tbaa !21
  br i1 %t793, label %bb190, label %bb191
bb190:
  %t794 = load ptr, ptr %l0, !tbaa !29
  %t795 = load i64, ptr %l8, !tbaa !24
  %t798 = call i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ewanted(ptr %v0, ptr %t794, i64 %t795)
  store i1 %t798, ptr %l344
  br label %bb192
bb191:
  store i1 false, ptr %l341, !tbaa !21
  br label %bb193
bb192:
  %t799 = load i1, ptr %l344, !tbaa !21
  store i1 %t799, ptr %l341, !tbaa !21
  br label %bb193
bb193:
  %t800 = load i1, ptr %l341, !tbaa !21
  br i1 %t800, label %bb194, label %bb195
bb194:
  %t801 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t803 = call i1 @compiler_2fbindgen_2eusable(ptr %s2, { i64, ptr } %t801)
  store i1 %t803, ptr %l347
  br label %bb196
bb195:
  store i1 false, ptr %l345, !tbaa !21
  br label %bb197
bb196:
  %t804 = load i1, ptr %l347, !tbaa !21
  store i1 %t804, ptr %l345, !tbaa !21
  br label %bb197
bb197:
  %t805 = load i1, ptr %l345, !tbaa !21
  br i1 %t805, label %bb198, label %bb199
bb198:
  %t806 = load ptr, ptr %l6, !tbaa !29
  %t808 = call { i64, ptr } @compiler_2fbindgen_2etext(ptr %s1, ptr %s2, ptr %s2, ptr %t806, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d189, i32 0, i32 1) })
  store { i64, ptr } %t808, ptr %l350
  br label %bb200
bb199:
  store i1 false, ptr %l348, !tbaa !21
  br label %bb202
bb200:
  %t809 = load { i64, ptr }, ptr %l350, !tbaa !27
  %t810 = extractvalue { i64, ptr } %t809, 0
  %t811 = extractvalue { i64, ptr } %t809, 1
  %t812 = mul i64 %t810, 1
  %t813 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t812)
  call void @llvm.memcpy.p0.p0.i64(ptr %t813, ptr %t811, i64 %t812, i1 false)
  %t814 = insertvalue { i64, ptr } undef, i64 %t810, 0
  %t815 = insertvalue { i64, ptr } %t814, ptr %t813, 1
  %t817 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t815, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d190, i32 0, i32 1) })
  store i1 %t817, ptr %l352
  br label %bb201
bb201:
  %t818 = load i1, ptr %l352, !tbaa !21
  %t819 = xor i1 %t818, true
  store i1 %t819, ptr %l348, !tbaa !21
  br label %bb202
bb202:
  %t821 = load i1, ptr %l348, !tbaa !21
  br i1 %t821, label %bb203, label %bb204
bb203:
  %t822 = load ptr, ptr %l0, !tbaa !29
  %t824 = getelementptr %"compiler/bindgen:gen", ptr %t822, i32 0, i32 18
  store ptr %t824, ptr %l355, !tbaa !29
  %t825 = ptrtoint ptr %v0 to i64
  store i64 %t825, ptr %l356, !tbaa !24
  %t826 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t826, label %bb205, label %bb206
bb204:
  br label %bb208
bb205:
  %t828 = call ptr @__olang_region_make(ptr %v0)
  %t829 = ptrtoint ptr %t828 to i64
  store i64 %t829, ptr %l356, !tbaa !24
  br label %bb206
bb206:
  %t830 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t832 = extractvalue { i64, ptr } %t830, 1
  %t833 = extractvalue { i64, ptr } %t830, 0
  %t834 = extractvalue { i64, ptr } { i64 56, ptr getelementptr inbounds (<{ i64, [56 x i8] }>, ptr @.d191, i32 0, i32 1) }, 1
  %t835 = extractvalue { i64, ptr } { i64 56, ptr getelementptr inbounds (<{ i64, [56 x i8] }>, ptr @.d191, i32 0, i32 1) }, 0
  %t836 = add i64 %t833, %t835
  %t837 = load i64, ptr %l356
  %t838 = inttoptr i64 %t837 to ptr
  %t839 = call ptr @__olang_scope_alloc(ptr %t838, i64 %t836)
  call void @olang_textcopy(ptr %t839, ptr %t832, i64 %t833)
  %t840 = getelementptr i8, ptr %t839, i64 %t833
  call void @olang_textcopy(ptr %t840, ptr %t834, i64 %t835)
  %t841 = insertvalue { i64, ptr } undef, i64 %t836, 0
  %t842 = insertvalue { i64, ptr } %t841, ptr %t839, 1
  %t844 = load i64, ptr %l356
  %t845 = inttoptr i64 %t844 to ptr
  %t846 = extractvalue { i64, ptr } %t842, 0
  %t847 = extractvalue { i64, ptr } %t842, 1
  %t848 = mul i64 %t846, 1
  %t849 = call ptr @__olang_scope_alloc(ptr %t845, i64 %t848)
  call void @llvm.memcpy.p0.p0.i64(ptr %t849, ptr %t847, i64 %t848, i1 false)
  %t850 = insertvalue { i64, ptr } undef, i64 %t846, 0
  %t851 = insertvalue { i64, ptr } %t850, ptr %t849, 1
  %t852 = load ptr, ptr %l355, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t852, { i64, ptr } %t851)
  br label %bb207
bb207:
  br label %bb208
bb208:
  call void @__olang_scope_close(ptr %s2)
  br label %bb209
bb209:
  %t854 = load i64, ptr %l4, !tbaa !24
  %t856 = add i64 %t854, 1
  store i64 %t856, ptr %l4, !tbaa !24
  br label %bb2
bb210:
  call void @__olang_scope_close(ptr %s1)
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca i64
  %l8 = alloca { i64, ptr }
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l2, !tbaa !29
  %t2 = ptrtoint ptr %v0 to i64
  store i64 %t2, ptr %l3, !tbaa !24
  %t3 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e25
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = call ptr @__olang_region_make(ptr %v0)
  %t6 = ptrtoint ptr %t5 to i64
  store i64 %t6, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t9 = extractvalue { i64, ptr } %a1, 1
  %t10 = extractvalue { i64, ptr } %a1, 0
  %t11 = load i64, ptr %l3
  %t12 = inttoptr i64 %t11 to ptr
  %t13 = call ptr @__olang_scope_alloc(ptr %t12, i64 %t10)
  call void @olang_textcopy(ptr %t13, ptr %t9, i64 %t10)
  %t14 = insertvalue { i64, ptr } undef, i64 %t10, 0
  %t15 = insertvalue { i64, ptr } %t14, ptr %t13, 1
  %t17 = load i64, ptr %l3
  %t18 = inttoptr i64 %t17 to ptr
  %t19 = extractvalue { i64, ptr } %t15, 0
  %t20 = extractvalue { i64, ptr } %t15, 1
  %t21 = mul i64 %t19, 1
  %t22 = call ptr @__olang_scope_alloc(ptr %t18, i64 %t21)
  call void @llvm.memcpy.p0.p0.i64(ptr %t22, ptr %t20, i64 %t21, i1 false)
  %t23 = insertvalue { i64, ptr } undef, i64 %t19, 0
  %t24 = insertvalue { i64, ptr } %t23, ptr %t22, 1
  %t25 = load ptr, ptr %l2, !tbaa !29
  %t26 = getelementptr %"compiler/bindgen:gen", ptr %t25, i32 0, i32 25
  %t27 = load { i64, ptr }, ptr %t26, !tbaa !27
  store { i64, ptr } %t27, ptr %l8, !tbaa !27
  %t29 = load ptr, ptr %l2, !tbaa !29
  %t30 = getelementptr %"compiler/bindgen:gen", ptr %t29, i32 0, i32 25
  store { i64, ptr } %t24, ptr %t30, !tbaa !27
  %t31 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e25
  br i1 %t31, label %bb3, label %bb4
bb3:
  %t33 = load { i64, ptr }, ptr %l8
  %t34 = extractvalue { i64, ptr } %t33, 1
  call void @__olang_region_release(ptr %t34)
  store { i64, ptr } zeroinitializer, ptr %l8
  br label %bb4
bb4:
  store i32 65536, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2etrack(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l16 = alloca ptr
  %l17 = alloca i1
  %l23 = alloca i64
  %l27 = alloca i64
  %l30 = alloca i64
  %l49 = alloca { i64, ptr }
  %l53 = alloca { i64, ptr }
  %l56 = alloca i1
  %l58 = alloca { i64, ptr }
  %l61 = alloca i1
  %l70 = alloca ptr
  %l71 = alloca i1
  %l83 = alloca { i64, ptr }
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t2 = load ptr, ptr %l16, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l16, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 7
  store i1 %t8, ptr %l17, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l17, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [2 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { ptr }, ptr %t12, i32 0, i32 0
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l3, !tbaa !29
  br label %bb5
bb4:
  br label %bb29
bb5:
  store i64 0, ptr %l4, !tbaa !24
  %t16 = load ptr, ptr %l3, !tbaa !29
  %t18 = call i64 @std_2fjson_2estd_2fjson_3aObject_2eLen(ptr %v1, ptr %t16)
  store i64 %t18, ptr %l23
  br label %bb6
bb6:
  %t19 = load i64, ptr %l23, !tbaa !24
  store i64 %t19, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t20 = load i64, ptr %l5, !tbaa !24
  %t21 = load i64, ptr %l4, !tbaa !24
  %t24 = icmp sgt i64 %t20, %t21
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t26 = load i64, ptr %l6, !tbaa !24
  %t28 = icmp sgt i64 %t26, 0
  br i1 %t28, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l27, !tbaa !24
  br label %bb12
bb9:
  %t30 = load i64, ptr %l5, !tbaa !24
  %t31 = load i64, ptr %l4, !tbaa !24
  %t34 = sub i64 %t30, %t31
  %t35 = load i64, ptr %l6, !tbaa !24
  %t38 = add i64 %t34, %t35
  %t40 = sub i64 %t38, 1
  %t41 = load i64, ptr %l6, !tbaa !24
  %t44 = sdiv i64 %t40, %t41
  store i64 %t44, ptr %l30, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l30, !tbaa !24
  br label %bb11
bb11:
  %t46 = load i64, ptr %l30, !tbaa !24
  store i64 %t46, ptr %l27, !tbaa !24
  br label %bb12
bb12:
  %t47 = load i64, ptr %l27, !tbaa !24
  store i64 %t47, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb13
bb13:
  store %olang.scope zeroinitializer, ptr %s3
  %t48 = load i64, ptr %l8, !tbaa !24
  %t49 = load i64, ptr %l7, !tbaa !24
  %t52 = icmp slt i64 %t48, %t49
  %t54 = xor i1 %t52, true
  br i1 %t54, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s3)
  br label %bb28
bb15:
  br label %bb16
bb16:
  %t56 = load i64, ptr %l4, !tbaa !24
  %t57 = load i64, ptr %l8, !tbaa !24
  %t58 = load i64, ptr %l6, !tbaa !24
  %t61 = mul i64 %t57, %t58
  %t64 = add i64 %t56, %t61
  store i64 %t64, ptr %l9, !tbaa !24
  %t66 = load ptr, ptr %l3, !tbaa !29
  %t68 = getelementptr %"std/json:Object", ptr %t66, i32 0, i32 1
  %t69 = load { i64, ptr }, ptr %t68, !tbaa !27
  store { i64, ptr } %t69, ptr %l49, !tbaa !27
  %t70 = load i64, ptr %l9, !tbaa !24
  %t72 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = getelementptr ptr, ptr %t73, i64 %t70
  %t75 = load ptr, ptr %t74, !tbaa !39
  store ptr %t75, ptr %l10, !tbaa !29
  %t77 = load ptr, ptr %l3, !tbaa !29
  %t79 = getelementptr %"std/json:Object", ptr %t77, i32 0, i32 0
  %t80 = load { i64, ptr }, ptr %t79, !tbaa !27
  store { i64, ptr } %t80, ptr %l53, !tbaa !27
  %t81 = load i64, ptr %l9, !tbaa !24
  %t83 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t84 = load ptr, ptr %t83, !tbaa !27
  %t85 = getelementptr { i64, ptr }, ptr %t84, i64 %t81
  %t86 = load { i64, ptr }, ptr %t85, !tbaa !37
  %t88 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s3, { i64, ptr } %t86, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d192, i32 0, i32 1) })
  store i1 %t88, ptr %l56
  br label %bb17
bb17:
  %t89 = load i1, ptr %l56, !tbaa !21
  br i1 %t89, label %bb18, label %bb19
bb18:
  call void @__olang_scope_close(ptr %s3)
  br label %bb27
bb19:
  br label %bb20
bb20:
  %t90 = load ptr, ptr %l3, !tbaa !29
  %t92 = getelementptr %"std/json:Object", ptr %t90, i32 0, i32 0
  %t93 = load { i64, ptr }, ptr %t92, !tbaa !27
  store { i64, ptr } %t93, ptr %l58, !tbaa !27
  %t94 = load i64, ptr %l9, !tbaa !24
  %t96 = getelementptr { i64, ptr }, ptr %l58, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !27
  %t98 = getelementptr { i64, ptr }, ptr %t97, i64 %t94
  %t99 = load { i64, ptr }, ptr %t98, !tbaa !37
  %t101 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s3, { i64, ptr } %t99, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d193, i32 0, i32 1) })
  store i1 %t101, ptr %l61
  br label %bb21
bb21:
  %t102 = load i1, ptr %l61, !tbaa !21
  br i1 %t102, label %bb22, label %bb23
bb22:
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t104 = load ptr, ptr %l10, !tbaa !29
  %t105 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2etrackFile(ptr %v0, ptr %v1, ptr %v2, ptr %t103, ptr %t104, { i64, ptr } %t105)
  br label %bb24
bb23:
  br label %bb25
bb24:
  call void @__olang_scope_close(ptr %s3)
  br label %bb27
bb25:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t110 = load ptr, ptr %l10, !tbaa !29
  %t111 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2etrack(ptr %v0, ptr %v1, ptr %v2, ptr %t109, ptr %t110, { i64, ptr } %t111)
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s3)
  br label %bb27
bb27:
  %t115 = load i64, ptr %l8, !tbaa !24
  %t117 = add i64 %t115, 1
  store i64 %t117, ptr %l8, !tbaa !24
  br label %bb13
bb28:
  br label %bb47
bb29:
  %t119 = load ptr, ptr %l1, !tbaa !29
  store ptr %t119, ptr %l70, !tbaa !29
  store i1 false, ptr %l71, !tbaa !21
  %t120 = load ptr, ptr %l70, !tbaa !29
  %t121 = icmp ne ptr %t120, null
  br i1 %t121, label %bb30, label %bb31
bb30:
  %t123 = load ptr, ptr %l70, !tbaa !29
  %t124 = load i64, ptr %t123, !range !{i64 0, i64 8}
  %t126 = icmp eq i64 %t124, 6
  store i1 %t126, ptr %l71, !tbaa !21
  br label %bb31
bb31:
  %t127 = load i1, ptr %l71, !tbaa !21
  br i1 %t127, label %bb32, label %bb33
bb32:
  %t128 = load ptr, ptr %l1, !tbaa !29
  %t130 = getelementptr { i64, [2 x i64] }, ptr %t128, i32 0, i32 1
  %t131 = getelementptr { { i64, ptr } }, ptr %t130, i32 0, i32 0
  %t132 = load { i64, ptr }, ptr %t131
  store { i64, ptr } %t132, ptr %l11, !tbaa !27
  br label %bb34
bb33:
  br label %bb42
bb34:
  %t134 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t134, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t136 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t138 = extractvalue { i64, ptr } %t136, 0
  store i64 %t138, ptr %l14, !tbaa !24
  br label %bb35
bb35:
  %t140 = load i64, ptr %l13, !tbaa !24
  %t141 = load i64, ptr %l14, !tbaa !24
  %t144 = icmp slt i64 %t140, %t141
  %t146 = xor i1 %t144, true
  br i1 %t146, label %bb36, label %bb37
bb36:
  br label %bb41
bb37:
  br label %bb38
bb38:
  %t148 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t148, ptr %l83, !tbaa !27
  %t149 = load i64, ptr %l13, !tbaa !24
  %t151 = getelementptr { i64, ptr }, ptr %l83, i32 0, i32 1
  %t152 = load ptr, ptr %t151, !tbaa !27
  %t153 = getelementptr ptr, ptr %t152, i64 %t149
  %t154 = load ptr, ptr %t153, !tbaa !39
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t158 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2etrack(ptr %v0, ptr %v1, ptr %v2, ptr %t156, ptr %t154, { i64, ptr } %t158)
  br label %bb39
bb39:
  br label %bb40
bb40:
  %t162 = load i64, ptr %l13, !tbaa !24
  %t164 = add i64 %t162, 1
  store i64 %t164, ptr %l13, !tbaa !24
  br label %bb35
bb41:
  br label %bb47
bb42:
  br i1 true, label %bb43, label %bb44
bb43:
  br label %bb45
bb44:
  br label %bb46
bb45:
  br label %bb47
bb46:
  call void @__olang_check_failed(ptr @olang_loc_c54e19abcb0a74ad_a74456fc2d527de1)
  unreachable
bb47:
  br label %ret
ret:
  ret void
}

define dso_local { i32, { i64, ptr } } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2evalueType(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca %"compiler/bindgen:ctype"
  %l4 = alloca i32
  %l5 = alloca i64
  %l6 = alloca %"compiler/bindgen:ctype"
  %l7 = alloca i64
  %l11 = alloca %"compiler/bindgen:ctype"
  %l16 = alloca i1
  %l17 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l22 = alloca i64
  %l23 = alloca { i64, ptr }
  %l28 = alloca i64
  %l31 = alloca i1
  %l34 = alloca i32
  %l39 = alloca %"compiler/bindgen:record"
  %l41 = alloca %"compiler/bindgen:record"
  %l43 = alloca i1
  %l46 = alloca i1
  %l48 = alloca i32
  %l52 = alloca { i64, ptr }
  %l58 = alloca %"compiler/bindgen:ctype"
  %l61 = alloca i1
  %l62 = alloca { i64, ptr }
  %l63 = alloca { i64, ptr }
  %l64 = alloca i64
  %l65 = alloca { i64, ptr }
  %l70 = alloca i64
  %l73 = alloca i1
  %l77 = alloca { i64, ptr }
  %l81 = alloca { i64, ptr }
  %l84 = alloca { i64, ptr }
  %l86 = alloca ptr
  %l89 = alloca { i64, ptr }
  %l92 = alloca i32
  %l94 = alloca { i64, ptr }
  %l95 = alloca { i64, ptr }
  %l96 = alloca i64
  %l97 = alloca { i64, ptr }
  %l102 = alloca i32
  %l105 = alloca i32
  %l107 = alloca { i64, ptr }
  %l108 = alloca { i64, ptr }
  %l109 = alloca i64
  %l110 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  %t89 = alloca %"compiler/bindgen:record", align 8
  %t92 = alloca %"compiler/bindgen:record", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/bindgen:gen", ptr %t1, i32 0, i32 16
  %t7 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store %"compiler/bindgen:ctype" %t7, ptr %l11
  br label %bb1
bb1:
  %t8 = load %"compiler/bindgen:ctype", ptr %l11
  store %"compiler/bindgen:ctype" %t8, ptr %l3
  %t9 = getelementptr %"compiler/bindgen:ctype", ptr %l3, i32 0, i32 0
  %t10 = load i32, ptr %t9, !range !{i32 0, i32 7}
  store i32 %t10, ptr %l4
  %t12 = load i32, ptr %l4, !range !{i32 0, i32 7}
  %t14 = trunc i64 1 to i32
  %t15 = icmp eq i32 %t12, %t14
  br i1 %t15, label %bb2, label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb9
bb4:
  store %olang.scope zeroinitializer, ptr %s1
  %t17 = getelementptr %"compiler/bindgen:ctype", ptr %l3, i32 0, i32 1
  %t18 = load { i64, ptr }, ptr %t17, !tbaa !27
  %t20 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s1, { i64, ptr } %t18, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d194, i32 0, i32 1) })
  store i1 %t20, ptr %l16
  br label %bb5
bb5:
  %t21 = load i1, ptr %l16, !tbaa !21
  br i1 %t21, label %bb6, label %bb7
bb6:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d195, i32 0, i32 1) }, ptr %l18, !tbaa !27
  %t22 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t22, ptr %l17, !tbaa !27
  br label %bb8
bb7:
  %t24 = getelementptr %"compiler/bindgen:ctype", ptr %l3, i32 0, i32 1
  %t25 = load { i64, ptr }, ptr %t24, !tbaa !27
  %t27 = extractvalue { i64, ptr } %t25, 1
  %t28 = extractvalue { i64, ptr } %t25, 0
  %t29 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t28)
  call void @olang_textcopy(ptr %t29, ptr %t27, i64 %t28)
  %t30 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  store { i64, ptr } %t31, ptr %l17, !tbaa !27
  br label %bb8
bb8:
  %t33 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t33, 0
  store i64 %t34, ptr %l22, !tbaa !24
  %t35 = load i64, ptr %l22, !tbaa !24
  %t36 = mul i64 %t35, 1
  %t37 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t36)
  %t38 = insertvalue { i64, ptr } undef, i64 %t35, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr %t37, 1
  store { i64, ptr } %t39, ptr %l23, !tbaa !27
  %t40 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !27
  %t42 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !27
  %t44 = load i64, ptr %l22, !tbaa !24
  %t45 = mul i64 %t44, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t41, ptr %t43, i64 %t45, i1 false)
  %t46 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t46, ptr %l17, !tbaa !27
  call void @__olang_scope_close(ptr %s1)
  %t47 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t48 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t47, 1
  store { i32, { i64, ptr } } %t48, ptr %rv
  br label %ret
bb9:
  %t49 = load i32, ptr %l4, !range !{i32 0, i32 7}
  %t51 = trunc i64 2 to i32
  %t52 = icmp eq i32 %t49, %t51
  br i1 %t52, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb34
bb12:
  store %olang.scope zeroinitializer, ptr %s3
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/bindgen:ctype", ptr %l3, i32 0, i32 1
  %t56 = load { i64, ptr }, ptr %t55, !tbaa !27
  %t59 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2erecOf(ptr %v0, ptr %v0, ptr %t54, { i64, ptr } %t56)
  store i64 %t59, ptr %l28
  br label %bb13
bb13:
  %t60 = load i64, ptr %l28, !tbaa !24
  store i64 %t60, ptr %l5, !tbaa !24
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = load i64, ptr %l5, !tbaa !24
  %t65 = call i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eplain(ptr %v0, ptr %t61, i64 %t62)
  store i1 %t65, ptr %l31
  br label %bb14
bb14:
  %t66 = load i1, ptr %l31, !tbaa !21
  %t67 = xor i1 %t66, true
  br i1 %t67, label %bb15, label %bb16
bb15:
  store %olang.scope zeroinitializer, ptr %s4
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %s4, ptr %t69, { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d196, i32 0, i32 1) })
  store i32 %t71, ptr %l34
  %t72 = icmp ne i32 %t71, 0
  br i1 %t72, label %bb18, label %ok.73, !prof !99
ok.73:
  br label %bb17
bb16:
  br label %bb20
bb17:
  br label %bb19
bb18:
  %t74 = load i32, ptr %l34, !tbaa !23
  %t75 = lshr i32 %t74, 16
  %t76 = and i32 %t74, 65535
  %t77 = icmp eq i32 %t75, 1
  %t78 = select i1 %t77, i32 1, i32 0
  %t79 = icmp eq i32 %t74, 0
  %t80 = shl i32 %t78, 16
  %t81 = or i32 %t80, %t76
  %t82 = select i1 %t79, i32 0, i32 %t81
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s3)
  %t84 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t82, 0
  store { i32, { i64, ptr } } %t84, ptr %rv
  br label %ret
bb19:
  call void @__olang_scope_close(ptr %s4)
  br label %bb20
bb20:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/bindgen:gen", ptr %t85, i32 0, i32 5
  %t88 = load i64, ptr %l5, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eAt_3ccompiler_2fbindgen_3arecord_3e(ptr %t89, ptr %v0, ptr %s3, ptr %t87, i64 %t88)
  call void @llvm.memmove.p0.p0.i64(ptr %l39, ptr %t89, i64 216, i1 false)
  br label %bb21
bb21:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbindgen_3arecord(ptr %t92, ptr %s3, ptr %l39)
  call void @llvm.memmove.p0.p0.i64(ptr %l41, ptr %t92, i64 216, i1 false)
  br label %bb22
bb22:
  %t94 = getelementptr %"compiler/bindgen:record", ptr %l41, i32 0, i32 15
  %t95 = load i1, ptr %t94, !tbaa !21
  br i1 %t95, label %bb23, label %bb24
bb23:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t98 = load i64, ptr %l5, !tbaa !24
  %t101 = call i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2epackedFloat(ptr %v0, ptr %t97, i64 %t98)
  store i1 %t101, ptr %l46
  br label %bb25
bb24:
  store i1 false, ptr %l43, !tbaa !21
  br label %bb26
bb25:
  %t102 = load i1, ptr %l46, !tbaa !21
  store i1 %t102, ptr %l43, !tbaa !21
  br label %bb26
bb26:
  %t103 = load i1, ptr %l43, !tbaa !21
  br i1 %t103, label %bb27, label %bb28
bb27:
  store %olang.scope zeroinitializer, ptr %s5
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %s5, ptr %t104, { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d197, i32 0, i32 1) })
  store i32 %t106, ptr %l48
  %t107 = icmp ne i32 %t106, 0
  br i1 %t107, label %bb30, label %ok.108, !prof !99
ok.108:
  br label %bb29
bb28:
  br label %bb32
bb29:
  br label %bb31
bb30:
  %t109 = load i32, ptr %l48, !tbaa !23
  %t110 = lshr i32 %t109, 16
  %t111 = and i32 %t109, 65535
  %t112 = icmp eq i32 %t110, 1
  %t113 = select i1 %t112, i32 1, i32 0
  %t114 = icmp eq i32 %t109, 0
  %t115 = shl i32 %t113, 16
  %t116 = or i32 %t115, %t111
  %t117 = select i1 %t114, i32 0, i32 %t116
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s3)
  %t119 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t117, 0
  store { i32, { i64, ptr } } %t119, ptr %rv
  br label %ret
bb31:
  call void @__olang_scope_close(ptr %s5)
  br label %bb32
bb32:
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t121 = load i64, ptr %l5, !tbaa !24
  %t124 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ename(ptr %v0, ptr %v1, ptr %t120, i64 %t121)
  store { i64, ptr } %t124, ptr %l52
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s3)
  %t125 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t126 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t125, 1
  store { i32, { i64, ptr } } %t126, ptr %rv
  br label %ret
bb34:
  %t127 = load i32, ptr %l4, !range !{i32 0, i32 7}
  %t129 = trunc i64 3 to i32
  %t130 = icmp eq i32 %t127, %t129
  br i1 %t130, label %bb35, label %bb36
bb35:
  br label %bb37
bb36:
  br label %bb63
bb37:
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t134 = getelementptr %"compiler/bindgen:gen", ptr %t132, i32 0, i32 16
  %t135 = getelementptr %"compiler/bindgen:ctype", ptr %l3, i32 0, i32 2
  %t136 = load i64, ptr %t135, !tbaa !24
  %t139 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %v0, ptr %t134, i64 %t136)
  store %"compiler/bindgen:ctype" %t139, ptr %l58
  br label %bb38
bb38:
  %t140 = load %"compiler/bindgen:ctype", ptr %l58
  store %"compiler/bindgen:ctype" %t140, ptr %l6
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t142 = getelementptr %"compiler/bindgen:ctype", ptr %l3, i32 0, i32 2
  %t143 = load i64, ptr %t142, !tbaa !24
  %t146 = call i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eisByte(ptr %v0, ptr %t141, i64 %t143)
  store i1 %t146, ptr %l61
  br label %bb39
bb39:
  %t147 = load i1, ptr %l61, !tbaa !21
  br i1 %t147, label %bb40, label %bb41
bb40:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d198, i32 0, i32 1) }, ptr %l62, !tbaa !27
  %t148 = load { i64, ptr }, ptr %l62, !tbaa !27
  store { i64, ptr } %t148, ptr %l63, !tbaa !27
  %t149 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t150 = extractvalue { i64, ptr } %t149, 0
  store i64 %t150, ptr %l64, !tbaa !24
  %t151 = load i64, ptr %l64, !tbaa !24
  %t152 = mul i64 %t151, 1
  %t153 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t152)
  %t154 = insertvalue { i64, ptr } undef, i64 %t151, 0
  %t155 = insertvalue { i64, ptr } %t154, ptr %t153, 1
  store { i64, ptr } %t155, ptr %l65, !tbaa !27
  %t156 = getelementptr { i64, ptr }, ptr %l65, i32 0, i32 1
  %t157 = load ptr, ptr %t156, !tbaa !27
  %t158 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t159 = load ptr, ptr %t158, !tbaa !27
  %t160 = load i64, ptr %l64, !tbaa !24
  %t161 = mul i64 %t160, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t157, ptr %t159, i64 %t161, i1 false)
  %t162 = load { i64, ptr }, ptr %l65, !tbaa !27
  store { i64, ptr } %t162, ptr %l63, !tbaa !27
  %t163 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t164 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t163, 1
  store { i32, { i64, ptr } } %t164, ptr %rv
  br label %ret
bb41:
  br label %bb42
bb42:
  %t165 = getelementptr %"compiler/bindgen:ctype", ptr %l6, i32 0, i32 0
  %t166 = load i32, ptr %t165, !range !{i32 0, i32 7}
  %t168 = trunc i64 2 to i32
  %t169 = icmp eq i32 %t166, %t168
  br i1 %t169, label %bb43, label %bb44
bb43:
  store %olang.scope zeroinitializer, ptr %s8
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t172 = getelementptr %"compiler/bindgen:ctype", ptr %l6, i32 0, i32 1
  %t173 = load { i64, ptr }, ptr %t172, !tbaa !27
  %t176 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2erecOf(ptr %v0, ptr %v0, ptr %t171, { i64, ptr } %t173)
  store i64 %t176, ptr %l70
  br label %bb45
bb44:
  br label %bb62
bb45:
  %t177 = load i64, ptr %l70, !tbaa !24
  store i64 %t177, ptr %l7, !tbaa !24
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t179 = load i64, ptr %l7, !tbaa !24
  %t182 = call i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eholdable(ptr %v0, ptr %t178, i64 %t179)
  store i1 %t182, ptr %l73
  br label %bb46
bb46:
  %t183 = load i1, ptr %l73, !tbaa !21
  %t184 = xor i1 %t183, true
  br i1 %t184, label %bb47, label %bb48
bb47:
  store %olang.scope zeroinitializer, ptr %s9
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t187 = load i64, ptr %l7, !tbaa !24
  %t190 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ename(ptr %v0, ptr %s9, ptr %t186, i64 %t187)
  store { i64, ptr } %t190, ptr %l77
  br label %bb49
bb48:
  br label %bb50
bb49:
  %t191 = load { i64, ptr }, ptr %l77, !tbaa !27
  %t192 = extractvalue { i64, ptr } %t191, 1
  %t193 = extractvalue { i64, ptr } %t191, 0
  %t194 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d199, i32 0, i32 1) }, 1
  %t195 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d199, i32 0, i32 1) }, 0
  %t196 = add i64 %t193, %t195
  %t197 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t196)
  call void @olang_textcopy(ptr %t197, ptr %t192, i64 %t193)
  %t198 = getelementptr i8, ptr %t197, i64 %t193
  call void @olang_textcopy(ptr %t198, ptr %t194, i64 %t195)
  %t199 = insertvalue { i64, ptr } undef, i64 %t196, 0
  %t200 = insertvalue { i64, ptr } %t199, ptr %t197, 1
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s8)
  %t202 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t200, 1
  store { i32, { i64, ptr } } %t202, ptr %rv
  br label %ret
bb50:
  br i1 %a2, label %bb51, label %bb52
bb51:
  store %olang.scope zeroinitializer, ptr %s11
  %t205 = getelementptr %"compiler/bindgen:ctype", ptr %l3, i32 0, i32 3
  %t206 = load i1, ptr %t205, !tbaa !21
  br i1 %t206, label %bb53, label %bb54
bb52:
  br label %bb57
bb53:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d200, i32 0, i32 1) }, ptr %l81, !tbaa !27
  br label %bb55
bb54:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d201, i32 0, i32 1) }, ptr %l81, !tbaa !27
  br label %bb55
bb55:
  %t208 = load ptr, ptr %l0, !tbaa !29
  %t209 = load i64, ptr %l7, !tbaa !24
  %t212 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ename(ptr %v0, ptr %s11, ptr %t208, i64 %t209)
  store { i64, ptr } %t212, ptr %l84
  br label %bb56
bb56:
  %t213 = load { i64, ptr }, ptr %l81, !tbaa !27
  %t214 = extractvalue { i64, ptr } %t213, 1
  %t215 = extractvalue { i64, ptr } %t213, 0
  %t216 = load { i64, ptr }, ptr %l84, !tbaa !27
  %t217 = extractvalue { i64, ptr } %t216, 1
  %t218 = extractvalue { i64, ptr } %t216, 0
  %t219 = add i64 %t215, %t218
  %t220 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d202, i32 0, i32 1) }, 1
  %t221 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d202, i32 0, i32 1) }, 0
  %t222 = add i64 %t219, %t221
  %t223 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t222)
  call void @olang_textcopy(ptr %t223, ptr %t214, i64 %t215)
  %t224 = getelementptr i8, ptr %t223, i64 %t215
  call void @olang_textcopy(ptr %t224, ptr %t217, i64 %t218)
  %t225 = getelementptr i8, ptr %t224, i64 %t218
  call void @olang_textcopy(ptr %t225, ptr %t220, i64 %t221)
  %t226 = insertvalue { i64, ptr } undef, i64 %t222, 0
  %t227 = insertvalue { i64, ptr } %t226, ptr %t223, 1
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s8)
  %t229 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t227, 1
  store { i32, { i64, ptr } } %t229, ptr %rv
  br label %ret
bb57:
  %t230 = load ptr, ptr %l0, !tbaa !29
  store ptr %t230, ptr %l86, !tbaa !29
  %t231 = load ptr, ptr %l0, !tbaa !29
  %t232 = load i64, ptr %l7, !tbaa !24
  %t235 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ename(ptr %v0, ptr %s8, ptr %t231, i64 %t232)
  store { i64, ptr } %t235, ptr %l89
  br label %bb58
bb58:
  %t236 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d203, i32 0, i32 1) }, 1
  %t237 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d203, i32 0, i32 1) }, 0
  %t238 = load { i64, ptr }, ptr %l89, !tbaa !27
  %t239 = extractvalue { i64, ptr } %t238, 1
  %t240 = extractvalue { i64, ptr } %t238, 0
  %t241 = add i64 %t237, %t240
  %t242 = extractvalue { i64, ptr } { i64 67, ptr getelementptr inbounds (<{ i64, [67 x i8] }>, ptr @.d204, i32 0, i32 1) }, 1
  %t243 = extractvalue { i64, ptr } { i64 67, ptr getelementptr inbounds (<{ i64, [67 x i8] }>, ptr @.d204, i32 0, i32 1) }, 0
  %t244 = add i64 %t241, %t243
  %t245 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t244)
  call void @olang_textcopy(ptr %t245, ptr %t236, i64 %t237)
  %t246 = getelementptr i8, ptr %t245, i64 %t237
  call void @olang_textcopy(ptr %t246, ptr %t239, i64 %t240)
  %t247 = getelementptr i8, ptr %t246, i64 %t240
  call void @olang_textcopy(ptr %t247, ptr %t242, i64 %t243)
  %t248 = insertvalue { i64, ptr } undef, i64 %t244, 0
  %t249 = insertvalue { i64, ptr } %t248, ptr %t245, 1
  %t251 = extractvalue { i64, ptr } %t249, 0
  %t252 = extractvalue { i64, ptr } %t249, 1
  %t253 = mul i64 %t251, 1
  %t254 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t253)
  call void @llvm.memcpy.p0.p0.i64(ptr %t254, ptr %t252, i64 %t253, i1 false)
  %t255 = insertvalue { i64, ptr } undef, i64 %t251, 0
  %t256 = insertvalue { i64, ptr } %t255, ptr %t254, 1
  %t257 = load ptr, ptr %l86, !tbaa !29
  %t259 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %s8, ptr %t257, { i64, ptr } %t256)
  store i32 %t259, ptr %l92
  %t260 = icmp ne i32 %t259, 0
  br i1 %t260, label %bb60, label %ok.261, !prof !99
ok.261:
  br label %bb59
bb59:
  br label %bb61
bb60:
  %t262 = load i32, ptr %l92, !tbaa !23
  %t263 = lshr i32 %t262, 16
  %t264 = and i32 %t262, 65535
  %t265 = icmp eq i32 %t263, 1
  %t266 = select i1 %t265, i32 1, i32 0
  %t267 = icmp eq i32 %t262, 0
  %t268 = shl i32 %t266, 16
  %t269 = or i32 %t268, %t264
  %t270 = select i1 %t267, i32 0, i32 %t269
  call void @__olang_scope_close(ptr %s8)
  %t272 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t270, 0
  store { i32, { i64, ptr } } %t272, ptr %rv
  br label %ret
bb61:
  call void @__olang_scope_close(ptr %s8)
  br label %bb62
bb62:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d205, i32 0, i32 1) }, ptr %l94, !tbaa !27
  %t273 = load { i64, ptr }, ptr %l94, !tbaa !27
  store { i64, ptr } %t273, ptr %l95, !tbaa !27
  %t274 = load { i64, ptr }, ptr %l95, !tbaa !27
  %t275 = extractvalue { i64, ptr } %t274, 0
  store i64 %t275, ptr %l96, !tbaa !24
  %t276 = load i64, ptr %l96, !tbaa !24
  %t277 = mul i64 %t276, 1
  %t278 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t277)
  %t279 = insertvalue { i64, ptr } undef, i64 %t276, 0
  %t280 = insertvalue { i64, ptr } %t279, ptr %t278, 1
  store { i64, ptr } %t280, ptr %l97, !tbaa !27
  %t281 = getelementptr { i64, ptr }, ptr %l97, i32 0, i32 1
  %t282 = load ptr, ptr %t281, !tbaa !27
  %t283 = getelementptr { i64, ptr }, ptr %l95, i32 0, i32 1
  %t284 = load ptr, ptr %t283, !tbaa !27
  %t285 = load i64, ptr %l96, !tbaa !24
  %t286 = mul i64 %t285, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t282, ptr %t284, i64 %t286, i1 false)
  %t287 = load { i64, ptr }, ptr %l97, !tbaa !27
  store { i64, ptr } %t287, ptr %l95, !tbaa !27
  %t288 = load { i64, ptr }, ptr %l95, !tbaa !27
  %t289 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t288, 1
  store { i32, { i64, ptr } } %t289, ptr %rv
  br label %ret
bb63:
  %t290 = load i32, ptr %l4, !range !{i32 0, i32 7}
  %t292 = trunc i64 6 to i32
  %t293 = icmp eq i32 %t290, %t292
  br i1 %t293, label %bb64, label %bb65
bb64:
  br label %bb66
bb65:
  br label %bb70
bb66:
  %t295 = load ptr, ptr %l0, !tbaa !29
  %t296 = getelementptr %"compiler/bindgen:ctype", ptr %l3, i32 0, i32 1
  %t297 = load { i64, ptr }, ptr %t296, !tbaa !27
  %t300 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %v0, ptr %t295, { i64, ptr } %t297)
  store i32 %t300, ptr %l102
  %t301 = icmp ne i32 %t300, 0
  br i1 %t301, label %bb68, label %ok.302, !prof !99
ok.302:
  br label %bb67
bb67:
  br label %bb69
bb68:
  %t303 = load i32, ptr %l102, !tbaa !23
  %t304 = lshr i32 %t303, 16
  %t305 = and i32 %t303, 65535
  %t306 = icmp eq i32 %t304, 1
  %t307 = select i1 %t306, i32 1, i32 0
  %t308 = icmp eq i32 %t303, 0
  %t309 = shl i32 %t307, 16
  %t310 = or i32 %t309, %t305
  %t311 = select i1 %t308, i32 0, i32 %t310
  %t313 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t311, 0
  store { i32, { i64, ptr } } %t313, ptr %rv
  br label %ret
bb69:
  br label %bb78
bb70:
  br i1 true, label %bb71, label %bb72
bb71:
  br label %bb73
bb72:
  br label %bb77
bb73:
  store %olang.scope zeroinitializer, ptr %s15
  %t314 = load ptr, ptr %l0, !tbaa !29
  %t316 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %s15, ptr %t314, { i64, ptr } { i64 45, ptr getelementptr inbounds (<{ i64, [45 x i8] }>, ptr @.d206, i32 0, i32 1) })
  store i32 %t316, ptr %l105
  %t317 = icmp ne i32 %t316, 0
  br i1 %t317, label %bb75, label %ok.318, !prof !99
ok.318:
  br label %bb74
bb74:
  br label %bb76
bb75:
  %t319 = load i32, ptr %l105, !tbaa !23
  %t320 = lshr i32 %t319, 16
  %t321 = and i32 %t319, 65535
  %t322 = icmp eq i32 %t320, 1
  %t323 = select i1 %t322, i32 1, i32 0
  %t324 = icmp eq i32 %t319, 0
  %t325 = shl i32 %t323, 16
  %t326 = or i32 %t325, %t321
  %t327 = select i1 %t324, i32 0, i32 %t326
  call void @__olang_scope_close(ptr %s15)
  %t329 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t327, 0
  store { i32, { i64, ptr } } %t329, ptr %rv
  br label %ret
bb76:
  call void @__olang_scope_close(ptr %s15)
  br label %bb78
bb77:
  call void @__olang_check_failed(ptr @olang_loc_383dad6bbc51ebc3_b2d1cf432887049f)
  unreachable
bb78:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d207, i32 0, i32 1) }, ptr %l107, !tbaa !27
  %t330 = load { i64, ptr }, ptr %l107, !tbaa !27
  store { i64, ptr } %t330, ptr %l108, !tbaa !27
  %t331 = load { i64, ptr }, ptr %l108, !tbaa !27
  %t332 = extractvalue { i64, ptr } %t331, 0
  store i64 %t332, ptr %l109, !tbaa !24
  %t333 = load i64, ptr %l109, !tbaa !24
  %t334 = mul i64 %t333, 1
  %t335 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t334)
  %t336 = insertvalue { i64, ptr } undef, i64 %t333, 0
  %t337 = insertvalue { i64, ptr } %t336, ptr %t335, 1
  store { i64, ptr } %t337, ptr %l110, !tbaa !27
  %t338 = getelementptr { i64, ptr }, ptr %l110, i32 0, i32 1
  %t339 = load ptr, ptr %t338, !tbaa !27
  %t340 = getelementptr { i64, ptr }, ptr %l108, i32 0, i32 1
  %t341 = load ptr, ptr %t340, !tbaa !27
  %t342 = load i64, ptr %l109, !tbaa !24
  %t343 = mul i64 %t342, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t339, ptr %t341, i64 %t343, i1 false)
  %t344 = load { i64, ptr }, ptr %l110, !tbaa !27
  store { i64, ptr } %t344, ptr %l108, !tbaa !27
  %t345 = load { i64, ptr }, ptr %l108, !tbaa !27
  %t346 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t345, 1
  store { i32, { i64, ptr } } %t346, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ewantRecord(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l6 = alloca ptr
  %l15 = alloca i1
  %l20 = alloca i1
  %l23 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/bindgen:gen", ptr %t1, i32 0, i32 5
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eRef_3ccompiler_2fbindgen_3arecord_3e(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store ptr %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l6, !tbaa !29
  store ptr %t8, ptr %l2, !tbaa !29
  %t9 = load ptr, ptr %l2, !tbaa !29
  %t11 = getelementptr %"compiler/bindgen:record", ptr %t9, i32 0, i32 8
  %t12 = load i1, ptr %t11, !tbaa !21
  br i1 %t12, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/bindgen:gen", ptr %t15, i32 0, i32 1
  %t18 = load i1, ptr %t17, !tbaa !21
  %t20 = xor i1 %t18, true
  br i1 %t20, label %bb5, label %bb6
bb5:
  %t22 = load ptr, ptr %l2, !tbaa !29
  %t24 = getelementptr %"compiler/bindgen:record", ptr %t22, i32 0, i32 6
  %t25 = load i1, ptr %t24, !tbaa !21
  br i1 %t25, label %bb7, label %bb8
bb6:
  br label %bb10
bb7:
  %t27 = load ptr, ptr %l2, !tbaa !29
  %t29 = getelementptr %"compiler/bindgen:record", ptr %t27, i32 0, i32 2
  %t30 = load i1, ptr %t29, !tbaa !21
  store i1 %t30, ptr %l15, !tbaa !21
  br label %bb9
bb8:
  store i1 false, ptr %l15, !tbaa !21
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s0)
  %t32 = load i1, ptr %l15, !tbaa !21
  store i1 %t32, ptr %rv
  br label %ret
bb10:
  %t33 = load ptr, ptr %l2, !tbaa !29
  %t35 = getelementptr %"compiler/bindgen:record", ptr %t33, i32 0, i32 2
  %t36 = load i1, ptr %t35, !tbaa !21
  br i1 %t36, label %bb11, label %bb12
bb11:
  %t38 = load ptr, ptr %l2, !tbaa !29
  %t40 = getelementptr %"compiler/bindgen:record", ptr %t38, i32 0, i32 7
  %t41 = load { i64, ptr }, ptr %t40, !tbaa !27
  %t43 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t41, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d208, i32 0, i32 1) })
  store i1 %t43, ptr %l23
  br label %bb13
bb12:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb14
bb13:
  %t44 = load i1, ptr %l23, !tbaa !21
  %t45 = xor i1 %t44, true
  store i1 %t45, ptr %l20, !tbaa !21
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s0)
  %t47 = load i1, ptr %l20, !tbaa !21
  store i1 %t47, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ewanted(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l1 = alloca i64
  %l4 = alloca i1
  %l7 = alloca i1
  %rv = alloca i1
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp eq i64 %t1, 1
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l4, !tbaa !21
  br label %bb6
bb2:
  %t7 = getelementptr %"compiler/bindgen:gen", ptr %a0, i32 0, i32 1
  %t8 = load i1, ptr %t7, !tbaa !21
  br i1 %t8, label %bb3, label %bb4
bb3:
  %t10 = load i64, ptr %l1, !tbaa !24
  %t12 = icmp eq i64 %t10, 0
  store i1 %t12, ptr %l7, !tbaa !21
  br label %bb5
bb4:
  store i1 false, ptr %l7, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l7, !tbaa !21
  store i1 %t14, ptr %l4, !tbaa !21
  br label %bb6
bb6:
  %t15 = load i1, ptr %l4, !tbaa !21
  store i1 %t15, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i32, { i64, ptr } } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ewrapper(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %lp4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l18 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l21 = alloca i1
  %l23 = alloca i32
  %l26 = alloca { i64, ptr }
  %l28 = alloca i1
  %l30 = alloca i32
  %l58 = alloca { i64, ptr }
  %l76 = alloca i1
  %l92 = alloca i64
  %l95 = alloca i64
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/bindgen:cFunc", ptr %t1, i32 0, i32 1
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = call { i64, ptr } @compiler_2fbindgen_2enoReturnOf(ptr %v1, ptr %s0, { i64, ptr } %t4)
  store { i64, ptr } %t6, ptr %l18
  br label %bb1
bb1:
  %t7 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t7, ptr %l2, !tbaa !27
  %t8 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d209, i32 0, i32 1) }, ptr %l20, !tbaa !27
  %t10 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t11 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %s0, ptr %s0, { i64, ptr } %t8, { i64, ptr } %t10)
  store i1 %t11, ptr %l21
  br label %bb2
bb2:
  %t12 = load i1, ptr %l21, !tbaa !21
  br i1 %t12, label %bb3, label %bb4
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %s1, ptr %t13, { i64, ptr } { i64 59, ptr getelementptr inbounds (<{ i64, [59 x i8] }>, ptr @.d210, i32 0, i32 1) })
  store i32 %t15, ptr %l23
  %t16 = icmp ne i32 %t15, 0
  br i1 %t16, label %bb6, label %ok.17, !prof !99
ok.17:
  br label %bb5
bb4:
  br label %bb8
bb5:
  br label %bb7
bb6:
  %t18 = load i32, ptr %l23, !tbaa !23
  %t19 = lshr i32 %t18, 16
  %t20 = and i32 %t18, 65535
  %t21 = icmp eq i32 %t19, 1
  %t22 = select i1 %t21, i32 1, i32 0
  %t23 = icmp eq i32 %t18, 0
  %t24 = shl i32 %t22, 16
  %t25 = or i32 %t24, %t20
  %t26 = select i1 %t23, i32 0, i32 %t25
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t28 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t26, 0
  store { i32, { i64, ptr } } %t28, ptr %rv
  br label %ret
bb7:
  call void @__olang_scope_close(ptr %s1)
  br label %bb8
bb8:
  %t29 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t31 = call { i64, ptr } @compiler_2fbindgen_2eresultText(ptr %s0, ptr %s0, { i64, ptr } %t29)
  store { i64, ptr } %t31, ptr %l26
  br label %bb9
bb9:
  %t32 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t32, ptr %l3, !tbaa !27
  %t33 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t35 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t33, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d211, i32 0, i32 1) })
  store i1 %t35, ptr %l28
  br label %bb10
bb10:
  %t36 = load i1, ptr %l28, !tbaa !21
  br i1 %t36, label %bb11, label %bb12
bb11:
  store %olang.scope zeroinitializer, ptr %s2
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %s2, ptr %t37, { i64, ptr } { i64 55, ptr getelementptr inbounds (<{ i64, [55 x i8] }>, ptr @.d212, i32 0, i32 1) })
  store i32 %t39, ptr %l30
  %t40 = icmp ne i32 %t39, 0
  br i1 %t40, label %bb14, label %ok.41, !prof !99
ok.41:
  br label %bb13
bb12:
  br label %bb16
bb13:
  br label %bb15
bb14:
  %t42 = load i32, ptr %l30, !tbaa !23
  %t43 = lshr i32 %t42, 16
  %t44 = and i32 %t42, 65535
  %t45 = icmp eq i32 %t43, 1
  %t46 = select i1 %t45, i32 1, i32 0
  %t47 = icmp eq i32 %t42, 0
  %t48 = shl i32 %t46, 16
  %t49 = or i32 %t48, %t44
  %t50 = select i1 %t47, i32 0, i32 %t49
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t52 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t50, 0
  store { i32, { i64, ptr } } %t52, ptr %rv
  br label %ret
bb15:
  call void @__olang_scope_close(ptr %s2)
  br label %bb16
bb16:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/bindgen:gen", ptr %t53, i32 0, i32 2
  %t56 = load { i64, ptr }, ptr %t55, !tbaa !27
  %t57 = load ptr, ptr %l1, !tbaa !29
  %t59 = getelementptr %"compiler/bindgen:cFunc", ptr %t57, i32 0, i32 0
  %t60 = load { i64, ptr }, ptr %t59, !tbaa !27
  %t61 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d213, i32 0, i32 1) }, 1
  %t62 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d213, i32 0, i32 1) }, 0
  %t64 = extractvalue { i64, ptr } %t56, 1
  %t65 = extractvalue { i64, ptr } %t56, 0
  %t66 = add i64 %t62, %t65
  %t67 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d214, i32 0, i32 1) }, 1
  %t68 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d214, i32 0, i32 1) }, 0
  %t69 = add i64 %t66, %t68
  %t71 = extractvalue { i64, ptr } %t60, 1
  %t72 = extractvalue { i64, ptr } %t60, 0
  %t73 = add i64 %t69, %t72
  %t74 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t73)
  call void @olang_textcopy(ptr %t74, ptr %t61, i64 %t62)
  %t75 = getelementptr i8, ptr %t74, i64 %t62
  call void @olang_textcopy(ptr %t75, ptr %t64, i64 %t65)
  %t76 = getelementptr i8, ptr %t75, i64 %t65
  call void @olang_textcopy(ptr %t76, ptr %t67, i64 %t68)
  %t77 = getelementptr i8, ptr %t76, i64 %t68
  call void @olang_textcopy(ptr %t77, ptr %t71, i64 %t72)
  %t78 = insertvalue { i64, ptr } undef, i64 %t73, 0
  %t79 = insertvalue { i64, ptr } %t78, ptr %t74, 1
  %t80 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t80, ptr %lp4
  %t82 = load ptr, ptr %lp4
  store { i64, ptr } %t79, ptr %t82, !tbaa !27
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/bindgen:gen", ptr %t83, i32 0, i32 20
  %t86 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t87 = load ptr, ptr %lp4
  %t88 = load { i64, ptr }, ptr %t87, !tbaa !27
  %t90 = extractvalue { i64, ptr } %t86, 1
  %t91 = extractvalue { i64, ptr } %t86, 0
  %t92 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d215, i32 0, i32 1) }, 1
  %t93 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d215, i32 0, i32 1) }, 0
  %t94 = add i64 %t91, %t93
  %t96 = extractvalue { i64, ptr } %t88, 1
  %t97 = extractvalue { i64, ptr } %t88, 0
  %t98 = add i64 %t94, %t97
  %t99 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d216, i32 0, i32 1) }, 1
  %t100 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d216, i32 0, i32 1) }, 0
  %t101 = add i64 %t98, %t100
  %t102 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t101)
  call void @olang_textcopy(ptr %t102, ptr %t90, i64 %t91)
  %t103 = getelementptr i8, ptr %t102, i64 %t91
  call void @olang_textcopy(ptr %t103, ptr %t92, i64 %t93)
  %t104 = getelementptr i8, ptr %t103, i64 %t93
  call void @olang_textcopy(ptr %t104, ptr %t96, i64 %t97)
  %t105 = getelementptr i8, ptr %t104, i64 %t97
  call void @olang_textcopy(ptr %t105, ptr %t99, i64 %t100)
  %t106 = insertvalue { i64, ptr } undef, i64 %t101, 0
  %t107 = insertvalue { i64, ptr } %t106, ptr %t102, 1
  %t109 = extractvalue { i64, ptr } %t107, 0
  %t110 = extractvalue { i64, ptr } %t107, 1
  %t111 = mul i64 %t109, 1
  %t112 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t111)
  call void @llvm.memcpy.p0.p0.i64(ptr %t112, ptr %t110, i64 %t111, i1 false)
  %t113 = insertvalue { i64, ptr } undef, i64 %t109, 0
  %t114 = insertvalue { i64, ptr } %t113, ptr %t112, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s0, ptr %t85, { i64, ptr } %t114)
  br label %bb17
bb17:
  %t117 = load ptr, ptr %l1, !tbaa !29
  %t119 = getelementptr %"compiler/bindgen:cFunc", ptr %t117, i32 0, i32 3
  %t120 = load { i64, ptr }, ptr %t119, !tbaa !27
  %t122 = extractvalue { i64, ptr } %t120, 0
  %t124 = icmp eq i64 %t122, 0
  br i1 %t124, label %bb18, label %bb19
bb18:
  store %olang.scope zeroinitializer, ptr %s5
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t128 = getelementptr %"compiler/bindgen:gen", ptr %t126, i32 0, i32 20
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s5, ptr %t128, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d217, i32 0, i32 1) })
  br label %bb20
bb19:
  br label %bb21
bb20:
  call void @__olang_scope_close(ptr %s5)
  br label %bb21
bb21:
  %t130 = load ptr, ptr %l1, !tbaa !29
  %t132 = getelementptr %"compiler/bindgen:cFunc", ptr %t130, i32 0, i32 3
  %t133 = load { i64, ptr }, ptr %t132, !tbaa !27
  store { i64, ptr } %t133, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t135 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t137 = extractvalue { i64, ptr } %t135, 0
  store i64 %t137, ptr %l7, !tbaa !24
  br label %bb22
bb22:
  store %olang.scope zeroinitializer, ptr %s7
  %t139 = load i64, ptr %l6, !tbaa !24
  %t140 = load i64, ptr %l7, !tbaa !24
  %t143 = icmp slt i64 %t139, %t140
  %t145 = xor i1 %t143, true
  br i1 %t145, label %bb23, label %bb24
bb23:
  call void @__olang_scope_close(ptr %s7)
  br label %bb32
bb24:
  br label %bb25
bb25:
  %t147 = load i64, ptr %l6, !tbaa !24
  store i64 %t147, ptr %l8, !tbaa !24
  %t149 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t149, ptr %l58, !tbaa !27
  %t150 = load i64, ptr %l6, !tbaa !24
  %t152 = getelementptr { i64, ptr }, ptr %l58, i32 0, i32 1
  %t153 = load ptr, ptr %t152, !tbaa !27
  %t154 = getelementptr { i64, ptr }, ptr %t153, i64 %t150
  %t155 = load { i64, ptr }, ptr %t154, !tbaa !37
  store { i64, ptr } %t155, ptr %l9, !tbaa !27
  %t157 = load i64, ptr %l8, !tbaa !24
  %t159 = icmp sgt i64 %t157, 0
  br i1 %t159, label %bb26, label %bb27
bb26:
  store %olang.scope zeroinitializer, ptr %s8
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t163 = getelementptr %"compiler/bindgen:gen", ptr %t161, i32 0, i32 20
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s8, ptr %t163, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d218, i32 0, i32 1) })
  br label %bb28
bb27:
  br label %bb29
bb28:
  call void @__olang_scope_close(ptr %s8)
  br label %bb29
bb29:
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t167 = getelementptr %"compiler/bindgen:gen", ptr %t165, i32 0, i32 20
  %t168 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t169 = load i64, ptr %l8, !tbaa !24
  %t170 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d219, i32 0, i32 1) }, 1
  %t171 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d219, i32 0, i32 1) }, 0
  %t173 = extractvalue { i64, ptr } %t168, 1
  %t174 = extractvalue { i64, ptr } %t168, 0
  %t175 = add i64 %t171, %t174
  %t176 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d220, i32 0, i32 1) }, 1
  %t177 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d220, i32 0, i32 1) }, 0
  %t178 = add i64 %t175, %t177
  %t180 = call i64 @__olang_fmt_i64(ptr null, i64 %t169)
  %t181 = add i64 %t178, %t180
  %t182 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t181)
  call void @olang_textcopy(ptr %t182, ptr %t170, i64 %t171)
  %t183 = getelementptr i8, ptr %t182, i64 %t171
  call void @olang_textcopy(ptr %t183, ptr %t173, i64 %t174)
  %t184 = getelementptr i8, ptr %t183, i64 %t174
  call void @olang_textcopy(ptr %t184, ptr %t176, i64 %t177)
  %t185 = getelementptr i8, ptr %t184, i64 %t177
  %t186 = call i64 @__olang_fmt_i64(ptr %t185, i64 %t169)
  %t187 = insertvalue { i64, ptr } undef, i64 %t181, 0
  %t188 = insertvalue { i64, ptr } %t187, ptr %t182, 1
  %t190 = extractvalue { i64, ptr } %t188, 0
  %t191 = extractvalue { i64, ptr } %t188, 1
  %t192 = mul i64 %t190, 1
  %t193 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t192)
  call void @llvm.memcpy.p0.p0.i64(ptr %t193, ptr %t191, i64 %t192, i1 false)
  %t194 = insertvalue { i64, ptr } undef, i64 %t190, 0
  %t195 = insertvalue { i64, ptr } %t194, ptr %t193, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s7, ptr %t167, { i64, ptr } %t195)
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s7)
  br label %bb31
bb31:
  %t198 = load i64, ptr %l6, !tbaa !24
  %t200 = add i64 %t198, 1
  store i64 %t200, ptr %l6, !tbaa !24
  br label %bb22
bb32:
  %t202 = load ptr, ptr %l0, !tbaa !29
  %t204 = getelementptr %"compiler/bindgen:gen", ptr %t202, i32 0, i32 20
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s0, ptr %t204, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d221, i32 0, i32 1) })
  br label %bb33
bb33:
  %t206 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t208 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t206, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d222, i32 0, i32 1) })
  store i1 %t208, ptr %l76
  br label %bb34
bb34:
  %t209 = load i1, ptr %l76, !tbaa !21
  %t210 = xor i1 %t209, true
  br i1 %t210, label %bb35, label %bb36
bb35:
  store %olang.scope zeroinitializer, ptr %s11
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t214 = getelementptr %"compiler/bindgen:gen", ptr %t212, i32 0, i32 20
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s11, ptr %t214, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d223, i32 0, i32 1) })
  br label %bb37
bb36:
  br label %bb38
bb37:
  call void @__olang_scope_close(ptr %s11)
  br label %bb38
bb38:
  %t216 = load ptr, ptr %l0, !tbaa !29
  %t218 = getelementptr %"compiler/bindgen:gen", ptr %t216, i32 0, i32 20
  %t219 = load ptr, ptr %l1, !tbaa !29
  %t221 = getelementptr %"compiler/bindgen:cFunc", ptr %t219, i32 0, i32 0
  %t222 = load { i64, ptr }, ptr %t221, !tbaa !27
  %t224 = extractvalue { i64, ptr } %t222, 1
  %t225 = extractvalue { i64, ptr } %t222, 0
  %t226 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d224, i32 0, i32 1) }, 1
  %t227 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d224, i32 0, i32 1) }, 0
  %t228 = add i64 %t225, %t227
  %t229 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t228)
  call void @olang_textcopy(ptr %t229, ptr %t224, i64 %t225)
  %t230 = getelementptr i8, ptr %t229, i64 %t225
  call void @olang_textcopy(ptr %t230, ptr %t226, i64 %t227)
  %t231 = insertvalue { i64, ptr } undef, i64 %t228, 0
  %t232 = insertvalue { i64, ptr } %t231, ptr %t229, 1
  %t234 = extractvalue { i64, ptr } %t232, 0
  %t235 = extractvalue { i64, ptr } %t232, 1
  %t236 = mul i64 %t234, 1
  %t237 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t236)
  call void @llvm.memcpy.p0.p0.i64(ptr %t237, ptr %t235, i64 %t236, i1 false)
  %t238 = insertvalue { i64, ptr } undef, i64 %t234, 0
  %t239 = insertvalue { i64, ptr } %t238, ptr %t237, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s0, ptr %t218, { i64, ptr } %t239)
  br label %bb39
bb39:
  store i64 0, ptr %l10, !tbaa !24
  %t242 = load ptr, ptr %l1, !tbaa !29
  %t244 = getelementptr %"compiler/bindgen:cFunc", ptr %t242, i32 0, i32 3
  %t245 = load { i64, ptr }, ptr %t244, !tbaa !27
  %t247 = extractvalue { i64, ptr } %t245, 0
  store i64 %t247, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t249 = load i64, ptr %l11, !tbaa !24
  %t250 = load i64, ptr %l10, !tbaa !24
  %t253 = icmp sgt i64 %t249, %t250
  br i1 %t253, label %bb40, label %bb41
bb40:
  %t255 = load i64, ptr %l12, !tbaa !24
  %t257 = icmp sgt i64 %t255, 0
  br i1 %t257, label %bb42, label %bb43
bb41:
  store i64 0, ptr %l92, !tbaa !24
  br label %bb45
bb42:
  %t259 = load i64, ptr %l11, !tbaa !24
  %t260 = load i64, ptr %l10, !tbaa !24
  %t263 = sub i64 %t259, %t260
  %t264 = load i64, ptr %l12, !tbaa !24
  %t267 = add i64 %t263, %t264
  %t269 = sub i64 %t267, 1
  %t270 = load i64, ptr %l12, !tbaa !24
  %t273 = sdiv i64 %t269, %t270
  store i64 %t273, ptr %l95, !tbaa !24
  br label %bb44
bb43:
  store i64 0, ptr %l95, !tbaa !24
  br label %bb44
bb44:
  %t275 = load i64, ptr %l95, !tbaa !24
  store i64 %t275, ptr %l92, !tbaa !24
  br label %bb45
bb45:
  %t276 = load i64, ptr %l92, !tbaa !24
  store i64 %t276, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb46
bb46:
  store %olang.scope zeroinitializer, ptr %s14
  %t277 = load i64, ptr %l14, !tbaa !24
  %t278 = load i64, ptr %l13, !tbaa !24
  %t281 = icmp slt i64 %t277, %t278
  %t283 = xor i1 %t281, true
  br i1 %t283, label %bb47, label %bb48
bb47:
  call void @__olang_scope_close(ptr %s14)
  br label %bb56
bb48:
  br label %bb49
bb49:
  %t285 = load i64, ptr %l10, !tbaa !24
  %t286 = load i64, ptr %l14, !tbaa !24
  %t287 = load i64, ptr %l12, !tbaa !24
  %t290 = mul i64 %t286, %t287
  %t293 = add i64 %t285, %t290
  store i64 %t293, ptr %l15, !tbaa !24
  %t295 = load i64, ptr %l15, !tbaa !24
  %t297 = icmp sgt i64 %t295, 0
  br i1 %t297, label %bb50, label %bb51
bb50:
  store %olang.scope zeroinitializer, ptr %s15
  %t299 = load ptr, ptr %l0, !tbaa !29
  %t301 = getelementptr %"compiler/bindgen:gen", ptr %t299, i32 0, i32 20
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s15, ptr %t301, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d225, i32 0, i32 1) })
  br label %bb52
bb51:
  br label %bb53
bb52:
  call void @__olang_scope_close(ptr %s15)
  br label %bb53
bb53:
  %t303 = load ptr, ptr %l0, !tbaa !29
  %t305 = getelementptr %"compiler/bindgen:gen", ptr %t303, i32 0, i32 20
  %t306 = load i64, ptr %l15, !tbaa !24
  %t307 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d226, i32 0, i32 1) }, 1
  %t308 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d226, i32 0, i32 1) }, 0
  %t310 = call i64 @__olang_fmt_i64(ptr null, i64 %t306)
  %t311 = add i64 %t308, %t310
  %t312 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t311)
  call void @olang_textcopy(ptr %t312, ptr %t307, i64 %t308)
  %t313 = getelementptr i8, ptr %t312, i64 %t308
  %t314 = call i64 @__olang_fmt_i64(ptr %t313, i64 %t306)
  %t315 = insertvalue { i64, ptr } undef, i64 %t311, 0
  %t316 = insertvalue { i64, ptr } %t315, ptr %t312, 1
  %t318 = extractvalue { i64, ptr } %t316, 0
  %t319 = extractvalue { i64, ptr } %t316, 1
  %t320 = mul i64 %t318, 1
  %t321 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t320)
  call void @llvm.memcpy.p0.p0.i64(ptr %t321, ptr %t319, i64 %t320, i1 false)
  %t322 = insertvalue { i64, ptr } undef, i64 %t318, 0
  %t323 = insertvalue { i64, ptr } %t322, ptr %t321, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s14, ptr %t305, { i64, ptr } %t323)
  br label %bb54
bb54:
  call void @__olang_scope_close(ptr %s14)
  br label %bb55
bb55:
  %t326 = load i64, ptr %l14, !tbaa !24
  %t328 = add i64 %t326, 1
  store i64 %t328, ptr %l14, !tbaa !24
  br label %bb46
bb56:
  %t330 = load ptr, ptr %l0, !tbaa !29
  %t332 = getelementptr %"compiler/bindgen:gen", ptr %t330, i32 0, i32 20
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s0, ptr %t332, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d227, i32 0, i32 1) })
  br label %bb57
bb57:
  %t334 = load ptr, ptr %lp4
  %t335 = load { i64, ptr }, ptr %t334, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t337 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t335, 1
  store { i32, { i64, ptr } } %t337, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i64, ptr } @compiler_2fbindgen_2ectokens(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %lp1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i8
  %l4 = alloca i64
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca { i64, ptr }
  %l21 = alloca i1
  %l22 = alloca i1
  %l24 = alloca i1
  %l25 = alloca i1
  %l32 = alloca i1
  %l33 = alloca { i64, ptr }
  %l36 = alloca i1
  %l37 = alloca i1
  %l38 = alloca { i64, ptr }
  %l41 = alloca i1
  %l42 = alloca i1
  %l43 = alloca { i64, ptr }
  %l56 = alloca i1
  %l57 = alloca { i64, ptr }
  %l64 = alloca ptr
  %l65 = alloca i64
  %l67 = alloca { i64, ptr }
  %l68 = alloca i64
  %l69 = alloca i64
  %l70 = alloca i64
  %l79 = alloca { i64, ptr }
  %l80 = alloca { i64, ptr }
  %l81 = alloca i64
  %l82 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
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
  store i64 0, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t5 = load i64, ptr %l2, !tbaa !24
  %t6 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t6, 0
  %t11 = icmp slt i64 %t5, %t8
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  br label %bb59
bb4:
  br label %bb5
bb5:
  %t15 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t15, ptr %l11, !tbaa !27
  %t16 = load i64, ptr %l2, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr i8, ptr %t19, i64 %t16
  %t21 = load i8, ptr %t20, !tbaa !32
  store i8 %t21, ptr %l3, !tbaa !22
  %t23 = load i8, ptr %l3, !tbaa !22
  %t25 = icmp eq i8 %t23, 32
  br i1 %t25, label %bb6, label %bb7
bb6:
  %t27 = load i64, ptr %l2, !tbaa !24
  %t29 = add i64 %t27, 1
  store i64 %t29, ptr %l2, !tbaa !24
  br label %bb58
bb7:
  br label %bb8
bb8:
  %t31 = load i64, ptr %l2, !tbaa !24
  %t33 = add i64 %t31, 1
  store i64 %t33, ptr %l4, !tbaa !24
  %t35 = load i8, ptr %l3, !tbaa !22
  %t37 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t35)
  store i1 %t37, ptr %l21
  br label %bb9
bb9:
  %t38 = load i1, ptr %l21, !tbaa !21
  br i1 %t38, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb13
bb11:
  %t39 = load i8, ptr %l3, !tbaa !22
  %t41 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t39)
  store i1 %t41, ptr %l24
  br label %bb12
bb12:
  %t42 = load i1, ptr %l24, !tbaa !21
  store i1 %t42, ptr %l22, !tbaa !21
  br label %bb13
bb13:
  %t43 = load i1, ptr %l22, !tbaa !21
  br i1 %t43, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l25, !tbaa !21
  br label %bb16
bb15:
  %t44 = load i8, ptr %l3, !tbaa !22
  %t46 = icmp eq i8 %t44, 95
  store i1 %t46, ptr %l25, !tbaa !21
  br label %bb16
bb16:
  %t48 = load i1, ptr %l25, !tbaa !21
  br i1 %t48, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  %t49 = load i8, ptr %l3, !tbaa !22
  %t51 = icmp eq i8 %t49, 46
  br i1 %t51, label %bb36, label %bb37
bb19:
  %t53 = load i64, ptr %l4, !tbaa !24
  %t54 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t56 = extractvalue { i64, ptr } %t54, 0
  %t59 = icmp slt i64 %t53, %t56
  br i1 %t59, label %bb20, label %bb21
bb20:
  %t61 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t61, ptr %l33, !tbaa !27
  %t62 = load i64, ptr %l4, !tbaa !24
  %t64 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !27
  %t66 = getelementptr i8, ptr %t65, i64 %t62
  %t67 = load i8, ptr %t66, !tbaa !32
  %t69 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t67)
  store i1 %t69, ptr %l36
  br label %bb22
bb21:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb30
bb22:
  %t70 = load i1, ptr %l36, !tbaa !21
  br i1 %t70, label %bb23, label %bb24
bb23:
  store i1 true, ptr %l37, !tbaa !21
  br label %bb26
bb24:
  %t71 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t71, ptr %l38, !tbaa !27
  %t72 = load i64, ptr %l4, !tbaa !24
  %t74 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !27
  %t76 = getelementptr i8, ptr %t75, i64 %t72
  %t77 = load i8, ptr %t76, !tbaa !32
  %t79 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t77)
  store i1 %t79, ptr %l41
  br label %bb25
bb25:
  %t80 = load i1, ptr %l41, !tbaa !21
  store i1 %t80, ptr %l37, !tbaa !21
  br label %bb26
bb26:
  %t81 = load i1, ptr %l37, !tbaa !21
  br i1 %t81, label %bb27, label %bb28
bb27:
  store i1 true, ptr %l42, !tbaa !21
  br label %bb29
bb28:
  %t82 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t82, ptr %l43, !tbaa !27
  %t83 = load i64, ptr %l4, !tbaa !24
  %t85 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !27
  %t87 = getelementptr i8, ptr %t86, i64 %t83
  %t88 = load i8, ptr %t87, !tbaa !32
  %t90 = icmp eq i8 %t88, 95
  store i1 %t90, ptr %l42, !tbaa !21
  br label %bb29
bb29:
  %t92 = load i1, ptr %l42, !tbaa !21
  store i1 %t92, ptr %l32, !tbaa !21
  br label %bb30
bb30:
  %t93 = load i1, ptr %l32, !tbaa !21
  %t94 = xor i1 %t93, true
  br i1 %t94, label %bb31, label %bb32
bb31:
  br label %bb35
bb32:
  br label %bb33
bb33:
  %t96 = load i64, ptr %l4, !tbaa !24
  %t98 = add i64 %t96, 1
  store i64 %t98, ptr %l4, !tbaa !24
  br label %bb34
bb34:
  br label %bb19
bb35:
  br label %bb48
bb36:
  br label %bb38
bb37:
  br label %bb47
bb38:
  %t100 = load i64, ptr %l4, !tbaa !24
  %t101 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t103 = extractvalue { i64, ptr } %t101, 0
  %t106 = icmp slt i64 %t100, %t103
  br i1 %t106, label %bb39, label %bb40
bb39:
  %t108 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t108, ptr %l57, !tbaa !27
  %t109 = load i64, ptr %l4, !tbaa !24
  %t111 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t112 = load ptr, ptr %t111, !tbaa !27
  %t113 = getelementptr i8, ptr %t112, i64 %t109
  %t114 = load i8, ptr %t113, !tbaa !32
  %t116 = icmp eq i8 %t114, 46
  store i1 %t116, ptr %l56, !tbaa !21
  br label %bb41
bb40:
  store i1 false, ptr %l56, !tbaa !21
  br label %bb41
bb41:
  %t118 = load i1, ptr %l56, !tbaa !21
  %t119 = xor i1 %t118, true
  br i1 %t119, label %bb42, label %bb43
bb42:
  br label %bb46
bb43:
  br label %bb44
bb44:
  %t121 = load i64, ptr %l4, !tbaa !24
  %t123 = add i64 %t121, 1
  store i64 %t123, ptr %l4, !tbaa !24
  br label %bb45
bb45:
  br label %bb38
bb46:
  br label %bb47
bb47:
  br label %bb48
bb48:
  %t125 = load ptr, ptr %lp1
  store ptr %t125, ptr %l64, !tbaa !29
  %t126 = ptrtoint ptr %v1 to i64
  store i64 %t126, ptr %l65, !tbaa !24
  %t127 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t127, label %bb49, label %bb50
bb49:
  %t129 = call ptr @__olang_region_make(ptr %v1)
  %t130 = ptrtoint ptr %t129 to i64
  store i64 %t130, ptr %l65, !tbaa !24
  br label %bb50
bb50:
  %t131 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t131, ptr %l67, !tbaa !27
  %t132 = load i64, ptr %l2, !tbaa !24
  store i64 %t132, ptr %l68, !tbaa !24
  %t133 = load i64, ptr %l4, !tbaa !24
  store i64 %t133, ptr %l69, !tbaa !24
  %t134 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t135 = extractvalue { i64, ptr } %t134, 0
  store i64 %t135, ptr %l70, !tbaa !24
  %t136 = load i64, ptr %l68, !tbaa !24
  %t137 = icmp sge i64 %t136, 0
  br i1 %t137, label %bb51, label %bb52
bb51:
  %t139 = load i64, ptr %l68, !tbaa !24
  %t140 = load i64, ptr %l69, !tbaa !24
  %t141 = icmp sle i64 %t139, %t140
  br i1 %t141, label %bb53, label %bb54
bb52:
  call void @__olang_check_failed(ptr @olang_loc_12d4b4c126d079e6_1af6ce2ce1af3fd2)
  unreachable
bb53:
  %t143 = load i64, ptr %l69, !tbaa !24
  %t144 = load i64, ptr %l70, !tbaa !24
  %t145 = icmp sle i64 %t143, %t144
  br i1 %t145, label %bb55, label %bb56
bb54:
  call void @__olang_check_failed(ptr @olang_loc_12d4b4c126d079e6_1af6ce2ce1af3fd2)
  unreachable
bb55:
  %t147 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t148 = load ptr, ptr %t147, !tbaa !27
  %t149 = load i64, ptr %l68, !tbaa !24
  %t150 = load i64, ptr %l69, !tbaa !24
  %t151 = getelementptr i8, ptr %t148, i64 %t149
  %t152 = sub i64 %t150, %t149
  %t153 = insertvalue { i64, ptr } undef, i64 %t152, 0
  %t154 = insertvalue { i64, ptr } %t153, ptr %t151, 1
  %t156 = extractvalue { i64, ptr } %t154, 1
  %t157 = extractvalue { i64, ptr } %t154, 0
  %t158 = load i64, ptr %l65
  %t159 = inttoptr i64 %t158 to ptr
  %t160 = call ptr @__olang_scope_alloc(ptr %t159, i64 %t157)
  call void @olang_textcopy(ptr %t160, ptr %t156, i64 %t157)
  %t161 = insertvalue { i64, ptr } undef, i64 %t157, 0
  %t162 = insertvalue { i64, ptr } %t161, ptr %t160, 1
  %t164 = load i64, ptr %l65
  %t165 = inttoptr i64 %t164 to ptr
  %t166 = extractvalue { i64, ptr } %t162, 0
  %t167 = extractvalue { i64, ptr } %t162, 1
  %t168 = mul i64 %t166, 1
  %t169 = call ptr @__olang_scope_alloc(ptr %t165, i64 %t168)
  call void @llvm.memcpy.p0.p0.i64(ptr %t169, ptr %t167, i64 %t168, i1 false)
  %t170 = insertvalue { i64, ptr } undef, i64 %t166, 0
  %t171 = insertvalue { i64, ptr } %t170, ptr %t169, 1
  %t172 = load ptr, ptr %l64, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t172, { i64, ptr } %t171)
  br label %bb57
bb56:
  call void @__olang_check_failed(ptr @olang_loc_12d4b4c126d079e6_1af6ce2ce1af3fd2)
  unreachable
bb57:
  %t174 = load i64, ptr %l4, !tbaa !24
  store i64 %t174, ptr %l2, !tbaa !24
  br label %bb58
bb58:
  br label %bb2
bb59:
  %t176 = load ptr, ptr %lp1
  %t178 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v1, ptr %v1, ptr %t176)
  store { i64, ptr } %t178, ptr %l79
  br label %bb60
bb60:
  %t179 = load { i64, ptr }, ptr %l79, !tbaa !27
  store { i64, ptr } %t179, ptr %l80, !tbaa !27
  %t180 = load { i64, ptr }, ptr %l80, !tbaa !27
  %t181 = extractvalue { i64, ptr } %t180, 0
  store i64 %t181, ptr %l81, !tbaa !24
  %t182 = load i64, ptr %l81, !tbaa !24
  %t183 = mul i64 %t182, 16
  %t184 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t183)
  %t185 = insertvalue { i64, ptr } undef, i64 %t182, 0
  %t186 = insertvalue { i64, ptr } %t185, ptr %t184, 1
  store { i64, ptr } %t186, ptr %l82, !tbaa !27
  %t187 = getelementptr { i64, ptr }, ptr %l82, i32 0, i32 1
  %t188 = load ptr, ptr %t187, !tbaa !27
  %t189 = getelementptr { i64, ptr }, ptr %l80, i32 0, i32 1
  %t190 = load ptr, ptr %t189, !tbaa !27
  %t191 = load i64, ptr %l81, !tbaa !24
  %t192 = mul i64 %t191, 16
  call void @llvm.memmove.p0.p0.i64(ptr %t188, ptr %t190, i64 %t192, i1 false)
  %t193 = load { i64, ptr }, ptr %l82, !tbaa !27
  store { i64, ptr } %t193, ptr %l80, !tbaa !27
  %t194 = load { i64, ptr }, ptr %l80, !tbaa !27
  store { i64, ptr } %t194, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fbindgen_2einner(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l4 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i1
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call ptr @compiler_2fbindgen_2emember(ptr %v0, ptr %v0, ptr %v0, ptr %a0, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d228, i32 0, i32 1) })
  store ptr %t3, ptr %l4
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l4, !tbaa !29
  store ptr %t4, ptr %l1, !tbaa !29
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t7 = icmp eq ptr %t5, null
  %t9 = xor i1 %t7, true
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l1, !tbaa !29
  store ptr %t11, ptr %l8, !tbaa !29
  store i1 false, ptr %l9, !tbaa !21
  %t12 = load ptr, ptr %l8, !tbaa !29
  %t13 = icmp ne ptr %t12, null
  br i1 %t13, label %bb4, label %bb5
bb3:
  br label %bb15
bb4:
  %t15 = load ptr, ptr %l8, !tbaa !29
  %t16 = load i64, ptr %t15, !range !{i64 0, i64 8}
  %t18 = icmp eq i64 %t16, 6
  store i1 %t18, ptr %l9, !tbaa !21
  br label %bb5
bb5:
  %t19 = load i1, ptr %l9, !tbaa !21
  br i1 %t19, label %bb6, label %bb7
bb6:
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t22 = getelementptr { i64, [2 x i64] }, ptr %t20, i32 0, i32 1
  %t23 = getelementptr { { i64, ptr } }, ptr %t22, i32 0, i32 0
  %t24 = load { i64, ptr }, ptr %t23
  store { i64, ptr } %t24, ptr %l2, !tbaa !27
  br label %bb8
bb7:
  br label %bb9
bb8:
  %t26 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t26, ptr %l15, !tbaa !27
  %t28 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t28, 0
  store i64 %t29, ptr %l16, !tbaa !24
  %t30 = load i64, ptr %l16, !tbaa !24
  %t31 = mul i64 %t30, 8
  %t32 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t31)
  %t33 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t34 = insertvalue { i64, ptr } %t33, ptr %t32, 1
  store { i64, ptr } %t34, ptr %l17, !tbaa !27
  %t35 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !27
  %t37 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = load i64, ptr %l16, !tbaa !24
  %t40 = mul i64 %t39, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t36, ptr %t38, i64 %t40, i1 false)
  %t41 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t41, ptr %l15, !tbaa !27
  %t42 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t42, ptr %rv
  br label %ret
bb9:
  br i1 true, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_6ea08524187c2be0_2ef7bb2e3d9cc7b4)
  unreachable
bb14:
  br label %bb15
bb15:
  %t43 = icmp sge i64 0, 0
  br i1 %t43, label %bb16, label %bb17
bb16:
  %t45 = icmp sle i64 0, 1152921504606846975
  br i1 %t45, label %bb18, label %bb19
bb17:
  call void @__olang_check_failed(ptr @olang_loc_feb39f4cfa8fb0e2_4824786a1f7bac1e)
  unreachable
bb18:
  %t47 = mul i64 0, 8
  %t48 = insertvalue { i64, ptr } undef, i64 0, 0
  %t49 = insertvalue { i64, ptr } %t48, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t49, ptr %rv
  br label %ret
bb19:
  call void @__olang_check_failed(ptr @olang_loc_feb39f4cfa8fb0e2_4824786a1f7bac1e)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local ptr @compiler_2fbindgen_2emember(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca i1
  %l16 = alloca i64
  %l20 = alloca i64
  %l23 = alloca i64
  %l42 = alloca { i64, ptr }
  %l46 = alloca i1
  %l48 = alloca { i64, ptr }
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l9, !tbaa !29
  store i1 false, ptr %l10, !tbaa !21
  %t2 = load ptr, ptr %l9, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l9, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 7
  store i1 %t8, ptr %l10, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l10, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [2 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { ptr }, ptr %t12, i32 0, i32 0
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb23
bb5:
  store i64 0, ptr %l3, !tbaa !24
  %t16 = load ptr, ptr %l2, !tbaa !29
  %t18 = call i64 @std_2fjson_2estd_2fjson_3aObject_2eLen(ptr %v0, ptr %t16)
  store i64 %t18, ptr %l16
  br label %bb6
bb6:
  %t19 = load i64, ptr %l16, !tbaa !24
  store i64 %t19, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t20 = load i64, ptr %l4, !tbaa !24
  %t21 = load i64, ptr %l3, !tbaa !24
  %t24 = icmp sgt i64 %t20, %t21
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t26 = load i64, ptr %l5, !tbaa !24
  %t28 = icmp sgt i64 %t26, 0
  br i1 %t28, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb12
bb9:
  %t30 = load i64, ptr %l4, !tbaa !24
  %t31 = load i64, ptr %l3, !tbaa !24
  %t34 = sub i64 %t30, %t31
  %t35 = load i64, ptr %l5, !tbaa !24
  %t38 = add i64 %t34, %t35
  %t40 = sub i64 %t38, 1
  %t41 = load i64, ptr %l5, !tbaa !24
  %t44 = sdiv i64 %t40, %t41
  store i64 %t44, ptr %l23, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb11
bb11:
  %t46 = load i64, ptr %l23, !tbaa !24
  store i64 %t46, ptr %l20, !tbaa !24
  br label %bb12
bb12:
  %t47 = load i64, ptr %l20, !tbaa !24
  store i64 %t47, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb13
bb13:
  %t48 = load i64, ptr %l7, !tbaa !24
  %t49 = load i64, ptr %l6, !tbaa !24
  %t52 = icmp slt i64 %t48, %t49
  %t54 = xor i1 %t52, true
  br i1 %t54, label %bb14, label %bb15
bb14:
  br label %bb22
bb15:
  br label %bb16
bb16:
  %t56 = load i64, ptr %l3, !tbaa !24
  %t57 = load i64, ptr %l7, !tbaa !24
  %t58 = load i64, ptr %l5, !tbaa !24
  %t61 = mul i64 %t57, %t58
  %t64 = add i64 %t56, %t61
  store i64 %t64, ptr %l8, !tbaa !24
  %t66 = load ptr, ptr %l2, !tbaa !29
  %t68 = getelementptr %"std/json:Object", ptr %t66, i32 0, i32 0
  %t69 = load { i64, ptr }, ptr %t68, !tbaa !27
  store { i64, ptr } %t69, ptr %l42, !tbaa !27
  %t70 = load i64, ptr %l8, !tbaa !24
  %t72 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = getelementptr { i64, ptr }, ptr %t73, i64 %t70
  %t75 = load { i64, ptr }, ptr %t74, !tbaa !37
  %t79 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %t75, { i64, ptr } %a1)
  store i1 %t79, ptr %l46
  br label %bb17
bb17:
  %t80 = load i1, ptr %l46, !tbaa !21
  br i1 %t80, label %bb18, label %bb19
bb18:
  %t81 = load ptr, ptr %l2, !tbaa !29
  %t83 = getelementptr %"std/json:Object", ptr %t81, i32 0, i32 1
  %t84 = load { i64, ptr }, ptr %t83, !tbaa !27
  store { i64, ptr } %t84, ptr %l48, !tbaa !27
  %t85 = load i64, ptr %l8, !tbaa !24
  %t87 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !27
  %t89 = getelementptr ptr, ptr %t88, i64 %t85
  %t90 = load ptr, ptr %t89, !tbaa !39
  store ptr %t90, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  br label %bb21
bb21:
  %t93 = load i64, ptr %l7, !tbaa !24
  %t95 = add i64 %t93, 1
  store i64 %t95, ptr %l7, !tbaa !24
  br label %bb13
bb22:
  br label %bb28
bb23:
  br i1 true, label %bb24, label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  call void @__olang_check_failed(ptr @olang_loc_76a363c24681a0e6_dedc35590a663c5a)
  unreachable
bb28:
  store ptr null, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { i64, ptr } @compiler_2fbindgen_2enoReturnOf(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l3 = alloca i1
  %l4 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t2 = load { i64, ptr }, ptr @G_2ecompiler_2fbindgen_2eNoReturnAttr, !tbaa !27
  %t3 = load ptr, ptr @__olang_prog_scope
  %t6 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %t3, { i64, ptr } %t1, { i64, ptr } %t2)
  store i1 %t6, ptr %l3
  br label %bb1
bb1:
  %t7 = load i1, ptr %l3, !tbaa !21
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t8 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t8, ptr %l4, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 0
  %t12 = load { i64, ptr }, ptr @G_2ecompiler_2fbindgen_2eNoReturnAttr, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t12, 0
  %t17 = sub i64 %t11, %t14
  store i64 %t17, ptr %l9, !tbaa !24
  %t18 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t18, 0
  store i64 %t19, ptr %l10, !tbaa !24
  %t20 = icmp sge i64 0, 0
  br i1 %t20, label %bb4, label %bb5
bb3:
  br label %bb10
bb4:
  %t22 = load i64, ptr %l9, !tbaa !24
  %t23 = icmp sle i64 0, %t22
  br i1 %t23, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_98d0b4f031acf4f7_7a1fbeedfef40c4b)
  unreachable
bb6:
  %t25 = load i64, ptr %l9, !tbaa !24
  %t26 = load i64, ptr %l10, !tbaa !24
  %t27 = icmp sle i64 %t25, %t26
  br i1 %t27, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_98d0b4f031acf4f7_7a1fbeedfef40c4b)
  unreachable
bb8:
  %t29 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = load i64, ptr %l9, !tbaa !24
  %t32 = getelementptr i8, ptr %t30, i64 0
  %t33 = sub i64 %t31, 0
  %t34 = insertvalue { i64, ptr } undef, i64 %t33, 0
  %t35 = insertvalue { i64, ptr } %t34, ptr %t32, 1
  %t37 = extractvalue { i64, ptr } %t35, 1
  %t38 = extractvalue { i64, ptr } %t35, 0
  %t39 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t38)
  call void @olang_textcopy(ptr %t39, ptr %t37, i64 %t38)
  %t40 = insertvalue { i64, ptr } undef, i64 %t38, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t39, 1
  store { i64, ptr } %t41, ptr %rv
  br label %ret
bb9:
  call void @__olang_check_failed(ptr @olang_loc_98d0b4f031acf4f7_7a1fbeedfef40c4b)
  unreachable
bb10:
  %t43 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t43, 1
  %t46 = extractvalue { i64, ptr } %t43, 0
  %t47 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t46)
  call void @olang_textcopy(ptr %t47, ptr %t45, i64 %t46)
  %t48 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t49 = insertvalue { i64, ptr } %t48, ptr %t47, 1
  store { i64, ptr } %t49, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2fbindgen_2enumBits(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca i1
  %l3 = alloca i1
  %l5 = alloca i1
  %l8 = alloca i1
  %l14 = alloca i64
  %l15 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca i64
  %l23 = alloca { i64, ptr }
  %l24 = alloca i64
  %l25 = alloca i32
  %l26 = alloca i64
  %l27 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d229, i32 0, i32 1) })
  store i1 %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load i1, ptr %l2, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb5
bb3:
  %t5 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t7 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t5, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d230, i32 0, i32 1) })
  store i1 %t7, ptr %l5
  br label %bb4
bb4:
  %t8 = load i1, ptr %l5, !tbaa !21
  store i1 %t8, ptr %l3, !tbaa !21
  br label %bb5
bb5:
  %t9 = load i1, ptr %l3, !tbaa !21
  br i1 %t9, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  store i64 8, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t11 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t13 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t11, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d231, i32 0, i32 1) })
  store i1 %t13, ptr %l8
  br label %bb9
bb9:
  %t14 = load i1, ptr %l8, !tbaa !21
  br i1 %t14, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s0)
  store i64 16, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t16 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t16, 0
  %t20 = icmp slt i64 %t18, 2
  br i1 %t20, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s0)
  store i64 0, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t23 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t23, ptr %l15, !tbaa !27
  %t24 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t27 = extractvalue { i64, ptr } %t24, 0
  store i64 %t27, ptr %l18, !tbaa !24
  %t28 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t28, 0
  store i64 %t29, ptr %l19, !tbaa !24
  %t30 = icmp sge i64 1, 0
  br i1 %t30, label %bb16, label %bb17
bb16:
  %t32 = load i64, ptr %l18, !tbaa !24
  %t33 = icmp sle i64 1, %t32
  br i1 %t33, label %bb18, label %bb19
bb17:
  call void @__olang_check_failed(ptr @olang_loc_b9ed3bac91748577_8bd4ae03d42ae063)
  unreachable
bb18:
  %t35 = load i64, ptr %l18, !tbaa !24
  %t36 = load i64, ptr %l19, !tbaa !24
  %t37 = icmp sle i64 %t35, %t36
  br i1 %t37, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_b9ed3bac91748577_8bd4ae03d42ae063)
  unreachable
bb20:
  %t39 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !27
  %t41 = load i64, ptr %l18, !tbaa !24
  %t42 = getelementptr i8, ptr %t40, i64 1
  %t43 = sub i64 %t41, 1
  %t44 = insertvalue { i64, ptr } undef, i64 %t43, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t42, 1
  store { i64, ptr } %t45, ptr %l23, !tbaa !27
  %t46 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s0, i64 10)
  %t47 = extractvalue { i32, i64 } %t46, 1
  %t48 = extractvalue { i32, i64 } %t46, 0
  store i32 %t48, ptr %l25
  %t49 = icmp ne i32 %t48, 0
  br i1 %t49, label %bb23, label %ok.50, !prof !99
ok.50:
  store i64 %t47, ptr %l24
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_b9ed3bac91748577_8bd4ae03d42ae063)
  unreachable
bb22:
  %t51 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t52 = load i64, ptr %l24, !tbaa !24
  %t53 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v0, { i64, ptr } %t51, i64 %t52)
  %t54 = extractvalue { i32, i64 } %t53, 1
  %t55 = extractvalue { i32, i64 } %t53, 0
  store i32 %t55, ptr %l27
  %t56 = icmp ne i32 %t55, 0
  br i1 %t56, label %bb26, label %ok.57, !prof !99
ok.57:
  store i64 %t54, ptr %l26
  br label %bb25
bb23:
  br label %bb24
bb24:
  store i64 0, ptr %l14, !tbaa !24
  br label %bb27
bb25:
  %t58 = load i64, ptr %l26, !tbaa !24
  store i64 %t58, ptr %l14, !tbaa !24
  br label %bb27
bb26:
  br label %bb24
bb27:
  call void @__olang_scope_close(ptr %s0)
  %t59 = load i64, ptr %l14, !tbaa !24
  store i64 %t59, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i32 @compiler_2fbindgen_2erun(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, ptr %a3) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca [2 x { i64, ptr }]
  %l7 = alloca { i64, ptr }
  %l8 = alloca %"compiler/bindgen:gen"
  %l9 = alloca { i64, ptr }
  %l10 = alloca %"std/os:Output"
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca %"std/prelude/text:StringBuilder"
  %l14 = alloca ptr
  %l15 = alloca i64
  %l16 = alloca i64
  %l18 = alloca ptr
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca ptr
  %l23 = alloca { i64, ptr }
  %l24 = alloca i64
  %l25 = alloca { i64, ptr }
  %l26 = alloca i64
  %l27 = alloca i64
  %l29 = alloca { i64, ptr }
  %l30 = alloca i64
  %l32 = alloca { i64, ptr }
  %l34 = alloca i1
  %l36 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l41 = alloca i32
  %l43 = alloca i1
  %l53 = alloca i1
  %l61 = alloca { i64, ptr }
  %l62 = alloca { i64, ptr }
  %l63 = alloca i32
  %l65 = alloca i1
  %l69 = alloca { i64, ptr }
  %l75 = alloca { i64, ptr }
  %l77 = alloca %"compiler/bindgen:gen"
  %l85 = alloca i32
  %l87 = alloca i1
  %l95 = alloca i32
  %l97 = alloca i32
  %l99 = alloca i1
  %l102 = alloca %"std/os:Output"
  %l105 = alloca { i64, ptr }
  %l106 = alloca %"std/os:Output"
  %l107 = alloca i32
  %l109 = alloca i1
  %l111 = alloca { i64, ptr }
  %l112 = alloca i32
  %l114 = alloca i32
  %l116 = alloca i1
  %l127 = alloca i32
  %l129 = alloca i32
  %l131 = alloca i1
  %l134 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l141 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l142 = alloca %"std/prelude/text:StringBuilder"
  %l148 = alloca i64
  %l150 = alloca i64
  %l156 = alloca i64
  %l157 = alloca ptr
  %l158 = alloca i64
  %l159 = alloca i64
  %l162 = alloca %"compiler/bindgen:cMacro"
  %l168 = alloca { i64, ptr }
  %l170 = alloca { i64, ptr }
  %l173 = alloca i32
  %l175 = alloca i1
  %l183 = alloca i32
  %l185 = alloca i32
  %l187 = alloca i1
  %l190 = alloca ptr
  %l191 = alloca ptr
  %l192 = alloca { i64, ptr }
  %l197 = alloca ptr
  %l198 = alloca i32
  %l200 = alloca i1
  %l207 = alloca i32
  %l209 = alloca i32
  %l211 = alloca i1
  %l218 = alloca { i64, ptr }
  %l226 = alloca { i64, ptr }
  %l230 = alloca { i64, ptr }
  %l232 = alloca { i64, ptr }
  %l234 = alloca i1
  %l236 = alloca i1
  %l238 = alloca i1
  %l240 = alloca i64
  %l242 = alloca i64
  %l243 = alloca i64
  %l247 = alloca { i64, ptr }
  %l248 = alloca i64
  %l249 = alloca i32
  %l250 = alloca i64
  %l251 = alloca i32
  %l254 = alloca i1
  %l255 = alloca i64
  %l257 = alloca i64
  %l260 = alloca { i64, ptr }
  %l268 = alloca { i64, ptr }
  %l272 = alloca { i64, ptr }
  %l274 = alloca i1
  %l275 = alloca i64
  %l276 = alloca { i64, ptr }
  %l277 = alloca i64
  %l278 = alloca i32
  %l279 = alloca i64
  %l280 = alloca i32
  %l281 = alloca ptr
  %l282 = alloca ptr
  %l285 = alloca i64
  %l286 = alloca %"compiler/bindgen:cMacro"
  %l294 = alloca ptr
  %l295 = alloca { i64, ptr }
  %l301 = alloca i32
  %l303 = alloca i1
  %l310 = alloca i32
  %l312 = alloca i32
  %l314 = alloca i1
  %l321 = alloca { i64, ptr }
  %l323 = alloca i1
  %l325 = alloca i32
  %l327 = alloca i1
  %l330 = alloca i32
  %l332 = alloca i32
  %l334 = alloca i1
  %l337 = alloca i32
  %l339 = alloca i32
  %l341 = alloca i1
  %l346 = alloca i32
  %l348 = alloca i1
  %l356 = alloca i32
  %l358 = alloca i32
  %l360 = alloca i1
  %l363 = alloca i32
  %l365 = alloca i32
  %l367 = alloca i1
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s25 = alloca %olang.scope
  %s28 = alloca %olang.scope
  %s33 = alloca %olang.scope
  %s38 = alloca %olang.scope
  %s39 = alloca %olang.scope
  %s42 = alloca %olang.scope
  %s43 = alloca %olang.scope
  %s48 = alloca %olang.scope
  %s62 = alloca %olang.scope
  %rv = alloca i32
  %t119 = alloca %"compiler/bindgen:gen", align 8
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d232, i32 0, i32 1) })
  store i1 %t3, ptr %l34
  br label %bb1
bb1:
  %t4 = load i1, ptr %l34, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t5 = load ptr, ptr %l3, !tbaa !29
  store { i64, ptr } { i64 53, ptr getelementptr inbounds (<{ i64, [53 x i8] }>, ptr @.d233, i32 0, i32 1) }, ptr %l36, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l36, !tbaa !27
  call void @std_2fio_2estd_2fio_3aWriter_2eWrite(ptr %v3, ptr %s1, ptr %t5, { i64, ptr } %t7)
  br label %bb4
bb3:
  br label %bb5
bb4:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  store i32 2, ptr %rv
  br label %ret
bb5:
  %t9 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t11 = call { i32, { i64, ptr } } @std_2fos_2eRealPath(ptr %v0, ptr %s0, { i64, ptr } %t9)
  %t12 = extractvalue { i32, { i64, ptr } } %t11, 1
  %t13 = extractvalue { i32, { i64, ptr } } %t11, 0
  store i32 %t13, ptr %l41
  %t14 = icmp ne i32 %t13, 0
  br i1 %t14, label %bb7, label %ok.15, !prof !99
ok.15:
  store { i64, ptr } %t12, ptr %l40
  br label %bb6
bb6:
  %t16 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t16, ptr %l38, !tbaa !27
  br label %bb12
bb7:
  %t17 = load i32, ptr %l41, !tbaa !23
  %t18 = ashr i32 %t17, 16
  %t20 = icmp eq i32 %t18, 1
  store i1 %t20, ptr %l43, !tbaa !21
  %t21 = load i32, ptr %l41, !tbaa !23
  %t22 = ashr i32 %t21, 16
  %t24 = icmp eq i32 %t22, 1
  br i1 %t24, label %bb8, label %bb9
bb8:
  call void @__olang_errpay_pop()
  br label %bb9
bb9:
  br label %bb10
bb10:
  store %olang.scope zeroinitializer, ptr %s2
  %t26 = load ptr, ptr %l3, !tbaa !29
  %t27 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t28 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d234, i32 0, i32 1) }, 1
  %t29 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d234, i32 0, i32 1) }, 0
  %t31 = extractvalue { i64, ptr } %t27, 1
  %t32 = extractvalue { i64, ptr } %t27, 0
  %t33 = add i64 %t29, %t32
  %t34 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d235, i32 0, i32 1) }, 1
  %t35 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d235, i32 0, i32 1) }, 0
  %t36 = add i64 %t33, %t35
  %t37 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t36)
  call void @olang_textcopy(ptr %t37, ptr %t28, i64 %t29)
  %t38 = getelementptr i8, ptr %t37, i64 %t29
  call void @olang_textcopy(ptr %t38, ptr %t31, i64 %t32)
  %t39 = getelementptr i8, ptr %t38, i64 %t32
  call void @olang_textcopy(ptr %t39, ptr %t34, i64 %t35)
  %t40 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t37, 1
  %t44 = extractvalue { i64, ptr } %t41, 0
  %t45 = extractvalue { i64, ptr } %t41, 1
  %t46 = mul i64 %t44, 1
  %t47 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t46)
  call void @llvm.memcpy.p0.p0.i64(ptr %t47, ptr %t45, i64 %t46, i1 false)
  %t48 = insertvalue { i64, ptr } undef, i64 %t44, 0
  %t49 = insertvalue { i64, ptr } %t48, ptr %t47, 1
  call void @std_2fio_2estd_2fio_3aWriter_2eWrite(ptr %v3, ptr %s2, ptr %t26, { i64, ptr } %t49)
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  store i32 2, ptr %rv
  br label %ret
bb12:
  %t53 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t53, ptr %l4, !tbaa !27
  %t54 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t56 = call i1 @std_2fos_2eExists(ptr %s0, { i64, ptr } %t54)
  store i1 %t56, ptr %l53
  br label %bb13
bb13:
  %t57 = load i1, ptr %l53, !tbaa !21
  %t58 = xor i1 %t57, true
  br i1 %t58, label %bb14, label %bb15
bb14:
  store %olang.scope zeroinitializer, ptr %s4
  %t60 = load ptr, ptr %l3, !tbaa !29
  %t61 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t62 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d236, i32 0, i32 1) }, 1
  %t63 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d236, i32 0, i32 1) }, 0
  %t65 = extractvalue { i64, ptr } %t61, 1
  %t66 = extractvalue { i64, ptr } %t61, 0
  %t67 = add i64 %t63, %t66
  %t68 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d237, i32 0, i32 1) }, 1
  %t69 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d237, i32 0, i32 1) }, 0
  %t70 = add i64 %t67, %t69
  %t71 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t70)
  call void @olang_textcopy(ptr %t71, ptr %t62, i64 %t63)
  %t72 = getelementptr i8, ptr %t71, i64 %t63
  call void @olang_textcopy(ptr %t72, ptr %t65, i64 %t66)
  %t73 = getelementptr i8, ptr %t72, i64 %t66
  call void @olang_textcopy(ptr %t73, ptr %t68, i64 %t69)
  %t74 = insertvalue { i64, ptr } undef, i64 %t70, 0
  %t75 = insertvalue { i64, ptr } %t74, ptr %t71, 1
  %t78 = extractvalue { i64, ptr } %t75, 0
  %t79 = extractvalue { i64, ptr } %t75, 1
  %t80 = mul i64 %t78, 1
  %t81 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t80)
  call void @llvm.memcpy.p0.p0.i64(ptr %t81, ptr %t79, i64 %t80, i1 false)
  %t82 = insertvalue { i64, ptr } undef, i64 %t78, 0
  %t83 = insertvalue { i64, ptr } %t82, ptr %t81, 1
  call void @std_2fio_2estd_2fio_3aWriter_2eWrite(ptr %v3, ptr %s4, ptr %t60, { i64, ptr } %t83)
  br label %bb16
bb15:
  br label %bb17
bb16:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  store i32 2, ptr %rv
  br label %ret
bb17:
  %t87 = call { i32, { i64, ptr } } @std_2fos_2eMkTemp(ptr %s0, ptr %s0, ptr %s0, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d238, i32 0, i32 1) }, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d239, i32 0, i32 1) })
  %t88 = extractvalue { i32, { i64, ptr } } %t87, 1
  %t89 = extractvalue { i32, { i64, ptr } } %t87, 0
  store i32 %t89, ptr %l63
  %t90 = icmp ne i32 %t89, 0
  br i1 %t90, label %bb19, label %ok.91, !prof !99
ok.91:
  store { i64, ptr } %t88, ptr %l62
  br label %bb18
bb18:
  %t92 = load { i64, ptr }, ptr %l62, !tbaa !27
  store { i64, ptr } %t92, ptr %l61, !tbaa !27
  br label %bb24
bb19:
  %t93 = load i32, ptr %l63, !tbaa !23
  %t94 = ashr i32 %t93, 16
  %t96 = icmp eq i32 %t94, 1
  store i1 %t96, ptr %l65, !tbaa !21
  %t97 = load i32, ptr %l63, !tbaa !23
  %t98 = ashr i32 %t97, 16
  %t100 = icmp eq i32 %t98, 1
  br i1 %t100, label %bb20, label %bb21
bb20:
  call void @__olang_errpay_pop()
  br label %bb21
bb21:
  br label %bb22
bb22:
  store %olang.scope zeroinitializer, ptr %s6
  %t102 = load ptr, ptr %l3, !tbaa !29
  store { i64, ptr } { i64 50, ptr getelementptr inbounds (<{ i64, [50 x i8] }>, ptr @.d240, i32 0, i32 1) }, ptr %l69, !tbaa !27
  %t104 = load { i64, ptr }, ptr %l69, !tbaa !27
  call void @std_2fio_2estd_2fio_3aWriter_2eWrite(ptr %v3, ptr %s6, ptr %t102, { i64, ptr } %t104)
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  store i32 2, ptr %rv
  br label %ret
bb24:
  %t106 = load { i64, ptr }, ptr %l61, !tbaa !27
  store { i64, ptr } %t106, ptr %l5, !tbaa !27
  %t107 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t109 = insertvalue [2 x { i64, ptr }] undef, { i64, ptr } %t107, 0
  %t110 = insertvalue [2 x { i64, ptr }] %t109, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d241, i32 0, i32 1) }, 1
  store [2 x { i64, ptr }] %t110, ptr %l6
  %t113 = insertvalue { i64, ptr } undef, i64 2, 0
  %t114 = insertvalue { i64, ptr } %t113, ptr %l6, 1
  %t116 = call { i64, ptr } @std_2ffilepath_2eJoin(ptr %s0, ptr %s0, { i64, ptr } %t114)
  store { i64, ptr } %t116, ptr %l75
  br label %bb25
bb25:
  %t117 = load { i64, ptr }, ptr %l75, !tbaa !27
  store { i64, ptr } %t117, ptr %l7, !tbaa !27
  %t118 = load { i64, ptr }, ptr %l4, !tbaa !27
  call void @compiler_2fbindgen_3agen_2ector(ptr %t119, ptr %s0, ptr %s0, { i64, ptr } %t118)
  call void @llvm.memmove.p0.p0.i64(ptr %l77, ptr %t119, i64 1128, i1 false)
  br label %bb26
bb26:
  call void @llvm.memmove.p0.p0.i64(ptr %l8, ptr %l77, i64 1128, i1 false)
  %t121 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t122 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d242, i32 0, i32 1) }, 1
  %t123 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d242, i32 0, i32 1) }, 0
  %t125 = extractvalue { i64, ptr } %t121, 1
  %t126 = extractvalue { i64, ptr } %t121, 0
  %t127 = add i64 %t123, %t126
  %t128 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d243, i32 0, i32 1) }, 1
  %t129 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d243, i32 0, i32 1) }, 0
  %t130 = add i64 %t127, %t129
  %t131 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t130)
  call void @olang_textcopy(ptr %t131, ptr %t122, i64 %t123)
  %t132 = getelementptr i8, ptr %t131, i64 %t123
  call void @olang_textcopy(ptr %t132, ptr %t125, i64 %t126)
  %t133 = getelementptr i8, ptr %t132, i64 %t126
  call void @olang_textcopy(ptr %t133, ptr %t128, i64 %t129)
  %t134 = insertvalue { i64, ptr } undef, i64 %t130, 0
  %t135 = insertvalue { i64, ptr } %t134, ptr %t131, 1
  store { i64, ptr } %t135, ptr %l9, !tbaa !27
  %t137 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t138 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t140 = extractvalue { i64, ptr } %t138, 1
  %t141 = extractvalue { i64, ptr } %t138, 0
  %t142 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d244, i32 0, i32 1) }, 1
  %t143 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d244, i32 0, i32 1) }, 0
  %t144 = add i64 %t141, %t143
  %t145 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t144)
  call void @olang_textcopy(ptr %t145, ptr %t140, i64 %t141)
  %t146 = getelementptr i8, ptr %t145, i64 %t141
  call void @olang_textcopy(ptr %t146, ptr %t142, i64 %t143)
  %t147 = insertvalue { i64, ptr } undef, i64 %t144, 0
  %t148 = insertvalue { i64, ptr } %t147, ptr %t145, 1
  %t151 = extractvalue { i64, ptr } %t148, 0
  %t152 = extractvalue { i64, ptr } %t148, 1
  %t153 = mul i64 %t151, 1
  %t154 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t153)
  call void @llvm.memcpy.p0.p0.i64(ptr %t154, ptr %t152, i64 %t153, i1 false)
  %t155 = insertvalue { i64, ptr } undef, i64 %t151, 0
  %t156 = insertvalue { i64, ptr } %t155, ptr %t154, 1
  %t159 = call i32 @std_2fos_2eWriteFile(ptr %s0, ptr %s0, { i64, ptr } %t137, { i64, ptr } %t156)
  store i32 %t159, ptr %l85
  %t160 = icmp ne i32 %t159, 0
  br i1 %t160, label %bb28, label %ok.161, !prof !99
ok.161:
  br label %bb27
bb27:
  br label %bb39
bb28:
  %t162 = load i32, ptr %l85, !tbaa !23
  %t163 = ashr i32 %t162, 16
  %t165 = icmp eq i32 %t163, 1
  store i1 %t165, ptr %l87, !tbaa !21
  %t166 = load i32, ptr %l85, !tbaa !23
  %t167 = ashr i32 %t166, 16
  %t169 = icmp eq i32 %t167, 1
  br i1 %t169, label %bb29, label %bb30
bb29:
  call void @__olang_errpay_pop()
  br label %bb30
bb30:
  br label %bb31
bb31:
  store %olang.scope zeroinitializer, ptr %s9
  %t171 = load ptr, ptr %l3, !tbaa !29
  %t172 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t173 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d245, i32 0, i32 1) }, 1
  %t174 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d245, i32 0, i32 1) }, 0
  %t176 = extractvalue { i64, ptr } %t172, 1
  %t177 = extractvalue { i64, ptr } %t172, 0
  %t178 = add i64 %t174, %t177
  %t179 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d246, i32 0, i32 1) }, 1
  %t180 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d246, i32 0, i32 1) }, 0
  %t181 = add i64 %t178, %t180
  %t182 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t181)
  call void @olang_textcopy(ptr %t182, ptr %t173, i64 %t174)
  %t183 = getelementptr i8, ptr %t182, i64 %t174
  call void @olang_textcopy(ptr %t183, ptr %t176, i64 %t177)
  %t184 = getelementptr i8, ptr %t183, i64 %t177
  call void @olang_textcopy(ptr %t184, ptr %t179, i64 %t180)
  %t185 = insertvalue { i64, ptr } undef, i64 %t181, 0
  %t186 = insertvalue { i64, ptr } %t185, ptr %t182, 1
  %t189 = extractvalue { i64, ptr } %t186, 0
  %t190 = extractvalue { i64, ptr } %t186, 1
  %t191 = mul i64 %t189, 1
  %t192 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t191)
  call void @llvm.memcpy.p0.p0.i64(ptr %t192, ptr %t190, i64 %t191, i1 false)
  %t193 = insertvalue { i64, ptr } undef, i64 %t189, 0
  %t194 = insertvalue { i64, ptr } %t193, ptr %t192, 1
  call void @std_2fio_2estd_2fio_3aWriter_2eWrite(ptr %v3, ptr %s9, ptr %t171, { i64, ptr } %t194)
  br label %bb32
bb32:
  store i32 2, ptr %l95, !tbaa !23
  call void @__olang_scope_close(ptr %s9)
  %t197 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t199 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t197)
  store i32 %t199, ptr %l97
  %t200 = icmp ne i32 %t199, 0
  br i1 %t200, label %bb34, label %ok.201, !prof !99
ok.201:
  br label %bb33
bb33:
  br label %bb38
bb34:
  %t202 = load i32, ptr %l97, !tbaa !23
  %t203 = ashr i32 %t202, 16
  %t205 = icmp eq i32 %t203, 1
  store i1 %t205, ptr %l99, !tbaa !21
  %t206 = load i32, ptr %l97, !tbaa !23
  %t207 = ashr i32 %t206, 16
  %t209 = icmp eq i32 %t207, 1
  br i1 %t209, label %bb35, label %bb36
bb35:
  call void @__olang_errpay_pop()
  br label %bb36
bb36:
  br label %bb37
bb37:
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s0)
  %t211 = load i32, ptr %l95, !tbaa !23
  store i32 %t211, ptr %rv
  br label %ret
bb39:
  %t212 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t213 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t214 = mul i64 7, 16
  %t215 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t214)
  %t216 = insertvalue { i64, ptr } undef, i64 7, 0
  %t217 = insertvalue { i64, ptr } %t216, ptr %t215, 1
  store { i64, ptr } %t217, ptr %l105, !tbaa !27
  %t219 = getelementptr { i64, ptr }, ptr %l105, i32 0, i32 1
  %t220 = load ptr, ptr %t219, !tbaa !27
  %t221 = getelementptr { i64, ptr }, ptr %t220, i64 0
  store { i64, ptr } %t212, ptr %t221, !tbaa !37
  %t222 = getelementptr { i64, ptr }, ptr %l105, i32 0, i32 1
  %t223 = load ptr, ptr %t222, !tbaa !27
  %t224 = getelementptr { i64, ptr }, ptr %t223, i64 1
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d247, i32 0, i32 1) }, ptr %t224, !tbaa !37
  %t225 = getelementptr { i64, ptr }, ptr %l105, i32 0, i32 1
  %t226 = load ptr, ptr %t225, !tbaa !27
  %t227 = getelementptr { i64, ptr }, ptr %t226, i64 2
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d248, i32 0, i32 1) }, ptr %t227, !tbaa !37
  %t228 = getelementptr { i64, ptr }, ptr %l105, i32 0, i32 1
  %t229 = load ptr, ptr %t228, !tbaa !27
  %t230 = getelementptr { i64, ptr }, ptr %t229, i64 3
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d249, i32 0, i32 1) }, ptr %t230, !tbaa !37
  %t231 = getelementptr { i64, ptr }, ptr %l105, i32 0, i32 1
  %t232 = load ptr, ptr %t231, !tbaa !27
  %t233 = getelementptr { i64, ptr }, ptr %t232, i64 4
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d250, i32 0, i32 1) }, ptr %t233, !tbaa !37
  %t234 = getelementptr { i64, ptr }, ptr %l105, i32 0, i32 1
  %t235 = load ptr, ptr %t234, !tbaa !27
  %t236 = getelementptr { i64, ptr }, ptr %t235, i64 5
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d251, i32 0, i32 1) }, ptr %t236, !tbaa !37
  %t238 = getelementptr { i64, ptr }, ptr %l105, i32 0, i32 1
  %t239 = load ptr, ptr %t238, !tbaa !27
  %t240 = getelementptr { i64, ptr }, ptr %t239, i64 6
  store { i64, ptr } %t213, ptr %t240, !tbaa !37
  %t241 = load { i64, ptr }, ptr %l105, !tbaa !27
  %t242 = call { i32, %"std/os:Output" } @compiler_2fbindgen_2eclangSays(ptr %s0, ptr %s0, { i64, ptr } %t241)
  %t243 = extractvalue { i32, %"std/os:Output" } %t242, 1
  %t244 = extractvalue { i32, %"std/os:Output" } %t242, 0
  store i32 %t244, ptr %l107
  %t245 = icmp ne i32 %t244, 0
  br i1 %t245, label %bb41, label %ok.246, !prof !99
ok.246:
  store %"std/os:Output" %t243, ptr %l106
  br label %bb40
bb40:
  %t247 = load %"std/os:Output", ptr %l106
  store %"std/os:Output" %t247, ptr %l102
  br label %bb50
bb41:
  %t248 = load i32, ptr %l107, !tbaa !23
  %t249 = ashr i32 %t248, 16
  %t251 = icmp eq i32 %t249, 1
  store i1 %t251, ptr %l109, !tbaa !21
  br label %bb42
bb42:
  store %olang.scope zeroinitializer, ptr %s14
  %t252 = load ptr, ptr %l3, !tbaa !29
  store { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d252, i32 0, i32 1) }, ptr %l111, !tbaa !27
  %t254 = load { i64, ptr }, ptr %l111, !tbaa !27
  call void @std_2fio_2estd_2fio_3aWriter_2eWrite(ptr %v3, ptr %s14, ptr %t252, { i64, ptr } %t254)
  br label %bb43
bb43:
  store i32 2, ptr %l112, !tbaa !23
  call void @__olang_scope_close(ptr %s14)
  %t255 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t257 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t255)
  store i32 %t257, ptr %l114
  %t258 = icmp ne i32 %t257, 0
  br i1 %t258, label %bb45, label %ok.259, !prof !99
ok.259:
  br label %bb44
bb44:
  br label %bb49
bb45:
  %t260 = load i32, ptr %l114, !tbaa !23
  %t261 = ashr i32 %t260, 16
  %t263 = icmp eq i32 %t261, 1
  store i1 %t263, ptr %l116, !tbaa !21
  %t264 = load i32, ptr %l114, !tbaa !23
  %t265 = ashr i32 %t264, 16
  %t267 = icmp eq i32 %t265, 1
  br i1 %t267, label %bb46, label %bb47
bb46:
  call void @__olang_errpay_pop()
  br label %bb47
bb47:
  br label %bb48
bb48:
  br label %bb49
bb49:
  call void @__olang_scope_close(ptr %s0)
  %t269 = load i32, ptr %l112, !tbaa !23
  store i32 %t269, ptr %rv
  br label %ret
bb50:
  %t270 = load %"std/os:Output", ptr %l102
  store %"std/os:Output" %t270, ptr %l10
  %t271 = getelementptr %"std/os:Output", ptr %l10, i32 0, i32 0
  %t272 = load i32, ptr %t271, !tbaa !23
  %t274 = icmp ne i32 %t272, 0
  br i1 %t274, label %bb51, label %bb52
bb51:
  store %olang.scope zeroinitializer, ptr %s18
  %t276 = load ptr, ptr %l3, !tbaa !29
  %t277 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t278 = getelementptr %"std/os:Output", ptr %l10, i32 0, i32 2
  %t279 = load { i64, ptr }, ptr %t278, !tbaa !27
  %t280 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d253, i32 0, i32 1) }, 1
  %t281 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d253, i32 0, i32 1) }, 0
  %t283 = extractvalue { i64, ptr } %t277, 1
  %t284 = extractvalue { i64, ptr } %t277, 0
  %t285 = add i64 %t281, %t284
  %t286 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d254, i32 0, i32 1) }, 1
  %t287 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d254, i32 0, i32 1) }, 0
  %t288 = add i64 %t285, %t287
  %t290 = extractvalue { i64, ptr } %t279, 1
  %t291 = extractvalue { i64, ptr } %t279, 0
  %t292 = add i64 %t288, %t291
  %t293 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t292)
  call void @olang_textcopy(ptr %t293, ptr %t280, i64 %t281)
  %t294 = getelementptr i8, ptr %t293, i64 %t281
  call void @olang_textcopy(ptr %t294, ptr %t283, i64 %t284)
  %t295 = getelementptr i8, ptr %t294, i64 %t284
  call void @olang_textcopy(ptr %t295, ptr %t286, i64 %t287)
  %t296 = getelementptr i8, ptr %t295, i64 %t287
  call void @olang_textcopy(ptr %t296, ptr %t290, i64 %t291)
  %t297 = insertvalue { i64, ptr } undef, i64 %t292, 0
  %t298 = insertvalue { i64, ptr } %t297, ptr %t293, 1
  %t301 = extractvalue { i64, ptr } %t298, 0
  %t302 = extractvalue { i64, ptr } %t298, 1
  %t303 = mul i64 %t301, 1
  %t304 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t303)
  call void @llvm.memcpy.p0.p0.i64(ptr %t304, ptr %t302, i64 %t303, i1 false)
  %t305 = insertvalue { i64, ptr } undef, i64 %t301, 0
  %t306 = insertvalue { i64, ptr } %t305, ptr %t304, 1
  call void @std_2fio_2estd_2fio_3aWriter_2eWrite(ptr %v3, ptr %s18, ptr %t276, { i64, ptr } %t306)
  br label %bb53
bb52:
  br label %bb60
bb53:
  store i32 1, ptr %l127, !tbaa !23
  call void @__olang_scope_close(ptr %s18)
  %t309 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t311 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t309)
  store i32 %t311, ptr %l129
  %t312 = icmp ne i32 %t311, 0
  br i1 %t312, label %bb55, label %ok.313, !prof !99
ok.313:
  br label %bb54
bb54:
  br label %bb59
bb55:
  %t314 = load i32, ptr %l129, !tbaa !23
  %t315 = ashr i32 %t314, 16
  %t317 = icmp eq i32 %t315, 1
  store i1 %t317, ptr %l131, !tbaa !21
  %t318 = load i32, ptr %l129, !tbaa !23
  %t319 = ashr i32 %t318, 16
  %t321 = icmp eq i32 %t319, 1
  br i1 %t321, label %bb56, label %bb57
bb56:
  call void @__olang_errpay_pop()
  br label %bb57
bb57:
  br label %bb58
bb58:
  br label %bb59
bb59:
  call void @__olang_scope_close(ptr %s0)
  %t323 = load i32, ptr %l127, !tbaa !23
  store i32 %t323, ptr %rv
  br label %ret
bb60:
  %t324 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t324, ptr %l134
  br label %bb61
bb61:
  %t325 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l134
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t325, ptr %l11
  %t326 = getelementptr %"std/os:Output", ptr %l10, i32 0, i32 1
  %t327 = load { i64, ptr }, ptr %t326, !tbaa !27
  %t328 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t329 = load { i64, ptr }, ptr %l4, !tbaa !27
  call void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ereadMacros(ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %l8, { i64, ptr } %t327, { i64, ptr } %t328, { i64, ptr } %t329, ptr %l11)
  br label %bb62
bb62:
  %t336 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eintMacros(ptr %s0, ptr %s0, ptr %l8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t336, ptr %l141
  br label %bb63
bb63:
  %t337 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l141
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t337, ptr %l12
  %t338 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t338, ptr %l142
  br label %bb64
bb64:
  %t339 = load %"std/prelude/text:StringBuilder", ptr %l142
  store %"std/prelude/text:StringBuilder" %t339, ptr %l13
  %t340 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t342 = extractvalue { i64, ptr } %t340, 1
  %t343 = extractvalue { i64, ptr } %t340, 0
  %t344 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d255, i32 0, i32 1) }, 1
  %t345 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d255, i32 0, i32 1) }, 0
  %t346 = add i64 %t343, %t345
  %t347 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t346)
  call void @olang_textcopy(ptr %t347, ptr %t342, i64 %t343)
  %t348 = getelementptr i8, ptr %t347, i64 %t343
  call void @olang_textcopy(ptr %t348, ptr %t344, i64 %t345)
  %t349 = insertvalue { i64, ptr } undef, i64 %t346, 0
  %t350 = insertvalue { i64, ptr } %t349, ptr %t347, 1
  %t352 = extractvalue { i64, ptr } %t350, 0
  %t353 = extractvalue { i64, ptr } %t350, 1
  %t354 = mul i64 %t352, 1
  %t355 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t354)
  call void @llvm.memcpy.p0.p0.i64(ptr %t355, ptr %t353, i64 %t354, i1 false)
  %t356 = insertvalue { i64, ptr } undef, i64 %t352, 0
  %t357 = insertvalue { i64, ptr } %t356, ptr %t355, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l13, { i64, ptr } %t357)
  br label %bb65
bb65:
  store ptr %l12, ptr %l14, !tbaa !29
  store i64 0, ptr %l15, !tbaa !24
  br label %bb66
bb66:
  store %olang.scope zeroinitializer, ptr %s25
  %t361 = load i64, ptr %l15, !tbaa !24
  store i64 %t361, ptr %l148, !tbaa !24
  %t362 = load ptr, ptr %l14, !tbaa !29
  %t364 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t362)
  store i64 %t364, ptr %l150
  br label %bb67
bb67:
  %t365 = load i64, ptr %l148, !tbaa !24
  %t366 = load i64, ptr %l150, !tbaa !24
  %t367 = icmp slt i64 %t365, %t366
  %t369 = xor i1 %t367, true
  br i1 %t369, label %bb68, label %bb69
bb68:
  call void @__olang_scope_close(ptr %s25)
  br label %bb75
bb69:
  br label %bb70
bb70:
  %t371 = load i64, ptr %l15, !tbaa !24
  store i64 %t371, ptr %l16, !tbaa !24
  %t373 = load ptr, ptr %l14, !tbaa !29
  %t374 = load i64, ptr %l15, !tbaa !24
  %t377 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t373, i64 %t374)
  store i64 %t377, ptr %l156
  br label %bb71
bb71:
  %t378 = load i64, ptr %l156, !tbaa !24
  store ptr %l13, ptr %l157, !tbaa !29
  %t379 = load i64, ptr %l16, !tbaa !24
  store i64 %t379, ptr %l158, !tbaa !24
  %t380 = load i64, ptr %l16, !tbaa !24
  store i64 %t380, ptr %l159, !tbaa !24
  %t381 = getelementptr %"compiler/bindgen:gen", ptr %l8, i32 0, i32 12
  %t385 = call %"compiler/bindgen:cMacro" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acMacro_3e_2eAt_3ccompiler_2fbindgen_3acMacro_3e(ptr %s0, ptr %s0, ptr %t381, i64 %t378)
  store %"compiler/bindgen:cMacro" %t385, ptr %l162
  br label %bb72
bb72:
  %t386 = getelementptr %"compiler/bindgen:cMacro", ptr %l162, i32 0, i32 0
  %t387 = load { i64, ptr }, ptr %t386, !tbaa !27
  %t388 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d256, i32 0, i32 1) }, 1
  %t389 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d256, i32 0, i32 1) }, 0
  %t390 = load i64, ptr %l158, !tbaa !24
  %t391 = call i64 @__olang_fmt_i64(ptr null, i64 %t390)
  %t392 = add i64 %t389, %t391
  %t393 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d257, i32 0, i32 1) }, 1
  %t394 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d257, i32 0, i32 1) }, 0
  %t395 = add i64 %t392, %t394
  %t396 = load i64, ptr %l159, !tbaa !24
  %t397 = call i64 @__olang_fmt_i64(ptr null, i64 %t396)
  %t398 = add i64 %t395, %t397
  %t399 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d258, i32 0, i32 1) }, 1
  %t400 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d258, i32 0, i32 1) }, 0
  %t401 = add i64 %t398, %t400
  %t403 = extractvalue { i64, ptr } %t387, 1
  %t404 = extractvalue { i64, ptr } %t387, 0
  %t405 = add i64 %t401, %t404
  %t406 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d259, i32 0, i32 1) }, 1
  %t407 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d259, i32 0, i32 1) }, 0
  %t408 = add i64 %t405, %t407
  %t409 = call ptr @__olang_scope_alloc(ptr %s25, i64 %t408)
  call void @olang_textcopy(ptr %t409, ptr %t388, i64 %t389)
  %t410 = getelementptr i8, ptr %t409, i64 %t389
  %t411 = call i64 @__olang_fmt_i64(ptr %t410, i64 %t390)
  %t412 = getelementptr i8, ptr %t410, i64 %t391
  call void @olang_textcopy(ptr %t412, ptr %t393, i64 %t394)
  %t413 = getelementptr i8, ptr %t412, i64 %t394
  %t414 = call i64 @__olang_fmt_i64(ptr %t413, i64 %t396)
  %t415 = getelementptr i8, ptr %t413, i64 %t397
  call void @olang_textcopy(ptr %t415, ptr %t399, i64 %t400)
  %t416 = getelementptr i8, ptr %t415, i64 %t400
  call void @olang_textcopy(ptr %t416, ptr %t403, i64 %t404)
  %t417 = getelementptr i8, ptr %t416, i64 %t404
  call void @olang_textcopy(ptr %t417, ptr %t406, i64 %t407)
  %t418 = insertvalue { i64, ptr } undef, i64 %t408, 0
  %t419 = insertvalue { i64, ptr } %t418, ptr %t409, 1
  %t421 = extractvalue { i64, ptr } %t419, 0
  %t422 = extractvalue { i64, ptr } %t419, 1
  %t423 = mul i64 %t421, 1
  %t424 = call ptr @__olang_scope_alloc(ptr %s25, i64 %t423)
  call void @llvm.memcpy.p0.p0.i64(ptr %t424, ptr %t422, i64 %t423, i1 false)
  %t425 = insertvalue { i64, ptr } undef, i64 %t421, 0
  %t426 = insertvalue { i64, ptr } %t425, ptr %t424, 1
  %t427 = load ptr, ptr %l157, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s25, ptr %t427, { i64, ptr } %t426)
  br label %bb73
bb73:
  call void @__olang_scope_close(ptr %s25)
  br label %bb74
bb74:
  %t429 = load i64, ptr %l15, !tbaa !24
  %t431 = add i64 %t429, 1
  store i64 %t431, ptr %l15, !tbaa !24
  br label %bb66
bb75:
  %t433 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t433, ptr %l168, !tbaa !27
  %t435 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %l13)
  store { i64, ptr } %t435, ptr %l170
  br label %bb76
bb76:
  %t436 = load { i64, ptr }, ptr %l170, !tbaa !27
  %t438 = extractvalue { i64, ptr } %t436, 0
  %t439 = extractvalue { i64, ptr } %t436, 1
  %t440 = mul i64 %t438, 1
  %t441 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t440)
  call void @llvm.memcpy.p0.p0.i64(ptr %t441, ptr %t439, i64 %t440, i1 false)
  %t442 = insertvalue { i64, ptr } undef, i64 %t438, 0
  %t443 = insertvalue { i64, ptr } %t442, ptr %t441, 1
  %t444 = load { i64, ptr }, ptr %l168, !tbaa !27
  %t446 = call i32 @std_2fos_2eWriteFile(ptr %s0, ptr %s0, { i64, ptr } %t444, { i64, ptr } %t443)
  store i32 %t446, ptr %l173
  %t447 = icmp ne i32 %t446, 0
  br i1 %t447, label %bb78, label %ok.448, !prof !99
ok.448:
  br label %bb77
bb77:
  br label %bb89
bb78:
  %t449 = load i32, ptr %l173, !tbaa !23
  %t450 = ashr i32 %t449, 16
  %t452 = icmp eq i32 %t450, 1
  store i1 %t452, ptr %l175, !tbaa !21
  %t453 = load i32, ptr %l173, !tbaa !23
  %t454 = ashr i32 %t453, 16
  %t456 = icmp eq i32 %t454, 1
  br i1 %t456, label %bb79, label %bb80
bb79:
  call void @__olang_errpay_pop()
  br label %bb80
bb80:
  br label %bb81
bb81:
  store %olang.scope zeroinitializer, ptr %s28
  %t458 = load ptr, ptr %l3, !tbaa !29
  %t459 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t460 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d260, i32 0, i32 1) }, 1
  %t461 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d260, i32 0, i32 1) }, 0
  %t463 = extractvalue { i64, ptr } %t459, 1
  %t464 = extractvalue { i64, ptr } %t459, 0
  %t465 = add i64 %t461, %t464
  %t466 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d261, i32 0, i32 1) }, 1
  %t467 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d261, i32 0, i32 1) }, 0
  %t468 = add i64 %t465, %t467
  %t469 = call ptr @__olang_scope_alloc(ptr %s28, i64 %t468)
  call void @olang_textcopy(ptr %t469, ptr %t460, i64 %t461)
  %t470 = getelementptr i8, ptr %t469, i64 %t461
  call void @olang_textcopy(ptr %t470, ptr %t463, i64 %t464)
  %t471 = getelementptr i8, ptr %t470, i64 %t464
  call void @olang_textcopy(ptr %t471, ptr %t466, i64 %t467)
  %t472 = insertvalue { i64, ptr } undef, i64 %t468, 0
  %t473 = insertvalue { i64, ptr } %t472, ptr %t469, 1
  %t476 = extractvalue { i64, ptr } %t473, 0
  %t477 = extractvalue { i64, ptr } %t473, 1
  %t478 = mul i64 %t476, 1
  %t479 = call ptr @__olang_scope_alloc(ptr %s28, i64 %t478)
  call void @llvm.memcpy.p0.p0.i64(ptr %t479, ptr %t477, i64 %t478, i1 false)
  %t480 = insertvalue { i64, ptr } undef, i64 %t476, 0
  %t481 = insertvalue { i64, ptr } %t480, ptr %t479, 1
  call void @std_2fio_2estd_2fio_3aWriter_2eWrite(ptr %v3, ptr %s28, ptr %t458, { i64, ptr } %t481)
  br label %bb82
bb82:
  store i32 2, ptr %l183, !tbaa !23
  call void @__olang_scope_close(ptr %s28)
  %t484 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t486 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t484)
  store i32 %t486, ptr %l185
  %t487 = icmp ne i32 %t486, 0
  br i1 %t487, label %bb84, label %ok.488, !prof !99
ok.488:
  br label %bb83
bb83:
  br label %bb88
bb84:
  %t489 = load i32, ptr %l185, !tbaa !23
  %t490 = ashr i32 %t489, 16
  %t492 = icmp eq i32 %t490, 1
  store i1 %t492, ptr %l187, !tbaa !21
  %t493 = load i32, ptr %l185, !tbaa !23
  %t494 = ashr i32 %t493, 16
  %t496 = icmp eq i32 %t494, 1
  br i1 %t496, label %bb85, label %bb86
bb85:
  call void @__olang_errpay_pop()
  br label %bb86
bb86:
  br label %bb87
bb87:
  br label %bb88
bb88:
  call void @__olang_scope_close(ptr %s0)
  %t498 = load i32, ptr %l183, !tbaa !23
  store i32 %t498, ptr %rv
  br label %ret
bb89:
  store ptr %l8, ptr %l191, !tbaa !29
  %t499 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t499, ptr %l192, !tbaa !27
  %t500 = icmp sge i64 0, 0
  br i1 %t500, label %bb90, label %bb91
bb90:
  %t502 = icmp sle i64 0, 576460752303423487
  br i1 %t502, label %bb92, label %bb93
bb91:
  call void @__olang_check_failed(ptr @olang_loc_2d25c1a9d7803e60_587b957d3d0d6154)
  unreachable
bb92:
  %t504 = mul i64 0, 16
  %t505 = insertvalue { i64, ptr } undef, i64 0, 0
  %t506 = insertvalue { i64, ptr } %t505, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t507 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t508 = load ptr, ptr %l191, !tbaa !29
  %t509 = load { i64, ptr }, ptr %l192, !tbaa !27
  %t512 = call { i32, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2edump(ptr %s0, ptr %v2, ptr %s0, ptr %s0, ptr %s0, ptr %t508, { i64, ptr } %t509, { i64, ptr } %t506, { i64, ptr } %t507)
  %t513 = extractvalue { i32, ptr } %t512, 1
  %t514 = extractvalue { i32, ptr } %t512, 0
  store i32 %t514, ptr %l198
  %t515 = icmp ne i32 %t514, 0
  br i1 %t515, label %bb95, label %ok.516, !prof !99
ok.516:
  store ptr %t513, ptr %l197
  br label %bb94
bb93:
  call void @__olang_check_failed(ptr @olang_loc_2d25c1a9d7803e60_587b957d3d0d6154)
  unreachable
bb94:
  %t517 = load ptr, ptr %l197, !tbaa !29
  store ptr %t517, ptr %l190, !tbaa !29
  br label %bb104
bb95:
  %t518 = load i32, ptr %l198, !tbaa !23
  %t519 = ashr i32 %t518, 16
  %t521 = icmp eq i32 %t519, 1
  store i1 %t521, ptr %l200, !tbaa !21
  br label %bb96
bb96:
  store %olang.scope zeroinitializer, ptr %s33
  %t522 = load ptr, ptr %l3, !tbaa !29
  %t523 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t524 = getelementptr %"compiler/bindgen:gen", ptr %l8, i32 0, i32 25
  %t525 = load { i64, ptr }, ptr %t524, !tbaa !27
  %t526 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d262, i32 0, i32 1) }, 1
  %t527 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d262, i32 0, i32 1) }, 0
  %t529 = extractvalue { i64, ptr } %t523, 1
  %t530 = extractvalue { i64, ptr } %t523, 0
  %t531 = add i64 %t527, %t530
  %t532 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d263, i32 0, i32 1) }, 1
  %t533 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d263, i32 0, i32 1) }, 0
  %t534 = add i64 %t531, %t533
  %t536 = extractvalue { i64, ptr } %t525, 1
  %t537 = extractvalue { i64, ptr } %t525, 0
  %t538 = add i64 %t534, %t537
  %t539 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d264, i32 0, i32 1) }, 1
  %t540 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d264, i32 0, i32 1) }, 0
  %t541 = add i64 %t538, %t540
  %t542 = call ptr @__olang_scope_alloc(ptr %s33, i64 %t541)
  call void @olang_textcopy(ptr %t542, ptr %t526, i64 %t527)
  %t543 = getelementptr i8, ptr %t542, i64 %t527
  call void @olang_textcopy(ptr %t543, ptr %t529, i64 %t530)
  %t544 = getelementptr i8, ptr %t543, i64 %t530
  call void @olang_textcopy(ptr %t544, ptr %t532, i64 %t533)
  %t545 = getelementptr i8, ptr %t544, i64 %t533
  call void @olang_textcopy(ptr %t545, ptr %t536, i64 %t537)
  %t546 = getelementptr i8, ptr %t545, i64 %t537
  call void @olang_textcopy(ptr %t546, ptr %t539, i64 %t540)
  %t547 = insertvalue { i64, ptr } undef, i64 %t541, 0
  %t548 = insertvalue { i64, ptr } %t547, ptr %t542, 1
  %t551 = extractvalue { i64, ptr } %t548, 0
  %t552 = extractvalue { i64, ptr } %t548, 1
  %t553 = mul i64 %t551, 1
  %t554 = call ptr @__olang_scope_alloc(ptr %s33, i64 %t553)
  call void @llvm.memcpy.p0.p0.i64(ptr %t554, ptr %t552, i64 %t553, i1 false)
  %t555 = insertvalue { i64, ptr } undef, i64 %t551, 0
  %t556 = insertvalue { i64, ptr } %t555, ptr %t554, 1
  call void @std_2fio_2estd_2fio_3aWriter_2eWrite(ptr %v3, ptr %s33, ptr %t522, { i64, ptr } %t556)
  br label %bb97
bb97:
  store i32 1, ptr %l207, !tbaa !23
  call void @__olang_scope_close(ptr %s33)
  %t559 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t561 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t559)
  store i32 %t561, ptr %l209
  %t562 = icmp ne i32 %t561, 0
  br i1 %t562, label %bb99, label %ok.563, !prof !99
ok.563:
  br label %bb98
bb98:
  br label %bb103
bb99:
  %t564 = load i32, ptr %l209, !tbaa !23
  %t565 = ashr i32 %t564, 16
  %t567 = icmp eq i32 %t565, 1
  store i1 %t567, ptr %l211, !tbaa !21
  %t568 = load i32, ptr %l209, !tbaa !23
  %t569 = ashr i32 %t568, 16
  %t571 = icmp eq i32 %t569, 1
  br i1 %t571, label %bb100, label %bb101
bb100:
  call void @__olang_errpay_pop()
  br label %bb101
bb101:
  br label %bb102
bb102:
  br label %bb103
bb103:
  call void @__olang_scope_close(ptr %s0)
  %t573 = load i32, ptr %l207, !tbaa !23
  store i32 %t573, ptr %rv
  br label %ret
bb104:
  %t574 = load ptr, ptr %l190, !tbaa !29
  store ptr %t574, ptr %l18, !tbaa !29
  %t575 = load ptr, ptr %l18, !tbaa !29
  %t576 = load { i64, ptr }, ptr %l7, !tbaa !27
  call void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eread(ptr %s0, ptr %s0, ptr %s0, ptr %l8, ptr %t575, { i64, ptr } %t576)
  br label %bb105
bb105:
  %t580 = getelementptr %"compiler/bindgen:gen", ptr %l8, i32 0, i32 26
  store i64 0, ptr %t580, !tbaa !24
  store %olang.scope zeroinitializer, ptr %s38
  %t581 = load ptr, ptr %l18, !tbaa !29
  %t583 = call { i64, ptr } @compiler_2fbindgen_2einner(ptr %s0, ptr %s38, ptr %t581)
  store { i64, ptr } %t583, ptr %l218
  br label %bb106
bb106:
  %t584 = load { i64, ptr }, ptr %l218, !tbaa !27
  %t585 = extractvalue { i64, ptr } %t584, 0
  %t586 = extractvalue { i64, ptr } %t584, 1
  %t587 = mul i64 %t585, 8
  %t588 = call ptr @__olang_scope_alloc(ptr %s38, i64 %t587)
  call void @llvm.memcpy.p0.p0.i64(ptr %t588, ptr %t586, i64 %t587, i1 false)
  %t589 = insertvalue { i64, ptr } undef, i64 %t585, 0
  %t590 = insertvalue { i64, ptr } %t589, ptr %t588, 1
  store { i64, ptr } %t590, ptr %l19, !tbaa !27
  store i64 0, ptr %l20, !tbaa !24
  %t592 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t594 = extractvalue { i64, ptr } %t592, 0
  store i64 %t594, ptr %l21, !tbaa !24
  br label %bb107
bb107:
  store %olang.scope zeroinitializer, ptr %s39
  %t596 = load i64, ptr %l20, !tbaa !24
  %t597 = load i64, ptr %l21, !tbaa !24
  %t600 = icmp slt i64 %t596, %t597
  %t602 = xor i1 %t600, true
  br i1 %t602, label %bb108, label %bb109
bb108:
  call void @__olang_scope_close(ptr %s39)
  br label %bb162
bb109:
  br label %bb110
bb110:
  %t604 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t604, ptr %l226, !tbaa !27
  %t605 = load i64, ptr %l20, !tbaa !24
  %t607 = getelementptr { i64, ptr }, ptr %l226, i32 0, i32 1
  %t608 = load ptr, ptr %t607, !tbaa !27
  %t609 = getelementptr ptr, ptr %t608, i64 %t605
  %t610 = load ptr, ptr %t609, !tbaa !39
  store ptr %t610, ptr %l22, !tbaa !29
  %t612 = load ptr, ptr %l22, !tbaa !29
  %t614 = call { i64, ptr } @compiler_2fbindgen_2etext(ptr %s38, ptr %s39, ptr %s39, ptr %t612, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d265, i32 0, i32 1) })
  store { i64, ptr } %t614, ptr %l230
  br label %bb111
bb111:
  %t615 = load { i64, ptr }, ptr %l230, !tbaa !27
  store { i64, ptr } %t615, ptr %l23, !tbaa !27
  %t616 = load ptr, ptr %l22, !tbaa !29
  %t618 = call { i64, ptr } @compiler_2fbindgen_2etext(ptr %s38, ptr %s39, ptr %s39, ptr %t616, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d266, i32 0, i32 1) })
  store { i64, ptr } %t618, ptr %l232
  br label %bb112
bb112:
  %t619 = load { i64, ptr }, ptr %l232, !tbaa !27
  %t620 = extractvalue { i64, ptr } %t619, 0
  %t621 = extractvalue { i64, ptr } %t619, 1
  %t622 = mul i64 %t620, 1
  %t623 = call ptr @__olang_scope_alloc(ptr %s39, i64 %t622)
  call void @llvm.memcpy.p0.p0.i64(ptr %t623, ptr %t621, i64 %t622, i1 false)
  %t624 = insertvalue { i64, ptr } undef, i64 %t620, 0
  %t625 = insertvalue { i64, ptr } %t624, ptr %t623, 1
  %t627 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s39, ptr %s39, { i64, ptr } %t625, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d267, i32 0, i32 1) })
  store i1 %t627, ptr %l234
  br label %bb113
bb113:
  %t628 = load i1, ptr %l234, !tbaa !21
  %t629 = xor i1 %t628, true
  br i1 %t629, label %bb114, label %bb115
bb114:
  store i1 true, ptr %l236, !tbaa !21
  br label %bb117
bb115:
  %t631 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t633 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s39, ptr %s39, { i64, ptr } %t631, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d268, i32 0, i32 1) })
  store i1 %t633, ptr %l238
  br label %bb116
bb116:
  %t634 = load i1, ptr %l238, !tbaa !21
  %t635 = xor i1 %t634, true
  store i1 %t635, ptr %l236, !tbaa !21
  br label %bb117
bb117:
  %t637 = load i1, ptr %l236, !tbaa !21
  br i1 %t637, label %bb118, label %bb119
bb118:
  call void @__olang_scope_close(ptr %s39)
  br label %bb161
bb119:
  br label %bb120
bb120:
  %t638 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t640 = extractvalue { i64, ptr } %t638, 0
  store i64 %t640, ptr %l242, !tbaa !24
  %t641 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t642 = extractvalue { i64, ptr } %t641, 0
  store i64 %t642, ptr %l243, !tbaa !24
  %t643 = icmp sge i64 9, 0
  br i1 %t643, label %bb121, label %bb122
bb121:
  %t645 = load i64, ptr %l242, !tbaa !24
  %t646 = icmp sle i64 9, %t645
  br i1 %t646, label %bb123, label %bb124
bb122:
  call void @__olang_check_failed(ptr @olang_loc_6d7a361a7a168fed_fbeb1a267b83d779)
  unreachable
bb123:
  %t648 = load i64, ptr %l242, !tbaa !24
  %t649 = load i64, ptr %l243, !tbaa !24
  %t650 = icmp sle i64 %t648, %t649
  br i1 %t650, label %bb125, label %bb126
bb124:
  call void @__olang_check_failed(ptr @olang_loc_6d7a361a7a168fed_fbeb1a267b83d779)
  unreachable
bb125:
  %t652 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t653 = load ptr, ptr %t652, !tbaa !27
  %t654 = load i64, ptr %l242, !tbaa !24
  %t655 = getelementptr i8, ptr %t653, i64 9
  %t656 = sub i64 %t654, 9
  %t657 = insertvalue { i64, ptr } undef, i64 %t656, 0
  %t658 = insertvalue { i64, ptr } %t657, ptr %t655, 1
  store { i64, ptr } %t658, ptr %l247, !tbaa !27
  %t659 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s39, i64 10)
  %t660 = extractvalue { i32, i64 } %t659, 1
  %t661 = extractvalue { i32, i64 } %t659, 0
  store i32 %t661, ptr %l249
  %t662 = icmp ne i32 %t661, 0
  br i1 %t662, label %bb128, label %ok.663, !prof !99
ok.663:
  store i64 %t660, ptr %l248
  br label %bb127
bb126:
  call void @__olang_check_failed(ptr @olang_loc_6d7a361a7a168fed_fbeb1a267b83d779)
  unreachable
bb127:
  %t664 = load { i64, ptr }, ptr %l247, !tbaa !27
  %t665 = load i64, ptr %l248, !tbaa !24
  %t666 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %s39, { i64, ptr } %t664, i64 %t665)
  %t667 = extractvalue { i32, i64 } %t666, 1
  %t668 = extractvalue { i32, i64 } %t666, 0
  store i32 %t668, ptr %l251
  %t669 = icmp ne i32 %t668, 0
  br i1 %t669, label %bb131, label %ok.670, !prof !99
ok.670:
  store i64 %t667, ptr %l250
  br label %bb130
bb128:
  br label %bb129
bb129:
  store i64 -1, ptr %l240, !tbaa !24
  br label %bb132
bb130:
  %t671 = load i64, ptr %l250, !tbaa !24
  store i64 %t671, ptr %l240, !tbaa !24
  br label %bb132
bb131:
  br label %bb129
bb132:
  %t672 = load i64, ptr %l240, !tbaa !24
  store i64 %t672, ptr %l24, !tbaa !24
  %t673 = load i64, ptr %l24, !tbaa !24
  %t675 = icmp slt i64 %t673, 0
  br i1 %t675, label %bb133, label %bb134
bb133:
  store i1 true, ptr %l254, !tbaa !21
  br label %bb136
bb134:
  %t677 = load i64, ptr %l24, !tbaa !24
  store i64 %t677, ptr %l255, !tbaa !24
  %t679 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l12)
  store i64 %t679, ptr %l257
  br label %bb135
bb135:
  %t680 = load i64, ptr %l255, !tbaa !24
  %t681 = load i64, ptr %l257, !tbaa !24
  %t682 = icmp sge i64 %t680, %t681
  store i1 %t682, ptr %l254, !tbaa !21
  br label %bb136
bb136:
  %t684 = load i1, ptr %l254, !tbaa !21
  br i1 %t684, label %bb137, label %bb138
bb137:
  call void @__olang_scope_close(ptr %s39)
  br label %bb161
bb138:
  br label %bb139
bb139:
  store %olang.scope zeroinitializer, ptr %s42
  %t685 = load ptr, ptr %l22, !tbaa !29
  %t687 = call { i64, ptr } @compiler_2fbindgen_2einner(ptr %s38, ptr %s42, ptr %t685)
  store { i64, ptr } %t687, ptr %l260
  br label %bb140
bb140:
  %t688 = load { i64, ptr }, ptr %l260, !tbaa !27
  %t689 = extractvalue { i64, ptr } %t688, 0
  %t690 = extractvalue { i64, ptr } %t688, 1
  %t691 = mul i64 %t689, 8
  %t692 = call ptr @__olang_scope_alloc(ptr %s42, i64 %t691)
  call void @llvm.memcpy.p0.p0.i64(ptr %t692, ptr %t690, i64 %t691, i1 false)
  %t693 = insertvalue { i64, ptr } undef, i64 %t689, 0
  %t694 = insertvalue { i64, ptr } %t693, ptr %t692, 1
  store { i64, ptr } %t694, ptr %l25, !tbaa !27
  store i64 0, ptr %l26, !tbaa !24
  %t696 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t698 = extractvalue { i64, ptr } %t696, 0
  store i64 %t698, ptr %l27, !tbaa !24
  br label %bb141
bb141:
  store %olang.scope zeroinitializer, ptr %s43
  %t700 = load i64, ptr %l26, !tbaa !24
  %t701 = load i64, ptr %l27, !tbaa !24
  %t704 = icmp slt i64 %t700, %t701
  %t706 = xor i1 %t704, true
  br i1 %t706, label %bb142, label %bb143
bb142:
  call void @__olang_scope_close(ptr %s43)
  br label %bb160
bb143:
  br label %bb144
bb144:
  %t708 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t708, ptr %l268, !tbaa !27
  %t709 = load i64, ptr %l26, !tbaa !24
  %t711 = getelementptr { i64, ptr }, ptr %l268, i32 0, i32 1
  %t712 = load ptr, ptr %t711, !tbaa !27
  %t713 = getelementptr ptr, ptr %t712, i64 %t709
  %t714 = load ptr, ptr %t713, !tbaa !39
  %t718 = call { i64, ptr } @compiler_2fbindgen_2econstValue(ptr %s42, ptr %s43, ptr %t714)
  store { i64, ptr } %t718, ptr %l272
  br label %bb145
bb145:
  %t719 = load { i64, ptr }, ptr %l272, !tbaa !27
  store { i64, ptr } %t719, ptr %l29, !tbaa !27
  %t720 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t722 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s43, ptr %s43, { i64, ptr } %t720, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d269, i32 0, i32 1) })
  store i1 %t722, ptr %l274
  br label %bb146
bb146:
  %t723 = load i1, ptr %l274, !tbaa !21
  br i1 %t723, label %bb147, label %bb148
bb147:
  call void @__olang_scope_close(ptr %s43)
  br label %bb159
bb148:
  br label %bb149
bb149:
  %t724 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t724, ptr %l276, !tbaa !27
  %t725 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s43, i64 10)
  %t726 = extractvalue { i32, i64 } %t725, 1
  %t727 = extractvalue { i32, i64 } %t725, 0
  store i32 %t727, ptr %l278
  %t728 = icmp ne i32 %t727, 0
  br i1 %t728, label %bb151, label %ok.729, !prof !99
ok.729:
  store i64 %t726, ptr %l277
  br label %bb150
bb150:
  %t730 = load { i64, ptr }, ptr %l276, !tbaa !27
  %t731 = load i64, ptr %l277, !tbaa !24
  %t732 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %s43, { i64, ptr } %t730, i64 %t731)
  %t733 = extractvalue { i32, i64 } %t732, 1
  %t734 = extractvalue { i32, i64 } %t732, 0
  store i32 %t734, ptr %l280
  %t735 = icmp ne i32 %t734, 0
  br i1 %t735, label %bb154, label %ok.736, !prof !99
ok.736:
  store i64 %t733, ptr %l279
  br label %bb153
bb151:
  br label %bb152
bb152:
  call void @__olang_scope_close(ptr %s43)
  br label %bb159
bb153:
  %t737 = load i64, ptr %l279, !tbaa !24
  store i64 %t737, ptr %l275, !tbaa !24
  br label %bb155
bb154:
  br label %bb152
bb155:
  %t738 = load i64, ptr %l275, !tbaa !24
  store i64 %t738, ptr %l30, !tbaa !24
  store ptr %l8, ptr %l281, !tbaa !29
  %t739 = getelementptr %"compiler/bindgen:gen", ptr %l8, i32 0, i32 12
  store ptr %t739, ptr %l282, !tbaa !29
  %t740 = load i64, ptr %l24, !tbaa !24
  %t743 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l12, i64 %t740)
  store i64 %t743, ptr %l285
  br label %bb156
bb156:
  %t744 = load ptr, ptr %l282, !tbaa !29
  %t745 = load i64, ptr %l285, !tbaa !24
  %t746 = call %"compiler/bindgen:cMacro" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acMacro_3e_2eAt_3ccompiler_2fbindgen_3acMacro_3e(ptr %s0, ptr %s0, ptr %t744, i64 %t745)
  store %"compiler/bindgen:cMacro" %t746, ptr %l286
  br label %bb157
bb157:
  %t747 = getelementptr %"compiler/bindgen:cMacro", ptr %l286, i32 0, i32 0
  %t748 = load { i64, ptr }, ptr %t747, !tbaa !27
  %t749 = load i64, ptr %l30, !tbaa !24
  %t750 = load ptr, ptr %l281, !tbaa !29
  call void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2econstant(ptr %s0, ptr %s0, ptr %t750, { i64, ptr } %t748, i64 %t749)
  br label %bb158
bb158:
  call void @__olang_scope_close(ptr %s43)
  br label %bb159
bb159:
  %t753 = load i64, ptr %l26, !tbaa !24
  %t755 = add i64 %t753, 1
  store i64 %t755, ptr %l26, !tbaa !24
  br label %bb141
bb160:
  call void @__olang_scope_close(ptr %s42)
  call void @__olang_scope_close(ptr %s39)
  br label %bb161
bb161:
  %t757 = load i64, ptr %l20, !tbaa !24
  %t759 = add i64 %t757, 1
  store i64 %t759, ptr %l20, !tbaa !24
  br label %bb107
bb162:
  call void @__olang_scope_close(ptr %s38)
  call void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eotherConsts(ptr %s0, ptr %l8)
  br label %bb163
bb163:
  store ptr %l8, ptr %l294, !tbaa !29
  %t762 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t762, ptr %l295, !tbaa !27
  %t763 = icmp sge i64 0, 0
  br i1 %t763, label %bb164, label %bb165
bb164:
  %t765 = icmp sle i64 0, 576460752303423487
  br i1 %t765, label %bb166, label %bb167
bb165:
  call void @__olang_check_failed(ptr @olang_loc_3c31d34710cd488e_9478fba938690442)
  unreachable
bb166:
  %t767 = mul i64 0, 16
  %t768 = insertvalue { i64, ptr } undef, i64 0, 0
  %t769 = insertvalue { i64, ptr } %t768, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t770 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t771 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t772 = load ptr, ptr %l294, !tbaa !29
  %t773 = load { i64, ptr }, ptr %l295, !tbaa !27
  %t777 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2esizes(ptr %s0, ptr %v2, ptr %s0, ptr %s0, ptr %s0, ptr %t772, { i64, ptr } %t773, { i64, ptr } %t769, { i64, ptr } %t770, { i64, ptr } %t771)
  store i32 %t777, ptr %l301
  %t778 = icmp ne i32 %t777, 0
  br i1 %t778, label %bb169, label %ok.779, !prof !99
ok.779:
  br label %bb168
bb167:
  call void @__olang_check_failed(ptr @olang_loc_3c31d34710cd488e_9478fba938690442)
  unreachable
bb168:
  br label %bb178
bb169:
  %t780 = load i32, ptr %l301, !tbaa !23
  %t781 = ashr i32 %t780, 16
  %t783 = icmp eq i32 %t781, 1
  store i1 %t783, ptr %l303, !tbaa !21
  br label %bb170
bb170:
  store %olang.scope zeroinitializer, ptr %s48
  %t784 = load ptr, ptr %l3, !tbaa !29
  %t785 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t786 = getelementptr %"compiler/bindgen:gen", ptr %l8, i32 0, i32 25
  %t787 = load { i64, ptr }, ptr %t786, !tbaa !27
  %t788 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d270, i32 0, i32 1) }, 1
  %t789 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d270, i32 0, i32 1) }, 0
  %t791 = extractvalue { i64, ptr } %t785, 1
  %t792 = extractvalue { i64, ptr } %t785, 0
  %t793 = add i64 %t789, %t792
  %t794 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d271, i32 0, i32 1) }, 1
  %t795 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d271, i32 0, i32 1) }, 0
  %t796 = add i64 %t793, %t795
  %t798 = extractvalue { i64, ptr } %t787, 1
  %t799 = extractvalue { i64, ptr } %t787, 0
  %t800 = add i64 %t796, %t799
  %t801 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d272, i32 0, i32 1) }, 1
  %t802 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d272, i32 0, i32 1) }, 0
  %t803 = add i64 %t800, %t802
  %t804 = call ptr @__olang_scope_alloc(ptr %s48, i64 %t803)
  call void @olang_textcopy(ptr %t804, ptr %t788, i64 %t789)
  %t805 = getelementptr i8, ptr %t804, i64 %t789
  call void @olang_textcopy(ptr %t805, ptr %t791, i64 %t792)
  %t806 = getelementptr i8, ptr %t805, i64 %t792
  call void @olang_textcopy(ptr %t806, ptr %t794, i64 %t795)
  %t807 = getelementptr i8, ptr %t806, i64 %t795
  call void @olang_textcopy(ptr %t807, ptr %t798, i64 %t799)
  %t808 = getelementptr i8, ptr %t807, i64 %t799
  call void @olang_textcopy(ptr %t808, ptr %t801, i64 %t802)
  %t809 = insertvalue { i64, ptr } undef, i64 %t803, 0
  %t810 = insertvalue { i64, ptr } %t809, ptr %t804, 1
  %t813 = extractvalue { i64, ptr } %t810, 0
  %t814 = extractvalue { i64, ptr } %t810, 1
  %t815 = mul i64 %t813, 1
  %t816 = call ptr @__olang_scope_alloc(ptr %s48, i64 %t815)
  call void @llvm.memcpy.p0.p0.i64(ptr %t816, ptr %t814, i64 %t815, i1 false)
  %t817 = insertvalue { i64, ptr } undef, i64 %t813, 0
  %t818 = insertvalue { i64, ptr } %t817, ptr %t816, 1
  call void @std_2fio_2estd_2fio_3aWriter_2eWrite(ptr %v3, ptr %s48, ptr %t784, { i64, ptr } %t818)
  br label %bb171
bb171:
  store i32 1, ptr %l310, !tbaa !23
  call void @__olang_scope_close(ptr %s48)
  %t821 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t823 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t821)
  store i32 %t823, ptr %l312
  %t824 = icmp ne i32 %t823, 0
  br i1 %t824, label %bb173, label %ok.825, !prof !99
ok.825:
  br label %bb172
bb172:
  br label %bb177
bb173:
  %t826 = load i32, ptr %l312, !tbaa !23
  %t827 = ashr i32 %t826, 16
  %t829 = icmp eq i32 %t827, 1
  store i1 %t829, ptr %l314, !tbaa !21
  %t830 = load i32, ptr %l312, !tbaa !23
  %t831 = ashr i32 %t830, 16
  %t833 = icmp eq i32 %t831, 1
  br i1 %t833, label %bb174, label %bb175
bb174:
  call void @__olang_errpay_pop()
  br label %bb175
bb175:
  br label %bb176
bb176:
  br label %bb177
bb177:
  call void @__olang_scope_close(ptr %s0)
  %t835 = load i32, ptr %l310, !tbaa !23
  store i32 %t835, ptr %rv
  br label %ret
bb178:
  %t836 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t837 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d273, i32 0, i32 1) }, 1
  %t838 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d273, i32 0, i32 1) }, 0
  %t840 = extractvalue { i64, ptr } %t836, 1
  %t841 = extractvalue { i64, ptr } %t836, 0
  %t842 = add i64 %t838, %t841
  %t843 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d274, i32 0, i32 1) }, 1
  %t844 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d274, i32 0, i32 1) }, 0
  %t845 = add i64 %t842, %t844
  %t846 = extractvalue { i64, ptr } { i64 104, ptr getelementptr inbounds (<{ i64, [104 x i8] }>, ptr @.d275, i32 0, i32 1) }, 1
  %t847 = extractvalue { i64, ptr } { i64 104, ptr getelementptr inbounds (<{ i64, [104 x i8] }>, ptr @.d275, i32 0, i32 1) }, 0
  %t848 = add i64 %t845, %t847
  %t849 = extractvalue { i64, ptr } { i64 66, ptr getelementptr inbounds (<{ i64, [66 x i8] }>, ptr @.d276, i32 0, i32 1) }, 1
  %t850 = extractvalue { i64, ptr } { i64 66, ptr getelementptr inbounds (<{ i64, [66 x i8] }>, ptr @.d276, i32 0, i32 1) }, 0
  %t851 = add i64 %t848, %t850
  %t852 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t851)
  call void @olang_textcopy(ptr %t852, ptr %t837, i64 %t838)
  %t853 = getelementptr i8, ptr %t852, i64 %t838
  call void @olang_textcopy(ptr %t853, ptr %t840, i64 %t841)
  %t854 = getelementptr i8, ptr %t853, i64 %t841
  call void @olang_textcopy(ptr %t854, ptr %t843, i64 %t844)
  %t855 = getelementptr i8, ptr %t854, i64 %t844
  call void @olang_textcopy(ptr %t855, ptr %t846, i64 %t847)
  %t856 = getelementptr i8, ptr %t855, i64 %t847
  call void @olang_textcopy(ptr %t856, ptr %t849, i64 %t850)
  %t857 = insertvalue { i64, ptr } undef, i64 %t851, 0
  %t858 = insertvalue { i64, ptr } %t857, ptr %t852, 1
  %t863 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ewrite(ptr %s0, ptr %s0, ptr %s0, ptr %l8, { i64, ptr } %t858)
  store { i64, ptr } %t863, ptr %l321
  br label %bb179
bb179:
  %t864 = load { i64, ptr }, ptr %l321, !tbaa !27
  store { i64, ptr } %t864, ptr %l32, !tbaa !27
  %t865 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t867 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t865, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d277, i32 0, i32 1) })
  store i1 %t867, ptr %l323
  br label %bb180
bb180:
  %t868 = load i1, ptr %l323, !tbaa !21
  br i1 %t868, label %bb181, label %bb182
bb181:
  %t869 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t871 = call i32 @std_2fio_2ePrint(ptr %s0, { i64, ptr } %t869)
  store i32 %t871, ptr %l325
  %t872 = icmp ne i32 %t871, 0
  br i1 %t872, label %bb184, label %ok.873, !prof !99
ok.873:
  br label %bb183
bb182:
  br label %bb201
bb183:
  br label %bb194
bb184:
  %t874 = load i32, ptr %l325, !tbaa !23
  %t875 = ashr i32 %t874, 16
  %t877 = icmp eq i32 %t875, 1
  store i1 %t877, ptr %l327, !tbaa !21
  %t878 = load i32, ptr %l325, !tbaa !23
  %t879 = ashr i32 %t878, 16
  %t881 = icmp eq i32 %t879, 1
  br i1 %t881, label %bb185, label %bb186
bb185:
  call void @__olang_errpay_pop()
  br label %bb186
bb186:
  br label %bb187
bb187:
  store i32 1, ptr %l330, !tbaa !23
  %t883 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t885 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t883)
  store i32 %t885, ptr %l332
  %t886 = icmp ne i32 %t885, 0
  br i1 %t886, label %bb189, label %ok.887, !prof !99
ok.887:
  br label %bb188
bb188:
  br label %bb193
bb189:
  %t888 = load i32, ptr %l332, !tbaa !23
  %t889 = ashr i32 %t888, 16
  %t891 = icmp eq i32 %t889, 1
  store i1 %t891, ptr %l334, !tbaa !21
  %t892 = load i32, ptr %l332, !tbaa !23
  %t893 = ashr i32 %t892, 16
  %t895 = icmp eq i32 %t893, 1
  br i1 %t895, label %bb190, label %bb191
bb190:
  call void @__olang_errpay_pop()
  br label %bb191
bb191:
  br label %bb192
bb192:
  br label %bb193
bb193:
  call void @__olang_scope_close(ptr %s0)
  %t897 = load i32, ptr %l330, !tbaa !23
  store i32 %t897, ptr %rv
  br label %ret
bb194:
  store i32 0, ptr %l337, !tbaa !23
  %t898 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t900 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t898)
  store i32 %t900, ptr %l339
  %t901 = icmp ne i32 %t900, 0
  br i1 %t901, label %bb196, label %ok.902, !prof !99
ok.902:
  br label %bb195
bb195:
  br label %bb200
bb196:
  %t903 = load i32, ptr %l339, !tbaa !23
  %t904 = ashr i32 %t903, 16
  %t906 = icmp eq i32 %t904, 1
  store i1 %t906, ptr %l341, !tbaa !21
  %t907 = load i32, ptr %l339, !tbaa !23
  %t908 = ashr i32 %t907, 16
  %t910 = icmp eq i32 %t908, 1
  br i1 %t910, label %bb197, label %bb198
bb197:
  call void @__olang_errpay_pop()
  br label %bb198
bb198:
  br label %bb199
bb199:
  br label %bb200
bb200:
  call void @__olang_scope_close(ptr %s0)
  %t912 = load i32, ptr %l337, !tbaa !23
  store i32 %t912, ptr %rv
  br label %ret
bb201:
  %t913 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t914 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t917 = call i32 @std_2fos_2eWriteFile(ptr %v1, ptr %s0, { i64, ptr } %t913, { i64, ptr } %t914)
  store i32 %t917, ptr %l346
  %t918 = icmp ne i32 %t917, 0
  br i1 %t918, label %bb203, label %ok.919, !prof !99
ok.919:
  br label %bb202
bb202:
  br label %bb214
bb203:
  %t920 = load i32, ptr %l346, !tbaa !23
  %t921 = ashr i32 %t920, 16
  %t923 = icmp eq i32 %t921, 1
  store i1 %t923, ptr %l348, !tbaa !21
  %t924 = load i32, ptr %l346, !tbaa !23
  %t925 = ashr i32 %t924, 16
  %t927 = icmp eq i32 %t925, 1
  br i1 %t927, label %bb204, label %bb205
bb204:
  call void @__olang_errpay_pop()
  br label %bb205
bb205:
  br label %bb206
bb206:
  store %olang.scope zeroinitializer, ptr %s62
  %t929 = load ptr, ptr %l3, !tbaa !29
  %t930 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t931 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d278, i32 0, i32 1) }, 1
  %t932 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d278, i32 0, i32 1) }, 0
  %t934 = extractvalue { i64, ptr } %t930, 1
  %t935 = extractvalue { i64, ptr } %t930, 0
  %t936 = add i64 %t932, %t935
  %t937 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d279, i32 0, i32 1) }, 1
  %t938 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d279, i32 0, i32 1) }, 0
  %t939 = add i64 %t936, %t938
  %t940 = call ptr @__olang_scope_alloc(ptr %s62, i64 %t939)
  call void @olang_textcopy(ptr %t940, ptr %t931, i64 %t932)
  %t941 = getelementptr i8, ptr %t940, i64 %t932
  call void @olang_textcopy(ptr %t941, ptr %t934, i64 %t935)
  %t942 = getelementptr i8, ptr %t941, i64 %t935
  call void @olang_textcopy(ptr %t942, ptr %t937, i64 %t938)
  %t943 = insertvalue { i64, ptr } undef, i64 %t939, 0
  %t944 = insertvalue { i64, ptr } %t943, ptr %t940, 1
  %t947 = extractvalue { i64, ptr } %t944, 0
  %t948 = extractvalue { i64, ptr } %t944, 1
  %t949 = mul i64 %t947, 1
  %t950 = call ptr @__olang_scope_alloc(ptr %s62, i64 %t949)
  call void @llvm.memcpy.p0.p0.i64(ptr %t950, ptr %t948, i64 %t949, i1 false)
  %t951 = insertvalue { i64, ptr } undef, i64 %t947, 0
  %t952 = insertvalue { i64, ptr } %t951, ptr %t950, 1
  call void @std_2fio_2estd_2fio_3aWriter_2eWrite(ptr %v3, ptr %s62, ptr %t929, { i64, ptr } %t952)
  br label %bb207
bb207:
  store i32 2, ptr %l356, !tbaa !23
  call void @__olang_scope_close(ptr %s62)
  %t955 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t957 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t955)
  store i32 %t957, ptr %l358
  %t958 = icmp ne i32 %t957, 0
  br i1 %t958, label %bb209, label %ok.959, !prof !99
ok.959:
  br label %bb208
bb208:
  br label %bb213
bb209:
  %t960 = load i32, ptr %l358, !tbaa !23
  %t961 = ashr i32 %t960, 16
  %t963 = icmp eq i32 %t961, 1
  store i1 %t963, ptr %l360, !tbaa !21
  %t964 = load i32, ptr %l358, !tbaa !23
  %t965 = ashr i32 %t964, 16
  %t967 = icmp eq i32 %t965, 1
  br i1 %t967, label %bb210, label %bb211
bb210:
  call void @__olang_errpay_pop()
  br label %bb211
bb211:
  br label %bb212
bb212:
  br label %bb213
bb213:
  call void @__olang_scope_close(ptr %s0)
  %t969 = load i32, ptr %l356, !tbaa !23
  store i32 %t969, ptr %rv
  br label %ret
bb214:
  store i32 0, ptr %l363, !tbaa !23
  %t970 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t972 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t970)
  store i32 %t972, ptr %l365
  %t973 = icmp ne i32 %t972, 0
  br i1 %t973, label %bb216, label %ok.974, !prof !99
ok.974:
  br label %bb215
bb215:
  br label %bb220
bb216:
  %t975 = load i32, ptr %l365, !tbaa !23
  %t976 = ashr i32 %t975, 16
  %t978 = icmp eq i32 %t976, 1
  store i1 %t978, ptr %l367, !tbaa !21
  %t979 = load i32, ptr %l365, !tbaa !23
  %t980 = ashr i32 %t979, 16
  %t982 = icmp eq i32 %t980, 1
  br i1 %t982, label %bb217, label %bb218
bb217:
  call void @__olang_errpay_pop()
  br label %bb218
bb218:
  br label %bb219
bb219:
  br label %bb220
bb220:
  call void @__olang_scope_close(ptr %s0)
  %t984 = load i32, ptr %l363, !tbaa !23
  store i32 %t984, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2fbindgen_2etextLiteral(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca %"std/prelude/text:StringBuilder"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i8
  %l8 = alloca i8
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l15 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca { i64, ptr }
  %l19 = alloca %"std/prelude/text:StringBuilder"
  %l28 = alloca { i64, ptr }
  %l34 = alloca i1
  %l35 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l39 = alloca { i64, ptr }
  %l40 = alloca i64
  %l41 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l55 = alloca i1
  %l70 = alloca { i64, ptr }
  %l71 = alloca { i64, ptr }
  %l72 = alloca i64
  %l73 = alloca { i64, ptr }
  %l74 = alloca { i64, ptr }
  %l86 = alloca i1
  %l87 = alloca { i64, ptr }
  %l90 = alloca i1
  %l91 = alloca i1
  %l92 = alloca { i64, ptr }
  %l95 = alloca i8
  %l97 = alloca i1
  %l98 = alloca { i64, ptr }
  %l101 = alloca i8
  %l106 = alloca i64
  %l107 = alloca { i64, ptr }
  %l109 = alloca i64
  %l110 = alloca i64
  %l111 = alloca i64
  %l115 = alloca { i64, ptr }
  %l116 = alloca i64
  %l117 = alloca i32
  %l118 = alloca i64
  %l119 = alloca i32
  %l123 = alloca i1
  %l132 = alloca i1
  %l137 = alloca i1
  %l138 = alloca { i64, ptr }
  %l142 = alloca i1
  %l143 = alloca { i64, ptr }
  %l150 = alloca i64
  %l151 = alloca { i64, ptr }
  %l152 = alloca i64
  %l153 = alloca i64
  %l154 = alloca i64
  %l158 = alloca { i64, ptr }
  %l159 = alloca i64
  %l160 = alloca i32
  %l161 = alloca i64
  %l162 = alloca i32
  %l164 = alloca i64
  %l186 = alloca i1
  %l189 = alloca { i64, ptr }
  %l190 = alloca { i64, ptr }
  %l191 = alloca i64
  %l192 = alloca { i64, ptr }
  %l195 = alloca i1
  %l204 = alloca i1
  %l211 = alloca ptr
  %l213 = alloca i8
  %l214 = alloca i64
  %l215 = alloca i32
  %l216 = alloca { i64, ptr }
  %l218 = alloca { i64, ptr }
  %l224 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s27 = alloca %olang.scope
  %rv = alloca { i64, ptr }
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d280, i32 0, i32 1) }, ptr %l15, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t7, ptr %l16, !tbaa !27
  %t8 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t8, 0
  store i64 %t9, ptr %l17, !tbaa !24
  %t10 = load i64, ptr %l17, !tbaa !24
  %t11 = mul i64 %t10, 1
  %t12 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t11)
  %t13 = insertvalue { i64, ptr } undef, i64 %t10, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr %t12, 1
  store { i64, ptr } %t14, ptr %l18, !tbaa !27
  %t15 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !27
  %t17 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !27
  %t19 = load i64, ptr %l17, !tbaa !24
  %t20 = mul i64 %t19, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t16, ptr %t18, i64 %t20, i1 false)
  %t21 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t21, ptr %l16, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t22 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t22, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t23 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t23, ptr %l19
  br label %bb4
bb4:
  %t24 = load %"std/prelude/text:StringBuilder", ptr %l19
  store %"std/prelude/text:StringBuilder" %t24, ptr %l1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 34)
  br label %bb5
bb5:
  %t26 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t26, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t28 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t28, 0
  store i64 %t30, ptr %l4, !tbaa !24
  br label %bb6
bb6:
  %t32 = load i64, ptr %l3, !tbaa !24
  %t33 = load i64, ptr %l4, !tbaa !24
  %t36 = icmp slt i64 %t32, %t33
  %t38 = xor i1 %t36, true
  br i1 %t38, label %bb7, label %bb8
bb7:
  br label %bb163
bb8:
  br label %bb9
bb9:
  %t40 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t40, ptr %l28, !tbaa !27
  %t41 = load i64, ptr %l3, !tbaa !24
  %t43 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !27
  %t45 = getelementptr { i64, ptr }, ptr %t44, i64 %t41
  %t46 = load { i64, ptr }, ptr %t45, !tbaa !37
  store { i64, ptr } %t46, ptr %l5, !tbaa !27
  %t48 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t50 = extractvalue { i64, ptr } %t48, 0
  %t52 = icmp slt i64 %t50, 2
  br i1 %t52, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l34, !tbaa !21
  br label %bb12
bb11:
  %t54 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t54, ptr %l35, !tbaa !27
  %t55 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !27
  %t57 = getelementptr i8, ptr %t56, i64 0
  %t58 = load i8, ptr %t57, !tbaa !32
  %t60 = icmp ne i8 %t58, 34
  store i1 %t60, ptr %l34, !tbaa !21
  br label %bb12
bb12:
  %t62 = load i1, ptr %l34, !tbaa !21
  br i1 %t62, label %bb13, label %bb14
bb13:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d281, i32 0, i32 1) }, ptr %l38, !tbaa !27
  %t63 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t63, ptr %l39, !tbaa !27
  %t64 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t65 = extractvalue { i64, ptr } %t64, 0
  store i64 %t65, ptr %l40, !tbaa !24
  %t66 = load i64, ptr %l40, !tbaa !24
  %t67 = mul i64 %t66, 1
  %t68 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t67)
  %t69 = insertvalue { i64, ptr } undef, i64 %t66, 0
  %t70 = insertvalue { i64, ptr } %t69, ptr %t68, 1
  store { i64, ptr } %t70, ptr %l41, !tbaa !27
  %t71 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !27
  %t73 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !27
  %t75 = load i64, ptr %l40, !tbaa !24
  %t76 = mul i64 %t75, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t72, ptr %t74, i64 %t76, i1 false)
  %t77 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t77, ptr %l39, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t78 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t78, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  store i64 1, ptr %l6, !tbaa !24
  br label %bb16
bb16:
  %t79 = load i64, ptr %l6, !tbaa !24
  %t80 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t82 = extractvalue { i64, ptr } %t80, 0
  %t84 = sub i64 %t82, 1
  %t87 = icmp slt i64 %t79, %t84
  %t89 = xor i1 %t87, true
  br i1 %t89, label %bb17, label %bb18
bb17:
  br label %bb161
bb18:
  br label %bb19
bb19:
  %t91 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t91, ptr %l48, !tbaa !27
  %t92 = load i64, ptr %l6, !tbaa !24
  %t94 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !27
  %t96 = getelementptr i8, ptr %t95, i64 %t92
  %t97 = load i8, ptr %t96, !tbaa !32
  store i8 %t97, ptr %l7, !tbaa !22
  %t99 = load i8, ptr %l7, !tbaa !22
  %t101 = icmp ne i8 %t99, 92
  br i1 %t101, label %bb20, label %bb21
bb20:
  %t103 = load i8, ptr %l7, !tbaa !22
  %t105 = icmp eq i8 %t103, 34
  br i1 %t105, label %bb22, label %bb23
bb21:
  br label %bb30
bb22:
  store i1 true, ptr %l55, !tbaa !21
  br label %bb24
bb23:
  %t107 = load i8, ptr %l7, !tbaa !22
  %t109 = icmp eq i8 %t107, 92
  store i1 %t109, ptr %l55, !tbaa !21
  br label %bb24
bb24:
  %t111 = load i1, ptr %l55, !tbaa !21
  br i1 %t111, label %bb25, label %bb26
bb25:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 92)
  br label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb28
bb28:
  %t113 = load i8, ptr %l7, !tbaa !22
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 %t113)
  br label %bb29
bb29:
  %t116 = load i64, ptr %l6, !tbaa !24
  %t118 = add i64 %t116, 1
  store i64 %t118, ptr %l6, !tbaa !24
  br label %bb160
bb30:
  %t120 = load i64, ptr %l6, !tbaa !24
  %t122 = add i64 %t120, 1
  store i64 %t122, ptr %l6, !tbaa !24
  %t124 = load i64, ptr %l6, !tbaa !24
  %t125 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t127 = extractvalue { i64, ptr } %t125, 0
  %t129 = sub i64 %t127, 1
  %t132 = icmp sge i64 %t124, %t129
  br i1 %t132, label %bb31, label %bb32
bb31:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d282, i32 0, i32 1) }, ptr %l70, !tbaa !27
  %t134 = load { i64, ptr }, ptr %l70, !tbaa !27
  store { i64, ptr } %t134, ptr %l71, !tbaa !27
  %t135 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t136 = extractvalue { i64, ptr } %t135, 0
  store i64 %t136, ptr %l72, !tbaa !24
  %t137 = load i64, ptr %l72, !tbaa !24
  %t138 = mul i64 %t137, 1
  %t139 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t138)
  %t140 = insertvalue { i64, ptr } undef, i64 %t137, 0
  %t141 = insertvalue { i64, ptr } %t140, ptr %t139, 1
  store { i64, ptr } %t141, ptr %l73, !tbaa !27
  %t142 = getelementptr { i64, ptr }, ptr %l73, i32 0, i32 1
  %t143 = load ptr, ptr %t142, !tbaa !27
  %t144 = getelementptr { i64, ptr }, ptr %l71, i32 0, i32 1
  %t145 = load ptr, ptr %t144, !tbaa !27
  %t146 = load i64, ptr %l72, !tbaa !24
  %t147 = mul i64 %t146, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t143, ptr %t145, i64 %t147, i1 false)
  %t148 = load { i64, ptr }, ptr %l73, !tbaa !27
  store { i64, ptr } %t148, ptr %l71, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t149 = load { i64, ptr }, ptr %l71, !tbaa !27
  store { i64, ptr } %t149, ptr %rv
  br label %ret
bb32:
  br label %bb33
bb33:
  %t150 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t150, ptr %l74, !tbaa !27
  %t151 = load i64, ptr %l6, !tbaa !24
  %t153 = getelementptr { i64, ptr }, ptr %l74, i32 0, i32 1
  %t154 = load ptr, ptr %t153, !tbaa !27
  %t155 = getelementptr i8, ptr %t154, i64 %t151
  %t156 = load i8, ptr %t155, !tbaa !32
  store i8 %t156, ptr %l8, !tbaa !22
  store i64 -1, ptr %l9, !tbaa !24
  %t158 = load i8, ptr %l8, !tbaa !22
  %t160 = icmp eq i8 %t158, 120
  br i1 %t160, label %bb34, label %bb35
bb34:
  store %olang.scope zeroinitializer, ptr %s9
  %t162 = load i64, ptr %l6, !tbaa !24
  %t164 = add i64 %t162, 1
  store i64 %t164, ptr %l10, !tbaa !24
  br label %bb36
bb35:
  %t166 = load i8, ptr %l8, !tbaa !22
  %t168 = icmp uge i8 %t166, 48
  br i1 %t168, label %bb66, label %bb67
bb36:
  %t170 = load i64, ptr %l10, !tbaa !24
  %t171 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t173 = extractvalue { i64, ptr } %t171, 0
  %t175 = sub i64 %t173, 1
  %t178 = icmp slt i64 %t170, %t175
  br i1 %t178, label %bb37, label %bb38
bb37:
  %t180 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t180, ptr %l87, !tbaa !27
  %t181 = load i64, ptr %l10, !tbaa !24
  %t183 = getelementptr { i64, ptr }, ptr %l87, i32 0, i32 1
  %t184 = load ptr, ptr %t183, !tbaa !27
  %t185 = getelementptr i8, ptr %t184, i64 %t181
  %t186 = load i8, ptr %t185, !tbaa !32
  %t188 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t186)
  store i1 %t188, ptr %l90
  br label %bb39
bb38:
  store i1 false, ptr %l86, !tbaa !21
  br label %bb48
bb39:
  %t189 = load i1, ptr %l90, !tbaa !21
  br i1 %t189, label %bb40, label %bb41
bb40:
  store i1 true, ptr %l91, !tbaa !21
  br label %bb47
bb41:
  %t190 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t190, ptr %l92, !tbaa !27
  %t191 = load i64, ptr %l10, !tbaa !24
  %t193 = getelementptr { i64, ptr }, ptr %l92, i32 0, i32 1
  %t194 = load ptr, ptr %t193, !tbaa !27
  %t195 = getelementptr i8, ptr %t194, i64 %t191
  %t196 = load i8, ptr %t195, !tbaa !32
  %t198 = call i8 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eToLower(i8 %t196)
  store i8 %t198, ptr %l95
  br label %bb42
bb42:
  %t199 = load i8, ptr %l95, !tbaa !22
  %t200 = icmp uge i8 %t199, 97
  br i1 %t200, label %bb43, label %bb44
bb43:
  %t202 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t202, ptr %l98, !tbaa !27
  %t203 = load i64, ptr %l10, !tbaa !24
  %t205 = getelementptr { i64, ptr }, ptr %l98, i32 0, i32 1
  %t206 = load ptr, ptr %t205, !tbaa !27
  %t207 = getelementptr i8, ptr %t206, i64 %t203
  %t208 = load i8, ptr %t207, !tbaa !32
  %t210 = call i8 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eToLower(i8 %t208)
  store i8 %t210, ptr %l101
  br label %bb45
bb44:
  store i1 false, ptr %l97, !tbaa !21
  br label %bb46
bb45:
  %t211 = load i8, ptr %l101, !tbaa !22
  %t212 = icmp ule i8 %t211, 102
  store i1 %t212, ptr %l97, !tbaa !21
  br label %bb46
bb46:
  %t214 = load i1, ptr %l97, !tbaa !21
  store i1 %t214, ptr %l91, !tbaa !21
  br label %bb47
bb47:
  %t215 = load i1, ptr %l91, !tbaa !21
  store i1 %t215, ptr %l86, !tbaa !21
  br label %bb48
bb48:
  %t216 = load i1, ptr %l86, !tbaa !21
  %t217 = xor i1 %t216, true
  br i1 %t217, label %bb49, label %bb50
bb49:
  br label %bb53
bb50:
  br label %bb51
bb51:
  %t219 = load i64, ptr %l10, !tbaa !24
  %t221 = add i64 %t219, 1
  store i64 %t221, ptr %l10, !tbaa !24
  br label %bb52
bb52:
  br label %bb36
bb53:
  %t223 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t223, ptr %l107, !tbaa !27
  %t224 = load i64, ptr %l6, !tbaa !24
  %t226 = add i64 %t224, 1
  store i64 %t226, ptr %l109, !tbaa !24
  %t227 = load i64, ptr %l10, !tbaa !24
  store i64 %t227, ptr %l110, !tbaa !24
  %t228 = load { i64, ptr }, ptr %l107, !tbaa !27
  %t229 = extractvalue { i64, ptr } %t228, 0
  store i64 %t229, ptr %l111, !tbaa !24
  %t230 = load i64, ptr %l109, !tbaa !24
  %t231 = icmp sge i64 %t230, 0
  br i1 %t231, label %bb54, label %bb55
bb54:
  %t233 = load i64, ptr %l109, !tbaa !24
  %t234 = load i64, ptr %l110, !tbaa !24
  %t235 = icmp sle i64 %t233, %t234
  br i1 %t235, label %bb56, label %bb57
bb55:
  call void @__olang_check_failed(ptr @olang_loc_d82489adf04aec69_8da73aeba875ea7d)
  unreachable
bb56:
  %t237 = load i64, ptr %l110, !tbaa !24
  %t238 = load i64, ptr %l111, !tbaa !24
  %t239 = icmp sle i64 %t237, %t238
  br i1 %t239, label %bb58, label %bb59
bb57:
  call void @__olang_check_failed(ptr @olang_loc_d82489adf04aec69_8da73aeba875ea7d)
  unreachable
bb58:
  %t241 = getelementptr { i64, ptr }, ptr %l107, i32 0, i32 1
  %t242 = load ptr, ptr %t241, !tbaa !27
  %t243 = load i64, ptr %l109, !tbaa !24
  %t244 = load i64, ptr %l110, !tbaa !24
  %t245 = getelementptr i8, ptr %t242, i64 %t243
  %t246 = sub i64 %t244, %t243
  %t247 = insertvalue { i64, ptr } undef, i64 %t246, 0
  %t248 = insertvalue { i64, ptr } %t247, ptr %t245, 1
  store { i64, ptr } %t248, ptr %l115, !tbaa !27
  %t249 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s9, i64 16)
  %t250 = extractvalue { i32, i64 } %t249, 1
  %t251 = extractvalue { i32, i64 } %t249, 0
  store i32 %t251, ptr %l117
  %t252 = icmp ne i32 %t251, 0
  br i1 %t252, label %bb61, label %ok.253, !prof !99
ok.253:
  store i64 %t250, ptr %l116
  br label %bb60
bb59:
  call void @__olang_check_failed(ptr @olang_loc_d82489adf04aec69_8da73aeba875ea7d)
  unreachable
bb60:
  %t254 = load { i64, ptr }, ptr %l115, !tbaa !27
  %t255 = load i64, ptr %l116, !tbaa !24
  %t256 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v0, { i64, ptr } %t254, i64 %t255)
  %t257 = extractvalue { i32, i64 } %t256, 1
  %t258 = extractvalue { i32, i64 } %t256, 0
  store i32 %t258, ptr %l119
  %t259 = icmp ne i32 %t258, 0
  br i1 %t259, label %bb64, label %ok.260, !prof !99
ok.260:
  store i64 %t257, ptr %l118
  br label %bb63
bb61:
  br label %bb62
bb62:
  store i64 -1, ptr %l106, !tbaa !24
  br label %bb65
bb63:
  %t261 = load i64, ptr %l118, !tbaa !24
  store i64 %t261, ptr %l106, !tbaa !24
  br label %bb65
bb64:
  br label %bb62
bb65:
  %t262 = load i64, ptr %l106, !tbaa !24
  store i64 %t262, ptr %l9, !tbaa !24
  %t263 = load i64, ptr %l10, !tbaa !24
  store i64 %t263, ptr %l6, !tbaa !24
  call void @__olang_scope_close(ptr %s9)
  br label %bb132
bb66:
  %t265 = load i8, ptr %l8, !tbaa !22
  %t267 = icmp ule i8 %t265, 55
  store i1 %t267, ptr %l123, !tbaa !21
  br label %bb68
bb67:
  store i1 false, ptr %l123, !tbaa !21
  br label %bb68
bb68:
  %t269 = load i1, ptr %l123, !tbaa !21
  br i1 %t269, label %bb69, label %bb70
bb69:
  store %olang.scope zeroinitializer, ptr %s12
  %t270 = load i64, ptr %l6, !tbaa !24
  store i64 %t270, ptr %l11, !tbaa !24
  br label %bb71
bb70:
  %t272 = load i8, ptr %l8, !tbaa !22
  %t274 = icmp eq i8 %t272, 110
  br i1 %t274, label %bb98, label %bb99
bb71:
  %t276 = load i64, ptr %l11, !tbaa !24
  %t277 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t279 = extractvalue { i64, ptr } %t277, 0
  %t281 = sub i64 %t279, 1
  %t284 = icmp slt i64 %t276, %t281
  br i1 %t284, label %bb72, label %bb73
bb72:
  %t286 = load i64, ptr %l11, !tbaa !24
  %t287 = load i64, ptr %l6, !tbaa !24
  %t289 = add i64 %t287, 3
  %t292 = icmp slt i64 %t286, %t289
  store i1 %t292, ptr %l132, !tbaa !21
  br label %bb74
bb73:
  store i1 false, ptr %l132, !tbaa !21
  br label %bb74
bb74:
  %t294 = load i1, ptr %l132, !tbaa !21
  br i1 %t294, label %bb75, label %bb76
bb75:
  %t295 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t295, ptr %l138, !tbaa !27
  %t296 = load i64, ptr %l11, !tbaa !24
  %t298 = getelementptr { i64, ptr }, ptr %l138, i32 0, i32 1
  %t299 = load ptr, ptr %t298, !tbaa !27
  %t300 = getelementptr i8, ptr %t299, i64 %t296
  %t301 = load i8, ptr %t300, !tbaa !32
  %t303 = icmp uge i8 %t301, 48
  store i1 %t303, ptr %l137, !tbaa !21
  br label %bb77
bb76:
  store i1 false, ptr %l137, !tbaa !21
  br label %bb77
bb77:
  %t305 = load i1, ptr %l137, !tbaa !21
  br i1 %t305, label %bb78, label %bb79
bb78:
  %t306 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t306, ptr %l143, !tbaa !27
  %t307 = load i64, ptr %l11, !tbaa !24
  %t309 = getelementptr { i64, ptr }, ptr %l143, i32 0, i32 1
  %t310 = load ptr, ptr %t309, !tbaa !27
  %t311 = getelementptr i8, ptr %t310, i64 %t307
  %t312 = load i8, ptr %t311, !tbaa !32
  %t314 = icmp ule i8 %t312, 55
  store i1 %t314, ptr %l142, !tbaa !21
  br label %bb80
bb79:
  store i1 false, ptr %l142, !tbaa !21
  br label %bb80
bb80:
  %t316 = load i1, ptr %l142, !tbaa !21
  %t317 = xor i1 %t316, true
  br i1 %t317, label %bb81, label %bb82
bb81:
  br label %bb85
bb82:
  br label %bb83
bb83:
  %t319 = load i64, ptr %l11, !tbaa !24
  %t321 = add i64 %t319, 1
  store i64 %t321, ptr %l11, !tbaa !24
  br label %bb84
bb84:
  br label %bb71
bb85:
  %t323 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t323, ptr %l151, !tbaa !27
  %t324 = load i64, ptr %l6, !tbaa !24
  store i64 %t324, ptr %l152, !tbaa !24
  %t325 = load i64, ptr %l11, !tbaa !24
  store i64 %t325, ptr %l153, !tbaa !24
  %t326 = load { i64, ptr }, ptr %l151, !tbaa !27
  %t327 = extractvalue { i64, ptr } %t326, 0
  store i64 %t327, ptr %l154, !tbaa !24
  %t328 = load i64, ptr %l152, !tbaa !24
  %t329 = icmp sge i64 %t328, 0
  br i1 %t329, label %bb86, label %bb87
bb86:
  %t331 = load i64, ptr %l152, !tbaa !24
  %t332 = load i64, ptr %l153, !tbaa !24
  %t333 = icmp sle i64 %t331, %t332
  br i1 %t333, label %bb88, label %bb89
bb87:
  call void @__olang_check_failed(ptr @olang_loc_e159f608b90be7c_888d447c7b7c1020)
  unreachable
bb88:
  %t335 = load i64, ptr %l153, !tbaa !24
  %t336 = load i64, ptr %l154, !tbaa !24
  %t337 = icmp sle i64 %t335, %t336
  br i1 %t337, label %bb90, label %bb91
bb89:
  call void @__olang_check_failed(ptr @olang_loc_e159f608b90be7c_888d447c7b7c1020)
  unreachable
bb90:
  %t339 = getelementptr { i64, ptr }, ptr %l151, i32 0, i32 1
  %t340 = load ptr, ptr %t339, !tbaa !27
  %t341 = load i64, ptr %l152, !tbaa !24
  %t342 = load i64, ptr %l153, !tbaa !24
  %t343 = getelementptr i8, ptr %t340, i64 %t341
  %t344 = sub i64 %t342, %t341
  %t345 = insertvalue { i64, ptr } undef, i64 %t344, 0
  %t346 = insertvalue { i64, ptr } %t345, ptr %t343, 1
  store { i64, ptr } %t346, ptr %l158, !tbaa !27
  %t347 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s12, i64 8)
  %t348 = extractvalue { i32, i64 } %t347, 1
  %t349 = extractvalue { i32, i64 } %t347, 0
  store i32 %t349, ptr %l160
  %t350 = icmp ne i32 %t349, 0
  br i1 %t350, label %bb93, label %ok.351, !prof !99
ok.351:
  store i64 %t348, ptr %l159
  br label %bb92
bb91:
  call void @__olang_check_failed(ptr @olang_loc_e159f608b90be7c_888d447c7b7c1020)
  unreachable
bb92:
  %t352 = load { i64, ptr }, ptr %l158, !tbaa !27
  %t353 = load i64, ptr %l159, !tbaa !24
  %t354 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v0, { i64, ptr } %t352, i64 %t353)
  %t355 = extractvalue { i32, i64 } %t354, 1
  %t356 = extractvalue { i32, i64 } %t354, 0
  store i32 %t356, ptr %l162
  %t357 = icmp ne i32 %t356, 0
  br i1 %t357, label %bb96, label %ok.358, !prof !99
ok.358:
  store i64 %t355, ptr %l161
  br label %bb95
bb93:
  br label %bb94
bb94:
  store i64 -1, ptr %l150, !tbaa !24
  br label %bb97
bb95:
  %t359 = load i64, ptr %l161, !tbaa !24
  store i64 %t359, ptr %l150, !tbaa !24
  br label %bb97
bb96:
  br label %bb94
bb97:
  %t360 = load i64, ptr %l150, !tbaa !24
  store i64 %t360, ptr %l9, !tbaa !24
  %t361 = load i64, ptr %l11, !tbaa !24
  store i64 %t361, ptr %l6, !tbaa !24
  call void @__olang_scope_close(ptr %s12)
  br label %bb131
bb98:
  br label %bb100
bb99:
  br label %bb101
bb100:
  store i64 10, ptr %l164, !tbaa !24
  br label %bb130
bb101:
  %t363 = load i8, ptr %l8, !tbaa !22
  %t365 = icmp eq i8 %t363, 116
  br i1 %t365, label %bb102, label %bb103
bb102:
  br label %bb104
bb103:
  br label %bb105
bb104:
  store i64 9, ptr %l164, !tbaa !24
  br label %bb130
bb105:
  %t367 = load i8, ptr %l8, !tbaa !22
  %t369 = icmp eq i8 %t367, 114
  br i1 %t369, label %bb106, label %bb107
bb106:
  br label %bb108
bb107:
  br label %bb109
bb108:
  store i64 13, ptr %l164, !tbaa !24
  br label %bb130
bb109:
  %t371 = load i8, ptr %l8, !tbaa !22
  %t373 = icmp eq i8 %t371, 97
  br i1 %t373, label %bb110, label %bb111
bb110:
  br label %bb112
bb111:
  br label %bb113
bb112:
  store i64 7, ptr %l164, !tbaa !24
  br label %bb130
bb113:
  %t375 = load i8, ptr %l8, !tbaa !22
  %t377 = icmp eq i8 %t375, 98
  br i1 %t377, label %bb114, label %bb115
bb114:
  br label %bb116
bb115:
  br label %bb117
bb116:
  store i64 8, ptr %l164, !tbaa !24
  br label %bb130
bb117:
  %t379 = load i8, ptr %l8, !tbaa !22
  %t381 = icmp eq i8 %t379, 102
  br i1 %t381, label %bb118, label %bb119
bb118:
  br label %bb120
bb119:
  br label %bb121
bb120:
  store i64 12, ptr %l164, !tbaa !24
  br label %bb130
bb121:
  %t383 = load i8, ptr %l8, !tbaa !22
  %t385 = icmp eq i8 %t383, 118
  br i1 %t385, label %bb122, label %bb123
bb122:
  br label %bb124
bb123:
  br label %bb125
bb124:
  store i64 11, ptr %l164, !tbaa !24
  br label %bb130
bb125:
  br i1 true, label %bb126, label %bb127
bb126:
  br label %bb128
bb127:
  br label %bb129
bb128:
  %t387 = load i8, ptr %l8, !tbaa !22
  %t390 = zext i8 %t387 to i64
  store i64 %t390, ptr %l164, !tbaa !24
  br label %bb130
bb129:
  call void @__olang_check_failed(ptr @olang_loc_2265f42fe0f29d10_7d9e15ddc2058014)
  unreachable
bb130:
  %t392 = load i64, ptr %l164, !tbaa !24
  store i64 %t392, ptr %l9, !tbaa !24
  %t393 = load i64, ptr %l6, !tbaa !24
  %t395 = add i64 %t393, 1
  store i64 %t395, ptr %l6, !tbaa !24
  br label %bb131
bb131:
  br label %bb132
bb132:
  %t397 = load i64, ptr %l9, !tbaa !24
  %t399 = icmp slt i64 %t397, 0
  br i1 %t399, label %bb133, label %bb134
bb133:
  store i1 true, ptr %l186, !tbaa !21
  br label %bb135
bb134:
  %t401 = load i64, ptr %l9, !tbaa !24
  %t403 = icmp sgt i64 %t401, 255
  store i1 %t403, ptr %l186, !tbaa !21
  br label %bb135
bb135:
  %t405 = load i1, ptr %l186, !tbaa !21
  br i1 %t405, label %bb136, label %bb137
bb136:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d283, i32 0, i32 1) }, ptr %l189, !tbaa !27
  %t406 = load { i64, ptr }, ptr %l189, !tbaa !27
  store { i64, ptr } %t406, ptr %l190, !tbaa !27
  %t407 = load { i64, ptr }, ptr %l190, !tbaa !27
  %t408 = extractvalue { i64, ptr } %t407, 0
  store i64 %t408, ptr %l191, !tbaa !24
  %t409 = load i64, ptr %l191, !tbaa !24
  %t410 = mul i64 %t409, 1
  %t411 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t410)
  %t412 = insertvalue { i64, ptr } undef, i64 %t409, 0
  %t413 = insertvalue { i64, ptr } %t412, ptr %t411, 1
  store { i64, ptr } %t413, ptr %l192, !tbaa !27
  %t414 = getelementptr { i64, ptr }, ptr %l192, i32 0, i32 1
  %t415 = load ptr, ptr %t414, !tbaa !27
  %t416 = getelementptr { i64, ptr }, ptr %l190, i32 0, i32 1
  %t417 = load ptr, ptr %t416, !tbaa !27
  %t418 = load i64, ptr %l191, !tbaa !24
  %t419 = mul i64 %t418, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t415, ptr %t417, i64 %t419, i1 false)
  %t420 = load { i64, ptr }, ptr %l192, !tbaa !27
  store { i64, ptr } %t420, ptr %l190, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t421 = load { i64, ptr }, ptr %l190, !tbaa !27
  store { i64, ptr } %t421, ptr %rv
  br label %ret
bb137:
  br label %bb138
bb138:
  %t422 = load i64, ptr %l9, !tbaa !24
  %t424 = icmp eq i64 %t422, 34
  br i1 %t424, label %bb139, label %bb140
bb139:
  store i1 true, ptr %l195, !tbaa !21
  br label %bb141
bb140:
  %t426 = load i64, ptr %l9, !tbaa !24
  %t428 = icmp eq i64 %t426, 92
  store i1 %t428, ptr %l195, !tbaa !21
  br label %bb141
bb141:
  %t430 = load i1, ptr %l195, !tbaa !21
  br i1 %t430, label %bb142, label %bb143
bb142:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 92)
  br label %bb144
bb143:
  %t432 = load i64, ptr %l9, !tbaa !24
  %t434 = icmp sge i64 %t432, 32
  br i1 %t434, label %bb146, label %bb147
bb144:
  %t436 = load i64, ptr %l9, !tbaa !24
  %t438 = trunc i64 %t436 to i8
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 %t438)
  br label %bb145
bb145:
  br label %bb159
bb146:
  %t441 = load i64, ptr %l9, !tbaa !24
  %t443 = icmp slt i64 %t441, 127
  store i1 %t443, ptr %l204, !tbaa !21
  br label %bb148
bb147:
  store i1 false, ptr %l204, !tbaa !21
  br label %bb148
bb148:
  %t445 = load i1, ptr %l204, !tbaa !21
  br i1 %t445, label %bb149, label %bb150
bb149:
  %t446 = load i64, ptr %l9, !tbaa !24
  %t448 = trunc i64 %t446 to i8
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 %t448)
  br label %bb151
bb150:
  store %olang.scope zeroinitializer, ptr %s27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s27, ptr %l1, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d284, i32 0, i32 1) })
  br label %bb152
bb151:
  br label %bb158
bb152:
  store ptr %l1, ptr %l211, !tbaa !29
  %t452 = load i64, ptr %l9, !tbaa !24
  %t454 = trunc i64 %t452 to i8
  store i8 %t454, ptr %l213, !tbaa !22
  %t455 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s27, i64 16)
  %t456 = extractvalue { i32, i64 } %t455, 1
  %t457 = extractvalue { i32, i64 } %t455, 0
  store i32 %t457, ptr %l215
  %t458 = icmp ne i32 %t457, 0
  br i1 %t458, label %bb154, label %ok.459, !prof !99
ok.459:
  store i64 %t456, ptr %l214
  br label %bb153
bb153:
  %t460 = load i8, ptr %l213, !tbaa !22
  %t461 = load i64, ptr %l214, !tbaa !24
  %t462 = call { i64, ptr } @std_2fprelude_2ftext_2eU8_2eFormat(ptr %s27, i8 %t460, i64 %t461)
  store { i64, ptr } %t462, ptr %l216
  br label %bb155
bb154:
  call void @__olang_check_failed(ptr @olang_loc_6de4e6ae025697a1_ab8e19fa95fbb0c5)
  unreachable
bb155:
  %t463 = load { i64, ptr }, ptr %l216, !tbaa !27
  %t464 = extractvalue { i64, ptr } %t463, 0
  %t465 = extractvalue { i64, ptr } %t463, 1
  %t466 = mul i64 %t464, 1
  %t467 = call ptr @__olang_scope_alloc(ptr %s27, i64 %t466)
  call void @llvm.memcpy.p0.p0.i64(ptr %t467, ptr %t465, i64 %t466, i1 false)
  %t468 = insertvalue { i64, ptr } undef, i64 %t464, 0
  %t469 = insertvalue { i64, ptr } %t468, ptr %t467, 1
  %t471 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2ePadStart(ptr %s27, ptr %s27, { i64, ptr } %t469, i64 2, i8 48)
  store { i64, ptr } %t471, ptr %l218
  br label %bb156
bb156:
  %t472 = load { i64, ptr }, ptr %l218, !tbaa !27
  %t473 = extractvalue { i64, ptr } %t472, 0
  %t474 = extractvalue { i64, ptr } %t472, 1
  %t475 = mul i64 %t473, 1
  %t476 = call ptr @__olang_scope_alloc(ptr %s27, i64 %t475)
  call void @llvm.memcpy.p0.p0.i64(ptr %t476, ptr %t474, i64 %t475, i1 false)
  %t477 = insertvalue { i64, ptr } undef, i64 %t473, 0
  %t478 = insertvalue { i64, ptr } %t477, ptr %t476, 1
  %t479 = load ptr, ptr %l211, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s27, ptr %t479, { i64, ptr } %t478)
  br label %bb157
bb157:
  call void @__olang_scope_close(ptr %s27)
  br label %bb158
bb158:
  br label %bb159
bb159:
  br label %bb160
bb160:
  br label %bb16
bb161:
  br label %bb162
bb162:
  %t481 = load i64, ptr %l3, !tbaa !24
  %t483 = add i64 %t481, 1
  store i64 %t483, ptr %l3, !tbaa !24
  br label %bb6
bb163:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 34)
  br label %bb164
bb164:
  %t487 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l1)
  store { i64, ptr } %t487, ptr %l224
  br label %bb165
bb165:
  call void @__olang_scope_close(ptr %s0)
  %t488 = load { i64, ptr }, ptr %l224, !tbaa !27
  store { i64, ptr } %t488, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fbindgen_2etypeOf(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l1 = alloca ptr
  %l3 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call ptr @compiler_2fbindgen_2emember(ptr %v0, ptr %v0, ptr %v0, ptr %a0, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d285, i32 0, i32 1) })
  store ptr %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l3, !tbaa !29
  store ptr %t4, ptr %l1, !tbaa !29
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t7 = icmp eq ptr %t5, null
  br i1 %t7, label %bb2, label %bb3
bb2:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d286, i32 0, i32 1) }, ptr %l6, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t9, ptr %l7, !tbaa !27
  %t10 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t10, 0
  store i64 %t11, ptr %l8, !tbaa !24
  %t12 = load i64, ptr %l8, !tbaa !24
  %t13 = mul i64 %t12, 1
  %t14 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t13)
  %t15 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t16 = insertvalue { i64, ptr } %t15, ptr %t14, 1
  store { i64, ptr } %t16, ptr %l9, !tbaa !27
  %t17 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !27
  %t19 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !27
  %t21 = load i64, ptr %l8, !tbaa !24
  %t22 = mul i64 %t21, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t18, ptr %t20, i64 %t22, i1 false)
  %t23 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t23, ptr %l7, !tbaa !27
  %t24 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t24, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = call { i64, ptr } @compiler_2fbindgen_2etext(ptr %v0, ptr %v1, ptr %v1, ptr %t25, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d287, i32 0, i32 1) })
  store { i64, ptr } %t27, ptr %l11
  br label %bb5
bb5:
  %t28 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t28, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fbindgen_2eusable(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i8
  %l6 = alloca i1
  %l7 = alloca i1
  %l9 = alloca i1
  %l11 = alloca { i64, ptr }
  %l14 = alloca i1
  %l18 = alloca i1
  %l19 = alloca { i64, ptr }
  %l22 = alloca i1
  %l23 = alloca { i64, ptr }
  %l25 = alloca i1
  %l34 = alloca { i64, ptr }
  %l38 = alloca i1
  %l39 = alloca i1
  %l41 = alloca i1
  %l42 = alloca i1
  %l52 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d288, i32 0, i32 1) })
  store i1 %t3, ptr %l6
  br label %bb1
bb1:
  %t4 = load i1, ptr %l6, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb5
bb3:
  %t5 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t7 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t5, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d289, i32 0, i32 1) })
  store i1 %t7, ptr %l9
  br label %bb4
bb4:
  %t8 = load i1, ptr %l9, !tbaa !21
  store i1 %t8, ptr %l7, !tbaa !21
  br label %bb5
bb5:
  %t9 = load i1, ptr %l7, !tbaa !21
  br i1 %t9, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t11 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t11, ptr %l11, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr i8, ptr %t13, i64 0
  %t15 = load i8, ptr %t14, !tbaa !32
  %t17 = icmp eq i8 %t15, 95
  br i1 %t17, label %bb9, label %bb10
bb9:
  %t19 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t19, 0
  %t23 = icmp slt i64 %t21, 2
  br i1 %t23, label %bb11, label %bb12
bb10:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb18
bb11:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb13
bb12:
  %t25 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t25, ptr %l19, !tbaa !27
  %t26 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = getelementptr i8, ptr %t27, i64 1
  %t29 = load i8, ptr %t28, !tbaa !32
  %t31 = icmp eq i8 %t29, 95
  store i1 %t31, ptr %l18, !tbaa !21
  br label %bb13
bb13:
  %t33 = load i1, ptr %l18, !tbaa !21
  br i1 %t33, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb17
bb15:
  %t34 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t34, ptr %l23, !tbaa !27
  %t35 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !27
  %t37 = getelementptr i8, ptr %t36, i64 1
  %t38 = load i8, ptr %t37, !tbaa !32
  %t40 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %t38)
  store i1 %t40, ptr %l25
  br label %bb16
bb16:
  %t41 = load i1, ptr %l25, !tbaa !21
  store i1 %t41, ptr %l22, !tbaa !21
  br label %bb17
bb17:
  %t42 = load i1, ptr %l22, !tbaa !21
  store i1 %t42, ptr %l14, !tbaa !21
  br label %bb18
bb18:
  %t43 = load i1, ptr %l14, !tbaa !21
  br i1 %t43, label %bb19, label %bb20
bb19:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t45 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t45, ptr %l1, !tbaa !27
  store i64 0, ptr %l2, !tbaa !24
  %t47 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t49 = extractvalue { i64, ptr } %t47, 0
  store i64 %t49, ptr %l3, !tbaa !24
  br label %bb22
bb22:
  %t51 = load i64, ptr %l2, !tbaa !24
  %t52 = load i64, ptr %l3, !tbaa !24
  %t55 = icmp slt i64 %t51, %t52
  %t57 = xor i1 %t55, true
  br i1 %t57, label %bb23, label %bb24
bb23:
  br label %bb38
bb24:
  br label %bb25
bb25:
  %t59 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t59, ptr %l34, !tbaa !27
  %t60 = load i64, ptr %l2, !tbaa !24
  %t62 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !27
  %t64 = getelementptr i8, ptr %t63, i64 %t60
  %t65 = load i8, ptr %t64, !tbaa !32
  store i8 %t65, ptr %l4, !tbaa !22
  %t67 = load i8, ptr %l4, !tbaa !22
  %t69 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t67)
  store i1 %t69, ptr %l38
  br label %bb26
bb26:
  %t70 = load i1, ptr %l38, !tbaa !21
  br i1 %t70, label %bb27, label %bb28
bb27:
  store i1 true, ptr %l39, !tbaa !21
  br label %bb30
bb28:
  %t71 = load i8, ptr %l4, !tbaa !22
  %t73 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t71)
  store i1 %t73, ptr %l41
  br label %bb29
bb29:
  %t74 = load i1, ptr %l41, !tbaa !21
  store i1 %t74, ptr %l39, !tbaa !21
  br label %bb30
bb30:
  %t75 = load i1, ptr %l39, !tbaa !21
  br i1 %t75, label %bb31, label %bb32
bb31:
  store i1 true, ptr %l42, !tbaa !21
  br label %bb33
bb32:
  %t76 = load i8, ptr %l4, !tbaa !22
  %t78 = icmp eq i8 %t76, 95
  store i1 %t78, ptr %l42, !tbaa !21
  br label %bb33
bb33:
  %t80 = load i1, ptr %l42, !tbaa !21
  %t81 = xor i1 %t80, true
  br i1 %t81, label %bb34, label %bb35
bb34:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb35:
  br label %bb36
bb36:
  br label %bb37
bb37:
  %t84 = load i64, ptr %l2, !tbaa !24
  %t86 = add i64 %t84, 1
  store i64 %t86, ptr %l2, !tbaa !24
  br label %bb22
bb38:
  %t88 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t89 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t91 = extractvalue { i64, ptr } %t89, 0
  %t94 = call i32 @compiler_2ftoken_2eTok_2eKeyword(ptr %v0, { i64, ptr } %t88, i64 0, i64 %t91)
  store i32 %t94, ptr %l52
  br label %bb39
bb39:
  %t95 = load i32, ptr %l52, !range !{i32 0, i32 114}
  %t97 = trunc i64 1 to i32
  %t98 = icmp eq i32 %t95, %t97
  call void @__olang_scope_close(ptr %s0)
  store i1 %t98, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/bindgen:Translation" @compiler_2fbindgen_3aTranslation_2ector(ptr %v0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l5 = alloca i64
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/bindgen:Translation"
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d290, i32 0, i32 1) }, ptr %l0, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d291, i32 0, i32 1) }, ptr %l1, !tbaa !27
  %t1 = ptrtoint ptr %v0 to i64
  store i64 %t1, ptr %l5, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3aTranslation_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v0)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  %t6 = load i64, ptr %l5
  %t7 = inttoptr i64 %t6 to ptr
  %t8 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t7, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %l7
  br label %bb3
bb3:
  %t9 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3aTranslation_2e2
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t11 = load i64, ptr %l5
  %t12 = inttoptr i64 %t11 to ptr
  %t13 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7, i32 0, i32 0
  %t14 = load { i64, ptr }, ptr %t13
  %t15 = extractvalue { i64, ptr } %t14, 1
  %t16 = call ptr @__olang_region_or(ptr %t15, ptr null)
  %t17 = icmp ne ptr %t16, null
  %t18 = select i1 %t17, ptr %t16, ptr null
  %t19 = icmp eq ptr %t18, %t12
  call void @__olang_region_settle(ptr %t12, i1 %t19)
  br label %bb5
bb5:
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d292, i32 0, i32 1) }, ptr %l3, !tbaa !27
  %t21 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t22 = insertvalue %"compiler/bindgen:Translation" undef, { i64, ptr } %t21, 0
  %t23 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t24 = insertvalue %"compiler/bindgen:Translation" %t22, { i64, ptr } %t23, 1
  %t26 = insertvalue %"compiler/bindgen:Translation" %t24, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, 2
  %t27 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t28 = insertvalue %"compiler/bindgen:Translation" %t26, { i64, ptr } %t27, 3
  %t30 = insertvalue %"compiler/bindgen:Translation" %t28, i1 false, 4
  store %"compiler/bindgen:Translation" %t30, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/bindgen:Translation", ptr %rv
  ret %"compiler/bindgen:Translation" %rr
}

define dso_local void @compiler_2fbindgen_3agen_2ector(ptr %out, ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca i1
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l8 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l12 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l21 = alloca %"std/prelude/text:StringBuilder"
  %l22 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l23 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l24 = alloca i1
  %l26 = alloca { i64, ptr }
  %l29 = alloca i64
  %l31 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l33 = alloca i64
  %l35 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l37 = alloca i64
  %l39 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l41 = alloca i64
  %l43 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l45 = alloca i64
  %l47 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l49 = alloca i64
  %l51 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l53 = alloca i64
  %l55 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l57 = alloca i64
  %l59 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l61 = alloca i64
  %l63 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l65 = alloca i64
  %l67 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l69 = alloca i64
  %l71 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l73 = alloca i64
  %l75 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l77 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l78 = alloca i64
  %l80 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l82 = alloca i64
  %l84 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l86 = alloca i64
  %l88 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l90 = alloca i64
  %l92 = alloca %"std/prelude/text:StringBuilder"
  %l94 = alloca i64
  %l96 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l98 = alloca i64
  %l100 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l102 = alloca i64
  %l104 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l106 = alloca %"compiler/bindgen:gen"
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a0, ptr %l1, !tbaa !27
  store i1 false, ptr %l2, !tbaa !21
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d293, i32 0, i32 1) }, ptr %l3, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d294, i32 0, i32 1) }, ptr %l4, !tbaa !27
  %t3 = ptrtoint ptr %v1 to i64
  store i64 %t3, ptr %l29, !tbaa !24
  %t4 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e4
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = call ptr @__olang_region_make(ptr %v1)
  %t7 = ptrtoint ptr %t6 to i64
  store i64 %t7, ptr %l29, !tbaa !24
  br label %bb2
bb2:
  %t8 = load i64, ptr %l29
  %t9 = inttoptr i64 %t8 to ptr
  %t10 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t9)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t10, ptr %l31
  br label %bb3
bb3:
  %t11 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e4
  br i1 %t11, label %bb4, label %bb5
bb4:
  %t13 = load i64, ptr %l29
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l31, i32 0, i32 2
  %t16 = load { i64, ptr }, ptr %t15
  %t17 = extractvalue { i64, ptr } %t16, 1
  %t18 = call ptr @__olang_region_or(ptr %t17, ptr null)
  %t19 = icmp ne ptr %t18, null
  %t20 = select i1 %t19, ptr %t18, ptr null
  %t21 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l31, i32 0, i32 1
  %t22 = load { i64, ptr }, ptr %t21
  %t23 = extractvalue { i64, ptr } %t22, 1
  %t24 = call ptr @__olang_region_or(ptr %t23, ptr null)
  %t25 = icmp ne ptr %t24, null
  %t26 = select i1 %t25, ptr %t24, ptr %t20
  %t27 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l31, i32 0, i32 0
  %t28 = load { i64, ptr }, ptr %t27
  %t29 = extractvalue { i64, ptr } %t28, 1
  %t30 = call ptr @__olang_region_or(ptr %t29, ptr null)
  %t31 = icmp ne ptr %t30, null
  %t32 = select i1 %t31, ptr %t30, ptr %t26
  %t33 = icmp eq ptr %t32, %t14
  call void @__olang_region_settle(ptr %t14, i1 %t33)
  br label %bb5
bb5:
  %t34 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l31
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t34, ptr %l5
  %t35 = ptrtoint ptr %v1 to i64
  store i64 %t35, ptr %l33, !tbaa !24
  %t36 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e5
  br i1 %t36, label %bb6, label %bb7
bb6:
  %t38 = call ptr @__olang_region_make(ptr %v1)
  %t39 = ptrtoint ptr %t38 to i64
  store i64 %t39, ptr %l33, !tbaa !24
  br label %bb7
bb7:
  %t40 = load i64, ptr %l33
  %t41 = inttoptr i64 %t40 to ptr
  %t42 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2ector(ptr %t41, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t42, ptr %l35
  br label %bb8
bb8:
  %t43 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e5
  br i1 %t43, label %bb9, label %bb10
bb9:
  %t45 = load i64, ptr %l33
  %t46 = inttoptr i64 %t45 to ptr
  %t47 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l35, i32 0, i32 0
  %t48 = load { i64, ptr }, ptr %t47
  %t49 = extractvalue { i64, ptr } %t48, 1
  %t50 = call ptr @__olang_region_or(ptr %t49, ptr null)
  %t51 = icmp ne ptr %t50, null
  %t52 = select i1 %t51, ptr %t50, ptr null
  %t53 = icmp eq ptr %t52, %t46
  call void @__olang_region_settle(ptr %t46, i1 %t53)
  br label %bb10
bb10:
  %t54 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l35
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t54, ptr %l6
  %t55 = ptrtoint ptr %v1 to i64
  store i64 %t55, ptr %l37, !tbaa !24
  %t56 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e6
  br i1 %t56, label %bb11, label %bb12
bb11:
  %t58 = call ptr @__olang_region_make(ptr %v1)
  %t59 = ptrtoint ptr %t58 to i64
  store i64 %t59, ptr %l37, !tbaa !24
  br label %bb12
bb12:
  %t60 = load i64, ptr %l37
  %t61 = inttoptr i64 %t60 to ptr
  %t62 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2ector(ptr %t61)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t62, ptr %l39
  br label %bb13
bb13:
  %t63 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e6
  br i1 %t63, label %bb14, label %bb15
bb14:
  %t65 = load i64, ptr %l37
  %t66 = inttoptr i64 %t65 to ptr
  %t67 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l39, i32 0, i32 2
  %t68 = load { i64, ptr }, ptr %t67
  %t69 = extractvalue { i64, ptr } %t68, 1
  %t70 = call ptr @__olang_region_or(ptr %t69, ptr null)
  %t71 = icmp ne ptr %t70, null
  %t72 = select i1 %t71, ptr %t70, ptr null
  %t73 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l39, i32 0, i32 1
  %t74 = load { i64, ptr }, ptr %t73
  %t75 = extractvalue { i64, ptr } %t74, 1
  %t76 = call ptr @__olang_region_or(ptr %t75, ptr null)
  %t77 = icmp ne ptr %t76, null
  %t78 = select i1 %t77, ptr %t76, ptr %t72
  %t79 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l39, i32 0, i32 0
  %t80 = load { i64, ptr }, ptr %t79
  %t81 = extractvalue { i64, ptr } %t80, 1
  %t82 = call ptr @__olang_region_or(ptr %t81, ptr null)
  %t83 = icmp ne ptr %t82, null
  %t84 = select i1 %t83, ptr %t82, ptr %t78
  %t85 = icmp eq ptr %t84, %t66
  call void @__olang_region_settle(ptr %t66, i1 %t85)
  br label %bb15
bb15:
  %t86 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l39
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t86, ptr %l7
  %t87 = ptrtoint ptr %v1 to i64
  store i64 %t87, ptr %l41, !tbaa !24
  %t88 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e7
  br i1 %t88, label %bb16, label %bb17
bb16:
  %t90 = call ptr @__olang_region_make(ptr %v1)
  %t91 = ptrtoint ptr %t90 to i64
  store i64 %t91, ptr %l41, !tbaa !24
  br label %bb17
bb17:
  %t92 = load i64, ptr %l41
  %t93 = inttoptr i64 %t92 to ptr
  %t94 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2ector(ptr %t93)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t94, ptr %l43
  br label %bb18
bb18:
  %t95 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e7
  br i1 %t95, label %bb19, label %bb20
bb19:
  %t97 = load i64, ptr %l41
  %t98 = inttoptr i64 %t97 to ptr
  %t99 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l43, i32 0, i32 2
  %t100 = load { i64, ptr }, ptr %t99
  %t101 = extractvalue { i64, ptr } %t100, 1
  %t102 = call ptr @__olang_region_or(ptr %t101, ptr null)
  %t103 = icmp ne ptr %t102, null
  %t104 = select i1 %t103, ptr %t102, ptr null
  %t105 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l43, i32 0, i32 1
  %t106 = load { i64, ptr }, ptr %t105
  %t107 = extractvalue { i64, ptr } %t106, 1
  %t108 = call ptr @__olang_region_or(ptr %t107, ptr null)
  %t109 = icmp ne ptr %t108, null
  %t110 = select i1 %t109, ptr %t108, ptr %t104
  %t111 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l43, i32 0, i32 0
  %t112 = load { i64, ptr }, ptr %t111
  %t113 = extractvalue { i64, ptr } %t112, 1
  %t114 = call ptr @__olang_region_or(ptr %t113, ptr null)
  %t115 = icmp ne ptr %t114, null
  %t116 = select i1 %t115, ptr %t114, ptr %t110
  %t117 = icmp eq ptr %t116, %t98
  call void @__olang_region_settle(ptr %t98, i1 %t117)
  br label %bb20
bb20:
  %t118 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l43
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t118, ptr %l8
  %t119 = ptrtoint ptr %v1 to i64
  store i64 %t119, ptr %l45, !tbaa !24
  %t120 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e8
  br i1 %t120, label %bb21, label %bb22
bb21:
  %t122 = call ptr @__olang_region_make(ptr %v1)
  %t123 = ptrtoint ptr %t122 to i64
  store i64 %t123, ptr %l45, !tbaa !24
  br label %bb22
bb22:
  %t124 = load i64, ptr %l45
  %t125 = inttoptr i64 %t124 to ptr
  %t126 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acFunc_3e_2ector(ptr %t125, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t126, ptr %l47
  br label %bb23
bb23:
  %t127 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e8
  br i1 %t127, label %bb24, label %bb25
bb24:
  %t129 = load i64, ptr %l45
  %t130 = inttoptr i64 %t129 to ptr
  %t131 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l47, i32 0, i32 0
  %t132 = load { i64, ptr }, ptr %t131
  %t133 = extractvalue { i64, ptr } %t132, 1
  %t134 = call ptr @__olang_region_or(ptr %t133, ptr null)
  %t135 = icmp ne ptr %t134, null
  %t136 = select i1 %t135, ptr %t134, ptr null
  %t137 = icmp eq ptr %t136, %t130
  call void @__olang_region_settle(ptr %t130, i1 %t137)
  br label %bb25
bb25:
  %t138 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l47
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t138, ptr %l9
  %t139 = ptrtoint ptr %v1 to i64
  store i64 %t139, ptr %l49, !tbaa !24
  %t140 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e9
  br i1 %t140, label %bb26, label %bb27
bb26:
  %t142 = call ptr @__olang_region_make(ptr %v1)
  %t143 = ptrtoint ptr %t142 to i64
  store i64 %t143, ptr %l49, !tbaa !24
  br label %bb27
bb27:
  %t144 = load i64, ptr %l49
  %t145 = inttoptr i64 %t144 to ptr
  %t146 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t145, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t146, ptr %l51
  br label %bb28
bb28:
  %t147 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e9
  br i1 %t147, label %bb29, label %bb30
bb29:
  %t149 = load i64, ptr %l49
  %t150 = inttoptr i64 %t149 to ptr
  %t151 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l51, i32 0, i32 0
  %t152 = load { i64, ptr }, ptr %t151
  %t153 = extractvalue { i64, ptr } %t152, 1
  %t154 = call ptr @__olang_region_or(ptr %t153, ptr null)
  %t155 = icmp ne ptr %t154, null
  %t156 = select i1 %t155, ptr %t154, ptr null
  %t157 = icmp eq ptr %t156, %t150
  call void @__olang_region_settle(ptr %t150, i1 %t157)
  br label %bb30
bb30:
  %t158 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l51
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t158, ptr %l10
  %t159 = ptrtoint ptr %v1 to i64
  store i64 %t159, ptr %l53, !tbaa !24
  %t160 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e10
  br i1 %t160, label %bb31, label %bb32
bb31:
  %t162 = call ptr @__olang_region_make(ptr %v1)
  %t163 = ptrtoint ptr %t162 to i64
  store i64 %t163, ptr %l53, !tbaa !24
  br label %bb32
bb32:
  %t164 = load i64, ptr %l53
  %t165 = inttoptr i64 %t164 to ptr
  %t166 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2ector(ptr %t165)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t166, ptr %l55
  br label %bb33
bb33:
  %t167 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e10
  br i1 %t167, label %bb34, label %bb35
bb34:
  %t169 = load i64, ptr %l53
  %t170 = inttoptr i64 %t169 to ptr
  %t171 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l55, i32 0, i32 2
  %t172 = load { i64, ptr }, ptr %t171
  %t173 = extractvalue { i64, ptr } %t172, 1
  %t174 = call ptr @__olang_region_or(ptr %t173, ptr null)
  %t175 = icmp ne ptr %t174, null
  %t176 = select i1 %t175, ptr %t174, ptr null
  %t177 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l55, i32 0, i32 1
  %t178 = load { i64, ptr }, ptr %t177
  %t179 = extractvalue { i64, ptr } %t178, 1
  %t180 = call ptr @__olang_region_or(ptr %t179, ptr null)
  %t181 = icmp ne ptr %t180, null
  %t182 = select i1 %t181, ptr %t180, ptr %t176
  %t183 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l55, i32 0, i32 0
  %t184 = load { i64, ptr }, ptr %t183
  %t185 = extractvalue { i64, ptr } %t184, 1
  %t186 = call ptr @__olang_region_or(ptr %t185, ptr null)
  %t187 = icmp ne ptr %t186, null
  %t188 = select i1 %t187, ptr %t186, ptr %t182
  %t189 = icmp eq ptr %t188, %t170
  call void @__olang_region_settle(ptr %t170, i1 %t189)
  br label %bb35
bb35:
  %t190 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l55
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t190, ptr %l11
  %t191 = ptrtoint ptr %v1 to i64
  store i64 %t191, ptr %l57, !tbaa !24
  %t192 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e11
  br i1 %t192, label %bb36, label %bb37
bb36:
  %t194 = call ptr @__olang_region_make(ptr %v1)
  %t195 = ptrtoint ptr %t194 to i64
  store i64 %t195, ptr %l57, !tbaa !24
  br label %bb37
bb37:
  %t196 = load i64, ptr %l57
  %t197 = inttoptr i64 %t196 to ptr
  %t198 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2ector(ptr %t197)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t198, ptr %l59
  br label %bb38
bb38:
  %t199 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e11
  br i1 %t199, label %bb39, label %bb40
bb39:
  %t201 = load i64, ptr %l57
  %t202 = inttoptr i64 %t201 to ptr
  %t203 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l59, i32 0, i32 2
  %t204 = load { i64, ptr }, ptr %t203
  %t205 = extractvalue { i64, ptr } %t204, 1
  %t206 = call ptr @__olang_region_or(ptr %t205, ptr null)
  %t207 = icmp ne ptr %t206, null
  %t208 = select i1 %t207, ptr %t206, ptr null
  %t209 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l59, i32 0, i32 1
  %t210 = load { i64, ptr }, ptr %t209
  %t211 = extractvalue { i64, ptr } %t210, 1
  %t212 = call ptr @__olang_region_or(ptr %t211, ptr null)
  %t213 = icmp ne ptr %t212, null
  %t214 = select i1 %t213, ptr %t212, ptr %t208
  %t215 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l59, i32 0, i32 0
  %t216 = load { i64, ptr }, ptr %t215
  %t217 = extractvalue { i64, ptr } %t216, 1
  %t218 = call ptr @__olang_region_or(ptr %t217, ptr null)
  %t219 = icmp ne ptr %t218, null
  %t220 = select i1 %t219, ptr %t218, ptr %t214
  %t221 = icmp eq ptr %t220, %t202
  call void @__olang_region_settle(ptr %t202, i1 %t221)
  br label %bb40
bb40:
  %t222 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l59
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t222, ptr %l12
  %t223 = ptrtoint ptr %v1 to i64
  store i64 %t223, ptr %l61, !tbaa !24
  %t224 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e12
  br i1 %t224, label %bb41, label %bb42
bb41:
  %t226 = call ptr @__olang_region_make(ptr %v1)
  %t227 = ptrtoint ptr %t226 to i64
  store i64 %t227, ptr %l61, !tbaa !24
  br label %bb42
bb42:
  %t228 = load i64, ptr %l61
  %t229 = inttoptr i64 %t228 to ptr
  %t230 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acMacro_3e_2ector(ptr %t229, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t230, ptr %l63
  br label %bb43
bb43:
  %t231 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e12
  br i1 %t231, label %bb44, label %bb45
bb44:
  %t233 = load i64, ptr %l61
  %t234 = inttoptr i64 %t233 to ptr
  %t235 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l63, i32 0, i32 0
  %t236 = load { i64, ptr }, ptr %t235
  %t237 = extractvalue { i64, ptr } %t236, 1
  %t238 = call ptr @__olang_region_or(ptr %t237, ptr null)
  %t239 = icmp ne ptr %t238, null
  %t240 = select i1 %t239, ptr %t238, ptr null
  %t241 = icmp eq ptr %t240, %t234
  call void @__olang_region_settle(ptr %t234, i1 %t241)
  br label %bb45
bb45:
  %t242 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l63
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t242, ptr %l13
  %t243 = ptrtoint ptr %v1 to i64
  store i64 %t243, ptr %l65, !tbaa !24
  %t244 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e13
  br i1 %t244, label %bb46, label %bb47
bb46:
  %t246 = call ptr @__olang_region_make(ptr %v1)
  %t247 = ptrtoint ptr %t246 to i64
  store i64 %t247, ptr %l65, !tbaa !24
  br label %bb47
bb47:
  %t248 = load i64, ptr %l65
  %t249 = inttoptr i64 %t248 to ptr
  %t250 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2ector(ptr %t249)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t250, ptr %l67
  br label %bb48
bb48:
  %t251 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e13
  br i1 %t251, label %bb49, label %bb50
bb49:
  %t253 = load i64, ptr %l65
  %t254 = inttoptr i64 %t253 to ptr
  %t255 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l67, i32 0, i32 2
  %t256 = load { i64, ptr }, ptr %t255
  %t257 = extractvalue { i64, ptr } %t256, 1
  %t258 = call ptr @__olang_region_or(ptr %t257, ptr null)
  %t259 = icmp ne ptr %t258, null
  %t260 = select i1 %t259, ptr %t258, ptr null
  %t261 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l67, i32 0, i32 1
  %t262 = load { i64, ptr }, ptr %t261
  %t263 = extractvalue { i64, ptr } %t262, 1
  %t264 = call ptr @__olang_region_or(ptr %t263, ptr null)
  %t265 = icmp ne ptr %t264, null
  %t266 = select i1 %t265, ptr %t264, ptr %t260
  %t267 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l67, i32 0, i32 0
  %t268 = load { i64, ptr }, ptr %t267
  %t269 = extractvalue { i64, ptr } %t268, 1
  %t270 = call ptr @__olang_region_or(ptr %t269, ptr null)
  %t271 = icmp ne ptr %t270, null
  %t272 = select i1 %t271, ptr %t270, ptr %t266
  %t273 = icmp eq ptr %t272, %t254
  call void @__olang_region_settle(ptr %t254, i1 %t273)
  br label %bb50
bb50:
  %t274 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l67
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t274, ptr %l14
  %t275 = ptrtoint ptr %v1 to i64
  store i64 %t275, ptr %l69, !tbaa !24
  %t276 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e14
  br i1 %t276, label %bb51, label %bb52
bb51:
  %t278 = call ptr @__olang_region_make(ptr %v1)
  %t279 = ptrtoint ptr %t278 to i64
  store i64 %t279, ptr %l69, !tbaa !24
  br label %bb52
bb52:
  %t280 = load i64, ptr %l69
  %t281 = inttoptr i64 %t280 to ptr
  %t282 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t281, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t282, ptr %l71
  br label %bb53
bb53:
  %t283 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e14
  br i1 %t283, label %bb54, label %bb55
bb54:
  %t285 = load i64, ptr %l69
  %t286 = inttoptr i64 %t285 to ptr
  %t287 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l71, i32 0, i32 0
  %t288 = load { i64, ptr }, ptr %t287
  %t289 = extractvalue { i64, ptr } %t288, 1
  %t290 = call ptr @__olang_region_or(ptr %t289, ptr null)
  %t291 = icmp ne ptr %t290, null
  %t292 = select i1 %t291, ptr %t290, ptr null
  %t293 = icmp eq ptr %t292, %t286
  call void @__olang_region_settle(ptr %t286, i1 %t293)
  br label %bb55
bb55:
  %t294 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l71
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t294, ptr %l15
  %t295 = ptrtoint ptr %v1 to i64
  store i64 %t295, ptr %l73, !tbaa !24
  %t296 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e15
  br i1 %t296, label %bb56, label %bb57
bb56:
  %t298 = call ptr @__olang_region_make(ptr %v1)
  %t299 = ptrtoint ptr %t298 to i64
  store i64 %t299, ptr %l73, !tbaa !24
  br label %bb57
bb57:
  %t300 = load i64, ptr %l73
  %t301 = inttoptr i64 %t300 to ptr
  %t302 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t301)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t302, ptr %l75
  br label %bb58
bb58:
  %t303 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e15
  br i1 %t303, label %bb59, label %bb60
bb59:
  %t305 = load i64, ptr %l73
  %t306 = inttoptr i64 %t305 to ptr
  %t307 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l75, i32 0, i32 2
  %t308 = load { i64, ptr }, ptr %t307
  %t309 = extractvalue { i64, ptr } %t308, 1
  %t310 = call ptr @__olang_region_or(ptr %t309, ptr null)
  %t311 = icmp ne ptr %t310, null
  %t312 = select i1 %t311, ptr %t310, ptr null
  %t313 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l75, i32 0, i32 1
  %t314 = load { i64, ptr }, ptr %t313
  %t315 = extractvalue { i64, ptr } %t314, 1
  %t316 = call ptr @__olang_region_or(ptr %t315, ptr null)
  %t317 = icmp ne ptr %t316, null
  %t318 = select i1 %t317, ptr %t316, ptr %t312
  %t319 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l75, i32 0, i32 0
  %t320 = load { i64, ptr }, ptr %t319
  %t321 = extractvalue { i64, ptr } %t320, 1
  %t322 = call ptr @__olang_region_or(ptr %t321, ptr null)
  %t323 = icmp ne ptr %t322, null
  %t324 = select i1 %t323, ptr %t322, ptr %t318
  %t325 = icmp eq ptr %t324, %t306
  call void @__olang_region_settle(ptr %t306, i1 %t325)
  br label %bb60
bb60:
  %t326 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l75
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t326, ptr %l16
  %t327 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t327, ptr %l77
  br label %bb61
bb61:
  %t328 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l77
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t328, ptr %l17
  %t329 = ptrtoint ptr %v1 to i64
  store i64 %t329, ptr %l78, !tbaa !24
  %t330 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e17
  br i1 %t330, label %bb62, label %bb63
bb62:
  %t332 = call ptr @__olang_region_make(ptr %v1)
  %t333 = ptrtoint ptr %t332 to i64
  store i64 %t333, ptr %l78, !tbaa !24
  br label %bb63
bb63:
  %t334 = load i64, ptr %l78
  %t335 = inttoptr i64 %t334 to ptr
  %t336 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t335, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t336, ptr %l80
  br label %bb64
bb64:
  %t337 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e17
  br i1 %t337, label %bb65, label %bb66
bb65:
  %t339 = load i64, ptr %l78
  %t340 = inttoptr i64 %t339 to ptr
  %t341 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l80, i32 0, i32 0
  %t342 = load { i64, ptr }, ptr %t341
  %t343 = extractvalue { i64, ptr } %t342, 1
  %t344 = call ptr @__olang_region_or(ptr %t343, ptr null)
  %t345 = icmp ne ptr %t344, null
  %t346 = select i1 %t345, ptr %t344, ptr null
  %t347 = icmp eq ptr %t346, %t340
  call void @__olang_region_settle(ptr %t340, i1 %t347)
  br label %bb66
bb66:
  %t348 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l80
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t348, ptr %l18
  %t349 = ptrtoint ptr %v1 to i64
  store i64 %t349, ptr %l82, !tbaa !24
  %t350 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e18
  br i1 %t350, label %bb67, label %bb68
bb67:
  %t352 = call ptr @__olang_region_make(ptr %v1)
  %t353 = ptrtoint ptr %t352 to i64
  store i64 %t353, ptr %l82, !tbaa !24
  br label %bb68
bb68:
  %t354 = load i64, ptr %l82
  %t355 = inttoptr i64 %t354 to ptr
  %t356 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t355, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t356, ptr %l84
  br label %bb69
bb69:
  %t357 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e18
  br i1 %t357, label %bb70, label %bb71
bb70:
  %t359 = load i64, ptr %l82
  %t360 = inttoptr i64 %t359 to ptr
  %t361 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l84, i32 0, i32 0
  %t362 = load { i64, ptr }, ptr %t361
  %t363 = extractvalue { i64, ptr } %t362, 1
  %t364 = call ptr @__olang_region_or(ptr %t363, ptr null)
  %t365 = icmp ne ptr %t364, null
  %t366 = select i1 %t365, ptr %t364, ptr null
  %t367 = icmp eq ptr %t366, %t360
  call void @__olang_region_settle(ptr %t360, i1 %t367)
  br label %bb71
bb71:
  %t368 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l84
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t368, ptr %l19
  %t369 = ptrtoint ptr %v1 to i64
  store i64 %t369, ptr %l86, !tbaa !24
  %t370 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e19
  br i1 %t370, label %bb72, label %bb73
bb72:
  %t372 = call ptr @__olang_region_make(ptr %v1)
  %t373 = ptrtoint ptr %t372 to i64
  store i64 %t373, ptr %l86, !tbaa !24
  br label %bb73
bb73:
  %t374 = load i64, ptr %l86
  %t375 = inttoptr i64 %t374 to ptr
  %t376 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t375, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t376, ptr %l88
  br label %bb74
bb74:
  %t377 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e19
  br i1 %t377, label %bb75, label %bb76
bb75:
  %t379 = load i64, ptr %l86
  %t380 = inttoptr i64 %t379 to ptr
  %t381 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l88, i32 0, i32 0
  %t382 = load { i64, ptr }, ptr %t381
  %t383 = extractvalue { i64, ptr } %t382, 1
  %t384 = call ptr @__olang_region_or(ptr %t383, ptr null)
  %t385 = icmp ne ptr %t384, null
  %t386 = select i1 %t385, ptr %t384, ptr null
  %t387 = icmp eq ptr %t386, %t380
  call void @__olang_region_settle(ptr %t380, i1 %t387)
  br label %bb76
bb76:
  %t388 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l88
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t388, ptr %l20
  %t389 = ptrtoint ptr %v1 to i64
  store i64 %t389, ptr %l90, !tbaa !24
  %t390 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e20
  br i1 %t390, label %bb77, label %bb78
bb77:
  %t392 = call ptr @__olang_region_make(ptr %v1)
  %t393 = ptrtoint ptr %t392 to i64
  store i64 %t393, ptr %l90, !tbaa !24
  br label %bb78
bb78:
  %t394 = load i64, ptr %l90
  %t395 = inttoptr i64 %t394 to ptr
  %t396 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %t395)
  store %"std/prelude/text:StringBuilder" %t396, ptr %l92
  br label %bb79
bb79:
  %t397 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e20
  br i1 %t397, label %bb80, label %bb81
bb80:
  %t399 = load i64, ptr %l90
  %t400 = inttoptr i64 %t399 to ptr
  %t401 = getelementptr %"std/prelude/text:StringBuilder", ptr %l92, i32 0, i32 0
  %t402 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t401, i32 0, i32 0
  %t403 = load { i64, ptr }, ptr %t402
  %t404 = extractvalue { i64, ptr } %t403, 1
  %t405 = call ptr @__olang_region_or(ptr %t404, ptr null)
  %t406 = icmp ne ptr %t405, null
  %t407 = select i1 %t406, ptr %t405, ptr null
  %t408 = icmp eq ptr %t407, %t400
  call void @__olang_region_settle(ptr %t400, i1 %t408)
  br label %bb81
bb81:
  %t409 = load %"std/prelude/text:StringBuilder", ptr %l92
  store %"std/prelude/text:StringBuilder" %t409, ptr %l21
  %t410 = ptrtoint ptr %v1 to i64
  store i64 %t410, ptr %l94, !tbaa !24
  %t411 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e21
  br i1 %t411, label %bb82, label %bb83
bb82:
  %t413 = call ptr @__olang_region_make(ptr %v1)
  %t414 = ptrtoint ptr %t413 to i64
  store i64 %t414, ptr %l94, !tbaa !24
  br label %bb83
bb83:
  %t415 = load i64, ptr %l94
  %t416 = inttoptr i64 %t415 to ptr
  %t417 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2ector(ptr %t416)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t417, ptr %l96
  br label %bb84
bb84:
  %t418 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e21
  br i1 %t418, label %bb85, label %bb86
bb85:
  %t420 = load i64, ptr %l94
  %t421 = inttoptr i64 %t420 to ptr
  %t422 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l96, i32 0, i32 2
  %t423 = load { i64, ptr }, ptr %t422
  %t424 = extractvalue { i64, ptr } %t423, 1
  %t425 = call ptr @__olang_region_or(ptr %t424, ptr null)
  %t426 = icmp ne ptr %t425, null
  %t427 = select i1 %t426, ptr %t425, ptr null
  %t428 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l96, i32 0, i32 1
  %t429 = load { i64, ptr }, ptr %t428
  %t430 = extractvalue { i64, ptr } %t429, 1
  %t431 = call ptr @__olang_region_or(ptr %t430, ptr null)
  %t432 = icmp ne ptr %t431, null
  %t433 = select i1 %t432, ptr %t431, ptr %t427
  %t434 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l96, i32 0, i32 0
  %t435 = load { i64, ptr }, ptr %t434
  %t436 = extractvalue { i64, ptr } %t435, 1
  %t437 = call ptr @__olang_region_or(ptr %t436, ptr null)
  %t438 = icmp ne ptr %t437, null
  %t439 = select i1 %t438, ptr %t437, ptr %t433
  %t440 = icmp eq ptr %t439, %t421
  call void @__olang_region_settle(ptr %t421, i1 %t440)
  br label %bb86
bb86:
  %t441 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l96
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t441, ptr %l22
  %t442 = ptrtoint ptr %v1 to i64
  store i64 %t442, ptr %l98, !tbaa !24
  %t443 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e22
  br i1 %t443, label %bb87, label %bb88
bb87:
  %t445 = call ptr @__olang_region_make(ptr %v1)
  %t446 = ptrtoint ptr %t445 to i64
  store i64 %t446, ptr %l98, !tbaa !24
  br label %bb88
bb88:
  %t447 = load i64, ptr %l98
  %t448 = inttoptr i64 %t447 to ptr
  %t449 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t448)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t449, ptr %l100
  br label %bb89
bb89:
  %t450 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e22
  br i1 %t450, label %bb90, label %bb91
bb90:
  %t452 = load i64, ptr %l98
  %t453 = inttoptr i64 %t452 to ptr
  %t454 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l100, i32 0, i32 2
  %t455 = load { i64, ptr }, ptr %t454
  %t456 = extractvalue { i64, ptr } %t455, 1
  %t457 = call ptr @__olang_region_or(ptr %t456, ptr null)
  %t458 = icmp ne ptr %t457, null
  %t459 = select i1 %t458, ptr %t457, ptr null
  %t460 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l100, i32 0, i32 1
  %t461 = load { i64, ptr }, ptr %t460
  %t462 = extractvalue { i64, ptr } %t461, 1
  %t463 = call ptr @__olang_region_or(ptr %t462, ptr null)
  %t464 = icmp ne ptr %t463, null
  %t465 = select i1 %t464, ptr %t463, ptr %t459
  %t466 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l100, i32 0, i32 0
  %t467 = load { i64, ptr }, ptr %t466
  %t468 = extractvalue { i64, ptr } %t467, 1
  %t469 = call ptr @__olang_region_or(ptr %t468, ptr null)
  %t470 = icmp ne ptr %t469, null
  %t471 = select i1 %t470, ptr %t469, ptr %t465
  %t472 = icmp eq ptr %t471, %t453
  call void @__olang_region_settle(ptr %t453, i1 %t472)
  br label %bb91
bb91:
  %t473 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l100
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t473, ptr %l23
  store i1 false, ptr %l24, !tbaa !21
  %t474 = ptrtoint ptr %v1 to i64
  store i64 %t474, ptr %l102, !tbaa !24
  %t475 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e24
  br i1 %t475, label %bb92, label %bb93
bb92:
  %t477 = call ptr @__olang_region_make(ptr %v1)
  %t478 = ptrtoint ptr %t477 to i64
  store i64 %t478, ptr %l102, !tbaa !24
  br label %bb93
bb93:
  %t479 = load i64, ptr %l102
  %t480 = inttoptr i64 %t479 to ptr
  %t481 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2ector(ptr %t480)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t481, ptr %l104
  br label %bb94
bb94:
  %t482 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e24
  br i1 %t482, label %bb95, label %bb96
bb95:
  %t484 = load i64, ptr %l102
  %t485 = inttoptr i64 %t484 to ptr
  %t486 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l104, i32 0, i32 2
  %t487 = load { i64, ptr }, ptr %t486
  %t488 = extractvalue { i64, ptr } %t487, 1
  %t489 = call ptr @__olang_region_or(ptr %t488, ptr null)
  %t490 = icmp ne ptr %t489, null
  %t491 = select i1 %t490, ptr %t489, ptr null
  %t492 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l104, i32 0, i32 1
  %t493 = load { i64, ptr }, ptr %t492
  %t494 = extractvalue { i64, ptr } %t493, 1
  %t495 = call ptr @__olang_region_or(ptr %t494, ptr null)
  %t496 = icmp ne ptr %t495, null
  %t497 = select i1 %t496, ptr %t495, ptr %t491
  %t498 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l104, i32 0, i32 0
  %t499 = load { i64, ptr }, ptr %t498
  %t500 = extractvalue { i64, ptr } %t499, 1
  %t501 = call ptr @__olang_region_or(ptr %t500, ptr null)
  %t502 = icmp ne ptr %t501, null
  %t503 = select i1 %t502, ptr %t501, ptr %t497
  %t504 = icmp eq ptr %t503, %t485
  call void @__olang_region_settle(ptr %t485, i1 %t504)
  br label %bb96
bb96:
  %t505 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l104
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d295, i32 0, i32 1) }, ptr %l26, !tbaa !27
  %t506 = getelementptr %"compiler/bindgen:gen", ptr %l106, i32 0, i32 0
  %t507 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t507, ptr %t506, !tbaa !27
  %t508 = getelementptr %"compiler/bindgen:gen", ptr %l106, i32 0, i32 1
  %t509 = load i1, ptr %l2, !tbaa !21
  store i1 %t509, ptr %t508, !tbaa !21
  %t510 = getelementptr %"compiler/bindgen:gen", ptr %l106, i32 0, i32 2
  %t511 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t511, ptr %t510, !tbaa !27
  %t512 = getelementptr %"compiler/bindgen:gen", ptr %l106, i32 0, i32 3
  %t513 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t513, ptr %t512, !tbaa !27
  %t514 = getelementptr %"compiler/bindgen:gen", ptr %l106, i32 0, i32 4
  %t515 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l5
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t515, ptr %t514
  %t516 = getelementptr %"compiler/bindgen:gen", ptr %l106, i32 0, i32 5
  %t517 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t517, ptr %t516
  %t518 = getelementptr %"compiler/bindgen:gen", ptr %l106, i32 0, i32 6
  %t519 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l7
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t519, ptr %t518
  %t520 = getelementptr %"compiler/bindgen:gen", ptr %l106, i32 0, i32 7
  %t521 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l8
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t521, ptr %t520
  %t522 = getelementptr %"compiler/bindgen:gen", ptr %l106, i32 0, i32 8
  %t523 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t523, ptr %t522
  %t524 = getelementptr %"compiler/bindgen:gen", ptr %l106, i32 0, i32 9
  %t525 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t525, ptr %t524
  %t526 = getelementptr %"compiler/bindgen:gen", ptr %l106, i32 0, i32 10
  %t527 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l11
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t527, ptr %t526
  %t528 = getelementptr %"compiler/bindgen:gen", ptr %l106, i32 0, i32 11
  %t529 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l12
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t529, ptr %t528
  %t530 = getelementptr %"compiler/bindgen:gen", ptr %l106, i32 0, i32 12
  %t531 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t531, ptr %t530
  %t532 = getelementptr %"compiler/bindgen:gen", ptr %l106, i32 0, i32 13
  %t533 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l14
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t533, ptr %t532
  %t534 = getelementptr %"compiler/bindgen:gen", ptr %l106, i32 0, i32 14
  %t535 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t535, ptr %t534
  %t536 = getelementptr %"compiler/bindgen:gen", ptr %l106, i32 0, i32 15
  %t537 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l16
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t537, ptr %t536
  %t538 = getelementptr %"compiler/bindgen:gen", ptr %l106, i32 0, i32 16
  %t539 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t539, ptr %t538
  %t540 = getelementptr %"compiler/bindgen:gen", ptr %l106, i32 0, i32 17
  %t541 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t541, ptr %t540
  %t542 = getelementptr %"compiler/bindgen:gen", ptr %l106, i32 0, i32 18
  %t543 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t543, ptr %t542
  %t544 = getelementptr %"compiler/bindgen:gen", ptr %l106, i32 0, i32 19
  %t545 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t545, ptr %t544
  %t546 = getelementptr %"compiler/bindgen:gen", ptr %l106, i32 0, i32 20
  %t547 = load %"std/prelude/text:StringBuilder", ptr %l21
  store %"std/prelude/text:StringBuilder" %t547, ptr %t546
  %t548 = getelementptr %"compiler/bindgen:gen", ptr %l106, i32 0, i32 21
  %t549 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l22
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t549, ptr %t548
  %t550 = getelementptr %"compiler/bindgen:gen", ptr %l106, i32 0, i32 22
  %t551 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l23
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t551, ptr %t550
  %t552 = getelementptr %"compiler/bindgen:gen", ptr %l106, i32 0, i32 23
  %t553 = load i1, ptr %l24, !tbaa !21
  store i1 %t553, ptr %t552, !tbaa !21
  %t554 = getelementptr %"compiler/bindgen:gen", ptr %l106, i32 0, i32 24
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t505, ptr %t554
  %t556 = getelementptr %"compiler/bindgen:gen", ptr %l106, i32 0, i32 25
  %t557 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t557, ptr %t556, !tbaa !27
  %t558 = getelementptr %"compiler/bindgen:gen", ptr %l106, i32 0, i32 26
  store i64 0, ptr %t558, !tbaa !24
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l106, i64 1128, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fbindgen_3arecord_2ector(ptr %out, ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca i1
  %l3 = alloca i1
  %l4 = alloca i1
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca i1
  %l8 = alloca { i64, ptr }
  %l9 = alloca i1
  %l10 = alloca i64
  %l11 = alloca i1
  %l12 = alloca { i64, ptr }
  %l13 = alloca i1
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i1
  %l19 = alloca i64
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l23 = alloca i64
  %l25 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l27 = alloca i64
  %l29 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l31 = alloca %"compiler/bindgen:record"
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a0, ptr %l1, !tbaa !27
  store i1 false, ptr %l2, !tbaa !21
  store i1 false, ptr %l3, !tbaa !21
  store i1 false, ptr %l4, !tbaa !21
  %t3 = ptrtoint ptr %v1 to i64
  store i64 %t3, ptr %l19, !tbaa !24
  %t4 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3arecord_2e4
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = call ptr @__olang_region_make(ptr %v1)
  %t7 = ptrtoint ptr %t6 to i64
  store i64 %t7, ptr %l19, !tbaa !24
  br label %bb2
bb2:
  %t8 = load i64, ptr %l19
  %t9 = inttoptr i64 %t8 to ptr
  %t10 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t9, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %l21
  br label %bb3
bb3:
  %t11 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3arecord_2e4
  br i1 %t11, label %bb4, label %bb5
bb4:
  %t13 = load i64, ptr %l19
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21, i32 0, i32 0
  %t16 = load { i64, ptr }, ptr %t15
  %t17 = extractvalue { i64, ptr } %t16, 1
  %t18 = call ptr @__olang_region_or(ptr %t17, ptr null)
  %t19 = icmp ne ptr %t18, null
  %t20 = select i1 %t19, ptr %t18, ptr null
  %t21 = icmp eq ptr %t20, %t14
  call void @__olang_region_settle(ptr %t14, i1 %t21)
  br label %bb5
bb5:
  %t22 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t22, ptr %l5
  %t23 = ptrtoint ptr %v1 to i64
  store i64 %t23, ptr %l23, !tbaa !24
  %t24 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3arecord_2e5
  br i1 %t24, label %bb6, label %bb7
bb6:
  %t26 = call ptr @__olang_region_make(ptr %v1)
  %t27 = ptrtoint ptr %t26 to i64
  store i64 %t27, ptr %l23, !tbaa !24
  br label %bb7
bb7:
  %t28 = load i64, ptr %l23
  %t29 = inttoptr i64 %t28 to ptr
  %t30 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t29, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t30, ptr %l25
  br label %bb8
bb8:
  %t31 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3arecord_2e5
  br i1 %t31, label %bb9, label %bb10
bb9:
  %t33 = load i64, ptr %l23
  %t34 = inttoptr i64 %t33 to ptr
  %t35 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l25, i32 0, i32 0
  %t36 = load { i64, ptr }, ptr %t35
  %t37 = extractvalue { i64, ptr } %t36, 1
  %t38 = call ptr @__olang_region_or(ptr %t37, ptr null)
  %t39 = icmp ne ptr %t38, null
  %t40 = select i1 %t39, ptr %t38, ptr null
  %t41 = icmp eq ptr %t40, %t34
  call void @__olang_region_settle(ptr %t34, i1 %t41)
  br label %bb10
bb10:
  %t42 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l25
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t42, ptr %l6
  store i1 false, ptr %l7, !tbaa !21
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d296, i32 0, i32 1) }, ptr %l8, !tbaa !27
  store i1 false, ptr %l9, !tbaa !21
  store i64 -1, ptr %l10, !tbaa !24
  store i1 false, ptr %l11, !tbaa !21
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d297, i32 0, i32 1) }, ptr %l12, !tbaa !27
  store i1 false, ptr %l13, !tbaa !21
  store i64 -1, ptr %l14, !tbaa !24
  store i64 -1, ptr %l15, !tbaa !24
  store i1 false, ptr %l16, !tbaa !21
  %t43 = ptrtoint ptr %v1 to i64
  store i64 %t43, ptr %l27, !tbaa !24
  %t44 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3arecord_2e16
  br i1 %t44, label %bb11, label %bb12
bb11:
  %t46 = call ptr @__olang_region_make(ptr %v1)
  %t47 = ptrtoint ptr %t46 to i64
  store i64 %t47, ptr %l27, !tbaa !24
  br label %bb12
bb12:
  %t48 = load i64, ptr %l27
  %t49 = inttoptr i64 %t48 to ptr
  %t50 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t49, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t50, ptr %l29
  br label %bb13
bb13:
  %t51 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3arecord_2e16
  br i1 %t51, label %bb14, label %bb15
bb14:
  %t53 = load i64, ptr %l27
  %t54 = inttoptr i64 %t53 to ptr
  %t55 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l29, i32 0, i32 0
  %t56 = load { i64, ptr }, ptr %t55
  %t57 = extractvalue { i64, ptr } %t56, 1
  %t58 = call ptr @__olang_region_or(ptr %t57, ptr null)
  %t59 = icmp ne ptr %t58, null
  %t60 = select i1 %t59, ptr %t58, ptr null
  %t61 = icmp eq ptr %t60, %t54
  call void @__olang_region_settle(ptr %t54, i1 %t61)
  br label %bb15
bb15:
  %t62 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l29
  %t63 = getelementptr %"compiler/bindgen:record", ptr %l31, i32 0, i32 0
  %t64 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t64, ptr %t63, !tbaa !27
  %t65 = getelementptr %"compiler/bindgen:record", ptr %l31, i32 0, i32 1
  %t66 = load i1, ptr %l2, !tbaa !21
  store i1 %t66, ptr %t65, !tbaa !21
  %t67 = getelementptr %"compiler/bindgen:record", ptr %l31, i32 0, i32 2
  %t68 = load i1, ptr %l3, !tbaa !21
  store i1 %t68, ptr %t67, !tbaa !21
  %t69 = getelementptr %"compiler/bindgen:record", ptr %l31, i32 0, i32 3
  %t70 = load i1, ptr %l4, !tbaa !21
  store i1 %t70, ptr %t69, !tbaa !21
  %t71 = getelementptr %"compiler/bindgen:record", ptr %l31, i32 0, i32 4
  %t72 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t72, ptr %t71
  %t73 = getelementptr %"compiler/bindgen:record", ptr %l31, i32 0, i32 5
  %t74 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t74, ptr %t73
  %t75 = getelementptr %"compiler/bindgen:record", ptr %l31, i32 0, i32 6
  %t76 = load i1, ptr %l7, !tbaa !21
  store i1 %t76, ptr %t75, !tbaa !21
  %t77 = getelementptr %"compiler/bindgen:record", ptr %l31, i32 0, i32 7
  %t78 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t78, ptr %t77, !tbaa !27
  %t79 = getelementptr %"compiler/bindgen:record", ptr %l31, i32 0, i32 8
  %t80 = load i1, ptr %l9, !tbaa !21
  store i1 %t80, ptr %t79, !tbaa !21
  %t81 = getelementptr %"compiler/bindgen:record", ptr %l31, i32 0, i32 9
  %t82 = load i64, ptr %l10, !tbaa !24
  store i64 %t82, ptr %t81, !tbaa !24
  %t83 = getelementptr %"compiler/bindgen:record", ptr %l31, i32 0, i32 10
  %t84 = load i1, ptr %l11, !tbaa !21
  store i1 %t84, ptr %t83, !tbaa !21
  %t85 = getelementptr %"compiler/bindgen:record", ptr %l31, i32 0, i32 11
  %t86 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t86, ptr %t85, !tbaa !27
  %t87 = getelementptr %"compiler/bindgen:record", ptr %l31, i32 0, i32 12
  %t88 = load i1, ptr %l13, !tbaa !21
  store i1 %t88, ptr %t87, !tbaa !21
  %t89 = getelementptr %"compiler/bindgen:record", ptr %l31, i32 0, i32 13
  %t90 = load i64, ptr %l14, !tbaa !24
  store i64 %t90, ptr %t89, !tbaa !24
  %t91 = getelementptr %"compiler/bindgen:record", ptr %l31, i32 0, i32 14
  %t92 = load i64, ptr %l15, !tbaa !24
  store i64 %t92, ptr %t91, !tbaa !24
  %t93 = getelementptr %"compiler/bindgen:record", ptr %l31, i32 0, i32 15
  %t94 = load i1, ptr %l16, !tbaa !21
  store i1 %t94, ptr %t93, !tbaa !21
  %t95 = getelementptr %"compiler/bindgen:record", ptr %l31, i32 0, i32 16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t62, ptr %t95
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l31, i64 216, i1 false)
  br label %ret
ret:
  ret void
}

declare void @__olang_errpay_pop()
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
@.d0 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"0x" }>, align 8
@.d1 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d2 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"e" }>, align 8
declare void @__olang_check_failed(ptr) cold noreturn
@.d3 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d4 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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
@.d5 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"&&" }>, align 8
@.d6 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"||" }>, align 8
@olang_2esole_2ecompiler_2fbindgen_3acx_2e0 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d7 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"&&" }>, align 8
@.d8 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" and " }>, align 8
@.d9 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" or " }>, align 8
@.d10 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d11 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
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
@.d12 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare void @__olang_region_release(ptr) noinline
@olang_2esole_2ecompiler_2fbindgen_3acx_2e3 = weak hidden constant i1 false
@.d13 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d14 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d15 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d16 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d17 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d18 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d19 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d20 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d21 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d22 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" != 0)" }>, align 8
@.d23 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d24 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"-" }>, align 8
@.d25 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"+" }>, align 8
@.d26 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"~" }>, align 8
@.d27 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"+" }>, align 8
@.d28 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d29 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d30 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"!" }>, align 8
@.d31 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"(not " }>, align 8
@.d32 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d33 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d34 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d35 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d36 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d37 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d38 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d39 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d40 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d41 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I32" }>, align 8
@.d42 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
@.d43 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d44 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" = " }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2e0 = weak hidden constant i1 false
@.d45 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"*" }>, align 8
@.d46 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d47 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"const" }>, align 8
@.d48 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"volatile" }>, align 8
@.d49 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"restrict" }>, align 8
@.d50 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"__restrict" }>, align 8
@.d51 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"const" }>, align 8
@.d52 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d53 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"*" }>, align 8
@.d54 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d55 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"[" }>, align 8
@.d56 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d57 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d58 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d59 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d60 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"..." }>, align 8
@.d61 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d62 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"," }>, align 8
@.d63 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"variadic" }>, align 8
@.d64 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d65 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"[" }>, align 8
@.d66 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"]" }>, align 8
@.d67 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@__olang_prog_scope = external thread_local(initialexec) global ptr
@.d68 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"its type is no function's" }>, align 8
@.d69 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"fn " }>, align 8
@.d70 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d71 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d72 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d73 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d74 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"variadic" }>, align 8
@.d75 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c", ..." }>, align 8
@.d76 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"..." }>, align 8
@.d77 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d78 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20st_Ha3f33385783b00c3f13cf90b683d8670 = weak hidden constant i1 false
@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20st_Ha3f33285783aff10f13cf80b683d8c03 = weak hidden constant i1 false
@.d79 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" noreturn" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
define linkonce_odr void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbindgen_3arecord(ptr %out, ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/bindgen:record"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  call void @llvm.memmove.p0.p0.i64(ptr %l1, ptr %a0, i64 216, i1 false)
  %t2 = getelementptr %"compiler/bindgen:record", ptr %l1, i32 0, i32 4
  %t4 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %t2)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l3
  br label %bb1
bb1:
  %t5 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t6 = getelementptr %"compiler/bindgen:record", ptr %l1, i32 0, i32 4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %t6
  %t7 = getelementptr %"compiler/bindgen:record", ptr %l1, i32 0, i32 5
  %t9 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %t7)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %l5
  br label %bb2
bb2:
  %t10 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t11 = getelementptr %"compiler/bindgen:record", ptr %l1, i32 0, i32 5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %t11
  %t12 = getelementptr %"compiler/bindgen:record", ptr %l1, i32 0, i32 16
  %t14 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t12)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l7
  br label %bb3
bb3:
  %t15 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  %t16 = getelementptr %"compiler/bindgen:record", ptr %l1, i32 0, i32 16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %t16
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l1, i64 216, i1 false)
  br label %ret
ret:
  ret void
}

@.d80 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d81 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fbindgen_3arecord_2e11 = weak hidden constant i1 false
@.d82 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d83 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d84 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"c_" }>, align 8
@.d85 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"_t" }>, align 8
@olang_2esole_2ecompiler_2fbindgen_3arecord_2e7 = weak hidden constant i1 false
@.d86 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"void" }>, align 8
@.d87 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d88 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"_Bool" }>, align 8
@.d89 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"bool" }>, align 8
@.d90 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Bool" }>, align 8
@.d91 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"char" }>, align 8
@.d92 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"I8" }>, align 8
@.d93 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"U8" }>, align 8
@.d94 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"char" }>, align 8
@.d95 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"float" }>, align 8
@.d96 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"F32" }>, align 8
@.d97 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"double" }>, align 8
@.d98 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"long double" }>, align 8
@.d99 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"F64" }>, align 8
@.d100 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"_Float16" }>, align 8
@.d101 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"F16" }>, align 8
@.d102 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"__bf16" }>, align 8
@.d103 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"BF16" }>, align 8
@.d104 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"__int128" }>, align 8
@.d105 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"__int128" }>, align 8
@.d106 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"short" }>, align 8
@.d107 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"U16" }>, align 8
@.d108 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I16" }>, align 8
@.d109 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"U64" }>, align 8
@.d110 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
@.d111 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"U32" }>, align 8
@.d112 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I32" }>, align 8
@.d113 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"variadic" }>, align 8
@.d114 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d115 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"F" }>, align 8
@.d116 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"    " }>, align 8
@.d117 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d118 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d119 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"F" }>, align 8
@.d120 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Bool" }>, align 8
@.d121 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"char" }>, align 8
@.d122 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"U8" }>, align 8
@.d123 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"    " }>, align 8
@.d124 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c" := Array<" }>, align 8
@.d125 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c">(" }>, align 8
@.d126 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c")\0A" }>, align 8
@.d127 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Bool" }>, align 8
@.d128 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"char" }>, align 8
@.d129 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"U8" }>, align 8
@.d130 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"    " }>, align 8
@.d131 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d132 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d133 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"F" }>, align 8
@.d134 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"BF16" }>, align 8
@.d135 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"a typedef that names itself" }>, align 8
@olang_2esole_2ecompiler_2fbindgen_3actp_2e0 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbindgen_3actype_2e1 = weak hidden constant i1 false
@.d136 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d137 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"', which is no C type read here" }>, align 8
@.d138 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"char" }>, align 8
@.d139 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"U8" }>, align 8
@.d140 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Array<" }>, align 8
@.d141 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c">" }>, align 8
@.d142 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"mut Array<" }>, align 8
@.d143 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c">&" }>, align 8
@.d144 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d145 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"mut " }>, align 8
@.d146 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"?&" }>, align 8
@.d147 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"mut Array<CStr?&>&" }>, align 8
@.d148 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"mut Array<" }>, align 8
@.d149 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"?&>&" }>, align 8
@.d150 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"mut Array<CVoid?&>&" }>, align 8
@.d151 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"variadic" }>, align 8
@.d152 = private constant <{ i64, [48 x i8] }> <{ i64 0, [48 x i8] c"a callback taking a variable number of arguments" }>, align 8
@.d153 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"fn?&(" }>, align 8
@.d154 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d155 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"a" }>, align 8
@.d156 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d157 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d158 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d159 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"loc" }>, align 8
@.d160 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"range" }>, align 8
@.d161 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"type" }>, align 8
@.d162 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"inner" }>, align 8
@.d163 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"kind" }>, align 8
@.d164 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"name" }>, align 8
@.d165 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"TypedefDecl" }>, align 8
@.d166 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"ownedTagDecl" }>, align 8
@.d167 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"id" }>, align 8
@.d168 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"struct " }>, align 8
@.d169 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"union " }>, align 8
@olang_2esole_2ecompiler_2fbindgen_3arecord_2e0 = weak hidden constant i1 false
@.d170 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d171 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"RecordDecl" }>, align 8
@.d172 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"EnumDecl" }>, align 8
@.d173 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"kind" }>, align 8
@.d174 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"EnumConstantDecl" }>, align 8
@.d175 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d176 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"name" }>, align 8
@.d177 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"FunctionDecl" }>, align 8
@.d178 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"isImplicit" }>, align 8
@.d179 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"kind" }>, align 8
@.d180 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"ParmVarDecl" }>, align 8
@.d181 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"name" }>, align 8
@.d182 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"storageClass" }>, align 8
@.d183 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"static" }>, align 8
@.d184 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"inline" }>, align 8
@.d185 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"mangledName" }>, align 8
@.d186 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d187 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fbindgen_3acFunc_2e0 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbindgen_3acFunc_2e1 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbindgen_3acFunc_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbindgen_3acFunc_2e3 = weak hidden constant i1 false
@.d188 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"VarDecl" }>, align 8
@.d189 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"storageClass" }>, align 8
@.d190 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"static" }>, align 8
@.d191 = private constant <{ i64, [56 x i8] }> <{ i64 0, [56 x i8] c": a variable - an extern variable has no olang form (X1)" }>, align 8
@olang_2esole_2ecompiler_2fbindgen_3agen_2e25 = weak hidden constant i1 false
@.d192 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"includedFrom" }>, align 8
@.d193 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"file" }>, align 8
@.d194 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"char" }>, align 8
@.d195 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"I8" }>, align 8
@.d196 = private constant <{ i64, [46 x i8] }> <{ i64 0, [46 x i8] c"a struct by value that is not plain data (X11)" }>, align 8
@.d197 = private constant <{ i64, [47 x i8] }> <{ i64 0, [47 x i8] c"a packed struct holding a float by value (X11a)" }>, align 8
@.d198 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"CStr?&" }>, align 8
@.d199 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"?&" }>, align 8
@.d200 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d201 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"mut " }>, align 8
@.d202 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"?&" }>, align 8
@.d203 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"a pointer to plain-data struct " }>, align 8
@.d204 = private constant <{ i64, [67 x i8] }> <{ i64 0, [67 x i8] c" as a result - an extern gives only an extern type's reference (X2)" }>, align 8
@.d205 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"CVoid?&" }>, align 8
@.d206 = private constant <{ i64, [45 x i8] }> <{ i64 0, [45 x i8] c"a value of this type, which has no olang form" }>, align 8
@.d207 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d208 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"c_" }>, align 8
@.d209 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"..." }>, align 8
@.d210 = private constant <{ i64, [59 x i8] }> <{ i64 0, [59 x i8] c"static or inline, and taking a variable number of arguments" }>, align 8
@.d211 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d212 = private constant <{ i64, [55 x i8] }> <{ i64 0, [55 x i8] c"static or inline, its result's type no olang form wraps" }>, align 8
@.d213 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"olang_ci_" }>, align 8
@.d214 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
@.d215 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d216 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d217 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"void" }>, align 8
@.d218 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d219 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"__typeof__(" }>, align 8
@.d220 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c") olang_a" }>, align 8
@.d221 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c") { " }>, align 8
@.d222 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"void" }>, align 8
@.d223 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"return " }>, align 8
@.d224 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d225 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d226 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"olang_a" }>, align 8
@.d227 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"); }\0A" }>, align 8
@.d228 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"inner" }>, align 8
@__olang_empty_array = external constant [16 x i64]
@.d229 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"char" }>, align 8
@.d230 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Bool" }>, align 8
@.d231 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"BF16" }>, align 8
@.d232 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d233 = private constant <{ i64, [53 x i8] }> <{ i64 0, [53 x i8] c"olang: bindgen needs clang, which is not on the PATH\0A" }>, align 8
@.d234 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"olang: " }>, align 8
@.d235 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c": no such file\0A" }>, align 8
@.d236 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"olang: " }>, align 8
@.d237 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c": no such file\0A" }>, align 8
@.d238 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d239 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"olang-bindgen" }>, align 8
@.d240 = private constant <{ i64, [50 x i8] }> <{ i64 0, [50 x i8] c"olang: bindgen: cannot make a temporary directory\0A" }>, align 8
@.d241 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"probe.c" }>, align 8
@.d242 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"#include \22" }>, align 8
@.d243 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\22" }>, align 8
@.d244 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d245 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c"olang: bindgen: cannot write " }>, align 8
@.d246 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@.d247 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-E" }>, align 8
@.d248 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"-dD" }>, align 8
@.d249 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-x" }>, align 8
@.d250 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"c" }>, align 8
@.d251 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-w" }>, align 8
@.d252 = private constant <{ i64, [39 x i8] }> <{ i64 0, [39 x i8] c"olang: bindgen: clang could not be run\0A" }>, align 8
@.d253 = private constant <{ i64, [37 x i8] }> <{ i64 0, [37 x i8] c"olang: bindgen: clang could not read " }>, align 8
@.d254 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c":\0A" }>, align 8
@.d255 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d256 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"enum __olang_m" }>, align 8
@.d257 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c" : long long { __olang_v" }>, align 8
@.d258 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" = (" }>, align 8
@.d259 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c") };\0A" }>, align 8
@.d260 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c"olang: bindgen: cannot write " }>, align 8
@.d261 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d262 = private constant <{ i64, [37 x i8] }> <{ i64 0, [37 x i8] c"olang: bindgen: clang could not read " }>, align 8
@.d263 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d264 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d265 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"name" }>, align 8
@.d266 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"kind" }>, align 8
@.d267 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"EnumDecl" }>, align 8
@.d268 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"__olang_m" }>, align 8
@.d269 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d270 = private constant <{ i64, [37 x i8] }> <{ i64 0, [37 x i8] c"olang: bindgen: clang could not read " }>, align 8
@.d271 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d272 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d273 = private constant <{ i64, [34 x i8] }> <{ i64 0, [34 x i8] c"# Generated by olang bindgen from " }>, align 8
@.d274 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c":\0A" }>, align 8
@.d275 = private constant <{ i64, [104 x i8] }> <{ i64 0, [104 x i8] c"# its C declarations as olang declares them (X1-X21) - write the library they are in after \22extern\22, as\0A" }>, align 8
@.d276 = private constant <{ i64, [66 x i8] }> <{ i64 0, [66 x i8] c"# 'extern link \22NAME\22 {' (X9), or import the header itself (X17).\0A" }>, align 8
@.d277 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d278 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"olang: " }>, align 8
@.d279 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c": cannot be written\0A" }>, align 8
@.d280 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d281 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d282 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d283 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d284 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"\5Cx" }>, align 8
@.d285 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"type" }>, align 8
@.d286 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d287 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"qualType" }>, align 8
@.d288 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d289 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
@.d290 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d291 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fbindgen_3aTranslation_2e2 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
@.d292 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d293 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d294 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fbindgen_3agen_2e4 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbindgen_3agen_2e5 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbindgen_3agen_2e6 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbindgen_3agen_2e7 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbindgen_3agen_2e8 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbindgen_3agen_2e9 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbindgen_3agen_2e10 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbindgen_3agen_2e11 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbindgen_3agen_2e12 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbindgen_3agen_2e13 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbindgen_3agen_2e14 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbindgen_3agen_2e15 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbindgen_3agen_2e17 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbindgen_3agen_2e18 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbindgen_3agen_2e19 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbindgen_3agen_2e20 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbindgen_3agen_2e21 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbindgen_3agen_2e22 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbindgen_3agen_2e24 = weak hidden constant i1 false
@.d295 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fbindgen_3arecord_2e4 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbindgen_3arecord_2e5 = weak hidden constant i1 false
@.d296 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d297 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fbindgen_3arecord_2e16 = weak hidden constant i1 false
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
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l2, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t5, 0
  store i64 %t6, ptr %l3, !tbaa !24
  %t7 = load i64, ptr %l3, !tbaa !24
  %t8 = mul i64 %t7, 16
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 16
  call void @llvm.memmove.p0.p0.i64(ptr %t13, ptr %t15, i64 %t17, i1 false)
  %t18 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t19 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1, i32 0, i32 0
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l2, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t5, 0
  store i64 %t6, ptr %l3, !tbaa !24
  %t7 = load i64, ptr %l3, !tbaa !24
  %t8 = mul i64 %t7, 8
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t13, ptr %t15, i64 %t17, i1 false)
  %t18 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t19 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1, i32 0, i32 0
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

declare %"std/io:Writer" @std_2fio_3aWriter_2ector(ptr %v0, i32 %a0, i64 %a1)
declare i32 @std_2fio_2estd_2fio_3aWriter_2eFlush(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eToLower(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_e777242b492df290_2cbbd43a2df6cacc = external constant [0 x i8]
@olang_loc_aa3527431bc6906d_d98aa20bf76f5ef9 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %v0, i64 %a0)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v0, { i64, ptr } %a0, i64 %a1)
@olang_loc_5d1582c4176ede0e_4f5ef5c07175765a = external constant [0 x i8]
@olang_loc_c1a7519d080599a4_d00fb28b8b3fdec0 = external constant [0 x i8]
declare { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, i1 %a2, { i64, ptr } %a3)
declare i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enode(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2, i64 %a3, i1 %a4, i64 %a5)
declare { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3acparse_2eat(ptr %v0, ptr %v1, ptr %a0)
declare i64 @compiler_2fbindgen_2ecPrec(ptr %v0, { i64, ptr } %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@G_2ecompiler_2fbindgen_2eKBool = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/bindgen:cx" @compiler_2fbindgen_3acx_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, i64 %a1, i64 %a2, { i64, ptr } %a3)
declare %"compiler/bindgen:cx" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecNum(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/bindgen:cx" %a1)
declare %"compiler/bindgen:cx" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecLead(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/bindgen:cx" %a1, %"compiler/bindgen:cx" %a2)
@G_2ecompiler_2fbindgen_2eKInt = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/bindgen:cx" @compiler_2fbindgen_2ecx_2elit(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecastType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
@G_2ecompiler_2fbindgen_2eKType = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
declare { i32, %"compiler/bindgen:cx" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecPrimary(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9b83f66eba65594537030636cb0b52b7(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2)
declare { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3actp_2eat(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2etypeName(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eRefMut_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@G_2ecompiler_2fbindgen_2eNoReturnAttr = external constant <{ [8 x i8], ptr }>
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2ector(ptr %v0)
declare { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eparamName(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, i64 %a2, ptr %a3)
declare { i32, { i64, ptr } } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eparamType(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6f7a2f8d839c49b6e7a19c287d4b190c(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eplain(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eAt_3ccompiler_2fbindgen_3arecord_3e(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eRefMu_Hc21bcd245b67ffb6ee3e145838fcf2cf(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_7e828aa3d49398bd_dbb08dcf54087001 = external constant [0 x i8]
declare i1 @compiler_2fbindgen_2epreludeName(ptr %v0, { i64, ptr } %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eRef_3ccompiler_2fbindgen_3arecord_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare { i64, ptr } @compiler_2fbindgen_2ebitfieldType(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1)
declare %"compiler/bindgen:ctp" @compiler_2fbindgen_3actp_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2erecOf(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eisChar(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fbindgen_2evoidRef(ptr %v0, i1 %a0)
@olang_loc_55ef846781ac27aa_5519550b25564c26 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fbindgen_2etext(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9162e3b7f03fcbf954b681204d5f6cca(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2erecordDecl(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2, i1 %a3)
declare { i64, ptr } @compiler_2fbindgen_2econstValue(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2fbindgen_2eflag(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/bindgen:cFunc" @compiler_2fbindgen_3acFunc_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, i1 %a4, { i64, ptr } %a5)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acFunc_3e_2ePush_3ccompiler_2fbindgen_3acFunc_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/bindgen:cFunc" %a1)
declare i64 @std_2fjson_2estd_2fjson_3aObject_2eLen(ptr %v0, ptr %a0)
declare void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2etrackFile(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2)
@olang_loc_c54e19abcb0a74ad_a74456fc2d527de1 = external constant [0 x i8]
declare i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eisByte(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_383dad6bbc51ebc3_b2d1cf432887049f = external constant [0 x i8]
declare { i64, ptr } @compiler_2fbindgen_2eresultText(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %a0)
@olang_loc_12d4b4c126d079e6_1af6ce2ce1af3fd2 = external constant [0 x i8]
@olang_loc_6ea08524187c2be0_2ef7bb2e3d9cc7b4 = external constant [0 x i8]
@olang_loc_feb39f4cfa8fb0e2_4824786a1f7bac1e = external constant [0 x i8]
@olang_loc_76a363c24681a0e6_dedc35590a663c5a = external constant [0 x i8]
@olang_loc_98d0b4f031acf4f7_7a1fbeedfef40c4b = external constant [0 x i8]
@olang_loc_b9ed3bac91748577_8bd4ae03d42ae063 = external constant [0 x i8]
declare void @std_2fio_2estd_2fio_3aWriter_2eWrite(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i32, { i64, ptr } } @std_2fos_2eRealPath(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @std_2fos_2eExists(ptr %v0, { i64, ptr } %a0)
declare { i32, { i64, ptr } } @std_2fos_2eMkTemp(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2ffilepath_2eJoin(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i32 @std_2fos_2eWriteFile(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @std_2fos_2eRemoveAll(ptr %v0, { i64, ptr } %a0)
declare void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ereadMacros(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, ptr %a4)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eintMacros(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/bindgen:cMacro" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acMacro_3e_2eAt_3ccompiler_2fbindgen_3acMacro_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_2d25c1a9d7803e60_587b957d3d0d6154 = external constant [0 x i8]
declare { i32, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2edump(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
@olang_loc_6d7a361a7a168fed_fbeb1a267b83d779 = external constant [0 x i8]
declare void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eotherConsts(ptr %v0, ptr %a0)
@olang_loc_3c31d34710cd488e_9478fba938690442 = external constant [0 x i8]
declare i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2esizes(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, { i64, ptr } %a4)
declare { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ewrite(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare i32 @std_2fio_2ePrint(ptr %v0, { i64, ptr } %a0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare i8 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eToLower(i8 %a0)
@olang_loc_d82489adf04aec69_8da73aeba875ea7d = external constant [0 x i8]
@olang_loc_e159f608b90be7c_888d447c7b7c1020 = external constant [0 x i8]
@olang_loc_2265f42fe0f29d10_7d9e15ddc2058014 = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2ftext_2eU8_2eFormat(ptr %v0, i8 %a0, i64 %a1)
@olang_loc_6de4e6ae025697a1_ab8e19fa95fbb0c5 = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2ePadStart(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i8 %a2)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %a0)
declare i32 @compiler_2ftoken_2eTok_2eKeyword(ptr %v0, { i64, ptr } %a0, i64 %a1, i64 %a2)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acFunc_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acMacro_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2ector(ptr %v0, i64 %a0)

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
