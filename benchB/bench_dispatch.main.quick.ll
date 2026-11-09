source_filename = "bench_dispatch.main.quick.ll"
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
%"bench/dispatch:Rect" = type { i64, i64 }
%"bench/dispatch:Sq" = type { i64 }
%"bench/dispatch:Tri" = type { i64, i64 }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
define dso_local i64 @bench_2fdispatch_2earea(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca i1
  %l27 = alloca ptr
  %l28 = alloca i1
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l7, !tbaa !29
  store i1 false, ptr %l8, !tbaa !21
  %t2 = load ptr, ptr %l7, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l7, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 3}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l8, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l8, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [2 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { i64 }, ptr %t12, i32 0, i32 0
  %t14 = load i64, ptr %t13
  store i64 %t14, ptr %l1, !tbaa !24
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t16 = load i64, ptr %l1, !tbaa !24
  %t17 = load i64, ptr %l1, !tbaa !24
  %t20 = mul i64 %t16, %t17
  store i64 %t20, ptr %l6, !tbaa !24
  br label %bb19
bb6:
  %t22 = load ptr, ptr %l0, !tbaa !29
  store ptr %t22, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t23 = load ptr, ptr %l16, !tbaa !29
  %t24 = icmp ne ptr %t23, null
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t26 = load ptr, ptr %l16, !tbaa !29
  %t27 = load i64, ptr %t26, !range !{i64 0, i64 3}
  %t29 = icmp eq i64 %t27, 1
  store i1 %t29, ptr %l17, !tbaa !21
  br label %bb8
bb8:
  %t30 = load i1, ptr %l17, !tbaa !21
  br i1 %t30, label %bb9, label %bb10
bb9:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr { i64, [2 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { i64, i64 }, ptr %t33, i32 0, i32 0
  %t35 = load i64, ptr %t34
  store i64 %t35, ptr %l2, !tbaa !24
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr { i64, [2 x i64] }, ptr %t37, i32 0, i32 1
  %t40 = getelementptr { i64, i64 }, ptr %t39, i32 0, i32 1
  %t41 = load i64, ptr %t40
  store i64 %t41, ptr %l3, !tbaa !24
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t43 = load i64, ptr %l2, !tbaa !24
  %t44 = load i64, ptr %l3, !tbaa !24
  %t47 = mul i64 %t43, %t44
  store i64 %t47, ptr %l6, !tbaa !24
  br label %bb19
bb12:
  %t49 = load ptr, ptr %l0, !tbaa !29
  store ptr %t49, ptr %l27, !tbaa !29
  store i1 false, ptr %l28, !tbaa !21
  %t50 = load ptr, ptr %l27, !tbaa !29
  %t51 = icmp ne ptr %t50, null
  br i1 %t51, label %bb13, label %bb14
bb13:
  %t53 = load ptr, ptr %l27, !tbaa !29
  %t54 = load i64, ptr %t53, !range !{i64 0, i64 3}
  %t56 = icmp eq i64 %t54, 2
  store i1 %t56, ptr %l28, !tbaa !21
  br label %bb14
bb14:
  %t57 = load i1, ptr %l28, !tbaa !21
  br i1 %t57, label %bb15, label %bb16
bb15:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr { i64, [2 x i64] }, ptr %t58, i32 0, i32 1
  %t61 = getelementptr { i64, i64 }, ptr %t60, i32 0, i32 0
  %t62 = load i64, ptr %t61
  store i64 %t62, ptr %l4, !tbaa !24
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr { i64, [2 x i64] }, ptr %t64, i32 0, i32 1
  %t67 = getelementptr { i64, i64 }, ptr %t66, i32 0, i32 1
  %t68 = load i64, ptr %t67
  store i64 %t68, ptr %l5, !tbaa !24
  br label %bb17
bb16:
  br label %bb18
bb17:
  %t70 = load i64, ptr %l4, !tbaa !24
  %t71 = load i64, ptr %l5, !tbaa !24
  %t74 = mul i64 %t70, %t71
  %t76 = sdiv i64 %t74, 2
  store i64 %t76, ptr %l6, !tbaa !24
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_712488d9fdf30423_ba5c85e1c4a8e8e7)
  unreachable
bb19:
  %t78 = load i64, ptr %l6, !tbaa !24
  store i64 %t78, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @bench_2fdispatch_2ebench_2fdispatch_3aRect_2eArea(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"bench/dispatch:Rect", ptr %t1, i32 0, i32 0
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"bench/dispatch:Rect", ptr %t5, i32 0, i32 1
  %t8 = load i64, ptr %t7, !tbaa !24
  %t11 = mul i64 %t4, %t8
  store i64 %t11, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @bench_2fdispatch_2ebench_2fdispatch_3aSq_2eArea(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"bench/dispatch:Sq", ptr %t1, i32 0, i32 0
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"bench/dispatch:Sq", ptr %t5, i32 0, i32 0
  %t8 = load i64, ptr %t7, !tbaa !24
  %t11 = mul i64 %t4, %t8
  store i64 %t11, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @bench_2fdispatch_2ebench_2fdispatch_3aTri_2eArea(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"bench/dispatch:Tri", ptr %t1, i32 0, i32 0
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"bench/dispatch:Tri", ptr %t5, i32 0, i32 1
  %t8 = load i64, ptr %t7, !tbaa !24
  %t11 = mul i64 %t4, %t8
  %t13 = sdiv i64 %t11, 2
  store i64 %t13, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i32 @bench_2fdispatch_2emain() #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca { i64, ptr }
  %l24 = alloca i64
  %l25 = alloca i64
  %l27 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i64
  %l36 = alloca i64
  %l37 = alloca { i64, ptr }
  %l38 = alloca i64
  %l39 = alloca i64
  %l40 = alloca i64
  %l41 = alloca i64
  %l42 = alloca i64
  %l43 = alloca i64
  %l44 = alloca { i64, ptr }
  %l45 = alloca i64
  %l46 = alloca i64
  %l47 = alloca { i64, [2 x i64] }
  %l48 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l49 = alloca i64
  %l50 = alloca i64
  %l51 = alloca i64
  %l52 = alloca i64
  %l53 = alloca i64
  %l54 = alloca i64
  %l55 = alloca { i64, ptr }
  %l56 = alloca i64
  %l57 = alloca i64
  %l58 = alloca i64
  %l59 = alloca i64
  %l60 = alloca i64
  %l61 = alloca i64
  %l62 = alloca { i64, ptr }
  %l63 = alloca i64
  %l64 = alloca i64
  %l65 = alloca %"bench/dispatch:Sq"
  %l66 = alloca { i64, ptr }
  %l70 = alloca i32
  %l74 = alloca { i64, ptr }
  %l76 = alloca { i64, ptr }
  %l78 = alloca i64
  %l79 = alloca { i64, ptr }
  %l80 = alloca { i64, ptr }
  %l81 = alloca i64
  %l82 = alloca i32
  %l83 = alloca i32
  %l87 = alloca { i64, ptr }
  %l89 = alloca i64
  %l90 = alloca i32
  %l91 = alloca i32
  %l95 = alloca { i64, ptr }
  %l97 = alloca i64
  %l98 = alloca { i64, ptr }
  %l99 = alloca { i64, ptr }
  %l100 = alloca i64
  %l101 = alloca i32
  %l102 = alloca i32
  %l106 = alloca { i64, ptr }
  %l108 = alloca i64
  %l109 = alloca i32
  %l110 = alloca i32
  %l114 = alloca { i64, ptr }
  %l117 = alloca i1
  %l118 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l123 = alloca i64
  %l126 = alloca i64
  %l160 = alloca ptr
  %l162 = alloca %"bench/dispatch:Sq"
  %l167 = alloca ptr
  %l170 = alloca %"bench/dispatch:Rect"
  %l173 = alloca ptr
  %l176 = alloca %"bench/dispatch:Tri"
  %l182 = alloca { i64, ptr }
  %l187 = alloca i64
  %l190 = alloca i64
  %l215 = alloca { i64, ptr }
  %l218 = alloca i64
  %l220 = alloca i64
  %l229 = alloca i1
  %l230 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l235 = alloca i64
  %l238 = alloca i64
  %l288 = alloca { i64, ptr }
  %l293 = alloca i64
  %l296 = alloca i64
  %l321 = alloca { i64, ptr }
  %l324 = alloca i64
  %l326 = alloca i64
  %l335 = alloca i1
  %l336 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l341 = alloca i64
  %l344 = alloca i64
  %l365 = alloca ptr
  %l370 = alloca %"bench/dispatch:Sq"
  %l374 = alloca { i64, ptr }
  %l379 = alloca i64
  %l382 = alloca i64
  %l407 = alloca { i64, ptr }
  %l410 = alloca i64
  %l412 = alloca i64
  %l420 = alloca i32
  %l424 = alloca { i64, ptr }
  %l429 = alloca i32
  %l430 = alloca i32
  %l434 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.builder
  %s2room = alloca [64 x i8], align 8
  %s3 = alloca %olang.builder
  %s3room = alloca [64 x i8], align 8
  %s4 = alloca %olang.builder
  %s4room = alloca [64 x i8], align 8
  %s5 = alloca %olang.builder
  %s5room = alloca [64 x i8], align 8
  %s6 = alloca %olang.builder
  %s6room = alloca [64 x i8], align 8
  %s7 = alloca %olang.scope
  %s21 = alloca %olang.scope
  %s22 = alloca %olang.scope
  %s33 = alloca %olang.scope
  %s36 = alloca %olang.scope
  %s37 = alloca %olang.scope
  %s39 = alloca %olang.scope
  %s44 = alloca %olang.scope
  %s48 = alloca %olang.builder
  %s48room = alloca [64 x i8], align 8
  %s50 = alloca %olang.builder
  %s50room = alloca [64 x i8], align 8
  %rv = alloca i32
  %t625 = alloca { i64, [2 x i64] }, align 8
  %t639 = alloca { i64, [2 x i64] }, align 8
  %t651 = alloca { i64, [2 x i64] }, align 8
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call { i64, ptr } @std_2fos_2eArgs(ptr %s0)
  store { i64, ptr } %t1, ptr %l66
  br label %bb1
bb1:
  %t2 = load { i64, ptr }, ptr %l66, !tbaa !27
  store { i64, ptr } %t2, ptr %l0, !tbaa !27
  %t3 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  %t7 = icmp slt i64 %t5, 4
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i32 65536, ptr %l70, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  %t9 = load i32, ptr %l70, !tbaa !23
  %t10 = icmp eq i32 %t9, 131073
  br i1 %t10, label %bb4, label %bb5
bb3:
  br label %bb6
bb4:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s2
  store ptr %s2room, ptr %s2
  %t12 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d0, i32 0, i32 1) }, 1
  %t13 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d0, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t12, i64 %t13)
  %t14 = call ptr @__olang_errpay_top_get()
  %t15 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t15, i64 %t16)
  %t18 = getelementptr { i64, [1 x i64] }, ptr %t14, i32 0, i32 1
  %t19 = getelementptr { i64 }, ptr %t18, i32 0, i32 0
  %t20 = load i64, ptr %t19
  %t22 = call ptr @__olang_sb_room(ptr %s2, i64 24)
  %t23 = call i64 @__olang_fmt_i64(ptr %t22, i64 %t20)
  call void @__olang_sb_add(ptr %s2, i64 %t23)
  %t24 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t25 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t24, i64 %t25)
  %t26 = load ptr, ptr %s2
  %t27 = getelementptr %olang.builder, ptr %s2, i32 0, i32 1
  %t28 = load i64, ptr %t27
  %t29 = load ptr, ptr @__olang_prog_scope
  %t30 = call ptr @__olang_scope_alloc(ptr %t29, i64 %t28)
  call void @olang_textcopy(ptr %t30, ptr %t26, i64 %t28)
  %t31 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t30, 1
  store { i64, ptr } %t32, ptr %l74, !tbaa !27
  %t33 = getelementptr %olang.builder, ptr %s2, i32 0, i32 3
  %t34 = load ptr, ptr %t33
  %t35 = icmp ne ptr %t34, null
  br i1 %t35, label %sbgrew.36, label %sbdone.37
sbgrew.36:
  call void @__olang_sb_done(ptr %s2)
  br label %sbdone.37
sbdone.37:
  %t38 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t39 = load ptr, ptr @__olang_prog_scope
  %t40 = extractvalue { i64, ptr } %t38, 0
  %t41 = extractvalue { i64, ptr } %t38, 1
  %t42 = mul i64 %t40, 1
  %t43 = call ptr @__olang_scope_alloc(ptr %t39, i64 %t42)
  call void @llvm.memcpy.p0.p0.i64(ptr %t43, ptr %t41, i64 %t42, i1 false)
  %t44 = insertvalue { i64, ptr } undef, i64 %t40, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t43, 1
  %t47 = extractvalue { i64, ptr } %t45, 1
  %t48 = extractvalue { i64, ptr } %t45, 0
  %t49 = insertvalue { i64, ptr } undef, i64 %t48, 0
  %t50 = insertvalue { i64, ptr } %t49, ptr %t47, 1
  call void @__olang_unhandled_text({ i64, ptr } %t50, i1 false)
  unreachable
bb5:
  %t51 = load i32, ptr %l70, !tbaa !23
  store i32 %t51, ptr %rv
  br label %ret
bb6:
  %t52 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t52, ptr %l76, !tbaa !27
  %t53 = getelementptr { i64, ptr }, ptr %l76, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !27
  %t55 = getelementptr { i64, ptr }, ptr %t54, i64 1
  %t56 = load { i64, ptr }, ptr %t55, !tbaa !37
  store { i64, ptr } %t56, ptr %l1, !tbaa !27
  %t58 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t58, ptr %l79, !tbaa !27
  %t59 = getelementptr { i64, ptr }, ptr %l79, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !27
  %t61 = getelementptr { i64, ptr }, ptr %t60, i64 2
  %t62 = load { i64, ptr }, ptr %t61, !tbaa !37
  store { i64, ptr } %t62, ptr %l80, !tbaa !27
  %t63 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s0, i64 10)
  %t64 = extractvalue { i32, i64 } %t63, 1
  %t65 = extractvalue { i32, i64 } %t63, 0
  store i32 %t65, ptr %l82
  %t66 = icmp ne i32 %t65, 0
  br i1 %t66, label %bb8, label %ok.67, !prof !99
ok.67:
  store i64 %t64, ptr %l81
  br label %bb7
bb7:
  %t68 = load { i64, ptr }, ptr %l80, !tbaa !27
  %t69 = load i64, ptr %l81, !tbaa !24
  %t70 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %s0, { i64, ptr } %t68, i64 %t69)
  %t71 = extractvalue { i32, i64 } %t70, 1
  %t72 = extractvalue { i32, i64 } %t70, 0
  store i32 %t72, ptr %l90
  %t73 = icmp ne i32 %t72, 0
  br i1 %t73, label %bb12, label %ok.74, !prof !99
ok.74:
  store i64 %t71, ptr %l89
  br label %bb11
bb8:
  %t75 = load i32, ptr %l82, !tbaa !23
  %t76 = lshr i32 %t75, 16
  %t77 = and i32 %t75, 65535
  %t78 = icmp eq i32 %t76, 1
  %t79 = select i1 %t78, i32 0, i32 0
  %t80 = icmp eq i32 %t75, 0
  %t81 = shl i32 %t79, 16
  %t82 = or i32 %t81, %t77
  %t83 = select i1 %t80, i32 0, i32 %t82
  store i32 %t83, ptr %l83, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  %t84 = load i32, ptr %l83, !tbaa !23
  %t85 = icmp eq i32 %t84, 131073
  br i1 %t85, label %bb9, label %bb10
bb9:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s3
  store ptr %s3room, ptr %s3
  %t87 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t88 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s3, ptr %t87, i64 %t88)
  %t89 = call ptr @__olang_errpay_top_get()
  %t90 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t91 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s3, ptr %t90, i64 %t91)
  %t93 = getelementptr { i64, [1 x i64] }, ptr %t89, i32 0, i32 1
  %t94 = getelementptr { i64 }, ptr %t93, i32 0, i32 0
  %t95 = load i64, ptr %t94
  %t97 = call ptr @__olang_sb_room(ptr %s3, i64 24)
  %t98 = call i64 @__olang_fmt_i64(ptr %t97, i64 %t95)
  call void @__olang_sb_add(ptr %s3, i64 %t98)
  %t99 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t100 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s3, ptr %t99, i64 %t100)
  %t101 = load ptr, ptr %s3
  %t102 = getelementptr %olang.builder, ptr %s3, i32 0, i32 1
  %t103 = load i64, ptr %t102
  %t104 = load ptr, ptr @__olang_prog_scope
  %t105 = call ptr @__olang_scope_alloc(ptr %t104, i64 %t103)
  call void @olang_textcopy(ptr %t105, ptr %t101, i64 %t103)
  %t106 = insertvalue { i64, ptr } undef, i64 %t103, 0
  %t107 = insertvalue { i64, ptr } %t106, ptr %t105, 1
  store { i64, ptr } %t107, ptr %l87, !tbaa !27
  %t108 = getelementptr %olang.builder, ptr %s3, i32 0, i32 3
  %t109 = load ptr, ptr %t108
  %t110 = icmp ne ptr %t109, null
  br i1 %t110, label %sbgrew.111, label %sbdone.112
sbgrew.111:
  call void @__olang_sb_done(ptr %s3)
  br label %sbdone.112
sbdone.112:
  %t113 = load { i64, ptr }, ptr %l87, !tbaa !27
  %t114 = load ptr, ptr @__olang_prog_scope
  %t115 = extractvalue { i64, ptr } %t113, 0
  %t116 = extractvalue { i64, ptr } %t113, 1
  %t117 = mul i64 %t115, 1
  %t118 = call ptr @__olang_scope_alloc(ptr %t114, i64 %t117)
  call void @llvm.memcpy.p0.p0.i64(ptr %t118, ptr %t116, i64 %t117, i1 false)
  %t119 = insertvalue { i64, ptr } undef, i64 %t115, 0
  %t120 = insertvalue { i64, ptr } %t119, ptr %t118, 1
  %t122 = extractvalue { i64, ptr } %t120, 1
  %t123 = extractvalue { i64, ptr } %t120, 0
  %t124 = insertvalue { i64, ptr } undef, i64 %t123, 0
  %t125 = insertvalue { i64, ptr } %t124, ptr %t122, 1
  call void @__olang_unhandled_text({ i64, ptr } %t125, i1 false)
  unreachable
bb10:
  %t126 = load i32, ptr %l83, !tbaa !23
  store i32 %t126, ptr %rv
  br label %ret
bb11:
  %t127 = load i64, ptr %l89, !tbaa !24
  store i64 %t127, ptr %l78, !tbaa !24
  br label %bb15
bb12:
  %t128 = load i32, ptr %l90, !tbaa !23
  %t129 = lshr i32 %t128, 16
  %t130 = and i32 %t128, 65535
  %t131 = icmp eq i32 %t129, 1
  %t132 = select i1 %t131, i32 3, i32 0
  %t133 = icmp eq i32 %t128, 0
  %t134 = shl i32 %t132, 16
  %t135 = or i32 %t134, %t130
  %t136 = select i1 %t133, i32 0, i32 %t135
  store i32 %t136, ptr %l91, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  %t137 = load i32, ptr %l91, !tbaa !23
  %t138 = icmp eq i32 %t137, 131073
  br i1 %t138, label %bb13, label %bb14
bb13:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s4
  store ptr %s4room, ptr %s4
  %t140 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t141 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t140, i64 %t141)
  %t142 = call ptr @__olang_errpay_top_get()
  %t143 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t144 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t143, i64 %t144)
  %t146 = getelementptr { i64, [1 x i64] }, ptr %t142, i32 0, i32 1
  %t147 = getelementptr { i64 }, ptr %t146, i32 0, i32 0
  %t148 = load i64, ptr %t147
  %t150 = call ptr @__olang_sb_room(ptr %s4, i64 24)
  %t151 = call i64 @__olang_fmt_i64(ptr %t150, i64 %t148)
  call void @__olang_sb_add(ptr %s4, i64 %t151)
  %t152 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t153 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t152, i64 %t153)
  %t154 = load ptr, ptr %s4
  %t155 = getelementptr %olang.builder, ptr %s4, i32 0, i32 1
  %t156 = load i64, ptr %t155
  %t157 = load ptr, ptr @__olang_prog_scope
  %t158 = call ptr @__olang_scope_alloc(ptr %t157, i64 %t156)
  call void @olang_textcopy(ptr %t158, ptr %t154, i64 %t156)
  %t159 = insertvalue { i64, ptr } undef, i64 %t156, 0
  %t160 = insertvalue { i64, ptr } %t159, ptr %t158, 1
  store { i64, ptr } %t160, ptr %l95, !tbaa !27
  %t161 = getelementptr %olang.builder, ptr %s4, i32 0, i32 3
  %t162 = load ptr, ptr %t161
  %t163 = icmp ne ptr %t162, null
  br i1 %t163, label %sbgrew.164, label %sbdone.165
sbgrew.164:
  call void @__olang_sb_done(ptr %s4)
  br label %sbdone.165
sbdone.165:
  %t166 = load { i64, ptr }, ptr %l95, !tbaa !27
  %t167 = load ptr, ptr @__olang_prog_scope
  %t168 = extractvalue { i64, ptr } %t166, 0
  %t169 = extractvalue { i64, ptr } %t166, 1
  %t170 = mul i64 %t168, 1
  %t171 = call ptr @__olang_scope_alloc(ptr %t167, i64 %t170)
  call void @llvm.memcpy.p0.p0.i64(ptr %t171, ptr %t169, i64 %t170, i1 false)
  %t172 = insertvalue { i64, ptr } undef, i64 %t168, 0
  %t173 = insertvalue { i64, ptr } %t172, ptr %t171, 1
  %t175 = extractvalue { i64, ptr } %t173, 1
  %t176 = extractvalue { i64, ptr } %t173, 0
  %t177 = insertvalue { i64, ptr } undef, i64 %t176, 0
  %t178 = insertvalue { i64, ptr } %t177, ptr %t175, 1
  call void @__olang_unhandled_text({ i64, ptr } %t178, i1 false)
  unreachable
bb14:
  %t179 = load i32, ptr %l91, !tbaa !23
  store i32 %t179, ptr %rv
  br label %ret
bb15:
  %t180 = load i64, ptr %l78, !tbaa !24
  store i64 %t180, ptr %l2, !tbaa !24
  %t181 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t181, ptr %l98, !tbaa !27
  %t182 = getelementptr { i64, ptr }, ptr %l98, i32 0, i32 1
  %t183 = load ptr, ptr %t182, !tbaa !27
  %t184 = getelementptr { i64, ptr }, ptr %t183, i64 3
  %t185 = load { i64, ptr }, ptr %t184, !tbaa !37
  store { i64, ptr } %t185, ptr %l99, !tbaa !27
  %t186 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s0, i64 10)
  %t187 = extractvalue { i32, i64 } %t186, 1
  %t188 = extractvalue { i32, i64 } %t186, 0
  store i32 %t188, ptr %l101
  %t189 = icmp ne i32 %t188, 0
  br i1 %t189, label %bb17, label %ok.190, !prof !99
ok.190:
  store i64 %t187, ptr %l100
  br label %bb16
bb16:
  %t191 = load { i64, ptr }, ptr %l99, !tbaa !27
  %t192 = load i64, ptr %l100, !tbaa !24
  %t193 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %s0, { i64, ptr } %t191, i64 %t192)
  %t194 = extractvalue { i32, i64 } %t193, 1
  %t195 = extractvalue { i32, i64 } %t193, 0
  store i32 %t195, ptr %l109
  %t196 = icmp ne i32 %t195, 0
  br i1 %t196, label %bb21, label %ok.197, !prof !99
ok.197:
  store i64 %t194, ptr %l108
  br label %bb20
bb17:
  %t198 = load i32, ptr %l101, !tbaa !23
  %t199 = lshr i32 %t198, 16
  %t200 = and i32 %t198, 65535
  %t201 = icmp eq i32 %t199, 1
  %t202 = select i1 %t201, i32 0, i32 0
  %t203 = icmp eq i32 %t198, 0
  %t204 = shl i32 %t202, 16
  %t205 = or i32 %t204, %t200
  %t206 = select i1 %t203, i32 0, i32 %t205
  store i32 %t206, ptr %l102, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  %t207 = load i32, ptr %l102, !tbaa !23
  %t208 = icmp eq i32 %t207, 131073
  br i1 %t208, label %bb18, label %bb19
bb18:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s5
  store ptr %s5room, ptr %s5
  %t210 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t211 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t210, i64 %t211)
  %t212 = call ptr @__olang_errpay_top_get()
  %t213 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t214 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t213, i64 %t214)
  %t216 = getelementptr { i64, [1 x i64] }, ptr %t212, i32 0, i32 1
  %t217 = getelementptr { i64 }, ptr %t216, i32 0, i32 0
  %t218 = load i64, ptr %t217
  %t220 = call ptr @__olang_sb_room(ptr %s5, i64 24)
  %t221 = call i64 @__olang_fmt_i64(ptr %t220, i64 %t218)
  call void @__olang_sb_add(ptr %s5, i64 %t221)
  %t222 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t223 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t222, i64 %t223)
  %t224 = load ptr, ptr %s5
  %t225 = getelementptr %olang.builder, ptr %s5, i32 0, i32 1
  %t226 = load i64, ptr %t225
  %t227 = load ptr, ptr @__olang_prog_scope
  %t228 = call ptr @__olang_scope_alloc(ptr %t227, i64 %t226)
  call void @olang_textcopy(ptr %t228, ptr %t224, i64 %t226)
  %t229 = insertvalue { i64, ptr } undef, i64 %t226, 0
  %t230 = insertvalue { i64, ptr } %t229, ptr %t228, 1
  store { i64, ptr } %t230, ptr %l106, !tbaa !27
  %t231 = getelementptr %olang.builder, ptr %s5, i32 0, i32 3
  %t232 = load ptr, ptr %t231
  %t233 = icmp ne ptr %t232, null
  br i1 %t233, label %sbgrew.234, label %sbdone.235
sbgrew.234:
  call void @__olang_sb_done(ptr %s5)
  br label %sbdone.235
sbdone.235:
  %t236 = load { i64, ptr }, ptr %l106, !tbaa !27
  %t237 = load ptr, ptr @__olang_prog_scope
  %t238 = extractvalue { i64, ptr } %t236, 0
  %t239 = extractvalue { i64, ptr } %t236, 1
  %t240 = mul i64 %t238, 1
  %t241 = call ptr @__olang_scope_alloc(ptr %t237, i64 %t240)
  call void @llvm.memcpy.p0.p0.i64(ptr %t241, ptr %t239, i64 %t240, i1 false)
  %t242 = insertvalue { i64, ptr } undef, i64 %t238, 0
  %t243 = insertvalue { i64, ptr } %t242, ptr %t241, 1
  %t245 = extractvalue { i64, ptr } %t243, 1
  %t246 = extractvalue { i64, ptr } %t243, 0
  %t247 = insertvalue { i64, ptr } undef, i64 %t246, 0
  %t248 = insertvalue { i64, ptr } %t247, ptr %t245, 1
  call void @__olang_unhandled_text({ i64, ptr } %t248, i1 false)
  unreachable
bb19:
  %t249 = load i32, ptr %l102, !tbaa !23
  store i32 %t249, ptr %rv
  br label %ret
bb20:
  %t250 = load i64, ptr %l108, !tbaa !24
  store i64 %t250, ptr %l97, !tbaa !24
  br label %bb24
bb21:
  %t251 = load i32, ptr %l109, !tbaa !23
  %t252 = lshr i32 %t251, 16
  %t253 = and i32 %t251, 65535
  %t254 = icmp eq i32 %t252, 1
  %t255 = select i1 %t254, i32 3, i32 0
  %t256 = icmp eq i32 %t251, 0
  %t257 = shl i32 %t255, 16
  %t258 = or i32 %t257, %t253
  %t259 = select i1 %t256, i32 0, i32 %t258
  store i32 %t259, ptr %l110, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  %t260 = load i32, ptr %l110, !tbaa !23
  %t261 = icmp eq i32 %t260, 131073
  br i1 %t261, label %bb22, label %bb23
bb22:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s6
  store ptr %s6room, ptr %s6
  %t263 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t264 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s6, ptr %t263, i64 %t264)
  %t265 = call ptr @__olang_errpay_top_get()
  %t266 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t267 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s6, ptr %t266, i64 %t267)
  %t269 = getelementptr { i64, [1 x i64] }, ptr %t265, i32 0, i32 1
  %t270 = getelementptr { i64 }, ptr %t269, i32 0, i32 0
  %t271 = load i64, ptr %t270
  %t273 = call ptr @__olang_sb_room(ptr %s6, i64 24)
  %t274 = call i64 @__olang_fmt_i64(ptr %t273, i64 %t271)
  call void @__olang_sb_add(ptr %s6, i64 %t274)
  %t275 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t276 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s6, ptr %t275, i64 %t276)
  %t277 = load ptr, ptr %s6
  %t278 = getelementptr %olang.builder, ptr %s6, i32 0, i32 1
  %t279 = load i64, ptr %t278
  %t280 = load ptr, ptr @__olang_prog_scope
  %t281 = call ptr @__olang_scope_alloc(ptr %t280, i64 %t279)
  call void @olang_textcopy(ptr %t281, ptr %t277, i64 %t279)
  %t282 = insertvalue { i64, ptr } undef, i64 %t279, 0
  %t283 = insertvalue { i64, ptr } %t282, ptr %t281, 1
  store { i64, ptr } %t283, ptr %l114, !tbaa !27
  %t284 = getelementptr %olang.builder, ptr %s6, i32 0, i32 3
  %t285 = load ptr, ptr %t284
  %t286 = icmp ne ptr %t285, null
  br i1 %t286, label %sbgrew.287, label %sbdone.288
sbgrew.287:
  call void @__olang_sb_done(ptr %s6)
  br label %sbdone.288
sbdone.288:
  %t289 = load { i64, ptr }, ptr %l114, !tbaa !27
  %t290 = load ptr, ptr @__olang_prog_scope
  %t291 = extractvalue { i64, ptr } %t289, 0
  %t292 = extractvalue { i64, ptr } %t289, 1
  %t293 = mul i64 %t291, 1
  %t294 = call ptr @__olang_scope_alloc(ptr %t290, i64 %t293)
  call void @llvm.memcpy.p0.p0.i64(ptr %t294, ptr %t292, i64 %t293, i1 false)
  %t295 = insertvalue { i64, ptr } undef, i64 %t291, 0
  %t296 = insertvalue { i64, ptr } %t295, ptr %t294, 1
  %t298 = extractvalue { i64, ptr } %t296, 1
  %t299 = extractvalue { i64, ptr } %t296, 0
  %t300 = insertvalue { i64, ptr } undef, i64 %t299, 0
  %t301 = insertvalue { i64, ptr } %t300, ptr %t298, 1
  call void @__olang_unhandled_text({ i64, ptr } %t301, i1 false)
  unreachable
bb23:
  %t302 = load i32, ptr %l110, !tbaa !23
  store i32 %t302, ptr %rv
  br label %ret
bb24:
  %t303 = load i64, ptr %l97, !tbaa !24
  store i64 %t303, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  %t304 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t306 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t304, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d12, i32 0, i32 1) })
  store i1 %t306, ptr %l117
  br label %bb25
bb25:
  %t307 = load i1, ptr %l117, !tbaa !21
  br i1 %t307, label %bb26, label %bb27
bb26:
  store %olang.scope zeroinitializer, ptr %s7
  %t308 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector(ptr %s7, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t308, ptr %l118
  br label %bb28
bb27:
  store %olang.scope zeroinitializer, ptr %s21
  %t309 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t311 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s21, { i64, ptr } %t309, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d13, i32 0, i32 1) })
  store i1 %t311, ptr %l229
  br label %bb73
bb28:
  %t312 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l118
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t312, ptr %l6
  store i64 0, ptr %l7, !tbaa !24
  %t313 = load i64, ptr %l2, !tbaa !24
  store i64 %t313, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t315 = load i64, ptr %l8, !tbaa !24
  %t316 = load i64, ptr %l7, !tbaa !24
  %t319 = icmp sgt i64 %t315, %t316
  br i1 %t319, label %bb29, label %bb30
bb29:
  %t321 = load i64, ptr %l9, !tbaa !24
  %t323 = icmp sgt i64 %t321, 0
  br i1 %t323, label %bb31, label %bb32
bb30:
  store i64 0, ptr %l123, !tbaa !24
  br label %bb34
bb31:
  %t325 = load i64, ptr %l8, !tbaa !24
  %t326 = load i64, ptr %l7, !tbaa !24
  %t329 = sub i64 %t325, %t326
  %t330 = load i64, ptr %l9, !tbaa !24
  %t333 = add i64 %t329, %t330
  %t335 = sub i64 %t333, 1
  %t336 = load i64, ptr %l9, !tbaa !24
  %t339 = sdiv i64 %t335, %t336
  store i64 %t339, ptr %l126, !tbaa !24
  br label %bb33
bb32:
  store i64 0, ptr %l126, !tbaa !24
  br label %bb33
bb33:
  %t341 = load i64, ptr %l126, !tbaa !24
  store i64 %t341, ptr %l123, !tbaa !24
  br label %bb34
bb34:
  %t342 = load i64, ptr %l123, !tbaa !24
  store i64 %t342, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb35
bb35:
  %t343 = load i64, ptr %l11, !tbaa !24
  %t344 = load i64, ptr %l10, !tbaa !24
  %t347 = icmp slt i64 %t343, %t344
  %t349 = xor i1 %t347, true
  br i1 %t349, label %bb36, label %bb37
bb36:
  br label %bb52
bb37:
  br label %bb38
bb38:
  %t351 = load i64, ptr %l7, !tbaa !24
  %t352 = load i64, ptr %l11, !tbaa !24
  %t353 = load i64, ptr %l9, !tbaa !24
  %t356 = mul i64 %t352, %t353
  %t359 = add i64 %t351, %t356
  store i64 %t359, ptr %l12, !tbaa !24
  %t361 = load i64, ptr %l4, !tbaa !24
  %t363 = mul i64 %t361, 6364136223846793005
  %t365 = add i64 %t363, 1442695040888963407
  store i64 %t365, ptr %l4, !tbaa !24
  %t367 = load i64, ptr %l4, !tbaa !24
  %t369 = ashr i64 %t367, 33
  %t371 = srem i64 %t369, 3
  store i64 %t371, ptr %l13, !tbaa !24
  %t373 = load i64, ptr %l4, !tbaa !24
  %t375 = ashr i64 %t373, 40
  %t377 = srem i64 %t375, 100
  %t379 = add i64 %t377, 1
  store i64 %t379, ptr %l14, !tbaa !24
  %t381 = load i64, ptr %l4, !tbaa !24
  %t383 = ashr i64 %t381, 50
  %t385 = srem i64 %t383, 100
  %t387 = add i64 %t385, 1
  store i64 %t387, ptr %l15, !tbaa !24
  %t389 = load i64, ptr %l13, !tbaa !24
  %t391 = icmp eq i64 %t389, 0
  br i1 %t391, label %bb39, label %bb40
