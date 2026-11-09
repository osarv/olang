source_filename = "bench_vec.main.quick.ll"
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
%"bench/vec:SimA" = type { { i64, ptr }, { i64, ptr } }
%"bench/vec:SimV" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/list:List.6ce2052386e1f5dfc75915f9e44d8f1b" = type { ptr }
%"std/list:listState.9783095779ea18337775adeb6569839d" = type { { i64, ptr }, { i64, ptr }, i64, i64, { i64, ptr }, i64, i64, i64 }
@G_2ebench_2fvec_2eOpaque = global { ptr, ptr } zeroinitializer
define dso_local void @bench_2fvec_2eOpaque_2einit() #0 {
entry:
  %s0 = alloca %olang.scope
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = insertvalue { ptr, ptr } undef, ptr @bench_2fvec_2etwice_fv_fn_28I64_29_20I64, 0
  %t2 = insertvalue { ptr, ptr } %t1, ptr null, 1
  store { ptr, ptr } %t2, ptr @G_2ebench_2fvec_2eOpaque
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @bench_2fvec_2ebench_2fvec_3aSimA_2estep(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l13 = alloca i64
  %l16 = alloca i64
  %l35 = alloca { i64, ptr }
  %l36 = alloca i64
  %l39 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l1, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"bench/vec:SimA", ptr %t1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  store i64 %t6, ptr %l2, !tbaa !24
  store i64 1, ptr %l3, !tbaa !24
  %t8 = load i64, ptr %l2, !tbaa !24
  %t9 = load i64, ptr %l1, !tbaa !24
  %t12 = icmp sgt i64 %t8, %t9
  br i1 %t12, label %bb1, label %bb2
bb1:
  %t14 = load i64, ptr %l3, !tbaa !24
  %t16 = icmp sgt i64 %t14, 0
  br i1 %t16, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l13, !tbaa !24
  br label %bb6
bb3:
  %t18 = load i64, ptr %l2, !tbaa !24
  %t19 = load i64, ptr %l1, !tbaa !24
  %t22 = sub i64 %t18, %t19
  %t23 = load i64, ptr %l3, !tbaa !24
  %t26 = add i64 %t22, %t23
  %t28 = sub i64 %t26, 1
  %t29 = load i64, ptr %l3, !tbaa !24
  %t32 = sdiv i64 %t28, %t29
  store i64 %t32, ptr %l16, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l16, !tbaa !24
  br label %bb5
bb5:
  %t34 = load i64, ptr %l16, !tbaa !24
  store i64 %t34, ptr %l13, !tbaa !24
  br label %bb6
bb6:
  %t35 = load i64, ptr %l13, !tbaa !24
  store i64 %t35, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb7
bb7:
  %t36 = load i64, ptr %l5, !tbaa !24
  %t37 = load i64, ptr %l4, !tbaa !24
  %t40 = icmp slt i64 %t36, %t37
  %t42 = xor i1 %t40, true
  br i1 %t42, label %bb8, label %bb9
bb8:
  br label %bb12
bb9:
  br label %bb10
bb10:
  %t44 = load i64, ptr %l1, !tbaa !24
  %t45 = load i64, ptr %l5, !tbaa !24
  %t46 = load i64, ptr %l3, !tbaa !24
  %t49 = mul i64 %t45, %t46
  %t52 = add i64 %t44, %t49
  store i64 %t52, ptr %l6, !tbaa !24
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"bench/vec:SimA", ptr %t54, i32 0, i32 0
  %t57 = load { i64, ptr }, ptr %t56, !tbaa !27
  store { i64, ptr } %t57, ptr %l35, !tbaa !27
  %t58 = load i64, ptr %l6, !tbaa !24
  store i64 %t58, ptr %l36, !tbaa !24
  %t59 = load i64, ptr %l36, !tbaa !24
  %t60 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !27
  %t62 = getelementptr i64, ptr %t61, i64 %t59
  %t63 = load i64, ptr %t62, !tbaa !34
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"bench/vec:SimA", ptr %t64, i32 0, i32 1
  %t67 = load { i64, ptr }, ptr %t66, !tbaa !27
  store { i64, ptr } %t67, ptr %l39, !tbaa !27
  %t68 = load i64, ptr %l6, !tbaa !24
  %t70 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !27
  %t72 = getelementptr i64, ptr %t71, i64 %t68
  %t73 = load i64, ptr %t72, !tbaa !34
  %t76 = add i64 %t63, %t73
  %t78 = load i64, ptr %l36, !tbaa !24
  %t79 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !27
  %t81 = getelementptr i64, ptr %t80, i64 %t78
  store i64 %t76, ptr %t81, !tbaa !34
  br label %bb11
bb11:
  %t82 = load i64, ptr %l5, !tbaa !24
  %t84 = add i64 %t82, 1
  store i64 %t84, ptr %l5, !tbaa !24
  br label %bb7
bb12:
  br label %ret
ret:
  ret void
}

define dso_local void @bench_2fvec_2ebench_2fvec_3aSimV_2estep(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l12 = alloca i64
  %l16 = alloca i64
  %l19 = alloca i64
  %l41 = alloca i64
  %l45 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l1, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"bench/vec:SimV", ptr %t1, i32 0, i32 0
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l12
  br label %bb1
bb1:
  %t6 = load i64, ptr %l12, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  store i64 1, ptr %l3, !tbaa !24
  %t7 = load i64, ptr %l2, !tbaa !24
  %t8 = load i64, ptr %l1, !tbaa !24
  %t11 = icmp sgt i64 %t7, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load i64, ptr %l3, !tbaa !24
  %t15 = icmp sgt i64 %t13, 0
  br i1 %t15, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l16, !tbaa !24
  br label %bb7
bb4:
  %t17 = load i64, ptr %l2, !tbaa !24
  %t18 = load i64, ptr %l1, !tbaa !24
  %t21 = sub i64 %t17, %t18
  %t22 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t21, %t22
  %t27 = sub i64 %t25, 1
  %t28 = load i64, ptr %l3, !tbaa !24
  %t31 = sdiv i64 %t27, %t28
  store i64 %t31, ptr %l19, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb6
bb6:
  %t33 = load i64, ptr %l19, !tbaa !24
  store i64 %t33, ptr %l16, !tbaa !24
  br label %bb7
bb7:
  %t34 = load i64, ptr %l16, !tbaa !24
  store i64 %t34, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb8
bb8:
  %t35 = load i64, ptr %l5, !tbaa !24
  %t36 = load i64, ptr %l4, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb9, label %bb10
bb9:
  br label %bb16
bb10:
  br label %bb11
bb11:
  %t43 = load i64, ptr %l1, !tbaa !24
  %t44 = load i64, ptr %l5, !tbaa !24
  %t45 = load i64, ptr %l3, !tbaa !24
  %t48 = mul i64 %t44, %t45
  %t51 = add i64 %t43, %t48
  store i64 %t51, ptr %l6, !tbaa !24
  %t53 = load i64, ptr %l6, !tbaa !24
  store i64 %t53, ptr %l7, !tbaa !24
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"bench/vec:SimV", ptr %t55, i32 0, i32 1
  %t58 = load i64, ptr %l6, !tbaa !24
  %t61 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t57, i64 %t58)
  store i64 %t61, ptr %l41
  br label %bb12
bb12:
  %t62 = load i64, ptr %l41, !tbaa !24
  store i64 %t62, ptr %l8, !tbaa !24
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"bench/vec:SimV", ptr %t63, i32 0, i32 0
  %t66 = load i64, ptr %l7, !tbaa !24
  %t69 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t65, i64 %t66)
  store i64 %t69, ptr %l45
  br label %bb13
bb13:
  %t70 = load i64, ptr %l45, !tbaa !24
  store i64 %t70, ptr %l9, !tbaa !24
  %t71 = load i64, ptr %l9, !tbaa !24
  %t72 = load i64, ptr %l8, !tbaa !24
  %t75 = add i64 %t71, %t72
  store i64 %t75, ptr %l9, !tbaa !24
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"bench/vec:SimV", ptr %t77, i32 0, i32 0
  %t80 = load i64, ptr %l7, !tbaa !24
  %t81 = load i64, ptr %l9, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t79, i64 %t80, i64 %t81)
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t85 = load i64, ptr %l5, !tbaa !24
  %t87 = add i64 %t85, 1
  store i64 %t87, ptr %l5, !tbaa !24
  br label %bb8
bb16:
  br label %ret
ret:
  ret void
}

define dso_local i64 @bench_2fvec_2egatherArray(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l14 = alloca i64
  %l17 = alloca i64
  %l36 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
  %rv = alloca i64
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  store i64 0, ptr %l3, !tbaa !24
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
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
  store i64 0, ptr %l14, !tbaa !24
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
  store i64 %t29, ptr %l17, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb5
bb5:
  %t31 = load i64, ptr %l17, !tbaa !24
  store i64 %t31, ptr %l14, !tbaa !24
  br label %bb6
bb6:
  %t32 = load i64, ptr %l14, !tbaa !24
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
  br label %bb12
bb9:
  br label %bb10
bb10:
  %t41 = load i64, ptr %l3, !tbaa !24
  %t42 = load i64, ptr %l7, !tbaa !24
  %t43 = load i64, ptr %l5, !tbaa !24
  %t46 = mul i64 %t42, %t43
  %t49 = add i64 %t41, %t46
  %t51 = load i64, ptr %l2, !tbaa !24
  store { i64, ptr } %a0, ptr %l36, !tbaa !27
  %t53 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t53, ptr %l37, !tbaa !27
  %t56 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !27
  %t58 = getelementptr i64, ptr %t57, i64 %t49
  %t59 = load i64, ptr %t58, !tbaa !34
  %t61 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !27
  %t63 = getelementptr i64, ptr %t62, i64 %t59
  %t64 = load i64, ptr %t63, !tbaa !34
  %t67 = add i64 %t51, %t64
  store i64 %t67, ptr %l2, !tbaa !24
  br label %bb11
bb11:
  %t69 = load i64, ptr %l7, !tbaa !24
  %t71 = add i64 %t69, 1
  store i64 %t71, ptr %l7, !tbaa !24
  br label %bb7
bb12:
  %t73 = load i64, ptr %l2, !tbaa !24
  store i64 %t73, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @bench_2fvec_2egatherList(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l14 = alloca i64
  %l17 = alloca i64
  %l35 = alloca i64
  %l37 = alloca { i64, ptr }
  %l40 = alloca i64
  %rv = alloca i64
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  store i64 0, ptr %l3, !tbaa !24
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
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
  store i64 0, ptr %l14, !tbaa !24
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
  store i64 %t29, ptr %l17, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb5
bb5:
  %t31 = load i64, ptr %l17, !tbaa !24
  store i64 %t31, ptr %l14, !tbaa !24
  br label %bb6
bb6:
  %t32 = load i64, ptr %l14, !tbaa !24
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
  br label %bb13
bb9:
  br label %bb10
bb10:
  %t41 = load i64, ptr %l3, !tbaa !24
  %t42 = load i64, ptr %l7, !tbaa !24
  %t43 = load i64, ptr %l5, !tbaa !24
  %t46 = mul i64 %t42, %t43
  %t49 = add i64 %t41, %t46
  %t51 = load i64, ptr %l2, !tbaa !24
  store i64 %t51, ptr %l35, !tbaa !24
  %t53 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t53, ptr %l37, !tbaa !27
  %t56 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !27
  %t58 = getelementptr i64, ptr %t57, i64 %t49
  %t59 = load i64, ptr %t58, !tbaa !34
  %t62 = call i64 @std_2flist_2estd_2flist_3aList_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %t59)
  store i64 %t62, ptr %l40
  br label %bb11
bb11:
  %t63 = load i64, ptr %l35, !tbaa !24
  %t64 = load i64, ptr %l40, !tbaa !24
  %t65 = add i64 %t63, %t64
  store i64 %t65, ptr %l2, !tbaa !24
  br label %bb12
bb12:
  %t67 = load i64, ptr %l7, !tbaa !24
  %t69 = add i64 %t67, 1
  store i64 %t69, ptr %l7, !tbaa !24
  br label %bb7
bb13:
  %t71 = load i64, ptr %l2, !tbaa !24
  store i64 %t71, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @bench_2fvec_2egatherVec(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l14 = alloca i64
  %l17 = alloca i64
  %l35 = alloca i64
  %l37 = alloca { i64, ptr }
  %l40 = alloca i64
  %rv = alloca i64
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  store i64 0, ptr %l3, !tbaa !24
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
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
  store i64 0, ptr %l14, !tbaa !24
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
  store i64 %t29, ptr %l17, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb5
bb5:
  %t31 = load i64, ptr %l17, !tbaa !24
  store i64 %t31, ptr %l14, !tbaa !24
  br label %bb6
bb6:
  %t32 = load i64, ptr %l14, !tbaa !24
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
  br label %bb13
bb9:
  br label %bb10
bb10:
  %t41 = load i64, ptr %l3, !tbaa !24
  %t42 = load i64, ptr %l7, !tbaa !24
  %t43 = load i64, ptr %l5, !tbaa !24
  %t46 = mul i64 %t42, %t43
  %t49 = add i64 %t41, %t46
  %t51 = load i64, ptr %l2, !tbaa !24
  store i64 %t51, ptr %l35, !tbaa !24
  %t53 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t53, ptr %l37, !tbaa !27
  %t56 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !27
  %t58 = getelementptr i64, ptr %t57, i64 %t49
  %t59 = load i64, ptr %t58, !tbaa !34
  %t62 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %t59)
  store i64 %t62, ptr %l40
  br label %bb11
bb11:
  %t63 = load i64, ptr %l35, !tbaa !24
  %t64 = load i64, ptr %l40, !tbaa !24
  %t65 = add i64 %t63, %t64
  store i64 %t65, ptr %l2, !tbaa !24
  br label %bb12
bb12:
  %t67 = load i64, ptr %l7, !tbaa !24
  %t69 = add i64 %t67, 1
  store i64 %t69, ptr %l7, !tbaa !24
  br label %bb7
bb13:
  %t71 = load i64, ptr %l2, !tbaa !24
  store i64 %t71, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i32 @bench_2fvec_2emain() #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/list:List.6ce2052386e1f5dfc75915f9e44d8f1b"
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca %"bench/vec:SimV"
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca ptr
  %l24 = alloca i64
  %l26 = alloca %"bench/vec:SimA"
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i64
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca i64
  %l39 = alloca { i64, ptr }
  %l40 = alloca i64
  %l41 = alloca i64
  %l43 = alloca i64
  %l44 = alloca i64
  %l45 = alloca i64
  %l46 = alloca i64
  %l47 = alloca i64
  %l49 = alloca i64
  %l50 = alloca i64
  %l51 = alloca i64
  %l52 = alloca i64
  %l53 = alloca i64
  %l55 = alloca i64
  %l56 = alloca i64
  %l57 = alloca i64
  %l58 = alloca i64
  %l59 = alloca i64
  %l60 = alloca i64
  %l61 = alloca i64
  %l62 = alloca i64
  %l63 = alloca i64
  %l64 = alloca i64
  %l65 = alloca i64
  %l66 = alloca i64
  %l67 = alloca { i64, ptr }
  %l71 = alloca i32
  %l75 = alloca { i64, ptr }
  %l77 = alloca { i64, ptr }
  %l79 = alloca { i64, ptr }
  %l81 = alloca i64
  %l82 = alloca { i64, ptr }
  %l83 = alloca { i64, ptr }
  %l84 = alloca i64
  %l85 = alloca i32
  %l86 = alloca i32
  %l90 = alloca { i64, ptr }
  %l92 = alloca i64
  %l93 = alloca i32
  %l94 = alloca i32
  %l98 = alloca { i64, ptr }
  %l100 = alloca i64
  %l101 = alloca { i64, ptr }
  %l102 = alloca { i64, ptr }
  %l103 = alloca i64
  %l104 = alloca i32
  %l105 = alloca i32
  %l109 = alloca { i64, ptr }
  %l111 = alloca i64
  %l112 = alloca i32
  %l113 = alloca i32
  %l117 = alloca { i64, ptr }
  %l120 = alloca i1
  %l121 = alloca i1
  %l123 = alloca i1
  %l124 = alloca i1
  %l126 = alloca i1
  %l128 = alloca i32
  %l132 = alloca { i64, ptr }
  %l135 = alloca { i64, ptr }
  %l136 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l137 = alloca %"std/list:List.6ce2052386e1f5dfc75915f9e44d8f1b"
  %l139 = alloca i1
  %l141 = alloca i1
  %l143 = alloca i1
  %l146 = alloca i1
  %l150 = alloca i1
  %l154 = alloca i1
  %l156 = alloca i1
  %l157 = alloca i64
  %l160 = alloca i64
  %l162 = alloca i1
  %l163 = alloca i64
  %l166 = alloca i64
  %l169 = alloca i64
  %l171 = alloca i1
  %l176 = alloca { i64, ptr }
  %l178 = alloca i1
  %l179 = alloca i64
  %l182 = alloca i64
  %l184 = alloca i1
  %l185 = alloca i64
  %l188 = alloca i64
  %l191 = alloca i64
  %l193 = alloca i1
  %l195 = alloca i1
  %l196 = alloca i64
  %l199 = alloca i64
  %l201 = alloca i1
  %l202 = alloca i64
  %l205 = alloca i64
  %l208 = alloca i64
  %l210 = alloca i1
  %l212 = alloca i1
  %l214 = alloca %"bench/vec:SimV"
  %l221 = alloca i64
  %l224 = alloca i64
  %l250 = alloca i64
  %l253 = alloca i64
  %l275 = alloca i64
  %l277 = alloca i64
  %l282 = alloca i64
  %l289 = alloca %"bench/vec:SimA"
  %l294 = alloca i64
  %l297 = alloca i64
  %l315 = alloca { i64, ptr }
  %l319 = alloca { i64, ptr }
  %l328 = alloca i64
  %l331 = alloca i64
  %l359 = alloca { i64, ptr }
  %l368 = alloca i1
  %l370 = alloca i1
  %l375 = alloca i64
  %l378 = alloca i64
  %l402 = alloca i64
  %l406 = alloca i64
  %l412 = alloca i64
  %l415 = alloca i64
  %l439 = alloca i64
  %l443 = alloca i64
  %l446 = alloca i1
  %l448 = alloca i1
  %l449 = alloca i64
  %l452 = alloca i64
  %l455 = alloca i64
  %l457 = alloca i1
  %l459 = alloca i1
  %l466 = alloca i64
  %l469 = alloca i64
  %l487 = alloca i64
  %l490 = alloca i64
  %l503 = alloca i64
  %l506 = alloca i64
  %l533 = alloca i32
  %l537 = alloca { i64, ptr }
  %l542 = alloca i32
  %l543 = alloca i32
  %l547 = alloca { i64, ptr }
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
  %s8 = alloca %olang.builder
  %s8room = alloca [64 x i8], align 8
  %s9 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %s29 = alloca %olang.scope
  %s39 = alloca %olang.scope
  %s40 = alloca %olang.scope
  %s49 = alloca %olang.scope
  %s50 = alloca %olang.scope
  %s51 = alloca %olang.scope
  %s52 = alloca %olang.scope
  %s53 = alloca %olang.scope
  %s57 = alloca %olang.scope
  %s62 = alloca %olang.builder
  %s62room = alloca [64 x i8], align 8
  %s64 = alloca %olang.builder
  %s64room = alloca [64 x i8], align 8
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call { i64, ptr } @std_2fos_2eArgs(ptr %s0)
  store { i64, ptr } %t1, ptr %l67
  br label %bb1
bb1:
  %t2 = load { i64, ptr }, ptr %l67, !tbaa !27
  store { i64, ptr } %t2, ptr %l0, !tbaa !27
  %t3 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  %t7 = icmp slt i64 %t5, 5
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i32 65536, ptr %l71, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  %t9 = load i32, ptr %l71, !tbaa !23
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
  store { i64, ptr } %t32, ptr %l75, !tbaa !27
  %t33 = getelementptr %olang.builder, ptr %s2, i32 0, i32 3
  %t34 = load ptr, ptr %t33
  %t35 = icmp ne ptr %t34, null
  br i1 %t35, label %sbgrew.36, label %sbdone.37
sbgrew.36:
  call void @__olang_sb_done(ptr %s2)
  br label %sbdone.37
sbdone.37:
  %t38 = load { i64, ptr }, ptr %l75, !tbaa !27
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
  %t51 = load i32, ptr %l71, !tbaa !23
  store i32 %t51, ptr %rv
  br label %ret
bb6:
  %t52 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t52, ptr %l77, !tbaa !27
  %t53 = getelementptr { i64, ptr }, ptr %l77, i32 0, i32 1
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
  store { i64, ptr } %t62, ptr %l2, !tbaa !27
  %t64 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t64, ptr %l82, !tbaa !27
  %t65 = getelementptr { i64, ptr }, ptr %l82, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !27
  %t67 = getelementptr { i64, ptr }, ptr %t66, i64 3
  %t68 = load { i64, ptr }, ptr %t67, !tbaa !37
  store { i64, ptr } %t68, ptr %l83, !tbaa !27
  %t69 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s0, i64 10)
  %t70 = extractvalue { i32, i64 } %t69, 1
  %t71 = extractvalue { i32, i64 } %t69, 0
  store i32 %t71, ptr %l85
  %t72 = icmp ne i32 %t71, 0
  br i1 %t72, label %bb8, label %ok.73, !prof !99
ok.73:
  store i64 %t70, ptr %l84
  br label %bb7
bb7:
  %t74 = load { i64, ptr }, ptr %l83, !tbaa !27
  %t75 = load i64, ptr %l84, !tbaa !24
  %t76 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %s0, { i64, ptr } %t74, i64 %t75)
  %t77 = extractvalue { i32, i64 } %t76, 1
  %t78 = extractvalue { i32, i64 } %t76, 0
  store i32 %t78, ptr %l93
  %t79 = icmp ne i32 %t78, 0
  br i1 %t79, label %bb12, label %ok.80, !prof !99
ok.80:
  store i64 %t77, ptr %l92
  br label %bb11
bb8:
  %t81 = load i32, ptr %l85, !tbaa !23
  %t82 = lshr i32 %t81, 16
  %t83 = and i32 %t81, 65535
  %t84 = icmp eq i32 %t82, 1
  %t85 = select i1 %t84, i32 0, i32 0
  %t86 = icmp eq i32 %t81, 0
  %t87 = shl i32 %t85, 16
  %t88 = or i32 %t87, %t83
  %t89 = select i1 %t86, i32 0, i32 %t88
  store i32 %t89, ptr %l86, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  %t90 = load i32, ptr %l86, !tbaa !23
  %t91 = icmp eq i32 %t90, 131073
  br i1 %t91, label %bb9, label %bb10
bb9:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s3
  store ptr %s3room, ptr %s3
  %t93 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t94 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s3, ptr %t93, i64 %t94)
  %t95 = call ptr @__olang_errpay_top_get()
  %t96 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t97 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s3, ptr %t96, i64 %t97)
  %t99 = getelementptr { i64, [1 x i64] }, ptr %t95, i32 0, i32 1
  %t100 = getelementptr { i64 }, ptr %t99, i32 0, i32 0
  %t101 = load i64, ptr %t100
  %t103 = call ptr @__olang_sb_room(ptr %s3, i64 24)
  %t104 = call i64 @__olang_fmt_i64(ptr %t103, i64 %t101)
  call void @__olang_sb_add(ptr %s3, i64 %t104)
  %t105 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t106 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s3, ptr %t105, i64 %t106)
  %t107 = load ptr, ptr %s3
  %t108 = getelementptr %olang.builder, ptr %s3, i32 0, i32 1
  %t109 = load i64, ptr %t108
  %t110 = load ptr, ptr @__olang_prog_scope
  %t111 = call ptr @__olang_scope_alloc(ptr %t110, i64 %t109)
  call void @olang_textcopy(ptr %t111, ptr %t107, i64 %t109)
  %t112 = insertvalue { i64, ptr } undef, i64 %t109, 0
  %t113 = insertvalue { i64, ptr } %t112, ptr %t111, 1
  store { i64, ptr } %t113, ptr %l90, !tbaa !27
  %t114 = getelementptr %olang.builder, ptr %s3, i32 0, i32 3
  %t115 = load ptr, ptr %t114
  %t116 = icmp ne ptr %t115, null
  br i1 %t116, label %sbgrew.117, label %sbdone.118
sbgrew.117:
  call void @__olang_sb_done(ptr %s3)
  br label %sbdone.118
sbdone.118:
  %t119 = load { i64, ptr }, ptr %l90, !tbaa !27
  %t120 = load ptr, ptr @__olang_prog_scope
  %t121 = extractvalue { i64, ptr } %t119, 0
  %t122 = extractvalue { i64, ptr } %t119, 1
  %t123 = mul i64 %t121, 1
  %t124 = call ptr @__olang_scope_alloc(ptr %t120, i64 %t123)
  call void @llvm.memcpy.p0.p0.i64(ptr %t124, ptr %t122, i64 %t123, i1 false)
  %t125 = insertvalue { i64, ptr } undef, i64 %t121, 0
  %t126 = insertvalue { i64, ptr } %t125, ptr %t124, 1
  %t128 = extractvalue { i64, ptr } %t126, 1
  %t129 = extractvalue { i64, ptr } %t126, 0
  %t130 = insertvalue { i64, ptr } undef, i64 %t129, 0
  %t131 = insertvalue { i64, ptr } %t130, ptr %t128, 1
  call void @__olang_unhandled_text({ i64, ptr } %t131, i1 false)
  unreachable
bb10:
  %t132 = load i32, ptr %l86, !tbaa !23
  store i32 %t132, ptr %rv
  br label %ret
bb11:
  %t133 = load i64, ptr %l92, !tbaa !24
  store i64 %t133, ptr %l81, !tbaa !24
  br label %bb15
bb12:
  %t134 = load i32, ptr %l93, !tbaa !23
  %t135 = lshr i32 %t134, 16
  %t136 = and i32 %t134, 65535
  %t137 = icmp eq i32 %t135, 1
  %t138 = select i1 %t137, i32 3, i32 0
  %t139 = icmp eq i32 %t134, 0
  %t140 = shl i32 %t138, 16
  %t141 = or i32 %t140, %t136
  %t142 = select i1 %t139, i32 0, i32 %t141
  store i32 %t142, ptr %l94, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  %t143 = load i32, ptr %l94, !tbaa !23
  %t144 = icmp eq i32 %t143, 131073
  br i1 %t144, label %bb13, label %bb14
bb13:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s4
  store ptr %s4room, ptr %s4
  %t146 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t147 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t146, i64 %t147)
  %t148 = call ptr @__olang_errpay_top_get()
  %t149 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t150 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t149, i64 %t150)
  %t152 = getelementptr { i64, [1 x i64] }, ptr %t148, i32 0, i32 1
  %t153 = getelementptr { i64 }, ptr %t152, i32 0, i32 0
  %t154 = load i64, ptr %t153
  %t156 = call ptr @__olang_sb_room(ptr %s4, i64 24)
  %t157 = call i64 @__olang_fmt_i64(ptr %t156, i64 %t154)
  call void @__olang_sb_add(ptr %s4, i64 %t157)
  %t158 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t159 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t158, i64 %t159)
  %t160 = load ptr, ptr %s4
  %t161 = getelementptr %olang.builder, ptr %s4, i32 0, i32 1
  %t162 = load i64, ptr %t161
  %t163 = load ptr, ptr @__olang_prog_scope
  %t164 = call ptr @__olang_scope_alloc(ptr %t163, i64 %t162)
  call void @olang_textcopy(ptr %t164, ptr %t160, i64 %t162)
  %t165 = insertvalue { i64, ptr } undef, i64 %t162, 0
  %t166 = insertvalue { i64, ptr } %t165, ptr %t164, 1
  store { i64, ptr } %t166, ptr %l98, !tbaa !27
  %t167 = getelementptr %olang.builder, ptr %s4, i32 0, i32 3
  %t168 = load ptr, ptr %t167
  %t169 = icmp ne ptr %t168, null
  br i1 %t169, label %sbgrew.170, label %sbdone.171
sbgrew.170:
  call void @__olang_sb_done(ptr %s4)
  br label %sbdone.171
sbdone.171:
  %t172 = load { i64, ptr }, ptr %l98, !tbaa !27
  %t173 = load ptr, ptr @__olang_prog_scope
  %t174 = extractvalue { i64, ptr } %t172, 0
  %t175 = extractvalue { i64, ptr } %t172, 1
  %t176 = mul i64 %t174, 1
  %t177 = call ptr @__olang_scope_alloc(ptr %t173, i64 %t176)
  call void @llvm.memcpy.p0.p0.i64(ptr %t177, ptr %t175, i64 %t176, i1 false)
  %t178 = insertvalue { i64, ptr } undef, i64 %t174, 0
  %t179 = insertvalue { i64, ptr } %t178, ptr %t177, 1
  %t181 = extractvalue { i64, ptr } %t179, 1
  %t182 = extractvalue { i64, ptr } %t179, 0
  %t183 = insertvalue { i64, ptr } undef, i64 %t182, 0
  %t184 = insertvalue { i64, ptr } %t183, ptr %t181, 1
  call void @__olang_unhandled_text({ i64, ptr } %t184, i1 false)
  unreachable
bb14:
  %t185 = load i32, ptr %l94, !tbaa !23
  store i32 %t185, ptr %rv
  br label %ret
bb15:
  %t186 = load i64, ptr %l81, !tbaa !24
  store i64 %t186, ptr %l3, !tbaa !24
  %t187 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t187, ptr %l101, !tbaa !27
  %t188 = getelementptr { i64, ptr }, ptr %l101, i32 0, i32 1
  %t189 = load ptr, ptr %t188, !tbaa !27
  %t190 = getelementptr { i64, ptr }, ptr %t189, i64 4
  %t191 = load { i64, ptr }, ptr %t190, !tbaa !37
  store { i64, ptr } %t191, ptr %l102, !tbaa !27
  %t192 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s0, i64 10)
  %t193 = extractvalue { i32, i64 } %t192, 1
  %t194 = extractvalue { i32, i64 } %t192, 0
  store i32 %t194, ptr %l104
  %t195 = icmp ne i32 %t194, 0
  br i1 %t195, label %bb17, label %ok.196, !prof !99
ok.196:
  store i64 %t193, ptr %l103
  br label %bb16
bb16:
  %t197 = load { i64, ptr }, ptr %l102, !tbaa !27
  %t198 = load i64, ptr %l103, !tbaa !24
  %t199 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %s0, { i64, ptr } %t197, i64 %t198)
  %t200 = extractvalue { i32, i64 } %t199, 1
  %t201 = extractvalue { i32, i64 } %t199, 0
  store i32 %t201, ptr %l112
  %t202 = icmp ne i32 %t201, 0
  br i1 %t202, label %bb21, label %ok.203, !prof !99
ok.203:
  store i64 %t200, ptr %l111
  br label %bb20
bb17:
  %t204 = load i32, ptr %l104, !tbaa !23
  %t205 = lshr i32 %t204, 16
  %t206 = and i32 %t204, 65535
  %t207 = icmp eq i32 %t205, 1
  %t208 = select i1 %t207, i32 0, i32 0
  %t209 = icmp eq i32 %t204, 0
  %t210 = shl i32 %t208, 16
  %t211 = or i32 %t210, %t206
  %t212 = select i1 %t209, i32 0, i32 %t211
  store i32 %t212, ptr %l105, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  %t213 = load i32, ptr %l105, !tbaa !23
  %t214 = icmp eq i32 %t213, 131073
  br i1 %t214, label %bb18, label %bb19
bb18:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s5
  store ptr %s5room, ptr %s5
  %t216 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t217 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t216, i64 %t217)
  %t218 = call ptr @__olang_errpay_top_get()
  %t219 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t220 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t219, i64 %t220)
  %t222 = getelementptr { i64, [1 x i64] }, ptr %t218, i32 0, i32 1
  %t223 = getelementptr { i64 }, ptr %t222, i32 0, i32 0
  %t224 = load i64, ptr %t223
  %t226 = call ptr @__olang_sb_room(ptr %s5, i64 24)
  %t227 = call i64 @__olang_fmt_i64(ptr %t226, i64 %t224)
  call void @__olang_sb_add(ptr %s5, i64 %t227)
  %t228 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t229 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t228, i64 %t229)
  %t230 = load ptr, ptr %s5
  %t231 = getelementptr %olang.builder, ptr %s5, i32 0, i32 1
  %t232 = load i64, ptr %t231
  %t233 = load ptr, ptr @__olang_prog_scope
  %t234 = call ptr @__olang_scope_alloc(ptr %t233, i64 %t232)
  call void @olang_textcopy(ptr %t234, ptr %t230, i64 %t232)
  %t235 = insertvalue { i64, ptr } undef, i64 %t232, 0
  %t236 = insertvalue { i64, ptr } %t235, ptr %t234, 1
  store { i64, ptr } %t236, ptr %l109, !tbaa !27
  %t237 = getelementptr %olang.builder, ptr %s5, i32 0, i32 3
  %t238 = load ptr, ptr %t237
  %t239 = icmp ne ptr %t238, null
  br i1 %t239, label %sbgrew.240, label %sbdone.241
