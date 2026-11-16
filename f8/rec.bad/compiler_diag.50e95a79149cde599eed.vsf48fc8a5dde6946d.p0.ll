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
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/diag:Item" = type { i1, { i64, ptr }, i64, i64, i64, i64, { i64, ptr }, i1 }
%"compiler/diag:Diagnostics" = type { i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, [3 x i64] }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/diag:record" = type { { i64, [3 x i64] }, { i64, ptr }, { i64, ptr }, i32, i64, i1 }
%"compiler/diag:Said" = type { { i64, ptr }, i64, i64, { i64, ptr } }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/diag:note" = type { i64, { i64, [3 x i64] }, { i64, ptr }, i1, i1 }
%"compiler/diag:context" = type { { i64, [3 x i64] }, { i64, ptr } }
%"compiler/diag:Taken" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
@G_2ecompiler_2fdiag_2eChosen = constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fdiag_2eCut = constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fdiag_2eDropped = constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fdiag_2eExcerptAround = constant <{ [8 x i8] }> <{ [8 x i8] c"\46\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fdiag_2eExcerptMax = constant <{ [8 x i8] }> <{ [8 x i8] c"\A0\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fdiag_2ePending = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
define dso_local i1 @compiler_2fdiag_2eColorWanted() #0 {
entry:
  %l0 = alloca i1
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i32
  %l8 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call i1 @std_2fos_2eIsTerminal(i32 1)
  store i1 %t1, ptr %l0
  br label %bb1
bb1:
  %t2 = load i1, ptr %l0, !tbaa !21
  %t3 = xor i1 %t2, true
  br i1 %t3, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t6 = call { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %s0, ptr %s0, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d0, i32 0, i32 1) })
  %t7 = extractvalue { i32, { i64, ptr } } %t6, 1
  %t8 = extractvalue { i32, { i64, ptr } } %t6, 0
  store i32 %t8, ptr %l5
  %t9 = icmp ne i32 %t8, 0
  br i1 %t9, label %bb6, label %ok.10, !prof !99
ok.10:
  store { i64, ptr } %t7, ptr %l4
  br label %bb5
bb5:
  %t11 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t11, ptr %l3, !tbaa !27
  br label %bb11
bb6:
  %t12 = load i32, ptr %l5, !tbaa !23
  %t13 = ashr i32 %t12, 16
  %t15 = icmp eq i32 %t13, 1
  br i1 %t15, label %bb7, label %bb8
bb7:
  call void @__olang_errpay_pop()
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t17 = call i1 @compiler_2fdiag_2etermAllowsColor()
  store i1 %t17, ptr %l8
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s0)
  %t18 = load i1, ptr %l8, !tbaa !21
  store i1 %t18, ptr %rv
  br label %ret
bb11:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i32, { i64, ptr } } @compiler_2fdiag_2eExplain(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l7 = alloca i8
  %l8 = alloca { i64, ptr }
  %l9 = alloca %"std/prelude/text:StringBuilder"
  %l10 = alloca { i64, ptr }
  %l11 = alloca i1
  %l12 = alloca i1
  %l13 = alloca i64
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l18 = alloca i1
  %l19 = alloca i64
  %l20 = alloca %"std/prelude/text:StringBuilder"
  %l29 = alloca { i64, ptr }
  %l32 = alloca ptr
  %l35 = alloca i8
  %l37 = alloca i8
  %l42 = alloca { i64, ptr }
  %l43 = alloca %"std/prelude/text:StringBuilder"
  %l44 = alloca { i64, ptr }
  %l45 = alloca i64
  %l50 = alloca { i64, ptr }
  %l53 = alloca i64
  %l54 = alloca i64
  %l63 = alloca i64
  %l66 = alloca i64
  %l67 = alloca i32
  %l71 = alloca { i64, ptr }
  %l73 = alloca i64
  %l74 = alloca i64
  %l79 = alloca { i64, ptr }
  %l81 = alloca i64
  %l84 = alloca i64
  %l85 = alloca i64
  %l91 = alloca { i64, ptr }
  %l92 = alloca { i64, ptr }
  %l96 = alloca i1
  %l100 = alloca i1
  %l106 = alloca i1
  %l109 = alloca i1
  %l114 = alloca i1
  %l115 = alloca { i64, ptr }
  %l119 = alloca i1
  %l120 = alloca { i64, ptr }
  %l134 = alloca i1
  %l135 = alloca { i64, ptr }
  %l138 = alloca i1
  %l139 = alloca ptr
  %l140 = alloca { i64, ptr }
  %l142 = alloca ptr
  %l143 = alloca { i64, ptr }
  %l144 = alloca i64
  %l147 = alloca i64
  %l148 = alloca i64
  %l157 = alloca i1
  %l172 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l20
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l20
  store %"std/prelude/text:StringBuilder" %t2, ptr %l2
  store { i64, ptr } %a1, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t5 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  store i64 %t7, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  %t9 = load i64, ptr %l4, !tbaa !24
  %t10 = load i64, ptr %l5, !tbaa !24
  %t13 = icmp slt i64 %t9, %t10
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb3, label %bb4
bb3:
  br label %bb12
bb4:
  br label %bb5
bb5:
  %t17 = load i64, ptr %l4, !tbaa !24
  %t19 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t19, ptr %l29, !tbaa !27
  %t20 = load i64, ptr %l4, !tbaa !24
  %t22 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = getelementptr i8, ptr %t23, i64 %t20
  %t25 = load i8, ptr %t24, !tbaa !32
  store i8 %t25, ptr %l7, !tbaa !22
  store ptr %l2, ptr %l32, !tbaa !29
  %t29 = icmp eq i64 %t17, 0
  br i1 %t29, label %bb6, label %bb7
bb6:
  %t31 = load i8, ptr %l7, !tbaa !22
  %t33 = call i8 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eToUpper(i8 %t31)
  store i8 %t33, ptr %l37
  br label %bb8
bb7:
  %t34 = load i8, ptr %l7, !tbaa !22
  store i8 %t34, ptr %l35, !tbaa !22
  br label %bb9
bb8:
  %t36 = load i8, ptr %l37, !tbaa !22
  store i8 %t36, ptr %l35, !tbaa !22
  br label %bb9
bb9:
  %t37 = load ptr, ptr %l32, !tbaa !29
  %t38 = load i8, ptr %l35, !tbaa !22
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %t37, i8 %t38)
  br label %bb10
bb10:
  br label %bb11
bb11:
  %t39 = load i64, ptr %l4, !tbaa !24
  %t41 = add i64 %t39, 1
  store i64 %t41, ptr %l4, !tbaa !24
  br label %bb2
bb12:
  %t44 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %l2)
  store { i64, ptr } %t44, ptr %l42
  br label %bb13
bb13:
  %t45 = load { i64, ptr }, ptr %l42, !tbaa !27
  store { i64, ptr } %t45, ptr %l8, !tbaa !27
  %t46 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t46, ptr %l43
  br label %bb14
bb14:
  %t47 = load %"std/prelude/text:StringBuilder", ptr %l43
  store %"std/prelude/text:StringBuilder" %t47, ptr %l9
  %t48 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t48, ptr %l44, !tbaa !27
  %t49 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t50 = extractvalue { i64, ptr } %t49, 0
  store i64 %t50, ptr %l45, !tbaa !24
  %t51 = icmp sge i64 0, 0
  br i1 %t51, label %bb15, label %bb16
bb15:
  %t53 = icmp sle i64 0, 0
  br i1 %t53, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_c5879cd561f524a8_9a69d9d7af5b002c)
  unreachable
bb17:
  %t55 = load i64, ptr %l45, !tbaa !24
  %t56 = icmp sle i64 0, %t55
  br i1 %t56, label %bb19, label %bb20
bb18:
  call void @__olang_check_failed(ptr @olang_loc_c5879cd561f524a8_9a69d9d7af5b002c)
  unreachable
bb19:
  %t58 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !27
  %t60 = getelementptr i8, ptr %t59, i64 0
  %t61 = sub i64 0, 0
  %t62 = insertvalue { i64, ptr } undef, i64 %t61, 0
  %t63 = insertvalue { i64, ptr } %t62, ptr %t60, 1
  store { i64, ptr } %t63, ptr %l10, !tbaa !27
  store i1 false, ptr %l11, !tbaa !21
  store i1 false, ptr %l12, !tbaa !21
  store i64 0, ptr %l13, !tbaa !24
  %t65 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t65, ptr %l50, !tbaa !27
  %t66 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t69 = extractvalue { i64, ptr } %t66, 0
  store i64 %t69, ptr %l53, !tbaa !24
  %t70 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t71 = extractvalue { i64, ptr } %t70, 0
  store i64 %t71, ptr %l54, !tbaa !24
  %t72 = icmp sge i64 0, 0
  br i1 %t72, label %bb21, label %bb22
bb20:
  call void @__olang_check_failed(ptr @olang_loc_c5879cd561f524a8_9a69d9d7af5b002c)
  unreachable
bb21:
  %t74 = load i64, ptr %l53, !tbaa !24
  %t75 = icmp sle i64 0, %t74
  br i1 %t75, label %bb23, label %bb24
bb22:
  call void @__olang_check_failed(ptr @olang_loc_278b8075a2f80085_5f77718140d89fd9)
  unreachable
bb23:
  %t77 = load i64, ptr %l53, !tbaa !24
  %t78 = load i64, ptr %l54, !tbaa !24
  %t79 = icmp sle i64 %t77, %t78
  br i1 %t79, label %bb25, label %bb26
bb24:
  call void @__olang_check_failed(ptr @olang_loc_278b8075a2f80085_5f77718140d89fd9)
  unreachable
bb25:
  %t81 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !27
  %t83 = load i64, ptr %l53, !tbaa !24
  %t84 = getelementptr i8, ptr %t82, i64 0
  %t85 = sub i64 %t83, 0
  %t86 = insertvalue { i64, ptr } undef, i64 %t85, 0
  %t87 = insertvalue { i64, ptr } %t86, ptr %t84, 1
  store { i64, ptr } %t87, ptr %l14, !tbaa !27
  br label %bb27
bb26:
  call void @__olang_check_failed(ptr @olang_loc_278b8075a2f80085_5f77718140d89fd9)
  unreachable
bb27:
  store %olang.scope zeroinitializer, ptr %s4
  %t89 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t91 = extractvalue { i64, ptr } %t89, 0
  %t93 = icmp sgt i64 %t91, 0
  %t95 = xor i1 %t93, true
  br i1 %t95, label %bb28, label %bb29
bb28:
  call void @__olang_scope_close(ptr %s4)
  br label %bb115
bb29:
  br label %bb30
bb30:
  %t97 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t100 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v0, { i64, ptr } %t97, i8 10)
  %t101 = extractvalue { i32, i64 } %t100, 1
  %t102 = extractvalue { i32, i64 } %t100, 0
  store i32 %t102, ptr %l67
  %t103 = icmp ne i32 %t102, 0
  br i1 %t103, label %bb32, label %ok.104, !prof !99
ok.104:
  store i64 %t101, ptr %l66
  br label %bb31
bb31:
  %t105 = load i64, ptr %l66, !tbaa !24
  store i64 %t105, ptr %l63, !tbaa !24
  br label %bb34
bb32:
  br label %bb33
bb33:
  %t106 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t108 = extractvalue { i64, ptr } %t106, 0
  %t110 = sub i64 %t108, 1
  store i64 %t110, ptr %l63, !tbaa !24
  br label %bb34
bb34:
  %t112 = load i64, ptr %l63, !tbaa !24
  store i64 %t112, ptr %l15, !tbaa !24
  %t113 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t113, ptr %l71, !tbaa !27
  %t114 = load i64, ptr %l15, !tbaa !24
  %t116 = add i64 %t114, 1
  store i64 %t116, ptr %l73, !tbaa !24
  %t117 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t118 = extractvalue { i64, ptr } %t117, 0
  store i64 %t118, ptr %l74, !tbaa !24
  %t119 = icmp sge i64 0, 0
  br i1 %t119, label %bb35, label %bb36
bb35:
  %t121 = load i64, ptr %l73, !tbaa !24
  %t122 = icmp sle i64 0, %t121
  br i1 %t122, label %bb37, label %bb38
bb36:
  call void @__olang_check_failed(ptr @olang_loc_5357591f61d3ec66_4083edcb137c28ba)
  unreachable
bb37:
  %t124 = load i64, ptr %l73, !tbaa !24
  %t125 = load i64, ptr %l74, !tbaa !24
  %t126 = icmp sle i64 %t124, %t125
  br i1 %t126, label %bb39, label %bb40
bb38:
  call void @__olang_check_failed(ptr @olang_loc_5357591f61d3ec66_4083edcb137c28ba)
  unreachable
bb39:
  %t128 = getelementptr { i64, ptr }, ptr %l71, i32 0, i32 1
  %t129 = load ptr, ptr %t128, !tbaa !27
  %t130 = load i64, ptr %l73, !tbaa !24
  %t131 = getelementptr i8, ptr %t129, i64 0
  %t132 = sub i64 %t130, 0
  %t133 = insertvalue { i64, ptr } undef, i64 %t132, 0
  %t134 = insertvalue { i64, ptr } %t133, ptr %t131, 1
  store { i64, ptr } %t134, ptr %l16, !tbaa !27
  %t136 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t136, ptr %l79, !tbaa !27
  %t137 = load i64, ptr %l15, !tbaa !24
  %t139 = add i64 %t137, 1
  store i64 %t139, ptr %l81, !tbaa !24
  %t140 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t143 = extractvalue { i64, ptr } %t140, 0
  store i64 %t143, ptr %l84, !tbaa !24
  %t144 = load { i64, ptr }, ptr %l79, !tbaa !27
  %t145 = extractvalue { i64, ptr } %t144, 0
  store i64 %t145, ptr %l85, !tbaa !24
  %t146 = load i64, ptr %l81, !tbaa !24
  %t147 = icmp sge i64 %t146, 0
  br i1 %t147, label %bb41, label %bb42
bb40:
  call void @__olang_check_failed(ptr @olang_loc_5357591f61d3ec66_4083edcb137c28ba)
  unreachable
bb41:
  %t149 = load i64, ptr %l81, !tbaa !24
  %t150 = load i64, ptr %l84, !tbaa !24
  %t151 = icmp sle i64 %t149, %t150
  br i1 %t151, label %bb43, label %bb44
bb42:
  call void @__olang_check_failed(ptr @olang_loc_40a6fbbd452759c3_7354b3156286cb97)
  unreachable
bb43:
  %t153 = load i64, ptr %l84, !tbaa !24
  %t154 = load i64, ptr %l85, !tbaa !24
  %t155 = icmp sle i64 %t153, %t154
  br i1 %t155, label %bb45, label %bb46
bb44:
  call void @__olang_check_failed(ptr @olang_loc_40a6fbbd452759c3_7354b3156286cb97)
  unreachable
bb45:
  %t157 = getelementptr { i64, ptr }, ptr %l79, i32 0, i32 1
  %t158 = load ptr, ptr %t157, !tbaa !27
  %t159 = load i64, ptr %l81, !tbaa !24
  %t160 = load i64, ptr %l84, !tbaa !24
  %t161 = getelementptr i8, ptr %t158, i64 %t159
  %t162 = sub i64 %t160, %t159
  %t163 = insertvalue { i64, ptr } undef, i64 %t162, 0
  %t164 = insertvalue { i64, ptr } %t163, ptr %t161, 1
  store { i64, ptr } %t164, ptr %l14, !tbaa !27
  %t166 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t168 = call { i64, ptr } @compiler_2fdiag_2eruleIdAt(ptr %v0, ptr %v0, { i64, ptr } %t166)
  store { i64, ptr } %t168, ptr %l91
  br label %bb47
bb46:
  call void @__olang_check_failed(ptr @olang_loc_40a6fbbd452759c3_7354b3156286cb97)
  unreachable
bb47:
  %t169 = load { i64, ptr }, ptr %l91, !tbaa !27
  store { i64, ptr } %t169, ptr %l17, !tbaa !27
  %t170 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t170, ptr %l92, !tbaa !27
  %t171 = getelementptr { i64, ptr }, ptr %l92, i32 0, i32 1
  %t172 = load ptr, ptr %t171, !tbaa !27
  %t173 = getelementptr i8, ptr %t172, i64 0
  %t174 = load i8, ptr %t173, !tbaa !32
  %t176 = icmp eq i8 %t174, 35
  store i1 %t176, ptr %l18, !tbaa !21
  %t178 = load i1, ptr %l11, !tbaa !21
  br i1 %t178, label %bb48, label %bb49
bb48:
  %t180 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t182 = extractvalue { i64, ptr } %t180, 0
  %t184 = icmp sgt i64 %t182, 0
  br i1 %t184, label %bb50, label %bb51
bb49:
  store i1 false, ptr %l96, !tbaa !21
  br label %bb53
bb50:
  store i1 true, ptr %l100, !tbaa !21
  br label %bb52
bb51:
  %t186 = load i1, ptr %l18, !tbaa !21
  store i1 %t186, ptr %l100, !tbaa !21
  br label %bb52
bb52:
  %t188 = load i1, ptr %l100, !tbaa !21
  store i1 %t188, ptr %l96, !tbaa !21
  br label %bb53
bb53:
  %t189 = load i1, ptr %l96, !tbaa !21
  br i1 %t189, label %bb54, label %bb55
bb54:
  call void @__olang_scope_close(ptr %s4)
  br label %bb115
bb55:
  br label %bb56
bb56:
  %t190 = load i1, ptr %l18, !tbaa !21
  br i1 %t190, label %bb57, label %bb58
bb57:
  %t192 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t192, ptr %l10, !tbaa !27
  call void @__olang_scope_close(ptr %s4)
  br label %bb114
bb58:
  br label %bb59
bb59:
  %t194 = load i1, ptr %l11, !tbaa !21
  %t196 = xor i1 %t194, true
  br i1 %t196, label %bb60, label %bb61
bb60:
  %t198 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t199 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t202 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t198, { i64, ptr } %t199)
  store i1 %t202, ptr %l109
  br label %bb62
bb61:
  store i1 false, ptr %l106, !tbaa !21
  br label %bb63
bb62:
  %t203 = load i1, ptr %l109, !tbaa !21
  store i1 %t203, ptr %l106, !tbaa !21
  br label %bb63
bb63:
  %t204 = load i1, ptr %l106, !tbaa !21
  br i1 %t204, label %bb64, label %bb65
bb64:
  store i1 true, ptr %l11, !tbaa !21
  store i1 true, ptr %l12, !tbaa !21
  store i64 0, ptr %l19, !tbaa !24
  br label %bb66
bb65:
  br label %bb98
bb66:
  %t205 = load i64, ptr %l19, !tbaa !24
  %t206 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t208 = extractvalue { i64, ptr } %t206, 0
  %t211 = icmp slt i64 %t205, %t208
  br i1 %t211, label %bb67, label %bb68
bb67:
  %t213 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t213, ptr %l115, !tbaa !27
  %t214 = load i64, ptr %l19, !tbaa !24
  %t216 = getelementptr { i64, ptr }, ptr %l115, i32 0, i32 1
  %t217 = load ptr, ptr %t216, !tbaa !27
  %t218 = getelementptr i8, ptr %t217, i64 %t214
  %t219 = load i8, ptr %t218, !tbaa !32
  %t221 = icmp eq i8 %t219, 35
  br i1 %t221, label %bb69, label %bb70
bb68:
  store i1 false, ptr %l114, !tbaa !21
  br label %bb72
bb69:
  store i1 true, ptr %l119, !tbaa !21
  br label %bb71
bb70:
  %t223 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t223, ptr %l120, !tbaa !27
  %t224 = load i64, ptr %l19, !tbaa !24
  %t226 = getelementptr { i64, ptr }, ptr %l120, i32 0, i32 1
  %t227 = load ptr, ptr %t226, !tbaa !27
  %t228 = getelementptr i8, ptr %t227, i64 %t224
  %t229 = load i8, ptr %t228, !tbaa !32
  %t231 = icmp eq i8 %t229, 32
  store i1 %t231, ptr %l119, !tbaa !21
  br label %bb71
bb71:
  %t233 = load i1, ptr %l119, !tbaa !21
  store i1 %t233, ptr %l114, !tbaa !21
  br label %bb72
bb72:
  %t234 = load i1, ptr %l114, !tbaa !21
  %t235 = xor i1 %t234, true
  br i1 %t235, label %bb73, label %bb74
bb73:
  br label %bb77
bb74:
  br label %bb75
bb75:
  %t237 = load i64, ptr %l19, !tbaa !24
  %t239 = add i64 %t237, 1
  store i64 %t239, ptr %l19, !tbaa !24
  br label %bb76
bb76:
  br label %bb66
bb77:
  %t241 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t243 = extractvalue { i64, ptr } %t241, 0
  %t245 = icmp sgt i64 %t243, 0
  br i1 %t245, label %bb78, label %bb79
bb78:
  %t247 = load i64, ptr %l19, !tbaa !24
  %t248 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t250 = extractvalue { i64, ptr } %t248, 0
  %t253 = icmp slt i64 %t247, %t250
  br i1 %t253, label %bb80, label %bb81
bb79:
  br label %bb97
bb80:
  %t255 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t255, ptr %l135, !tbaa !27
  %t256 = load i64, ptr %l19, !tbaa !24
  %t258 = getelementptr { i64, ptr }, ptr %l135, i32 0, i32 1
  %t259 = load ptr, ptr %t258, !tbaa !27
  %t260 = getelementptr i8, ptr %t259, i64 %t256
  %t261 = load i8, ptr %t260, !tbaa !32
  %t263 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t261)
  store i1 %t263, ptr %l138
  br label %bb82
bb81:
  store i1 false, ptr %l134, !tbaa !21
  br label %bb83
bb82:
  %t264 = load i1, ptr %l138, !tbaa !21
  store i1 %t264, ptr %l134, !tbaa !21
  br label %bb83
bb83:
  %t265 = load i1, ptr %l134, !tbaa !21
  br i1 %t265, label %bb84, label %bb85
bb84:
  store %olang.scope zeroinitializer, ptr %s10
  store ptr %l9, ptr %l139, !tbaa !29
  %t266 = call { i64, ptr } @compiler_2fdiag_2esection(ptr %s10)
  store { i64, ptr } %t266, ptr %l140
  br label %bb86
bb85:
  br label %bb88
bb86:
  %t267 = load { i64, ptr }, ptr %l140, !tbaa !27
  %t268 = extractvalue { i64, ptr } %t267, 0
  %t269 = extractvalue { i64, ptr } %t267, 1
  %t270 = mul i64 %t268, 1
  %t271 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t270)
  call void @llvm.memcpy.p0.p0.i64(ptr %t271, ptr %t269, i64 %t270, i1 false)
  %t272 = insertvalue { i64, ptr } undef, i64 %t268, 0
  %t273 = insertvalue { i64, ptr } %t272, ptr %t271, 1
  %t274 = load ptr, ptr %l139, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s10, ptr %t274, { i64, ptr } %t273)
  br label %bb87
bb87:
  call void @__olang_scope_close(ptr %s10)
  br label %bb88
bb88:
  store ptr %l9, ptr %l142, !tbaa !29
  %t276 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t276, ptr %l143, !tbaa !27
  %t277 = load i64, ptr %l19, !tbaa !24
  store i64 %t277, ptr %l144, !tbaa !24
  %t278 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t281 = extractvalue { i64, ptr } %t278, 0
  store i64 %t281, ptr %l147, !tbaa !24
  %t282 = load { i64, ptr }, ptr %l143, !tbaa !27
  %t283 = extractvalue { i64, ptr } %t282, 0
  store i64 %t283, ptr %l148, !tbaa !24
  %t284 = load i64, ptr %l144, !tbaa !24
  %t285 = icmp sge i64 %t284, 0
  br i1 %t285, label %bb89, label %bb90
bb89:
  %t287 = load i64, ptr %l144, !tbaa !24
  %t288 = load i64, ptr %l147, !tbaa !24
  %t289 = icmp sle i64 %t287, %t288
  br i1 %t289, label %bb91, label %bb92
bb90:
  call void @__olang_check_failed(ptr @olang_loc_eb08610c80fa023c_21bad482e9cc9598)
  unreachable
bb91:
  %t291 = load i64, ptr %l147, !tbaa !24
  %t292 = load i64, ptr %l148, !tbaa !24
  %t293 = icmp sle i64 %t291, %t292
  br i1 %t293, label %bb93, label %bb94
bb92:
  call void @__olang_check_failed(ptr @olang_loc_eb08610c80fa023c_21bad482e9cc9598)
  unreachable
bb93:
  %t295 = getelementptr { i64, ptr }, ptr %l143, i32 0, i32 1
  %t296 = load ptr, ptr %t295, !tbaa !27
  %t297 = load i64, ptr %l144, !tbaa !24
  %t298 = load i64, ptr %l147, !tbaa !24
  %t299 = getelementptr i8, ptr %t296, i64 %t297
  %t300 = sub i64 %t298, %t297
  %t301 = insertvalue { i64, ptr } undef, i64 %t300, 0
  %t302 = insertvalue { i64, ptr } %t301, ptr %t299, 1
  %t303 = load ptr, ptr %l142, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v0, ptr %t303, { i64, ptr } %t302)
  br label %bb95
bb94:
  call void @__olang_check_failed(ptr @olang_loc_eb08610c80fa023c_21bad482e9cc9598)
  unreachable
bb95:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l9, i8 10)
  br label %bb96
bb96:
  br label %bb97
bb97:
  br label %bb98
bb98:
  %t306 = load i1, ptr %l11, !tbaa !21
  %t308 = xor i1 %t306, true
  br i1 %t308, label %bb99, label %bb100
bb99:
  call void @__olang_scope_close(ptr %s4)
  br label %bb114
bb100:
  br label %bb101
bb101:
  %t310 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t312 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s4, { i64, ptr } %t310, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) })
  store i1 %t312, ptr %l157
  br label %bb102
bb102:
  %t313 = load i1, ptr %l157, !tbaa !21
  br i1 %t313, label %bb103, label %bb104
bb103:
  %t314 = load i64, ptr %l13, !tbaa !24
  %t316 = add i64 %t314, 1
  store i64 %t316, ptr %l13, !tbaa !24
  call void @__olang_scope_close(ptr %s4)
  br label %bb114
bb104:
  br label %bb105
bb105:
  br label %bb106
bb106:
  %t318 = load i64, ptr %l13, !tbaa !24
  %t320 = icmp sgt i64 %t318, 0
  %t322 = xor i1 %t320, true
  br i1 %t322, label %bb107, label %bb108
bb107:
  br label %bb112
bb108:
  br label %bb109
bb109:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l9, i8 10)
  br label %bb110
bb110:
  %t325 = load i64, ptr %l13, !tbaa !24
  %t327 = sub i64 %t325, 1
  store i64 %t327, ptr %l13, !tbaa !24
  br label %bb111
bb111:
  br label %bb106
bb112:
  %t329 = load { i64, ptr }, ptr %l16, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v0, ptr %l9, { i64, ptr } %t329)
  br label %bb113
bb113:
  call void @__olang_scope_close(ptr %s4)
  br label %bb114
bb114:
  br label %bb27
bb115:
  %t332 = load i1, ptr %l12, !tbaa !21
  %t334 = xor i1 %t332, true
  br i1 %t334, label %bb116, label %bb117
bb116:
  call void @__olang_scope_close(ptr %s0)
  %t337 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t337, ptr %rv
  br label %ret
bb117:
  br label %bb118
bb118:
  %t339 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v2, ptr %l9)
  store { i64, ptr } %t339, ptr %l172
  br label %bb119
bb119:
  call void @__olang_scope_close(ptr %s0)
  %t340 = load { i64, ptr }, ptr %l172, !tbaa !27
  %t341 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t340, 1
  store { i32, { i64, ptr } } %t341, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local %"compiler/diag:Item" @compiler_2fdiag_2eItem_2eitem(ptr %v0, ptr %v1, ptr %v2, i1 %a0, { i64, ptr } %a1, { i64, [3 x i64] } %a2, { i64, ptr } %a3, i1 %a4) #0 {
entry:
  %l0 = alloca i1
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, [3 x i64] }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i1
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca %"compiler/diag:Item"
  %l24 = alloca %"compiler/diag:Item"
  %l35 = alloca %"compiler/diag:Item"
  %l44 = alloca %"compiler/diag:Item"
  %l51 = alloca %"compiler/diag:Item"
  %rv = alloca %"compiler/diag:Item"
  store i1 %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store { i64, [3 x i64] } %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  store i1 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [3 x i64] }, ptr %l2
  %t3 = extractvalue { i64, [3 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 3
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [3 x i64] }, ptr %l2, i32 0, i32 1
  %t7 = getelementptr { i64, i64, i64 }, ptr %t6, i32 0, i32 0
  %t8 = load i64, ptr %t7
  store i64 %t8, ptr %l5, !tbaa !24
  %t10 = getelementptr { i64, [3 x i64] }, ptr %l2, i32 0, i32 1
  %t11 = getelementptr { i64, i64, i64 }, ptr %t10, i32 0, i32 1
  %t12 = load i64, ptr %t11
  store i64 %t12, ptr %l6, !tbaa !24
  %t14 = getelementptr { i64, [3 x i64] }, ptr %l2, i32 0, i32 1
  %t15 = getelementptr { i64, i64, i64 }, ptr %t14, i32 0, i32 2
  %t16 = load i64, ptr %t15
  store i64 %t16, ptr %l7, !tbaa !24
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t18 = load i1, ptr %l0, !tbaa !21
  %t19 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t20 = load i64, ptr %l5, !tbaa !24
  %t21 = load i64, ptr %l6, !tbaa !24
  %t22 = load i64, ptr %l7, !tbaa !24
  %t23 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t24 = load i1, ptr %l4, !tbaa !21
  %t32 = call %"compiler/diag:Item" @compiler_2fdiag_3aItem_2ector(ptr %v0, ptr %v1, ptr %v2, i1 %t18, { i64, ptr } %t19, i64 %t20, i64 %t21, i64 %t22, i64 0, { i64, ptr } %t23, i1 %t24)
  store %"compiler/diag:Item" %t32, ptr %l24
  br label %bb4
bb4:
  %t33 = load %"compiler/diag:Item", ptr %l24
  store %"compiler/diag:Item" %t33, ptr %l11
  br label %bb21
bb5:
  %t34 = load { i64, [3 x i64] }, ptr %l2
  %t36 = extractvalue { i64, [3 x i64] } %t34, 0
  %t37 = icmp eq i64 %t36, 2
  br i1 %t37, label %bb6, label %bb7
bb6:
  %t39 = getelementptr { i64, [3 x i64] }, ptr %l2, i32 0, i32 1
  %t40 = getelementptr { i64, i64 }, ptr %t39, i32 0, i32 0
  %t41 = load i64, ptr %t40
  store i64 %t41, ptr %l8, !tbaa !24
  %t43 = getelementptr { i64, [3 x i64] }, ptr %l2, i32 0, i32 1
  %t44 = getelementptr { i64, i64 }, ptr %t43, i32 0, i32 1
  %t45 = load i64, ptr %t44
  store i64 %t45, ptr %l9, !tbaa !24
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t47 = load i1, ptr %l0, !tbaa !21
  %t48 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t49 = load i64, ptr %l8, !tbaa !24
  %t50 = load i64, ptr %l9, !tbaa !24
  %t51 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t52 = load i1, ptr %l4, !tbaa !21
  %t59 = call %"compiler/diag:Item" @compiler_2fdiag_3aItem_2ector(ptr %v0, ptr %v1, ptr %v2, i1 %t47, { i64, ptr } %t48, i64 %t49, i64 -1, i64 -1, i64 %t50, { i64, ptr } %t51, i1 %t52)
  store %"compiler/diag:Item" %t59, ptr %l35
  br label %bb9
bb9:
  %t60 = load %"compiler/diag:Item", ptr %l35
  store %"compiler/diag:Item" %t60, ptr %l11
  br label %bb21
bb10:
  %t61 = load { i64, [3 x i64] }, ptr %l2
  %t63 = extractvalue { i64, [3 x i64] } %t61, 0
  %t64 = icmp eq i64 %t63, 1
  br i1 %t64, label %bb11, label %bb12
bb11:
  %t66 = getelementptr { i64, [3 x i64] }, ptr %l2, i32 0, i32 1
  %t67 = getelementptr { i64 }, ptr %t66, i32 0, i32 0
  %t68 = load i64, ptr %t67
  store i64 %t68, ptr %l10, !tbaa !24
  br label %bb13
bb12:
  br label %bb15
bb13:
  %t70 = load i1, ptr %l0, !tbaa !21
  %t71 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t72 = load i64, ptr %l10, !tbaa !24
  %t73 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t74 = load i1, ptr %l4, !tbaa !21
  %t80 = call %"compiler/diag:Item" @compiler_2fdiag_3aItem_2ector(ptr %v0, ptr %v1, ptr %v2, i1 %t70, { i64, ptr } %t71, i64 %t72, i64 -1, i64 -1, i64 0, { i64, ptr } %t73, i1 %t74)
  store %"compiler/diag:Item" %t80, ptr %l44
  br label %bb14
bb14:
  %t81 = load %"compiler/diag:Item", ptr %l44
  store %"compiler/diag:Item" %t81, ptr %l11
  br label %bb21
bb15:
  %t82 = load { i64, [3 x i64] }, ptr %l2
  %t84 = extractvalue { i64, [3 x i64] } %t82, 0
  %t85 = icmp eq i64 %t84, 0
  br i1 %t85, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t87 = load i1, ptr %l0, !tbaa !21
  %t88 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t89 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t90 = load i1, ptr %l4, !tbaa !21
  %t95 = call %"compiler/diag:Item" @compiler_2fdiag_3aItem_2ector(ptr %v0, ptr %v1, ptr %v2, i1 %t87, { i64, ptr } %t88, i64 -1, i64 -1, i64 -1, i64 0, { i64, ptr } %t89, i1 %t90)
  store %"compiler/diag:Item" %t95, ptr %l51
  br label %bb19
bb19:
  %t96 = load %"compiler/diag:Item", ptr %l51
  store %"compiler/diag:Item" %t96, ptr %l11
  br label %bb21
bb20:
  call void @__olang_check_failed(ptr @olang_loc_85c0e204c21dcc64_81dac71c6a103c0)
  unreachable
bb21:
  %t97 = load %"compiler/diag:Item", ptr %l11
  store %"compiler/diag:Item" %t97, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diag:Item", ptr %rv
  ret %"compiler/diag:Item" %rr
}

define dso_local { i64, ptr } @compiler_2fdiag_2eSpecPath(ptr %v0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i32
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i32
  %l12 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call { i32, { i64, ptr } } @std_2fos_2eReadLink(ptr %s0, ptr %s0, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d2, i32 0, i32 1) })
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
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d3, i32 0, i32 1) }, ptr %l7, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t12 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t12, ptr %rv
  br label %ret
bb6:
  %t13 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t13, ptr %l0, !tbaa !27
  %t14 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t16 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %s0, ptr %s0, { i64, ptr } %t14, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) })
  %t17 = extractvalue { i32, i64 } %t16, 1
  %t18 = extractvalue { i32, i64 } %t16, 0
  store i32 %t18, ptr %l11
  %t19 = icmp ne i32 %t18, 0
  br i1 %t19, label %bb8, label %ok.20, !prof !99
ok.20:
  store i64 %t17, ptr %l10
  br label %bb7
bb7:
  %t21 = load i64, ptr %l10, !tbaa !24
  store i64 %t21, ptr %l8, !tbaa !24
  br label %bb10
bb8:
  br label %bb9
bb9:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d5, i32 0, i32 1) }, ptr %l12, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t22 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t22, ptr %rv
  br label %ret
bb10:
  %t23 = load i64, ptr %l8, !tbaa !24
  %t24 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t24, ptr %l13, !tbaa !27
  store i64 %t23, ptr %l14, !tbaa !24
  %t26 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t27 = extractvalue { i64, ptr } %t26, 0
  store i64 %t27, ptr %l15, !tbaa !24
  %t28 = icmp sge i64 0, 0
  br i1 %t28, label %bb11, label %bb12
bb11:
  %t30 = load i64, ptr %l14, !tbaa !24
  %t31 = icmp sle i64 0, %t30
  br i1 %t31, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_df2cfc0fcf8e1b0d_c8c5f24983f674c1)
  unreachable
bb13:
  %t33 = load i64, ptr %l14, !tbaa !24
  %t34 = load i64, ptr %l15, !tbaa !24
  %t35 = icmp sle i64 %t33, %t34
  br i1 %t35, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_df2cfc0fcf8e1b0d_c8c5f24983f674c1)
  unreachable
bb15:
  %t37 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = load i64, ptr %l14, !tbaa !24
  %t40 = getelementptr i8, ptr %t38, i64 0
  %t41 = sub i64 %t39, 0
  %t42 = insertvalue { i64, ptr } undef, i64 %t41, 0
  %t43 = insertvalue { i64, ptr } %t42, ptr %t40, 1
  %t45 = extractvalue { i64, ptr } %t43, 1
  %t46 = extractvalue { i64, ptr } %t43, 0
  %t47 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t48 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t49 = add i64 %t46, %t48
  %t50 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t49)
  call void @olang_textcopy(ptr %t50, ptr %t45, i64 %t46)
  %t51 = getelementptr i8, ptr %t50, i64 %t46
  call void @olang_textcopy(ptr %t51, ptr %t47, i64 %t48)
  %t52 = insertvalue { i64, ptr } undef, i64 %t49, 0
  %t53 = insertvalue { i64, ptr } %t52, ptr %t50, 1
  %t55 = extractvalue { i64, ptr } %t53, 0
  %t56 = extractvalue { i64, ptr } %t53, 1
  %t57 = mul i64 %t55, 1
  %t58 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t57)
  call void @llvm.memcpy.p0.p0.i64(ptr %t58, ptr %t56, i64 %t57, i1 false)
  %t59 = insertvalue { i64, ptr } undef, i64 %t55, 0
  %t60 = insertvalue { i64, ptr } %t59, ptr %t58, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t60, ptr %rv
  br label %ret
bb16:
  call void @__olang_check_failed(ptr @olang_loc_df2cfc0fcf8e1b0d_c8c5f24983f674c1)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fdiag_2eUntidy(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca i1
  %l3 = alloca i1
  %l5 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d7, i32 0, i32 1) })
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
  %t7 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t5, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d8, i32 0, i32 1) })
  store i1 %t7, ptr %l5
  br label %bb4
bb4:
  %t8 = load i1, ptr %l5, !tbaa !21
  store i1 %t8, ptr %l3, !tbaa !21
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  %t9 = load i1, ptr %l3, !tbaa !21
  store i1 %t9, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eAddFile(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l21 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/diag:Diagnostics", ptr %t1, i32 0, i32 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %t3, { i64, ptr } %a1)
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/diag:Diagnostics", ptr %t7, i32 0, i32 2
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v2, ptr %t9, { i64, ptr } %a2)
  br label %bb2
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/diag:Diagnostics", ptr %t13, i32 0, i32 3
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t15, i1 %a3)
  br label %bb3
bb3:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/diag:Diagnostics", ptr %t19, i32 0, i32 5
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t21, i64 -1)
  br label %bb4
bb4:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/diag:Diagnostics", ptr %t23, i32 0, i32 6
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t25, i64 0)
  br label %bb5
bb5:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/diag:Diagnostics", ptr %t27, i32 0, i32 27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t29, i64 -1)
  br label %bb6
bb6:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/diag:Diagnostics", ptr %t31, i32 0, i32 1
  %t35 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t33)
  store i64 %t35, ptr %l21
  br label %bb7
bb7:
  %t36 = load i64, ptr %l21, !tbaa !24
  %t37 = sub i64 %t36, 1
  store i64 %t37, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eAllSaid(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %lp6 = alloca ptr
  %l7 = alloca { i64, [3 x i64] }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l28 = alloca %"compiler/diag:record"
  %l34 = alloca ptr
  %l39 = alloca %"compiler/diag:Said"
  %l43 = alloca ptr
  %l47 = alloca %"compiler/diag:Said"
  %l51 = alloca ptr
  %l55 = alloca %"compiler/diag:Said"
  %l56 = alloca ptr
  %l59 = alloca %"compiler/diag:Said"
  %s1 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aSaid_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l12
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l1
  store %olang.scope zeroinitializer, ptr %s1
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2ewritten(ptr %v0, ptr %s1, ptr %t3)
  store { i64, ptr } %t5, ptr %l14
  br label %bb2
bb2:
  %t6 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t6, 0
  %t8 = extractvalue { i64, ptr } %t6, 1
  %t9 = mul i64 %t7, 8
  %t10 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t9)
  call void @llvm.memcpy.p0.p0.i64(ptr %t10, ptr %t8, i64 %t9, i1 false)
  %t11 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t12 = insertvalue { i64, ptr } %t11, ptr %t10, 1
  store { i64, ptr } %t12, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t14 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t14, 0
  store i64 %t16, ptr %l4, !tbaa !24
  br label %bb3
bb3:
  %t18 = load i64, ptr %l3, !tbaa !24
  %t19 = load i64, ptr %l4, !tbaa !24
  %t22 = icmp slt i64 %t18, %t19
  %t24 = xor i1 %t22, true
  br i1 %t24, label %bb4, label %bb5
bb4:
  br label %bb34
bb5:
  br label %bb6
bb6:
  %t26 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t26, ptr %l22, !tbaa !27
  %t27 = load i64, ptr %l3, !tbaa !24
  %t29 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = getelementptr i64, ptr %t30, i64 %t27
  %t32 = load i64, ptr %t31, !tbaa !34
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/diag:Diagnostics", ptr %t34, i32 0, i32 7
  %t40 = call %"compiler/diag:record" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2eAt_3ccompiler_2fdiag_3arecord_3e(ptr %v0, ptr %v1, ptr %t36, i64 %t32)
  store %"compiler/diag:record" %t40, ptr %l28
  br label %bb7
bb7:
  %t41 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 88, i64 8)
  store ptr %t41, ptr %lp6
  %t42 = load %"compiler/diag:record", ptr %l28
  %t43 = load ptr, ptr %lp6
  store %"compiler/diag:record" %t42, ptr %t43
  %t44 = load ptr, ptr %lp6
  %t45 = getelementptr %"compiler/diag:record", ptr %t44, i32 0, i32 0
  %t46 = load { i64, [3 x i64] }, ptr %t45
  store { i64, [3 x i64] } %t46, ptr %l7
  %t48 = load { i64, [3 x i64] }, ptr %l7
  %t50 = extractvalue { i64, [3 x i64] } %t48, 0
  %t51 = icmp eq i64 %t50, 3
  br i1 %t51, label %bb8, label %bb9
bb8:
  %t53 = getelementptr { i64, [3 x i64] }, ptr %l7, i32 0, i32 1
  %t54 = getelementptr { i64, i64, i64 }, ptr %t53, i32 0, i32 0
  %t55 = load i64, ptr %t54
  store i64 %t55, ptr %l8, !tbaa !24
  %t57 = getelementptr { i64, [3 x i64] }, ptr %l7, i32 0, i32 1
  %t58 = getelementptr { i64, i64, i64 }, ptr %t57, i32 0, i32 1
  %t59 = load i64, ptr %t58
  store i64 %t59, ptr %l9, !tbaa !24
  br label %bb10
bb9:
  br label %bb13
bb10:
  store ptr %l1, ptr %l34, !tbaa !29
  %t61 = load ptr, ptr %lp6
  %t62 = getelementptr %"compiler/diag:record", ptr %t61, i32 0, i32 1
  %t63 = load { i64, ptr }, ptr %t62, !tbaa !27
  %t64 = load i64, ptr %l8, !tbaa !24
  %t65 = load i64, ptr %l9, !tbaa !24
  %t66 = load ptr, ptr %lp6
  %t67 = getelementptr %"compiler/diag:record", ptr %t66, i32 0, i32 2
  %t68 = load { i64, ptr }, ptr %t67, !tbaa !27
  %t73 = call %"compiler/diag:Said" @compiler_2fdiag_3aSaid_2ector(ptr %v1, ptr %v1, ptr %v1, { i64, ptr } %t63, i64 %t64, i64 %t65, { i64, ptr } %t68)
  store %"compiler/diag:Said" %t73, ptr %l39
  br label %bb11
bb11:
  %t74 = load ptr, ptr %l34, !tbaa !29
  %t75 = load %"compiler/diag:Said", ptr %l39
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aSaid_3e_2ePush_3ccompiler_2fdiag_3aSaid_3e(ptr %v1, ptr %v1, ptr %t74, %"compiler/diag:Said" %t75)
  br label %bb12
bb12:
  br label %bb32
bb13:
  %t76 = load { i64, [3 x i64] }, ptr %l7
  %t78 = extractvalue { i64, [3 x i64] } %t76, 0
  %t79 = icmp eq i64 %t78, 2
  br i1 %t79, label %bb14, label %bb15
bb14:
  %t81 = getelementptr { i64, [3 x i64] }, ptr %l7, i32 0, i32 1
  %t82 = getelementptr { i64, i64 }, ptr %t81, i32 0, i32 0
  %t83 = load i64, ptr %t82
  store i64 %t83, ptr %l10, !tbaa !24
  br label %bb16
bb15:
  br label %bb19
bb16:
  store ptr %l1, ptr %l43, !tbaa !29
  %t85 = load ptr, ptr %lp6
  %t86 = getelementptr %"compiler/diag:record", ptr %t85, i32 0, i32 1
  %t87 = load { i64, ptr }, ptr %t86, !tbaa !27
  %t88 = load i64, ptr %l10, !tbaa !24
  %t89 = load ptr, ptr %lp6
  %t90 = getelementptr %"compiler/diag:record", ptr %t89, i32 0, i32 2
  %t91 = load { i64, ptr }, ptr %t90, !tbaa !27
  %t95 = call %"compiler/diag:Said" @compiler_2fdiag_3aSaid_2ector(ptr %v1, ptr %v1, ptr %v1, { i64, ptr } %t87, i64 %t88, i64 -1, { i64, ptr } %t91)
  store %"compiler/diag:Said" %t95, ptr %l47
  br label %bb17
bb17:
  %t96 = load ptr, ptr %l43, !tbaa !29
  %t97 = load %"compiler/diag:Said", ptr %l47
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aSaid_3e_2ePush_3ccompiler_2fdiag_3aSaid_3e(ptr %v1, ptr %v1, ptr %t96, %"compiler/diag:Said" %t97)
  br label %bb18
bb18:
  br label %bb32
bb19:
  %t98 = load { i64, [3 x i64] }, ptr %l7
  %t100 = extractvalue { i64, [3 x i64] } %t98, 0
  %t101 = icmp eq i64 %t100, 1
  br i1 %t101, label %bb20, label %bb21
bb20:
  %t103 = getelementptr { i64, [3 x i64] }, ptr %l7, i32 0, i32 1
  %t104 = getelementptr { i64 }, ptr %t103, i32 0, i32 0
  %t105 = load i64, ptr %t104
  store i64 %t105, ptr %l11, !tbaa !24
  br label %bb22
bb21:
  br label %bb25
bb22:
  store ptr %l1, ptr %l51, !tbaa !29
  %t107 = load ptr, ptr %lp6
  %t108 = getelementptr %"compiler/diag:record", ptr %t107, i32 0, i32 1
  %t109 = load { i64, ptr }, ptr %t108, !tbaa !27
  %t110 = load i64, ptr %l11, !tbaa !24
  %t111 = load ptr, ptr %lp6
  %t112 = getelementptr %"compiler/diag:record", ptr %t111, i32 0, i32 2
  %t113 = load { i64, ptr }, ptr %t112, !tbaa !27
  %t117 = call %"compiler/diag:Said" @compiler_2fdiag_3aSaid_2ector(ptr %v1, ptr %v1, ptr %v1, { i64, ptr } %t109, i64 %t110, i64 -1, { i64, ptr } %t113)
  store %"compiler/diag:Said" %t117, ptr %l55
  br label %bb23
bb23:
  %t118 = load ptr, ptr %l51, !tbaa !29
  %t119 = load %"compiler/diag:Said", ptr %l55
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aSaid_3e_2ePush_3ccompiler_2fdiag_3aSaid_3e(ptr %v1, ptr %v1, ptr %t118, %"compiler/diag:Said" %t119)
  br label %bb24
bb24:
  br label %bb32
bb25:
  br i1 true, label %bb26, label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb31
bb28:
  store ptr %l1, ptr %l56, !tbaa !29
  %t120 = load ptr, ptr %lp6
  %t121 = getelementptr %"compiler/diag:record", ptr %t120, i32 0, i32 1
  %t122 = load { i64, ptr }, ptr %t121, !tbaa !27
  %t123 = load ptr, ptr %lp6
  %t124 = getelementptr %"compiler/diag:record", ptr %t123, i32 0, i32 2
  %t125 = load { i64, ptr }, ptr %t124, !tbaa !27
  %t128 = call %"compiler/diag:Said" @compiler_2fdiag_3aSaid_2ector(ptr %v1, ptr %v1, ptr %v1, { i64, ptr } %t122, i64 -1, i64 -1, { i64, ptr } %t125)
  store %"compiler/diag:Said" %t128, ptr %l59
  br label %bb29
bb29:
  %t129 = load ptr, ptr %l56, !tbaa !29
  %t130 = load %"compiler/diag:Said", ptr %l59
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aSaid_3e_2ePush_3ccompiler_2fdiag_3aSaid_3e(ptr %v1, ptr %v1, ptr %t129, %"compiler/diag:Said" %t130)
  br label %bb30
bb30:
  br label %bb32
bb31:
  call void @__olang_check_failed(ptr @olang_loc_a84e229f70f1f256_25addd6a15e39b7a)
  unreachable
bb32:
  br label %bb33
bb33:
  %t131 = load i64, ptr %l3, !tbaa !24
  %t133 = add i64 %t131, 1
  store i64 %t133, ptr %l3, !tbaa !24
  br label %bb3
bb34:
  call void @__olang_scope_close(ptr %s1)
  %t135 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t135, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eChoose(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/diag:Diagnostics", ptr %a0, i32 0, i32 10
  %t5 = load i64, ptr @G_2ecompiler_2fdiag_2eChosen, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t3, i64 %a1, i64 %t5)
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eChooseAll(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l9 = alloca i64
  %l13 = alloca i64
  %l16 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l1, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/diag:Diagnostics", ptr %t1, i32 0, i32 10
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l9
  br label %bb1
bb1:
  %t6 = load i64, ptr %l9, !tbaa !24
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
  store i64 0, ptr %l13, !tbaa !24
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
  store i64 %t31, ptr %l16, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l16, !tbaa !24
  br label %bb6
bb6:
  %t33 = load i64, ptr %l16, !tbaa !24
  store i64 %t33, ptr %l13, !tbaa !24
  br label %bb7
bb7:
  %t34 = load i64, ptr %l13, !tbaa !24
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
  br label %bb14
bb10:
  br label %bb11
bb11:
  %t43 = load i64, ptr %l1, !tbaa !24
  %t44 = load i64, ptr %l5, !tbaa !24
  %t45 = load i64, ptr %l3, !tbaa !24
  %t48 = mul i64 %t44, %t45
  %t51 = add i64 %t43, %t48
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/diag:Diagnostics", ptr %t53, i32 0, i32 10
  %t57 = load i64, ptr @G_2ecompiler_2fdiag_2eChosen, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t55, i64 %t51, i64 %t57)
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t61 = load i64, ptr %l5, !tbaa !24
  %t63 = add i64 %t61, 1
  store i64 %t63, ptr %l5, !tbaa !24
  br label %bb8
bb14:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eColumnAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca { i64, i64 }
  %l7 = alloca i1
  %l8 = alloca i64
  %l11 = alloca i64
  %l17 = alloca { i64, i64 }
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb4
bb2:
  %t5 = load i64, ptr %l1, !tbaa !24
  store i64 %t5, ptr %l8, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/diag:Diagnostics", ptr %t6, i32 0, i32 1
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l11
  br label %bb3
bb3:
  %t11 = load i64, ptr %l8, !tbaa !24
  %t12 = load i64, ptr %l11, !tbaa !24
  %t13 = icmp sge i64 %t11, %t12
  store i1 %t13, ptr %l7, !tbaa !21
  br label %bb4
bb4:
  %t15 = load i1, ptr %l7, !tbaa !21
  br i1 %t15, label %bb5, label %bb6
bb5:
  store i64 0, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load i64, ptr %l1, !tbaa !24
  %t19 = load i64, ptr %l2, !tbaa !24
  %t23 = call { i64, i64 } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2elineOf(ptr %v0, ptr %t17, i64 %t18, i64 %t19)
  store { i64, i64 } %t23, ptr %l17
  br label %bb8
bb8:
  %t24 = load { i64, i64 }, ptr %l17
  store { i64, i64 } %t24, ptr %l3
  %t25 = getelementptr { i64, i64 }, ptr %l3, i32 0, i32 1
  %t26 = load i64, ptr %t25, !tbaa !24
  %t28 = load i64, ptr %l2, !tbaa !24
  %t32 = sub i64 %t28, %t26
  %t34 = add i64 %t32, 1
  store i64 %t34, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eContextBase(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/diag:Diagnostics", ptr %t1, i32 0, i32 13
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/diag:Diagnostics", ptr %t6, i32 0, i32 13
  store i64 %a1, ptr %t10, !tbaa !24
  store i64 %t4, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eContextDepth(ptr %v0, ptr %a0) #0 {
entry:
  %l3 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/diag:Diagnostics", ptr %a0, i32 0, i32 12
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3acontext_3e_2eLen_3ccompiler_2fdiag_3acontext_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load i64, ptr %l3, !tbaa !24
  store i64 %t6, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCount(ptr %v0, ptr %a0) #0 {
entry:
  %l3 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/diag:Diagnostics", ptr %a0, i32 0, i32 7
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2eLen_3ccompiler_2fdiag_3arecord_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load i64, ptr %l3, !tbaa !24
  store i64 %t6, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCutOff(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/diag:Diagnostics", ptr %a0, i32 0, i32 10
  %t5 = load i64, ptr @G_2ecompiler_2fdiag_2eCut, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t3, i64 %a1, i64 %t5)
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eDrop(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/diag:Diagnostics", ptr %a0, i32 0, i32 10
  %t5 = load i64, ptr @G_2ecompiler_2fdiag_2eDropped, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t3, i64 %a1, i64 %t5)
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eEndHold(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/diag:Diagnostics", ptr %a0, i32 0, i32 11
  %t5 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %t3)
  %t6 = extractvalue { i32, i64 } %t5, 1
  %t7 = extractvalue { i32, i64 } %t5, 0
  store i32 %t7, ptr %l5
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb2, label %ok.9, !prof !99
ok.9:
  store i64 %t6, ptr %l4
  br label %bb1
bb1:
  %t10 = load i64, ptr %l4, !tbaa !24
  store i64 %t10, ptr %l1, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  br label %bb4
bb4:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2) #0 {
entry:
  %l6 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t7 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2ereport(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2, i1 false)
  store i64 %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = load i64, ptr %l6, !tbaa !24
  store i64 %t8, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorAlone(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l7 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t7 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %t1, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
  store i64 %t7, ptr %l7
  br label %bb1
bb1:
  %t8 = load i64, ptr %l7, !tbaa !24
  store i64 %t8, ptr %l3, !tbaa !24
  %t9 = load i64, ptr %l3, !tbaa !24
  %t11 = icmp sge i64 %t9, 0
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/diag:Diagnostics", ptr %t13, i32 0, i32 17
  %t16 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t15, i64 %t16)
  br label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb5
bb5:
  %t19 = load i64, ptr %l3, !tbaa !24
  store i64 %t19, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorBare(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [3 x i64] }
  %l2 = alloca %"compiler/diagmsg:Msg"
  %l9 = alloca i64
  %l11 = alloca i64
  %l13 = alloca ptr
  %l16 = alloca i64
  %l18 = alloca i64
  %l20 = alloca ptr
  %l26 = alloca %"compiler/diag:record"
  %l27 = alloca ptr
  %l30 = alloca i64
  %l36 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store { i64, [3 x i64] } %a1, ptr %l1
  store %"compiler/diagmsg:Msg" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/diag:Diagnostics", ptr %t1, i32 0, i32 24
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i64 -1, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/diag:Diagnostics", ptr %t7, i32 0, i32 11
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t9)
  store i64 %t11, ptr %l9
  br label %bb4
bb4:
  %t12 = load i64, ptr %l9, !tbaa !24
  %t13 = icmp eq i64 %t12, 0
  br i1 %t13, label %bb5, label %bb6
bb5:
  store i64 -1, ptr %l11, !tbaa !24
  br label %bb9
bb6:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/diag:Diagnostics", ptr %t15, i32 0, i32 11
  store ptr %t17, ptr %l13, !tbaa !29
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/diag:Diagnostics", ptr %t18, i32 0, i32 11
  %t22 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t20)
  store i64 %t22, ptr %l16
  br label %bb7
bb7:
  %t23 = load i64, ptr %l16, !tbaa !24
  %t24 = sub i64 %t23, 1
  %t25 = load ptr, ptr %l13, !tbaa !29
  %t27 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t25, i64 %t24)
  store i64 %t27, ptr %l18
  br label %bb8
bb8:
  %t28 = load i64, ptr %l18, !tbaa !24
  store i64 %t28, ptr %l11, !tbaa !24
  br label %bb9
bb9:
  %t29 = load i64, ptr %l11, !tbaa !24
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/diag:Diagnostics", ptr %t30, i32 0, i32 7
  store ptr %t32, ptr %l20, !tbaa !29
  %t33 = load { i64, [3 x i64] }, ptr %l1
  %t34 = getelementptr %"compiler/diagmsg:Msg", ptr %l2, i32 0, i32 1
  %t35 = load { i64, ptr }, ptr %t34, !tbaa !27
  %t36 = getelementptr %"compiler/diagmsg:Msg", ptr %l2, i32 0, i32 2
  %t37 = load { i64, ptr }, ptr %t36, !tbaa !27
  %t38 = getelementptr %"compiler/diagmsg:Msg", ptr %l2, i32 0, i32 0
  %t39 = load i32, ptr %t38, !range !{i32 0, i32 906}
  %t46 = call %"compiler/diag:record" @compiler_2fdiag_3arecord_2ector(ptr %v1, ptr %v1, ptr %v0, { i64, [3 x i64] } %t33, { i64, ptr } %t35, { i64, ptr } %t37, i32 %t39, i64 %t29, i1 false)
  store %"compiler/diag:record" %t46, ptr %l26
  br label %bb10
bb10:
  %t47 = load ptr, ptr %l20, !tbaa !29
  %t48 = load %"compiler/diag:record", ptr %l26
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2ePush_3ccompiler_2fdiag_3arecord_3e(ptr %v0, ptr %v0, ptr %t47, %"compiler/diag:record" %t48)
  br label %bb11
bb11:
  %t49 = load ptr, ptr %l0, !tbaa !29
  store ptr %t49, ptr %l27, !tbaa !29
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/diag:Diagnostics", ptr %t50, i32 0, i32 7
  %t54 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2eLen_3ccompiler_2fdiag_3arecord_3e(ptr %v0, ptr %t52)
  store i64 %t54, ptr %l30
  br label %bb12
bb12:
  %t55 = load i64, ptr %l30, !tbaa !24
  %t56 = sub i64 %t55, 1
  %t57 = load { i64, [3 x i64] }, ptr %l1
  %t58 = load %"compiler/diagmsg:Msg", ptr %l2
  %t59 = load ptr, ptr %l27, !tbaa !29
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2epushOwn(ptr %v0, ptr %v1, ptr %t59, i64 %t56, { i64, [3 x i64] } %t57, %"compiler/diagmsg:Msg" %t58)
  br label %bb13
bb13:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/diag:Diagnostics", ptr %t63, i32 0, i32 7
  %t67 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2eLen_3ccompiler_2fdiag_3arecord_3e(ptr %v0, ptr %t65)
  store i64 %t67, ptr %l36
  br label %bb14
bb14:
  %t68 = load i64, ptr %l36, !tbaa !24
  %t69 = sub i64 %t68, 1
  store i64 %t69, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorBefore(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l12 = alloca i64
  %l15 = alloca i64
  %l33 = alloca i64
  %l36 = alloca i64
  %l38 = alloca ptr
  %l42 = alloca %"compiler/diag:record"
  %l44 = alloca i1
  %s2 = alloca %olang.scope
  %rv = alloca i1
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
  store i64 0, ptr %l12, !tbaa !24
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
  store i64 %t27, ptr %l15, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l15, !tbaa !24
  br label %bb5
bb5:
  %t29 = load i64, ptr %l15, !tbaa !24
  store i64 %t29, ptr %l12, !tbaa !24
  br label %bb6
bb6:
  %t30 = load i64, ptr %l12, !tbaa !24
  store i64 %t30, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb7
bb7:
  store %olang.scope zeroinitializer, ptr %s2
  %t31 = load i64, ptr %l6, !tbaa !24
  %t32 = load i64, ptr %l5, !tbaa !24
  %t35 = icmp slt i64 %t31, %t32
  %t37 = xor i1 %t35, true
  br i1 %t37, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s2)
  br label %bb21
bb9:
  br label %bb10
bb10:
  %t39 = load i64, ptr %l2, !tbaa !24
  %t40 = load i64, ptr %l6, !tbaa !24
  %t41 = load i64, ptr %l4, !tbaa !24
  %t44 = mul i64 %t40, %t41
  %t47 = add i64 %t39, %t44
  store i64 %t47, ptr %l7, !tbaa !24
  %t49 = load i64, ptr %l7, !tbaa !24
  store i64 %t49, ptr %l33, !tbaa !24
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/diag:Diagnostics", ptr %t50, i32 0, i32 7
  %t54 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2eLen_3ccompiler_2fdiag_3arecord_3e(ptr %v0, ptr %t52)
  store i64 %t54, ptr %l36
  br label %bb11
bb11:
  %t55 = load i64, ptr %l33, !tbaa !24
  %t56 = load i64, ptr %l36, !tbaa !24
  %t57 = icmp sge i64 %t55, %t56
  br i1 %t57, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s2)
  br label %bb21
bb13:
  br label %bb14
bb14:
  %t59 = load ptr, ptr %l0, !tbaa !29
  store ptr %t59, ptr %l38, !tbaa !29
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/diag:Diagnostics", ptr %t60, i32 0, i32 7
  %t63 = load i64, ptr %l7, !tbaa !24
  %t66 = call %"compiler/diag:record" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2eAt_3ccompiler_2fdiag_3arecord_3e(ptr %v0, ptr %s2, ptr %t62, i64 %t63)
  store %"compiler/diag:record" %t66, ptr %l42
  br label %bb15
bb15:
  %t67 = getelementptr %"compiler/diag:record", ptr %l42, i32 0, i32 4
  %t68 = load i64, ptr %t67, !tbaa !24
  %t69 = load ptr, ptr %l38, !tbaa !29
  %t71 = call i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2emayReport(ptr %v0, ptr %t69, i64 %t68)
  store i1 %t71, ptr %l44
  br label %bb16
bb16:
  %t72 = load i1, ptr %l44, !tbaa !21
  br i1 %t72, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s2)
  store i1 true, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s2)
  br label %bb20
bb20:
  %t74 = load i64, ptr %l6, !tbaa !24
  %t76 = add i64 %t74, 1
  store i64 %t76, ptr %l6, !tbaa !24
  br label %bb7
bb21:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorOncePerLine(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2) #0 {
entry:
  %l6 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t7 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2ereport(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2, i1 true)
  store i64 %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = load i64, ptr %l6, !tbaa !24
  store i64 %t8, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorUnheld(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l11 = alloca { i64, ptr }
  %l17 = alloca i64
  %l25 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/diag:Diagnostics", ptr %t1, i32 0, i32 11
  %t5 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %v0, ptr %s0, ptr %t3)
  store { i64, ptr } %t5, ptr %l11
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t6, ptr %l3, !tbaa !27
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/diag:Diagnostics", ptr %t7, i32 0, i32 11
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t9)
  br label %bb2
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t17 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2ereport(ptr %v0, ptr %v1, ptr %t11, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2, i1 false)
  store i64 %t17, ptr %l17
  br label %bb3
bb3:
  %t18 = load i64, ptr %l17, !tbaa !24
  store i64 %t18, ptr %l4, !tbaa !24
  %t19 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t19, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t21 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t21, 0
  store i64 %t23, ptr %l7, !tbaa !24
  br label %bb4
bb4:
  %t25 = load i64, ptr %l6, !tbaa !24
  %t26 = load i64, ptr %l7, !tbaa !24
  %t29 = icmp slt i64 %t25, %t26
  %t31 = xor i1 %t29, true
  br i1 %t31, label %bb5, label %bb6
bb5:
  br label %bb10
bb6:
  br label %bb7
bb7:
  %t33 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t33, ptr %l25, !tbaa !27
  %t34 = load i64, ptr %l6, !tbaa !24
  %t36 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !27
  %t38 = getelementptr i64, ptr %t37, i64 %t34
  %t39 = load i64, ptr %t38, !tbaa !34
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/diag:Diagnostics", ptr %t41, i32 0, i32 11
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t43, i64 %t39)
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t47 = load i64, ptr %l6, !tbaa !24
  %t49 = add i64 %t47, 1
  store i64 %t49, ptr %l6, !tbaa !24
  br label %bb4
bb10:
  %t51 = load i64, ptr %l4, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t51, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorWithin(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca %"compiler/diag:record"
  %l12 = alloca { i64, [3 x i64] }
  %l13 = alloca i64
  %l14 = alloca i64
  %l19 = alloca i64
  %l22 = alloca i64
  %l40 = alloca i64
  %l43 = alloca i64
  %l48 = alloca %"compiler/diag:record"
  %l51 = alloca i1
  %l61 = alloca i1
  %l65 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l5, !tbaa !24
  store i64 %a4, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t3 = load i64, ptr %l6, !tbaa !24
  %t4 = load i64, ptr %l5, !tbaa !24
  %t7 = icmp sgt i64 %t3, %t4
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load i64, ptr %l7, !tbaa !24
  %t11 = icmp sgt i64 %t9, 0
  br i1 %t11, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb6
bb3:
  %t13 = load i64, ptr %l6, !tbaa !24
  %t14 = load i64, ptr %l5, !tbaa !24
  %t17 = sub i64 %t13, %t14
  %t18 = load i64, ptr %l7, !tbaa !24
  %t21 = add i64 %t17, %t18
  %t23 = sub i64 %t21, 1
  %t24 = load i64, ptr %l7, !tbaa !24
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
  store i64 %t30, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb7
bb7:
  %t31 = load i64, ptr %l9, !tbaa !24
  %t32 = load i64, ptr %l8, !tbaa !24
  %t35 = icmp slt i64 %t31, %t32
  %t37 = xor i1 %t35, true
  br i1 %t37, label %bb8, label %bb9
bb8:
  br label %bb39
bb9:
  br label %bb10
bb10:
  %t39 = load i64, ptr %l5, !tbaa !24
  %t40 = load i64, ptr %l9, !tbaa !24
  %t41 = load i64, ptr %l7, !tbaa !24
  %t44 = mul i64 %t40, %t41
  %t47 = add i64 %t39, %t44
  store i64 %t47, ptr %l10, !tbaa !24
  %t49 = load i64, ptr %l10, !tbaa !24
  store i64 %t49, ptr %l40, !tbaa !24
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/diag:Diagnostics", ptr %t50, i32 0, i32 7
  %t54 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2eLen_3ccompiler_2fdiag_3arecord_3e(ptr %v0, ptr %t52)
  store i64 %t54, ptr %l43
  br label %bb11
bb11:
  %t55 = load i64, ptr %l40, !tbaa !24
  %t56 = load i64, ptr %l43, !tbaa !24
  %t57 = icmp sge i64 %t55, %t56
  br i1 %t57, label %bb12, label %bb13
bb12:
  br label %bb39
bb13:
  br label %bb14
bb14:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/diag:Diagnostics", ptr %t59, i32 0, i32 7
  %t62 = load i64, ptr %l10, !tbaa !24
  %t65 = call %"compiler/diag:record" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2eAt_3ccompiler_2fdiag_3arecord_3e(ptr %v0, ptr %v0, ptr %t61, i64 %t62)
  store %"compiler/diag:record" %t65, ptr %l48
  br label %bb15
bb15:
  %t66 = load %"compiler/diag:record", ptr %l48
  store %"compiler/diag:record" %t66, ptr %l11
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/diag:record", ptr %l11, i32 0, i32 4
  %t69 = load i64, ptr %t68, !tbaa !24
  %t72 = call i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2emayReport(ptr %v0, ptr %t67, i64 %t69)
  store i1 %t72, ptr %l51
  br label %bb16
bb16:
  %t73 = load i1, ptr %l51, !tbaa !21
  %t74 = xor i1 %t73, true
  br i1 %t74, label %bb17, label %bb18
bb17:
  br label %bb38
bb18:
  br label %bb19
bb19:
  %t76 = getelementptr %"compiler/diag:record", ptr %l11, i32 0, i32 0
  %t77 = load { i64, [3 x i64] }, ptr %t76
  store { i64, [3 x i64] } %t77, ptr %l12
  %t79 = load { i64, [3 x i64] }, ptr %l12
  %t81 = extractvalue { i64, [3 x i64] } %t79, 0
  %t82 = icmp eq i64 %t81, 3
  br i1 %t82, label %bb20, label %bb21
bb20:
  %t84 = getelementptr { i64, [3 x i64] }, ptr %l12, i32 0, i32 1
  %t85 = getelementptr { i64, i64, i64 }, ptr %t84, i32 0, i32 0
  %t86 = load i64, ptr %t85
  store i64 %t86, ptr %l13, !tbaa !24
  %t88 = getelementptr { i64, [3 x i64] }, ptr %l12, i32 0, i32 1
  %t89 = getelementptr { i64, i64, i64 }, ptr %t88, i32 0, i32 1
  %t90 = load i64, ptr %t89
  store i64 %t90, ptr %l14, !tbaa !24
  br label %bb22
bb21:
  br label %bb32
bb22:
  %t92 = load i64, ptr %l13, !tbaa !24
  %t96 = icmp eq i64 %t92, %a1
  br i1 %t96, label %bb23, label %bb24
bb23:
  %t98 = load i64, ptr %l14, !tbaa !24
  %t102 = icmp sge i64 %t98, %a2
  store i1 %t102, ptr %l61, !tbaa !21
  br label %bb25
bb24:
  store i1 false, ptr %l61, !tbaa !21
  br label %bb25
bb25:
  %t104 = load i1, ptr %l61, !tbaa !21
  br i1 %t104, label %bb26, label %bb27
bb26:
  %t105 = load i64, ptr %l14, !tbaa !24
  %t109 = icmp slt i64 %t105, %a3
  store i1 %t109, ptr %l65, !tbaa !21
  br label %bb28
bb27:
  store i1 false, ptr %l65, !tbaa !21
  br label %bb28
bb28:
  %t111 = load i1, ptr %l65, !tbaa !21
  br i1 %t111, label %bb29, label %bb30
bb29:
  store i1 true, ptr %rv
  br label %ret
bb30:
  br label %bb31
bb31:
  br label %bb37
bb32:
  br i1 true, label %bb33, label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb37
bb36:
  call void @__olang_check_failed(ptr @olang_loc_c04aaa086b5e7e5b_5e3bee630a0f401f)
  unreachable
bb37:
  br label %bb38
bb38:
  %t113 = load i64, ptr %l9, !tbaa !24
  %t115 = add i64 %t113, 1
  store i64 %t115, ptr %l9, !tbaa !24
  br label %bb7
bb39:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrors(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2ewritten(ptr %v0, ptr %s0, ptr %t1)
  store { i64, ptr } %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t4, 0
  store i64 %t5, ptr %l3, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/diag:Diagnostics", ptr %t6, i32 0, i32 23
  %t9 = load i1, ptr %t8, !tbaa !21
  br i1 %t9, label %bb2, label %bb3
bb2:
  store i64 1, ptr %l6, !tbaa !24
  br label %bb4
bb3:
  store i64 0, ptr %l6, !tbaa !24
  br label %bb4
bb4:
  %t11 = load i64, ptr %l3, !tbaa !24
  %t12 = load i64, ptr %l6, !tbaa !24
  %t13 = add i64 %t11, %t12
  call void @__olang_scope_close(ptr %s0)
  store i64 %t13, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eFatal(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/diagmsg:Msg"
  %l6 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l10 = alloca ptr
  %l12 = alloca { i64, ptr }
  %l14 = alloca ptr
  %l16 = alloca { i64, ptr }
  %l18 = alloca ptr
  %l20 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store %"compiler/diagmsg:Msg" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/diag:Diagnostics", ptr %t1, i32 0, i32 23
  store i1 true, ptr %t3, !tbaa !21
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/diag:Diagnostics", ptr %t4, i32 0, i32 18
  store { i64, [3 x i64] } %a1, ptr %t8
  %t9 = load ptr, ptr %l0, !tbaa !29
  store ptr %t9, ptr %l6, !tbaa !29
  %t10 = getelementptr %"compiler/diagmsg:Msg", ptr %l2, i32 0, i32 1
  %t11 = load { i64, ptr }, ptr %t10, !tbaa !27
  %t12 = load ptr, ptr %l6, !tbaa !29
  %t13 = getelementptr %"compiler/diag:Diagnostics", ptr %t12, i32 0, i32 19
  %t14 = load { i64, ptr }, ptr %t13, !tbaa !27
  store { i64, ptr } %t14, ptr %l8, !tbaa !27
  %t16 = load ptr, ptr %l6, !tbaa !29
  %t17 = getelementptr %"compiler/diag:Diagnostics", ptr %t16, i32 0, i32 19
  store { i64, ptr } %t11, ptr %t17, !tbaa !27
  %t18 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e19
  br i1 %t18, label %bb1, label %bb2
bb1:
  %t20 = load { i64, ptr }, ptr %l8
  %t21 = extractvalue { i64, ptr } %t20, 1
  call void @__olang_region_release(ptr %t21)
  store { i64, ptr } zeroinitializer, ptr %l8
  br label %bb2
bb2:
  %t22 = load ptr, ptr %l0, !tbaa !29
  store ptr %t22, ptr %l10, !tbaa !29
  %t23 = getelementptr %"compiler/diagmsg:Msg", ptr %l2, i32 0, i32 2
  %t24 = load { i64, ptr }, ptr %t23, !tbaa !27
  %t25 = load ptr, ptr %l10, !tbaa !29
  %t26 = getelementptr %"compiler/diag:Diagnostics", ptr %t25, i32 0, i32 20
  %t27 = load { i64, ptr }, ptr %t26, !tbaa !27
  store { i64, ptr } %t27, ptr %l12, !tbaa !27
  %t29 = load ptr, ptr %l10, !tbaa !29
  %t30 = getelementptr %"compiler/diag:Diagnostics", ptr %t29, i32 0, i32 20
  store { i64, ptr } %t24, ptr %t30, !tbaa !27
  %t31 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e20
  br i1 %t31, label %bb3, label %bb4
bb3:
  %t33 = load { i64, ptr }, ptr %l12
  %t34 = extractvalue { i64, ptr } %t33, 1
  call void @__olang_region_release(ptr %t34)
  store { i64, ptr } zeroinitializer, ptr %l12
  br label %bb4
bb4:
  %t35 = load ptr, ptr %l0, !tbaa !29
  store ptr %t35, ptr %l14, !tbaa !29
  %t36 = getelementptr %"compiler/diagmsg:Msg", ptr %l2, i32 0, i32 3
  %t37 = load { i64, ptr }, ptr %t36, !tbaa !27
  %t38 = load ptr, ptr %l14, !tbaa !29
  %t39 = getelementptr %"compiler/diag:Diagnostics", ptr %t38, i32 0, i32 21
  %t40 = load { i64, ptr }, ptr %t39, !tbaa !27
  store { i64, ptr } %t40, ptr %l16, !tbaa !27
  %t42 = load ptr, ptr %l14, !tbaa !29
  %t43 = getelementptr %"compiler/diag:Diagnostics", ptr %t42, i32 0, i32 21
  store { i64, ptr } %t37, ptr %t43, !tbaa !27
  %t44 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e21
  br i1 %t44, label %bb5, label %bb6
bb5:
  %t46 = load { i64, ptr }, ptr %l16
  %t47 = extractvalue { i64, ptr } %t46, 1
  call void @__olang_region_release(ptr %t47)
  store { i64, ptr } zeroinitializer, ptr %l16
  br label %bb6
bb6:
  %t48 = load ptr, ptr %l0, !tbaa !29
  store ptr %t48, ptr %l18, !tbaa !29
  %t49 = getelementptr %"compiler/diagmsg:Msg", ptr %l2, i32 0, i32 4
  %t50 = load { i64, ptr }, ptr %t49, !tbaa !27
  %t51 = load ptr, ptr %l18, !tbaa !29
  %t52 = getelementptr %"compiler/diag:Diagnostics", ptr %t51, i32 0, i32 22
  %t53 = load { i64, ptr }, ptr %t52, !tbaa !27
  store { i64, ptr } %t53, ptr %l20, !tbaa !27
  %t55 = load ptr, ptr %l18, !tbaa !29
  %t56 = getelementptr %"compiler/diag:Diagnostics", ptr %t55, i32 0, i32 22
  store { i64, ptr } %t50, ptr %t56, !tbaa !27
  %t57 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e22
  br i1 %t57, label %bb7, label %bb8
bb7:
  %t59 = load { i64, ptr }, ptr %l20
  %t60 = extractvalue { i64, ptr } %t59, 1
  call void @__olang_region_release(ptr %t60)
  store { i64, ptr } zeroinitializer, ptr %l20
  br label %bb8
bb8:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eFirm(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l6 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/diag:Diagnostics", ptr %t1, i32 0, i32 7
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2eLen_3ccompiler_2fdiag_3arecord_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/diag:Diagnostics", ptr %t6, i32 0, i32 17
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l6
  br label %bb2
bb2:
  %t11 = load i64, ptr %l3, !tbaa !24
  %t12 = load i64, ptr %l6, !tbaa !24
  %t13 = sub i64 %t11, %t12
  store i64 %t13, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eForget(ptr %v0, ptr %a0, i64 %a1) #0 {
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
  %l26 = alloca i64
  %l33 = alloca i64
  %l37 = alloca i64
  %l40 = alloca i64
  %l61 = alloca %"compiler/diag:note"
  %l66 = alloca ptr
  %l67 = alloca i64
  %l71 = alloca %"compiler/diag:note"
  %l81 = alloca i64
  %l85 = alloca i64
  %l88 = alloca i64
  %l109 = alloca i64
  %l113 = alloca ptr
  %l114 = alloca i64
  %l118 = alloca i64
  %l128 = alloca i64
  %l132 = alloca i64
  %l135 = alloca i64
  %l156 = alloca i64
  %l160 = alloca ptr
  %l161 = alloca i64
  %l165 = alloca i64
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  store i64 %t1, ptr %l23, !tbaa !24
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"compiler/diag:Diagnostics", ptr %t2, i32 0, i32 7
  %t6 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2eLen_3ccompiler_2fdiag_3arecord_3e(ptr %v0, ptr %t4)
  store i64 %t6, ptr %l26
  br label %bb1
bb1:
  %t7 = load i64, ptr %l23, !tbaa !24
  %t8 = load i64, ptr %l26, !tbaa !24
  %t9 = icmp sge i64 %t7, %t8
  br i1 %t9, label %bb2, label %bb3
bb2:
  br label %ret
bb3:
  br label %bb4
bb4:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/diag:Diagnostics", ptr %t11, i32 0, i32 7
  %t14 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2eTruncate_3ccompiler_2fdiag_3arecord_3e(ptr %v0, ptr %t13, i64 %t14)
  br label %bb5
bb5:
  store i64 0, ptr %l2, !tbaa !24
  store i64 0, ptr %l3, !tbaa !24
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/diag:Diagnostics", ptr %t17, i32 0, i32 8
  %t21 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3anote_3e_2eLen_3ccompiler_2fdiag_3anote_3e(ptr %v0, ptr %t19)
  store i64 %t21, ptr %l33
  br label %bb6
bb6:
  %t22 = load i64, ptr %l33, !tbaa !24
  store i64 %t22, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t23 = load i64, ptr %l4, !tbaa !24
  %t24 = load i64, ptr %l3, !tbaa !24
  %t27 = icmp sgt i64 %t23, %t24
  br i1 %t27, label %bb7, label %bb8
bb7:
  %t29 = load i64, ptr %l5, !tbaa !24
  %t31 = icmp sgt i64 %t29, 0
  br i1 %t31, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l37, !tbaa !24
  br label %bb12
bb9:
  %t33 = load i64, ptr %l4, !tbaa !24
  %t34 = load i64, ptr %l3, !tbaa !24
  %t37 = sub i64 %t33, %t34
  %t38 = load i64, ptr %l5, !tbaa !24
  %t41 = add i64 %t37, %t38
  %t43 = sub i64 %t41, 1
  %t44 = load i64, ptr %l5, !tbaa !24
  %t47 = sdiv i64 %t43, %t44
  store i64 %t47, ptr %l40, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l40, !tbaa !24
  br label %bb11
bb11:
  %t49 = load i64, ptr %l40, !tbaa !24
  store i64 %t49, ptr %l37, !tbaa !24
  br label %bb12
bb12:
  %t50 = load i64, ptr %l37, !tbaa !24
  store i64 %t50, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb13
bb13:
  store %olang.scope zeroinitializer, ptr %s3
  %t51 = load i64, ptr %l7, !tbaa !24
  %t52 = load i64, ptr %l6, !tbaa !24
  %t55 = icmp slt i64 %t51, %t52
  %t57 = xor i1 %t55, true
  br i1 %t57, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s3)
  br label %bb24
bb15:
  br label %bb16
bb16:
  %t59 = load i64, ptr %l3, !tbaa !24
  %t60 = load i64, ptr %l7, !tbaa !24
  %t61 = load i64, ptr %l5, !tbaa !24
  %t64 = mul i64 %t60, %t61
  %t67 = add i64 %t59, %t64
  store i64 %t67, ptr %l8, !tbaa !24
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/diag:Diagnostics", ptr %t69, i32 0, i32 8
  %t72 = load i64, ptr %l8, !tbaa !24
  %t75 = call %"compiler/diag:note" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3anote_3e_2eAt_3ccompiler_2fdiag_3anote_3e(ptr %v0, ptr %s3, ptr %t71, i64 %t72)
  store %"compiler/diag:note" %t75, ptr %l61
  br label %bb17
bb17:
  %t76 = getelementptr %"compiler/diag:note", ptr %l61, i32 0, i32 0
  %t77 = load i64, ptr %t76, !tbaa !24
  %t78 = load i64, ptr %l1, !tbaa !24
  %t81 = icmp slt i64 %t77, %t78
  br i1 %t81, label %bb18, label %bb19
bb18:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/diag:Diagnostics", ptr %t83, i32 0, i32 8
  store ptr %t85, ptr %l66, !tbaa !29
  %t86 = load i64, ptr %l2, !tbaa !24
  store i64 %t86, ptr %l67, !tbaa !24
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/diag:Diagnostics", ptr %t87, i32 0, i32 8
  %t90 = load i64, ptr %l8, !tbaa !24
  %t93 = call %"compiler/diag:note" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3anote_3e_2eAt_3ccompiler_2fdiag_3anote_3e(ptr %v0, ptr %v0, ptr %t89, i64 %t90)
  store %"compiler/diag:note" %t93, ptr %l71
  br label %bb20
bb19:
  br label %bb22
bb20:
  %t94 = load ptr, ptr %l66, !tbaa !29
  %t95 = load i64, ptr %l67, !tbaa !24
  %t96 = load %"compiler/diag:note", ptr %l71
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3anote_3e_2eSetAt_3ccompiler_2fdiag_3anote_3e(ptr %v0, ptr %v0, ptr %t94, i64 %t95, %"compiler/diag:note" %t96)
  br label %bb21
bb21:
  %t97 = load i64, ptr %l2, !tbaa !24
  %t99 = add i64 %t97, 1
  store i64 %t99, ptr %l2, !tbaa !24
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s3)
  br label %bb23
bb23:
  %t101 = load i64, ptr %l7, !tbaa !24
  %t103 = add i64 %t101, 1
  store i64 %t103, ptr %l7, !tbaa !24
  br label %bb13
bb24:
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t107 = getelementptr %"compiler/diag:Diagnostics", ptr %t105, i32 0, i32 8
  %t108 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3anote_3e_2eTruncate_3ccompiler_2fdiag_3anote_3e(ptr %v0, ptr %t107, i64 %t108)
  br label %bb25
bb25:
  store i64 0, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/diag:Diagnostics", ptr %t111, i32 0, i32 16
  %t115 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t113)
  store i64 %t115, ptr %l81
  br label %bb26
bb26:
  %t116 = load i64, ptr %l81, !tbaa !24
  store i64 %t116, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t117 = load i64, ptr %l11, !tbaa !24
  %t118 = load i64, ptr %l10, !tbaa !24
  %t121 = icmp sgt i64 %t117, %t118
  br i1 %t121, label %bb27, label %bb28
bb27:
  %t123 = load i64, ptr %l12, !tbaa !24
  %t125 = icmp sgt i64 %t123, 0
  br i1 %t125, label %bb29, label %bb30
bb28:
  store i64 0, ptr %l85, !tbaa !24
  br label %bb32
bb29:
  %t127 = load i64, ptr %l11, !tbaa !24
  %t128 = load i64, ptr %l10, !tbaa !24
  %t131 = sub i64 %t127, %t128
  %t132 = load i64, ptr %l12, !tbaa !24
  %t135 = add i64 %t131, %t132
  %t137 = sub i64 %t135, 1
  %t138 = load i64, ptr %l12, !tbaa !24
  %t141 = sdiv i64 %t137, %t138
  store i64 %t141, ptr %l88, !tbaa !24
  br label %bb31
bb30:
  store i64 0, ptr %l88, !tbaa !24
  br label %bb31
bb31:
  %t143 = load i64, ptr %l88, !tbaa !24
  store i64 %t143, ptr %l85, !tbaa !24
  br label %bb32
bb32:
  %t144 = load i64, ptr %l85, !tbaa !24
  store i64 %t144, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb33
bb33:
  %t145 = load i64, ptr %l14, !tbaa !24
  %t146 = load i64, ptr %l13, !tbaa !24
  %t149 = icmp slt i64 %t145, %t146
  %t151 = xor i1 %t149, true
  br i1 %t151, label %bb34, label %bb35
bb34:
  br label %bb44
bb35:
  br label %bb36
bb36:
  %t153 = load i64, ptr %l10, !tbaa !24
  %t154 = load i64, ptr %l14, !tbaa !24
  %t155 = load i64, ptr %l12, !tbaa !24
  %t158 = mul i64 %t154, %t155
  %t161 = add i64 %t153, %t158
  store i64 %t161, ptr %l15, !tbaa !24
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t165 = getelementptr %"compiler/diag:Diagnostics", ptr %t163, i32 0, i32 16
  %t166 = load i64, ptr %l15, !tbaa !24
  %t169 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t165, i64 %t166)
  store i64 %t169, ptr %l109
  br label %bb37
bb37:
  %t170 = load i64, ptr %l1, !tbaa !24
  %t171 = load i64, ptr %l109, !tbaa !24
  %t173 = icmp slt i64 %t171, %t170
  br i1 %t173, label %bb38, label %bb39
bb38:
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t177 = getelementptr %"compiler/diag:Diagnostics", ptr %t175, i32 0, i32 16
  store ptr %t177, ptr %l113, !tbaa !29
  %t178 = load i64, ptr %l9, !tbaa !24
  store i64 %t178, ptr %l114, !tbaa !24
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t181 = getelementptr %"compiler/diag:Diagnostics", ptr %t179, i32 0, i32 16
  %t182 = load i64, ptr %l15, !tbaa !24
  %t185 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t181, i64 %t182)
  store i64 %t185, ptr %l118
  br label %bb40
bb39:
  br label %bb42
bb40:
  %t186 = load ptr, ptr %l113, !tbaa !29
  %t187 = load i64, ptr %l114, !tbaa !24
  %t188 = load i64, ptr %l118, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t186, i64 %t187, i64 %t188)
  br label %bb41
bb41:
  %t189 = load i64, ptr %l9, !tbaa !24
  %t191 = add i64 %t189, 1
  store i64 %t191, ptr %l9, !tbaa !24
  br label %bb42
bb42:
  br label %bb43
bb43:
  %t193 = load i64, ptr %l14, !tbaa !24
  %t195 = add i64 %t193, 1
  store i64 %t195, ptr %l14, !tbaa !24
  br label %bb33
bb44:
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t199 = getelementptr %"compiler/diag:Diagnostics", ptr %t197, i32 0, i32 16
  %t200 = load i64, ptr %l9, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eTruncate_3cI64_3e(ptr %v0, ptr %t199, i64 %t200)
  br label %bb45
bb45:
  store i64 0, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t205 = getelementptr %"compiler/diag:Diagnostics", ptr %t203, i32 0, i32 17
  %t207 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t205)
  store i64 %t207, ptr %l128
  br label %bb46
bb46:
  %t208 = load i64, ptr %l128, !tbaa !24
  store i64 %t208, ptr %l18, !tbaa !24
  store i64 1, ptr %l19, !tbaa !24
  %t209 = load i64, ptr %l18, !tbaa !24
  %t210 = load i64, ptr %l17, !tbaa !24
  %t213 = icmp sgt i64 %t209, %t210
  br i1 %t213, label %bb47, label %bb48
bb47:
  %t215 = load i64, ptr %l19, !tbaa !24
  %t217 = icmp sgt i64 %t215, 0
  br i1 %t217, label %bb49, label %bb50
bb48:
  store i64 0, ptr %l132, !tbaa !24
  br label %bb52
bb49:
  %t219 = load i64, ptr %l18, !tbaa !24
  %t220 = load i64, ptr %l17, !tbaa !24
  %t223 = sub i64 %t219, %t220
  %t224 = load i64, ptr %l19, !tbaa !24
  %t227 = add i64 %t223, %t224
  %t229 = sub i64 %t227, 1
  %t230 = load i64, ptr %l19, !tbaa !24
  %t233 = sdiv i64 %t229, %t230
  store i64 %t233, ptr %l135, !tbaa !24
  br label %bb51
bb50:
  store i64 0, ptr %l135, !tbaa !24
  br label %bb51
bb51:
  %t235 = load i64, ptr %l135, !tbaa !24
  store i64 %t235, ptr %l132, !tbaa !24
  br label %bb52
bb52:
  %t236 = load i64, ptr %l132, !tbaa !24
  store i64 %t236, ptr %l20, !tbaa !24
  store i64 0, ptr %l21, !tbaa !24
  br label %bb53
bb53:
  %t237 = load i64, ptr %l21, !tbaa !24
  %t238 = load i64, ptr %l20, !tbaa !24
  %t241 = icmp slt i64 %t237, %t238
  %t243 = xor i1 %t241, true
  br i1 %t243, label %bb54, label %bb55
bb54:
  br label %bb64
bb55:
  br label %bb56
bb56:
  %t245 = load i64, ptr %l17, !tbaa !24
  %t246 = load i64, ptr %l21, !tbaa !24
  %t247 = load i64, ptr %l19, !tbaa !24
  %t250 = mul i64 %t246, %t247
  %t253 = add i64 %t245, %t250
  store i64 %t253, ptr %l22, !tbaa !24
  %t255 = load ptr, ptr %l0, !tbaa !29
  %t257 = getelementptr %"compiler/diag:Diagnostics", ptr %t255, i32 0, i32 17
  %t258 = load i64, ptr %l22, !tbaa !24
  %t261 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t257, i64 %t258)
  store i64 %t261, ptr %l156
  br label %bb57
bb57:
  %t262 = load i64, ptr %l1, !tbaa !24
  %t263 = load i64, ptr %l156, !tbaa !24
  %t265 = icmp slt i64 %t263, %t262
  br i1 %t265, label %bb58, label %bb59
bb58:
  %t267 = load ptr, ptr %l0, !tbaa !29
  %t269 = getelementptr %"compiler/diag:Diagnostics", ptr %t267, i32 0, i32 17
  store ptr %t269, ptr %l160, !tbaa !29
  %t270 = load i64, ptr %l16, !tbaa !24
  store i64 %t270, ptr %l161, !tbaa !24
  %t271 = load ptr, ptr %l0, !tbaa !29
  %t273 = getelementptr %"compiler/diag:Diagnostics", ptr %t271, i32 0, i32 17
  %t274 = load i64, ptr %l22, !tbaa !24
  %t277 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t273, i64 %t274)
  store i64 %t277, ptr %l165
  br label %bb60
bb59:
  br label %bb62
bb60:
  %t278 = load ptr, ptr %l160, !tbaa !29
  %t279 = load i64, ptr %l161, !tbaa !24
  %t280 = load i64, ptr %l165, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t278, i64 %t279, i64 %t280)
  br label %bb61
bb61:
  %t281 = load i64, ptr %l16, !tbaa !24
  %t283 = add i64 %t281, 1
  store i64 %t283, ptr %l16, !tbaa !24
  br label %bb62
bb62:
  br label %bb63
bb63:
  %t285 = load i64, ptr %l21, !tbaa !24
  %t287 = add i64 %t285, 1
  store i64 %t287, ptr %l21, !tbaa !24
  br label %bb53
bb64:
  %t289 = load ptr, ptr %l0, !tbaa !29
  %t291 = getelementptr %"compiler/diag:Diagnostics", ptr %t289, i32 0, i32 17
  %t292 = load i64, ptr %l16, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eTruncate_3cI64_3e(ptr %v0, ptr %t291, i64 %t292)
  br label %bb65
bb65:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eHasFatal(ptr %v0, ptr %a0) #0 {
entry:
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/diag:Diagnostics", ptr %a0, i32 0, i32 23
  %t4 = load i1, ptr %t3, !tbaa !21
  store i1 %t4, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eHold(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l5 = alloca i64
  %l7 = alloca i64
  %l9 = alloca ptr
  %l12 = alloca i64
  %l14 = alloca i64
  %l23 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/diag:Diagnostics", ptr %t1, i32 0, i32 11
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i64, ptr %l5, !tbaa !24
  %t7 = icmp eq i64 %t6, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i64 -1, ptr %l7, !tbaa !24
  br label %bb6
bb3:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/diag:Diagnostics", ptr %t9, i32 0, i32 11
  store ptr %t11, ptr %l9, !tbaa !29
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/diag:Diagnostics", ptr %t12, i32 0, i32 11
  %t16 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t14)
  store i64 %t16, ptr %l12
  br label %bb4
bb4:
  %t17 = load i64, ptr %l12, !tbaa !24
  %t18 = sub i64 %t17, 1
  %t19 = load ptr, ptr %l9, !tbaa !29
  %t21 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t19, i64 %t18)
  store i64 %t21, ptr %l14
  br label %bb5
bb5:
  %t22 = load i64, ptr %l14, !tbaa !24
  store i64 %t22, ptr %l7, !tbaa !24
  br label %bb6
bb6:
  %t23 = load i64, ptr %l7, !tbaa !24
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/diag:Diagnostics", ptr %t24, i32 0, i32 9
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t26, i64 %t23)
  br label %bb7
bb7:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/diag:Diagnostics", ptr %t30, i32 0, i32 10
  %t33 = load i64, ptr @G_2ecompiler_2fdiag_2ePending, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t32, i64 %t33)
  br label %bb8
bb8:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/diag:Diagnostics", ptr %t36, i32 0, i32 9
  %t40 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t38)
  store i64 %t40, ptr %l23
  br label %bb9
bb9:
  %t41 = load i64, ptr %l23, !tbaa !24
  %t42 = sub i64 %t41, 1
  store i64 %t42, ptr %l2, !tbaa !24
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/diag:Diagnostics", ptr %t44, i32 0, i32 11
  %t47 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t46, i64 %t47)
  br label %bb10
bb10:
  %t50 = load i64, ptr %l2, !tbaa !24
  store i64 %t50, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eHolds(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca %"compiler/diag:record"
  %l5 = alloca i64
  %l8 = alloca i64
  %l10 = alloca i64
  %l15 = alloca %"compiler/diag:record"
  %l19 = alloca i1
  %l27 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/diag:Diagnostics", ptr %t1, i32 0, i32 7
  store ptr %t3, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t5 = load i64, ptr %l3, !tbaa !24
  store i64 %t5, ptr %l8, !tbaa !24
  %t6 = load ptr, ptr %l2, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2eLen_3ccompiler_2fdiag_3arecord_3e(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l10
  br label %bb2
bb2:
  %t9 = load i64, ptr %l8, !tbaa !24
  %t10 = load i64, ptr %l10, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  br label %bb21
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l2, !tbaa !29
  %t16 = load i64, ptr %l3, !tbaa !24
  %t19 = call %"compiler/diag:record" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2eAt_3ccompiler_2fdiag_3arecord_3e(ptr %v0, ptr %v0, ptr %t15, i64 %t16)
  store %"compiler/diag:record" %t19, ptr %l15
  br label %bb6
bb6:
  %t20 = load %"compiler/diag:record", ptr %l15
  store %"compiler/diag:record" %t20, ptr %l4
  %t21 = getelementptr %"compiler/diag:record", ptr %l4, i32 0, i32 4
  %t22 = load i64, ptr %t21, !tbaa !24
  store i64 %t22, ptr %l5, !tbaa !24
  br label %bb7
bb7:
  %t24 = load i64, ptr %l5, !tbaa !24
  %t26 = icmp sge i64 %t24, 0
  br i1 %t26, label %bb8, label %bb9
bb8:
  %t28 = load i64, ptr %l5, !tbaa !24
  %t29 = load i64, ptr %l1, !tbaa !24
  %t32 = icmp ne i64 %t28, %t29
  store i1 %t32, ptr %l19, !tbaa !21
  br label %bb10
bb9:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb10
bb10:
  %t34 = load i1, ptr %l19, !tbaa !21
  %t35 = xor i1 %t34, true
  br i1 %t35, label %bb11, label %bb12
bb11:
  br label %bb16
bb12:
  br label %bb13
bb13:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/diag:Diagnostics", ptr %t37, i32 0, i32 9
  %t40 = load i64, ptr %l5, !tbaa !24
  %t43 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t39, i64 %t40)
  store i64 %t43, ptr %l27
  br label %bb14
bb14:
  %t44 = load i64, ptr %l27, !tbaa !24
  store i64 %t44, ptr %l5, !tbaa !24
  br label %bb15
bb15:
  br label %bb7
bb16:
  %t45 = load i64, ptr %l5, !tbaa !24
  %t46 = load i64, ptr %l1, !tbaa !24
  %t49 = icmp eq i64 %t45, %t46
  br i1 %t49, label %bb17, label %bb18
bb17:
  store i1 true, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t52 = load i64, ptr %l3, !tbaa !24
  %t54 = add i64 %t52, 1
  store i64 %t54, ptr %l3, !tbaa !24
  br label %bb1
bb21:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eIsCut(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i1
  %l5 = alloca i64
  %l8 = alloca i64
  %l10 = alloca i1
  %l14 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp sge i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i64, ptr %l1, !tbaa !24
  store i64 %t5, ptr %l5, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/diag:Diagnostics", ptr %t6, i32 0, i32 10
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l8
  br label %bb3
bb2:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb4
bb3:
  %t11 = load i64, ptr %l5, !tbaa !24
  %t12 = load i64, ptr %l8, !tbaa !24
  %t13 = icmp slt i64 %t11, %t12
  store i1 %t13, ptr %l4, !tbaa !21
  br label %bb4
bb4:
  %t15 = load i1, ptr %l4, !tbaa !21
  br i1 %t15, label %bb5, label %bb6
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/diag:Diagnostics", ptr %t16, i32 0, i32 10
  %t19 = load i64, ptr %l1, !tbaa !24
  %t22 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t18, i64 %t19)
  store i64 %t22, ptr %l14
  br label %bb7
bb6:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb8
bb7:
  %t23 = load i64, ptr @G_2ecompiler_2fdiag_2eCut, !tbaa !24
  %t24 = load i64, ptr %l14, !tbaa !24
  %t26 = icmp eq i64 %t24, %t23
  store i1 %t26, ptr %l10, !tbaa !21
  br label %bb8
bb8:
  %t28 = load i1, ptr %l10, !tbaa !21
  store i1 %t28, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eIsDropped(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i1
  %l5 = alloca i64
  %l8 = alloca i64
  %l10 = alloca i1
  %l14 = alloca i64
  %l17 = alloca i1
  %l21 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp sge i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i64, ptr %l1, !tbaa !24
  store i64 %t5, ptr %l5, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/diag:Diagnostics", ptr %t6, i32 0, i32 10
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l8
  br label %bb3
bb2:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb4
bb3:
  %t11 = load i64, ptr %l5, !tbaa !24
  %t12 = load i64, ptr %l8, !tbaa !24
  %t13 = icmp slt i64 %t11, %t12
  store i1 %t13, ptr %l4, !tbaa !21
  br label %bb4
bb4:
  %t15 = load i1, ptr %l4, !tbaa !21
  br i1 %t15, label %bb5, label %bb6
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/diag:Diagnostics", ptr %t16, i32 0, i32 10
  %t19 = load i64, ptr %l1, !tbaa !24
  %t22 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t18, i64 %t19)
  store i64 %t22, ptr %l14
  br label %bb7
bb6:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb12
bb7:
  %t23 = load i64, ptr @G_2ecompiler_2fdiag_2eDropped, !tbaa !24
  %t24 = load i64, ptr %l14, !tbaa !24
  %t26 = icmp eq i64 %t24, %t23
  br i1 %t26, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l17, !tbaa !21
  br label %bb11
bb9:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/diag:Diagnostics", ptr %t28, i32 0, i32 10
  %t31 = load i64, ptr %l1, !tbaa !24
  %t34 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t30, i64 %t31)
  store i64 %t34, ptr %l21
  br label %bb10
bb10:
  %t35 = load i64, ptr @G_2ecompiler_2fdiag_2eCut, !tbaa !24
  %t36 = load i64, ptr %l21, !tbaa !24
  %t38 = icmp eq i64 %t36, %t35
  store i1 %t38, ptr %l17, !tbaa !21
  br label %bb11
bb11:
  %t40 = load i1, ptr %l17, !tbaa !21
  store i1 %t40, ptr %l10, !tbaa !21
  br label %bb12
bb12:
  %t41 = load i1, ptr %l10, !tbaa !21
  store i1 %t41, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eIsLibrary(ptr %v0, ptr %a0, { i64, [3 x i64] } %a1) #0 {
entry:
  %l4 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eisLibrary(ptr %v0, ptr %a0, { i64, [3 x i64] } %a1)
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

define dso_local i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eIsPending(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i1
  %l5 = alloca i64
  %l8 = alloca i64
  %l10 = alloca i1
  %l14 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp sge i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i64, ptr %l1, !tbaa !24
  store i64 %t5, ptr %l5, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/diag:Diagnostics", ptr %t6, i32 0, i32 10
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l8
  br label %bb3
bb2:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb4
bb3:
  %t11 = load i64, ptr %l5, !tbaa !24
  %t12 = load i64, ptr %l8, !tbaa !24
  %t13 = icmp slt i64 %t11, %t12
  store i1 %t13, ptr %l4, !tbaa !21
  br label %bb4
bb4:
  %t15 = load i1, ptr %l4, !tbaa !21
  br i1 %t15, label %bb5, label %bb6
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/diag:Diagnostics", ptr %t16, i32 0, i32 10
  %t19 = load i64, ptr %l1, !tbaa !24
  %t22 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t18, i64 %t19)
  store i64 %t22, ptr %l14
  br label %bb7
bb6:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb8
bb7:
  %t23 = load i64, ptr @G_2ecompiler_2fdiag_2ePending, !tbaa !24
  %t24 = load i64, ptr %l14, !tbaa !24
  %t26 = icmp eq i64 %t24, %t23
  store i1 %t26, ptr %l10, !tbaa !21
  br label %bb8
bb8:
  %t28 = load i1, ptr %l10, !tbaa !21
  store i1 %t28, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eItems(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %lp6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca %"compiler/diag:note"
  %l10 = alloca ptr
  %l11 = alloca i64
  %l12 = alloca %"compiler/diag:note"
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l29 = alloca %"compiler/diag:record"
  %l30 = alloca ptr
  %l34 = alloca %"compiler/diag:Item"
  %l37 = alloca i64
  %l39 = alloca i64
  %l44 = alloca %"compiler/diag:note"
  %l48 = alloca i1
  %l51 = alloca ptr
  %l54 = alloca %"compiler/diag:Item"
  %l59 = alloca i64
  %l61 = alloca i64
  %l66 = alloca %"compiler/diag:note"
  %l70 = alloca i1
  %l72 = alloca ptr
  %l75 = alloca %"compiler/diag:Item"
  %l82 = alloca ptr
  %l89 = alloca %"compiler/diag:Item"
  %l94 = alloca ptr
  %l99 = alloca %"compiler/diag:Item"
  %l104 = alloca ptr
  %l109 = alloca %"compiler/diag:Item"
  %s1 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aItem_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l13
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l1
  store %olang.scope zeroinitializer, ptr %s1
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2ewritten(ptr %v0, ptr %s1, ptr %t3)
  store { i64, ptr } %t5, ptr %l15
  br label %bb2
bb2:
  %t6 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t6, 0
  %t8 = extractvalue { i64, ptr } %t6, 1
  %t9 = mul i64 %t7, 8
  %t10 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t9)
  call void @llvm.memcpy.p0.p0.i64(ptr %t10, ptr %t8, i64 %t9, i1 false)
  %t11 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t12 = insertvalue { i64, ptr } %t11, ptr %t10, 1
  store { i64, ptr } %t12, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t14 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t14, 0
  store i64 %t16, ptr %l4, !tbaa !24
  br label %bb3
bb3:
  %t18 = load i64, ptr %l3, !tbaa !24
  %t19 = load i64, ptr %l4, !tbaa !24
  %t22 = icmp slt i64 %t18, %t19
  %t24 = xor i1 %t22, true
  br i1 %t24, label %bb4, label %bb5
bb4:
  br label %bb43
bb5:
  br label %bb6
bb6:
  %t26 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t26, ptr %l23, !tbaa !27
  %t27 = load i64, ptr %l3, !tbaa !24
  %t29 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = getelementptr i64, ptr %t30, i64 %t27
  %t32 = load i64, ptr %t31, !tbaa !34
  store i64 %t32, ptr %l5, !tbaa !24
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/diag:Diagnostics", ptr %t34, i32 0, i32 7
  %t37 = load i64, ptr %l5, !tbaa !24
  %t40 = call %"compiler/diag:record" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2eAt_3ccompiler_2fdiag_3arecord_3e(ptr %v0, ptr %v1, ptr %t36, i64 %t37)
  store %"compiler/diag:record" %t40, ptr %l29
  br label %bb7
bb7:
  %t41 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 88, i64 8)
  store ptr %t41, ptr %lp6
  %t42 = load %"compiler/diag:record", ptr %l29
  %t43 = load ptr, ptr %lp6
  store %"compiler/diag:record" %t42, ptr %t43
  store ptr %l1, ptr %l30, !tbaa !29
  %t44 = load ptr, ptr %lp6
  %t45 = getelementptr %"compiler/diag:record", ptr %t44, i32 0, i32 1
  %t46 = load { i64, ptr }, ptr %t45, !tbaa !27
  %t47 = load ptr, ptr %lp6
  %t48 = getelementptr %"compiler/diag:record", ptr %t47, i32 0, i32 0
  %t49 = load { i64, [3 x i64] }, ptr %t48
  %t50 = load ptr, ptr %lp6
  %t51 = getelementptr %"compiler/diag:record", ptr %t50, i32 0, i32 2
  %t52 = load { i64, ptr }, ptr %t51, !tbaa !27
  %t56 = call %"compiler/diag:Item" @compiler_2fdiag_2eItem_2eitem(ptr %v1, ptr %v1, ptr %v1, i1 true, { i64, ptr } %t46, { i64, [3 x i64] } %t49, { i64, ptr } %t52, i1 false)
  store %"compiler/diag:Item" %t56, ptr %l34
  br label %bb8
bb8:
  %t57 = load ptr, ptr %l30, !tbaa !29
  %t58 = load %"compiler/diag:Item", ptr %l34
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aItem_3e_2ePush_3ccompiler_2fdiag_3aItem_3e(ptr %v1, ptr %v1, ptr %t57, %"compiler/diag:Item" %t58)
  br label %bb9
bb9:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/diag:Diagnostics", ptr %t59, i32 0, i32 8
  store ptr %t61, ptr %l7, !tbaa !29
  store i64 0, ptr %l8, !tbaa !24
  br label %bb10
bb10:
  %t63 = load i64, ptr %l8, !tbaa !24
  store i64 %t63, ptr %l37, !tbaa !24
  %t64 = load ptr, ptr %l7, !tbaa !29
  %t66 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3anote_3e_2eLen_3ccompiler_2fdiag_3anote_3e(ptr %v0, ptr %t64)
  store i64 %t66, ptr %l39
  br label %bb11
bb11:
  %t67 = load i64, ptr %l37, !tbaa !24
  %t68 = load i64, ptr %l39, !tbaa !24
  %t69 = icmp slt i64 %t67, %t68
  %t71 = xor i1 %t69, true
  br i1 %t71, label %bb12, label %bb13
bb12:
  br label %bb25
bb13:
  br label %bb14
bb14:
  %t73 = load ptr, ptr %l7, !tbaa !29
  %t74 = load i64, ptr %l8, !tbaa !24
  %t77 = call %"compiler/diag:note" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3anote_3e_2eAt_3ccompiler_2fdiag_3anote_3e(ptr %v0, ptr %v0, ptr %t73, i64 %t74)
  store %"compiler/diag:note" %t77, ptr %l44
  br label %bb15
bb15:
  %t78 = load %"compiler/diag:note", ptr %l44
  store %"compiler/diag:note" %t78, ptr %l9
  %t79 = getelementptr %"compiler/diag:note", ptr %l9, i32 0, i32 0
  %t80 = load i64, ptr %t79, !tbaa !24
  %t81 = load i64, ptr %l5, !tbaa !24
  %t84 = icmp eq i64 %t80, %t81
  br i1 %t84, label %bb16, label %bb17
bb16:
  %t86 = getelementptr %"compiler/diag:note", ptr %l9, i32 0, i32 3
  %t87 = load i1, ptr %t86, !tbaa !21
  %t89 = xor i1 %t87, true
  store i1 %t89, ptr %l48, !tbaa !21
  br label %bb18
bb17:
  store i1 false, ptr %l48, !tbaa !21
  br label %bb18
bb18:
  %t91 = load i1, ptr %l48, !tbaa !21
  br i1 %t91, label %bb19, label %bb20
bb19:
  store ptr %l1, ptr %l51, !tbaa !29
  %t92 = getelementptr %"compiler/diag:note", ptr %l9, i32 0, i32 1
  %t93 = load { i64, [3 x i64] }, ptr %t92
  %t94 = getelementptr %"compiler/diag:note", ptr %l9, i32 0, i32 2
  %t95 = load { i64, ptr }, ptr %t94, !tbaa !27
  %t98 = call %"compiler/diag:Item" @compiler_2fdiag_2eItem_2eitem(ptr %v0, ptr %v0, ptr %v0, i1 false, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d9, i32 0, i32 1) }, { i64, [3 x i64] } %t93, { i64, ptr } %t95, i1 false)
  store %"compiler/diag:Item" %t98, ptr %l54
  br label %bb21
bb20:
  br label %bb23
bb21:
  %t99 = load ptr, ptr %l51, !tbaa !29
  %t100 = load %"compiler/diag:Item", ptr %l54
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aItem_3e_2ePush_3ccompiler_2fdiag_3aItem_3e(ptr %v1, ptr %v0, ptr %t99, %"compiler/diag:Item" %t100)
  br label %bb22
bb22:
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t101 = load i64, ptr %l8, !tbaa !24
  %t103 = add i64 %t101, 1
  store i64 %t103, ptr %l8, !tbaa !24
  br label %bb10
bb25:
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t107 = getelementptr %"compiler/diag:Diagnostics", ptr %t105, i32 0, i32 8
  store ptr %t107, ptr %l10, !tbaa !29
  store i64 0, ptr %l11, !tbaa !24
  br label %bb26
bb26:
  %t109 = load i64, ptr %l11, !tbaa !24
  store i64 %t109, ptr %l59, !tbaa !24
  %t110 = load ptr, ptr %l10, !tbaa !29
  %t112 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3anote_3e_2eLen_3ccompiler_2fdiag_3anote_3e(ptr %v0, ptr %t110)
  store i64 %t112, ptr %l61
  br label %bb27
bb27:
  %t113 = load i64, ptr %l59, !tbaa !24
  %t114 = load i64, ptr %l61, !tbaa !24
  %t115 = icmp slt i64 %t113, %t114
  %t117 = xor i1 %t115, true
  br i1 %t117, label %bb28, label %bb29
bb28:
  br label %bb41
bb29:
  br label %bb30
bb30:
  %t119 = load ptr, ptr %l10, !tbaa !29
  %t120 = load i64, ptr %l11, !tbaa !24
  %t123 = call %"compiler/diag:note" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3anote_3e_2eAt_3ccompiler_2fdiag_3anote_3e(ptr %v0, ptr %v0, ptr %t119, i64 %t120)
  store %"compiler/diag:note" %t123, ptr %l66
  br label %bb31
bb31:
  %t124 = load %"compiler/diag:note", ptr %l66
  store %"compiler/diag:note" %t124, ptr %l12
  %t125 = getelementptr %"compiler/diag:note", ptr %l12, i32 0, i32 0
  %t126 = load i64, ptr %t125, !tbaa !24
  %t127 = load i64, ptr %l5, !tbaa !24
  %t130 = icmp eq i64 %t126, %t127
  br i1 %t130, label %bb32, label %bb33
bb32:
  %t132 = getelementptr %"compiler/diag:note", ptr %l12, i32 0, i32 3
  %t133 = load i1, ptr %t132, !tbaa !21
  store i1 %t133, ptr %l70, !tbaa !21
  br label %bb34
bb33:
  store i1 false, ptr %l70, !tbaa !21
  br label %bb34
bb34:
  %t135 = load i1, ptr %l70, !tbaa !21
  br i1 %t135, label %bb35, label %bb36
bb35:
  store ptr %l1, ptr %l72, !tbaa !29
  %t136 = getelementptr %"compiler/diag:note", ptr %l12, i32 0, i32 1
  %t137 = load { i64, [3 x i64] }, ptr %t136
  %t138 = getelementptr %"compiler/diag:note", ptr %l12, i32 0, i32 2
  %t139 = load { i64, ptr }, ptr %t138, !tbaa !27
  %t142 = call %"compiler/diag:Item" @compiler_2fdiag_2eItem_2eitem(ptr %v0, ptr %v0, ptr %v0, i1 false, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d10, i32 0, i32 1) }, { i64, [3 x i64] } %t137, { i64, ptr } %t139, i1 true)
  store %"compiler/diag:Item" %t142, ptr %l75
  br label %bb37
bb36:
  br label %bb39
bb37:
  %t143 = load ptr, ptr %l72, !tbaa !29
  %t144 = load %"compiler/diag:Item", ptr %l75
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aItem_3e_2ePush_3ccompiler_2fdiag_3aItem_3e(ptr %v1, ptr %v0, ptr %t143, %"compiler/diag:Item" %t144)
  br label %bb38
bb38:
  br label %bb39
bb39:
  br label %bb40
bb40:
  %t145 = load i64, ptr %l11, !tbaa !24
  %t147 = add i64 %t145, 1
  store i64 %t147, ptr %l11, !tbaa !24
  br label %bb26
bb41:
  br label %bb42
bb42:
  %t149 = load i64, ptr %l3, !tbaa !24
  %t151 = add i64 %t149, 1
  store i64 %t151, ptr %l3, !tbaa !24
  br label %bb3
bb43:
  call void @__olang_scope_close(ptr %s1)
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t155 = getelementptr %"compiler/diag:Diagnostics", ptr %t153, i32 0, i32 23
  %t156 = load i1, ptr %t155, !tbaa !21
  br i1 %t156, label %bb44, label %bb45
bb44:
  store ptr %l1, ptr %l82, !tbaa !29
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t160 = getelementptr %"compiler/diag:Diagnostics", ptr %t158, i32 0, i32 19
  %t161 = load { i64, ptr }, ptr %t160, !tbaa !27
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t164 = getelementptr %"compiler/diag:Diagnostics", ptr %t162, i32 0, i32 18
  %t165 = load { i64, [3 x i64] }, ptr %t164
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t168 = getelementptr %"compiler/diag:Diagnostics", ptr %t166, i32 0, i32 20
  %t169 = load { i64, ptr }, ptr %t168, !tbaa !27
  %t173 = call %"compiler/diag:Item" @compiler_2fdiag_2eItem_2eitem(ptr %v0, ptr %v0, ptr %v0, i1 true, { i64, ptr } %t161, { i64, [3 x i64] } %t165, { i64, ptr } %t169, i1 false)
  store %"compiler/diag:Item" %t173, ptr %l89
  br label %bb46
bb45:
  br label %bb58
bb46:
  %t174 = load ptr, ptr %l82, !tbaa !29
  %t175 = load %"compiler/diag:Item", ptr %l89
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aItem_3e_2ePush_3ccompiler_2fdiag_3aItem_3e(ptr %v1, ptr %v0, ptr %t174, %"compiler/diag:Item" %t175)
  br label %bb47
bb47:
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t178 = getelementptr %"compiler/diag:Diagnostics", ptr %t176, i32 0, i32 21
  %t179 = load { i64, ptr }, ptr %t178, !tbaa !27
  %t181 = extractvalue { i64, ptr } %t179, 0
  %t183 = icmp sgt i64 %t181, 0
  br i1 %t183, label %bb48, label %bb49
bb48:
  store ptr %l1, ptr %l94, !tbaa !29
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t187 = getelementptr %"compiler/diag:Diagnostics", ptr %t185, i32 0, i32 18
  %t188 = load { i64, [3 x i64] }, ptr %t187
  %t189 = load ptr, ptr %l0, !tbaa !29
  %t191 = getelementptr %"compiler/diag:Diagnostics", ptr %t189, i32 0, i32 21
  %t192 = load { i64, ptr }, ptr %t191, !tbaa !27
  %t195 = call %"compiler/diag:Item" @compiler_2fdiag_2eItem_2eitem(ptr %v0, ptr %v0, ptr %v0, i1 false, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d11, i32 0, i32 1) }, { i64, [3 x i64] } %t188, { i64, ptr } %t192, i1 false)
  store %"compiler/diag:Item" %t195, ptr %l99
  br label %bb50
bb49:
  br label %bb52
bb50:
  %t196 = load ptr, ptr %l94, !tbaa !29
  %t197 = load %"compiler/diag:Item", ptr %l99
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aItem_3e_2ePush_3ccompiler_2fdiag_3aItem_3e(ptr %v1, ptr %v0, ptr %t196, %"compiler/diag:Item" %t197)
  br label %bb51
bb51:
  br label %bb52
bb52:
  %t198 = load ptr, ptr %l0, !tbaa !29
  %t200 = getelementptr %"compiler/diag:Diagnostics", ptr %t198, i32 0, i32 22
  %t201 = load { i64, ptr }, ptr %t200, !tbaa !27
  %t203 = extractvalue { i64, ptr } %t201, 0
  %t205 = icmp sgt i64 %t203, 0
  br i1 %t205, label %bb53, label %bb54
bb53:
  store ptr %l1, ptr %l104, !tbaa !29
  %t207 = load ptr, ptr %l0, !tbaa !29
  %t209 = getelementptr %"compiler/diag:Diagnostics", ptr %t207, i32 0, i32 18
  %t210 = load { i64, [3 x i64] }, ptr %t209
  %t211 = load ptr, ptr %l0, !tbaa !29
  %t213 = getelementptr %"compiler/diag:Diagnostics", ptr %t211, i32 0, i32 22
  %t214 = load { i64, ptr }, ptr %t213, !tbaa !27
  %t217 = call %"compiler/diag:Item" @compiler_2fdiag_2eItem_2eitem(ptr %v0, ptr %v0, ptr %v0, i1 false, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d12, i32 0, i32 1) }, { i64, [3 x i64] } %t210, { i64, ptr } %t214, i1 true)
  store %"compiler/diag:Item" %t217, ptr %l109
  br label %bb55
bb54:
  br label %bb57
bb55:
  %t218 = load ptr, ptr %l104, !tbaa !29
  %t219 = load %"compiler/diag:Item", ptr %l109
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aItem_3e_2ePush_3ccompiler_2fdiag_3aItem_3e(ptr %v1, ptr %v0, ptr %t218, %"compiler/diag:Item" %t219)
  br label %bb56
bb56:
  br label %bb57
bb57:
  br label %bb58
bb58:
  %t220 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t220, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLineAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca { i64, i64 }
  %l7 = alloca i1
  %l8 = alloca i64
  %l11 = alloca i64
  %l17 = alloca { i64, i64 }
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb4
bb2:
  %t5 = load i64, ptr %l1, !tbaa !24
  store i64 %t5, ptr %l8, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/diag:Diagnostics", ptr %t6, i32 0, i32 1
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l11
  br label %bb3
bb3:
  %t11 = load i64, ptr %l8, !tbaa !24
  %t12 = load i64, ptr %l11, !tbaa !24
  %t13 = icmp sge i64 %t11, %t12
  store i1 %t13, ptr %l7, !tbaa !21
  br label %bb4
bb4:
  %t15 = load i1, ptr %l7, !tbaa !21
  br i1 %t15, label %bb5, label %bb6
bb5:
  store i64 0, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load i64, ptr %l1, !tbaa !24
  %t23 = call { i64, i64 } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2elineOf(ptr %v0, ptr %t17, i64 %t18, i64 %a2)
  store { i64, i64 } %t23, ptr %l17
  br label %bb8
bb8:
  %t24 = load { i64, i64 }, ptr %l17
  store { i64, i64 } %t24, ptr %l3
  %t25 = getelementptr { i64, i64 }, ptr %l3, i32 0, i32 0
  %t26 = load i64, ptr %t25, !tbaa !24
  store i64 %t26, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLocate(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca { i64, i64 }
  %l5 = alloca i64
  %l6 = alloca { { i64, ptr }, i64 }
  %l11 = alloca i1
  %l12 = alloca i64
  %l15 = alloca i64
  %l17 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca { i64, ptr }
  %l24 = alloca { i64, i64 }
  %l30 = alloca { { i64, ptr }, i64 }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb4
bb2:
  %t5 = load i64, ptr %l1, !tbaa !24
  store i64 %t5, ptr %l12, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/diag:Diagnostics", ptr %t6, i32 0, i32 1
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l15
  br label %bb3
bb3:
  %t11 = load i64, ptr %l12, !tbaa !24
  %t12 = load i64, ptr %l15, !tbaa !24
  %t13 = icmp sge i64 %t11, %t12
  store i1 %t13, ptr %l11, !tbaa !21
  br label %bb4
bb4:
  %t15 = load i1, ptr %l11, !tbaa !21
  br i1 %t15, label %bb5, label %bb6
bb5:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d13, i32 0, i32 1) }, ptr %l17, !tbaa !27
  %t16 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t16, ptr %l18, !tbaa !27
  %t17 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t17, 0
  store i64 %t18, ptr %l19, !tbaa !24
  %t19 = load i64, ptr %l19, !tbaa !24
  %t20 = mul i64 %t19, 1
  %t21 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t20)
  %t22 = insertvalue { i64, ptr } undef, i64 %t19, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t21, 1
  store { i64, ptr } %t23, ptr %l20, !tbaa !27
  %t24 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = load i64, ptr %l19, !tbaa !24
  %t29 = mul i64 %t28, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t25, ptr %t27, i64 %t29, i1 false)
  %t30 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t30, ptr %l18, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t31 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t31, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load i64, ptr %l1, !tbaa !24
  %t34 = load i64, ptr %l2, !tbaa !24
  %t38 = call { i64, i64 } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2elineOf(ptr %v0, ptr %t32, i64 %t33, i64 %t34)
  store { i64, i64 } %t38, ptr %l24
  br label %bb8
bb8:
  %t39 = load { i64, i64 }, ptr %l24
  store { i64, i64 } %t39, ptr %l3
  %t40 = getelementptr { i64, i64 }, ptr %l3, i32 0, i32 0
  %t41 = load i64, ptr %t40, !tbaa !24
  %t43 = getelementptr { i64, i64 }, ptr %l3, i32 0, i32 1
  %t44 = load i64, ptr %t43, !tbaa !24
  store i64 %t44, ptr %l5, !tbaa !24
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load i64, ptr %l1, !tbaa !24
  %t52 = call { { i64, ptr }, i64 } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eshown(ptr %v0, ptr %s0, ptr %t46, i64 %t47, i64 %t41)
  store { { i64, ptr }, i64 } %t52, ptr %l30
  br label %bb9
bb9:
  %t53 = load { { i64, ptr }, i64 }, ptr %l30
  store { { i64, ptr }, i64 } %t53, ptr %l6
  %t54 = getelementptr { { i64, ptr }, i64 }, ptr %l6, i32 0, i32 0
  %t55 = load { i64, ptr }, ptr %t54, !tbaa !27
  %t57 = getelementptr { { i64, ptr }, i64 }, ptr %l6, i32 0, i32 1
  %t58 = load i64, ptr %t57, !tbaa !24
  %t62 = load i64, ptr %l2, !tbaa !24
  %t63 = load i64, ptr %l5, !tbaa !24
  %t66 = sub i64 %t62, %t63
  %t68 = add i64 %t66, 1
  %t70 = extractvalue { i64, ptr } %t55, 1
  %t71 = extractvalue { i64, ptr } %t55, 0
  %t72 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t73 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  %t74 = add i64 %t71, %t73
  %t76 = call i64 @__olang_fmt_i64(ptr null, i64 %t58)
  %t77 = add i64 %t74, %t76
  %t78 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t79 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  %t80 = add i64 %t77, %t79
  %t82 = call i64 @__olang_fmt_i64(ptr null, i64 %t68)
  %t83 = add i64 %t80, %t82
  %t84 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t83)
  call void @olang_textcopy(ptr %t84, ptr %t70, i64 %t71)
  %t85 = getelementptr i8, ptr %t84, i64 %t71
  call void @olang_textcopy(ptr %t85, ptr %t72, i64 %t73)
  %t86 = getelementptr i8, ptr %t85, i64 %t73
  %t87 = call i64 @__olang_fmt_i64(ptr %t86, i64 %t58)
  %t88 = getelementptr i8, ptr %t86, i64 %t76
  call void @olang_textcopy(ptr %t88, ptr %t78, i64 %t79)
  %t89 = getelementptr i8, ptr %t88, i64 %t79
  %t90 = call i64 @__olang_fmt_i64(ptr %t89, i64 %t68)
  %t91 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t92 = insertvalue { i64, ptr } %t91, ptr %t84, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t92, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNameLines(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l12 = alloca i1
  %l13 = alloca i64
  %l16 = alloca i64
  %l19 = alloca ptr
  %l20 = alloca i64
  %l23 = alloca i64
  %l29 = alloca i64
  %l32 = alloca i64
  %l52 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb4
bb2:
  %t5 = load i64, ptr %l1, !tbaa !24
  store i64 %t5, ptr %l13, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/diag:Diagnostics", ptr %t6, i32 0, i32 1
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l16
  br label %bb3
bb3:
  %t11 = load i64, ptr %l13, !tbaa !24
  %t12 = load i64, ptr %l16, !tbaa !24
  %t13 = icmp sge i64 %t11, %t12
  store i1 %t13, ptr %l12, !tbaa !21
  br label %bb4
bb4:
  %t15 = load i1, ptr %l12, !tbaa !21
  br i1 %t15, label %bb5, label %bb6
bb5:
  br label %ret
bb6:
  br label %bb7
bb7:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/diag:Diagnostics", ptr %t16, i32 0, i32 27
  store ptr %t18, ptr %l19, !tbaa !29
  %t19 = load i64, ptr %l1, !tbaa !24
  store i64 %t19, ptr %l20, !tbaa !24
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/diag:Diagnostics", ptr %t20, i32 0, i32 28
  %t24 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t22)
  store i64 %t24, ptr %l23
  br label %bb8
bb8:
  %t25 = load ptr, ptr %l19, !tbaa !29
  %t26 = load i64, ptr %l20, !tbaa !24
  %t27 = load i64, ptr %l23, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t25, i64 %t26, i64 %t27)
  br label %bb9
bb9:
  store i64 0, ptr %l4, !tbaa !24
  %t28 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t28, 0
  store i64 %t30, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t32 = load i64, ptr %l5, !tbaa !24
  %t33 = load i64, ptr %l4, !tbaa !24
  %t36 = icmp sgt i64 %t32, %t33
  br i1 %t36, label %bb10, label %bb11
bb10:
  %t38 = load i64, ptr %l6, !tbaa !24
  %t40 = icmp sgt i64 %t38, 0
  br i1 %t40, label %bb12, label %bb13
bb11:
  store i64 0, ptr %l29, !tbaa !24
  br label %bb15
bb12:
  %t42 = load i64, ptr %l5, !tbaa !24
  %t43 = load i64, ptr %l4, !tbaa !24
  %t46 = sub i64 %t42, %t43
  %t47 = load i64, ptr %l6, !tbaa !24
  %t50 = add i64 %t46, %t47
  %t52 = sub i64 %t50, 1
  %t53 = load i64, ptr %l6, !tbaa !24
  %t56 = sdiv i64 %t52, %t53
  store i64 %t56, ptr %l32, !tbaa !24
  br label %bb14
bb13:
  store i64 0, ptr %l32, !tbaa !24
  br label %bb14
bb14:
  %t58 = load i64, ptr %l32, !tbaa !24
  store i64 %t58, ptr %l29, !tbaa !24
  br label %bb15
bb15:
  %t59 = load i64, ptr %l29, !tbaa !24
  store i64 %t59, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb16
bb16:
  %t60 = load i64, ptr %l8, !tbaa !24
  %t61 = load i64, ptr %l7, !tbaa !24
  %t64 = icmp slt i64 %t60, %t61
  %t66 = xor i1 %t64, true
  br i1 %t66, label %bb17, label %bb18
bb17:
  br label %bb23
bb18:
  br label %bb19
bb19:
  %t68 = load i64, ptr %l4, !tbaa !24
  %t69 = load i64, ptr %l8, !tbaa !24
  %t70 = load i64, ptr %l6, !tbaa !24
  %t73 = mul i64 %t69, %t70
  %t76 = add i64 %t68, %t73
  store i64 %t76, ptr %l9, !tbaa !24
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/diag:Diagnostics", ptr %t78, i32 0, i32 28
  %t81 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t81, ptr %l52, !tbaa !27
  %t82 = load i64, ptr %l9, !tbaa !24
  %t84 = getelementptr { i64, ptr }, ptr %l52, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !27
  %t86 = getelementptr { i64, ptr }, ptr %t85, i64 %t82
  %t87 = load { i64, ptr }, ptr %t86, !tbaa !37
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %t80, { i64, ptr } %t87)
  br label %bb20
bb20:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/diag:Diagnostics", ptr %t90, i32 0, i32 29
  store { i64, ptr } %a3, ptr %l57, !tbaa !27
  %t94 = load i64, ptr %l9, !tbaa !24
  %t96 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !27
  %t98 = getelementptr i64, ptr %t97, i64 %t94
  %t99 = load i64, ptr %t98, !tbaa !34
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t92, i64 %t99)
  br label %bb21
bb21:
  br label %bb22
bb22:
  %t102 = load i64, ptr %l8, !tbaa !24
  %t104 = add i64 %t102, 1
  store i64 %t104, ptr %l8, !tbaa !24
  br label %bb16
bb23:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, [3 x i64] } %a2, %"compiler/diagmsg:Msg" %a3) #0 {
entry:
  %l1 = alloca i64
  %l3 = alloca %"compiler/diagmsg:Msg"
  %l7 = alloca ptr
  %l11 = alloca %"compiler/diag:note"
  store i64 %a1, ptr %l1
  store %"compiler/diagmsg:Msg" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = getelementptr %"compiler/diag:Diagnostics", ptr %a0, i32 0, i32 8
  store ptr %t7, ptr %l7, !tbaa !29
  %t8 = load i64, ptr %l1, !tbaa !24
  %t10 = getelementptr %"compiler/diagmsg:Msg", ptr %l3, i32 0, i32 2
  %t11 = load { i64, ptr }, ptr %t10, !tbaa !27
  %t15 = call %"compiler/diag:note" @compiler_2fdiag_3anote_2ector(ptr %v1, ptr %v0, i64 %t8, { i64, [3 x i64] } %a2, { i64, ptr } %t11, i1 false, i1 false)
  store %"compiler/diag:note" %t15, ptr %l11
  br label %bb4
bb4:
  %t16 = load ptr, ptr %l7, !tbaa !29
  %t17 = load %"compiler/diag:note", ptr %l11
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3anote_3e_2ePush_3ccompiler_2fdiag_3anote_3e(ptr %v0, ptr %v0, ptr %t16, %"compiler/diag:note" %t17)
  br label %bb5
bb5:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2ePathOf(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i1
  %l5 = alloca i64
  %l8 = alloca i64
  %l10 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp sge i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i64, ptr %l1, !tbaa !24
  store i64 %t5, ptr %l5, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/diag:Diagnostics", ptr %t6, i32 0, i32 1
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l8
  br label %bb3
bb2:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb4
bb3:
  %t11 = load i64, ptr %l5, !tbaa !24
  %t12 = load i64, ptr %l8, !tbaa !24
  %t13 = icmp slt i64 %t11, %t12
  store i1 %t13, ptr %l4, !tbaa !21
  br label %bb4
bb4:
  %t15 = load i1, ptr %l4, !tbaa !21
  br i1 %t15, label %bb5, label %bb6
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/diag:Diagnostics", ptr %t16, i32 0, i32 1
  %t19 = load i64, ptr %l1, !tbaa !24
  %t22 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %s0, ptr %t18, i64 %t19)
  store { i64, ptr } %t22, ptr %l14
  br label %bb7
bb6:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, ptr %l16, !tbaa !27
  %t23 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t23, ptr %l10, !tbaa !27
  br label %bb8
bb7:
  %t25 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t25, 1
  %t27 = extractvalue { i64, ptr } %t25, 0
  %t28 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t27)
  call void @olang_textcopy(ptr %t28, ptr %t26, i64 %t27)
  %t29 = insertvalue { i64, ptr } undef, i64 %t27, 0
  %t30 = insertvalue { i64, ptr } %t29, ptr %t28, 1
  store { i64, ptr } %t30, ptr %l10, !tbaa !27
  br label %bb8
bb8:
  %t32 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t33 = extractvalue { i64, ptr } %t32, 0
  store i64 %t33, ptr %l18, !tbaa !24
  %t34 = load i64, ptr %l18, !tbaa !24
  %t35 = mul i64 %t34, 1
  %t36 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t35)
  %t37 = insertvalue { i64, ptr } undef, i64 %t34, 0
  %t38 = insertvalue { i64, ptr } %t37, ptr %t36, 1
  store { i64, ptr } %t38, ptr %l19, !tbaa !27
  %t39 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !27
  %t41 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !27
  %t43 = load i64, ptr %l18, !tbaa !24
  %t44 = mul i64 %t43, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t40, ptr %t42, i64 %t44, i1 false)
  %t45 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t45, ptr %l10, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t46 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t46, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2ePopContext(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/diag:context"
  %l4 = alloca %"compiler/diag:context"
  %l5 = alloca i32
  %s0 = alloca %olang.scope
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"compiler/diag:Diagnostics", ptr %a0, i32 0, i32 12
  %t5 = call { i32, %"compiler/diag:context" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3acontext_3e_2ePop_3ccompiler_2fdiag_3acontext_3e(ptr %v0, ptr %s0, ptr %t3)
  %t6 = extractvalue { i32, %"compiler/diag:context" } %t5, 1
  %t7 = extractvalue { i32, %"compiler/diag:context" } %t5, 0
  store i32 %t7, ptr %l5
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb2, label %ok.9, !prof !99
ok.9:
  store %"compiler/diag:context" %t6, ptr %l4
  br label %bb1
bb1:
  %t10 = load %"compiler/diag:context", ptr %l4
  store %"compiler/diag:context" %t10, ptr %l1
  br label %bb4
bb2:
  br label %bb3
bb3:
  br label %bb4
bb4:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2ePushContext(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, { i64, ptr } %a2) #0 {
entry:
  %l4 = alloca ptr
  %l7 = alloca %"compiler/diag:context"
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/diag:Diagnostics", ptr %a0, i32 0, i32 12
  store ptr %t3, ptr %l4, !tbaa !29
  %t8 = call %"compiler/diag:context" @compiler_2fdiag_3acontext_2ector(ptr %v1, ptr %v0, { i64, [3 x i64] } %a1, { i64, ptr } %a2)
  store %"compiler/diag:context" %t8, ptr %l7
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l4, !tbaa !29
  %t10 = load %"compiler/diag:context", ptr %l7
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3acontext_3e_2ePush_3ccompiler_2fdiag_3acontext_3e(ptr %v0, ptr %v0, ptr %t9, %"compiler/diag:context" %t10)
  br label %bb2
bb2:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eRecordCount(ptr %v0, ptr %a0) #0 {
entry:
  %l3 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/diag:Diagnostics", ptr %a0, i32 0, i32 7
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2eLen_3ccompiler_2fdiag_3arecord_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load i64, ptr %l3, !tbaa !24
  store i64 %t6, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eRender(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/prelude/text:StringBuilder"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca %"compiler/diag:record"
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca %"compiler/diag:note"
  %l10 = alloca ptr
  %l11 = alloca i64
  %l12 = alloca %"compiler/diag:note"
  %l13 = alloca %"std/prelude/text:StringBuilder"
  %l15 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l29 = alloca %"compiler/diag:record"
  %l37 = alloca i64
  %l39 = alloca i64
  %l44 = alloca %"compiler/diag:note"
  %l48 = alloca i1
  %l58 = alloca i64
  %l60 = alloca i64
  %l65 = alloca %"compiler/diag:note"
  %l69 = alloca i1
  %l84 = alloca ptr
  %l88 = alloca { i64, ptr }
  %l115 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l13
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l13
  store %"std/prelude/text:StringBuilder" %t2, ptr %l1
  store %olang.scope zeroinitializer, ptr %s1
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2ewritten(ptr %v0, ptr %s1, ptr %t3)
  store { i64, ptr } %t5, ptr %l15
  br label %bb2
bb2:
  %t6 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t6, 0
  %t8 = extractvalue { i64, ptr } %t6, 1
  %t9 = mul i64 %t7, 8
  %t10 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t9)
  call void @llvm.memcpy.p0.p0.i64(ptr %t10, ptr %t8, i64 %t9, i1 false)
  %t11 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t12 = insertvalue { i64, ptr } %t11, ptr %t10, 1
  store { i64, ptr } %t12, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t14 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t14, 0
  store i64 %t16, ptr %l4, !tbaa !24
  br label %bb3
bb3:
  store %olang.scope zeroinitializer, ptr %s2
  %t18 = load i64, ptr %l3, !tbaa !24
  %t19 = load i64, ptr %l4, !tbaa !24
  %t22 = icmp slt i64 %t18, %t19
  %t24 = xor i1 %t22, true
  br i1 %t24, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s2)
  br label %bb40
bb5:
  br label %bb6
bb6:
  %t26 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t26, ptr %l23, !tbaa !27
  %t27 = load i64, ptr %l3, !tbaa !24
  %t29 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = getelementptr i64, ptr %t30, i64 %t27
  %t32 = load i64, ptr %t31, !tbaa !34
  store i64 %t32, ptr %l5, !tbaa !24
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/diag:Diagnostics", ptr %t34, i32 0, i32 7
  %t37 = load i64, ptr %l5, !tbaa !24
  %t40 = call %"compiler/diag:record" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2eAt_3ccompiler_2fdiag_3arecord_3e(ptr %v0, ptr %v0, ptr %t36, i64 %t37)
  store %"compiler/diag:record" %t40, ptr %l29
  br label %bb7
bb7:
  %t41 = load %"compiler/diag:record", ptr %l29
  store %"compiler/diag:record" %t41, ptr %l6
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/diag:record", ptr %l6, i32 0, i32 0
  %t44 = load { i64, [3 x i64] }, ptr %t43
  %t45 = getelementptr %"compiler/diag:record", ptr %l6, i32 0, i32 1
  %t46 = load { i64, ptr }, ptr %t45, !tbaa !27
  %t47 = getelementptr %"compiler/diag:record", ptr %l6, i32 0, i32 2
  %t48 = load { i64, ptr }, ptr %t47, !tbaa !27
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eputRow(ptr %v0, ptr %s0, ptr %s2, ptr %v0, ptr %v0, ptr %t42, ptr %l1, { i64, [3 x i64] } %t44, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d16, i32 0, i32 1) }, { i64, ptr } %t46, { i64, ptr } %t48)
  br label %bb8
bb8:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/diag:Diagnostics", ptr %t54, i32 0, i32 8
  store ptr %t56, ptr %l7, !tbaa !29
  store i64 0, ptr %l8, !tbaa !24
  br label %bb9
bb9:
  store %olang.scope zeroinitializer, ptr %s4
  %t58 = load i64, ptr %l8, !tbaa !24
  store i64 %t58, ptr %l37, !tbaa !24
  %t59 = load ptr, ptr %l7, !tbaa !29
  %t61 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3anote_3e_2eLen_3ccompiler_2fdiag_3anote_3e(ptr %v0, ptr %t59)
  store i64 %t61, ptr %l39
  br label %bb10
bb10:
  %t62 = load i64, ptr %l37, !tbaa !24
  %t63 = load i64, ptr %l39, !tbaa !24
  %t64 = icmp slt i64 %t62, %t63
  %t66 = xor i1 %t64, true
  br i1 %t66, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s4)
  br label %bb23
bb12:
  br label %bb13
bb13:
  %t68 = load ptr, ptr %l7, !tbaa !29
  %t69 = load i64, ptr %l8, !tbaa !24
  %t72 = call %"compiler/diag:note" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3anote_3e_2eAt_3ccompiler_2fdiag_3anote_3e(ptr %v0, ptr %v0, ptr %t68, i64 %t69)
  store %"compiler/diag:note" %t72, ptr %l44
  br label %bb14
bb14:
  %t73 = load %"compiler/diag:note", ptr %l44
  store %"compiler/diag:note" %t73, ptr %l9
  %t74 = getelementptr %"compiler/diag:note", ptr %l9, i32 0, i32 0
  %t75 = load i64, ptr %t74, !tbaa !24
  %t76 = load i64, ptr %l5, !tbaa !24
  %t79 = icmp eq i64 %t75, %t76
  br i1 %t79, label %bb15, label %bb16
bb15:
  %t81 = getelementptr %"compiler/diag:note", ptr %l9, i32 0, i32 3
  %t82 = load i1, ptr %t81, !tbaa !21
  %t84 = xor i1 %t82, true
  store i1 %t84, ptr %l48, !tbaa !21
  br label %bb17
bb16:
  store i1 false, ptr %l48, !tbaa !21
  br label %bb17
bb17:
  %t86 = load i1, ptr %l48, !tbaa !21
  br i1 %t86, label %bb18, label %bb19
bb18:
  %t87 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eputNote(ptr %v0, ptr %s0, ptr %s4, ptr %t87, ptr %l1, ptr %l9)
  br label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s4)
  br label %bb22
bb22:
  %t91 = load i64, ptr %l8, !tbaa !24
  %t93 = add i64 %t91, 1
  store i64 %t93, ptr %l8, !tbaa !24
  br label %bb9
bb23:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"compiler/diag:Diagnostics", ptr %t95, i32 0, i32 8
  store ptr %t97, ptr %l10, !tbaa !29
  store i64 0, ptr %l11, !tbaa !24
  br label %bb24
bb24:
  store %olang.scope zeroinitializer, ptr %s8
  %t99 = load i64, ptr %l11, !tbaa !24
  store i64 %t99, ptr %l58, !tbaa !24
  %t100 = load ptr, ptr %l10, !tbaa !29
  %t102 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3anote_3e_2eLen_3ccompiler_2fdiag_3anote_3e(ptr %v0, ptr %t100)
  store i64 %t102, ptr %l60
  br label %bb25
bb25:
  %t103 = load i64, ptr %l58, !tbaa !24
  %t104 = load i64, ptr %l60, !tbaa !24
  %t105 = icmp slt i64 %t103, %t104
  %t107 = xor i1 %t105, true
  br i1 %t107, label %bb26, label %bb27
bb26:
  call void @__olang_scope_close(ptr %s8)
  br label %bb38
bb27:
  br label %bb28
bb28:
  %t109 = load ptr, ptr %l10, !tbaa !29
  %t110 = load i64, ptr %l11, !tbaa !24
  %t113 = call %"compiler/diag:note" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3anote_3e_2eAt_3ccompiler_2fdiag_3anote_3e(ptr %v0, ptr %v0, ptr %t109, i64 %t110)
  store %"compiler/diag:note" %t113, ptr %l65
  br label %bb29
bb29:
  %t114 = load %"compiler/diag:note", ptr %l65
  store %"compiler/diag:note" %t114, ptr %l12
  %t115 = getelementptr %"compiler/diag:note", ptr %l12, i32 0, i32 0
  %t116 = load i64, ptr %t115, !tbaa !24
  %t117 = load i64, ptr %l5, !tbaa !24
  %t120 = icmp eq i64 %t116, %t117
  br i1 %t120, label %bb30, label %bb31
bb30:
  %t122 = getelementptr %"compiler/diag:note", ptr %l12, i32 0, i32 3
  %t123 = load i1, ptr %t122, !tbaa !21
  store i1 %t123, ptr %l69, !tbaa !21
  br label %bb32
bb31:
  store i1 false, ptr %l69, !tbaa !21
  br label %bb32
bb32:
  %t125 = load i1, ptr %l69, !tbaa !21
  br i1 %t125, label %bb33, label %bb34
bb33:
  %t126 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eputNote(ptr %v0, ptr %s0, ptr %s8, ptr %t126, ptr %l1, ptr %l12)
  br label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb36
bb36:
  call void @__olang_scope_close(ptr %s8)
  br label %bb37
bb37:
  %t130 = load i64, ptr %l11, !tbaa !24
  %t132 = add i64 %t130, 1
  store i64 %t132, ptr %l11, !tbaa !24
  br label %bb24
bb38:
  call void @__olang_scope_close(ptr %s2)
  br label %bb39
bb39:
  %t134 = load i64, ptr %l3, !tbaa !24
  %t136 = add i64 %t134, 1
  store i64 %t136, ptr %l3, !tbaa !24
  br label %bb3
bb40:
  call void @__olang_scope_close(ptr %s1)
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t140 = getelementptr %"compiler/diag:Diagnostics", ptr %t138, i32 0, i32 23
  %t141 = load i1, ptr %t140, !tbaa !21
  br i1 %t141, label %bb41, label %bb42
bb41:
  store %olang.scope zeroinitializer, ptr %s12
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t146 = getelementptr %"compiler/diag:Diagnostics", ptr %t144, i32 0, i32 18
  %t147 = load { i64, [3 x i64] }, ptr %t146
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eputLocation(ptr %v0, ptr %s0, ptr %t143, ptr %l1, { i64, [3 x i64] } %t147)
  br label %bb43
bb42:
  br label %bb56
bb43:
  store ptr %l1, ptr %l84, !tbaa !29
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t154 = getelementptr %"compiler/diag:Diagnostics", ptr %t152, i32 0, i32 19
  %t155 = load { i64, ptr }, ptr %t154, !tbaa !27
  %t158 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eerrorWord(ptr %v0, ptr %v0, ptr %s12, ptr %t151, { i64, ptr } %t155)
  store { i64, ptr } %t158, ptr %l88
  br label %bb44
bb44:
  %t159 = load { i64, ptr }, ptr %l88, !tbaa !27
  %t160 = extractvalue { i64, ptr } %t159, 0
  %t161 = extractvalue { i64, ptr } %t159, 1
  %t162 = mul i64 %t160, 1
  %t163 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t162)
  call void @llvm.memcpy.p0.p0.i64(ptr %t163, ptr %t161, i64 %t162, i1 false)
  %t164 = insertvalue { i64, ptr } undef, i64 %t160, 0
  %t165 = insertvalue { i64, ptr } %t164, ptr %t163, 1
  %t166 = load ptr, ptr %l84, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s12, ptr %t166, { i64, ptr } %t165)
  br label %bb45
bb45:
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t170 = getelementptr %"compiler/diag:Diagnostics", ptr %t168, i32 0, i32 20
  %t171 = load { i64, ptr }, ptr %t170, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v0, ptr %l1, { i64, ptr } %t171)
  br label %bb46
bb46:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 10)
  br label %bb47
bb47:
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t177 = getelementptr %"compiler/diag:Diagnostics", ptr %t175, i32 0, i32 21
  %t178 = load { i64, ptr }, ptr %t177, !tbaa !27
  %t180 = extractvalue { i64, ptr } %t178, 0
  %t182 = icmp sgt i64 %t180, 0
  br i1 %t182, label %bb48, label %bb49
bb48:
  store %olang.scope zeroinitializer, ptr %s13
  %t184 = load ptr, ptr %l0, !tbaa !29
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t187 = getelementptr %"compiler/diag:Diagnostics", ptr %t185, i32 0, i32 18
  %t188 = load { i64, [3 x i64] }, ptr %t187
  %t189 = load ptr, ptr %l0, !tbaa !29
  %t191 = getelementptr %"compiler/diag:Diagnostics", ptr %t189, i32 0, i32 21
  %t192 = load { i64, ptr }, ptr %t191, !tbaa !27
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eputPlain(ptr %v0, ptr %s0, ptr %s13, ptr %v0, ptr %t184, ptr %l1, { i64, [3 x i64] } %t188, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d17, i32 0, i32 1) }, { i64, ptr } %t192)
  br label %bb50
bb49:
  br label %bb51
bb50:
  call void @__olang_scope_close(ptr %s13)
  br label %bb51
bb51:
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t199 = getelementptr %"compiler/diag:Diagnostics", ptr %t197, i32 0, i32 22
  %t200 = load { i64, ptr }, ptr %t199, !tbaa !27
  %t202 = extractvalue { i64, ptr } %t200, 0
  %t204 = icmp sgt i64 %t202, 0
  br i1 %t204, label %bb52, label %bb53
bb52:
  store %olang.scope zeroinitializer, ptr %s14
  %t206 = load ptr, ptr %l0, !tbaa !29
  %t207 = load ptr, ptr %l0, !tbaa !29
  %t209 = getelementptr %"compiler/diag:Diagnostics", ptr %t207, i32 0, i32 18
  %t210 = load { i64, [3 x i64] }, ptr %t209
  %t211 = load ptr, ptr %l0, !tbaa !29
  %t213 = getelementptr %"compiler/diag:Diagnostics", ptr %t211, i32 0, i32 22
  %t214 = load { i64, ptr }, ptr %t213, !tbaa !27
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eputPlain(ptr %v0, ptr %s0, ptr %s14, ptr %v0, ptr %t206, ptr %l1, { i64, [3 x i64] } %t210, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d18, i32 0, i32 1) }, { i64, ptr } %t214)
  br label %bb54
bb53:
  br label %bb55
bb54:
  call void @__olang_scope_close(ptr %s14)
  br label %bb55
bb55:
  call void @__olang_scope_close(ptr %s12)
  br label %bb56
bb56:
  %t220 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l1)
  store { i64, ptr } %t220, ptr %l115
  br label %bb57
bb57:
  call void @__olang_scope_close(ptr %s0)
  %t221 = load { i64, ptr }, ptr %l115, !tbaa !27
  store { i64, ptr } %t221, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eReopen(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/diag:Diagnostics", ptr %a0, i32 0, i32 11
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t3, i64 %a1)
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eReplay(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca %"compiler/diag:note"
  %l9 = alloca ptr
  %l10 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca i64
  %l17 = alloca i64
  %l20 = alloca i64
  %l22 = alloca i64
  %l27 = alloca %"compiler/diag:record"
  %l35 = alloca i64
  %l37 = alloca i64
  %l42 = alloca %"compiler/diag:note"
  %l44 = alloca ptr
  %l52 = alloca %"compiler/diag:note"
  %l57 = alloca i64
  %l59 = alloca i64
  %l64 = alloca i64
  %l74 = alloca i64
  %l76 = alloca i64
  %l81 = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/diag:Diagnostics", ptr %t1, i32 0, i32 7
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2eLen_3ccompiler_2fdiag_3arecord_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l17
  br label %bb1
bb1:
  %t6 = load i64, ptr %l17, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  %t7 = load ptr, ptr %l1, !tbaa !29
  %t9 = getelementptr %"compiler/diag:Taken", ptr %t7, i32 0, i32 0
  store ptr %t9, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t11 = load i64, ptr %l4, !tbaa !24
  store i64 %t11, ptr %l20, !tbaa !24
  %t12 = load ptr, ptr %l3, !tbaa !29
  %t14 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2eLen_3ccompiler_2fdiag_3arecord_3e(ptr %v1, ptr %t12)
  store i64 %t14, ptr %l22
  br label %bb3
bb3:
  %t15 = load i64, ptr %l20, !tbaa !24
  %t16 = load i64, ptr %l22, !tbaa !24
  %t17 = icmp slt i64 %t15, %t16
  %t19 = xor i1 %t17, true
  br i1 %t19, label %bb4, label %bb5
bb4:
  br label %bb10
bb5:
  br label %bb6
bb6:
  %t21 = load ptr, ptr %l3, !tbaa !29
  %t22 = load i64, ptr %l4, !tbaa !24
  %t25 = call %"compiler/diag:record" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2eAt_3ccompiler_2fdiag_3arecord_3e(ptr %v1, ptr %v1, ptr %t21, i64 %t22)
  store %"compiler/diag:record" %t25, ptr %l27
  br label %bb7
bb7:
  %t26 = load %"compiler/diag:record", ptr %l27
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/diag:Diagnostics", ptr %t27, i32 0, i32 7
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2ePush_3ccompiler_2fdiag_3arecord_3e(ptr %v0, ptr %v1, ptr %t29, %"compiler/diag:record" %t26)
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t33 = load i64, ptr %l4, !tbaa !24
  %t35 = add i64 %t33, 1
  store i64 %t35, ptr %l4, !tbaa !24
  br label %bb2
bb10:
  %t37 = load ptr, ptr %l1, !tbaa !29
  %t39 = getelementptr %"compiler/diag:Taken", ptr %t37, i32 0, i32 1
  store ptr %t39, ptr %l6, !tbaa !29
  store i64 0, ptr %l7, !tbaa !24
  br label %bb11
bb11:
  %t41 = load i64, ptr %l7, !tbaa !24
  store i64 %t41, ptr %l35, !tbaa !24
  %t42 = load ptr, ptr %l6, !tbaa !29
  %t44 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3anote_3e_2eLen_3ccompiler_2fdiag_3anote_3e(ptr %v1, ptr %t42)
  store i64 %t44, ptr %l37
  br label %bb12
bb12:
  %t45 = load i64, ptr %l35, !tbaa !24
  %t46 = load i64, ptr %l37, !tbaa !24
  %t47 = icmp slt i64 %t45, %t46
  %t49 = xor i1 %t47, true
  br i1 %t49, label %bb13, label %bb14
bb13:
  br label %bb20
bb14:
  br label %bb15
bb15:
  %t51 = load ptr, ptr %l6, !tbaa !29
  %t52 = load i64, ptr %l7, !tbaa !24
  %t55 = call %"compiler/diag:note" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3anote_3e_2eAt_3ccompiler_2fdiag_3anote_3e(ptr %v1, ptr %v1, ptr %t51, i64 %t52)
  store %"compiler/diag:note" %t55, ptr %l42
  br label %bb16
bb16:
  %t56 = load %"compiler/diag:note", ptr %l42
  store %"compiler/diag:note" %t56, ptr %l8
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/diag:Diagnostics", ptr %t57, i32 0, i32 8
  store ptr %t59, ptr %l44, !tbaa !29
  %t60 = getelementptr %"compiler/diag:note", ptr %l8, i32 0, i32 0
  %t61 = load i64, ptr %t60, !tbaa !24
  %t62 = load i64, ptr %l2, !tbaa !24
  %t65 = add i64 %t61, %t62
  %t66 = getelementptr %"compiler/diag:note", ptr %l8, i32 0, i32 1
  %t67 = load { i64, [3 x i64] }, ptr %t66
  %t68 = getelementptr %"compiler/diag:note", ptr %l8, i32 0, i32 2
  %t69 = load { i64, ptr }, ptr %t68, !tbaa !27
  %t70 = getelementptr %"compiler/diag:note", ptr %l8, i32 0, i32 3
  %t71 = load i1, ptr %t70, !tbaa !21
  %t72 = getelementptr %"compiler/diag:note", ptr %l8, i32 0, i32 4
  %t73 = load i1, ptr %t72, !tbaa !21
  %t79 = call %"compiler/diag:note" @compiler_2fdiag_3anote_2ector(ptr %v1, ptr %v0, i64 %t65, { i64, [3 x i64] } %t67, { i64, ptr } %t69, i1 %t71, i1 %t73)
  store %"compiler/diag:note" %t79, ptr %l52
  br label %bb17
bb17:
  %t80 = load ptr, ptr %l44, !tbaa !29
  %t81 = load %"compiler/diag:note", ptr %l52
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3anote_3e_2ePush_3ccompiler_2fdiag_3anote_3e(ptr %v0, ptr %v0, ptr %t80, %"compiler/diag:note" %t81)
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t82 = load i64, ptr %l7, !tbaa !24
  %t84 = add i64 %t82, 1
  store i64 %t84, ptr %l7, !tbaa !24
  br label %bb11
bb20:
  %t86 = load ptr, ptr %l1, !tbaa !29
  %t88 = getelementptr %"compiler/diag:Taken", ptr %t86, i32 0, i32 2
  store ptr %t88, ptr %l9, !tbaa !29
  store i64 0, ptr %l10, !tbaa !24
  br label %bb21
bb21:
  %t90 = load i64, ptr %l10, !tbaa !24
  store i64 %t90, ptr %l57, !tbaa !24
  %t91 = load ptr, ptr %l9, !tbaa !29
  %t93 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t91)
  store i64 %t93, ptr %l59
  br label %bb22
bb22:
  %t94 = load i64, ptr %l57, !tbaa !24
  %t95 = load i64, ptr %l59, !tbaa !24
  %t96 = icmp slt i64 %t94, %t95
  %t98 = xor i1 %t96, true
  br i1 %t98, label %bb23, label %bb24
bb23:
  br label %bb29
bb24:
  br label %bb25
bb25:
  %t100 = load ptr, ptr %l9, !tbaa !29
  %t101 = load i64, ptr %l10, !tbaa !24
  %t104 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t100, i64 %t101)
  store i64 %t104, ptr %l64
  br label %bb26
bb26:
  %t105 = load i64, ptr %l64, !tbaa !24
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"compiler/diag:Diagnostics", ptr %t106, i32 0, i32 16
  %t110 = load i64, ptr %l2, !tbaa !24
  %t113 = add i64 %t105, %t110
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t108, i64 %t113)
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t116 = load i64, ptr %l10, !tbaa !24
  %t118 = add i64 %t116, 1
  store i64 %t118, ptr %l10, !tbaa !24
  br label %bb21
bb29:
  %t120 = load ptr, ptr %l1, !tbaa !29
  %t122 = getelementptr %"compiler/diag:Taken", ptr %t120, i32 0, i32 3
  store ptr %t122, ptr %l12, !tbaa !29
  store i64 0, ptr %l13, !tbaa !24
  br label %bb30
bb30:
  %t124 = load i64, ptr %l13, !tbaa !24
  store i64 %t124, ptr %l74, !tbaa !24
  %t125 = load ptr, ptr %l12, !tbaa !29
  %t127 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t125)
  store i64 %t127, ptr %l76
  br label %bb31
bb31:
  %t128 = load i64, ptr %l74, !tbaa !24
  %t129 = load i64, ptr %l76, !tbaa !24
  %t130 = icmp slt i64 %t128, %t129
  %t132 = xor i1 %t130, true
  br i1 %t132, label %bb32, label %bb33
bb32:
  br label %bb38
bb33:
  br label %bb34
bb34:
  %t134 = load ptr, ptr %l12, !tbaa !29
  %t135 = load i64, ptr %l13, !tbaa !24
  %t138 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t134, i64 %t135)
  store i64 %t138, ptr %l81
  br label %bb35
bb35:
  %t139 = load i64, ptr %l81, !tbaa !24
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t142 = getelementptr %"compiler/diag:Diagnostics", ptr %t140, i32 0, i32 17
  %t144 = load i64, ptr %l2, !tbaa !24
  %t147 = add i64 %t139, %t144
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t142, i64 %t147)
  br label %bb36
bb36:
  br label %bb37
bb37:
  %t150 = load i64, ptr %l13, !tbaa !24
  %t152 = add i64 %t150, 1
  store i64 %t152, ptr %l13, !tbaa !24
  br label %bb30
bb38:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eScopeGroupEnd(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t4 = srem i64 %t2, 2
  %t6 = icmp eq i64 %t4, 1
  %t9 = getelementptr %"compiler/diag:Diagnostics", ptr %t1, i32 0, i32 14
  store i1 %t6, ptr %t9, !tbaa !21
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load i64, ptr %l1, !tbaa !24
  %t13 = sdiv i64 %t11, 2
  %t15 = icmp eq i64 %t13, 1
  %t18 = getelementptr %"compiler/diag:Diagnostics", ptr %t10, i32 0, i32 15
  store i1 %t15, ptr %t18, !tbaa !21
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eScopeGroupStart(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca i64
  %l7 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/diag:Diagnostics", ptr %t1, i32 0, i32 14
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i64 1, ptr %l4, !tbaa !24
  br label %bb3
bb2:
  store i64 0, ptr %l4, !tbaa !24
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/diag:Diagnostics", ptr %t6, i32 0, i32 15
  %t9 = load i1, ptr %t8, !tbaa !21
  br i1 %t9, label %bb4, label %bb5
bb4:
  store i64 2, ptr %l7, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l7, !tbaa !24
  br label %bb6
bb6:
  %t11 = load i64, ptr %l4, !tbaa !24
  %t12 = load i64, ptr %l7, !tbaa !24
  %t13 = add i64 %t11, %t12
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/diag:Diagnostics", ptr %t15, i32 0, i32 14
  store i1 true, ptr %t17, !tbaa !21
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/diag:Diagnostics", ptr %t18, i32 0, i32 15
  store i1 false, ptr %t20, !tbaa !21
  store i64 %t13, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"compiler/diag:Taken" @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eSince(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %lp2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca %"compiler/diag:note"
  %l12 = alloca ptr
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca ptr
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca %"compiler/diag:Taken"
  %l22 = alloca i64
  %l26 = alloca i64
  %l29 = alloca i64
  %l47 = alloca ptr
  %l51 = alloca %"compiler/diag:record"
  %l56 = alloca i64
  %l58 = alloca i64
  %l63 = alloca %"compiler/diag:note"
  %l67 = alloca ptr
  %l75 = alloca %"compiler/diag:note"
  %l80 = alloca i64
  %l82 = alloca i64
  %l87 = alloca i64
  %l99 = alloca i64
  %l101 = alloca i64
  %l106 = alloca i64
  %rv = alloca %"compiler/diag:Taken"
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"compiler/diag:Taken" @compiler_2fdiag_3aTaken_2ector(ptr %v1)
  store %"compiler/diag:Taken" %t1, ptr %l18
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 128, i64 8)
  store ptr %t2, ptr %lp2
  %t3 = load %"compiler/diag:Taken", ptr %l18
  %t4 = load ptr, ptr %lp2
  store %"compiler/diag:Taken" %t3, ptr %t4
  %t5 = load i64, ptr %l1, !tbaa !24
  store i64 %t5, ptr %l3, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/diag:Diagnostics", ptr %t7, i32 0, i32 7
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2eLen_3ccompiler_2fdiag_3arecord_3e(ptr %v0, ptr %t9)
  store i64 %t11, ptr %l22
  br label %bb2
bb2:
  %t12 = load i64, ptr %l22, !tbaa !24
  store i64 %t12, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t13 = load i64, ptr %l4, !tbaa !24
  %t14 = load i64, ptr %l3, !tbaa !24
  %t17 = icmp sgt i64 %t13, %t14
  br i1 %t17, label %bb3, label %bb4
bb3:
  %t19 = load i64, ptr %l5, !tbaa !24
  %t21 = icmp sgt i64 %t19, 0
  br i1 %t21, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb8
bb5:
  %t23 = load i64, ptr %l4, !tbaa !24
  %t24 = load i64, ptr %l3, !tbaa !24
  %t27 = sub i64 %t23, %t24
  %t28 = load i64, ptr %l5, !tbaa !24
  %t31 = add i64 %t27, %t28
  %t33 = sub i64 %t31, 1
  %t34 = load i64, ptr %l5, !tbaa !24
  %t37 = sdiv i64 %t33, %t34
  store i64 %t37, ptr %l29, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l29, !tbaa !24
  br label %bb7
bb7:
  %t39 = load i64, ptr %l29, !tbaa !24
  store i64 %t39, ptr %l26, !tbaa !24
  br label %bb8
bb8:
  %t40 = load i64, ptr %l26, !tbaa !24
  store i64 %t40, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb9
bb9:
  %t41 = load i64, ptr %l7, !tbaa !24
  %t42 = load i64, ptr %l6, !tbaa !24
  %t45 = icmp slt i64 %t41, %t42
  %t47 = xor i1 %t45, true
  br i1 %t47, label %bb10, label %bb11
bb10:
  br label %bb16
bb11:
  br label %bb12
bb12:
  %t49 = load i64, ptr %l3, !tbaa !24
  %t50 = load i64, ptr %l7, !tbaa !24
  %t51 = load i64, ptr %l5, !tbaa !24
  %t54 = mul i64 %t50, %t51
  %t57 = add i64 %t49, %t54
  %t59 = load ptr, ptr %lp2
  %t60 = getelementptr %"compiler/diag:Taken", ptr %t59, i32 0, i32 0
  store ptr %t60, ptr %l47, !tbaa !29
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/diag:Diagnostics", ptr %t61, i32 0, i32 7
  %t67 = call %"compiler/diag:record" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2eAt_3ccompiler_2fdiag_3arecord_3e(ptr %v0, ptr %v0, ptr %t63, i64 %t57)
  store %"compiler/diag:record" %t67, ptr %l51
  br label %bb13
bb13:
  %t68 = load ptr, ptr %l47, !tbaa !29
  %t69 = load %"compiler/diag:record", ptr %l51
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2ePush_3ccompiler_2fdiag_3arecord_3e(ptr %v1, ptr %v0, ptr %t68, %"compiler/diag:record" %t69)
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t70 = load i64, ptr %l7, !tbaa !24
  %t72 = add i64 %t70, 1
  store i64 %t72, ptr %l7, !tbaa !24
  br label %bb9
bb16:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/diag:Diagnostics", ptr %t74, i32 0, i32 8
  store ptr %t76, ptr %l9, !tbaa !29
  store i64 0, ptr %l10, !tbaa !24
  br label %bb17
bb17:
  %t78 = load i64, ptr %l10, !tbaa !24
  store i64 %t78, ptr %l56, !tbaa !24
  %t79 = load ptr, ptr %l9, !tbaa !29
  %t81 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3anote_3e_2eLen_3ccompiler_2fdiag_3anote_3e(ptr %v0, ptr %t79)
  store i64 %t81, ptr %l58
  br label %bb18
bb18:
  %t82 = load i64, ptr %l56, !tbaa !24
  %t83 = load i64, ptr %l58, !tbaa !24
  %t84 = icmp slt i64 %t82, %t83
  %t86 = xor i1 %t84, true
  br i1 %t86, label %bb19, label %bb20
bb19:
  br label %bb29
bb20:
  br label %bb21
bb21:
  %t88 = load ptr, ptr %l9, !tbaa !29
  %t89 = load i64, ptr %l10, !tbaa !24
  %t92 = call %"compiler/diag:note" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3anote_3e_2eAt_3ccompiler_2fdiag_3anote_3e(ptr %v0, ptr %v0, ptr %t88, i64 %t89)
  store %"compiler/diag:note" %t92, ptr %l63
  br label %bb22
bb22:
  %t93 = load %"compiler/diag:note", ptr %l63
  store %"compiler/diag:note" %t93, ptr %l11
  %t94 = getelementptr %"compiler/diag:note", ptr %l11, i32 0, i32 0
  %t95 = load i64, ptr %t94, !tbaa !24
  %t96 = load i64, ptr %l1, !tbaa !24
  %t99 = icmp sge i64 %t95, %t96
  br i1 %t99, label %bb23, label %bb24
bb23:
  %t101 = load ptr, ptr %lp2
  %t102 = getelementptr %"compiler/diag:Taken", ptr %t101, i32 0, i32 1
  store ptr %t102, ptr %l67, !tbaa !29
  %t103 = getelementptr %"compiler/diag:note", ptr %l11, i32 0, i32 0
  %t104 = load i64, ptr %t103, !tbaa !24
  %t105 = load i64, ptr %l1, !tbaa !24
  %t108 = sub i64 %t104, %t105
  %t109 = getelementptr %"compiler/diag:note", ptr %l11, i32 0, i32 1
  %t110 = load { i64, [3 x i64] }, ptr %t109
  %t111 = getelementptr %"compiler/diag:note", ptr %l11, i32 0, i32 2
  %t112 = load { i64, ptr }, ptr %t111, !tbaa !27
  %t113 = getelementptr %"compiler/diag:note", ptr %l11, i32 0, i32 3
  %t114 = load i1, ptr %t113, !tbaa !21
  %t115 = getelementptr %"compiler/diag:note", ptr %l11, i32 0, i32 4
  %t116 = load i1, ptr %t115, !tbaa !21
  %t122 = call %"compiler/diag:note" @compiler_2fdiag_3anote_2ector(ptr %v0, ptr %v1, i64 %t108, { i64, [3 x i64] } %t110, { i64, ptr } %t112, i1 %t114, i1 %t116)
  store %"compiler/diag:note" %t122, ptr %l75
  br label %bb25
bb24:
  br label %bb27
bb25:
  %t123 = load ptr, ptr %l67, !tbaa !29
  %t124 = load %"compiler/diag:note", ptr %l75
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3anote_3e_2ePush_3ccompiler_2fdiag_3anote_3e(ptr %v1, ptr %v1, ptr %t123, %"compiler/diag:note" %t124)
  br label %bb26
bb26:
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t125 = load i64, ptr %l10, !tbaa !24
  %t127 = add i64 %t125, 1
  store i64 %t127, ptr %l10, !tbaa !24
  br label %bb17
bb29:
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t131 = getelementptr %"compiler/diag:Diagnostics", ptr %t129, i32 0, i32 16
  store ptr %t131, ptr %l12, !tbaa !29
  store i64 0, ptr %l13, !tbaa !24
  br label %bb30
bb30:
  %t133 = load i64, ptr %l13, !tbaa !24
  store i64 %t133, ptr %l80, !tbaa !24
  %t134 = load ptr, ptr %l12, !tbaa !29
  %t136 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t134)
  store i64 %t136, ptr %l82
  br label %bb31
bb31:
  %t137 = load i64, ptr %l80, !tbaa !24
  %t138 = load i64, ptr %l82, !tbaa !24
  %t139 = icmp slt i64 %t137, %t138
  %t141 = xor i1 %t139, true
  br i1 %t141, label %bb32, label %bb33
bb32:
  br label %bb41
bb33:
  br label %bb34
bb34:
  %t143 = load ptr, ptr %l12, !tbaa !29
  %t144 = load i64, ptr %l13, !tbaa !24
  %t147 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t143, i64 %t144)
  store i64 %t147, ptr %l87
  br label %bb35
bb35:
  %t148 = load i64, ptr %l87, !tbaa !24
  store i64 %t148, ptr %l14, !tbaa !24
  %t149 = load i64, ptr %l14, !tbaa !24
  %t150 = load i64, ptr %l1, !tbaa !24
  %t153 = icmp sge i64 %t149, %t150
  br i1 %t153, label %bb36, label %bb37
bb36:
  %t155 = load ptr, ptr %lp2
  %t156 = getelementptr %"compiler/diag:Taken", ptr %t155, i32 0, i32 2
  %t157 = load i64, ptr %l14, !tbaa !24
  %t158 = load i64, ptr %l1, !tbaa !24
  %t161 = sub i64 %t157, %t158
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t156, i64 %t161)
  br label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb39
bb39:
  br label %bb40
bb40:
  %t164 = load i64, ptr %l13, !tbaa !24
  %t166 = add i64 %t164, 1
  store i64 %t166, ptr %l13, !tbaa !24
  br label %bb30
bb41:
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t170 = getelementptr %"compiler/diag:Diagnostics", ptr %t168, i32 0, i32 17
  store ptr %t170, ptr %l15, !tbaa !29
  store i64 0, ptr %l16, !tbaa !24
  br label %bb42
bb42:
  %t172 = load i64, ptr %l16, !tbaa !24
  store i64 %t172, ptr %l99, !tbaa !24
  %t173 = load ptr, ptr %l15, !tbaa !29
  %t175 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t173)
  store i64 %t175, ptr %l101
  br label %bb43
bb43:
  %t176 = load i64, ptr %l99, !tbaa !24
  %t177 = load i64, ptr %l101, !tbaa !24
  %t178 = icmp slt i64 %t176, %t177
  %t180 = xor i1 %t178, true
  br i1 %t180, label %bb44, label %bb45
bb44:
  br label %bb53
bb45:
  br label %bb46
bb46:
  %t182 = load ptr, ptr %l15, !tbaa !29
  %t183 = load i64, ptr %l16, !tbaa !24
  %t186 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t182, i64 %t183)
  store i64 %t186, ptr %l106
  br label %bb47
bb47:
  %t187 = load i64, ptr %l106, !tbaa !24
  store i64 %t187, ptr %l17, !tbaa !24
  %t188 = load i64, ptr %l17, !tbaa !24
  %t189 = load i64, ptr %l1, !tbaa !24
  %t192 = icmp sge i64 %t188, %t189
  br i1 %t192, label %bb48, label %bb49
bb48:
  %t194 = load ptr, ptr %lp2
  %t195 = getelementptr %"compiler/diag:Taken", ptr %t194, i32 0, i32 3
  %t196 = load i64, ptr %l17, !tbaa !24
  %t197 = load i64, ptr %l1, !tbaa !24
  %t200 = sub i64 %t196, %t197
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t195, i64 %t200)
  br label %bb50
bb49:
  br label %bb51
bb50:
  br label %bb51
bb51:
  br label %bb52
bb52:
  %t203 = load i64, ptr %l16, !tbaa !24
  %t205 = add i64 %t203, 1
  store i64 %t205, ptr %l16, !tbaa !24
  br label %bb42
bb53:
  %t207 = load ptr, ptr %lp2
  %t208 = load %"compiler/diag:Taken", ptr %t207
  store %"compiler/diag:Taken" %t208, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diag:Taken", ptr %rv
  ret %"compiler/diag:Taken" %rr
}

define dso_local { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eSummary(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca i64
  %l7 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l16 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrors(ptr %v0, ptr %t1)
  store i64 %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load i64, ptr %l3, !tbaa !24
  store i64 %t4, ptr %l1, !tbaa !24
  %t5 = load i64, ptr %l1, !tbaa !24
  %t7 = icmp eq i64 %t5, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2esgr(ptr %v0, ptr %s1, ptr %s1, ptr %t9, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) })
  store { i64, ptr } %t11, ptr %l7
  br label %bb4
bb3:
  br label %bb6
bb4:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2esgr(ptr %v0, ptr %s1, ptr %s1, ptr %t12, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d20, i32 0, i32 1) })
  store { i64, ptr } %t14, ptr %l9
  br label %bb5
bb5:
  %t15 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t15, 1
  %t17 = extractvalue { i64, ptr } %t15, 0
  %t18 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  %t20 = add i64 %t17, %t19
  %t21 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t22 = extractvalue { i64, ptr } %t21, 1
  %t23 = extractvalue { i64, ptr } %t21, 0
  %t24 = add i64 %t20, %t23
  %t25 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t26 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  %t27 = add i64 %t24, %t26
  %t28 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t27)
  call void @olang_textcopy(ptr %t28, ptr %t16, i64 %t17)
  %t29 = getelementptr i8, ptr %t28, i64 %t17
  call void @olang_textcopy(ptr %t29, ptr %t18, i64 %t19)
  %t30 = getelementptr i8, ptr %t29, i64 %t19
  call void @olang_textcopy(ptr %t30, ptr %t22, i64 %t23)
  %t31 = getelementptr i8, ptr %t30, i64 %t23
  call void @olang_textcopy(ptr %t31, ptr %t25, i64 %t26)
  %t32 = insertvalue { i64, ptr } undef, i64 %t27, 0
  %t33 = insertvalue { i64, ptr } %t32, ptr %t28, 1
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t33, ptr %rv
  br label %ret
bb6:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2esgr(ptr %v0, ptr %s0, ptr %s0, ptr %t35, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d23, i32 0, i32 1) })
  store { i64, ptr } %t37, ptr %l12
  br label %bb7
bb7:
  %t38 = load i64, ptr %l1, !tbaa !24
  store i64 %t38, ptr %l13, !tbaa !24
  %t39 = load i64, ptr %l1, !tbaa !24
  %t41 = icmp eq i64 %t39, 1
  br i1 %t41, label %bb8, label %bb9
bb8:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d24, i32 0, i32 1) }, ptr %l16, !tbaa !27
  br label %bb10
bb9:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d25, i32 0, i32 1) }, ptr %l16, !tbaa !27
  br label %bb10
bb10:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2esgr(ptr %v0, ptr %s0, ptr %s0, ptr %t43, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) })
  store { i64, ptr } %t45, ptr %l18
  br label %bb11
bb11:
  %t46 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t47 = extractvalue { i64, ptr } %t46, 1
  %t48 = extractvalue { i64, ptr } %t46, 0
  %t49 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t50 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  %t51 = add i64 %t48, %t50
  %t52 = load i64, ptr %l13, !tbaa !24
  %t53 = call i64 @__olang_fmt_i64(ptr null, i64 %t52)
  %t54 = add i64 %t51, %t53
  %t55 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t56 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  %t57 = add i64 %t54, %t56
  %t58 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t59 = extractvalue { i64, ptr } %t58, 1
  %t60 = extractvalue { i64, ptr } %t58, 0
  %t61 = add i64 %t57, %t60
  %t62 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t63 = extractvalue { i64, ptr } %t62, 1
  %t64 = extractvalue { i64, ptr } %t62, 0
  %t65 = add i64 %t61, %t64
  %t66 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d29, i32 0, i32 1) }, 1
  %t67 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d29, i32 0, i32 1) }, 0
  %t68 = add i64 %t65, %t67
  %t69 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t68)
  call void @olang_textcopy(ptr %t69, ptr %t47, i64 %t48)
  %t70 = getelementptr i8, ptr %t69, i64 %t48
  call void @olang_textcopy(ptr %t70, ptr %t49, i64 %t50)
  %t71 = getelementptr i8, ptr %t70, i64 %t50
  %t72 = call i64 @__olang_fmt_i64(ptr %t71, i64 %t52)
  %t73 = getelementptr i8, ptr %t71, i64 %t53
  call void @olang_textcopy(ptr %t73, ptr %t55, i64 %t56)
  %t74 = getelementptr i8, ptr %t73, i64 %t56
  call void @olang_textcopy(ptr %t74, ptr %t59, i64 %t60)
  %t75 = getelementptr i8, ptr %t74, i64 %t60
  call void @olang_textcopy(ptr %t75, ptr %t63, i64 %t64)
  %t76 = getelementptr i8, ptr %t75, i64 %t64
  call void @olang_textcopy(ptr %t76, ptr %t66, i64 %t67)
  %t77 = insertvalue { i64, ptr } undef, i64 %t68, 0
  %t78 = insertvalue { i64, ptr } %t77, ptr %t69, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t78, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eTextOf(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l5 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/diag:Diagnostics", ptr %a0, i32 0, i32 2
  %t7 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %t3, i64 %a1)
  store { i64, ptr } %t7, ptr %l5
  br label %bb1
bb1:
  %t8 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t8, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { { i64, [3 x i64] }, { i64, ptr } } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eTopContext(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i64
  %l14 = alloca %"compiler/diag:context"
  %l21 = alloca %"compiler/diag:context"
  %l22 = alloca { i64, [3 x i64] }
  %l26 = alloca %"compiler/diag:context"
  %l33 = alloca { i64, ptr }
  %l35 = alloca { { i64, [3 x i64] }, { i64, ptr } }
  %l36 = alloca { i64, ptr }
  %l37 = alloca i64
  %l38 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  %rv = alloca { { i64, [3 x i64] }, { i64, ptr } }
  %t67 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/diag:Diagnostics", ptr %t1, i32 0, i32 12
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3acontext_3e_2eLen_3ccompiler_2fdiag_3acontext_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i64, ptr %l4, !tbaa !24
  %t7 = sub i64 %t6, 1
  store i64 %t7, ptr %l1, !tbaa !24
  br label %bb2
bb2:
  %t9 = load i64, ptr %l1, !tbaa !24
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/diag:Diagnostics", ptr %t10, i32 0, i32 13
  %t13 = load i64, ptr %t12, !tbaa !24
  %t16 = icmp sge i64 %t9, %t13
  %t18 = xor i1 %t16, true
  br i1 %t18, label %bb3, label %bb4
bb3:
  br label %bb13
bb4:
  br label %bb5
bb5:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/diag:Diagnostics", ptr %t20, i32 0, i32 12
  %t23 = load i64, ptr %l1, !tbaa !24
  %t26 = call %"compiler/diag:context" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3acontext_3e_2eAt_3ccompiler_2fdiag_3acontext_3e(ptr %v0, ptr %v0, ptr %t22, i64 %t23)
  store %"compiler/diag:context" %t26, ptr %l14
  br label %bb6
bb6:
  %t27 = getelementptr %"compiler/diag:context", ptr %l14, i32 0, i32 1
  %t28 = load { i64, ptr }, ptr %t27, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t28, 0
  %t32 = icmp sgt i64 %t30, 0
  br i1 %t32, label %bb7, label %bb8
bb7:
  store %olang.scope zeroinitializer, ptr %s2
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/diag:Diagnostics", ptr %t34, i32 0, i32 12
  %t37 = load i64, ptr %l1, !tbaa !24
  %t40 = call %"compiler/diag:context" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3acontext_3e_2eAt_3ccompiler_2fdiag_3acontext_3e(ptr %v0, ptr %s2, ptr %t36, i64 %t37)
  store %"compiler/diag:context" %t40, ptr %l21
  br label %bb9
bb8:
  br label %bb11
bb9:
  %t41 = getelementptr %"compiler/diag:context", ptr %l21, i32 0, i32 0
  %t42 = load { i64, [3 x i64] }, ptr %t41
  store { i64, [3 x i64] } %t42, ptr %l22
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/diag:Diagnostics", ptr %t43, i32 0, i32 12
  %t46 = load i64, ptr %l1, !tbaa !24
  %t49 = call %"compiler/diag:context" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3acontext_3e_2eAt_3ccompiler_2fdiag_3acontext_3e(ptr %v0, ptr %v0, ptr %t45, i64 %t46)
  store %"compiler/diag:context" %t49, ptr %l26
  br label %bb10
bb10:
  %t50 = getelementptr %"compiler/diag:context", ptr %l26, i32 0, i32 1
  %t51 = load { i64, ptr }, ptr %t50, !tbaa !27
  %t53 = extractvalue { i64, ptr } %t51, 1
  %t54 = extractvalue { i64, ptr } %t51, 0
  %t55 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t54)
  call void @olang_textcopy(ptr %t55, ptr %t53, i64 %t54)
  %t56 = insertvalue { i64, ptr } undef, i64 %t54, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t55, 1
  %t58 = load { i64, [3 x i64] }, ptr %l22
  %t59 = insertvalue { { i64, [3 x i64] }, { i64, ptr } } undef, { i64, [3 x i64] } %t58, 0
  %t61 = insertvalue { { i64, [3 x i64] }, { i64, ptr } } %t59, { i64, ptr } %t57, 1
  call void @__olang_scope_close(ptr %s2)
  store { { i64, [3 x i64] }, { i64, ptr } } %t61, ptr %rv
  br label %ret
bb11:
  %t63 = load i64, ptr %l1, !tbaa !24
  %t65 = sub i64 %t63, 1
  store i64 %t65, ptr %l1, !tbaa !24
  br label %bb12
bb12:
  br label %bb2
bb13:
  store { i64, [3 x i64] } zeroinitializer, ptr %t67
  %t68 = getelementptr { i64, [3 x i64] }, ptr %t67, i32 0, i32 0
  store i64 0, ptr %t68
  %t69 = load { i64, [3 x i64] }, ptr %t67
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d30, i32 0, i32 1) }, ptr %l33, !tbaa !27
  %t70 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t72 = insertvalue { { i64, [3 x i64] }, { i64, ptr } } undef, { i64, [3 x i64] } %t69, 0
  %t74 = insertvalue { { i64, [3 x i64] }, { i64, ptr } } %t72, { i64, ptr } %t70, 1
  store { { i64, [3 x i64] }, { i64, ptr } } %t74, ptr %l35
  %t75 = getelementptr { { i64, [3 x i64] }, { i64, ptr } }, ptr %l35, i32 0, i32 1
  %t76 = load { i64, ptr }, ptr %t75, !tbaa !27
  store { i64, ptr } %t76, ptr %l36, !tbaa !27
  %t77 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t78 = extractvalue { i64, ptr } %t77, 0
  store i64 %t78, ptr %l37, !tbaa !24
  %t79 = load i64, ptr %l37, !tbaa !24
  %t80 = mul i64 %t79, 1
  %t81 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t80)
  %t82 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t83 = insertvalue { i64, ptr } %t82, ptr %t81, 1
  store { i64, ptr } %t83, ptr %l38, !tbaa !27
  %t84 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !27
  %t86 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t87 = load ptr, ptr %t86, !tbaa !27
  %t88 = load i64, ptr %l37, !tbaa !24
  %t89 = mul i64 %t88, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t85, ptr %t87, i64 %t89, i1 false)
  %t90 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t91 = getelementptr { { i64, [3 x i64] }, { i64, ptr } }, ptr %l35, i32 0, i32 1
  store { i64, ptr } %t90, ptr %t91, !tbaa !27
  %t92 = load { { i64, [3 x i64] }, { i64, ptr } }, ptr %l35
  store { { i64, [3 x i64] }, { i64, ptr } } %t92, ptr %rv
  br label %ret
ret:
  %rr = load { { i64, [3 x i64] }, { i64, ptr } }, ptr %rv
  ret { { i64, [3 x i64] }, { i64, ptr } } %rr
}

define dso_local { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eUsage(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/diagmsg:Msg" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/diagmsg:Msg"
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca %"std/prelude/text:StringBuilder"
  %l7 = alloca ptr
  %l10 = alloca { i64, ptr }
  %l30 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t4 = alloca { i64, [3 x i64] }, align 8
  %t38 = alloca { i64, [3 x i64] }, align 8
  %t55 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/diagmsg:Msg" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l3
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l3
  store %"std/prelude/text:StringBuilder" %t2, ptr %l2
  %t3 = load ptr, ptr %l0, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t4
  %t5 = getelementptr { i64, [3 x i64] }, ptr %t4, i32 0, i32 0
  store i64 0, ptr %t5
  %t6 = load { i64, [3 x i64] }, ptr %t4
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eputLocation(ptr %v0, ptr %s0, ptr %t3, ptr %l2, { i64, [3 x i64] } %t6)
  br label %bb2
bb2:
  store ptr %l2, ptr %l7, !tbaa !29
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/diagmsg:Msg", ptr %l1, i32 0, i32 1
  %t12 = load { i64, ptr }, ptr %t11, !tbaa !27
  %t15 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eerrorWord(ptr %v0, ptr %v1, ptr %s0, ptr %t10, { i64, ptr } %t12)
  store { i64, ptr } %t15, ptr %l10
  br label %bb3
bb3:
  %t16 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t16, 0
  %t18 = extractvalue { i64, ptr } %t16, 1
  %t19 = mul i64 %t17, 1
  %t20 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t19)
  call void @llvm.memcpy.p0.p0.i64(ptr %t20, ptr %t18, i64 %t19, i1 false)
  %t21 = insertvalue { i64, ptr } undef, i64 %t17, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t20, 1
  %t23 = load ptr, ptr %l7, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t23, { i64, ptr } %t22)
  br label %bb4
bb4:
  %t25 = getelementptr %"compiler/diagmsg:Msg", ptr %l1, i32 0, i32 2
  %t26 = load { i64, ptr }, ptr %t25, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v1, ptr %l2, { i64, ptr } %t26)
  br label %bb5
bb5:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l2, i8 10)
  br label %bb6
bb6:
  %t30 = getelementptr %"compiler/diagmsg:Msg", ptr %l1, i32 0, i32 3
  %t31 = load { i64, ptr }, ptr %t30, !tbaa !27
  %t33 = extractvalue { i64, ptr } %t31, 0
  %t35 = icmp sgt i64 %t33, 0
  br i1 %t35, label %bb7, label %bb8
bb7:
  store %olang.scope zeroinitializer, ptr %s1
  %t37 = load ptr, ptr %l0, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t38
  %t39 = getelementptr { i64, [3 x i64] }, ptr %t38, i32 0, i32 0
  store i64 0, ptr %t39
  %t40 = load { i64, [3 x i64] }, ptr %t38
  %t41 = getelementptr %"compiler/diagmsg:Msg", ptr %l1, i32 0, i32 3
  %t42 = load { i64, ptr }, ptr %t41, !tbaa !27
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eputPlain(ptr %v0, ptr %s0, ptr %s1, ptr %v1, ptr %t37, ptr %l2, { i64, [3 x i64] } %t40, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d31, i32 0, i32 1) }, { i64, ptr } %t42)
  br label %bb9
bb8:
  br label %bb10
bb9:
  call void @__olang_scope_close(ptr %s1)
  br label %bb10
bb10:
  %t47 = getelementptr %"compiler/diagmsg:Msg", ptr %l1, i32 0, i32 4
  %t48 = load { i64, ptr }, ptr %t47, !tbaa !27
  %t50 = extractvalue { i64, ptr } %t48, 0
  %t52 = icmp sgt i64 %t50, 0
  br i1 %t52, label %bb11, label %bb12
bb11:
  store %olang.scope zeroinitializer, ptr %s2
  %t54 = load ptr, ptr %l0, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t55
  %t56 = getelementptr { i64, [3 x i64] }, ptr %t55, i32 0, i32 0
  store i64 0, ptr %t56
  %t57 = load { i64, [3 x i64] }, ptr %t55
  %t58 = getelementptr %"compiler/diagmsg:Msg", ptr %l1, i32 0, i32 4
  %t59 = load { i64, ptr }, ptr %t58, !tbaa !27
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eputPlain(ptr %v0, ptr %s0, ptr %s2, ptr %v1, ptr %t54, ptr %l2, { i64, [3 x i64] } %t57, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d32, i32 0, i32 1) }, { i64, ptr } %t59)
  br label %bb13
bb12:
  br label %bb14
bb13:
  call void @__olang_scope_close(ptr %s2)
  br label %bb14
bb14:
  %t65 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v2, ptr %l2)
  store { i64, ptr } %t65, ptr %l30
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s0)
  %t66 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t66, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, [3 x i64] } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eUseOf(ptr %v0, ptr %a0, { i64, [3 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [3 x i64] }
  %l2 = alloca i64
  %l5 = alloca i64
  %l8 = alloca { i64, [3 x i64] }
  %l13 = alloca %"compiler/diag:context"
  %s0 = alloca %olang.scope
  %rv = alloca { i64, [3 x i64] }
  store ptr %a0, ptr %l0
  store { i64, [3 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load { i64, [3 x i64] }, ptr %l1
  %t5 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eprogramUse(ptr %v0, ptr %t1, { i64, [3 x i64] } %t2)
  store i64 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i64, ptr %l5, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  %t7 = load i64, ptr %l2, !tbaa !24
  %t9 = icmp slt i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load { i64, [3 x i64] }, ptr %l1
  store { i64, [3 x i64] } %t11, ptr %l8
  br label %bb5
bb3:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/diag:Diagnostics", ptr %t13, i32 0, i32 12
  %t16 = load i64, ptr %l2, !tbaa !24
  %t19 = call %"compiler/diag:context" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3acontext_3e_2eAt_3ccompiler_2fdiag_3acontext_3e(ptr %v0, ptr %s0, ptr %t15, i64 %t16)
  store %"compiler/diag:context" %t19, ptr %l13
  br label %bb4
bb4:
  %t20 = getelementptr %"compiler/diag:context", ptr %l13, i32 0, i32 0
  %t21 = load { i64, [3 x i64] }, ptr %t20
  store { i64, [3 x i64] } %t21, ptr %l8
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  %t23 = load { i64, [3 x i64] }, ptr %l8
  store { i64, [3 x i64] } %t23, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [3 x i64] }, ptr %rv
  ret { i64, [3 x i64] } %rr
}

define dso_local { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eWarnings(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/prelude/text:StringBuilder"
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca %"compiler/diag:record"
  %l5 = alloca %"std/prelude/text:StringBuilder"
  %l8 = alloca i64
  %l10 = alloca i64
  %l15 = alloca %"compiler/diag:record"
  %l24 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l5
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l5
  store %"std/prelude/text:StringBuilder" %t2, ptr %l1
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/diag:Diagnostics", ptr %t3, i32 0, i32 26
  store ptr %t5, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  store %olang.scope zeroinitializer, ptr %s2
  %t7 = load i64, ptr %l3, !tbaa !24
  store i64 %t7, ptr %l8, !tbaa !24
  %t8 = load ptr, ptr %l2, !tbaa !29
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2eLen_3ccompiler_2fdiag_3arecord_3e(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l10
  br label %bb3
bb3:
  %t11 = load i64, ptr %l8, !tbaa !24
  %t12 = load i64, ptr %l10, !tbaa !24
  %t13 = icmp slt i64 %t11, %t12
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s2)
  br label %bb10
bb5:
  br label %bb6
bb6:
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t18 = load i64, ptr %l3, !tbaa !24
  %t21 = call %"compiler/diag:record" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2eAt_3ccompiler_2fdiag_3arecord_3e(ptr %v0, ptr %v0, ptr %t17, i64 %t18)
  store %"compiler/diag:record" %t21, ptr %l15
  br label %bb7
bb7:
  %t22 = load %"compiler/diag:record", ptr %l15
  store %"compiler/diag:record" %t22, ptr %l4
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/diag:record", ptr %l4, i32 0, i32 0
  %t25 = load { i64, [3 x i64] }, ptr %t24
  %t26 = getelementptr %"compiler/diag:record", ptr %l4, i32 0, i32 1
  %t27 = load { i64, ptr }, ptr %t26, !tbaa !27
  %t28 = getelementptr %"compiler/diag:record", ptr %l4, i32 0, i32 2
  %t29 = load { i64, ptr }, ptr %t28, !tbaa !27
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eputRow(ptr %v0, ptr %s0, ptr %s2, ptr %v0, ptr %v0, ptr %t23, ptr %l1, { i64, [3 x i64] } %t25, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d33, i32 0, i32 1) }, { i64, ptr } %t27, { i64, ptr } %t29)
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s2)
  br label %bb9
bb9:
  %t35 = load i64, ptr %l3, !tbaa !24
  %t37 = add i64 %t35, 1
  store i64 %t37, ptr %l3, !tbaa !24
  br label %bb2
bb10:
  %t40 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l1)
  store { i64, ptr } %t40, ptr %l24
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s0)
  %t41 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t41, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eYield(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l1 = alloca i64
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp sge i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t7 = getelementptr %"compiler/diag:Diagnostics", ptr %a0, i32 0, i32 16
  %t8 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t7, i64 %t8)
  br label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb4
bb4:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2echosen(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l10 = alloca i64
  %l17 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 %a1, ptr %l2, !tbaa !24
  br label %bb1
bb1:
  %t3 = load i64, ptr %l2, !tbaa !24
  %t5 = icmp sge i64 %t3, 0
  %t7 = xor i1 %t5, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  br label %bb11
bb3:
  br label %bb4
bb4:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/diag:Diagnostics", ptr %t9, i32 0, i32 10
  %t12 = load i64, ptr %l2, !tbaa !24
  %t15 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t11, i64 %t12)
  store i64 %t15, ptr %l10
  br label %bb5
bb5:
  %t16 = load i64, ptr @G_2ecompiler_2fdiag_2eChosen, !tbaa !24
  %t17 = load i64, ptr %l10, !tbaa !24
  %t19 = icmp ne i64 %t17, %t16
  br i1 %t19, label %bb6, label %bb7
bb6:
  store i1 false, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/diag:Diagnostics", ptr %t22, i32 0, i32 9
  %t25 = load i64, ptr %l2, !tbaa !24
  %t28 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t24, i64 %t25)
  store i64 %t28, ptr %l17
  br label %bb9
bb9:
  %t29 = load i64, ptr %l17, !tbaa !24
  store i64 %t29, ptr %l2, !tbaa !24
  br label %bb10
bb10:
  br label %bb1
bb11:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eerrorWord(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp eq i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  store %olang.scope zeroinitializer, ptr %s1
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2esgr(ptr %v0, ptr %s1, ptr %s1, ptr %t7, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d34, i32 0, i32 1) })
  store { i64, ptr } %t9, ptr %l6
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2esgr(ptr %v0, ptr %s1, ptr %s1, ptr %t10, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d35, i32 0, i32 1) })
  store { i64, ptr } %t12, ptr %l8
  br label %bb4
bb4:
  %t13 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t13, 1
  %t15 = extractvalue { i64, ptr } %t13, 0
  %t16 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d36, i32 0, i32 1) }, 1
  %t17 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d36, i32 0, i32 1) }, 0
  %t18 = add i64 %t15, %t17
  %t19 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t20 = extractvalue { i64, ptr } %t19, 1
  %t21 = extractvalue { i64, ptr } %t19, 0
  %t22 = add i64 %t18, %t21
  %t23 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d37, i32 0, i32 1) }, 1
  %t24 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d37, i32 0, i32 1) }, 0
  %t25 = add i64 %t22, %t24
  %t26 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t25)
  call void @olang_textcopy(ptr %t26, ptr %t14, i64 %t15)
  %t27 = getelementptr i8, ptr %t26, i64 %t15
  call void @olang_textcopy(ptr %t27, ptr %t16, i64 %t17)
  %t28 = getelementptr i8, ptr %t27, i64 %t17
  call void @olang_textcopy(ptr %t28, ptr %t20, i64 %t21)
  %t29 = getelementptr i8, ptr %t28, i64 %t21
  call void @olang_textcopy(ptr %t29, ptr %t23, i64 %t24)
  %t30 = insertvalue { i64, ptr } undef, i64 %t25, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t26, 1
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t31, ptr %rv
  br label %ret
bb5:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2esgr(ptr %v0, ptr %s0, ptr %s0, ptr %t33, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d38, i32 0, i32 1) })
  store { i64, ptr } %t35, ptr %l11
  br label %bb6
bb6:
  %t36 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t36, ptr %l12, !tbaa !27
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2esgr(ptr %v0, ptr %s0, ptr %s0, ptr %t37, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d39, i32 0, i32 1) })
  store { i64, ptr } %t39, ptr %l14
  br label %bb7
bb7:
  %t40 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t40, 1
  %t42 = extractvalue { i64, ptr } %t40, 0
  %t43 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d40, i32 0, i32 1) }, 1
  %t44 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d40, i32 0, i32 1) }, 0
  %t45 = add i64 %t42, %t44
  %t46 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t47 = extractvalue { i64, ptr } %t46, 1
  %t48 = extractvalue { i64, ptr } %t46, 0
  %t49 = add i64 %t45, %t48
  %t50 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d41, i32 0, i32 1) }, 1
  %t51 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d41, i32 0, i32 1) }, 0
  %t52 = add i64 %t49, %t51
  %t53 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t54 = extractvalue { i64, ptr } %t53, 1
  %t55 = extractvalue { i64, ptr } %t53, 0
  %t56 = add i64 %t52, %t55
  %t57 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d42, i32 0, i32 1) }, 1
  %t58 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d42, i32 0, i32 1) }, 0
  %t59 = add i64 %t56, %t58
  %t60 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t59)
  call void @olang_textcopy(ptr %t60, ptr %t41, i64 %t42)
  %t61 = getelementptr i8, ptr %t60, i64 %t42
  call void @olang_textcopy(ptr %t61, ptr %t43, i64 %t44)
  %t62 = getelementptr i8, ptr %t61, i64 %t44
  call void @olang_textcopy(ptr %t62, ptr %t47, i64 %t48)
  %t63 = getelementptr i8, ptr %t62, i64 %t48
  call void @olang_textcopy(ptr %t63, ptr %t50, i64 %t51)
  %t64 = getelementptr i8, ptr %t63, i64 %t51
  call void @olang_textcopy(ptr %t64, ptr %t54, i64 %t55)
  %t65 = getelementptr i8, ptr %t64, i64 %t55
  call void @olang_textcopy(ptr %t65, ptr %t57, i64 %t58)
  %t66 = insertvalue { i64, ptr } undef, i64 %t59, 0
  %t67 = insertvalue { i64, ptr } %t66, ptr %t60, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t67, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eisLibrary(ptr %v0, ptr %a0, { i64, [3 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [3 x i64] }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l11 = alloca i1
  %l18 = alloca i1
  %l25 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store { i64, [3 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [3 x i64] }, ptr %l1
  %t3 = extractvalue { i64, [3 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 1
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [3 x i64] }, ptr %l1, i32 0, i32 1
  %t7 = getelementptr { i64 }, ptr %t6, i32 0, i32 0
  %t8 = load i64, ptr %t7
  store i64 %t8, ptr %l2, !tbaa !24
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/diag:Diagnostics", ptr %t10, i32 0, i32 3
  %t13 = load i64, ptr %l2, !tbaa !24
  %t16 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t12, i64 %t13)
  store i1 %t16, ptr %l11
  br label %bb4
bb4:
  %t17 = load i1, ptr %l11, !tbaa !21
  store i1 %t17, ptr %rv
  br label %ret
bb5:
  %t18 = load { i64, [3 x i64] }, ptr %l1
  %t20 = extractvalue { i64, [3 x i64] } %t18, 0
  %t21 = icmp eq i64 %t20, 2
  br i1 %t21, label %bb6, label %bb7
bb6:
  %t23 = getelementptr { i64, [3 x i64] }, ptr %l1, i32 0, i32 1
  %t24 = getelementptr { i64, i64 }, ptr %t23, i32 0, i32 0
  %t25 = load i64, ptr %t24
  store i64 %t25, ptr %l3, !tbaa !24
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/diag:Diagnostics", ptr %t27, i32 0, i32 3
  %t30 = load i64, ptr %l3, !tbaa !24
  %t33 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t29, i64 %t30)
  store i1 %t33, ptr %l18
  br label %bb9
bb9:
  %t34 = load i1, ptr %l18, !tbaa !21
  store i1 %t34, ptr %rv
  br label %ret
bb10:
  %t35 = load { i64, [3 x i64] }, ptr %l1
  %t37 = extractvalue { i64, [3 x i64] } %t35, 0
  %t38 = icmp eq i64 %t37, 3
  br i1 %t38, label %bb11, label %bb12
bb11:
  %t40 = getelementptr { i64, [3 x i64] }, ptr %l1, i32 0, i32 1
  %t41 = getelementptr { i64, i64, i64 }, ptr %t40, i32 0, i32 0
  %t42 = load i64, ptr %t41
  store i64 %t42, ptr %l4, !tbaa !24
  br label %bb13
bb12:
  br label %bb15
bb13:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/diag:Diagnostics", ptr %t44, i32 0, i32 3
  %t47 = load i64, ptr %l4, !tbaa !24
  %t50 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t46, i64 %t47)
  store i1 %t50, ptr %l25
  br label %bb14
bb14:
  %t51 = load i1, ptr %l25, !tbaa !21
  store i1 %t51, ptr %rv
  br label %ret
bb15:
  %t52 = load { i64, [3 x i64] }, ptr %l1
  %t54 = extractvalue { i64, [3 x i64] } %t52, 0
  %t55 = icmp eq i64 %t54, 0
  br i1 %t55, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb19
bb18:
  store i1 false, ptr %rv
  br label %ret
bb19:
  call void @__olang_check_failed(ptr @olang_loc_ee9cae70646c4bf5_c04baedc434dd6e9)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, i64 } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2elineOf(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l15 = alloca i64
  %l18 = alloca ptr
  %l19 = alloca i64
  %l22 = alloca i64
  %l26 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l52 = alloca i64
  %l56 = alloca i64
  %l72 = alloca i64
  %l79 = alloca i64
  %l85 = alloca i64
  %s1 = alloca %olang.scope
  %rv = alloca { i64, i64 }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/diag:Diagnostics", ptr %t1, i32 0, i32 5
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t3, i64 %t4)
  store i64 %t7, ptr %l15
  br label %bb1
bb1:
  %t8 = load i64, ptr %l15, !tbaa !24
  %t9 = icmp slt i64 %t8, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/diag:Diagnostics", ptr %t11, i32 0, i32 5
  store ptr %t13, ptr %l18, !tbaa !29
  %t14 = load i64, ptr %l1, !tbaa !24
  store i64 %t14, ptr %l19, !tbaa !24
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/diag:Diagnostics", ptr %t15, i32 0, i32 4
  %t19 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t17)
  store i64 %t19, ptr %l22
  br label %bb4
bb3:
  br label %bb16
bb4:
  %t20 = load ptr, ptr %l18, !tbaa !29
  %t21 = load i64, ptr %l19, !tbaa !24
  %t22 = load i64, ptr %l22, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t20, i64 %t21, i64 %t22)
  br label %bb5
bb5:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/diag:Diagnostics", ptr %t23, i32 0, i32 2
  %t26 = load i64, ptr %l1, !tbaa !24
  %t29 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t25, i64 %t26)
  store { i64, ptr } %t29, ptr %l26
  br label %bb6
bb6:
  %t30 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t31 = call { i64, ptr } @compiler_2fsource_2eLineStarts(ptr %v0, ptr %s1, { i64, ptr } %t30)
  store { i64, ptr } %t31, ptr %l27
  br label %bb7
bb7:
  %t32 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t32, ptr %l3, !tbaa !27
  %t33 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t33, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t35 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t35, 0
  store i64 %t37, ptr %l6, !tbaa !24
  br label %bb8
bb8:
  %t39 = load i64, ptr %l5, !tbaa !24
  %t40 = load i64, ptr %l6, !tbaa !24
  %t43 = icmp slt i64 %t39, %t40
  %t45 = xor i1 %t43, true
  br i1 %t45, label %bb9, label %bb10
bb9:
  br label %bb14
bb10:
  br label %bb11
bb11:
  %t47 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t47, ptr %l35, !tbaa !27
  %t48 = load i64, ptr %l5, !tbaa !24
  %t50 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !27
  %t52 = getelementptr i32, ptr %t51, i64 %t48
  %t53 = load i32, ptr %t52, !tbaa !33
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/diag:Diagnostics", ptr %t55, i32 0, i32 4
  %t60 = sext i32 %t53 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t57, i64 %t60)
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t63 = load i64, ptr %l5, !tbaa !24
  %t65 = add i64 %t63, 1
  store i64 %t65, ptr %l5, !tbaa !24
  br label %bb8
bb14:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/diag:Diagnostics", ptr %t67, i32 0, i32 6
  %t70 = load i64, ptr %l1, !tbaa !24
  %t71 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t73 = extractvalue { i64, ptr } %t71, 0
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t69, i64 %t70, i64 %t73)
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s1)
  br label %bb16
bb16:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/diag:Diagnostics", ptr %t77, i32 0, i32 5
  %t80 = load i64, ptr %l1, !tbaa !24
  %t83 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t79, i64 %t80)
  store i64 %t83, ptr %l52
  br label %bb17
bb17:
  %t84 = load i64, ptr %l52, !tbaa !24
  store i64 %t84, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/diag:Diagnostics", ptr %t85, i32 0, i32 6
  %t88 = load i64, ptr %l1, !tbaa !24
  %t91 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t87, i64 %t88)
  store i64 %t91, ptr %l56
  br label %bb18
bb18:
  %t92 = load i64, ptr %l56, !tbaa !24
  %t93 = sub i64 %t92, 1
  store i64 %t93, ptr %l10, !tbaa !24
  br label %bb19
bb19:
  %t95 = load i64, ptr %l9, !tbaa !24
  %t96 = load i64, ptr %l10, !tbaa !24
  %t99 = icmp slt i64 %t95, %t96
  %t101 = xor i1 %t99, true
  br i1 %t101, label %bb20, label %bb21
bb20:
  br label %bb28
bb21:
  br label %bb22
bb22:
  %t103 = load i64, ptr %l9, !tbaa !24
  %t104 = load i64, ptr %l10, !tbaa !24
  %t107 = add i64 %t103, %t104
  %t109 = add i64 %t107, 1
  %t111 = sdiv i64 %t109, 2
  store i64 %t111, ptr %l11, !tbaa !24
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t115 = getelementptr %"compiler/diag:Diagnostics", ptr %t113, i32 0, i32 4
  %t116 = load i64, ptr %l8, !tbaa !24
  %t117 = load i64, ptr %l11, !tbaa !24
  %t120 = add i64 %t116, %t117
  %t123 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t115, i64 %t120)
  store i64 %t123, ptr %l72
  br label %bb23
bb23:
  %t125 = load i64, ptr %l72, !tbaa !24
  %t127 = icmp sle i64 %t125, %a2
  br i1 %t127, label %bb24, label %bb25
bb24:
  %t129 = load i64, ptr %l11, !tbaa !24
  store i64 %t129, ptr %l9, !tbaa !24
  br label %bb26
bb25:
  %t131 = load i64, ptr %l11, !tbaa !24
  %t133 = sub i64 %t131, 1
  store i64 %t133, ptr %l10, !tbaa !24
  br label %bb26
bb26:
  br label %bb27
bb27:
  br label %bb19
bb28:
  %t135 = load i64, ptr %l9, !tbaa !24
  %t137 = add i64 %t135, 1
  store i64 %t137, ptr %l79, !tbaa !24
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t140 = getelementptr %"compiler/diag:Diagnostics", ptr %t138, i32 0, i32 4
  %t141 = load i64, ptr %l8, !tbaa !24
  %t142 = load i64, ptr %l9, !tbaa !24
  %t145 = add i64 %t141, %t142
  %t148 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t140, i64 %t145)
  store i64 %t148, ptr %l85
  br label %bb29
bb29:
  %t149 = load i64, ptr %l79, !tbaa !24
  %t150 = insertvalue { i64, i64 } undef, i64 %t149, 0
  %t151 = load i64, ptr %l85, !tbaa !24
  %t152 = insertvalue { i64, i64 } %t150, i64 %t151, 1
  store { i64, i64 } %t152, ptr %rv
  br label %ret
ret:
  %rr = load { i64, i64 }, ptr %rv
  ret { i64, i64 } %rr
}

define dso_local i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2emayReport(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l10 = alloca i64
  %l13 = alloca i1
  %l17 = alloca i64
  %l24 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 %a1, ptr %l2, !tbaa !24
  br label %bb1
bb1:
  %t3 = load i64, ptr %l2, !tbaa !24
  %t5 = icmp sge i64 %t3, 0
  %t7 = xor i1 %t5, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  br label %bb15
bb3:
  br label %bb4
bb4:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/diag:Diagnostics", ptr %t9, i32 0, i32 10
  %t12 = load i64, ptr %l2, !tbaa !24
  %t15 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t11, i64 %t12)
  store i64 %t15, ptr %l10
  br label %bb5
bb5:
  %t16 = load i64, ptr @G_2ecompiler_2fdiag_2eDropped, !tbaa !24
  %t17 = load i64, ptr %l10, !tbaa !24
  %t19 = icmp eq i64 %t17, %t16
  br i1 %t19, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l13, !tbaa !21
  br label %bb9
bb7:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/diag:Diagnostics", ptr %t21, i32 0, i32 10
  %t24 = load i64, ptr %l2, !tbaa !24
  %t27 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t23, i64 %t24)
  store i64 %t27, ptr %l17
  br label %bb8
bb8:
  %t28 = load i64, ptr @G_2ecompiler_2fdiag_2eCut, !tbaa !24
  %t29 = load i64, ptr %l17, !tbaa !24
  %t31 = icmp eq i64 %t29, %t28
  store i1 %t31, ptr %l13, !tbaa !21
  br label %bb9
bb9:
  %t33 = load i1, ptr %l13, !tbaa !21
  br i1 %t33, label %bb10, label %bb11
bb10:
  store i1 false, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/diag:Diagnostics", ptr %t35, i32 0, i32 9
  %t38 = load i64, ptr %l2, !tbaa !24
  %t41 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t37, i64 %t38)
  store i64 %t41, ptr %l24
  br label %bb13
bb13:
  %t42 = load i64, ptr %l24, !tbaa !24
  store i64 %t42, ptr %l2, !tbaa !24
  br label %bb14
bb14:
  br label %bb1
bb15:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eprogramUse(ptr %v0, ptr %a0, { i64, [3 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l5 = alloca i1
  %l10 = alloca i64
  %l20 = alloca %"compiler/diag:context"
  %l24 = alloca i1
  %l25 = alloca ptr
  %l29 = alloca %"compiler/diag:context"
  %l31 = alloca i1
  %s2 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eisLibrary(ptr %v0, ptr %t1, { i64, [3 x i64] } %a1)
  store i1 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i1, ptr %l5, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i64 -1, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/diag:Diagnostics", ptr %t10, i32 0, i32 12
  %t14 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3acontext_3e_2eLen_3ccompiler_2fdiag_3acontext_3e(ptr %v0, ptr %t12)
  store i64 %t14, ptr %l10
  br label %bb5
bb5:
  %t15 = load i64, ptr %l10, !tbaa !24
  %t16 = sub i64 %t15, 1
  store i64 %t16, ptr %l2, !tbaa !24
  br label %bb6
bb6:
  store %olang.scope zeroinitializer, ptr %s2
  %t18 = load i64, ptr %l2, !tbaa !24
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/diag:Diagnostics", ptr %t19, i32 0, i32 13
  %t22 = load i64, ptr %t21, !tbaa !24
  %t25 = icmp sge i64 %t18, %t22
  %t27 = xor i1 %t25, true
  br i1 %t27, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s2)
  br label %bb20
bb8:
  br label %bb9
bb9:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/diag:Diagnostics", ptr %t29, i32 0, i32 12
  %t32 = load i64, ptr %l2, !tbaa !24
  %t35 = call %"compiler/diag:context" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3acontext_3e_2eAt_3ccompiler_2fdiag_3acontext_3e(ptr %v0, ptr %v0, ptr %t31, i64 %t32)
  store %"compiler/diag:context" %t35, ptr %l20
  br label %bb10
bb10:
  %t36 = getelementptr %"compiler/diag:context", ptr %l20, i32 0, i32 1
  %t37 = load { i64, ptr }, ptr %t36, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t37, 0
  %t41 = icmp sgt i64 %t39, 0
  br i1 %t41, label %bb11, label %bb12
bb11:
  %t43 = load ptr, ptr %l0, !tbaa !29
  store ptr %t43, ptr %l25, !tbaa !29
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/diag:Diagnostics", ptr %t44, i32 0, i32 12
  %t47 = load i64, ptr %l2, !tbaa !24
  %t50 = call %"compiler/diag:context" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3acontext_3e_2eAt_3ccompiler_2fdiag_3acontext_3e(ptr %v0, ptr %s2, ptr %t46, i64 %t47)
  store %"compiler/diag:context" %t50, ptr %l29
  br label %bb13
bb12:
  store i1 false, ptr %l24, !tbaa !21
  br label %bb15
bb13:
  %t51 = getelementptr %"compiler/diag:context", ptr %l29, i32 0, i32 0
  %t52 = load { i64, [3 x i64] }, ptr %t51
  %t53 = load ptr, ptr %l25, !tbaa !29
  %t55 = call i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eisLibrary(ptr %v0, ptr %t53, { i64, [3 x i64] } %t52)
  store i1 %t55, ptr %l31
  br label %bb14
bb14:
  %t56 = load i1, ptr %l31, !tbaa !21
  %t57 = xor i1 %t56, true
  store i1 %t57, ptr %l24, !tbaa !21
  br label %bb15
bb15:
  %t59 = load i1, ptr %l24, !tbaa !21
  br i1 %t59, label %bb16, label %bb17
bb16:
  %t60 = load i64, ptr %l2, !tbaa !24
  call void @__olang_scope_close(ptr %s2)
  store i64 %t60, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t62 = load i64, ptr %l2, !tbaa !24
  %t64 = sub i64 %t62, 1
  store i64 %t64, ptr %l2, !tbaa !24
  call void @__olang_scope_close(ptr %s2)
  br label %bb19
bb19:
  br label %bb6
bb20:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2epushOwn(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, [3 x i64] } %a2, %"compiler/diagmsg:Msg" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, [3 x i64] }
  %l3 = alloca %"compiler/diagmsg:Msg"
  %l8 = alloca ptr
  %l12 = alloca %"compiler/diag:note"
  %l17 = alloca ptr
  %l21 = alloca %"compiler/diag:note"
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, [3 x i64] } %a2, ptr %l2
  store %"compiler/diagmsg:Msg" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/diagmsg:Msg", ptr %l3, i32 0, i32 3
  %t2 = load { i64, ptr }, ptr %t1, !tbaa !27
  %t4 = extractvalue { i64, ptr } %t2, 0
  %t6 = icmp sgt i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/diag:Diagnostics", ptr %t8, i32 0, i32 8
  store ptr %t10, ptr %l8, !tbaa !29
  %t11 = load i64, ptr %l1, !tbaa !24
  %t12 = load { i64, [3 x i64] }, ptr %l2
  %t13 = getelementptr %"compiler/diagmsg:Msg", ptr %l3, i32 0, i32 3
  %t14 = load { i64, ptr }, ptr %t13, !tbaa !27
  %t18 = call %"compiler/diag:note" @compiler_2fdiag_3anote_2ector(ptr %v1, ptr %v0, i64 %t11, { i64, [3 x i64] } %t12, { i64, ptr } %t14, i1 false, i1 true)
  store %"compiler/diag:note" %t18, ptr %l12
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t19 = load ptr, ptr %l8, !tbaa !29
  %t20 = load %"compiler/diag:note", ptr %l12
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3anote_3e_2ePush_3ccompiler_2fdiag_3anote_3e(ptr %v0, ptr %v0, ptr %t19, %"compiler/diag:note" %t20)
  br label %bb4
bb4:
  br label %bb5
bb5:
  %t21 = getelementptr %"compiler/diagmsg:Msg", ptr %l3, i32 0, i32 4
  %t22 = load { i64, ptr }, ptr %t21, !tbaa !27
  %t24 = extractvalue { i64, ptr } %t22, 0
  %t26 = icmp sgt i64 %t24, 0
  br i1 %t26, label %bb6, label %bb7
bb6:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/diag:Diagnostics", ptr %t28, i32 0, i32 8
  store ptr %t30, ptr %l17, !tbaa !29
  %t31 = load i64, ptr %l1, !tbaa !24
  %t32 = load { i64, [3 x i64] }, ptr %l2
  %t33 = getelementptr %"compiler/diagmsg:Msg", ptr %l3, i32 0, i32 4
  %t34 = load { i64, ptr }, ptr %t33, !tbaa !27
  %t38 = call %"compiler/diag:note" @compiler_2fdiag_3anote_2ector(ptr %v1, ptr %v0, i64 %t31, { i64, [3 x i64] } %t32, { i64, ptr } %t34, i1 true, i1 true)
  store %"compiler/diag:note" %t38, ptr %l21
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t39 = load ptr, ptr %l17, !tbaa !29
  %t40 = load %"compiler/diag:note", ptr %l21
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3anote_3e_2ePush_3ccompiler_2fdiag_3anote_3e(ptr %v0, ptr %v0, ptr %t39, %"compiler/diag:note" %t40)
  br label %bb9
bb9:
  br label %bb10
bb10:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eputExcerpt(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [3 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, [3 x i64] }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, i64 }
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i1
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
  %l25 = alloca { { i64, ptr }, i64 }
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l33 = alloca i64
  %l45 = alloca { i64, ptr }
  %l49 = alloca { i64, i64 }
  %l57 = alloca i1
  %l58 = alloca { i64, ptr }
  %l70 = alloca i64
  %l73 = alloca i64
  %l91 = alloca { i64, ptr }
  %l95 = alloca i1
  %l96 = alloca { i64, ptr }
  %l100 = alloca i1
  %l101 = alloca { i64, ptr }
  %l111 = alloca i64
  %l135 = alloca i64
  %l149 = alloca { { i64, ptr }, i64 }
  %l151 = alloca ptr
  %l153 = alloca { i64, ptr }
  %l165 = alloca i64
  %l168 = alloca i64
  %l186 = alloca ptr
  %l187 = alloca { i64, ptr }
  %l190 = alloca i8
  %l206 = alloca i1
  %l211 = alloca { i64, ptr }
  %l214 = alloca i1
  %l216 = alloca ptr
  %l217 = alloca { i64, ptr }
  %l221 = alloca i8
  %l224 = alloca ptr
  %l226 = alloca { i64, ptr }
  %l234 = alloca i1
  %l239 = alloca { i64, ptr }
  %l242 = alloca i1
  %l247 = alloca ptr
  %l249 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s18 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, [3 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store i64 0, ptr %l3, !tbaa !24
  store i64 0, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  %t1 = load { i64, [3 x i64] }, ptr %l2
  %t3 = extractvalue { i64, [3 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 3
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [3 x i64] }, ptr %l2, i32 0, i32 1
  %t7 = getelementptr { i64, i64, i64 }, ptr %t6, i32 0, i32 0
  %t8 = load i64, ptr %t7
  store i64 %t8, ptr %l6, !tbaa !24
  %t10 = getelementptr { i64, [3 x i64] }, ptr %l2, i32 0, i32 1
  %t11 = getelementptr { i64, i64, i64 }, ptr %t10, i32 0, i32 1
  %t12 = load i64, ptr %t11
  store i64 %t12, ptr %l7, !tbaa !24
  %t14 = getelementptr { i64, [3 x i64] }, ptr %l2, i32 0, i32 1
  %t15 = getelementptr { i64, i64, i64 }, ptr %t14, i32 0, i32 2
  %t16 = load i64, ptr %t15
  store i64 %t16, ptr %l8, !tbaa !24
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t18 = load i64, ptr %l6, !tbaa !24
  store i64 %t18, ptr %l3, !tbaa !24
  %t20 = load i64, ptr %l7, !tbaa !24
  store i64 %t20, ptr %l4, !tbaa !24
  %t22 = load i64, ptr %l8, !tbaa !24
  store i64 %t22, ptr %l5, !tbaa !24
  br label %bb9
bb4:
  br i1 true, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb8:
  call void @__olang_check_failed(ptr @olang_loc_c64be6b7d7a3c96a_e11c2151589de926)
  unreachable
bb9:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/diag:Diagnostics", ptr %t24, i32 0, i32 2
  %t27 = load i64, ptr %l3, !tbaa !24
  %t30 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t26, i64 %t27)
  store { i64, ptr } %t30, ptr %l45
  br label %bb10
bb10:
  %t31 = load { i64, ptr }, ptr %l45, !tbaa !27
  store { i64, ptr } %t31, ptr %l9, !tbaa !27
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load i64, ptr %l3, !tbaa !24
  %t34 = load i64, ptr %l4, !tbaa !24
  %t38 = call { i64, i64 } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2elineOf(ptr %v0, ptr %t32, i64 %t33, i64 %t34)
  store { i64, i64 } %t38, ptr %l49
  br label %bb11
bb11:
  %t39 = load { i64, i64 }, ptr %l49
  store { i64, i64 } %t39, ptr %l10
  %t40 = getelementptr { i64, i64 }, ptr %l10, i32 0, i32 0
  %t41 = load i64, ptr %t40, !tbaa !24
  store i64 %t41, ptr %l11, !tbaa !24
  %t43 = getelementptr { i64, i64 }, ptr %l10, i32 0, i32 1
  %t44 = load i64, ptr %t43, !tbaa !24
  store i64 %t44, ptr %l12, !tbaa !24
  %t46 = load i64, ptr %l4, !tbaa !24
  store i64 %t46, ptr %l13, !tbaa !24
  br label %bb12
bb12:
  %t48 = load i64, ptr %l13, !tbaa !24
  %t49 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t51 = extractvalue { i64, ptr } %t49, 0
  %t54 = icmp slt i64 %t48, %t51
  br i1 %t54, label %bb13, label %bb14
bb13:
  %t56 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t56, ptr %l58, !tbaa !27
  %t57 = load i64, ptr %l13, !tbaa !24
  %t59 = getelementptr { i64, ptr }, ptr %l58, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !27
  %t61 = getelementptr i8, ptr %t60, i64 %t57
  %t62 = load i8, ptr %t61, !tbaa !32
  %t64 = icmp ne i8 %t62, 10
  store i1 %t64, ptr %l57, !tbaa !21
  br label %bb15
bb14:
  store i1 false, ptr %l57, !tbaa !21
  br label %bb15
bb15:
  %t66 = load i1, ptr %l57, !tbaa !21
  %t67 = xor i1 %t66, true
  br i1 %t67, label %bb16, label %bb17
bb16:
  br label %bb20
bb17:
  br label %bb18
bb18:
  %t69 = load i64, ptr %l13, !tbaa !24
  %t71 = add i64 %t69, 1
  store i64 %t71, ptr %l13, !tbaa !24
  br label %bb19
bb19:
  br label %bb12
bb20:
  store i1 true, ptr %l14, !tbaa !21
  %t73 = load i64, ptr %l12, !tbaa !24
  store i64 %t73, ptr %l15, !tbaa !24
  %t75 = load i64, ptr %l13, !tbaa !24
  store i64 %t75, ptr %l16, !tbaa !24
  store i64 1, ptr %l17, !tbaa !24
  %t77 = load i64, ptr %l16, !tbaa !24
  %t78 = load i64, ptr %l15, !tbaa !24
  %t81 = icmp sgt i64 %t77, %t78
  br i1 %t81, label %bb21, label %bb22
bb21:
  %t83 = load i64, ptr %l17, !tbaa !24
  %t85 = icmp sgt i64 %t83, 0
  br i1 %t85, label %bb23, label %bb24
bb22:
  store i64 0, ptr %l70, !tbaa !24
  br label %bb26
bb23:
  %t87 = load i64, ptr %l16, !tbaa !24
  %t88 = load i64, ptr %l15, !tbaa !24
  %t91 = sub i64 %t87, %t88
  %t92 = load i64, ptr %l17, !tbaa !24
  %t95 = add i64 %t91, %t92
  %t97 = sub i64 %t95, 1
  %t98 = load i64, ptr %l17, !tbaa !24
  %t101 = sdiv i64 %t97, %t98
  store i64 %t101, ptr %l73, !tbaa !24
  br label %bb25
bb24:
  store i64 0, ptr %l73, !tbaa !24
  br label %bb25
bb25:
  %t103 = load i64, ptr %l73, !tbaa !24
  store i64 %t103, ptr %l70, !tbaa !24
  br label %bb26
bb26:
  %t104 = load i64, ptr %l70, !tbaa !24
  store i64 %t104, ptr %l18, !tbaa !24
  store i64 0, ptr %l19, !tbaa !24
  br label %bb27
bb27:
  %t105 = load i64, ptr %l19, !tbaa !24
  %t106 = load i64, ptr %l18, !tbaa !24
  %t109 = icmp slt i64 %t105, %t106
  %t111 = xor i1 %t109, true
  br i1 %t111, label %bb28, label %bb29
bb28:
  br label %bb41
bb29:
  br label %bb30
bb30:
  %t113 = load i64, ptr %l15, !tbaa !24
  %t114 = load i64, ptr %l19, !tbaa !24
  %t115 = load i64, ptr %l17, !tbaa !24
  %t118 = mul i64 %t114, %t115
  %t121 = add i64 %t113, %t118
  store i64 %t121, ptr %l20, !tbaa !24
  %t123 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t123, ptr %l91, !tbaa !27
  %t124 = load i64, ptr %l20, !tbaa !24
  %t126 = getelementptr { i64, ptr }, ptr %l91, i32 0, i32 1
  %t127 = load ptr, ptr %t126, !tbaa !27
  %t128 = getelementptr i8, ptr %t127, i64 %t124
  %t129 = load i8, ptr %t128, !tbaa !32
  %t131 = icmp ne i8 %t129, 32
  br i1 %t131, label %bb31, label %bb32
bb31:
  %t133 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t133, ptr %l96, !tbaa !27
  %t134 = load i64, ptr %l20, !tbaa !24
  %t136 = getelementptr { i64, ptr }, ptr %l96, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !27
  %t138 = getelementptr i8, ptr %t137, i64 %t134
  %t139 = load i8, ptr %t138, !tbaa !32
  %t141 = icmp ne i8 %t139, 9
  store i1 %t141, ptr %l95, !tbaa !21
  br label %bb33
bb32:
  store i1 false, ptr %l95, !tbaa !21
  br label %bb33
bb33:
  %t143 = load i1, ptr %l95, !tbaa !21
  br i1 %t143, label %bb34, label %bb35
bb34:
  %t144 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t144, ptr %l101, !tbaa !27
  %t145 = load i64, ptr %l20, !tbaa !24
  %t147 = getelementptr { i64, ptr }, ptr %l101, i32 0, i32 1
  %t148 = load ptr, ptr %t147, !tbaa !27
  %t149 = getelementptr i8, ptr %t148, i64 %t145
  %t150 = load i8, ptr %t149, !tbaa !32
  %t152 = icmp ne i8 %t150, 13
  store i1 %t152, ptr %l100, !tbaa !21
  br label %bb36
bb35:
  store i1 false, ptr %l100, !tbaa !21
  br label %bb36
bb36:
  %t154 = load i1, ptr %l100, !tbaa !21
  br i1 %t154, label %bb37, label %bb38
bb37:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb39
bb38:
  br label %bb39
bb39:
  br label %bb40
bb40:
  %t155 = load i64, ptr %l19, !tbaa !24
  %t157 = add i64 %t155, 1
  store i64 %t157, ptr %l19, !tbaa !24
  br label %bb27
bb41:
  %t159 = load i1, ptr %l14, !tbaa !21
  br i1 %t159, label %bb42, label %bb43
bb42:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb43:
  br label %bb44
bb44:
  %t161 = load i64, ptr %l5, !tbaa !24
  %t162 = load i64, ptr %l4, !tbaa !24
  %t165 = icmp sgt i64 %t161, %t162
  br i1 %t165, label %bb45, label %bb46
bb45:
  %t167 = load i64, ptr %l5, !tbaa !24
  store i64 %t167, ptr %l111, !tbaa !24
  br label %bb47
bb46:
  %t169 = load i64, ptr %l4, !tbaa !24
  %t171 = add i64 %t169, 1
  store i64 %t171, ptr %l111, !tbaa !24
  br label %bb47
bb47:
  %t173 = load i64, ptr %l111, !tbaa !24
  store i64 %t173, ptr %l21, !tbaa !24
  %t174 = load i64, ptr %l12, !tbaa !24
  store i64 %t174, ptr %l22, !tbaa !24
  %t176 = load i64, ptr %l13, !tbaa !24
  store i64 %t176, ptr %l23, !tbaa !24
  %t178 = load i64, ptr %l13, !tbaa !24
  %t179 = load i64, ptr %l12, !tbaa !24
  %t182 = sub i64 %t178, %t179
  %t183 = load i64, ptr @G_2ecompiler_2fdiag_2eExcerptMax, !tbaa !24
  %t186 = icmp sgt i64 %t182, %t183
  br i1 %t186, label %bb48, label %bb49
bb48:
  %t188 = load i64, ptr %l4, !tbaa !24
  %t189 = load i64, ptr @G_2ecompiler_2fdiag_2eExcerptAround, !tbaa !24
  %t192 = sub i64 %t188, %t189
  %t193 = load i64, ptr %l22, !tbaa !24
  %t196 = icmp sgt i64 %t192, %t193
  br i1 %t196, label %bb50, label %bb51
bb49:
  br label %bb59
bb50:
  %t198 = load i64, ptr %l4, !tbaa !24
  %t199 = load i64, ptr @G_2ecompiler_2fdiag_2eExcerptAround, !tbaa !24
  %t202 = sub i64 %t198, %t199
  store i64 %t202, ptr %l22, !tbaa !24
  br label %bb52
bb51:
  br label %bb52
bb52:
  %t204 = load i64, ptr %l21, !tbaa !24
  %t205 = load i64, ptr %l4, !tbaa !24
  %t206 = load i64, ptr @G_2ecompiler_2fdiag_2eExcerptAround, !tbaa !24
  %t209 = add i64 %t205, %t206
  %t212 = icmp slt i64 %t204, %t209
  br i1 %t212, label %bb53, label %bb54
bb53:
  %t214 = load i64, ptr %l21, !tbaa !24
  store i64 %t214, ptr %l135, !tbaa !24
  br label %bb55
bb54:
  %t216 = load i64, ptr %l4, !tbaa !24
  %t217 = load i64, ptr @G_2ecompiler_2fdiag_2eExcerptAround, !tbaa !24
  %t220 = add i64 %t216, %t217
  store i64 %t220, ptr %l135, !tbaa !24
  br label %bb55
bb55:
  %t222 = load i64, ptr @G_2ecompiler_2fdiag_2eExcerptAround, !tbaa !24
  %t223 = load i64, ptr %l135, !tbaa !24
  %t225 = add i64 %t223, %t222
  store i64 %t225, ptr %l24, !tbaa !24
  %t227 = load i64, ptr %l24, !tbaa !24
  %t228 = load i64, ptr %l23, !tbaa !24
  %t231 = icmp slt i64 %t227, %t228
  br i1 %t231, label %bb56, label %bb57
bb56:
  %t233 = load i64, ptr %l24, !tbaa !24
  store i64 %t233, ptr %l23, !tbaa !24
  br label %bb58
bb57:
  br label %bb58
bb58:
  br label %bb59
bb59:
  %t235 = load ptr, ptr %l0, !tbaa !29
  %t236 = load i64, ptr %l3, !tbaa !24
  %t237 = load i64, ptr %l11, !tbaa !24
  %t241 = call { { i64, ptr }, i64 } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eshown(ptr %v0, ptr %s0, ptr %t235, i64 %t236, i64 %t237)
  store { { i64, ptr }, i64 } %t241, ptr %l149
  br label %bb60
bb60:
  %t242 = load { { i64, ptr }, i64 }, ptr %l149
  store { { i64, ptr }, i64 } %t242, ptr %l25
  %t243 = getelementptr { { i64, ptr }, i64 }, ptr %l25, i32 0, i32 1
  %t244 = load i64, ptr %t243, !tbaa !24
  %t246 = load ptr, ptr %l1, !tbaa !29
  store ptr %t246, ptr %l151, !tbaa !29
  %t249 = call { i64, ptr } @std_2fprelude_2ftext_2eI64_2ePadStart(ptr %s0, i64 %t244, i64 5, i8 32)
  store { i64, ptr } %t249, ptr %l153
  br label %bb61
bb61:
  %t250 = load { i64, ptr }, ptr %l153, !tbaa !27
  %t251 = extractvalue { i64, ptr } %t250, 1
  %t252 = extractvalue { i64, ptr } %t250, 0
  %t253 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d43, i32 0, i32 1) }, 1
  %t254 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d43, i32 0, i32 1) }, 0
  %t255 = add i64 %t252, %t254
  %t256 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t255)
  call void @olang_textcopy(ptr %t256, ptr %t251, i64 %t252)
  %t257 = getelementptr i8, ptr %t256, i64 %t252
  call void @olang_textcopy(ptr %t257, ptr %t253, i64 %t254)
  %t258 = insertvalue { i64, ptr } undef, i64 %t255, 0
  %t259 = insertvalue { i64, ptr } %t258, ptr %t256, 1
  %t261 = extractvalue { i64, ptr } %t259, 0
  %t262 = extractvalue { i64, ptr } %t259, 1
  %t263 = mul i64 %t261, 1
  %t264 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t263)
  call void @llvm.memcpy.p0.p0.i64(ptr %t264, ptr %t262, i64 %t263, i1 false)
  %t265 = insertvalue { i64, ptr } undef, i64 %t261, 0
  %t266 = insertvalue { i64, ptr } %t265, ptr %t264, 1
  %t267 = load ptr, ptr %l151, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s0, ptr %t267, { i64, ptr } %t266)
  br label %bb62
bb62:
  %t269 = load i64, ptr %l22, !tbaa !24
  %t270 = load i64, ptr %l12, !tbaa !24
  %t273 = icmp sgt i64 %t269, %t270
  br i1 %t273, label %bb63, label %bb64
bb63:
  store %olang.scope zeroinitializer, ptr %s13
  %t275 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s13, ptr %t275, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d44, i32 0, i32 1) })
  br label %bb65
bb64:
  br label %bb66
bb65:
  call void @__olang_scope_close(ptr %s13)
  br label %bb66
bb66:
  %t277 = load i64, ptr %l22, !tbaa !24
  store i64 %t277, ptr %l27, !tbaa !24
  %t279 = load i64, ptr %l23, !tbaa !24
  store i64 %t279, ptr %l28, !tbaa !24
  store i64 1, ptr %l29, !tbaa !24
  %t281 = load i64, ptr %l28, !tbaa !24
  %t282 = load i64, ptr %l27, !tbaa !24
  %t285 = icmp sgt i64 %t281, %t282
  br i1 %t285, label %bb67, label %bb68
bb67:
  %t287 = load i64, ptr %l29, !tbaa !24
  %t289 = icmp sgt i64 %t287, 0
  br i1 %t289, label %bb69, label %bb70
bb68:
  store i64 0, ptr %l165, !tbaa !24
  br label %bb72
bb69:
  %t291 = load i64, ptr %l28, !tbaa !24
  %t292 = load i64, ptr %l27, !tbaa !24
  %t295 = sub i64 %t291, %t292
  %t296 = load i64, ptr %l29, !tbaa !24
  %t299 = add i64 %t295, %t296
  %t301 = sub i64 %t299, 1
  %t302 = load i64, ptr %l29, !tbaa !24
  %t305 = sdiv i64 %t301, %t302
  store i64 %t305, ptr %l168, !tbaa !24
  br label %bb71
bb70:
  store i64 0, ptr %l168, !tbaa !24
  br label %bb71
bb71:
  %t307 = load i64, ptr %l168, !tbaa !24
  store i64 %t307, ptr %l165, !tbaa !24
  br label %bb72
bb72:
  %t308 = load i64, ptr %l165, !tbaa !24
  store i64 %t308, ptr %l30, !tbaa !24
  store i64 0, ptr %l31, !tbaa !24
  br label %bb73
bb73:
  %t309 = load i64, ptr %l31, !tbaa !24
  %t310 = load i64, ptr %l30, !tbaa !24
  %t313 = icmp slt i64 %t309, %t310
  %t315 = xor i1 %t313, true
  br i1 %t315, label %bb74, label %bb75
bb74:
  br label %bb80
bb75:
  br label %bb76
bb76:
  %t317 = load i64, ptr %l27, !tbaa !24
  %t318 = load i64, ptr %l31, !tbaa !24
  %t319 = load i64, ptr %l29, !tbaa !24
  %t322 = mul i64 %t318, %t319
  %t325 = add i64 %t317, %t322
  %t327 = load ptr, ptr %l1, !tbaa !29
  store ptr %t327, ptr %l186, !tbaa !29
  %t328 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t328, ptr %l187, !tbaa !27
  %t331 = getelementptr { i64, ptr }, ptr %l187, i32 0, i32 1
  %t332 = load ptr, ptr %t331, !tbaa !27
  %t333 = getelementptr i8, ptr %t332, i64 %t325
  %t334 = load i8, ptr %t333, !tbaa !32
  %t336 = call i8 @compiler_2fdiag_2eprintable(i8 %t334)
  store i8 %t336, ptr %l190
  br label %bb77
bb77:
  %t337 = load ptr, ptr %l186, !tbaa !29
  %t338 = load i8, ptr %l190, !tbaa !22
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t337, i8 %t338)
  br label %bb78
bb78:
  br label %bb79
bb79:
  %t339 = load i64, ptr %l31, !tbaa !24
  %t341 = add i64 %t339, 1
  store i64 %t341, ptr %l31, !tbaa !24
  br label %bb73
bb80:
  %t343 = load i64, ptr %l23, !tbaa !24
  %t344 = load i64, ptr %l13, !tbaa !24
  %t347 = icmp slt i64 %t343, %t344
  br i1 %t347, label %bb81, label %bb82
bb81:
  store %olang.scope zeroinitializer, ptr %s17
  %t349 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s17, ptr %t349, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d45, i32 0, i32 1) })
  br label %bb83
bb82:
  br label %bb84
bb83:
  call void @__olang_scope_close(ptr %s17)
  br label %bb84
bb84:
  %t351 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s0, ptr %t351, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d46, i32 0, i32 1) })
  br label %bb85
bb85:
  %t353 = load i64, ptr %l22, !tbaa !24
  %t354 = load i64, ptr %l12, !tbaa !24
  %t357 = icmp sgt i64 %t353, %t354
  br i1 %t357, label %bb86, label %bb87
bb86:
  store %olang.scope zeroinitializer, ptr %s18
  %t359 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s18, ptr %t359, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d47, i32 0, i32 1) })
  br label %bb88
bb87:
  br label %bb89
bb88:
  call void @__olang_scope_close(ptr %s18)
  br label %bb89
bb89:
  %t361 = load i64, ptr %l22, !tbaa !24
  store i64 %t361, ptr %l33, !tbaa !24
  br label %bb90
bb90:
  %t363 = load i64, ptr %l33, !tbaa !24
  %t364 = load i64, ptr %l4, !tbaa !24
  %t367 = icmp slt i64 %t363, %t364
  br i1 %t367, label %bb91, label %bb92
bb91:
  %t369 = load i64, ptr %l33, !tbaa !24
  %t370 = load i64, ptr %l23, !tbaa !24
  %t373 = icmp slt i64 %t369, %t370
  store i1 %t373, ptr %l206, !tbaa !21
  br label %bb93
bb92:
  store i1 false, ptr %l206, !tbaa !21
  br label %bb93
bb93:
  %t375 = load i1, ptr %l206, !tbaa !21
  %t376 = xor i1 %t375, true
  br i1 %t376, label %bb94, label %bb95
bb94:
  br label %bb106
bb95:
  br label %bb96
bb96:
  %t378 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t378, ptr %l211, !tbaa !27
  %t379 = load i64, ptr %l33, !tbaa !24
  %t381 = getelementptr { i64, ptr }, ptr %l211, i32 0, i32 1
  %t382 = load ptr, ptr %t381, !tbaa !27
  %t383 = getelementptr i8, ptr %t382, i64 %t379
  %t384 = load i8, ptr %t383, !tbaa !32
  %t386 = call i1 @compiler_2fdiag_2econtinues(i8 %t384)
  store i1 %t386, ptr %l214
  br label %bb97
bb97:
  %t387 = load i1, ptr %l214, !tbaa !21
  %t388 = xor i1 %t387, true
  br i1 %t388, label %bb98, label %bb99
bb98:
  %t390 = load ptr, ptr %l1, !tbaa !29
  store ptr %t390, ptr %l216, !tbaa !29
  %t391 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t391, ptr %l217, !tbaa !27
  %t392 = load i64, ptr %l33, !tbaa !24
  %t394 = getelementptr { i64, ptr }, ptr %l217, i32 0, i32 1
  %t395 = load ptr, ptr %t394, !tbaa !27
  %t396 = getelementptr i8, ptr %t395, i64 %t392
  %t397 = load i8, ptr %t396, !tbaa !32
  %t399 = icmp eq i8 %t397, 9
  br i1 %t399, label %bb100, label %bb101
bb99:
  br label %bb104
bb100:
  store i8 9, ptr %l221, !tbaa !22
  br label %bb102
bb101:
  store i8 32, ptr %l221, !tbaa !22
  br label %bb102
bb102:
  %t401 = load ptr, ptr %l216, !tbaa !29
  %t402 = load i8, ptr %l221, !tbaa !22
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t401, i8 %t402)
  br label %bb103
bb103:
  br label %bb104
bb104:
  %t403 = load i64, ptr %l33, !tbaa !24
  %t405 = add i64 %t403, 1
  store i64 %t405, ptr %l33, !tbaa !24
  br label %bb105
bb105:
  br label %bb90
bb106:
  %t407 = load ptr, ptr %l1, !tbaa !29
  store ptr %t407, ptr %l224, !tbaa !29
  %t408 = load ptr, ptr %l0, !tbaa !29
  %t410 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2esgr(ptr %v0, ptr %s0, ptr %s0, ptr %t408, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d48, i32 0, i32 1) })
  store { i64, ptr } %t410, ptr %l226
  br label %bb107
bb107:
  %t411 = load { i64, ptr }, ptr %l226, !tbaa !27
  %t412 = extractvalue { i64, ptr } %t411, 0
  %t413 = extractvalue { i64, ptr } %t411, 1
  %t414 = mul i64 %t412, 1
  %t415 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t414)
  call void @llvm.memcpy.p0.p0.i64(ptr %t415, ptr %t413, i64 %t414, i1 false)
  %t416 = insertvalue { i64, ptr } undef, i64 %t412, 0
  %t417 = insertvalue { i64, ptr } %t416, ptr %t415, 1
  %t418 = load ptr, ptr %l224, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s0, ptr %t418, { i64, ptr } %t417)
  br label %bb108
bb108:
  %t420 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t420, i8 94)
  br label %bb109
bb109:
  %t422 = load i64, ptr %l4, !tbaa !24
  %t424 = add i64 %t422, 1
  store i64 %t424, ptr %l33, !tbaa !24
  br label %bb110
bb110:
  %t426 = load i64, ptr %l33, !tbaa !24
  %t427 = load i64, ptr %l21, !tbaa !24
  %t430 = icmp slt i64 %t426, %t427
  br i1 %t430, label %bb111, label %bb112
bb111:
  %t432 = load i64, ptr %l33, !tbaa !24
  %t433 = load i64, ptr %l23, !tbaa !24
  %t436 = icmp slt i64 %t432, %t433
  store i1 %t436, ptr %l234, !tbaa !21
  br label %bb113
bb112:
  store i1 false, ptr %l234, !tbaa !21
  br label %bb113
bb113:
  %t438 = load i1, ptr %l234, !tbaa !21
  %t439 = xor i1 %t438, true
  br i1 %t439, label %bb114, label %bb115
bb114:
  br label %bb123
bb115:
  br label %bb116
bb116:
  %t441 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t441, ptr %l239, !tbaa !27
  %t442 = load i64, ptr %l33, !tbaa !24
  %t444 = getelementptr { i64, ptr }, ptr %l239, i32 0, i32 1
  %t445 = load ptr, ptr %t444, !tbaa !27
  %t446 = getelementptr i8, ptr %t445, i64 %t442
  %t447 = load i8, ptr %t446, !tbaa !32
  %t449 = call i1 @compiler_2fdiag_2econtinues(i8 %t447)
  store i1 %t449, ptr %l242
  br label %bb117
bb117:
  %t450 = load i1, ptr %l242, !tbaa !21
  %t451 = xor i1 %t450, true
  br i1 %t451, label %bb118, label %bb119
bb118:
  %t453 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t453, i8 126)
  br label %bb120
bb119:
  br label %bb121
bb120:
  br label %bb121
bb121:
  %t455 = load i64, ptr %l33, !tbaa !24
  %t457 = add i64 %t455, 1
  store i64 %t457, ptr %l33, !tbaa !24
  br label %bb122
bb122:
  br label %bb110
bb123:
  %t459 = load ptr, ptr %l1, !tbaa !29
  store ptr %t459, ptr %l247, !tbaa !29
  %t460 = load ptr, ptr %l0, !tbaa !29
  %t462 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2esgr(ptr %v0, ptr %s0, ptr %s0, ptr %t460, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d49, i32 0, i32 1) })
  store { i64, ptr } %t462, ptr %l249
  br label %bb124
bb124:
  %t463 = load { i64, ptr }, ptr %l249, !tbaa !27
  %t464 = extractvalue { i64, ptr } %t463, 0
  %t465 = extractvalue { i64, ptr } %t463, 1
  %t466 = mul i64 %t464, 1
  %t467 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t466)
  call void @llvm.memcpy.p0.p0.i64(ptr %t467, ptr %t465, i64 %t466, i1 false)
  %t468 = insertvalue { i64, ptr } undef, i64 %t464, 0
  %t469 = insertvalue { i64, ptr } %t468, ptr %t467, 1
  %t470 = load ptr, ptr %l247, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s0, ptr %t470, { i64, ptr } %t469)
  br label %bb125
bb125:
  %t472 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t472, i8 10)
  br label %bb126
bb126:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eputLocation(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [3 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, [3 x i64] }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca { { i64, ptr }, i64 }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca { i64, i64 }
  %l13 = alloca i64
  %l14 = alloca { { i64, ptr }, i64 }
  %l17 = alloca ptr
  %l19 = alloca { i64, ptr }
  %l27 = alloca ptr
  %l31 = alloca { i64, ptr }
  %l39 = alloca { { i64, ptr }, i64 }
  %l54 = alloca { i64, i64 }
  %l60 = alloca { { i64, ptr }, i64 }
  %l73 = alloca ptr
  %l75 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, [3 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l17, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2esgr(ptr %v0, ptr %s0, ptr %s0, ptr %t2, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d50, i32 0, i32 1) })
  store { i64, ptr } %t4, ptr %l19
  br label %bb1
bb1:
  %t5 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t5, 0
  %t7 = extractvalue { i64, ptr } %t5, 1
  %t8 = mul i64 %t6, 1
  %t9 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t8)
  call void @llvm.memcpy.p0.p0.i64(ptr %t9, ptr %t7, i64 %t8, i1 false)
  %t10 = insertvalue { i64, ptr } undef, i64 %t6, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  %t12 = load ptr, ptr %l17, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s0, ptr %t12, { i64, ptr } %t11)
  br label %bb2
bb2:
  %t14 = load { i64, [3 x i64] }, ptr %l2
  %t16 = extractvalue { i64, [3 x i64] } %t14, 0
  %t17 = icmp eq i64 %t16, 0
  br i1 %t17, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb7
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t19 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s1, ptr %t19, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d51, i32 0, i32 1) })
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s1)
  br label %bb27
bb7:
  %t21 = load { i64, [3 x i64] }, ptr %l2
  %t23 = extractvalue { i64, [3 x i64] } %t21, 0
  %t24 = icmp eq i64 %t23, 1
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t26 = getelementptr { i64, [3 x i64] }, ptr %l2, i32 0, i32 1
  %t27 = getelementptr { i64 }, ptr %t26, i32 0, i32 0
  %t28 = load i64, ptr %t27
  store i64 %t28, ptr %l3, !tbaa !24
  br label %bb10
bb9:
  br label %bb13
bb10:
  %t30 = load ptr, ptr %l1, !tbaa !29
  store ptr %t30, ptr %l27, !tbaa !29
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/diag:Diagnostics", ptr %t31, i32 0, i32 1
  %t34 = load i64, ptr %l3, !tbaa !24
  %t37 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t33, i64 %t34)
  store { i64, ptr } %t37, ptr %l31
  br label %bb11
bb11:
  %t38 = load ptr, ptr %l27, !tbaa !29
  %t39 = load { i64, ptr }, ptr %l31, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %v0, ptr %t38, { i64, ptr } %t39)
  br label %bb12
bb12:
  br label %bb27
bb13:
  %t40 = load { i64, [3 x i64] }, ptr %l2
  %t42 = extractvalue { i64, [3 x i64] } %t40, 0
  %t43 = icmp eq i64 %t42, 2
  br i1 %t43, label %bb14, label %bb15
bb14:
  %t45 = getelementptr { i64, [3 x i64] }, ptr %l2, i32 0, i32 1
  %t46 = getelementptr { i64, i64 }, ptr %t45, i32 0, i32 0
  %t47 = load i64, ptr %t46
  store i64 %t47, ptr %l4, !tbaa !24
  %t49 = getelementptr { i64, [3 x i64] }, ptr %l2, i32 0, i32 1
  %t50 = getelementptr { i64, i64 }, ptr %t49, i32 0, i32 1
  %t51 = load i64, ptr %t50
  store i64 %t51, ptr %l5, !tbaa !24
  br label %bb16
bb15:
  br label %bb19
bb16:
  store %olang.scope zeroinitializer, ptr %s3
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load i64, ptr %l4, !tbaa !24
  %t55 = load i64, ptr %l5, !tbaa !24
  %t59 = call { { i64, ptr }, i64 } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eshown(ptr %v0, ptr %s3, ptr %t53, i64 %t54, i64 %t55)
  store { { i64, ptr }, i64 } %t59, ptr %l39
  br label %bb17
bb17:
  %t60 = load { { i64, ptr }, i64 }, ptr %l39
  store { { i64, ptr }, i64 } %t60, ptr %l6
  %t61 = getelementptr { { i64, ptr }, i64 }, ptr %l6, i32 0, i32 0
  %t62 = load { i64, ptr }, ptr %t61, !tbaa !27
  %t64 = getelementptr { { i64, ptr }, i64 }, ptr %l6, i32 0, i32 1
  %t65 = load i64, ptr %t64, !tbaa !24
  %t67 = load ptr, ptr %l1, !tbaa !29
  %t71 = extractvalue { i64, ptr } %t62, 1
  %t72 = extractvalue { i64, ptr } %t62, 0
  %t73 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d52, i32 0, i32 1) }, 1
  %t74 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d52, i32 0, i32 1) }, 0
  %t75 = add i64 %t72, %t74
  %t77 = call i64 @__olang_fmt_i64(ptr null, i64 %t65)
  %t78 = add i64 %t75, %t77
  %t79 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t78)
  call void @olang_textcopy(ptr %t79, ptr %t71, i64 %t72)
  %t80 = getelementptr i8, ptr %t79, i64 %t72
  call void @olang_textcopy(ptr %t80, ptr %t73, i64 %t74)
  %t81 = getelementptr i8, ptr %t80, i64 %t74
  %t82 = call i64 @__olang_fmt_i64(ptr %t81, i64 %t65)
  %t83 = insertvalue { i64, ptr } undef, i64 %t78, 0
  %t84 = insertvalue { i64, ptr } %t83, ptr %t79, 1
  %t86 = extractvalue { i64, ptr } %t84, 0
  %t87 = extractvalue { i64, ptr } %t84, 1
  %t88 = mul i64 %t86, 1
  %t89 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t88)
  call void @llvm.memcpy.p0.p0.i64(ptr %t89, ptr %t87, i64 %t88, i1 false)
  %t90 = insertvalue { i64, ptr } undef, i64 %t86, 0
  %t91 = insertvalue { i64, ptr } %t90, ptr %t89, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s3, ptr %t67, { i64, ptr } %t91)
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s3)
  br label %bb27
bb19:
  %t94 = load { i64, [3 x i64] }, ptr %l2
  %t96 = extractvalue { i64, [3 x i64] } %t94, 0
  %t97 = icmp eq i64 %t96, 3
  br i1 %t97, label %bb20, label %bb21
bb20:
  %t99 = getelementptr { i64, [3 x i64] }, ptr %l2, i32 0, i32 1
  %t100 = getelementptr { i64, i64, i64 }, ptr %t99, i32 0, i32 0
  %t101 = load i64, ptr %t100
  store i64 %t101, ptr %l9, !tbaa !24
  %t103 = getelementptr { i64, [3 x i64] }, ptr %l2, i32 0, i32 1
  %t104 = getelementptr { i64, i64, i64 }, ptr %t103, i32 0, i32 1
  %t105 = load i64, ptr %t104
  store i64 %t105, ptr %l10, !tbaa !24
  br label %bb22
bb21:
  br label %bb26
bb22:
  store %olang.scope zeroinitializer, ptr %s5
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load i64, ptr %l9, !tbaa !24
  %t109 = load i64, ptr %l10, !tbaa !24
  %t113 = call { i64, i64 } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2elineOf(ptr %v0, ptr %t107, i64 %t108, i64 %t109)
  store { i64, i64 } %t113, ptr %l54
  br label %bb23
bb23:
  %t114 = load { i64, i64 }, ptr %l54
  store { i64, i64 } %t114, ptr %l11
  %t115 = getelementptr { i64, i64 }, ptr %l11, i32 0, i32 0
  %t116 = load i64, ptr %t115, !tbaa !24
  %t118 = getelementptr { i64, i64 }, ptr %l11, i32 0, i32 1
  %t119 = load i64, ptr %t118, !tbaa !24
  store i64 %t119, ptr %l13, !tbaa !24
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t122 = load i64, ptr %l9, !tbaa !24
  %t127 = call { { i64, ptr }, i64 } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eshown(ptr %v0, ptr %s5, ptr %t121, i64 %t122, i64 %t116)
  store { { i64, ptr }, i64 } %t127, ptr %l60
  br label %bb24
bb24:
  %t128 = load { { i64, ptr }, i64 }, ptr %l60
  store { { i64, ptr }, i64 } %t128, ptr %l14
  %t129 = getelementptr { { i64, ptr }, i64 }, ptr %l14, i32 0, i32 0
  %t130 = load { i64, ptr }, ptr %t129, !tbaa !27
  %t132 = getelementptr { { i64, ptr }, i64 }, ptr %l14, i32 0, i32 1
  %t133 = load i64, ptr %t132, !tbaa !24
  %t135 = load ptr, ptr %l1, !tbaa !29
  %t138 = load i64, ptr %l10, !tbaa !24
  %t139 = load i64, ptr %l13, !tbaa !24
  %t142 = sub i64 %t138, %t139
  %t144 = add i64 %t142, 1
  %t146 = extractvalue { i64, ptr } %t130, 1
  %t147 = extractvalue { i64, ptr } %t130, 0
  %t148 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d53, i32 0, i32 1) }, 1
  %t149 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d53, i32 0, i32 1) }, 0
  %t150 = add i64 %t147, %t149
  %t152 = call i64 @__olang_fmt_i64(ptr null, i64 %t133)
  %t153 = add i64 %t150, %t152
  %t154 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d53, i32 0, i32 1) }, 1
  %t155 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d53, i32 0, i32 1) }, 0
  %t156 = add i64 %t153, %t155
  %t158 = call i64 @__olang_fmt_i64(ptr null, i64 %t144)
  %t159 = add i64 %t156, %t158
  %t160 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t159)
  call void @olang_textcopy(ptr %t160, ptr %t146, i64 %t147)
  %t161 = getelementptr i8, ptr %t160, i64 %t147
  call void @olang_textcopy(ptr %t161, ptr %t148, i64 %t149)
  %t162 = getelementptr i8, ptr %t161, i64 %t149
  %t163 = call i64 @__olang_fmt_i64(ptr %t162, i64 %t133)
  %t164 = getelementptr i8, ptr %t162, i64 %t152
  call void @olang_textcopy(ptr %t164, ptr %t154, i64 %t155)
  %t165 = getelementptr i8, ptr %t164, i64 %t155
  %t166 = call i64 @__olang_fmt_i64(ptr %t165, i64 %t144)
  %t167 = insertvalue { i64, ptr } undef, i64 %t159, 0
  %t168 = insertvalue { i64, ptr } %t167, ptr %t160, 1
  %t170 = extractvalue { i64, ptr } %t168, 0
  %t171 = extractvalue { i64, ptr } %t168, 1
  %t172 = mul i64 %t170, 1
  %t173 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t172)
  call void @llvm.memcpy.p0.p0.i64(ptr %t173, ptr %t171, i64 %t172, i1 false)
  %t174 = insertvalue { i64, ptr } undef, i64 %t170, 0
  %t175 = insertvalue { i64, ptr } %t174, ptr %t173, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s5, ptr %t135, { i64, ptr } %t175)
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s5)
  br label %bb27
bb26:
  call void @__olang_check_failed(ptr @olang_loc_63cbd536ec427bfa_9ebcb75929bac85e)
  unreachable
bb27:
  %t178 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s0, ptr %t178, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d54, i32 0, i32 1) })
  br label %bb28
bb28:
  %t180 = load ptr, ptr %l1, !tbaa !29
  store ptr %t180, ptr %l73, !tbaa !29
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t183 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2esgr(ptr %v0, ptr %s0, ptr %s0, ptr %t181, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d55, i32 0, i32 1) })
  store { i64, ptr } %t183, ptr %l75
  br label %bb29
bb29:
  %t184 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t185 = extractvalue { i64, ptr } %t184, 0
  %t186 = extractvalue { i64, ptr } %t184, 1
  %t187 = mul i64 %t185, 1
  %t188 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t187)
  call void @llvm.memcpy.p0.p0.i64(ptr %t188, ptr %t186, i64 %t187, i1 false)
  %t189 = insertvalue { i64, ptr } undef, i64 %t185, 0
  %t190 = insertvalue { i64, ptr } %t189, ptr %t188, 1
  %t191 = load ptr, ptr %l73, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s0, ptr %t191, { i64, ptr } %t190)
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eputNote(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l8 = alloca { i64, [3 x i64] }
  %l11 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = getelementptr %"compiler/diag:note", ptr %t1, i32 0, i32 4
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  store %olang.scope zeroinitializer, ptr %s1
  %t6 = load ptr, ptr %l0, !tbaa !29
  store ptr %t6, ptr %l5, !tbaa !29
  %t7 = load ptr, ptr %l1, !tbaa !29
  store ptr %t7, ptr %l6, !tbaa !29
  %t8 = load ptr, ptr %l2, !tbaa !29
  %t10 = getelementptr %"compiler/diag:note", ptr %t8, i32 0, i32 1
  %t11 = load { i64, [3 x i64] }, ptr %t10
  store { i64, [3 x i64] } %t11, ptr %l8
  %t12 = load ptr, ptr %l2, !tbaa !29
  %t14 = getelementptr %"compiler/diag:note", ptr %t12, i32 0, i32 3
  %t15 = load i1, ptr %t14, !tbaa !21
  br i1 %t15, label %bb3, label %bb4
bb2:
  store %olang.scope zeroinitializer, ptr %s2
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load ptr, ptr %l1, !tbaa !29
  %t19 = load ptr, ptr %l2, !tbaa !29
  %t21 = getelementptr %"compiler/diag:note", ptr %t19, i32 0, i32 1
  %t22 = load { i64, [3 x i64] }, ptr %t21
  %t23 = load ptr, ptr %l2, !tbaa !29
  %t25 = getelementptr %"compiler/diag:note", ptr %t23, i32 0, i32 2
  %t26 = load { i64, ptr }, ptr %t25, !tbaa !27
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eputRow(ptr %v0, ptr %v1, ptr %s2, ptr %s2, ptr %v2, ptr %t17, ptr %t18, { i64, [3 x i64] } %t22, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d56, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d57, i32 0, i32 1) }, { i64, ptr } %t26)
  br label %bb7
bb3:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d58, i32 0, i32 1) }, ptr %l11, !tbaa !27
  br label %bb5
bb4:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d59, i32 0, i32 1) }, ptr %l11, !tbaa !27
  br label %bb5
bb5:
  %t31 = load ptr, ptr %l2, !tbaa !29
  %t33 = getelementptr %"compiler/diag:note", ptr %t31, i32 0, i32 2
  %t34 = load { i64, ptr }, ptr %t33, !tbaa !27
  %t35 = load ptr, ptr %l5, !tbaa !29
  %t36 = load ptr, ptr %l6, !tbaa !29
  %t37 = load { i64, [3 x i64] }, ptr %l8
  %t38 = load { i64, ptr }, ptr %l11, !tbaa !27
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eputPlain(ptr %v0, ptr %v1, ptr %s1, ptr %v2, ptr %t35, ptr %t36, { i64, [3 x i64] } %t37, { i64, ptr } %t38, { i64, ptr } %t34)
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s1)
  br label %bb8
bb7:
  call void @__olang_scope_close(ptr %s2)
  br label %bb8
bb8:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eputPlain(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, [3 x i64] } %a2, { i64, ptr } %a3, { i64, ptr } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l8 = alloca ptr
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eputLocation(ptr %v0, ptr %v1, ptr %t1, ptr %t2, { i64, [3 x i64] } %a2)
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l1, !tbaa !29
  store ptr %t7, ptr %l8, !tbaa !29
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2esgr(ptr %v0, ptr %s0, ptr %s0, ptr %t8, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d60, i32 0, i32 1) })
  store { i64, ptr } %t10, ptr %l10
  br label %bb2
bb2:
  store { i64, ptr } %a3, ptr %l11, !tbaa !27
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2esgr(ptr %v0, ptr %s0, ptr %s0, ptr %t12, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d61, i32 0, i32 1) })
  store { i64, ptr } %t14, ptr %l13
  br label %bb3
bb3:
  %t15 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t15, 1
  %t17 = extractvalue { i64, ptr } %t15, 0
  %t18 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t18, 1
  %t20 = extractvalue { i64, ptr } %t18, 0
  %t21 = add i64 %t17, %t20
  %t22 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d62, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d62, i32 0, i32 1) }, 0
  %t24 = add i64 %t21, %t23
  %t25 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t25, 1
  %t27 = extractvalue { i64, ptr } %t25, 0
  %t28 = add i64 %t24, %t27
  %t29 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d63, i32 0, i32 1) }, 1
  %t30 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d63, i32 0, i32 1) }, 0
  %t31 = add i64 %t28, %t30
  %t32 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t31)
  call void @olang_textcopy(ptr %t32, ptr %t16, i64 %t17)
  %t33 = getelementptr i8, ptr %t32, i64 %t17
  call void @olang_textcopy(ptr %t33, ptr %t19, i64 %t20)
  %t34 = getelementptr i8, ptr %t33, i64 %t20
  call void @olang_textcopy(ptr %t34, ptr %t22, i64 %t23)
  %t35 = getelementptr i8, ptr %t34, i64 %t23
  call void @olang_textcopy(ptr %t35, ptr %t26, i64 %t27)
  %t36 = getelementptr i8, ptr %t35, i64 %t27
  call void @olang_textcopy(ptr %t36, ptr %t29, i64 %t30)
  %t37 = insertvalue { i64, ptr } undef, i64 %t31, 0
  %t38 = insertvalue { i64, ptr } %t37, ptr %t32, 1
  %t40 = extractvalue { i64, ptr } %t38, 0
  %t41 = extractvalue { i64, ptr } %t38, 1
  %t42 = mul i64 %t40, 1
  %t43 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t42)
  call void @llvm.memcpy.p0.p0.i64(ptr %t43, ptr %t41, i64 %t42, i1 false)
  %t44 = insertvalue { i64, ptr } undef, i64 %t40, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t43, 1
  %t46 = load ptr, ptr %l8, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s0, ptr %t46, { i64, ptr } %t45)
  br label %bb4
bb4:
  %t48 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %v3, ptr %t48, { i64, ptr } %a4)
  br label %bb5
bb5:
  %t52 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t52, i8 10)
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eputRow(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, { i64, [3 x i64] } %a2, { i64, ptr } %a3, { i64, ptr } %a4, { i64, ptr } %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, [3 x i64] }
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l10 = alloca i1
  %l11 = alloca ptr
  %l14 = alloca { i64, ptr }
  %l17 = alloca i1
  %l18 = alloca ptr
  %l20 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l26 = alloca ptr
  %l28 = alloca { i64, ptr }
  %l30 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, [3 x i64] } %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  store { i64, ptr } %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t3 = load { i64, [3 x i64] }, ptr %l2
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eputLocation(ptr %v0, ptr %v1, ptr %t1, ptr %t2, { i64, [3 x i64] } %t3)
  br label %bb1
bb1:
  %t7 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t9 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t7, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d64, i32 0, i32 1) })
  store i1 %t9, ptr %l10
  br label %bb2
bb2:
  %t10 = load i1, ptr %l10, !tbaa !21
  br i1 %t10, label %bb3, label %bb4
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t11 = load ptr, ptr %l1, !tbaa !29
  store ptr %t11, ptr %l11, !tbaa !29
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t16 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eerrorWord(ptr %v0, ptr %v3, ptr %s1, ptr %t12, { i64, ptr } %t13)
  store { i64, ptr } %t16, ptr %l14
  br label %bb5
bb4:
  store %olang.scope zeroinitializer, ptr %s2
  %t17 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t19 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s2, { i64, ptr } %t17, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d65, i32 0, i32 1) })
  store i1 %t19, ptr %l17
  br label %bb7
bb5:
  %t20 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t20, 0
  %t22 = extractvalue { i64, ptr } %t20, 1
  %t23 = mul i64 %t21, 1
  %t24 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t23)
  call void @llvm.memcpy.p0.p0.i64(ptr %t24, ptr %t22, i64 %t23, i1 false)
  %t25 = insertvalue { i64, ptr } undef, i64 %t21, 0
  %t26 = insertvalue { i64, ptr } %t25, ptr %t24, 1
  %t27 = load ptr, ptr %l11, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s1, ptr %t27, { i64, ptr } %t26)
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s1)
  br label %bb17
bb7:
  %t29 = load i1, ptr %l17, !tbaa !21
  br i1 %t29, label %bb8, label %bb9
bb8:
  store %olang.scope zeroinitializer, ptr %s3
  %t30 = load ptr, ptr %l1, !tbaa !29
  store ptr %t30, ptr %l18, !tbaa !29
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2esgr(ptr %v0, ptr %s3, ptr %s3, ptr %t31, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d66, i32 0, i32 1) })
  store { i64, ptr } %t33, ptr %l20
  br label %bb10
bb9:
  store %olang.scope zeroinitializer, ptr %s5
  %t34 = load ptr, ptr %l1, !tbaa !29
  store ptr %t34, ptr %l26, !tbaa !29
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2esgr(ptr %v0, ptr %s5, ptr %s5, ptr %t35, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d67, i32 0, i32 1) })
  store { i64, ptr } %t37, ptr %l28
  br label %bb13
bb10:
  %t38 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t38, ptr %l21, !tbaa !27
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2esgr(ptr %v0, ptr %s3, ptr %s3, ptr %t39, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d68, i32 0, i32 1) })
  store { i64, ptr } %t41, ptr %l23
  br label %bb11
bb11:
  %t42 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t42, 1
  %t44 = extractvalue { i64, ptr } %t42, 0
  %t45 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d69, i32 0, i32 1) }, 1
  %t46 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d69, i32 0, i32 1) }, 0
  %t47 = add i64 %t44, %t46
  %t48 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t49 = extractvalue { i64, ptr } %t48, 1
  %t50 = extractvalue { i64, ptr } %t48, 0
  %t51 = add i64 %t47, %t50
  %t52 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d70, i32 0, i32 1) }, 1
  %t53 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d70, i32 0, i32 1) }, 0
  %t54 = add i64 %t51, %t53
  %t55 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t56 = extractvalue { i64, ptr } %t55, 1
  %t57 = extractvalue { i64, ptr } %t55, 0
  %t58 = add i64 %t54, %t57
  %t59 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d71, i32 0, i32 1) }, 1
  %t60 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d71, i32 0, i32 1) }, 0
  %t61 = add i64 %t58, %t60
  %t62 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t61)
  call void @olang_textcopy(ptr %t62, ptr %t43, i64 %t44)
  %t63 = getelementptr i8, ptr %t62, i64 %t44
  call void @olang_textcopy(ptr %t63, ptr %t45, i64 %t46)
  %t64 = getelementptr i8, ptr %t63, i64 %t46
  call void @olang_textcopy(ptr %t64, ptr %t49, i64 %t50)
  %t65 = getelementptr i8, ptr %t64, i64 %t50
  call void @olang_textcopy(ptr %t65, ptr %t52, i64 %t53)
  %t66 = getelementptr i8, ptr %t65, i64 %t53
  call void @olang_textcopy(ptr %t66, ptr %t56, i64 %t57)
  %t67 = getelementptr i8, ptr %t66, i64 %t57
  call void @olang_textcopy(ptr %t67, ptr %t59, i64 %t60)
  %t68 = insertvalue { i64, ptr } undef, i64 %t61, 0
  %t69 = insertvalue { i64, ptr } %t68, ptr %t62, 1
  %t71 = extractvalue { i64, ptr } %t69, 0
  %t72 = extractvalue { i64, ptr } %t69, 1
  %t73 = mul i64 %t71, 1
  %t74 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t73)
  call void @llvm.memcpy.p0.p0.i64(ptr %t74, ptr %t72, i64 %t73, i1 false)
  %t75 = insertvalue { i64, ptr } undef, i64 %t71, 0
  %t76 = insertvalue { i64, ptr } %t75, ptr %t74, 1
  %t77 = load ptr, ptr %l18, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s3, ptr %t77, { i64, ptr } %t76)
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s3)
  br label %bb16
bb13:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2esgr(ptr %v0, ptr %s5, ptr %s5, ptr %t79, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d72, i32 0, i32 1) })
  store { i64, ptr } %t81, ptr %l30
  br label %bb14
bb14:
  %t82 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t83 = extractvalue { i64, ptr } %t82, 1
  %t84 = extractvalue { i64, ptr } %t82, 0
  %t85 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d73, i32 0, i32 1) }, 1
  %t86 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d73, i32 0, i32 1) }, 0
  %t87 = add i64 %t84, %t86
  %t88 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t89 = extractvalue { i64, ptr } %t88, 1
  %t90 = extractvalue { i64, ptr } %t88, 0
  %t91 = add i64 %t87, %t90
  %t92 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d74, i32 0, i32 1) }, 1
  %t93 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d74, i32 0, i32 1) }, 0
  %t94 = add i64 %t91, %t93
  %t95 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t94)
  call void @olang_textcopy(ptr %t95, ptr %t83, i64 %t84)
  %t96 = getelementptr i8, ptr %t95, i64 %t84
  call void @olang_textcopy(ptr %t96, ptr %t85, i64 %t86)
  %t97 = getelementptr i8, ptr %t96, i64 %t86
  call void @olang_textcopy(ptr %t97, ptr %t89, i64 %t90)
  %t98 = getelementptr i8, ptr %t97, i64 %t90
  call void @olang_textcopy(ptr %t98, ptr %t92, i64 %t93)
  %t99 = insertvalue { i64, ptr } undef, i64 %t94, 0
  %t100 = insertvalue { i64, ptr } %t99, ptr %t95, 1
  %t102 = extractvalue { i64, ptr } %t100, 0
  %t103 = extractvalue { i64, ptr } %t100, 1
  %t104 = mul i64 %t102, 1
  %t105 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t104)
  call void @llvm.memcpy.p0.p0.i64(ptr %t105, ptr %t103, i64 %t104, i1 false)
  %t106 = insertvalue { i64, ptr } undef, i64 %t102, 0
  %t107 = insertvalue { i64, ptr } %t106, ptr %t105, 1
  %t108 = load ptr, ptr %l26, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s5, ptr %t108, { i64, ptr } %t107)
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s5)
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s2)
  br label %bb17
bb17:
  %t110 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %v4, ptr %t110, { i64, ptr } %a5)
  br label %bb18
bb18:
  %t114 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t114, i8 10)
  br label %bb19
bb19:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t117 = load ptr, ptr %l1, !tbaa !29
  %t118 = load { i64, [3 x i64] }, ptr %l2
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eputExcerpt(ptr %v0, ptr %v1, ptr %t116, ptr %t117, { i64, [3 x i64] } %t118)
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2ereport(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [3 x i64] }
  %l2 = alloca %"compiler/diagmsg:Msg"
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca %"compiler/diag:record"
  %l7 = alloca i64
  %l8 = alloca { i64, [3 x i64] }
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
  %l28 = alloca i1
  %l30 = alloca i1
  %l33 = alloca i64
  %l35 = alloca i64
  %l40 = alloca %"compiler/diag:record"
  %l43 = alloca i1
  %l44 = alloca i1
  %l45 = alloca { i64, [3 x i64] }
  %l47 = alloca { i64, [3 x i64] }
  %l49 = alloca i1
  %l54 = alloca ptr
  %l59 = alloca %"compiler/diag:record"
  %l63 = alloca i1
  %l65 = alloca i1
  %l72 = alloca i64
  %l75 = alloca { i64, [3 x i64] }
  %l80 = alloca %"compiler/diag:context"
  %l84 = alloca i64
  %l86 = alloca i64
  %l88 = alloca ptr
  %l91 = alloca i64
  %l93 = alloca i64
  %l95 = alloca ptr
  %l102 = alloca %"compiler/diag:record"
  %l105 = alloca i64
  %l113 = alloca i64
  %l117 = alloca ptr
  %l118 = alloca i64
  %l119 = alloca { i64, [3 x i64] }
  %l120 = alloca i64
  %l122 = alloca %"compiler/diagmsg:Msg"
  %l126 = alloca %"compiler/diag:note"
  %l135 = alloca i64
  %l138 = alloca i64
  %l159 = alloca %"compiler/diag:context"
  %l172 = alloca i64
  %l179 = alloca i1
  %l187 = alloca %"compiler/diag:context"
  %l194 = alloca i1
  %l198 = alloca ptr
  %l199 = alloca i64
  %l203 = alloca %"compiler/diag:context"
  %l204 = alloca { i64, [3 x i64] }
  %l205 = alloca i64
  %l210 = alloca %"compiler/diag:context"
  %l214 = alloca %"compiler/diag:note"
  %l222 = alloca ptr
  %l223 = alloca i64
  %l227 = alloca %"compiler/diag:context"
  %l228 = alloca { i64, [3 x i64] }
  %l229 = alloca i64
  %l234 = alloca %"compiler/diag:context"
  %l238 = alloca %"compiler/diag:note"
  %s0 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store { i64, [3 x i64] } %a1, ptr %l1
  store %"compiler/diagmsg:Msg" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/diag:Diagnostics", ptr %t1, i32 0, i32 24
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/diag:Diagnostics", ptr %t7, i32 0, i32 25
  %t10 = load i1, ptr %t9, !tbaa !21
  br i1 %t10, label %bb4, label %bb5
bb4:
  %t12 = getelementptr %"compiler/diagmsg:Msg", ptr %l2, i32 0, i32 1
  %t13 = load { i64, ptr }, ptr %t12, !tbaa !27
  %t15 = call i1 @compiler_2fdiag_2eUntidy(ptr %v1, { i64, ptr } %t13)
  store i1 %t15, ptr %l30
  br label %bb6
bb5:
  store i1 false, ptr %l28, !tbaa !21
  br label %bb7
bb6:
  %t16 = load i1, ptr %l30, !tbaa !21
  store i1 %t16, ptr %l28, !tbaa !21
  br label %bb7
bb7:
  %t17 = load i1, ptr %l28, !tbaa !21
  br i1 %t17, label %bb8, label %bb9
bb8:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/diag:Diagnostics", ptr %t18, i32 0, i32 26
  store ptr %t20, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb10
bb9:
  br label %bb28
bb10:
  %t22 = load i64, ptr %l5, !tbaa !24
  store i64 %t22, ptr %l33, !tbaa !24
  %t23 = load ptr, ptr %l4, !tbaa !29
  %t25 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2eLen_3ccompiler_2fdiag_3arecord_3e(ptr %v0, ptr %t23)
  store i64 %t25, ptr %l35
  br label %bb11
bb11:
  %t26 = load i64, ptr %l33, !tbaa !24
  %t27 = load i64, ptr %l35, !tbaa !24
  %t28 = icmp slt i64 %t26, %t27
  %t30 = xor i1 %t28, true
  br i1 %t30, label %bb12, label %bb13
bb12:
  br label %bb25
bb13:
  br label %bb14
bb14:
  %t32 = load ptr, ptr %l4, !tbaa !29
  %t33 = load i64, ptr %l5, !tbaa !24
  %t36 = call %"compiler/diag:record" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2eAt_3ccompiler_2fdiag_3arecord_3e(ptr %v0, ptr %v0, ptr %t32, i64 %t33)
  store %"compiler/diag:record" %t36, ptr %l40
  br label %bb15
bb15:
  %t37 = load %"compiler/diag:record", ptr %l40
  store %"compiler/diag:record" %t37, ptr %l6
  %t38 = getelementptr %"compiler/diag:record", ptr %l6, i32 0, i32 2
  %t39 = load { i64, ptr }, ptr %t38, !tbaa !27
  %t40 = getelementptr %"compiler/diagmsg:Msg", ptr %l2, i32 0, i32 2
  %t41 = load { i64, ptr }, ptr %t40, !tbaa !27
  %t44 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %t39, { i64, ptr } %t41)
  store i1 %t44, ptr %l43
  br label %bb16
bb16:
  %t45 = load i1, ptr %l43, !tbaa !21
  br i1 %t45, label %bb17, label %bb18
bb17:
  %t46 = getelementptr %"compiler/diag:record", ptr %l6, i32 0, i32 0
  %t47 = load { i64, [3 x i64] }, ptr %t46
  store { i64, [3 x i64] } %t47, ptr %l45
  %t48 = load { i64, [3 x i64] }, ptr %l1
  store { i64, [3 x i64] } %t48, ptr %l47
  %t51 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fdiag_3aWhere(ptr %l45, ptr %l47)
  store i1 %t51, ptr %l49
  br label %bb19
bb18:
  store i1 false, ptr %l44, !tbaa !21
  br label %bb20
bb19:
  %t52 = load i1, ptr %l49, !tbaa !21
  store i1 %t52, ptr %l44, !tbaa !21
  br label %bb20
bb20:
  %t53 = load i1, ptr %l44, !tbaa !21
  br i1 %t53, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb22:
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t55 = load i64, ptr %l5, !tbaa !24
  %t57 = add i64 %t55, 1
  store i64 %t57, ptr %l5, !tbaa !24
  br label %bb10
bb25:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/diag:Diagnostics", ptr %t59, i32 0, i32 26
  store ptr %t61, ptr %l54, !tbaa !29
  %t62 = load { i64, [3 x i64] }, ptr %l1
  %t63 = getelementptr %"compiler/diagmsg:Msg", ptr %l2, i32 0, i32 1
  %t64 = load { i64, ptr }, ptr %t63, !tbaa !27
  %t65 = getelementptr %"compiler/diagmsg:Msg", ptr %l2, i32 0, i32 2
  %t66 = load { i64, ptr }, ptr %t65, !tbaa !27
  %t67 = getelementptr %"compiler/diagmsg:Msg", ptr %l2, i32 0, i32 0
  %t68 = load i32, ptr %t67, !range !{i32 0, i32 906}
  %t73 = call %"compiler/diag:record" @compiler_2fdiag_3arecord_2ector(ptr %v1, ptr %v1, ptr %v0, { i64, [3 x i64] } %t62, { i64, ptr } %t64, { i64, ptr } %t66, i32 %t68, i64 -1, i1 false)
  store %"compiler/diag:record" %t73, ptr %l59
  br label %bb26
bb26:
  %t74 = load ptr, ptr %l54, !tbaa !29
  %t75 = load %"compiler/diag:record", ptr %l59
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2ePush_3ccompiler_2fdiag_3arecord_3e(ptr %v0, ptr %v0, ptr %t74, %"compiler/diag:record" %t75)
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb28:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/diag:Diagnostics", ptr %t77, i32 0, i32 14
  %t80 = load i1, ptr %t79, !tbaa !21
  br i1 %t80, label %bb29, label %bb30
bb29:
  %t82 = getelementptr %"compiler/diagmsg:Msg", ptr %l2, i32 0, i32 1
  %t83 = load { i64, ptr }, ptr %t82, !tbaa !27
  %t85 = call i1 @compiler_2fdiag_2eisScopeRule(ptr %v1, { i64, ptr } %t83)
  store i1 %t85, ptr %l65
  br label %bb31
bb30:
  store i1 false, ptr %l63, !tbaa !21
  br label %bb32
bb31:
  %t86 = load i1, ptr %l65, !tbaa !21
  store i1 %t86, ptr %l63, !tbaa !21
  br label %bb32
bb32:
  %t87 = load i1, ptr %l63, !tbaa !21
  br i1 %t87, label %bb33, label %bb34
bb33:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/diag:Diagnostics", ptr %t88, i32 0, i32 15
  %t91 = load i1, ptr %t90, !tbaa !21
  br i1 %t91, label %bb35, label %bb36
bb34:
  br label %bb38
bb35:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb36:
  br label %bb37
bb37:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/diag:Diagnostics", ptr %t94, i32 0, i32 15
  store i1 true, ptr %t96, !tbaa !21
  br label %bb38
bb38:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t98 = load { i64, [3 x i64] }, ptr %l1
  %t101 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eprogramUse(ptr %v0, ptr %t97, { i64, [3 x i64] } %t98)
  store i64 %t101, ptr %l72
  br label %bb39
bb39:
  %t102 = load i64, ptr %l72, !tbaa !24
  store i64 %t102, ptr %l7, !tbaa !24
  %t103 = load i64, ptr %l7, !tbaa !24
  %t105 = icmp slt i64 %t103, 0
  br i1 %t105, label %bb40, label %bb41
bb40:
  %t107 = load { i64, [3 x i64] }, ptr %l1
  store { i64, [3 x i64] } %t107, ptr %l75
  br label %bb43
bb41:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = getelementptr %"compiler/diag:Diagnostics", ptr %t109, i32 0, i32 12
  %t112 = load i64, ptr %l7, !tbaa !24
  %t115 = call %"compiler/diag:context" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3acontext_3e_2eAt_3ccompiler_2fdiag_3acontext_3e(ptr %v0, ptr %s0, ptr %t111, i64 %t112)
  store %"compiler/diag:context" %t115, ptr %l80
  br label %bb42
bb42:
  %t116 = getelementptr %"compiler/diag:context", ptr %l80, i32 0, i32 0
  %t117 = load { i64, [3 x i64] }, ptr %t116
  store { i64, [3 x i64] } %t117, ptr %l75
  br label %bb43
bb43:
  %t119 = load { i64, [3 x i64] }, ptr %l75
  store { i64, [3 x i64] } %t119, ptr %l8
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = getelementptr %"compiler/diag:Diagnostics", ptr %t120, i32 0, i32 11
  %t124 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t122)
  store i64 %t124, ptr %l84
  br label %bb44
bb44:
  %t125 = load i64, ptr %l84, !tbaa !24
  %t126 = icmp eq i64 %t125, 0
  br i1 %t126, label %bb45, label %bb46
bb45:
  store i64 -1, ptr %l86, !tbaa !24
  br label %bb49
bb46:
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t130 = getelementptr %"compiler/diag:Diagnostics", ptr %t128, i32 0, i32 11
  store ptr %t130, ptr %l88, !tbaa !29
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t133 = getelementptr %"compiler/diag:Diagnostics", ptr %t131, i32 0, i32 11
  %t135 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t133)
  store i64 %t135, ptr %l91
  br label %bb47
bb47:
  %t136 = load i64, ptr %l91, !tbaa !24
  %t137 = sub i64 %t136, 1
  %t138 = load ptr, ptr %l88, !tbaa !29
  %t140 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t138, i64 %t137)
  store i64 %t140, ptr %l93
  br label %bb48
bb48:
  %t141 = load i64, ptr %l93, !tbaa !24
  store i64 %t141, ptr %l86, !tbaa !24
  br label %bb49
bb49:
  %t142 = load i64, ptr %l86, !tbaa !24
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t145 = getelementptr %"compiler/diag:Diagnostics", ptr %t143, i32 0, i32 7
  store ptr %t145, ptr %l95, !tbaa !29
  %t146 = load { i64, [3 x i64] }, ptr %l8
  %t147 = getelementptr %"compiler/diagmsg:Msg", ptr %l2, i32 0, i32 1
  %t148 = load { i64, ptr }, ptr %t147, !tbaa !27
  %t149 = getelementptr %"compiler/diagmsg:Msg", ptr %l2, i32 0, i32 2
  %t150 = load { i64, ptr }, ptr %t149, !tbaa !27
  %t151 = getelementptr %"compiler/diagmsg:Msg", ptr %l2, i32 0, i32 0
  %t152 = load i32, ptr %t151, !range !{i32 0, i32 906}
  %t161 = call %"compiler/diag:record" @compiler_2fdiag_3arecord_2ector(ptr %v1, ptr %v1, ptr %v0, { i64, [3 x i64] } %t146, { i64, ptr } %t148, { i64, ptr } %t150, i32 %t152, i64 %t142, i1 %a3)
  store %"compiler/diag:record" %t161, ptr %l102
  br label %bb50
bb50:
  %t162 = load ptr, ptr %l95, !tbaa !29
  %t163 = load %"compiler/diag:record", ptr %l102
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2ePush_3ccompiler_2fdiag_3arecord_3e(ptr %v0, ptr %v0, ptr %t162, %"compiler/diag:record" %t163)
  br label %bb51
bb51:
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t166 = getelementptr %"compiler/diag:Diagnostics", ptr %t164, i32 0, i32 7
  %t168 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2eLen_3ccompiler_2fdiag_3arecord_3e(ptr %v0, ptr %t166)
  store i64 %t168, ptr %l105
  br label %bb52
bb52:
  %t169 = load i64, ptr %l105, !tbaa !24
  %t170 = sub i64 %t169, 1
  store i64 %t170, ptr %l10, !tbaa !24
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t173 = load i64, ptr %l10, !tbaa !24
  %t174 = load { i64, [3 x i64] }, ptr %l8
  %t175 = load %"compiler/diagmsg:Msg", ptr %l2
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2epushOwn(ptr %v0, ptr %v1, ptr %t172, i64 %t173, { i64, [3 x i64] } %t174, %"compiler/diagmsg:Msg" %t175)
  br label %bb53
bb53:
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t182 = getelementptr %"compiler/diag:Diagnostics", ptr %t180, i32 0, i32 12
  %t184 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3acontext_3e_2eLen_3ccompiler_2fdiag_3acontext_3e(ptr %v0, ptr %t182)
  store i64 %t184, ptr %l113
  br label %bb54
bb54:
  %t185 = load i64, ptr %l113, !tbaa !24
  store i64 %t185, ptr %l11, !tbaa !24
  %t186 = load i64, ptr %l7, !tbaa !24
  %t188 = icmp sge i64 %t186, 0
  br i1 %t188, label %bb55, label %bb56
bb55:
  store %olang.scope zeroinitializer, ptr %s9
  %t190 = load ptr, ptr %l0, !tbaa !29
  %t192 = getelementptr %"compiler/diag:Diagnostics", ptr %t190, i32 0, i32 8
  store ptr %t192, ptr %l117, !tbaa !29
  %t193 = load i64, ptr %l10, !tbaa !24
  store i64 %t193, ptr %l118, !tbaa !24
  %t194 = load { i64, [3 x i64] }, ptr %l1
  store { i64, [3 x i64] } %t194, ptr %l119
  %t195 = ptrtoint ptr %v0 to i64
  store i64 %t195, ptr %l120, !tbaa !24
  %t196 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3anote_2e2
  br i1 %t196, label %bb57, label %bb58
bb56:
  br label %bb62
bb57:
  %t198 = call ptr @__olang_region_make(ptr %v0)
  %t199 = ptrtoint ptr %t198 to i64
  store i64 %t199, ptr %l120, !tbaa !24
  br label %bb58
bb58:
  %t200 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteInLibrary(ptr %s9)
  store %"compiler/diagmsg:Msg" %t200, ptr %l122
  br label %bb59
bb59:
  %t201 = getelementptr %"compiler/diagmsg:Msg", ptr %l122, i32 0, i32 2
  %t202 = load { i64, ptr }, ptr %t201, !tbaa !27
  %t204 = extractvalue { i64, ptr } %t202, 1
  %t205 = extractvalue { i64, ptr } %t202, 0
  %t206 = load i64, ptr %l120
  %t207 = inttoptr i64 %t206 to ptr
  %t208 = call ptr @__olang_scope_alloc(ptr %t207, i64 %t205)
  call void @olang_textcopy(ptr %t208, ptr %t204, i64 %t205)
  %t209 = insertvalue { i64, ptr } undef, i64 %t205, 0
  %t210 = insertvalue { i64, ptr } %t209, ptr %t208, 1
  %t212 = load i64, ptr %l120
  %t213 = inttoptr i64 %t212 to ptr
  %t214 = extractvalue { i64, ptr } %t210, 0
  %t215 = extractvalue { i64, ptr } %t210, 1
  %t216 = mul i64 %t214, 1
  %t217 = call ptr @__olang_scope_alloc(ptr %t213, i64 %t216)
  call void @llvm.memcpy.p0.p0.i64(ptr %t217, ptr %t215, i64 %t216, i1 false)
  %t218 = insertvalue { i64, ptr } undef, i64 %t214, 0
  %t219 = insertvalue { i64, ptr } %t218, ptr %t217, 1
  %t220 = load i64, ptr %l118, !tbaa !24
  %t221 = load { i64, [3 x i64] }, ptr %l119
  %t223 = call %"compiler/diag:note" @compiler_2fdiag_3anote_2ector(ptr %v0, ptr %v0, i64 %t220, { i64, [3 x i64] } %t221, { i64, ptr } %t219, i1 false, i1 false)
  store %"compiler/diag:note" %t223, ptr %l126
  br label %bb60
bb60:
  %t224 = load ptr, ptr %l117, !tbaa !29
  %t225 = load %"compiler/diag:note", ptr %l126
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3anote_3e_2ePush_3ccompiler_2fdiag_3anote_3e(ptr %v0, ptr %v0, ptr %t224, %"compiler/diag:note" %t225)
  br label %bb61
bb61:
  %t226 = load i64, ptr %l7, !tbaa !24
  %t228 = add i64 %t226, 1
  store i64 %t228, ptr %l11, !tbaa !24
  call void @__olang_scope_close(ptr %s9)
  br label %bb62
bb62:
  store i64 -1, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  %t230 = load ptr, ptr %l0, !tbaa !29
  %t232 = getelementptr %"compiler/diag:Diagnostics", ptr %t230, i32 0, i32 13
  %t233 = load i64, ptr %t232, !tbaa !24
  store i64 %t233, ptr %l14, !tbaa !24
  %t235 = load i64, ptr %l11, !tbaa !24
  store i64 %t235, ptr %l15, !tbaa !24
  store i64 1, ptr %l16, !tbaa !24
  %t237 = load i64, ptr %l15, !tbaa !24
  %t238 = load i64, ptr %l14, !tbaa !24
  %t241 = icmp sgt i64 %t237, %t238
  br i1 %t241, label %bb63, label %bb64
bb63:
  %t243 = load i64, ptr %l16, !tbaa !24
  %t245 = icmp sgt i64 %t243, 0
  br i1 %t245, label %bb65, label %bb66
bb64:
  store i64 0, ptr %l135, !tbaa !24
  br label %bb68
bb65:
  %t247 = load i64, ptr %l15, !tbaa !24
  %t248 = load i64, ptr %l14, !tbaa !24
  %t251 = sub i64 %t247, %t248
  %t252 = load i64, ptr %l16, !tbaa !24
  %t255 = add i64 %t251, %t252
  %t257 = sub i64 %t255, 1
  %t258 = load i64, ptr %l16, !tbaa !24
  %t261 = sdiv i64 %t257, %t258
  store i64 %t261, ptr %l138, !tbaa !24
  br label %bb67
bb66:
  store i64 0, ptr %l138, !tbaa !24
  br label %bb67
bb67:
  %t263 = load i64, ptr %l138, !tbaa !24
  store i64 %t263, ptr %l135, !tbaa !24
  br label %bb68
bb68:
  %t264 = load i64, ptr %l135, !tbaa !24
  store i64 %t264, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  br label %bb69
bb69:
  %t265 = load i64, ptr %l18, !tbaa !24
  %t266 = load i64, ptr %l17, !tbaa !24
  %t269 = icmp slt i64 %t265, %t266
  %t271 = xor i1 %t269, true
  br i1 %t271, label %bb70, label %bb71
bb70:
  br label %bb81
bb71:
  br label %bb72
bb72:
  %t273 = load i64, ptr %l14, !tbaa !24
  %t274 = load i64, ptr %l18, !tbaa !24
  %t275 = load i64, ptr %l16, !tbaa !24
  %t278 = mul i64 %t274, %t275
  %t281 = add i64 %t273, %t278
  store i64 %t281, ptr %l19, !tbaa !24
  %t283 = load ptr, ptr %l0, !tbaa !29
  %t285 = getelementptr %"compiler/diag:Diagnostics", ptr %t283, i32 0, i32 12
  %t286 = load i64, ptr %l19, !tbaa !24
  %t289 = call %"compiler/diag:context" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3acontext_3e_2eAt_3ccompiler_2fdiag_3acontext_3e(ptr %v0, ptr %v0, ptr %t285, i64 %t286)
  store %"compiler/diag:context" %t289, ptr %l159
  br label %bb73
bb73:
  %t290 = getelementptr %"compiler/diag:context", ptr %l159, i32 0, i32 1
  %t291 = load { i64, ptr }, ptr %t290, !tbaa !27
  %t293 = extractvalue { i64, ptr } %t291, 0
  %t295 = icmp eq i64 %t293, 0
  br i1 %t295, label %bb74, label %bb75
bb74:
  br label %bb80
bb75:
  br label %bb76
bb76:
  %t297 = load i64, ptr %l12, !tbaa !24
  %t299 = icmp slt i64 %t297, 0
  br i1 %t299, label %bb77, label %bb78
bb77:
  %t301 = load i64, ptr %l19, !tbaa !24
  store i64 %t301, ptr %l12, !tbaa !24
  br label %bb79
bb78:
  br label %bb79
bb79:
  %t303 = load i64, ptr %l13, !tbaa !24
  %t305 = add i64 %t303, 1
  store i64 %t305, ptr %l13, !tbaa !24
  br label %bb80
bb80:
  %t307 = load i64, ptr %l18, !tbaa !24
  %t309 = add i64 %t307, 1
  store i64 %t309, ptr %l18, !tbaa !24
  br label %bb69
bb81:
  %t311 = load i64, ptr %l13, !tbaa !24
  %t313 = icmp sgt i64 %t311, 3
  br i1 %t313, label %bb82, label %bb83
bb82:
  store i64 2, ptr %l172, !tbaa !24
  br label %bb84
bb83:
  store i64 3, ptr %l172, !tbaa !24
  br label %bb84
bb84:
  %t315 = load i64, ptr %l172, !tbaa !24
  store i64 %t315, ptr %l20, !tbaa !24
  store i64 0, ptr %l21, !tbaa !24
  %t316 = load i64, ptr %l11, !tbaa !24
  %t318 = sub i64 %t316, 1
  store i64 %t318, ptr %l22, !tbaa !24
  br label %bb85
bb85:
  %t320 = load i64, ptr %l22, !tbaa !24
  %t321 = load ptr, ptr %l0, !tbaa !29
  %t323 = getelementptr %"compiler/diag:Diagnostics", ptr %t321, i32 0, i32 13
  %t324 = load i64, ptr %t323, !tbaa !24
  %t327 = icmp sge i64 %t320, %t324
  br i1 %t327, label %bb86, label %bb87
bb86:
  %t329 = load i64, ptr %l21, !tbaa !24
  %t330 = load i64, ptr %l20, !tbaa !24
  %t333 = icmp slt i64 %t329, %t330
  store i1 %t333, ptr %l179, !tbaa !21
  br label %bb88
bb87:
  store i1 false, ptr %l179, !tbaa !21
  br label %bb88
bb88:
  %t335 = load i1, ptr %l179, !tbaa !21
  %t336 = xor i1 %t335, true
  br i1 %t336, label %bb89, label %bb90
bb89:
  br label %bb109
bb90:
  br label %bb91
bb91:
  %t338 = load ptr, ptr %l0, !tbaa !29
  %t340 = getelementptr %"compiler/diag:Diagnostics", ptr %t338, i32 0, i32 12
  %t341 = load i64, ptr %l22, !tbaa !24
  %t344 = call %"compiler/diag:context" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3acontext_3e_2eAt_3ccompiler_2fdiag_3acontext_3e(ptr %v0, ptr %v0, ptr %t340, i64 %t341)
  store %"compiler/diag:context" %t344, ptr %l187
  br label %bb92
bb92:
  %t345 = getelementptr %"compiler/diag:context", ptr %l187, i32 0, i32 1
  %t346 = load { i64, ptr }, ptr %t345, !tbaa !27
  %t348 = extractvalue { i64, ptr } %t346, 0
  %t350 = icmp sgt i64 %t348, 0
  br i1 %t350, label %bb93, label %bb94
bb93:
  store %olang.scope zeroinitializer, ptr %s17
  %t352 = load i64, ptr %l22, !tbaa !24
  %t353 = load i64, ptr %l12, !tbaa !24
  %t356 = icmp eq i64 %t352, %t353
  br i1 %t356, label %bb95, label %bb96
bb94:
  br label %bb107
bb95:
  %t358 = load i64, ptr %l13, !tbaa !24
  %t360 = icmp sgt i64 %t358, 3
  store i1 %t360, ptr %l194, !tbaa !21
  br label %bb97
bb96:
  store i1 false, ptr %l194, !tbaa !21
  br label %bb97
bb97:
  %t362 = load i1, ptr %l194, !tbaa !21
  br i1 %t362, label %bb98, label %bb99
bb98:
  call void @__olang_scope_close(ptr %s17)
  br label %bb109
bb99:
  br label %bb100
bb100:
  %t363 = load ptr, ptr %l0, !tbaa !29
  %t365 = getelementptr %"compiler/diag:Diagnostics", ptr %t363, i32 0, i32 8
  store ptr %t365, ptr %l198, !tbaa !29
  %t366 = load i64, ptr %l10, !tbaa !24
  store i64 %t366, ptr %l199, !tbaa !24
  %t367 = load ptr, ptr %l0, !tbaa !29
  %t369 = getelementptr %"compiler/diag:Diagnostics", ptr %t367, i32 0, i32 12
  %t370 = load i64, ptr %l22, !tbaa !24
  %t373 = call %"compiler/diag:context" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3acontext_3e_2eAt_3ccompiler_2fdiag_3acontext_3e(ptr %v0, ptr %s17, ptr %t369, i64 %t370)
  store %"compiler/diag:context" %t373, ptr %l203
  br label %bb101
bb101:
  %t374 = getelementptr %"compiler/diag:context", ptr %l203, i32 0, i32 0
  %t375 = load { i64, [3 x i64] }, ptr %t374
  store { i64, [3 x i64] } %t375, ptr %l204
  %t376 = ptrtoint ptr %v0 to i64
  store i64 %t376, ptr %l205, !tbaa !24
  %t377 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3anote_2e2
  br i1 %t377, label %bb102, label %bb103
bb102:
  %t379 = call ptr @__olang_region_make(ptr %v0)
  %t380 = ptrtoint ptr %t379 to i64
  store i64 %t380, ptr %l205, !tbaa !24
  br label %bb103
bb103:
  %t381 = load ptr, ptr %l0, !tbaa !29
  %t383 = getelementptr %"compiler/diag:Diagnostics", ptr %t381, i32 0, i32 12
  %t384 = load i64, ptr %l22, !tbaa !24
  %t387 = call %"compiler/diag:context" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3acontext_3e_2eAt_3ccompiler_2fdiag_3acontext_3e(ptr %v0, ptr %v0, ptr %t383, i64 %t384)
  store %"compiler/diag:context" %t387, ptr %l210
  br label %bb104
bb104:
  %t388 = getelementptr %"compiler/diag:context", ptr %l210, i32 0, i32 1
  %t389 = load { i64, ptr }, ptr %t388, !tbaa !27
  %t391 = extractvalue { i64, ptr } %t389, 1
  %t392 = extractvalue { i64, ptr } %t389, 0
  %t393 = load i64, ptr %l205
  %t394 = inttoptr i64 %t393 to ptr
  %t395 = call ptr @__olang_scope_alloc(ptr %t394, i64 %t392)
  call void @olang_textcopy(ptr %t395, ptr %t391, i64 %t392)
  %t396 = insertvalue { i64, ptr } undef, i64 %t392, 0
  %t397 = insertvalue { i64, ptr } %t396, ptr %t395, 1
  %t399 = load i64, ptr %l205
  %t400 = inttoptr i64 %t399 to ptr
  %t401 = extractvalue { i64, ptr } %t397, 0
  %t402 = extractvalue { i64, ptr } %t397, 1
  %t403 = mul i64 %t401, 1
  %t404 = call ptr @__olang_scope_alloc(ptr %t400, i64 %t403)
  call void @llvm.memcpy.p0.p0.i64(ptr %t404, ptr %t402, i64 %t403, i1 false)
  %t405 = insertvalue { i64, ptr } undef, i64 %t401, 0
  %t406 = insertvalue { i64, ptr } %t405, ptr %t404, 1
  %t407 = load i64, ptr %l199, !tbaa !24
  %t408 = load { i64, [3 x i64] }, ptr %l204
  %t410 = call %"compiler/diag:note" @compiler_2fdiag_3anote_2ector(ptr %v0, ptr %v0, i64 %t407, { i64, [3 x i64] } %t408, { i64, ptr } %t406, i1 false, i1 false)
  store %"compiler/diag:note" %t410, ptr %l214
  br label %bb105
bb105:
  %t411 = load ptr, ptr %l198, !tbaa !29
  %t412 = load %"compiler/diag:note", ptr %l214
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3anote_3e_2ePush_3ccompiler_2fdiag_3anote_3e(ptr %v0, ptr %v0, ptr %t411, %"compiler/diag:note" %t412)
  br label %bb106
bb106:
  %t413 = load i64, ptr %l21, !tbaa !24
  %t415 = add i64 %t413, 1
  store i64 %t415, ptr %l21, !tbaa !24
  call void @__olang_scope_close(ptr %s17)
  br label %bb107
bb107:
  %t417 = load i64, ptr %l22, !tbaa !24
  %t419 = sub i64 %t417, 1
  store i64 %t419, ptr %l22, !tbaa !24
  br label %bb108
bb108:
  br label %bb85
bb109:
  %t421 = load i64, ptr %l13, !tbaa !24
  %t423 = icmp sgt i64 %t421, 3
  br i1 %t423, label %bb110, label %bb111
bb110:
  store %olang.scope zeroinitializer, ptr %s20
  %t425 = load ptr, ptr %l0, !tbaa !29
  %t427 = getelementptr %"compiler/diag:Diagnostics", ptr %t425, i32 0, i32 8
  store ptr %t427, ptr %l222, !tbaa !29
  %t428 = load i64, ptr %l10, !tbaa !24
  store i64 %t428, ptr %l223, !tbaa !24
  %t429 = load ptr, ptr %l0, !tbaa !29
  %t431 = getelementptr %"compiler/diag:Diagnostics", ptr %t429, i32 0, i32 12
  %t432 = load i64, ptr %l12, !tbaa !24
  %t435 = call %"compiler/diag:context" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3acontext_3e_2eAt_3ccompiler_2fdiag_3acontext_3e(ptr %v0, ptr %s20, ptr %t431, i64 %t432)
  store %"compiler/diag:context" %t435, ptr %l227
  br label %bb112
bb111:
  br label %bb118
bb112:
  %t436 = getelementptr %"compiler/diag:context", ptr %l227, i32 0, i32 0
  %t437 = load { i64, [3 x i64] }, ptr %t436
  store { i64, [3 x i64] } %t437, ptr %l228
  %t438 = ptrtoint ptr %v0 to i64
  store i64 %t438, ptr %l229, !tbaa !24
  %t439 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3anote_2e2
  br i1 %t439, label %bb113, label %bb114
bb113:
  %t441 = call ptr @__olang_region_make(ptr %v0)
  %t442 = ptrtoint ptr %t441 to i64
  store i64 %t442, ptr %l229, !tbaa !24
  br label %bb114
bb114:
  %t443 = load ptr, ptr %l0, !tbaa !29
  %t445 = getelementptr %"compiler/diag:Diagnostics", ptr %t443, i32 0, i32 12
  %t446 = load i64, ptr %l12, !tbaa !24
  %t449 = call %"compiler/diag:context" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3acontext_3e_2eAt_3ccompiler_2fdiag_3acontext_3e(ptr %v0, ptr %v0, ptr %t445, i64 %t446)
  store %"compiler/diag:context" %t449, ptr %l234
  br label %bb115
bb115:
  %t450 = getelementptr %"compiler/diag:context", ptr %l234, i32 0, i32 1
  %t451 = load { i64, ptr }, ptr %t450, !tbaa !27
  %t453 = extractvalue { i64, ptr } %t451, 1
  %t454 = extractvalue { i64, ptr } %t451, 0
  %t455 = load i64, ptr %l229
  %t456 = inttoptr i64 %t455 to ptr
  %t457 = call ptr @__olang_scope_alloc(ptr %t456, i64 %t454)
  call void @olang_textcopy(ptr %t457, ptr %t453, i64 %t454)
  %t458 = insertvalue { i64, ptr } undef, i64 %t454, 0
  %t459 = insertvalue { i64, ptr } %t458, ptr %t457, 1
  %t461 = load i64, ptr %l229
  %t462 = inttoptr i64 %t461 to ptr
  %t463 = extractvalue { i64, ptr } %t459, 0
  %t464 = extractvalue { i64, ptr } %t459, 1
  %t465 = mul i64 %t463, 1
  %t466 = call ptr @__olang_scope_alloc(ptr %t462, i64 %t465)
  call void @llvm.memcpy.p0.p0.i64(ptr %t466, ptr %t464, i64 %t465, i1 false)
  %t467 = insertvalue { i64, ptr } undef, i64 %t463, 0
  %t468 = insertvalue { i64, ptr } %t467, ptr %t466, 1
  %t469 = load i64, ptr %l223, !tbaa !24
  %t470 = load { i64, [3 x i64] }, ptr %l228
  %t472 = call %"compiler/diag:note" @compiler_2fdiag_3anote_2ector(ptr %v0, ptr %v0, i64 %t469, { i64, [3 x i64] } %t470, { i64, ptr } %t468, i1 false, i1 false)
  store %"compiler/diag:note" %t472, ptr %l238
  br label %bb116
bb116:
  %t473 = load ptr, ptr %l222, !tbaa !29
  %t474 = load %"compiler/diag:note", ptr %l238
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3anote_3e_2ePush_3ccompiler_2fdiag_3anote_3e(ptr %v0, ptr %v0, ptr %t473, %"compiler/diag:note" %t474)
  br label %bb117
bb117:
  call void @__olang_scope_close(ptr %s20)
  br label %bb118
bb118:
  %t475 = load i64, ptr %l10, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t475, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2esgr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca %"std/prelude/text:StringBuilder"
  %l17 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"compiler/diag:Diagnostics", ptr %a0, i32 0, i32 0
  %t4 = load i1, ptr %t3, !tbaa !21
  %t6 = xor i1 %t4, true
  br i1 %t6, label %bb1, label %bb2
bb1:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d75, i32 0, i32 1) }, ptr %l6, !tbaa !27
  %t8 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t8, ptr %l7, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t9, 0
  store i64 %t10, ptr %l8, !tbaa !24
  %t11 = load i64, ptr %l8, !tbaa !24
  %t12 = mul i64 %t11, 1
  %t13 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t12)
  %t14 = insertvalue { i64, ptr } undef, i64 %t11, 0
  %t15 = insertvalue { i64, ptr } %t14, ptr %t13, 1
  store { i64, ptr } %t15, ptr %l9, !tbaa !27
  %t16 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = load i64, ptr %l8, !tbaa !24
  %t21 = mul i64 %t20, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t17, ptr %t19, i64 %t21, i1 false)
  %t22 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t22, ptr %l7, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t23 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t23, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t24 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t24, ptr %l10
  br label %bb4
bb4:
  %t25 = load %"std/prelude/text:StringBuilder", ptr %l10
  store %"std/prelude/text:StringBuilder" %t25, ptr %l2
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l2, i8 27)
  br label %bb5
bb5:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l2, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d76, i32 0, i32 1) })
  br label %bb6
bb6:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v1, ptr %l2, { i64, ptr } %a1)
  br label %bb7
bb7:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l2, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) })
  br label %bb8
bb8:
  %t33 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v2, ptr %l2)
  store { i64, ptr } %t33, ptr %l17
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s0)
  %t34 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t34, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { { i64, ptr }, i64 } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eshown(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l8 = alloca i64
  %l14 = alloca { i64, ptr }
  %l24 = alloca i1
  %l25 = alloca i64
  %l28 = alloca i64
  %l30 = alloca i1
  %l34 = alloca { i64, ptr }
  %l35 = alloca i1
  %l39 = alloca { i64, ptr }
  %l46 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l51 = alloca i64
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca { { i64, ptr }, i64 }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/diag:Diagnostics", ptr %t1, i32 0, i32 27
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t3, i64 %t4)
  store i64 %t7, ptr %l8
  br label %bb1
bb1:
  %t8 = load i64, ptr %l8, !tbaa !24
  store i64 %t8, ptr %l3, !tbaa !24
  %t9 = load i64, ptr %l3, !tbaa !24
  %t11 = icmp slt i64 %t9, 0
  br i1 %t11, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/diag:Diagnostics", ptr %t13, i32 0, i32 1
  %t16 = load i64, ptr %l1, !tbaa !24
  %t19 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %s1, ptr %t15, i64 %t16)
  store { i64, ptr } %t19, ptr %l14
  br label %bb4
bb3:
  br label %bb5
bb4:
  %t20 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t20, 1
  %t22 = extractvalue { i64, ptr } %t20, 0
  %t23 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t22)
  call void @olang_textcopy(ptr %t23, ptr %t21, i64 %t22)
  %t24 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t25 = insertvalue { i64, ptr } %t24, ptr %t23, 1
  %t26 = load i64, ptr %l2, !tbaa !24
  %t28 = insertvalue { { i64, ptr }, i64 } undef, { i64, ptr } %t25, 0
  %t30 = insertvalue { { i64, ptr }, i64 } %t28, i64 %t26, 1
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  store { { i64, ptr }, i64 } %t30, ptr %rv
  br label %ret
bb5:
  %t32 = load i64, ptr %l3, !tbaa !24
  %t33 = load i64, ptr %l2, !tbaa !24
  %t36 = add i64 %t32, %t33
  %t38 = sub i64 %t36, 1
  store i64 %t38, ptr %l4, !tbaa !24
  %t40 = load i64, ptr %l2, !tbaa !24
  %t42 = icmp slt i64 %t40, 1
  br i1 %t42, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb9
bb7:
  %t44 = load i64, ptr %l4, !tbaa !24
  store i64 %t44, ptr %l25, !tbaa !24
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/diag:Diagnostics", ptr %t45, i32 0, i32 28
  %t49 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t47)
  store i64 %t49, ptr %l28
  br label %bb8
bb8:
  %t50 = load i64, ptr %l25, !tbaa !24
  %t51 = load i64, ptr %l28, !tbaa !24
  %t52 = icmp sge i64 %t50, %t51
  store i1 %t52, ptr %l24, !tbaa !21
  br label %bb9
bb9:
  %t54 = load i1, ptr %l24, !tbaa !21
  br i1 %t54, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb14
bb11:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/diag:Diagnostics", ptr %t55, i32 0, i32 28
  %t58 = load i64, ptr %l4, !tbaa !24
  %t61 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t57, i64 %t58)
  store { i64, ptr } %t61, ptr %l34
  br label %bb12
bb12:
  %t62 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t63 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t62, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d78, i32 0, i32 1) })
  store i1 %t63, ptr %l35
  br label %bb13
bb13:
  %t64 = load i1, ptr %l35, !tbaa !21
  store i1 %t64, ptr %l30, !tbaa !21
  br label %bb14
bb14:
  %t65 = load i1, ptr %l30, !tbaa !21
  br i1 %t65, label %bb15, label %bb16
bb15:
  store %olang.scope zeroinitializer, ptr %s3
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/diag:Diagnostics", ptr %t66, i32 0, i32 1
  %t69 = load i64, ptr %l1, !tbaa !24
  %t72 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %s3, ptr %t68, i64 %t69)
  store { i64, ptr } %t72, ptr %l39
  br label %bb17
bb16:
  br label %bb18
bb17:
  %t73 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t74 = extractvalue { i64, ptr } %t73, 1
  %t75 = extractvalue { i64, ptr } %t73, 0
  %t76 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t75)
  call void @olang_textcopy(ptr %t76, ptr %t74, i64 %t75)
  %t77 = insertvalue { i64, ptr } undef, i64 %t75, 0
  %t78 = insertvalue { i64, ptr } %t77, ptr %t76, 1
  %t79 = load i64, ptr %l2, !tbaa !24
  %t81 = insertvalue { { i64, ptr }, i64 } undef, { i64, ptr } %t78, 0
  %t83 = insertvalue { { i64, ptr }, i64 } %t81, i64 %t79, 1
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store { { i64, ptr }, i64 } %t83, ptr %rv
  br label %ret
bb18:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/diag:Diagnostics", ptr %t85, i32 0, i32 28
  %t88 = load i64, ptr %l4, !tbaa !24
  %t91 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %s0, ptr %t87, i64 %t88)
  store { i64, ptr } %t91, ptr %l46
  br label %bb19
bb19:
  %t92 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t93 = extractvalue { i64, ptr } %t92, 1
  %t94 = extractvalue { i64, ptr } %t92, 0
  %t95 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t94)
  call void @olang_textcopy(ptr %t95, ptr %t93, i64 %t94)
  %t96 = insertvalue { i64, ptr } undef, i64 %t94, 0
  %t97 = insertvalue { i64, ptr } %t96, ptr %t95, 1
  store { i64, ptr } %t97, ptr %l47, !tbaa !27
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/diag:Diagnostics", ptr %t98, i32 0, i32 29
  %t101 = load i64, ptr %l4, !tbaa !24
  %t104 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t100, i64 %t101)
  store i64 %t104, ptr %l51
  br label %bb20
bb20:
  %t105 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t106 = insertvalue { { i64, ptr }, i64 } undef, { i64, ptr } %t105, 0
  %t107 = load i64, ptr %l51, !tbaa !24
  %t108 = insertvalue { { i64, ptr }, i64 } %t106, i64 %t107, 1
  call void @__olang_scope_close(ptr %s0)
  store { { i64, ptr }, i64 } %t108, ptr %rv
  br label %ret
ret:
  %rr = load { { i64, ptr }, i64 }, ptr %rv
  ret { { i64, ptr }, i64 } %rr
}

define dso_local { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2ewritten(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca %"compiler/diag:record"
  %l13 = alloca { i64, [3 x i64] }
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca { i64, i64 }
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i1
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca %"compiler/diag:record"
  %l33 = alloca i1
  %l34 = alloca ptr
  %l35 = alloca i64
  %l36 = alloca i64
  %lp38 = alloca ptr
  %l39 = alloca ptr
  %l40 = alloca i64
  %l41 = alloca i64
  %l43 = alloca { i64, ptr }
  %l44 = alloca i64
  %l45 = alloca ptr
  %l46 = alloca i64
  %l47 = alloca i64
  %l48 = alloca { i64, ptr }
  %l51 = alloca i64
  %l52 = alloca i64
  %l56 = alloca i64
  %l60 = alloca i64
  %l64 = alloca i64
  %l66 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l72 = alloca i64
  %l75 = alloca i64
  %l96 = alloca %"compiler/diag:record"
  %l109 = alloca { i64, i64 }
  %l134 = alloca i1
  %l137 = alloca i64
  %l141 = alloca i64
  %l144 = alloca i64
  %l164 = alloca i64
  %l168 = alloca %"compiler/diag:record"
  %l174 = alloca i1
  %l180 = alloca i1
  %l186 = alloca i1
  %l189 = alloca i1
  %l194 = alloca i1
  %l195 = alloca i1
  %l200 = alloca i1
  %l206 = alloca i1
  %l208 = alloca i1
  %l209 = alloca i32
  %l211 = alloca i32
  %l213 = alloca i1
  %l214 = alloca i1
  %l220 = alloca i1
  %l236 = alloca i64
  %l239 = alloca i64
  %l241 = alloca i64
  %l246 = alloca i64
  %l248 = alloca i1
  %l253 = alloca i1
  %l258 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l260 = alloca i64
  %l262 = alloca i64
  %l267 = alloca i64
  %l272 = alloca i1
  %l278 = alloca i64
  %l280 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l282 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l284 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l288 = alloca i64
  %l289 = alloca i64
  %l294 = alloca i64
  %l296 = alloca i64
  %l301 = alloca i64
  %l316 = alloca { i64, ptr }
  %l323 = alloca { i64, ptr }
  %l324 = alloca i64
  %l325 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t593 = alloca i64
  %t668 = alloca { { i64, ptr }, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/diag:Diagnostics", ptr %t1, i32 0, i32 7
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2eLen_3ccompiler_2fdiag_3arecord_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l51
  br label %bb1
bb1:
  %t6 = load i64, ptr %l51, !tbaa !24
  store i64 %t6, ptr %l1, !tbaa !24
  %t7 = load i64, ptr %l1, !tbaa !24
  store i64 %t7, ptr %l52, !tbaa !24
  %t8 = load i64, ptr %l52, !tbaa !24
  %t9 = icmp sge i64 %t8, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load i64, ptr %l52, !tbaa !24
  %t12 = icmp sle i64 %t11, 1152921504606846975
  br i1 %t12, label %bb4, label %bb5
bb3:
  call void @__olang_check_failed(ptr @olang_loc_4dcb4d0a5bf00c4a_ab355dfc0aa866a6)
  unreachable
bb4:
  %t14 = load i64, ptr %l52, !tbaa !24
  %t15 = mul i64 %t14, 8
  %t16 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t15)
  %t17 = insertvalue { i64, ptr } undef, i64 %t14, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t16, 1
  store { i64, ptr } %t18, ptr %l2, !tbaa !27
  %t20 = load i64, ptr %l1, !tbaa !24
  store i64 %t20, ptr %l56, !tbaa !24
  %t21 = load i64, ptr %l56, !tbaa !24
  %t22 = icmp sge i64 %t21, 0
  br i1 %t22, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_4dcb4d0a5bf00c4a_ab355dfc0aa866a6)
  unreachable
bb6:
  %t24 = load i64, ptr %l56, !tbaa !24
  %t25 = icmp sle i64 %t24, 1152921504606846975
  br i1 %t25, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_661de3b27f7b1d1f_a886f9f6d8c58a3b)
  unreachable
bb8:
  %t27 = load i64, ptr %l56, !tbaa !24
  %t28 = mul i64 %t27, 8
  %t29 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t28)
  %t30 = insertvalue { i64, ptr } undef, i64 %t27, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  store { i64, ptr } %t31, ptr %l3, !tbaa !27
  %t33 = load i64, ptr %l1, !tbaa !24
  store i64 %t33, ptr %l60, !tbaa !24
  %t34 = load i64, ptr %l60, !tbaa !24
  %t35 = icmp sge i64 %t34, 0
  br i1 %t35, label %bb10, label %bb11
bb9:
  call void @__olang_check_failed(ptr @olang_loc_661de3b27f7b1d1f_a886f9f6d8c58a3b)
  unreachable
bb10:
  %t37 = load i64, ptr %l60, !tbaa !24
  %t38 = icmp sle i64 %t37, 1152921504606846975
  br i1 %t38, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_7549250239c3dfbc_e6bed168a21d4f58)
  unreachable
bb12:
  %t40 = load i64, ptr %l60, !tbaa !24
  %t41 = mul i64 %t40, 8
  %t42 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t41)
  %t43 = insertvalue { i64, ptr } undef, i64 %t40, 0
  %t44 = insertvalue { i64, ptr } %t43, ptr %t42, 1
  store { i64, ptr } %t44, ptr %l4, !tbaa !27
  %t46 = ptrtoint ptr %s0 to i64
  store i64 %t46, ptr %l64, !tbaa !24
  %t47 = load i1, ptr @olang_2esole_2ecompiler__2fdiag__2ecompiler__2fdiag__3aDiagnostics__2ewritten_2elocal_2e5
  br i1 %t47, label %bb14, label %bb15
bb13:
  call void @__olang_check_failed(ptr @olang_loc_7549250239c3dfbc_e6bed168a21d4f58)
  unreachable
bb14:
  %t49 = call ptr @__olang_region_make(ptr %s0)
  %t50 = ptrtoint ptr %t49 to i64
  store i64 %t50, ptr %l64, !tbaa !24
  br label %bb15
bb15:
  %t51 = load i64, ptr %l64
  %t52 = inttoptr i64 %t51 to ptr
  %t53 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t52, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t53, ptr %l66
  br label %bb16
bb16:
  %t54 = load i1, ptr @olang_2esole_2ecompiler__2fdiag__2ecompiler__2fdiag__3aDiagnostics__2ewritten_2elocal_2e5
  br i1 %t54, label %bb17, label %bb18
bb17:
  %t56 = load i64, ptr %l64
  %t57 = inttoptr i64 %t56 to ptr
  %t58 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l66, i32 0, i32 0
  %t59 = load { i64, ptr }, ptr %t58
  %t60 = extractvalue { i64, ptr } %t59, 1
  %t61 = call ptr @__olang_region_or(ptr %t60, ptr null)
  %t62 = call ptr @__olang_region_home(ptr %t61)
  %t63 = icmp ne ptr %t62, null
  %t64 = select i1 %t63, ptr %t62, ptr null
  %t65 = icmp eq ptr %t64, %t57
  call void @__olang_region_settle(ptr %t57, i1 %t65)
  br label %bb18
bb18:
  %t66 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l66
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t66, ptr %l5
  store i64 0, ptr %l6, !tbaa !24
  %t67 = load i64, ptr %l1, !tbaa !24
  store i64 %t67, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t69 = load i64, ptr %l7, !tbaa !24
  %t70 = load i64, ptr %l6, !tbaa !24
  %t73 = icmp sgt i64 %t69, %t70
  br i1 %t73, label %bb19, label %bb20
bb19:
  %t75 = load i64, ptr %l8, !tbaa !24
  %t77 = icmp sgt i64 %t75, 0
  br i1 %t77, label %bb21, label %bb22
bb20:
  store i64 0, ptr %l72, !tbaa !24
  br label %bb24
bb21:
  %t79 = load i64, ptr %l7, !tbaa !24
  %t80 = load i64, ptr %l6, !tbaa !24
  %t83 = sub i64 %t79, %t80
  %t84 = load i64, ptr %l8, !tbaa !24
  %t87 = add i64 %t83, %t84
  %t89 = sub i64 %t87, 1
  %t90 = load i64, ptr %l8, !tbaa !24
  %t93 = sdiv i64 %t89, %t90
  store i64 %t93, ptr %l75, !tbaa !24
  br label %bb23
bb22:
  store i64 0, ptr %l75, !tbaa !24
  br label %bb23
bb23:
  %t95 = load i64, ptr %l75, !tbaa !24
  store i64 %t95, ptr %l72, !tbaa !24
  br label %bb24
bb24:
  %t96 = load i64, ptr %l72, !tbaa !24
  store i64 %t96, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb25
bb25:
  %t97 = load i64, ptr %l10, !tbaa !24
  %t98 = load i64, ptr %l9, !tbaa !24
  %t101 = icmp slt i64 %t97, %t98
  %t103 = xor i1 %t101, true
  br i1 %t103, label %bb26, label %bb27
bb26:
  br label %bb110
bb27:
  br label %bb28
bb28:
  %t105 = load i64, ptr %l6, !tbaa !24
  %t106 = load i64, ptr %l10, !tbaa !24
  %t107 = load i64, ptr %l8, !tbaa !24
  %t110 = mul i64 %t106, %t107
  %t113 = add i64 %t105, %t110
  store i64 %t113, ptr %l11, !tbaa !24
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t117 = getelementptr %"compiler/diag:Diagnostics", ptr %t115, i32 0, i32 7
  %t118 = load i64, ptr %l11, !tbaa !24
  %t121 = call %"compiler/diag:record" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2eAt_3ccompiler_2fdiag_3arecord_3e(ptr %v0, ptr %v0, ptr %t117, i64 %t118)
  store %"compiler/diag:record" %t121, ptr %l96
  br label %bb29
bb29:
  %t122 = load %"compiler/diag:record", ptr %l96
  store %"compiler/diag:record" %t122, ptr %l12
  %t123 = load i64, ptr %l11, !tbaa !24
  %t125 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t126 = load ptr, ptr %t125, !tbaa !27
  %t127 = getelementptr i64, ptr %t126, i64 %t123
  store i64 -1, ptr %t127, !tbaa !34
  %t128 = load i64, ptr %l11, !tbaa !24
  %t130 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !27
  %t132 = getelementptr i64, ptr %t131, i64 %t128
  store i64 9223372036854775807, ptr %t132, !tbaa !34
  %t133 = getelementptr %"compiler/diag:record", ptr %l12, i32 0, i32 0
  %t134 = load { i64, [3 x i64] }, ptr %t133
  store { i64, [3 x i64] } %t134, ptr %l13
  %t136 = load { i64, [3 x i64] }, ptr %l13
  %t138 = extractvalue { i64, [3 x i64] } %t136, 0
  %t139 = icmp eq i64 %t138, 3
  br i1 %t139, label %bb30, label %bb31
bb30:
  %t141 = getelementptr { i64, [3 x i64] }, ptr %l13, i32 0, i32 1
  %t142 = getelementptr { i64, i64, i64 }, ptr %t141, i32 0, i32 0
  %t143 = load i64, ptr %t142
  store i64 %t143, ptr %l14, !tbaa !24
  %t145 = getelementptr { i64, [3 x i64] }, ptr %l13, i32 0, i32 1
  %t146 = getelementptr { i64, i64, i64 }, ptr %t145, i32 0, i32 1
  %t147 = load i64, ptr %t146
  store i64 %t147, ptr %l15, !tbaa !24
  br label %bb32
bb31:
  br label %bb34
bb32:
  %t149 = load i64, ptr %l11, !tbaa !24
  %t150 = load i64, ptr %l14, !tbaa !24
  %t153 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t154 = load ptr, ptr %t153, !tbaa !27
  %t155 = getelementptr i64, ptr %t154, i64 %t149
  store i64 %t150, ptr %t155, !tbaa !34
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t157 = load i64, ptr %l14, !tbaa !24
  %t158 = load i64, ptr %l15, !tbaa !24
  %t162 = call { i64, i64 } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2elineOf(ptr %v0, ptr %t156, i64 %t157, i64 %t158)
  store { i64, i64 } %t162, ptr %l109
  br label %bb33
bb33:
  %t163 = load { i64, i64 }, ptr %l109
  store { i64, i64 } %t163, ptr %l16
  %t164 = getelementptr { i64, i64 }, ptr %l16, i32 0, i32 0
  %t165 = load i64, ptr %t164, !tbaa !24
  %t167 = getelementptr { i64, i64 }, ptr %l16, i32 0, i32 1
  %t168 = load i64, ptr %t167, !tbaa !24
  %t170 = load i64, ptr %l11, !tbaa !24
  %t174 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t175 = load ptr, ptr %t174, !tbaa !27
  %t176 = getelementptr i64, ptr %t175, i64 %t170
  store i64 %t165, ptr %t176, !tbaa !34
  %t177 = load i64, ptr %l11, !tbaa !24
  %t178 = load i64, ptr %l15, !tbaa !24
  %t182 = sub i64 %t178, %t168
  %t184 = add i64 %t182, 1
  %t187 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t188 = load ptr, ptr %t187, !tbaa !27
  %t189 = getelementptr i64, ptr %t188, i64 %t177
  store i64 %t184, ptr %t189, !tbaa !34
  br label %bb47
bb34:
  %t190 = load { i64, [3 x i64] }, ptr %l13
  %t192 = extractvalue { i64, [3 x i64] } %t190, 0
  %t193 = icmp eq i64 %t192, 2
  br i1 %t193, label %bb35, label %bb36
bb35:
  %t195 = getelementptr { i64, [3 x i64] }, ptr %l13, i32 0, i32 1
  %t196 = getelementptr { i64, i64 }, ptr %t195, i32 0, i32 0
  %t197 = load i64, ptr %t196
  store i64 %t197, ptr %l19, !tbaa !24
  %t199 = getelementptr { i64, [3 x i64] }, ptr %l13, i32 0, i32 1
  %t200 = getelementptr { i64, i64 }, ptr %t199, i32 0, i32 1
  %t201 = load i64, ptr %t200
  store i64 %t201, ptr %l20, !tbaa !24
  br label %bb37
bb36:
  br label %bb38
bb37:
  %t203 = load i64, ptr %l11, !tbaa !24
  %t204 = load i64, ptr %l19, !tbaa !24
  %t207 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t208 = load ptr, ptr %t207, !tbaa !27
  %t209 = getelementptr i64, ptr %t208, i64 %t203
  store i64 %t204, ptr %t209, !tbaa !34
  %t210 = load i64, ptr %l11, !tbaa !24
  %t211 = load i64, ptr %l20, !tbaa !24
  %t214 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t215 = load ptr, ptr %t214, !tbaa !27
  %t216 = getelementptr i64, ptr %t215, i64 %t210
  store i64 %t211, ptr %t216, !tbaa !34
  br label %bb47
bb38:
  %t217 = load { i64, [3 x i64] }, ptr %l13
  %t219 = extractvalue { i64, [3 x i64] } %t217, 0
  %t220 = icmp eq i64 %t219, 1
  br i1 %t220, label %bb39, label %bb40
bb39:
  %t222 = getelementptr { i64, [3 x i64] }, ptr %l13, i32 0, i32 1
  %t223 = getelementptr { i64 }, ptr %t222, i32 0, i32 0
  %t224 = load i64, ptr %t223
  store i64 %t224, ptr %l21, !tbaa !24
  br label %bb41
bb40:
  br label %bb42
bb41:
  %t226 = load i64, ptr %l11, !tbaa !24
  %t227 = load i64, ptr %l21, !tbaa !24
  %t230 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t231 = load ptr, ptr %t230, !tbaa !27
  %t232 = getelementptr i64, ptr %t231, i64 %t226
  store i64 %t227, ptr %t232, !tbaa !34
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
  call void @__olang_check_failed(ptr @olang_loc_cc4d2c1e8d3adf92_7a1efbc027515c6)
  unreachable
bb47:
  %t233 = load ptr, ptr %l0, !tbaa !29
  %t234 = getelementptr %"compiler/diag:record", ptr %l12, i32 0, i32 4
  %t235 = load i64, ptr %t234, !tbaa !24
  %t238 = call i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2echosen(ptr %v0, ptr %t233, i64 %t235)
  store i1 %t238, ptr %l134
  br label %bb48
bb48:
  %t239 = load i1, ptr %l134, !tbaa !21
  %t240 = xor i1 %t239, true
  br i1 %t240, label %bb49, label %bb50
bb49:
  br label %bb109
bb50:
  br label %bb51
bb51:
  store i1 false, ptr %l22, !tbaa !21
  store i64 0, ptr %l23, !tbaa !24
  %t243 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l5)
  store i64 %t243, ptr %l137
  br label %bb52
bb52:
  %t244 = load i64, ptr %l137, !tbaa !24
  store i64 %t244, ptr %l24, !tbaa !24
  store i64 1, ptr %l25, !tbaa !24
  %t245 = load i64, ptr %l24, !tbaa !24
  %t246 = load i64, ptr %l23, !tbaa !24
  %t249 = icmp sgt i64 %t245, %t246
  br i1 %t249, label %bb53, label %bb54
bb53:
  %t251 = load i64, ptr %l25, !tbaa !24
  %t253 = icmp sgt i64 %t251, 0
  br i1 %t253, label %bb55, label %bb56
bb54:
  store i64 0, ptr %l141, !tbaa !24
  br label %bb58
bb55:
  %t255 = load i64, ptr %l24, !tbaa !24
  %t256 = load i64, ptr %l23, !tbaa !24
  %t259 = sub i64 %t255, %t256
  %t260 = load i64, ptr %l25, !tbaa !24
  %t263 = add i64 %t259, %t260
  %t265 = sub i64 %t263, 1
  %t266 = load i64, ptr %l25, !tbaa !24
  %t269 = sdiv i64 %t265, %t266
  store i64 %t269, ptr %l144, !tbaa !24
  br label %bb57
bb56:
  store i64 0, ptr %l144, !tbaa !24
  br label %bb57
bb57:
  %t271 = load i64, ptr %l144, !tbaa !24
  store i64 %t271, ptr %l141, !tbaa !24
  br label %bb58
bb58:
  %t272 = load i64, ptr %l141, !tbaa !24
  store i64 %t272, ptr %l26, !tbaa !24
  store i64 0, ptr %l27, !tbaa !24
  br label %bb59
bb59:
  %t273 = load i64, ptr %l27, !tbaa !24
  %t274 = load i64, ptr %l26, !tbaa !24
  %t277 = icmp slt i64 %t273, %t274
  %t279 = xor i1 %t277, true
  br i1 %t279, label %bb60, label %bb61
bb60:
  br label %bb104
bb61:
  br label %bb62
bb62:
  %t281 = load i64, ptr %l23, !tbaa !24
  %t282 = load i64, ptr %l27, !tbaa !24
  %t283 = load i64, ptr %l25, !tbaa !24
  %t286 = mul i64 %t282, %t283
  %t289 = add i64 %t281, %t286
  store i64 %t289, ptr %l28, !tbaa !24
  %t291 = load i64, ptr %l28, !tbaa !24
  %t294 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l5, i64 %t291)
  store i64 %t294, ptr %l164
  br label %bb63
bb63:
  %t295 = load i64, ptr %l164, !tbaa !24
  store i64 %t295, ptr %l29, !tbaa !24
  %t296 = load ptr, ptr %l0, !tbaa !29
  %t298 = getelementptr %"compiler/diag:Diagnostics", ptr %t296, i32 0, i32 7
  %t299 = load i64, ptr %l29, !tbaa !24
  %t302 = call %"compiler/diag:record" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2eAt_3ccompiler_2fdiag_3arecord_3e(ptr %v0, ptr %v0, ptr %t298, i64 %t299)
  store %"compiler/diag:record" %t302, ptr %l168
  br label %bb64
bb64:
  %t303 = load %"compiler/diag:record", ptr %l168
  store %"compiler/diag:record" %t303, ptr %l30
  %t304 = load i64, ptr %l29, !tbaa !24
  %t306 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t307 = load ptr, ptr %t306, !tbaa !27
  %t308 = getelementptr i64, ptr %t307, i64 %t304
  %t309 = load i64, ptr %t308, !tbaa !34
  %t310 = load i64, ptr %l11, !tbaa !24
  %t312 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t313 = load ptr, ptr %t312, !tbaa !27
  %t314 = getelementptr i64, ptr %t313, i64 %t310
  %t315 = load i64, ptr %t314, !tbaa !34
  %t318 = icmp eq i64 %t309, %t315
  br i1 %t318, label %bb65, label %bb66
bb65:
  %t320 = load i64, ptr %l29, !tbaa !24
  %t322 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t323 = load ptr, ptr %t322, !tbaa !27
  %t324 = getelementptr i64, ptr %t323, i64 %t320
  %t325 = load i64, ptr %t324, !tbaa !34
  %t326 = load i64, ptr %l11, !tbaa !24
  %t328 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t329 = load ptr, ptr %t328, !tbaa !27
  %t330 = getelementptr i64, ptr %t329, i64 %t326
  %t331 = load i64, ptr %t330, !tbaa !34
  %t334 = icmp eq i64 %t325, %t331
  store i1 %t334, ptr %l174, !tbaa !21
  br label %bb67
bb66:
  store i1 false, ptr %l174, !tbaa !21
  br label %bb67
bb67:
  %t336 = load i1, ptr %l174, !tbaa !21
  br i1 %t336, label %bb68, label %bb69
bb68:
  %t337 = load i64, ptr %l29, !tbaa !24
  %t339 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t340 = load ptr, ptr %t339, !tbaa !27
  %t341 = getelementptr i64, ptr %t340, i64 %t337
  %t342 = load i64, ptr %t341, !tbaa !34
  %t343 = load i64, ptr %l11, !tbaa !24
  %t345 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t346 = load ptr, ptr %t345, !tbaa !27
  %t347 = getelementptr i64, ptr %t346, i64 %t343
  %t348 = load i64, ptr %t347, !tbaa !34
  %t351 = icmp eq i64 %t342, %t348
  store i1 %t351, ptr %l180, !tbaa !21
  br label %bb70
bb69:
  store i1 false, ptr %l180, !tbaa !21
  br label %bb70
bb70:
  %t353 = load i1, ptr %l180, !tbaa !21
  br i1 %t353, label %bb71, label %bb72
bb71:
  %t354 = getelementptr %"compiler/diag:record", ptr %l30, i32 0, i32 2
  %t355 = load { i64, ptr }, ptr %t354, !tbaa !27
  %t356 = getelementptr %"compiler/diag:record", ptr %l12, i32 0, i32 2
  %t357 = load { i64, ptr }, ptr %t356, !tbaa !27
  %t360 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v0, { i64, ptr } %t355, { i64, ptr } %t357)
  store i1 %t360, ptr %l189
  br label %bb73
bb72:
  store i1 false, ptr %l186, !tbaa !21
  br label %bb74
bb73:
  %t361 = load i1, ptr %l189, !tbaa !21
  store i1 %t361, ptr %l186, !tbaa !21
  br label %bb74
bb74:
  %t362 = load i1, ptr %l186, !tbaa !21
  br i1 %t362, label %bb75, label %bb76
bb75:
  store i1 true, ptr %l22, !tbaa !21
  %t363 = load i64, ptr %l29, !tbaa !24
  %t365 = load ptr, ptr %l0, !tbaa !29
  %t367 = getelementptr %"compiler/diag:Diagnostics", ptr %t365, i32 0, i32 16
  %t371 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %t367, i64 %t363)
  store i1 %t371, ptr %l194
  br label %bb77
bb76:
  br label %bb86
bb77:
  %t372 = load i1, ptr %l194, !tbaa !21
  br i1 %t372, label %bb78, label %bb79
bb78:
  %t373 = load i64, ptr %l11, !tbaa !24
  %t375 = load ptr, ptr %l0, !tbaa !29
  %t377 = getelementptr %"compiler/diag:Diagnostics", ptr %t375, i32 0, i32 16
  %t381 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %t377, i64 %t373)
  store i1 %t381, ptr %l200
  br label %bb80
bb79:
  store i1 false, ptr %l195, !tbaa !21
  br label %bb81
bb80:
  %t382 = load i1, ptr %l200, !tbaa !21
  %t383 = xor i1 %t382, true
  store i1 %t383, ptr %l195, !tbaa !21
  br label %bb81
bb81:
  %t385 = load i1, ptr %l195, !tbaa !21
  br i1 %t385, label %bb82, label %bb83
bb82:
  %t386 = load i64, ptr %l28, !tbaa !24
  %t387 = load i64, ptr %l11, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %s0, ptr %l5, i64 %t386, i64 %t387)
  br label %bb84
bb83:
  br label %bb85
bb84:
  br label %bb85
bb85:
  br label %bb86
bb86:
  %t391 = getelementptr %"compiler/diag:record", ptr %l12, i32 0, i32 5
  %t392 = load i1, ptr %t391, !tbaa !21
  br i1 %t392, label %bb87, label %bb88
bb87:
  %t394 = getelementptr %"compiler/diag:record", ptr %l30, i32 0, i32 5
  %t395 = load i1, ptr %t394, !tbaa !21
  store i1 %t395, ptr %l206, !tbaa !21
  br label %bb89
bb88:
  store i1 false, ptr %l206, !tbaa !21
  br label %bb89
bb89:
  %t397 = load i1, ptr %l206, !tbaa !21
  br i1 %t397, label %bb90, label %bb91
bb90:
  %t398 = getelementptr %"compiler/diag:record", ptr %l30, i32 0, i32 3
  %t399 = load i32, ptr %t398, !range !{i32 0, i32 906}
  store i32 %t399, ptr %l209
  %t400 = getelementptr %"compiler/diag:record", ptr %l12, i32 0, i32 3
  %t401 = load i32, ptr %t400, !range !{i32 0, i32 906}
  store i32 %t401, ptr %l211
  %t404 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fmsgs_3aDiag(ptr %l209, ptr %l211)
  store i1 %t404, ptr %l213
  br label %bb92
bb91:
  store i1 false, ptr %l208, !tbaa !21
  br label %bb93
bb92:
  %t405 = load i1, ptr %l213, !tbaa !21
  store i1 %t405, ptr %l208, !tbaa !21
  br label %bb93
bb93:
  %t406 = load i1, ptr %l208, !tbaa !21
  br i1 %t406, label %bb94, label %bb95
bb94:
  %t407 = load i64, ptr %l29, !tbaa !24
  %t409 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t410 = load ptr, ptr %t409, !tbaa !27
  %t411 = getelementptr i64, ptr %t410, i64 %t407
  %t412 = load i64, ptr %t411, !tbaa !34
  %t413 = load i64, ptr %l11, !tbaa !24
  %t415 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t416 = load ptr, ptr %t415, !tbaa !27
  %t417 = getelementptr i64, ptr %t416, i64 %t413
  %t418 = load i64, ptr %t417, !tbaa !34
  %t421 = icmp eq i64 %t412, %t418
  store i1 %t421, ptr %l214, !tbaa !21
  br label %bb96
bb95:
  store i1 false, ptr %l214, !tbaa !21
  br label %bb96
bb96:
  %t423 = load i1, ptr %l214, !tbaa !21
  br i1 %t423, label %bb97, label %bb98
bb97:
  %t424 = load i64, ptr %l29, !tbaa !24
  %t426 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t427 = load ptr, ptr %t426, !tbaa !27
  %t428 = getelementptr i64, ptr %t427, i64 %t424
  %t429 = load i64, ptr %t428, !tbaa !34
  %t430 = load i64, ptr %l11, !tbaa !24
  %t432 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t433 = load ptr, ptr %t432, !tbaa !27
  %t434 = getelementptr i64, ptr %t433, i64 %t430
  %t435 = load i64, ptr %t434, !tbaa !34
  %t438 = icmp eq i64 %t429, %t435
  store i1 %t438, ptr %l220, !tbaa !21
  br label %bb99
bb98:
  store i1 false, ptr %l220, !tbaa !21
  br label %bb99
bb99:
  %t440 = load i1, ptr %l220, !tbaa !21
  br i1 %t440, label %bb100, label %bb101
bb100:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb102
bb101:
  br label %bb102
bb102:
  br label %bb103
bb103:
  %t441 = load i64, ptr %l27, !tbaa !24
  %t443 = add i64 %t441, 1
  store i64 %t443, ptr %l27, !tbaa !24
  br label %bb59
bb104:
  %t445 = load i1, ptr %l22, !tbaa !21
  %t447 = xor i1 %t445, true
  br i1 %t447, label %bb105, label %bb106
bb105:
  %t449 = load i64, ptr %l11, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l5, i64 %t449)
  br label %bb107
bb106:
  br label %bb108
bb107:
  br label %bb108
bb108:
  br label %bb109
bb109:
  %t452 = load i64, ptr %l10, !tbaa !24
  %t454 = add i64 %t452, 1
  store i64 %t454, ptr %l10, !tbaa !24
  br label %bb25
bb110:
  %t456 = load ptr, ptr %l0, !tbaa !29
  %t458 = getelementptr %"compiler/diag:Diagnostics", ptr %t456, i32 0, i32 17
  %t460 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t458)
  store i64 %t460, ptr %l236
  br label %bb111
bb111:
  %t461 = load i64, ptr %l236, !tbaa !24
  %t462 = icmp sgt i64 %t461, 0
  br i1 %t462, label %bb112, label %bb113
bb112:
  store i1 false, ptr %l33, !tbaa !21
  store ptr %l5, ptr %l34, !tbaa !29
  store i64 0, ptr %l35, !tbaa !24
  br label %bb114
bb113:
  br label %bb150
bb114:
  %t465 = load i64, ptr %l35, !tbaa !24
  store i64 %t465, ptr %l239, !tbaa !24
  %t466 = load ptr, ptr %l34, !tbaa !29
  %t468 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t466)
  store i64 %t468, ptr %l241
  br label %bb115
bb115:
  %t469 = load i64, ptr %l239, !tbaa !24
  %t470 = load i64, ptr %l241, !tbaa !24
  %t471 = icmp slt i64 %t469, %t470
  %t473 = xor i1 %t471, true
  br i1 %t473, label %bb116, label %bb117
bb116:
  br label %bb125
bb117:
  br label %bb118
bb118:
  %t475 = load ptr, ptr %l34, !tbaa !29
  %t476 = load i64, ptr %l35, !tbaa !24
  %t479 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t475, i64 %t476)
  store i64 %t479, ptr %l246
  br label %bb119
bb119:
  %t480 = load i64, ptr %l246, !tbaa !24
  store i64 %t480, ptr %l36, !tbaa !24
  %t481 = load i1, ptr %l33, !tbaa !21
  br i1 %t481, label %bb120, label %bb121
bb120:
  store i1 true, ptr %l248, !tbaa !21
  br label %bb123
bb121:
  %t483 = load i64, ptr %l36, !tbaa !24
  %t485 = load ptr, ptr %l0, !tbaa !29
  %t487 = getelementptr %"compiler/diag:Diagnostics", ptr %t485, i32 0, i32 17
  %t491 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %t487, i64 %t483)
  store i1 %t491, ptr %l253
  br label %bb122
bb122:
  %t492 = load i1, ptr %l253, !tbaa !21
  %t493 = xor i1 %t492, true
  store i1 %t493, ptr %l248, !tbaa !21
  br label %bb123
bb123:
  %t495 = load i1, ptr %l248, !tbaa !21
  store i1 %t495, ptr %l33, !tbaa !21
  br label %bb124
bb124:
  %t496 = load i64, ptr %l35, !tbaa !24
  %t498 = add i64 %t496, 1
  store i64 %t498, ptr %l35, !tbaa !24
  br label %bb114
bb125:
  %t500 = load i1, ptr %l33, !tbaa !21
  br i1 %t500, label %bb126, label %bb127
bb126:
  %t502 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t502, ptr %l258
  br label %bb128
bb127:
  br label %bb149
bb128:
  %t503 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 32, i64 8)
  store ptr %t503, ptr %lp38
  %t504 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l258
  %t505 = load ptr, ptr %lp38
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t504, ptr %t505
  store ptr %l5, ptr %l39, !tbaa !29
  store i64 0, ptr %l40, !tbaa !24
  br label %bb129
bb129:
  %t507 = load i64, ptr %l40, !tbaa !24
  store i64 %t507, ptr %l260, !tbaa !24
  %t508 = load ptr, ptr %l39, !tbaa !29
  %t510 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t508)
  store i64 %t510, ptr %l262
  br label %bb130
bb130:
  %t511 = load i64, ptr %l260, !tbaa !24
  %t512 = load i64, ptr %l262, !tbaa !24
  %t513 = icmp slt i64 %t511, %t512
  %t515 = xor i1 %t513, true
  br i1 %t515, label %bb131, label %bb132
bb131:
  br label %bb141
bb132:
  br label %bb133
bb133:
  %t517 = load ptr, ptr %l39, !tbaa !29
  %t518 = load i64, ptr %l40, !tbaa !24
  %t521 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t517, i64 %t518)
  store i64 %t521, ptr %l267
  br label %bb134
bb134:
  %t522 = load i64, ptr %l267, !tbaa !24
  store i64 %t522, ptr %l41, !tbaa !24
  %t523 = load i64, ptr %l41, !tbaa !24
  %t525 = load ptr, ptr %l0, !tbaa !29
  %t527 = getelementptr %"compiler/diag:Diagnostics", ptr %t525, i32 0, i32 17
  %t531 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %t527, i64 %t523)
  store i1 %t531, ptr %l272
  br label %bb135
bb135:
  %t532 = load i1, ptr %l272, !tbaa !21
  %t533 = xor i1 %t532, true
  br i1 %t533, label %bb136, label %bb137
bb136:
  %t535 = load ptr, ptr %lp38
  %t536 = load i64, ptr %l41, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %t535, i64 %t536)
  br label %bb138
bb137:
  br label %bb139
bb138:
  br label %bb139
bb139:
  br label %bb140
bb140:
  %t539 = load i64, ptr %l40, !tbaa !24
  %t541 = add i64 %t539, 1
  store i64 %t541, ptr %l40, !tbaa !24
  br label %bb129
bb141:
  %t543 = ptrtoint ptr %s0 to i64
  store i64 %t543, ptr %l278, !tbaa !24
  %t544 = load i1, ptr @olang_2esole_2ecompiler__2fdiag__2ecompiler__2fdiag__3aDiagnostics__2ewritten_2elocal_2e5
  br i1 %t544, label %bb142, label %bb143
bb142:
  %t546 = call ptr @__olang_region_make(ptr %s0)
  %t547 = ptrtoint ptr %t546 to i64
  store i64 %t547, ptr %l278, !tbaa !24
  br label %bb143
bb143:
  %t548 = load ptr, ptr %lp38
  %t549 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t548
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t549, ptr %l280
  %t550 = load i64, ptr %l278
  %t551 = inttoptr i64 %t550 to ptr
  %t553 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %t551, ptr %l280)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t553, ptr %l282
  br label %bb144
bb144:
  %t554 = load i1, ptr @olang_2esole_2ecompiler__2fdiag__2ecompiler__2fdiag__3aDiagnostics__2ewritten_2elocal_2e5
  br i1 %t554, label %bb145, label %bb146
bb145:
  %t556 = load i64, ptr %l278
  %t557 = inttoptr i64 %t556 to ptr
  %t558 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l282, i32 0, i32 0
  %t559 = load { i64, ptr }, ptr %t558
  %t560 = extractvalue { i64, ptr } %t559, 1
  %t561 = call ptr @__olang_region_or(ptr %t560, ptr null)
  %t562 = call ptr @__olang_region_home(ptr %t561)
  %t563 = icmp ne ptr %t562, null
  %t564 = select i1 %t563, ptr %t562, ptr null
  %t565 = icmp eq ptr %t564, %t557
  call void @__olang_region_settle(ptr %t557, i1 %t565)
  br label %bb146
bb146:
  %t566 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t566, ptr %l284
  %t567 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l282
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t567, ptr %l5
  %t568 = load i1, ptr @olang_2esole_2ecompiler__2fdiag__2ecompiler__2fdiag__3aDiagnostics__2ewritten_2elocal_2e5
  br i1 %t568, label %bb147, label %bb148
bb147:
  %t570 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l284, i32 0, i32 0
  %t571 = load { i64, ptr }, ptr %t570
  %t572 = extractvalue { i64, ptr } %t571, 1
  %t573 = call ptr @__olang_region_or(ptr %t572, ptr null)
  %t574 = call ptr @__olang_region_home(ptr %t573)
  %t575 = icmp ne ptr %t574, null
  %t576 = select i1 %t575, ptr %t574, ptr null
  call void @__olang_region_drop(ptr %t576)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l284
  br label %bb148
bb148:
  br label %bb149
bb149:
  br label %bb150
bb150:
  %t577 = load ptr, ptr %l0, !tbaa !29
  %t579 = getelementptr %"compiler/diag:Diagnostics", ptr %t577, i32 0, i32 1
  %t581 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t579)
  store i64 %t581, ptr %l288
  br label %bb151
bb151:
  %t582 = load i64, ptr %l288, !tbaa !24
  %t583 = add i64 %t582, 1
  store i64 %t583, ptr %l289, !tbaa !24
  %t584 = load i64, ptr %l289, !tbaa !24
  %t585 = icmp sge i64 %t584, 0
  br i1 %t585, label %bb152, label %bb153
bb152:
  %t587 = load i64, ptr %l289, !tbaa !24
  %t588 = icmp sle i64 %t587, 1152921504606846975
  br i1 %t588, label %bb154, label %bb155
bb153:
  call void @__olang_check_failed(ptr @olang_loc_c2f4506e7327945e_f97af0abefd7d9d2)
  unreachable
bb154:
  %t590 = load i64, ptr %l289, !tbaa !24
  %t591 = mul i64 %t590, 8
  %t592 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t591)
  store i64 0, ptr %t593
  br label %fill.594
fill.594:
  %t597 = load i64, ptr %t593
  %t598 = icmp slt i64 %t597, %t590
  br i1 %t598, label %fillb.595, label %filld.596
fillb.595:
  %t599 = getelementptr i64, ptr %t592, i64 %t597
  store i64 -1, ptr %t599
  %t600 = add i64 %t597, 1
  store i64 %t600, ptr %t593
  br label %fill.594
filld.596:
  %t601 = insertvalue { i64, ptr } undef, i64 %t590, 0
  %t602 = insertvalue { i64, ptr } %t601, ptr %t592, 1
  store { i64, ptr } %t602, ptr %l43, !tbaa !27
  store i64 0, ptr %l44, !tbaa !24
  store ptr %l5, ptr %l45, !tbaa !29
  store i64 0, ptr %l46, !tbaa !24
  br label %bb156
bb155:
  call void @__olang_check_failed(ptr @olang_loc_c2f4506e7327945e_f97af0abefd7d9d2)
  unreachable
bb156:
  %t605 = load i64, ptr %l46, !tbaa !24
  store i64 %t605, ptr %l294, !tbaa !24
  %t606 = load ptr, ptr %l45, !tbaa !29
  %t608 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t606)
  store i64 %t608, ptr %l296
  br label %bb157
bb157:
  %t609 = load i64, ptr %l294, !tbaa !24
  %t610 = load i64, ptr %l296, !tbaa !24
  %t611 = icmp slt i64 %t609, %t610
  %t613 = xor i1 %t611, true
  br i1 %t613, label %bb158, label %bb159
bb158:
  br label %bb166
bb159:
  br label %bb160
bb160:
  %t615 = load ptr, ptr %l45, !tbaa !29
  %t616 = load i64, ptr %l46, !tbaa !24
  %t619 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t615, i64 %t616)
  store i64 %t619, ptr %l301
  br label %bb161
bb161:
  %t620 = load i64, ptr %l301, !tbaa !24
  store i64 %t620, ptr %l47, !tbaa !24
  %t621 = load i64, ptr %l47, !tbaa !24
  %t623 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t624 = load ptr, ptr %t623, !tbaa !27
  %t625 = getelementptr i64, ptr %t624, i64 %t621
  %t626 = load i64, ptr %t625, !tbaa !34
  %t628 = add i64 %t626, 1
  %t630 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t631 = load ptr, ptr %t630, !tbaa !27
  %t632 = getelementptr i64, ptr %t631, i64 %t628
  %t633 = load i64, ptr %t632, !tbaa !34
  %t635 = icmp slt i64 %t633, 0
  br i1 %t635, label %bb162, label %bb163
bb162:
  %t637 = load i64, ptr %l47, !tbaa !24
  %t639 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t640 = load ptr, ptr %t639, !tbaa !27
  %t641 = getelementptr i64, ptr %t640, i64 %t637
  %t642 = load i64, ptr %t641, !tbaa !34
  %t644 = add i64 %t642, 1
  %t645 = load i64, ptr %l44, !tbaa !24
  %t648 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t649 = load ptr, ptr %t648, !tbaa !27
  %t650 = getelementptr i64, ptr %t649, i64 %t644
  store i64 %t645, ptr %t650, !tbaa !34
  %t651 = load i64, ptr %l44, !tbaa !24
  %t653 = add i64 %t651, 1
  store i64 %t653, ptr %l44, !tbaa !24
  br label %bb164
bb163:
  br label %bb164
bb164:
  br label %bb165
bb165:
  %t655 = load i64, ptr %l46, !tbaa !24
  %t657 = add i64 %t655, 1
  store i64 %t657, ptr %l46, !tbaa !24
  br label %bb156
bb166:
  %t660 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %s0, ptr %s0, ptr %l5)
  store { i64, ptr } %t660, ptr %l316
  br label %bb167
bb167:
  %t661 = load { i64, ptr }, ptr %l316, !tbaa !27
  store { i64, ptr } %t661, ptr %l48, !tbaa !27
  %t662 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t663 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t664 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t665 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t666 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr }, ptr null, i32 1
  %t667 = ptrtoint ptr %t666 to i64
  %t669 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr }, ptr %t668, i32 0, i32 0
  store { i64, ptr } %t663, ptr %t669, !tbaa !28
  %t671 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr }, ptr %t668, i32 0, i32 1
  store { i64, ptr } %t664, ptr %t671, !tbaa !28
  %t673 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr }, ptr %t668, i32 0, i32 2
  store { i64, ptr } %t665, ptr %t673, !tbaa !28
  call void @__olang_scope_escape(ptr %s0)
  %t675 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr }, ptr %t668, i32 0, i32 3
  store ptr %s0, ptr %t675, !tbaa !28
  call void @__olang_scope_escape(ptr %s0)
  %t676 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr }, ptr %t668, i32 0, i32 4
  store ptr %s0, ptr %t676, !tbaa !28
  call void @__olang_scope_escape(ptr %s0)
  %t677 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr }, ptr %t668, i32 0, i32 5
  store ptr %s0, ptr %t677, !tbaa !28
  %t678 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_79, 0
  %t679 = insertvalue { ptr, ptr } %t678, ptr %t668, 1
  %t682 = extractvalue { ptr, ptr } %t679, 0
  %t683 = extractvalue { ptr, ptr } %t679, 1
  call void @std_2fprelude_2farray_2eArray_3cI64_3e_2eSort_3cI64_2c_20_3f_3e(ptr %s0, ptr %s0, { i64, ptr } %t662, ptr %t682, ptr %t683)
  br label %bb168
bb168:
  %t684 = load { i64, ptr }, ptr %l48, !tbaa !27
  store { i64, ptr } %t684, ptr %l323, !tbaa !27
  %t686 = load { i64, ptr }, ptr %l323, !tbaa !27
  %t687 = extractvalue { i64, ptr } %t686, 0
  store i64 %t687, ptr %l324, !tbaa !24
  %t688 = load i64, ptr %l324, !tbaa !24
  %t689 = mul i64 %t688, 8
  %t690 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t689)
  %t691 = insertvalue { i64, ptr } undef, i64 %t688, 0
  %t692 = insertvalue { i64, ptr } %t691, ptr %t690, 1
  store { i64, ptr } %t692, ptr %l325, !tbaa !27
  %t693 = getelementptr { i64, ptr }, ptr %l325, i32 0, i32 1
  %t694 = load ptr, ptr %t693, !tbaa !27
  %t695 = getelementptr { i64, ptr }, ptr %l323, i32 0, i32 1
  %t696 = load ptr, ptr %t695, !tbaa !27
  %t697 = load i64, ptr %l324, !tbaa !24
  %t698 = mul i64 %t697, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t694, ptr %t696, i64 %t698, i1 false)
  %t699 = load { i64, ptr }, ptr %l325, !tbaa !27
  store { i64, ptr } %t699, ptr %l323, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t700 = load { i64, ptr }, ptr %l323, !tbaa !27
  store { i64, ptr } %t700, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2fdiag_2ecompiler_2fdiag_3aTaken_2eCount(ptr %v0, ptr %a0) #0 {
entry:
  %l3 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/diag:Taken", ptr %a0, i32 0, i32 0
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2eLen_3ccompiler_2fdiag_3arecord_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load i64, ptr %l3, !tbaa !24
  store i64 %t6, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fdiag_2ecompiler_2fdiag_3aTaken_2eSame(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca %"compiler/diag:record"
  %l9 = alloca %"compiler/diag:record"
  %l12 = alloca i64
  %l15 = alloca i64
  %l17 = alloca i1
  %l20 = alloca i64
  %l23 = alloca i64
  %l28 = alloca i64
  %l32 = alloca i64
  %l35 = alloca i64
  %l56 = alloca %"compiler/diag:record"
  %l60 = alloca %"compiler/diag:record"
  %l63 = alloca i1
  %l65 = alloca i1
  %l68 = alloca i1
  %l70 = alloca i1
  %l71 = alloca { i64, [3 x i64] }
  %l73 = alloca { i64, [3 x i64] }
  %l75 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/diag:Taken", ptr %t1, i32 0, i32 0
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2eLen_3ccompiler_2fdiag_3arecord_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l12
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t8 = getelementptr %"compiler/diag:Taken", ptr %t6, i32 0, i32 0
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2eLen_3ccompiler_2fdiag_3arecord_3e(ptr %v1, ptr %t8)
  store i64 %t10, ptr %l15
  br label %bb2
bb2:
  %t11 = load i64, ptr %l12, !tbaa !24
  %t12 = load i64, ptr %l15, !tbaa !24
  %t13 = icmp ne i64 %t11, %t12
  br i1 %t13, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l17, !tbaa !21
  br label %bb7
bb4:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/diag:Taken", ptr %t15, i32 0, i32 1
  %t19 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3anote_3e_2eLen_3ccompiler_2fdiag_3anote_3e(ptr %v0, ptr %t17)
  store i64 %t19, ptr %l20
  br label %bb5
bb5:
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t22 = getelementptr %"compiler/diag:Taken", ptr %t20, i32 0, i32 1
  %t24 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3anote_3e_2eLen_3ccompiler_2fdiag_3anote_3e(ptr %v1, ptr %t22)
  store i64 %t24, ptr %l23
  br label %bb6
bb6:
  %t25 = load i64, ptr %l20, !tbaa !24
  %t26 = load i64, ptr %l23, !tbaa !24
  %t27 = icmp ne i64 %t25, %t26
  store i1 %t27, ptr %l17, !tbaa !21
  br label %bb7
bb7:
  %t29 = load i1, ptr %l17, !tbaa !21
  br i1 %t29, label %bb8, label %bb9
bb8:
  store i1 false, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  store i64 0, ptr %l2, !tbaa !24
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/diag:Taken", ptr %t31, i32 0, i32 0
  %t35 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2eLen_3ccompiler_2fdiag_3arecord_3e(ptr %v0, ptr %t33)
  store i64 %t35, ptr %l28
  br label %bb11
bb11:
  %t36 = load i64, ptr %l28, !tbaa !24
  store i64 %t36, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t37 = load i64, ptr %l3, !tbaa !24
  %t38 = load i64, ptr %l2, !tbaa !24
  %t41 = icmp sgt i64 %t37, %t38
  br i1 %t41, label %bb12, label %bb13
bb12:
  %t43 = load i64, ptr %l4, !tbaa !24
  %t45 = icmp sgt i64 %t43, 0
  br i1 %t45, label %bb14, label %bb15
bb13:
  store i64 0, ptr %l32, !tbaa !24
  br label %bb17
bb14:
  %t47 = load i64, ptr %l3, !tbaa !24
  %t48 = load i64, ptr %l2, !tbaa !24
  %t51 = sub i64 %t47, %t48
  %t52 = load i64, ptr %l4, !tbaa !24
  %t55 = add i64 %t51, %t52
  %t57 = sub i64 %t55, 1
  %t58 = load i64, ptr %l4, !tbaa !24
  %t61 = sdiv i64 %t57, %t58
  store i64 %t61, ptr %l35, !tbaa !24
  br label %bb16
bb15:
  store i64 0, ptr %l35, !tbaa !24
  br label %bb16
bb16:
  %t63 = load i64, ptr %l35, !tbaa !24
  store i64 %t63, ptr %l32, !tbaa !24
  br label %bb17
bb17:
  %t64 = load i64, ptr %l32, !tbaa !24
  store i64 %t64, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb18
bb18:
  %t65 = load i64, ptr %l6, !tbaa !24
  %t66 = load i64, ptr %l5, !tbaa !24
  %t69 = icmp slt i64 %t65, %t66
  %t71 = xor i1 %t69, true
  br i1 %t71, label %bb19, label %bb20
bb19:
  br label %bb37
bb20:
  br label %bb21
bb21:
  %t73 = load i64, ptr %l2, !tbaa !24
  %t74 = load i64, ptr %l6, !tbaa !24
  %t75 = load i64, ptr %l4, !tbaa !24
  %t78 = mul i64 %t74, %t75
  %t81 = add i64 %t73, %t78
  store i64 %t81, ptr %l7, !tbaa !24
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/diag:Taken", ptr %t83, i32 0, i32 0
  %t86 = load i64, ptr %l7, !tbaa !24
  %t89 = call %"compiler/diag:record" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2eAt_3ccompiler_2fdiag_3arecord_3e(ptr %v0, ptr %v0, ptr %t85, i64 %t86)
  store %"compiler/diag:record" %t89, ptr %l56
  br label %bb22
bb22:
  %t90 = load %"compiler/diag:record", ptr %l56
  store %"compiler/diag:record" %t90, ptr %l8
  %t91 = load ptr, ptr %l1, !tbaa !29
  %t93 = getelementptr %"compiler/diag:Taken", ptr %t91, i32 0, i32 0
  %t94 = load i64, ptr %l7, !tbaa !24
  %t97 = call %"compiler/diag:record" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2eAt_3ccompiler_2fdiag_3arecord_3e(ptr %v1, ptr %v1, ptr %t93, i64 %t94)
  store %"compiler/diag:record" %t97, ptr %l60
  br label %bb23
bb23:
  %t98 = load %"compiler/diag:record", ptr %l60
  store %"compiler/diag:record" %t98, ptr %l9
  %t99 = getelementptr %"compiler/diag:record", ptr %l8, i32 0, i32 1
  %t100 = load { i64, ptr }, ptr %t99, !tbaa !27
  %t101 = getelementptr %"compiler/diag:record", ptr %l9, i32 0, i32 1
  %t102 = load { i64, ptr }, ptr %t101, !tbaa !27
  %t105 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %t100, { i64, ptr } %t102)
  store i1 %t105, ptr %l63
  br label %bb24
bb24:
  %t106 = load i1, ptr %l63, !tbaa !21
  %t107 = xor i1 %t106, true
  br i1 %t107, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l65, !tbaa !21
  br label %bb28
bb26:
  %t109 = getelementptr %"compiler/diag:record", ptr %l8, i32 0, i32 2
  %t110 = load { i64, ptr }, ptr %t109, !tbaa !27
  %t111 = getelementptr %"compiler/diag:record", ptr %l9, i32 0, i32 2
  %t112 = load { i64, ptr }, ptr %t111, !tbaa !27
  %t115 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %t110, { i64, ptr } %t112)
  store i1 %t115, ptr %l68
  br label %bb27
bb27:
  %t116 = load i1, ptr %l68, !tbaa !21
  %t117 = xor i1 %t116, true
  store i1 %t117, ptr %l65, !tbaa !21
  br label %bb28
bb28:
  %t119 = load i1, ptr %l65, !tbaa !21
  br i1 %t119, label %bb29, label %bb30
bb29:
  store i1 true, ptr %l70, !tbaa !21
  br label %bb32
bb30:
  %t120 = getelementptr %"compiler/diag:record", ptr %l8, i32 0, i32 0
  %t121 = load { i64, [3 x i64] }, ptr %t120
  store { i64, [3 x i64] } %t121, ptr %l71
  %t122 = getelementptr %"compiler/diag:record", ptr %l9, i32 0, i32 0
  %t123 = load { i64, [3 x i64] }, ptr %t122
  store { i64, [3 x i64] } %t123, ptr %l73
  %t126 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fdiag_3aWhere(ptr %l71, ptr %l73)
  store i1 %t126, ptr %l75
  br label %bb31
bb31:
  %t127 = load i1, ptr %l75, !tbaa !21
  %t128 = xor i1 %t127, true
  store i1 %t128, ptr %l70, !tbaa !21
  br label %bb32
bb32:
  %t130 = load i1, ptr %l70, !tbaa !21
  br i1 %t130, label %bb33, label %bb34
bb33:
  store i1 false, ptr %rv
  br label %ret
bb34:
  br label %bb35
bb35:
  br label %bb36
bb36:
  %t132 = load i64, ptr %l6, !tbaa !24
  %t134 = add i64 %t132, 1
  store i64 %t134, ptr %l6, !tbaa !24
  br label %bb18
bb37:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fdiag_2econtinues(i8 %a0) #0 {
entry:
  %l0 = alloca i8
  %l4 = alloca i1
  %rv = alloca i1
  store i8 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i8, ptr %l0, !tbaa !22
  %t4 = icmp uge i8 %t1, -128
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = load i8, ptr %l0, !tbaa !22
  %t9 = icmp ult i8 %t6, -64
  store i1 %t9, ptr %l4, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l4, !tbaa !21
  store i1 %t11, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fdiag_2eisScopeRule(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l4 = alloca i1
  %l5 = alloca { i64, ptr }
  %l8 = alloca i1
  %l9 = alloca { i64, ptr }
  %l11 = alloca i1
  %l14 = alloca i1
  %l15 = alloca i1
  %l17 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp sge i64 %t3, 2
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t7, ptr %l5, !tbaa !27
  %t8 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !27
  %t10 = getelementptr i8, ptr %t9, i64 0
  %t11 = load i8, ptr %t10, !tbaa !32
  %t13 = icmp eq i8 %t11, 79
  store i1 %t13, ptr %l4, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb3
bb3:
  %t15 = load i1, ptr %l4, !tbaa !21
  br i1 %t15, label %bb4, label %bb5
bb4:
  %t16 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t16, ptr %l9, !tbaa !27
  %t17 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !27
  %t19 = getelementptr i8, ptr %t18, i64 1
  %t20 = load i8, ptr %t19, !tbaa !32
  %t22 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t20)
  store i1 %t22, ptr %l11
  br label %bb6
bb5:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb7
bb6:
  %t23 = load i1, ptr %l11, !tbaa !21
  store i1 %t23, ptr %l8, !tbaa !21
  br label %bb7
bb7:
  %t24 = load i1, ptr %l8, !tbaa !21
  br i1 %t24, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t26 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t28 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t26, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d80, i32 0, i32 1) })
  store i1 %t28, ptr %l14
  br label %bb11
bb11:
  %t29 = load i1, ptr %l14, !tbaa !21
  br i1 %t29, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb15
bb13:
  %t30 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t32 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t30, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d81, i32 0, i32 1) })
  store i1 %t32, ptr %l17
  br label %bb14
bb14:
  %t33 = load i1, ptr %l17, !tbaa !21
  store i1 %t33, ptr %l15, !tbaa !21
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s0)
  %t34 = load i1, ptr %l15, !tbaa !21
  store i1 %t34, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i8 @compiler_2fdiag_2eprintable(i8 %a0) #0 {
entry:
  %l0 = alloca i8
  %l7 = alloca i1
  %rv = alloca i8
  store i8 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i8, ptr %l0, !tbaa !22
  %t3 = icmp eq i8 %t1, 9
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i8, ptr %l0, !tbaa !22
  store i8 %t5, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load i8, ptr %l0, !tbaa !22
  %t10 = icmp ult i8 %t7, 32
  br i1 %t10, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb6
bb5:
  %t12 = load i8, ptr %l0, !tbaa !22
  %t15 = icmp eq i8 %t12, 127
  store i1 %t15, ptr %l7, !tbaa !21
  br label %bb6
bb6:
  %t17 = load i1, ptr %l7, !tbaa !21
  br i1 %t17, label %bb7, label %bb8
bb7:
  store i8 63, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t19 = load i8, ptr %l0, !tbaa !22
  store i8 %t19, ptr %rv
  br label %ret
ret:
  %rr = load i8, ptr %rv
  ret i8 %rr
}

define dso_local { i64, ptr } @compiler_2fdiag_2eruleIdAt(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l4 = alloca i1
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l15 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca i64
  %l27 = alloca i1
  %l29 = alloca i1
  %l31 = alloca i1
  %l32 = alloca { i64, ptr }
  %l34 = alloca i1
  %l36 = alloca i1
  %l37 = alloca { i64, ptr }
  %l39 = alloca i1
  %l41 = alloca { i64, ptr }
  %l42 = alloca i64
  %l51 = alloca i1
  %l52 = alloca { i64, ptr }
  %l55 = alloca i1
  %l63 = alloca i1
  %l64 = alloca { i64, ptr }
  %l67 = alloca i1
  %l71 = alloca { i64, ptr }
  %l72 = alloca i64
  %l75 = alloca i64
  %l76 = alloca i64
  %l81 = alloca i1
  %l83 = alloca i1
  %l84 = alloca { i64, ptr }
  %l85 = alloca i64
  %l88 = alloca i64
  %l89 = alloca i64
  %l94 = alloca i1
  %l96 = alloca { i64, ptr }
  %l97 = alloca i64
  %l102 = alloca { i64, ptr }
  %l103 = alloca i64
  %l104 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d82, i32 0, i32 1) })
  store i1 %t3, ptr %l4
  br label %bb1
bb1:
  %t4 = load i1, ptr %l4, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  %t5 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t5, ptr %l6, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t6, 0
  store i64 %t9, ptr %l9, !tbaa !24
  %t10 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t10, 0
  store i64 %t11, ptr %l10, !tbaa !24
  %t12 = icmp sge i64 2, 0
  br i1 %t12, label %bb4, label %bb5
bb3:
  %t14 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t14, ptr %l15, !tbaa !27
  %t15 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t15, 0
  store i64 %t18, ptr %l18, !tbaa !24
  %t19 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t20 = extractvalue { i64, ptr } %t19, 0
  store i64 %t20, ptr %l19, !tbaa !24
  %t21 = icmp sge i64 0, 0
  br i1 %t21, label %bb10, label %bb11
bb4:
  %t23 = load i64, ptr %l9, !tbaa !24
  %t24 = icmp sle i64 2, %t23
  br i1 %t24, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_122ae7ff15fe68f_4bf017428e5c5a9b)
  unreachable
bb6:
  %t26 = load i64, ptr %l9, !tbaa !24
  %t27 = load i64, ptr %l10, !tbaa !24
  %t28 = icmp sle i64 %t26, %t27
  br i1 %t28, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_122ae7ff15fe68f_4bf017428e5c5a9b)
  unreachable
bb8:
  %t30 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !27
  %t32 = load i64, ptr %l9, !tbaa !24
  %t33 = getelementptr i8, ptr %t31, i64 2
  %t34 = sub i64 %t32, 2
  %t35 = insertvalue { i64, ptr } undef, i64 %t34, 0
  %t36 = insertvalue { i64, ptr } %t35, ptr %t33, 1
  store { i64, ptr } %t36, ptr %l5, !tbaa !27
  br label %bb16
bb9:
  call void @__olang_check_failed(ptr @olang_loc_122ae7ff15fe68f_4bf017428e5c5a9b)
  unreachable
bb10:
  %t38 = load i64, ptr %l18, !tbaa !24
  %t39 = icmp sle i64 0, %t38
  br i1 %t39, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_122ae7ff15fe68f_4bf017428e5c5a9b)
  unreachable
bb12:
  %t41 = load i64, ptr %l18, !tbaa !24
  %t42 = load i64, ptr %l19, !tbaa !24
  %t43 = icmp sle i64 %t41, %t42
  br i1 %t43, label %bb14, label %bb15
bb13:
  call void @__olang_check_failed(ptr @olang_loc_122ae7ff15fe68f_4bf017428e5c5a9b)
  unreachable
bb14:
  %t45 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !27
  %t47 = load i64, ptr %l18, !tbaa !24
  %t48 = getelementptr i8, ptr %t46, i64 0
  %t49 = sub i64 %t47, 0
  %t50 = insertvalue { i64, ptr } undef, i64 %t49, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr %t48, 1
  store { i64, ptr } %t51, ptr %l5, !tbaa !27
  br label %bb16
bb15:
  call void @__olang_check_failed(ptr @olang_loc_122ae7ff15fe68f_4bf017428e5c5a9b)
  unreachable
bb16:
  %t53 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t53, ptr %l1, !tbaa !27
  %t54 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t56 = extractvalue { i64, ptr } %t54, 0
  %t58 = icmp slt i64 %t56, 4
  br i1 %t58, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb20
bb18:
  %t60 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t62 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t60, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d83, i32 0, i32 1) })
  store i1 %t62, ptr %l29
  br label %bb19
bb19:
  %t63 = load i1, ptr %l29, !tbaa !21
  %t64 = xor i1 %t63, true
  store i1 %t64, ptr %l27, !tbaa !21
  br label %bb20
bb20:
  %t66 = load i1, ptr %l27, !tbaa !21
  br i1 %t66, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l31, !tbaa !21
  br label %bb24
bb22:
  %t67 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t67, ptr %l32, !tbaa !27
  %t68 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !27
  %t70 = getelementptr i8, ptr %t69, i64 2
  %t71 = load i8, ptr %t70, !tbaa !32
  %t73 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %t71)
  store i1 %t73, ptr %l34
  br label %bb23
bb23:
  %t74 = load i1, ptr %l34, !tbaa !21
  %t75 = xor i1 %t74, true
  store i1 %t75, ptr %l31, !tbaa !21
  br label %bb24
bb24:
  %t77 = load i1, ptr %l31, !tbaa !21
  br i1 %t77, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l36, !tbaa !21
  br label %bb28
bb26:
  %t78 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t78, ptr %l37, !tbaa !27
  %t79 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !27
  %t81 = getelementptr i8, ptr %t80, i64 3
  %t82 = load i8, ptr %t81, !tbaa !32
  %t84 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t82)
  store i1 %t84, ptr %l39
  br label %bb27
bb27:
  %t85 = load i1, ptr %l39, !tbaa !21
  %t86 = xor i1 %t85, true
  store i1 %t86, ptr %l36, !tbaa !21
  br label %bb28
bb28:
  %t88 = load i1, ptr %l36, !tbaa !21
  br i1 %t88, label %bb29, label %bb30
bb29:
  %t89 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t89, ptr %l41, !tbaa !27
  %t90 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t91 = extractvalue { i64, ptr } %t90, 0
  store i64 %t91, ptr %l42, !tbaa !24
  %t92 = icmp sge i64 0, 0
  br i1 %t92, label %bb31, label %bb32
bb30:
  br label %bb37
bb31:
  %t94 = icmp sle i64 0, 0
  br i1 %t94, label %bb33, label %bb34
bb32:
  call void @__olang_check_failed(ptr @olang_loc_f601f9616f628c92_63c657ce4b964a9e)
  unreachable
bb33:
  %t96 = load i64, ptr %l42, !tbaa !24
  %t97 = icmp sle i64 0, %t96
  br i1 %t97, label %bb35, label %bb36
bb34:
  call void @__olang_check_failed(ptr @olang_loc_f601f9616f628c92_63c657ce4b964a9e)
  unreachable
bb35:
  %t99 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !27
  %t101 = getelementptr i8, ptr %t100, i64 0
  %t102 = sub i64 0, 0
  %t103 = insertvalue { i64, ptr } undef, i64 %t102, 0
  %t104 = insertvalue { i64, ptr } %t103, ptr %t101, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t104, ptr %rv
  br label %ret
bb36:
  call void @__olang_check_failed(ptr @olang_loc_f601f9616f628c92_63c657ce4b964a9e)
  unreachable
bb37:
  store i64 3, ptr %l2, !tbaa !24
  br label %bb38
bb38:
  %t106 = load i64, ptr %l2, !tbaa !24
  %t107 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t109 = extractvalue { i64, ptr } %t107, 0
  %t112 = icmp slt i64 %t106, %t109
  br i1 %t112, label %bb39, label %bb40
bb39:
  %t114 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t114, ptr %l52, !tbaa !27
  %t115 = load i64, ptr %l2, !tbaa !24
  %t117 = getelementptr { i64, ptr }, ptr %l52, i32 0, i32 1
  %t118 = load ptr, ptr %t117, !tbaa !27
  %t119 = getelementptr i8, ptr %t118, i64 %t115
  %t120 = load i8, ptr %t119, !tbaa !32
  %t122 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t120)
  store i1 %t122, ptr %l55
  br label %bb41
bb40:
  store i1 false, ptr %l51, !tbaa !21
  br label %bb42
bb41:
  %t123 = load i1, ptr %l55, !tbaa !21
  store i1 %t123, ptr %l51, !tbaa !21
  br label %bb42
bb42:
  %t124 = load i1, ptr %l51, !tbaa !21
  %t125 = xor i1 %t124, true
  br i1 %t125, label %bb43, label %bb44
bb43:
  br label %bb47
bb44:
  br label %bb45
bb45:
  %t127 = load i64, ptr %l2, !tbaa !24
  %t129 = add i64 %t127, 1
  store i64 %t129, ptr %l2, !tbaa !24
  br label %bb46
bb46:
  br label %bb38
bb47:
  br label %bb48
bb48:
  %t131 = load i64, ptr %l2, !tbaa !24
  %t132 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t134 = extractvalue { i64, ptr } %t132, 0
  %t137 = icmp slt i64 %t131, %t134
  br i1 %t137, label %bb49, label %bb50
bb49:
  %t139 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t139, ptr %l64, !tbaa !27
  %t140 = load i64, ptr %l2, !tbaa !24
  %t142 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t143 = load ptr, ptr %t142, !tbaa !27
  %t144 = getelementptr i8, ptr %t143, i64 %t140
  %t145 = load i8, ptr %t144, !tbaa !32
  %t147 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLower(i8 %t145)
  store i1 %t147, ptr %l67
  br label %bb51
bb50:
  store i1 false, ptr %l63, !tbaa !21
  br label %bb52
bb51:
  %t148 = load i1, ptr %l67, !tbaa !21
  store i1 %t148, ptr %l63, !tbaa !21
  br label %bb52
bb52:
  %t149 = load i1, ptr %l63, !tbaa !21
  %t150 = xor i1 %t149, true
  br i1 %t150, label %bb53, label %bb54
bb53:
  br label %bb57
bb54:
  br label %bb55
bb55:
  %t152 = load i64, ptr %l2, !tbaa !24
  %t154 = add i64 %t152, 1
  store i64 %t154, ptr %l2, !tbaa !24
  br label %bb56
bb56:
  br label %bb48
bb57:
  %t156 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t156, ptr %l71, !tbaa !27
  %t157 = load i64, ptr %l2, !tbaa !24
  store i64 %t157, ptr %l72, !tbaa !24
  %t158 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t161 = extractvalue { i64, ptr } %t158, 0
  store i64 %t161, ptr %l75, !tbaa !24
  %t162 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t163 = extractvalue { i64, ptr } %t162, 0
  store i64 %t163, ptr %l76, !tbaa !24
  %t164 = load i64, ptr %l72, !tbaa !24
  %t165 = icmp sge i64 %t164, 0
  br i1 %t165, label %bb58, label %bb59
bb58:
  %t167 = load i64, ptr %l72, !tbaa !24
  %t168 = load i64, ptr %l75, !tbaa !24
  %t169 = icmp sle i64 %t167, %t168
  br i1 %t169, label %bb60, label %bb61
bb59:
  call void @__olang_check_failed(ptr @olang_loc_34cb3e047b5a9691_df78e9c71a0d19fd)
  unreachable
bb60:
  %t171 = load i64, ptr %l75, !tbaa !24
  %t172 = load i64, ptr %l76, !tbaa !24
  %t173 = icmp sle i64 %t171, %t172
  br i1 %t173, label %bb62, label %bb63
bb61:
  call void @__olang_check_failed(ptr @olang_loc_34cb3e047b5a9691_df78e9c71a0d19fd)
  unreachable
bb62:
  %t175 = getelementptr { i64, ptr }, ptr %l71, i32 0, i32 1
  %t176 = load ptr, ptr %t175, !tbaa !27
  %t177 = load i64, ptr %l72, !tbaa !24
  %t178 = load i64, ptr %l75, !tbaa !24
  %t179 = getelementptr i8, ptr %t176, i64 %t177
  %t180 = sub i64 %t178, %t177
  %t181 = insertvalue { i64, ptr } undef, i64 %t180, 0
  %t182 = insertvalue { i64, ptr } %t181, ptr %t179, 1
  %t184 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t182, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d84, i32 0, i32 1) })
  store i1 %t184, ptr %l81
  br label %bb64
bb63:
  call void @__olang_check_failed(ptr @olang_loc_34cb3e047b5a9691_df78e9c71a0d19fd)
  unreachable
bb64:
  %t185 = load i1, ptr %l81, !tbaa !21
  %t186 = xor i1 %t185, true
  br i1 %t186, label %bb65, label %bb66
bb65:
  %t188 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t188, ptr %l84, !tbaa !27
  %t189 = load i64, ptr %l2, !tbaa !24
  store i64 %t189, ptr %l85, !tbaa !24
  %t190 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t193 = extractvalue { i64, ptr } %t190, 0
  store i64 %t193, ptr %l88, !tbaa !24
  %t194 = load { i64, ptr }, ptr %l84, !tbaa !27
  %t195 = extractvalue { i64, ptr } %t194, 0
  store i64 %t195, ptr %l89, !tbaa !24
  %t196 = load i64, ptr %l85, !tbaa !24
  %t197 = icmp sge i64 %t196, 0
  br i1 %t197, label %bb67, label %bb68
bb66:
  store i1 false, ptr %l83, !tbaa !21
  br label %bb74
bb67:
  %t199 = load i64, ptr %l85, !tbaa !24
  %t200 = load i64, ptr %l88, !tbaa !24
  %t201 = icmp sle i64 %t199, %t200
  br i1 %t201, label %bb69, label %bb70
bb68:
  call void @__olang_check_failed(ptr @olang_loc_34cb3e047b5a9691_df78e9c71a0d19fd)
  unreachable
bb69:
  %t203 = load i64, ptr %l88, !tbaa !24
  %t204 = load i64, ptr %l89, !tbaa !24
  %t205 = icmp sle i64 %t203, %t204
  br i1 %t205, label %bb71, label %bb72
bb70:
  call void @__olang_check_failed(ptr @olang_loc_34cb3e047b5a9691_df78e9c71a0d19fd)
  unreachable
bb71:
  %t207 = getelementptr { i64, ptr }, ptr %l84, i32 0, i32 1
  %t208 = load ptr, ptr %t207, !tbaa !27
  %t209 = load i64, ptr %l85, !tbaa !24
  %t210 = load i64, ptr %l88, !tbaa !24
  %t211 = getelementptr i8, ptr %t208, i64 %t209
  %t212 = sub i64 %t210, %t209
  %t213 = insertvalue { i64, ptr } undef, i64 %t212, 0
  %t214 = insertvalue { i64, ptr } %t213, ptr %t211, 1
  %t216 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t214, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d85, i32 0, i32 1) })
  store i1 %t216, ptr %l94
  br label %bb73
bb72:
  call void @__olang_check_failed(ptr @olang_loc_34cb3e047b5a9691_df78e9c71a0d19fd)
  unreachable
bb73:
  %t217 = load i1, ptr %l94, !tbaa !21
  %t218 = xor i1 %t217, true
  store i1 %t218, ptr %l83, !tbaa !21
  br label %bb74
bb74:
  %t220 = load i1, ptr %l83, !tbaa !21
  br i1 %t220, label %bb75, label %bb76
bb75:
  %t221 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t221, ptr %l96, !tbaa !27
  %t222 = load { i64, ptr }, ptr %l96, !tbaa !27
  %t223 = extractvalue { i64, ptr } %t222, 0
  store i64 %t223, ptr %l97, !tbaa !24
  %t224 = icmp sge i64 0, 0
  br i1 %t224, label %bb77, label %bb78
bb76:
  br label %bb83
bb77:
  %t226 = icmp sle i64 0, 0
  br i1 %t226, label %bb79, label %bb80
bb78:
  call void @__olang_check_failed(ptr @olang_loc_34cb3e047b5a9691_df78e9c71a0d19fd)
  unreachable
bb79:
  %t228 = load i64, ptr %l97, !tbaa !24
  %t229 = icmp sle i64 0, %t228
  br i1 %t229, label %bb81, label %bb82
bb80:
  call void @__olang_check_failed(ptr @olang_loc_34cb3e047b5a9691_df78e9c71a0d19fd)
  unreachable
bb81:
  %t231 = getelementptr { i64, ptr }, ptr %l96, i32 0, i32 1
  %t232 = load ptr, ptr %t231, !tbaa !27
  %t233 = getelementptr i8, ptr %t232, i64 0
  %t234 = sub i64 0, 0
  %t235 = insertvalue { i64, ptr } undef, i64 %t234, 0
  %t236 = insertvalue { i64, ptr } %t235, ptr %t233, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t236, ptr %rv
  br label %ret
bb82:
  call void @__olang_check_failed(ptr @olang_loc_34cb3e047b5a9691_df78e9c71a0d19fd)
  unreachable
bb83:
  %t238 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t238, ptr %l102, !tbaa !27
  %t239 = load i64, ptr %l2, !tbaa !24
  store i64 %t239, ptr %l103, !tbaa !24
  %t240 = load { i64, ptr }, ptr %l102, !tbaa !27
  %t241 = extractvalue { i64, ptr } %t240, 0
  store i64 %t241, ptr %l104, !tbaa !24
  %t242 = icmp sge i64 2, 0
  br i1 %t242, label %bb84, label %bb85
bb84:
  %t244 = load i64, ptr %l103, !tbaa !24
  %t245 = icmp sle i64 2, %t244
  br i1 %t245, label %bb86, label %bb87
bb85:
  call void @__olang_check_failed(ptr @olang_loc_44be31be33a055a4_da5ef357ed133fa0)
  unreachable
bb86:
  %t247 = load i64, ptr %l103, !tbaa !24
  %t248 = load i64, ptr %l104, !tbaa !24
  %t249 = icmp sle i64 %t247, %t248
  br i1 %t249, label %bb88, label %bb89
bb87:
  call void @__olang_check_failed(ptr @olang_loc_44be31be33a055a4_da5ef357ed133fa0)
  unreachable
bb88:
  %t251 = getelementptr { i64, ptr }, ptr %l102, i32 0, i32 1
  %t252 = load ptr, ptr %t251, !tbaa !27
  %t253 = load i64, ptr %l103, !tbaa !24
  %t254 = getelementptr i8, ptr %t252, i64 2
  %t255 = sub i64 %t253, 2
  %t256 = insertvalue { i64, ptr } undef, i64 %t255, 0
  %t257 = insertvalue { i64, ptr } %t256, ptr %t254, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t257, ptr %rv
  br label %ret
bb89:
  call void @__olang_check_failed(ptr @olang_loc_44be31be33a055a4_da5ef357ed133fa0)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fdiag_2esection(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/text:StringBuilder"
  %l1 = alloca %"std/prelude/text:StringBuilder"
  %l5 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l1
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l1
  store %"std/prelude/text:StringBuilder" %t2, ptr %l0
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l0, i8 -62)
  br label %bb2
bb2:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l0, i8 -89)
  br label %bb3
bb3:
  %t6 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v0, ptr %l0)
  store { i64, ptr } %t6, ptr %l5
  br label %bb4
bb4:
  call void @__olang_scope_close(ptr %s0)
  %t7 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t7, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fdiag_2etermAllowsColor() #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i32
  %l8 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %s0, ptr %s0, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d86, i32 0, i32 1) })
  %t2 = extractvalue { i32, { i64, ptr } } %t1, 1
  %t3 = extractvalue { i32, { i64, ptr } } %t1, 0
  store i32 %t3, ptr %l3
  %t4 = icmp ne i32 %t3, 0
  br i1 %t4, label %bb2, label %ok.5, !prof !99
ok.5:
  store { i64, ptr } %t2, ptr %l2
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t6, ptr %l1, !tbaa !27
  br label %bb6
bb2:
  %t7 = load i32, ptr %l3, !tbaa !23
  %t8 = ashr i32 %t7, 16
  %t10 = icmp eq i32 %t8, 1
  br i1 %t10, label %bb3, label %bb4
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
  %t13 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t16 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t13, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d87, i32 0, i32 1) })
  store i1 %t16, ptr %l8
  br label %bb7
bb7:
  %t17 = load i1, ptr %l8, !tbaa !21
  %t18 = xor i1 %t17, true
  call void @__olang_scope_close(ptr %s0)
  store i1 %t18, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fdiag_3aDiagnostics_2ector(ptr %out, ptr %v0, i1 %a0) #0 {
entry:
  %l1 = alloca i1
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca i64
  %l15 = alloca i1
  %l16 = alloca i1
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca { i64, [3 x i64] }
  %l20 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l24 = alloca i1
  %l25 = alloca i1
  %l26 = alloca i1
  %l27 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l28 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l29 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l32 = alloca i64
  %l34 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l36 = alloca i64
  %l38 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l40 = alloca i64
  %l42 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l44 = alloca i64
  %l46 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l48 = alloca i64
  %l50 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l52 = alloca i64
  %l54 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l56 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l57 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l58 = alloca i64
  %l60 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l62 = alloca i64
  %l64 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l66 = alloca i64
  %l68 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l70 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l71 = alloca i64
  %l73 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l75 = alloca i64
  %l77 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l80 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l81 = alloca i64
  %l83 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l85 = alloca i64
  %l87 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l89 = alloca i64
  %l91 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l93 = alloca %"compiler/diag:Diagnostics"
  %t240 = alloca { i64, [3 x i64] }, align 8
  br label %start
start:
  br label %bb0
bb0:
  store i1 %a0, ptr %l1, !tbaa !21
  %t3 = ptrtoint ptr %v0 to i64
  store i64 %t3, ptr %l32, !tbaa !24
  %t4 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e1
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = call ptr @__olang_region_make(ptr %v0)
  %t7 = ptrtoint ptr %t6 to i64
  store i64 %t7, ptr %l32, !tbaa !24
  br label %bb2
bb2:
  %t8 = load i64, ptr %l32
  %t9 = inttoptr i64 %t8 to ptr
  %t10 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t9, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %l34
  br label %bb3
bb3:
  %t11 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e1
  br i1 %t11, label %bb4, label %bb5
bb4:
  %t13 = load i64, ptr %l32
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l34, i32 0, i32 0
  %t16 = load { i64, ptr }, ptr %t15
  %t17 = extractvalue { i64, ptr } %t16, 1
  %t18 = call ptr @__olang_region_or(ptr %t17, ptr null)
  %t19 = call ptr @__olang_region_home(ptr %t18)
  %t20 = icmp ne ptr %t19, null
  %t21 = select i1 %t20, ptr %t19, ptr null
  %t22 = icmp eq ptr %t21, %t14
  call void @__olang_region_settle(ptr %t14, i1 %t22)
  br label %bb5
bb5:
  %t23 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l34
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t23, ptr %l2
  %t24 = ptrtoint ptr %v0 to i64
  store i64 %t24, ptr %l36, !tbaa !24
  %t25 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e2
  br i1 %t25, label %bb6, label %bb7
bb6:
  %t27 = call ptr @__olang_region_make(ptr %v0)
  %t28 = ptrtoint ptr %t27 to i64
  store i64 %t28, ptr %l36, !tbaa !24
  br label %bb7
bb7:
  %t29 = load i64, ptr %l36
  %t30 = inttoptr i64 %t29 to ptr
  %t31 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t30, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t31, ptr %l38
  br label %bb8
bb8:
  %t32 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e2
  br i1 %t32, label %bb9, label %bb10
bb9:
  %t34 = load i64, ptr %l36
  %t35 = inttoptr i64 %t34 to ptr
  %t36 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l38, i32 0, i32 0
  %t37 = load { i64, ptr }, ptr %t36
  %t38 = extractvalue { i64, ptr } %t37, 1
  %t39 = call ptr @__olang_region_or(ptr %t38, ptr null)
  %t40 = call ptr @__olang_region_home(ptr %t39)
  %t41 = icmp ne ptr %t40, null
  %t42 = select i1 %t41, ptr %t40, ptr null
  %t43 = icmp eq ptr %t42, %t35
  call void @__olang_region_settle(ptr %t35, i1 %t43)
  br label %bb10
bb10:
  %t44 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l38
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t44, ptr %l3
  %t45 = ptrtoint ptr %v0 to i64
  store i64 %t45, ptr %l40, !tbaa !24
  %t46 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e3
  br i1 %t46, label %bb11, label %bb12
bb11:
  %t48 = call ptr @__olang_region_make(ptr %v0)
  %t49 = ptrtoint ptr %t48 to i64
  store i64 %t49, ptr %l40, !tbaa !24
  br label %bb12
bb12:
  %t50 = load i64, ptr %l40
  %t51 = inttoptr i64 %t50 to ptr
  %t52 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t51, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t52, ptr %l42
  br label %bb13
bb13:
  %t53 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e3
  br i1 %t53, label %bb14, label %bb15
bb14:
  %t55 = load i64, ptr %l40
  %t56 = inttoptr i64 %t55 to ptr
  %t57 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l42, i32 0, i32 0
  %t58 = load { i64, ptr }, ptr %t57
  %t59 = extractvalue { i64, ptr } %t58, 1
  %t60 = call ptr @__olang_region_or(ptr %t59, ptr null)
  %t61 = call ptr @__olang_region_home(ptr %t60)
  %t62 = icmp ne ptr %t61, null
  %t63 = select i1 %t62, ptr %t61, ptr null
  %t64 = icmp eq ptr %t63, %t56
  call void @__olang_region_settle(ptr %t56, i1 %t64)
  br label %bb15
bb15:
  %t65 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l42
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t65, ptr %l4
  %t66 = ptrtoint ptr %v0 to i64
  store i64 %t66, ptr %l44, !tbaa !24
  %t67 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e4
  br i1 %t67, label %bb16, label %bb17
bb16:
  %t69 = call ptr @__olang_region_make(ptr %v0)
  %t70 = ptrtoint ptr %t69 to i64
  store i64 %t70, ptr %l44, !tbaa !24
  br label %bb17
bb17:
  %t71 = load i64, ptr %l44
  %t72 = inttoptr i64 %t71 to ptr
  %t73 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t72, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t73, ptr %l46
  br label %bb18
bb18:
  %t74 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e4
  br i1 %t74, label %bb19, label %bb20
bb19:
  %t76 = load i64, ptr %l44
  %t77 = inttoptr i64 %t76 to ptr
  %t78 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l46, i32 0, i32 0
  %t79 = load { i64, ptr }, ptr %t78
  %t80 = extractvalue { i64, ptr } %t79, 1
  %t81 = call ptr @__olang_region_or(ptr %t80, ptr null)
  %t82 = call ptr @__olang_region_home(ptr %t81)
  %t83 = icmp ne ptr %t82, null
  %t84 = select i1 %t83, ptr %t82, ptr null
  %t85 = icmp eq ptr %t84, %t77
  call void @__olang_region_settle(ptr %t77, i1 %t85)
  br label %bb20
bb20:
  %t86 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l46
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t86, ptr %l5
  %t87 = ptrtoint ptr %v0 to i64
  store i64 %t87, ptr %l48, !tbaa !24
  %t88 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e5
  br i1 %t88, label %bb21, label %bb22
bb21:
  %t90 = call ptr @__olang_region_make(ptr %v0)
  %t91 = ptrtoint ptr %t90 to i64
  store i64 %t91, ptr %l48, !tbaa !24
  br label %bb22
bb22:
  %t92 = load i64, ptr %l48
  %t93 = inttoptr i64 %t92 to ptr
  %t94 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t93, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t94, ptr %l50
  br label %bb23
bb23:
  %t95 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e5
  br i1 %t95, label %bb24, label %bb25
bb24:
  %t97 = load i64, ptr %l48
  %t98 = inttoptr i64 %t97 to ptr
  %t99 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l50, i32 0, i32 0
  %t100 = load { i64, ptr }, ptr %t99
  %t101 = extractvalue { i64, ptr } %t100, 1
  %t102 = call ptr @__olang_region_or(ptr %t101, ptr null)
  %t103 = call ptr @__olang_region_home(ptr %t102)
  %t104 = icmp ne ptr %t103, null
  %t105 = select i1 %t104, ptr %t103, ptr null
  %t106 = icmp eq ptr %t105, %t98
  call void @__olang_region_settle(ptr %t98, i1 %t106)
  br label %bb25
bb25:
  %t107 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l50
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t107, ptr %l6
  %t108 = ptrtoint ptr %v0 to i64
  store i64 %t108, ptr %l52, !tbaa !24
  %t109 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e6
  br i1 %t109, label %bb26, label %bb27
bb26:
  %t111 = call ptr @__olang_region_make(ptr %v0)
  %t112 = ptrtoint ptr %t111 to i64
  store i64 %t112, ptr %l52, !tbaa !24
  br label %bb27
bb27:
  %t113 = load i64, ptr %l52
  %t114 = inttoptr i64 %t113 to ptr
  %t115 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t114, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t115, ptr %l54
  br label %bb28
bb28:
  %t116 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e6
  br i1 %t116, label %bb29, label %bb30
bb29:
  %t118 = load i64, ptr %l52
  %t119 = inttoptr i64 %t118 to ptr
  %t120 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l54, i32 0, i32 0
  %t121 = load { i64, ptr }, ptr %t120
  %t122 = extractvalue { i64, ptr } %t121, 1
  %t123 = call ptr @__olang_region_or(ptr %t122, ptr null)
  %t124 = call ptr @__olang_region_home(ptr %t123)
  %t125 = icmp ne ptr %t124, null
  %t126 = select i1 %t125, ptr %t124, ptr null
  %t127 = icmp eq ptr %t126, %t119
  call void @__olang_region_settle(ptr %t119, i1 %t127)
  br label %bb30
bb30:
  %t128 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l54
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t128, ptr %l7
  %t129 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t129, ptr %l56
  br label %bb31
bb31:
  %t130 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l56
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t130, ptr %l8
  %t131 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3anote_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t131, ptr %l57
  br label %bb32
bb32:
  %t132 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l57
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t132, ptr %l9
  %t133 = ptrtoint ptr %v0 to i64
  store i64 %t133, ptr %l58, !tbaa !24
  %t134 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e9
  br i1 %t134, label %bb33, label %bb34
bb33:
  %t136 = call ptr @__olang_region_make(ptr %v0)
  %t137 = ptrtoint ptr %t136 to i64
  store i64 %t137, ptr %l58, !tbaa !24
  br label %bb34
bb34:
  %t138 = load i64, ptr %l58
  %t139 = inttoptr i64 %t138 to ptr
  %t140 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t139, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t140, ptr %l60
  br label %bb35
bb35:
  %t141 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e9
  br i1 %t141, label %bb36, label %bb37
bb36:
  %t143 = load i64, ptr %l58
  %t144 = inttoptr i64 %t143 to ptr
  %t145 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l60, i32 0, i32 0
  %t146 = load { i64, ptr }, ptr %t145
  %t147 = extractvalue { i64, ptr } %t146, 1
  %t148 = call ptr @__olang_region_or(ptr %t147, ptr null)
  %t149 = call ptr @__olang_region_home(ptr %t148)
  %t150 = icmp ne ptr %t149, null
  %t151 = select i1 %t150, ptr %t149, ptr null
  %t152 = icmp eq ptr %t151, %t144
  call void @__olang_region_settle(ptr %t144, i1 %t152)
  br label %bb37
bb37:
  %t153 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l60
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t153, ptr %l10
  %t154 = ptrtoint ptr %v0 to i64
  store i64 %t154, ptr %l62, !tbaa !24
  %t155 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e10
  br i1 %t155, label %bb38, label %bb39
bb38:
  %t157 = call ptr @__olang_region_make(ptr %v0)
  %t158 = ptrtoint ptr %t157 to i64
  store i64 %t158, ptr %l62, !tbaa !24
  br label %bb39
bb39:
  %t159 = load i64, ptr %l62
  %t160 = inttoptr i64 %t159 to ptr
  %t161 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t160, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t161, ptr %l64
  br label %bb40
bb40:
  %t162 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e10
  br i1 %t162, label %bb41, label %bb42
bb41:
  %t164 = load i64, ptr %l62
  %t165 = inttoptr i64 %t164 to ptr
  %t166 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l64, i32 0, i32 0
  %t167 = load { i64, ptr }, ptr %t166
  %t168 = extractvalue { i64, ptr } %t167, 1
  %t169 = call ptr @__olang_region_or(ptr %t168, ptr null)
  %t170 = call ptr @__olang_region_home(ptr %t169)
  %t171 = icmp ne ptr %t170, null
  %t172 = select i1 %t171, ptr %t170, ptr null
  %t173 = icmp eq ptr %t172, %t165
  call void @__olang_region_settle(ptr %t165, i1 %t173)
  br label %bb42
bb42:
  %t174 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l64
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t174, ptr %l11
  %t175 = ptrtoint ptr %v0 to i64
  store i64 %t175, ptr %l66, !tbaa !24
  %t176 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e11
  br i1 %t176, label %bb43, label %bb44
bb43:
  %t178 = call ptr @__olang_region_make(ptr %v0)
  %t179 = ptrtoint ptr %t178 to i64
  store i64 %t179, ptr %l66, !tbaa !24
  br label %bb44
bb44:
  %t180 = load i64, ptr %l66
  %t181 = inttoptr i64 %t180 to ptr
  %t182 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t181, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t182, ptr %l68
  br label %bb45
bb45:
  %t183 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e11
  br i1 %t183, label %bb46, label %bb47
bb46:
  %t185 = load i64, ptr %l66
  %t186 = inttoptr i64 %t185 to ptr
  %t187 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l68, i32 0, i32 0
  %t188 = load { i64, ptr }, ptr %t187
  %t189 = extractvalue { i64, ptr } %t188, 1
  %t190 = call ptr @__olang_region_or(ptr %t189, ptr null)
  %t191 = call ptr @__olang_region_home(ptr %t190)
  %t192 = icmp ne ptr %t191, null
  %t193 = select i1 %t192, ptr %t191, ptr null
  %t194 = icmp eq ptr %t193, %t186
  call void @__olang_region_settle(ptr %t186, i1 %t194)
  br label %bb47
bb47:
  %t195 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l68
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t195, ptr %l12
  %t196 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3acontext_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t196, ptr %l70
  br label %bb48
bb48:
  %t197 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l70
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t197, ptr %l13
  store i64 0, ptr %l14, !tbaa !24
  store i1 false, ptr %l15, !tbaa !21
  store i1 false, ptr %l16, !tbaa !21
  %t198 = ptrtoint ptr %v0 to i64
  store i64 %t198, ptr %l71, !tbaa !24
  %t199 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e16
  br i1 %t199, label %bb49, label %bb50
bb49:
  %t201 = call ptr @__olang_region_make(ptr %v0)
  %t202 = ptrtoint ptr %t201 to i64
  store i64 %t202, ptr %l71, !tbaa !24
  br label %bb50
bb50:
  %t203 = load i64, ptr %l71
  %t204 = inttoptr i64 %t203 to ptr
  %t205 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t204, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t205, ptr %l73
  br label %bb51
bb51:
  %t206 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e16
  br i1 %t206, label %bb52, label %bb53
bb52:
  %t208 = load i64, ptr %l71
  %t209 = inttoptr i64 %t208 to ptr
  %t210 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l73, i32 0, i32 0
  %t211 = load { i64, ptr }, ptr %t210
  %t212 = extractvalue { i64, ptr } %t211, 1
  %t213 = call ptr @__olang_region_or(ptr %t212, ptr null)
  %t214 = call ptr @__olang_region_home(ptr %t213)
  %t215 = icmp ne ptr %t214, null
  %t216 = select i1 %t215, ptr %t214, ptr null
  %t217 = icmp eq ptr %t216, %t209
  call void @__olang_region_settle(ptr %t209, i1 %t217)
  br label %bb53
bb53:
  %t218 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l73
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t218, ptr %l17
  %t219 = ptrtoint ptr %v0 to i64
  store i64 %t219, ptr %l75, !tbaa !24
  %t220 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e17
  br i1 %t220, label %bb54, label %bb55
bb54:
  %t222 = call ptr @__olang_region_make(ptr %v0)
  %t223 = ptrtoint ptr %t222 to i64
  store i64 %t223, ptr %l75, !tbaa !24
  br label %bb55
bb55:
  %t224 = load i64, ptr %l75
  %t225 = inttoptr i64 %t224 to ptr
  %t226 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t225, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t226, ptr %l77
  br label %bb56
bb56:
  %t227 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e17
  br i1 %t227, label %bb57, label %bb58
bb57:
  %t229 = load i64, ptr %l75
  %t230 = inttoptr i64 %t229 to ptr
  %t231 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l77, i32 0, i32 0
  %t232 = load { i64, ptr }, ptr %t231
  %t233 = extractvalue { i64, ptr } %t232, 1
  %t234 = call ptr @__olang_region_or(ptr %t233, ptr null)
  %t235 = call ptr @__olang_region_home(ptr %t234)
  %t236 = icmp ne ptr %t235, null
  %t237 = select i1 %t236, ptr %t235, ptr null
  %t238 = icmp eq ptr %t237, %t230
  call void @__olang_region_settle(ptr %t230, i1 %t238)
  br label %bb58
bb58:
  %t239 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l77
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t239, ptr %l18
  store { i64, [3 x i64] } zeroinitializer, ptr %t240
  %t241 = getelementptr { i64, [3 x i64] }, ptr %t240, i32 0, i32 0
  store i64 0, ptr %t241
  %t242 = load { i64, [3 x i64] }, ptr %t240
  store { i64, [3 x i64] } %t242, ptr %l19
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d88, i32 0, i32 1) }, ptr %l20, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d89, i32 0, i32 1) }, ptr %l21, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d90, i32 0, i32 1) }, ptr %l22, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d91, i32 0, i32 1) }, ptr %l23, !tbaa !27
  store i1 false, ptr %l24, !tbaa !21
  store i1 false, ptr %l25, !tbaa !21
  store i1 false, ptr %l26, !tbaa !21
  %t244 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t244, ptr %l80
  br label %bb59
bb59:
  %t245 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l80
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t245, ptr %l27
  %t246 = ptrtoint ptr %v0 to i64
  store i64 %t246, ptr %l81, !tbaa !24
  %t247 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e27
  br i1 %t247, label %bb60, label %bb61
bb60:
  %t249 = call ptr @__olang_region_make(ptr %v0)
  %t250 = ptrtoint ptr %t249 to i64
  store i64 %t250, ptr %l81, !tbaa !24
  br label %bb61
bb61:
  %t251 = load i64, ptr %l81
  %t252 = inttoptr i64 %t251 to ptr
  %t253 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t252, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t253, ptr %l83
  br label %bb62
bb62:
  %t254 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e27
  br i1 %t254, label %bb63, label %bb64
bb63:
  %t256 = load i64, ptr %l81
  %t257 = inttoptr i64 %t256 to ptr
  %t258 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l83, i32 0, i32 0
  %t259 = load { i64, ptr }, ptr %t258
  %t260 = extractvalue { i64, ptr } %t259, 1
  %t261 = call ptr @__olang_region_or(ptr %t260, ptr null)
  %t262 = call ptr @__olang_region_home(ptr %t261)
  %t263 = icmp ne ptr %t262, null
  %t264 = select i1 %t263, ptr %t262, ptr null
  %t265 = icmp eq ptr %t264, %t257
  call void @__olang_region_settle(ptr %t257, i1 %t265)
  br label %bb64
bb64:
  %t266 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l83
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t266, ptr %l28
  %t267 = ptrtoint ptr %v0 to i64
  store i64 %t267, ptr %l85, !tbaa !24
  %t268 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e28
  br i1 %t268, label %bb65, label %bb66
bb65:
  %t270 = call ptr @__olang_region_make(ptr %v0)
  %t271 = ptrtoint ptr %t270 to i64
  store i64 %t271, ptr %l85, !tbaa !24
  br label %bb66
bb66:
  %t272 = load i64, ptr %l85
  %t273 = inttoptr i64 %t272 to ptr
  %t274 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t273, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t274, ptr %l87
  br label %bb67
bb67:
  %t275 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e28
  br i1 %t275, label %bb68, label %bb69
bb68:
  %t277 = load i64, ptr %l85
  %t278 = inttoptr i64 %t277 to ptr
  %t279 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l87, i32 0, i32 0
  %t280 = load { i64, ptr }, ptr %t279
  %t281 = extractvalue { i64, ptr } %t280, 1
  %t282 = call ptr @__olang_region_or(ptr %t281, ptr null)
  %t283 = call ptr @__olang_region_home(ptr %t282)
  %t284 = icmp ne ptr %t283, null
  %t285 = select i1 %t284, ptr %t283, ptr null
  %t286 = icmp eq ptr %t285, %t278
  call void @__olang_region_settle(ptr %t278, i1 %t286)
  br label %bb69
bb69:
  %t287 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l87
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t287, ptr %l29
  %t288 = ptrtoint ptr %v0 to i64
  store i64 %t288, ptr %l89, !tbaa !24
  %t289 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e29
  br i1 %t289, label %bb70, label %bb71
bb70:
  %t291 = call ptr @__olang_region_make(ptr %v0)
  %t292 = ptrtoint ptr %t291 to i64
  store i64 %t292, ptr %l89, !tbaa !24
  br label %bb71
bb71:
  %t293 = load i64, ptr %l89
  %t294 = inttoptr i64 %t293 to ptr
  %t295 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t294, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t295, ptr %l91
  br label %bb72
bb72:
  %t296 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e29
  br i1 %t296, label %bb73, label %bb74
bb73:
  %t298 = load i64, ptr %l89
  %t299 = inttoptr i64 %t298 to ptr
  %t300 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l91, i32 0, i32 0
  %t301 = load { i64, ptr }, ptr %t300
  %t302 = extractvalue { i64, ptr } %t301, 1
  %t303 = call ptr @__olang_region_or(ptr %t302, ptr null)
  %t304 = call ptr @__olang_region_home(ptr %t303)
  %t305 = icmp ne ptr %t304, null
  %t306 = select i1 %t305, ptr %t304, ptr null
  %t307 = icmp eq ptr %t306, %t299
  call void @__olang_region_settle(ptr %t299, i1 %t307)
  br label %bb74
bb74:
  %t308 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l91
  %t309 = getelementptr %"compiler/diag:Diagnostics", ptr %l93, i32 0, i32 0
  %t310 = load i1, ptr %l1, !tbaa !21
  store i1 %t310, ptr %t309, !tbaa !21
  %t311 = getelementptr %"compiler/diag:Diagnostics", ptr %l93, i32 0, i32 1
  %t312 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t312, ptr %t311
  %t313 = getelementptr %"compiler/diag:Diagnostics", ptr %l93, i32 0, i32 2
  %t314 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t314, ptr %t313
  %t315 = getelementptr %"compiler/diag:Diagnostics", ptr %l93, i32 0, i32 3
  %t316 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t316, ptr %t315
  %t317 = getelementptr %"compiler/diag:Diagnostics", ptr %l93, i32 0, i32 4
  %t318 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t318, ptr %t317
  %t319 = getelementptr %"compiler/diag:Diagnostics", ptr %l93, i32 0, i32 5
  %t320 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t320, ptr %t319
  %t321 = getelementptr %"compiler/diag:Diagnostics", ptr %l93, i32 0, i32 6
  %t322 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t322, ptr %t321
  %t323 = getelementptr %"compiler/diag:Diagnostics", ptr %l93, i32 0, i32 7
  %t324 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t324, ptr %t323
  %t325 = getelementptr %"compiler/diag:Diagnostics", ptr %l93, i32 0, i32 8
  %t326 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t326, ptr %t325
  %t327 = getelementptr %"compiler/diag:Diagnostics", ptr %l93, i32 0, i32 9
  %t328 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t328, ptr %t327
  %t329 = getelementptr %"compiler/diag:Diagnostics", ptr %l93, i32 0, i32 10
  %t330 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t330, ptr %t329
  %t331 = getelementptr %"compiler/diag:Diagnostics", ptr %l93, i32 0, i32 11
  %t332 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t332, ptr %t331
  %t333 = getelementptr %"compiler/diag:Diagnostics", ptr %l93, i32 0, i32 12
  %t334 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t334, ptr %t333
  %t335 = getelementptr %"compiler/diag:Diagnostics", ptr %l93, i32 0, i32 13
  %t336 = load i64, ptr %l14, !tbaa !24
  store i64 %t336, ptr %t335, !tbaa !24
  %t337 = getelementptr %"compiler/diag:Diagnostics", ptr %l93, i32 0, i32 14
  %t338 = load i1, ptr %l15, !tbaa !21
  store i1 %t338, ptr %t337, !tbaa !21
  %t339 = getelementptr %"compiler/diag:Diagnostics", ptr %l93, i32 0, i32 15
  %t340 = load i1, ptr %l16, !tbaa !21
  store i1 %t340, ptr %t339, !tbaa !21
  %t341 = getelementptr %"compiler/diag:Diagnostics", ptr %l93, i32 0, i32 16
  %t342 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t342, ptr %t341
  %t343 = getelementptr %"compiler/diag:Diagnostics", ptr %l93, i32 0, i32 17
  %t344 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t344, ptr %t343
  %t345 = getelementptr %"compiler/diag:Diagnostics", ptr %l93, i32 0, i32 18
  %t346 = load { i64, [3 x i64] }, ptr %l19
  store { i64, [3 x i64] } %t346, ptr %t345
  %t347 = getelementptr %"compiler/diag:Diagnostics", ptr %l93, i32 0, i32 19
  %t348 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t348, ptr %t347, !tbaa !27
  %t349 = getelementptr %"compiler/diag:Diagnostics", ptr %l93, i32 0, i32 20
  %t350 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t350, ptr %t349, !tbaa !27
  %t351 = getelementptr %"compiler/diag:Diagnostics", ptr %l93, i32 0, i32 21
  %t352 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t352, ptr %t351, !tbaa !27
  %t353 = getelementptr %"compiler/diag:Diagnostics", ptr %l93, i32 0, i32 22
  %t354 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t354, ptr %t353, !tbaa !27
  %t355 = getelementptr %"compiler/diag:Diagnostics", ptr %l93, i32 0, i32 23
  %t356 = load i1, ptr %l24, !tbaa !21
  store i1 %t356, ptr %t355, !tbaa !21
  %t357 = getelementptr %"compiler/diag:Diagnostics", ptr %l93, i32 0, i32 24
  %t358 = load i1, ptr %l25, !tbaa !21
  store i1 %t358, ptr %t357, !tbaa !21
  %t359 = getelementptr %"compiler/diag:Diagnostics", ptr %l93, i32 0, i32 25
  %t360 = load i1, ptr %l26, !tbaa !21
  store i1 %t360, ptr %t359, !tbaa !21
  %t361 = getelementptr %"compiler/diag:Diagnostics", ptr %l93, i32 0, i32 26
  %t362 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t362, ptr %t361
  %t363 = getelementptr %"compiler/diag:Diagnostics", ptr %l93, i32 0, i32 27
  %t364 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l28
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t364, ptr %t363
  %t365 = getelementptr %"compiler/diag:Diagnostics", ptr %l93, i32 0, i32 28
  %t366 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l29
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t366, ptr %t365
  %t367 = getelementptr %"compiler/diag:Diagnostics", ptr %l93, i32 0, i32 29
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t308, ptr %t367
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l93, i64 704, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/diag:Item" @compiler_2fdiag_3aItem_2ector(ptr %v0, ptr %v1, ptr %v2, i1 %a0, { i64, ptr } %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, { i64, ptr } %a6, i1 %a7) #0 {
entry:
  %rv = alloca %"compiler/diag:Item"
  br label %start
start:
  br label %bb0
bb0:
  %t18 = insertvalue %"compiler/diag:Item" undef, i1 %a0, 0
  %t20 = insertvalue %"compiler/diag:Item" %t18, { i64, ptr } %a1, 1
  %t22 = insertvalue %"compiler/diag:Item" %t20, i64 %a2, 2
  %t24 = insertvalue %"compiler/diag:Item" %t22, i64 %a3, 3
  %t26 = insertvalue %"compiler/diag:Item" %t24, i64 %a4, 4
  %t28 = insertvalue %"compiler/diag:Item" %t26, i64 %a5, 5
  %t30 = insertvalue %"compiler/diag:Item" %t28, { i64, ptr } %a6, 6
  %t32 = insertvalue %"compiler/diag:Item" %t30, i1 %a7, 7
  store %"compiler/diag:Item" %t32, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diag:Item", ptr %rv
  ret %"compiler/diag:Item" %rr
}

define dso_local %"compiler/diag:Said" @compiler_2fdiag_3aSaid_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, i64 %a1, i64 %a2, { i64, ptr } %a3) #0 {
entry:
  %rv = alloca %"compiler/diag:Said"
  br label %start
start:
  br label %bb0
bb0:
  %t10 = insertvalue %"compiler/diag:Said" undef, { i64, ptr } %a0, 0
  %t12 = insertvalue %"compiler/diag:Said" %t10, i64 %a1, 1
  %t14 = insertvalue %"compiler/diag:Said" %t12, i64 %a2, 2
  %t16 = insertvalue %"compiler/diag:Said" %t14, { i64, ptr } %a3, 3
  store %"compiler/diag:Said" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diag:Said", ptr %rv
  ret %"compiler/diag:Said" %rr
}

define dso_local %"compiler/diag:Taken" @compiler_2fdiag_3aTaken_2ector(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca i64
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca i64
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/diag:Taken"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l4
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l0
  %t3 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3anote_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %l5
  br label %bb2
bb2:
  %t4 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l1
  %t5 = ptrtoint ptr %v0 to i64
  store i64 %t5, ptr %l6, !tbaa !24
  %t6 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aTaken_2e2
  br i1 %t6, label %bb3, label %bb4
bb3:
  %t8 = call ptr @__olang_region_make(ptr %v0)
  %t9 = ptrtoint ptr %t8 to i64
  store i64 %t9, ptr %l6, !tbaa !24
  br label %bb4
bb4:
  %t10 = load i64, ptr %l6
  %t11 = inttoptr i64 %t10 to ptr
  %t12 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t11, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t12, ptr %l8
  br label %bb5
bb5:
  %t13 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aTaken_2e2
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t15 = load i64, ptr %l6
  %t16 = inttoptr i64 %t15 to ptr
  %t17 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8, i32 0, i32 0
  %t18 = load { i64, ptr }, ptr %t17
  %t19 = extractvalue { i64, ptr } %t18, 1
  %t20 = call ptr @__olang_region_or(ptr %t19, ptr null)
  %t21 = call ptr @__olang_region_home(ptr %t20)
  %t22 = icmp ne ptr %t21, null
  %t23 = select i1 %t22, ptr %t21, ptr null
  %t24 = icmp eq ptr %t23, %t16
  call void @__olang_region_settle(ptr %t16, i1 %t24)
  br label %bb7
bb7:
  %t25 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t25, ptr %l2
  %t26 = ptrtoint ptr %v0 to i64
  store i64 %t26, ptr %l10, !tbaa !24
  %t27 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aTaken_2e3
  br i1 %t27, label %bb8, label %bb9
bb8:
  %t29 = call ptr @__olang_region_make(ptr %v0)
  %t30 = ptrtoint ptr %t29 to i64
  store i64 %t30, ptr %l10, !tbaa !24
  br label %bb9
bb9:
  %t31 = load i64, ptr %l10
  %t32 = inttoptr i64 %t31 to ptr
  %t33 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t32, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t33, ptr %l12
  br label %bb10
bb10:
  %t34 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aTaken_2e3
  br i1 %t34, label %bb11, label %bb12
bb11:
  %t36 = load i64, ptr %l10
  %t37 = inttoptr i64 %t36 to ptr
  %t38 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12, i32 0, i32 0
  %t39 = load { i64, ptr }, ptr %t38
  %t40 = extractvalue { i64, ptr } %t39, 1
  %t41 = call ptr @__olang_region_or(ptr %t40, ptr null)
  %t42 = call ptr @__olang_region_home(ptr %t41)
  %t43 = icmp ne ptr %t42, null
  %t44 = select i1 %t43, ptr %t42, ptr null
  %t45 = icmp eq ptr %t44, %t37
  call void @__olang_region_settle(ptr %t37, i1 %t45)
  br label %bb12
bb12:
  %t46 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  %t47 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l0
  %t48 = insertvalue %"compiler/diag:Taken" undef, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t47, 0
  %t49 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1
  %t50 = insertvalue %"compiler/diag:Taken" %t48, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t49, 1
  %t51 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  %t52 = insertvalue %"compiler/diag:Taken" %t50, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t51, 2
  %t54 = insertvalue %"compiler/diag:Taken" %t52, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t46, 3
  store %"compiler/diag:Taken" %t54, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diag:Taken", ptr %rv
  ret %"compiler/diag:Taken" %rr
}

define dso_local %"compiler/diag:context" @compiler_2fdiag_3acontext_2ector(ptr %v0, ptr %v1, { i64, [3 x i64] } %a0, { i64, ptr } %a1) #0 {
entry:
  %rv = alloca %"compiler/diag:context"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"compiler/diag:context" undef, { i64, [3 x i64] } %a0, 0
  %t8 = insertvalue %"compiler/diag:context" %t6, { i64, ptr } %a1, 1
  store %"compiler/diag:context" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diag:context", ptr %rv
  ret %"compiler/diag:context" %rr
}

define dso_local %"compiler/diag:note" @compiler_2fdiag_3anote_2ector(ptr %v0, ptr %v1, i64 %a0, { i64, [3 x i64] } %a1, { i64, ptr } %a2, i1 %a3, i1 %a4) #0 {
entry:
  %rv = alloca %"compiler/diag:note"
  br label %start
start:
  br label %bb0
bb0:
  %t12 = insertvalue %"compiler/diag:note" undef, i64 %a0, 0
  %t14 = insertvalue %"compiler/diag:note" %t12, { i64, [3 x i64] } %a1, 1
  %t16 = insertvalue %"compiler/diag:note" %t14, { i64, ptr } %a2, 2
  %t18 = insertvalue %"compiler/diag:note" %t16, i1 %a3, 3
  %t20 = insertvalue %"compiler/diag:note" %t18, i1 %a4, 4
  store %"compiler/diag:note" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diag:note", ptr %rv
  ret %"compiler/diag:note" %rr
}

define dso_local %"compiler/diag:record" @compiler_2fdiag_3arecord_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, [3 x i64] } %a0, { i64, ptr } %a1, { i64, ptr } %a2, i32 %a3, i64 %a4, i1 %a5) #0 {
entry:
  %rv = alloca %"compiler/diag:record"
  br label %start
start:
  br label %bb0
bb0:
  %t14 = insertvalue %"compiler/diag:record" undef, { i64, [3 x i64] } %a0, 0
  %t16 = insertvalue %"compiler/diag:record" %t14, { i64, ptr } %a1, 1
  %t18 = insertvalue %"compiler/diag:record" %t16, { i64, ptr } %a2, 2
  %t20 = insertvalue %"compiler/diag:record" %t18, i32 %a3, 3
  %t22 = insertvalue %"compiler/diag:record" %t20, i64 %a4, 4
  %t24 = insertvalue %"compiler/diag:record" %t22, i1 %a5, 5
  store %"compiler/diag:record" %t24, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diag:record", ptr %rv
  ret %"compiler/diag:record" %rr
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
@.d0 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"NO_COLOR" }>, align 8
declare void @__olang_errpay_pop()
declare void @__olang_check_failed(ptr) cold noreturn
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
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@.d1 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d2 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"/proc/self/exe" }>, align 8
@.d3 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"SPEC.md" }>, align 8
@.d4 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d5 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"SPEC.md" }>, align 8
@.d6 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"/../SPEC.md" }>, align 8
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
@.d7 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"D3b" }>, align 8
@.d8 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"M5a" }>, align 8
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
@olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e19 = weak hidden constant i1 false
declare void @__olang_region_release(ptr) noinline
@olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e20 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e21 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e22 = weak hidden constant i1 false
@.d9 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d10 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d11 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d12 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d13 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"?" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d14 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d15 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"?" }>, align 8
@.d16 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"error" }>, align 8
@.d17 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"note" }>, align 8
@.d18 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"help" }>, align 8
@.d19 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"1" }>, align 8
@.d20 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"0" }>, align 8
@.d21 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"compilation successful" }>, align 8
@.d22 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d23 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"1;31" }>, align 8
@.d24 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d25 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"s" }>, align 8
@.d26 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"0" }>, align 8
@.d27 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"compilation failed with " }>, align 8
@.d28 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" error" }>, align 8
@.d29 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d30 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d31 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"note" }>, align 8
@.d32 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"help" }>, align 8
@.d33 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"warning" }>, align 8
@.d34 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"1;31" }>, align 8
@.d35 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"0" }>, align 8
@.d36 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"error:" }>, align 8
@.d37 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d38 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"1;31" }>, align 8
@.d39 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"0" }>, align 8
@.d40 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"error[" }>, align 8
@.d41 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"]:" }>, align 8
@.d42 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d43 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" | " }>, align 8
@.d44 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"..." }>, align 8
@.d45 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"..." }>, align 8
@.d46 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"\0A      | " }>, align 8
@.d47 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"   " }>, align 8
@.d48 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"1;32" }>, align 8
@.d49 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"0" }>, align 8
@.d50 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"1" }>, align 8
@.d51 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"olang" }>, align 8
@.d52 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d53 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d54 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d55 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"0" }>, align 8
@.d56 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"note" }>, align 8
@.d57 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d58 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"help" }>, align 8
@.d59 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"note" }>, align 8
@.d60 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"1;36" }>, align 8
@.d61 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"0" }>, align 8
@.d62 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d63 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d64 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"error" }>, align 8
@.d65 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"warning" }>, align 8
@.d66 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"1;35" }>, align 8
@.d67 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"1;36" }>, align 8
@.d68 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"0" }>, align 8
@.d69 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"warning[" }>, align 8
@.d70 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"]:" }>, align 8
@.d71 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d72 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"0" }>, align 8
@.d73 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"note:" }>, align 8
@.d74 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fdiag_3aWhere(ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i1 true, ptr %l2, !tbaa !21
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %t1, !range !{i64 0, i64 4}
  store i64 %t2, ptr %l3, !tbaa !24
  %t3 = load ptr, ptr %l1, !tbaa !29
  %t4 = load i64, ptr %t3, !range !{i64 0, i64 4}
  %t5 = load i64, ptr %l3, !tbaa !24
  %t7 = icmp eq i64 %t5, %t4
  br i1 %t7, label %bb2, label %bb1
bb1:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb13
bb2:
  %t9 = load i64, ptr %l3, !tbaa !24
  switch i64 %t9, label %bb3 [ i64 1, label %bb4 i64 2, label %bb5 i64 3, label %bb6 ]
bb3:
  br label %bb13
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr { i64, [3 x i64] }, ptr %t10, i32 0, i32 1
  %t12 = getelementptr { i64 }, ptr %t11, i32 0, i32 0
  %t13 = load i64, ptr %t12
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t15 = getelementptr { i64, [3 x i64] }, ptr %t14, i32 0, i32 1
  %t16 = getelementptr { i64 }, ptr %t15, i32 0, i32 0
  %t17 = load i64, ptr %t16
  %t20 = icmp eq i64 %t13, %t17
  br i1 %t20, label %bb7, label %bb1
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr { i64, [3 x i64] }, ptr %t22, i32 0, i32 1
  %t24 = getelementptr { i64, i64 }, ptr %t23, i32 0, i32 0
  %t25 = load i64, ptr %t24
  %t26 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr { i64, [3 x i64] }, ptr %t26, i32 0, i32 1
  %t28 = getelementptr { i64, i64 }, ptr %t27, i32 0, i32 0
  %t29 = load i64, ptr %t28
  %t32 = icmp eq i64 %t25, %t29
  br i1 %t32, label %bb8, label %bb1
bb6:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr { i64, [3 x i64] }, ptr %t34, i32 0, i32 1
  %t36 = getelementptr { i64, i64, i64 }, ptr %t35, i32 0, i32 0
  %t37 = load i64, ptr %t36
  %t38 = load ptr, ptr %l1, !tbaa !29
  %t39 = getelementptr { i64, [3 x i64] }, ptr %t38, i32 0, i32 1
  %t40 = getelementptr { i64, i64, i64 }, ptr %t39, i32 0, i32 0
  %t41 = load i64, ptr %t40
  %t44 = icmp eq i64 %t37, %t41
  br i1 %t44, label %bb10, label %bb1
bb7:
  br label %bb3
bb8:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr { i64, [3 x i64] }, ptr %t46, i32 0, i32 1
  %t48 = getelementptr { i64, i64 }, ptr %t47, i32 0, i32 1
  %t49 = load i64, ptr %t48
  %t50 = load ptr, ptr %l1, !tbaa !29
  %t51 = getelementptr { i64, [3 x i64] }, ptr %t50, i32 0, i32 1
  %t52 = getelementptr { i64, i64 }, ptr %t51, i32 0, i32 1
  %t53 = load i64, ptr %t52
  %t56 = icmp eq i64 %t49, %t53
  br i1 %t56, label %bb9, label %bb1
bb9:
  br label %bb3
bb10:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr { i64, [3 x i64] }, ptr %t58, i32 0, i32 1
  %t60 = getelementptr { i64, i64, i64 }, ptr %t59, i32 0, i32 1
  %t61 = load i64, ptr %t60
  %t62 = load ptr, ptr %l1, !tbaa !29
  %t63 = getelementptr { i64, [3 x i64] }, ptr %t62, i32 0, i32 1
  %t64 = getelementptr { i64, i64, i64 }, ptr %t63, i32 0, i32 1
  %t65 = load i64, ptr %t64
  %t68 = icmp eq i64 %t61, %t65
  br i1 %t68, label %bb11, label %bb1
bb11:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr { i64, [3 x i64] }, ptr %t70, i32 0, i32 1
  %t72 = getelementptr { i64, i64, i64 }, ptr %t71, i32 0, i32 2
  %t73 = load i64, ptr %t72
  %t74 = load ptr, ptr %l1, !tbaa !29
  %t75 = getelementptr { i64, [3 x i64] }, ptr %t74, i32 0, i32 1
  %t76 = getelementptr { i64, i64, i64 }, ptr %t75, i32 0, i32 2
  %t77 = load i64, ptr %t76
  %t80 = icmp eq i64 %t73, %t77
  br i1 %t80, label %bb12, label %bb1
bb12:
  br label %bb3
bb13:
  %t82 = load i1, ptr %l2, !tbaa !21
  store i1 %t82, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@olang_2esole_2ecompiler_2fdiag_3anote_2e2 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d75 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d76 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"[" }>, align 8
@.d77 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"m" }>, align 8
@.d78 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@olang_2esole_2ecompiler__2fdiag__2ecompiler__2fdiag__3aDiagnostics__2ewritten_2elocal_2e5 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
declare ptr @__olang_region_home(ptr)
declare void @__olang_region_settle(ptr, i1)
define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fmsgs_3aDiag(ptr %a0, ptr %a1) #0 {
entry:
  %l2 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store i1 true, ptr %l2, !tbaa !21
  %t2 = load i32, ptr %a0, !range !{i32 0, i32 906}
  %t3 = sext i32 %t2 to i64
  %t5 = load i32, ptr %a1, !range !{i32 0, i32 906}
  %t6 = sext i32 %t5 to i64
  %t9 = icmp eq i64 %t3, %t6
  br i1 %t9, label %bb2, label %bb1
bb1:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb3
bb2:
  br label %bb3
bb3:
  %t11 = load i1, ptr %l2, !tbaa !21
  store i1 %t11, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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

declare void @__olang_region_drop(ptr) noinline
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
define internal i1 @olang_lambda_79(ptr %env, i64 %a0, i64 %a1) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  %rv = alloca i1
  store i64 %a0, ptr %l0
  store i64 %a1, ptr %l1
  %cp0 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr }, ptr %env, i32 0, i32 0
  %cv0 = load { i64, ptr }, ptr %cp0, !tbaa !28
  store { i64, ptr } %cv0, ptr %l2
  %cp1 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr }, ptr %env, i32 0, i32 1
  %cv1 = load { i64, ptr }, ptr %cp1, !tbaa !28
  store { i64, ptr } %cv1, ptr %l3
  %cp2 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr }, ptr %env, i32 0, i32 2
  %cv2 = load { i64, ptr }, ptr %cp2, !tbaa !28
  store { i64, ptr } %cv2, ptr %l4
  %vq0 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr }, ptr %env, i32 0, i32 3
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  %vq1 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr }, ptr %env, i32 0, i32 4
  %vr1 = load ptr, ptr %vq1, !tbaa !28
  %vc1 = call ptr @__olang_capture_scope(ptr %vr1)
  %vq2 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr }, ptr %env, i32 0, i32 5
  %vr2 = load ptr, ptr %vq2, !tbaa !28
  %vc2 = call ptr @__olang_capture_scope(ptr %vr2)
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t1, ptr %l5, !tbaa !27
  %t2 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t2, ptr %l6, !tbaa !27
  %t3 = load i64, ptr %l0, !tbaa !24
  %t5 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t6 = load ptr, ptr %t5, !tbaa !27
  %t7 = getelementptr i64, ptr %t6, i64 %t3
  %t8 = load i64, ptr %t7, !tbaa !34
  %t10 = add i64 %t8, 1
  %t12 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr i64, ptr %t13, i64 %t10
  %t15 = load i64, ptr %t14, !tbaa !34
  %t16 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t16, ptr %l11, !tbaa !27
  %t17 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t17, ptr %l12, !tbaa !27
  %t18 = load i64, ptr %l1, !tbaa !24
  %t20 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr i64, ptr %t21, i64 %t18
  %t23 = load i64, ptr %t22, !tbaa !34
  %t25 = add i64 %t23, 1
  %t27 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = getelementptr i64, ptr %t28, i64 %t25
  %t30 = load i64, ptr %t29, !tbaa !34
  %t33 = icmp ne i64 %t15, %t30
  br i1 %t33, label %bb1, label %bb2
bb1:
  %t35 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t35, ptr %l18, !tbaa !27
  %t36 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t36, ptr %l19, !tbaa !27
  %t37 = load i64, ptr %l0, !tbaa !24
  %t39 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !27
  %t41 = getelementptr i64, ptr %t40, i64 %t37
  %t42 = load i64, ptr %t41, !tbaa !34
  %t44 = add i64 %t42, 1
  %t46 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = getelementptr i64, ptr %t47, i64 %t44
  %t49 = load i64, ptr %t48, !tbaa !34
  %t50 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t50, ptr %l24, !tbaa !27
  %t51 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t51, ptr %l25, !tbaa !27
  %t52 = load i64, ptr %l1, !tbaa !24
  %t54 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr i64, ptr %t55, i64 %t52
  %t57 = load i64, ptr %t56, !tbaa !34
  %t59 = add i64 %t57, 1
  %t61 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !27
  %t63 = getelementptr i64, ptr %t62, i64 %t59
  %t64 = load i64, ptr %t63, !tbaa !34
  %t67 = icmp slt i64 %t49, %t64
  store i1 %t67, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t69 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t69, ptr %l31, !tbaa !27
  %t70 = load i64, ptr %l0, !tbaa !24
  %t72 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = getelementptr i64, ptr %t73, i64 %t70
  %t75 = load i64, ptr %t74, !tbaa !34
  %t76 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t76, ptr %l34, !tbaa !27
  %t77 = load i64, ptr %l1, !tbaa !24
  %t79 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !27
  %t81 = getelementptr i64, ptr %t80, i64 %t77
  %t82 = load i64, ptr %t81, !tbaa !34
  %t85 = icmp ne i64 %t75, %t82
  br i1 %t85, label %bb4, label %bb5
bb4:
  %t87 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t87, ptr %l38, !tbaa !27
  %t88 = load i64, ptr %l0, !tbaa !24
  %t90 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !27
  %t92 = getelementptr i64, ptr %t91, i64 %t88
  %t93 = load i64, ptr %t92, !tbaa !34
  %t94 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t94, ptr %l41, !tbaa !27
  %t95 = load i64, ptr %l1, !tbaa !24
  %t97 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !27
  %t99 = getelementptr i64, ptr %t98, i64 %t95
  %t100 = load i64, ptr %t99, !tbaa !34
  %t103 = icmp slt i64 %t93, %t100
  store i1 %t103, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t105 = load i64, ptr %l0, !tbaa !24
  %t106 = load i64, ptr %l1, !tbaa !24
  %t109 = icmp slt i64 %t105, %t106
  store i1 %t109, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@.d80 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"C2d" }>, align 8
@.d81 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T17c" }>, align 8
@.d82 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"- " }>, align 8
@.d83 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"**" }>, align 8
@.d84 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c".**" }>, align 8
@.d85 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" (" }>, align 8
@.d86 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"TERM" }>, align 8
@.d87 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"dumb" }>, align 8
@olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e1 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e3 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e4 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e5 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e6 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e9 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e10 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e11 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e16 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e17 = weak hidden constant i1 false
@.d88 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d89 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d90 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d91 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e27 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e28 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e29 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fdiag_3aTaken_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fdiag_3aTaken_2e3 = weak hidden constant i1 false
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
declare i1 @std_2fos_2eIsTerminal(i32 %a0)
declare { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare i8 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eToUpper(i8 %a0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_c5879cd561f524a8_9a69d9d7af5b002c = external constant [0 x i8]
@olang_loc_278b8075a2f80085_5f77718140d89fd9 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v0, { i64, ptr } %a0, i8 %a1)
@olang_loc_5357591f61d3ec66_4083edcb137c28ba = external constant [0 x i8]
@olang_loc_40a6fbbd452759c3_7354b3156286cb97 = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_eb08610c80fa023c_21bad482e9cc9598 = external constant [0 x i8]
@olang_loc_85c0e204c21dcc64_81dac71c6a103c0 = external constant [0 x i8]
declare { i32, { i64, ptr } } @std_2fos_2eReadLink(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_df2cfc0fcf8e1b0d_c8c5f24983f674c1 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %a0, i1 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aSaid_3e_2ector(ptr %v0, i64 %a0)
declare %"compiler/diag:record" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2eAt_3ccompiler_2fdiag_3arecord_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aSaid_3e_2ePush_3ccompiler_2fdiag_3aSaid_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/diag:Said" %a1)
@olang_loc_a84e229f70f1f256_25addd6a15e39b7a = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3acontext_3e_2eLen_3ccompiler_2fdiag_3acontext_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2eLen_3ccompiler_2fdiag_3arecord_3e(ptr %v0, ptr %a0)
declare { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2ePush_3ccompiler_2fdiag_3arecord_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/diag:record" %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %a0)
@olang_loc_c04aaa086b5e7e5b_5e3bee630a0f401f = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2eTruncate_3ccompiler_2fdiag_3arecord_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3anote_3e_2eLen_3ccompiler_2fdiag_3anote_3e(ptr %v0, ptr %a0)
declare %"compiler/diag:note" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3anote_3e_2eAt_3ccompiler_2fdiag_3anote_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3anote_3e_2eSetAt_3ccompiler_2fdiag_3anote_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/diag:note" %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3anote_3e_2eTruncate_3ccompiler_2fdiag_3anote_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eTruncate_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aItem_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aItem_3e_2ePush_3ccompiler_2fdiag_3aItem_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/diag:Item" %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3anote_3e_2ePush_3ccompiler_2fdiag_3anote_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/diag:note" %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i32, %"compiler/diag:context" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3acontext_3e_2ePop_3ccompiler_2fdiag_3acontext_3e(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3acontext_3e_2ePush_3ccompiler_2fdiag_3acontext_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/diag:context" %a1)
declare %"compiler/diag:context" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3acontext_3e_2eAt_3ccompiler_2fdiag_3acontext_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_ee9cae70646c4bf5_c04baedc434dd6e9 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fsource_2eLineStarts(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_c64be6b7d7a3c96a_e11c2151589de926 = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2ftext_2eI64_2ePadStart(ptr %v0, i64 %a0, i64 %a1, i8 %a2)
@olang_loc_63cbd536ec427bfa_9ebcb75929bac85e = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteInLibrary(ptr %v0)
@olang_loc_4dcb4d0a5bf00c4a_ab355dfc0aa866a6 = external constant [0 x i8]
@olang_loc_661de3b27f7b1d1f_a886f9f6d8c58a3b = external constant [0 x i8]
@olang_loc_7549250239c3dfbc_e6bed168a21d4f58 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
@olang_loc_cc4d2c1e8d3adf92_7a1efbc027515c6 = external constant [0 x i8]
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_c2f4506e7327945e_f97af0abefd7d9d2 = external constant [0 x i8]
declare void @std_2fprelude_2farray_2eArray_3cI64_3e_2eSort_3cI64_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1c, ptr %a1e)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_122ae7ff15fe68f_4bf017428e5c5a9b = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %a0)
@olang_loc_f601f9616f628c92_63c657ce4b964a9e = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLower(i8 %a0)
@olang_loc_34cb3e047b5a9691_df78e9c71a0d19fd = external constant [0 x i8]
@olang_loc_44be31be33a055a4_da5ef357ed133fa0 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3anote_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3acontext_3e_2ector(ptr %v0, i64 %a0)

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