bb39:
  store ptr %l6, ptr %l160, !tbaa !29
  %t393 = load i64, ptr %l14, !tbaa !24
  %t395 = call %"bench/dispatch:Sq" @bench_2fdispatch_3aSq_2ector(ptr %s7, i64 %t393)
  store %"bench/dispatch:Sq" %t395, ptr %l162
  br label %bb41
bb40:
  %t396 = load i64, ptr %l13, !tbaa !24
  %t398 = icmp eq i64 %t396, 1
  br i1 %t398, label %bb43, label %bb44
bb41:
  %t400 = load %"bench/dispatch:Sq", ptr %l162
  %t401 = call ptr @__olang_scope_alloc_a(ptr %s7, i64 8, i64 8)
  store %"bench/dispatch:Sq" %t400, ptr %t401
  %t403 = insertvalue { ptr, ptr } undef, ptr %t401, 0
  %t404 = icmp ne ptr %t401, null
  %t405 = select i1 %t404, ptr @olang_2etable_2ebench_2fdispatch_3aSq_7cbench_2fdispatch_3aShape, ptr null
  %t406 = insertvalue { ptr, ptr } %t403, ptr %t405, 1
  %t407 = load ptr, ptr %l160, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cany_20bench_2fdispatch_3aShape_26_3e_2_Hb517170722f8d015c496fd1598b8b226(ptr %s7, ptr %s7, ptr %t407, { ptr, ptr } %t406)
  br label %bb42
bb42:
  br label %bb50
bb43:
  store ptr %l6, ptr %l167, !tbaa !29
  %t409 = load i64, ptr %l14, !tbaa !24
  %t410 = load i64, ptr %l15, !tbaa !24
  %t413 = call %"bench/dispatch:Rect" @bench_2fdispatch_3aRect_2ector(ptr %s7, i64 %t409, i64 %t410)
  store %"bench/dispatch:Rect" %t413, ptr %l170
  br label %bb45
bb44:
  store ptr %l6, ptr %l173, !tbaa !29
  %t414 = load i64, ptr %l14, !tbaa !24
  %t415 = load i64, ptr %l15, !tbaa !24
  %t418 = call %"bench/dispatch:Tri" @bench_2fdispatch_3aTri_2ector(ptr %s7, i64 %t414, i64 %t415)
  store %"bench/dispatch:Tri" %t418, ptr %l176
  br label %bb47
bb45:
  %t419 = load %"bench/dispatch:Rect", ptr %l170
  %t420 = call ptr @__olang_scope_alloc_a(ptr %s7, i64 16, i64 8)
  store %"bench/dispatch:Rect" %t419, ptr %t420
  %t422 = insertvalue { ptr, ptr } undef, ptr %t420, 0
  %t423 = icmp ne ptr %t420, null
  %t424 = select i1 %t423, ptr @olang_2etable_2ebench_2fdispatch_3aRect_7cbench_2fdispatch_3aShape, ptr null
  %t425 = insertvalue { ptr, ptr } %t422, ptr %t424, 1
  %t426 = load ptr, ptr %l167, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cany_20bench_2fdispatch_3aShape_26_3e_2_Hb517170722f8d015c496fd1598b8b226(ptr %s7, ptr %s7, ptr %t426, { ptr, ptr } %t425)
  br label %bb46
bb46:
  br label %bb49
bb47:
  %t428 = load %"bench/dispatch:Tri", ptr %l176
  %t429 = call ptr @__olang_scope_alloc_a(ptr %s7, i64 16, i64 8)
  store %"bench/dispatch:Tri" %t428, ptr %t429
  %t431 = insertvalue { ptr, ptr } undef, ptr %t429, 0
  %t432 = icmp ne ptr %t429, null
  %t433 = select i1 %t432, ptr @olang_2etable_2ebench_2fdispatch_3aTri_7cbench_2fdispatch_3aShape, ptr null
  %t434 = insertvalue { ptr, ptr } %t431, ptr %t433, 1
  %t435 = load ptr, ptr %l173, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cany_20bench_2fdispatch_3aShape_26_3e_2_Hb517170722f8d015c496fd1598b8b226(ptr %s7, ptr %s7, ptr %t435, { ptr, ptr } %t434)
  br label %bb48
bb48:
  br label %bb49
bb49:
  br label %bb50
bb50:
  br label %bb51
bb51:
  %t437 = load i64, ptr %l11, !tbaa !24
  %t439 = add i64 %t437, 1
  store i64 %t439, ptr %l11, !tbaa !24
  br label %bb35
bb52:
  %t442 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cany_20bench_2fdispatch_3aShape_26_3e_2_H03d83f9f2d153335c091daa302942782(ptr %s7, ptr %s7, ptr %l6)
  store { i64, ptr } %t442, ptr %l182
  br label %bb53
bb53:
  %t443 = load { i64, ptr }, ptr %l182, !tbaa !27
  store { i64, ptr } %t443, ptr %l16, !tbaa !27
  store i64 0, ptr %l17, !tbaa !24
  %t444 = load i64, ptr %l3, !tbaa !24
  store i64 %t444, ptr %l18, !tbaa !24
  store i64 1, ptr %l19, !tbaa !24
  %t446 = load i64, ptr %l18, !tbaa !24
  %t447 = load i64, ptr %l17, !tbaa !24
  %t450 = icmp sgt i64 %t446, %t447
  br i1 %t450, label %bb54, label %bb55
bb54:
  %t452 = load i64, ptr %l19, !tbaa !24
  %t454 = icmp sgt i64 %t452, 0
  br i1 %t454, label %bb56, label %bb57
bb55:
  store i64 0, ptr %l187, !tbaa !24
  br label %bb59
bb56:
  %t456 = load i64, ptr %l18, !tbaa !24
  %t457 = load i64, ptr %l17, !tbaa !24
  %t460 = sub i64 %t456, %t457
  %t461 = load i64, ptr %l19, !tbaa !24
  %t464 = add i64 %t460, %t461
  %t466 = sub i64 %t464, 1
  %t467 = load i64, ptr %l19, !tbaa !24
  %t470 = sdiv i64 %t466, %t467
  store i64 %t470, ptr %l190, !tbaa !24
  br label %bb58
bb57:
  store i64 0, ptr %l190, !tbaa !24
  br label %bb58
bb58:
  %t472 = load i64, ptr %l190, !tbaa !24
  store i64 %t472, ptr %l187, !tbaa !24
  br label %bb59
bb59:
  %t473 = load i64, ptr %l187, !tbaa !24
  store i64 %t473, ptr %l20, !tbaa !24
  store i64 0, ptr %l21, !tbaa !24
  br label %bb60
bb60:
  %t474 = load i64, ptr %l21, !tbaa !24
  %t475 = load i64, ptr %l20, !tbaa !24
  %t478 = icmp slt i64 %t474, %t475
  %t480 = xor i1 %t478, true
  br i1 %t480, label %bb61, label %bb62
bb61:
  br label %bb72
bb62:
  br label %bb63
bb63:
  %t482 = load i64, ptr %l17, !tbaa !24
  %t483 = load i64, ptr %l21, !tbaa !24
  %t484 = load i64, ptr %l19, !tbaa !24
  %t487 = mul i64 %t483, %t484
  %t490 = add i64 %t482, %t487
  store i64 %t490, ptr %l22, !tbaa !24
  %t492 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t492, ptr %l23, !tbaa !27
  store i64 0, ptr %l24, !tbaa !24
  %t494 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t496 = extractvalue { i64, ptr } %t494, 0
  store i64 %t496, ptr %l25, !tbaa !24
  br label %bb64
bb64:
  %t498 = load i64, ptr %l24, !tbaa !24
  %t499 = load i64, ptr %l25, !tbaa !24
  %t502 = icmp slt i64 %t498, %t499
  %t504 = xor i1 %t502, true
  br i1 %t504, label %bb65, label %bb66
bb65:
  br label %bb70
bb66:
  br label %bb67
bb67:
  %t506 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t506, ptr %l215, !tbaa !27
  %t507 = load i64, ptr %l24, !tbaa !24
  %t509 = getelementptr { i64, ptr }, ptr %l215, i32 0, i32 1
  %t510 = load ptr, ptr %t509, !tbaa !27
  %t511 = getelementptr { ptr, ptr }, ptr %t510, i64 %t507
  %t512 = load { ptr, ptr }, ptr %t511
  %t514 = load i64, ptr %l5, !tbaa !24
  store i64 %t514, ptr %l218, !tbaa !24
  %t517 = extractvalue { ptr, ptr } %t512, 0
  %t518 = extractvalue { ptr, ptr } %t512, 1
  %t519 = getelementptr ptr, ptr %t518, i64 3
  %t520 = load ptr, ptr %t519
  %t521 = call i64 %t520(ptr %s7, ptr %t517)
  store i64 %t521, ptr %l220
  br label %bb68
bb68:
  %t522 = load i64, ptr %l22, !tbaa !24
  %t523 = load i64, ptr %l220, !tbaa !24
  %t525 = xor i64 %t523, %t522
  %t526 = load i64, ptr %l218, !tbaa !24
  %t528 = add i64 %t526, %t525
  store i64 %t528, ptr %l5, !tbaa !24
  br label %bb69
bb69:
  %t530 = load i64, ptr %l24, !tbaa !24
  %t532 = add i64 %t530, 1
  store i64 %t532, ptr %l24, !tbaa !24
  br label %bb64
bb70:
  br label %bb71
bb71:
  %t534 = load i64, ptr %l21, !tbaa !24
  %t536 = add i64 %t534, 1
  store i64 %t536, ptr %l21, !tbaa !24
  br label %bb60
bb72:
  call void @__olang_scope_close(ptr %s7)
  br label %bb160
bb73:
  %t538 = load i1, ptr %l229, !tbaa !21
  br i1 %t538, label %bb74, label %bb75
bb74:
  store %olang.scope zeroinitializer, ptr %s22
  %t539 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector(ptr %s22, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t539, ptr %l230
  br label %bb76
bb75:
  store %olang.scope zeroinitializer, ptr %s36
  %t540 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t542 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s36, { i64, ptr } %t540, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d14, i32 0, i32 1) })
  store i1 %t542, ptr %l335
  br label %bb118
bb76:
  %t543 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l230
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t543, ptr %l27
  store i64 0, ptr %l28, !tbaa !24
  %t544 = load i64, ptr %l2, !tbaa !24
  store i64 %t544, ptr %l29, !tbaa !24
  store i64 1, ptr %l30, !tbaa !24
  %t546 = load i64, ptr %l29, !tbaa !24
  %t547 = load i64, ptr %l28, !tbaa !24
  %t550 = icmp sgt i64 %t546, %t547
  br i1 %t550, label %bb77, label %bb78
bb77:
  %t552 = load i64, ptr %l30, !tbaa !24
  %t554 = icmp sgt i64 %t552, 0
  br i1 %t554, label %bb79, label %bb80
bb78:
  store i64 0, ptr %l235, !tbaa !24
  br label %bb82
bb79:
  %t556 = load i64, ptr %l29, !tbaa !24
  %t557 = load i64, ptr %l28, !tbaa !24
  %t560 = sub i64 %t556, %t557
  %t561 = load i64, ptr %l30, !tbaa !24
  %t564 = add i64 %t560, %t561
  %t566 = sub i64 %t564, 1
  %t567 = load i64, ptr %l30, !tbaa !24
  %t570 = sdiv i64 %t566, %t567
  store i64 %t570, ptr %l238, !tbaa !24
  br label %bb81
bb80:
  store i64 0, ptr %l238, !tbaa !24
  br label %bb81
bb81:
  %t572 = load i64, ptr %l238, !tbaa !24
  store i64 %t572, ptr %l235, !tbaa !24
  br label %bb82
bb82:
  %t573 = load i64, ptr %l235, !tbaa !24
  store i64 %t573, ptr %l31, !tbaa !24
  store i64 0, ptr %l32, !tbaa !24
  br label %bb83
bb83:
  %t574 = load i64, ptr %l32, !tbaa !24
  %t575 = load i64, ptr %l31, !tbaa !24
  %t578 = icmp slt i64 %t574, %t575
  %t580 = xor i1 %t578, true
  br i1 %t580, label %bb84, label %bb85
bb84:
  br label %bb97
bb85:
  br label %bb86
bb86:
  %t582 = load i64, ptr %l28, !tbaa !24
  %t583 = load i64, ptr %l32, !tbaa !24
  %t584 = load i64, ptr %l30, !tbaa !24
  %t587 = mul i64 %t583, %t584
  %t590 = add i64 %t582, %t587
  store i64 %t590, ptr %l33, !tbaa !24
  %t592 = load i64, ptr %l4, !tbaa !24
  %t594 = mul i64 %t592, 6364136223846793005
  %t596 = add i64 %t594, 1442695040888963407
  store i64 %t596, ptr %l4, !tbaa !24
  %t598 = load i64, ptr %l4, !tbaa !24
  %t600 = ashr i64 %t598, 33
  %t602 = srem i64 %t600, 3
  store i64 %t602, ptr %l34, !tbaa !24
  %t604 = load i64, ptr %l4, !tbaa !24
  %t606 = ashr i64 %t604, 40
  %t608 = srem i64 %t606, 100
  %t610 = add i64 %t608, 1
  store i64 %t610, ptr %l35, !tbaa !24
  %t612 = load i64, ptr %l4, !tbaa !24
  %t614 = ashr i64 %t612, 50
  %t616 = srem i64 %t614, 100
  %t618 = add i64 %t616, 1
  store i64 %t618, ptr %l36, !tbaa !24
  %t620 = load i64, ptr %l34, !tbaa !24
  %t622 = icmp eq i64 %t620, 0
  br i1 %t622, label %bb87, label %bb88
bb87:
  %t624 = load i64, ptr %l35, !tbaa !24
  store { i64, [2 x i64] } zeroinitializer, ptr %t625
  %t626 = getelementptr { i64, [2 x i64] }, ptr %t625, i32 0, i32 0
  store i64 0, ptr %t626
  %t628 = insertvalue { i64 } undef, i64 %t624, 0
  %t629 = getelementptr { i64, [2 x i64] }, ptr %t625, i32 0, i32 1
  store { i64 } %t628, ptr %t629
  %t630 = load { i64, [2 x i64] }, ptr %t625
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cbench_2fdispatch_3aFig_3e_2ePush_3cbench_2fdispatch_3aFig_3e(ptr %s22, ptr %l27, { i64, [2 x i64] } %t630)
  br label %bb89
bb88:
  %t633 = load i64, ptr %l34, !tbaa !24
  %t635 = icmp eq i64 %t633, 1
  br i1 %t635, label %bb90, label %bb91
bb89:
  br label %bb95
bb90:
  %t637 = load i64, ptr %l35, !tbaa !24
  %t638 = load i64, ptr %l36, !tbaa !24
  store { i64, [2 x i64] } zeroinitializer, ptr %t639
  %t640 = getelementptr { i64, [2 x i64] }, ptr %t639, i32 0, i32 0
  store i64 1, ptr %t640
  %t642 = insertvalue { i64, i64 } undef, i64 %t637, 0
  %t644 = insertvalue { i64, i64 } %t642, i64 %t638, 1
  %t645 = getelementptr { i64, [2 x i64] }, ptr %t639, i32 0, i32 1
  store { i64, i64 } %t644, ptr %t645
  %t646 = load { i64, [2 x i64] }, ptr %t639
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cbench_2fdispatch_3aFig_3e_2ePush_3cbench_2fdispatch_3aFig_3e(ptr %s22, ptr %l27, { i64, [2 x i64] } %t646)
  br label %bb92
bb91:
  %t649 = load i64, ptr %l35, !tbaa !24
  %t650 = load i64, ptr %l36, !tbaa !24
  store { i64, [2 x i64] } zeroinitializer, ptr %t651
  %t652 = getelementptr { i64, [2 x i64] }, ptr %t651, i32 0, i32 0
  store i64 2, ptr %t652
  %t654 = insertvalue { i64, i64 } undef, i64 %t649, 0
  %t656 = insertvalue { i64, i64 } %t654, i64 %t650, 1
  %t657 = getelementptr { i64, [2 x i64] }, ptr %t651, i32 0, i32 1
  store { i64, i64 } %t656, ptr %t657
  %t658 = load { i64, [2 x i64] }, ptr %t651
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cbench_2fdispatch_3aFig_3e_2ePush_3cbench_2fdispatch_3aFig_3e(ptr %s22, ptr %l27, { i64, [2 x i64] } %t658)
  br label %bb93
bb92:
  br label %bb94
bb93:
  br label %bb94
bb94:
  br label %bb95
bb95:
  br label %bb96
bb96:
  %t661 = load i64, ptr %l32, !tbaa !24
  %t663 = add i64 %t661, 1
  store i64 %t663, ptr %l32, !tbaa !24
  br label %bb83
bb97:
  %t666 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cbench_2fdispatch_3aFig_3e_2eToArray_3cbench_2fdispatch_3aFig_3e(ptr %s22, ptr %s22, ptr %l27)
  store { i64, ptr } %t666, ptr %l288
  br label %bb98
bb98:
  %t667 = load { i64, ptr }, ptr %l288, !tbaa !27
  store { i64, ptr } %t667, ptr %l37, !tbaa !27
  store i64 0, ptr %l38, !tbaa !24
  %t668 = load i64, ptr %l3, !tbaa !24
  store i64 %t668, ptr %l39, !tbaa !24
  store i64 1, ptr %l40, !tbaa !24
  %t670 = load i64, ptr %l39, !tbaa !24
  %t671 = load i64, ptr %l38, !tbaa !24
  %t674 = icmp sgt i64 %t670, %t671
  br i1 %t674, label %bb99, label %bb100
bb99:
  %t676 = load i64, ptr %l40, !tbaa !24
  %t678 = icmp sgt i64 %t676, 0
  br i1 %t678, label %bb101, label %bb102
bb100:
  store i64 0, ptr %l293, !tbaa !24
  br label %bb104
bb101:
  %t680 = load i64, ptr %l39, !tbaa !24
  %t681 = load i64, ptr %l38, !tbaa !24
  %t684 = sub i64 %t680, %t681
  %t685 = load i64, ptr %l40, !tbaa !24
  %t688 = add i64 %t684, %t685
  %t690 = sub i64 %t688, 1
  %t691 = load i64, ptr %l40, !tbaa !24
  %t694 = sdiv i64 %t690, %t691
  store i64 %t694, ptr %l296, !tbaa !24
  br label %bb103
bb102:
  store i64 0, ptr %l296, !tbaa !24
  br label %bb103
bb103:
  %t696 = load i64, ptr %l296, !tbaa !24
  store i64 %t696, ptr %l293, !tbaa !24
  br label %bb104
bb104:
  %t697 = load i64, ptr %l293, !tbaa !24
  store i64 %t697, ptr %l41, !tbaa !24
  store i64 0, ptr %l42, !tbaa !24
  br label %bb105
bb105:
  %t698 = load i64, ptr %l42, !tbaa !24
  %t699 = load i64, ptr %l41, !tbaa !24
  %t702 = icmp slt i64 %t698, %t699
  %t704 = xor i1 %t702, true
  br i1 %t704, label %bb106, label %bb107
bb106:
  br label %bb117
bb107:
  br label %bb108
bb108:
  %t706 = load i64, ptr %l38, !tbaa !24
  %t707 = load i64, ptr %l42, !tbaa !24
  %t708 = load i64, ptr %l40, !tbaa !24
  %t711 = mul i64 %t707, %t708
  %t714 = add i64 %t706, %t711
  store i64 %t714, ptr %l43, !tbaa !24
  %t716 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t716, ptr %l44, !tbaa !27
  store i64 0, ptr %l45, !tbaa !24
  %t718 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t720 = extractvalue { i64, ptr } %t718, 0
  store i64 %t720, ptr %l46, !tbaa !24
  br label %bb109
bb109:
  store %olang.scope zeroinitializer, ptr %s33
  %t722 = load i64, ptr %l45, !tbaa !24
  %t723 = load i64, ptr %l46, !tbaa !24
  %t726 = icmp slt i64 %t722, %t723
  %t728 = xor i1 %t726, true
  br i1 %t728, label %bb110, label %bb111
bb110:
  call void @__olang_scope_close(ptr %s33)
  br label %bb115
bb111:
  br label %bb112
bb112:
  %t730 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t730, ptr %l321, !tbaa !27
  %t731 = load i64, ptr %l45, !tbaa !24
  %t733 = getelementptr { i64, ptr }, ptr %l321, i32 0, i32 1
  %t734 = load ptr, ptr %t733, !tbaa !27
  %t735 = getelementptr { i64, [2 x i64] }, ptr %t734, i64 %t731
  %t736 = load { i64, [2 x i64] }, ptr %t735
  store { i64, [2 x i64] } %t736, ptr %l47
  %t738 = load i64, ptr %l5, !tbaa !24
  store i64 %t738, ptr %l324, !tbaa !24
  %t740 = call i64 @bench_2fdispatch_2earea(ptr %s33, ptr %l47)
  store i64 %t740, ptr %l326
  br label %bb113
bb113:
  %t741 = load i64, ptr %l43, !tbaa !24
  %t742 = load i64, ptr %l326, !tbaa !24
  %t744 = xor i64 %t742, %t741
  %t745 = load i64, ptr %l324, !tbaa !24
  %t747 = add i64 %t745, %t744
  store i64 %t747, ptr %l5, !tbaa !24
  call void @__olang_scope_close(ptr %s33)
  br label %bb114
bb114:
  %t749 = load i64, ptr %l45, !tbaa !24
  %t751 = add i64 %t749, 1
  store i64 %t751, ptr %l45, !tbaa !24
  br label %bb109
bb115:
  br label %bb116
bb116:
  %t753 = load i64, ptr %l42, !tbaa !24
  %t755 = add i64 %t753, 1
  store i64 %t755, ptr %l42, !tbaa !24
  br label %bb105
bb117:
  call void @__olang_scope_close(ptr %s22)
  br label %bb159
bb118:
  %t757 = load i1, ptr %l335, !tbaa !21
  br i1 %t757, label %bb119, label %bb120
bb119:
  store %olang.scope zeroinitializer, ptr %s37
  %t758 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector(ptr %s37, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t758, ptr %l336
  br label %bb121
bb120:
  store i32 65537, ptr %l420, !tbaa !23
  call void @__olang_scope_close(ptr %s36)
  call void @__olang_scope_close(ptr %s21)
  call void @__olang_scope_close(ptr %s0)
  %t759 = load i32, ptr %l420, !tbaa !23
  %t760 = icmp eq i32 %t759, 131073
  br i1 %t760, label %bb156, label %bb157
bb121:
  %t762 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l336
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t762, ptr %l48
  store i64 0, ptr %l49, !tbaa !24
  %t763 = load i64, ptr %l2, !tbaa !24
  store i64 %t763, ptr %l50, !tbaa !24
  store i64 1, ptr %l51, !tbaa !24
  %t765 = load i64, ptr %l50, !tbaa !24
  %t766 = load i64, ptr %l49, !tbaa !24
  %t769 = icmp sgt i64 %t765, %t766
  br i1 %t769, label %bb122, label %bb123
bb122:
  %t771 = load i64, ptr %l51, !tbaa !24
  %t773 = icmp sgt i64 %t771, 0
  br i1 %t773, label %bb124, label %bb125
bb123:
  store i64 0, ptr %l341, !tbaa !24
  br label %bb127
bb124:
  %t775 = load i64, ptr %l50, !tbaa !24
  %t776 = load i64, ptr %l49, !tbaa !24
  %t779 = sub i64 %t775, %t776
  %t780 = load i64, ptr %l51, !tbaa !24
  %t783 = add i64 %t779, %t780
  %t785 = sub i64 %t783, 1
  %t786 = load i64, ptr %l51, !tbaa !24
  %t789 = sdiv i64 %t785, %t786
  store i64 %t789, ptr %l344, !tbaa !24
  br label %bb126
bb125:
  store i64 0, ptr %l344, !tbaa !24
  br label %bb126
bb126:
  %t791 = load i64, ptr %l344, !tbaa !24
  store i64 %t791, ptr %l341, !tbaa !24
  br label %bb127
bb127:
  %t792 = load i64, ptr %l341, !tbaa !24
  store i64 %t792, ptr %l52, !tbaa !24
  store i64 0, ptr %l53, !tbaa !24
  br label %bb128
bb128:
  store %olang.scope zeroinitializer, ptr %s39
  %t793 = load i64, ptr %l53, !tbaa !24
  %t794 = load i64, ptr %l52, !tbaa !24
  %t797 = icmp slt i64 %t793, %t794
  %t799 = xor i1 %t797, true
  br i1 %t799, label %bb129, label %bb130
bb129:
  call void @__olang_scope_close(ptr %s39)
  br label %bb135
bb130:
  br label %bb131
bb131:
  %t801 = load i64, ptr %l49, !tbaa !24
  %t802 = load i64, ptr %l53, !tbaa !24
  %t803 = load i64, ptr %l51, !tbaa !24
  %t806 = mul i64 %t802, %t803
  %t809 = add i64 %t801, %t806
  store i64 %t809, ptr %l54, !tbaa !24
  %t811 = load i64, ptr %l4, !tbaa !24
  %t813 = mul i64 %t811, 6364136223846793005
  %t815 = add i64 %t813, 1442695040888963407
  store i64 %t815, ptr %l4, !tbaa !24
  store ptr %l48, ptr %l365, !tbaa !29
  %t817 = load i64, ptr %l4, !tbaa !24
  %t819 = ashr i64 %t817, 40
  %t821 = srem i64 %t819, 100
  %t823 = add i64 %t821, 1
  %t825 = call %"bench/dispatch:Sq" @bench_2fdispatch_3aSq_2ector(ptr %s39, i64 %t823)
  store %"bench/dispatch:Sq" %t825, ptr %l370
  br label %bb132
bb132:
  %t826 = load ptr, ptr %l365, !tbaa !29
  %t827 = load %"bench/dispatch:Sq", ptr %l370
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cbench_2fdispatch_3aSq_3e_2ePush_3cbench_2fdispatch_3aSq_3e(ptr %s37, ptr %t826, %"bench/dispatch:Sq" %t827)
  br label %bb133
bb133:
  call void @__olang_scope_close(ptr %s39)
  br label %bb134
bb134:
  %t828 = load i64, ptr %l53, !tbaa !24
  %t830 = add i64 %t828, 1
  store i64 %t830, ptr %l53, !tbaa !24
  br label %bb128
bb135:
  %t833 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cbench_2fdispatch_3aSq_3e_2eToArray_3cbench_2fdispatch_3aSq_3e(ptr %s37, ptr %s37, ptr %l48)
  store { i64, ptr } %t833, ptr %l374
  br label %bb136
bb136:
  %t834 = load { i64, ptr }, ptr %l374, !tbaa !27
  store { i64, ptr } %t834, ptr %l55, !tbaa !27
  store i64 0, ptr %l56, !tbaa !24
  %t835 = load i64, ptr %l3, !tbaa !24
  store i64 %t835, ptr %l57, !tbaa !24
  store i64 1, ptr %l58, !tbaa !24
  %t837 = load i64, ptr %l57, !tbaa !24
  %t838 = load i64, ptr %l56, !tbaa !24
  %t841 = icmp sgt i64 %t837, %t838
  br i1 %t841, label %bb137, label %bb138
bb137:
  %t843 = load i64, ptr %l58, !tbaa !24
  %t845 = icmp sgt i64 %t843, 0
  br i1 %t845, label %bb139, label %bb140
bb138:
  store i64 0, ptr %l379, !tbaa !24
  br label %bb142
bb139:
  %t847 = load i64, ptr %l57, !tbaa !24
  %t848 = load i64, ptr %l56, !tbaa !24
  %t851 = sub i64 %t847, %t848
  %t852 = load i64, ptr %l58, !tbaa !24
  %t855 = add i64 %t851, %t852
  %t857 = sub i64 %t855, 1
  %t858 = load i64, ptr %l58, !tbaa !24
  %t861 = sdiv i64 %t857, %t858
  store i64 %t861, ptr %l382, !tbaa !24
  br label %bb141
bb140:
  store i64 0, ptr %l382, !tbaa !24
  br label %bb141
bb141:
  %t863 = load i64, ptr %l382, !tbaa !24
  store i64 %t863, ptr %l379, !tbaa !24
  br label %bb142
bb142:
  %t864 = load i64, ptr %l379, !tbaa !24
  store i64 %t864, ptr %l59, !tbaa !24
  store i64 0, ptr %l60, !tbaa !24
  br label %bb143
bb143:
  %t865 = load i64, ptr %l60, !tbaa !24
  %t866 = load i64, ptr %l59, !tbaa !24
  %t869 = icmp slt i64 %t865, %t866
  %t871 = xor i1 %t869, true
  br i1 %t871, label %bb144, label %bb145
bb144:
  br label %bb155
bb145:
  br label %bb146
bb146:
  %t873 = load i64, ptr %l56, !tbaa !24
  %t874 = load i64, ptr %l60, !tbaa !24
  %t875 = load i64, ptr %l58, !tbaa !24
  %t878 = mul i64 %t874, %t875
  %t881 = add i64 %t873, %t878
  store i64 %t881, ptr %l61, !tbaa !24
  %t883 = load { i64, ptr }, ptr %l55, !tbaa !27
  store { i64, ptr } %t883, ptr %l62, !tbaa !27
  store i64 0, ptr %l63, !tbaa !24
  %t885 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t887 = extractvalue { i64, ptr } %t885, 0
  store i64 %t887, ptr %l64, !tbaa !24
  br label %bb147
bb147:
  store %olang.scope zeroinitializer, ptr %s44
  %t889 = load i64, ptr %l63, !tbaa !24
  %t890 = load i64, ptr %l64, !tbaa !24
  %t893 = icmp slt i64 %t889, %t890
  %t895 = xor i1 %t893, true
  br i1 %t895, label %bb148, label %bb149
bb148:
  call void @__olang_scope_close(ptr %s44)
  br label %bb153
bb149:
  br label %bb150
bb150:
  %t897 = load { i64, ptr }, ptr %l62, !tbaa !27
  store { i64, ptr } %t897, ptr %l407, !tbaa !27
  %t898 = load i64, ptr %l63, !tbaa !24
  %t900 = getelementptr { i64, ptr }, ptr %l407, i32 0, i32 1
  %t901 = load ptr, ptr %t900, !tbaa !27
  %t902 = getelementptr %"bench/dispatch:Sq", ptr %t901, i64 %t898
  %t903 = load %"bench/dispatch:Sq", ptr %t902
  store %"bench/dispatch:Sq" %t903, ptr %l65
  %t905 = load i64, ptr %l5, !tbaa !24
  store i64 %t905, ptr %l410, !tbaa !24
  %t907 = call i64 @bench_2fdispatch_2ebench_2fdispatch_3aSq_2eArea(ptr %s44, ptr %l65)
  store i64 %t907, ptr %l412
  br label %bb151
bb151:
  %t908 = load i64, ptr %l61, !tbaa !24
  %t909 = load i64, ptr %l412, !tbaa !24
  %t911 = xor i64 %t909, %t908
  %t912 = load i64, ptr %l410, !tbaa !24
  %t914 = add i64 %t912, %t911
  store i64 %t914, ptr %l5, !tbaa !24
  call void @__olang_scope_close(ptr %s44)
  br label %bb152
bb152:
  %t916 = load i64, ptr %l63, !tbaa !24
  %t918 = add i64 %t916, 1
  store i64 %t918, ptr %l63, !tbaa !24
  br label %bb147
bb153:
  br label %bb154
bb154:
  %t920 = load i64, ptr %l60, !tbaa !24
  %t922 = add i64 %t920, 1
  store i64 %t922, ptr %l60, !tbaa !24
  br label %bb143
bb155:
  call void @__olang_scope_close(ptr %s37)
  br label %bb158
bb156:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s48
  store ptr %s48room, ptr %s48
  %t924 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t925 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s48, ptr %t924, i64 %t925)
  %t926 = call ptr @__olang_errpay_top_get()
  %t927 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t928 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s48, ptr %t927, i64 %t928)
  %t930 = getelementptr { i64, [1 x i64] }, ptr %t926, i32 0, i32 1
  %t931 = getelementptr { i64 }, ptr %t930, i32 0, i32 0
  %t932 = load i64, ptr %t931
  %t934 = call ptr @__olang_sb_room(ptr %s48, i64 24)
  %t935 = call i64 @__olang_fmt_i64(ptr %t934, i64 %t932)
  call void @__olang_sb_add(ptr %s48, i64 %t935)
  %t936 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t937 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s48, ptr %t936, i64 %t937)
  %t938 = load ptr, ptr %s48
  %t939 = getelementptr %olang.builder, ptr %s48, i32 0, i32 1
  %t940 = load i64, ptr %t939
  %t941 = load ptr, ptr @__olang_prog_scope
  %t942 = call ptr @__olang_scope_alloc(ptr %t941, i64 %t940)
  call void @olang_textcopy(ptr %t942, ptr %t938, i64 %t940)
  %t943 = insertvalue { i64, ptr } undef, i64 %t940, 0
  %t944 = insertvalue { i64, ptr } %t943, ptr %t942, 1
  store { i64, ptr } %t944, ptr %l424, !tbaa !27
  %t945 = getelementptr %olang.builder, ptr %s48, i32 0, i32 3
  %t946 = load ptr, ptr %t945
  %t947 = icmp ne ptr %t946, null
  br i1 %t947, label %sbgrew.948, label %sbdone.949
sbgrew.948:
  call void @__olang_sb_done(ptr %s48)
  br label %sbdone.949
sbdone.949:
  %t950 = load { i64, ptr }, ptr %l424, !tbaa !27
  %t951 = load ptr, ptr @__olang_prog_scope
  %t952 = extractvalue { i64, ptr } %t950, 0
  %t953 = extractvalue { i64, ptr } %t950, 1
  %t954 = mul i64 %t952, 1
  %t955 = call ptr @__olang_scope_alloc(ptr %t951, i64 %t954)
  call void @llvm.memcpy.p0.p0.i64(ptr %t955, ptr %t953, i64 %t954, i1 false)
  %t956 = insertvalue { i64, ptr } undef, i64 %t952, 0
  %t957 = insertvalue { i64, ptr } %t956, ptr %t955, 1
  %t959 = extractvalue { i64, ptr } %t957, 1
  %t960 = extractvalue { i64, ptr } %t957, 0
  %t961 = insertvalue { i64, ptr } undef, i64 %t960, 0
  %t962 = insertvalue { i64, ptr } %t961, ptr %t959, 1
  call void @__olang_unhandled_text({ i64, ptr } %t962, i1 false)
  unreachable
bb157:
  %t963 = load i32, ptr %l420, !tbaa !23
  store i32 %t963, ptr %rv
  br label %ret
bb158:
  call void @__olang_scope_close(ptr %s36)
  br label %bb159
bb159:
  call void @__olang_scope_close(ptr %s21)
  br label %bb160