sbgrew.240:
  call void @__olang_sb_done(ptr %s5)
  br label %sbdone.241
sbdone.241:
  %t242 = load { i64, ptr }, ptr %l109, !tbaa !27
  %t243 = load ptr, ptr @__olang_prog_scope
  %t244 = extractvalue { i64, ptr } %t242, 0
  %t245 = extractvalue { i64, ptr } %t242, 1
  %t246 = mul i64 %t244, 1
  %t247 = call ptr @__olang_scope_alloc(ptr %t243, i64 %t246)
  call void @llvm.memcpy.p0.p0.i64(ptr %t247, ptr %t245, i64 %t246, i1 false)
  %t248 = insertvalue { i64, ptr } undef, i64 %t244, 0
  %t249 = insertvalue { i64, ptr } %t248, ptr %t247, 1
  %t251 = extractvalue { i64, ptr } %t249, 1
  %t252 = extractvalue { i64, ptr } %t249, 0
  %t253 = insertvalue { i64, ptr } undef, i64 %t252, 0
  %t254 = insertvalue { i64, ptr } %t253, ptr %t251, 1
  call void @__olang_unhandled_text({ i64, ptr } %t254, i1 false)
  unreachable
bb19:
  %t255 = load i32, ptr %l105, !tbaa !23
  store i32 %t255, ptr %rv
  br label %ret
bb20:
  %t256 = load i64, ptr %l111, !tbaa !24
  store i64 %t256, ptr %l100, !tbaa !24
  br label %bb24
bb21:
  %t257 = load i32, ptr %l112, !tbaa !23
  %t258 = lshr i32 %t257, 16
  %t259 = and i32 %t257, 65535
  %t260 = icmp eq i32 %t258, 1
  %t261 = select i1 %t260, i32 3, i32 0
  %t262 = icmp eq i32 %t257, 0
  %t263 = shl i32 %t261, 16
  %t264 = or i32 %t263, %t259
  %t265 = select i1 %t262, i32 0, i32 %t264
  store i32 %t265, ptr %l113, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  %t266 = load i32, ptr %l113, !tbaa !23
  %t267 = icmp eq i32 %t266, 131073
  br i1 %t267, label %bb22, label %bb23
bb22:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s6
  store ptr %s6room, ptr %s6
  %t269 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t270 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s6, ptr %t269, i64 %t270)
  %t271 = call ptr @__olang_errpay_top_get()
  %t272 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t273 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s6, ptr %t272, i64 %t273)
  %t275 = getelementptr { i64, [1 x i64] }, ptr %t271, i32 0, i32 1
  %t276 = getelementptr { i64 }, ptr %t275, i32 0, i32 0
  %t277 = load i64, ptr %t276
  %t279 = call ptr @__olang_sb_room(ptr %s6, i64 24)
  %t280 = call i64 @__olang_fmt_i64(ptr %t279, i64 %t277)
  call void @__olang_sb_add(ptr %s6, i64 %t280)
  %t281 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t282 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s6, ptr %t281, i64 %t282)
  %t283 = load ptr, ptr %s6
  %t284 = getelementptr %olang.builder, ptr %s6, i32 0, i32 1
  %t285 = load i64, ptr %t284
  %t286 = load ptr, ptr @__olang_prog_scope
  %t287 = call ptr @__olang_scope_alloc(ptr %t286, i64 %t285)
  call void @olang_textcopy(ptr %t287, ptr %t283, i64 %t285)
  %t288 = insertvalue { i64, ptr } undef, i64 %t285, 0
  %t289 = insertvalue { i64, ptr } %t288, ptr %t287, 1
  store { i64, ptr } %t289, ptr %l117, !tbaa !27
  %t290 = getelementptr %olang.builder, ptr %s6, i32 0, i32 3
  %t291 = load ptr, ptr %t290
  %t292 = icmp ne ptr %t291, null
  br i1 %t292, label %sbgrew.293, label %sbdone.294
sbgrew.293:
  call void @__olang_sb_done(ptr %s6)
  br label %sbdone.294
sbdone.294:
  %t295 = load { i64, ptr }, ptr %l117, !tbaa !27
  %t296 = load ptr, ptr @__olang_prog_scope
  %t297 = extractvalue { i64, ptr } %t295, 0
  %t298 = extractvalue { i64, ptr } %t295, 1
  %t299 = mul i64 %t297, 1
  %t300 = call ptr @__olang_scope_alloc(ptr %t296, i64 %t299)
  call void @llvm.memcpy.p0.p0.i64(ptr %t300, ptr %t298, i64 %t299, i1 false)
  %t301 = insertvalue { i64, ptr } undef, i64 %t297, 0
  %t302 = insertvalue { i64, ptr } %t301, ptr %t300, 1
  %t304 = extractvalue { i64, ptr } %t302, 1
  %t305 = extractvalue { i64, ptr } %t302, 0
  %t306 = insertvalue { i64, ptr } undef, i64 %t305, 0
  %t307 = insertvalue { i64, ptr } %t306, ptr %t304, 1
  call void @__olang_unhandled_text({ i64, ptr } %t307, i1 false)
  unreachable
bb23:
  %t308 = load i32, ptr %l113, !tbaa !23
  store i32 %t308, ptr %rv
  br label %ret
bb24:
  %t309 = load i64, ptr %l100, !tbaa !24
  store i64 %t309, ptr %l4, !tbaa !24
  %t310 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t312 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t310, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d12, i32 0, i32 1) })
  store i1 %t312, ptr %l120
  br label %bb25
bb25:
  %t313 = load i1, ptr %l120, !tbaa !21
  br i1 %t313, label %bb26, label %bb27
bb26:
  store i1 true, ptr %l121, !tbaa !21
  br label %bb29
bb27:
  %t314 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t316 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t314, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d13, i32 0, i32 1) })
  store i1 %t316, ptr %l123
  br label %bb28
bb28:
  %t317 = load i1, ptr %l123, !tbaa !21
  store i1 %t317, ptr %l121, !tbaa !21
  br label %bb29
bb29:
  %t318 = load i1, ptr %l121, !tbaa !21
  br i1 %t318, label %bb30, label %bb31
bb30:
  store i1 true, ptr %l124, !tbaa !21
  br label %bb33
bb31:
  %t319 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t321 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t319, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d14, i32 0, i32 1) })
  store i1 %t321, ptr %l126
  br label %bb32
bb32:
  %t322 = load i1, ptr %l126, !tbaa !21
  store i1 %t322, ptr %l124, !tbaa !21
  br label %bb33
bb33:
  %t323 = load i1, ptr %l124, !tbaa !21
  %t324 = xor i1 %t323, true
  br i1 %t324, label %bb34, label %bb35
bb34:
  store i32 65538, ptr %l128, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  %t326 = load i32, ptr %l128, !tbaa !23
  %t327 = icmp eq i32 %t326, 131073
  br i1 %t327, label %bb36, label %bb37
bb35:
  br label %bb38
bb36:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s8
  store ptr %s8room, ptr %s8
  %t329 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t330 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s8, ptr %t329, i64 %t330)
  %t331 = call ptr @__olang_errpay_top_get()
  %t332 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t333 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s8, ptr %t332, i64 %t333)
  %t335 = getelementptr { i64, [1 x i64] }, ptr %t331, i32 0, i32 1
  %t336 = getelementptr { i64 }, ptr %t335, i32 0, i32 0
  %t337 = load i64, ptr %t336
  %t339 = call ptr @__olang_sb_room(ptr %s8, i64 24)
  %t340 = call i64 @__olang_fmt_i64(ptr %t339, i64 %t337)
  call void @__olang_sb_add(ptr %s8, i64 %t340)
  %t341 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t342 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s8, ptr %t341, i64 %t342)
  %t343 = load ptr, ptr %s8
  %t344 = getelementptr %olang.builder, ptr %s8, i32 0, i32 1
  %t345 = load i64, ptr %t344
  %t346 = load ptr, ptr @__olang_prog_scope
  %t347 = call ptr @__olang_scope_alloc(ptr %t346, i64 %t345)
  call void @olang_textcopy(ptr %t347, ptr %t343, i64 %t345)
  %t348 = insertvalue { i64, ptr } undef, i64 %t345, 0
  %t349 = insertvalue { i64, ptr } %t348, ptr %t347, 1
  store { i64, ptr } %t349, ptr %l132, !tbaa !27
  %t350 = getelementptr %olang.builder, ptr %s8, i32 0, i32 3
  %t351 = load ptr, ptr %t350
  %t352 = icmp ne ptr %t351, null
  br i1 %t352, label %sbgrew.353, label %sbdone.354
sbgrew.353:
  call void @__olang_sb_done(ptr %s8)
  br label %sbdone.354
sbdone.354:
  %t355 = load { i64, ptr }, ptr %l132, !tbaa !27
  %t356 = load ptr, ptr @__olang_prog_scope
  %t357 = extractvalue { i64, ptr } %t355, 0
  %t358 = extractvalue { i64, ptr } %t355, 1
  %t359 = mul i64 %t357, 1
  %t360 = call ptr @__olang_scope_alloc(ptr %t356, i64 %t359)
  call void @llvm.memcpy.p0.p0.i64(ptr %t360, ptr %t358, i64 %t359, i1 false)
  %t361 = insertvalue { i64, ptr } undef, i64 %t357, 0
  %t362 = insertvalue { i64, ptr } %t361, ptr %t360, 1
  %t364 = extractvalue { i64, ptr } %t362, 1
  %t365 = extractvalue { i64, ptr } %t362, 0
  %t366 = insertvalue { i64, ptr } undef, i64 %t365, 0
  %t367 = insertvalue { i64, ptr } %t366, ptr %t364, 1
  call void @__olang_unhandled_text({ i64, ptr } %t367, i1 false)
  unreachable
bb37:
  %t368 = load i32, ptr %l128, !tbaa !23
  store i32 %t368, ptr %rv
  br label %ret
bb38:
  %t369 = load i64, ptr %l3, !tbaa !24
  %t371 = call { i64, ptr } @bench_2fvec_2evalues(ptr %s0, i64 %t369)
  store { i64, ptr } %t371, ptr %l135
  br label %bb39
bb39:
  %t372 = load { i64, ptr }, ptr %l135, !tbaa !27
  store { i64, ptr } %t372, ptr %l5, !tbaa !27
  %t373 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t373, ptr %l136
  br label %bb40
bb40:
  %t374 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l136
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t374, ptr %l6
  %t375 = call %"std/list:List.6ce2052386e1f5dfc75915f9e44d8f1b" @std_2flist_3aList_3cI64_3e_2ector(ptr %s0)
  store %"std/list:List.6ce2052386e1f5dfc75915f9e44d8f1b" %t375, ptr %l137
  br label %bb41
bb41:
  %t376 = load %"std/list:List.6ce2052386e1f5dfc75915f9e44d8f1b", ptr %l137
  store %"std/list:List.6ce2052386e1f5dfc75915f9e44d8f1b" %t376, ptr %l7
  %t377 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t379 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t377, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d18, i32 0, i32 1) })
  store i1 %t379, ptr %l139
  br label %bb42
bb42:
  %t380 = load i1, ptr %l139, !tbaa !21
  %t381 = xor i1 %t380, true
  br i1 %t381, label %bb43, label %bb44
bb43:
  %t383 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t385 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t383, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d19, i32 0, i32 1) })
  store i1 %t385, ptr %l143
  br label %bb45
bb44:
  store i1 false, ptr %l141, !tbaa !21
  br label %bb46
bb45:
  %t386 = load i1, ptr %l143, !tbaa !21
  %t387 = xor i1 %t386, true
  store i1 %t387, ptr %l141, !tbaa !21
  br label %bb46
bb46:
  %t389 = load i1, ptr %l141, !tbaa !21
  br i1 %t389, label %bb47, label %bb48
bb47:
  store %olang.scope zeroinitializer, ptr %s9
  %t390 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t392 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s9, { i64, ptr } %t390, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d20, i32 0, i32 1) })
  store i1 %t392, ptr %l146
  br label %bb49
bb48:
  br label %bb59
bb49:
  %t393 = load i1, ptr %l146, !tbaa !21
  br i1 %t393, label %bb50, label %bb51
bb50:
  %t394 = load { i64, ptr }, ptr %l5, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePushAll_3cI64_3e(ptr %s0, ptr %s0, ptr %l6, { i64, ptr } %t394)
  br label %bb52
bb51:
  br label %bb53
bb52:
  br label %bb53
bb53:
  %t397 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t399 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s9, { i64, ptr } %t397, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d21, i32 0, i32 1) })
  store i1 %t399, ptr %l150
  br label %bb54
bb54:
  %t400 = load i1, ptr %l150, !tbaa !21
  br i1 %t400, label %bb55, label %bb56
bb55:
  %t401 = load { i64, ptr }, ptr %l5, !tbaa !27
  call void @std_2flist_2estd_2flist_3aList_3cI64_3e_2ePushAll_3cI64_3e(ptr %s0, ptr %s0, ptr %l7, { i64, ptr } %t401)
  br label %bb57
bb56:
  br label %bb58
bb57:
  br label %bb58
bb58:
  call void @__olang_scope_close(ptr %s9)
  br label %bb59
bb59:
  store i64 0, ptr %l8, !tbaa !24
  %t404 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t406 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t404, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d22, i32 0, i32 1) })
  store i1 %t406, ptr %l154
  br label %bb60
bb60:
  %t407 = load i1, ptr %l154, !tbaa !21
  br i1 %t407, label %bb61, label %bb62
bb61:
  store %olang.scope zeroinitializer, ptr %s12
  %t408 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t410 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s12, { i64, ptr } %t408, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d23, i32 0, i32 1) })
  store i1 %t410, ptr %l156
  br label %bb63
bb62:
  store %olang.scope zeroinitializer, ptr %s13
  %t411 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t413 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s13, { i64, ptr } %t411, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d24, i32 0, i32 1) })
  store i1 %t413, ptr %l171
  br label %bb74
bb63:
  %t414 = load i1, ptr %l156, !tbaa !21
  br i1 %t414, label %bb64, label %bb65
bb64:
  %t415 = load i64, ptr %l4, !tbaa !24
  %t418 = call i64 @bench_2fvec_2ewalkVec(ptr %s0, ptr %l6, i64 %t415)
  store i64 %t418, ptr %l160
  br label %bb66
bb65:
  %t419 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t421 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s12, { i64, ptr } %t419, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d25, i32 0, i32 1) })
  store i1 %t421, ptr %l162
  br label %bb67
bb66:
  %t422 = load i64, ptr %l160, !tbaa !24
  store i64 %t422, ptr %l157, !tbaa !24
  br label %bb73
bb67:
  %t423 = load i1, ptr %l162, !tbaa !21
  br i1 %t423, label %bb68, label %bb69
bb68:
  %t424 = load i64, ptr %l4, !tbaa !24
  %t427 = call i64 @bench_2fvec_2ewalkList(ptr %s0, ptr %l7, i64 %t424)
  store i64 %t427, ptr %l166
  br label %bb70
bb69:
  %t428 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t429 = load i64, ptr %l4, !tbaa !24
  %t432 = call i64 @bench_2fvec_2ewalkArray(ptr %s0, { i64, ptr } %t428, i64 %t429)
  store i64 %t432, ptr %l169
  br label %bb71
bb70:
  %t433 = load i64, ptr %l166, !tbaa !24
  store i64 %t433, ptr %l163, !tbaa !24
  br label %bb72
bb71:
  %t434 = load i64, ptr %l169, !tbaa !24
  store i64 %t434, ptr %l163, !tbaa !24
  br label %bb72
bb72:
  %t435 = load i64, ptr %l163, !tbaa !24
  store i64 %t435, ptr %l157, !tbaa !24
  br label %bb73
bb73:
  %t436 = load i64, ptr %l157, !tbaa !24
  store i64 %t436, ptr %l8, !tbaa !24
  call void @__olang_scope_close(ptr %s12)
  br label %bb266
bb74:
  %t437 = load i1, ptr %l171, !tbaa !21
  br i1 %t437, label %bb75, label %bb76
bb75:
  store %olang.scope zeroinitializer, ptr %s14
  %t438 = load i64, ptr %l3, !tbaa !24
  %t439 = load i64, ptr %l4, !tbaa !24
  %t442 = mul i64 %t438, %t439
  %t443 = load i64, ptr %l3, !tbaa !24
  %t446 = call { i64, ptr } @bench_2fvec_2epositions(ptr %s14, i64 %t442, i64 %t443)
  store { i64, ptr } %t446, ptr %l176
  br label %bb77
bb76:
  store %olang.scope zeroinitializer, ptr %s15
  %t447 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t449 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s15, { i64, ptr } %t447, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d26, i32 0, i32 1) })
  store i1 %t449, ptr %l193
  br label %bb89
bb77:
  %t450 = load { i64, ptr }, ptr %l176, !tbaa !27
  store { i64, ptr } %t450, ptr %l9, !tbaa !27
  %t451 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t453 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s14, { i64, ptr } %t451, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d27, i32 0, i32 1) })
  store i1 %t453, ptr %l178
  br label %bb78
bb78:
  %t454 = load i1, ptr %l178, !tbaa !21
  br i1 %t454, label %bb79, label %bb80
bb79:
  %t455 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t458 = call i64 @bench_2fvec_2egatherVec(ptr %s0, ptr %s14, ptr %l6, { i64, ptr } %t455)
  store i64 %t458, ptr %l182
  br label %bb81
bb80:
  %t459 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t461 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s14, { i64, ptr } %t459, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d28, i32 0, i32 1) })
  store i1 %t461, ptr %l184
  br label %bb82
bb81:
  %t462 = load i64, ptr %l182, !tbaa !24
  store i64 %t462, ptr %l179, !tbaa !24
  br label %bb88
bb82:
  %t463 = load i1, ptr %l184, !tbaa !21
  br i1 %t463, label %bb83, label %bb84
bb83:
  %t464 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t467 = call i64 @bench_2fvec_2egatherList(ptr %s0, ptr %s14, ptr %l7, { i64, ptr } %t464)
  store i64 %t467, ptr %l188
  br label %bb85
bb84:
  %t468 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t469 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t472 = call i64 @bench_2fvec_2egatherArray(ptr %s0, ptr %s14, { i64, ptr } %t468, { i64, ptr } %t469)
  store i64 %t472, ptr %l191
  br label %bb86
bb85:
  %t473 = load i64, ptr %l188, !tbaa !24
  store i64 %t473, ptr %l185, !tbaa !24
  br label %bb87
bb86:
  %t474 = load i64, ptr %l191, !tbaa !24
  store i64 %t474, ptr %l185, !tbaa !24
  br label %bb87
bb87:
  %t475 = load i64, ptr %l185, !tbaa !24
  store i64 %t475, ptr %l179, !tbaa !24
  br label %bb88
bb88:
  %t476 = load i64, ptr %l179, !tbaa !24
  store i64 %t476, ptr %l8, !tbaa !24
  call void @__olang_scope_close(ptr %s14)
  br label %bb265
bb89:
  %t477 = load i1, ptr %l193, !tbaa !21
  br i1 %t477, label %bb90, label %bb91
bb90:
  store %olang.scope zeroinitializer, ptr %s16
  %t478 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t480 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s16, { i64, ptr } %t478, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d29, i32 0, i32 1) })
  store i1 %t480, ptr %l195
  br label %bb92
bb91:
  store %olang.scope zeroinitializer, ptr %s17
  %t481 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t483 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s17, { i64, ptr } %t481, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d30, i32 0, i32 1) })
  store i1 %t483, ptr %l210
  br label %bb103
bb92:
  %t484 = load i1, ptr %l195, !tbaa !21
  br i1 %t484, label %bb93, label %bb94
bb93:
  %t485 = load i64, ptr %l4, !tbaa !24
  %t488 = call i64 @bench_2fvec_2estoreVec(ptr %s0, ptr %l6, i64 %t485)
  store i64 %t488, ptr %l199
  br label %bb95
bb94:
  %t489 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t491 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s16, { i64, ptr } %t489, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d31, i32 0, i32 1) })
  store i1 %t491, ptr %l201
  br label %bb96
bb95:
  %t492 = load i64, ptr %l199, !tbaa !24
  store i64 %t492, ptr %l196, !tbaa !24
  br label %bb102
bb96:
  %t493 = load i1, ptr %l201, !tbaa !21
  br i1 %t493, label %bb97, label %bb98
bb97:
  %t494 = load i64, ptr %l4, !tbaa !24
  %t497 = call i64 @bench_2fvec_2estoreList(ptr %s0, ptr %l7, i64 %t494)
  store i64 %t497, ptr %l205
  br label %bb99
bb98:
  %t498 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t499 = load i64, ptr %l4, !tbaa !24
  %t502 = call i64 @bench_2fvec_2estoreArray(ptr %s0, { i64, ptr } %t498, i64 %t499)
  store i64 %t502, ptr %l208
  br label %bb100
bb99:
  %t503 = load i64, ptr %l205, !tbaa !24
  store i64 %t503, ptr %l202, !tbaa !24
  br label %bb101
bb100:
  %t504 = load i64, ptr %l208, !tbaa !24
  store i64 %t504, ptr %l202, !tbaa !24
  br label %bb101
bb101:
  %t505 = load i64, ptr %l202, !tbaa !24
  store i64 %t505, ptr %l196, !tbaa !24
  br label %bb102
bb102:
  %t506 = load i64, ptr %l196, !tbaa !24
  store i64 %t506, ptr %l8, !tbaa !24
  call void @__olang_scope_close(ptr %s16)
  br label %bb264
bb103:
  %t507 = load i1, ptr %l210, !tbaa !21
  br i1 %t507, label %bb104, label %bb105
bb104:
  store %olang.scope zeroinitializer, ptr %s18
  %t508 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t510 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s18, { i64, ptr } %t508, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d32, i32 0, i32 1) })
  store i1 %t510, ptr %l212
  br label %bb106
bb105:
  store %olang.scope zeroinitializer, ptr %s39
  %t511 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t513 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s39, { i64, ptr } %t511, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d33, i32 0, i32 1) })
  store i1 %t513, ptr %l368
  br label %bb178
bb106:
  %t514 = load i1, ptr %l212, !tbaa !21
  br i1 %t514, label %bb107, label %bb108
bb107:
  store %olang.scope zeroinitializer, ptr %s19
  %t515 = load i64, ptr %l3, !tbaa !24
  %t517 = call %"bench/vec:SimV" @bench_2fvec_3aSimV_2ector(ptr %s19, i64 %t515)
  store %"bench/vec:SimV" %t517, ptr %l214
  br label %bb109
bb108:
  store %olang.scope zeroinitializer, ptr %s29
  %t518 = load i64, ptr %l3, !tbaa !24
  %t520 = call %"bench/vec:SimA" @bench_2fvec_3aSimA_2ector(ptr %s29, i64 %t518)
  store %"bench/vec:SimA" %t520, ptr %l289
  br label %bb145
bb109:
  %t521 = load %"bench/vec:SimV", ptr %l214
  store %"bench/vec:SimV" %t521, ptr %l10
  %t522 = getelementptr %"bench/vec:SimV", ptr %l10, i32 0, i32 0
  %t523 = load { i64, ptr }, ptr %l5, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePushAll_3cI64_3e(ptr %s19, ptr %s0, ptr %t522, { i64, ptr } %t523)
  br label %bb110
bb110:
  store i64 0, ptr %l11, !tbaa !24
  %t526 = load i64, ptr %l3, !tbaa !24
  store i64 %t526, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t528 = load i64, ptr %l12, !tbaa !24
  %t529 = load i64, ptr %l11, !tbaa !24
  %t532 = icmp sgt i64 %t528, %t529
  br i1 %t532, label %bb111, label %bb112
bb111:
  %t534 = load i64, ptr %l13, !tbaa !24
  %t536 = icmp sgt i64 %t534, 0
  br i1 %t536, label %bb113, label %bb114
bb112:
  store i64 0, ptr %l221, !tbaa !24
  br label %bb116
bb113:
  %t538 = load i64, ptr %l12, !tbaa !24
  %t539 = load i64, ptr %l11, !tbaa !24
  %t542 = sub i64 %t538, %t539
  %t543 = load i64, ptr %l13, !tbaa !24
  %t546 = add i64 %t542, %t543
  %t548 = sub i64 %t546, 1
  %t549 = load i64, ptr %l13, !tbaa !24
  %t552 = sdiv i64 %t548, %t549
  store i64 %t552, ptr %l224, !tbaa !24
  br label %bb115
bb114:
  store i64 0, ptr %l224, !tbaa !24
  br label %bb115
bb115:
  %t554 = load i64, ptr %l224, !tbaa !24
  store i64 %t554, ptr %l221, !tbaa !24
  br label %bb116
bb116:
  %t555 = load i64, ptr %l221, !tbaa !24
  store i64 %t555, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb117
bb117:
  %t556 = load i64, ptr %l15, !tbaa !24
  %t557 = load i64, ptr %l14, !tbaa !24
  %t560 = icmp slt i64 %t556, %t557
  %t562 = xor i1 %t560, true
  br i1 %t562, label %bb118, label %bb119
bb118:
  br label %bb123
bb119:
  br label %bb120
bb120:
  %t564 = load i64, ptr %l11, !tbaa !24
  %t565 = load i64, ptr %l15, !tbaa !24
  %t566 = load i64, ptr %l13, !tbaa !24
  %t569 = mul i64 %t565, %t566
  %t572 = add i64 %t564, %t569
  %t574 = getelementptr %"bench/vec:SimV", ptr %l10, i32 0, i32 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s19, ptr %t574, i64 %t572)
  br label %bb121
bb121:
  br label %bb122
bb122:
  %t578 = load i64, ptr %l15, !tbaa !24
  %t580 = add i64 %t578, 1
  store i64 %t580, ptr %l15, !tbaa !24
  br label %bb117
bb123:
  store i64 0, ptr %l17, !tbaa !24
  %t582 = load i64, ptr %l4, !tbaa !24
  store i64 %t582, ptr %l18, !tbaa !24
  store i64 1, ptr %l19, !tbaa !24
  %t584 = load i64, ptr %l18, !tbaa !24
  %t585 = load i64, ptr %l17, !tbaa !24
  %t588 = icmp sgt i64 %t584, %t585
  br i1 %t588, label %bb124, label %bb125
bb124:
  %t590 = load i64, ptr %l19, !tbaa !24
  %t592 = icmp sgt i64 %t590, 0
  br i1 %t592, label %bb126, label %bb127
bb125:
  store i64 0, ptr %l250, !tbaa !24
  br label %bb129
bb126:
  %t594 = load i64, ptr %l18, !tbaa !24
  %t595 = load i64, ptr %l17, !tbaa !24
  %t598 = sub i64 %t594, %t595
  %t599 = load i64, ptr %l19, !tbaa !24
  %t602 = add i64 %t598, %t599
  %t604 = sub i64 %t602, 1
  %t605 = load i64, ptr %l19, !tbaa !24
  %t608 = sdiv i64 %t604, %t605
  store i64 %t608, ptr %l253, !tbaa !24
  br label %bb128
bb127:
  store i64 0, ptr %l253, !tbaa !24
  br label %bb128
bb128:
  %t610 = load i64, ptr %l253, !tbaa !24
  store i64 %t610, ptr %l250, !tbaa !24
  br label %bb129
bb129:
  %t611 = load i64, ptr %l250, !tbaa !24
  store i64 %t611, ptr %l20, !tbaa !24
  store i64 0, ptr %l21, !tbaa !24
  br label %bb130
bb130:
  %t612 = load i64, ptr %l21, !tbaa !24
  %t613 = load i64, ptr %l20, !tbaa !24
  %t616 = icmp slt i64 %t612, %t613
  %t618 = xor i1 %t616, true
  br i1 %t618, label %bb131, label %bb132
bb131:
  br label %bb136
bb132:
  br label %bb133
bb133:
  %t620 = load i64, ptr %l17, !tbaa !24
  %t621 = load i64, ptr %l21, !tbaa !24
  %t622 = load i64, ptr %l19, !tbaa !24
  %t625 = mul i64 %t621, %t622
  %t628 = add i64 %t620, %t625
  store i64 %t628, ptr %l22, !tbaa !24
  call void @bench_2fvec_2ebench_2fvec_3aSimV_2estep(ptr %s19, ptr %l10)
  br label %bb134
bb134:
  br label %bb135
bb135:
  %t631 = load i64, ptr %l21, !tbaa !24
  %t633 = add i64 %t631, 1
  store i64 %t633, ptr %l21, !tbaa !24
  br label %bb130
bb136:
  %t635 = getelementptr %"bench/vec:SimV", ptr %l10, i32 0, i32 0
  store ptr %t635, ptr %l23, !tbaa !29
  store i64 0, ptr %l24, !tbaa !24
  br label %bb137
bb137:
  %t637 = load i64, ptr %l24, !tbaa !24
  store i64 %t637, ptr %l275, !tbaa !24
  %t638 = load ptr, ptr %l23, !tbaa !29
  %t640 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s19, ptr %t638)
  store i64 %t640, ptr %l277
  br label %bb138
bb138:
  %t641 = load i64, ptr %l275, !tbaa !24
  %t642 = load i64, ptr %l277, !tbaa !24
  %t643 = icmp slt i64 %t641, %t642
  %t645 = xor i1 %t643, true
  br i1 %t645, label %bb139, label %bb140
bb139:
  br label %bb144
bb140:
  br label %bb141
bb141:
  %t647 = load ptr, ptr %l23, !tbaa !29
  %t648 = load i64, ptr %l24, !tbaa !24
  %t651 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s19, ptr %t647, i64 %t648)
  store i64 %t651, ptr %l282
  br label %bb142
bb142:
  %t652 = load i64, ptr %l282, !tbaa !24
  %t653 = load i64, ptr %l8, !tbaa !24
  %t657 = add i64 %t653, %t652
  store i64 %t657, ptr %l8, !tbaa !24
  br label %bb143
bb143:
  %t659 = load i64, ptr %l24, !tbaa !24
  %t661 = add i64 %t659, 1
  store i64 %t661, ptr %l24, !tbaa !24
  br label %bb137
bb144:
  call void @__olang_scope_close(ptr %s19)
  br label %bb177
bb145:
  %t663 = load %"bench/vec:SimA", ptr %l289
  store %"bench/vec:SimA" %t663, ptr %l26
  store i64 0, ptr %l27, !tbaa !24
  %t664 = load i64, ptr %l3, !tbaa !24
  store i64 %t664, ptr %l28, !tbaa !24
  store i64 1, ptr %l29, !tbaa !24
  %t666 = load i64, ptr %l28, !tbaa !24
  %t667 = load i64, ptr %l27, !tbaa !24
  %t670 = icmp sgt i64 %t666, %t667
  br i1 %t670, label %bb146, label %bb147
bb146:
  %t672 = load i64, ptr %l29, !tbaa !24
  %t674 = icmp sgt i64 %t672, 0
  br i1 %t674, label %bb148, label %bb149
bb147:
  store i64 0, ptr %l294, !tbaa !24
  br label %bb151
bb148:
  %t676 = load i64, ptr %l28, !tbaa !24
  %t677 = load i64, ptr %l27, !tbaa !24
  %t680 = sub i64 %t676, %t677
  %t681 = load i64, ptr %l29, !tbaa !24
  %t684 = add i64 %t680, %t681
  %t686 = sub i64 %t684, 1
  %t687 = load i64, ptr %l29, !tbaa !24
  %t690 = sdiv i64 %t686, %t687
  store i64 %t690, ptr %l297, !tbaa !24
  br label %bb150
bb149:
  store i64 0, ptr %l297, !tbaa !24
  br label %bb150
bb150:
  %t692 = load i64, ptr %l297, !tbaa !24
  store i64 %t692, ptr %l294, !tbaa !24
  br label %bb151
bb151:
  %t693 = load i64, ptr %l294, !tbaa !24
  store i64 %t693, ptr %l30, !tbaa !24
  store i64 0, ptr %l31, !tbaa !24
  br label %bb152
