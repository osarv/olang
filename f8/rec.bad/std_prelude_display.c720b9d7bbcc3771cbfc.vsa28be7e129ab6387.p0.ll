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
define dso_local { i64, ptr } @std_2fprelude_2fdisplay_2estd_2fprelude_2fdisplay_3aDisplay_2eBody(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca ptr
  %l8 = alloca i1
  %l15 = alloca ptr
  %l16 = alloca i1
  %l23 = alloca ptr
  %l24 = alloca i1
  %l31 = alloca ptr
  %l32 = alloca i1
  %l39 = alloca ptr
  %l40 = alloca i1
  %l45 = alloca { i64, ptr }
  %l46 = alloca i64
  %l47 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 5}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l8, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l8, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [2 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { { i64, ptr } }, ptr %t12, i32 0, i32 0
  %t14 = load { i64, ptr }, ptr %t13
  store { i64, ptr } %t14, ptr %l1, !tbaa !27
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t16 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t16, 1
  %t19 = extractvalue { i64, ptr } %t16, 0
  %t20 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t19)
  call void @olang_textcopy(ptr %t20, ptr %t18, i64 %t19)
  %t21 = insertvalue { i64, ptr } undef, i64 %t19, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t20, 1
  store { i64, ptr } %t22, ptr %l6, !tbaa !27
  br label %bb31
bb6:
  %t24 = load ptr, ptr %l0, !tbaa !29
  store ptr %t24, ptr %l15, !tbaa !29
  store i1 false, ptr %l16, !tbaa !21
  %t25 = load ptr, ptr %l15, !tbaa !29
  %t26 = icmp ne ptr %t25, null
  br i1 %t26, label %bb7, label %bb8
bb7:
  %t28 = load ptr, ptr %l15, !tbaa !29
  %t29 = load i64, ptr %t28, !range !{i64 0, i64 5}
  %t31 = icmp eq i64 %t29, 1
  store i1 %t31, ptr %l16, !tbaa !21
  br label %bb8
bb8:
  %t32 = load i1, ptr %l16, !tbaa !21
  br i1 %t32, label %bb9, label %bb10
bb9:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr { i64, [2 x i64] }, ptr %t33, i32 0, i32 1
  %t36 = getelementptr { { i64, ptr } }, ptr %t35, i32 0, i32 0
  %t37 = load { i64, ptr }, ptr %t36
  store { i64, ptr } %t37, ptr %l2, !tbaa !27
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t39 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t39, 1
  %t42 = extractvalue { i64, ptr } %t39, 0
  %t43 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t42)
  call void @olang_textcopy(ptr %t43, ptr %t41, i64 %t42)
  %t44 = insertvalue { i64, ptr } undef, i64 %t42, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t43, 1
  store { i64, ptr } %t45, ptr %l6, !tbaa !27
  br label %bb31
bb12:
  %t47 = load ptr, ptr %l0, !tbaa !29
  store ptr %t47, ptr %l23, !tbaa !29
  store i1 false, ptr %l24, !tbaa !21
  %t48 = load ptr, ptr %l23, !tbaa !29
  %t49 = icmp ne ptr %t48, null
  br i1 %t49, label %bb13, label %bb14
bb13:
  %t51 = load ptr, ptr %l23, !tbaa !29
  %t52 = load i64, ptr %t51, !range !{i64 0, i64 5}
  %t54 = icmp eq i64 %t52, 2
  store i1 %t54, ptr %l24, !tbaa !21
  br label %bb14
bb14:
  %t55 = load i1, ptr %l24, !tbaa !21
  br i1 %t55, label %bb15, label %bb16
bb15:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr { i64, [2 x i64] }, ptr %t56, i32 0, i32 1
  %t59 = getelementptr { { i64, ptr } }, ptr %t58, i32 0, i32 0
  %t60 = load { i64, ptr }, ptr %t59
  store { i64, ptr } %t60, ptr %l3, !tbaa !27
  br label %bb17
bb16:
  br label %bb18
bb17:
  %t62 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t64 = extractvalue { i64, ptr } %t62, 1
  %t65 = extractvalue { i64, ptr } %t62, 0
  %t66 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t65)
  call void @olang_textcopy(ptr %t66, ptr %t64, i64 %t65)
  %t67 = insertvalue { i64, ptr } undef, i64 %t65, 0
  %t68 = insertvalue { i64, ptr } %t67, ptr %t66, 1
  store { i64, ptr } %t68, ptr %l6, !tbaa !27
  br label %bb31
bb18:
  %t70 = load ptr, ptr %l0, !tbaa !29
  store ptr %t70, ptr %l31, !tbaa !29
  store i1 false, ptr %l32, !tbaa !21
  %t71 = load ptr, ptr %l31, !tbaa !29
  %t72 = icmp ne ptr %t71, null
  br i1 %t72, label %bb19, label %bb20