bb160:
  %t964 = load i64, ptr %l5, !tbaa !24
  %t966 = call i64 @__olang_fmt_i64(ptr null, i64 %t964)
  %t967 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t968 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t969 = add i64 %t966, %t968
  %t970 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t969)
  %t971 = call i64 @__olang_fmt_i64(ptr %t970, i64 %t964)
  %t972 = getelementptr i8, ptr %t970, i64 %t966
  call void @olang_textcopy(ptr %t972, ptr %t967, i64 %t968)
  %t973 = insertvalue { i64, ptr } undef, i64 %t969, 0
  %t974 = insertvalue { i64, ptr } %t973, ptr %t970, 1
  %t976 = extractvalue { i64, ptr } %t974, 0
  %t977 = extractvalue { i64, ptr } %t974, 1
  %t978 = mul i64 %t976, 1
  %t979 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t978)
  call void @llvm.memcpy.p0.p0.i64(ptr %t979, ptr %t977, i64 %t978, i1 false)
  %t980 = insertvalue { i64, ptr } undef, i64 %t976, 0
  %t981 = insertvalue { i64, ptr } %t980, ptr %t979, 1
  %t983 = call i32 @std_2fio_2ePrint(ptr %s0, { i64, ptr } %t981)
  store i32 %t983, ptr %l429
  %t984 = icmp ne i32 %t983, 0
  br i1 %t984, label %bb162, label %ok.985, !prof !99
ok.985:
  br label %bb161
bb161:
  br label %bb165
bb162:
  %t986 = load i32, ptr %l429, !tbaa !23
  %t987 = lshr i32 %t986, 16
  %t988 = and i32 %t986, 65535
  %t989 = icmp eq i32 %t987, 1
  %t990 = select i1 %t989, i32 2, i32 0
  %t991 = icmp eq i32 %t986, 0
  %t992 = shl i32 %t990, 16
  %t993 = or i32 %t992, %t988
  %t994 = select i1 %t991, i32 0, i32 %t993
  store i32 %t994, ptr %l430, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  %t995 = load i32, ptr %l430, !tbaa !23
  %t996 = icmp eq i32 %t995, 131073
  br i1 %t996, label %bb163, label %bb164
bb163:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s50
  store ptr %s50room, ptr %s50
  %t998 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t999 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s50, ptr %t998, i64 %t999)
  %t1000 = call ptr @__olang_errpay_top_get()
  %t1001 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t1002 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s50, ptr %t1001, i64 %t1002)
  %t1004 = getelementptr { i64, [1 x i64] }, ptr %t1000, i32 0, i32 1
  %t1005 = getelementptr { i64 }, ptr %t1004, i32 0, i32 0
  %t1006 = load i64, ptr %t1005
  %t1008 = call ptr @__olang_sb_room(ptr %s50, i64 24)
  %t1009 = call i64 @__olang_fmt_i64(ptr %t1008, i64 %t1006)
  call void @__olang_sb_add(ptr %s50, i64 %t1009)
  %t1010 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t1011 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s50, ptr %t1010, i64 %t1011)
  %t1012 = load ptr, ptr %s50
  %t1013 = getelementptr %olang.builder, ptr %s50, i32 0, i32 1
  %t1014 = load i64, ptr %t1013
  %t1015 = load ptr, ptr @__olang_prog_scope
  %t1016 = call ptr @__olang_scope_alloc(ptr %t1015, i64 %t1014)
  call void @olang_textcopy(ptr %t1016, ptr %t1012, i64 %t1014)
  %t1017 = insertvalue { i64, ptr } undef, i64 %t1014, 0
  %t1018 = insertvalue { i64, ptr } %t1017, ptr %t1016, 1
  store { i64, ptr } %t1018, ptr %l434, !tbaa !27
  %t1019 = getelementptr %olang.builder, ptr %s50, i32 0, i32 3
  %t1020 = load ptr, ptr %t1019
  %t1021 = icmp ne ptr %t1020, null
  br i1 %t1021, label %sbgrew.1022, label %sbdone.1023
sbgrew.1022:
  call void @__olang_sb_done(ptr %s50)
  br label %sbdone.1023
sbdone.1023:
  %t1024 = load { i64, ptr }, ptr %l434, !tbaa !27
  %t1025 = load ptr, ptr @__olang_prog_scope
  %t1026 = extractvalue { i64, ptr } %t1024, 0
  %t1027 = extractvalue { i64, ptr } %t1024, 1
  %t1028 = mul i64 %t1026, 1
  %t1029 = call ptr @__olang_scope_alloc(ptr %t1025, i64 %t1028)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1029, ptr %t1027, i64 %t1028, i1 false)
  %t1030 = insertvalue { i64, ptr } undef, i64 %t1026, 0
  %t1031 = insertvalue { i64, ptr } %t1030, ptr %t1029, 1
  %t1033 = extractvalue { i64, ptr } %t1031, 1
  %t1034 = extractvalue { i64, ptr } %t1031, 0
  %t1035 = insertvalue { i64, ptr } undef, i64 %t1034, 0
  %t1036 = insertvalue { i64, ptr } %t1035, ptr %t1033, 1
  call void @__olang_unhandled_text({ i64, ptr } %t1036, i1 false)
  unreachable
bb164:
  %t1037 = load i32, ptr %l430, !tbaa !23
  store i32 %t1037, ptr %rv
  br label %ret
bb165:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local %"bench/dispatch:Rect" @bench_2fdispatch_3aRect_2ector(ptr %v0, i64 %a0, i64 %a1) #0 {
entry:
  %rv = alloca %"bench/dispatch:Rect"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"bench/dispatch:Rect" undef, i64 %a0, 0
  %t8 = insertvalue %"bench/dispatch:Rect" %t6, i64 %a1, 1
  store %"bench/dispatch:Rect" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"bench/dispatch:Rect", ptr %rv
  ret %"bench/dispatch:Rect" %rr
}

define dso_local %"bench/dispatch:Sq" @bench_2fdispatch_3aSq_2ector(ptr %v0, i64 %a0) #0 {
entry:
  %rv = alloca %"bench/dispatch:Sq"
  br label %start
start:
  br label %bb0
bb0:
  %t4 = insertvalue %"bench/dispatch:Sq" undef, i64 %a0, 0
  store %"bench/dispatch:Sq" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"bench/dispatch:Sq", ptr %rv
  ret %"bench/dispatch:Sq" %rr
}

define dso_local %"bench/dispatch:Tri" @bench_2fdispatch_3aTri_2ector(ptr %v0, i64 %a0, i64 %a1) #0 {
entry:
  %rv = alloca %"bench/dispatch:Tri"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"bench/dispatch:Tri" undef, i64 %a0, 0
  %t8 = insertvalue %"bench/dispatch:Tri" %t6, i64 %a1, 1
  store %"bench/dispatch:Tri" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"bench/dispatch:Tri", ptr %rv
  ret %"bench/dispatch:Tri" %rr
}

define i32 @main(i32 %argc, ptr %argv) #0 {
entry:
  store i32 %argc, ptr @__olang_argc
  store ptr %argv, ptr @__olang_argv
  call void @__olang_thread_init()
  %c = call i32 @bench_2fdispatch_2emain()
  %bad = icmp ne i32 %c, 0
  br i1 %bad, label %err, label %ok
ok:
  call void @__olang_prog_end()
  ret i32 0
err:
  %s = load ptr, ptr @stderr
  %m0 = getelementptr i8, ptr @.c22, i64 0
  %q1 = icmp eq i32 %c, 65536
  %m1 = select i1 %q1, ptr @.c23, ptr %m0
  %q2 = icmp eq i32 %c, 65537
  %m2 = select i1 %q2, ptr @.c24, ptr %m1
  %q3 = icmp eq i32 %c, 131072
  %m3 = select i1 %q3, ptr @.c25, ptr %m2
  %q4 = icmp eq i32 %c, 131073
  %m4 = select i1 %q4, ptr @.c26, ptr %m3
  %q5 = icmp eq i32 %c, 196608
  %m5 = select i1 %q5, ptr @.c27, ptr %m4
  %q6 = icmp eq i32 %c, 196609
  %m6 = select i1 %q6, ptr @.c28, ptr %m5
  %q7 = icmp eq i32 %c, 196610
  %m7 = select i1 %q7, ptr @.c29, ptr %m6
  call i32 @fputs(ptr %m7, ptr %s)
  call void @__olang_debug_hint(ptr %s)
  call void @__olang_prog_end()
  ret i32 1
}

define dso_local i64 @olang_2eslot_2ebench_2fdispatch_3aRect_7cbench_2fdispatch_3aShape_2e0(ptr %v0, ptr %a0) #0 {
entry:
  %l3 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t4 = call i64 @bench_2fdispatch_2ebench_2fdispatch_3aRect_2eArea(ptr %v0, ptr %a0)
  store i64 %t4, ptr %l3
  br label %bb1
bb1:
  %t5 = load i64, ptr %l3, !tbaa !24
  store i64 %t5, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @olang_2eslot_2ebench_2fdispatch_3aSq_7cbench_2fdispatch_3aShape_2e0(ptr %v0, ptr %a0) #0 {
entry:
  %l3 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t4 = call i64 @bench_2fdispatch_2ebench_2fdispatch_3aSq_2eArea(ptr %v0, ptr %a0)
  store i64 %t4, ptr %l3
  br label %bb1
bb1:
  %t5 = load i64, ptr %l3, !tbaa !24
  store i64 %t5, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @olang_2eslot_2ebench_2fdispatch_3aTri_7cbench_2fdispatch_3aShape_2e0(ptr %v0, ptr %a0) #0 {
entry:
  %l3 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t4 = call i64 @bench_2fdispatch_2ebench_2fdispatch_3aTri_2eArea(ptr %v0, ptr %a0)
  store i64 %t4, ptr %l3
  br label %bb1
bb1:
  %t5 = load i64, ptr %l3, !tbaa !24
  store i64 %t5, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l18 = alloca i64
  %l21 = alloca i64
  %l43 = alloca i1
  %l44 = alloca { i64, ptr }
  %l49 = alloca { i64, ptr }
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t4 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t9 = sub i64 %t3, %t6
  %t11 = add i64 %t9, 1
  store i64 %t11, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t13 = load i64, ptr %l3, !tbaa !24
  %t14 = load i64, ptr %l2, !tbaa !24
  %t17 = icmp sgt i64 %t13, %t14
  br i1 %t17, label %bb1, label %bb2
bb1:
  %t19 = load i64, ptr %l4, !tbaa !24
  %t21 = icmp sgt i64 %t19, 0
  br i1 %t21, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb6
bb3:
  %t23 = load i64, ptr %l3, !tbaa !24
  %t24 = load i64, ptr %l2, !tbaa !24
  %t27 = sub i64 %t23, %t24
  %t28 = load i64, ptr %l4, !tbaa !24
  %t31 = add i64 %t27, %t28
  %t33 = sub i64 %t31, 1
  %t34 = load i64, ptr %l4, !tbaa !24
  %t37 = sdiv i64 %t33, %t34
  store i64 %t37, ptr %l21, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb5
bb5:
  %t39 = load i64, ptr %l21, !tbaa !24
  store i64 %t39, ptr %l18, !tbaa !24
  br label %bb6
bb6:
  %t40 = load i64, ptr %l18, !tbaa !24
  store i64 %t40, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb7
bb7:
  %t41 = load i64, ptr %l6, !tbaa !24
  %t42 = load i64, ptr %l5, !tbaa !24
  %t45 = icmp slt i64 %t41, %t42
  %t47 = xor i1 %t45, true
  br i1 %t47, label %bb8, label %bb9
bb8:
  br label %bb24
bb9:
  br label %bb10
bb10:
  %t49 = load i64, ptr %l2, !tbaa !24
  %t50 = load i64, ptr %l6, !tbaa !24
  %t51 = load i64, ptr %l4, !tbaa !24
  %t54 = mul i64 %t50, %t51
  %t57 = add i64 %t49, %t54
  store i64 %t57, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb11
bb11:
  %t59 = load i64, ptr %l8, !tbaa !24
  %t60 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t62 = extractvalue { i64, ptr } %t60, 0
  %t65 = icmp slt i64 %t59, %t62
  br i1 %t65, label %bb12, label %bb13
bb12:
  %t67 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t67, ptr %l44, !tbaa !27
  %t68 = load i64, ptr %l7, !tbaa !24
  %t69 = load i64, ptr %l8, !tbaa !24
  %t72 = add i64 %t68, %t69
  %t74 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !27
  %t76 = getelementptr i8, ptr %t75, i64 %t72
  %t77 = load i8, ptr %t76, !tbaa !32
  %t78 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t78, ptr %l49, !tbaa !27
  %t79 = load i64, ptr %l8, !tbaa !24
  %t81 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !27
  %t83 = getelementptr i8, ptr %t82, i64 %t79
  %t84 = load i8, ptr %t83, !tbaa !32
  %t87 = icmp eq i8 %t77, %t84
  store i1 %t87, ptr %l43, !tbaa !21
  br label %bb14
bb13:
  store i1 false, ptr %l43, !tbaa !21
  br label %bb14
bb14:
  %t89 = load i1, ptr %l43, !tbaa !21
  %t90 = xor i1 %t89, true
  br i1 %t90, label %bb15, label %bb16
bb15:
  br label %bb19
bb16:
  br label %bb17
bb17:
  %t92 = load i64, ptr %l8, !tbaa !24
  %t94 = add i64 %t92, 1
  store i64 %t94, ptr %l8, !tbaa !24
  br label %bb18
bb18:
  br label %bb11
bb19:
  %t96 = load i64, ptr %l8, !tbaa !24
  %t97 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t99 = extractvalue { i64, ptr } %t97, 0
  %t102 = icmp eq i64 %t96, %t99
  br i1 %t102, label %bb20, label %bb21
bb20:
  store i1 true, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t105 = load i64, ptr %l6, !tbaa !24
  %t107 = add i64 %t105, 1
  store i64 %t107, ptr %l6, !tbaa !24
  br label %bb7
bb24:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eSort_3cstd_2fprelu_H425a408f665c1f34766f6a10dd38435a(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1c, ptr %a1e) #0 {
entry:
  %l0 = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  %pf1 = insertvalue { ptr, ptr } undef, ptr %a1c, 0
  %pg1 = insertvalue { ptr, ptr } %pf1, ptr %a1e, 1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp slt i64 %t3, 2
  br i1 %t5, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t11 = extractvalue { ptr, ptr } %pg1, 0
  %t12 = extractvalue { ptr, ptr } %pg1, 1
  call void @std_2fprelude_2farray_2esortByPositions_3cstd_2fprelude_2ftext_3aString_26_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %t7, ptr %t11, ptr %t12)
  br label %bb4
bb4:
  br label %bb5
bb5:
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2farray_2esortByPositions_3cstd_2fprelude_2ftext_3aString_26_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1c, ptr %a1e) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { ptr, ptr }
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l26 = alloca i64
  %l45 = alloca i64
  %l46 = alloca i64
  %l57 = alloca i64
  %l60 = alloca i64
  %l78 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %t160 = alloca { { ptr, ptr }, { i64, ptr }, ptr, ptr }, align 8
  store { i64, ptr } %a0, ptr %l0
  %pf1 = insertvalue { ptr, ptr } undef, ptr %a1c, 0
  %pg1 = insertvalue { ptr, ptr } %pf1, ptr %a1e, 1
  store { ptr, ptr } %pg1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l2, !tbaa !24
  %t5 = load i64, ptr %l2, !tbaa !24
  %t6 = load i64, ptr @G_2estd_2fprelude_2farray_2esortRun, !tbaa !24
  %t9 = icmp sle i64 %t5, %t6
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t12 = load i64, ptr %l2, !tbaa !24
  %t13 = load { ptr, ptr }, ptr %l1
  %t17 = extractvalue { ptr, ptr } %t13, 0
  %t18 = extractvalue { ptr, ptr } %t13, 1
  call void @std_2fprelude_2farray_2esortInsertion_3cstd_2fprelude_2ftext_3aString_26_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %t11, i64 0, i64 %t12, ptr %t17, ptr %t18)
  br label %bb3
bb2:
  br label %bb5
bb3:
  br label %bb4
bb4:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb5:
  %t19 = load i64, ptr %l2, !tbaa !24
  %t20 = load i64, ptr @G_2estd_2fprelude_2farray_2esortBlock, !tbaa !24
  %t23 = icmp sgt i64 %t19, %t20
  br i1 %t23, label %bb6, label %bb7
bb6:
  %t25 = load i64, ptr @G_2estd_2fprelude_2farray_2esortBlock, !tbaa !24
  store i64 %t25, ptr %l26, !tbaa !24
  br label %bb8
bb7:
  %t27 = load i64, ptr %l2, !tbaa !24
  store i64 %t27, ptr %l26, !tbaa !24
  br label %bb8
bb8:
  %t29 = load i64, ptr %l26, !tbaa !24
  %t30 = icmp sge i64 %t29, 0
  br i1 %t30, label %bb9, label %bb10
bb9:
  %t32 = load i64, ptr %l26, !tbaa !24
  %t33 = icmp sle i64 %t32, 1152921504606846975
  br i1 %t33, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_f5954356a94cfd1d_57c8a908dd11d469)
  unreachable
bb11:
  %t35 = load i64, ptr %l26, !tbaa !24
  %t36 = mul i64 %t35, 8
  %t37 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t36)
  %t38 = insertvalue { i64, ptr } undef, i64 %t35, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr %t37, 1
  store { i64, ptr } %t39, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  br label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_f5954356a94cfd1d_57c8a908dd11d469)
  unreachable
bb13:
  store %olang.scope zeroinitializer, ptr %s2
  %t41 = load i64, ptr %l4, !tbaa !24
  %t42 = load i64, ptr %l2, !tbaa !24
  %t45 = icmp slt i64 %t41, %t42
  %t47 = xor i1 %t45, true
  br i1 %t47, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s2)
  br label %bb42
bb15:
  br label %bb16
bb16:
  %t49 = load i64, ptr %l4, !tbaa !24
  %t50 = load i64, ptr @G_2estd_2fprelude_2farray_2esortBlock, !tbaa !24
  %t53 = add i64 %t49, %t50
  store i64 %t53, ptr %l5, !tbaa !24
  %t55 = load i64, ptr %l5, !tbaa !24
  %t56 = load i64, ptr %l2, !tbaa !24
  %t59 = icmp sgt i64 %t55, %t56
  br i1 %t59, label %bb17, label %bb18
bb17:
  %t61 = load i64, ptr %l2, !tbaa !24
  store i64 %t61, ptr %l5, !tbaa !24
  br label %bb19
bb18:
  br label %bb19
bb19:
  %t63 = load i64, ptr %l5, !tbaa !24
  %t64 = load i64, ptr %l4, !tbaa !24
  %t67 = sub i64 %t63, %t64
  store i64 %t67, ptr %l45, !tbaa !24
  %t68 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t69 = extractvalue { i64, ptr } %t68, 0
  store i64 %t69, ptr %l46, !tbaa !24
  %t70 = icmp sge i64 0, 0
  br i1 %t70, label %bb20, label %bb21
bb20:
  %t72 = load i64, ptr %l45, !tbaa !24
  %t73 = icmp sle i64 0, %t72
  br i1 %t73, label %bb22, label %bb23
bb21:
  call void @__olang_check_failed(ptr @olang_loc_bd57bfee552aaf80_4db8901b79077054)
  unreachable
bb22:
  %t75 = load i64, ptr %l45, !tbaa !24
  %t76 = load i64, ptr %l46, !tbaa !24
  %t77 = icmp sle i64 %t75, %t76
  br i1 %t77, label %bb24, label %bb25
bb23:
  call void @__olang_check_failed(ptr @olang_loc_bd57bfee552aaf80_4db8901b79077054)
  unreachable
bb24:
  %t79 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !27
  %t81 = load i64, ptr %l45, !tbaa !24
  %t82 = getelementptr i64, ptr %t80, i64 0
  %t83 = sub i64 %t81, 0
  %t84 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t85 = insertvalue { i64, ptr } %t84, ptr %t82, 1
  store { i64, ptr } %t85, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t87 = load i64, ptr %l5, !tbaa !24
  %t88 = load i64, ptr %l4, !tbaa !24
  %t91 = sub i64 %t87, %t88
  store i64 %t91, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t93 = load i64, ptr %l8, !tbaa !24
  %t94 = load i64, ptr %l7, !tbaa !24
  %t97 = icmp sgt i64 %t93, %t94
  br i1 %t97, label %bb26, label %bb27
bb25:
  call void @__olang_check_failed(ptr @olang_loc_bd57bfee552aaf80_4db8901b79077054)
  unreachable
bb26:
  %t99 = load i64, ptr %l9, !tbaa !24
  %t101 = icmp sgt i64 %t99, 0
  br i1 %t101, label %bb28, label %bb29
bb27:
  store i64 0, ptr %l57, !tbaa !24
  br label %bb31
bb28:
  %t103 = load i64, ptr %l8, !tbaa !24
  %t104 = load i64, ptr %l7, !tbaa !24
  %t107 = sub i64 %t103, %t104
  %t108 = load i64, ptr %l9, !tbaa !24
  %t111 = add i64 %t107, %t108
  %t113 = sub i64 %t111, 1
  %t114 = load i64, ptr %l9, !tbaa !24
  %t117 = sdiv i64 %t113, %t114
  store i64 %t117, ptr %l60, !tbaa !24
  br label %bb30
bb29:
  store i64 0, ptr %l60, !tbaa !24
  br label %bb30
bb30:
  %t119 = load i64, ptr %l60, !tbaa !24
  store i64 %t119, ptr %l57, !tbaa !24
  br label %bb31
bb31:
  %t120 = load i64, ptr %l57, !tbaa !24
  store i64 %t120, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb32
bb32:
  %t121 = load i64, ptr %l11, !tbaa !24
  %t122 = load i64, ptr %l10, !tbaa !24
  %t125 = icmp slt i64 %t121, %t122
  %t127 = xor i1 %t125, true
  br i1 %t127, label %bb33, label %bb34
bb33:
  br label %bb37
bb34:
  br label %bb35
bb35:
  %t129 = load i64, ptr %l7, !tbaa !24
  %t130 = load i64, ptr %l11, !tbaa !24
  %t131 = load i64, ptr %l9, !tbaa !24
  %t134 = mul i64 %t130, %t131
  %t137 = add i64 %t129, %t134
  store i64 %t137, ptr %l12, !tbaa !24
  %t139 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t139, ptr %l78, !tbaa !27
  %t140 = load i64, ptr %l12, !tbaa !24
  %t141 = load i64, ptr %l4, !tbaa !24
  %t142 = load i64, ptr %l12, !tbaa !24
  %t145 = add i64 %t141, %t142
  %t148 = getelementptr { i64, ptr }, ptr %l78, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !27
  %t150 = getelementptr i64, ptr %t149, i64 %t140
  store i64 %t145, ptr %t150, !tbaa !34
  br label %bb36
bb36:
  %t151 = load i64, ptr %l11, !tbaa !24
  %t153 = add i64 %t151, 1
  store i64 %t153, ptr %l11, !tbaa !24
  br label %bb32
bb37:
  %t155 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t156 = load { ptr, ptr }, ptr %l1
  %t157 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t158 = getelementptr { { ptr, ptr }, { i64, ptr }, ptr, ptr }, ptr null, i32 1
  %t159 = ptrtoint ptr %t158 to i64
  %t161 = getelementptr { { ptr, ptr }, { i64, ptr }, ptr, ptr }, ptr %t160, i32 0, i32 0
  store { ptr, ptr } %t156, ptr %t161, !tbaa !28
  %t163 = getelementptr { { ptr, ptr }, { i64, ptr }, ptr, ptr }, ptr %t160, i32 0, i32 1
  store { i64, ptr } %t157, ptr %t163, !tbaa !28
  call void @__olang_scope_escape(ptr %v1)
  %t165 = getelementptr { { ptr, ptr }, { i64, ptr }, ptr, ptr }, ptr %t160, i32 0, i32 2
  store ptr %v1, ptr %t165, !tbaa !28
  call void @__olang_scope_escape(ptr %v0)
  %t166 = getelementptr { { ptr, ptr }, { i64, ptr }, ptr, ptr }, ptr %t160, i32 0, i32 3
  store ptr %v0, ptr %t166, !tbaa !28
  %t167 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_30, 0
  %t168 = insertvalue { ptr, ptr } %t167, ptr %t160, 1
  %t171 = extractvalue { ptr, ptr } %t168, 0
  %t172 = extractvalue { ptr, ptr } %t168, 1
  call void @std_2fprelude_2farray_2esortMergeBuffered_3cI64_2c_20_3f_3e(ptr %s0, ptr %s2, { i64, ptr } %t155, ptr %t171, ptr %t172)
  br label %bb38
bb38:
  br label %bb39
bb39:
  %t173 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t174 = load i64, ptr %l4, !tbaa !24
  %t175 = load { i64, ptr }, ptr %l6, !tbaa !27
  call void @std_2fprelude_2farray_2esortPermute_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %s0, { i64, ptr } %t173, i64 %t174, { i64, ptr } %t175)
  br label %bb40
bb40:
  %t179 = load i64, ptr %l5, !tbaa !24
  store i64 %t179, ptr %l4, !tbaa !24
  call void @__olang_scope_close(ptr %s2)
  br label %bb41
bb41:
  br label %bb13
bb42:
  %t181 = load i64, ptr @G_2estd_2fprelude_2farray_2esortBlock, !tbaa !24
  store i64 %t181, ptr %l13, !tbaa !24
  br label %bb43
bb43:
  %t183 = load i64, ptr %l13, !tbaa !24
  %t184 = load i64, ptr %l2, !tbaa !24
  %t187 = icmp slt i64 %t183, %t184
  %t189 = xor i1 %t187, true
  br i1 %t189, label %bb44, label %bb45
bb44:
  br label %bb59
bb45:
  br label %bb46
bb46:
  store i64 0, ptr %l4, !tbaa !24
  br label %bb47
bb47:
  %t191 = load i64, ptr %l4, !tbaa !24
  %t192 = load i64, ptr %l13, !tbaa !24
  %t195 = add i64 %t191, %t192
  %t196 = load i64, ptr %l2, !tbaa !24
  %t199 = icmp slt i64 %t195, %t196
  %t201 = xor i1 %t199, true
  br i1 %t201, label %bb48, label %bb49
bb48:
  br label %bb57
bb49:
  br label %bb50
bb50:
  %t203 = load i64, ptr %l4, !tbaa !24
  %t204 = load i64, ptr %l13, !tbaa !24
  %t206 = mul i64 2, %t204
  %t209 = add i64 %t203, %t206
  store i64 %t209, ptr %l14, !tbaa !24
  %t211 = load i64, ptr %l14, !tbaa !24
  %t212 = load i64, ptr %l2, !tbaa !24
  %t215 = icmp sgt i64 %t211, %t212
  br i1 %t215, label %bb51, label %bb52
bb51:
  %t217 = load i64, ptr %l2, !tbaa !24
  store i64 %t217, ptr %l14, !tbaa !24
  br label %bb53
bb52:
  br label %bb53
bb53:
  %t219 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t220 = load i64, ptr %l4, !tbaa !24
  %t221 = load i64, ptr %l4, !tbaa !24
  %t222 = load i64, ptr %l13, !tbaa !24
  %t225 = add i64 %t221, %t222
  %t226 = load i64, ptr %l14, !tbaa !24
  %t227 = load { ptr, ptr }, ptr %l1
  %t233 = extractvalue { ptr, ptr } %t227, 0
  %t234 = extractvalue { ptr, ptr } %t227, 1
  call void @std_2fprelude_2farray_2esortMerge_3cstd_2fprelude_2ftext_3aString_26_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %t219, i64 %t220, i64 %t225, i64 %t226, ptr %t233, ptr %t234)
  br label %bb54
bb54:
  br label %bb55
bb55:
  %t235 = load i64, ptr %l14, !tbaa !24
  store i64 %t235, ptr %l4, !tbaa !24
  br label %bb56
bb56:
  br label %bb47
bb57:
  %t237 = load i64, ptr %l13, !tbaa !24
  %t239 = mul i64 %t237, 2
  store i64 %t239, ptr %l13, !tbaa !24
  br label %bb58
bb58:
  br label %bb43
bb59:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2farray_2esortInsert_3cI64_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i64 %a2, ptr %a3c, ptr %a3e) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l13 = alloca i1
  %l14 = alloca i1
  %l17 = alloca { i64, ptr }
  %l21 = alloca i1
  %l23 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  store i64 %a2, ptr %l2
  %pf3 = insertvalue { ptr, ptr } undef, ptr %a3c, 0
  %pg3 = insertvalue { ptr, ptr } %pf3, ptr %a3e, 1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t1, ptr %l6, !tbaa !27
  %t2 = load i64, ptr %l2, !tbaa !24
  %t4 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t5 = load ptr, ptr %t4, !tbaa !27
  %t6 = getelementptr i64, ptr %t5, i64 %t2
  %t7 = load i64, ptr %t6, !tbaa !34
  store i64 %t7, ptr %l4, !tbaa !24
  %t9 = load i64, ptr %l2, !tbaa !24
  store i64 %t9, ptr %l5, !tbaa !24
  br label %bb1
bb1:
  %t11 = load i64, ptr %l5, !tbaa !24
  %t15 = icmp sgt i64 %t11, %a1
  br i1 %t15, label %bb2, label %bb3
bb2:
  %t18 = load i64, ptr %l4, !tbaa !24
  %t19 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t19, ptr %l17, !tbaa !27
  %t20 = load i64, ptr %l5, !tbaa !24
  %t22 = sub i64 %t20, 1
  %t24 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr i64, ptr %t25, i64 %t22
  %t27 = load i64, ptr %t26, !tbaa !34
  %t29 = extractvalue { ptr, ptr } %pg3, 0
  %t30 = extractvalue { ptr, ptr } %pg3, 1
  %t33 = call i1 %t29(ptr %t30, i64 %t18, i64 %t27)
  store i1 %t33, ptr %l21
  br label %bb4
bb3:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb6
bb4:
  %t34 = load i1, ptr %l21, !tbaa !21
  store i1 %t34, ptr %l14, !tbaa !21
  br label %bb5
bb5:
  %t35 = load i1, ptr %l14, !tbaa !21
  store i1 %t35, ptr %l13, !tbaa !21
  br label %bb6
bb6:
  %t36 = load i1, ptr %l13, !tbaa !21
  %t37 = xor i1 %t36, true
  br i1 %t37, label %bb7, label %bb8
bb7:
  br label %bb11
bb8:
  br label %bb9
bb9:
  %t39 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t39, ptr %l23, !tbaa !27
  %t40 = load i64, ptr %l5, !tbaa !24
  %t41 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t41, ptr %l25, !tbaa !27
  %t42 = load i64, ptr %l5, !tbaa !24
  %t44 = sub i64 %t42, 1
  %t46 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = getelementptr i64, ptr %t47, i64 %t44
  %t49 = load i64, ptr %t48, !tbaa !34
  %t52 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !27
  %t54 = getelementptr i64, ptr %t53, i64 %t40
  store i64 %t49, ptr %t54, !tbaa !34
  %t55 = load i64, ptr %l5, !tbaa !24
  %t57 = sub i64 %t55, 1
  store i64 %t57, ptr %l5, !tbaa !24
  br label %bb10
bb10:
  br label %bb1
bb11:
  %t59 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t59, ptr %l31, !tbaa !27
  %t60 = load i64, ptr %l5, !tbaa !24
  %t61 = load i64, ptr %l4, !tbaa !24
  %t64 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !27
  %t66 = getelementptr i64, ptr %t65, i64 %t60
  store i64 %t61, ptr %t66, !tbaa !34
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2farray_2esortInsert_3cstd_2fprelude_2ftext_3aString_26_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i64 %a2, ptr %a3c, ptr %a3e) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l13 = alloca i1
  %l14 = alloca i1
  %l17 = alloca { i64, ptr }
  %l21 = alloca i1
  %l23 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  store i64 %a2, ptr %l2
  %pf3 = insertvalue { ptr, ptr } undef, ptr %a3c, 0
  %pg3 = insertvalue { ptr, ptr } %pf3, ptr %a3e, 1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t1, ptr %l6, !tbaa !27
  %t2 = load i64, ptr %l2, !tbaa !24
  %t4 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t5 = load ptr, ptr %t4, !tbaa !27
  %t6 = getelementptr { i64, ptr }, ptr %t5, i64 %t2
  %t7 = load { i64, ptr }, ptr %t6, !tbaa !37
  store { i64, ptr } %t7, ptr %l4, !tbaa !27
  %t9 = load i64, ptr %l2, !tbaa !24
  store i64 %t9, ptr %l5, !tbaa !24
  br label %bb1
bb1:
  %t11 = load i64, ptr %l5, !tbaa !24
  %t15 = icmp sgt i64 %t11, %a1
  br i1 %t15, label %bb2, label %bb3
bb2:
  %t18 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t19 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t19, ptr %l17, !tbaa !27
  %t20 = load i64, ptr %l5, !tbaa !24
  %t22 = sub i64 %t20, 1
  %t24 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr { i64, ptr }, ptr %t25, i64 %t22
  %t27 = load { i64, ptr }, ptr %t26, !tbaa !37
  %t29 = extractvalue { ptr, ptr } %pg3, 0
  %t30 = extractvalue { ptr, ptr } %pg3, 1
  %t33 = call i1 %t29(ptr %t30, ptr %v0, ptr %v0, { i64, ptr } %t18, { i64, ptr } %t27)
  store i1 %t33, ptr %l21
  br label %bb4
bb3:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb6
bb4:
  %t34 = load i1, ptr %l21, !tbaa !21
  store i1 %t34, ptr %l14, !tbaa !21
  br label %bb5
bb5:
  %t35 = load i1, ptr %l14, !tbaa !21
  store i1 %t35, ptr %l13, !tbaa !21
  br label %bb6
bb6:
  %t36 = load i1, ptr %l13, !tbaa !21
  %t37 = xor i1 %t36, true
  br i1 %t37, label %bb7, label %bb8
bb7:
  br label %bb11
bb8:
  br label %bb9
bb9:
  %t39 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t39, ptr %l23, !tbaa !27
  %t40 = load i64, ptr %l5, !tbaa !24
  %t41 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t41, ptr %l25, !tbaa !27
  %t42 = load i64, ptr %l5, !tbaa !24
  %t44 = sub i64 %t42, 1
  %t46 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = getelementptr { i64, ptr }, ptr %t47, i64 %t44
  %t49 = load { i64, ptr }, ptr %t48, !tbaa !37
  %t52 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !27
  %t54 = getelementptr { i64, ptr }, ptr %t53, i64 %t40
  store { i64, ptr } %t49, ptr %t54, !tbaa !37
  %t55 = load i64, ptr %l5, !tbaa !24
  %t57 = sub i64 %t55, 1
  store i64 %t57, ptr %l5, !tbaa !24
  br label %bb10
bb10:
  br label %bb1