bb152:
  %t694 = load i64, ptr %l31, !tbaa !24
  %t695 = load i64, ptr %l30, !tbaa !24
  %t698 = icmp slt i64 %t694, %t695
  %t700 = xor i1 %t698, true
  br i1 %t700, label %bb153, label %bb154
bb153:
  br label %bb157
bb154:
  br label %bb155
bb155:
  %t702 = load i64, ptr %l27, !tbaa !24
  %t703 = load i64, ptr %l31, !tbaa !24
  %t704 = load i64, ptr %l29, !tbaa !24
  %t707 = mul i64 %t703, %t704
  %t710 = add i64 %t702, %t707
  store i64 %t710, ptr %l32, !tbaa !24
  %t712 = getelementptr %"bench/vec:SimA", ptr %l26, i32 0, i32 0
  %t713 = load { i64, ptr }, ptr %t712, !tbaa !27
  store { i64, ptr } %t713, ptr %l315, !tbaa !27
  %t714 = load i64, ptr %l32, !tbaa !24
  %t715 = load i64, ptr %l32, !tbaa !24
  %t717 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t718 = load ptr, ptr %t717, !tbaa !27
  %t719 = getelementptr i64, ptr %t718, i64 %t715
  %t720 = load i64, ptr %t719, !tbaa !34
  %t723 = getelementptr { i64, ptr }, ptr %l315, i32 0, i32 1
  %t724 = load ptr, ptr %t723, !tbaa !27
  %t725 = getelementptr i64, ptr %t724, i64 %t714
  store i64 %t720, ptr %t725, !tbaa !34
  %t726 = getelementptr %"bench/vec:SimA", ptr %l26, i32 0, i32 1
  %t727 = load { i64, ptr }, ptr %t726, !tbaa !27
  store { i64, ptr } %t727, ptr %l319, !tbaa !27
  %t728 = load i64, ptr %l32, !tbaa !24
  %t729 = load i64, ptr %l32, !tbaa !24
  %t732 = getelementptr { i64, ptr }, ptr %l319, i32 0, i32 1
  %t733 = load ptr, ptr %t732, !tbaa !27
  %t734 = getelementptr i64, ptr %t733, i64 %t728
  store i64 %t729, ptr %t734, !tbaa !34
  br label %bb156
bb156:
  %t735 = load i64, ptr %l31, !tbaa !24
  %t737 = add i64 %t735, 1
  store i64 %t737, ptr %l31, !tbaa !24
  br label %bb152
bb157:
  store i64 0, ptr %l33, !tbaa !24
  %t739 = load i64, ptr %l4, !tbaa !24
  store i64 %t739, ptr %l34, !tbaa !24
  store i64 1, ptr %l35, !tbaa !24
  %t741 = load i64, ptr %l34, !tbaa !24
  %t742 = load i64, ptr %l33, !tbaa !24
  %t745 = icmp sgt i64 %t741, %t742
  br i1 %t745, label %bb158, label %bb159
bb158:
  %t747 = load i64, ptr %l35, !tbaa !24
  %t749 = icmp sgt i64 %t747, 0
  br i1 %t749, label %bb160, label %bb161
bb159:
  store i64 0, ptr %l328, !tbaa !24
  br label %bb163
bb160:
  %t751 = load i64, ptr %l34, !tbaa !24
  %t752 = load i64, ptr %l33, !tbaa !24
  %t755 = sub i64 %t751, %t752
  %t756 = load i64, ptr %l35, !tbaa !24
  %t759 = add i64 %t755, %t756
  %t761 = sub i64 %t759, 1
  %t762 = load i64, ptr %l35, !tbaa !24
  %t765 = sdiv i64 %t761, %t762
  store i64 %t765, ptr %l331, !tbaa !24
  br label %bb162
bb161:
  store i64 0, ptr %l331, !tbaa !24
  br label %bb162
bb162:
  %t767 = load i64, ptr %l331, !tbaa !24
  store i64 %t767, ptr %l328, !tbaa !24
  br label %bb163
bb163:
  %t768 = load i64, ptr %l328, !tbaa !24
  store i64 %t768, ptr %l36, !tbaa !24
  store i64 0, ptr %l37, !tbaa !24
  br label %bb164
bb164:
  %t769 = load i64, ptr %l37, !tbaa !24
  %t770 = load i64, ptr %l36, !tbaa !24
  %t773 = icmp slt i64 %t769, %t770
  %t775 = xor i1 %t773, true
  br i1 %t775, label %bb165, label %bb166
bb165:
  br label %bb170
bb166:
  br label %bb167
bb167:
  %t777 = load i64, ptr %l33, !tbaa !24
  %t778 = load i64, ptr %l37, !tbaa !24
  %t779 = load i64, ptr %l35, !tbaa !24
  %t782 = mul i64 %t778, %t779
  %t785 = add i64 %t777, %t782
  store i64 %t785, ptr %l38, !tbaa !24
  call void @bench_2fvec_2ebench_2fvec_3aSimA_2estep(ptr %s29, ptr %l26)
  br label %bb168
bb168:
  br label %bb169
bb169:
  %t788 = load i64, ptr %l37, !tbaa !24
  %t790 = add i64 %t788, 1
  store i64 %t790, ptr %l37, !tbaa !24
  br label %bb164
bb170:
  %t792 = getelementptr %"bench/vec:SimA", ptr %l26, i32 0, i32 0
  %t793 = load { i64, ptr }, ptr %t792, !tbaa !27
  store { i64, ptr } %t793, ptr %l39, !tbaa !27
  store i64 0, ptr %l40, !tbaa !24
  %t795 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t797 = extractvalue { i64, ptr } %t795, 0
  store i64 %t797, ptr %l41, !tbaa !24
  br label %bb171
bb171:
  %t799 = load i64, ptr %l40, !tbaa !24
  %t800 = load i64, ptr %l41, !tbaa !24
  %t803 = icmp slt i64 %t799, %t800
  %t805 = xor i1 %t803, true
  br i1 %t805, label %bb172, label %bb173
bb172:
  br label %bb176
bb173:
  br label %bb174
bb174:
  %t807 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t807, ptr %l359, !tbaa !27
  %t808 = load i64, ptr %l40, !tbaa !24
  %t810 = getelementptr { i64, ptr }, ptr %l359, i32 0, i32 1
  %t811 = load ptr, ptr %t810, !tbaa !27
  %t812 = getelementptr i64, ptr %t811, i64 %t808
  %t813 = load i64, ptr %t812, !tbaa !34
  %t815 = load i64, ptr %l8, !tbaa !24
  %t819 = add i64 %t815, %t813
  store i64 %t819, ptr %l8, !tbaa !24
  br label %bb175
bb175:
  %t821 = load i64, ptr %l40, !tbaa !24
  %t823 = add i64 %t821, 1
  store i64 %t823, ptr %l40, !tbaa !24
  br label %bb171
bb176:
  call void @__olang_scope_close(ptr %s29)
  br label %bb177
bb177:
  call void @__olang_scope_close(ptr %s18)
  br label %bb263
bb178:
  %t825 = load i1, ptr %l368, !tbaa !21
  br i1 %t825, label %bb179, label %bb180
bb179:
  store %olang.scope zeroinitializer, ptr %s40
  %t826 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t828 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s40, { i64, ptr } %t826, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d34, i32 0, i32 1) })
  store i1 %t828, ptr %l370
  br label %bb181
bb180:
  store %olang.scope zeroinitializer, ptr %s49
  %t829 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t831 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s49, { i64, ptr } %t829, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d35, i32 0, i32 1) })
  store i1 %t831, ptr %l446
  br label %bb215
bb181:
  %t832 = load i1, ptr %l370, !tbaa !21
  br i1 %t832, label %bb182, label %bb183
bb182:
  store i64 0, ptr %l43, !tbaa !24
  %t833 = load i64, ptr %l3, !tbaa !24
  store i64 %t833, ptr %l44, !tbaa !24
  store i64 1, ptr %l45, !tbaa !24
  %t835 = load i64, ptr %l44, !tbaa !24
  %t836 = load i64, ptr %l43, !tbaa !24
  %t839 = icmp sgt i64 %t835, %t836
  br i1 %t839, label %bb184, label %bb185
bb183:
  store i64 0, ptr %l49, !tbaa !24
  %t841 = load i64, ptr %l3, !tbaa !24
  store i64 %t841, ptr %l50, !tbaa !24
  store i64 1, ptr %l51, !tbaa !24
  %t843 = load i64, ptr %l50, !tbaa !24
  %t844 = load i64, ptr %l49, !tbaa !24
  %t847 = icmp sgt i64 %t843, %t844
  br i1 %t847, label %bb199, label %bb200
bb184:
  %t849 = load i64, ptr %l45, !tbaa !24
  %t851 = icmp sgt i64 %t849, 0
  br i1 %t851, label %bb186, label %bb187
bb185:
  store i64 0, ptr %l375, !tbaa !24
  br label %bb189
bb186:
  %t853 = load i64, ptr %l44, !tbaa !24
  %t854 = load i64, ptr %l43, !tbaa !24
  %t857 = sub i64 %t853, %t854
  %t858 = load i64, ptr %l45, !tbaa !24
  %t861 = add i64 %t857, %t858
  %t863 = sub i64 %t861, 1
  %t864 = load i64, ptr %l45, !tbaa !24
  %t867 = sdiv i64 %t863, %t864
  store i64 %t867, ptr %l378, !tbaa !24
  br label %bb188
bb187:
  store i64 0, ptr %l378, !tbaa !24
  br label %bb188
bb188:
  %t869 = load i64, ptr %l378, !tbaa !24
  store i64 %t869, ptr %l375, !tbaa !24
  br label %bb189
bb189:
  %t870 = load i64, ptr %l375, !tbaa !24
  store i64 %t870, ptr %l46, !tbaa !24
  store i64 0, ptr %l47, !tbaa !24
  br label %bb190
bb190:
  %t871 = load i64, ptr %l47, !tbaa !24
  %t872 = load i64, ptr %l46, !tbaa !24
  %t875 = icmp slt i64 %t871, %t872
  %t877 = xor i1 %t875, true
  br i1 %t877, label %bb191, label %bb192
bb191:
  br label %bb196
bb192:
  br label %bb193
bb193:
  %t879 = load i64, ptr %l43, !tbaa !24
  %t880 = load i64, ptr %l47, !tbaa !24
  %t881 = load i64, ptr %l45, !tbaa !24
  %t884 = mul i64 %t880, %t881
  %t887 = add i64 %t879, %t884
  %t891 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t892 = load ptr, ptr %t891, !tbaa !27
  %t893 = getelementptr i64, ptr %t892, i64 %t887
  %t894 = load i64, ptr %t893, !tbaa !34
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l6, i64 %t894)
  br label %bb194
bb194:
  br label %bb195
bb195:
  %t897 = load i64, ptr %l47, !tbaa !24
  %t899 = add i64 %t897, 1
  store i64 %t899, ptr %l47, !tbaa !24
  br label %bb190
bb196:
  %t902 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l6)
  store i64 %t902, ptr %l402
  br label %bb197
bb197:
  %t903 = load i64, ptr %l3, !tbaa !24
  %t905 = sub i64 %t903, 1
  %t908 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l6, i64 %t905)
  store i64 %t908, ptr %l406
  br label %bb198
bb198:
  %t909 = load i64, ptr %l402, !tbaa !24
  %t910 = load i64, ptr %l406, !tbaa !24
  %t911 = add i64 %t909, %t910
  store i64 %t911, ptr %l8, !tbaa !24
  br label %bb214
bb199:
  %t913 = load i64, ptr %l51, !tbaa !24
  %t915 = icmp sgt i64 %t913, 0
  br i1 %t915, label %bb201, label %bb202
bb200:
  store i64 0, ptr %l412, !tbaa !24
  br label %bb204
bb201:
  %t917 = load i64, ptr %l50, !tbaa !24
  %t918 = load i64, ptr %l49, !tbaa !24
  %t921 = sub i64 %t917, %t918
  %t922 = load i64, ptr %l51, !tbaa !24
  %t925 = add i64 %t921, %t922
  %t927 = sub i64 %t925, 1
  %t928 = load i64, ptr %l51, !tbaa !24
  %t931 = sdiv i64 %t927, %t928
  store i64 %t931, ptr %l415, !tbaa !24
  br label %bb203
bb202:
  store i64 0, ptr %l415, !tbaa !24
  br label %bb203
bb203:
  %t933 = load i64, ptr %l415, !tbaa !24
  store i64 %t933, ptr %l412, !tbaa !24
  br label %bb204
bb204:
  %t934 = load i64, ptr %l412, !tbaa !24
  store i64 %t934, ptr %l52, !tbaa !24
  store i64 0, ptr %l53, !tbaa !24
  br label %bb205
bb205:
  %t935 = load i64, ptr %l53, !tbaa !24
  %t936 = load i64, ptr %l52, !tbaa !24
  %t939 = icmp slt i64 %t935, %t936
  %t941 = xor i1 %t939, true
  br i1 %t941, label %bb206, label %bb207
bb206:
  br label %bb211
bb207:
  br label %bb208
bb208:
  %t943 = load i64, ptr %l49, !tbaa !24
  %t944 = load i64, ptr %l53, !tbaa !24
  %t945 = load i64, ptr %l51, !tbaa !24
  %t948 = mul i64 %t944, %t945
  %t951 = add i64 %t943, %t948
  %t955 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t956 = load ptr, ptr %t955, !tbaa !27
  %t957 = getelementptr i64, ptr %t956, i64 %t951
  %t958 = load i64, ptr %t957, !tbaa !34
  call void @std_2flist_2estd_2flist_3aList_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l7, i64 %t958)
  br label %bb209
bb209:
  br label %bb210
bb210:
  %t961 = load i64, ptr %l53, !tbaa !24
  %t963 = add i64 %t961, 1
  store i64 %t963, ptr %l53, !tbaa !24
  br label %bb205
bb211:
  %t966 = call i64 @std_2flist_2estd_2flist_3aList_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l7)
  store i64 %t966, ptr %l439
  br label %bb212
bb212:
  %t967 = load i64, ptr %l3, !tbaa !24
  %t969 = sub i64 %t967, 1
  %t972 = call i64 @std_2flist_2estd_2flist_3aList_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l7, i64 %t969)
  store i64 %t972, ptr %l443
  br label %bb213
bb213:
  %t973 = load i64, ptr %l439, !tbaa !24
  %t974 = load i64, ptr %l443, !tbaa !24
  %t975 = add i64 %t973, %t974
  store i64 %t975, ptr %l8, !tbaa !24
  br label %bb214
bb214:
  call void @__olang_scope_close(ptr %s40)
  br label %bb262
bb215:
  %t977 = load i1, ptr %l446, !tbaa !21
  br i1 %t977, label %bb216, label %bb217
bb216:
  store %olang.scope zeroinitializer, ptr %s50
  %t978 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t980 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s50, { i64, ptr } %t978, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d36, i32 0, i32 1) })
  store i1 %t980, ptr %l448
  br label %bb218
bb217:
  store %olang.scope zeroinitializer, ptr %s51
  %t981 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t983 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s51, { i64, ptr } %t981, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d37, i32 0, i32 1) })
  store i1 %t983, ptr %l457
  br label %bb224
bb218:
  %t984 = load i1, ptr %l448, !tbaa !21
  br i1 %t984, label %bb219, label %bb220
bb219:
  %t985 = load i64, ptr %l4, !tbaa !24
  %t988 = call i64 @bench_2fvec_2eopaqueVec(ptr %s0, ptr %l6, i64 %t985)
  store i64 %t988, ptr %l452
  br label %bb221
bb220:
  %t989 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t990 = load i64, ptr %l4, !tbaa !24
  %t993 = call i64 @bench_2fvec_2eopaqueArray(ptr %s0, { i64, ptr } %t989, i64 %t990)
  store i64 %t993, ptr %l455
  br label %bb222
bb221:
  %t994 = load i64, ptr %l452, !tbaa !24
  store i64 %t994, ptr %l449, !tbaa !24
  br label %bb223
bb222:
  %t995 = load i64, ptr %l455, !tbaa !24
  store i64 %t995, ptr %l449, !tbaa !24
  br label %bb223
bb223:
  %t996 = load i64, ptr %l449, !tbaa !24
  store i64 %t996, ptr %l8, !tbaa !24
  call void @__olang_scope_close(ptr %s50)
  br label %bb261
bb224:
  %t997 = load i1, ptr %l457, !tbaa !21
  br i1 %t997, label %bb225, label %bb226
bb225:
  store %olang.scope zeroinitializer, ptr %s52
  %t998 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t1000 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s52, { i64, ptr } %t998, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d38, i32 0, i32 1) })
  store i1 %t1000, ptr %l459
  br label %bb227
bb226:
  store i32 65537, ptr %l533, !tbaa !23
  call void @__olang_scope_close(ptr %s51)
  call void @__olang_scope_close(ptr %s49)
  call void @__olang_scope_close(ptr %s39)
  call void @__olang_scope_close(ptr %s17)
  call void @__olang_scope_close(ptr %s15)
  call void @__olang_scope_close(ptr %s13)
  call void @__olang_scope_close(ptr %s0)
  %t1001 = load i32, ptr %l533, !tbaa !23
  %t1002 = icmp eq i32 %t1001, 131073
  br i1 %t1002, label %bb258, label %bb259
bb227:
  %t1004 = load i1, ptr %l459, !tbaa !21
  br i1 %t1004, label %bb228, label %bb229
bb228:
  store %olang.scope zeroinitializer, ptr %s53
  %t1005 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_39, 0
  %t1006 = insertvalue { ptr, ptr } %t1005, ptr null, 1
  %t1009 = extractvalue { ptr, ptr } %t1006, 0
  %t1010 = extractvalue { ptr, ptr } %t1006, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSort_3cI64_2c_20_3f_3e(ptr %s0, ptr %s53, ptr %l6, ptr %t1009, ptr %t1010)
  br label %bb230
bb229:
  store %olang.scope zeroinitializer, ptr %s57
  %t1011 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t1012 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_40, 0
  %t1013 = insertvalue { ptr, ptr } %t1012, ptr null, 1
  %t1016 = extractvalue { ptr, ptr } %t1013, 0
  %t1017 = extractvalue { ptr, ptr } %t1013, 1
  call void @std_2fprelude_2farray_2eArray_3cI64_3e_2eSort_3cI64_2c_20_3f_3e(ptr %s0, ptr %s57, { i64, ptr } %t1011, ptr %t1016, ptr %t1017)
  br label %bb244
bb230:
  store i64 0, ptr %l55, !tbaa !24
  %t1018 = load i64, ptr %l3, !tbaa !24
  store i64 %t1018, ptr %l56, !tbaa !24
  store i64 1, ptr %l57, !tbaa !24
  %t1020 = load i64, ptr %l56, !tbaa !24
  %t1021 = load i64, ptr %l55, !tbaa !24
  %t1024 = icmp sgt i64 %t1020, %t1021
  br i1 %t1024, label %bb231, label %bb232
bb231:
  %t1026 = load i64, ptr %l57, !tbaa !24
  %t1028 = icmp sgt i64 %t1026, 0
  br i1 %t1028, label %bb233, label %bb234
bb232:
  store i64 0, ptr %l466, !tbaa !24
  br label %bb236
bb233:
  %t1030 = load i64, ptr %l56, !tbaa !24
  %t1031 = load i64, ptr %l55, !tbaa !24
  %t1034 = sub i64 %t1030, %t1031
  %t1035 = load i64, ptr %l57, !tbaa !24
  %t1038 = add i64 %t1034, %t1035
  %t1040 = sub i64 %t1038, 1
  %t1041 = load i64, ptr %l57, !tbaa !24
  %t1044 = sdiv i64 %t1040, %t1041
  store i64 %t1044, ptr %l469, !tbaa !24
  br label %bb235
bb234:
  store i64 0, ptr %l469, !tbaa !24
  br label %bb235
bb235:
  %t1046 = load i64, ptr %l469, !tbaa !24
  store i64 %t1046, ptr %l466, !tbaa !24
  br label %bb236
bb236:
  %t1047 = load i64, ptr %l466, !tbaa !24
  store i64 %t1047, ptr %l58, !tbaa !24
  store i64 0, ptr %l59, !tbaa !24
  br label %bb237
bb237:
  %t1048 = load i64, ptr %l59, !tbaa !24
  %t1049 = load i64, ptr %l58, !tbaa !24
  %t1052 = icmp slt i64 %t1048, %t1049
  %t1054 = xor i1 %t1052, true
  br i1 %t1054, label %bb238, label %bb239
bb238:
  br label %bb243
bb239:
  br label %bb240
bb240:
  %t1056 = load i64, ptr %l55, !tbaa !24
  %t1057 = load i64, ptr %l59, !tbaa !24
  %t1058 = load i64, ptr %l57, !tbaa !24
  %t1061 = mul i64 %t1057, %t1058
  %t1064 = add i64 %t1056, %t1061
  store i64 %t1064, ptr %l60, !tbaa !24
  %t1066 = load i64, ptr %l8, !tbaa !24
  store i64 %t1066, ptr %l487, !tbaa !24
  %t1067 = load i64, ptr %l60, !tbaa !24
  %t1070 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l6, i64 %t1067)
  store i64 %t1070, ptr %l490
  br label %bb241
bb241:
  %t1071 = load i64, ptr %l60, !tbaa !24
  %t1073 = srem i64 %t1071, 7
  %t1074 = load i64, ptr %l490, !tbaa !24
  %t1076 = mul i64 %t1074, %t1073
  %t1077 = load i64, ptr %l487, !tbaa !24
  %t1079 = add i64 %t1077, %t1076
  store i64 %t1079, ptr %l8, !tbaa !24
  br label %bb242
bb242:
  %t1081 = load i64, ptr %l59, !tbaa !24
  %t1083 = add i64 %t1081, 1
  store i64 %t1083, ptr %l59, !tbaa !24
  br label %bb237
bb243:
  call void @__olang_scope_close(ptr %s53)
  br label %bb257
bb244:
  store i64 0, ptr %l61, !tbaa !24
  %t1085 = load i64, ptr %l3, !tbaa !24
  store i64 %t1085, ptr %l62, !tbaa !24
  store i64 1, ptr %l63, !tbaa !24
  %t1087 = load i64, ptr %l62, !tbaa !24
  %t1088 = load i64, ptr %l61, !tbaa !24
  %t1091 = icmp sgt i64 %t1087, %t1088
  br i1 %t1091, label %bb245, label %bb246
bb245:
  %t1093 = load i64, ptr %l63, !tbaa !24
  %t1095 = icmp sgt i64 %t1093, 0
  br i1 %t1095, label %bb247, label %bb248
bb246:
  store i64 0, ptr %l503, !tbaa !24
  br label %bb250
bb247:
  %t1097 = load i64, ptr %l62, !tbaa !24
  %t1098 = load i64, ptr %l61, !tbaa !24
  %t1101 = sub i64 %t1097, %t1098
  %t1102 = load i64, ptr %l63, !tbaa !24
  %t1105 = add i64 %t1101, %t1102
  %t1107 = sub i64 %t1105, 1
  %t1108 = load i64, ptr %l63, !tbaa !24
  %t1111 = sdiv i64 %t1107, %t1108
  store i64 %t1111, ptr %l506, !tbaa !24
  br label %bb249
bb248:
  store i64 0, ptr %l506, !tbaa !24
  br label %bb249
bb249:
  %t1113 = load i64, ptr %l506, !tbaa !24
  store i64 %t1113, ptr %l503, !tbaa !24
  br label %bb250
bb250:
  %t1114 = load i64, ptr %l503, !tbaa !24
  store i64 %t1114, ptr %l64, !tbaa !24
  store i64 0, ptr %l65, !tbaa !24
  br label %bb251
bb251:
  %t1115 = load i64, ptr %l65, !tbaa !24
  %t1116 = load i64, ptr %l64, !tbaa !24
  %t1119 = icmp slt i64 %t1115, %t1116
  %t1121 = xor i1 %t1119, true
  br i1 %t1121, label %bb252, label %bb253
bb252:
  br label %bb256
bb253:
  br label %bb254
bb254:
  %t1123 = load i64, ptr %l61, !tbaa !24
  %t1124 = load i64, ptr %l65, !tbaa !24
  %t1125 = load i64, ptr %l63, !tbaa !24
  %t1128 = mul i64 %t1124, %t1125
  %t1131 = add i64 %t1123, %t1128
  store i64 %t1131, ptr %l66, !tbaa !24
  %t1133 = load i64, ptr %l8, !tbaa !24
  %t1134 = load i64, ptr %l66, !tbaa !24
  %t1136 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t1137 = load ptr, ptr %t1136, !tbaa !27
  %t1138 = getelementptr i64, ptr %t1137, i64 %t1134
  %t1139 = load i64, ptr %t1138, !tbaa !34
  %t1140 = load i64, ptr %l66, !tbaa !24
  %t1142 = srem i64 %t1140, 7
  %t1145 = mul i64 %t1139, %t1142
  %t1148 = add i64 %t1133, %t1145
  store i64 %t1148, ptr %l8, !tbaa !24
  br label %bb255
bb255:
  %t1150 = load i64, ptr %l65, !tbaa !24
  %t1152 = add i64 %t1150, 1
  store i64 %t1152, ptr %l65, !tbaa !24
  br label %bb251
bb256:
  call void @__olang_scope_close(ptr %s57)
  br label %bb257
bb257:
  call void @__olang_scope_close(ptr %s52)
  br label %bb260
bb258:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s62
  store ptr %s62room, ptr %s62
  %t1154 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d41, i32 0, i32 1) }, 1
  %t1155 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d41, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s62, ptr %t1154, i64 %t1155)
  %t1156 = call ptr @__olang_errpay_top_get()
  %t1157 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d42, i32 0, i32 1) }, 1
  %t1158 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d42, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s62, ptr %t1157, i64 %t1158)
  %t1160 = getelementptr { i64, [1 x i64] }, ptr %t1156, i32 0, i32 1
  %t1161 = getelementptr { i64 }, ptr %t1160, i32 0, i32 0
  %t1162 = load i64, ptr %t1161
  %t1164 = call ptr @__olang_sb_room(ptr %s62, i64 24)
  %t1165 = call i64 @__olang_fmt_i64(ptr %t1164, i64 %t1162)
  call void @__olang_sb_add(ptr %s62, i64 %t1165)
  %t1166 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d43, i32 0, i32 1) }, 1
  %t1167 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d43, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s62, ptr %t1166, i64 %t1167)
  %t1168 = load ptr, ptr %s62
  %t1169 = getelementptr %olang.builder, ptr %s62, i32 0, i32 1
  %t1170 = load i64, ptr %t1169
  %t1171 = load ptr, ptr @__olang_prog_scope
  %t1172 = call ptr @__olang_scope_alloc(ptr %t1171, i64 %t1170)
  call void @olang_textcopy(ptr %t1172, ptr %t1168, i64 %t1170)
  %t1173 = insertvalue { i64, ptr } undef, i64 %t1170, 0
  %t1174 = insertvalue { i64, ptr } %t1173, ptr %t1172, 1
  store { i64, ptr } %t1174, ptr %l537, !tbaa !27
  %t1175 = getelementptr %olang.builder, ptr %s62, i32 0, i32 3
  %t1176 = load ptr, ptr %t1175
  %t1177 = icmp ne ptr %t1176, null
  br i1 %t1177, label %sbgrew.1178, label %sbdone.1179
sbgrew.1178:
  call void @__olang_sb_done(ptr %s62)
  br label %sbdone.1179
sbdone.1179:
  %t1180 = load { i64, ptr }, ptr %l537, !tbaa !27
  %t1181 = load ptr, ptr @__olang_prog_scope
  %t1182 = extractvalue { i64, ptr } %t1180, 0
  %t1183 = extractvalue { i64, ptr } %t1180, 1
  %t1184 = mul i64 %t1182, 1
  %t1185 = call ptr @__olang_scope_alloc(ptr %t1181, i64 %t1184)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1185, ptr %t1183, i64 %t1184, i1 false)
  %t1186 = insertvalue { i64, ptr } undef, i64 %t1182, 0
  %t1187 = insertvalue { i64, ptr } %t1186, ptr %t1185, 1
  %t1189 = extractvalue { i64, ptr } %t1187, 1
  %t1190 = extractvalue { i64, ptr } %t1187, 0
  %t1191 = insertvalue { i64, ptr } undef, i64 %t1190, 0
  %t1192 = insertvalue { i64, ptr } %t1191, ptr %t1189, 1
  call void @__olang_unhandled_text({ i64, ptr } %t1192, i1 false)
  unreachable
bb259:
  %t1193 = load i32, ptr %l533, !tbaa !23
  store i32 %t1193, ptr %rv
  br label %ret
bb260:
  call void @__olang_scope_close(ptr %s51)
  br label %bb261
bb261:
  call void @__olang_scope_close(ptr %s49)
  br label %bb262
bb262:
  call void @__olang_scope_close(ptr %s39)
  br label %bb263
bb263:
  call void @__olang_scope_close(ptr %s17)
  br label %bb264
bb264:
  call void @__olang_scope_close(ptr %s15)
  br label %bb265
bb265:
  call void @__olang_scope_close(ptr %s13)
  br label %bb266
bb266:
  %t1194 = load i64, ptr %l8, !tbaa !24
  %t1196 = call i64 @__olang_fmt_i64(ptr null, i64 %t1194)
  %t1197 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d44, i32 0, i32 1) }, 1
  %t1198 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d44, i32 0, i32 1) }, 0
  %t1199 = add i64 %t1196, %t1198
  %t1200 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1199)
  %t1201 = call i64 @__olang_fmt_i64(ptr %t1200, i64 %t1194)
  %t1202 = getelementptr i8, ptr %t1200, i64 %t1196
  call void @olang_textcopy(ptr %t1202, ptr %t1197, i64 %t1198)
  %t1203 = insertvalue { i64, ptr } undef, i64 %t1199, 0
  %t1204 = insertvalue { i64, ptr } %t1203, ptr %t1200, 1
  %t1206 = extractvalue { i64, ptr } %t1204, 0
  %t1207 = extractvalue { i64, ptr } %t1204, 1
  %t1208 = mul i64 %t1206, 1
  %t1209 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1208)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1209, ptr %t1207, i64 %t1208, i1 false)
  %t1210 = insertvalue { i64, ptr } undef, i64 %t1206, 0
  %t1211 = insertvalue { i64, ptr } %t1210, ptr %t1209, 1
  %t1213 = call i32 @std_2fio_2ePrint(ptr %s0, { i64, ptr } %t1211)
  store i32 %t1213, ptr %l542
  %t1214 = icmp ne i32 %t1213, 0
  br i1 %t1214, label %bb268, label %ok.1215, !prof !99
ok.1215:
  br label %bb267
bb267:
  br label %bb271
bb268:
  %t1216 = load i32, ptr %l542, !tbaa !23
  %t1217 = lshr i32 %t1216, 16
  %t1218 = and i32 %t1216, 65535
  %t1219 = icmp eq i32 %t1217, 1
  %t1220 = select i1 %t1219, i32 2, i32 0
  %t1221 = icmp eq i32 %t1216, 0
  %t1222 = shl i32 %t1220, 16
  %t1223 = or i32 %t1222, %t1218
  %t1224 = select i1 %t1221, i32 0, i32 %t1223
  store i32 %t1224, ptr %l543, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  %t1225 = load i32, ptr %l543, !tbaa !23
  %t1226 = icmp eq i32 %t1225, 131073
  br i1 %t1226, label %bb269, label %bb270
bb269:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s64
  store ptr %s64room, ptr %s64
  %t1228 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d45, i32 0, i32 1) }, 1
  %t1229 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d45, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s64, ptr %t1228, i64 %t1229)
  %t1230 = call ptr @__olang_errpay_top_get()
  %t1231 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d46, i32 0, i32 1) }, 1
  %t1232 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d46, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s64, ptr %t1231, i64 %t1232)
  %t1234 = getelementptr { i64, [1 x i64] }, ptr %t1230, i32 0, i32 1
  %t1235 = getelementptr { i64 }, ptr %t1234, i32 0, i32 0
  %t1236 = load i64, ptr %t1235
  %t1238 = call ptr @__olang_sb_room(ptr %s64, i64 24)
  %t1239 = call i64 @__olang_fmt_i64(ptr %t1238, i64 %t1236)
  call void @__olang_sb_add(ptr %s64, i64 %t1239)
  %t1240 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d47, i32 0, i32 1) }, 1
  %t1241 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d47, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s64, ptr %t1240, i64 %t1241)
  %t1242 = load ptr, ptr %s64
  %t1243 = getelementptr %olang.builder, ptr %s64, i32 0, i32 1
  %t1244 = load i64, ptr %t1243
  %t1245 = load ptr, ptr @__olang_prog_scope
  %t1246 = call ptr @__olang_scope_alloc(ptr %t1245, i64 %t1244)
  call void @olang_textcopy(ptr %t1246, ptr %t1242, i64 %t1244)
  %t1247 = insertvalue { i64, ptr } undef, i64 %t1244, 0
  %t1248 = insertvalue { i64, ptr } %t1247, ptr %t1246, 1
  store { i64, ptr } %t1248, ptr %l547, !tbaa !27
  %t1249 = getelementptr %olang.builder, ptr %s64, i32 0, i32 3
  %t1250 = load ptr, ptr %t1249
  %t1251 = icmp ne ptr %t1250, null
  br i1 %t1251, label %sbgrew.1252, label %sbdone.1253