bb19:
  %t74 = load ptr, ptr %l31, !tbaa !29
  %t75 = load i64, ptr %t74, !range !{i64 0, i64 5}
  %t77 = icmp eq i64 %t75, 3
  store i1 %t77, ptr %l32, !tbaa !21
  br label %bb20
bb20:
  %t78 = load i1, ptr %l32, !tbaa !21
  br i1 %t78, label %bb21, label %bb22
bb21:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr { i64, [2 x i64] }, ptr %t79, i32 0, i32 1
  %t82 = getelementptr { { i64, ptr } }, ptr %t81, i32 0, i32 0
  %t83 = load { i64, ptr }, ptr %t82
  store { i64, ptr } %t83, ptr %l4, !tbaa !27
  br label %bb23
bb22:
  br label %bb24
bb23:
  %t85 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t87 = extractvalue { i64, ptr } %t85, 1
  %t88 = extractvalue { i64, ptr } %t85, 0
  %t89 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t88)
  call void @olang_textcopy(ptr %t89, ptr %t87, i64 %t88)
  %t90 = insertvalue { i64, ptr } undef, i64 %t88, 0
  %t91 = insertvalue { i64, ptr } %t90, ptr %t89, 1
  store { i64, ptr } %t91, ptr %l6, !tbaa !27
  br label %bb31
bb24:
  %t93 = load ptr, ptr %l0, !tbaa !29
  store ptr %t93, ptr %l39, !tbaa !29
  store i1 false, ptr %l40, !tbaa !21
  %t94 = load ptr, ptr %l39, !tbaa !29
  %t95 = icmp ne ptr %t94, null
  br i1 %t95, label %bb25, label %bb26
bb25:
  %t97 = load ptr, ptr %l39, !tbaa !29
  %t98 = load i64, ptr %t97, !range !{i64 0, i64 5}
  %t100 = icmp eq i64 %t98, 4
  store i1 %t100, ptr %l40, !tbaa !21
  br label %bb26
bb26:
  %t101 = load i1, ptr %l40, !tbaa !21
  br i1 %t101, label %bb27, label %bb28
bb27:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr { i64, [2 x i64] }, ptr %t102, i32 0, i32 1
  %t105 = getelementptr { { i64, ptr } }, ptr %t104, i32 0, i32 0
  %t106 = load { i64, ptr }, ptr %t105
  store { i64, ptr } %t106, ptr %l5, !tbaa !27
  br label %bb29
bb28:
  br label %bb30
bb29:
  %t108 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t108, ptr %l45, !tbaa !27
  %t109 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t110 = extractvalue { i64, ptr } %t109, 0
  store i64 %t110, ptr %l46, !tbaa !24
  %t111 = load i64, ptr %l46, !tbaa !24
  %t112 = mul i64 %t111, 1
  %t113 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t112)
  %t114 = insertvalue { i64, ptr } undef, i64 %t111, 0
  %t115 = insertvalue { i64, ptr } %t114, ptr %t113, 1
  store { i64, ptr } %t115, ptr %l47, !tbaa !27
  %t116 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t117 = load ptr, ptr %t116, !tbaa !27
  %t118 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t119 = load ptr, ptr %t118, !tbaa !27
  %t120 = load i64, ptr %l46, !tbaa !24
  %t121 = mul i64 %t120, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t117, ptr %t119, i64 %t121, i1 false)
  %t122 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t122, ptr %l6, !tbaa !27
  br label %bb31
bb30:
  call void @__olang_check_failed(ptr @olang_loc_26dd4afc6329842a_42e227b062c9b806)
  unreachable
bb31:
  %t124 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t124, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @std_2fprelude_2fdisplay_2estd_2fprelude_2fdisplay_3aDisplay_2eMime(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca ptr
  %l3 = alloca i1
  %l6 = alloca { i64, ptr }
  %l8 = alloca ptr
  %l9 = alloca i1
  %l12 = alloca { i64, ptr }
  %l14 = alloca ptr
  %l15 = alloca i1
  %l18 = alloca { i64, ptr }
  %l20 = alloca ptr
  %l21 = alloca i1
  %l24 = alloca { i64, ptr }
  %l26 = alloca ptr
  %l27 = alloca i1
  %l30 = alloca { i64, ptr }
  %l32 = alloca i64
  %l33 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l2, !tbaa !29
  store i1 false, ptr %l3, !tbaa !21
  %t2 = load ptr, ptr %l2, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 5}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l3, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l3, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb6
bb5:
  store { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d0, i32 0, i32 1) }, ptr %l6, !tbaa !27
  %t10 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t10, ptr %l1, !tbaa !27
  br label %bb31
bb6:
  %t12 = load ptr, ptr %l0, !tbaa !29
  store ptr %t12, ptr %l8, !tbaa !29
  store i1 false, ptr %l9, !tbaa !21
  %t13 = load ptr, ptr %l8, !tbaa !29
  %t14 = icmp ne ptr %t13, null
  br i1 %t14, label %bb7, label %bb8