bb11:
  %t59 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t59, ptr %l31, !tbaa !27
  %t60 = load i64, ptr %l5, !tbaa !24
  %t61 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t64 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !27
  %t66 = getelementptr { i64, ptr }, ptr %t65, i64 %t60
  store { i64, ptr } %t61, ptr %t66, !tbaa !37
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2farray_2esortInsertion_3cI64_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i64 %a2, ptr %a3c, ptr %a3e) #0 {
entry:
  %l1 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l16 = alloca i64
  %l19 = alloca i64
  store i64 %a1, ptr %l1
  %pf3 = insertvalue { ptr, ptr } undef, ptr %a3c, 0
  %pg3 = insertvalue { ptr, ptr } %pf3, ptr %a3e, 1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = add i64 %t1, 1
  store i64 %t3, ptr %l4, !tbaa !24
  store i64 %a2, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t7 = load i64, ptr %l5, !tbaa !24
  %t8 = load i64, ptr %l4, !tbaa !24
  %t11 = icmp sgt i64 %t7, %t8
  br i1 %t11, label %bb1, label %bb2
bb1:
  %t13 = load i64, ptr %l6, !tbaa !24
  %t15 = icmp sgt i64 %t13, 0
  br i1 %t15, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l16, !tbaa !24
  br label %bb6
bb3:
  %t17 = load i64, ptr %l5, !tbaa !24
  %t18 = load i64, ptr %l4, !tbaa !24
  %t21 = sub i64 %t17, %t18
  %t22 = load i64, ptr %l6, !tbaa !24
  %t25 = add i64 %t21, %t22
  %t27 = sub i64 %t25, 1
  %t28 = load i64, ptr %l6, !tbaa !24
  %t31 = sdiv i64 %t27, %t28
  store i64 %t31, ptr %l19, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb5
bb5:
  %t33 = load i64, ptr %l19, !tbaa !24
  store i64 %t33, ptr %l16, !tbaa !24
  br label %bb6
bb6:
  %t34 = load i64, ptr %l16, !tbaa !24
  store i64 %t34, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb7
bb7:
  %t35 = load i64, ptr %l8, !tbaa !24
  %t36 = load i64, ptr %l7, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb8, label %bb9
bb8:
  br label %bb14
bb9:
  br label %bb10
bb10:
  %t43 = load i64, ptr %l4, !tbaa !24
  %t44 = load i64, ptr %l8, !tbaa !24
  %t45 = load i64, ptr %l6, !tbaa !24
  %t48 = mul i64 %t44, %t45
  %t51 = add i64 %t43, %t48
  %t54 = load i64, ptr %l1, !tbaa !24
  %t61 = extractvalue { ptr, ptr } %pg3, 0
  %t62 = extractvalue { ptr, ptr } %pg3, 1
  call void @std_2fprelude_2farray_2esortInsert_3cI64_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %t54, i64 %t51, ptr %t61, ptr %t62)
  br label %bb11
bb11:
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t63 = load i64, ptr %l8, !tbaa !24
  %t65 = add i64 %t63, 1
  store i64 %t65, ptr %l8, !tbaa !24
  br label %bb7
bb14:
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2farray_2esortInsertion_3cstd_2fprelude_2ftext_3aString_26_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i64 %a2, ptr %a3c, ptr %a3e) #0 {
entry:
  %l1 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l16 = alloca i64
  %l19 = alloca i64
  store i64 %a1, ptr %l1
  %pf3 = insertvalue { ptr, ptr } undef, ptr %a3c, 0
  %pg3 = insertvalue { ptr, ptr } %pf3, ptr %a3e, 1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = add i64 %t1, 1
  store i64 %t3, ptr %l4, !tbaa !24
  store i64 %a2, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t7 = load i64, ptr %l5, !tbaa !24
  %t8 = load i64, ptr %l4, !tbaa !24
  %t11 = icmp sgt i64 %t7, %t8
  br i1 %t11, label %bb1, label %bb2
bb1:
  %t13 = load i64, ptr %l6, !tbaa !24
  %t15 = icmp sgt i64 %t13, 0
  br i1 %t15, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l16, !tbaa !24
  br label %bb6
bb3:
  %t17 = load i64, ptr %l5, !tbaa !24
  %t18 = load i64, ptr %l4, !tbaa !24
  %t21 = sub i64 %t17, %t18
  %t22 = load i64, ptr %l6, !tbaa !24
  %t25 = add i64 %t21, %t22
  %t27 = sub i64 %t25, 1
  %t28 = load i64, ptr %l6, !tbaa !24
  %t31 = sdiv i64 %t27, %t28
  store i64 %t31, ptr %l19, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb5
bb5:
  %t33 = load i64, ptr %l19, !tbaa !24
  store i64 %t33, ptr %l16, !tbaa !24
  br label %bb6
bb6:
  %t34 = load i64, ptr %l16, !tbaa !24
  store i64 %t34, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb7
bb7:
  %t35 = load i64, ptr %l8, !tbaa !24
  %t36 = load i64, ptr %l7, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb8, label %bb9
bb8:
  br label %bb14
bb9:
  br label %bb10
bb10:
  %t43 = load i64, ptr %l4, !tbaa !24
  %t44 = load i64, ptr %l8, !tbaa !24
  %t45 = load i64, ptr %l6, !tbaa !24
  %t48 = mul i64 %t44, %t45
  %t51 = add i64 %t43, %t48
  %t54 = load i64, ptr %l1, !tbaa !24
  %t61 = extractvalue { ptr, ptr } %pg3, 0
  %t62 = extractvalue { ptr, ptr } %pg3, 1
  call void @std_2fprelude_2farray_2esortInsert_3cstd_2fprelude_2ftext_3aString_26_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %t54, i64 %t51, ptr %t61, ptr %t62)
  br label %bb11
bb11:
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t63 = load i64, ptr %l8, !tbaa !24
  %t65 = add i64 %t63, 1
  store i64 %t65, ptr %l8, !tbaa !24
  br label %bb7
bb14:
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2farray_2esortMergeBackward_3cI64_2c_20_3f_3e(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1, i64 %a2, i64 %a3, i64 %a4, ptr %a5c, ptr %a5e) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
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
  %l23 = alloca i64
  %l26 = alloca i64
  %l44 = alloca { i64, ptr }
  %l46 = alloca { i64, ptr }
  %l62 = alloca i1
  %l66 = alloca i1
  %l68 = alloca { i64, ptr }
  %l71 = alloca { i64, ptr }
  %l74 = alloca i1
  %l75 = alloca { i64, ptr }
  %l77 = alloca { i64, ptr }
  %l82 = alloca { i64, ptr }
  %l84 = alloca { i64, ptr }
  %l94 = alloca { i64, ptr }
  %l96 = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store i64 %a3, ptr %l3
  store i64 %a4, ptr %l4
  %pf5 = insertvalue { ptr, ptr } undef, ptr %a5c, 0
  %pg5 = insertvalue { ptr, ptr } %pf5, ptr %a5e, 1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l4, !tbaa !24
  %t2 = load i64, ptr %l3, !tbaa !24
  %t5 = sub i64 %t1, %t2
  store i64 %t5, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  %t7 = load i64, ptr %l6, !tbaa !24
  store i64 %t7, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t9 = load i64, ptr %l8, !tbaa !24
  %t10 = load i64, ptr %l7, !tbaa !24
  %t13 = icmp sgt i64 %t9, %t10
  br i1 %t13, label %bb1, label %bb2
bb1:
  %t15 = load i64, ptr %l9, !tbaa !24
  %t17 = icmp sgt i64 %t15, 0
  br i1 %t17, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb6
bb3:
  %t19 = load i64, ptr %l8, !tbaa !24
  %t20 = load i64, ptr %l7, !tbaa !24
  %t23 = sub i64 %t19, %t20
  %t24 = load i64, ptr %l9, !tbaa !24
  %t27 = add i64 %t23, %t24
  %t29 = sub i64 %t27, 1
  %t30 = load i64, ptr %l9, !tbaa !24
  %t33 = sdiv i64 %t29, %t30
  store i64 %t33, ptr %l26, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb5
bb5:
  %t35 = load i64, ptr %l26, !tbaa !24
  store i64 %t35, ptr %l23, !tbaa !24
  br label %bb6
bb6:
  %t36 = load i64, ptr %l23, !tbaa !24
  store i64 %t36, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb7
bb7:
  %t37 = load i64, ptr %l11, !tbaa !24
  %t38 = load i64, ptr %l10, !tbaa !24
  %t41 = icmp slt i64 %t37, %t38
  %t43 = xor i1 %t41, true
  br i1 %t43, label %bb8, label %bb9
bb8:
  br label %bb12
bb9:
  br label %bb10
bb10:
  %t45 = load i64, ptr %l7, !tbaa !24
  %t46 = load i64, ptr %l11, !tbaa !24
  %t47 = load i64, ptr %l9, !tbaa !24
  %t50 = mul i64 %t46, %t47
  %t53 = add i64 %t45, %t50
  store i64 %t53, ptr %l12, !tbaa !24
  %t55 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t55, ptr %l44, !tbaa !27
  %t56 = load i64, ptr %l12, !tbaa !24
  %t57 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t57, ptr %l46, !tbaa !27
  %t58 = load i64, ptr %l3, !tbaa !24
  %t59 = load i64, ptr %l12, !tbaa !24
  %t62 = add i64 %t58, %t59
  %t64 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !27
  %t66 = getelementptr i64, ptr %t65, i64 %t62
  %t67 = load i64, ptr %t66, !tbaa !34
  %t70 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !27
  %t72 = getelementptr i64, ptr %t71, i64 %t56
  store i64 %t67, ptr %t72, !tbaa !34
  br label %bb11
bb11:
  %t73 = load i64, ptr %l11, !tbaa !24
  %t75 = add i64 %t73, 1
  store i64 %t75, ptr %l11, !tbaa !24
  br label %bb7
bb12:
  %t77 = load i64, ptr %l3, !tbaa !24
  %t79 = sub i64 %t77, 1
  store i64 %t79, ptr %l13, !tbaa !24
  %t81 = load i64, ptr %l6, !tbaa !24
  %t83 = sub i64 %t81, 1
  store i64 %t83, ptr %l14, !tbaa !24
  %t85 = load i64, ptr %l4, !tbaa !24
  %t87 = sub i64 %t85, 1
  store i64 %t87, ptr %l15, !tbaa !24
  br label %bb13
bb13:
  %t89 = load i64, ptr %l13, !tbaa !24
  %t93 = icmp sge i64 %t89, %a2
  br i1 %t93, label %bb14, label %bb15
bb14:
  %t95 = load i64, ptr %l14, !tbaa !24
  %t97 = icmp sge i64 %t95, 0
  store i1 %t97, ptr %l62, !tbaa !21
  br label %bb16
bb15:
  store i1 false, ptr %l62, !tbaa !21
  br label %bb16
bb16:
  %t99 = load i1, ptr %l62, !tbaa !21
  %t100 = xor i1 %t99, true
  br i1 %t100, label %bb17, label %bb18
bb17:
  br label %bb26
bb18:
  br label %bb19
bb19:
  %t103 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t103, ptr %l68, !tbaa !27
  %t104 = load i64, ptr %l14, !tbaa !24
  %t106 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !27
  %t108 = getelementptr i64, ptr %t107, i64 %t104
  %t109 = load i64, ptr %t108, !tbaa !34
  %t110 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t110, ptr %l71, !tbaa !27
  %t111 = load i64, ptr %l13, !tbaa !24
  %t113 = getelementptr { i64, ptr }, ptr %l71, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !27
  %t115 = getelementptr i64, ptr %t114, i64 %t111
  %t116 = load i64, ptr %t115, !tbaa !34
  %t118 = extractvalue { ptr, ptr } %pg5, 0
  %t119 = extractvalue { ptr, ptr } %pg5, 1
  %t122 = call i1 %t118(ptr %t119, i64 %t109, i64 %t116)
  store i1 %t122, ptr %l74
  br label %bb20
bb20:
  %t123 = load i1, ptr %l74, !tbaa !21
  store i1 %t123, ptr %l66, !tbaa !21
  br label %bb21
bb21:
  %t124 = load i1, ptr %l66, !tbaa !21
  br i1 %t124, label %bb22, label %bb23
bb22:
  %t125 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t125, ptr %l75, !tbaa !27
  %t126 = load i64, ptr %l15, !tbaa !24
  %t127 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t127, ptr %l77, !tbaa !27
  %t128 = load i64, ptr %l13, !tbaa !24
  %t130 = getelementptr { i64, ptr }, ptr %l77, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !27
  %t132 = getelementptr i64, ptr %t131, i64 %t128
  %t133 = load i64, ptr %t132, !tbaa !34
  %t136 = getelementptr { i64, ptr }, ptr %l75, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !27
  %t138 = getelementptr i64, ptr %t137, i64 %t126
  store i64 %t133, ptr %t138, !tbaa !34
  %t139 = load i64, ptr %l13, !tbaa !24
  %t141 = sub i64 %t139, 1
  store i64 %t141, ptr %l13, !tbaa !24
  br label %bb24
bb23:
  %t143 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t143, ptr %l82, !tbaa !27
  %t144 = load i64, ptr %l15, !tbaa !24
  %t145 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t145, ptr %l84, !tbaa !27
  %t146 = load i64, ptr %l14, !tbaa !24
  %t148 = getelementptr { i64, ptr }, ptr %l84, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !27
  %t150 = getelementptr i64, ptr %t149, i64 %t146
  %t151 = load i64, ptr %t150, !tbaa !34
  %t154 = getelementptr { i64, ptr }, ptr %l82, i32 0, i32 1
  %t155 = load ptr, ptr %t154, !tbaa !27
  %t156 = getelementptr i64, ptr %t155, i64 %t144
  store i64 %t151, ptr %t156, !tbaa !34
  %t157 = load i64, ptr %l14, !tbaa !24
  %t159 = sub i64 %t157, 1
  store i64 %t159, ptr %l14, !tbaa !24
  br label %bb24
bb24:
  %t161 = load i64, ptr %l15, !tbaa !24
  %t163 = sub i64 %t161, 1
  store i64 %t163, ptr %l15, !tbaa !24
  br label %bb25
bb25:
  br label %bb13
bb26:
  br label %bb27
bb27:
  %t165 = load i64, ptr %l14, !tbaa !24
  %t167 = icmp sge i64 %t165, 0
  %t169 = xor i1 %t167, true
  br i1 %t169, label %bb28, label %bb29
bb28:
  br label %bb32
bb29:
  br label %bb30
bb30:
  %t171 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t171, ptr %l94, !tbaa !27
  %t172 = load i64, ptr %l15, !tbaa !24
  %t173 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t173, ptr %l96, !tbaa !27
  %t174 = load i64, ptr %l14, !tbaa !24
  %t176 = getelementptr { i64, ptr }, ptr %l96, i32 0, i32 1
  %t177 = load ptr, ptr %t176, !tbaa !27
  %t178 = getelementptr i64, ptr %t177, i64 %t174
  %t179 = load i64, ptr %t178, !tbaa !34
  %t182 = getelementptr { i64, ptr }, ptr %l94, i32 0, i32 1
  %t183 = load ptr, ptr %t182, !tbaa !27
  %t184 = getelementptr i64, ptr %t183, i64 %t172
  store i64 %t179, ptr %t184, !tbaa !34
  %t185 = load i64, ptr %l14, !tbaa !24
  %t187 = sub i64 %t185, 1
  store i64 %t187, ptr %l14, !tbaa !24
  %t189 = load i64, ptr %l15, !tbaa !24
  %t191 = sub i64 %t189, 1
  store i64 %t191, ptr %l15, !tbaa !24
  br label %bb31
bb31:
  br label %bb27
bb32:
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2farray_2esortMergeBuffered_3cI64_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1c, ptr %a1e) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { ptr, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l32 = alloca i64
  %l33 = alloca { i64, ptr }
  %l34 = alloca i64
  %s0 = alloca %olang.scope
  %t67 = alloca i64
  store { i64, ptr } %a0, ptr %l0
  %pf1 = insertvalue { ptr, ptr } undef, ptr %a1c, 0
  %pg1 = insertvalue { ptr, ptr } %pf1, ptr %a1e, 1
  store { ptr, ptr } %pg1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l2, !tbaa !24
  %t5 = load i64, ptr @G_2estd_2fprelude_2farray_2esortRun, !tbaa !24
  store i64 %t5, ptr %l3, !tbaa !24
  store i64 0, ptr %l4, !tbaa !24
  br label %bb1
bb1:
  %t7 = load i64, ptr %l4, !tbaa !24
  %t8 = load i64, ptr %l2, !tbaa !24
  %t11 = icmp slt i64 %t7, %t8
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  br label %bb11
bb3:
  br label %bb4
bb4:
  %t15 = load i64, ptr %l4, !tbaa !24
  %t16 = load i64, ptr %l3, !tbaa !24
  %t19 = add i64 %t15, %t16
  store i64 %t19, ptr %l5, !tbaa !24
  %t21 = load i64, ptr %l5, !tbaa !24
  %t22 = load i64, ptr %l2, !tbaa !24
  %t25 = icmp sgt i64 %t21, %t22
  br i1 %t25, label %bb5, label %bb6
bb5:
  %t27 = load i64, ptr %l2, !tbaa !24
  store i64 %t27, ptr %l5, !tbaa !24
  br label %bb7
bb6:
  br label %bb7
bb7:
  %t29 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t30 = load i64, ptr %l4, !tbaa !24
  %t31 = load i64, ptr %l5, !tbaa !24
  %t32 = load { ptr, ptr }, ptr %l1
  %t37 = extractvalue { ptr, ptr } %t32, 0
  %t38 = extractvalue { ptr, ptr } %t32, 1
  call void @std_2fprelude_2farray_2esortInsertion_3cI64_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %t29, i64 %t30, i64 %t31, ptr %t37, ptr %t38)
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t39 = load i64, ptr %l5, !tbaa !24
  store i64 %t39, ptr %l4, !tbaa !24
  br label %bb10
bb10:
  br label %bb1
bb11:
  %t41 = load i64, ptr %l2, !tbaa !24
  %t42 = load i64, ptr %l3, !tbaa !24
  %t45 = icmp sle i64 %t41, %t42
  br i1 %t45, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb13:
  br label %bb14
bb14:
  %t47 = load i64, ptr %l2, !tbaa !24
  %t49 = add i64 %t47, 1
  %t51 = sdiv i64 %t49, 2
  store i64 %t51, ptr %l32, !tbaa !24
  %t52 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t52, ptr %l33, !tbaa !27
  %t53 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !27
  %t55 = getelementptr i64, ptr %t54, i64 0
  %t56 = load i64, ptr %t55, !tbaa !34
  store i64 %t56, ptr %l34, !tbaa !24
  %t57 = load i64, ptr %l32, !tbaa !24
  %t58 = icmp sge i64 %t57, 0
  br i1 %t58, label %bb15, label %bb16
bb15:
  %t60 = load i64, ptr %l32, !tbaa !24
  %t61 = icmp sle i64 %t60, 1152921504606846975
  br i1 %t61, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_32b4dd57063daccc_20299270f57c1810)
  unreachable
bb17:
  %t63 = load i64, ptr %l32, !tbaa !24
  %t64 = mul i64 %t63, 8
  %t65 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t64)
  %t66 = load i64, ptr %l34, !tbaa !24
  store i64 0, ptr %t67
  br label %fill.68
fill.68:
  %t71 = load i64, ptr %t67
  %t72 = icmp slt i64 %t71, %t63
  br i1 %t72, label %fillb.69, label %filld.70
fillb.69:
  %t73 = getelementptr i64, ptr %t65, i64 %t71
  store i64 %t66, ptr %t73
  %t74 = add i64 %t71, 1
  store i64 %t74, ptr %t67
  br label %fill.68
filld.70:
  %t75 = insertvalue { i64, ptr } undef, i64 %t63, 0
  %t76 = insertvalue { i64, ptr } %t75, ptr %t65, 1
  store { i64, ptr } %t76, ptr %l6, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_32b4dd57063daccc_20299270f57c1810)
  unreachable
bb19:
  %t78 = load i64, ptr %l4, !tbaa !24
  %t79 = load i64, ptr %l2, !tbaa !24
  %t82 = icmp slt i64 %t78, %t79
  %t84 = xor i1 %t82, true
  br i1 %t84, label %bb20, label %bb21
bb20:
  br label %bb29
bb21:
  br label %bb22
bb22:
  %t86 = load i64, ptr %l4, !tbaa !24
  %t87 = load i64, ptr @G_2estd_2fprelude_2farray_2esortBlock, !tbaa !24
  %t90 = add i64 %t86, %t87
  store i64 %t90, ptr %l7, !tbaa !24
  %t92 = load i64, ptr %l7, !tbaa !24
  %t93 = load i64, ptr %l2, !tbaa !24
  %t96 = icmp sgt i64 %t92, %t93
  br i1 %t96, label %bb23, label %bb24
bb23:
  %t98 = load i64, ptr %l2, !tbaa !24
  store i64 %t98, ptr %l7, !tbaa !24
  br label %bb25
bb24:
  br label %bb25
bb25:
  %t100 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t101 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t102 = load i64, ptr %l4, !tbaa !24
  %t103 = load i64, ptr %l7, !tbaa !24
  %t104 = load i64, ptr %l3, !tbaa !24
  %t105 = load { ptr, ptr }, ptr %l1
  %t112 = extractvalue { ptr, ptr } %t105, 0
  %t113 = extractvalue { ptr, ptr } %t105, 1
  call void @std_2fprelude_2farray_2esortMergeRuns_3cI64_2c_20_3f_3e(ptr %v0, ptr %s0, ptr %v1, { i64, ptr } %t100, { i64, ptr } %t101, i64 %t102, i64 %t103, i64 %t104, ptr %t112, ptr %t113)
  br label %bb26
bb26:
  br label %bb27
bb27:
  %t114 = load i64, ptr %l7, !tbaa !24
  store i64 %t114, ptr %l4, !tbaa !24
  br label %bb28
bb28:
  br label %bb19
bb29:
  %t116 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t117 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t118 = load i64, ptr %l2, !tbaa !24
  %t119 = load i64, ptr @G_2estd_2fprelude_2farray_2esortBlock, !tbaa !24
  %t120 = load { ptr, ptr }, ptr %l1
  %t126 = extractvalue { ptr, ptr } %t120, 0
  %t127 = extractvalue { ptr, ptr } %t120, 1
  call void @std_2fprelude_2farray_2esortMergeRuns_3cI64_2c_20_3f_3e(ptr %v0, ptr %s0, ptr %v1, { i64, ptr } %t116, { i64, ptr } %t117, i64 0, i64 %t118, i64 %t119, ptr %t126, ptr %t127)
  br label %bb30
bb30:
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2farray_2esortMergeForward_3cI64_2c_20_3f_3e(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1, i64 %a2, i64 %a3, i64 %a4, ptr %a5c, ptr %a5e) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
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
  %l23 = alloca i64
  %l26 = alloca i64
  %l44 = alloca { i64, ptr }
  %l46 = alloca { i64, ptr }
  %l58 = alloca i1
  %l63 = alloca i1
  %l65 = alloca { i64, ptr }
  %l68 = alloca { i64, ptr }
  %l71 = alloca i1
  %l72 = alloca { i64, ptr }
  %l74 = alloca { i64, ptr }
  %l79 = alloca { i64, ptr }
  %l81 = alloca { i64, ptr }
  %l92 = alloca { i64, ptr }
  %l94 = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
  %pf5 = insertvalue { ptr, ptr } undef, ptr %a5c, 0
  %pg5 = insertvalue { ptr, ptr } %pf5, ptr %a5e, 1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l3, !tbaa !24
  %t2 = load i64, ptr %l2, !tbaa !24
  %t5 = sub i64 %t1, %t2
  store i64 %t5, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  %t7 = load i64, ptr %l6, !tbaa !24
  store i64 %t7, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t9 = load i64, ptr %l8, !tbaa !24
  %t10 = load i64, ptr %l7, !tbaa !24
  %t13 = icmp sgt i64 %t9, %t10
  br i1 %t13, label %bb1, label %bb2
bb1:
  %t15 = load i64, ptr %l9, !tbaa !24
  %t17 = icmp sgt i64 %t15, 0
  br i1 %t17, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb6
bb3:
  %t19 = load i64, ptr %l8, !tbaa !24
  %t20 = load i64, ptr %l7, !tbaa !24
  %t23 = sub i64 %t19, %t20
  %t24 = load i64, ptr %l9, !tbaa !24
  %t27 = add i64 %t23, %t24
  %t29 = sub i64 %t27, 1
  %t30 = load i64, ptr %l9, !tbaa !24
  %t33 = sdiv i64 %t29, %t30
  store i64 %t33, ptr %l26, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb5
bb5:
  %t35 = load i64, ptr %l26, !tbaa !24
  store i64 %t35, ptr %l23, !tbaa !24
  br label %bb6
bb6:
  %t36 = load i64, ptr %l23, !tbaa !24
  store i64 %t36, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb7
bb7:
  %t37 = load i64, ptr %l11, !tbaa !24
  %t38 = load i64, ptr %l10, !tbaa !24
  %t41 = icmp slt i64 %t37, %t38
  %t43 = xor i1 %t41, true
  br i1 %t43, label %bb8, label %bb9
bb8:
  br label %bb12
bb9:
  br label %bb10
bb10:
  %t45 = load i64, ptr %l7, !tbaa !24
  %t46 = load i64, ptr %l11, !tbaa !24
  %t47 = load i64, ptr %l9, !tbaa !24
  %t50 = mul i64 %t46, %t47
  %t53 = add i64 %t45, %t50
  store i64 %t53, ptr %l12, !tbaa !24
  %t55 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t55, ptr %l44, !tbaa !27
  %t56 = load i64, ptr %l12, !tbaa !24
  %t57 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t57, ptr %l46, !tbaa !27
  %t58 = load i64, ptr %l2, !tbaa !24
  %t59 = load i64, ptr %l12, !tbaa !24
  %t62 = add i64 %t58, %t59
  %t64 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !27
  %t66 = getelementptr i64, ptr %t65, i64 %t62
  %t67 = load i64, ptr %t66, !tbaa !34
  %t70 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !27
  %t72 = getelementptr i64, ptr %t71, i64 %t56
  store i64 %t67, ptr %t72, !tbaa !34
  br label %bb11
bb11:
  %t73 = load i64, ptr %l11, !tbaa !24
  %t75 = add i64 %t73, 1
  store i64 %t75, ptr %l11, !tbaa !24
  br label %bb7
bb12:
  store i64 0, ptr %l13, !tbaa !24
  %t77 = load i64, ptr %l3, !tbaa !24
  store i64 %t77, ptr %l14, !tbaa !24
  %t79 = load i64, ptr %l2, !tbaa !24
  store i64 %t79, ptr %l15, !tbaa !24
  br label %bb13
bb13:
  %t81 = load i64, ptr %l13, !tbaa !24
  %t82 = load i64, ptr %l6, !tbaa !24
  %t85 = icmp slt i64 %t81, %t82
  br i1 %t85, label %bb14, label %bb15
bb14:
  %t87 = load i64, ptr %l14, !tbaa !24
  %t91 = icmp slt i64 %t87, %a4
  store i1 %t91, ptr %l58, !tbaa !21
  br label %bb16
bb15:
  store i1 false, ptr %l58, !tbaa !21
  br label %bb16
bb16:
  %t93 = load i1, ptr %l58, !tbaa !21
  %t94 = xor i1 %t93, true
  br i1 %t94, label %bb17, label %bb18
bb17:
  br label %bb26
bb18:
  br label %bb19
bb19:
  %t97 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t97, ptr %l65, !tbaa !27
  %t98 = load i64, ptr %l14, !tbaa !24
  %t100 = getelementptr { i64, ptr }, ptr %l65, i32 0, i32 1
  %t101 = load ptr, ptr %t100, !tbaa !27
  %t102 = getelementptr i64, ptr %t101, i64 %t98
  %t103 = load i64, ptr %t102, !tbaa !34
  %t104 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t104, ptr %l68, !tbaa !27
  %t105 = load i64, ptr %l13, !tbaa !24
  %t107 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t108 = load ptr, ptr %t107, !tbaa !27
  %t109 = getelementptr i64, ptr %t108, i64 %t105
  %t110 = load i64, ptr %t109, !tbaa !34
  %t112 = extractvalue { ptr, ptr } %pg5, 0
  %t113 = extractvalue { ptr, ptr } %pg5, 1
  %t116 = call i1 %t112(ptr %t113, i64 %t103, i64 %t110)
  store i1 %t116, ptr %l71
  br label %bb20
bb20:
  %t117 = load i1, ptr %l71, !tbaa !21
  store i1 %t117, ptr %l63, !tbaa !21
  br label %bb21
bb21:
  %t118 = load i1, ptr %l63, !tbaa !21
  br i1 %t118, label %bb22, label %bb23
bb22:
  %t119 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t119, ptr %l72, !tbaa !27
  %t120 = load i64, ptr %l15, !tbaa !24
  %t121 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t121, ptr %l74, !tbaa !27
  %t122 = load i64, ptr %l14, !tbaa !24
  %t124 = getelementptr { i64, ptr }, ptr %l74, i32 0, i32 1
  %t125 = load ptr, ptr %t124, !tbaa !27
  %t126 = getelementptr i64, ptr %t125, i64 %t122
  %t127 = load i64, ptr %t126, !tbaa !34
  %t130 = getelementptr { i64, ptr }, ptr %l72, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !27
  %t132 = getelementptr i64, ptr %t131, i64 %t120
  store i64 %t127, ptr %t132, !tbaa !34
  %t133 = load i64, ptr %l14, !tbaa !24
  %t135 = add i64 %t133, 1
  store i64 %t135, ptr %l14, !tbaa !24
  br label %bb24
bb23:
  %t137 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t137, ptr %l79, !tbaa !27
  %t138 = load i64, ptr %l15, !tbaa !24
  %t139 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t139, ptr %l81, !tbaa !27
  %t140 = load i64, ptr %l13, !tbaa !24
  %t142 = getelementptr { i64, ptr }, ptr %l81, i32 0, i32 1
  %t143 = load ptr, ptr %t142, !tbaa !27
  %t144 = getelementptr i64, ptr %t143, i64 %t140
  %t145 = load i64, ptr %t144, !tbaa !34
  %t148 = getelementptr { i64, ptr }, ptr %l79, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !27
  %t150 = getelementptr i64, ptr %t149, i64 %t138
  store i64 %t145, ptr %t150, !tbaa !34
  %t151 = load i64, ptr %l13, !tbaa !24
  %t153 = add i64 %t151, 1
  store i64 %t153, ptr %l13, !tbaa !24
  br label %bb24
bb24:
  %t155 = load i64, ptr %l15, !tbaa !24
  %t157 = add i64 %t155, 1
  store i64 %t157, ptr %l15, !tbaa !24
  br label %bb25
bb25:
  br label %bb13
bb26:
  br label %bb27
bb27:
  %t159 = load i64, ptr %l13, !tbaa !24
  %t160 = load i64, ptr %l6, !tbaa !24
  %t163 = icmp slt i64 %t159, %t160
  %t165 = xor i1 %t163, true
  br i1 %t165, label %bb28, label %bb29
bb28:
  br label %bb32
bb29:
  br label %bb30
bb30:
  %t167 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t167, ptr %l92, !tbaa !27
  %t168 = load i64, ptr %l15, !tbaa !24
  %t169 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t169, ptr %l94, !tbaa !27
  %t170 = load i64, ptr %l13, !tbaa !24
  %t172 = getelementptr { i64, ptr }, ptr %l94, i32 0, i32 1
  %t173 = load ptr, ptr %t172, !tbaa !27
  %t174 = getelementptr i64, ptr %t173, i64 %t170
  %t175 = load i64, ptr %t174, !tbaa !34
  %t178 = getelementptr { i64, ptr }, ptr %l92, i32 0, i32 1
  %t179 = load ptr, ptr %t178, !tbaa !27
  %t180 = getelementptr i64, ptr %t179, i64 %t168
  store i64 %t175, ptr %t180, !tbaa !34
  %t181 = load i64, ptr %l13, !tbaa !24
  %t183 = add i64 %t181, 1
  store i64 %t183, ptr %l13, !tbaa !24
  %t185 = load i64, ptr %l15, !tbaa !24
  %t187 = add i64 %t185, 1
  store i64 %t187, ptr %l15, !tbaa !24
  br label %bb31
bb31:
  br label %bb27