sbgrew.1252:
  call void @__olang_sb_done(ptr %s64)
  br label %sbdone.1253
sbdone.1253:
  %t1254 = load { i64, ptr }, ptr %l547, !tbaa !27
  %t1255 = load ptr, ptr @__olang_prog_scope
  %t1256 = extractvalue { i64, ptr } %t1254, 0
  %t1257 = extractvalue { i64, ptr } %t1254, 1
  %t1258 = mul i64 %t1256, 1
  %t1259 = call ptr @__olang_scope_alloc(ptr %t1255, i64 %t1258)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1259, ptr %t1257, i64 %t1258, i1 false)
  %t1260 = insertvalue { i64, ptr } undef, i64 %t1256, 0
  %t1261 = insertvalue { i64, ptr } %t1260, ptr %t1259, 1
  %t1263 = extractvalue { i64, ptr } %t1261, 1
  %t1264 = extractvalue { i64, ptr } %t1261, 0
  %t1265 = insertvalue { i64, ptr } undef, i64 %t1264, 0
  %t1266 = insertvalue { i64, ptr } %t1265, ptr %t1263, 1
  call void @__olang_unhandled_text({ i64, ptr } %t1266, i1 false)
  unreachable
bb270:
  %t1267 = load i32, ptr %l543, !tbaa !23
  store i32 %t1267, ptr %rv
  br label %ret
bb271:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i64 @bench_2fvec_2eopaqueArray(ptr %v0, { i64, ptr } %a0, i64 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca { ptr, ptr }
  %l3 = alloca i64
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
  %l21 = alloca i64
  %l24 = alloca i64
  %l47 = alloca i64
  %l50 = alloca i64
  %l68 = alloca i64
  %l70 = alloca { i64, ptr }
  %l73 = alloca i64
  %rv = alloca i64
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { ptr, ptr }, ptr @G_2ebench_2fvec_2eOpaque
  store { ptr, ptr } %t1, ptr %l2
  store i64 0, ptr %l3, !tbaa !24
  store i64 0, ptr %l4, !tbaa !24
  store i64 %a1, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t5 = load i64, ptr %l5, !tbaa !24
  %t6 = load i64, ptr %l4, !tbaa !24
  %t9 = icmp sgt i64 %t5, %t6
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = load i64, ptr %l6, !tbaa !24
  %t13 = icmp sgt i64 %t11, 0
  br i1 %t13, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb6
bb3:
  %t15 = load i64, ptr %l5, !tbaa !24
  %t16 = load i64, ptr %l4, !tbaa !24
  %t19 = sub i64 %t15, %t16
  %t20 = load i64, ptr %l6, !tbaa !24
  %t23 = add i64 %t19, %t20
  %t25 = sub i64 %t23, 1
  %t26 = load i64, ptr %l6, !tbaa !24
  %t29 = sdiv i64 %t25, %t26
  store i64 %t29, ptr %l24, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb5
bb5:
  %t31 = load i64, ptr %l24, !tbaa !24
  store i64 %t31, ptr %l21, !tbaa !24
  br label %bb6
bb6:
  %t32 = load i64, ptr %l21, !tbaa !24
  store i64 %t32, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb7
bb7:
  %t33 = load i64, ptr %l8, !tbaa !24
  %t34 = load i64, ptr %l7, !tbaa !24
  %t37 = icmp slt i64 %t33, %t34
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb8, label %bb9
bb8:
  br label %bb25
bb9:
  br label %bb10
bb10:
  %t41 = load i64, ptr %l4, !tbaa !24
  %t42 = load i64, ptr %l8, !tbaa !24
  %t43 = load i64, ptr %l6, !tbaa !24
  %t46 = mul i64 %t42, %t43
  %t49 = add i64 %t41, %t46
  store i64 %t49, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  %t51 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t53 = extractvalue { i64, ptr } %t51, 0
  store i64 %t53, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t55 = load i64, ptr %l11, !tbaa !24
  %t56 = load i64, ptr %l10, !tbaa !24
  %t59 = icmp sgt i64 %t55, %t56
  br i1 %t59, label %bb11, label %bb12
bb11:
  %t61 = load i64, ptr %l12, !tbaa !24
  %t63 = icmp sgt i64 %t61, 0
  br i1 %t63, label %bb13, label %bb14
bb12:
  store i64 0, ptr %l47, !tbaa !24
  br label %bb16
bb13:
  %t65 = load i64, ptr %l11, !tbaa !24
  %t66 = load i64, ptr %l10, !tbaa !24
  %t69 = sub i64 %t65, %t66
  %t70 = load i64, ptr %l12, !tbaa !24
  %t73 = add i64 %t69, %t70
  %t75 = sub i64 %t73, 1
  %t76 = load i64, ptr %l12, !tbaa !24
  %t79 = sdiv i64 %t75, %t76
  store i64 %t79, ptr %l50, !tbaa !24
  br label %bb15
bb14:
  store i64 0, ptr %l50, !tbaa !24
  br label %bb15
bb15:
  %t81 = load i64, ptr %l50, !tbaa !24
  store i64 %t81, ptr %l47, !tbaa !24
  br label %bb16
bb16:
  %t82 = load i64, ptr %l47, !tbaa !24
  store i64 %t82, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb17
bb17:
  %t83 = load i64, ptr %l14, !tbaa !24
  %t84 = load i64, ptr %l13, !tbaa !24
  %t87 = icmp slt i64 %t83, %t84
  %t89 = xor i1 %t87, true
  br i1 %t89, label %bb18, label %bb19
bb18:
  br label %bb23
bb19:
  br label %bb20
bb20:
  %t91 = load i64, ptr %l10, !tbaa !24
  %t92 = load i64, ptr %l14, !tbaa !24
  %t93 = load i64, ptr %l12, !tbaa !24
  %t96 = mul i64 %t92, %t93
  %t99 = add i64 %t91, %t96
  %t101 = load i64, ptr %l3, !tbaa !24
  store i64 %t101, ptr %l68, !tbaa !24
  %t102 = load { ptr, ptr }, ptr %l2
  %t103 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t103, ptr %l70, !tbaa !27
  %t106 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !27
  %t108 = getelementptr i64, ptr %t107, i64 %t99
  %t109 = load i64, ptr %t108, !tbaa !34
  %t111 = extractvalue { ptr, ptr } %t102, 0
  %t112 = extractvalue { ptr, ptr } %t102, 1
  %t114 = call i64 %t111(ptr %t112, i64 %t109)
  store i64 %t114, ptr %l73
  br label %bb21
bb21:
  %t115 = load i64, ptr %l68, !tbaa !24
  %t116 = load i64, ptr %l73, !tbaa !24
  %t117 = add i64 %t115, %t116
  store i64 %t117, ptr %l3, !tbaa !24
  br label %bb22
bb22:
  %t119 = load i64, ptr %l14, !tbaa !24
  %t121 = add i64 %t119, 1
  store i64 %t121, ptr %l14, !tbaa !24
  br label %bb17
bb23:
  br label %bb24
bb24:
  %t123 = load i64, ptr %l8, !tbaa !24
  %t125 = add i64 %t123, 1
  store i64 %t125, ptr %l8, !tbaa !24
  br label %bb7
bb25:
  %t127 = load i64, ptr %l3, !tbaa !24
  store i64 %t127, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @bench_2fvec_2eopaqueVec(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { ptr, ptr }
  %l3 = alloca i64
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
  %l21 = alloca i64
  %l24 = alloca i64
  %l43 = alloca i64
  %l47 = alloca i64
  %l50 = alloca i64
  %l68 = alloca i64
  %l69 = alloca { ptr, ptr }
  %l72 = alloca i64
  %l73 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { ptr, ptr }, ptr @G_2ebench_2fvec_2eOpaque
  store { ptr, ptr } %t1, ptr %l2
  store i64 0, ptr %l3, !tbaa !24
  store i64 0, ptr %l4, !tbaa !24
  store i64 %a1, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t5 = load i64, ptr %l5, !tbaa !24
  %t6 = load i64, ptr %l4, !tbaa !24
  %t9 = icmp sgt i64 %t5, %t6
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = load i64, ptr %l6, !tbaa !24
  %t13 = icmp sgt i64 %t11, 0
  br i1 %t13, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb6
bb3:
  %t15 = load i64, ptr %l5, !tbaa !24
  %t16 = load i64, ptr %l4, !tbaa !24
  %t19 = sub i64 %t15, %t16
  %t20 = load i64, ptr %l6, !tbaa !24
  %t23 = add i64 %t19, %t20
  %t25 = sub i64 %t23, 1
  %t26 = load i64, ptr %l6, !tbaa !24
  %t29 = sdiv i64 %t25, %t26
  store i64 %t29, ptr %l24, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb5
bb5:
  %t31 = load i64, ptr %l24, !tbaa !24
  store i64 %t31, ptr %l21, !tbaa !24
  br label %bb6
bb6:
  %t32 = load i64, ptr %l21, !tbaa !24
  store i64 %t32, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb7
bb7:
  %t33 = load i64, ptr %l8, !tbaa !24
  %t34 = load i64, ptr %l7, !tbaa !24
  %t37 = icmp slt i64 %t33, %t34
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb8, label %bb9
bb8:
  br label %bb27
bb9:
  br label %bb10
bb10:
  %t41 = load i64, ptr %l4, !tbaa !24
  %t42 = load i64, ptr %l8, !tbaa !24
  %t43 = load i64, ptr %l6, !tbaa !24
  %t46 = mul i64 %t42, %t43
  %t49 = add i64 %t41, %t46
  store i64 %t49, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t51)
  store i64 %t53, ptr %l43
  br label %bb11
bb11:
  %t54 = load i64, ptr %l43, !tbaa !24
  store i64 %t54, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t55 = load i64, ptr %l11, !tbaa !24
  %t56 = load i64, ptr %l10, !tbaa !24
  %t59 = icmp sgt i64 %t55, %t56
  br i1 %t59, label %bb12, label %bb13
bb12:
  %t61 = load i64, ptr %l12, !tbaa !24
  %t63 = icmp sgt i64 %t61, 0
  br i1 %t63, label %bb14, label %bb15
bb13:
  store i64 0, ptr %l47, !tbaa !24
  br label %bb17
bb14:
  %t65 = load i64, ptr %l11, !tbaa !24
  %t66 = load i64, ptr %l10, !tbaa !24
  %t69 = sub i64 %t65, %t66
  %t70 = load i64, ptr %l12, !tbaa !24
  %t73 = add i64 %t69, %t70
  %t75 = sub i64 %t73, 1
  %t76 = load i64, ptr %l12, !tbaa !24
  %t79 = sdiv i64 %t75, %t76
  store i64 %t79, ptr %l50, !tbaa !24
  br label %bb16
bb15:
  store i64 0, ptr %l50, !tbaa !24
  br label %bb16
bb16:
  %t81 = load i64, ptr %l50, !tbaa !24
  store i64 %t81, ptr %l47, !tbaa !24
  br label %bb17
bb17:
  %t82 = load i64, ptr %l47, !tbaa !24
  store i64 %t82, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb18
bb18:
  %t83 = load i64, ptr %l14, !tbaa !24
  %t84 = load i64, ptr %l13, !tbaa !24
  %t87 = icmp slt i64 %t83, %t84
  %t89 = xor i1 %t87, true
  br i1 %t89, label %bb19, label %bb20
bb19:
  br label %bb25
bb20:
  br label %bb21
bb21:
  %t91 = load i64, ptr %l10, !tbaa !24
  %t92 = load i64, ptr %l14, !tbaa !24
  %t93 = load i64, ptr %l12, !tbaa !24
  %t96 = mul i64 %t92, %t93
  %t99 = add i64 %t91, %t96
  %t101 = load i64, ptr %l3, !tbaa !24
  store i64 %t101, ptr %l68, !tbaa !24
  %t102 = load { ptr, ptr }, ptr %l2
  store { ptr, ptr } %t102, ptr %l69
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t107 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t103, i64 %t99)
  store i64 %t107, ptr %l72
  br label %bb22
bb22:
  %t108 = load { ptr, ptr }, ptr %l69
  %t109 = extractvalue { ptr, ptr } %t108, 0
  %t110 = extractvalue { ptr, ptr } %t108, 1
  %t111 = load i64, ptr %l72, !tbaa !24
  %t112 = call i64 %t109(ptr %t110, i64 %t111)
  store i64 %t112, ptr %l73
  br label %bb23
bb23:
  %t113 = load i64, ptr %l68, !tbaa !24
  %t114 = load i64, ptr %l73, !tbaa !24
  %t115 = add i64 %t113, %t114
  store i64 %t115, ptr %l3, !tbaa !24
  br label %bb24
bb24:
  %t117 = load i64, ptr %l14, !tbaa !24
  %t119 = add i64 %t117, 1
  store i64 %t119, ptr %l14, !tbaa !24
  br label %bb18
bb25:
  br label %bb26
bb26:
  %t121 = load i64, ptr %l8, !tbaa !24
  %t123 = add i64 %t121, 1
  store i64 %t123, ptr %l8, !tbaa !24
  br label %bb7
bb27:
  %t125 = load i64, ptr %l3, !tbaa !24
  store i64 %t125, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @bench_2fvec_2epositions(ptr %v0, i64 %a0, i64 %a1) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca i64
  %lp2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l10 = alloca i64
  %l18 = alloca i64
  %l21 = alloca i64
  %rv = alloca { i64, ptr }
  store i64 %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l0, !tbaa !24
  store i64 %t1, ptr %l10, !tbaa !24
  %t2 = load i64, ptr %l10, !tbaa !24
  %t3 = icmp sge i64 %t2, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i64, ptr %l10, !tbaa !24
  %t6 = icmp sle i64 %t5, 1152921504606846975
  br i1 %t6, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_86b43cd7d5adc973_c918952e60fb3887)
  unreachable
bb3:
  %t8 = load i64, ptr %l10, !tbaa !24
  %t9 = mul i64 %t8, 8
  %t10 = call ptr @__olang_scope_alloc_zeroed(ptr %v0, i64 %t9)
  %t11 = insertvalue { i64, ptr } undef, i64 %t8, 0
  %t12 = insertvalue { i64, ptr } %t11, ptr %t10, 1
  %t13 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 16, i64 8)
  store ptr %t13, ptr %lp2
  %t15 = load ptr, ptr %lp2
  store { i64, ptr } %t12, ptr %t15, !tbaa !27
  store i64 7, ptr %l3, !tbaa !24
  store i64 0, ptr %l4, !tbaa !24
  %t16 = load i64, ptr %l0, !tbaa !24
  store i64 %t16, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t18 = load i64, ptr %l5, !tbaa !24
  %t19 = load i64, ptr %l4, !tbaa !24
  %t22 = icmp sgt i64 %t18, %t19
  br i1 %t22, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_86b43cd7d5adc973_c918952e60fb3887)
  unreachable
bb5:
  %t24 = load i64, ptr %l6, !tbaa !24
  %t26 = icmp sgt i64 %t24, 0
  br i1 %t26, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb10
bb7:
  %t28 = load i64, ptr %l5, !tbaa !24
  %t29 = load i64, ptr %l4, !tbaa !24
  %t32 = sub i64 %t28, %t29
  %t33 = load i64, ptr %l6, !tbaa !24
  %t36 = add i64 %t32, %t33
  %t38 = sub i64 %t36, 1
  %t39 = load i64, ptr %l6, !tbaa !24
  %t42 = sdiv i64 %t38, %t39
  store i64 %t42, ptr %l21, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb9
bb9:
  %t44 = load i64, ptr %l21, !tbaa !24
  store i64 %t44, ptr %l18, !tbaa !24
  br label %bb10
bb10:
  %t45 = load i64, ptr %l18, !tbaa !24
  store i64 %t45, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb11
bb11:
  %t46 = load i64, ptr %l8, !tbaa !24
  %t47 = load i64, ptr %l7, !tbaa !24
  %t50 = icmp slt i64 %t46, %t47
  %t52 = xor i1 %t50, true
  br i1 %t52, label %bb12, label %bb13
bb12:
  br label %bb16
bb13:
  br label %bb14
bb14:
  %t54 = load i64, ptr %l4, !tbaa !24
  %t55 = load i64, ptr %l8, !tbaa !24
  %t56 = load i64, ptr %l6, !tbaa !24
  %t59 = mul i64 %t55, %t56
  %t62 = add i64 %t54, %t59
  %t64 = load i64, ptr %l3, !tbaa !24
  %t66 = mul i64 %t64, 6364136223846793005
  %t68 = add i64 %t66, 1442695040888963407
  store i64 %t68, ptr %l3, !tbaa !24
  %t71 = load i64, ptr %l3, !tbaa !24
  %t73 = ashr i64 %t71, 33
  %t74 = load i64, ptr %l1, !tbaa !24
  %t77 = srem i64 %t73, %t74
  %t78 = load i64, ptr %l1, !tbaa !24
  %t81 = add i64 %t77, %t78
  %t82 = load i64, ptr %l1, !tbaa !24
  %t85 = srem i64 %t81, %t82
  %t87 = load ptr, ptr %lp2
  %t89 = getelementptr { i64, ptr }, ptr %t87, i32 0, i32 1
  %t90 = load ptr, ptr %t89, !tbaa !27
  %t91 = getelementptr i64, ptr %t90, i64 %t62
  store i64 %t85, ptr %t91, !tbaa !34
  br label %bb15
bb15:
  %t92 = load i64, ptr %l8, !tbaa !24
  %t94 = add i64 %t92, 1
  store i64 %t94, ptr %l8, !tbaa !24
  br label %bb11
bb16:
  %t96 = load ptr, ptr %lp2
  %t97 = load { i64, ptr }, ptr %t96, !tbaa !27
  store { i64, ptr } %t97, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @bench_2fvec_2estoreArray(ptr %v0, { i64, ptr } %a0, i64 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
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
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca i64
  %l23 = alloca i64
  %l26 = alloca i64
  %l49 = alloca i64
  %l52 = alloca i64
  %l70 = alloca { i64, ptr }
  %l72 = alloca { i64, ptr }
  %l89 = alloca { i64, ptr }
  %rv = alloca i64
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  store i64 %a1, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t3 = load i64, ptr %l3, !tbaa !24
  %t4 = load i64, ptr %l2, !tbaa !24
  %t7 = icmp sgt i64 %t3, %t4
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load i64, ptr %l4, !tbaa !24
  %t11 = icmp sgt i64 %t9, 0
  br i1 %t11, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb6
bb3:
  %t13 = load i64, ptr %l3, !tbaa !24
  %t14 = load i64, ptr %l2, !tbaa !24
  %t17 = sub i64 %t13, %t14
  %t18 = load i64, ptr %l4, !tbaa !24
  %t21 = add i64 %t17, %t18
  %t23 = sub i64 %t21, 1
  %t24 = load i64, ptr %l4, !tbaa !24
  %t27 = sdiv i64 %t23, %t24
  store i64 %t27, ptr %l26, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb5
bb5:
  %t29 = load i64, ptr %l26, !tbaa !24
  store i64 %t29, ptr %l23, !tbaa !24
  br label %bb6
bb6:
  %t30 = load i64, ptr %l23, !tbaa !24
  store i64 %t30, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb7
bb7:
  %t31 = load i64, ptr %l6, !tbaa !24
  %t32 = load i64, ptr %l5, !tbaa !24
  %t35 = icmp slt i64 %t31, %t32
  %t37 = xor i1 %t35, true
  br i1 %t37, label %bb8, label %bb9
bb8:
  br label %bb24
bb9:
  br label %bb10
bb10:
  %t39 = load i64, ptr %l2, !tbaa !24
  %t40 = load i64, ptr %l6, !tbaa !24
  %t41 = load i64, ptr %l4, !tbaa !24
  %t44 = mul i64 %t40, %t41
  %t47 = add i64 %t39, %t44
  store i64 %t47, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  %t49 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t51 = extractvalue { i64, ptr } %t49, 0
  store i64 %t51, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t53 = load i64, ptr %l9, !tbaa !24
  %t54 = load i64, ptr %l8, !tbaa !24
  %t57 = icmp sgt i64 %t53, %t54
  br i1 %t57, label %bb11, label %bb12
bb11:
  %t59 = load i64, ptr %l10, !tbaa !24
  %t61 = icmp sgt i64 %t59, 0
  br i1 %t61, label %bb13, label %bb14
bb12:
  store i64 0, ptr %l49, !tbaa !24
  br label %bb16
bb13:
  %t63 = load i64, ptr %l9, !tbaa !24
  %t64 = load i64, ptr %l8, !tbaa !24
  %t67 = sub i64 %t63, %t64
  %t68 = load i64, ptr %l10, !tbaa !24
  %t71 = add i64 %t67, %t68
  %t73 = sub i64 %t71, 1
  %t74 = load i64, ptr %l10, !tbaa !24
  %t77 = sdiv i64 %t73, %t74
  store i64 %t77, ptr %l52, !tbaa !24
  br label %bb15
bb14:
  store i64 0, ptr %l52, !tbaa !24
  br label %bb15
bb15:
  %t79 = load i64, ptr %l52, !tbaa !24
  store i64 %t79, ptr %l49, !tbaa !24
  br label %bb16
bb16:
  %t80 = load i64, ptr %l49, !tbaa !24
  store i64 %t80, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb17
bb17:
  %t81 = load i64, ptr %l12, !tbaa !24
  %t82 = load i64, ptr %l11, !tbaa !24
  %t85 = icmp slt i64 %t81, %t82
  %t87 = xor i1 %t85, true
  br i1 %t87, label %bb18, label %bb19
bb18:
  br label %bb22
bb19:
  br label %bb20
bb20:
  %t89 = load i64, ptr %l8, !tbaa !24
  %t90 = load i64, ptr %l12, !tbaa !24
  %t91 = load i64, ptr %l10, !tbaa !24
  %t94 = mul i64 %t90, %t91
  %t97 = add i64 %t89, %t94
  store i64 %t97, ptr %l13, !tbaa !24
  %t99 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t99, ptr %l70, !tbaa !27
  %t100 = load i64, ptr %l13, !tbaa !24
  %t101 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t101, ptr %l72, !tbaa !27
  %t102 = load i64, ptr %l13, !tbaa !24
  %t104 = getelementptr { i64, ptr }, ptr %l72, i32 0, i32 1
  %t105 = load ptr, ptr %t104, !tbaa !27
  %t106 = getelementptr i64, ptr %t105, i64 %t102
  %t107 = load i64, ptr %t106, !tbaa !34
  %t109 = mul i64 %t107, 2
  %t110 = load i64, ptr %l7, !tbaa !24
  %t113 = add i64 %t109, %t110
  %t116 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t117 = load ptr, ptr %t116, !tbaa !27
  %t118 = getelementptr i64, ptr %t117, i64 %t100
  store i64 %t113, ptr %t118, !tbaa !34
  br label %bb21
bb21:
  %t119 = load i64, ptr %l12, !tbaa !24
  %t121 = add i64 %t119, 1
  store i64 %t121, ptr %l12, !tbaa !24
  br label %bb17
bb22:
  br label %bb23
bb23:
  %t123 = load i64, ptr %l6, !tbaa !24
  %t125 = add i64 %t123, 1
  store i64 %t125, ptr %l6, !tbaa !24
  br label %bb7
bb24:
  store i64 0, ptr %l14, !tbaa !24
  %t127 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t127, ptr %l15, !tbaa !27
  store i64 0, ptr %l16, !tbaa !24
  %t129 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t131 = extractvalue { i64, ptr } %t129, 0
  store i64 %t131, ptr %l17, !tbaa !24
  br label %bb25
bb25:
  %t133 = load i64, ptr %l16, !tbaa !24
  %t134 = load i64, ptr %l17, !tbaa !24
  %t137 = icmp slt i64 %t133, %t134
  %t139 = xor i1 %t137, true
  br i1 %t139, label %bb26, label %bb27
bb26:
  br label %bb30
bb27:
  br label %bb28
bb28:
  %t141 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t141, ptr %l89, !tbaa !27
  %t142 = load i64, ptr %l16, !tbaa !24
  %t144 = getelementptr { i64, ptr }, ptr %l89, i32 0, i32 1
  %t145 = load ptr, ptr %t144, !tbaa !27
  %t146 = getelementptr i64, ptr %t145, i64 %t142
  %t147 = load i64, ptr %t146, !tbaa !34
  %t149 = load i64, ptr %l14, !tbaa !24
  %t153 = add i64 %t149, %t147
  store i64 %t153, ptr %l14, !tbaa !24
  br label %bb29
bb29:
  %t155 = load i64, ptr %l16, !tbaa !24
  %t157 = add i64 %t155, 1
  store i64 %t157, ptr %l16, !tbaa !24
  br label %bb25
bb30:
  %t159 = load i64, ptr %l14, !tbaa !24
  store i64 %t159, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @bench_2fvec_2estoreList(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
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
  %l15 = alloca ptr
  %l16 = alloca i64
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca i64
  %l25 = alloca i64
  %l28 = alloca i64
  %l47 = alloca i64
  %l51 = alloca i64
  %l54 = alloca i64
  %l72 = alloca ptr
  %l73 = alloca i64
  %l76 = alloca i64
  %l85 = alloca { i64, ptr }
  %l88 = alloca { i64, ptr }
  %l89 = alloca i32
  %l91 = alloca i1
  %l98 = alloca { i64, ptr }
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  store i64 %a1, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t3 = load i64, ptr %l3, !tbaa !24
  %t4 = load i64, ptr %l2, !tbaa !24
  %t7 = icmp sgt i64 %t3, %t4
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load i64, ptr %l4, !tbaa !24
  %t11 = icmp sgt i64 %t9, 0
  br i1 %t11, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb6
bb3:
  %t13 = load i64, ptr %l3, !tbaa !24
  %t14 = load i64, ptr %l2, !tbaa !24
  %t17 = sub i64 %t13, %t14
  %t18 = load i64, ptr %l4, !tbaa !24
  %t21 = add i64 %t17, %t18
  %t23 = sub i64 %t21, 1
  %t24 = load i64, ptr %l4, !tbaa !24
  %t27 = sdiv i64 %t23, %t24
  store i64 %t27, ptr %l28, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l28, !tbaa !24
  br label %bb5
bb5:
  %t29 = load i64, ptr %l28, !tbaa !24
  store i64 %t29, ptr %l25, !tbaa !24
  br label %bb6
bb6:
  %t30 = load i64, ptr %l25, !tbaa !24
  store i64 %t30, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb7
bb7:
  %t31 = load i64, ptr %l6, !tbaa !24
  %t32 = load i64, ptr %l5, !tbaa !24
  %t35 = icmp slt i64 %t31, %t32
  %t37 = xor i1 %t35, true
  br i1 %t37, label %bb8, label %bb9
bb8:
  br label %bb27
bb9:
  br label %bb10
bb10:
  %t39 = load i64, ptr %l2, !tbaa !24
  %t40 = load i64, ptr %l6, !tbaa !24
  %t41 = load i64, ptr %l4, !tbaa !24
  %t44 = mul i64 %t40, %t41
  %t47 = add i64 %t39, %t44
  store i64 %t47, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = call i64 @std_2flist_2estd_2flist_3aList_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t49)
  store i64 %t51, ptr %l47
  br label %bb11
bb11:
  %t52 = load i64, ptr %l47, !tbaa !24
  store i64 %t52, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t53 = load i64, ptr %l9, !tbaa !24
  %t54 = load i64, ptr %l8, !tbaa !24
  %t57 = icmp sgt i64 %t53, %t54
  br i1 %t57, label %bb12, label %bb13
bb12:
  %t59 = load i64, ptr %l10, !tbaa !24
  %t61 = icmp sgt i64 %t59, 0
  br i1 %t61, label %bb14, label %bb15
bb13:
  store i64 0, ptr %l51, !tbaa !24
  br label %bb17
bb14:
  %t63 = load i64, ptr %l9, !tbaa !24
  %t64 = load i64, ptr %l8, !tbaa !24
  %t67 = sub i64 %t63, %t64
  %t68 = load i64, ptr %l10, !tbaa !24
  %t71 = add i64 %t67, %t68
  %t73 = sub i64 %t71, 1
  %t74 = load i64, ptr %l10, !tbaa !24
  %t77 = sdiv i64 %t73, %t74
  store i64 %t77, ptr %l54, !tbaa !24
  br label %bb16
bb15:
  store i64 0, ptr %l54, !tbaa !24
  br label %bb16
bb16:
  %t79 = load i64, ptr %l54, !tbaa !24
  store i64 %t79, ptr %l51, !tbaa !24
  br label %bb17
bb17:
  %t80 = load i64, ptr %l51, !tbaa !24
  store i64 %t80, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb18
bb18:
  %t81 = load i64, ptr %l12, !tbaa !24
  %t82 = load i64, ptr %l11, !tbaa !24
  %t85 = icmp slt i64 %t81, %t82
  %t87 = xor i1 %t85, true
  br i1 %t87, label %bb19, label %bb20
bb19:
  br label %bb25
bb20:
  br label %bb21
bb21:
  %t89 = load i64, ptr %l8, !tbaa !24
  %t90 = load i64, ptr %l12, !tbaa !24
  %t91 = load i64, ptr %l10, !tbaa !24
  %t94 = mul i64 %t90, %t91
  %t97 = add i64 %t89, %t94
  store i64 %t97, ptr %l13, !tbaa !24
  %t99 = load ptr, ptr %l0, !tbaa !29
  store ptr %t99, ptr %l72, !tbaa !29
  %t100 = load i64, ptr %l13, !tbaa !24
  store i64 %t100, ptr %l73, !tbaa !24
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load i64, ptr %l13, !tbaa !24
  %t105 = call i64 @std_2flist_2estd_2flist_3aList_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t101, i64 %t102)
  store i64 %t105, ptr %l76
  br label %bb22
bb22:
  %t106 = load i64, ptr %l76, !tbaa !24
  %t107 = mul i64 %t106, 2
  %t108 = load i64, ptr %l7, !tbaa !24
  %t111 = add i64 %t107, %t108
  %t112 = load ptr, ptr %l72, !tbaa !29
  %t113 = load i64, ptr %l73, !tbaa !24
  call void @std_2flist_2estd_2flist_3aList_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t112, i64 %t113, i64 %t111)
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t115 = load i64, ptr %l12, !tbaa !24
  %t117 = add i64 %t115, 1
  store i64 %t117, ptr %l12, !tbaa !24
  br label %bb18
bb25:
  br label %bb26
bb26:
  %t119 = load i64, ptr %l6, !tbaa !24
  %t121 = add i64 %t119, 1
  store i64 %t121, ptr %l6, !tbaa !24
  br label %bb7
bb27:
  store i64 0, ptr %l14, !tbaa !24
  %t123 = load ptr, ptr %l0, !tbaa !29
  store ptr %t123, ptr %l15, !tbaa !29
  store i64 0, ptr %l16, !tbaa !24
  br label %bb28
bb28:
  %t125 = load ptr, ptr %l15, !tbaa !29
  %t126 = load i64, ptr %l16, !tbaa !24
  %t129 = call { i32, { i64, ptr } } @std_2flist_2estd_2flist_3aList_3cI64_3e_2eRunFrom_3cI64_3e(ptr %v0, ptr %v0, ptr %t125, i64 %t126)
  %t130 = extractvalue { i32, { i64, ptr } } %t129, 1
  %t131 = extractvalue { i32, { i64, ptr } } %t129, 0
  store i32 %t131, ptr %l89
  %t132 = icmp ne i32 %t131, 0
  br i1 %t132, label %bb30, label %ok.133, !prof !99
ok.133:
  store { i64, ptr } %t130, ptr %l88
  br label %bb29
bb29:
  %t134 = load { i64, ptr }, ptr %l88, !tbaa !27
  store { i64, ptr } %t134, ptr %l85, !tbaa !27
  br label %bb32
bb30:
  %t135 = load i32, ptr %l89, !tbaa !23
  %t136 = ashr i32 %t135, 16
  %t138 = icmp eq i32 %t136, 1
  store i1 %t138, ptr %l91, !tbaa !21
  br label %bb31