bb7:
  %t16 = load ptr, ptr %l8, !tbaa !29
  %t17 = load i64, ptr %t16, !range !{i64 0, i64 5}
  %t19 = icmp eq i64 %t17, 1
  store i1 %t19, ptr %l9, !tbaa !21
  br label %bb8
bb8:
  %t20 = load i1, ptr %l9, !tbaa !21
  br i1 %t20, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  store { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d1, i32 0, i32 1) }, ptr %l12, !tbaa !27
  %t21 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t21, ptr %l1, !tbaa !27
  br label %bb31
bb12:
  %t23 = load ptr, ptr %l0, !tbaa !29
  store ptr %t23, ptr %l14, !tbaa !29
  store i1 false, ptr %l15, !tbaa !21
  %t24 = load ptr, ptr %l14, !tbaa !29
  %t25 = icmp ne ptr %t24, null
  br i1 %t25, label %bb13, label %bb14
bb13:
  %t27 = load ptr, ptr %l14, !tbaa !29
  %t28 = load i64, ptr %t27, !range !{i64 0, i64 5}
  %t30 = icmp eq i64 %t28, 2
  store i1 %t30, ptr %l15, !tbaa !21
  br label %bb14
bb14:
  %t31 = load i1, ptr %l15, !tbaa !21
  br i1 %t31, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb18
bb17:
  store { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d2, i32 0, i32 1) }, ptr %l18, !tbaa !27
  %t32 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t32, ptr %l1, !tbaa !27
  br label %bb31
bb18:
  %t34 = load ptr, ptr %l0, !tbaa !29
  store ptr %t34, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t35 = load ptr, ptr %l20, !tbaa !29
  %t36 = icmp ne ptr %t35, null
  br i1 %t36, label %bb19, label %bb20
bb19:
  %t38 = load ptr, ptr %l20, !tbaa !29
  %t39 = load i64, ptr %t38, !range !{i64 0, i64 5}
  %t41 = icmp eq i64 %t39, 3
  store i1 %t41, ptr %l21, !tbaa !21
  br label %bb20
bb20:
  %t42 = load i1, ptr %l21, !tbaa !21
  br i1 %t42, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  store { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d3, i32 0, i32 1) }, ptr %l24, !tbaa !27
  %t43 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t43, ptr %l1, !tbaa !27
  br label %bb31
bb24:
  %t45 = load ptr, ptr %l0, !tbaa !29
  store ptr %t45, ptr %l26, !tbaa !29
  store i1 false, ptr %l27, !tbaa !21
  %t46 = load ptr, ptr %l26, !tbaa !29
  %t47 = icmp ne ptr %t46, null
  br i1 %t47, label %bb25, label %bb26
bb25:
  %t49 = load ptr, ptr %l26, !tbaa !29
  %t50 = load i64, ptr %t49, !range !{i64 0, i64 5}
  %t52 = icmp eq i64 %t50, 4
  store i1 %t52, ptr %l27, !tbaa !21
  br label %bb26
bb26:
  %t53 = load i1, ptr %l27, !tbaa !21
  br i1 %t53, label %bb27, label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb30
bb29:
  store { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d4, i32 0, i32 1) }, ptr %l30, !tbaa !27
  %t54 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t54, ptr %l1, !tbaa !27
  br label %bb31
bb30:
  call void @__olang_check_failed(ptr @olang_loc_573f247fa8a38e16_24583a9493955dea)
  unreachable
bb31:
  %t56 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t57 = extractvalue { i64, ptr } %t56, 0
  store i64 %t57, ptr %l32, !tbaa !24
  %t58 = load i64, ptr %l32, !tbaa !24
  %t59 = mul i64 %t58, 1
  %t60 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t59)
  %t61 = insertvalue { i64, ptr } undef, i64 %t58, 0
  %t62 = insertvalue { i64, ptr } %t61, ptr %t60, 1
  store { i64, ptr } %t62, ptr %l33, !tbaa !27
  %t63 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !27
  %t65 = getelementptr { i64, ptr }, ptr %l1, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !27
  %t67 = load i64, ptr %l32, !tbaa !24
  %t68 = mul i64 %t67, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t64, ptr %t66, i64 %t68, i1 false)
  %t69 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t69, ptr %l1, !tbaa !27
  %t70 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t70, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

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
declare void @__olang_check_failed(ptr) cold noreturn
@.d0 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"text/html" }>, align 8
@.d1 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"text/markdown" }>, align 8
@.d2 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"text/latex" }>, align 8
@.d3 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"image/svg+xml" }>, align 8
@.d4 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"image/png" }>, align 8
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
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
declare noalias ptr @__olang_scope_alloc_slow(ptr, i64, i64) noinline
@olang_loc_26dd4afc6329842a_42e227b062c9b806 = external constant [0 x i8]
@olang_loc_573f247fa8a38e16_24583a9493955dea = external constant [0 x i8]

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