bb32:
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2farray_2esortMergeRuns_3cI64_2c_20_3f_3e(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1, i64 %a2, i64 %a3, i64 %a4, ptr %a5c, ptr %a5e) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca { ptr, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l32 = alloca i1
  %l34 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
  %l41 = alloca i1
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
  store i64 %a4, ptr %l4
  %pf5 = insertvalue { ptr, ptr } undef, ptr %a5c, 0
  %pg5 = insertvalue { ptr, ptr } %pf5, ptr %a5e, 1
  store { ptr, ptr } %pg5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  br label %bb1
bb1:
  %t1 = load i64, ptr %l4, !tbaa !24
  %t2 = load i64, ptr %l3, !tbaa !24
  %t3 = load i64, ptr %l2, !tbaa !24
  %t6 = sub i64 %t2, %t3
  %t9 = icmp slt i64 %t1, %t6
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb2, label %bb3
bb2:
  br label %bb27
bb3:
  br label %bb4
bb4:
  %t13 = load i64, ptr %l2, !tbaa !24
  store i64 %t13, ptr %l6, !tbaa !24
  br label %bb5
bb5:
  %t15 = load i64, ptr %l6, !tbaa !24
  %t16 = load i64, ptr %l4, !tbaa !24
  %t19 = add i64 %t15, %t16
  %t20 = load i64, ptr %l3, !tbaa !24
  %t23 = icmp slt i64 %t19, %t20
  %t25 = xor i1 %t23, true
  br i1 %t25, label %bb6, label %bb7
bb6:
  br label %bb25
bb7:
  br label %bb8
bb8:
  %t27 = load i64, ptr %l6, !tbaa !24
  %t28 = load i64, ptr %l4, !tbaa !24
  %t31 = add i64 %t27, %t28
  store i64 %t31, ptr %l7, !tbaa !24
  %t33 = load i64, ptr %l7, !tbaa !24
  %t34 = load i64, ptr %l4, !tbaa !24
  %t37 = add i64 %t33, %t34
  store i64 %t37, ptr %l8, !tbaa !24
  %t39 = load i64, ptr %l8, !tbaa !24
  %t40 = load i64, ptr %l3, !tbaa !24
  %t43 = icmp sgt i64 %t39, %t40
  br i1 %t43, label %bb9, label %bb10
bb9:
  %t45 = load i64, ptr %l3, !tbaa !24
  store i64 %t45, ptr %l8, !tbaa !24
  br label %bb11
bb10:
  br label %bb11
bb11:
  %t47 = load { ptr, ptr }, ptr %l5
  %t48 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t48, ptr %l34, !tbaa !27
  %t49 = load i64, ptr %l7, !tbaa !24
  %t51 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !27
  %t53 = getelementptr i64, ptr %t52, i64 %t49
  %t54 = load i64, ptr %t53, !tbaa !34
  %t55 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t55, ptr %l37, !tbaa !27
  %t56 = load i64, ptr %l7, !tbaa !24
  %t58 = sub i64 %t56, 1
  %t60 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !27
  %t62 = getelementptr i64, ptr %t61, i64 %t58
  %t63 = load i64, ptr %t62, !tbaa !34
  %t65 = extractvalue { ptr, ptr } %t47, 0
  %t66 = extractvalue { ptr, ptr } %t47, 1
  %t69 = call i1 %t65(ptr %t66, i64 %t54, i64 %t63)
  store i1 %t69, ptr %l41
  br label %bb12
bb12:
  %t70 = load i1, ptr %l41, !tbaa !21
  store i1 %t70, ptr %l32, !tbaa !21
  br label %bb13
bb13:
  %t71 = load i1, ptr %l32, !tbaa !21
  br i1 %t71, label %bb14, label %bb15
bb14:
  %t72 = load i64, ptr %l7, !tbaa !24
  %t73 = load i64, ptr %l6, !tbaa !24
  %t76 = sub i64 %t72, %t73
  %t77 = load i64, ptr %l8, !tbaa !24
  %t78 = load i64, ptr %l7, !tbaa !24
  %t81 = sub i64 %t77, %t78
  %t84 = icmp sle i64 %t76, %t81
  br i1 %t84, label %bb16, label %bb17
bb15:
  br label %bb23
bb16:
  %t86 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t87 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t88 = load i64, ptr %l6, !tbaa !24
  %t89 = load i64, ptr %l7, !tbaa !24
  %t90 = load i64, ptr %l8, !tbaa !24
  %t91 = load { ptr, ptr }, ptr %l5
  %t98 = extractvalue { ptr, ptr } %t91, 0
  %t99 = extractvalue { ptr, ptr } %t91, 1
  call void @std_2fprelude_2farray_2esortMergeForward_3cI64_2c_20_3f_3e(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %t86, { i64, ptr } %t87, i64 %t88, i64 %t89, i64 %t90, ptr %t98, ptr %t99)
  br label %bb18
bb17:
  %t100 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t101 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t102 = load i64, ptr %l6, !tbaa !24
  %t103 = load i64, ptr %l7, !tbaa !24
  %t104 = load i64, ptr %l8, !tbaa !24
  %t105 = load { ptr, ptr }, ptr %l5
  %t112 = extractvalue { ptr, ptr } %t105, 0
  %t113 = extractvalue { ptr, ptr } %t105, 1
  call void @std_2fprelude_2farray_2esortMergeBackward_3cI64_2c_20_3f_3e(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %t100, { i64, ptr } %t101, i64 %t102, i64 %t103, i64 %t104, ptr %t112, ptr %t113)
  br label %bb20
bb18:
  br label %bb19
bb19:
  br label %bb22
bb20:
  br label %bb21
bb21:
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t114 = load i64, ptr %l8, !tbaa !24
  store i64 %t114, ptr %l6, !tbaa !24
  br label %bb24
bb24:
  br label %bb5
bb25:
  %t116 = load i64, ptr %l4, !tbaa !24
  %t118 = mul i64 %t116, 2
  store i64 %t118, ptr %l4, !tbaa !24
  br label %bb26
bb26:
  br label %bb1
bb27:
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2farray_2esortMerge_3cstd_2fprelude_2ftext_3aString_26_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i64 %a2, i64 %a3, ptr %a4c, ptr %a4e) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca { ptr, ptr }
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
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l39 = alloca i1
  %l41 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l47 = alloca i1
  %l57 = alloca i64
  %l60 = alloca i64
  %l98 = alloca i1
  %l100 = alloca { i64, ptr }
  %l103 = alloca { i64, ptr }
  %l106 = alloca i1
  %l148 = alloca i1
  %l150 = alloca { i64, ptr }
  %l155 = alloca { i64, ptr }
  %l158 = alloca i1
  %l169 = alloca i1
  %l180 = alloca i1
  %l192 = alloca i1
  store { i64, ptr } %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
  %pf4 = insertvalue { ptr, ptr } undef, ptr %a4c, 0
  %pg4 = insertvalue { ptr, ptr } %pf4, ptr %a4e, 1
  store { ptr, ptr } %pg4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = sub i64 %t1, %t2
  %t7 = icmp eq i64 %t5, 1
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load i64, ptr %l2, !tbaa !24
  store i64 %t9, ptr %l5, !tbaa !24
  %t11 = load i64, ptr %l3, !tbaa !24
  store i64 %t11, ptr %l6, !tbaa !24
  br label %bb3
bb2:
  br label %bb27
bb3:
  %t13 = load i64, ptr %l5, !tbaa !24
  %t14 = load i64, ptr %l6, !tbaa !24
  %t17 = icmp slt i64 %t13, %t14
  %t19 = xor i1 %t17, true
  br i1 %t19, label %bb4, label %bb5
bb4:
  br label %bb13
bb5:
  br label %bb6
bb6:
  %t21 = load i64, ptr %l5, !tbaa !24
  %t22 = load i64, ptr %l6, !tbaa !24
  %t25 = add i64 %t21, %t22
  %t27 = sdiv i64 %t25, 2
  store i64 %t27, ptr %l7, !tbaa !24
  %t29 = load { ptr, ptr }, ptr %l4
  %t30 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t30, ptr %l41, !tbaa !27
  %t31 = load i64, ptr %l7, !tbaa !24
  %t33 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !27
  %t35 = getelementptr { i64, ptr }, ptr %t34, i64 %t31
  %t36 = load { i64, ptr }, ptr %t35, !tbaa !37
  %t37 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t37, ptr %l44, !tbaa !27
  %t38 = load i64, ptr %l1, !tbaa !24
  %t40 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !27
  %t42 = getelementptr { i64, ptr }, ptr %t41, i64 %t38
  %t43 = load { i64, ptr }, ptr %t42, !tbaa !37
  %t45 = extractvalue { ptr, ptr } %t29, 0
  %t46 = extractvalue { ptr, ptr } %t29, 1
  %t49 = call i1 %t45(ptr %t46, ptr %v0, ptr %v0, { i64, ptr } %t36, { i64, ptr } %t43)
  store i1 %t49, ptr %l47
  br label %bb7
bb7:
  %t50 = load i1, ptr %l47, !tbaa !21
  store i1 %t50, ptr %l39, !tbaa !21
  br label %bb8
bb8:
  %t51 = load i1, ptr %l39, !tbaa !21
  br i1 %t51, label %bb9, label %bb10
bb9:
  %t52 = load i64, ptr %l7, !tbaa !24
  %t54 = add i64 %t52, 1
  store i64 %t54, ptr %l5, !tbaa !24
  br label %bb11
bb10:
  %t56 = load i64, ptr %l7, !tbaa !24
  store i64 %t56, ptr %l6, !tbaa !24
  br label %bb11
bb11:
  br label %bb12
bb12:
  br label %bb3
bb13:
  %t58 = load i64, ptr %l1, !tbaa !24
  store i64 %t58, ptr %l8, !tbaa !24
  %t60 = load i64, ptr %l5, !tbaa !24
  %t62 = sub i64 %t60, 1
  store i64 %t62, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t64 = load i64, ptr %l9, !tbaa !24
  %t65 = load i64, ptr %l8, !tbaa !24
  %t68 = icmp sgt i64 %t64, %t65
  br i1 %t68, label %bb14, label %bb15
bb14:
  %t70 = load i64, ptr %l10, !tbaa !24
  %t72 = icmp sgt i64 %t70, 0
  br i1 %t72, label %bb16, label %bb17
bb15:
  store i64 0, ptr %l57, !tbaa !24
  br label %bb19
bb16:
  %t74 = load i64, ptr %l9, !tbaa !24
  %t75 = load i64, ptr %l8, !tbaa !24
  %t78 = sub i64 %t74, %t75
  %t79 = load i64, ptr %l10, !tbaa !24
  %t82 = add i64 %t78, %t79
  %t84 = sub i64 %t82, 1
  %t85 = load i64, ptr %l10, !tbaa !24
  %t88 = sdiv i64 %t84, %t85
  store i64 %t88, ptr %l60, !tbaa !24
  br label %bb18
bb17:
  store i64 0, ptr %l60, !tbaa !24
  br label %bb18
bb18:
  %t90 = load i64, ptr %l60, !tbaa !24
  store i64 %t90, ptr %l57, !tbaa !24
  br label %bb19
bb19:
  %t91 = load i64, ptr %l57, !tbaa !24
  store i64 %t91, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb20
bb20:
  %t92 = load i64, ptr %l12, !tbaa !24
  %t93 = load i64, ptr %l11, !tbaa !24
  %t96 = icmp slt i64 %t92, %t93
  %t98 = xor i1 %t96, true
  br i1 %t98, label %bb21, label %bb22
bb21:
  br label %bb26
bb22:
  br label %bb23
bb23:
  %t100 = load i64, ptr %l8, !tbaa !24
  %t101 = load i64, ptr %l12, !tbaa !24
  %t102 = load i64, ptr %l10, !tbaa !24
  %t105 = mul i64 %t101, %t102
  %t108 = add i64 %t100, %t105
  store i64 %t108, ptr %l13, !tbaa !24
  %t110 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t111 = load i64, ptr %l13, !tbaa !24
  %t112 = load i64, ptr %l13, !tbaa !24
  %t114 = add i64 %t112, 1
  call void @std_2fprelude_2farray_2esortSwap_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, { i64, ptr } %t110, i64 %t111, i64 %t114)
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t118 = load i64, ptr %l12, !tbaa !24
  %t120 = add i64 %t118, 1
  store i64 %t120, ptr %l12, !tbaa !24
  br label %bb20
bb26:
  br label %ret
bb27:
  %t122 = load i64, ptr %l3, !tbaa !24
  %t123 = load i64, ptr %l2, !tbaa !24
  %t126 = sub i64 %t122, %t123
  %t128 = icmp eq i64 %t126, 1
  br i1 %t128, label %bb28, label %bb29
bb28:
  %t130 = load i64, ptr %l1, !tbaa !24
  store i64 %t130, ptr %l14, !tbaa !24
  %t132 = load i64, ptr %l2, !tbaa !24
  store i64 %t132, ptr %l15, !tbaa !24
  br label %bb30
bb29:
  br label %bb48
bb30:
  %t134 = load i64, ptr %l14, !tbaa !24
  %t135 = load i64, ptr %l15, !tbaa !24
  %t138 = icmp slt i64 %t134, %t135
  %t140 = xor i1 %t138, true
  br i1 %t140, label %bb31, label %bb32
bb31:
  br label %bb40
bb32:
  br label %bb33
bb33:
  %t142 = load i64, ptr %l14, !tbaa !24
  %t143 = load i64, ptr %l15, !tbaa !24
  %t146 = add i64 %t142, %t143
  %t148 = sdiv i64 %t146, 2
  store i64 %t148, ptr %l16, !tbaa !24
  %t150 = load { ptr, ptr }, ptr %l4
  %t151 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t151, ptr %l100, !tbaa !27
  %t152 = load i64, ptr %l2, !tbaa !24
  %t154 = getelementptr { i64, ptr }, ptr %l100, i32 0, i32 1
  %t155 = load ptr, ptr %t154, !tbaa !27
  %t156 = getelementptr { i64, ptr }, ptr %t155, i64 %t152
  %t157 = load { i64, ptr }, ptr %t156, !tbaa !37
  %t158 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t158, ptr %l103, !tbaa !27
  %t159 = load i64, ptr %l16, !tbaa !24
  %t161 = getelementptr { i64, ptr }, ptr %l103, i32 0, i32 1
  %t162 = load ptr, ptr %t161, !tbaa !27
  %t163 = getelementptr { i64, ptr }, ptr %t162, i64 %t159
  %t164 = load { i64, ptr }, ptr %t163, !tbaa !37
  %t166 = extractvalue { ptr, ptr } %t150, 0
  %t167 = extractvalue { ptr, ptr } %t150, 1
  %t170 = call i1 %t166(ptr %t167, ptr %v0, ptr %v0, { i64, ptr } %t157, { i64, ptr } %t164)
  store i1 %t170, ptr %l106
  br label %bb34
bb34:
  %t171 = load i1, ptr %l106, !tbaa !21
  store i1 %t171, ptr %l98, !tbaa !21
  br label %bb35
bb35:
  %t172 = load i1, ptr %l98, !tbaa !21
  %t173 = xor i1 %t172, true
  br i1 %t173, label %bb36, label %bb37
bb36:
  %t175 = load i64, ptr %l16, !tbaa !24
  %t177 = add i64 %t175, 1
  store i64 %t177, ptr %l14, !tbaa !24
  br label %bb38
bb37:
  %t179 = load i64, ptr %l16, !tbaa !24
  store i64 %t179, ptr %l15, !tbaa !24
  br label %bb38
bb38:
  br label %bb39
bb39:
  br label %bb30
bb40:
  %t181 = load i64, ptr %l2, !tbaa !24
  store i64 %t181, ptr %l17, !tbaa !24
  br label %bb41
bb41:
  %t183 = load i64, ptr %l17, !tbaa !24
  %t184 = load i64, ptr %l14, !tbaa !24
  %t187 = icmp sgt i64 %t183, %t184
  %t189 = xor i1 %t187, true
  br i1 %t189, label %bb42, label %bb43
bb42:
  br label %bb47
bb43:
  br label %bb44
bb44:
  %t191 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t192 = load i64, ptr %l17, !tbaa !24
  %t193 = load i64, ptr %l17, !tbaa !24
  %t195 = sub i64 %t193, 1
  call void @std_2fprelude_2farray_2esortSwap_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, { i64, ptr } %t191, i64 %t192, i64 %t195)
  br label %bb45
bb45:
  %t199 = load i64, ptr %l17, !tbaa !24
  %t201 = sub i64 %t199, 1
  store i64 %t201, ptr %l17, !tbaa !24
  br label %bb46
bb46:
  br label %bb41
bb47:
  br label %ret
bb48:
  %t203 = load i64, ptr %l1, !tbaa !24
  %t204 = load i64, ptr %l3, !tbaa !24
  %t207 = add i64 %t203, %t204
  %t209 = sdiv i64 %t207, 2
  store i64 %t209, ptr %l18, !tbaa !24
  %t211 = load i64, ptr %l18, !tbaa !24
  %t212 = load i64, ptr %l2, !tbaa !24
  %t215 = add i64 %t211, %t212
  store i64 %t215, ptr %l19, !tbaa !24
  %t217 = load i64, ptr %l1, !tbaa !24
  store i64 %t217, ptr %l20, !tbaa !24
  %t219 = load i64, ptr %l2, !tbaa !24
  store i64 %t219, ptr %l21, !tbaa !24
  %t221 = load i64, ptr %l2, !tbaa !24
  %t222 = load i64, ptr %l18, !tbaa !24
  %t225 = icmp sgt i64 %t221, %t222
  br i1 %t225, label %bb49, label %bb50
bb49:
  %t227 = load i64, ptr %l19, !tbaa !24
  %t228 = load i64, ptr %l3, !tbaa !24
  %t231 = sub i64 %t227, %t228
  store i64 %t231, ptr %l20, !tbaa !24
  %t233 = load i64, ptr %l18, !tbaa !24
  store i64 %t233, ptr %l21, !tbaa !24
  br label %bb51
bb50:
  br label %bb51
bb51:
  %t235 = load i64, ptr %l19, !tbaa !24
  %t237 = sub i64 %t235, 1
  store i64 %t237, ptr %l22, !tbaa !24
  br label %bb52
bb52:
  %t239 = load i64, ptr %l20, !tbaa !24
  %t240 = load i64, ptr %l21, !tbaa !24
  %t243 = icmp slt i64 %t239, %t240
  %t245 = xor i1 %t243, true
  br i1 %t245, label %bb53, label %bb54
bb53:
  br label %bb62
bb54:
  br label %bb55
bb55:
  %t247 = load i64, ptr %l20, !tbaa !24
  %t248 = load i64, ptr %l21, !tbaa !24
  %t251 = add i64 %t247, %t248
  %t253 = sdiv i64 %t251, 2
  store i64 %t253, ptr %l23, !tbaa !24
  %t255 = load { ptr, ptr }, ptr %l4
  %t256 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t256, ptr %l150, !tbaa !27
  %t257 = load i64, ptr %l22, !tbaa !24
  %t258 = load i64, ptr %l23, !tbaa !24
  %t261 = sub i64 %t257, %t258
  %t263 = getelementptr { i64, ptr }, ptr %l150, i32 0, i32 1
  %t264 = load ptr, ptr %t263, !tbaa !27
  %t265 = getelementptr { i64, ptr }, ptr %t264, i64 %t261
  %t266 = load { i64, ptr }, ptr %t265, !tbaa !37
  %t267 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t267, ptr %l155, !tbaa !27
  %t268 = load i64, ptr %l23, !tbaa !24
  %t270 = getelementptr { i64, ptr }, ptr %l155, i32 0, i32 1
  %t271 = load ptr, ptr %t270, !tbaa !27
  %t272 = getelementptr { i64, ptr }, ptr %t271, i64 %t268
  %t273 = load { i64, ptr }, ptr %t272, !tbaa !37
  %t275 = extractvalue { ptr, ptr } %t255, 0
  %t276 = extractvalue { ptr, ptr } %t255, 1
  %t279 = call i1 %t275(ptr %t276, ptr %v0, ptr %v0, { i64, ptr } %t266, { i64, ptr } %t273)
  store i1 %t279, ptr %l158
  br label %bb56
bb56:
  %t280 = load i1, ptr %l158, !tbaa !21
  store i1 %t280, ptr %l148, !tbaa !21
  br label %bb57
bb57:
  %t281 = load i1, ptr %l148, !tbaa !21
  %t282 = xor i1 %t281, true
  br i1 %t282, label %bb58, label %bb59
bb58:
  %t284 = load i64, ptr %l23, !tbaa !24
  %t286 = add i64 %t284, 1
  store i64 %t286, ptr %l20, !tbaa !24
  br label %bb60
bb59:
  %t288 = load i64, ptr %l23, !tbaa !24
  store i64 %t288, ptr %l21, !tbaa !24
  br label %bb60
bb60:
  br label %bb61
bb61:
  br label %bb52
bb62:
  %t290 = load i64, ptr %l19, !tbaa !24
  %t291 = load i64, ptr %l20, !tbaa !24
  %t294 = sub i64 %t290, %t291
  store i64 %t294, ptr %l24, !tbaa !24
  %t296 = load i64, ptr %l20, !tbaa !24
  %t297 = load i64, ptr %l2, !tbaa !24
  %t300 = icmp slt i64 %t296, %t297
  br i1 %t300, label %bb63, label %bb64
bb63:
  %t302 = load i64, ptr %l2, !tbaa !24
  %t303 = load i64, ptr %l24, !tbaa !24
  %t306 = icmp slt i64 %t302, %t303
  store i1 %t306, ptr %l169, !tbaa !21
  br label %bb65
bb64:
  store i1 false, ptr %l169, !tbaa !21
  br label %bb65
bb65:
  %t308 = load i1, ptr %l169, !tbaa !21
  br i1 %t308, label %bb66, label %bb67
bb66:
  %t309 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t310 = load i64, ptr %l20, !tbaa !24
  %t311 = load i64, ptr %l2, !tbaa !24
  %t312 = load i64, ptr %l24, !tbaa !24
  call void @std_2fprelude_2farray_2esortRotate_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, { i64, ptr } %t309, i64 %t310, i64 %t311, i64 %t312)
  br label %bb68
bb67:
  br label %bb69
bb68:
  br label %bb69
bb69:
  %t317 = load i64, ptr %l1, !tbaa !24
  %t318 = load i64, ptr %l20, !tbaa !24
  %t321 = icmp slt i64 %t317, %t318
  br i1 %t321, label %bb70, label %bb71
bb70:
  %t323 = load i64, ptr %l20, !tbaa !24
  %t324 = load i64, ptr %l18, !tbaa !24
  %t327 = icmp slt i64 %t323, %t324
  store i1 %t327, ptr %l180, !tbaa !21
  br label %bb72
bb71:
  store i1 false, ptr %l180, !tbaa !21
  br label %bb72
bb72:
  %t329 = load i1, ptr %l180, !tbaa !21
  br i1 %t329, label %bb73, label %bb74
bb73:
  %t330 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t331 = load i64, ptr %l1, !tbaa !24
  %t332 = load i64, ptr %l20, !tbaa !24
  %t333 = load i64, ptr %l18, !tbaa !24
  %t334 = load { ptr, ptr }, ptr %l4
  %t340 = extractvalue { ptr, ptr } %t334, 0
  %t341 = extractvalue { ptr, ptr } %t334, 1
  call void @std_2fprelude_2farray_2esortMerge_3cstd_2fprelude_2ftext_3aString_26_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %t330, i64 %t331, i64 %t332, i64 %t333, ptr %t340, ptr %t341)
  br label %bb75
bb74:
  br label %bb77
bb75:
  br label %bb76
bb76:
  br label %bb77
bb77:
  %t342 = load i64, ptr %l18, !tbaa !24
  %t343 = load i64, ptr %l24, !tbaa !24
  %t346 = icmp slt i64 %t342, %t343
  br i1 %t346, label %bb78, label %bb79
bb78:
  %t348 = load i64, ptr %l24, !tbaa !24
  %t349 = load i64, ptr %l3, !tbaa !24
  %t352 = icmp slt i64 %t348, %t349
  store i1 %t352, ptr %l192, !tbaa !21
  br label %bb80
bb79:
  store i1 false, ptr %l192, !tbaa !21
  br label %bb80
bb80:
  %t354 = load i1, ptr %l192, !tbaa !21
  br i1 %t354, label %bb81, label %bb82
bb81:
  %t355 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t356 = load i64, ptr %l18, !tbaa !24
  %t357 = load i64, ptr %l24, !tbaa !24
  %t358 = load i64, ptr %l3, !tbaa !24
  %t359 = load { ptr, ptr }, ptr %l4
  %t365 = extractvalue { ptr, ptr } %t359, 0
  %t366 = extractvalue { ptr, ptr } %t359, 1
  call void @std_2fprelude_2farray_2esortMerge_3cstd_2fprelude_2ftext_3aString_26_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %t355, i64 %t356, i64 %t357, i64 %t358, ptr %t365, ptr %t366)
  br label %bb83
bb82:
  br label %bb85
bb83:
  br label %bb84
bb84:
  br label %bb85
bb85:
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2farray_2esortPermute_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l17 = alloca i64
  %l20 = alloca i64
  %l38 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l51 = alloca { i64, ptr }
  %l54 = alloca { i64, ptr }
  %l64 = alloca { i64, ptr }
  %l69 = alloca { i64, ptr }
  %l73 = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l3, !tbaa !24
  %t1 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t5 = load i64, ptr %l4, !tbaa !24
  %t6 = load i64, ptr %l3, !tbaa !24
  %t9 = icmp sgt i64 %t5, %t6
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = load i64, ptr %l5, !tbaa !24
  %t13 = icmp sgt i64 %t11, 0
  br i1 %t13, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb6
bb3:
  %t15 = load i64, ptr %l4, !tbaa !24
  %t16 = load i64, ptr %l3, !tbaa !24
  %t19 = sub i64 %t15, %t16
  %t20 = load i64, ptr %l5, !tbaa !24
  %t23 = add i64 %t19, %t20
  %t25 = sub i64 %t23, 1
  %t26 = load i64, ptr %l5, !tbaa !24
  %t29 = sdiv i64 %t25, %t26
  store i64 %t29, ptr %l20, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb5
bb5:
  %t31 = load i64, ptr %l20, !tbaa !24
  store i64 %t31, ptr %l17, !tbaa !24
  br label %bb6
bb6:
  %t32 = load i64, ptr %l17, !tbaa !24
  store i64 %t32, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb7
bb7:
  %t33 = load i64, ptr %l7, !tbaa !24
  %t34 = load i64, ptr %l6, !tbaa !24
  %t37 = icmp slt i64 %t33, %t34
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb8, label %bb9
bb8:
  br label %bb21
bb9:
  br label %bb10
bb10:
  %t41 = load i64, ptr %l3, !tbaa !24
  %t42 = load i64, ptr %l7, !tbaa !24
  %t43 = load i64, ptr %l5, !tbaa !24
  %t46 = mul i64 %t42, %t43
  %t49 = add i64 %t41, %t46
  store i64 %t49, ptr %l8, !tbaa !24
  %t51 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t51, ptr %l38, !tbaa !27
  %t52 = load i64, ptr %l8, !tbaa !24
  %t54 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr i64, ptr %t55, i64 %t52
  %t57 = load i64, ptr %t56, !tbaa !34
  %t58 = load i64, ptr %l1, !tbaa !24
  %t59 = load i64, ptr %l8, !tbaa !24
  %t62 = add i64 %t58, %t59
  %t65 = icmp eq i64 %t57, %t62
  br i1 %t65, label %bb11, label %bb12
bb11:
  br label %bb20
bb12:
  br label %bb13
bb13:
  %t67 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t67, ptr %l45, !tbaa !27
  %t68 = load i64, ptr %l1, !tbaa !24
  %t69 = load i64, ptr %l8, !tbaa !24
  %t72 = add i64 %t68, %t69
  %t74 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !27
  %t76 = getelementptr { i64, ptr }, ptr %t75, i64 %t72
  %t77 = load { i64, ptr }, ptr %t76, !tbaa !37
  store { i64, ptr } %t77, ptr %l9, !tbaa !27
  %t79 = load i64, ptr %l8, !tbaa !24
  store i64 %t79, ptr %l10, !tbaa !24
  br label %bb14
bb14:
  %t81 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t81, ptr %l51, !tbaa !27
  %t82 = load i64, ptr %l10, !tbaa !24
  %t84 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !27
  %t86 = getelementptr i64, ptr %t85, i64 %t82
  %t87 = load i64, ptr %t86, !tbaa !34
  store i64 %t87, ptr %l11, !tbaa !24
  %t89 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t89, ptr %l54, !tbaa !27
  %t90 = load i64, ptr %l10, !tbaa !24
  %t91 = load i64, ptr %l1, !tbaa !24
  %t92 = load i64, ptr %l10, !tbaa !24
  %t95 = add i64 %t91, %t92
  %t98 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !27
  %t100 = getelementptr i64, ptr %t99, i64 %t90
  store i64 %t95, ptr %t100, !tbaa !34
  %t101 = load i64, ptr %l11, !tbaa !24
  %t102 = load i64, ptr %l1, !tbaa !24
  %t103 = load i64, ptr %l8, !tbaa !24
  %t106 = add i64 %t102, %t103
  %t109 = icmp eq i64 %t101, %t106
  br i1 %t109, label %bb15, label %bb16
bb15:
  %t111 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t111, ptr %l64, !tbaa !27
  %t112 = load i64, ptr %l1, !tbaa !24
  %t113 = load i64, ptr %l10, !tbaa !24
  %t116 = add i64 %t112, %t113
  %t117 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t120 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t121 = load ptr, ptr %t120, !tbaa !27
  %t122 = getelementptr { i64, ptr }, ptr %t121, i64 %t116
  store { i64, ptr } %t117, ptr %t122, !tbaa !37
  br label %bb19
bb16:
  br label %bb17
bb17:
  %t123 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t123, ptr %l69, !tbaa !27
  %t124 = load i64, ptr %l1, !tbaa !24
  %t125 = load i64, ptr %l10, !tbaa !24
  %t128 = add i64 %t124, %t125
  %t129 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t129, ptr %l73, !tbaa !27
  %t130 = load i64, ptr %l11, !tbaa !24
  %t132 = getelementptr { i64, ptr }, ptr %l73, i32 0, i32 1
  %t133 = load ptr, ptr %t132, !tbaa !27
  %t134 = getelementptr { i64, ptr }, ptr %t133, i64 %t130
  %t135 = load { i64, ptr }, ptr %t134, !tbaa !37
  %t138 = getelementptr { i64, ptr }, ptr %l69, i32 0, i32 1
  %t139 = load ptr, ptr %t138, !tbaa !27
  %t140 = getelementptr { i64, ptr }, ptr %t139, i64 %t128
  store { i64, ptr } %t135, ptr %t140, !tbaa !37
  %t141 = load i64, ptr %l11, !tbaa !24
  %t142 = load i64, ptr %l1, !tbaa !24
  %t145 = sub i64 %t141, %t142
  store i64 %t145, ptr %l10, !tbaa !24
  br label %bb18
bb18:
  br label %bb14
bb19:
  br label %bb20
bb20:
  %t147 = load i64, ptr %l7, !tbaa !24
  %t149 = add i64 %t147, 1
  store i64 %t149, ptr %l7, !tbaa !24
  br label %bb7
bb21:
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2farray_2esortRotate_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, { i64, ptr } %a0, i64 %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca i64
  %l4 = alloca i64
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
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l41 = alloca i64
  %l44 = alloca i64
  %l80 = alloca i64
  %l83 = alloca i64
  %l123 = alloca i64
  %l126 = alloca i64
  store { i64, ptr } %a0, ptr %l0
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t5 = sub i64 %t1, %a1
  store i64 %t5, ptr %l4, !tbaa !24
  %t8 = load i64, ptr %l2, !tbaa !24
  %t11 = sub i64 %a3, %t8
  store i64 %t11, ptr %l5, !tbaa !24
  br label %bb1
bb1:
  %t13 = load i64, ptr %l4, !tbaa !24
  %t14 = load i64, ptr %l5, !tbaa !24
  %t17 = icmp ne i64 %t13, %t14
  %t19 = xor i1 %t17, true
  br i1 %t19, label %bb2, label %bb3
bb2:
  br label %bb35
bb3:
  br label %bb4
bb4:
  %t21 = load i64, ptr %l4, !tbaa !24
  %t22 = load i64, ptr %l5, !tbaa !24
  %t25 = icmp sgt i64 %t21, %t22
  br i1 %t25, label %bb5, label %bb6
bb5:
  store i64 0, ptr %l6, !tbaa !24
  %t27 = load i64, ptr %l5, !tbaa !24
  store i64 %t27, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t29 = load i64, ptr %l7, !tbaa !24
  %t30 = load i64, ptr %l6, !tbaa !24
  %t33 = icmp sgt i64 %t29, %t30
  br i1 %t33, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l12, !tbaa !24
  %t35 = load i64, ptr %l4, !tbaa !24
  store i64 %t35, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t37 = load i64, ptr %l13, !tbaa !24
  %t38 = load i64, ptr %l12, !tbaa !24
  %t41 = icmp sgt i64 %t37, %t38
  br i1 %t41, label %bb20, label %bb21
bb7:
  %t43 = load i64, ptr %l8, !tbaa !24
  %t45 = icmp sgt i64 %t43, 0
  br i1 %t45, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l41, !tbaa !24
  br label %bb12
bb9:
  %t47 = load i64, ptr %l7, !tbaa !24
  %t48 = load i64, ptr %l6, !tbaa !24
  %t51 = sub i64 %t47, %t48
  %t52 = load i64, ptr %l8, !tbaa !24
  %t55 = add i64 %t51, %t52
  %t57 = sub i64 %t55, 1
  %t58 = load i64, ptr %l8, !tbaa !24
  %t61 = sdiv i64 %t57, %t58
  store i64 %t61, ptr %l44, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l44, !tbaa !24
  br label %bb11
bb11:
  %t63 = load i64, ptr %l44, !tbaa !24
  store i64 %t63, ptr %l41, !tbaa !24
  br label %bb12
bb12:
  %t64 = load i64, ptr %l41, !tbaa !24
  store i64 %t64, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb13
bb13:
  %t65 = load i64, ptr %l10, !tbaa !24
  %t66 = load i64, ptr %l9, !tbaa !24
  %t69 = icmp slt i64 %t65, %t66
  %t71 = xor i1 %t69, true
  br i1 %t71, label %bb14, label %bb15
bb14:
  br label %bb19
bb15:
  br label %bb16
bb16:
  %t73 = load i64, ptr %l6, !tbaa !24
  %t74 = load i64, ptr %l10, !tbaa !24
  %t75 = load i64, ptr %l8, !tbaa !24
  %t78 = mul i64 %t74, %t75
  %t81 = add i64 %t73, %t78
  store i64 %t81, ptr %l11, !tbaa !24
  %t83 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t84 = load i64, ptr %l2, !tbaa !24
  %t85 = load i64, ptr %l4, !tbaa !24
  %t88 = sub i64 %t84, %t85
  %t89 = load i64, ptr %l11, !tbaa !24
  %t92 = add i64 %t88, %t89
  %t93 = load i64, ptr %l2, !tbaa !24
  %t94 = load i64, ptr %l11, !tbaa !24
  %t97 = add i64 %t93, %t94
  call void @std_2fprelude_2farray_2esortSwap_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, { i64, ptr } %t83, i64 %t92, i64 %t97)
  br label %bb17
bb17:
  br label %bb18
bb18:
  %t101 = load i64, ptr %l10, !tbaa !24
  %t103 = add i64 %t101, 1
  store i64 %t103, ptr %l10, !tbaa !24
  br label %bb13
bb19:
  %t105 = load i64, ptr %l4, !tbaa !24
  %t106 = load i64, ptr %l5, !tbaa !24
  %t109 = sub i64 %t105, %t106
  store i64 %t109, ptr %l4, !tbaa !24
  br label %bb33
bb20:
  %t111 = load i64, ptr %l14, !tbaa !24
  %t113 = icmp sgt i64 %t111, 0
  br i1 %t113, label %bb22, label %bb23
bb21:
  store i64 0, ptr %l80, !tbaa !24
  br label %bb25
bb22:
  %t115 = load i64, ptr %l13, !tbaa !24
  %t116 = load i64, ptr %l12, !tbaa !24
  %t119 = sub i64 %t115, %t116
  %t120 = load i64, ptr %l14, !tbaa !24
  %t123 = add i64 %t119, %t120
  %t125 = sub i64 %t123, 1
  %t126 = load i64, ptr %l14, !tbaa !24
  %t129 = sdiv i64 %t125, %t126
  store i64 %t129, ptr %l83, !tbaa !24
  br label %bb24
bb23:
  store i64 0, ptr %l83, !tbaa !24
  br label %bb24
bb24:
  %t131 = load i64, ptr %l83, !tbaa !24
  store i64 %t131, ptr %l80, !tbaa !24
  br label %bb25
bb25:
  %t132 = load i64, ptr %l80, !tbaa !24
  store i64 %t132, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb26
bb26:
  %t133 = load i64, ptr %l16, !tbaa !24
  %t134 = load i64, ptr %l15, !tbaa !24
  %t137 = icmp slt i64 %t133, %t134
  %t139 = xor i1 %t137, true
  br i1 %t139, label %bb27, label %bb28
bb27:
  br label %bb32
bb28:
  br label %bb29