bb31:
  br label %bb40
bb32:
  %t139 = load { i64, ptr }, ptr %l85, !tbaa !27
  store { i64, ptr } %t139, ptr %l17, !tbaa !27
  %t140 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t142 = extractvalue { i64, ptr } %t140, 0
  store i64 %t142, ptr %l18, !tbaa !24
  store i64 0, ptr %l19, !tbaa !24
  br label %bb33
bb33:
  %t144 = load i64, ptr %l19, !tbaa !24
  %t145 = load i64, ptr %l18, !tbaa !24
  %t148 = icmp slt i64 %t144, %t145
  %t150 = xor i1 %t148, true
  br i1 %t150, label %bb34, label %bb35
bb34:
  br label %bb38
bb35:
  br label %bb36
bb36:
  %t152 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t152, ptr %l98, !tbaa !27
  %t153 = load i64, ptr %l19, !tbaa !24
  %t155 = getelementptr { i64, ptr }, ptr %l98, i32 0, i32 1
  %t156 = load ptr, ptr %t155, !tbaa !27
  %t157 = getelementptr i64, ptr %t156, i64 %t153
  %t158 = load i64, ptr %t157, !tbaa !34
  %t160 = load i64, ptr %l14, !tbaa !24
  %t164 = add i64 %t160, %t158
  store i64 %t164, ptr %l14, !tbaa !24
  br label %bb37
bb37:
  %t166 = load i64, ptr %l19, !tbaa !24
  %t168 = add i64 %t166, 1
  store i64 %t168, ptr %l19, !tbaa !24
  br label %bb33
bb38:
  %t170 = load i64, ptr %l16, !tbaa !24
  %t171 = load i64, ptr %l18, !tbaa !24
  %t174 = add i64 %t170, %t171
  store i64 %t174, ptr %l16, !tbaa !24
  br label %bb39
bb39:
  br label %bb28
bb40:
  %t176 = load i64, ptr %l14, !tbaa !24
  store i64 %t176, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @bench_2fvec_2estoreVec(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
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
  %l15 = alloca ptr
  %l16 = alloca i64
  %l22 = alloca i64
  %l25 = alloca i64
  %l44 = alloca i64
  %l48 = alloca i64
  %l51 = alloca i64
  %l69 = alloca ptr
  %l70 = alloca i64
  %l73 = alloca i64
  %l82 = alloca i64
  %l84 = alloca i64
  %l89 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  store i64 %a1, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t3 = load i64, ptr %l3, !tbaa !24
  %t4 = load i64, ptr %l2, !tbaa !24
  %t7 = icmp sgt i64 %t3, %t4
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load i64, ptr %l4, !tbaa !24
  %t11 = icmp sgt i64 %t9, 0
  br i1 %t11, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb6
bb3:
  %t13 = load i64, ptr %l3, !tbaa !24
  %t14 = load i64, ptr %l2, !tbaa !24
  %t17 = sub i64 %t13, %t14
  %t18 = load i64, ptr %l4, !tbaa !24
  %t21 = add i64 %t17, %t18
  %t23 = sub i64 %t21, 1
  %t24 = load i64, ptr %l4, !tbaa !24
  %t27 = sdiv i64 %t23, %t24
  store i64 %t27, ptr %l25, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb5
bb5:
  %t29 = load i64, ptr %l25, !tbaa !24
  store i64 %t29, ptr %l22, !tbaa !24
  br label %bb6
bb6:
  %t30 = load i64, ptr %l22, !tbaa !24
  store i64 %t30, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb7
bb7:
  %t31 = load i64, ptr %l6, !tbaa !24
  %t32 = load i64, ptr %l5, !tbaa !24
  %t35 = icmp slt i64 %t31, %t32
  %t37 = xor i1 %t35, true
  br i1 %t37, label %bb8, label %bb9
bb8:
  br label %bb27
bb9:
  br label %bb10
bb10:
  %t39 = load i64, ptr %l2, !tbaa !24
  %t40 = load i64, ptr %l6, !tbaa !24
  %t41 = load i64, ptr %l4, !tbaa !24
  %t44 = mul i64 %t40, %t41
  %t47 = add i64 %t39, %t44
  store i64 %t47, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t49)
  store i64 %t51, ptr %l44
  br label %bb11
bb11:
  %t52 = load i64, ptr %l44, !tbaa !24
  store i64 %t52, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t53 = load i64, ptr %l9, !tbaa !24
  %t54 = load i64, ptr %l8, !tbaa !24
  %t57 = icmp sgt i64 %t53, %t54
  br i1 %t57, label %bb12, label %bb13
bb12:
  %t59 = load i64, ptr %l10, !tbaa !24
  %t61 = icmp sgt i64 %t59, 0
  br i1 %t61, label %bb14, label %bb15
bb13:
  store i64 0, ptr %l48, !tbaa !24
  br label %bb17
bb14:
  %t63 = load i64, ptr %l9, !tbaa !24
  %t64 = load i64, ptr %l8, !tbaa !24
  %t67 = sub i64 %t63, %t64
  %t68 = load i64, ptr %l10, !tbaa !24
  %t71 = add i64 %t67, %t68
  %t73 = sub i64 %t71, 1
  %t74 = load i64, ptr %l10, !tbaa !24
  %t77 = sdiv i64 %t73, %t74
  store i64 %t77, ptr %l51, !tbaa !24
  br label %bb16
bb15:
  store i64 0, ptr %l51, !tbaa !24
  br label %bb16
bb16:
  %t79 = load i64, ptr %l51, !tbaa !24
  store i64 %t79, ptr %l48, !tbaa !24
  br label %bb17
bb17:
  %t80 = load i64, ptr %l48, !tbaa !24
  store i64 %t80, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb18
bb18:
  %t81 = load i64, ptr %l12, !tbaa !24
  %t82 = load i64, ptr %l11, !tbaa !24
  %t85 = icmp slt i64 %t81, %t82
  %t87 = xor i1 %t85, true
  br i1 %t87, label %bb19, label %bb20
bb19:
  br label %bb25
bb20:
  br label %bb21
bb21:
  %t89 = load i64, ptr %l8, !tbaa !24
  %t90 = load i64, ptr %l12, !tbaa !24
  %t91 = load i64, ptr %l10, !tbaa !24
  %t94 = mul i64 %t90, %t91
  %t97 = add i64 %t89, %t94
  store i64 %t97, ptr %l13, !tbaa !24
  %t99 = load ptr, ptr %l0, !tbaa !29
  store ptr %t99, ptr %l69, !tbaa !29
  %t100 = load i64, ptr %l13, !tbaa !24
  store i64 %t100, ptr %l70, !tbaa !24
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load i64, ptr %l13, !tbaa !24
  %t105 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t101, i64 %t102)
  store i64 %t105, ptr %l73
  br label %bb22
bb22:
  %t106 = load i64, ptr %l73, !tbaa !24
  %t107 = mul i64 %t106, 2
  %t108 = load i64, ptr %l7, !tbaa !24
  %t111 = add i64 %t107, %t108
  %t112 = load ptr, ptr %l69, !tbaa !29
  %t113 = load i64, ptr %l70, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t112, i64 %t113, i64 %t111)
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t115 = load i64, ptr %l12, !tbaa !24
  %t117 = add i64 %t115, 1
  store i64 %t117, ptr %l12, !tbaa !24
  br label %bb18
bb25:
  br label %bb26
bb26:
  %t119 = load i64, ptr %l6, !tbaa !24
  %t121 = add i64 %t119, 1
  store i64 %t121, ptr %l6, !tbaa !24
  br label %bb7
bb27:
  store i64 0, ptr %l14, !tbaa !24
  %t123 = load ptr, ptr %l0, !tbaa !29
  store ptr %t123, ptr %l15, !tbaa !29
  store i64 0, ptr %l16, !tbaa !24
  br label %bb28
bb28:
  %t125 = load i64, ptr %l16, !tbaa !24
  store i64 %t125, ptr %l82, !tbaa !24
  %t126 = load ptr, ptr %l15, !tbaa !29
  %t128 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t126)
  store i64 %t128, ptr %l84
  br label %bb29
bb29:
  %t129 = load i64, ptr %l82, !tbaa !24
  %t130 = load i64, ptr %l84, !tbaa !24
  %t131 = icmp slt i64 %t129, %t130
  %t133 = xor i1 %t131, true
  br i1 %t133, label %bb30, label %bb31
bb30:
  br label %bb35
bb31:
  br label %bb32
bb32:
  %t135 = load ptr, ptr %l15, !tbaa !29
  %t136 = load i64, ptr %l16, !tbaa !24
  %t139 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t135, i64 %t136)
  store i64 %t139, ptr %l89
  br label %bb33
bb33:
  %t140 = load i64, ptr %l89, !tbaa !24
  %t141 = load i64, ptr %l14, !tbaa !24
  %t145 = add i64 %t141, %t140
  store i64 %t145, ptr %l14, !tbaa !24
  br label %bb34
bb34:
  %t147 = load i64, ptr %l16, !tbaa !24
  %t149 = add i64 %t147, 1
  store i64 %t149, ptr %l16, !tbaa !24
  br label %bb28
bb35:
  %t151 = load i64, ptr %l14, !tbaa !24
  store i64 %t151, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @bench_2fvec_2etwice(i64 %a0) #0 {
entry:
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = mul i64 %a0, 2
  %t5 = add i64 %t3, 1
  store i64 %t5, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @bench_2fvec_2evalues(ptr %v0, i64 %a0) #0 {
entry:
  %l0 = alloca i64
  %lp1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca i64
  %l17 = alloca i64
  %l20 = alloca i64
  %rv = alloca { i64, ptr }
  store i64 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l0, !tbaa !24
  store i64 %t1, ptr %l9, !tbaa !24
  %t2 = load i64, ptr %l9, !tbaa !24
  %t3 = icmp sge i64 %t2, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i64, ptr %l9, !tbaa !24
  %t6 = icmp sle i64 %t5, 1152921504606846975
  br i1 %t6, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_825ec9e248fb1845_9d70a386cad83911)
  unreachable
bb3:
  %t8 = load i64, ptr %l9, !tbaa !24
  %t9 = mul i64 %t8, 8
  %t10 = call ptr @__olang_scope_alloc_zeroed(ptr %v0, i64 %t9)
  %t11 = insertvalue { i64, ptr } undef, i64 %t8, 0
  %t12 = insertvalue { i64, ptr } %t11, ptr %t10, 1
  %t13 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 16, i64 8)
  store ptr %t13, ptr %lp1
  %t15 = load ptr, ptr %lp1
  store { i64, ptr } %t12, ptr %t15, !tbaa !27
  store i64 1, ptr %l2, !tbaa !24
  store i64 0, ptr %l3, !tbaa !24
  %t16 = load i64, ptr %l0, !tbaa !24
  store i64 %t16, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t18 = load i64, ptr %l4, !tbaa !24
  %t19 = load i64, ptr %l3, !tbaa !24
  %t22 = icmp sgt i64 %t18, %t19
  br i1 %t22, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_825ec9e248fb1845_9d70a386cad83911)
  unreachable
bb5:
  %t24 = load i64, ptr %l5, !tbaa !24
  %t26 = icmp sgt i64 %t24, 0
  br i1 %t26, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb10
bb7:
  %t28 = load i64, ptr %l4, !tbaa !24
  %t29 = load i64, ptr %l3, !tbaa !24
  %t32 = sub i64 %t28, %t29
  %t33 = load i64, ptr %l5, !tbaa !24
  %t36 = add i64 %t32, %t33
  %t38 = sub i64 %t36, 1
  %t39 = load i64, ptr %l5, !tbaa !24
  %t42 = sdiv i64 %t38, %t39
  store i64 %t42, ptr %l20, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb9
bb9:
  %t44 = load i64, ptr %l20, !tbaa !24
  store i64 %t44, ptr %l17, !tbaa !24
  br label %bb10
bb10:
  %t45 = load i64, ptr %l17, !tbaa !24
  store i64 %t45, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb11
bb11:
  %t46 = load i64, ptr %l7, !tbaa !24
  %t47 = load i64, ptr %l6, !tbaa !24
  %t50 = icmp slt i64 %t46, %t47
  %t52 = xor i1 %t50, true
  br i1 %t52, label %bb12, label %bb13
bb12:
  br label %bb16
bb13:
  br label %bb14
bb14:
  %t54 = load i64, ptr %l3, !tbaa !24
  %t55 = load i64, ptr %l7, !tbaa !24
  %t56 = load i64, ptr %l5, !tbaa !24
  %t59 = mul i64 %t55, %t56
  %t62 = add i64 %t54, %t59
  %t64 = load i64, ptr %l2, !tbaa !24
  %t66 = mul i64 %t64, 6364136223846793005
  %t68 = add i64 %t66, 1442695040888963407
  store i64 %t68, ptr %l2, !tbaa !24
  %t71 = load i64, ptr %l2, !tbaa !24
  %t73 = ashr i64 %t71, 33
  %t75 = load ptr, ptr %lp1
  %t77 = getelementptr { i64, ptr }, ptr %t75, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !27
  %t79 = getelementptr i64, ptr %t78, i64 %t62
  store i64 %t73, ptr %t79, !tbaa !34
  br label %bb15
bb15:
  %t80 = load i64, ptr %l7, !tbaa !24
  %t82 = add i64 %t80, 1
  store i64 %t82, ptr %l7, !tbaa !24
  br label %bb11
bb16:
  %t84 = load ptr, ptr %lp1
  %t85 = load { i64, ptr }, ptr %t84, !tbaa !27
  store { i64, ptr } %t85, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @bench_2fvec_2ewalkArray(ptr %v0, { i64, ptr } %a0, i64 %a1) #0 {
entry:
  %l2 = alloca i64
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
  %l45 = alloca { i64, ptr }
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  store i64 0, ptr %l3, !tbaa !24
  store i64 %a1, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t3 = load i64, ptr %l4, !tbaa !24
  %t4 = load i64, ptr %l3, !tbaa !24
  %t7 = icmp sgt i64 %t3, %t4
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load i64, ptr %l5, !tbaa !24
  %t11 = icmp sgt i64 %t9, 0
  br i1 %t11, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb6
bb3:
  %t13 = load i64, ptr %l4, !tbaa !24
  %t14 = load i64, ptr %l3, !tbaa !24
  %t17 = sub i64 %t13, %t14
  %t18 = load i64, ptr %l5, !tbaa !24
  %t21 = add i64 %t17, %t18
  %t23 = sub i64 %t21, 1
  %t24 = load i64, ptr %l5, !tbaa !24
  %t27 = sdiv i64 %t23, %t24
  store i64 %t27, ptr %l20, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb5
bb5:
  %t29 = load i64, ptr %l20, !tbaa !24
  store i64 %t29, ptr %l17, !tbaa !24
  br label %bb6
bb6:
  %t30 = load i64, ptr %l17, !tbaa !24
  store i64 %t30, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb7
bb7:
  %t31 = load i64, ptr %l7, !tbaa !24
  %t32 = load i64, ptr %l6, !tbaa !24
  %t35 = icmp slt i64 %t31, %t32
  %t37 = xor i1 %t35, true
  br i1 %t37, label %bb8, label %bb9
bb8:
  br label %bb18
bb9:
  br label %bb10
bb10:
  %t39 = load i64, ptr %l3, !tbaa !24
  %t40 = load i64, ptr %l7, !tbaa !24
  %t41 = load i64, ptr %l5, !tbaa !24
  %t44 = mul i64 %t40, %t41
  %t47 = add i64 %t39, %t44
  store i64 %t47, ptr %l8, !tbaa !24
  store { i64, ptr } %a0, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t51 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t53 = extractvalue { i64, ptr } %t51, 0
  store i64 %t53, ptr %l11, !tbaa !24
  br label %bb11
bb11:
  %t55 = load i64, ptr %l10, !tbaa !24
  %t56 = load i64, ptr %l11, !tbaa !24
  %t59 = icmp slt i64 %t55, %t56
  %t61 = xor i1 %t59, true
  br i1 %t61, label %bb12, label %bb13
bb12:
  br label %bb16
bb13:
  br label %bb14
bb14:
  %t63 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t63, ptr %l45, !tbaa !27
  %t64 = load i64, ptr %l10, !tbaa !24
  %t66 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !27
  %t68 = getelementptr i64, ptr %t67, i64 %t64
  %t69 = load i64, ptr %t68, !tbaa !34
  %t71 = load i64, ptr %l2, !tbaa !24
  %t73 = load i64, ptr %l8, !tbaa !24
  %t76 = xor i64 %t69, %t73
  %t79 = add i64 %t71, %t76
  store i64 %t79, ptr %l2, !tbaa !24
  br label %bb15
bb15:
  %t81 = load i64, ptr %l10, !tbaa !24
  %t83 = add i64 %t81, 1
  store i64 %t83, ptr %l10, !tbaa !24
  br label %bb11
bb16:
  br label %bb17
bb17:
  %t85 = load i64, ptr %l7, !tbaa !24
  %t87 = add i64 %t85, 1
  store i64 %t87, ptr %l7, !tbaa !24
  br label %bb7
bb18:
  %t89 = load i64, ptr %l2, !tbaa !24
  store i64 %t89, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @bench_2fvec_2ewalkList(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l19 = alloca i64
  %l22 = alloca i64
  %l41 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l45 = alloca i32
  %l47 = alloca i1
  %l54 = alloca { i64, ptr }
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  store i64 0, ptr %l3, !tbaa !24
  store i64 %a1, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t3 = load i64, ptr %l4, !tbaa !24
  %t4 = load i64, ptr %l3, !tbaa !24
  %t7 = icmp sgt i64 %t3, %t4
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load i64, ptr %l5, !tbaa !24
  %t11 = icmp sgt i64 %t9, 0
  br i1 %t11, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb6
bb3:
  %t13 = load i64, ptr %l4, !tbaa !24
  %t14 = load i64, ptr %l3, !tbaa !24
  %t17 = sub i64 %t13, %t14
  %t18 = load i64, ptr %l5, !tbaa !24
  %t21 = add i64 %t17, %t18
  %t23 = sub i64 %t21, 1
  %t24 = load i64, ptr %l5, !tbaa !24
  %t27 = sdiv i64 %t23, %t24
  store i64 %t27, ptr %l22, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb5
bb5:
  %t29 = load i64, ptr %l22, !tbaa !24
  store i64 %t29, ptr %l19, !tbaa !24
  br label %bb6
bb6:
  %t30 = load i64, ptr %l19, !tbaa !24
  store i64 %t30, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb7
bb7:
  %t31 = load i64, ptr %l7, !tbaa !24
  %t32 = load i64, ptr %l6, !tbaa !24
  %t35 = icmp slt i64 %t31, %t32
  %t37 = xor i1 %t35, true
  br i1 %t37, label %bb8, label %bb9
bb8:
  br label %bb25
bb9:
  br label %bb10
bb10:
  %t39 = load i64, ptr %l3, !tbaa !24
  %t40 = load i64, ptr %l7, !tbaa !24
  %t41 = load i64, ptr %l5, !tbaa !24
  %t44 = mul i64 %t40, %t41
  %t47 = add i64 %t39, %t44
  store i64 %t47, ptr %l8, !tbaa !24
  store ptr %a0, ptr %l9, !tbaa !29
  store i64 0, ptr %l10, !tbaa !24
  br label %bb11
bb11:
  %t51 = load ptr, ptr %l9, !tbaa !29
  %t52 = load i64, ptr %l10, !tbaa !24
  %t55 = call { i32, { i64, ptr } } @std_2flist_2estd_2flist_3aList_3cI64_3e_2eRunFrom_3cI64_3e(ptr %v0, ptr %v0, ptr %t51, i64 %t52)
  %t56 = extractvalue { i32, { i64, ptr } } %t55, 1
  %t57 = extractvalue { i32, { i64, ptr } } %t55, 0
  store i32 %t57, ptr %l45
  %t58 = icmp ne i32 %t57, 0
  br i1 %t58, label %bb13, label %ok.59, !prof !99
ok.59:
  store { i64, ptr } %t56, ptr %l44
  br label %bb12
bb12:
  %t60 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t60, ptr %l41, !tbaa !27
  br label %bb15
bb13:
  %t61 = load i32, ptr %l45, !tbaa !23
  %t62 = ashr i32 %t61, 16
  %t64 = icmp eq i32 %t62, 1
  store i1 %t64, ptr %l47, !tbaa !21
  br label %bb14
bb14:
  br label %bb23
bb15:
  %t65 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t65, ptr %l11, !tbaa !27
  %t66 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t68 = extractvalue { i64, ptr } %t66, 0
  store i64 %t68, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb16
bb16:
  %t70 = load i64, ptr %l13, !tbaa !24
  %t71 = load i64, ptr %l12, !tbaa !24
  %t74 = icmp slt i64 %t70, %t71
  %t76 = xor i1 %t74, true
  br i1 %t76, label %bb17, label %bb18
bb17:
  br label %bb21
bb18:
  br label %bb19
bb19:
  %t78 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t78, ptr %l54, !tbaa !27
  %t79 = load i64, ptr %l13, !tbaa !24
  %t81 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !27
  %t83 = getelementptr i64, ptr %t82, i64 %t79
  %t84 = load i64, ptr %t83, !tbaa !34
  %t86 = load i64, ptr %l2, !tbaa !24
  %t88 = load i64, ptr %l8, !tbaa !24
  %t91 = xor i64 %t84, %t88
  %t94 = add i64 %t86, %t91
  store i64 %t94, ptr %l2, !tbaa !24
  br label %bb20
bb20:
  %t96 = load i64, ptr %l13, !tbaa !24
  %t98 = add i64 %t96, 1
  store i64 %t98, ptr %l13, !tbaa !24
  br label %bb16
bb21:
  %t100 = load i64, ptr %l10, !tbaa !24
  %t101 = load i64, ptr %l12, !tbaa !24
  %t104 = add i64 %t100, %t101
  store i64 %t104, ptr %l10, !tbaa !24
  br label %bb22
bb22:
  br label %bb11
bb23:
  br label %bb24
bb24:
  %t106 = load i64, ptr %l7, !tbaa !24
  %t108 = add i64 %t106, 1
  store i64 %t108, ptr %l7, !tbaa !24
  br label %bb7
bb25:
  %t110 = load i64, ptr %l2, !tbaa !24
  store i64 %t110, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @bench_2fvec_2ewalkVec(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca i64
  %l16 = alloca i64
  %l19 = alloca i64
  %l38 = alloca i64
  %l40 = alloca i64
  %l45 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  store i64 0, ptr %l3, !tbaa !24
  store i64 %a1, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t3 = load i64, ptr %l4, !tbaa !24
  %t4 = load i64, ptr %l3, !tbaa !24
  %t7 = icmp sgt i64 %t3, %t4
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load i64, ptr %l5, !tbaa !24
  %t11 = icmp sgt i64 %t9, 0
  br i1 %t11, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l16, !tbaa !24
  br label %bb6
bb3:
  %t13 = load i64, ptr %l4, !tbaa !24
  %t14 = load i64, ptr %l3, !tbaa !24
  %t17 = sub i64 %t13, %t14
  %t18 = load i64, ptr %l5, !tbaa !24
  %t21 = add i64 %t17, %t18
  %t23 = sub i64 %t21, 1
  %t24 = load i64, ptr %l5, !tbaa !24
  %t27 = sdiv i64 %t23, %t24
  store i64 %t27, ptr %l19, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb5
bb5:
  %t29 = load i64, ptr %l19, !tbaa !24
  store i64 %t29, ptr %l16, !tbaa !24
  br label %bb6
bb6:
  %t30 = load i64, ptr %l16, !tbaa !24
  store i64 %t30, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb7
bb7:
  %t31 = load i64, ptr %l7, !tbaa !24
  %t32 = load i64, ptr %l6, !tbaa !24
  %t35 = icmp slt i64 %t31, %t32
  %t37 = xor i1 %t35, true
  br i1 %t37, label %bb8, label %bb9
bb8:
  br label %bb20
bb9:
  br label %bb10
bb10:
  %t39 = load i64, ptr %l3, !tbaa !24
  %t40 = load i64, ptr %l7, !tbaa !24
  %t41 = load i64, ptr %l5, !tbaa !24
  %t44 = mul i64 %t40, %t41
  %t47 = add i64 %t39, %t44
  store i64 %t47, ptr %l8, !tbaa !24
  store ptr %a0, ptr %l9, !tbaa !29
  store i64 0, ptr %l10, !tbaa !24
  br label %bb11
bb11:
  %t51 = load i64, ptr %l10, !tbaa !24
  store i64 %t51, ptr %l38, !tbaa !24
  %t52 = load ptr, ptr %l9, !tbaa !29
  %t54 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t52)
  store i64 %t54, ptr %l40
  br label %bb12
bb12:
  %t55 = load i64, ptr %l38, !tbaa !24
  %t56 = load i64, ptr %l40, !tbaa !24
  %t57 = icmp slt i64 %t55, %t56
  %t59 = xor i1 %t57, true
  br i1 %t59, label %bb13, label %bb14
bb13:
  br label %bb18
bb14:
  br label %bb15
bb15:
  %t61 = load ptr, ptr %l9, !tbaa !29
  %t62 = load i64, ptr %l10, !tbaa !24
  %t65 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t61, i64 %t62)
  store i64 %t65, ptr %l45
  br label %bb16
bb16:
  %t66 = load i64, ptr %l45, !tbaa !24
  %t67 = load i64, ptr %l2, !tbaa !24
  %t69 = load i64, ptr %l8, !tbaa !24
  %t72 = xor i64 %t66, %t69
  %t75 = add i64 %t67, %t72
  store i64 %t75, ptr %l2, !tbaa !24
  br label %bb17
bb17:
  %t77 = load i64, ptr %l10, !tbaa !24
  %t79 = add i64 %t77, 1
  store i64 %t79, ptr %l10, !tbaa !24
  br label %bb11
bb18:
  br label %bb19
bb19:
  %t81 = load i64, ptr %l7, !tbaa !24
  %t83 = add i64 %t81, 1
  store i64 %t83, ptr %l7, !tbaa !24
  br label %bb7
bb20:
  %t85 = load i64, ptr %l2, !tbaa !24
  store i64 %t85, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"bench/vec:SimA" @bench_2fvec_3aSimA_2ector(ptr %v0, i64 %a0) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca { i64, ptr }
  %l3 = alloca i64
  %l7 = alloca i64
  %rv = alloca %"bench/vec:SimA"
  store i64 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l0, !tbaa !24
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load i64, ptr %l3, !tbaa !24
  %t3 = icmp sge i64 %t2, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i64, ptr %l3, !tbaa !24
  %t6 = icmp sle i64 %t5, 1152921504606846975
  br i1 %t6, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_f6cdfe2a667948ca_4b83585f8069a28e)
  unreachable
bb3:
  %t8 = load i64, ptr %l3, !tbaa !24
  %t9 = mul i64 %t8, 8
  %t10 = call ptr @__olang_scope_alloc_zeroed(ptr %v0, i64 %t9)
  %t11 = insertvalue { i64, ptr } undef, i64 %t8, 0
  %t12 = insertvalue { i64, ptr } %t11, ptr %t10, 1
  store { i64, ptr } %t12, ptr %l1, !tbaa !27
  %t14 = load i64, ptr %l0, !tbaa !24
  store i64 %t14, ptr %l7, !tbaa !24
  %t15 = load i64, ptr %l7, !tbaa !24
  %t16 = icmp sge i64 %t15, 0
  br i1 %t16, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_f6cdfe2a667948ca_4b83585f8069a28e)
  unreachable
bb5:
  %t18 = load i64, ptr %l7, !tbaa !24
  %t19 = icmp sle i64 %t18, 1152921504606846975
  br i1 %t19, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_f2094d28a04599f_f6af0f5a902fc183)
  unreachable
bb7:
  %t21 = load i64, ptr %l7, !tbaa !24
  %t22 = mul i64 %t21, 8
  %t23 = call ptr @__olang_scope_alloc_zeroed(ptr %v0, i64 %t22)
  %t24 = insertvalue { i64, ptr } undef, i64 %t21, 0
  %t25 = insertvalue { i64, ptr } %t24, ptr %t23, 1
  %t27 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t28 = insertvalue %"bench/vec:SimA" undef, { i64, ptr } %t27, 0
  %t30 = insertvalue %"bench/vec:SimA" %t28, { i64, ptr } %t25, 1
  store %"bench/vec:SimA" %t30, ptr %rv
  br label %ret
bb8:
  call void @__olang_check_failed(ptr @olang_loc_f2094d28a04599f_f6af0f5a902fc183)
  unreachable
ret:
  %rr = load %"bench/vec:SimA", ptr %rv
  ret %"bench/vec:SimA" %rr
}

define dso_local %"bench/vec:SimV" @bench_2fvec_3aSimV_2ector(ptr %v0, i64 %a0) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"bench/vec:SimV"
  store i64 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l3
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l1
  %t3 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %l4
  br label %bb2
bb2:
  %t4 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l4
  %t5 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1
  %t6 = insertvalue %"bench/vec:SimV" undef, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, 0
  %t8 = insertvalue %"bench/vec:SimV" %t6, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, 1
  store %"bench/vec:SimV" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"bench/vec:SimV", ptr %rv
  ret %"bench/vec:SimV" %rr
}

define i32 @main(i32 %argc, ptr %argv) #0 {
entry:
  store i32 %argc, ptr @__olang_argc
  store ptr %argv, ptr @__olang_argv
  call void @__olang_thread_init()
  call void @bench_2fvec_2eOpaque_2einit()
  %c = call i32 @bench_2fvec_2emain()
  %bad = icmp ne i32 %c, 0
  br i1 %bad, label %err, label %ok
ok:
  ret i32 0
err:
  %s = load ptr, ptr @stderr
  %m0 = getelementptr i8, ptr @.c48, i64 0
  %q1 = icmp eq i32 %c, 65536
  %m1 = select i1 %q1, ptr @.c49, ptr %m0
  %q2 = icmp eq i32 %c, 65537
  %m2 = select i1 %q2, ptr @.c50, ptr %m1
  %q3 = icmp eq i32 %c, 65538
  %m3 = select i1 %q3, ptr @.c51, ptr %m2
  %q4 = icmp eq i32 %c, 131072
  %m4 = select i1 %q4, ptr @.c52, ptr %m3
  %q5 = icmp eq i32 %c, 131073
  %m5 = select i1 %q5, ptr @.c53, ptr %m4
  %q6 = icmp eq i32 %c, 196608
  %m6 = select i1 %q6, ptr @.c54, ptr %m5
  %q7 = icmp eq i32 %c, 196609
  %m7 = select i1 %q7, ptr @.c55, ptr %m6
  %q8 = icmp eq i32 %c, 196610
  %m8 = select i1 %q8, ptr @.c56, ptr %m7
  call i32 @fputs(ptr %m8, ptr %s)
  call void @__olang_debug_hint(ptr %s)
  ret i32 1
}

define dso_local i64 @std_2flist_2estd_2flist_3aList_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l9 = alloca { i64, ptr }
  %l16 = alloca i64
  %l21 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l26 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t2 = load i64, ptr @G_2estd_2flist_2efirstChunk, !tbaa !24
  %t5 = icmp slt i64 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"std/list:List.6ce2052386e1f5dfc75915f9e44d8f1b", ptr %t7, i32 0, i32 0
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t10, i32 0, i32 1
  %t13 = load { i64, ptr }, ptr %t12, !tbaa !27
  store { i64, ptr } %t13, ptr %l9, !tbaa !27
  %t14 = load i64, ptr %l1, !tbaa !24
  %t16 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = getelementptr i64, ptr %t17, i64 %t14
  %t19 = load i64, ptr %t18, !tbaa !34
  store i64 %t19, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t21 = load i64, ptr %l1, !tbaa !24
  %t22 = load i64, ptr @G_2estd_2flist_2efirstChunk, !tbaa !24
  %t25 = add i64 %t21, %t22
  store i64 %t25, ptr %l2, !tbaa !24
  %t27 = load i64, ptr %l2, !tbaa !24
  %t29 = call i64 @std_2flist_2ehighBit(i64 %t27)
  store i64 %t29, ptr %l16
  br label %bb4
