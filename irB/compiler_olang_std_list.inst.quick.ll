source_filename = "compiler_olang_std_list.inst.quick.ll"
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
%"std/list:List.6ce2052386e1f5dfc75915f9e44d8f1b" = type { ptr }
%"std/list:listState.9783095779ea18337775adeb6569839d" = type { { i64, ptr }, { i64, ptr }, i64, i64, { i64, ptr }, i64, i64, i64 }
define dso_local i64 @std_2flist_2estd_2flist_3aList_3cstd_2fprelude_2ftext_3aString_26_3e_2eLen_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %a0) #0 {
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

declare void @__olang_check_failed(ptr) cold noreturn
@olang_loc_90cea9619d71ae2c_fd926ce569d55010 = external constant [0 x i8]
@G_2estd_2flist_2efirstChunk = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
declare i64 @std_2flist_2ehighBit(i64 %a0)
@G_2estd_2flist_2efirstChunkLog = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@olang_loc_35b3dd6bcc06cb0a_cb35cbb6c7218fee = external constant [0 x i8]
@olang_loc_15e36604d72a5de7_9f6d877cc1463deb = external constant [0 x i8]

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