bb29:
  %t141 = load i64, ptr %l12, !tbaa !24
  %t142 = load i64, ptr %l16, !tbaa !24
  %t143 = load i64, ptr %l14, !tbaa !24
  %t146 = mul i64 %t142, %t143
  %t149 = add i64 %t141, %t146
  store i64 %t149, ptr %l17, !tbaa !24
  %t151 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t152 = load i64, ptr %l2, !tbaa !24
  %t153 = load i64, ptr %l4, !tbaa !24
  %t156 = sub i64 %t152, %t153
  %t157 = load i64, ptr %l17, !tbaa !24
  %t160 = add i64 %t156, %t157
  %t161 = load i64, ptr %l2, !tbaa !24
  %t162 = load i64, ptr %l5, !tbaa !24
  %t165 = add i64 %t161, %t162
  %t166 = load i64, ptr %l4, !tbaa !24
  %t169 = sub i64 %t165, %t166
  %t170 = load i64, ptr %l17, !tbaa !24
  %t173 = add i64 %t169, %t170
  call void @std_2fprelude_2farray_2esortSwap_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, { i64, ptr } %t151, i64 %t160, i64 %t173)
  br label %bb30
bb30:
  br label %bb31
bb31:
  %t177 = load i64, ptr %l16, !tbaa !24
  %t179 = add i64 %t177, 1
  store i64 %t179, ptr %l16, !tbaa !24
  br label %bb26
bb32:
  %t181 = load i64, ptr %l5, !tbaa !24
  %t182 = load i64, ptr %l4, !tbaa !24
  %t185 = sub i64 %t181, %t182
  store i64 %t185, ptr %l5, !tbaa !24
  br label %bb33
bb33:
  br label %bb34
bb34:
  br label %bb1
bb35:
  store i64 0, ptr %l18, !tbaa !24
  %t187 = load i64, ptr %l4, !tbaa !24
  store i64 %t187, ptr %l19, !tbaa !24
  store i64 1, ptr %l20, !tbaa !24
  %t189 = load i64, ptr %l19, !tbaa !24
  %t190 = load i64, ptr %l18, !tbaa !24
  %t193 = icmp sgt i64 %t189, %t190
  br i1 %t193, label %bb36, label %bb37
bb36:
  %t195 = load i64, ptr %l20, !tbaa !24
  %t197 = icmp sgt i64 %t195, 0
  br i1 %t197, label %bb38, label %bb39
bb37:
  store i64 0, ptr %l123, !tbaa !24
  br label %bb41
bb38:
  %t199 = load i64, ptr %l19, !tbaa !24
  %t200 = load i64, ptr %l18, !tbaa !24
  %t203 = sub i64 %t199, %t200
  %t204 = load i64, ptr %l20, !tbaa !24
  %t207 = add i64 %t203, %t204
  %t209 = sub i64 %t207, 1
  %t210 = load i64, ptr %l20, !tbaa !24
  %t213 = sdiv i64 %t209, %t210
  store i64 %t213, ptr %l126, !tbaa !24
  br label %bb40
bb39:
  store i64 0, ptr %l126, !tbaa !24
  br label %bb40
bb40:
  %t215 = load i64, ptr %l126, !tbaa !24
  store i64 %t215, ptr %l123, !tbaa !24
  br label %bb41
bb41:
  %t216 = load i64, ptr %l123, !tbaa !24
  store i64 %t216, ptr %l21, !tbaa !24
  store i64 0, ptr %l22, !tbaa !24
  br label %bb42
bb42:
  %t217 = load i64, ptr %l22, !tbaa !24
  %t218 = load i64, ptr %l21, !tbaa !24
  %t221 = icmp slt i64 %t217, %t218
  %t223 = xor i1 %t221, true
  br i1 %t223, label %bb43, label %bb44
bb43:
  br label %bb48
bb44:
  br label %bb45
bb45:
  %t225 = load i64, ptr %l18, !tbaa !24
  %t226 = load i64, ptr %l22, !tbaa !24
  %t227 = load i64, ptr %l20, !tbaa !24
  %t230 = mul i64 %t226, %t227
  %t233 = add i64 %t225, %t230
  store i64 %t233, ptr %l23, !tbaa !24
  %t235 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t236 = load i64, ptr %l2, !tbaa !24
  %t237 = load i64, ptr %l4, !tbaa !24
  %t240 = sub i64 %t236, %t237
  %t241 = load i64, ptr %l23, !tbaa !24
  %t244 = add i64 %t240, %t241
  %t245 = load i64, ptr %l2, !tbaa !24
  %t246 = load i64, ptr %l23, !tbaa !24
  %t249 = add i64 %t245, %t246
  call void @std_2fprelude_2farray_2esortSwap_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, { i64, ptr } %t235, i64 %t244, i64 %t249)
  br label %bb46
bb46:
  br label %bb47
bb47:
  %t253 = load i64, ptr %l22, !tbaa !24
  %t255 = add i64 %t253, 1
  store i64 %t255, ptr %l22, !tbaa !24
  br label %bb42
bb48:
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2farray_2esortSwap_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, { i64, ptr } %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca i64
  %l4 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t1, ptr %l4, !tbaa !27
  %t2 = load i64, ptr %l1, !tbaa !24
  %t4 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t5 = load ptr, ptr %t4, !tbaa !27
  %t6 = getelementptr { i64, ptr }, ptr %t5, i64 %t2
  %t7 = load { i64, ptr }, ptr %t6, !tbaa !37
  %t9 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t9, ptr %l7, !tbaa !27
  %t10 = load i64, ptr %l1, !tbaa !24
  %t11 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t11, ptr %l9, !tbaa !27
  %t12 = load i64, ptr %l2, !tbaa !24
  %t14 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr { i64, ptr }, ptr %t15, i64 %t12
  %t17 = load { i64, ptr }, ptr %t16, !tbaa !37
  %t20 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr { i64, ptr }, ptr %t21, i64 %t10
  store { i64, ptr } %t17, ptr %t22, !tbaa !37
  %t23 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t23, ptr %l12, !tbaa !27
  %t24 = load i64, ptr %l2, !tbaa !24
  %t28 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !27
  %t30 = getelementptr { i64, ptr }, ptr %t29, i64 %t24
  store { i64, ptr } %t7, ptr %t30, !tbaa !37
  br label %ret
ret:
  ret void
}

define dso_local i64 @std_2fprelude_2fnumber_2eI64_2eMax_3cI64_3e(i64 %a0, i64 %a1) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca i64
  %l5 = alloca i64
  %rv = alloca i64
  store i64 %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l0, !tbaa !24
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = icmp slt i64 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load i64, ptr %l1, !tbaa !24
  store i64 %t7, ptr %l5, !tbaa !24
  br label %bb3
bb2:
  %t9 = load i64, ptr %l0, !tbaa !24
  store i64 %t9, ptr %l5, !tbaa !24
  br label %bb3
bb3:
  %t11 = load i64, ptr %l5, !tbaa !24
  store i64 %t11, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @std_2fprelude_2ftext_2ejoinTexts_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %lp7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l13 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca i64
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca i64
  %l29 = alloca { i64, ptr }
  %l49 = alloca i64
  %l60 = alloca { i64, ptr }
  %l72 = alloca { i64, ptr }
  %l88 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
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
  br label %bb6
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t15, ptr %l29, !tbaa !27
  %t16 = load i64, ptr %l4, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr { i64, ptr }, ptr %t19, i64 %t16
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !37
  %t23 = load i64, ptr %l2, !tbaa !24
  %t26 = extractvalue { i64, ptr } %t21, 0
  %t29 = add i64 %t23, %t26
  store i64 %t29, ptr %l2, !tbaa !24
  br label %bb5
bb5:
  %t31 = load i64, ptr %l4, !tbaa !24
  %t33 = add i64 %t31, 1
  store i64 %t33, ptr %l4, !tbaa !24
  br label %bb1
bb6:
  %t35 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t35, 0
  %t39 = icmp sgt i64 %t37, 1
  br i1 %t39, label %bb7, label %bb8
bb7:
  %t41 = load i64, ptr %l2, !tbaa !24
  %t42 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t44 = extractvalue { i64, ptr } %t42, 0
  %t45 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t47 = extractvalue { i64, ptr } %t45, 0
  %t49 = sub i64 %t47, 1
  %t52 = mul i64 %t44, %t49
  %t55 = add i64 %t41, %t52
  store i64 %t55, ptr %l2, !tbaa !24
  br label %bb9
bb8:
  br label %bb9
bb9:
  %t57 = load i64, ptr %l2, !tbaa !24
  store i64 %t57, ptr %l49, !tbaa !24
  %t58 = load i64, ptr %l49, !tbaa !24
  %t59 = icmp sge i64 %t58, 0
  br i1 %t59, label %bb10, label %bb11
bb10:
  %t61 = load i64, ptr %l49, !tbaa !24
  %t62 = mul i64 %t61, 1
  %t63 = call ptr @__olang_scope_alloc_zeroed(ptr %v2, i64 %t62)
  %t64 = insertvalue { i64, ptr } undef, i64 %t61, 0
  %t65 = insertvalue { i64, ptr } %t64, ptr %t63, 1
  %t66 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t66, ptr %lp7
  %t68 = load ptr, ptr %lp7
  store { i64, ptr } %t65, ptr %t68, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t69 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t69, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t71 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t73 = extractvalue { i64, ptr } %t71, 0
  store i64 %t73, ptr %l11, !tbaa !24
  br label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_6124bee271ea27df_40001a175be242b)
  unreachable
bb12:
  %t75 = load i64, ptr %l10, !tbaa !24
  %t76 = load i64, ptr %l11, !tbaa !24
  %t79 = icmp slt i64 %t75, %t76
  %t81 = xor i1 %t79, true
  br i1 %t81, label %bb13, label %bb14
bb13:
  br label %bb32
bb14:
  br label %bb15
bb15:
  %t83 = load i64, ptr %l10, !tbaa !24
  %t85 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t85, ptr %l60, !tbaa !27
  %t86 = load i64, ptr %l10, !tbaa !24
  %t88 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !27
  %t90 = getelementptr { i64, ptr }, ptr %t89, i64 %t86
  %t91 = load { i64, ptr }, ptr %t90, !tbaa !37
  store { i64, ptr } %t91, ptr %l13, !tbaa !27
  %t95 = icmp sgt i64 %t83, 0
  br i1 %t95, label %bb16, label %bb17
bb16:
  %t97 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t97, ptr %l14, !tbaa !27
  store i64 0, ptr %l15, !tbaa !24
  %t99 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t101 = extractvalue { i64, ptr } %t99, 0
  store i64 %t101, ptr %l16, !tbaa !24
  br label %bb18
bb17:
  br label %bb24
bb18:
  %t103 = load i64, ptr %l15, !tbaa !24
  %t104 = load i64, ptr %l16, !tbaa !24
  %t107 = icmp slt i64 %t103, %t104
  %t109 = xor i1 %t107, true
  br i1 %t109, label %bb19, label %bb20
bb19:
  br label %bb23
bb20:
  br label %bb21
bb21:
  %t111 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t111, ptr %l72, !tbaa !27
  %t112 = load i64, ptr %l15, !tbaa !24
  %t114 = getelementptr { i64, ptr }, ptr %l72, i32 0, i32 1
  %t115 = load ptr, ptr %t114, !tbaa !27
  %t116 = getelementptr i8, ptr %t115, i64 %t112
  %t117 = load i8, ptr %t116, !tbaa !32
  %t119 = load i64, ptr %l8, !tbaa !24
  %t122 = load ptr, ptr %lp7
  %t124 = getelementptr { i64, ptr }, ptr %t122, i32 0, i32 1
  %t125 = load ptr, ptr %t124, !tbaa !27
  %t126 = getelementptr i8, ptr %t125, i64 %t119
  store i8 %t117, ptr %t126, !tbaa !32
  %t127 = load i64, ptr %l8, !tbaa !24
  %t129 = add i64 %t127, 1
  store i64 %t129, ptr %l8, !tbaa !24
  br label %bb22
bb22:
  %t131 = load i64, ptr %l15, !tbaa !24
  %t133 = add i64 %t131, 1
  store i64 %t133, ptr %l15, !tbaa !24
  br label %bb18
bb23:
  br label %bb24
bb24:
  %t135 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t135, ptr %l18, !tbaa !27
  store i64 0, ptr %l19, !tbaa !24
  %t137 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t139 = extractvalue { i64, ptr } %t137, 0
  store i64 %t139, ptr %l20, !tbaa !24
  br label %bb25
bb25:
  %t141 = load i64, ptr %l19, !tbaa !24
  %t142 = load i64, ptr %l20, !tbaa !24
  %t145 = icmp slt i64 %t141, %t142
  %t147 = xor i1 %t145, true
  br i1 %t147, label %bb26, label %bb27
bb26:
  br label %bb30
bb27:
  br label %bb28
bb28:
  %t149 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t149, ptr %l88, !tbaa !27
  %t150 = load i64, ptr %l19, !tbaa !24
  %t152 = getelementptr { i64, ptr }, ptr %l88, i32 0, i32 1
  %t153 = load ptr, ptr %t152, !tbaa !27
  %t154 = getelementptr i8, ptr %t153, i64 %t150
  %t155 = load i8, ptr %t154, !tbaa !32
  %t157 = load i64, ptr %l8, !tbaa !24
  %t160 = load ptr, ptr %lp7
  %t162 = getelementptr { i64, ptr }, ptr %t160, i32 0, i32 1
  %t163 = load ptr, ptr %t162, !tbaa !27
  %t164 = getelementptr i8, ptr %t163, i64 %t157
  store i8 %t155, ptr %t164, !tbaa !32
  %t165 = load i64, ptr %l8, !tbaa !24
  %t167 = add i64 %t165, 1
  store i64 %t167, ptr %l8, !tbaa !24
  br label %bb29
bb29:
  %t169 = load i64, ptr %l19, !tbaa !24
  %t171 = add i64 %t169, 1
  store i64 %t171, ptr %l19, !tbaa !24
  br label %bb25
bb30:
  br label %bb31
bb31:
  %t173 = load i64, ptr %l10, !tbaa !24
  %t175 = add i64 %t173, 1
  store i64 %t175, ptr %l10, !tbaa !24
  br label %bb12
bb32:
  %t177 = load ptr, ptr %lp7
  %t178 = load { i64, ptr }, ptr %t177, !tbaa !27
  store { i64, ptr } %t178, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @std_2fprelude_2ftext_2ejoinTexts_3cstd_2fprelude_2ftext_3aString_3e(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %lp7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l13 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca i64
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca i64
  %l29 = alloca { i64, ptr }
  %l49 = alloca i64
  %l60 = alloca { i64, ptr }
  %l62 = alloca { i64, ptr }
  %l63 = alloca i64
  %l64 = alloca { i64, ptr }
  %l74 = alloca { i64, ptr }
  %l90 = alloca { i64, ptr }
  %s6 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
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
  br label %bb6
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t15, ptr %l29, !tbaa !27
  %t16 = load i64, ptr %l4, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr { i64, ptr }, ptr %t19, i64 %t16
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !37
  %t23 = load i64, ptr %l2, !tbaa !24
  %t26 = extractvalue { i64, ptr } %t21, 0
  %t29 = add i64 %t23, %t26
  store i64 %t29, ptr %l2, !tbaa !24
  br label %bb5
bb5:
  %t31 = load i64, ptr %l4, !tbaa !24
  %t33 = add i64 %t31, 1
  store i64 %t33, ptr %l4, !tbaa !24
  br label %bb1
bb6:
  %t35 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t35, 0
  %t39 = icmp sgt i64 %t37, 1
  br i1 %t39, label %bb7, label %bb8
bb7:
  %t41 = load i64, ptr %l2, !tbaa !24
  %t42 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t44 = extractvalue { i64, ptr } %t42, 0
  %t45 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t47 = extractvalue { i64, ptr } %t45, 0
  %t49 = sub i64 %t47, 1
  %t52 = mul i64 %t44, %t49
  %t55 = add i64 %t41, %t52
  store i64 %t55, ptr %l2, !tbaa !24
  br label %bb9
bb8:
  br label %bb9
bb9:
  %t57 = load i64, ptr %l2, !tbaa !24
  store i64 %t57, ptr %l49, !tbaa !24
  %t58 = load i64, ptr %l49, !tbaa !24
  %t59 = icmp sge i64 %t58, 0
  br i1 %t59, label %bb10, label %bb11
bb10:
  %t61 = load i64, ptr %l49, !tbaa !24
  %t62 = mul i64 %t61, 1
  %t63 = call ptr @__olang_scope_alloc_zeroed(ptr %v2, i64 %t62)
  %t64 = insertvalue { i64, ptr } undef, i64 %t61, 0
  %t65 = insertvalue { i64, ptr } %t64, ptr %t63, 1
  %t66 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t66, ptr %lp7
  %t68 = load ptr, ptr %lp7
  store { i64, ptr } %t65, ptr %t68, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t69 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t69, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t71 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t73 = extractvalue { i64, ptr } %t71, 0
  store i64 %t73, ptr %l11, !tbaa !24
  br label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_b4b3d3a21dffee1a_94412941cff469ee)
  unreachable
bb12:
  store %olang.scope zeroinitializer, ptr %s6
  %t75 = load i64, ptr %l10, !tbaa !24
  %t76 = load i64, ptr %l11, !tbaa !24
  %t79 = icmp slt i64 %t75, %t76
  %t81 = xor i1 %t79, true
  br i1 %t81, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s6)
  br label %bb32
bb14:
  br label %bb15
bb15:
  %t83 = load i64, ptr %l10, !tbaa !24
  %t85 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t85, ptr %l60, !tbaa !27
  %t86 = load i64, ptr %l10, !tbaa !24
  %t88 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !27
  %t90 = getelementptr { i64, ptr }, ptr %t89, i64 %t86
  %t91 = load { i64, ptr }, ptr %t90, !tbaa !37
  store { i64, ptr } %t91, ptr %l62, !tbaa !27
  %t92 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t93 = extractvalue { i64, ptr } %t92, 0
  store i64 %t93, ptr %l63, !tbaa !24
  %t94 = load i64, ptr %l63, !tbaa !24
  %t95 = mul i64 %t94, 1
  %t96 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t95)
  %t97 = insertvalue { i64, ptr } undef, i64 %t94, 0
  %t98 = insertvalue { i64, ptr } %t97, ptr %t96, 1
  store { i64, ptr } %t98, ptr %l64, !tbaa !27
  %t99 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !27
  %t101 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !27
  %t103 = load i64, ptr %l63, !tbaa !24
  %t104 = mul i64 %t103, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t100, ptr %t102, i64 %t104, i1 false)
  %t105 = load { i64, ptr }, ptr %l64, !tbaa !27
  store { i64, ptr } %t105, ptr %l13, !tbaa !27
  %t108 = icmp sgt i64 %t83, 0
  br i1 %t108, label %bb16, label %bb17
bb16:
  %t110 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t110, ptr %l14, !tbaa !27
  store i64 0, ptr %l15, !tbaa !24
  %t112 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t114 = extractvalue { i64, ptr } %t112, 0
  store i64 %t114, ptr %l16, !tbaa !24
  br label %bb18
bb17:
  br label %bb24
bb18:
  %t116 = load i64, ptr %l15, !tbaa !24
  %t117 = load i64, ptr %l16, !tbaa !24
  %t120 = icmp slt i64 %t116, %t117
  %t122 = xor i1 %t120, true
  br i1 %t122, label %bb19, label %bb20
bb19:
  br label %bb23
bb20:
  br label %bb21
bb21:
  %t124 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t124, ptr %l74, !tbaa !27
  %t125 = load i64, ptr %l15, !tbaa !24
  %t127 = getelementptr { i64, ptr }, ptr %l74, i32 0, i32 1
  %t128 = load ptr, ptr %t127, !tbaa !27
  %t129 = getelementptr i8, ptr %t128, i64 %t125
  %t130 = load i8, ptr %t129, !tbaa !32
  %t132 = load i64, ptr %l8, !tbaa !24
  %t135 = load ptr, ptr %lp7
  %t137 = getelementptr { i64, ptr }, ptr %t135, i32 0, i32 1
  %t138 = load ptr, ptr %t137, !tbaa !27
  %t139 = getelementptr i8, ptr %t138, i64 %t132
  store i8 %t130, ptr %t139, !tbaa !32
  %t140 = load i64, ptr %l8, !tbaa !24
  %t142 = add i64 %t140, 1
  store i64 %t142, ptr %l8, !tbaa !24
  br label %bb22
bb22:
  %t144 = load i64, ptr %l15, !tbaa !24
  %t146 = add i64 %t144, 1
  store i64 %t146, ptr %l15, !tbaa !24
  br label %bb18
bb23:
  br label %bb24
bb24:
  %t148 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t148, ptr %l18, !tbaa !27
  store i64 0, ptr %l19, !tbaa !24
  %t150 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t152 = extractvalue { i64, ptr } %t150, 0
  store i64 %t152, ptr %l20, !tbaa !24
  br label %bb25
bb25:
  %t154 = load i64, ptr %l19, !tbaa !24
  %t155 = load i64, ptr %l20, !tbaa !24
  %t158 = icmp slt i64 %t154, %t155
  %t160 = xor i1 %t158, true
  br i1 %t160, label %bb26, label %bb27
bb26:
  br label %bb30
bb27:
  br label %bb28
bb28:
  %t162 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t162, ptr %l90, !tbaa !27
  %t163 = load i64, ptr %l19, !tbaa !24
  %t165 = getelementptr { i64, ptr }, ptr %l90, i32 0, i32 1
  %t166 = load ptr, ptr %t165, !tbaa !27
  %t167 = getelementptr i8, ptr %t166, i64 %t163
  %t168 = load i8, ptr %t167, !tbaa !32
  %t170 = load i64, ptr %l8, !tbaa !24
  %t173 = load ptr, ptr %lp7
  %t175 = getelementptr { i64, ptr }, ptr %t173, i32 0, i32 1
  %t176 = load ptr, ptr %t175, !tbaa !27
  %t177 = getelementptr i8, ptr %t176, i64 %t170
  store i8 %t168, ptr %t177, !tbaa !32
  %t178 = load i64, ptr %l8, !tbaa !24
  %t180 = add i64 %t178, 1
  store i64 %t180, ptr %l8, !tbaa !24
  br label %bb29
bb29:
  %t182 = load i64, ptr %l19, !tbaa !24
  %t184 = add i64 %t182, 1
  store i64 %t184, ptr %l19, !tbaa !24
  br label %bb25
bb30:
  call void @__olang_scope_close(ptr %s6)
  br label %bb31
bb31:
  %t186 = load i64, ptr %l10, !tbaa !24
  %t188 = add i64 %t186, 1
  store i64 %t188, ptr %l10, !tbaa !24
  br label %bb12
bb32:
  %t190 = load ptr, ptr %lp7
  %t191 = load { i64, ptr }, ptr %t190, !tbaa !27
  store { i64, ptr } %t191, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %v0, i64 %a0) #0 {
entry:
  %l0 = alloca i64
  %l3 = alloca i1
  %l6 = alloca i1
  %rv = alloca { i32, i64 }
  store i64 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l0, !tbaa !24
  %t3 = icmp ne i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i64, ptr %l0, !tbaa !24
  %t7 = icmp slt i64 %t5, 2
  br i1 %t7, label %bb3, label %bb4
bb2:
  store i1 false, ptr %l3, !tbaa !21
  br label %bb6
bb3:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb5
bb4:
  %t9 = load i64, ptr %l0, !tbaa !24
  %t11 = icmp sgt i64 %t9, 36
  store i1 %t11, ptr %l6, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l6, !tbaa !21
  store i1 %t13, ptr %l3, !tbaa !21
  br label %bb6
bb6:
  %t14 = load i1, ptr %l3, !tbaa !21
  br i1 %t14, label %bb7, label %bb8
bb7:
  %t16 = insertvalue { i32, i64 } zeroinitializer, i32 65537, 0
  store { i32, i64 } %t16, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t17 = load i64, ptr %l0, !tbaa !24
  %t18 = insertvalue { i32, i64 } zeroinitializer, i64 %t17, 1
  store { i32, i64 } %t18, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i64 }, ptr %rv
  ret { i32, i64 } %rr
}

define dso_local i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eAt_3cU64_3e(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0, i32 0, i32 0
  %t6 = getelementptr { i64, ptr }, ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !27
  %t8 = getelementptr i64, ptr %t7, i64 %a1
  %t9 = load i64, ptr %t8, !tbaa !85
  store i64 %t9, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e(ptr %v0, ptr %a0) #0 {
entry:
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  store i64 %t4, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2ePush_3cU64_3e(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l16 = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t5, i32 0, i32 0
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  %t13 = icmp eq i64 %t4, %t10
  br i1 %t13, label %bb1, label %bb2
bb1:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t16, i32 0, i32 1
  %t19 = load i64, ptr %t18, !tbaa !24
  %t21 = add i64 %t19, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eroom_3cU64_3e(ptr %v0, ptr %t15, i64 %t21)
  br label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb4
bb4:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t25, i32 0, i32 1
  %t28 = load i64, ptr %t27, !tbaa !24
  %t32 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t24, i32 0, i32 0
  %t34 = getelementptr { i64, ptr }, ptr %t32, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !27
  %t36 = getelementptr i64, ptr %t35, i64 %t28
  store i64 %a1, ptr %t36, !tbaa !85
  %t37 = load ptr, ptr %l0, !tbaa !29
  store ptr %t37, ptr %l16, !tbaa !29
  %t38 = load ptr, ptr %l16, !tbaa !29
  %t39 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t38, i32 0, i32 1
  %t40 = load i64, ptr %t39, !tbaa !24
  %t42 = add i64 %t40, 1
  %t44 = load ptr, ptr %l16, !tbaa !29
  %t45 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t44, i32 0, i32 1
  store i64 %t42, ptr %t45, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eroom_3cU64_3e(ptr %v0, ptr %a0, i64 %a1) noinline cold #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l4 = alloca { i64, ptr }
  %l6 = alloca i64
  %l16 = alloca i64
  %l33 = alloca ptr
  %l34 = alloca { i64, ptr }
  %l36 = alloca i64
  %l37 = alloca i64
  %l43 = alloca i64
  %l45 = alloca { i64, ptr }
  %l46 = alloca i64
  %l52 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t2, i32 0, i32 0
  %t5 = load { i64, ptr }, ptr %t4, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  %t10 = icmp sle i64 %t1, %t7
  br i1 %t10, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t12, i32 0, i32 0
  %t15 = load { i64, ptr }, ptr %t14, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t15, 0
  %t19 = icmp slt i64 %t17, 4
  br i1 %t19, label %bb4, label %bb5
bb4:
  store i64 8, ptr %l16, !tbaa !24
  br label %bb6
bb5:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t21, i32 0, i32 0
  %t24 = load { i64, ptr }, ptr %t23, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t24, 0
  %t28 = mul i64 %t26, 2
  store i64 %t28, ptr %l16, !tbaa !24
  br label %bb6
bb6:
  %t30 = load i64, ptr %l16, !tbaa !24
  store i64 %t30, ptr %l2, !tbaa !24
  %t31 = load i64, ptr %l2, !tbaa !24
  %t32 = load i64, ptr %l1, !tbaa !24
  %t35 = icmp slt i64 %t31, %t32
  br i1 %t35, label %bb7, label %bb8
bb7:
  %t37 = load i64, ptr %l1, !tbaa !24
  store i64 %t37, ptr %l2, !tbaa !24
  br label %bb9
bb8:
  br label %bb9
bb9:
  %t39 = load i64, ptr %l2, !tbaa !24
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t40, i32 0, i32 2
  %t43 = load i64, ptr %t42, !tbaa !24
  %t46 = icmp slt i64 %t39, %t43
  br i1 %t46, label %bb10, label %bb11
bb10:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t48, i32 0, i32 2
  %t51 = load i64, ptr %t50, !tbaa !24
  store i64 %t51, ptr %l2, !tbaa !24
  br label %bb12
bb11:
  br label %bb12
bb12:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t53, i32 0, i32 0
  %t56 = load { i64, ptr }, ptr %t55, !tbaa !27
  %t58 = load ptr, ptr %l0, !tbaa !29
  store ptr %t58, ptr %l33, !tbaa !29
  store { i64, ptr } %t56, ptr %l34, !tbaa !27
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t60, i32 0, i32 1
  %t63 = load i64, ptr %t62, !tbaa !24
  store i64 %t63, ptr %l36, !tbaa !24
  %t64 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t65 = extractvalue { i64, ptr } %t64, 0
  store i64 %t65, ptr %l37, !tbaa !24
  %t66 = icmp sge i64 0, 0
  br i1 %t66, label %bb13, label %bb14
bb13:
  %t68 = load i64, ptr %l36, !tbaa !24
  %t69 = icmp sle i64 0, %t68
  br i1 %t69, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_4c80127648ba5d2e_65bcf202b125bf62)
  unreachable
bb15:
  %t71 = load i64, ptr %l36, !tbaa !24
  %t72 = load i64, ptr %l37, !tbaa !24
  %t73 = icmp sle i64 %t71, %t72
  br i1 %t73, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_4c80127648ba5d2e_65bcf202b125bf62)
  unreachable
bb17:
  %t75 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = load i64, ptr %l36, !tbaa !24
  %t78 = getelementptr i64, ptr %t76, i64 0
  %t79 = sub i64 %t77, 0
  %t80 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t78, 1
  store { i64, ptr } %t81, ptr %l4, !tbaa !27
  %t83 = load i64, ptr %l2, !tbaa !24
  %t85 = call ptr @__olang_region_make(ptr %v0)
  %t86 = ptrtoint ptr %t85 to i64
  store i64 %t86, ptr %l43, !tbaa !24
  %t89 = mul i64 %t83, 8
  %t90 = load i64, ptr %l43
  %t91 = inttoptr i64 %t90 to ptr
  %t92 = call ptr @__olang_scope_alloc(ptr %t91, i64 %t89)
  %t93 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t94 = insertvalue { i64, ptr } %t93, ptr %t92, 1
  store { i64, ptr } %t94, ptr %l45, !tbaa !27
  store i64 0, ptr %l46, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_4c80127648ba5d2e_65bcf202b125bf62)
  unreachable
bb19:
  %t95 = load i64, ptr %l6, !tbaa !24
  %t96 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t98 = extractvalue { i64, ptr } %t96, 0
  %t101 = icmp slt i64 %t95, %t98
  %t103 = xor i1 %t101, true
  br i1 %t103, label %bb20, label %bb21
bb20:
  br label %bb24
bb21:
  br label %bb22
bb22:
  %t105 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t105, ptr %l52, !tbaa !27
  %t106 = load i64, ptr %l6, !tbaa !24
  %t108 = getelementptr { i64, ptr }, ptr %l52, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !27
  %t110 = getelementptr i64, ptr %t109, i64 %t106
  %t111 = load i64, ptr %t110, !tbaa !85
  %t113 = load i64, ptr %l46, !tbaa !24
  %t114 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t115 = load ptr, ptr %t114, !tbaa !27
  %t116 = getelementptr i64, ptr %t115, i64 %t113
  store i64 %t111, ptr %t116, !tbaa !85
  %t117 = load i64, ptr %l46, !tbaa !24
  %t118 = add i64 %t117, 1
  store i64 %t118, ptr %l46, !tbaa !24
  br label %bb23
bb23:
  %t119 = load i64, ptr %l6, !tbaa !24
  %t121 = add i64 %t119, 1
  store i64 %t121, ptr %l6, !tbaa !24
  br label %bb19
bb24:
  %t123 = load i64, ptr %l43
  %t124 = inttoptr i64 %t123 to ptr
  %t125 = load { i64, ptr }, ptr %l45
  %t126 = extractvalue { i64, ptr } %t125, 1
  %t127 = call ptr @__olang_region_or(ptr %t126, ptr null)
  %t128 = icmp ne ptr %t127, null
  %t129 = select i1 %t128, ptr %t127, ptr null
  %t130 = icmp eq ptr %t129, %t124
  call void @__olang_region_settle(ptr %t124, i1 %t130)
  %t131 = load ptr, ptr %l33, !tbaa !29
  %t132 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t131, i32 0, i32 0
  %t133 = load { i64, ptr }, ptr %t132, !tbaa !27
  store { i64, ptr } %t133, ptr %l57, !tbaa !27
  %t134 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t135 = load ptr, ptr %l33, !tbaa !29
  %t136 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t135, i32 0, i32 0
  store { i64, ptr } %t134, ptr %t136, !tbaa !27
  %t137 = load { i64, ptr }, ptr %l57
  %t138 = extractvalue { i64, ptr } %t137, 1
  call void @__olang_region_release(ptr %t138)
  store { i64, ptr } zeroinitializer, ptr %l57
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cany_20bench_2fdispatch_3aShape_26_3e_2_H03d83f9f2d153335c091daa302942782(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l15 = alloca i64
  %l17 = alloca { ptr, ptr }
  %l26 = alloca i64
  %l29 = alloca i64
  %l47 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  %t37 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp eq i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = icmp sge i64 0, 0
  br i1 %t8, label %bb3, label %bb4
bb2:
  br label %bb7
bb3:
  %t10 = icmp sle i64 0, 576460752303423487
  br i1 %t10, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_cca13ff5ed90f929_d2af70a5a814cefd)
  unreachable
bb5:
  %t12 = mul i64 0, 16
  %t13 = insertvalue { i64, ptr } undef, i64 0, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t14, ptr %rv
  br label %ret
bb6:
  call void @__olang_check_failed(ptr @olang_loc_cca13ff5ed90f929_d2af70a5a814cefd)
  unreachable
bb7:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t16, i32 0, i32 1
  %t19 = load i64, ptr %t18, !tbaa !24
  store i64 %t19, ptr %l15, !tbaa !24
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t20, i32 0, i32 0
  %t23 = getelementptr { i64, ptr }, ptr %t22, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !27
  %t25 = getelementptr { ptr, ptr }, ptr %t24, i64 0
  %t26 = load { ptr, ptr }, ptr %t25
  store { ptr, ptr } %t26, ptr %l17
  %t27 = load i64, ptr %l15, !tbaa !24
  %t28 = icmp sge i64 %t27, 0
  br i1 %t28, label %bb8, label %bb9
bb8:
  %t30 = load i64, ptr %l15, !tbaa !24
  %t31 = icmp sle i64 %t30, 576460752303423487
  br i1 %t31, label %bb10, label %bb11
bb9:
  call void @__olang_check_failed(ptr @olang_loc_f0537daede74ae5c_16d335b1da8e21d0)
  unreachable
bb10:
  %t33 = load i64, ptr %l15, !tbaa !24
  %t34 = mul i64 %t33, 16
  %t35 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t34)
  %t36 = load { ptr, ptr }, ptr %l17
  store i64 0, ptr %t37
  br label %fill.38
fill.38:
  %t41 = load i64, ptr %t37
  %t42 = icmp slt i64 %t41, %t33
  br i1 %t42, label %fillb.39, label %filld.40
fillb.39:
  %t43 = getelementptr { ptr, ptr }, ptr %t35, i64 %t41
  store { ptr, ptr } %t36, ptr %t43
  %t44 = add i64 %t41, 1
  store i64 %t44, ptr %t37
  br label %fill.38
filld.40:
  %t45 = insertvalue { i64, ptr } undef, i64 %t33, 0
  %t46 = insertvalue { i64, ptr } %t45, ptr %t35, 1
  store { i64, ptr } %t46, ptr %l1, !tbaa !27
  store i64 0, ptr %l2, !tbaa !24
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t48, i32 0, i32 1
  %t51 = load i64, ptr %t50, !tbaa !24
  store i64 %t51, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t53 = load i64, ptr %l3, !tbaa !24
  %t54 = load i64, ptr %l2, !tbaa !24
  %t57 = icmp sgt i64 %t53, %t54
  br i1 %t57, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_f0537daede74ae5c_16d335b1da8e21d0)
  unreachable