bb4:
  %t30 = load i64, ptr @G_2estd_2flist_2efirstChunkLog, !tbaa !24
  %t31 = load i64, ptr %l16, !tbaa !24
  %t33 = sub i64 %t31, %t30
  store i64 %t33, ptr %l3, !tbaa !24
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"std/list:List.6ce2052386e1f5dfc75915f9e44d8f1b", ptr %t35, i32 0, i32 0
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t40 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t38, i32 0, i32 0
  %t41 = load { i64, ptr }, ptr %t40, !tbaa !27
  store { i64, ptr } %t41, ptr %l21, !tbaa !27
  %t42 = load i64, ptr %l3, !tbaa !24
  %t44 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !27
  %t46 = getelementptr { i64, ptr }, ptr %t45, i64 %t42
  %t47 = load { i64, ptr }, ptr %t46, !tbaa !37
  store { i64, ptr } %t47, ptr %l23, !tbaa !27
  %t48 = load i64, ptr %l2, !tbaa !24
  %t49 = load i64, ptr @G_2estd_2flist_2efirstChunk, !tbaa !24
  %t50 = load i64, ptr %l3, !tbaa !24
  store i64 %t50, ptr %l26, !tbaa !24
  %t52 = load i64, ptr %l26, !tbaa !24
  %t53 = load i64, ptr %l26, !tbaa !24
  %t54 = shl i64 %t49, %t53
  %t57 = sub i64 %t48, %t54
  %t59 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !27
  %t61 = getelementptr i64, ptr %t60, i64 %t57
  %t62 = load i64, ptr %t61, !tbaa !34
  store i64 %t62, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @std_2flist_2estd_2flist_3aList_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0) #0 {
entry:
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"std/list:List.6ce2052386e1f5dfc75915f9e44d8f1b", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t4, i32 0, i32 7
  %t7 = load i64, ptr %t6, !tbaa !24
  store i64 %t7, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @std_2flist_2estd_2flist_3aList_3cI64_3e_2ePushAll_3cI64_3e(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca ptr
  %l3 = alloca i64
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
  %l32 = alloca i64
  %l35 = alloca i64
  %l54 = alloca { i64, ptr }
  %l59 = alloca { i64, ptr }
  %l64 = alloca ptr
  %l69 = alloca ptr
  %l85 = alloca { i64, ptr }
  %l108 = alloca i64
  %l111 = alloca i64
  %l130 = alloca { i64, ptr }
  %l135 = alloca { i64, ptr }
  %l142 = alloca ptr
  %l149 = alloca ptr
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"std/list:List.6ce2052386e1f5dfc75915f9e44d8f1b", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t6, 0
  %t9 = load ptr, ptr %l2, !tbaa !29
  %t11 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t9, i32 0, i32 6
  %t12 = load i64, ptr %t11, !tbaa !24
  %t13 = load ptr, ptr %l2, !tbaa !29
  %t15 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t13, i32 0, i32 5
  %t16 = load i64, ptr %t15, !tbaa !24
  %t19 = sub i64 %t12, %t16
  %t22 = icmp sle i64 %t8, %t19
  br i1 %t22, label %bb1, label %bb2
bb1:
  store i64 0, ptr %l3, !tbaa !24
  %t24 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t24, 0
  store i64 %t26, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t28 = load i64, ptr %l4, !tbaa !24
  %t29 = load i64, ptr %l3, !tbaa !24
  %t32 = icmp sgt i64 %t28, %t29
  br i1 %t32, label %bb3, label %bb4
bb2:
  br label %bb15
bb3:
  %t34 = load i64, ptr %l5, !tbaa !24
  %t36 = icmp sgt i64 %t34, 0
  br i1 %t36, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l32, !tbaa !24
  br label %bb8
bb5:
  %t38 = load i64, ptr %l4, !tbaa !24
  %t39 = load i64, ptr %l3, !tbaa !24
  %t42 = sub i64 %t38, %t39
  %t43 = load i64, ptr %l5, !tbaa !24
  %t46 = add i64 %t42, %t43
  %t48 = sub i64 %t46, 1
  %t49 = load i64, ptr %l5, !tbaa !24
  %t52 = sdiv i64 %t48, %t49
  store i64 %t52, ptr %l35, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l35, !tbaa !24
  br label %bb7
bb7:
  %t54 = load i64, ptr %l35, !tbaa !24
  store i64 %t54, ptr %l32, !tbaa !24
  br label %bb8
bb8:
  %t55 = load i64, ptr %l32, !tbaa !24
  store i64 %t55, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb9
bb9:
  %t56 = load i64, ptr %l7, !tbaa !24
  %t57 = load i64, ptr %l6, !tbaa !24
  %t60 = icmp slt i64 %t56, %t57
  %t62 = xor i1 %t60, true
  br i1 %t62, label %bb10, label %bb11
bb10:
  br label %bb14
bb11:
  br label %bb12
bb12:
  %t64 = load i64, ptr %l3, !tbaa !24
  %t65 = load i64, ptr %l7, !tbaa !24
  %t66 = load i64, ptr %l5, !tbaa !24
  %t69 = mul i64 %t65, %t66
  %t72 = add i64 %t64, %t69
  store i64 %t72, ptr %l8, !tbaa !24
  %t74 = load ptr, ptr %l2, !tbaa !29
  %t76 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t74, i32 0, i32 4
  %t77 = load { i64, ptr }, ptr %t76, !tbaa !27
  store { i64, ptr } %t77, ptr %l54, !tbaa !27
  %t78 = load ptr, ptr %l2, !tbaa !29
  %t80 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t78, i32 0, i32 5
  %t81 = load i64, ptr %t80, !tbaa !24
  %t82 = load i64, ptr %l8, !tbaa !24
  %t85 = add i64 %t81, %t82
  %t86 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t86, ptr %l59, !tbaa !27
  %t87 = load i64, ptr %l8, !tbaa !24
  %t89 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t90 = load ptr, ptr %t89, !tbaa !27
  %t91 = getelementptr i64, ptr %t90, i64 %t87
  %t92 = load i64, ptr %t91, !tbaa !34
  %t95 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !27
  %t97 = getelementptr i64, ptr %t96, i64 %t85
  store i64 %t92, ptr %t97, !tbaa !34
  br label %bb13
bb13:
  %t98 = load i64, ptr %l7, !tbaa !24
  %t100 = add i64 %t98, 1
  store i64 %t100, ptr %l7, !tbaa !24
  br label %bb9
bb14:
  %t102 = load ptr, ptr %l2, !tbaa !29
  store ptr %t102, ptr %l64, !tbaa !29
  %t103 = load ptr, ptr %l64, !tbaa !29
  %t104 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t103, i32 0, i32 5
  %t105 = load i64, ptr %t104, !tbaa !24
  %t106 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t108 = extractvalue { i64, ptr } %t106, 0
  %t111 = add i64 %t105, %t108
  %t113 = load ptr, ptr %l64, !tbaa !29
  %t114 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t113, i32 0, i32 5
  store i64 %t111, ptr %t114, !tbaa !24
  %t115 = load ptr, ptr %l2, !tbaa !29
  store ptr %t115, ptr %l69, !tbaa !29
  %t116 = load ptr, ptr %l69, !tbaa !29
  %t117 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t116, i32 0, i32 7
  %t118 = load i64, ptr %t117, !tbaa !24
  %t119 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t121 = extractvalue { i64, ptr } %t119, 0
  %t124 = add i64 %t118, %t121
  %t126 = load ptr, ptr %l69, !tbaa !29
  %t127 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t126, i32 0, i32 7
  store i64 %t124, ptr %t127, !tbaa !24
  br label %ret
bb15:
  store i64 0, ptr %l9, !tbaa !24
  br label %bb16
bb16:
  %t128 = load i64, ptr %l9, !tbaa !24
  %t129 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t131 = extractvalue { i64, ptr } %t129, 0
  %t134 = icmp slt i64 %t128, %t131
  %t136 = xor i1 %t134, true
  br i1 %t136, label %bb17, label %bb18
bb17:
  br label %bb40
bb18:
  br label %bb19
bb19:
  %t138 = load ptr, ptr %l2, !tbaa !29
  %t140 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t138, i32 0, i32 5
  %t141 = load i64, ptr %t140, !tbaa !24
  %t142 = load ptr, ptr %l2, !tbaa !29
  %t144 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t142, i32 0, i32 6
  %t145 = load i64, ptr %t144, !tbaa !24
  %t148 = icmp eq i64 %t141, %t145
  br i1 %t148, label %bb20, label %bb21
bb20:
  %t150 = load ptr, ptr %l2, !tbaa !29
  %t151 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t151, ptr %l85, !tbaa !27
  %t152 = load i64, ptr %l9, !tbaa !24
  %t154 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t155 = load ptr, ptr %t154, !tbaa !27
  %t156 = getelementptr i64, ptr %t155, i64 %t152
  %t157 = load i64, ptr %t156, !tbaa !34
  call void @std_2flist_2estd_2flist_3alistState_3cI64_3e_2egrow_3cI64_3e(ptr %v0, ptr %t150, i64 %t157)
  br label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb23
bb23:
  %t160 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t162 = extractvalue { i64, ptr } %t160, 0
  %t163 = load i64, ptr %l9, !tbaa !24
  %t166 = sub i64 %t162, %t163
  store i64 %t166, ptr %l10, !tbaa !24
  %t168 = load ptr, ptr %l2, !tbaa !29
  %t170 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t168, i32 0, i32 6
  %t171 = load i64, ptr %t170, !tbaa !24
  %t172 = load ptr, ptr %l2, !tbaa !29
  %t174 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t172, i32 0, i32 5
  %t175 = load i64, ptr %t174, !tbaa !24
  %t178 = sub i64 %t171, %t175
  %t179 = load i64, ptr %l10, !tbaa !24
  %t182 = icmp slt i64 %t178, %t179
  br i1 %t182, label %bb24, label %bb25
bb24:
  %t184 = load ptr, ptr %l2, !tbaa !29
  %t186 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t184, i32 0, i32 6
  %t187 = load i64, ptr %t186, !tbaa !24
  %t188 = load ptr, ptr %l2, !tbaa !29
  %t190 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t188, i32 0, i32 5
  %t191 = load i64, ptr %t190, !tbaa !24
  %t194 = sub i64 %t187, %t191
  store i64 %t194, ptr %l10, !tbaa !24
  br label %bb26
bb25:
  br label %bb26
bb26:
  store i64 0, ptr %l11, !tbaa !24
  %t196 = load i64, ptr %l10, !tbaa !24
  store i64 %t196, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t198 = load i64, ptr %l12, !tbaa !24
  %t199 = load i64, ptr %l11, !tbaa !24
  %t202 = icmp sgt i64 %t198, %t199
  br i1 %t202, label %bb27, label %bb28
bb27:
  %t204 = load i64, ptr %l13, !tbaa !24
  %t206 = icmp sgt i64 %t204, 0
  br i1 %t206, label %bb29, label %bb30
bb28:
  store i64 0, ptr %l108, !tbaa !24
  br label %bb32
bb29:
  %t208 = load i64, ptr %l12, !tbaa !24
  %t209 = load i64, ptr %l11, !tbaa !24
  %t212 = sub i64 %t208, %t209
  %t213 = load i64, ptr %l13, !tbaa !24
  %t216 = add i64 %t212, %t213
  %t218 = sub i64 %t216, 1
  %t219 = load i64, ptr %l13, !tbaa !24
  %t222 = sdiv i64 %t218, %t219
  store i64 %t222, ptr %l111, !tbaa !24
  br label %bb31
bb30:
  store i64 0, ptr %l111, !tbaa !24
  br label %bb31
bb31:
  %t224 = load i64, ptr %l111, !tbaa !24
  store i64 %t224, ptr %l108, !tbaa !24
  br label %bb32
bb32:
  %t225 = load i64, ptr %l108, !tbaa !24
  store i64 %t225, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb33
bb33:
  %t226 = load i64, ptr %l15, !tbaa !24
  %t227 = load i64, ptr %l14, !tbaa !24
  %t230 = icmp slt i64 %t226, %t227
  %t232 = xor i1 %t230, true
  br i1 %t232, label %bb34, label %bb35
bb34:
  br label %bb38
bb35:
  br label %bb36
bb36:
  %t234 = load i64, ptr %l11, !tbaa !24
  %t235 = load i64, ptr %l15, !tbaa !24
  %t236 = load i64, ptr %l13, !tbaa !24
  %t239 = mul i64 %t235, %t236
  %t242 = add i64 %t234, %t239
  store i64 %t242, ptr %l16, !tbaa !24
  %t244 = load ptr, ptr %l2, !tbaa !29
  %t246 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t244, i32 0, i32 4
  %t247 = load { i64, ptr }, ptr %t246, !tbaa !27
  store { i64, ptr } %t247, ptr %l130, !tbaa !27
  %t248 = load ptr, ptr %l2, !tbaa !29
  %t250 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t248, i32 0, i32 5
  %t251 = load i64, ptr %t250, !tbaa !24
  %t252 = load i64, ptr %l16, !tbaa !24
  %t255 = add i64 %t251, %t252
  %t256 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t256, ptr %l135, !tbaa !27
  %t257 = load i64, ptr %l9, !tbaa !24
  %t258 = load i64, ptr %l16, !tbaa !24
  %t261 = add i64 %t257, %t258
  %t263 = getelementptr { i64, ptr }, ptr %l135, i32 0, i32 1
  %t264 = load ptr, ptr %t263, !tbaa !27
  %t265 = getelementptr i64, ptr %t264, i64 %t261
  %t266 = load i64, ptr %t265, !tbaa !34
  %t269 = getelementptr { i64, ptr }, ptr %l130, i32 0, i32 1
  %t270 = load ptr, ptr %t269, !tbaa !27
  %t271 = getelementptr i64, ptr %t270, i64 %t255
  store i64 %t266, ptr %t271, !tbaa !34
  br label %bb37
bb37:
  %t272 = load i64, ptr %l15, !tbaa !24
  %t274 = add i64 %t272, 1
  store i64 %t274, ptr %l15, !tbaa !24
  br label %bb33
bb38:
  %t276 = load ptr, ptr %l2, !tbaa !29
  store ptr %t276, ptr %l142, !tbaa !29
  %t277 = load ptr, ptr %l142, !tbaa !29
  %t278 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t277, i32 0, i32 5
  %t279 = load i64, ptr %t278, !tbaa !24
  %t280 = load i64, ptr %l10, !tbaa !24
  %t283 = add i64 %t279, %t280
  %t285 = load ptr, ptr %l142, !tbaa !29
  %t286 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t285, i32 0, i32 5
  store i64 %t283, ptr %t286, !tbaa !24
  %t287 = load i64, ptr %l9, !tbaa !24
  %t288 = load i64, ptr %l10, !tbaa !24
  %t291 = add i64 %t287, %t288
  store i64 %t291, ptr %l9, !tbaa !24
  br label %bb39
bb39:
  br label %bb16
bb40:
  %t293 = load ptr, ptr %l2, !tbaa !29
  store ptr %t293, ptr %l149, !tbaa !29
  %t294 = load ptr, ptr %l149, !tbaa !29
  %t295 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t294, i32 0, i32 7
  %t296 = load i64, ptr %t295, !tbaa !24
  %t297 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t299 = extractvalue { i64, ptr } %t297, 0
  %t302 = add i64 %t296, %t299
  %t304 = load ptr, ptr %l149, !tbaa !29
  %t305 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t304, i32 0, i32 7
  store i64 %t302, ptr %t305, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local void @std_2flist_2estd_2flist_3aList_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l1 = alloca i64
  %l2 = alloca ptr
  %l13 = alloca { i64, ptr }
  %l17 = alloca ptr
  %l20 = alloca ptr
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"std/list:List.6ce2052386e1f5dfc75915f9e44d8f1b", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  %t8 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t6, i32 0, i32 5
  %t9 = load i64, ptr %t8, !tbaa !24
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t10, i32 0, i32 6
  %t13 = load i64, ptr %t12, !tbaa !24
  %t16 = icmp eq i64 %t9, %t13
  br i1 %t16, label %bb1, label %bb2
bb1:
  %t18 = load ptr, ptr %l2, !tbaa !29
  %t19 = load i64, ptr %l1, !tbaa !24
  call void @std_2flist_2estd_2flist_3alistState_3cI64_3e_2egrow_3cI64_3e(ptr %v0, ptr %t18, i64 %t19)
  br label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb4
bb4:
  %t22 = load ptr, ptr %l2, !tbaa !29
  %t24 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t22, i32 0, i32 4
  %t25 = load { i64, ptr }, ptr %t24, !tbaa !27
  store { i64, ptr } %t25, ptr %l13, !tbaa !27
  %t26 = load ptr, ptr %l2, !tbaa !29
  %t28 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t26, i32 0, i32 5
  %t29 = load i64, ptr %t28, !tbaa !24
  %t30 = load i64, ptr %l1, !tbaa !24
  %t33 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !27
  %t35 = getelementptr i64, ptr %t34, i64 %t29
  store i64 %t30, ptr %t35, !tbaa !34
  %t36 = load ptr, ptr %l2, !tbaa !29
  store ptr %t36, ptr %l17, !tbaa !29
  %t37 = load ptr, ptr %l17, !tbaa !29
  %t38 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t37, i32 0, i32 5
  %t39 = load i64, ptr %t38, !tbaa !24
  %t41 = add i64 %t39, 1
  %t43 = load ptr, ptr %l17, !tbaa !29
  %t44 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t43, i32 0, i32 5
  store i64 %t41, ptr %t44, !tbaa !24
  %t45 = load ptr, ptr %l2, !tbaa !29
  store ptr %t45, ptr %l20, !tbaa !29
  %t46 = load ptr, ptr %l20, !tbaa !29
  %t47 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t46, i32 0, i32 7
  %t48 = load i64, ptr %t47, !tbaa !24
  %t50 = add i64 %t48, 1
  %t52 = load ptr, ptr %l20, !tbaa !29
  %t53 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t52, i32 0, i32 7
  store i64 %t50, ptr %t53, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local { i32, { i64, ptr } } @std_2flist_2estd_2flist_3aList_3cI64_3e_2eRunFrom_3cI64_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l1 = alloca i64
  %l2 = alloca ptr
  %l9 = alloca i1
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l26 = alloca ptr
  %l30 = alloca i64
  %l34 = alloca { i64, ptr }
  %rv = alloca { i32, { i64, ptr } }
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"std/list:List.6ce2052386e1f5dfc75915f9e44d8f1b", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load i64, ptr %l1, !tbaa !24
  %t7 = load ptr, ptr %l2, !tbaa !29
  %t9 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t7, i32 0, i32 7
  %t10 = load i64, ptr %t9, !tbaa !24
  %t13 = icmp sge i64 %t6, %t10
  br i1 %t13, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb3
bb2:
  %t15 = load i64, ptr %l1, !tbaa !24
  %t17 = icmp slt i64 %t15, 0
  store i1 %t17, ptr %l9, !tbaa !21
  br label %bb3
bb3:
  %t19 = load i1, ptr %l9, !tbaa !21
  br i1 %t19, label %bb4, label %bb5
bb4:
  %t21 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t21, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t22 = load ptr, ptr %l2, !tbaa !29
  %t24 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t22, i32 0, i32 2
  %t25 = load i64, ptr %t24, !tbaa !24
  %t27 = icmp eq i64 %t25, 1
  br i1 %t27, label %bb7, label %bb8
bb7:
  %t29 = load ptr, ptr %l2, !tbaa !29
  %t31 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t29, i32 0, i32 1
  %t32 = load { i64, ptr }, ptr %t31, !tbaa !27
  store { i64, ptr } %t32, ptr %l17, !tbaa !27
  %t33 = load i64, ptr %l1, !tbaa !24
  store i64 %t33, ptr %l18, !tbaa !24
  %t34 = load ptr, ptr %l2, !tbaa !29
  %t36 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t34, i32 0, i32 5
  %t37 = load i64, ptr %t36, !tbaa !24
  store i64 %t37, ptr %l20, !tbaa !24
  %t38 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t38, 0
  store i64 %t39, ptr %l21, !tbaa !24
  %t40 = load i64, ptr %l18, !tbaa !24
  %t41 = icmp sge i64 %t40, 0
  br i1 %t41, label %bb9, label %bb10
bb8:
  br label %bb15
bb9:
  %t43 = load i64, ptr %l18, !tbaa !24
  %t44 = load i64, ptr %l20, !tbaa !24
  %t45 = icmp sle i64 %t43, %t44
  br i1 %t45, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_6cb2d9e9c0162584_77bbd8c2d0f38b38)
  unreachable
bb11:
  %t47 = load i64, ptr %l20, !tbaa !24
  %t48 = load i64, ptr %l21, !tbaa !24
  %t49 = icmp sle i64 %t47, %t48
  br i1 %t49, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_6cb2d9e9c0162584_77bbd8c2d0f38b38)
  unreachable
bb13:
  %t51 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !27
  %t53 = load i64, ptr %l18, !tbaa !24
  %t54 = load i64, ptr %l20, !tbaa !24
  %t55 = getelementptr i64, ptr %t52, i64 %t53
  %t56 = sub i64 %t54, %t53
  %t57 = insertvalue { i64, ptr } undef, i64 %t56, 0
  %t58 = insertvalue { i64, ptr } %t57, ptr %t55, 1
  %t60 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t58, 1
  store { i32, { i64, ptr } } %t60, ptr %rv
  br label %ret
bb14:
  call void @__olang_check_failed(ptr @olang_loc_6cb2d9e9c0162584_77bbd8c2d0f38b38)
  unreachable
bb15:
  %t61 = load ptr, ptr %l2, !tbaa !29
  store ptr %t61, ptr %l26, !tbaa !29
  %t62 = load i64, ptr %l1, !tbaa !24
  %t63 = load i64, ptr @G_2estd_2flist_2efirstChunk, !tbaa !24
  %t66 = add i64 %t62, %t63
  %t68 = call i64 @std_2flist_2ehighBit(i64 %t66)
  store i64 %t68, ptr %l30
  br label %bb16
bb16:
  %t69 = load i64, ptr @G_2estd_2flist_2efirstChunkLog, !tbaa !24
  %t70 = load i64, ptr %l30, !tbaa !24
  %t72 = sub i64 %t70, %t69
  %t73 = load i64, ptr %l1, !tbaa !24
  %t74 = load ptr, ptr %l26, !tbaa !29
  %t77 = call { i64, ptr } @std_2flist_2estd_2flist_3alistState_3cI64_3e_2erunIn_3cI64_3e(ptr %v0, ptr %v1, ptr %t74, i64 %t72, i64 %t73)
  store { i64, ptr } %t77, ptr %l34
  br label %bb17
bb17:
  %t78 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t79 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t78, 1
  store { i32, { i64, ptr } } %t79, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local void @std_2flist_2estd_2flist_3aList_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l10 = alloca { i64, ptr }
  %l17 = alloca i64
  %l22 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l27 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t2 = load i64, ptr @G_2estd_2flist_2efirstChunk, !tbaa !24
  %t5 = icmp slt i64 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"std/list:List.6ce2052386e1f5dfc75915f9e44d8f1b", ptr %t7, i32 0, i32 0
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t10, i32 0, i32 1
  %t13 = load { i64, ptr }, ptr %t12, !tbaa !27
  store { i64, ptr } %t13, ptr %l10, !tbaa !27
  %t14 = load i64, ptr %l1, !tbaa !24
  %t15 = load i64, ptr %l2, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr i64, ptr %t19, i64 %t14
  store i64 %t15, ptr %t20, !tbaa !34
  br label %ret
bb2:
  br label %bb3
bb3:
  %t21 = load i64, ptr %l1, !tbaa !24
  %t22 = load i64, ptr @G_2estd_2flist_2efirstChunk, !tbaa !24
  %t25 = add i64 %t21, %t22
  store i64 %t25, ptr %l3, !tbaa !24
  %t27 = load i64, ptr %l3, !tbaa !24
  %t29 = call i64 @std_2flist_2ehighBit(i64 %t27)
  store i64 %t29, ptr %l17
  br label %bb4
bb4:
  %t30 = load i64, ptr @G_2estd_2flist_2efirstChunkLog, !tbaa !24
  %t31 = load i64, ptr %l17, !tbaa !24
  %t33 = sub i64 %t31, %t30
  store i64 %t33, ptr %l4, !tbaa !24
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"std/list:List.6ce2052386e1f5dfc75915f9e44d8f1b", ptr %t35, i32 0, i32 0
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t40 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t38, i32 0, i32 0
  %t41 = load { i64, ptr }, ptr %t40, !tbaa !27
  store { i64, ptr } %t41, ptr %l22, !tbaa !27
  %t42 = load i64, ptr %l4, !tbaa !24
  %t44 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !27
  %t46 = getelementptr { i64, ptr }, ptr %t45, i64 %t42
  %t47 = load { i64, ptr }, ptr %t46, !tbaa !37
  store { i64, ptr } %t47, ptr %l24, !tbaa !27
  %t48 = load i64, ptr %l3, !tbaa !24
  %t49 = load i64, ptr @G_2estd_2flist_2efirstChunk, !tbaa !24
  %t50 = load i64, ptr %l4, !tbaa !24
  store i64 %t50, ptr %l27, !tbaa !24
  %t52 = load i64, ptr %l27, !tbaa !24
  %t53 = load i64, ptr %l27, !tbaa !24
  %t54 = shl i64 %t49, %t53
  %t57 = sub i64 %t48, %t54
  %t58 = load i64, ptr %l2, !tbaa !24
  %t61 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !27
  %t63 = getelementptr i64, ptr %t62, i64 %t57
  store i64 %t58, ptr %t63, !tbaa !34
  br label %ret
ret:
  ret void
}

@std_2flist_2estd_2flist_3aList_3cstd_2fprelude_2ftext_3aString_26_3e_2eLen_3cstd_2fprelude_2ftext_3aString_26_3e = dso_local alias i64 (ptr, ptr), ptr @std_2flist_2estd_2flist_3aList_3cI64_3e_2eLen_3cI64_3e
define dso_local { i32, { i64, ptr } } @std_2flist_2estd_2flist_3aList_3cstd_2fprelude_2ftext_3aString_26_3e_2eRunFrom_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l1 = alloca i64
  %l2 = alloca ptr
  %l9 = alloca i1
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l26 = alloca ptr
  %l30 = alloca i64
  %l34 = alloca { i64, ptr }
  %rv = alloca { i32, { i64, ptr } }
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"std/list:List.6ce2052386e1f5dfc75915f9e44d8f1b", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load i64, ptr %l1, !tbaa !24
  %t7 = load ptr, ptr %l2, !tbaa !29
  %t9 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t7, i32 0, i32 7
  %t10 = load i64, ptr %t9, !tbaa !24
  %t13 = icmp sge i64 %t6, %t10
  br i1 %t13, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb3
bb2:
  %t15 = load i64, ptr %l1, !tbaa !24
  %t17 = icmp slt i64 %t15, 0
  store i1 %t17, ptr %l9, !tbaa !21
  br label %bb3
bb3:
  %t19 = load i1, ptr %l9, !tbaa !21
  br i1 %t19, label %bb4, label %bb5
bb4:
  %t21 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t21, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t22 = load ptr, ptr %l2, !tbaa !29
  %t24 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t22, i32 0, i32 2
  %t25 = load i64, ptr %t24, !tbaa !24
  %t27 = icmp eq i64 %t25, 1
  br i1 %t27, label %bb7, label %bb8
bb7:
  %t29 = load ptr, ptr %l2, !tbaa !29
  %t31 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t29, i32 0, i32 1
  %t32 = load { i64, ptr }, ptr %t31, !tbaa !27
  store { i64, ptr } %t32, ptr %l17, !tbaa !27
  %t33 = load i64, ptr %l1, !tbaa !24
  store i64 %t33, ptr %l18, !tbaa !24
  %t34 = load ptr, ptr %l2, !tbaa !29
  %t36 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t34, i32 0, i32 5
  %t37 = load i64, ptr %t36, !tbaa !24
  store i64 %t37, ptr %l20, !tbaa !24
  %t38 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t38, 0
  store i64 %t39, ptr %l21, !tbaa !24
  %t40 = load i64, ptr %l18, !tbaa !24
  %t41 = icmp sge i64 %t40, 0
  br i1 %t41, label %bb9, label %bb10
bb8:
  br label %bb15
bb9:
  %t43 = load i64, ptr %l18, !tbaa !24
  %t44 = load i64, ptr %l20, !tbaa !24
  %t45 = icmp sle i64 %t43, %t44
  br i1 %t45, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_90cea9619d71ae2c_fd926ce569d55010)
  unreachable
bb11:
  %t47 = load i64, ptr %l20, !tbaa !24
  %t48 = load i64, ptr %l21, !tbaa !24
  %t49 = icmp sle i64 %t47, %t48
  br i1 %t49, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_90cea9619d71ae2c_fd926ce569d55010)
  unreachable
bb13:
  %t51 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !27
  %t53 = load i64, ptr %l18, !tbaa !24
  %t54 = load i64, ptr %l20, !tbaa !24
  %t55 = getelementptr { i64, ptr }, ptr %t52, i64 %t53
  %t56 = sub i64 %t54, %t53
  %t57 = insertvalue { i64, ptr } undef, i64 %t56, 0
  %t58 = insertvalue { i64, ptr } %t57, ptr %t55, 1
  %t60 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t58, 1
  store { i32, { i64, ptr } } %t60, ptr %rv
  br label %ret
bb14:
  call void @__olang_check_failed(ptr @olang_loc_90cea9619d71ae2c_fd926ce569d55010)
  unreachable
bb15:
  %t61 = load ptr, ptr %l2, !tbaa !29
  store ptr %t61, ptr %l26, !tbaa !29
  %t62 = load i64, ptr %l1, !tbaa !24
  %t63 = load i64, ptr @G_2estd_2flist_2efirstChunk, !tbaa !24
  %t66 = add i64 %t62, %t63
  %t68 = call i64 @std_2flist_2ehighBit(i64 %t66)
  store i64 %t68, ptr %l30
  br label %bb16
bb16:
  %t69 = load i64, ptr @G_2estd_2flist_2efirstChunkLog, !tbaa !24
  %t70 = load i64, ptr %l30, !tbaa !24
  %t72 = sub i64 %t70, %t69
  %t73 = load i64, ptr %l1, !tbaa !24
  %t74 = load ptr, ptr %l26, !tbaa !29
  %t77 = call { i64, ptr } @std_2flist_2estd_2flist_3alistState_3cstd_2fprelude_2ftext_3aString_26_3e_2erunIn_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %v1, ptr %t74, i64 %t72, i64 %t73)
  store { i64, ptr } %t77, ptr %l34
  br label %bb17
bb17:
  %t78 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t79 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t78, 1
  store { i32, { i64, ptr } } %t79, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i64, ptr } @std_2flist_2estd_2flist_3alistState_3cI64_3e_2echunk_3cI64_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l7 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp eq i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t5, i32 0, i32 1
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  store { i64, ptr } %t8, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t10, i32 0, i32 0
  %t13 = load { i64, ptr }, ptr %t12, !tbaa !27
  store { i64, ptr } %t13, ptr %l7, !tbaa !27
  %t14 = load i64, ptr %l1, !tbaa !24
  %t16 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = getelementptr { i64, ptr }, ptr %t17, i64 %t14
  %t19 = load { i64, ptr }, ptr %t18, !tbaa !37
  store { i64, ptr } %t19, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @std_2flist_2estd_2flist_3alistState_3cI64_3e_2egrow_3cI64_3e(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l14 = alloca ptr
  %l18 = alloca { i64, ptr }
  %l22 = alloca ptr
  %l23 = alloca i64
  %l24 = alloca i64
  %l36 = alloca ptr
  %l38 = alloca { i64, ptr }
  %l50 = alloca i64
  %l52 = alloca { i64, ptr }
  %l61 = alloca i64
  %l64 = alloca i64
  %l82 = alloca { i64, ptr }
  %l85 = alloca { i64, ptr }
  %l93 = alloca { i64, ptr }
  %l95 = alloca i64
  %l98 = alloca i64
  %l99 = alloca i64
  %l100 = alloca i64
  %l106 = alloca { i64, ptr }
  %l110 = alloca ptr
  %l113 = alloca ptr
  %t54 = alloca i64
  %t104 = alloca i64
  %t137 = alloca i64
  %t253 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t1, i32 0, i32 2
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t5, i32 0, i32 3
  %t8 = load i64, ptr %t7, !tbaa !24
  %t11 = icmp slt i64 %t4, %t8
  br i1 %t11, label %bb1, label %bb2
bb1:
  %t13 = load ptr, ptr %l0, !tbaa !29
  store ptr %t13, ptr %l14, !tbaa !29
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t15, i32 0, i32 2
  %t18 = load i64, ptr %t17, !tbaa !24
  %t21 = call { i64, ptr } @std_2flist_2estd_2flist_3alistState_3cI64_3e_2echunk_3cI64_3e(ptr %v0, ptr %v0, ptr %t14, i64 %t18)
  store { i64, ptr } %t21, ptr %l18
  br label %bb3
bb2:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t22, i32 0, i32 3
  %t25 = load i64, ptr %t24, !tbaa !24
  %t27 = icmp eq i64 %t25, 0
  br i1 %t27, label %bb4, label %bb5
bb3:
  %t29 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t30 = load ptr, ptr %l14, !tbaa !29
  %t31 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t30, i32 0, i32 4
  store { i64, ptr } %t29, ptr %t31, !tbaa !27
  br label %bb41
bb4:
  %t32 = load ptr, ptr %l0, !tbaa !29
  store ptr %t32, ptr %l22, !tbaa !29
  %t33 = load i64, ptr @G_2estd_2flist_2efirstChunk, !tbaa !24
  store i64 %t33, ptr %l23, !tbaa !24
  %t34 = load i64, ptr %l1, !tbaa !24
  store i64 %t34, ptr %l24, !tbaa !24
  %t35 = load i64, ptr %l23, !tbaa !24
  %t36 = icmp sge i64 %t35, 0
  br i1 %t36, label %bb6, label %bb7
bb5:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t38, i32 0, i32 0
  %t41 = load { i64, ptr }, ptr %t40, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t41, 0
  %t45 = icmp eq i64 %t43, 0
  br i1 %t45, label %bb10, label %bb11
bb6:
  %t47 = load i64, ptr %l23, !tbaa !24
  %t48 = icmp sle i64 %t47, 1152921504606846975
  br i1 %t48, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_5eb4f66ecba8a1f9_c9d25a0daabea53d)
  unreachable
bb8:
  %t50 = load i64, ptr %l23, !tbaa !24
  %t51 = mul i64 %t50, 8
  %t52 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t51)
  %t53 = load i64, ptr %l24, !tbaa !24
  store i64 0, ptr %t54
  br label %fill.55
fill.55:
  %t58 = load i64, ptr %t54
  %t59 = icmp slt i64 %t58, %t50
  br i1 %t59, label %fillb.56, label %filld.57
fillb.56:
  %t60 = getelementptr i64, ptr %t52, i64 %t58
  store i64 %t53, ptr %t60
  %t61 = add i64 %t58, 1
  store i64 %t61, ptr %t54
  br label %fill.55
filld.57:
  %t62 = insertvalue { i64, ptr } undef, i64 %t50, 0
  %t63 = insertvalue { i64, ptr } %t62, ptr %t52, 1
  %t65 = load ptr, ptr %l22, !tbaa !29
  %t66 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t65, i32 0, i32 1
  store { i64, ptr } %t63, ptr %t66, !tbaa !27
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t68, i32 0, i32 1
  %t71 = load { i64, ptr }, ptr %t70, !tbaa !27
  %t74 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t67, i32 0, i32 4
  store { i64, ptr } %t71, ptr %t74, !tbaa !27
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t75, i32 0, i32 3
  store i64 1, ptr %t77, !tbaa !24
  br label %bb40
bb9:
  call void @__olang_check_failed(ptr @olang_loc_5eb4f66ecba8a1f9_c9d25a0daabea53d)
  unreachable
bb10:
  %t78 = load ptr, ptr %l0, !tbaa !29
  store ptr %t78, ptr %l36, !tbaa !29
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t79, i32 0, i32 1
  %t82 = load { i64, ptr }, ptr %t81, !tbaa !27
  store { i64, ptr } %t82, ptr %l38, !tbaa !27
  %t83 = icmp sge i64 4, 0
  br i1 %t83, label %bb12, label %bb13
bb11:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t85, i32 0, i32 3
  %t88 = load i64, ptr %t87, !tbaa !24
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t89, i32 0, i32 0
  %t92 = load { i64, ptr }, ptr %t91, !tbaa !27
  %t94 = extractvalue { i64, ptr } %t92, 0
  %t97 = icmp eq i64 %t88, %t94
  br i1 %t97, label %bb16, label %bb17
bb12:
  %t99 = icmp sle i64 4, 576460752303423487
  br i1 %t99, label %bb14, label %bb15
bb13:
  call void @__olang_check_failed(ptr @olang_loc_3e24b1074d050e6c_baf46274dc857d10)
  unreachable
bb14:
  %t101 = mul i64 4, 16
  %t102 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t101)
  %t103 = load { i64, ptr }, ptr %l38, !tbaa !27
  store i64 0, ptr %t104
  br label %fill.105
fill.105:
  %t108 = load i64, ptr %t104
  %t109 = icmp slt i64 %t108, 4
  br i1 %t109, label %fillb.106, label %filld.107
fillb.106:
  %t110 = getelementptr { i64, ptr }, ptr %t102, i64 %t108
  store { i64, ptr } %t103, ptr %t110
  %t111 = add i64 %t108, 1
  store i64 %t111, ptr %t104
  br label %fill.105
filld.107:
  %t112 = insertvalue { i64, ptr } undef, i64 4, 0
  %t113 = insertvalue { i64, ptr } %t112, ptr %t102, 1
  %t115 = load ptr, ptr %l36, !tbaa !29
  %t116 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t115, i32 0, i32 0
  store { i64, ptr } %t113, ptr %t116, !tbaa !27
  br label %bb35
bb15:
  call void @__olang_check_failed(ptr @olang_loc_3e24b1074d050e6c_baf46274dc857d10)
  unreachable
bb16:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t117, i32 0, i32 3
  %t120 = load i64, ptr %t119, !tbaa !24
  %t122 = mul i64 %t120, 2
  store i64 %t122, ptr %l50, !tbaa !24
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t123, i32 0, i32 1
  %t126 = load { i64, ptr }, ptr %t125, !tbaa !27
  store { i64, ptr } %t126, ptr %l52, !tbaa !27
  %t127 = load i64, ptr %l50, !tbaa !24
  %t128 = icmp sge i64 %t127, 0
  br i1 %t128, label %bb18, label %bb19
bb17:
  br label %bb34
bb18:
  %t130 = load i64, ptr %l50, !tbaa !24
  %t131 = icmp sle i64 %t130, 576460752303423487
  br i1 %t131, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_4d9efdb9b3bd29cf_845ab765af391533)
  unreachable
bb20:
  %t133 = load i64, ptr %l50, !tbaa !24
  %t134 = mul i64 %t133, 16
  %t135 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t134)
  %t136 = load { i64, ptr }, ptr %l52, !tbaa !27
  store i64 0, ptr %t137
  br label %fill.138
fill.138:
  %t141 = load i64, ptr %t137
  %t142 = icmp slt i64 %t141, %t133
  br i1 %t142, label %fillb.139, label %filld.140
fillb.139:
  %t143 = getelementptr { i64, ptr }, ptr %t135, i64 %t141
  store { i64, ptr } %t136, ptr %t143
  %t144 = add i64 %t141, 1
  store i64 %t144, ptr %t137
  br label %fill.138
filld.140:
  %t145 = insertvalue { i64, ptr } undef, i64 %t133, 0
  %t146 = insertvalue { i64, ptr } %t145, ptr %t135, 1
  store { i64, ptr } %t146, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t150 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t148, i32 0, i32 3
  %t151 = load i64, ptr %t150, !tbaa !24
  store i64 %t151, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t153 = load i64, ptr %l4, !tbaa !24
  %t154 = load i64, ptr %l3, !tbaa !24
  %t157 = icmp sgt i64 %t153, %t154
  br i1 %t157, label %bb22, label %bb23
bb21:
  call void @__olang_check_failed(ptr @olang_loc_4d9efdb9b3bd29cf_845ab765af391533)
  unreachable
bb22:
  %t159 = load i64, ptr %l5, !tbaa !24
  %t161 = icmp sgt i64 %t159, 0
  br i1 %t161, label %bb24, label %bb25
bb23:
  store i64 0, ptr %l61, !tbaa !24
  br label %bb27
bb24:
  %t163 = load i64, ptr %l4, !tbaa !24
  %t164 = load i64, ptr %l3, !tbaa !24
  %t167 = sub i64 %t163, %t164
  %t168 = load i64, ptr %l5, !tbaa !24
  %t171 = add i64 %t167, %t168
  %t173 = sub i64 %t171, 1
  %t174 = load i64, ptr %l5, !tbaa !24
  %t177 = sdiv i64 %t173, %t174
  store i64 %t177, ptr %l64, !tbaa !24
  br label %bb26
bb25:
  store i64 0, ptr %l64, !tbaa !24
  br label %bb26
bb26:
  %t179 = load i64, ptr %l64, !tbaa !24
  store i64 %t179, ptr %l61, !tbaa !24
  br label %bb27
bb27:
  %t180 = load i64, ptr %l61, !tbaa !24
  store i64 %t180, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb28
bb28:
  %t181 = load i64, ptr %l7, !tbaa !24
  %t182 = load i64, ptr %l6, !tbaa !24
  %t185 = icmp slt i64 %t181, %t182
  %t187 = xor i1 %t185, true
  br i1 %t187, label %bb29, label %bb30
bb29:
  br label %bb33
bb30:
  br label %bb31
bb31:
  %t189 = load i64, ptr %l3, !tbaa !24
  %t190 = load i64, ptr %l7, !tbaa !24
  %t191 = load i64, ptr %l5, !tbaa !24
  %t194 = mul i64 %t190, %t191
  %t197 = add i64 %t189, %t194
  store i64 %t197, ptr %l8, !tbaa !24
  %t199 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t199, ptr %l82, !tbaa !27
  %t200 = load i64, ptr %l8, !tbaa !24
  %t201 = load ptr, ptr %l0, !tbaa !29
  %t203 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t201, i32 0, i32 0
  %t204 = load { i64, ptr }, ptr %t203, !tbaa !27
  store { i64, ptr } %t204, ptr %l85, !tbaa !27
  %t205 = load i64, ptr %l8, !tbaa !24
  %t207 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t208 = load ptr, ptr %t207, !tbaa !27
  %t209 = getelementptr { i64, ptr }, ptr %t208, i64 %t205
  %t210 = load { i64, ptr }, ptr %t209, !tbaa !37
  %t213 = getelementptr { i64, ptr }, ptr %l82, i32 0, i32 1
  %t214 = load ptr, ptr %t213, !tbaa !27
  %t215 = getelementptr { i64, ptr }, ptr %t214, i64 %t200
  store { i64, ptr } %t210, ptr %t215, !tbaa !37
  br label %bb32
bb32:
  %t216 = load i64, ptr %l7, !tbaa !24
  %t218 = add i64 %t216, 1
  store i64 %t218, ptr %l7, !tbaa !24
  br label %bb28
bb33:
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t221 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t224 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t220, i32 0, i32 0
  store { i64, ptr } %t221, ptr %t224, !tbaa !27
  br label %bb34
bb34:
  br label %bb35
bb35:
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t227 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t225, i32 0, i32 0
  %t228 = load { i64, ptr }, ptr %t227, !tbaa !27
  store { i64, ptr } %t228, ptr %l93, !tbaa !27
  %t229 = load ptr, ptr %l0, !tbaa !29
  %t231 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t229, i32 0, i32 3
  %t232 = load i64, ptr %t231, !tbaa !24
  store i64 %t232, ptr %l95, !tbaa !24
  %t233 = load i64, ptr @G_2estd_2flist_2efirstChunk, !tbaa !24
  %t234 = load ptr, ptr %l0, !tbaa !29
  %t236 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t234, i32 0, i32 3
  %t237 = load i64, ptr %t236, !tbaa !24
  store i64 %t237, ptr %l98, !tbaa !24
  %t239 = load i64, ptr %l98, !tbaa !24
  %t240 = load i64, ptr %l98, !tbaa !24
  %t241 = shl i64 %t233, %t240
  store i64 %t241, ptr %l99, !tbaa !24
  %t242 = load i64, ptr %l1, !tbaa !24
  store i64 %t242, ptr %l100, !tbaa !24
  %t243 = load i64, ptr %l99, !tbaa !24
  %t244 = icmp sge i64 %t243, 0
  br i1 %t244, label %bb36, label %bb37
bb36:
  %t246 = load i64, ptr %l99, !tbaa !24
  %t247 = icmp sle i64 %t246, 1152921504606846975
  br i1 %t247, label %bb38, label %bb39
bb37:
  call void @__olang_check_failed(ptr @olang_loc_a3a508af6c63527a_2342d145c6fabffe)
  unreachable
bb38:
  %t249 = load i64, ptr %l99, !tbaa !24
  %t250 = mul i64 %t249, 8
  %t251 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t250)
  %t252 = load i64, ptr %l100, !tbaa !24
  store i64 0, ptr %t253
  br label %fill.254
fill.254:
  %t257 = load i64, ptr %t253
  %t258 = icmp slt i64 %t257, %t249
  br i1 %t258, label %fillb.255, label %filld.256
fillb.255:
  %t259 = getelementptr i64, ptr %t251, i64 %t257
  store i64 %t252, ptr %t259
  %t260 = add i64 %t257, 1
  store i64 %t260, ptr %t253
  br label %fill.254
filld.256:
  %t261 = insertvalue { i64, ptr } undef, i64 %t249, 0
  %t262 = insertvalue { i64, ptr } %t261, ptr %t251, 1
  %t264 = load i64, ptr %l95, !tbaa !24
  %t265 = getelementptr { i64, ptr }, ptr %l93, i32 0, i32 1
  %t266 = load ptr, ptr %t265, !tbaa !27
  %t267 = getelementptr { i64, ptr }, ptr %t266, i64 %t264
  store { i64, ptr } %t262, ptr %t267, !tbaa !37
  %t268 = load ptr, ptr %l0, !tbaa !29
  %t269 = load ptr, ptr %l0, !tbaa !29
  %t271 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t269, i32 0, i32 0
  %t272 = load { i64, ptr }, ptr %t271, !tbaa !27
  store { i64, ptr } %t272, ptr %l106, !tbaa !27
  %t273 = load ptr, ptr %l0, !tbaa !29
  %t275 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t273, i32 0, i32 3
  %t276 = load i64, ptr %t275, !tbaa !24
  %t278 = getelementptr { i64, ptr }, ptr %l106, i32 0, i32 1
  %t279 = load ptr, ptr %t278, !tbaa !27
  %t280 = getelementptr { i64, ptr }, ptr %t279, i64 %t276
  %t281 = load { i64, ptr }, ptr %t280, !tbaa !37
  %t284 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t268, i32 0, i32 4
  store { i64, ptr } %t281, ptr %t284, !tbaa !27
  %t285 = load ptr, ptr %l0, !tbaa !29
  store ptr %t285, ptr %l110, !tbaa !29
  %t286 = load ptr, ptr %l110, !tbaa !29
  %t287 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t286, i32 0, i32 3
  %t288 = load i64, ptr %t287, !tbaa !24
  %t290 = add i64 %t288, 1
  %t292 = load ptr, ptr %l110, !tbaa !29
  %t293 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t292, i32 0, i32 3
  store i64 %t290, ptr %t293, !tbaa !24
  br label %bb40
bb39:
  call void @__olang_check_failed(ptr @olang_loc_a3a508af6c63527a_2342d145c6fabffe)
  unreachable
bb40:
  br label %bb41
bb41:
  %t294 = load ptr, ptr %l0, !tbaa !29
  store ptr %t294, ptr %l113, !tbaa !29
  %t295 = load ptr, ptr %l113, !tbaa !29
  %t296 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t295, i32 0, i32 2
  %t297 = load i64, ptr %t296, !tbaa !24
  %t299 = add i64 %t297, 1
  %t301 = load ptr, ptr %l113, !tbaa !29
  %t302 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t301, i32 0, i32 2
  store i64 %t299, ptr %t302, !tbaa !24
  %t303 = load ptr, ptr %l0, !tbaa !29
  %t305 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t303, i32 0, i32 5
  store i64 0, ptr %t305, !tbaa !24
  %t306 = load ptr, ptr %l0, !tbaa !29
  %t307 = load ptr, ptr %l0, !tbaa !29
  %t309 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t307, i32 0, i32 4
  %t310 = load { i64, ptr }, ptr %t309, !tbaa !27
  %t312 = extractvalue { i64, ptr } %t310, 0
  %t315 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t306, i32 0, i32 6
  store i64 %t312, ptr %t315, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @std_2flist_2estd_2flist_3alistState_3cI64_3e_2erunIn_3cI64_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i1
  %l9 = alloca i64
  %l20 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l23 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l32 = alloca { i64, ptr }
  %l33 = alloca i64
  %l37 = alloca i64
  %l38 = alloca i64
  %l44 = alloca { i64, ptr }
  %l46 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l49 = alloca i64
  %l51 = alloca i64
  %l52 = alloca i64
  %l58 = alloca { i64, ptr }
  %l60 = alloca { i64, ptr }
  %l61 = alloca i64
  %l63 = alloca { i64, ptr }
  %l67 = alloca i64
  %l68 = alloca i64
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load i64, ptr @G_2estd_2flist_2efirstChunk, !tbaa !24
  %t5 = add i64 %a2, %t2
  %t6 = load i64, ptr @G_2estd_2flist_2efirstChunk, !tbaa !24
  %t7 = load i64, ptr %l1, !tbaa !24
  store i64 %t7, ptr %l9, !tbaa !24
  %t9 = load i64, ptr %l9, !tbaa !24
  %t10 = load i64, ptr %l9, !tbaa !24
  %t11 = shl i64 %t6, %t10
  %t14 = sub i64 %t5, %t11
  store i64 %t14, ptr %l3, !tbaa !24
  %t16 = load i64, ptr %l1, !tbaa !24
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t17, i32 0, i32 2
  %t20 = load i64, ptr %t19, !tbaa !24
  %t22 = sub i64 %t20, 1
  %t25 = icmp eq i64 %t16, %t22
  store i1 %t25, ptr %l4, !tbaa !21
  %t27 = load i64, ptr %l1, !tbaa !24
  %t29 = icmp eq i64 %t27, 0
  br i1 %t29, label %bb1, label %bb2
bb1:
  %t31 = load i1, ptr %l4, !tbaa !21
  br i1 %t31, label %bb3, label %bb4
bb2:
  br label %bb18
bb3:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t33, i32 0, i32 1
  %t36 = load { i64, ptr }, ptr %t35, !tbaa !27
  store { i64, ptr } %t36, ptr %l22, !tbaa !27
  %t37 = load i64, ptr %l3, !tbaa !24
  store i64 %t37, ptr %l23, !tbaa !24
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t38, i32 0, i32 5
  %t41 = load i64, ptr %t40, !tbaa !24
  store i64 %t41, ptr %l25, !tbaa !24
  %t42 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t42, 0
  store i64 %t43, ptr %l26, !tbaa !24
  %t44 = load i64, ptr %l23, !tbaa !24
  %t45 = icmp sge i64 %t44, 0
  br i1 %t45, label %bb5, label %bb6
bb4:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t47, i32 0, i32 1
  %t50 = load { i64, ptr }, ptr %t49, !tbaa !27
  store { i64, ptr } %t50, ptr %l32, !tbaa !27
  %t51 = load i64, ptr %l3, !tbaa !24
  store i64 %t51, ptr %l33, !tbaa !24
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t52, i32 0, i32 1
  %t55 = load { i64, ptr }, ptr %t54, !tbaa !27
  %t58 = extractvalue { i64, ptr } %t55, 0
  store i64 %t58, ptr %l37, !tbaa !24
  %t59 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t60 = extractvalue { i64, ptr } %t59, 0
  store i64 %t60, ptr %l38, !tbaa !24
  %t61 = load i64, ptr %l33, !tbaa !24
  %t62 = icmp sge i64 %t61, 0
  br i1 %t62, label %bb11, label %bb12
bb5:
  %t64 = load i64, ptr %l23, !tbaa !24
  %t65 = load i64, ptr %l25, !tbaa !24
  %t66 = icmp sle i64 %t64, %t65
  br i1 %t66, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_b3c75d0b7f3f7824_a3e996a9754929e8)
  unreachable
bb7:
  %t68 = load i64, ptr %l25, !tbaa !24
  %t69 = load i64, ptr %l26, !tbaa !24
  %t70 = icmp sle i64 %t68, %t69
  br i1 %t70, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_b3c75d0b7f3f7824_a3e996a9754929e8)
  unreachable
bb9:
  %t72 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = load i64, ptr %l23, !tbaa !24
  %t75 = load i64, ptr %l25, !tbaa !24
  %t76 = getelementptr i64, ptr %t73, i64 %t74
  %t77 = sub i64 %t75, %t74
  %t78 = insertvalue { i64, ptr } undef, i64 %t77, 0
  %t79 = insertvalue { i64, ptr } %t78, ptr %t76, 1
  store { i64, ptr } %t79, ptr %l20, !tbaa !27
  br label %bb17
bb10:
  call void @__olang_check_failed(ptr @olang_loc_b3c75d0b7f3f7824_a3e996a9754929e8)
  unreachable
bb11:
  %t81 = load i64, ptr %l33, !tbaa !24
  %t82 = load i64, ptr %l37, !tbaa !24
  %t83 = icmp sle i64 %t81, %t82
  br i1 %t83, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_b3c75d0b7f3f7824_a3e996a9754929e8)
  unreachable
bb13:
  %t85 = load i64, ptr %l37, !tbaa !24
  %t86 = load i64, ptr %l38, !tbaa !24
  %t87 = icmp sle i64 %t85, %t86
  br i1 %t87, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_b3c75d0b7f3f7824_a3e996a9754929e8)
  unreachable
bb15:
  %t89 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t90 = load ptr, ptr %t89, !tbaa !27
  %t91 = load i64, ptr %l33, !tbaa !24
  %t92 = load i64, ptr %l37, !tbaa !24
  %t93 = getelementptr i64, ptr %t90, i64 %t91
  %t94 = sub i64 %t92, %t91
  %t95 = insertvalue { i64, ptr } undef, i64 %t94, 0
  %t96 = insertvalue { i64, ptr } %t95, ptr %t93, 1
  store { i64, ptr } %t96, ptr %l20, !tbaa !27
  br label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_b3c75d0b7f3f7824_a3e996a9754929e8)
  unreachable
bb17:
  %t98 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t98, ptr %rv
  br label %ret
bb18:
  %t99 = load i1, ptr %l4, !tbaa !21
  br i1 %t99, label %bb19, label %bb20
bb19:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t101, i32 0, i32 0
  %t104 = load { i64, ptr }, ptr %t103, !tbaa !27
  store { i64, ptr } %t104, ptr %l46, !tbaa !27
  %t105 = load i64, ptr %l1, !tbaa !24
  %t107 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t108 = load ptr, ptr %t107, !tbaa !27
  %t109 = getelementptr { i64, ptr }, ptr %t108, i64 %t105
  %t110 = load { i64, ptr }, ptr %t109, !tbaa !37
  store { i64, ptr } %t110, ptr %l48, !tbaa !27
  %t111 = load i64, ptr %l3, !tbaa !24
  store i64 %t111, ptr %l49, !tbaa !24
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t112, i32 0, i32 5
  %t115 = load i64, ptr %t114, !tbaa !24
  store i64 %t115, ptr %l51, !tbaa !24
  %t116 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t117 = extractvalue { i64, ptr } %t116, 0
  store i64 %t117, ptr %l52, !tbaa !24
  %t118 = load i64, ptr %l49, !tbaa !24
  %t119 = icmp sge i64 %t118, 0
  br i1 %t119, label %bb21, label %bb22
bb20:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t123 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t121, i32 0, i32 0
  %t124 = load { i64, ptr }, ptr %t123, !tbaa !27
  store { i64, ptr } %t124, ptr %l58, !tbaa !27
  %t125 = load i64, ptr %l1, !tbaa !24
  %t127 = getelementptr { i64, ptr }, ptr %l58, i32 0, i32 1
  %t128 = load ptr, ptr %t127, !tbaa !27
  %t129 = getelementptr { i64, ptr }, ptr %t128, i64 %t125
  %t130 = load { i64, ptr }, ptr %t129, !tbaa !37
  store { i64, ptr } %t130, ptr %l60, !tbaa !27
  %t131 = load i64, ptr %l3, !tbaa !24
  store i64 %t131, ptr %l61, !tbaa !24
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t134 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t132, i32 0, i32 0
  %t135 = load { i64, ptr }, ptr %t134, !tbaa !27
  store { i64, ptr } %t135, ptr %l63, !tbaa !27
  %t136 = load i64, ptr %l1, !tbaa !24
  %t138 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t139 = load ptr, ptr %t138, !tbaa !27
  %t140 = getelementptr { i64, ptr }, ptr %t139, i64 %t136
  %t141 = load { i64, ptr }, ptr %t140, !tbaa !37
  %t144 = extractvalue { i64, ptr } %t141, 0
  store i64 %t144, ptr %l67, !tbaa !24
  %t145 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t146 = extractvalue { i64, ptr } %t145, 0
  store i64 %t146, ptr %l68, !tbaa !24
  %t147 = load i64, ptr %l61, !tbaa !24
  %t148 = icmp sge i64 %t147, 0
  br i1 %t148, label %bb27, label %bb28
bb21:
  %t150 = load i64, ptr %l49, !tbaa !24
  %t151 = load i64, ptr %l51, !tbaa !24
  %t152 = icmp sle i64 %t150, %t151
  br i1 %t152, label %bb23, label %bb24
bb22:
  call void @__olang_check_failed(ptr @olang_loc_a3d46951c6f9b911_4e97d0de011895c5)
  unreachable
bb23:
  %t154 = load i64, ptr %l51, !tbaa !24
  %t155 = load i64, ptr %l52, !tbaa !24
  %t156 = icmp sle i64 %t154, %t155
  br i1 %t156, label %bb25, label %bb26
bb24:
  call void @__olang_check_failed(ptr @olang_loc_a3d46951c6f9b911_4e97d0de011895c5)
  unreachable
bb25:
  %t158 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t159 = load ptr, ptr %t158, !tbaa !27
  %t160 = load i64, ptr %l49, !tbaa !24
  %t161 = load i64, ptr %l51, !tbaa !24
  %t162 = getelementptr i64, ptr %t159, i64 %t160
  %t163 = sub i64 %t161, %t160
  %t164 = insertvalue { i64, ptr } undef, i64 %t163, 0
  %t165 = insertvalue { i64, ptr } %t164, ptr %t162, 1
  store { i64, ptr } %t165, ptr %l44, !tbaa !27
  br label %bb33
bb26:
  call void @__olang_check_failed(ptr @olang_loc_a3d46951c6f9b911_4e97d0de011895c5)
  unreachable
bb27:
  %t167 = load i64, ptr %l61, !tbaa !24
  %t168 = load i64, ptr %l67, !tbaa !24
  %t169 = icmp sle i64 %t167, %t168
  br i1 %t169, label %bb29, label %bb30
bb28:
  call void @__olang_check_failed(ptr @olang_loc_a3d46951c6f9b911_4e97d0de011895c5)
  unreachable
bb29:
  %t171 = load i64, ptr %l67, !tbaa !24
  %t172 = load i64, ptr %l68, !tbaa !24
  %t173 = icmp sle i64 %t171, %t172
  br i1 %t173, label %bb31, label %bb32
bb30:
  call void @__olang_check_failed(ptr @olang_loc_a3d46951c6f9b911_4e97d0de011895c5)
  unreachable
bb31:
  %t175 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t176 = load ptr, ptr %t175, !tbaa !27
  %t177 = load i64, ptr %l61, !tbaa !24
  %t178 = load i64, ptr %l67, !tbaa !24
  %t179 = getelementptr i64, ptr %t176, i64 %t177
  %t180 = sub i64 %t178, %t177
  %t181 = insertvalue { i64, ptr } undef, i64 %t180, 0
  %t182 = insertvalue { i64, ptr } %t181, ptr %t179, 1
  store { i64, ptr } %t182, ptr %l44, !tbaa !27
  br label %bb33
bb32:
  call void @__olang_check_failed(ptr @olang_loc_a3d46951c6f9b911_4e97d0de011895c5)
  unreachable
bb33:
  %t184 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t184, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @std_2flist_2estd_2flist_3alistState_3cstd_2fprelude_2ftext_3aString_26_3e_2erunIn_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i1
  %l9 = alloca i64
  %l20 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l23 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l32 = alloca { i64, ptr }
  %l33 = alloca i64
  %l37 = alloca i64
  %l38 = alloca i64
  %l44 = alloca { i64, ptr }
  %l46 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l49 = alloca i64
  %l51 = alloca i64
  %l52 = alloca i64
  %l58 = alloca { i64, ptr }
  %l60 = alloca { i64, ptr }
  %l61 = alloca i64
  %l63 = alloca { i64, ptr }
  %l67 = alloca i64
  %l68 = alloca i64
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load i64, ptr @G_2estd_2flist_2efirstChunk, !tbaa !24
  %t5 = add i64 %a2, %t2
  %t6 = load i64, ptr @G_2estd_2flist_2efirstChunk, !tbaa !24
  %t7 = load i64, ptr %l1, !tbaa !24
  store i64 %t7, ptr %l9, !tbaa !24
  %t9 = load i64, ptr %l9, !tbaa !24
  %t10 = load i64, ptr %l9, !tbaa !24
  %t11 = shl i64 %t6, %t10
  %t14 = sub i64 %t5, %t11
  store i64 %t14, ptr %l3, !tbaa !24
  %t16 = load i64, ptr %l1, !tbaa !24
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t17, i32 0, i32 2
  %t20 = load i64, ptr %t19, !tbaa !24
  %t22 = sub i64 %t20, 1
  %t25 = icmp eq i64 %t16, %t22
  store i1 %t25, ptr %l4, !tbaa !21
  %t27 = load i64, ptr %l1, !tbaa !24
  %t29 = icmp eq i64 %t27, 0
  br i1 %t29, label %bb1, label %bb2
bb1:
  %t31 = load i1, ptr %l4, !tbaa !21
  br i1 %t31, label %bb3, label %bb4
bb2:
  br label %bb18
bb3:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t33, i32 0, i32 1
  %t36 = load { i64, ptr }, ptr %t35, !tbaa !27
  store { i64, ptr } %t36, ptr %l22, !tbaa !27
  %t37 = load i64, ptr %l3, !tbaa !24
  store i64 %t37, ptr %l23, !tbaa !24
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t38, i32 0, i32 5
  %t41 = load i64, ptr %t40, !tbaa !24
  store i64 %t41, ptr %l25, !tbaa !24
  %t42 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t42, 0
  store i64 %t43, ptr %l26, !tbaa !24
  %t44 = load i64, ptr %l23, !tbaa !24
  %t45 = icmp sge i64 %t44, 0
  br i1 %t45, label %bb5, label %bb6
bb4:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t47, i32 0, i32 1
  %t50 = load { i64, ptr }, ptr %t49, !tbaa !27
  store { i64, ptr } %t50, ptr %l32, !tbaa !27
  %t51 = load i64, ptr %l3, !tbaa !24
  store i64 %t51, ptr %l33, !tbaa !24
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t52, i32 0, i32 1
  %t55 = load { i64, ptr }, ptr %t54, !tbaa !27
  %t58 = extractvalue { i64, ptr } %t55, 0
  store i64 %t58, ptr %l37, !tbaa !24
  %t59 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t60 = extractvalue { i64, ptr } %t59, 0
  store i64 %t60, ptr %l38, !tbaa !24
  %t61 = load i64, ptr %l33, !tbaa !24
  %t62 = icmp sge i64 %t61, 0
  br i1 %t62, label %bb11, label %bb12
bb5:
  %t64 = load i64, ptr %l23, !tbaa !24
  %t65 = load i64, ptr %l25, !tbaa !24
  %t66 = icmp sle i64 %t64, %t65
  br i1 %t66, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_35b3dd6bcc06cb0a_cb35cbb6c7218fee)
  unreachable
bb7:
  %t68 = load i64, ptr %l25, !tbaa !24
  %t69 = load i64, ptr %l26, !tbaa !24
  %t70 = icmp sle i64 %t68, %t69
  br i1 %t70, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_35b3dd6bcc06cb0a_cb35cbb6c7218fee)
  unreachable
bb9:
  %t72 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = load i64, ptr %l23, !tbaa !24
  %t75 = load i64, ptr %l25, !tbaa !24
  %t76 = getelementptr { i64, ptr }, ptr %t73, i64 %t74
  %t77 = sub i64 %t75, %t74
  %t78 = insertvalue { i64, ptr } undef, i64 %t77, 0
  %t79 = insertvalue { i64, ptr } %t78, ptr %t76, 1
  store { i64, ptr } %t79, ptr %l20, !tbaa !27
  br label %bb17
bb10:
  call void @__olang_check_failed(ptr @olang_loc_35b3dd6bcc06cb0a_cb35cbb6c7218fee)
  unreachable