bb12:
  %t59 = load i64, ptr %l4, !tbaa !24
  %t61 = icmp sgt i64 %t59, 0
  br i1 %t61, label %bb14, label %bb15
bb13:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb17
bb14:
  %t63 = load i64, ptr %l3, !tbaa !24
  %t64 = load i64, ptr %l2, !tbaa !24
  %t67 = sub i64 %t63, %t64
  %t68 = load i64, ptr %l4, !tbaa !24
  %t71 = add i64 %t67, %t68
  %t73 = sub i64 %t71, 1
  %t74 = load i64, ptr %l4, !tbaa !24
  %t77 = sdiv i64 %t73, %t74
  store i64 %t77, ptr %l29, !tbaa !24
  br label %bb16
bb15:
  store i64 0, ptr %l29, !tbaa !24
  br label %bb16
bb16:
  %t79 = load i64, ptr %l29, !tbaa !24
  store i64 %t79, ptr %l26, !tbaa !24
  br label %bb17
bb17:
  %t80 = load i64, ptr %l26, !tbaa !24
  store i64 %t80, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb18
bb18:
  %t81 = load i64, ptr %l6, !tbaa !24
  %t82 = load i64, ptr %l5, !tbaa !24
  %t85 = icmp slt i64 %t81, %t82
  %t87 = xor i1 %t85, true
  br i1 %t87, label %bb19, label %bb20
bb19:
  br label %bb23
bb20:
  br label %bb21
bb21:
  %t89 = load i64, ptr %l2, !tbaa !24
  %t90 = load i64, ptr %l6, !tbaa !24
  %t91 = load i64, ptr %l4, !tbaa !24
  %t94 = mul i64 %t90, %t91
  %t97 = add i64 %t89, %t94
  store i64 %t97, ptr %l7, !tbaa !24
  %t99 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t99, ptr %l47, !tbaa !27
  %t100 = load i64, ptr %l7, !tbaa !24
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load i64, ptr %l7, !tbaa !24
  %t104 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t101, i32 0, i32 0
  %t106 = getelementptr { i64, ptr }, ptr %t104, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !27
  %t108 = getelementptr { ptr, ptr }, ptr %t107, i64 %t102
  %t109 = load { ptr, ptr }, ptr %t108
  %t112 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !27
  %t114 = getelementptr { ptr, ptr }, ptr %t113, i64 %t100
  store { ptr, ptr } %t109, ptr %t114
  br label %bb22
bb22:
  %t115 = load i64, ptr %l6, !tbaa !24
  %t117 = add i64 %t115, 1
  store i64 %t117, ptr %l6, !tbaa !24
  br label %bb18
bb23:
  %t119 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t119, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cany_20bench_2fdispatch_3aShape_26_3e_2_Hb517170722f8d015c496fd1598b8b226(ptr %v0, ptr %v1, ptr %a0, { ptr, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l16 = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t5, i32 0, i32 0
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  %t13 = icmp eq i64 %t4, %t10
  br i1 %t13, label %bb1, label %bb2
bb1:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t16, i32 0, i32 1
  %t19 = load i64, ptr %t18, !tbaa !24
  %t21 = add i64 %t19, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cany_20bench_2fdispatch_3aShape_26_3e_2_Hfb001d890364de1c88d2a635998785fd(ptr %v0, ptr %t15, i64 %t21)
  br label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb4
bb4:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t25, i32 0, i32 1
  %t28 = load i64, ptr %t27, !tbaa !24
  %t32 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t24, i32 0, i32 0
  %t34 = getelementptr { i64, ptr }, ptr %t32, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !27
  %t36 = getelementptr { ptr, ptr }, ptr %t35, i64 %t28
  store { ptr, ptr } %a1, ptr %t36
  %t37 = load ptr, ptr %l0, !tbaa !29
  store ptr %t37, ptr %l16, !tbaa !29
  %t38 = load ptr, ptr %l16, !tbaa !29
  %t39 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t38, i32 0, i32 1
  %t40 = load i64, ptr %t39, !tbaa !24
  %t42 = add i64 %t40, 1
  %t44 = load ptr, ptr %l16, !tbaa !29
  %t45 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t44, i32 0, i32 1
  store i64 %t42, ptr %t45, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cany_20bench_2fdispatch_3aShape_26_3e_2_Hfb001d890364de1c88d2a635998785fd(ptr %v0, ptr %a0, i64 %a1) noinline cold #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l6 = alloca i64
  %l16 = alloca i64
  %l33 = alloca ptr
  %l34 = alloca { i64, ptr }
  %l36 = alloca i64
  %l37 = alloca i64
  %l44 = alloca { i64, ptr }
  %l45 = alloca i64
  %l51 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t2, i32 0, i32 0
  %t5 = load { i64, ptr }, ptr %t4, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  %t10 = icmp sle i64 %t1, %t7
  br i1 %t10, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t12, i32 0, i32 0
  %t15 = load { i64, ptr }, ptr %t14, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t15, 0
  %t19 = icmp slt i64 %t17, 4
  br i1 %t19, label %bb4, label %bb5
bb4:
  store i64 8, ptr %l16, !tbaa !24
  br label %bb6
bb5:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t21, i32 0, i32 0
  %t24 = load { i64, ptr }, ptr %t23, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t24, 0
  %t28 = mul i64 %t26, 2
  store i64 %t28, ptr %l16, !tbaa !24
  br label %bb6
bb6:
  %t30 = load i64, ptr %l16, !tbaa !24
  store i64 %t30, ptr %l2, !tbaa !24
  %t31 = load i64, ptr %l2, !tbaa !24
  %t32 = load i64, ptr %l1, !tbaa !24
  %t35 = icmp slt i64 %t31, %t32
  br i1 %t35, label %bb7, label %bb8
bb7:
  %t37 = load i64, ptr %l1, !tbaa !24
  store i64 %t37, ptr %l2, !tbaa !24
  br label %bb9
bb8:
  br label %bb9
bb9:
  %t39 = load i64, ptr %l2, !tbaa !24
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t40, i32 0, i32 2
  %t43 = load i64, ptr %t42, !tbaa !24
  %t46 = icmp slt i64 %t39, %t43
  br i1 %t46, label %bb10, label %bb11
bb10:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t48, i32 0, i32 2
  %t51 = load i64, ptr %t50, !tbaa !24
  store i64 %t51, ptr %l2, !tbaa !24
  br label %bb12
bb11:
  br label %bb12
bb12:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t53, i32 0, i32 0
  %t56 = load { i64, ptr }, ptr %t55, !tbaa !27
  store { i64, ptr } %t56, ptr %l3, !tbaa !27
  %t58 = load ptr, ptr %l0, !tbaa !29
  store ptr %t58, ptr %l33, !tbaa !29
  %t59 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t59, ptr %l34, !tbaa !27
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t60, i32 0, i32 1
  %t63 = load i64, ptr %t62, !tbaa !24
  store i64 %t63, ptr %l36, !tbaa !24
  %t64 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t65 = extractvalue { i64, ptr } %t64, 0
  store i64 %t65, ptr %l37, !tbaa !24
  %t66 = icmp sge i64 0, 0
  br i1 %t66, label %bb13, label %bb14
bb13:
  %t68 = load i64, ptr %l36, !tbaa !24
  %t69 = icmp sle i64 0, %t68
  br i1 %t69, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_4343f73b4c1e0c95_5a06fb94c0f3fba1)
  unreachable
bb15:
  %t71 = load i64, ptr %l36, !tbaa !24
  %t72 = load i64, ptr %l37, !tbaa !24
  %t73 = icmp sle i64 %t71, %t72
  br i1 %t73, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_4343f73b4c1e0c95_5a06fb94c0f3fba1)
  unreachable
bb17:
  %t75 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = load i64, ptr %l36, !tbaa !24
  %t78 = getelementptr { ptr, ptr }, ptr %t76, i64 0
  %t79 = sub i64 %t77, 0
  %t80 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t78, 1
  store { i64, ptr } %t81, ptr %l4, !tbaa !27
  %t83 = load i64, ptr %l2, !tbaa !24
  %t87 = mul i64 %t83, 16
  %t88 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t87)
  %t89 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t88, 1
  store { i64, ptr } %t90, ptr %l44, !tbaa !27
  store i64 0, ptr %l45, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_4343f73b4c1e0c95_5a06fb94c0f3fba1)
  unreachable
bb19:
  %t91 = load i64, ptr %l6, !tbaa !24
  %t92 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t94 = extractvalue { i64, ptr } %t92, 0
  %t97 = icmp slt i64 %t91, %t94
  %t99 = xor i1 %t97, true
  br i1 %t99, label %bb20, label %bb21
bb20:
  br label %bb24
bb21:
  br label %bb22
bb22:
  %t101 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t101, ptr %l51, !tbaa !27
  %t102 = load i64, ptr %l6, !tbaa !24
  %t104 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t105 = load ptr, ptr %t104, !tbaa !27
  %t106 = getelementptr { ptr, ptr }, ptr %t105, i64 %t102
  %t107 = load { ptr, ptr }, ptr %t106
  %t109 = load i64, ptr %l45, !tbaa !24
  %t110 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr { ptr, ptr }, ptr %t111, i64 %t109
  store { ptr, ptr } %t107, ptr %t112
  %t113 = load i64, ptr %l45, !tbaa !24
  %t114 = add i64 %t113, 1
  store i64 %t114, ptr %l45, !tbaa !24
  br label %bb23
bb23:
  %t115 = load i64, ptr %l6, !tbaa !24
  %t117 = add i64 %t115, 1
  store i64 %t117, ptr %l6, !tbaa !24
  br label %bb19
bb24:
  %t119 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t120 = load ptr, ptr %l33, !tbaa !29
  %t121 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t120, i32 0, i32 0
  store { i64, ptr } %t119, ptr %t121, !tbaa !27
  %t122 = load { i64, ptr }, ptr %l3, !tbaa !27
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cbench_2fdispatch_3aFig_3e_2ePush_3cbench_2fdispatch_3aFig_3e(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l16 = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t5, i32 0, i32 0
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  %t13 = icmp eq i64 %t4, %t10
  br i1 %t13, label %bb1, label %bb2
bb1:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t16, i32 0, i32 1
  %t19 = load i64, ptr %t18, !tbaa !24
  %t21 = add i64 %t19, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cbench_2fdispatch_3aFig_3e_2eroom_3cbench_2fdispatch_3aFig_3e(ptr %v0, ptr %t15, i64 %t21)
  br label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb4
bb4:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t25, i32 0, i32 1
  %t28 = load i64, ptr %t27, !tbaa !24
  %t32 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t24, i32 0, i32 0
  %t34 = getelementptr { i64, ptr }, ptr %t32, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !27
  %t36 = getelementptr { i64, [2 x i64] }, ptr %t35, i64 %t28
  store { i64, [2 x i64] } %a1, ptr %t36
  %t37 = load ptr, ptr %l0, !tbaa !29
  store ptr %t37, ptr %l16, !tbaa !29
  %t38 = load ptr, ptr %l16, !tbaa !29
  %t39 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t38, i32 0, i32 1
  %t40 = load i64, ptr %t39, !tbaa !24
  %t42 = add i64 %t40, 1
  %t44 = load ptr, ptr %l16, !tbaa !29
  %t45 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t44, i32 0, i32 1
  store i64 %t42, ptr %t45, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cbench_2fdispatch_3aFig_3e_2eToArray_3cbench_2fdispatch_3aFig_3e(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l15 = alloca i64
  %l17 = alloca { i64, [2 x i64] }
  %l26 = alloca i64
  %l29 = alloca i64
  %l47 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  %t37 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp eq i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = icmp sge i64 0, 0
  br i1 %t8, label %bb3, label %bb4
bb2:
  br label %bb7
bb3:
  %t10 = icmp sle i64 0, 384307168202282325
  br i1 %t10, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_16e49da871bdbd07_2fa55ac314c9acc3)
  unreachable
bb5:
  %t12 = mul i64 0, 24
  %t13 = insertvalue { i64, ptr } undef, i64 0, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t14, ptr %rv
  br label %ret
bb6:
  call void @__olang_check_failed(ptr @olang_loc_16e49da871bdbd07_2fa55ac314c9acc3)
  unreachable
bb7:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t16, i32 0, i32 1
  %t19 = load i64, ptr %t18, !tbaa !24
  store i64 %t19, ptr %l15, !tbaa !24
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t20, i32 0, i32 0
  %t23 = getelementptr { i64, ptr }, ptr %t22, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !27
  %t25 = getelementptr { i64, [2 x i64] }, ptr %t24, i64 0
  %t26 = load { i64, [2 x i64] }, ptr %t25
  store { i64, [2 x i64] } %t26, ptr %l17
  %t27 = load i64, ptr %l15, !tbaa !24
  %t28 = icmp sge i64 %t27, 0
  br i1 %t28, label %bb8, label %bb9
bb8:
  %t30 = load i64, ptr %l15, !tbaa !24
  %t31 = icmp sle i64 %t30, 384307168202282325
  br i1 %t31, label %bb10, label %bb11
bb9:
  call void @__olang_check_failed(ptr @olang_loc_43e17f19b0d3b612_8895de2acd6308ce)
  unreachable
bb10:
  %t33 = load i64, ptr %l15, !tbaa !24
  %t34 = mul i64 %t33, 24
  %t35 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t34)
  %t36 = load { i64, [2 x i64] }, ptr %l17
  store i64 0, ptr %t37
  br label %fill.38
fill.38:
  %t41 = load i64, ptr %t37
  %t42 = icmp slt i64 %t41, %t33
  br i1 %t42, label %fillb.39, label %filld.40
fillb.39:
  %t43 = getelementptr { i64, [2 x i64] }, ptr %t35, i64 %t41
  store { i64, [2 x i64] } %t36, ptr %t43
  %t44 = add i64 %t41, 1
  store i64 %t44, ptr %t37
  br label %fill.38
filld.40:
  %t45 = insertvalue { i64, ptr } undef, i64 %t33, 0
  %t46 = insertvalue { i64, ptr } %t45, ptr %t35, 1
  store { i64, ptr } %t46, ptr %l1, !tbaa !27
  store i64 0, ptr %l2, !tbaa !24
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t48, i32 0, i32 1
  %t51 = load i64, ptr %t50, !tbaa !24
  store i64 %t51, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t53 = load i64, ptr %l3, !tbaa !24
  %t54 = load i64, ptr %l2, !tbaa !24
  %t57 = icmp sgt i64 %t53, %t54
  br i1 %t57, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_43e17f19b0d3b612_8895de2acd6308ce)
  unreachable
bb12:
  %t59 = load i64, ptr %l4, !tbaa !24
  %t61 = icmp sgt i64 %t59, 0
  br i1 %t61, label %bb14, label %bb15
bb13:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb17
bb14:
  %t63 = load i64, ptr %l3, !tbaa !24
  %t64 = load i64, ptr %l2, !tbaa !24
  %t67 = sub i64 %t63, %t64
  %t68 = load i64, ptr %l4, !tbaa !24
  %t71 = add i64 %t67, %t68
  %t73 = sub i64 %t71, 1
  %t74 = load i64, ptr %l4, !tbaa !24
  %t77 = sdiv i64 %t73, %t74
  store i64 %t77, ptr %l29, !tbaa !24
  br label %bb16
bb15:
  store i64 0, ptr %l29, !tbaa !24
  br label %bb16
bb16:
  %t79 = load i64, ptr %l29, !tbaa !24
  store i64 %t79, ptr %l26, !tbaa !24
  br label %bb17
bb17:
  %t80 = load i64, ptr %l26, !tbaa !24
  store i64 %t80, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb18
bb18:
  %t81 = load i64, ptr %l6, !tbaa !24
  %t82 = load i64, ptr %l5, !tbaa !24
  %t85 = icmp slt i64 %t81, %t82
  %t87 = xor i1 %t85, true
  br i1 %t87, label %bb19, label %bb20
bb19:
  br label %bb23
bb20:
  br label %bb21
bb21:
  %t89 = load i64, ptr %l2, !tbaa !24
  %t90 = load i64, ptr %l6, !tbaa !24
  %t91 = load i64, ptr %l4, !tbaa !24
  %t94 = mul i64 %t90, %t91
  %t97 = add i64 %t89, %t94
  store i64 %t97, ptr %l7, !tbaa !24
  %t99 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t99, ptr %l47, !tbaa !27
  %t100 = load i64, ptr %l7, !tbaa !24
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load i64, ptr %l7, !tbaa !24
  %t104 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t101, i32 0, i32 0
  %t106 = getelementptr { i64, ptr }, ptr %t104, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !27
  %t108 = getelementptr { i64, [2 x i64] }, ptr %t107, i64 %t102
  %t109 = load { i64, [2 x i64] }, ptr %t108
  %t112 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !27
  %t114 = getelementptr { i64, [2 x i64] }, ptr %t113, i64 %t100
  store { i64, [2 x i64] } %t109, ptr %t114
  br label %bb22
bb22:
  %t115 = load i64, ptr %l6, !tbaa !24
  %t117 = add i64 %t115, 1
  store i64 %t117, ptr %l6, !tbaa !24
  br label %bb18
bb23:
  %t119 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t119, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cbench_2fdispatch_3aFig_3e_2eroom_3cbench_2fdispatch_3aFig_3e(ptr %v0, ptr %a0, i64 %a1) noinline cold #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l4 = alloca { i64, ptr }
  %l6 = alloca i64
  %l16 = alloca i64
  %l33 = alloca ptr
  %l34 = alloca { i64, ptr }
  %l36 = alloca i64
  %l37 = alloca i64
  %l43 = alloca i64
  %l45 = alloca { i64, ptr }
  %l46 = alloca i64
  %l52 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t2, i32 0, i32 0
  %t5 = load { i64, ptr }, ptr %t4, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  %t10 = icmp sle i64 %t1, %t7
  br i1 %t10, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t12, i32 0, i32 0
  %t15 = load { i64, ptr }, ptr %t14, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t15, 0
  %t19 = icmp slt i64 %t17, 4
  br i1 %t19, label %bb4, label %bb5
bb4:
  store i64 8, ptr %l16, !tbaa !24
  br label %bb6
bb5:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t21, i32 0, i32 0
  %t24 = load { i64, ptr }, ptr %t23, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t24, 0
  %t28 = mul i64 %t26, 2
  store i64 %t28, ptr %l16, !tbaa !24
  br label %bb6
bb6:
  %t30 = load i64, ptr %l16, !tbaa !24
  store i64 %t30, ptr %l2, !tbaa !24
  %t31 = load i64, ptr %l2, !tbaa !24
  %t32 = load i64, ptr %l1, !tbaa !24
  %t35 = icmp slt i64 %t31, %t32
  br i1 %t35, label %bb7, label %bb8
bb7:
  %t37 = load i64, ptr %l1, !tbaa !24
  store i64 %t37, ptr %l2, !tbaa !24
  br label %bb9
bb8:
  br label %bb9
bb9:
  %t39 = load i64, ptr %l2, !tbaa !24
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t40, i32 0, i32 2
  %t43 = load i64, ptr %t42, !tbaa !24
  %t46 = icmp slt i64 %t39, %t43
  br i1 %t46, label %bb10, label %bb11
bb10:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t48, i32 0, i32 2
  %t51 = load i64, ptr %t50, !tbaa !24
  store i64 %t51, ptr %l2, !tbaa !24
  br label %bb12
bb11:
  br label %bb12
bb12:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t53, i32 0, i32 0
  %t56 = load { i64, ptr }, ptr %t55, !tbaa !27
  %t58 = load ptr, ptr %l0, !tbaa !29
  store ptr %t58, ptr %l33, !tbaa !29
  store { i64, ptr } %t56, ptr %l34, !tbaa !27
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t60, i32 0, i32 1
  %t63 = load i64, ptr %t62, !tbaa !24
  store i64 %t63, ptr %l36, !tbaa !24
  %t64 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t65 = extractvalue { i64, ptr } %t64, 0
  store i64 %t65, ptr %l37, !tbaa !24
  %t66 = icmp sge i64 0, 0
  br i1 %t66, label %bb13, label %bb14
bb13:
  %t68 = load i64, ptr %l36, !tbaa !24
  %t69 = icmp sle i64 0, %t68
  br i1 %t69, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_2b74eca9fa84e7cc_74ba8daf8eae3030)
  unreachable
bb15:
  %t71 = load i64, ptr %l36, !tbaa !24
  %t72 = load i64, ptr %l37, !tbaa !24
  %t73 = icmp sle i64 %t71, %t72
  br i1 %t73, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_2b74eca9fa84e7cc_74ba8daf8eae3030)
  unreachable
bb17:
  %t75 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = load i64, ptr %l36, !tbaa !24
  %t78 = getelementptr { i64, [2 x i64] }, ptr %t76, i64 0
  %t79 = sub i64 %t77, 0
  %t80 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t78, 1
  store { i64, ptr } %t81, ptr %l4, !tbaa !27
  %t83 = load i64, ptr %l2, !tbaa !24
  %t85 = call ptr @__olang_region_make(ptr %v0)
  %t86 = ptrtoint ptr %t85 to i64
  store i64 %t86, ptr %l43, !tbaa !24
  %t89 = mul i64 %t83, 24
  %t90 = load i64, ptr %l43
  %t91 = inttoptr i64 %t90 to ptr
  %t92 = call ptr @__olang_scope_alloc(ptr %t91, i64 %t89)
  %t93 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t94 = insertvalue { i64, ptr } %t93, ptr %t92, 1
  store { i64, ptr } %t94, ptr %l45, !tbaa !27
  store i64 0, ptr %l46, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_2b74eca9fa84e7cc_74ba8daf8eae3030)
  unreachable
bb19:
  %t95 = load i64, ptr %l6, !tbaa !24
  %t96 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t98 = extractvalue { i64, ptr } %t96, 0
  %t101 = icmp slt i64 %t95, %t98
  %t103 = xor i1 %t101, true
  br i1 %t103, label %bb20, label %bb21
bb20:
  br label %bb24
bb21:
  br label %bb22
bb22:
  %t105 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t105, ptr %l52, !tbaa !27
  %t106 = load i64, ptr %l6, !tbaa !24
  %t108 = getelementptr { i64, ptr }, ptr %l52, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !27
  %t110 = getelementptr { i64, [2 x i64] }, ptr %t109, i64 %t106
  %t111 = load { i64, [2 x i64] }, ptr %t110
  %t113 = load i64, ptr %l46, !tbaa !24
  %t114 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t115 = load ptr, ptr %t114, !tbaa !27
  %t116 = getelementptr { i64, [2 x i64] }, ptr %t115, i64 %t113
  store { i64, [2 x i64] } %t111, ptr %t116
  %t117 = load i64, ptr %l46, !tbaa !24
  %t118 = add i64 %t117, 1
  store i64 %t118, ptr %l46, !tbaa !24
  br label %bb23
bb23:
  %t119 = load i64, ptr %l6, !tbaa !24
  %t121 = add i64 %t119, 1
  store i64 %t121, ptr %l6, !tbaa !24
  br label %bb19
bb24:
  %t123 = load i64, ptr %l43
  %t124 = inttoptr i64 %t123 to ptr
  %t125 = load { i64, ptr }, ptr %l45
  %t126 = extractvalue { i64, ptr } %t125, 1
  %t127 = call ptr @__olang_region_or(ptr %t126, ptr null)
  %t128 = icmp ne ptr %t127, null
  %t129 = select i1 %t128, ptr %t127, ptr null
  %t130 = icmp eq ptr %t129, %t124
  call void @__olang_region_settle(ptr %t124, i1 %t130)
  %t131 = load ptr, ptr %l33, !tbaa !29
  %t132 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t131, i32 0, i32 0
  %t133 = load { i64, ptr }, ptr %t132, !tbaa !27
  store { i64, ptr } %t133, ptr %l57, !tbaa !27
  %t134 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t135 = load ptr, ptr %l33, !tbaa !29
  %t136 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t135, i32 0, i32 0
  store { i64, ptr } %t134, ptr %t136, !tbaa !27
  %t137 = load { i64, ptr }, ptr %l57
  %t138 = extractvalue { i64, ptr } %t137, 1
  call void @__olang_region_release(ptr %t138)
  store { i64, ptr } zeroinitializer, ptr %l57
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cbench_2fdispatch_3aSq_3e_2ePush_3cbench_2fdispatch_3aSq_3e(ptr %v0, ptr %a0, %"bench/dispatch:Sq" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l16 = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t5, i32 0, i32 0
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  %t13 = icmp eq i64 %t4, %t10
  br i1 %t13, label %bb1, label %bb2
bb1:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t16, i32 0, i32 1
  %t19 = load i64, ptr %t18, !tbaa !24
  %t21 = add i64 %t19, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cbench_2fdispatch_3aSq_3e_2eroom_3cbench_2fdispatch_3aSq_3e(ptr %v0, ptr %t15, i64 %t21)
  br label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb4
bb4:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t25, i32 0, i32 1
  %t28 = load i64, ptr %t27, !tbaa !24
  %t32 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t24, i32 0, i32 0
  %t34 = getelementptr { i64, ptr }, ptr %t32, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !27
  %t36 = getelementptr %"bench/dispatch:Sq", ptr %t35, i64 %t28
  store %"bench/dispatch:Sq" %a1, ptr %t36
  %t37 = load ptr, ptr %l0, !tbaa !29
  store ptr %t37, ptr %l16, !tbaa !29
  %t38 = load ptr, ptr %l16, !tbaa !29
  %t39 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t38, i32 0, i32 1
  %t40 = load i64, ptr %t39, !tbaa !24
  %t42 = add i64 %t40, 1
  %t44 = load ptr, ptr %l16, !tbaa !29
  %t45 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t44, i32 0, i32 1
  store i64 %t42, ptr %t45, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cbench_2fdispatch_3aSq_3e_2eToArray_3cbench_2fdispatch_3aSq_3e(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l15 = alloca i64
  %l17 = alloca %"bench/dispatch:Sq"
  %l26 = alloca i64
  %l29 = alloca i64
  %l47 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  %t37 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp eq i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = icmp sge i64 0, 0
  br i1 %t8, label %bb3, label %bb4
bb2:
  br label %bb7
bb3:
  %t10 = icmp sle i64 0, 1152921504606846975
  br i1 %t10, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_ba2e226d436bf457_eff83f34ebe9f533)
  unreachable
bb5:
  %t12 = mul i64 0, 8
  %t13 = insertvalue { i64, ptr } undef, i64 0, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t14, ptr %rv
  br label %ret
bb6:
  call void @__olang_check_failed(ptr @olang_loc_ba2e226d436bf457_eff83f34ebe9f533)
  unreachable
bb7:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t16, i32 0, i32 1
  %t19 = load i64, ptr %t18, !tbaa !24
  store i64 %t19, ptr %l15, !tbaa !24
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t20, i32 0, i32 0
  %t23 = getelementptr { i64, ptr }, ptr %t22, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !27
  %t25 = getelementptr %"bench/dispatch:Sq", ptr %t24, i64 0
  %t26 = load %"bench/dispatch:Sq", ptr %t25
  store %"bench/dispatch:Sq" %t26, ptr %l17
  %t27 = load i64, ptr %l15, !tbaa !24
  %t28 = icmp sge i64 %t27, 0
  br i1 %t28, label %bb8, label %bb9
bb8:
  %t30 = load i64, ptr %l15, !tbaa !24
  %t31 = icmp sle i64 %t30, 1152921504606846975
  br i1 %t31, label %bb10, label %bb11
bb9:
  call void @__olang_check_failed(ptr @olang_loc_9ad4dc9aaf8b67a2_8ee0591503ab9ffe)
  unreachable
bb10:
  %t33 = load i64, ptr %l15, !tbaa !24
  %t34 = mul i64 %t33, 8
  %t35 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t34)
  %t36 = load %"bench/dispatch:Sq", ptr %l17
  store i64 0, ptr %t37
  br label %fill.38
fill.38:
  %t41 = load i64, ptr %t37
  %t42 = icmp slt i64 %t41, %t33
  br i1 %t42, label %fillb.39, label %filld.40
fillb.39:
  %t43 = getelementptr %"bench/dispatch:Sq", ptr %t35, i64 %t41
  store %"bench/dispatch:Sq" %t36, ptr %t43
  %t44 = add i64 %t41, 1
  store i64 %t44, ptr %t37
  br label %fill.38
filld.40:
  %t45 = insertvalue { i64, ptr } undef, i64 %t33, 0
  %t46 = insertvalue { i64, ptr } %t45, ptr %t35, 1
  store { i64, ptr } %t46, ptr %l1, !tbaa !27
  store i64 0, ptr %l2, !tbaa !24
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t48, i32 0, i32 1
  %t51 = load i64, ptr %t50, !tbaa !24
  store i64 %t51, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t53 = load i64, ptr %l3, !tbaa !24
  %t54 = load i64, ptr %l2, !tbaa !24
  %t57 = icmp sgt i64 %t53, %t54
  br i1 %t57, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_9ad4dc9aaf8b67a2_8ee0591503ab9ffe)
  unreachable
bb12:
  %t59 = load i64, ptr %l4, !tbaa !24
  %t61 = icmp sgt i64 %t59, 0
  br i1 %t61, label %bb14, label %bb15
bb13:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb17
bb14:
  %t63 = load i64, ptr %l3, !tbaa !24
  %t64 = load i64, ptr %l2, !tbaa !24
  %t67 = sub i64 %t63, %t64
  %t68 = load i64, ptr %l4, !tbaa !24
  %t71 = add i64 %t67, %t68
  %t73 = sub i64 %t71, 1
  %t74 = load i64, ptr %l4, !tbaa !24
  %t77 = sdiv i64 %t73, %t74
  store i64 %t77, ptr %l29, !tbaa !24
  br label %bb16
bb15:
  store i64 0, ptr %l29, !tbaa !24
  br label %bb16
bb16:
  %t79 = load i64, ptr %l29, !tbaa !24
  store i64 %t79, ptr %l26, !tbaa !24
  br label %bb17
bb17:
  %t80 = load i64, ptr %l26, !tbaa !24
  store i64 %t80, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb18
bb18:
  %t81 = load i64, ptr %l6, !tbaa !24
  %t82 = load i64, ptr %l5, !tbaa !24
  %t85 = icmp slt i64 %t81, %t82
  %t87 = xor i1 %t85, true
  br i1 %t87, label %bb19, label %bb20
bb19:
  br label %bb23
bb20:
  br label %bb21
bb21:
  %t89 = load i64, ptr %l2, !tbaa !24
  %t90 = load i64, ptr %l6, !tbaa !24
  %t91 = load i64, ptr %l4, !tbaa !24
  %t94 = mul i64 %t90, %t91
  %t97 = add i64 %t89, %t94
  store i64 %t97, ptr %l7, !tbaa !24
  %t99 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t99, ptr %l47, !tbaa !27
  %t100 = load i64, ptr %l7, !tbaa !24
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load i64, ptr %l7, !tbaa !24
  %t104 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t101, i32 0, i32 0
  %t106 = getelementptr { i64, ptr }, ptr %t104, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !27
  %t108 = getelementptr %"bench/dispatch:Sq", ptr %t107, i64 %t102
  %t109 = load %"bench/dispatch:Sq", ptr %t108
  %t112 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !27
  %t114 = getelementptr %"bench/dispatch:Sq", ptr %t113, i64 %t100
  store %"bench/dispatch:Sq" %t109, ptr %t114
  br label %bb22
bb22:
  %t115 = load i64, ptr %l6, !tbaa !24
  %t117 = add i64 %t115, 1
  store i64 %t117, ptr %l6, !tbaa !24
  br label %bb18
bb23:
  %t119 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t119, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cbench_2fdispatch_3aSq_3e_2eroom_3cbench_2fdispatch_3aSq_3e(ptr %v0, ptr %a0, i64 %a1) noinline cold #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l4 = alloca { i64, ptr }
  %l6 = alloca i64
  %l16 = alloca i64
  %l33 = alloca ptr
  %l34 = alloca { i64, ptr }
  %l36 = alloca i64
  %l37 = alloca i64
  %l43 = alloca i64
  %l45 = alloca { i64, ptr }
  %l46 = alloca i64
  %l52 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t2, i32 0, i32 0
  %t5 = load { i64, ptr }, ptr %t4, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  %t10 = icmp sle i64 %t1, %t7
  br i1 %t10, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t12, i32 0, i32 0
  %t15 = load { i64, ptr }, ptr %t14, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t15, 0
  %t19 = icmp slt i64 %t17, 4
  br i1 %t19, label %bb4, label %bb5
bb4:
  store i64 8, ptr %l16, !tbaa !24
  br label %bb6
bb5:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t21, i32 0, i32 0
  %t24 = load { i64, ptr }, ptr %t23, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t24, 0
  %t28 = mul i64 %t26, 2
  store i64 %t28, ptr %l16, !tbaa !24
  br label %bb6
bb6:
  %t30 = load i64, ptr %l16, !tbaa !24
  store i64 %t30, ptr %l2, !tbaa !24
  %t31 = load i64, ptr %l2, !tbaa !24
  %t32 = load i64, ptr %l1, !tbaa !24
  %t35 = icmp slt i64 %t31, %t32
  br i1 %t35, label %bb7, label %bb8
bb7:
  %t37 = load i64, ptr %l1, !tbaa !24
  store i64 %t37, ptr %l2, !tbaa !24
  br label %bb9
bb8:
  br label %bb9
bb9:
  %t39 = load i64, ptr %l2, !tbaa !24
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t40, i32 0, i32 2
  %t43 = load i64, ptr %t42, !tbaa !24
  %t46 = icmp slt i64 %t39, %t43
  br i1 %t46, label %bb10, label %bb11
bb10:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t48, i32 0, i32 2
  %t51 = load i64, ptr %t50, !tbaa !24
  store i64 %t51, ptr %l2, !tbaa !24
  br label %bb12
bb11:
  br label %bb12
bb12:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t53, i32 0, i32 0
  %t56 = load { i64, ptr }, ptr %t55, !tbaa !27
  %t58 = load ptr, ptr %l0, !tbaa !29
  store ptr %t58, ptr %l33, !tbaa !29
  store { i64, ptr } %t56, ptr %l34, !tbaa !27
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t60, i32 0, i32 1
  %t63 = load i64, ptr %t62, !tbaa !24
  store i64 %t63, ptr %l36, !tbaa !24
  %t64 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t65 = extractvalue { i64, ptr } %t64, 0
  store i64 %t65, ptr %l37, !tbaa !24
  %t66 = icmp sge i64 0, 0
  br i1 %t66, label %bb13, label %bb14
bb13:
  %t68 = load i64, ptr %l36, !tbaa !24
  %t69 = icmp sle i64 0, %t68
  br i1 %t69, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_fb4ec6ffd905bcde_cc27e5c42f7f6182)
  unreachable