bb11:
  %t81 = load i64, ptr %l33, !tbaa !24
  %t82 = load i64, ptr %l37, !tbaa !24
  %t83 = icmp sle i64 %t81, %t82
  br i1 %t83, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_35b3dd6bcc06cb0a_cb35cbb6c7218fee)
  unreachable
bb13:
  %t85 = load i64, ptr %l37, !tbaa !24
  %t86 = load i64, ptr %l38, !tbaa !24
  %t87 = icmp sle i64 %t85, %t86
  br i1 %t87, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_35b3dd6bcc06cb0a_cb35cbb6c7218fee)
  unreachable
bb15:
  %t89 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t90 = load ptr, ptr %t89, !tbaa !27
  %t91 = load i64, ptr %l33, !tbaa !24
  %t92 = load i64, ptr %l37, !tbaa !24
  %t93 = getelementptr { i64, ptr }, ptr %t90, i64 %t91
  %t94 = sub i64 %t92, %t91
  %t95 = insertvalue { i64, ptr } undef, i64 %t94, 0
  %t96 = insertvalue { i64, ptr } %t95, ptr %t93, 1
  store { i64, ptr } %t96, ptr %l20, !tbaa !27
  br label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_35b3dd6bcc06cb0a_cb35cbb6c7218fee)
  unreachable
bb17:
  %t98 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t98, ptr %rv
  br label %ret
bb18:
  %t99 = load i1, ptr %l4, !tbaa !21
  br i1 %t99, label %bb19, label %bb20
bb19:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t101, i32 0, i32 0
  %t104 = load { i64, ptr }, ptr %t103, !tbaa !27
  store { i64, ptr } %t104, ptr %l46, !tbaa !27
  %t105 = load i64, ptr %l1, !tbaa !24
  %t107 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t108 = load ptr, ptr %t107, !tbaa !27
  %t109 = getelementptr { i64, ptr }, ptr %t108, i64 %t105
  %t110 = load { i64, ptr }, ptr %t109, !tbaa !37
  store { i64, ptr } %t110, ptr %l48, !tbaa !27
  %t111 = load i64, ptr %l3, !tbaa !24
  store i64 %t111, ptr %l49, !tbaa !24
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t112, i32 0, i32 5
  %t115 = load i64, ptr %t114, !tbaa !24
  store i64 %t115, ptr %l51, !tbaa !24
  %t116 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t117 = extractvalue { i64, ptr } %t116, 0
  store i64 %t117, ptr %l52, !tbaa !24
  %t118 = load i64, ptr %l49, !tbaa !24
  %t119 = icmp sge i64 %t118, 0
  br i1 %t119, label %bb21, label %bb22
bb20:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t123 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t121, i32 0, i32 0
  %t124 = load { i64, ptr }, ptr %t123, !tbaa !27
  store { i64, ptr } %t124, ptr %l58, !tbaa !27
  %t125 = load i64, ptr %l1, !tbaa !24
  %t127 = getelementptr { i64, ptr }, ptr %l58, i32 0, i32 1
  %t128 = load ptr, ptr %t127, !tbaa !27
  %t129 = getelementptr { i64, ptr }, ptr %t128, i64 %t125
  %t130 = load { i64, ptr }, ptr %t129, !tbaa !37
  store { i64, ptr } %t130, ptr %l60, !tbaa !27
  %t131 = load i64, ptr %l3, !tbaa !24
  store i64 %t131, ptr %l61, !tbaa !24
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t134 = getelementptr %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %t132, i32 0, i32 0
  %t135 = load { i64, ptr }, ptr %t134, !tbaa !27
  store { i64, ptr } %t135, ptr %l63, !tbaa !27
  %t136 = load i64, ptr %l1, !tbaa !24
  %t138 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t139 = load ptr, ptr %t138, !tbaa !27
  %t140 = getelementptr { i64, ptr }, ptr %t139, i64 %t136
  %t141 = load { i64, ptr }, ptr %t140, !tbaa !37
  %t144 = extractvalue { i64, ptr } %t141, 0
  store i64 %t144, ptr %l67, !tbaa !24
  %t145 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t146 = extractvalue { i64, ptr } %t145, 0
  store i64 %t146, ptr %l68, !tbaa !24
  %t147 = load i64, ptr %l61, !tbaa !24
  %t148 = icmp sge i64 %t147, 0
  br i1 %t148, label %bb27, label %bb28
bb21:
  %t150 = load i64, ptr %l49, !tbaa !24
  %t151 = load i64, ptr %l51, !tbaa !24
  %t152 = icmp sle i64 %t150, %t151
  br i1 %t152, label %bb23, label %bb24
bb22:
  call void @__olang_check_failed(ptr @olang_loc_15e36604d72a5de7_9f6d877cc1463deb)
  unreachable
bb23:
  %t154 = load i64, ptr %l51, !tbaa !24
  %t155 = load i64, ptr %l52, !tbaa !24
  %t156 = icmp sle i64 %t154, %t155
  br i1 %t156, label %bb25, label %bb26
bb24:
  call void @__olang_check_failed(ptr @olang_loc_15e36604d72a5de7_9f6d877cc1463deb)
  unreachable
bb25:
  %t158 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t159 = load ptr, ptr %t158, !tbaa !27
  %t160 = load i64, ptr %l49, !tbaa !24
  %t161 = load i64, ptr %l51, !tbaa !24
  %t162 = getelementptr { i64, ptr }, ptr %t159, i64 %t160
  %t163 = sub i64 %t161, %t160
  %t164 = insertvalue { i64, ptr } undef, i64 %t163, 0
  %t165 = insertvalue { i64, ptr } %t164, ptr %t162, 1
  store { i64, ptr } %t165, ptr %l44, !tbaa !27
  br label %bb33
bb26:
  call void @__olang_check_failed(ptr @olang_loc_15e36604d72a5de7_9f6d877cc1463deb)
  unreachable
bb27:
  %t167 = load i64, ptr %l61, !tbaa !24
  %t168 = load i64, ptr %l67, !tbaa !24
  %t169 = icmp sle i64 %t167, %t168
  br i1 %t169, label %bb29, label %bb30
bb28:
  call void @__olang_check_failed(ptr @olang_loc_15e36604d72a5de7_9f6d877cc1463deb)
  unreachable
bb29:
  %t171 = load i64, ptr %l67, !tbaa !24
  %t172 = load i64, ptr %l68, !tbaa !24
  %t173 = icmp sle i64 %t171, %t172
  br i1 %t173, label %bb31, label %bb32
bb30:
  call void @__olang_check_failed(ptr @olang_loc_15e36604d72a5de7_9f6d877cc1463deb)
  unreachable
bb31:
  %t175 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t176 = load ptr, ptr %t175, !tbaa !27
  %t177 = load i64, ptr %l61, !tbaa !24
  %t178 = load i64, ptr %l67, !tbaa !24
  %t179 = getelementptr { i64, ptr }, ptr %t176, i64 %t177
  %t180 = sub i64 %t178, %t177
  %t181 = insertvalue { i64, ptr } undef, i64 %t180, 0
  %t182 = insertvalue { i64, ptr } %t181, ptr %t179, 1
  store { i64, ptr } %t182, ptr %l44, !tbaa !27
  br label %bb33
bb32:
  call void @__olang_check_failed(ptr @olang_loc_15e36604d72a5de7_9f6d877cc1463deb)
  unreachable
bb33:
  %t184 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t184, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"std/list:List.6ce2052386e1f5dfc75915f9e44d8f1b" @std_2flist_3aList_3cI64_3e_2ector(ptr %v0) #0 {
entry:
  %l1 = alloca %"std/list:listState.9783095779ea18337775adeb6569839d"
  %rv = alloca %"std/list:List.6ce2052386e1f5dfc75915f9e44d8f1b"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/list:listState.9783095779ea18337775adeb6569839d" @std_2flist_3alistState_3cI64_3e_2ector(ptr %v0)
  store %"std/list:listState.9783095779ea18337775adeb6569839d" %t1, ptr %l1
  br label %bb1
bb1:
  %t2 = load %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %l1
  %t3 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 88, i64 8)
  store %"std/list:listState.9783095779ea18337775adeb6569839d" %t2, ptr %t3
  %t6 = insertvalue %"std/list:List.6ce2052386e1f5dfc75915f9e44d8f1b" undef, ptr %t3, 0
  store %"std/list:List.6ce2052386e1f5dfc75915f9e44d8f1b" %t6, ptr %rv
  br label %ret
ret:
  %rr = load %"std/list:List.6ce2052386e1f5dfc75915f9e44d8f1b", ptr %rv
  ret %"std/list:List.6ce2052386e1f5dfc75915f9e44d8f1b" %rr
}

define dso_local %"std/list:listState.9783095779ea18337775adeb6569839d" @std_2flist_3alistState_3cI64_3e_2ector(ptr %v0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %rv = alloca %"std/list:listState.9783095779ea18337775adeb6569839d"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = icmp sge i64 0, 0
  br i1 %t1, label %bb1, label %bb2
bb1:
  %t3 = icmp sle i64 0, 576460752303423487
  br i1 %t3, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_16fcf676fdd53123_141b01fb6118feb7)
  unreachable
bb3:
  %t5 = mul i64 0, 16
  %t6 = insertvalue { i64, ptr } undef, i64 0, 0
  %t7 = insertvalue { i64, ptr } %t6, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t7, ptr %l0, !tbaa !27
  %t9 = icmp sge i64 0, 0
  br i1 %t9, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_16fcf676fdd53123_141b01fb6118feb7)
  unreachable
bb5:
  %t11 = icmp sle i64 0, 1152921504606846975
  br i1 %t11, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_6b48b939e732d4ae_b85af6ff2092a02)
  unreachable
bb7:
  %t13 = mul i64 0, 8
  %t14 = insertvalue { i64, ptr } undef, i64 0, 0
  %t15 = insertvalue { i64, ptr } %t14, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t15, ptr %l1, !tbaa !27
  store i64 0, ptr %l2, !tbaa !24
  store i64 0, ptr %l3, !tbaa !24
  %t17 = icmp sge i64 0, 0
  br i1 %t17, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_6b48b939e732d4ae_b85af6ff2092a02)
  unreachable
bb9:
  %t19 = icmp sle i64 0, 1152921504606846975
  br i1 %t19, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_a2d2bb88b933aead_cb74f1ad04972721)
  unreachable
bb11:
  %t21 = mul i64 0, 8
  %t22 = insertvalue { i64, ptr } undef, i64 0, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t25 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t26 = insertvalue %"std/list:listState.9783095779ea18337775adeb6569839d" undef, { i64, ptr } %t25, 0
  %t27 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t28 = insertvalue %"std/list:listState.9783095779ea18337775adeb6569839d" %t26, { i64, ptr } %t27, 1
  %t29 = load i64, ptr %l2, !tbaa !24
  %t30 = insertvalue %"std/list:listState.9783095779ea18337775adeb6569839d" %t28, i64 %t29, 2
  %t31 = load i64, ptr %l3, !tbaa !24
  %t32 = insertvalue %"std/list:listState.9783095779ea18337775adeb6569839d" %t30, i64 %t31, 3
  %t34 = insertvalue %"std/list:listState.9783095779ea18337775adeb6569839d" %t32, { i64, ptr } %t23, 4
  %t36 = insertvalue %"std/list:listState.9783095779ea18337775adeb6569839d" %t34, i64 0, 5
  %t38 = insertvalue %"std/list:listState.9783095779ea18337775adeb6569839d" %t36, i64 0, 6
  %t40 = insertvalue %"std/list:listState.9783095779ea18337775adeb6569839d" %t38, i64 0, 7
  store %"std/list:listState.9783095779ea18337775adeb6569839d" %t40, ptr %rv
  br label %ret
bb12:
  call void @__olang_check_failed(ptr @olang_loc_a2d2bb88b933aead_cb74f1ad04972721)
  unreachable
ret:
  %rr = load %"std/list:listState.9783095779ea18337775adeb6569839d", ptr %rv
  ret %"std/list:listState.9783095779ea18337775adeb6569839d" %rr
}

define dso_local void @std_2fprelude_2farray_2eArray_3cI64_3e_2eSort_3cI64_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1c, ptr %a1e) #0 {
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
  call void @std_2fprelude_2farray_2esortMergeBuffered_3cI64_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %t7, ptr %t11, ptr %t12)
  br label %bb4
bb4:
  br label %bb5
bb5:
  br label %ret
ret:
  ret void
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
  %t167 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_57, 0
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
  %l31 = alloca { i64, ptr }
  %l32 = alloca i64
  %l33 = alloca { i64, ptr }
  %l51 = alloca i64
  %l62 = alloca { i64, ptr }
  %l64 = alloca { i64, ptr }
  %l65 = alloca i64
  %l66 = alloca { i64, ptr }
  %l76 = alloca { i64, ptr }
  %l92 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
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
  store %olang.scope zeroinitializer, ptr %s2
  %t7 = load i64, ptr %l4, !tbaa !24
  %t8 = load i64, ptr %l5, !tbaa !24
  %t11 = icmp slt i64 %t7, %t8
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s2)
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
  store { i64, ptr } %t21, ptr %l31, !tbaa !27
  %t22 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t22, 0
  store i64 %t23, ptr %l32, !tbaa !24
  %t24 = load i64, ptr %l32, !tbaa !24
  %t25 = mul i64 %t24, 1
  %t26 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t25)
  %t27 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t26, 1
  store { i64, ptr } %t28, ptr %l33, !tbaa !27
  %t29 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = load i64, ptr %l32, !tbaa !24
  %t34 = mul i64 %t33, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t30, ptr %t32, i64 %t34, i1 false)
  %t35 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t36 = load i64, ptr %l2, !tbaa !24
  %t39 = extractvalue { i64, ptr } %t35, 0
  %t42 = add i64 %t36, %t39
  store i64 %t42, ptr %l2, !tbaa !24
  call void @__olang_scope_close(ptr %s2)
  br label %bb5
bb5:
  %t44 = load i64, ptr %l4, !tbaa !24
  %t46 = add i64 %t44, 1
  store i64 %t46, ptr %l4, !tbaa !24
  br label %bb1
bb6:
  %t48 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t50 = extractvalue { i64, ptr } %t48, 0
  %t52 = icmp sgt i64 %t50, 1
  br i1 %t52, label %bb7, label %bb8
bb7:
  %t54 = load i64, ptr %l2, !tbaa !24
  %t55 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t57 = extractvalue { i64, ptr } %t55, 0
  %t58 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t60 = extractvalue { i64, ptr } %t58, 0
  %t62 = sub i64 %t60, 1
  %t65 = mul i64 %t57, %t62
  %t68 = add i64 %t54, %t65
  store i64 %t68, ptr %l2, !tbaa !24
  br label %bb9
bb8:
  br label %bb9
bb9:
  %t70 = load i64, ptr %l2, !tbaa !24
  store i64 %t70, ptr %l51, !tbaa !24
  %t71 = load i64, ptr %l51, !tbaa !24
  %t72 = icmp sge i64 %t71, 0
  br i1 %t72, label %bb10, label %bb11
bb10:
  %t74 = load i64, ptr %l51, !tbaa !24
  %t75 = mul i64 %t74, 1
  %t76 = call ptr @__olang_scope_alloc_zeroed(ptr %v2, i64 %t75)
  %t77 = insertvalue { i64, ptr } undef, i64 %t74, 0
  %t78 = insertvalue { i64, ptr } %t77, ptr %t76, 1
  %t79 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t79, ptr %lp7
  %t81 = load ptr, ptr %lp7
  store { i64, ptr } %t78, ptr %t81, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t82 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t82, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t84 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t86 = extractvalue { i64, ptr } %t84, 0
  store i64 %t86, ptr %l11, !tbaa !24
  br label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_b4b3d3a21dffee1a_94412941cff469ee)
  unreachable
bb12:
  store %olang.scope zeroinitializer, ptr %s6
  %t88 = load i64, ptr %l10, !tbaa !24
  %t89 = load i64, ptr %l11, !tbaa !24
  %t92 = icmp slt i64 %t88, %t89
  %t94 = xor i1 %t92, true
  br i1 %t94, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s6)
  br label %bb32
bb14:
  br label %bb15
bb15:
  %t96 = load i64, ptr %l10, !tbaa !24
  %t98 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t98, ptr %l62, !tbaa !27
  %t99 = load i64, ptr %l10, !tbaa !24
  %t101 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !27
  %t103 = getelementptr { i64, ptr }, ptr %t102, i64 %t99
  %t104 = load { i64, ptr }, ptr %t103, !tbaa !37
  store { i64, ptr } %t104, ptr %l64, !tbaa !27
  %t105 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t106 = extractvalue { i64, ptr } %t105, 0
  store i64 %t106, ptr %l65, !tbaa !24
  %t107 = load i64, ptr %l65, !tbaa !24
  %t108 = mul i64 %t107, 1
  %t109 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t108)
  %t110 = insertvalue { i64, ptr } undef, i64 %t107, 0
  %t111 = insertvalue { i64, ptr } %t110, ptr %t109, 1
  store { i64, ptr } %t111, ptr %l66, !tbaa !27
  %t112 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !27
  %t114 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t115 = load ptr, ptr %t114, !tbaa !27
  %t116 = load i64, ptr %l65, !tbaa !24
  %t117 = mul i64 %t116, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t113, ptr %t115, i64 %t117, i1 false)
  %t118 = load { i64, ptr }, ptr %l66, !tbaa !27
  store { i64, ptr } %t118, ptr %l13, !tbaa !27
  %t121 = icmp sgt i64 %t96, 0
  br i1 %t121, label %bb16, label %bb17
bb16:
  %t123 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t123, ptr %l14, !tbaa !27
  store i64 0, ptr %l15, !tbaa !24
  %t125 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t127 = extractvalue { i64, ptr } %t125, 0
  store i64 %t127, ptr %l16, !tbaa !24
  br label %bb18
bb17:
  br label %bb24
bb18:
  %t129 = load i64, ptr %l15, !tbaa !24
  %t130 = load i64, ptr %l16, !tbaa !24
  %t133 = icmp slt i64 %t129, %t130
  %t135 = xor i1 %t133, true
  br i1 %t135, label %bb19, label %bb20
bb19:
  br label %bb23
bb20:
  br label %bb21
bb21:
  %t137 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t137, ptr %l76, !tbaa !27
  %t138 = load i64, ptr %l15, !tbaa !24
  %t140 = getelementptr { i64, ptr }, ptr %l76, i32 0, i32 1
  %t141 = load ptr, ptr %t140, !tbaa !27
  %t142 = getelementptr i8, ptr %t141, i64 %t138
  %t143 = load i8, ptr %t142, !tbaa !32
  %t145 = load i64, ptr %l8, !tbaa !24
  %t148 = load ptr, ptr %lp7
  %t150 = getelementptr { i64, ptr }, ptr %t148, i32 0, i32 1
  %t151 = load ptr, ptr %t150, !tbaa !27
  %t152 = getelementptr i8, ptr %t151, i64 %t145
  store i8 %t143, ptr %t152, !tbaa !32
  %t153 = load i64, ptr %l8, !tbaa !24
  %t155 = add i64 %t153, 1
  store i64 %t155, ptr %l8, !tbaa !24
  br label %bb22
bb22:
  %t157 = load i64, ptr %l15, !tbaa !24
  %t159 = add i64 %t157, 1
  store i64 %t159, ptr %l15, !tbaa !24
  br label %bb18
bb23:
  br label %bb24
bb24:
  %t161 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t161, ptr %l18, !tbaa !27
  store i64 0, ptr %l19, !tbaa !24
  %t163 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t165 = extractvalue { i64, ptr } %t163, 0
  store i64 %t165, ptr %l20, !tbaa !24
  br label %bb25
bb25:
  %t167 = load i64, ptr %l19, !tbaa !24
  %t168 = load i64, ptr %l20, !tbaa !24
  %t171 = icmp slt i64 %t167, %t168
  %t173 = xor i1 %t171, true
  br i1 %t173, label %bb26, label %bb27
bb26:
  br label %bb30
bb27:
  br label %bb28
bb28:
  %t175 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t175, ptr %l92, !tbaa !27
  %t176 = load i64, ptr %l19, !tbaa !24
  %t178 = getelementptr { i64, ptr }, ptr %l92, i32 0, i32 1
  %t179 = load ptr, ptr %t178, !tbaa !27
  %t180 = getelementptr i8, ptr %t179, i64 %t176
  %t181 = load i8, ptr %t180, !tbaa !32
  %t183 = load i64, ptr %l8, !tbaa !24
  %t186 = load ptr, ptr %lp7
  %t188 = getelementptr { i64, ptr }, ptr %t186, i32 0, i32 1
  %t189 = load ptr, ptr %t188, !tbaa !27
  %t190 = getelementptr i8, ptr %t189, i64 %t183
  store i8 %t181, ptr %t190, !tbaa !32
  %t191 = load i64, ptr %l8, !tbaa !24
  %t193 = add i64 %t191, 1
  store i64 %t193, ptr %l8, !tbaa !24
  br label %bb29
bb29:
  %t195 = load i64, ptr %l19, !tbaa !24
  %t197 = add i64 %t195, 1
  store i64 %t197, ptr %l19, !tbaa !24
  br label %bb25
bb30:
  call void @__olang_scope_close(ptr %s6)
  br label %bb31
bb31:
  %t199 = load i64, ptr %l10, !tbaa !24
  %t201 = add i64 %t199, 1
  store i64 %t201, ptr %l10, !tbaa !24
  br label %bb12
bb32:
  %t203 = load ptr, ptr %lp7
  %t204 = load { i64, ptr }, ptr %t203, !tbaa !27
  store { i64, ptr } %t204, ptr %rv
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

define dso_local i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1) #0 {
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
  %t9 = load i64, ptr %t8, !tbaa !34
  store i64 %t9, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0) #0 {
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

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePushAll_3cI64_3e(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
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
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eroom_3cI64_3e(ptr %v0, ptr %t62, i64 %t63)
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
  %t130 = getelementptr i64, ptr %t129, i64 %t126
  %t131 = load i64, ptr %t130, !tbaa !34
  %t134 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t116, i32 0, i32 0
  %t136 = getelementptr { i64, ptr }, ptr %t134, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !27
  %t138 = getelementptr i64, ptr %t137, i64 %t124
  store i64 %t131, ptr %t138, !tbaa !34
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

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1) #0 {
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
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eroom_3cI64_3e(ptr %v0, ptr %t15, i64 %t21)
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
  store i64 %a1, ptr %t36, !tbaa !34
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

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  br label %start
start:
  br label %bb0
bb0:
  %t6 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0, i32 0, i32 0
  %t8 = getelementptr { i64, ptr }, ptr %t6, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !27
  %t10 = getelementptr i64, ptr %t9, i64 %a1
  store i64 %a2, ptr %t10, !tbaa !34
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSort_3cI64_2c_20_3f_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1c, ptr %a1e) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  store ptr %a0, ptr %l0
  %pf1 = insertvalue { ptr, ptr } undef, ptr %a1c, 0
  %pg1 = insertvalue { ptr, ptr } %pf1, ptr %a1e, 1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l2, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t2, i32 0, i32 1
  %t5 = load i64, ptr %t4, !tbaa !24
  store i64 %t5, ptr %l4, !tbaa !24
  %t6 = load ptr, ptr %l2, !tbaa !29
  %t7 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t6, i32 0, i32 0
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t8, 0
  store i64 %t9, ptr %l5, !tbaa !24
  %t10 = icmp sge i64 0, 0
  br i1 %t10, label %bb1, label %bb2
bb1:
  %t12 = load i64, ptr %l4, !tbaa !24
  %t13 = icmp sle i64 0, %t12
  br i1 %t13, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_ae21aa20b4d08a4_7974f82e99efdaf8)
  unreachable
bb3:
  %t15 = load i64, ptr %l4, !tbaa !24
  %t16 = load i64, ptr %l5, !tbaa !24
  %t17 = icmp sle i64 %t15, %t16
  br i1 %t17, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_ae21aa20b4d08a4_7974f82e99efdaf8)
  unreachable
bb5:
  %t19 = load ptr, ptr %l2, !tbaa !29
  %t20 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t19, i32 0, i32 0
  %t21 = getelementptr { i64, ptr }, ptr %t20, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = load i64, ptr %l4, !tbaa !24
  %t24 = getelementptr i64, ptr %t22, i64 0
  %t25 = sub i64 %t23, 0
  %t26 = insertvalue { i64, ptr } undef, i64 %t25, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t24, 1
  %t31 = extractvalue { ptr, ptr } %pg1, 0
  %t32 = extractvalue { ptr, ptr } %pg1, 1
  call void @std_2fprelude_2farray_2eArray_3cI64_3e_2eSort_3cI64_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %t27, ptr %t31, ptr %t32)
  br label %bb7
bb6:
  call void @__olang_check_failed(ptr @olang_loc_ae21aa20b4d08a4_7974f82e99efdaf8)
  unreachable
bb7:
  br label %bb8
bb8:
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eroom_3cI64_3e(ptr %v0, ptr %a0, i64 %a1) noinline cold #0 {
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
  call void @__olang_check_failed(ptr @olang_loc_c71720b651c4be46_5c3ed0b2298ea3a)
  unreachable
bb15:
  %t71 = load i64, ptr %l36, !tbaa !24
  %t72 = load i64, ptr %l37, !tbaa !24
  %t73 = icmp sle i64 %t71, %t72
  br i1 %t73, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_c71720b651c4be46_5c3ed0b2298ea3a)
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
  call void @__olang_check_failed(ptr @olang_loc_c71720b651c4be46_5c3ed0b2298ea3a)
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
  %t111 = load i64, ptr %t110, !tbaa !34
  %t113 = load i64, ptr %l46, !tbaa !24
  %t114 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t115 = load ptr, ptr %t114, !tbaa !27
  %t116 = getelementptr i64, ptr %t115, i64 %t113
  store i64 %t111, ptr %t116, !tbaa !34
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

@std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e = dso_local alias i64 (ptr, ptr), ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e
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

@std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2eLen_3cstd_2fprelude_2ftext_3aChar_3e = dso_local alias i64 (ptr, ptr), ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e
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

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0) #0 {
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

@std_2fprelude_2fvec_3aVec_3cU64_3e_2ector = dso_local alias %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" (ptr, i64), ptr @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector
@std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2ector = dso_local alias %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" (ptr, i64), ptr @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector
define linkonce_odr i64 @bench_2fvec_2etwice_fv_fn_28I64_29_20I64(ptr %env, i64 %a0) #0 {
entry:
  %r = call i64 @bench_2fvec_2etwice(i64 %a0)
  ret i64 %r
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
@.d12 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"vec" }>, align 8
@.d13 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"array" }>, align 8
@.d14 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"list" }>, align 8
@.d15 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"io.Error.Partial" }>, align 8
@.d16 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d17 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d18 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"push" }>, align 8
@.d19 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"fields" }>, align 8
@.d20 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"vec" }>, align 8
@.d21 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"list" }>, align 8
@.d22 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"walk" }>, align 8
@.d23 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"vec" }>, align 8
@.d24 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"gather" }>, align 8
@.d25 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"list" }>, align 8
@.d26 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"store" }>, align 8
@.d27 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"vec" }>, align 8
@.d28 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"list" }>, align 8
@.d29 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"vec" }>, align 8
@.d30 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"fields" }>, align 8
@.d31 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"list" }>, align 8
@.d32 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"vec" }>, align 8
@.d33 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"push" }>, align 8
@.d34 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"vec" }>, align 8
@.d35 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"opaque" }>, align 8
@.d36 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"vec" }>, align 8
@.d37 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"sort" }>, align 8
@.d38 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"vec" }>, align 8
define internal i1 @olang_lambda_39(ptr %env, i64 %a0, i64 %a1) #0 {
entry:
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t5 = icmp slt i64 %a0, %a1
  store i1 %t5, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define internal i1 @olang_lambda_40(ptr %env, i64 %a0, i64 %a1) #0 {
entry:
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t5 = icmp slt i64 %a0, %a1
  store i1 %t5, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@.d41 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"io.Error.Partial" }>, align 8
@.d42 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d43 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d44 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d45 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"io.Error.Partial" }>, align 8
@.d46 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d47 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
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
@__olang_argc = external global i32
@__olang_argv = external global ptr
declare void @__olang_thread_init()
@stderr = external global ptr
@.c48 = private unnamed_addr constant [17 x i8] c"unhandled error\0A\00"
@.c49 = private unnamed_addr constant [29 x i8] c"unhandled error: Usage.Args\0A\00"
@.c50 = private unnamed_addr constant [29 x i8] c"unhandled error: Usage.Mode\0A\00"
@.c51 = private unnamed_addr constant [29 x i8] c"unhandled error: Usage.Kind\0A\00"
@.c52 = private unnamed_addr constant [34 x i8] c"unhandled error: io.Error.Failed\0A\00"
@.c53 = private unnamed_addr constant [35 x i8] c"unhandled error: io.Error.Partial\0A\00"
@.c54 = private unnamed_addr constant [35 x i8] c"unhandled error: ParseError.Empty\0A\00"
@.c55 = private unnamed_addr constant [37 x i8] c"unhandled error: ParseError.Invalid\0A\00"
@.c56 = private unnamed_addr constant [38 x i8] c"unhandled error: ParseError.Overflow\0A\00"
declare i32 @fputs(ptr, ptr)
declare void @__olang_debug_hint(ptr)
@__olang_empty_array = external constant [16 x i64]
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
define internal i1 @olang_lambda_57(ptr %env, i64 %a0, i64 %a1) #0 {
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
declare { i64, ptr } @std_2fos_2eArgs(ptr %v0)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v0, { i64, ptr } %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @std_2fio_2ePrint(ptr %v0, { i64, ptr } %a0)
@olang_loc_86b43cd7d5adc973_c918952e60fb3887 = external constant [0 x i8]
@olang_loc_825ec9e248fb1845_9d70a386cad83911 = external constant [0 x i8]
@olang_loc_f6cdfe2a667948ca_4b83585f8069a28e = external constant [0 x i8]
@olang_loc_f2094d28a04599f_f6af0f5a902fc183 = external constant [0 x i8]
@G_2estd_2flist_2efirstChunk = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
declare i64 @std_2flist_2ehighBit(i64 %a0)
@G_2estd_2flist_2efirstChunkLog = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@olang_loc_6cb2d9e9c0162584_77bbd8c2d0f38b38 = external constant [0 x i8]
@olang_loc_90cea9619d71ae2c_fd926ce569d55010 = external constant [0 x i8]
@olang_loc_5eb4f66ecba8a1f9_c9d25a0daabea53d = external constant [0 x i8]
@olang_loc_3e24b1074d050e6c_baf46274dc857d10 = external constant [0 x i8]
@olang_loc_4d9efdb9b3bd29cf_845ab765af391533 = external constant [0 x i8]
@olang_loc_a3a508af6c63527a_2342d145c6fabffe = external constant [0 x i8]
@olang_loc_b3c75d0b7f3f7824_a3e996a9754929e8 = external constant [0 x i8]
@olang_loc_a3d46951c6f9b911_4e97d0de011895c5 = external constant [0 x i8]
@olang_loc_35b3dd6bcc06cb0a_cb35cbb6c7218fee = external constant [0 x i8]
@olang_loc_15e36604d72a5de7_9f6d877cc1463deb = external constant [0 x i8]
@olang_loc_16fcf676fdd53123_141b01fb6118feb7 = external constant [0 x i8]
@olang_loc_6b48b939e732d4ae_b85af6ff2092a02 = external constant [0 x i8]
@olang_loc_a2d2bb88b933aead_cb74f1ad04972721 = external constant [0 x i8]
@G_2estd_2fprelude_2farray_2esortRun = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\18\00\00\00\00\00\00\00" }>, align 8
@G_2estd_2fprelude_2farray_2esortBlock = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\30\00\00\00\00\00\00" }>, align 8
@olang_loc_f5954356a94cfd1d_57c8a908dd11d469 = external constant [0 x i8]
@olang_loc_bd57bfee552aaf80_4db8901b79077054 = external constant [0 x i8]
@olang_loc_32b4dd57063daccc_20299270f57c1810 = external constant [0 x i8]
@olang_loc_6124bee271ea27df_40001a175be242b = external constant [0 x i8]
@olang_loc_b4b3d3a21dffee1a_94412941cff469ee = external constant [0 x i8]
@olang_loc_ae21aa20b4d08a4_7974f82e99efdaf8 = external constant [0 x i8]
@olang_loc_c71720b651c4be46_5c3ed0b2298ea3a = external constant [0 x i8]
@olang_loc_4c80127648ba5d2e_65bcf202b125bf62 = external constant [0 x i8]
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