bb15:
  %t71 = load i64, ptr %l36, !tbaa !24
  %t72 = load i64, ptr %l37, !tbaa !24
  %t73 = icmp sle i64 %t71, %t72
  br i1 %t73, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_fb4ec6ffd905bcde_cc27e5c42f7f6182)
  unreachable
bb17:
  %t75 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = load i64, ptr %l36, !tbaa !24
  %t78 = getelementptr %"bench/dispatch:Sq", ptr %t76, i64 0
  %t79 = sub i64 %t77, 0
  %t80 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t78, 1
  store { i64, ptr } %t81, ptr %l4, !tbaa !27
  %t83 = load i64, ptr %l2, !tbaa !24
  %t85 = call ptr @__olang_region_make(ptr %v0)
  %t86 = ptrtoint ptr %t85 to i64
  store i64 %t86, ptr %l43, !tbaa !24
  %t89 = mul i64 %t83, 8
  %t90 = load i64, ptr %l43
  %t91 = inttoptr i64 %t90 to ptr
  %t92 = call ptr @__olang_scope_alloc(ptr %t91, i64 %t89)
  %t93 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t94 = insertvalue { i64, ptr } %t93, ptr %t92, 1
  store { i64, ptr } %t94, ptr %l45, !tbaa !27
  store i64 0, ptr %l46, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_fb4ec6ffd905bcde_cc27e5c42f7f6182)
  unreachable
bb19:
  %t95 = load i64, ptr %l6, !tbaa !24
  %t96 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t98 = extractvalue { i64, ptr } %t96, 0
  %t101 = icmp slt i64 %t95, %t98
  %t103 = xor i1 %t101, true
  br i1 %t103, label %bb20, label %bb21
bb20:
  br label %bb24
bb21:
  br label %bb22
bb22:
  %t105 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t105, ptr %l52, !tbaa !27
  %t106 = load i64, ptr %l6, !tbaa !24
  %t108 = getelementptr { i64, ptr }, ptr %l52, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !27
  %t110 = getelementptr %"bench/dispatch:Sq", ptr %t109, i64 %t106
  %t111 = load %"bench/dispatch:Sq", ptr %t110
  %t113 = load i64, ptr %l46, !tbaa !24
  %t114 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t115 = load ptr, ptr %t114, !tbaa !27
  %t116 = getelementptr %"bench/dispatch:Sq", ptr %t115, i64 %t113
  store %"bench/dispatch:Sq" %t111, ptr %t116
  %t117 = load i64, ptr %l46, !tbaa !24
  %t118 = add i64 %t117, 1
  store i64 %t118, ptr %l46, !tbaa !24
  br label %bb23
bb23:
  %t119 = load i64, ptr %l6, !tbaa !24
  %t121 = add i64 %t119, 1
  store i64 %t121, ptr %l6, !tbaa !24
  br label %bb19
bb24:
  %t123 = load i64, ptr %l43
  %t124 = inttoptr i64 %t123 to ptr
  %t125 = load { i64, ptr }, ptr %l45
  %t126 = extractvalue { i64, ptr } %t125, 1
  %t127 = call ptr @__olang_region_or(ptr %t126, ptr null)
  %t128 = icmp ne ptr %t127, null
  %t129 = select i1 %t128, ptr %t127, ptr null
  %t130 = icmp eq ptr %t129, %t124
  call void @__olang_region_settle(ptr %t124, i1 %t130)
  %t131 = load ptr, ptr %l33, !tbaa !29
  %t132 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t131, i32 0, i32 0
  %t133 = load { i64, ptr }, ptr %t132, !tbaa !27
  store { i64, ptr } %t133, ptr %l57, !tbaa !27
  %t134 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t135 = load ptr, ptr %l33, !tbaa !29
  %t136 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t135, i32 0, i32 0
  store { i64, ptr } %t134, ptr %t136, !tbaa !27
  %t137 = load { i64, ptr }, ptr %l57
  %t138 = extractvalue { i64, ptr } %t137, 1
  call void @__olang_region_release(ptr %t138)
  store { i64, ptr } zeroinitializer, ptr %l57
  br label %ret
ret:
  ret void
}

define dso_local i8 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2eAt_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %rv = alloca i8
  br label %start
start:
  br label %bb0
bb0:
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0, i32 0, i32 0
  %t6 = getelementptr { i64, ptr }, ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !27
  %t8 = getelementptr i8, ptr %t7, i64 %a1
  %t9 = load i8, ptr %t8, !tbaa !32
  store i8 %t9, ptr %rv
  br label %ret
ret:
  %rr = load i8, ptr %rv
  ret i8 %rr
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2eClear_Hee3cbaa7ef2d16f687a523c73aa64228(ptr %v0, ptr %a0) #0 {
entry:
  br label %start
start:
  br label %bb0
bb0:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2eTrunc_Hdb40e008e45c3217ff19be25d205c76e(ptr %v0, ptr %a0, i64 0)
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

@std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2eLen_3cstd_2fprelude_2ftext_3aChar_3e = dso_local alias i64 (ptr, ptr), ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e
define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2ePushA_Hec8f055c349635c8d43431a73666f84f(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l44 = alloca i64
  %l47 = alloca i64
  %l70 = alloca { i64, ptr }
  %l75 = alloca ptr
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp eq i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t7, i32 0, i32 1
  %t10 = load i64, ptr %t9, !tbaa !24
  %t11 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t11, 0
  %t16 = add i64 %t10, %t13
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t17, i32 0, i32 0
  %t20 = load { i64, ptr }, ptr %t19, !tbaa !27
  %t22 = extractvalue { i64, ptr } %t20, 0
  %t25 = icmp sgt i64 %t16, %t22
  br i1 %t25, label %bb4, label %bb5
bb4:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t27, i32 0, i32 0
  %t30 = load { i64, ptr }, ptr %t29, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t30, 0
  %t34 = mul i64 %t32, 2
  store i64 %t34, ptr %l2, !tbaa !24
  %t36 = load i64, ptr %l2, !tbaa !24
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t37, i32 0, i32 1
  %t40 = load i64, ptr %t39, !tbaa !24
  %t41 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t41, 0
  %t46 = add i64 %t40, %t43
  %t49 = icmp slt i64 %t36, %t46
  br i1 %t49, label %bb6, label %bb7
bb5:
  br label %bb10
bb6:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t51, i32 0, i32 1
  %t54 = load i64, ptr %t53, !tbaa !24
  %t55 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t57 = extractvalue { i64, ptr } %t55, 0
  %t60 = add i64 %t54, %t57
  store i64 %t60, ptr %l2, !tbaa !24
  br label %bb8
bb7:
  br label %bb8
bb8:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2eroom_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %t62, i64 %t63)
  br label %bb9
bb9:
  br label %bb10
bb10:
  store i64 0, ptr %l3, !tbaa !24
  %t66 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t68 = extractvalue { i64, ptr } %t66, 0
  store i64 %t68, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t70 = load i64, ptr %l4, !tbaa !24
  %t71 = load i64, ptr %l3, !tbaa !24
  %t74 = icmp sgt i64 %t70, %t71
  br i1 %t74, label %bb11, label %bb12
bb11:
  %t76 = load i64, ptr %l5, !tbaa !24
  %t78 = icmp sgt i64 %t76, 0
  br i1 %t78, label %bb13, label %bb14
bb12:
  store i64 0, ptr %l44, !tbaa !24
  br label %bb16
bb13:
  %t80 = load i64, ptr %l4, !tbaa !24
  %t81 = load i64, ptr %l3, !tbaa !24
  %t84 = sub i64 %t80, %t81
  %t85 = load i64, ptr %l5, !tbaa !24
  %t88 = add i64 %t84, %t85
  %t90 = sub i64 %t88, 1
  %t91 = load i64, ptr %l5, !tbaa !24
  %t94 = sdiv i64 %t90, %t91
  store i64 %t94, ptr %l47, !tbaa !24
  br label %bb15
bb14:
  store i64 0, ptr %l47, !tbaa !24
  br label %bb15
bb15:
  %t96 = load i64, ptr %l47, !tbaa !24
  store i64 %t96, ptr %l44, !tbaa !24
  br label %bb16
bb16:
  %t97 = load i64, ptr %l44, !tbaa !24
  store i64 %t97, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb17
bb17:
  %t98 = load i64, ptr %l7, !tbaa !24
  %t99 = load i64, ptr %l6, !tbaa !24
  %t102 = icmp slt i64 %t98, %t99
  %t104 = xor i1 %t102, true
  br i1 %t104, label %bb18, label %bb19
bb18:
  br label %bb22
bb19:
  br label %bb20
bb20:
  %t106 = load i64, ptr %l3, !tbaa !24
  %t107 = load i64, ptr %l7, !tbaa !24
  %t108 = load i64, ptr %l5, !tbaa !24
  %t111 = mul i64 %t107, %t108
  %t114 = add i64 %t106, %t111
  store i64 %t114, ptr %l8, !tbaa !24
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t117, i32 0, i32 1
  %t120 = load i64, ptr %t119, !tbaa !24
  %t121 = load i64, ptr %l8, !tbaa !24
  %t124 = add i64 %t120, %t121
  %t125 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t125, ptr %l70, !tbaa !27
  %t126 = load i64, ptr %l8, !tbaa !24
  %t128 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t129 = load ptr, ptr %t128, !tbaa !27
  %t130 = getelementptr i8, ptr %t129, i64 %t126
  %t131 = load i8, ptr %t130, !tbaa !32
  %t134 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t116, i32 0, i32 0
  %t136 = getelementptr { i64, ptr }, ptr %t134, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !27
  %t138 = getelementptr i8, ptr %t137, i64 %t124
  store i8 %t131, ptr %t138, !tbaa !32
  br label %bb21
bb21:
  %t139 = load i64, ptr %l7, !tbaa !24
  %t141 = add i64 %t139, 1
  store i64 %t141, ptr %l7, !tbaa !24
  br label %bb17
bb22:
  %t143 = load ptr, ptr %l0, !tbaa !29
  store ptr %t143, ptr %l75, !tbaa !29
  %t144 = load ptr, ptr %l75, !tbaa !29
  %t145 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t144, i32 0, i32 1
  %t146 = load i64, ptr %t145, !tbaa !24
  %t147 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t149 = extractvalue { i64, ptr } %t147, 0
  %t152 = add i64 %t146, %t149
  %t154 = load ptr, ptr %l75, !tbaa !29
  %t155 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t154, i32 0, i32 1
  store i64 %t152, ptr %t155, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2ePush_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %a0, i8 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l16 = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t5, i32 0, i32 0
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  %t13 = icmp eq i64 %t4, %t10
  br i1 %t13, label %bb1, label %bb2
bb1:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t16, i32 0, i32 1
  %t19 = load i64, ptr %t18, !tbaa !24
  %t21 = add i64 %t19, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2eroom_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %t15, i64 %t21)
  br label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb4
bb4:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t25, i32 0, i32 1
  %t28 = load i64, ptr %t27, !tbaa !24
  %t32 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t24, i32 0, i32 0
  %t34 = getelementptr { i64, ptr }, ptr %t32, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !27
  %t36 = getelementptr i8, ptr %t35, i64 %t28
  store i8 %a1, ptr %t36, !tbaa !32
  %t37 = load ptr, ptr %l0, !tbaa !29
  store ptr %t37, ptr %l16, !tbaa !29
  %t38 = load ptr, ptr %l16, !tbaa !29
  %t39 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t38, i32 0, i32 1
  %t40 = load i64, ptr %t39, !tbaa !24
  %t42 = add i64 %t40, 1
  %t44 = load ptr, ptr %l16, !tbaa !29
  %t45 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t44, i32 0, i32 1
  store i64 %t42, ptr %t45, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2eTrunc_Hdb40e008e45c3217ff19be25d205c76e(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l10 = alloca i64
  %l21 = alloca i8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t2, i32 0, i32 1
  %t5 = load i64, ptr %t4, !tbaa !24
  %t8 = icmp sge i64 %t1, %t5
  br i1 %t8, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t10 = load i64, ptr %l1, !tbaa !24
  %t12 = icmp sgt i64 %t10, 0
  br i1 %t12, label %bb4, label %bb5
bb4:
  %t14 = load i64, ptr %l1, !tbaa !24
  store i64 %t14, ptr %l10, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l10, !tbaa !24
  br label %bb6
bb6:
  %t16 = load i64, ptr %l10, !tbaa !24
  store i64 %t16, ptr %l2, !tbaa !24
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t17, i32 0, i32 1
  %t20 = load i64, ptr %t19, !tbaa !24
  %t22 = sub i64 %t20, 1
  store i64 %t22, ptr %l3, !tbaa !24
  br label %bb7
bb7:
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = load i64, ptr %l2, !tbaa !24
  %t28 = icmp sge i64 %t24, %t25
  %t30 = xor i1 %t28, true
  br i1 %t30, label %bb8, label %bb9
bb8:
  br label %bb12
bb9:
  br label %bb10
bb10:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load i64, ptr %l3, !tbaa !24
  %t35 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t32, i32 0, i32 0
  %t37 = getelementptr { i64, ptr }, ptr %t35, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = getelementptr i8, ptr %t38, i64 %t33
  %t40 = load i8, ptr %t39, !tbaa !32
  store i8 %t40, ptr %l21, !tbaa !22
  br label %bb11
bb11:
  %t41 = load i64, ptr %l3, !tbaa !24
  %t43 = sub i64 %t41, 1
  store i64 %t43, ptr %l3, !tbaa !24
  br label %bb7
bb12:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load i64, ptr %l2, !tbaa !24
  %t49 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t45, i32 0, i32 1
  store i64 %t46, ptr %t49, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2eroom_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %a0, i64 %a1) noinline cold #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l6 = alloca i64
  %l16 = alloca i64
  %l33 = alloca ptr
  %l34 = alloca { i64, ptr }
  %l36 = alloca i64
  %l37 = alloca i64
  %l44 = alloca { i64, ptr }
  %l45 = alloca i64
  %l51 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t2, i32 0, i32 0
  %t5 = load { i64, ptr }, ptr %t4, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  %t10 = icmp sle i64 %t1, %t7
  br i1 %t10, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t12, i32 0, i32 0
  %t15 = load { i64, ptr }, ptr %t14, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t15, 0
  %t19 = icmp slt i64 %t17, 4
  br i1 %t19, label %bb4, label %bb5
bb4:
  store i64 8, ptr %l16, !tbaa !24
  br label %bb6
bb5:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t21, i32 0, i32 0
  %t24 = load { i64, ptr }, ptr %t23, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t24, 0
  %t28 = mul i64 %t26, 2
  store i64 %t28, ptr %l16, !tbaa !24
  br label %bb6
bb6:
  %t30 = load i64, ptr %l16, !tbaa !24
  store i64 %t30, ptr %l2, !tbaa !24
  %t31 = load i64, ptr %l2, !tbaa !24
  %t32 = load i64, ptr %l1, !tbaa !24
  %t35 = icmp slt i64 %t31, %t32
  br i1 %t35, label %bb7, label %bb8
bb7:
  %t37 = load i64, ptr %l1, !tbaa !24
  store i64 %t37, ptr %l2, !tbaa !24
  br label %bb9
bb8:
  br label %bb9
bb9:
  %t39 = load i64, ptr %l2, !tbaa !24
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t40, i32 0, i32 2
  %t43 = load i64, ptr %t42, !tbaa !24
  %t46 = icmp slt i64 %t39, %t43
  br i1 %t46, label %bb10, label %bb11
bb10:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t48, i32 0, i32 2
  %t51 = load i64, ptr %t50, !tbaa !24
  store i64 %t51, ptr %l2, !tbaa !24
  br label %bb12
bb11:
  br label %bb12
bb12:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t53, i32 0, i32 0
  %t56 = load { i64, ptr }, ptr %t55, !tbaa !27
  store { i64, ptr } %t56, ptr %l3, !tbaa !27
  %t58 = load ptr, ptr %l0, !tbaa !29
  store ptr %t58, ptr %l33, !tbaa !29
  %t59 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t59, ptr %l34, !tbaa !27
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t60, i32 0, i32 1
  %t63 = load i64, ptr %t62, !tbaa !24
  store i64 %t63, ptr %l36, !tbaa !24
  %t64 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t65 = extractvalue { i64, ptr } %t64, 0
  store i64 %t65, ptr %l37, !tbaa !24
  %t66 = icmp sge i64 0, 0
  br i1 %t66, label %bb13, label %bb14
bb13:
  %t68 = load i64, ptr %l36, !tbaa !24
  %t69 = icmp sle i64 0, %t68
  br i1 %t69, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_98322877b323543a_c315b51d8b07b39e)
  unreachable
bb15:
  %t71 = load i64, ptr %l36, !tbaa !24
  %t72 = load i64, ptr %l37, !tbaa !24
  %t73 = icmp sle i64 %t71, %t72
  br i1 %t73, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_98322877b323543a_c315b51d8b07b39e)
  unreachable
bb17:
  %t75 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = load i64, ptr %l36, !tbaa !24
  %t78 = getelementptr i8, ptr %t76, i64 0
  %t79 = sub i64 %t77, 0
  %t80 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t78, 1
  store { i64, ptr } %t81, ptr %l4, !tbaa !27
  %t83 = load i64, ptr %l2, !tbaa !24
  %t87 = mul i64 %t83, 1
  %t88 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t87)
  %t89 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t88, 1
  store { i64, ptr } %t90, ptr %l44, !tbaa !27
  store i64 0, ptr %l45, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_98322877b323543a_c315b51d8b07b39e)
  unreachable
bb19:
  %t91 = load i64, ptr %l6, !tbaa !24
  %t92 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t94 = extractvalue { i64, ptr } %t92, 0
  %t97 = icmp slt i64 %t91, %t94
  %t99 = xor i1 %t97, true
  br i1 %t99, label %bb20, label %bb21
bb20:
  br label %bb24
bb21:
  br label %bb22
bb22:
  %t101 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t101, ptr %l51, !tbaa !27
  %t102 = load i64, ptr %l6, !tbaa !24
  %t104 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t105 = load ptr, ptr %t104, !tbaa !27
  %t106 = getelementptr i8, ptr %t105, i64 %t102
  %t107 = load i8, ptr %t106, !tbaa !32
  %t109 = load i64, ptr %l45, !tbaa !24
  %t110 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr i8, ptr %t111, i64 %t109
  store i8 %t107, ptr %t112, !tbaa !32
  %t113 = load i64, ptr %l45, !tbaa !24
  %t114 = add i64 %t113, 1
  store i64 %t114, ptr %l45, !tbaa !24
  br label %bb23
bb23:
  %t115 = load i64, ptr %l6, !tbaa !24
  %t117 = add i64 %t115, 1
  store i64 %t117, ptr %l6, !tbaa !24
  br label %bb19
bb24:
  %t119 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t120 = load ptr, ptr %l33, !tbaa !29
  %t121 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t120, i32 0, i32 0
  store { i64, ptr } %t119, ptr %t121, !tbaa !27
  %t122 = load { i64, ptr }, ptr %l3, !tbaa !27
  br label %ret
ret:
  ret void
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector(ptr %v0, i64 %a0) #0 {
entry:
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  %t4 = insertvalue %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" undef, { i64, ptr } zeroinitializer, 0
  %t6 = insertvalue %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, i64 0, 1
  %t8 = insertvalue %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, i64 %a0, 2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

@std_2fprelude_2fvec_3aVec_3cany_20bench_2fdispatch_3aShape_26_3e_2ector = dso_local alias %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" (ptr, i64), ptr @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector
@std_2fprelude_2fvec_3aVec_3cbench_2fdispatch_3aFig_3e_2ector = dso_local alias %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" (ptr, i64), ptr @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector
@std_2fprelude_2fvec_3aVec_3cbench_2fdispatch_3aSq_3e_2ector = dso_local alias %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" (ptr, i64), ptr @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector
@std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2ector = dso_local alias %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" (ptr, i64), ptr @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector
declare void @__olang_check_failed(ptr) cold noreturn
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
@.d0 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"io.Error.Partial" }>, align 8
declare void @__olang_sb_put(ptr, ptr, i64)
declare ptr @__olang_errpay_top_get()
@.d1 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
define available_externally ptr @__olang_sb_room(ptr %sb, i64 %need) alwaysinline {
entry:
  %lenp = getelementptr { ptr, i64, i64, ptr }, ptr %sb, i32 0, i32 1
  %capp = getelementptr { ptr, i64, i64, ptr }, ptr %sb, i32 0, i32 2
  %len = load i64, ptr %lenp
  %cap = load i64, ptr %capp
  %want = add i64 %len, %need
  %fits = icmp ule i64 %want, %cap
  br i1 %fits, label %ok, label %grow
ok:
  %data = load ptr, ptr %sb
  %p = getelementptr i8, ptr %data, i64 %len
  ret ptr %p
grow:
  %g = call ptr @__olang_sb_grow(ptr %sb, i64 %need)
  ret ptr %g
}
declare i64 @__olang_fmt_i64(ptr, i64)
declare void @__olang_sb_add(ptr, i64)
@.d2 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@__olang_prog_scope = external thread_local(initialexec) global ptr
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
declare void @__olang_sb_done(ptr)
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
declare void @__olang_unhandled_text({ i64, ptr }, i1) cold noreturn
@.d3 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"io.Error.Partial" }>, align 8
@.d4 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d5 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d6 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"io.Error.Partial" }>, align 8
@.d7 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d8 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d9 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"io.Error.Partial" }>, align 8
@.d10 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d11 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d12 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"any" }>, align 8
@.d13 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"enum" }>, align 8
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
@olang_2etable_2ebench_2fdispatch_3aSq_7cbench_2fdispatch_3aShape = linkonce_odr constant [4 x ptr] [ptr @olang_2etypeid_2ebench_2fdispatch_3aSq, ptr @olang_2eanyrender_2ebench_2fdispatch_3aSq_7cbench_2fdispatch_3aShape, ptr @olang_2eanyrender_2etop_2ebench_2fdispatch_3aSq_7cbench_2fdispatch_3aShape, ptr @olang_2eslot_2ebench_2fdispatch_3aSq_7cbench_2fdispatch_3aShape_2e0]
@olang_2etable_2ebench_2fdispatch_3aRect_7cbench_2fdispatch_3aShape = linkonce_odr constant [4 x ptr] [ptr @olang_2etypeid_2ebench_2fdispatch_3aRect, ptr @olang_2eanyrender_2ebench_2fdispatch_3aRect_7cbench_2fdispatch_3aShape, ptr @olang_2eanyrender_2etop_2ebench_2fdispatch_3aRect_7cbench_2fdispatch_3aShape, ptr @olang_2eslot_2ebench_2fdispatch_3aRect_7cbench_2fdispatch_3aShape_2e0]
@olang_2etable_2ebench_2fdispatch_3aTri_7cbench_2fdispatch_3aShape = linkonce_odr constant [4 x ptr] [ptr @olang_2etypeid_2ebench_2fdispatch_3aTri, ptr @olang_2eanyrender_2ebench_2fdispatch_3aTri_7cbench_2fdispatch_3aShape, ptr @olang_2eanyrender_2etop_2ebench_2fdispatch_3aTri_7cbench_2fdispatch_3aShape, ptr @olang_2eslot_2ebench_2fdispatch_3aTri_7cbench_2fdispatch_3aShape_2e0]
@.d14 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"direct" }>, align 8
@.d15 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"io.Error.Partial" }>, align 8
@.d16 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d17 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d18 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d19 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"io.Error.Partial" }>, align 8
@.d20 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d21 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@__olang_argc = external global i32
@__olang_argv = external global ptr
declare void @__olang_thread_init()
declare void @__olang_prog_end()
@stderr = external global ptr
@.c22 = private unnamed_addr constant [17 x i8] c"unhandled error\0A\00"
@.c23 = private unnamed_addr constant [29 x i8] c"unhandled error: Usage.Args\0A\00"
@.c24 = private unnamed_addr constant [29 x i8] c"unhandled error: Usage.Mode\0A\00"
@.c25 = private unnamed_addr constant [34 x i8] c"unhandled error: io.Error.Failed\0A\00"
@.c26 = private unnamed_addr constant [35 x i8] c"unhandled error: io.Error.Partial\0A\00"
@.c27 = private unnamed_addr constant [35 x i8] c"unhandled error: ParseError.Empty\0A\00"
@.c28 = private unnamed_addr constant [37 x i8] c"unhandled error: ParseError.Invalid\0A\00"
@.c29 = private unnamed_addr constant [38 x i8] c"unhandled error: ParseError.Overflow\0A\00"
declare i32 @fputs(ptr, ptr)
declare void @__olang_debug_hint(ptr)
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
define internal i1 @olang_lambda_30(ptr %env, i64 %a0, i64 %a1) #0 {
entry:
  %l3 = alloca { i64, ptr }
  %l4 = alloca i1
  %l6 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l12 = alloca i1
  %rv = alloca i1
  %cp0 = getelementptr { { ptr, ptr }, { i64, ptr }, ptr, ptr }, ptr %env, i32 0, i32 0
  %cv0 = load { ptr, ptr }, ptr %cp0, !tbaa !28
  %cp1 = getelementptr { { ptr, ptr }, { i64, ptr }, ptr, ptr }, ptr %env, i32 0, i32 1
  %cv1 = load { i64, ptr }, ptr %cp1, !tbaa !28
  store { i64, ptr } %cv1, ptr %l3
  %vq0 = getelementptr { { ptr, ptr }, { i64, ptr }, ptr, ptr }, ptr %env, i32 0, i32 2
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  %vq1 = getelementptr { { ptr, ptr }, { i64, ptr }, ptr, ptr }, ptr %env, i32 0, i32 3
  %vr1 = load ptr, ptr %vq1, !tbaa !28
  %vc1 = call ptr @__olang_capture_scope(ptr %vr1)
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t2, ptr %l6, !tbaa !27
  %t5 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t6 = load ptr, ptr %t5, !tbaa !27
  %t7 = getelementptr { i64, ptr }, ptr %t6, i64 %a0
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !37
  %t9 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t9, ptr %l9, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %t13, i64 %a1
  %t15 = load { i64, ptr }, ptr %t14, !tbaa !37
  %t17 = extractvalue { ptr, ptr } %cv0, 0
  %t18 = extractvalue { ptr, ptr } %cv0, 1
  %t21 = call i1 %t17(ptr %t18, ptr %vc1, ptr %vc1, { i64, ptr } %t8, { i64, ptr } %t15)
  store i1 %t21, ptr %l12
  br label %bb1
bb1:
  %t22 = load i1, ptr %l12, !tbaa !21
  store i1 %t22, ptr %l4, !tbaa !21
  br label %bb2
bb2:
  %t23 = load i1, ptr %l4, !tbaa !21
  store i1 %t23, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
declare ptr @__olang_region_make(ptr) noinline
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
declare void @__olang_region_release(ptr) noinline
@__olang_empty_array = external constant [16 x i64]
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
declare ptr @__olang_sb_grow(ptr, i64) noinline
declare noalias ptr @__olang_scope_alloc_slow(ptr, i64, i64) noinline
@olang_2etypeid_2ebench_2fdispatch_3aSq = linkonce_odr constant i8 0
define linkonce_odr void @olang_2eanyrender_2ebench_2fdispatch_3aSq_7cbench_2fdispatch_3aShape(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  br label %start
start:
  br label %bb0
bb0:
  call void @olang_2emir_2eHelperKind_2eRender_2ebench_2fdispatch_3aSq(ptr %v0, ptr %a0, i64 %a1)
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

define linkonce_odr void @olang_2eanyrender_2etop_2ebench_2fdispatch_3aSq_7cbench_2fdispatch_3aShape(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l2 = alloca %"bench/dispatch:Sq"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"bench/dispatch:Sq", ptr %a0
  store %"bench/dispatch:Sq" %t2, ptr %l2
  call void @olang_2emir_2eHelperKind_2eRender_2ebench_2fdispatch_3aSq(ptr %v0, ptr %l2, i64 %a1)
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

@olang_2etypeid_2ebench_2fdispatch_3aRect = linkonce_odr constant i8 0
define linkonce_odr void @olang_2eanyrender_2ebench_2fdispatch_3aRect_7cbench_2fdispatch_3aShape(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  br label %start
start:
  br label %bb0
bb0:
  call void @olang_2emir_2eHelperKind_2eRender_2ebench_2fdispatch_3aRect(ptr %v0, ptr %a0, i64 %a1)
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

define linkonce_odr void @olang_2eanyrender_2etop_2ebench_2fdispatch_3aRect_7cbench_2fdispatch_3aShape(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l2 = alloca %"bench/dispatch:Rect"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"bench/dispatch:Rect", ptr %a0
  store %"bench/dispatch:Rect" %t2, ptr %l2
  call void @olang_2emir_2eHelperKind_2eRender_2ebench_2fdispatch_3aRect(ptr %v0, ptr %l2, i64 %a1)
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

@olang_2etypeid_2ebench_2fdispatch_3aTri = linkonce_odr constant i8 0
define linkonce_odr void @olang_2eanyrender_2ebench_2fdispatch_3aTri_7cbench_2fdispatch_3aShape(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  br label %start
start:
  br label %bb0
bb0:
  call void @olang_2emir_2eHelperKind_2eRender_2ebench_2fdispatch_3aTri(ptr %v0, ptr %a0, i64 %a1)
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

define linkonce_odr void @olang_2eanyrender_2etop_2ebench_2fdispatch_3aTri_7cbench_2fdispatch_3aShape(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l2 = alloca %"bench/dispatch:Tri"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"bench/dispatch:Tri", ptr %a0
  store %"bench/dispatch:Tri" %t2, ptr %l2
  call void @olang_2emir_2eHelperKind_2eRender_2ebench_2fdispatch_3aTri(ptr %v0, ptr %l2, i64 %a1)
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

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
define linkonce_odr void @olang_2emir_2eHelperKind_2eRender_2ebench_2fdispatch_3aSq(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l1 = alloca i64
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d31, i32 0, i32 1) }, 1
  %t2 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d31, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t1, i64 %t2)
  %t3 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d32, i32 0, i32 1) }, 1
  %t4 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d32, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t3, i64 %t4)
  %t6 = getelementptr %"bench/dispatch:Sq", ptr %a0, i32 0, i32 0
  %t7 = load i64, ptr %t6, !tbaa !24
  %t9 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t10 = call i64 @__olang_fmt_i64(ptr %t9, i64 %t7)
  call void @__olang_sb_add(ptr %v0, i64 %t10)
  %t11 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d33, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d33, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t11, i64 %t12)
  br label %ret
ret:
  ret void
}

define linkonce_odr void @olang_2emir_2eHelperKind_2eRender_2ebench_2fdispatch_3aRect(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t2 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t1, i64 %t2)
  %t3 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d32, i32 0, i32 1) }, 1
  %t4 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d32, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t3, i64 %t4)
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"bench/dispatch:Rect", ptr %t5, i32 0, i32 0
  %t7 = load i64, ptr %t6, !tbaa !24
  %t9 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t10 = call i64 @__olang_fmt_i64(ptr %t9, i64 %t7)
  call void @__olang_sb_add(ptr %v0, i64 %t10)
  %t11 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d35, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t11, i64 %t12)
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"bench/dispatch:Rect", ptr %t13, i32 0, i32 1
  %t15 = load i64, ptr %t14, !tbaa !24
  %t17 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t18 = call i64 @__olang_fmt_i64(ptr %t17, i64 %t15)
  call void @__olang_sb_add(ptr %v0, i64 %t18)
  %t19 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d33, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d33, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t19, i64 %t20)
  br label %ret
ret:
  ret void
}

define linkonce_odr void @olang_2emir_2eHelperKind_2eRender_2ebench_2fdispatch_3aTri(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d36, i32 0, i32 1) }, 1
  %t2 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d36, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t1, i64 %t2)
  %t3 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d32, i32 0, i32 1) }, 1
  %t4 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d32, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t3, i64 %t4)
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"bench/dispatch:Tri", ptr %t5, i32 0, i32 0
  %t7 = load i64, ptr %t6, !tbaa !24
  %t9 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t10 = call i64 @__olang_fmt_i64(ptr %t9, i64 %t7)
  call void @__olang_sb_add(ptr %v0, i64 %t10)
  %t11 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d35, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t11, i64 %t12)
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"bench/dispatch:Tri", ptr %t13, i32 0, i32 1
  %t15 = load i64, ptr %t14, !tbaa !24
  %t17 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t18 = call i64 @__olang_fmt_i64(ptr %t17, i64 %t15)
  call void @__olang_sb_add(ptr %v0, i64 %t18)
  %t19 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d33, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d33, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t19, i64 %t20)
  br label %ret
ret:
  ret void
}

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
@.d31 = private unnamed_addr constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"Sq" }>, align 8
@.d32 = private unnamed_addr constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d33 = private unnamed_addr constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d34 = private unnamed_addr constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Rect" }>, align 8
@.d35 = private unnamed_addr constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d36 = private unnamed_addr constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Tri" }>, align 8
declare ptr @__olang_scope_mine_slow(ptr) noinline
@olang_loc_712488d9fdf30423_ba5c85e1c4a8e8e7 = external constant [0 x i8]
declare { i64, ptr } @std_2fos_2eArgs(ptr %v0)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v0, { i64, ptr } %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @std_2fio_2ePrint(ptr %v0, { i64, ptr } %a0)
@G_2estd_2fprelude_2farray_2esortRun = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\18\00\00\00\00\00\00\00" }>, align 8
@G_2estd_2fprelude_2farray_2esortBlock = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\30\00\00\00\00\00\00" }>, align 8
@olang_loc_f5954356a94cfd1d_57c8a908dd11d469 = external constant [0 x i8]
@olang_loc_bd57bfee552aaf80_4db8901b79077054 = external constant [0 x i8]
@olang_loc_32b4dd57063daccc_20299270f57c1810 = external constant [0 x i8]
@olang_loc_6124bee271ea27df_40001a175be242b = external constant [0 x i8]
@olang_loc_b4b3d3a21dffee1a_94412941cff469ee = external constant [0 x i8]
@olang_loc_4c80127648ba5d2e_65bcf202b125bf62 = external constant [0 x i8]
@olang_loc_cca13ff5ed90f929_d2af70a5a814cefd = external constant [0 x i8]
@olang_loc_f0537daede74ae5c_16d335b1da8e21d0 = external constant [0 x i8]
@olang_loc_4343f73b4c1e0c95_5a06fb94c0f3fba1 = external constant [0 x i8]
@olang_loc_16e49da871bdbd07_2fa55ac314c9acc3 = external constant [0 x i8]
@olang_loc_43e17f19b0d3b612_8895de2acd6308ce = external constant [0 x i8]
@olang_loc_2b74eca9fa84e7cc_74ba8daf8eae3030 = external constant [0 x i8]
@olang_loc_ba2e226d436bf457_eff83f34ebe9f533 = external constant [0 x i8]
@olang_loc_9ad4dc9aaf8b67a2_8ee0591503ab9ffe = external constant [0 x i8]
@olang_loc_fb4ec6ffd905bcde_cc27e5c42f7f6182 = external constant [0 x i8]
@olang_loc_98322877b323543a_c315b51d8b07b39e = external constant [0 x i8]

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
