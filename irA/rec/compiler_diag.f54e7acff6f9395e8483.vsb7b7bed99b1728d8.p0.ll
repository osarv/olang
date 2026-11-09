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
%"compiler/diag:Item" = type { i1, { i64, ptr }, i64, i64, i64, i64, { i64, ptr } }
%"compiler/diag:Diagnostics" = type { i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, [3 x i64] }, { i64, ptr }, { i64, ptr }, i1, i1 }
%"compiler/diag:record" = type { { i64, [3 x i64] }, { i64, ptr }, { i64, ptr }, i32, i64, i1 }
%"compiler/diag:Said" = type { { i64, ptr }, i64, i64, { i64, ptr } }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/diag:note" = type { i64, { i64, [3 x i64] }, { i64, ptr } }
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

define dso_local %"compiler/diag:Item" @compiler_2fdiag_2eItem_2eitem(ptr %v0, ptr %v1, ptr %v2, i1 %a0, { i64, ptr } %a1, { i64, [3 x i64] } %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca i1
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, [3 x i64] }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca %"compiler/diag:Item"
  %l16 = alloca i1
  %l17 = alloca i64
  %l21 = alloca { i64, ptr }
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l30 = alloca %"compiler/diag:Item"
  %l35 = alloca i1
  %l36 = alloca i64
  %l40 = alloca { i64, ptr }
  %l41 = alloca i64
  %l42 = alloca i64
  %l43 = alloca i64
  %l48 = alloca %"compiler/diag:Item"
  %l52 = alloca i1
  %l53 = alloca i64
  %l57 = alloca { i64, ptr }
  %l58 = alloca i64
  %l59 = alloca i64
  %l64 = alloca %"compiler/diag:Item"
  %l67 = alloca i1
  %l68 = alloca i64
  %l72 = alloca { i64, ptr }
  %l73 = alloca i64
  %l78 = alloca %"compiler/diag:Item"
  %rv = alloca %"compiler/diag:Item"
  store i1 %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store { i64, [3 x i64] } %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
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
  store i64 %t8, ptr %l4, !tbaa !24
  %t10 = getelementptr { i64, [3 x i64] }, ptr %l2, i32 0, i32 1
  %t11 = getelementptr { i64, i64, i64 }, ptr %t10, i32 0, i32 1
  %t12 = load i64, ptr %t11
  store i64 %t12, ptr %l5, !tbaa !24
  %t14 = getelementptr { i64, [3 x i64] }, ptr %l2, i32 0, i32 1
  %t15 = getelementptr { i64, i64, i64 }, ptr %t14, i32 0, i32 2
  %t16 = load i64, ptr %t15
  store i64 %t16, ptr %l6, !tbaa !24
  br label %bb3
bb2:
  br label %bb9
bb3:
  %t18 = load i1, ptr %l0, !tbaa !21
  store i1 %t18, ptr %l16, !tbaa !21
  %t19 = ptrtoint ptr %v2 to i64
  store i64 %t19, ptr %l17, !tbaa !24
  %t20 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aItem_2e1
  br i1 %t20, label %bb4, label %bb5
bb4:
  %t22 = call ptr @__olang_region_make(ptr %v2)
  %t23 = ptrtoint ptr %t22 to i64
  store i64 %t23, ptr %l17, !tbaa !24
  br label %bb5
bb5:
  %t24 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t24, 1
  %t27 = extractvalue { i64, ptr } %t24, 0
  %t28 = load i64, ptr %l17
  %t29 = inttoptr i64 %t28 to ptr
  %t30 = call ptr @__olang_scope_alloc(ptr %t29, i64 %t27)
  call void @olang_textcopy(ptr %t30, ptr %t26, i64 %t27)
  %t31 = insertvalue { i64, ptr } undef, i64 %t27, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t30, 1
  %t34 = load i64, ptr %l17
  %t35 = inttoptr i64 %t34 to ptr
  %t36 = extractvalue { i64, ptr } %t32, 0
  %t37 = extractvalue { i64, ptr } %t32, 1
  %t38 = mul i64 %t36, 1
  %t39 = call ptr @__olang_scope_alloc(ptr %t35, i64 %t38)
  call void @llvm.memcpy.p0.p0.i64(ptr %t39, ptr %t37, i64 %t38, i1 false)
  %t40 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t39, 1
  store { i64, ptr } %t41, ptr %l21, !tbaa !27
  %t42 = load i64, ptr %l4, !tbaa !24
  store i64 %t42, ptr %l22, !tbaa !24
  %t43 = load i64, ptr %l5, !tbaa !24
  store i64 %t43, ptr %l23, !tbaa !24
  %t44 = load i64, ptr %l6, !tbaa !24
  store i64 %t44, ptr %l24, !tbaa !24
  %t45 = ptrtoint ptr %v2 to i64
  store i64 %t45, ptr %l25, !tbaa !24
  %t46 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aItem_2e6
  br i1 %t46, label %bb6, label %bb7
bb6:
  %t48 = call ptr @__olang_region_make(ptr %v2)
  %t49 = ptrtoint ptr %t48 to i64
  store i64 %t49, ptr %l25, !tbaa !24
  br label %bb7
bb7:
  %t50 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t52 = extractvalue { i64, ptr } %t50, 1
  %t53 = extractvalue { i64, ptr } %t50, 0
  %t54 = load i64, ptr %l25
  %t55 = inttoptr i64 %t54 to ptr
  %t56 = call ptr @__olang_scope_alloc(ptr %t55, i64 %t53)
  call void @olang_textcopy(ptr %t56, ptr %t52, i64 %t53)
  %t57 = insertvalue { i64, ptr } undef, i64 %t53, 0
  %t58 = insertvalue { i64, ptr } %t57, ptr %t56, 1
  %t60 = load i64, ptr %l25
  %t61 = inttoptr i64 %t60 to ptr
  %t62 = extractvalue { i64, ptr } %t58, 0
  %t63 = extractvalue { i64, ptr } %t58, 1
  %t64 = mul i64 %t62, 1
  %t65 = call ptr @__olang_scope_alloc(ptr %t61, i64 %t64)
  call void @llvm.memcpy.p0.p0.i64(ptr %t65, ptr %t63, i64 %t64, i1 false)
  %t66 = insertvalue { i64, ptr } undef, i64 %t62, 0
  %t67 = insertvalue { i64, ptr } %t66, ptr %t65, 1
  %t68 = load i1, ptr %l16, !tbaa !21
  %t69 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t70 = load i64, ptr %l22, !tbaa !24
  %t71 = load i64, ptr %l23, !tbaa !24
  %t72 = load i64, ptr %l24, !tbaa !24
  %t74 = call %"compiler/diag:Item" @compiler_2fdiag_3aItem_2ector(ptr %v2, ptr %v2, ptr %v2, i1 %t68, { i64, ptr } %t69, i64 %t70, i64 %t71, i64 %t72, i64 0, { i64, ptr } %t67)
  store %"compiler/diag:Item" %t74, ptr %l30
  br label %bb8
bb8:
  %t75 = load %"compiler/diag:Item", ptr %l30
  store %"compiler/diag:Item" %t75, ptr %l10
  br label %bb37
bb9:
  %t76 = load { i64, [3 x i64] }, ptr %l2
  %t78 = extractvalue { i64, [3 x i64] } %t76, 0
  %t79 = icmp eq i64 %t78, 2
  br i1 %t79, label %bb10, label %bb11
bb10:
  %t81 = getelementptr { i64, [3 x i64] }, ptr %l2, i32 0, i32 1
  %t82 = getelementptr { i64, i64 }, ptr %t81, i32 0, i32 0
  %t83 = load i64, ptr %t82
  store i64 %t83, ptr %l7, !tbaa !24
  %t85 = getelementptr { i64, [3 x i64] }, ptr %l2, i32 0, i32 1
  %t86 = getelementptr { i64, i64 }, ptr %t85, i32 0, i32 1
  %t87 = load i64, ptr %t86
  store i64 %t87, ptr %l8, !tbaa !24
  br label %bb12
bb11:
  br label %bb18
bb12:
  %t89 = load i1, ptr %l0, !tbaa !21
  store i1 %t89, ptr %l35, !tbaa !21
  %t90 = ptrtoint ptr %v2 to i64
  store i64 %t90, ptr %l36, !tbaa !24
  %t91 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aItem_2e1
  br i1 %t91, label %bb13, label %bb14
bb13:
  %t93 = call ptr @__olang_region_make(ptr %v2)
  %t94 = ptrtoint ptr %t93 to i64
  store i64 %t94, ptr %l36, !tbaa !24
  br label %bb14
bb14:
  %t95 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t97 = extractvalue { i64, ptr } %t95, 1
  %t98 = extractvalue { i64, ptr } %t95, 0
  %t99 = load i64, ptr %l36
  %t100 = inttoptr i64 %t99 to ptr
  %t101 = call ptr @__olang_scope_alloc(ptr %t100, i64 %t98)
  call void @olang_textcopy(ptr %t101, ptr %t97, i64 %t98)
  %t102 = insertvalue { i64, ptr } undef, i64 %t98, 0
  %t103 = insertvalue { i64, ptr } %t102, ptr %t101, 1
  %t105 = load i64, ptr %l36
  %t106 = inttoptr i64 %t105 to ptr
  %t107 = extractvalue { i64, ptr } %t103, 0
  %t108 = extractvalue { i64, ptr } %t103, 1
  %t109 = mul i64 %t107, 1
  %t110 = call ptr @__olang_scope_alloc(ptr %t106, i64 %t109)
  call void @llvm.memcpy.p0.p0.i64(ptr %t110, ptr %t108, i64 %t109, i1 false)
  %t111 = insertvalue { i64, ptr } undef, i64 %t107, 0
  %t112 = insertvalue { i64, ptr } %t111, ptr %t110, 1
  store { i64, ptr } %t112, ptr %l40, !tbaa !27
  %t113 = load i64, ptr %l7, !tbaa !24
  store i64 %t113, ptr %l41, !tbaa !24
  %t114 = load i64, ptr %l8, !tbaa !24
  store i64 %t114, ptr %l42, !tbaa !24
  %t115 = ptrtoint ptr %v2 to i64
  store i64 %t115, ptr %l43, !tbaa !24
  %t116 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aItem_2e6
  br i1 %t116, label %bb15, label %bb16
bb15:
  %t118 = call ptr @__olang_region_make(ptr %v2)
  %t119 = ptrtoint ptr %t118 to i64
  store i64 %t119, ptr %l43, !tbaa !24
  br label %bb16
bb16:
  %t120 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t122 = extractvalue { i64, ptr } %t120, 1
  %t123 = extractvalue { i64, ptr } %t120, 0
  %t124 = load i64, ptr %l43
  %t125 = inttoptr i64 %t124 to ptr
  %t126 = call ptr @__olang_scope_alloc(ptr %t125, i64 %t123)
  call void @olang_textcopy(ptr %t126, ptr %t122, i64 %t123)
  %t127 = insertvalue { i64, ptr } undef, i64 %t123, 0
  %t128 = insertvalue { i64, ptr } %t127, ptr %t126, 1
  %t130 = load i64, ptr %l43
  %t131 = inttoptr i64 %t130 to ptr
  %t132 = extractvalue { i64, ptr } %t128, 0
  %t133 = extractvalue { i64, ptr } %t128, 1
  %t134 = mul i64 %t132, 1
  %t135 = call ptr @__olang_scope_alloc(ptr %t131, i64 %t134)
  call void @llvm.memcpy.p0.p0.i64(ptr %t135, ptr %t133, i64 %t134, i1 false)
  %t136 = insertvalue { i64, ptr } undef, i64 %t132, 0
  %t137 = insertvalue { i64, ptr } %t136, ptr %t135, 1
  %t138 = load i1, ptr %l35, !tbaa !21
  %t139 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t140 = load i64, ptr %l41, !tbaa !24
  %t141 = load i64, ptr %l42, !tbaa !24
  %t143 = call %"compiler/diag:Item" @compiler_2fdiag_3aItem_2ector(ptr %v2, ptr %v2, ptr %v2, i1 %t138, { i64, ptr } %t139, i64 %t140, i64 -1, i64 -1, i64 %t141, { i64, ptr } %t137)
  store %"compiler/diag:Item" %t143, ptr %l48
  br label %bb17
bb17:
  %t144 = load %"compiler/diag:Item", ptr %l48
  store %"compiler/diag:Item" %t144, ptr %l10
  br label %bb37
bb18:
  %t145 = load { i64, [3 x i64] }, ptr %l2
  %t147 = extractvalue { i64, [3 x i64] } %t145, 0
  %t148 = icmp eq i64 %t147, 1
  br i1 %t148, label %bb19, label %bb20
bb19:
  %t150 = getelementptr { i64, [3 x i64] }, ptr %l2, i32 0, i32 1
  %t151 = getelementptr { i64 }, ptr %t150, i32 0, i32 0
  %t152 = load i64, ptr %t151
  store i64 %t152, ptr %l9, !tbaa !24
  br label %bb21
bb20:
  br label %bb27
bb21:
  %t154 = load i1, ptr %l0, !tbaa !21
  store i1 %t154, ptr %l52, !tbaa !21
  %t155 = ptrtoint ptr %v2 to i64
  store i64 %t155, ptr %l53, !tbaa !24
  %t156 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aItem_2e1
  br i1 %t156, label %bb22, label %bb23
bb22:
  %t158 = call ptr @__olang_region_make(ptr %v2)
  %t159 = ptrtoint ptr %t158 to i64
  store i64 %t159, ptr %l53, !tbaa !24
  br label %bb23
bb23:
  %t160 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t162 = extractvalue { i64, ptr } %t160, 1
  %t163 = extractvalue { i64, ptr } %t160, 0
  %t164 = load i64, ptr %l53
  %t165 = inttoptr i64 %t164 to ptr
  %t166 = call ptr @__olang_scope_alloc(ptr %t165, i64 %t163)
  call void @olang_textcopy(ptr %t166, ptr %t162, i64 %t163)
  %t167 = insertvalue { i64, ptr } undef, i64 %t163, 0
  %t168 = insertvalue { i64, ptr } %t167, ptr %t166, 1
  %t170 = load i64, ptr %l53
  %t171 = inttoptr i64 %t170 to ptr
  %t172 = extractvalue { i64, ptr } %t168, 0
  %t173 = extractvalue { i64, ptr } %t168, 1
  %t174 = mul i64 %t172, 1
  %t175 = call ptr @__olang_scope_alloc(ptr %t171, i64 %t174)
  call void @llvm.memcpy.p0.p0.i64(ptr %t175, ptr %t173, i64 %t174, i1 false)
  %t176 = insertvalue { i64, ptr } undef, i64 %t172, 0
  %t177 = insertvalue { i64, ptr } %t176, ptr %t175, 1
  store { i64, ptr } %t177, ptr %l57, !tbaa !27
  %t178 = load i64, ptr %l9, !tbaa !24
  store i64 %t178, ptr %l58, !tbaa !24
  %t179 = ptrtoint ptr %v2 to i64
  store i64 %t179, ptr %l59, !tbaa !24
  %t180 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aItem_2e6
  br i1 %t180, label %bb24, label %bb25
bb24:
  %t182 = call ptr @__olang_region_make(ptr %v2)
  %t183 = ptrtoint ptr %t182 to i64
  store i64 %t183, ptr %l59, !tbaa !24
  br label %bb25
bb25:
  %t184 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t186 = extractvalue { i64, ptr } %t184, 1
  %t187 = extractvalue { i64, ptr } %t184, 0
  %t188 = load i64, ptr %l59
  %t189 = inttoptr i64 %t188 to ptr
  %t190 = call ptr @__olang_scope_alloc(ptr %t189, i64 %t187)
  call void @olang_textcopy(ptr %t190, ptr %t186, i64 %t187)
  %t191 = insertvalue { i64, ptr } undef, i64 %t187, 0
  %t192 = insertvalue { i64, ptr } %t191, ptr %t190, 1
  %t194 = load i64, ptr %l59
  %t195 = inttoptr i64 %t194 to ptr
  %t196 = extractvalue { i64, ptr } %t192, 0
  %t197 = extractvalue { i64, ptr } %t192, 1
  %t198 = mul i64 %t196, 1
  %t199 = call ptr @__olang_scope_alloc(ptr %t195, i64 %t198)
  call void @llvm.memcpy.p0.p0.i64(ptr %t199, ptr %t197, i64 %t198, i1 false)
  %t200 = insertvalue { i64, ptr } undef, i64 %t196, 0
  %t201 = insertvalue { i64, ptr } %t200, ptr %t199, 1
  %t202 = load i1, ptr %l52, !tbaa !21
  %t203 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t204 = load i64, ptr %l58, !tbaa !24
  %t206 = call %"compiler/diag:Item" @compiler_2fdiag_3aItem_2ector(ptr %v2, ptr %v2, ptr %v2, i1 %t202, { i64, ptr } %t203, i64 %t204, i64 -1, i64 -1, i64 0, { i64, ptr } %t201)
  store %"compiler/diag:Item" %t206, ptr %l64
  br label %bb26
bb26:
  %t207 = load %"compiler/diag:Item", ptr %l64
  store %"compiler/diag:Item" %t207, ptr %l10
  br label %bb37
bb27:
  %t208 = load { i64, [3 x i64] }, ptr %l2
  %t210 = extractvalue { i64, [3 x i64] } %t208, 0
  %t211 = icmp eq i64 %t210, 0
  br i1 %t211, label %bb28, label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb36
bb30:
  %t213 = load i1, ptr %l0, !tbaa !21
  store i1 %t213, ptr %l67, !tbaa !21
  %t214 = ptrtoint ptr %v2 to i64
  store i64 %t214, ptr %l68, !tbaa !24
  %t215 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aItem_2e1
  br i1 %t215, label %bb31, label %bb32
bb31:
  %t217 = call ptr @__olang_region_make(ptr %v2)
  %t218 = ptrtoint ptr %t217 to i64
  store i64 %t218, ptr %l68, !tbaa !24
  br label %bb32
bb32:
  %t219 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t221 = extractvalue { i64, ptr } %t219, 1
  %t222 = extractvalue { i64, ptr } %t219, 0
  %t223 = load i64, ptr %l68
  %t224 = inttoptr i64 %t223 to ptr
  %t225 = call ptr @__olang_scope_alloc(ptr %t224, i64 %t222)
  call void @olang_textcopy(ptr %t225, ptr %t221, i64 %t222)
  %t226 = insertvalue { i64, ptr } undef, i64 %t222, 0
  %t227 = insertvalue { i64, ptr } %t226, ptr %t225, 1
  %t229 = load i64, ptr %l68
  %t230 = inttoptr i64 %t229 to ptr
  %t231 = extractvalue { i64, ptr } %t227, 0
  %t232 = extractvalue { i64, ptr } %t227, 1
  %t233 = mul i64 %t231, 1
  %t234 = call ptr @__olang_scope_alloc(ptr %t230, i64 %t233)
  call void @llvm.memcpy.p0.p0.i64(ptr %t234, ptr %t232, i64 %t233, i1 false)
  %t235 = insertvalue { i64, ptr } undef, i64 %t231, 0
  %t236 = insertvalue { i64, ptr } %t235, ptr %t234, 1
  store { i64, ptr } %t236, ptr %l72, !tbaa !27
  %t237 = ptrtoint ptr %v2 to i64
  store i64 %t237, ptr %l73, !tbaa !24
  %t238 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aItem_2e6
  br i1 %t238, label %bb33, label %bb34
bb33:
  %t240 = call ptr @__olang_region_make(ptr %v2)
  %t241 = ptrtoint ptr %t240 to i64
  store i64 %t241, ptr %l73, !tbaa !24
  br label %bb34
bb34:
  %t242 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t244 = extractvalue { i64, ptr } %t242, 1
  %t245 = extractvalue { i64, ptr } %t242, 0
  %t246 = load i64, ptr %l73
  %t247 = inttoptr i64 %t246 to ptr
  %t248 = call ptr @__olang_scope_alloc(ptr %t247, i64 %t245)
  call void @olang_textcopy(ptr %t248, ptr %t244, i64 %t245)
  %t249 = insertvalue { i64, ptr } undef, i64 %t245, 0
  %t250 = insertvalue { i64, ptr } %t249, ptr %t248, 1
  %t252 = load i64, ptr %l73
  %t253 = inttoptr i64 %t252 to ptr
  %t254 = extractvalue { i64, ptr } %t250, 0
  %t255 = extractvalue { i64, ptr } %t250, 1
  %t256 = mul i64 %t254, 1
  %t257 = call ptr @__olang_scope_alloc(ptr %t253, i64 %t256)
  call void @llvm.memcpy.p0.p0.i64(ptr %t257, ptr %t255, i64 %t256, i1 false)
  %t258 = insertvalue { i64, ptr } undef, i64 %t254, 0
  %t259 = insertvalue { i64, ptr } %t258, ptr %t257, 1
  %t260 = load i1, ptr %l67, !tbaa !21
  %t261 = load { i64, ptr }, ptr %l72, !tbaa !27
  %t263 = call %"compiler/diag:Item" @compiler_2fdiag_3aItem_2ector(ptr %v2, ptr %v2, ptr %v2, i1 %t260, { i64, ptr } %t261, i64 -1, i64 -1, i64 -1, i64 0, { i64, ptr } %t259)
  store %"compiler/diag:Item" %t263, ptr %l78
  br label %bb35
bb35:
  %t264 = load %"compiler/diag:Item", ptr %l78
  store %"compiler/diag:Item" %t264, ptr %l10
  br label %bb37
bb36:
  call void @__olang_check_failed(ptr @olang_loc_85c0e204c21dcc64_81dac71c6a103c0)
  unreachable
bb37:
  %t265 = load %"compiler/diag:Item", ptr %l10
  store %"compiler/diag:Item" %t265, ptr %rv
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

define dso_local i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eAddFile(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i64
  %l23 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/diag:Diagnostics", ptr %t1, i32 0, i32 1
  store ptr %t3, ptr %l5, !tbaa !29
  %t4 = ptrtoint ptr %v0 to i64
  store i64 %t4, ptr %l6, !tbaa !24
  %t5 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = call ptr @__olang_region_make(ptr %v0)
  %t8 = ptrtoint ptr %t7 to i64
  store i64 %t8, ptr %l6, !tbaa !24
  br label %bb2
bb2:
  %t11 = extractvalue { i64, ptr } %a1, 1
  %t12 = extractvalue { i64, ptr } %a1, 0
  %t13 = load i64, ptr %l6
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t11, i64 %t12)
  %t16 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t17 = insertvalue { i64, ptr } %t16, ptr %t15, 1
  %t19 = load i64, ptr %l6
  %t20 = inttoptr i64 %t19 to ptr
  %t21 = extractvalue { i64, ptr } %t17, 0
  %t22 = extractvalue { i64, ptr } %t17, 1
  %t23 = mul i64 %t21, 1
  %t24 = call ptr @__olang_scope_alloc(ptr %t20, i64 %t23)
  call void @llvm.memcpy.p0.p0.i64(ptr %t24, ptr %t22, i64 %t23, i1 false)
  %t25 = insertvalue { i64, ptr } undef, i64 %t21, 0
  %t26 = insertvalue { i64, ptr } %t25, ptr %t24, 1
  %t27 = load ptr, ptr %l5, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t27, { i64, ptr } %t26)
  br label %bb3
bb3:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/diag:Diagnostics", ptr %t29, i32 0, i32 2
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v2, ptr %t31, { i64, ptr } %a2)
  br label %bb4
bb4:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/diag:Diagnostics", ptr %t35, i32 0, i32 3
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t37, i1 %a3)
  br label %bb5
bb5:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/diag:Diagnostics", ptr %t41, i32 0, i32 5
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t43, i64 -1)
  br label %bb6
bb6:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/diag:Diagnostics", ptr %t45, i32 0, i32 6
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t47, i64 0)
  br label %bb7
bb7:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/diag:Diagnostics", ptr %t49, i32 0, i32 1
  %t53 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t51)
  store i64 %t53, ptr %l23
  br label %bb8
bb8:
  %t54 = load i64, ptr %l23, !tbaa !24
  %t55 = sub i64 %t54, 1
  store i64 %t55, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eAllSaid(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %lp1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l6 = alloca %"compiler/diag:record"
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
  %l35 = alloca i64
  %l39 = alloca { i64, ptr }
  %l40 = alloca i64
  %l41 = alloca i64
  %l42 = alloca i64
  %l47 = alloca %"compiler/diag:Said"
  %l51 = alloca ptr
  %l52 = alloca i64
  %l56 = alloca { i64, ptr }
  %l57 = alloca i64
  %l58 = alloca i64
  %l63 = alloca %"compiler/diag:Said"
  %l67 = alloca ptr
  %l68 = alloca i64
  %l72 = alloca { i64, ptr }
  %l73 = alloca i64
  %l74 = alloca i64
  %l79 = alloca %"compiler/diag:Said"
  %l80 = alloca ptr
  %l81 = alloca i64
  %l85 = alloca { i64, ptr }
  %l86 = alloca i64
  %l91 = alloca %"compiler/diag:Said"
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
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t2, ptr %lp1
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  %t4 = load ptr, ptr %lp1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  store %olang.scope zeroinitializer, ptr %s1
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2ewritten(ptr %v0, ptr %s1, ptr %t5)
  store { i64, ptr } %t7, ptr %l14
  br label %bb2
bb2:
  %t8 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t8, 0
  %t10 = extractvalue { i64, ptr } %t8, 1
  %t11 = mul i64 %t9, 8
  %t12 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t11)
  call void @llvm.memcpy.p0.p0.i64(ptr %t12, ptr %t10, i64 %t11, i1 false)
  %t13 = insertvalue { i64, ptr } undef, i64 %t9, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr %t12, 1
  store { i64, ptr } %t14, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t16 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t16, 0
  store i64 %t18, ptr %l4, !tbaa !24
  br label %bb3
bb3:
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = load i64, ptr %l4, !tbaa !24
  %t24 = icmp slt i64 %t20, %t21
  %t26 = xor i1 %t24, true
  br i1 %t26, label %bb4, label %bb5
bb4:
  br label %bb50
bb5:
  br label %bb6
bb6:
  %t28 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t28, ptr %l22, !tbaa !27
  %t29 = load i64, ptr %l3, !tbaa !24
  %t31 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = getelementptr i64, ptr %t32, i64 %t29
  %t34 = load i64, ptr %t33, !tbaa !34
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/diag:Diagnostics", ptr %t36, i32 0, i32 7
  %t42 = call %"compiler/diag:record" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2eAt_3ccompiler_2fdiag_3arecord_3e(ptr %v0, ptr %v0, ptr %t38, i64 %t34)
  store %"compiler/diag:record" %t42, ptr %l28
  br label %bb7
bb7:
  %t43 = load %"compiler/diag:record", ptr %l28
  store %"compiler/diag:record" %t43, ptr %l6
  %t44 = getelementptr %"compiler/diag:record", ptr %l6, i32 0, i32 0
  %t45 = load { i64, [3 x i64] }, ptr %t44
  store { i64, [3 x i64] } %t45, ptr %l7
  %t47 = load { i64, [3 x i64] }, ptr %l7
  %t49 = extractvalue { i64, [3 x i64] } %t47, 0
  %t50 = icmp eq i64 %t49, 3
  br i1 %t50, label %bb8, label %bb9
bb8:
  %t52 = getelementptr { i64, [3 x i64] }, ptr %l7, i32 0, i32 1
  %t53 = getelementptr { i64, i64, i64 }, ptr %t52, i32 0, i32 0
  %t54 = load i64, ptr %t53
  store i64 %t54, ptr %l8, !tbaa !24
  %t56 = getelementptr { i64, [3 x i64] }, ptr %l7, i32 0, i32 1
  %t57 = getelementptr { i64, i64, i64 }, ptr %t56, i32 0, i32 1
  %t58 = load i64, ptr %t57
  store i64 %t58, ptr %l9, !tbaa !24
  br label %bb10
bb9:
  br label %bb17
bb10:
  %t60 = load ptr, ptr %lp1
  store ptr %t60, ptr %l34, !tbaa !29
  %t61 = ptrtoint ptr %v1 to i64
  store i64 %t61, ptr %l35, !tbaa !24
  %t62 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aSaid_2e0
  br i1 %t62, label %bb11, label %bb12
bb11:
  %t64 = call ptr @__olang_region_make(ptr %v1)
  %t65 = ptrtoint ptr %t64 to i64
  store i64 %t65, ptr %l35, !tbaa !24
  br label %bb12
bb12:
  %t66 = getelementptr %"compiler/diag:record", ptr %l6, i32 0, i32 1
  %t67 = load { i64, ptr }, ptr %t66, !tbaa !27
  %t69 = extractvalue { i64, ptr } %t67, 1
  %t70 = extractvalue { i64, ptr } %t67, 0
  %t71 = load i64, ptr %l35
  %t72 = inttoptr i64 %t71 to ptr
  %t73 = call ptr @__olang_scope_alloc(ptr %t72, i64 %t70)
  call void @olang_textcopy(ptr %t73, ptr %t69, i64 %t70)
  %t74 = insertvalue { i64, ptr } undef, i64 %t70, 0
  %t75 = insertvalue { i64, ptr } %t74, ptr %t73, 1
  %t77 = load i64, ptr %l35
  %t78 = inttoptr i64 %t77 to ptr
  %t79 = extractvalue { i64, ptr } %t75, 0
  %t80 = extractvalue { i64, ptr } %t75, 1
  %t81 = mul i64 %t79, 1
  %t82 = call ptr @__olang_scope_alloc(ptr %t78, i64 %t81)
  call void @llvm.memcpy.p0.p0.i64(ptr %t82, ptr %t80, i64 %t81, i1 false)
  %t83 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t84 = insertvalue { i64, ptr } %t83, ptr %t82, 1
  store { i64, ptr } %t84, ptr %l39, !tbaa !27
  %t85 = load i64, ptr %l8, !tbaa !24
  store i64 %t85, ptr %l40, !tbaa !24
  %t86 = load i64, ptr %l9, !tbaa !24
  store i64 %t86, ptr %l41, !tbaa !24
  %t87 = ptrtoint ptr %v1 to i64
  store i64 %t87, ptr %l42, !tbaa !24
  %t88 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aSaid_2e3
  br i1 %t88, label %bb13, label %bb14
bb13:
  %t90 = call ptr @__olang_region_make(ptr %v1)
  %t91 = ptrtoint ptr %t90 to i64
  store i64 %t91, ptr %l42, !tbaa !24
  br label %bb14
bb14:
  %t92 = getelementptr %"compiler/diag:record", ptr %l6, i32 0, i32 2
  %t93 = load { i64, ptr }, ptr %t92, !tbaa !27
  %t95 = extractvalue { i64, ptr } %t93, 1
  %t96 = extractvalue { i64, ptr } %t93, 0
  %t97 = load i64, ptr %l42
  %t98 = inttoptr i64 %t97 to ptr
  %t99 = call ptr @__olang_scope_alloc(ptr %t98, i64 %t96)
  call void @olang_textcopy(ptr %t99, ptr %t95, i64 %t96)
  %t100 = insertvalue { i64, ptr } undef, i64 %t96, 0
  %t101 = insertvalue { i64, ptr } %t100, ptr %t99, 1
  %t103 = load i64, ptr %l42
  %t104 = inttoptr i64 %t103 to ptr
  %t105 = extractvalue { i64, ptr } %t101, 0
  %t106 = extractvalue { i64, ptr } %t101, 1
  %t107 = mul i64 %t105, 1
  %t108 = call ptr @__olang_scope_alloc(ptr %t104, i64 %t107)
  call void @llvm.memcpy.p0.p0.i64(ptr %t108, ptr %t106, i64 %t107, i1 false)
  %t109 = insertvalue { i64, ptr } undef, i64 %t105, 0
  %t110 = insertvalue { i64, ptr } %t109, ptr %t108, 1
  %t111 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t112 = load i64, ptr %l40, !tbaa !24
  %t113 = load i64, ptr %l41, !tbaa !24
  %t115 = call %"compiler/diag:Said" @compiler_2fdiag_3aSaid_2ector(ptr %v1, ptr %v1, ptr %v1, { i64, ptr } %t111, i64 %t112, i64 %t113, { i64, ptr } %t110)
  store %"compiler/diag:Said" %t115, ptr %l47
  br label %bb15
bb15:
  %t116 = load ptr, ptr %l34, !tbaa !29
  %t117 = load %"compiler/diag:Said", ptr %l47
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aSaid_3e_2ePush_3ccompiler_2fdiag_3aSaid_3e(ptr %v1, ptr %v1, ptr %t116, %"compiler/diag:Said" %t117)
  br label %bb16
bb16:
  br label %bb48
bb17:
  %t118 = load { i64, [3 x i64] }, ptr %l7
  %t120 = extractvalue { i64, [3 x i64] } %t118, 0
  %t121 = icmp eq i64 %t120, 2
  br i1 %t121, label %bb18, label %bb19
bb18:
  %t123 = getelementptr { i64, [3 x i64] }, ptr %l7, i32 0, i32 1
  %t124 = getelementptr { i64, i64 }, ptr %t123, i32 0, i32 0
  %t125 = load i64, ptr %t124
  store i64 %t125, ptr %l10, !tbaa !24
  br label %bb20
bb19:
  br label %bb27
bb20:
  %t127 = load ptr, ptr %lp1
  store ptr %t127, ptr %l51, !tbaa !29
  %t128 = ptrtoint ptr %v1 to i64
  store i64 %t128, ptr %l52, !tbaa !24
  %t129 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aSaid_2e0
  br i1 %t129, label %bb21, label %bb22
bb21:
  %t131 = call ptr @__olang_region_make(ptr %v1)
  %t132 = ptrtoint ptr %t131 to i64
  store i64 %t132, ptr %l52, !tbaa !24
  br label %bb22
bb22:
  %t133 = getelementptr %"compiler/diag:record", ptr %l6, i32 0, i32 1
  %t134 = load { i64, ptr }, ptr %t133, !tbaa !27
  %t136 = extractvalue { i64, ptr } %t134, 1
  %t137 = extractvalue { i64, ptr } %t134, 0
  %t138 = load i64, ptr %l52
  %t139 = inttoptr i64 %t138 to ptr
  %t140 = call ptr @__olang_scope_alloc(ptr %t139, i64 %t137)
  call void @olang_textcopy(ptr %t140, ptr %t136, i64 %t137)
  %t141 = insertvalue { i64, ptr } undef, i64 %t137, 0
  %t142 = insertvalue { i64, ptr } %t141, ptr %t140, 1
  %t144 = load i64, ptr %l52
  %t145 = inttoptr i64 %t144 to ptr
  %t146 = extractvalue { i64, ptr } %t142, 0
  %t147 = extractvalue { i64, ptr } %t142, 1
  %t148 = mul i64 %t146, 1
  %t149 = call ptr @__olang_scope_alloc(ptr %t145, i64 %t148)
  call void @llvm.memcpy.p0.p0.i64(ptr %t149, ptr %t147, i64 %t148, i1 false)
  %t150 = insertvalue { i64, ptr } undef, i64 %t146, 0
  %t151 = insertvalue { i64, ptr } %t150, ptr %t149, 1
  store { i64, ptr } %t151, ptr %l56, !tbaa !27
  %t152 = load i64, ptr %l10, !tbaa !24
  store i64 %t152, ptr %l57, !tbaa !24
  %t153 = ptrtoint ptr %v1 to i64
  store i64 %t153, ptr %l58, !tbaa !24
  %t154 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aSaid_2e3
  br i1 %t154, label %bb23, label %bb24
bb23:
  %t156 = call ptr @__olang_region_make(ptr %v1)
  %t157 = ptrtoint ptr %t156 to i64
  store i64 %t157, ptr %l58, !tbaa !24
  br label %bb24
bb24:
  %t158 = getelementptr %"compiler/diag:record", ptr %l6, i32 0, i32 2
  %t159 = load { i64, ptr }, ptr %t158, !tbaa !27
  %t161 = extractvalue { i64, ptr } %t159, 1
  %t162 = extractvalue { i64, ptr } %t159, 0
  %t163 = load i64, ptr %l58
  %t164 = inttoptr i64 %t163 to ptr
  %t165 = call ptr @__olang_scope_alloc(ptr %t164, i64 %t162)
  call void @olang_textcopy(ptr %t165, ptr %t161, i64 %t162)
  %t166 = insertvalue { i64, ptr } undef, i64 %t162, 0
  %t167 = insertvalue { i64, ptr } %t166, ptr %t165, 1
  %t169 = load i64, ptr %l58
  %t170 = inttoptr i64 %t169 to ptr
  %t171 = extractvalue { i64, ptr } %t167, 0
  %t172 = extractvalue { i64, ptr } %t167, 1
  %t173 = mul i64 %t171, 1
  %t174 = call ptr @__olang_scope_alloc(ptr %t170, i64 %t173)
  call void @llvm.memcpy.p0.p0.i64(ptr %t174, ptr %t172, i64 %t173, i1 false)
  %t175 = insertvalue { i64, ptr } undef, i64 %t171, 0
  %t176 = insertvalue { i64, ptr } %t175, ptr %t174, 1
  %t177 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t178 = load i64, ptr %l57, !tbaa !24
  %t180 = call %"compiler/diag:Said" @compiler_2fdiag_3aSaid_2ector(ptr %v1, ptr %v1, ptr %v1, { i64, ptr } %t177, i64 %t178, i64 -1, { i64, ptr } %t176)
  store %"compiler/diag:Said" %t180, ptr %l63
  br label %bb25
bb25:
  %t181 = load ptr, ptr %l51, !tbaa !29
  %t182 = load %"compiler/diag:Said", ptr %l63
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aSaid_3e_2ePush_3ccompiler_2fdiag_3aSaid_3e(ptr %v1, ptr %v1, ptr %t181, %"compiler/diag:Said" %t182)
  br label %bb26
bb26:
  br label %bb48
bb27:
  %t183 = load { i64, [3 x i64] }, ptr %l7
  %t185 = extractvalue { i64, [3 x i64] } %t183, 0
  %t186 = icmp eq i64 %t185, 1
  br i1 %t186, label %bb28, label %bb29
bb28:
  %t188 = getelementptr { i64, [3 x i64] }, ptr %l7, i32 0, i32 1
  %t189 = getelementptr { i64 }, ptr %t188, i32 0, i32 0
  %t190 = load i64, ptr %t189
  store i64 %t190, ptr %l11, !tbaa !24
  br label %bb30
bb29:
  br label %bb37
bb30:
  %t192 = load ptr, ptr %lp1
  store ptr %t192, ptr %l67, !tbaa !29
  %t193 = ptrtoint ptr %v1 to i64
  store i64 %t193, ptr %l68, !tbaa !24
  %t194 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aSaid_2e0
  br i1 %t194, label %bb31, label %bb32
bb31:
  %t196 = call ptr @__olang_region_make(ptr %v1)
  %t197 = ptrtoint ptr %t196 to i64
  store i64 %t197, ptr %l68, !tbaa !24
  br label %bb32
bb32:
  %t198 = getelementptr %"compiler/diag:record", ptr %l6, i32 0, i32 1
  %t199 = load { i64, ptr }, ptr %t198, !tbaa !27
  %t201 = extractvalue { i64, ptr } %t199, 1
  %t202 = extractvalue { i64, ptr } %t199, 0
  %t203 = load i64, ptr %l68
  %t204 = inttoptr i64 %t203 to ptr
  %t205 = call ptr @__olang_scope_alloc(ptr %t204, i64 %t202)
  call void @olang_textcopy(ptr %t205, ptr %t201, i64 %t202)
  %t206 = insertvalue { i64, ptr } undef, i64 %t202, 0
  %t207 = insertvalue { i64, ptr } %t206, ptr %t205, 1
  %t209 = load i64, ptr %l68
  %t210 = inttoptr i64 %t209 to ptr
  %t211 = extractvalue { i64, ptr } %t207, 0
  %t212 = extractvalue { i64, ptr } %t207, 1
  %t213 = mul i64 %t211, 1
  %t214 = call ptr @__olang_scope_alloc(ptr %t210, i64 %t213)
  call void @llvm.memcpy.p0.p0.i64(ptr %t214, ptr %t212, i64 %t213, i1 false)
  %t215 = insertvalue { i64, ptr } undef, i64 %t211, 0
  %t216 = insertvalue { i64, ptr } %t215, ptr %t214, 1
  store { i64, ptr } %t216, ptr %l72, !tbaa !27
  %t217 = load i64, ptr %l11, !tbaa !24
  store i64 %t217, ptr %l73, !tbaa !24
  %t218 = ptrtoint ptr %v1 to i64
  store i64 %t218, ptr %l74, !tbaa !24
  %t219 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aSaid_2e3
  br i1 %t219, label %bb33, label %bb34
bb33:
  %t221 = call ptr @__olang_region_make(ptr %v1)
  %t222 = ptrtoint ptr %t221 to i64
  store i64 %t222, ptr %l74, !tbaa !24
  br label %bb34
bb34:
  %t223 = getelementptr %"compiler/diag:record", ptr %l6, i32 0, i32 2
  %t224 = load { i64, ptr }, ptr %t223, !tbaa !27
  %t226 = extractvalue { i64, ptr } %t224, 1
  %t227 = extractvalue { i64, ptr } %t224, 0
  %t228 = load i64, ptr %l74
  %t229 = inttoptr i64 %t228 to ptr
  %t230 = call ptr @__olang_scope_alloc(ptr %t229, i64 %t227)
  call void @olang_textcopy(ptr %t230, ptr %t226, i64 %t227)
  %t231 = insertvalue { i64, ptr } undef, i64 %t227, 0
  %t232 = insertvalue { i64, ptr } %t231, ptr %t230, 1
  %t234 = load i64, ptr %l74
  %t235 = inttoptr i64 %t234 to ptr
  %t236 = extractvalue { i64, ptr } %t232, 0
  %t237 = extractvalue { i64, ptr } %t232, 1
  %t238 = mul i64 %t236, 1
  %t239 = call ptr @__olang_scope_alloc(ptr %t235, i64 %t238)
  call void @llvm.memcpy.p0.p0.i64(ptr %t239, ptr %t237, i64 %t238, i1 false)
  %t240 = insertvalue { i64, ptr } undef, i64 %t236, 0
  %t241 = insertvalue { i64, ptr } %t240, ptr %t239, 1
  %t242 = load { i64, ptr }, ptr %l72, !tbaa !27
  %t243 = load i64, ptr %l73, !tbaa !24
  %t245 = call %"compiler/diag:Said" @compiler_2fdiag_3aSaid_2ector(ptr %v1, ptr %v1, ptr %v1, { i64, ptr } %t242, i64 %t243, i64 -1, { i64, ptr } %t241)
  store %"compiler/diag:Said" %t245, ptr %l79
  br label %bb35
bb35:
  %t246 = load ptr, ptr %l67, !tbaa !29
  %t247 = load %"compiler/diag:Said", ptr %l79
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aSaid_3e_2ePush_3ccompiler_2fdiag_3aSaid_3e(ptr %v1, ptr %v1, ptr %t246, %"compiler/diag:Said" %t247)
  br label %bb36
bb36:
  br label %bb48
bb37:
  br i1 true, label %bb38, label %bb39
bb38:
  br label %bb40
bb39:
  br label %bb47
bb40:
  %t248 = load ptr, ptr %lp1
  store ptr %t248, ptr %l80, !tbaa !29
  %t249 = ptrtoint ptr %v1 to i64
  store i64 %t249, ptr %l81, !tbaa !24
  %t250 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aSaid_2e0
  br i1 %t250, label %bb41, label %bb42
bb41:
  %t252 = call ptr @__olang_region_make(ptr %v1)
  %t253 = ptrtoint ptr %t252 to i64
  store i64 %t253, ptr %l81, !tbaa !24
  br label %bb42
bb42:
  %t254 = getelementptr %"compiler/diag:record", ptr %l6, i32 0, i32 1
  %t255 = load { i64, ptr }, ptr %t254, !tbaa !27
  %t257 = extractvalue { i64, ptr } %t255, 1
  %t258 = extractvalue { i64, ptr } %t255, 0
  %t259 = load i64, ptr %l81
  %t260 = inttoptr i64 %t259 to ptr
  %t261 = call ptr @__olang_scope_alloc(ptr %t260, i64 %t258)
  call void @olang_textcopy(ptr %t261, ptr %t257, i64 %t258)
  %t262 = insertvalue { i64, ptr } undef, i64 %t258, 0
  %t263 = insertvalue { i64, ptr } %t262, ptr %t261, 1
  %t265 = load i64, ptr %l81
  %t266 = inttoptr i64 %t265 to ptr
  %t267 = extractvalue { i64, ptr } %t263, 0
  %t268 = extractvalue { i64, ptr } %t263, 1
  %t269 = mul i64 %t267, 1
  %t270 = call ptr @__olang_scope_alloc(ptr %t266, i64 %t269)
  call void @llvm.memcpy.p0.p0.i64(ptr %t270, ptr %t268, i64 %t269, i1 false)
  %t271 = insertvalue { i64, ptr } undef, i64 %t267, 0
  %t272 = insertvalue { i64, ptr } %t271, ptr %t270, 1
  store { i64, ptr } %t272, ptr %l85, !tbaa !27
  %t273 = ptrtoint ptr %v1 to i64
  store i64 %t273, ptr %l86, !tbaa !24
  %t274 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aSaid_2e3
  br i1 %t274, label %bb43, label %bb44
bb43:
  %t276 = call ptr @__olang_region_make(ptr %v1)
  %t277 = ptrtoint ptr %t276 to i64
  store i64 %t277, ptr %l86, !tbaa !24
  br label %bb44
bb44:
  %t278 = getelementptr %"compiler/diag:record", ptr %l6, i32 0, i32 2
  %t279 = load { i64, ptr }, ptr %t278, !tbaa !27
  %t281 = extractvalue { i64, ptr } %t279, 1
  %t282 = extractvalue { i64, ptr } %t279, 0
  %t283 = load i64, ptr %l86
  %t284 = inttoptr i64 %t283 to ptr
  %t285 = call ptr @__olang_scope_alloc(ptr %t284, i64 %t282)
  call void @olang_textcopy(ptr %t285, ptr %t281, i64 %t282)
  %t286 = insertvalue { i64, ptr } undef, i64 %t282, 0
  %t287 = insertvalue { i64, ptr } %t286, ptr %t285, 1
  %t289 = load i64, ptr %l86
  %t290 = inttoptr i64 %t289 to ptr
  %t291 = extractvalue { i64, ptr } %t287, 0
  %t292 = extractvalue { i64, ptr } %t287, 1
  %t293 = mul i64 %t291, 1
  %t294 = call ptr @__olang_scope_alloc(ptr %t290, i64 %t293)
  call void @llvm.memcpy.p0.p0.i64(ptr %t294, ptr %t292, i64 %t293, i1 false)
  %t295 = insertvalue { i64, ptr } undef, i64 %t291, 0
  %t296 = insertvalue { i64, ptr } %t295, ptr %t294, 1
  %t297 = load { i64, ptr }, ptr %l85, !tbaa !27
  %t299 = call %"compiler/diag:Said" @compiler_2fdiag_3aSaid_2ector(ptr %v1, ptr %v1, ptr %v1, { i64, ptr } %t297, i64 -1, i64 -1, { i64, ptr } %t296)
  store %"compiler/diag:Said" %t299, ptr %l91
  br label %bb45
bb45:
  %t300 = load ptr, ptr %l80, !tbaa !29
  %t301 = load %"compiler/diag:Said", ptr %l91
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aSaid_3e_2ePush_3ccompiler_2fdiag_3aSaid_3e(ptr %v1, ptr %v1, ptr %t300, %"compiler/diag:Said" %t301)
  br label %bb46
bb46:
  br label %bb48
bb47:
  call void @__olang_check_failed(ptr @olang_loc_a84e229f70f1f256_25addd6a15e39b7a)
  unreachable
bb48:
  br label %bb49
bb49:
  %t302 = load i64, ptr %l3, !tbaa !24
  %t304 = add i64 %t302, 1
  store i64 %t304, ptr %l3, !tbaa !24
  br label %bb3
bb50:
  call void @__olang_scope_close(ptr %s1)
  %t306 = load ptr, ptr %lp1
  %t307 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t306
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t307, ptr %rv
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
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/diag:Diagnostics", ptr %t9, i32 0, i32 17
  %t12 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t11, i64 %t12)
  br label %bb2
bb2:
  %t15 = load i64, ptr %l3, !tbaa !24
  store i64 %t15, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorBare(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/diagmsg:Msg"
  %l3 = alloca i64
  %l9 = alloca i64
  %l11 = alloca i64
  %l13 = alloca ptr
  %l16 = alloca i64
  %l18 = alloca i64
  %l20 = alloca ptr
  %l21 = alloca { i64, [3 x i64] }
  %l22 = alloca i64
  %l26 = alloca { i64, ptr }
  %l27 = alloca i64
  %l34 = alloca %"compiler/diag:record"
  %l37 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store %"compiler/diagmsg:Msg" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/diag:Diagnostics", ptr %t1, i32 0, i32 22
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
  store i64 %t29, ptr %l3, !tbaa !24
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/diag:Diagnostics", ptr %t30, i32 0, i32 7
  store ptr %t32, ptr %l20, !tbaa !29
  store { i64, [3 x i64] } %a1, ptr %l21
  %t34 = ptrtoint ptr %v0 to i64
  store i64 %t34, ptr %l22, !tbaa !24
  %t35 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3arecord_2e1
  br i1 %t35, label %bb10, label %bb11
bb10:
  %t37 = call ptr @__olang_region_make(ptr %v0)
  %t38 = ptrtoint ptr %t37 to i64
  store i64 %t38, ptr %l22, !tbaa !24
  br label %bb11
bb11:
  %t39 = getelementptr %"compiler/diagmsg:Msg", ptr %l2, i32 0, i32 1
  %t40 = load { i64, ptr }, ptr %t39, !tbaa !27
  %t42 = extractvalue { i64, ptr } %t40, 1
  %t43 = extractvalue { i64, ptr } %t40, 0
  %t44 = load i64, ptr %l22
  %t45 = inttoptr i64 %t44 to ptr
  %t46 = call ptr @__olang_scope_alloc(ptr %t45, i64 %t43)
  call void @olang_textcopy(ptr %t46, ptr %t42, i64 %t43)
  %t47 = insertvalue { i64, ptr } undef, i64 %t43, 0
  %t48 = insertvalue { i64, ptr } %t47, ptr %t46, 1
  %t50 = load i64, ptr %l22
  %t51 = inttoptr i64 %t50 to ptr
  %t52 = extractvalue { i64, ptr } %t48, 0
  %t53 = extractvalue { i64, ptr } %t48, 1
  %t54 = mul i64 %t52, 1
  %t55 = call ptr @__olang_scope_alloc(ptr %t51, i64 %t54)
  call void @llvm.memcpy.p0.p0.i64(ptr %t55, ptr %t53, i64 %t54, i1 false)
  %t56 = insertvalue { i64, ptr } undef, i64 %t52, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t55, 1
  store { i64, ptr } %t57, ptr %l26, !tbaa !27
  %t58 = ptrtoint ptr %v0 to i64
  store i64 %t58, ptr %l27, !tbaa !24
  %t59 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3arecord_2e2
  br i1 %t59, label %bb12, label %bb13
bb12:
  %t61 = call ptr @__olang_region_make(ptr %v0)
  %t62 = ptrtoint ptr %t61 to i64
  store i64 %t62, ptr %l27, !tbaa !24
  br label %bb13
bb13:
  %t63 = getelementptr %"compiler/diagmsg:Msg", ptr %l2, i32 0, i32 2
  %t64 = load { i64, ptr }, ptr %t63, !tbaa !27
  %t66 = extractvalue { i64, ptr } %t64, 1
  %t67 = extractvalue { i64, ptr } %t64, 0
  %t68 = load i64, ptr %l27
  %t69 = inttoptr i64 %t68 to ptr
  %t70 = call ptr @__olang_scope_alloc(ptr %t69, i64 %t67)
  call void @olang_textcopy(ptr %t70, ptr %t66, i64 %t67)
  %t71 = insertvalue { i64, ptr } undef, i64 %t67, 0
  %t72 = insertvalue { i64, ptr } %t71, ptr %t70, 1
  %t74 = load i64, ptr %l27
  %t75 = inttoptr i64 %t74 to ptr
  %t76 = extractvalue { i64, ptr } %t72, 0
  %t77 = extractvalue { i64, ptr } %t72, 1
  %t78 = mul i64 %t76, 1
  %t79 = call ptr @__olang_scope_alloc(ptr %t75, i64 %t78)
  call void @llvm.memcpy.p0.p0.i64(ptr %t79, ptr %t77, i64 %t78, i1 false)
  %t80 = insertvalue { i64, ptr } undef, i64 %t76, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t79, 1
  %t82 = getelementptr %"compiler/diagmsg:Msg", ptr %l2, i32 0, i32 0
  %t83 = load i32, ptr %t82, !range !{i32 0, i32 884}
  %t84 = load i64, ptr %l3, !tbaa !24
  %t85 = load { i64, [3 x i64] }, ptr %l21
  %t86 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t90 = call %"compiler/diag:record" @compiler_2fdiag_3arecord_2ector(ptr %v0, ptr %v0, ptr %v0, { i64, [3 x i64] } %t85, { i64, ptr } %t86, { i64, ptr } %t81, i32 %t83, i64 %t84, i1 false)
  store %"compiler/diag:record" %t90, ptr %l34
  br label %bb14
bb14:
  %t91 = load ptr, ptr %l20, !tbaa !29
  %t92 = load %"compiler/diag:record", ptr %l34
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2ePush_3ccompiler_2fdiag_3arecord_3e(ptr %v0, ptr %v0, ptr %t91, %"compiler/diag:record" %t92)
  br label %bb15
bb15:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/diag:Diagnostics", ptr %t93, i32 0, i32 7
  %t97 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2eLen_3ccompiler_2fdiag_3arecord_3e(ptr %v0, ptr %t95)
  store i64 %t97, ptr %l37
  br label %bb16
bb16:
  %t98 = load i64, ptr %l37, !tbaa !24
  %t99 = sub i64 %t98, 1
  store i64 %t99, ptr %rv
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
  %t8 = getelementptr %"compiler/diag:Diagnostics", ptr %t6, i32 0, i32 21
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
  %l7 = alloca i64
  %l12 = alloca { i64, ptr }
  %l14 = alloca ptr
  %l15 = alloca i64
  %l20 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store %"compiler/diagmsg:Msg" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/diag:Diagnostics", ptr %t1, i32 0, i32 21
  store i1 true, ptr %t3, !tbaa !21
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/diag:Diagnostics", ptr %t4, i32 0, i32 18
  store { i64, [3 x i64] } %a1, ptr %t8
  %t9 = load ptr, ptr %l0, !tbaa !29
  store ptr %t9, ptr %l6, !tbaa !29
  %t10 = ptrtoint ptr %v0 to i64
  store i64 %t10, ptr %l7, !tbaa !24
  %t11 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e19
  br i1 %t11, label %bb1, label %bb2
bb1:
  %t13 = call ptr @__olang_region_make(ptr %v0)
  %t14 = ptrtoint ptr %t13 to i64
  store i64 %t14, ptr %l7, !tbaa !24
  br label %bb2
bb2:
  %t15 = getelementptr %"compiler/diagmsg:Msg", ptr %l2, i32 0, i32 1
  %t16 = load { i64, ptr }, ptr %t15, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t16, 1
  %t19 = extractvalue { i64, ptr } %t16, 0
  %t20 = load i64, ptr %l7
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t19)
  call void @olang_textcopy(ptr %t22, ptr %t18, i64 %t19)
  %t23 = insertvalue { i64, ptr } undef, i64 %t19, 0
  %t24 = insertvalue { i64, ptr } %t23, ptr %t22, 1
  %t26 = load i64, ptr %l7
  %t27 = inttoptr i64 %t26 to ptr
  %t28 = extractvalue { i64, ptr } %t24, 0
  %t29 = extractvalue { i64, ptr } %t24, 1
  %t30 = mul i64 %t28, 1
  %t31 = call ptr @__olang_scope_alloc(ptr %t27, i64 %t30)
  call void @llvm.memcpy.p0.p0.i64(ptr %t31, ptr %t29, i64 %t30, i1 false)
  %t32 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t33 = insertvalue { i64, ptr } %t32, ptr %t31, 1
  %t34 = load ptr, ptr %l6, !tbaa !29
  %t35 = getelementptr %"compiler/diag:Diagnostics", ptr %t34, i32 0, i32 19
  %t36 = load { i64, ptr }, ptr %t35, !tbaa !27
  store { i64, ptr } %t36, ptr %l12, !tbaa !27
  %t38 = load ptr, ptr %l6, !tbaa !29
  %t39 = getelementptr %"compiler/diag:Diagnostics", ptr %t38, i32 0, i32 19
  store { i64, ptr } %t33, ptr %t39, !tbaa !27
  %t40 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e19
  br i1 %t40, label %bb3, label %bb4
bb3:
  %t42 = load { i64, ptr }, ptr %l12
  %t43 = extractvalue { i64, ptr } %t42, 1
  call void @__olang_region_release(ptr %t43)
  store { i64, ptr } zeroinitializer, ptr %l12
  br label %bb4
bb4:
  %t44 = load ptr, ptr %l0, !tbaa !29
  store ptr %t44, ptr %l14, !tbaa !29
  %t45 = ptrtoint ptr %v0 to i64
  store i64 %t45, ptr %l15, !tbaa !24
  %t46 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e20
  br i1 %t46, label %bb5, label %bb6
bb5:
  %t48 = call ptr @__olang_region_make(ptr %v0)
  %t49 = ptrtoint ptr %t48 to i64
  store i64 %t49, ptr %l15, !tbaa !24
  br label %bb6
bb6:
  %t50 = getelementptr %"compiler/diagmsg:Msg", ptr %l2, i32 0, i32 2
  %t51 = load { i64, ptr }, ptr %t50, !tbaa !27
  %t53 = extractvalue { i64, ptr } %t51, 1
  %t54 = extractvalue { i64, ptr } %t51, 0
  %t55 = load i64, ptr %l15
  %t56 = inttoptr i64 %t55 to ptr
  %t57 = call ptr @__olang_scope_alloc(ptr %t56, i64 %t54)
  call void @olang_textcopy(ptr %t57, ptr %t53, i64 %t54)
  %t58 = insertvalue { i64, ptr } undef, i64 %t54, 0
  %t59 = insertvalue { i64, ptr } %t58, ptr %t57, 1
  %t61 = load i64, ptr %l15
  %t62 = inttoptr i64 %t61 to ptr
  %t63 = extractvalue { i64, ptr } %t59, 0
  %t64 = extractvalue { i64, ptr } %t59, 1
  %t65 = mul i64 %t63, 1
  %t66 = call ptr @__olang_scope_alloc(ptr %t62, i64 %t65)
  call void @llvm.memcpy.p0.p0.i64(ptr %t66, ptr %t64, i64 %t65, i1 false)
  %t67 = insertvalue { i64, ptr } undef, i64 %t63, 0
  %t68 = insertvalue { i64, ptr } %t67, ptr %t66, 1
  %t69 = load ptr, ptr %l14, !tbaa !29
  %t70 = getelementptr %"compiler/diag:Diagnostics", ptr %t69, i32 0, i32 20
  %t71 = load { i64, ptr }, ptr %t70, !tbaa !27
  store { i64, ptr } %t71, ptr %l20, !tbaa !27
  %t73 = load ptr, ptr %l14, !tbaa !29
  %t74 = getelementptr %"compiler/diag:Diagnostics", ptr %t73, i32 0, i32 20
  store { i64, ptr } %t68, ptr %t74, !tbaa !27
  %t75 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e20
  br i1 %t75, label %bb7, label %bb8
bb7:
  %t77 = load { i64, ptr }, ptr %l20
  %t78 = extractvalue { i64, ptr } %t77, 1
  call void @__olang_region_release(ptr %t78)
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
  %t3 = getelementptr %"compiler/diag:Diagnostics", ptr %a0, i32 0, i32 21
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
  %lp1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca %"compiler/diag:record"
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca %"compiler/diag:note"
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l26 = alloca %"compiler/diag:record"
  %l27 = alloca ptr
  %l31 = alloca %"compiler/diag:Item"
  %l34 = alloca i64
  %l36 = alloca i64
  %l41 = alloca %"compiler/diag:note"
  %l45 = alloca ptr
  %l48 = alloca %"compiler/diag:Item"
  %l55 = alloca ptr
  %l62 = alloca %"compiler/diag:Item"
  %s1 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aItem_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l10
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t2, ptr %lp1
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10
  %t4 = load ptr, ptr %lp1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  store %olang.scope zeroinitializer, ptr %s1
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2ewritten(ptr %v0, ptr %s1, ptr %t5)
  store { i64, ptr } %t7, ptr %l12
  br label %bb2
bb2:
  %t8 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t8, 0
  %t10 = extractvalue { i64, ptr } %t8, 1
  %t11 = mul i64 %t9, 8
  %t12 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t11)
  call void @llvm.memcpy.p0.p0.i64(ptr %t12, ptr %t10, i64 %t11, i1 false)
  %t13 = insertvalue { i64, ptr } undef, i64 %t9, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr %t12, 1
  store { i64, ptr } %t14, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t16 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t16, 0
  store i64 %t18, ptr %l4, !tbaa !24
  br label %bb3
bb3:
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = load i64, ptr %l4, !tbaa !24
  %t24 = icmp slt i64 %t20, %t21
  %t26 = xor i1 %t24, true
  br i1 %t26, label %bb4, label %bb5
bb4:
  br label %bb24
bb5:
  br label %bb6
bb6:
  %t28 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t28, ptr %l20, !tbaa !27
  %t29 = load i64, ptr %l3, !tbaa !24
  %t31 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = getelementptr i64, ptr %t32, i64 %t29
  %t34 = load i64, ptr %t33, !tbaa !34
  store i64 %t34, ptr %l5, !tbaa !24
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/diag:Diagnostics", ptr %t36, i32 0, i32 7
  %t39 = load i64, ptr %l5, !tbaa !24
  %t42 = call %"compiler/diag:record" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2eAt_3ccompiler_2fdiag_3arecord_3e(ptr %v0, ptr %v0, ptr %t38, i64 %t39)
  store %"compiler/diag:record" %t42, ptr %l26
  br label %bb7
bb7:
  %t43 = load %"compiler/diag:record", ptr %l26
  store %"compiler/diag:record" %t43, ptr %l6
  %t44 = load ptr, ptr %lp1
  store ptr %t44, ptr %l27, !tbaa !29
  %t45 = getelementptr %"compiler/diag:record", ptr %l6, i32 0, i32 1
  %t46 = load { i64, ptr }, ptr %t45, !tbaa !27
  %t47 = getelementptr %"compiler/diag:record", ptr %l6, i32 0, i32 0
  %t48 = load { i64, [3 x i64] }, ptr %t47
  %t49 = getelementptr %"compiler/diag:record", ptr %l6, i32 0, i32 2
  %t50 = load { i64, ptr }, ptr %t49, !tbaa !27
  %t54 = call %"compiler/diag:Item" @compiler_2fdiag_2eItem_2eitem(ptr %v0, ptr %v0, ptr %v1, i1 true, { i64, ptr } %t46, { i64, [3 x i64] } %t48, { i64, ptr } %t50)
  store %"compiler/diag:Item" %t54, ptr %l31
  br label %bb8
bb8:
  %t55 = load ptr, ptr %l27, !tbaa !29
  %t56 = load %"compiler/diag:Item", ptr %l31
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aItem_3e_2ePush_3ccompiler_2fdiag_3aItem_3e(ptr %v1, ptr %v1, ptr %t55, %"compiler/diag:Item" %t56)
  br label %bb9
bb9:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/diag:Diagnostics", ptr %t57, i32 0, i32 8
  store ptr %t59, ptr %l7, !tbaa !29
  store i64 0, ptr %l8, !tbaa !24
  br label %bb10
bb10:
  %t61 = load i64, ptr %l8, !tbaa !24
  store i64 %t61, ptr %l34, !tbaa !24
  %t62 = load ptr, ptr %l7, !tbaa !29
  %t64 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3anote_3e_2eLen_3ccompiler_2fdiag_3anote_3e(ptr %v0, ptr %t62)
  store i64 %t64, ptr %l36
  br label %bb11
bb11:
  %t65 = load i64, ptr %l34, !tbaa !24
  %t66 = load i64, ptr %l36, !tbaa !24
  %t67 = icmp slt i64 %t65, %t66
  %t69 = xor i1 %t67, true
  br i1 %t69, label %bb12, label %bb13
bb12:
  br label %bb22
bb13:
  br label %bb14
bb14:
  %t71 = load ptr, ptr %l7, !tbaa !29
  %t72 = load i64, ptr %l8, !tbaa !24
  %t75 = call %"compiler/diag:note" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3anote_3e_2eAt_3ccompiler_2fdiag_3anote_3e(ptr %v0, ptr %v0, ptr %t71, i64 %t72)
  store %"compiler/diag:note" %t75, ptr %l41
  br label %bb15
bb15:
  %t76 = load %"compiler/diag:note", ptr %l41
  store %"compiler/diag:note" %t76, ptr %l9
  %t77 = getelementptr %"compiler/diag:note", ptr %l9, i32 0, i32 0
  %t78 = load i64, ptr %t77, !tbaa !24
  %t79 = load i64, ptr %l5, !tbaa !24
  %t82 = icmp eq i64 %t78, %t79
  br i1 %t82, label %bb16, label %bb17
bb16:
  %t84 = load ptr, ptr %lp1
  store ptr %t84, ptr %l45, !tbaa !29
  %t85 = getelementptr %"compiler/diag:note", ptr %l9, i32 0, i32 1
  %t86 = load { i64, [3 x i64] }, ptr %t85
  %t87 = getelementptr %"compiler/diag:note", ptr %l9, i32 0, i32 2
  %t88 = load { i64, ptr }, ptr %t87, !tbaa !27
  %t91 = call %"compiler/diag:Item" @compiler_2fdiag_2eItem_2eitem(ptr %v1, ptr %v0, ptr %v1, i1 false, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d7, i32 0, i32 1) }, { i64, [3 x i64] } %t86, { i64, ptr } %t88)
  store %"compiler/diag:Item" %t91, ptr %l48
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t92 = load ptr, ptr %l45, !tbaa !29
  %t93 = load %"compiler/diag:Item", ptr %l48
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aItem_3e_2ePush_3ccompiler_2fdiag_3aItem_3e(ptr %v1, ptr %v1, ptr %t92, %"compiler/diag:Item" %t93)
  br label %bb19
bb19:
  br label %bb20
bb20:
  br label %bb21
bb21:
  %t94 = load i64, ptr %l8, !tbaa !24
  %t96 = add i64 %t94, 1
  store i64 %t96, ptr %l8, !tbaa !24
  br label %bb10
bb22:
  br label %bb23
bb23:
  %t98 = load i64, ptr %l3, !tbaa !24
  %t100 = add i64 %t98, 1
  store i64 %t100, ptr %l3, !tbaa !24
  br label %bb3
bb24:
  call void @__olang_scope_close(ptr %s1)
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/diag:Diagnostics", ptr %t102, i32 0, i32 21
  %t105 = load i1, ptr %t104, !tbaa !21
  br i1 %t105, label %bb25, label %bb26
bb25:
  %t107 = load ptr, ptr %lp1
  store ptr %t107, ptr %l55, !tbaa !29
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/diag:Diagnostics", ptr %t108, i32 0, i32 19
  %t111 = load { i64, ptr }, ptr %t110, !tbaa !27
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"compiler/diag:Diagnostics", ptr %t112, i32 0, i32 18
  %t115 = load { i64, [3 x i64] }, ptr %t114
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t118 = getelementptr %"compiler/diag:Diagnostics", ptr %t116, i32 0, i32 20
  %t119 = load { i64, ptr }, ptr %t118, !tbaa !27
  %t123 = call %"compiler/diag:Item" @compiler_2fdiag_2eItem_2eitem(ptr %v0, ptr %v0, ptr %v1, i1 true, { i64, ptr } %t111, { i64, [3 x i64] } %t115, { i64, ptr } %t119)
  store %"compiler/diag:Item" %t123, ptr %l62
  br label %bb27
bb26:
  br label %bb29
bb27:
  %t124 = load ptr, ptr %l55, !tbaa !29
  %t125 = load %"compiler/diag:Item", ptr %l62
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aItem_3e_2ePush_3ccompiler_2fdiag_3aItem_3e(ptr %v1, ptr %v1, ptr %t124, %"compiler/diag:Item" %t125)
  br label %bb28
bb28:
  br label %bb29
bb29:
  %t126 = load ptr, ptr %lp1
  %t127 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t126
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t127, ptr %rv
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
  %l4 = alloca i64
  %l5 = alloca i64
  %l8 = alloca i1
  %l9 = alloca i64
  %l12 = alloca i64
  %l14 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca { i64, ptr }
  %l21 = alloca { i64, i64 }
  %l27 = alloca { i64, ptr }
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
  store i1 true, ptr %l8, !tbaa !21
  br label %bb4
bb2:
  %t5 = load i64, ptr %l1, !tbaa !24
  store i64 %t5, ptr %l9, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/diag:Diagnostics", ptr %t6, i32 0, i32 1
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l12
  br label %bb3
bb3:
  %t11 = load i64, ptr %l9, !tbaa !24
  %t12 = load i64, ptr %l12, !tbaa !24
  %t13 = icmp sge i64 %t11, %t12
  store i1 %t13, ptr %l8, !tbaa !21
  br label %bb4
bb4:
  %t15 = load i1, ptr %l8, !tbaa !21
  br i1 %t15, label %bb5, label %bb6
bb5:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d8, i32 0, i32 1) }, ptr %l14, !tbaa !27
  %t16 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t16, ptr %l15, !tbaa !27
  %t17 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t17, 0
  store i64 %t18, ptr %l16, !tbaa !24
  %t19 = load i64, ptr %l16, !tbaa !24
  %t20 = mul i64 %t19, 1
  %t21 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t20)
  %t22 = insertvalue { i64, ptr } undef, i64 %t19, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t21, 1
  store { i64, ptr } %t23, ptr %l17, !tbaa !27
  %t24 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = load i64, ptr %l16, !tbaa !24
  %t29 = mul i64 %t28, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t25, ptr %t27, i64 %t29, i1 false)
  %t30 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t30, ptr %l15, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t31 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t31, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load i64, ptr %l1, !tbaa !24
  %t34 = load i64, ptr %l2, !tbaa !24
  %t38 = call { i64, i64 } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2elineOf(ptr %v0, ptr %t32, i64 %t33, i64 %t34)
  store { i64, i64 } %t38, ptr %l21
  br label %bb8
bb8:
  %t39 = load { i64, i64 }, ptr %l21
  store { i64, i64 } %t39, ptr %l3
  %t40 = getelementptr { i64, i64 }, ptr %l3, i32 0, i32 0
  %t41 = load i64, ptr %t40, !tbaa !24
  store i64 %t41, ptr %l4, !tbaa !24
  %t43 = getelementptr { i64, i64 }, ptr %l3, i32 0, i32 1
  %t44 = load i64, ptr %t43, !tbaa !24
  store i64 %t44, ptr %l5, !tbaa !24
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/diag:Diagnostics", ptr %t46, i32 0, i32 1
  %t49 = load i64, ptr %l1, !tbaa !24
  %t52 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %s0, ptr %t48, i64 %t49)
  store { i64, ptr } %t52, ptr %l27
  br label %bb9
bb9:
  %t53 = load i64, ptr %l4, !tbaa !24
  %t54 = load i64, ptr %l2, !tbaa !24
  %t55 = load i64, ptr %l5, !tbaa !24
  %t58 = sub i64 %t54, %t55
  %t60 = add i64 %t58, 1
  %t61 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t62 = extractvalue { i64, ptr } %t61, 1
  %t63 = extractvalue { i64, ptr } %t61, 0
  %t64 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t65 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  %t66 = add i64 %t63, %t65
  %t68 = call i64 @__olang_fmt_i64(ptr null, i64 %t53)
  %t69 = add i64 %t66, %t68
  %t70 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t71 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  %t72 = add i64 %t69, %t71
  %t74 = call i64 @__olang_fmt_i64(ptr null, i64 %t60)
  %t75 = add i64 %t72, %t74
  %t76 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t75)
  call void @olang_textcopy(ptr %t76, ptr %t62, i64 %t63)
  %t77 = getelementptr i8, ptr %t76, i64 %t63
  call void @olang_textcopy(ptr %t77, ptr %t64, i64 %t65)
  %t78 = getelementptr i8, ptr %t77, i64 %t65
  %t79 = call i64 @__olang_fmt_i64(ptr %t78, i64 %t53)
  %t80 = getelementptr i8, ptr %t78, i64 %t68
  call void @olang_textcopy(ptr %t80, ptr %t70, i64 %t71)
  %t81 = getelementptr i8, ptr %t80, i64 %t71
  %t82 = call i64 @__olang_fmt_i64(ptr %t81, i64 %t60)
  %t83 = insertvalue { i64, ptr } undef, i64 %t75, 0
  %t84 = insertvalue { i64, ptr } %t83, ptr %t76, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t84, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, [3 x i64] } %a2, %"compiler/diagmsg:Msg" %a3) #0 {
entry:
  %l1 = alloca i64
  %l3 = alloca %"compiler/diagmsg:Msg"
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca { i64, [3 x i64] }
  %l10 = alloca i64
  %l15 = alloca %"compiler/diag:note"
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
  store i64 %t8, ptr %l8, !tbaa !24
  store { i64, [3 x i64] } %a2, ptr %l9
  %t10 = ptrtoint ptr %v0 to i64
  store i64 %t10, ptr %l10, !tbaa !24
  %t11 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3anote_2e2
  br i1 %t11, label %bb4, label %bb5
bb4:
  %t13 = call ptr @__olang_region_make(ptr %v0)
  %t14 = ptrtoint ptr %t13 to i64
  store i64 %t14, ptr %l10, !tbaa !24
  br label %bb5
bb5:
  %t15 = getelementptr %"compiler/diagmsg:Msg", ptr %l3, i32 0, i32 2
  %t16 = load { i64, ptr }, ptr %t15, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t16, 1
  %t19 = extractvalue { i64, ptr } %t16, 0
  %t20 = load i64, ptr %l10
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t19)
  call void @olang_textcopy(ptr %t22, ptr %t18, i64 %t19)
  %t23 = insertvalue { i64, ptr } undef, i64 %t19, 0
  %t24 = insertvalue { i64, ptr } %t23, ptr %t22, 1
  %t26 = load i64, ptr %l10
  %t27 = inttoptr i64 %t26 to ptr
  %t28 = extractvalue { i64, ptr } %t24, 0
  %t29 = extractvalue { i64, ptr } %t24, 1
  %t30 = mul i64 %t28, 1
  %t31 = call ptr @__olang_scope_alloc(ptr %t27, i64 %t30)
  call void @llvm.memcpy.p0.p0.i64(ptr %t31, ptr %t29, i64 %t30, i1 false)
  %t32 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t33 = insertvalue { i64, ptr } %t32, ptr %t31, 1
  %t34 = load i64, ptr %l8, !tbaa !24
  %t35 = load { i64, [3 x i64] }, ptr %l9
  %t37 = call %"compiler/diag:note" @compiler_2fdiag_3anote_2ector(ptr %v0, ptr %v0, i64 %t34, { i64, [3 x i64] } %t35, { i64, ptr } %t33)
  store %"compiler/diag:note" %t37, ptr %l15
  br label %bb6
bb6:
  %t38 = load ptr, ptr %l7, !tbaa !29
  %t39 = load %"compiler/diag:note", ptr %l15
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3anote_3e_2ePush_3ccompiler_2fdiag_3anote_3e(ptr %v0, ptr %v0, ptr %t38, %"compiler/diag:note" %t39)
  br label %bb7
bb7:
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
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d10, i32 0, i32 1) }, ptr %l16, !tbaa !27
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
  %l5 = alloca { i64, [3 x i64] }
  %l6 = alloca i64
  %l11 = alloca %"compiler/diag:context"
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/diag:Diagnostics", ptr %a0, i32 0, i32 12
  store ptr %t3, ptr %l4, !tbaa !29
  store { i64, [3 x i64] } %a1, ptr %l5
  %t5 = ptrtoint ptr %v0 to i64
  store i64 %t5, ptr %l6, !tbaa !24
  %t6 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3acontext_2e1
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = call ptr @__olang_region_make(ptr %v0)
  %t9 = ptrtoint ptr %t8 to i64
  store i64 %t9, ptr %l6, !tbaa !24
  br label %bb2
bb2:
  %t12 = extractvalue { i64, ptr } %a2, 1
  %t13 = extractvalue { i64, ptr } %a2, 0
  %t14 = load i64, ptr %l6
  %t15 = inttoptr i64 %t14 to ptr
  %t16 = call ptr @__olang_scope_alloc(ptr %t15, i64 %t13)
  call void @olang_textcopy(ptr %t16, ptr %t12, i64 %t13)
  %t17 = insertvalue { i64, ptr } undef, i64 %t13, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t16, 1
  %t20 = load i64, ptr %l6
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load { i64, [3 x i64] }, ptr %l5
  %t30 = call %"compiler/diag:context" @compiler_2fdiag_3acontext_2ector(ptr %v0, ptr %v0, { i64, [3 x i64] } %t28, { i64, ptr } %t27)
  store %"compiler/diag:context" %t30, ptr %l11
  br label %bb3
bb3:
  %t31 = load ptr, ptr %l4, !tbaa !29
  %t32 = load %"compiler/diag:context", ptr %l11
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3acontext_3e_2ePush_3ccompiler_2fdiag_3acontext_3e(ptr %v0, ptr %v0, ptr %t31, %"compiler/diag:context" %t32)
  br label %bb4
bb4:
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
  %l10 = alloca %"std/prelude/text:StringBuilder"
  %l12 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l26 = alloca %"compiler/diag:record"
  %l34 = alloca i64
  %l36 = alloca i64
  %l41 = alloca %"compiler/diag:note"
  %l59 = alloca ptr
  %l63 = alloca { i64, ptr }
  %l70 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l10
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l10
  store %"std/prelude/text:StringBuilder" %t2, ptr %l1
  store %olang.scope zeroinitializer, ptr %s1
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2ewritten(ptr %v0, ptr %s1, ptr %t3)
  store { i64, ptr } %t5, ptr %l12
  br label %bb2
bb2:
  %t6 = load { i64, ptr }, ptr %l12, !tbaa !27
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
  br label %bb22
bb5:
  br label %bb6
bb6:
  %t26 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t26, ptr %l20, !tbaa !27
  %t27 = load i64, ptr %l3, !tbaa !24
  %t29 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = getelementptr i64, ptr %t30, i64 %t27
  %t32 = load i64, ptr %t31, !tbaa !34
  store i64 %t32, ptr %l5, !tbaa !24
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/diag:Diagnostics", ptr %t34, i32 0, i32 7
  %t37 = load i64, ptr %l5, !tbaa !24
  %t40 = call %"compiler/diag:record" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2eAt_3ccompiler_2fdiag_3arecord_3e(ptr %v0, ptr %v0, ptr %t36, i64 %t37)
  store %"compiler/diag:record" %t40, ptr %l26
  br label %bb7
bb7:
  %t41 = load %"compiler/diag:record", ptr %l26
  store %"compiler/diag:record" %t41, ptr %l6
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/diag:record", ptr %l6, i32 0, i32 0
  %t44 = load { i64, [3 x i64] }, ptr %t43
  %t45 = getelementptr %"compiler/diag:record", ptr %l6, i32 0, i32 1
  %t46 = load { i64, ptr }, ptr %t45, !tbaa !27
  %t47 = getelementptr %"compiler/diag:record", ptr %l6, i32 0, i32 2
  %t48 = load { i64, ptr }, ptr %t47, !tbaa !27
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eputRow(ptr %v0, ptr %s0, ptr %s2, ptr %v0, ptr %v0, ptr %t42, ptr %l1, { i64, [3 x i64] } %t44, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d11, i32 0, i32 1) }, { i64, ptr } %t46, { i64, ptr } %t48)
  br label %bb8
bb8:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/diag:Diagnostics", ptr %t54, i32 0, i32 8
  store ptr %t56, ptr %l7, !tbaa !29
  store i64 0, ptr %l8, !tbaa !24
  br label %bb9
bb9:
  %t58 = load i64, ptr %l8, !tbaa !24
  store i64 %t58, ptr %l34, !tbaa !24
  %t59 = load ptr, ptr %l7, !tbaa !29
  %t61 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3anote_3e_2eLen_3ccompiler_2fdiag_3anote_3e(ptr %v0, ptr %t59)
  store i64 %t61, ptr %l36
  br label %bb10
bb10:
  %t62 = load i64, ptr %l34, !tbaa !24
  %t63 = load i64, ptr %l36, !tbaa !24
  %t64 = icmp slt i64 %t62, %t63
  %t66 = xor i1 %t64, true
  br i1 %t66, label %bb11, label %bb12
bb11:
  br label %bb20
bb12:
  br label %bb13
bb13:
  %t68 = load ptr, ptr %l7, !tbaa !29
  %t69 = load i64, ptr %l8, !tbaa !24
  %t72 = call %"compiler/diag:note" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3anote_3e_2eAt_3ccompiler_2fdiag_3anote_3e(ptr %v0, ptr %v0, ptr %t68, i64 %t69)
  store %"compiler/diag:note" %t72, ptr %l41
  br label %bb14
bb14:
  %t73 = load %"compiler/diag:note", ptr %l41
  store %"compiler/diag:note" %t73, ptr %l9
  %t74 = getelementptr %"compiler/diag:note", ptr %l9, i32 0, i32 0
  %t75 = load i64, ptr %t74, !tbaa !24
  %t76 = load i64, ptr %l5, !tbaa !24
  %t79 = icmp eq i64 %t75, %t76
  br i1 %t79, label %bb15, label %bb16
bb15:
  store %olang.scope zeroinitializer, ptr %s5
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/diag:note", ptr %l9, i32 0, i32 1
  %t83 = load { i64, [3 x i64] }, ptr %t82
  %t84 = getelementptr %"compiler/diag:note", ptr %l9, i32 0, i32 2
  %t85 = load { i64, ptr }, ptr %t84, !tbaa !27
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eputRow(ptr %v0, ptr %s0, ptr %s5, ptr %s5, ptr %v0, ptr %t81, ptr %l1, { i64, [3 x i64] } %t83, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d12, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d13, i32 0, i32 1) }, { i64, ptr } %t85)
  br label %bb17
bb16:
  br label %bb18
bb17:
  call void @__olang_scope_close(ptr %s5)
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t90 = load i64, ptr %l8, !tbaa !24
  %t92 = add i64 %t90, 1
  store i64 %t92, ptr %l8, !tbaa !24
  br label %bb9
bb20:
  call void @__olang_scope_close(ptr %s2)
  br label %bb21
bb21:
  %t94 = load i64, ptr %l3, !tbaa !24
  %t96 = add i64 %t94, 1
  store i64 %t96, ptr %l3, !tbaa !24
  br label %bb3
bb22:
  call void @__olang_scope_close(ptr %s1)
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/diag:Diagnostics", ptr %t98, i32 0, i32 21
  %t101 = load i1, ptr %t100, !tbaa !21
  br i1 %t101, label %bb23, label %bb24
bb23:
  store %olang.scope zeroinitializer, ptr %s8
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/diag:Diagnostics", ptr %t104, i32 0, i32 18
  %t107 = load { i64, [3 x i64] }, ptr %t106
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eputLocation(ptr %v0, ptr %s0, ptr %t103, ptr %l1, { i64, [3 x i64] } %t107)
  br label %bb25
bb24:
  br label %bb30
bb25:
  store ptr %l1, ptr %l59, !tbaa !29
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"compiler/diag:Diagnostics", ptr %t112, i32 0, i32 19
  %t115 = load { i64, ptr }, ptr %t114, !tbaa !27
  %t118 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eerrorWord(ptr %v0, ptr %v0, ptr %s8, ptr %t111, { i64, ptr } %t115)
  store { i64, ptr } %t118, ptr %l63
  br label %bb26
bb26:
  %t119 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t120 = extractvalue { i64, ptr } %t119, 0
  %t121 = extractvalue { i64, ptr } %t119, 1
  %t122 = mul i64 %t120, 1
  %t123 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t122)
  call void @llvm.memcpy.p0.p0.i64(ptr %t123, ptr %t121, i64 %t122, i1 false)
  %t124 = insertvalue { i64, ptr } undef, i64 %t120, 0
  %t125 = insertvalue { i64, ptr } %t124, ptr %t123, 1
  %t126 = load ptr, ptr %l59, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s8, ptr %t126, { i64, ptr } %t125)
  br label %bb27
bb27:
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t130 = getelementptr %"compiler/diag:Diagnostics", ptr %t128, i32 0, i32 20
  %t131 = load { i64, ptr }, ptr %t130, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v0, ptr %l1, { i64, ptr } %t131)
  br label %bb28
bb28:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 10)
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s8)
  br label %bb30
bb30:
  %t136 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l1)
  store { i64, ptr } %t136, ptr %l70
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s0)
  %t137 = load { i64, ptr }, ptr %l70, !tbaa !27
  store { i64, ptr } %t137, ptr %rv
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
  %l50 = alloca %"compiler/diag:note"
  %l55 = alloca i64
  %l57 = alloca i64
  %l62 = alloca i64
  %l72 = alloca i64
  %l74 = alloca i64
  %l79 = alloca i64
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
  %t73 = call %"compiler/diag:note" @compiler_2fdiag_3anote_2ector(ptr %v1, ptr %v0, i64 %t65, { i64, [3 x i64] } %t67, { i64, ptr } %t69)
  store %"compiler/diag:note" %t73, ptr %l50
  br label %bb17
bb17:
  %t74 = load ptr, ptr %l44, !tbaa !29
  %t75 = load %"compiler/diag:note", ptr %l50
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3anote_3e_2ePush_3ccompiler_2fdiag_3anote_3e(ptr %v0, ptr %v0, ptr %t74, %"compiler/diag:note" %t75)
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t76 = load i64, ptr %l7, !tbaa !24
  %t78 = add i64 %t76, 1
  store i64 %t78, ptr %l7, !tbaa !24
  br label %bb11
bb20:
  %t80 = load ptr, ptr %l1, !tbaa !29
  %t82 = getelementptr %"compiler/diag:Taken", ptr %t80, i32 0, i32 2
  store ptr %t82, ptr %l9, !tbaa !29
  store i64 0, ptr %l10, !tbaa !24
  br label %bb21
bb21:
  %t84 = load i64, ptr %l10, !tbaa !24
  store i64 %t84, ptr %l55, !tbaa !24
  %t85 = load ptr, ptr %l9, !tbaa !29
  %t87 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t85)
  store i64 %t87, ptr %l57
  br label %bb22
bb22:
  %t88 = load i64, ptr %l55, !tbaa !24
  %t89 = load i64, ptr %l57, !tbaa !24
  %t90 = icmp slt i64 %t88, %t89
  %t92 = xor i1 %t90, true
  br i1 %t92, label %bb23, label %bb24
bb23:
  br label %bb29
bb24:
  br label %bb25
bb25:
  %t94 = load ptr, ptr %l9, !tbaa !29
  %t95 = load i64, ptr %l10, !tbaa !24
  %t98 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t94, i64 %t95)
  store i64 %t98, ptr %l62
  br label %bb26
bb26:
  %t99 = load i64, ptr %l62, !tbaa !24
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/diag:Diagnostics", ptr %t100, i32 0, i32 16
  %t104 = load i64, ptr %l2, !tbaa !24
  %t107 = add i64 %t99, %t104
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t102, i64 %t107)
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t110 = load i64, ptr %l10, !tbaa !24
  %t112 = add i64 %t110, 1
  store i64 %t112, ptr %l10, !tbaa !24
  br label %bb21
bb29:
  %t114 = load ptr, ptr %l1, !tbaa !29
  %t116 = getelementptr %"compiler/diag:Taken", ptr %t114, i32 0, i32 3
  store ptr %t116, ptr %l12, !tbaa !29
  store i64 0, ptr %l13, !tbaa !24
  br label %bb30
bb30:
  %t118 = load i64, ptr %l13, !tbaa !24
  store i64 %t118, ptr %l72, !tbaa !24
  %t119 = load ptr, ptr %l12, !tbaa !29
  %t121 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t119)
  store i64 %t121, ptr %l74
  br label %bb31
bb31:
  %t122 = load i64, ptr %l72, !tbaa !24
  %t123 = load i64, ptr %l74, !tbaa !24
  %t124 = icmp slt i64 %t122, %t123
  %t126 = xor i1 %t124, true
  br i1 %t126, label %bb32, label %bb33
bb32:
  br label %bb38
bb33:
  br label %bb34
bb34:
  %t128 = load ptr, ptr %l12, !tbaa !29
  %t129 = load i64, ptr %l13, !tbaa !24
  %t132 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t128, i64 %t129)
  store i64 %t132, ptr %l79
  br label %bb35
bb35:
  %t133 = load i64, ptr %l79, !tbaa !24
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t136 = getelementptr %"compiler/diag:Diagnostics", ptr %t134, i32 0, i32 17
  %t138 = load i64, ptr %l2, !tbaa !24
  %t141 = add i64 %t133, %t138
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t136, i64 %t141)
  br label %bb36
bb36:
  br label %bb37
bb37:
  %t144 = load i64, ptr %l13, !tbaa !24
  %t146 = add i64 %t144, 1
  store i64 %t146, ptr %l13, !tbaa !24
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
  %l73 = alloca %"compiler/diag:note"
  %l78 = alloca i64
  %l80 = alloca i64
  %l85 = alloca i64
  %l97 = alloca i64
  %l99 = alloca i64
  %l104 = alloca i64
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
  %t116 = call %"compiler/diag:note" @compiler_2fdiag_3anote_2ector(ptr %v0, ptr %v1, i64 %t108, { i64, [3 x i64] } %t110, { i64, ptr } %t112)
  store %"compiler/diag:note" %t116, ptr %l73
  br label %bb25
bb24:
  br label %bb27
bb25:
  %t117 = load ptr, ptr %l67, !tbaa !29
  %t118 = load %"compiler/diag:note", ptr %l73
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3anote_3e_2ePush_3ccompiler_2fdiag_3anote_3e(ptr %v1, ptr %v1, ptr %t117, %"compiler/diag:note" %t118)
  br label %bb26
bb26:
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t119 = load i64, ptr %l10, !tbaa !24
  %t121 = add i64 %t119, 1
  store i64 %t121, ptr %l10, !tbaa !24
  br label %bb17
bb29:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = getelementptr %"compiler/diag:Diagnostics", ptr %t123, i32 0, i32 16
  store ptr %t125, ptr %l12, !tbaa !29
  store i64 0, ptr %l13, !tbaa !24
  br label %bb30
bb30:
  %t127 = load i64, ptr %l13, !tbaa !24
  store i64 %t127, ptr %l78, !tbaa !24
  %t128 = load ptr, ptr %l12, !tbaa !29
  %t130 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t128)
  store i64 %t130, ptr %l80
  br label %bb31
bb31:
  %t131 = load i64, ptr %l78, !tbaa !24
  %t132 = load i64, ptr %l80, !tbaa !24
  %t133 = icmp slt i64 %t131, %t132
  %t135 = xor i1 %t133, true
  br i1 %t135, label %bb32, label %bb33
bb32:
  br label %bb41
bb33:
  br label %bb34
bb34:
  %t137 = load ptr, ptr %l12, !tbaa !29
  %t138 = load i64, ptr %l13, !tbaa !24
  %t141 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t137, i64 %t138)
  store i64 %t141, ptr %l85
  br label %bb35
bb35:
  %t142 = load i64, ptr %l85, !tbaa !24
  store i64 %t142, ptr %l14, !tbaa !24
  %t143 = load i64, ptr %l14, !tbaa !24
  %t144 = load i64, ptr %l1, !tbaa !24
  %t147 = icmp sge i64 %t143, %t144
  br i1 %t147, label %bb36, label %bb37
bb36:
  %t149 = load ptr, ptr %lp2
  %t150 = getelementptr %"compiler/diag:Taken", ptr %t149, i32 0, i32 2
  %t151 = load i64, ptr %l14, !tbaa !24
  %t152 = load i64, ptr %l1, !tbaa !24
  %t155 = sub i64 %t151, %t152
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t150, i64 %t155)
  br label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb39
bb39:
  br label %bb40
bb40:
  %t158 = load i64, ptr %l13, !tbaa !24
  %t160 = add i64 %t158, 1
  store i64 %t160, ptr %l13, !tbaa !24
  br label %bb30
bb41:
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t164 = getelementptr %"compiler/diag:Diagnostics", ptr %t162, i32 0, i32 17
  store ptr %t164, ptr %l15, !tbaa !29
  store i64 0, ptr %l16, !tbaa !24
  br label %bb42
bb42:
  %t166 = load i64, ptr %l16, !tbaa !24
  store i64 %t166, ptr %l97, !tbaa !24
  %t167 = load ptr, ptr %l15, !tbaa !29
  %t169 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t167)
  store i64 %t169, ptr %l99
  br label %bb43
bb43:
  %t170 = load i64, ptr %l97, !tbaa !24
  %t171 = load i64, ptr %l99, !tbaa !24
  %t172 = icmp slt i64 %t170, %t171
  %t174 = xor i1 %t172, true
  br i1 %t174, label %bb44, label %bb45
bb44:
  br label %bb53
bb45:
  br label %bb46
bb46:
  %t176 = load ptr, ptr %l15, !tbaa !29
  %t177 = load i64, ptr %l16, !tbaa !24
  %t180 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t176, i64 %t177)
  store i64 %t180, ptr %l104
  br label %bb47
bb47:
  %t181 = load i64, ptr %l104, !tbaa !24
  store i64 %t181, ptr %l17, !tbaa !24
  %t182 = load i64, ptr %l17, !tbaa !24
  %t183 = load i64, ptr %l1, !tbaa !24
  %t186 = icmp sge i64 %t182, %t183
  br i1 %t186, label %bb48, label %bb49
bb48:
  %t188 = load ptr, ptr %lp2
  %t189 = getelementptr %"compiler/diag:Taken", ptr %t188, i32 0, i32 3
  %t190 = load i64, ptr %l17, !tbaa !24
  %t191 = load i64, ptr %l1, !tbaa !24
  %t194 = sub i64 %t190, %t191
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t189, i64 %t194)
  br label %bb50
bb49:
  br label %bb51
bb50:
  br label %bb51
bb51:
  br label %bb52
bb52:
  %t197 = load i64, ptr %l16, !tbaa !24
  %t199 = add i64 %t197, 1
  store i64 %t199, ptr %l16, !tbaa !24
  br label %bb42
bb53:
  %t201 = load ptr, ptr %lp2
  %t202 = load %"compiler/diag:Taken", ptr %t201
  store %"compiler/diag:Taken" %t202, ptr %rv
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
  %t11 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2esgr(ptr %v0, ptr %s1, ptr %s1, ptr %t9, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) })
  store { i64, ptr } %t11, ptr %l7
  br label %bb4
bb3:
  br label %bb6
bb4:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2esgr(ptr %v0, ptr %s1, ptr %s1, ptr %t12, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) })
  store { i64, ptr } %t14, ptr %l9
  br label %bb5
bb5:
  %t15 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t15, 1
  %t17 = extractvalue { i64, ptr } %t15, 0
  %t18 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  %t20 = add i64 %t17, %t19
  %t21 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t22 = extractvalue { i64, ptr } %t21, 1
  %t23 = extractvalue { i64, ptr } %t21, 0
  %t24 = add i64 %t20, %t23
  %t25 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t26 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
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
  %t37 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2esgr(ptr %v0, ptr %s0, ptr %s0, ptr %t35, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d18, i32 0, i32 1) })
  store { i64, ptr } %t37, ptr %l12
  br label %bb7
bb7:
  %t38 = load i64, ptr %l1, !tbaa !24
  store i64 %t38, ptr %l13, !tbaa !24
  %t39 = load i64, ptr %l1, !tbaa !24
  %t41 = icmp eq i64 %t39, 1
  br i1 %t41, label %bb8, label %bb9
bb8:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d19, i32 0, i32 1) }, ptr %l16, !tbaa !27
  br label %bb10
bb9:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d20, i32 0, i32 1) }, ptr %l16, !tbaa !27
  br label %bb10
bb10:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2esgr(ptr %v0, ptr %s0, ptr %s0, ptr %t43, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) })
  store { i64, ptr } %t45, ptr %l18
  br label %bb11
bb11:
  %t46 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t47 = extractvalue { i64, ptr } %t46, 1
  %t48 = extractvalue { i64, ptr } %t46, 0
  %t49 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t50 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  %t51 = add i64 %t48, %t50
  %t52 = load i64, ptr %l13, !tbaa !24
  %t53 = call i64 @__olang_fmt_i64(ptr null, i64 %t52)
  %t54 = add i64 %t51, %t53
  %t55 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d23, i32 0, i32 1) }, 1
  %t56 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d23, i32 0, i32 1) }, 0
  %t57 = add i64 %t54, %t56
  %t58 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t59 = extractvalue { i64, ptr } %t58, 1
  %t60 = extractvalue { i64, ptr } %t58, 0
  %t61 = add i64 %t57, %t60
  %t62 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t63 = extractvalue { i64, ptr } %t62, 1
  %t64 = extractvalue { i64, ptr } %t62, 0
  %t65 = add i64 %t61, %t64
  %t66 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d24, i32 0, i32 1) }, 1
  %t67 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d24, i32 0, i32 1) }, 0
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d25, i32 0, i32 1) }, ptr %l33, !tbaa !27
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
  %l16 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t4 = alloca { i64, [3 x i64] }, align 8
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
  %t31 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v2, ptr %l2)
  store { i64, ptr } %t31, ptr %l16
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s0)
  %t32 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t32, ptr %rv
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
  %t9 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2esgr(ptr %v0, ptr %s1, ptr %s1, ptr %t7, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d26, i32 0, i32 1) })
  store { i64, ptr } %t9, ptr %l6
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2esgr(ptr %v0, ptr %s1, ptr %s1, ptr %t10, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) })
  store { i64, ptr } %t12, ptr %l8
  br label %bb4
bb4:
  %t13 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t13, 1
  %t15 = extractvalue { i64, ptr } %t13, 0
  %t16 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t17 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  %t18 = add i64 %t15, %t17
  %t19 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t20 = extractvalue { i64, ptr } %t19, 1
  %t21 = extractvalue { i64, ptr } %t19, 0
  %t22 = add i64 %t18, %t21
  %t23 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d29, i32 0, i32 1) }, 1
  %t24 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d29, i32 0, i32 1) }, 0
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
  %t35 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2esgr(ptr %v0, ptr %s0, ptr %s0, ptr %t33, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d30, i32 0, i32 1) })
  store { i64, ptr } %t35, ptr %l11
  br label %bb6
bb6:
  %t36 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t36, ptr %l12, !tbaa !27
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2esgr(ptr %v0, ptr %s0, ptr %s0, ptr %t37, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d31, i32 0, i32 1) })
  store { i64, ptr } %t39, ptr %l14
  br label %bb7
bb7:
  %t40 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t40, 1
  %t42 = extractvalue { i64, ptr } %t40, 0
  %t43 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d32, i32 0, i32 1) }, 1
  %t44 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d32, i32 0, i32 1) }, 0
  %t45 = add i64 %t42, %t44
  %t46 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t47 = extractvalue { i64, ptr } %t46, 1
  %t48 = extractvalue { i64, ptr } %t46, 0
  %t49 = add i64 %t45, %t48
  %t50 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d33, i32 0, i32 1) }, 1
  %t51 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d33, i32 0, i32 1) }, 0
  %t52 = add i64 %t49, %t51
  %t53 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t54 = extractvalue { i64, ptr } %t53, 1
  %t55 = extractvalue { i64, ptr } %t53, 0
  %t56 = add i64 %t52, %t55
  %t57 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t58 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
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
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l31 = alloca i64
  %l43 = alloca { i64, ptr }
  %l47 = alloca { i64, i64 }
  %l55 = alloca i1
  %l56 = alloca { i64, ptr }
  %l68 = alloca i64
  %l71 = alloca i64
  %l89 = alloca { i64, ptr }
  %l93 = alloca i1
  %l94 = alloca { i64, ptr }
  %l98 = alloca i1
  %l99 = alloca { i64, ptr }
  %l109 = alloca i64
  %l133 = alloca i64
  %l144 = alloca ptr
  %l146 = alloca { i64, ptr }
  %l158 = alloca i64
  %l161 = alloca i64
  %l179 = alloca ptr
  %l180 = alloca { i64, ptr }
  %l183 = alloca i8
  %l199 = alloca i1
  %l204 = alloca { i64, ptr }
  %l207 = alloca i1
  %l209 = alloca ptr
  %l210 = alloca { i64, ptr }
  %l214 = alloca i8
  %l217 = alloca ptr
  %l219 = alloca { i64, ptr }
  %l227 = alloca i1
  %l232 = alloca { i64, ptr }
  %l235 = alloca i1
  %l240 = alloca ptr
  %l242 = alloca { i64, ptr }
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
  store { i64, ptr } %t30, ptr %l43
  br label %bb10
bb10:
  %t31 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t31, ptr %l9, !tbaa !27
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load i64, ptr %l3, !tbaa !24
  %t34 = load i64, ptr %l4, !tbaa !24
  %t38 = call { i64, i64 } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2elineOf(ptr %v0, ptr %t32, i64 %t33, i64 %t34)
  store { i64, i64 } %t38, ptr %l47
  br label %bb11
bb11:
  %t39 = load { i64, i64 }, ptr %l47
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
  store { i64, ptr } %t56, ptr %l56, !tbaa !27
  %t57 = load i64, ptr %l13, !tbaa !24
  %t59 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !27
  %t61 = getelementptr i8, ptr %t60, i64 %t57
  %t62 = load i8, ptr %t61, !tbaa !32
  %t64 = icmp ne i8 %t62, 10
  store i1 %t64, ptr %l55, !tbaa !21
  br label %bb15
bb14:
  store i1 false, ptr %l55, !tbaa !21
  br label %bb15
bb15:
  %t66 = load i1, ptr %l55, !tbaa !21
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
  store i64 0, ptr %l68, !tbaa !24
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
  store i64 %t101, ptr %l71, !tbaa !24
  br label %bb25
bb24:
  store i64 0, ptr %l71, !tbaa !24
  br label %bb25
bb25:
  %t103 = load i64, ptr %l71, !tbaa !24
  store i64 %t103, ptr %l68, !tbaa !24
  br label %bb26
bb26:
  %t104 = load i64, ptr %l68, !tbaa !24
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
  store { i64, ptr } %t123, ptr %l89, !tbaa !27
  %t124 = load i64, ptr %l20, !tbaa !24
  %t126 = getelementptr { i64, ptr }, ptr %l89, i32 0, i32 1
  %t127 = load ptr, ptr %t126, !tbaa !27
  %t128 = getelementptr i8, ptr %t127, i64 %t124
  %t129 = load i8, ptr %t128, !tbaa !32
  %t131 = icmp ne i8 %t129, 32
  br i1 %t131, label %bb31, label %bb32
bb31:
  %t133 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t133, ptr %l94, !tbaa !27
  %t134 = load i64, ptr %l20, !tbaa !24
  %t136 = getelementptr { i64, ptr }, ptr %l94, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !27
  %t138 = getelementptr i8, ptr %t137, i64 %t134
  %t139 = load i8, ptr %t138, !tbaa !32
  %t141 = icmp ne i8 %t139, 9
  store i1 %t141, ptr %l93, !tbaa !21
  br label %bb33
bb32:
  store i1 false, ptr %l93, !tbaa !21
  br label %bb33
bb33:
  %t143 = load i1, ptr %l93, !tbaa !21
  br i1 %t143, label %bb34, label %bb35
bb34:
  %t144 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t144, ptr %l99, !tbaa !27
  %t145 = load i64, ptr %l20, !tbaa !24
  %t147 = getelementptr { i64, ptr }, ptr %l99, i32 0, i32 1
  %t148 = load ptr, ptr %t147, !tbaa !27
  %t149 = getelementptr i8, ptr %t148, i64 %t145
  %t150 = load i8, ptr %t149, !tbaa !32
  %t152 = icmp ne i8 %t150, 13
  store i1 %t152, ptr %l98, !tbaa !21
  br label %bb36
bb35:
  store i1 false, ptr %l98, !tbaa !21
  br label %bb36
bb36:
  %t154 = load i1, ptr %l98, !tbaa !21
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
  store i64 %t167, ptr %l109, !tbaa !24
  br label %bb47
bb46:
  %t169 = load i64, ptr %l4, !tbaa !24
  %t171 = add i64 %t169, 1
  store i64 %t171, ptr %l109, !tbaa !24
  br label %bb47
bb47:
  %t173 = load i64, ptr %l109, !tbaa !24
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
  store i64 %t214, ptr %l133, !tbaa !24
  br label %bb55
bb54:
  %t216 = load i64, ptr %l4, !tbaa !24
  %t217 = load i64, ptr @G_2ecompiler_2fdiag_2eExcerptAround, !tbaa !24
  %t220 = add i64 %t216, %t217
  store i64 %t220, ptr %l133, !tbaa !24
  br label %bb55
bb55:
  %t222 = load i64, ptr @G_2ecompiler_2fdiag_2eExcerptAround, !tbaa !24
  %t223 = load i64, ptr %l133, !tbaa !24
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
  %t235 = load ptr, ptr %l1, !tbaa !29
  store ptr %t235, ptr %l144, !tbaa !29
  %t236 = load i64, ptr %l11, !tbaa !24
  %t238 = call { i64, ptr } @std_2fprelude_2ftext_2eI64_2ePadStart(ptr %s0, i64 %t236, i64 5, i8 32)
  store { i64, ptr } %t238, ptr %l146
  br label %bb60
bb60:
  %t239 = load { i64, ptr }, ptr %l146, !tbaa !27
  %t240 = extractvalue { i64, ptr } %t239, 1
  %t241 = extractvalue { i64, ptr } %t239, 0
  %t242 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t243 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d35, i32 0, i32 1) }, 0
  %t244 = add i64 %t241, %t243
  %t245 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t244)
  call void @olang_textcopy(ptr %t245, ptr %t240, i64 %t241)
  %t246 = getelementptr i8, ptr %t245, i64 %t241
  call void @olang_textcopy(ptr %t246, ptr %t242, i64 %t243)
  %t247 = insertvalue { i64, ptr } undef, i64 %t244, 0
  %t248 = insertvalue { i64, ptr } %t247, ptr %t245, 1
  %t250 = extractvalue { i64, ptr } %t248, 0
  %t251 = extractvalue { i64, ptr } %t248, 1
  %t252 = mul i64 %t250, 1
  %t253 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t252)
  call void @llvm.memcpy.p0.p0.i64(ptr %t253, ptr %t251, i64 %t252, i1 false)
  %t254 = insertvalue { i64, ptr } undef, i64 %t250, 0
  %t255 = insertvalue { i64, ptr } %t254, ptr %t253, 1
  %t256 = load ptr, ptr %l144, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s0, ptr %t256, { i64, ptr } %t255)
  br label %bb61
bb61:
  %t258 = load i64, ptr %l22, !tbaa !24
  %t259 = load i64, ptr %l12, !tbaa !24
  %t262 = icmp sgt i64 %t258, %t259
  br i1 %t262, label %bb62, label %bb63
bb62:
  store %olang.scope zeroinitializer, ptr %s13
  %t264 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s13, ptr %t264, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d36, i32 0, i32 1) })
  br label %bb64
bb63:
  br label %bb65
bb64:
  call void @__olang_scope_close(ptr %s13)
  br label %bb65
bb65:
  %t266 = load i64, ptr %l22, !tbaa !24
  store i64 %t266, ptr %l25, !tbaa !24
  %t268 = load i64, ptr %l23, !tbaa !24
  store i64 %t268, ptr %l26, !tbaa !24
  store i64 1, ptr %l27, !tbaa !24
  %t270 = load i64, ptr %l26, !tbaa !24
  %t271 = load i64, ptr %l25, !tbaa !24
  %t274 = icmp sgt i64 %t270, %t271
  br i1 %t274, label %bb66, label %bb67
bb66:
  %t276 = load i64, ptr %l27, !tbaa !24
  %t278 = icmp sgt i64 %t276, 0
  br i1 %t278, label %bb68, label %bb69
bb67:
  store i64 0, ptr %l158, !tbaa !24
  br label %bb71
bb68:
  %t280 = load i64, ptr %l26, !tbaa !24
  %t281 = load i64, ptr %l25, !tbaa !24
  %t284 = sub i64 %t280, %t281
  %t285 = load i64, ptr %l27, !tbaa !24
  %t288 = add i64 %t284, %t285
  %t290 = sub i64 %t288, 1
  %t291 = load i64, ptr %l27, !tbaa !24
  %t294 = sdiv i64 %t290, %t291
  store i64 %t294, ptr %l161, !tbaa !24
  br label %bb70
bb69:
  store i64 0, ptr %l161, !tbaa !24
  br label %bb70
bb70:
  %t296 = load i64, ptr %l161, !tbaa !24
  store i64 %t296, ptr %l158, !tbaa !24
  br label %bb71
bb71:
  %t297 = load i64, ptr %l158, !tbaa !24
  store i64 %t297, ptr %l28, !tbaa !24
  store i64 0, ptr %l29, !tbaa !24
  br label %bb72
bb72:
  %t298 = load i64, ptr %l29, !tbaa !24
  %t299 = load i64, ptr %l28, !tbaa !24
  %t302 = icmp slt i64 %t298, %t299
  %t304 = xor i1 %t302, true
  br i1 %t304, label %bb73, label %bb74
bb73:
  br label %bb79
bb74:
  br label %bb75
bb75:
  %t306 = load i64, ptr %l25, !tbaa !24
  %t307 = load i64, ptr %l29, !tbaa !24
  %t308 = load i64, ptr %l27, !tbaa !24
  %t311 = mul i64 %t307, %t308
  %t314 = add i64 %t306, %t311
  %t316 = load ptr, ptr %l1, !tbaa !29
  store ptr %t316, ptr %l179, !tbaa !29
  %t317 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t317, ptr %l180, !tbaa !27
  %t320 = getelementptr { i64, ptr }, ptr %l180, i32 0, i32 1
  %t321 = load ptr, ptr %t320, !tbaa !27
  %t322 = getelementptr i8, ptr %t321, i64 %t314
  %t323 = load i8, ptr %t322, !tbaa !32
  %t325 = call i8 @compiler_2fdiag_2eprintable(i8 %t323)
  store i8 %t325, ptr %l183
  br label %bb76
bb76:
  %t326 = load ptr, ptr %l179, !tbaa !29
  %t327 = load i8, ptr %l183, !tbaa !22
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t326, i8 %t327)
  br label %bb77
bb77:
  br label %bb78
bb78:
  %t328 = load i64, ptr %l29, !tbaa !24
  %t330 = add i64 %t328, 1
  store i64 %t330, ptr %l29, !tbaa !24
  br label %bb72
bb79:
  %t332 = load i64, ptr %l23, !tbaa !24
  %t333 = load i64, ptr %l13, !tbaa !24
  %t336 = icmp slt i64 %t332, %t333
  br i1 %t336, label %bb80, label %bb81
bb80:
  store %olang.scope zeroinitializer, ptr %s17
  %t338 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s17, ptr %t338, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d37, i32 0, i32 1) })
  br label %bb82
bb81:
  br label %bb83
bb82:
  call void @__olang_scope_close(ptr %s17)
  br label %bb83
bb83:
  %t340 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s0, ptr %t340, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d38, i32 0, i32 1) })
  br label %bb84
bb84:
  %t342 = load i64, ptr %l22, !tbaa !24
  %t343 = load i64, ptr %l12, !tbaa !24
  %t346 = icmp sgt i64 %t342, %t343
  br i1 %t346, label %bb85, label %bb86
bb85:
  store %olang.scope zeroinitializer, ptr %s18
  %t348 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s18, ptr %t348, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d39, i32 0, i32 1) })
  br label %bb87
bb86:
  br label %bb88
bb87:
  call void @__olang_scope_close(ptr %s18)
  br label %bb88
bb88:
  %t350 = load i64, ptr %l22, !tbaa !24
  store i64 %t350, ptr %l31, !tbaa !24
  br label %bb89
bb89:
  %t352 = load i64, ptr %l31, !tbaa !24
  %t353 = load i64, ptr %l4, !tbaa !24
  %t356 = icmp slt i64 %t352, %t353
  br i1 %t356, label %bb90, label %bb91
bb90:
  %t358 = load i64, ptr %l31, !tbaa !24
  %t359 = load i64, ptr %l23, !tbaa !24
  %t362 = icmp slt i64 %t358, %t359
  store i1 %t362, ptr %l199, !tbaa !21
  br label %bb92
bb91:
  store i1 false, ptr %l199, !tbaa !21
  br label %bb92
bb92:
  %t364 = load i1, ptr %l199, !tbaa !21
  %t365 = xor i1 %t364, true
  br i1 %t365, label %bb93, label %bb94
bb93:
  br label %bb105
bb94:
  br label %bb95
bb95:
  %t367 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t367, ptr %l204, !tbaa !27
  %t368 = load i64, ptr %l31, !tbaa !24
  %t370 = getelementptr { i64, ptr }, ptr %l204, i32 0, i32 1
  %t371 = load ptr, ptr %t370, !tbaa !27
  %t372 = getelementptr i8, ptr %t371, i64 %t368
  %t373 = load i8, ptr %t372, !tbaa !32
  %t375 = call i1 @compiler_2fdiag_2econtinues(i8 %t373)
  store i1 %t375, ptr %l207
  br label %bb96
bb96:
  %t376 = load i1, ptr %l207, !tbaa !21
  %t377 = xor i1 %t376, true
  br i1 %t377, label %bb97, label %bb98
bb97:
  %t379 = load ptr, ptr %l1, !tbaa !29
  store ptr %t379, ptr %l209, !tbaa !29
  %t380 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t380, ptr %l210, !tbaa !27
  %t381 = load i64, ptr %l31, !tbaa !24
  %t383 = getelementptr { i64, ptr }, ptr %l210, i32 0, i32 1
  %t384 = load ptr, ptr %t383, !tbaa !27
  %t385 = getelementptr i8, ptr %t384, i64 %t381
  %t386 = load i8, ptr %t385, !tbaa !32
  %t388 = icmp eq i8 %t386, 9
  br i1 %t388, label %bb99, label %bb100
bb98:
  br label %bb103
bb99:
  store i8 9, ptr %l214, !tbaa !22
  br label %bb101
bb100:
  store i8 32, ptr %l214, !tbaa !22
  br label %bb101
bb101:
  %t390 = load ptr, ptr %l209, !tbaa !29
  %t391 = load i8, ptr %l214, !tbaa !22
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t390, i8 %t391)
  br label %bb102
bb102:
  br label %bb103
bb103:
  %t392 = load i64, ptr %l31, !tbaa !24
  %t394 = add i64 %t392, 1
  store i64 %t394, ptr %l31, !tbaa !24
  br label %bb104
bb104:
  br label %bb89
bb105:
  %t396 = load ptr, ptr %l1, !tbaa !29
  store ptr %t396, ptr %l217, !tbaa !29
  %t397 = load ptr, ptr %l0, !tbaa !29
  %t399 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2esgr(ptr %v0, ptr %s0, ptr %s0, ptr %t397, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d40, i32 0, i32 1) })
  store { i64, ptr } %t399, ptr %l219
  br label %bb106
bb106:
  %t400 = load { i64, ptr }, ptr %l219, !tbaa !27
  %t401 = extractvalue { i64, ptr } %t400, 0
  %t402 = extractvalue { i64, ptr } %t400, 1
  %t403 = mul i64 %t401, 1
  %t404 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t403)
  call void @llvm.memcpy.p0.p0.i64(ptr %t404, ptr %t402, i64 %t403, i1 false)
  %t405 = insertvalue { i64, ptr } undef, i64 %t401, 0
  %t406 = insertvalue { i64, ptr } %t405, ptr %t404, 1
  %t407 = load ptr, ptr %l217, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s0, ptr %t407, { i64, ptr } %t406)
  br label %bb107
bb107:
  %t409 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t409, i8 94)
  br label %bb108
bb108:
  %t411 = load i64, ptr %l4, !tbaa !24
  %t413 = add i64 %t411, 1
  store i64 %t413, ptr %l31, !tbaa !24
  br label %bb109
bb109:
  %t415 = load i64, ptr %l31, !tbaa !24
  %t416 = load i64, ptr %l21, !tbaa !24
  %t419 = icmp slt i64 %t415, %t416
  br i1 %t419, label %bb110, label %bb111
bb110:
  %t421 = load i64, ptr %l31, !tbaa !24
  %t422 = load i64, ptr %l23, !tbaa !24
  %t425 = icmp slt i64 %t421, %t422
  store i1 %t425, ptr %l227, !tbaa !21
  br label %bb112
bb111:
  store i1 false, ptr %l227, !tbaa !21
  br label %bb112
bb112:
  %t427 = load i1, ptr %l227, !tbaa !21
  %t428 = xor i1 %t427, true
  br i1 %t428, label %bb113, label %bb114
bb113:
  br label %bb122
bb114:
  br label %bb115
bb115:
  %t430 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t430, ptr %l232, !tbaa !27
  %t431 = load i64, ptr %l31, !tbaa !24
  %t433 = getelementptr { i64, ptr }, ptr %l232, i32 0, i32 1
  %t434 = load ptr, ptr %t433, !tbaa !27
  %t435 = getelementptr i8, ptr %t434, i64 %t431
  %t436 = load i8, ptr %t435, !tbaa !32
  %t438 = call i1 @compiler_2fdiag_2econtinues(i8 %t436)
  store i1 %t438, ptr %l235
  br label %bb116
bb116:
  %t439 = load i1, ptr %l235, !tbaa !21
  %t440 = xor i1 %t439, true
  br i1 %t440, label %bb117, label %bb118
bb117:
  %t442 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t442, i8 126)
  br label %bb119
bb118:
  br label %bb120
bb119:
  br label %bb120
bb120:
  %t444 = load i64, ptr %l31, !tbaa !24
  %t446 = add i64 %t444, 1
  store i64 %t446, ptr %l31, !tbaa !24
  br label %bb121
bb121:
  br label %bb109
bb122:
  %t448 = load ptr, ptr %l1, !tbaa !29
  store ptr %t448, ptr %l240, !tbaa !29
  %t449 = load ptr, ptr %l0, !tbaa !29
  %t451 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2esgr(ptr %v0, ptr %s0, ptr %s0, ptr %t449, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d41, i32 0, i32 1) })
  store { i64, ptr } %t451, ptr %l242
  br label %bb123
bb123:
  %t452 = load { i64, ptr }, ptr %l242, !tbaa !27
  %t453 = extractvalue { i64, ptr } %t452, 0
  %t454 = extractvalue { i64, ptr } %t452, 1
  %t455 = mul i64 %t453, 1
  %t456 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t455)
  call void @llvm.memcpy.p0.p0.i64(ptr %t456, ptr %t454, i64 %t455, i1 false)
  %t457 = insertvalue { i64, ptr } undef, i64 %t453, 0
  %t458 = insertvalue { i64, ptr } %t457, ptr %t456, 1
  %t459 = load ptr, ptr %l240, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s0, ptr %t459, { i64, ptr } %t458)
  br label %bb124
bb124:
  %t461 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t461, i8 10)
  br label %bb125
bb125:
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
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca { i64, i64 }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca ptr
  %l13 = alloca { i64, ptr }
  %l21 = alloca ptr
  %l25 = alloca { i64, ptr }
  %l30 = alloca ptr
  %l34 = alloca { i64, ptr }
  %l45 = alloca { i64, i64 }
  %l48 = alloca ptr
  %l52 = alloca { i64, ptr }
  %l61 = alloca ptr
  %l63 = alloca { i64, ptr }
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
  store ptr %t1, ptr %l11, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2esgr(ptr %v0, ptr %s0, ptr %s0, ptr %t2, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d42, i32 0, i32 1) })
  store { i64, ptr } %t4, ptr %l13
  br label %bb1
bb1:
  %t5 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t5, 0
  %t7 = extractvalue { i64, ptr } %t5, 1
  %t8 = mul i64 %t6, 1
  %t9 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t8)
  call void @llvm.memcpy.p0.p0.i64(ptr %t9, ptr %t7, i64 %t8, i1 false)
  %t10 = insertvalue { i64, ptr } undef, i64 %t6, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  %t12 = load ptr, ptr %l11, !tbaa !29
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
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s1, ptr %t19, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d43, i32 0, i32 1) })
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
  store ptr %t30, ptr %l21, !tbaa !29
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/diag:Diagnostics", ptr %t31, i32 0, i32 1
  %t34 = load i64, ptr %l3, !tbaa !24
  %t37 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t33, i64 %t34)
  store { i64, ptr } %t37, ptr %l25
  br label %bb11
bb11:
  %t38 = load ptr, ptr %l21, !tbaa !29
  %t39 = load { i64, ptr }, ptr %l25, !tbaa !27
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
  %t53 = load ptr, ptr %l1, !tbaa !29
  store ptr %t53, ptr %l30, !tbaa !29
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/diag:Diagnostics", ptr %t54, i32 0, i32 1
  %t57 = load i64, ptr %l4, !tbaa !24
  %t60 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %s3, ptr %t56, i64 %t57)
  store { i64, ptr } %t60, ptr %l34
  br label %bb17
bb17:
  %t61 = load i64, ptr %l5, !tbaa !24
  %t62 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t63 = extractvalue { i64, ptr } %t62, 1
  %t64 = extractvalue { i64, ptr } %t62, 0
  %t65 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d44, i32 0, i32 1) }, 1
  %t66 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d44, i32 0, i32 1) }, 0
  %t67 = add i64 %t64, %t66
  %t69 = call i64 @__olang_fmt_i64(ptr null, i64 %t61)
  %t70 = add i64 %t67, %t69
  %t71 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t70)
  call void @olang_textcopy(ptr %t71, ptr %t63, i64 %t64)
  %t72 = getelementptr i8, ptr %t71, i64 %t64
  call void @olang_textcopy(ptr %t72, ptr %t65, i64 %t66)
  %t73 = getelementptr i8, ptr %t72, i64 %t66
  %t74 = call i64 @__olang_fmt_i64(ptr %t73, i64 %t61)
  %t75 = insertvalue { i64, ptr } undef, i64 %t70, 0
  %t76 = insertvalue { i64, ptr } %t75, ptr %t71, 1
  %t78 = extractvalue { i64, ptr } %t76, 0
  %t79 = extractvalue { i64, ptr } %t76, 1
  %t80 = mul i64 %t78, 1
  %t81 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t80)
  call void @llvm.memcpy.p0.p0.i64(ptr %t81, ptr %t79, i64 %t80, i1 false)
  %t82 = insertvalue { i64, ptr } undef, i64 %t78, 0
  %t83 = insertvalue { i64, ptr } %t82, ptr %t81, 1
  %t84 = load ptr, ptr %l30, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s3, ptr %t84, { i64, ptr } %t83)
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s3)
  br label %bb27
bb19:
  %t86 = load { i64, [3 x i64] }, ptr %l2
  %t88 = extractvalue { i64, [3 x i64] } %t86, 0
  %t89 = icmp eq i64 %t88, 3
  br i1 %t89, label %bb20, label %bb21
bb20:
  %t91 = getelementptr { i64, [3 x i64] }, ptr %l2, i32 0, i32 1
  %t92 = getelementptr { i64, i64, i64 }, ptr %t91, i32 0, i32 0
  %t93 = load i64, ptr %t92
  store i64 %t93, ptr %l6, !tbaa !24
  %t95 = getelementptr { i64, [3 x i64] }, ptr %l2, i32 0, i32 1
  %t96 = getelementptr { i64, i64, i64 }, ptr %t95, i32 0, i32 1
  %t97 = load i64, ptr %t96
  store i64 %t97, ptr %l7, !tbaa !24
  br label %bb22
bb21:
  br label %bb26
bb22:
  store %olang.scope zeroinitializer, ptr %s5
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t100 = load i64, ptr %l6, !tbaa !24
  %t101 = load i64, ptr %l7, !tbaa !24
  %t105 = call { i64, i64 } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2elineOf(ptr %v0, ptr %t99, i64 %t100, i64 %t101)
  store { i64, i64 } %t105, ptr %l45
  br label %bb23
bb23:
  %t106 = load { i64, i64 }, ptr %l45
  store { i64, i64 } %t106, ptr %l8
  %t107 = getelementptr { i64, i64 }, ptr %l8, i32 0, i32 0
  %t108 = load i64, ptr %t107, !tbaa !24
  store i64 %t108, ptr %l9, !tbaa !24
  %t110 = getelementptr { i64, i64 }, ptr %l8, i32 0, i32 1
  %t111 = load i64, ptr %t110, !tbaa !24
  store i64 %t111, ptr %l10, !tbaa !24
  %t113 = load ptr, ptr %l1, !tbaa !29
  store ptr %t113, ptr %l48, !tbaa !29
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t116 = getelementptr %"compiler/diag:Diagnostics", ptr %t114, i32 0, i32 1
  %t117 = load i64, ptr %l6, !tbaa !24
  %t120 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %s5, ptr %t116, i64 %t117)
  store { i64, ptr } %t120, ptr %l52
  br label %bb24
bb24:
  %t121 = load i64, ptr %l9, !tbaa !24
  %t122 = load i64, ptr %l7, !tbaa !24
  %t123 = load i64, ptr %l10, !tbaa !24
  %t126 = sub i64 %t122, %t123
  %t128 = add i64 %t126, 1
  %t129 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t130 = extractvalue { i64, ptr } %t129, 1
  %t131 = extractvalue { i64, ptr } %t129, 0
  %t132 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d45, i32 0, i32 1) }, 1
  %t133 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d45, i32 0, i32 1) }, 0
  %t134 = add i64 %t131, %t133
  %t136 = call i64 @__olang_fmt_i64(ptr null, i64 %t121)
  %t137 = add i64 %t134, %t136
  %t138 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d45, i32 0, i32 1) }, 1
  %t139 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d45, i32 0, i32 1) }, 0
  %t140 = add i64 %t137, %t139
  %t142 = call i64 @__olang_fmt_i64(ptr null, i64 %t128)
  %t143 = add i64 %t140, %t142
  %t144 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t143)
  call void @olang_textcopy(ptr %t144, ptr %t130, i64 %t131)
  %t145 = getelementptr i8, ptr %t144, i64 %t131
  call void @olang_textcopy(ptr %t145, ptr %t132, i64 %t133)
  %t146 = getelementptr i8, ptr %t145, i64 %t133
  %t147 = call i64 @__olang_fmt_i64(ptr %t146, i64 %t121)
  %t148 = getelementptr i8, ptr %t146, i64 %t136
  call void @olang_textcopy(ptr %t148, ptr %t138, i64 %t139)
  %t149 = getelementptr i8, ptr %t148, i64 %t139
  %t150 = call i64 @__olang_fmt_i64(ptr %t149, i64 %t128)
  %t151 = insertvalue { i64, ptr } undef, i64 %t143, 0
  %t152 = insertvalue { i64, ptr } %t151, ptr %t144, 1
  %t154 = extractvalue { i64, ptr } %t152, 0
  %t155 = extractvalue { i64, ptr } %t152, 1
  %t156 = mul i64 %t154, 1
  %t157 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t156)
  call void @llvm.memcpy.p0.p0.i64(ptr %t157, ptr %t155, i64 %t156, i1 false)
  %t158 = insertvalue { i64, ptr } undef, i64 %t154, 0
  %t159 = insertvalue { i64, ptr } %t158, ptr %t157, 1
  %t160 = load ptr, ptr %l48, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s5, ptr %t160, { i64, ptr } %t159)
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s5)
  br label %bb27
bb26:
  call void @__olang_check_failed(ptr @olang_loc_63cbd536ec427bfa_9ebcb75929bac85e)
  unreachable
bb27:
  %t162 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s0, ptr %t162, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d46, i32 0, i32 1) })
  br label %bb28
bb28:
  %t164 = load ptr, ptr %l1, !tbaa !29
  store ptr %t164, ptr %l61, !tbaa !29
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t167 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2esgr(ptr %v0, ptr %s0, ptr %s0, ptr %t165, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d47, i32 0, i32 1) })
  store { i64, ptr } %t167, ptr %l63
  br label %bb29
bb29:
  %t168 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t169 = extractvalue { i64, ptr } %t168, 0
  %t170 = extractvalue { i64, ptr } %t168, 1
  %t171 = mul i64 %t169, 1
  %t172 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t171)
  call void @llvm.memcpy.p0.p0.i64(ptr %t172, ptr %t170, i64 %t171, i1 false)
  %t173 = insertvalue { i64, ptr } undef, i64 %t169, 0
  %t174 = insertvalue { i64, ptr } %t173, ptr %t172, 1
  %t175 = load ptr, ptr %l61, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s0, ptr %t175, { i64, ptr } %t174)
  br label %bb30
bb30:
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
  %l10 = alloca i1
  %l11 = alloca ptr
  %l14 = alloca { i64, ptr }
  %l16 = alloca ptr
  %l18 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, [3 x i64] } %a2, ptr %l2
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
  %t9 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %a3, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d48, i32 0, i32 1) })
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
  %t16 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eerrorWord(ptr %v0, ptr %v3, ptr %s1, ptr %t12, { i64, ptr } %a4)
  store { i64, ptr } %t16, ptr %l14
  br label %bb5
bb4:
  store %olang.scope zeroinitializer, ptr %s2
  %t17 = load ptr, ptr %l1, !tbaa !29
  store ptr %t17, ptr %l16, !tbaa !29
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2esgr(ptr %v0, ptr %s2, ptr %s2, ptr %t18, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d49, i32 0, i32 1) })
  store { i64, ptr } %t20, ptr %l18
  br label %bb7
bb5:
  %t21 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t22 = extractvalue { i64, ptr } %t21, 0
  %t23 = extractvalue { i64, ptr } %t21, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load ptr, ptr %l11, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s1, ptr %t28, { i64, ptr } %t27)
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s1)
  br label %bb10
bb7:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2esgr(ptr %v0, ptr %s2, ptr %s2, ptr %t30, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d50, i32 0, i32 1) })
  store { i64, ptr } %t32, ptr %l20
  br label %bb8
bb8:
  %t33 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t33, 1
  %t35 = extractvalue { i64, ptr } %t33, 0
  %t36 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d51, i32 0, i32 1) }, 1
  %t37 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d51, i32 0, i32 1) }, 0
  %t38 = add i64 %t35, %t37
  %t39 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t39, 1
  %t41 = extractvalue { i64, ptr } %t39, 0
  %t42 = add i64 %t38, %t41
  %t43 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d52, i32 0, i32 1) }, 1
  %t44 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d52, i32 0, i32 1) }, 0
  %t45 = add i64 %t42, %t44
  %t46 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t45)
  call void @olang_textcopy(ptr %t46, ptr %t34, i64 %t35)
  %t47 = getelementptr i8, ptr %t46, i64 %t35
  call void @olang_textcopy(ptr %t47, ptr %t36, i64 %t37)
  %t48 = getelementptr i8, ptr %t47, i64 %t37
  call void @olang_textcopy(ptr %t48, ptr %t40, i64 %t41)
  %t49 = getelementptr i8, ptr %t48, i64 %t41
  call void @olang_textcopy(ptr %t49, ptr %t43, i64 %t44)
  %t50 = insertvalue { i64, ptr } undef, i64 %t45, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr %t46, 1
  %t53 = extractvalue { i64, ptr } %t51, 0
  %t54 = extractvalue { i64, ptr } %t51, 1
  %t55 = mul i64 %t53, 1
  %t56 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t55)
  call void @llvm.memcpy.p0.p0.i64(ptr %t56, ptr %t54, i64 %t55, i1 false)
  %t57 = insertvalue { i64, ptr } undef, i64 %t53, 0
  %t58 = insertvalue { i64, ptr } %t57, ptr %t56, 1
  %t59 = load ptr, ptr %l16, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s2, ptr %t59, { i64, ptr } %t58)
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb10
bb10:
  %t61 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %v4, ptr %t61, { i64, ptr } %a5)
  br label %bb11
bb11:
  %t65 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t65, i8 10)
  br label %bb12
bb12:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load ptr, ptr %l1, !tbaa !29
  %t69 = load { i64, [3 x i64] }, ptr %l2
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eputExcerpt(ptr %v0, ptr %v1, ptr %t67, ptr %t68, { i64, [3 x i64] } %t69)
  br label %bb13
bb13:
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
  %l4 = alloca i64
  %l5 = alloca { i64, [3 x i64] }
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
  %l25 = alloca i1
  %l27 = alloca i1
  %l34 = alloca i64
  %l37 = alloca { i64, [3 x i64] }
  %l42 = alloca %"compiler/diag:context"
  %l46 = alloca i64
  %l48 = alloca i64
  %l50 = alloca ptr
  %l53 = alloca i64
  %l55 = alloca i64
  %l57 = alloca ptr
  %l58 = alloca { i64, [3 x i64] }
  %l59 = alloca i64
  %l63 = alloca { i64, ptr }
  %l64 = alloca i64
  %l72 = alloca %"compiler/diag:record"
  %l75 = alloca i64
  %l79 = alloca i64
  %l83 = alloca ptr
  %l84 = alloca i64
  %l85 = alloca { i64, [3 x i64] }
  %l86 = alloca i64
  %l88 = alloca %"compiler/diagmsg:Msg"
  %l92 = alloca %"compiler/diag:note"
  %l101 = alloca i64
  %l104 = alloca i64
  %l125 = alloca %"compiler/diag:context"
  %l138 = alloca i64
  %l145 = alloca i1
  %l153 = alloca %"compiler/diag:context"
  %l160 = alloca i1
  %l164 = alloca ptr
  %l165 = alloca i64
  %l169 = alloca %"compiler/diag:context"
  %l170 = alloca { i64, [3 x i64] }
  %l171 = alloca i64
  %l176 = alloca %"compiler/diag:context"
  %l180 = alloca %"compiler/diag:note"
  %l188 = alloca ptr
  %l189 = alloca i64
  %l193 = alloca %"compiler/diag:context"
  %l194 = alloca { i64, [3 x i64] }
  %l195 = alloca i64
  %l200 = alloca %"compiler/diag:context"
  %l204 = alloca %"compiler/diag:note"
  %s0 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s17 = alloca %olang.scope
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
  %t3 = getelementptr %"compiler/diag:Diagnostics", ptr %t1, i32 0, i32 22
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
  %t9 = getelementptr %"compiler/diag:Diagnostics", ptr %t7, i32 0, i32 14
  %t10 = load i1, ptr %t9, !tbaa !21
  br i1 %t10, label %bb4, label %bb5
bb4:
  %t12 = getelementptr %"compiler/diagmsg:Msg", ptr %l2, i32 0, i32 1
  %t13 = load { i64, ptr }, ptr %t12, !tbaa !27
  %t15 = call i1 @compiler_2fdiag_2eisScopeRule(ptr %v1, { i64, ptr } %t13)
  store i1 %t15, ptr %l27
  br label %bb6
bb5:
  store i1 false, ptr %l25, !tbaa !21
  br label %bb7
bb6:
  %t16 = load i1, ptr %l27, !tbaa !21
  store i1 %t16, ptr %l25, !tbaa !21
  br label %bb7
bb7:
  %t17 = load i1, ptr %l25, !tbaa !21
  br i1 %t17, label %bb8, label %bb9
bb8:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/diag:Diagnostics", ptr %t18, i32 0, i32 15
  %t21 = load i1, ptr %t20, !tbaa !21
  br i1 %t21, label %bb10, label %bb11
bb9:
  br label %bb13
bb10:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/diag:Diagnostics", ptr %t24, i32 0, i32 15
  store i1 true, ptr %t26, !tbaa !21
  br label %bb13
bb13:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load { i64, [3 x i64] }, ptr %l1
  %t31 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eprogramUse(ptr %v0, ptr %t27, { i64, [3 x i64] } %t28)
  store i64 %t31, ptr %l34
  br label %bb14
bb14:
  %t32 = load i64, ptr %l34, !tbaa !24
  store i64 %t32, ptr %l4, !tbaa !24
  %t33 = load i64, ptr %l4, !tbaa !24
  %t35 = icmp slt i64 %t33, 0
  br i1 %t35, label %bb15, label %bb16
bb15:
  %t37 = load { i64, [3 x i64] }, ptr %l1
  store { i64, [3 x i64] } %t37, ptr %l37
  br label %bb18
bb16:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/diag:Diagnostics", ptr %t39, i32 0, i32 12
  %t42 = load i64, ptr %l4, !tbaa !24
  %t45 = call %"compiler/diag:context" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3acontext_3e_2eAt_3ccompiler_2fdiag_3acontext_3e(ptr %v0, ptr %s0, ptr %t41, i64 %t42)
  store %"compiler/diag:context" %t45, ptr %l42
  br label %bb17
bb17:
  %t46 = getelementptr %"compiler/diag:context", ptr %l42, i32 0, i32 0
  %t47 = load { i64, [3 x i64] }, ptr %t46
  store { i64, [3 x i64] } %t47, ptr %l37
  br label %bb18
bb18:
  %t49 = load { i64, [3 x i64] }, ptr %l37
  store { i64, [3 x i64] } %t49, ptr %l5
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/diag:Diagnostics", ptr %t50, i32 0, i32 11
  %t54 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t52)
  store i64 %t54, ptr %l46
  br label %bb19
bb19:
  %t55 = load i64, ptr %l46, !tbaa !24
  %t56 = icmp eq i64 %t55, 0
  br i1 %t56, label %bb20, label %bb21
bb20:
  store i64 -1, ptr %l48, !tbaa !24
  br label %bb24
bb21:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/diag:Diagnostics", ptr %t58, i32 0, i32 11
  store ptr %t60, ptr %l50, !tbaa !29
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/diag:Diagnostics", ptr %t61, i32 0, i32 11
  %t65 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t63)
  store i64 %t65, ptr %l53
  br label %bb22
bb22:
  %t66 = load i64, ptr %l53, !tbaa !24
  %t67 = sub i64 %t66, 1
  %t68 = load ptr, ptr %l50, !tbaa !29
  %t70 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t68, i64 %t67)
  store i64 %t70, ptr %l55
  br label %bb23
bb23:
  %t71 = load i64, ptr %l55, !tbaa !24
  store i64 %t71, ptr %l48, !tbaa !24
  br label %bb24
bb24:
  %t72 = load i64, ptr %l48, !tbaa !24
  store i64 %t72, ptr %l6, !tbaa !24
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/diag:Diagnostics", ptr %t73, i32 0, i32 7
  store ptr %t75, ptr %l57, !tbaa !29
  %t76 = load { i64, [3 x i64] }, ptr %l5
  store { i64, [3 x i64] } %t76, ptr %l58
  %t77 = ptrtoint ptr %v0 to i64
  store i64 %t77, ptr %l59, !tbaa !24
  %t78 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3arecord_2e1
  br i1 %t78, label %bb25, label %bb26
bb25:
  %t80 = call ptr @__olang_region_make(ptr %v0)
  %t81 = ptrtoint ptr %t80 to i64
  store i64 %t81, ptr %l59, !tbaa !24
  br label %bb26
bb26:
  %t82 = getelementptr %"compiler/diagmsg:Msg", ptr %l2, i32 0, i32 1
  %t83 = load { i64, ptr }, ptr %t82, !tbaa !27
  %t85 = extractvalue { i64, ptr } %t83, 1
  %t86 = extractvalue { i64, ptr } %t83, 0
  %t87 = load i64, ptr %l59
  %t88 = inttoptr i64 %t87 to ptr
  %t89 = call ptr @__olang_scope_alloc(ptr %t88, i64 %t86)
  call void @olang_textcopy(ptr %t89, ptr %t85, i64 %t86)
  %t90 = insertvalue { i64, ptr } undef, i64 %t86, 0
  %t91 = insertvalue { i64, ptr } %t90, ptr %t89, 1
  %t93 = load i64, ptr %l59
  %t94 = inttoptr i64 %t93 to ptr
  %t95 = extractvalue { i64, ptr } %t91, 0
  %t96 = extractvalue { i64, ptr } %t91, 1
  %t97 = mul i64 %t95, 1
  %t98 = call ptr @__olang_scope_alloc(ptr %t94, i64 %t97)
  call void @llvm.memcpy.p0.p0.i64(ptr %t98, ptr %t96, i64 %t97, i1 false)
  %t99 = insertvalue { i64, ptr } undef, i64 %t95, 0
  %t100 = insertvalue { i64, ptr } %t99, ptr %t98, 1
  store { i64, ptr } %t100, ptr %l63, !tbaa !27
  %t101 = ptrtoint ptr %v0 to i64
  store i64 %t101, ptr %l64, !tbaa !24
  %t102 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3arecord_2e2
  br i1 %t102, label %bb27, label %bb28
bb27:
  %t104 = call ptr @__olang_region_make(ptr %v0)
  %t105 = ptrtoint ptr %t104 to i64
  store i64 %t105, ptr %l64, !tbaa !24
  br label %bb28
bb28:
  %t106 = getelementptr %"compiler/diagmsg:Msg", ptr %l2, i32 0, i32 2
  %t107 = load { i64, ptr }, ptr %t106, !tbaa !27
  %t109 = extractvalue { i64, ptr } %t107, 1
  %t110 = extractvalue { i64, ptr } %t107, 0
  %t111 = load i64, ptr %l64
  %t112 = inttoptr i64 %t111 to ptr
  %t113 = call ptr @__olang_scope_alloc(ptr %t112, i64 %t110)
  call void @olang_textcopy(ptr %t113, ptr %t109, i64 %t110)
  %t114 = insertvalue { i64, ptr } undef, i64 %t110, 0
  %t115 = insertvalue { i64, ptr } %t114, ptr %t113, 1
  %t117 = load i64, ptr %l64
  %t118 = inttoptr i64 %t117 to ptr
  %t119 = extractvalue { i64, ptr } %t115, 0
  %t120 = extractvalue { i64, ptr } %t115, 1
  %t121 = mul i64 %t119, 1
  %t122 = call ptr @__olang_scope_alloc(ptr %t118, i64 %t121)
  call void @llvm.memcpy.p0.p0.i64(ptr %t122, ptr %t120, i64 %t121, i1 false)
  %t123 = insertvalue { i64, ptr } undef, i64 %t119, 0
  %t124 = insertvalue { i64, ptr } %t123, ptr %t122, 1
  %t125 = getelementptr %"compiler/diagmsg:Msg", ptr %l2, i32 0, i32 0
  %t126 = load i32, ptr %t125, !range !{i32 0, i32 884}
  %t127 = load i64, ptr %l6, !tbaa !24
  %t129 = load { i64, [3 x i64] }, ptr %l58
  %t130 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t135 = call %"compiler/diag:record" @compiler_2fdiag_3arecord_2ector(ptr %v0, ptr %v0, ptr %v0, { i64, [3 x i64] } %t129, { i64, ptr } %t130, { i64, ptr } %t124, i32 %t126, i64 %t127, i1 %a3)
  store %"compiler/diag:record" %t135, ptr %l72
  br label %bb29
bb29:
  %t136 = load ptr, ptr %l57, !tbaa !29
  %t137 = load %"compiler/diag:record", ptr %l72
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2ePush_3ccompiler_2fdiag_3arecord_3e(ptr %v0, ptr %v0, ptr %t136, %"compiler/diag:record" %t137)
  br label %bb30
bb30:
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t140 = getelementptr %"compiler/diag:Diagnostics", ptr %t138, i32 0, i32 7
  %t142 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2eLen_3ccompiler_2fdiag_3arecord_3e(ptr %v0, ptr %t140)
  store i64 %t142, ptr %l75
  br label %bb31
bb31:
  %t143 = load i64, ptr %l75, !tbaa !24
  %t144 = sub i64 %t143, 1
  store i64 %t144, ptr %l7, !tbaa !24
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t148 = getelementptr %"compiler/diag:Diagnostics", ptr %t146, i32 0, i32 12
  %t150 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3acontext_3e_2eLen_3ccompiler_2fdiag_3acontext_3e(ptr %v0, ptr %t148)
  store i64 %t150, ptr %l79
  br label %bb32
bb32:
  %t151 = load i64, ptr %l79, !tbaa !24
  store i64 %t151, ptr %l8, !tbaa !24
  %t152 = load i64, ptr %l4, !tbaa !24
  %t154 = icmp sge i64 %t152, 0
  br i1 %t154, label %bb33, label %bb34
bb33:
  store %olang.scope zeroinitializer, ptr %s6
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t158 = getelementptr %"compiler/diag:Diagnostics", ptr %t156, i32 0, i32 8
  store ptr %t158, ptr %l83, !tbaa !29
  %t159 = load i64, ptr %l7, !tbaa !24
  store i64 %t159, ptr %l84, !tbaa !24
  %t160 = load { i64, [3 x i64] }, ptr %l1
  store { i64, [3 x i64] } %t160, ptr %l85
  %t161 = ptrtoint ptr %v0 to i64
  store i64 %t161, ptr %l86, !tbaa !24
  %t162 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3anote_2e2
  br i1 %t162, label %bb35, label %bb36
bb34:
  br label %bb40
bb35:
  %t164 = call ptr @__olang_region_make(ptr %v0)
  %t165 = ptrtoint ptr %t164 to i64
  store i64 %t165, ptr %l86, !tbaa !24
  br label %bb36
bb36:
  %t166 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteInLibrary(ptr %s6)
  store %"compiler/diagmsg:Msg" %t166, ptr %l88
  br label %bb37
bb37:
  %t167 = getelementptr %"compiler/diagmsg:Msg", ptr %l88, i32 0, i32 2
  %t168 = load { i64, ptr }, ptr %t167, !tbaa !27
  %t170 = extractvalue { i64, ptr } %t168, 1
  %t171 = extractvalue { i64, ptr } %t168, 0
  %t172 = load i64, ptr %l86
  %t173 = inttoptr i64 %t172 to ptr
  %t174 = call ptr @__olang_scope_alloc(ptr %t173, i64 %t171)
  call void @olang_textcopy(ptr %t174, ptr %t170, i64 %t171)
  %t175 = insertvalue { i64, ptr } undef, i64 %t171, 0
  %t176 = insertvalue { i64, ptr } %t175, ptr %t174, 1
  %t178 = load i64, ptr %l86
  %t179 = inttoptr i64 %t178 to ptr
  %t180 = extractvalue { i64, ptr } %t176, 0
  %t181 = extractvalue { i64, ptr } %t176, 1
  %t182 = mul i64 %t180, 1
  %t183 = call ptr @__olang_scope_alloc(ptr %t179, i64 %t182)
  call void @llvm.memcpy.p0.p0.i64(ptr %t183, ptr %t181, i64 %t182, i1 false)
  %t184 = insertvalue { i64, ptr } undef, i64 %t180, 0
  %t185 = insertvalue { i64, ptr } %t184, ptr %t183, 1
  %t186 = load i64, ptr %l84, !tbaa !24
  %t187 = load { i64, [3 x i64] }, ptr %l85
  %t189 = call %"compiler/diag:note" @compiler_2fdiag_3anote_2ector(ptr %v0, ptr %v0, i64 %t186, { i64, [3 x i64] } %t187, { i64, ptr } %t185)
  store %"compiler/diag:note" %t189, ptr %l92
  br label %bb38
bb38:
  %t190 = load ptr, ptr %l83, !tbaa !29
  %t191 = load %"compiler/diag:note", ptr %l92
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3anote_3e_2ePush_3ccompiler_2fdiag_3anote_3e(ptr %v0, ptr %v0, ptr %t190, %"compiler/diag:note" %t191)
  br label %bb39
bb39:
  %t192 = load i64, ptr %l4, !tbaa !24
  %t194 = add i64 %t192, 1
  store i64 %t194, ptr %l8, !tbaa !24
  call void @__olang_scope_close(ptr %s6)
  br label %bb40
bb40:
  store i64 -1, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t198 = getelementptr %"compiler/diag:Diagnostics", ptr %t196, i32 0, i32 13
  %t199 = load i64, ptr %t198, !tbaa !24
  store i64 %t199, ptr %l11, !tbaa !24
  %t201 = load i64, ptr %l8, !tbaa !24
  store i64 %t201, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t203 = load i64, ptr %l12, !tbaa !24
  %t204 = load i64, ptr %l11, !tbaa !24
  %t207 = icmp sgt i64 %t203, %t204
  br i1 %t207, label %bb41, label %bb42
bb41:
  %t209 = load i64, ptr %l13, !tbaa !24
  %t211 = icmp sgt i64 %t209, 0
  br i1 %t211, label %bb43, label %bb44
bb42:
  store i64 0, ptr %l101, !tbaa !24
  br label %bb46
bb43:
  %t213 = load i64, ptr %l12, !tbaa !24
  %t214 = load i64, ptr %l11, !tbaa !24
  %t217 = sub i64 %t213, %t214
  %t218 = load i64, ptr %l13, !tbaa !24
  %t221 = add i64 %t217, %t218
  %t223 = sub i64 %t221, 1
  %t224 = load i64, ptr %l13, !tbaa !24
  %t227 = sdiv i64 %t223, %t224
  store i64 %t227, ptr %l104, !tbaa !24
  br label %bb45
bb44:
  store i64 0, ptr %l104, !tbaa !24
  br label %bb45
bb45:
  %t229 = load i64, ptr %l104, !tbaa !24
  store i64 %t229, ptr %l101, !tbaa !24
  br label %bb46
bb46:
  %t230 = load i64, ptr %l101, !tbaa !24
  store i64 %t230, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb47
bb47:
  %t231 = load i64, ptr %l15, !tbaa !24
  %t232 = load i64, ptr %l14, !tbaa !24
  %t235 = icmp slt i64 %t231, %t232
  %t237 = xor i1 %t235, true
  br i1 %t237, label %bb48, label %bb49
bb48:
  br label %bb59
bb49:
  br label %bb50
bb50:
  %t239 = load i64, ptr %l11, !tbaa !24
  %t240 = load i64, ptr %l15, !tbaa !24
  %t241 = load i64, ptr %l13, !tbaa !24
  %t244 = mul i64 %t240, %t241
  %t247 = add i64 %t239, %t244
  store i64 %t247, ptr %l16, !tbaa !24
  %t249 = load ptr, ptr %l0, !tbaa !29
  %t251 = getelementptr %"compiler/diag:Diagnostics", ptr %t249, i32 0, i32 12
  %t252 = load i64, ptr %l16, !tbaa !24
  %t255 = call %"compiler/diag:context" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3acontext_3e_2eAt_3ccompiler_2fdiag_3acontext_3e(ptr %v0, ptr %v0, ptr %t251, i64 %t252)
  store %"compiler/diag:context" %t255, ptr %l125
  br label %bb51
bb51:
  %t256 = getelementptr %"compiler/diag:context", ptr %l125, i32 0, i32 1
  %t257 = load { i64, ptr }, ptr %t256, !tbaa !27
  %t259 = extractvalue { i64, ptr } %t257, 0
  %t261 = icmp eq i64 %t259, 0
  br i1 %t261, label %bb52, label %bb53
bb52:
  br label %bb58
bb53:
  br label %bb54
bb54:
  %t263 = load i64, ptr %l9, !tbaa !24
  %t265 = icmp slt i64 %t263, 0
  br i1 %t265, label %bb55, label %bb56
bb55:
  %t267 = load i64, ptr %l16, !tbaa !24
  store i64 %t267, ptr %l9, !tbaa !24
  br label %bb57
bb56:
  br label %bb57
bb57:
  %t269 = load i64, ptr %l10, !tbaa !24
  %t271 = add i64 %t269, 1
  store i64 %t271, ptr %l10, !tbaa !24
  br label %bb58
bb58:
  %t273 = load i64, ptr %l15, !tbaa !24
  %t275 = add i64 %t273, 1
  store i64 %t275, ptr %l15, !tbaa !24
  br label %bb47
bb59:
  %t277 = load i64, ptr %l10, !tbaa !24
  %t279 = icmp sgt i64 %t277, 3
  br i1 %t279, label %bb60, label %bb61
bb60:
  store i64 2, ptr %l138, !tbaa !24
  br label %bb62
bb61:
  store i64 3, ptr %l138, !tbaa !24
  br label %bb62
bb62:
  %t281 = load i64, ptr %l138, !tbaa !24
  store i64 %t281, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  %t282 = load i64, ptr %l8, !tbaa !24
  %t284 = sub i64 %t282, 1
  store i64 %t284, ptr %l19, !tbaa !24
  br label %bb63
bb63:
  %t286 = load i64, ptr %l19, !tbaa !24
  %t287 = load ptr, ptr %l0, !tbaa !29
  %t289 = getelementptr %"compiler/diag:Diagnostics", ptr %t287, i32 0, i32 13
  %t290 = load i64, ptr %t289, !tbaa !24
  %t293 = icmp sge i64 %t286, %t290
  br i1 %t293, label %bb64, label %bb65
bb64:
  %t295 = load i64, ptr %l18, !tbaa !24
  %t296 = load i64, ptr %l17, !tbaa !24
  %t299 = icmp slt i64 %t295, %t296
  store i1 %t299, ptr %l145, !tbaa !21
  br label %bb66
bb65:
  store i1 false, ptr %l145, !tbaa !21
  br label %bb66
bb66:
  %t301 = load i1, ptr %l145, !tbaa !21
  %t302 = xor i1 %t301, true
  br i1 %t302, label %bb67, label %bb68
bb67:
  br label %bb87
bb68:
  br label %bb69
bb69:
  %t304 = load ptr, ptr %l0, !tbaa !29
  %t306 = getelementptr %"compiler/diag:Diagnostics", ptr %t304, i32 0, i32 12
  %t307 = load i64, ptr %l19, !tbaa !24
  %t310 = call %"compiler/diag:context" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3acontext_3e_2eAt_3ccompiler_2fdiag_3acontext_3e(ptr %v0, ptr %v0, ptr %t306, i64 %t307)
  store %"compiler/diag:context" %t310, ptr %l153
  br label %bb70
bb70:
  %t311 = getelementptr %"compiler/diag:context", ptr %l153, i32 0, i32 1
  %t312 = load { i64, ptr }, ptr %t311, !tbaa !27
  %t314 = extractvalue { i64, ptr } %t312, 0
  %t316 = icmp sgt i64 %t314, 0
  br i1 %t316, label %bb71, label %bb72
bb71:
  store %olang.scope zeroinitializer, ptr %s14
  %t318 = load i64, ptr %l19, !tbaa !24
  %t319 = load i64, ptr %l9, !tbaa !24
  %t322 = icmp eq i64 %t318, %t319
  br i1 %t322, label %bb73, label %bb74
bb72:
  br label %bb85
bb73:
  %t324 = load i64, ptr %l10, !tbaa !24
  %t326 = icmp sgt i64 %t324, 3
  store i1 %t326, ptr %l160, !tbaa !21
  br label %bb75
bb74:
  store i1 false, ptr %l160, !tbaa !21
  br label %bb75
bb75:
  %t328 = load i1, ptr %l160, !tbaa !21
  br i1 %t328, label %bb76, label %bb77
bb76:
  call void @__olang_scope_close(ptr %s14)
  br label %bb87
bb77:
  br label %bb78
bb78:
  %t329 = load ptr, ptr %l0, !tbaa !29
  %t331 = getelementptr %"compiler/diag:Diagnostics", ptr %t329, i32 0, i32 8
  store ptr %t331, ptr %l164, !tbaa !29
  %t332 = load i64, ptr %l7, !tbaa !24
  store i64 %t332, ptr %l165, !tbaa !24
  %t333 = load ptr, ptr %l0, !tbaa !29
  %t335 = getelementptr %"compiler/diag:Diagnostics", ptr %t333, i32 0, i32 12
  %t336 = load i64, ptr %l19, !tbaa !24
  %t339 = call %"compiler/diag:context" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3acontext_3e_2eAt_3ccompiler_2fdiag_3acontext_3e(ptr %v0, ptr %s14, ptr %t335, i64 %t336)
  store %"compiler/diag:context" %t339, ptr %l169
  br label %bb79
bb79:
  %t340 = getelementptr %"compiler/diag:context", ptr %l169, i32 0, i32 0
  %t341 = load { i64, [3 x i64] }, ptr %t340
  store { i64, [3 x i64] } %t341, ptr %l170
  %t342 = ptrtoint ptr %v0 to i64
  store i64 %t342, ptr %l171, !tbaa !24
  %t343 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3anote_2e2
  br i1 %t343, label %bb80, label %bb81
bb80:
  %t345 = call ptr @__olang_region_make(ptr %v0)
  %t346 = ptrtoint ptr %t345 to i64
  store i64 %t346, ptr %l171, !tbaa !24
  br label %bb81
bb81:
  %t347 = load ptr, ptr %l0, !tbaa !29
  %t349 = getelementptr %"compiler/diag:Diagnostics", ptr %t347, i32 0, i32 12
  %t350 = load i64, ptr %l19, !tbaa !24
  %t353 = call %"compiler/diag:context" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3acontext_3e_2eAt_3ccompiler_2fdiag_3acontext_3e(ptr %v0, ptr %v0, ptr %t349, i64 %t350)
  store %"compiler/diag:context" %t353, ptr %l176
  br label %bb82
bb82:
  %t354 = getelementptr %"compiler/diag:context", ptr %l176, i32 0, i32 1
  %t355 = load { i64, ptr }, ptr %t354, !tbaa !27
  %t357 = extractvalue { i64, ptr } %t355, 1
  %t358 = extractvalue { i64, ptr } %t355, 0
  %t359 = load i64, ptr %l171
  %t360 = inttoptr i64 %t359 to ptr
  %t361 = call ptr @__olang_scope_alloc(ptr %t360, i64 %t358)
  call void @olang_textcopy(ptr %t361, ptr %t357, i64 %t358)
  %t362 = insertvalue { i64, ptr } undef, i64 %t358, 0
  %t363 = insertvalue { i64, ptr } %t362, ptr %t361, 1
  %t365 = load i64, ptr %l171
  %t366 = inttoptr i64 %t365 to ptr
  %t367 = extractvalue { i64, ptr } %t363, 0
  %t368 = extractvalue { i64, ptr } %t363, 1
  %t369 = mul i64 %t367, 1
  %t370 = call ptr @__olang_scope_alloc(ptr %t366, i64 %t369)
  call void @llvm.memcpy.p0.p0.i64(ptr %t370, ptr %t368, i64 %t369, i1 false)
  %t371 = insertvalue { i64, ptr } undef, i64 %t367, 0
  %t372 = insertvalue { i64, ptr } %t371, ptr %t370, 1
  %t373 = load i64, ptr %l165, !tbaa !24
  %t374 = load { i64, [3 x i64] }, ptr %l170
  %t376 = call %"compiler/diag:note" @compiler_2fdiag_3anote_2ector(ptr %v0, ptr %v0, i64 %t373, { i64, [3 x i64] } %t374, { i64, ptr } %t372)
  store %"compiler/diag:note" %t376, ptr %l180
  br label %bb83
bb83:
  %t377 = load ptr, ptr %l164, !tbaa !29
  %t378 = load %"compiler/diag:note", ptr %l180
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3anote_3e_2ePush_3ccompiler_2fdiag_3anote_3e(ptr %v0, ptr %v0, ptr %t377, %"compiler/diag:note" %t378)
  br label %bb84
bb84:
  %t379 = load i64, ptr %l18, !tbaa !24
  %t381 = add i64 %t379, 1
  store i64 %t381, ptr %l18, !tbaa !24
  call void @__olang_scope_close(ptr %s14)
  br label %bb85
bb85:
  %t383 = load i64, ptr %l19, !tbaa !24
  %t385 = sub i64 %t383, 1
  store i64 %t385, ptr %l19, !tbaa !24
  br label %bb86
bb86:
  br label %bb63
bb87:
  %t387 = load i64, ptr %l10, !tbaa !24
  %t389 = icmp sgt i64 %t387, 3
  br i1 %t389, label %bb88, label %bb89
bb88:
  store %olang.scope zeroinitializer, ptr %s17
  %t391 = load ptr, ptr %l0, !tbaa !29
  %t393 = getelementptr %"compiler/diag:Diagnostics", ptr %t391, i32 0, i32 8
  store ptr %t393, ptr %l188, !tbaa !29
  %t394 = load i64, ptr %l7, !tbaa !24
  store i64 %t394, ptr %l189, !tbaa !24
  %t395 = load ptr, ptr %l0, !tbaa !29
  %t397 = getelementptr %"compiler/diag:Diagnostics", ptr %t395, i32 0, i32 12
  %t398 = load i64, ptr %l9, !tbaa !24
  %t401 = call %"compiler/diag:context" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3acontext_3e_2eAt_3ccompiler_2fdiag_3acontext_3e(ptr %v0, ptr %s17, ptr %t397, i64 %t398)
  store %"compiler/diag:context" %t401, ptr %l193
  br label %bb90
bb89:
  br label %bb96
bb90:
  %t402 = getelementptr %"compiler/diag:context", ptr %l193, i32 0, i32 0
  %t403 = load { i64, [3 x i64] }, ptr %t402
  store { i64, [3 x i64] } %t403, ptr %l194
  %t404 = ptrtoint ptr %v0 to i64
  store i64 %t404, ptr %l195, !tbaa !24
  %t405 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3anote_2e2
  br i1 %t405, label %bb91, label %bb92
bb91:
  %t407 = call ptr @__olang_region_make(ptr %v0)
  %t408 = ptrtoint ptr %t407 to i64
  store i64 %t408, ptr %l195, !tbaa !24
  br label %bb92
bb92:
  %t409 = load ptr, ptr %l0, !tbaa !29
  %t411 = getelementptr %"compiler/diag:Diagnostics", ptr %t409, i32 0, i32 12
  %t412 = load i64, ptr %l9, !tbaa !24
  %t415 = call %"compiler/diag:context" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3acontext_3e_2eAt_3ccompiler_2fdiag_3acontext_3e(ptr %v0, ptr %v0, ptr %t411, i64 %t412)
  store %"compiler/diag:context" %t415, ptr %l200
  br label %bb93
bb93:
  %t416 = getelementptr %"compiler/diag:context", ptr %l200, i32 0, i32 1
  %t417 = load { i64, ptr }, ptr %t416, !tbaa !27
  %t419 = extractvalue { i64, ptr } %t417, 1
  %t420 = extractvalue { i64, ptr } %t417, 0
  %t421 = load i64, ptr %l195
  %t422 = inttoptr i64 %t421 to ptr
  %t423 = call ptr @__olang_scope_alloc(ptr %t422, i64 %t420)
  call void @olang_textcopy(ptr %t423, ptr %t419, i64 %t420)
  %t424 = insertvalue { i64, ptr } undef, i64 %t420, 0
  %t425 = insertvalue { i64, ptr } %t424, ptr %t423, 1
  %t427 = load i64, ptr %l195
  %t428 = inttoptr i64 %t427 to ptr
  %t429 = extractvalue { i64, ptr } %t425, 0
  %t430 = extractvalue { i64, ptr } %t425, 1
  %t431 = mul i64 %t429, 1
  %t432 = call ptr @__olang_scope_alloc(ptr %t428, i64 %t431)
  call void @llvm.memcpy.p0.p0.i64(ptr %t432, ptr %t430, i64 %t431, i1 false)
  %t433 = insertvalue { i64, ptr } undef, i64 %t429, 0
  %t434 = insertvalue { i64, ptr } %t433, ptr %t432, 1
  %t435 = load i64, ptr %l189, !tbaa !24
  %t436 = load { i64, [3 x i64] }, ptr %l194
  %t438 = call %"compiler/diag:note" @compiler_2fdiag_3anote_2ector(ptr %v0, ptr %v0, i64 %t435, { i64, [3 x i64] } %t436, { i64, ptr } %t434)
  store %"compiler/diag:note" %t438, ptr %l204
  br label %bb94
bb94:
  %t439 = load ptr, ptr %l188, !tbaa !29
  %t440 = load %"compiler/diag:note", ptr %l204
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3anote_3e_2ePush_3ccompiler_2fdiag_3anote_3e(ptr %v0, ptr %v0, ptr %t439, %"compiler/diag:note" %t440)
  br label %bb95
bb95:
  call void @__olang_scope_close(ptr %s17)
  br label %bb96
bb96:
  %t441 = load i64, ptr %l7, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t441, ptr %rv
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d53, i32 0, i32 1) }, ptr %l6, !tbaa !27
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
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l2, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d54, i32 0, i32 1) })
  br label %bb6
bb6:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v1, ptr %l2, { i64, ptr } %a1)
  br label %bb7
bb7:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l2, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d55, i32 0, i32 1) })
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
  %t590 = alloca i64
  %t665 = alloca { { i64, ptr }, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr }, align 8
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
  %t62 = icmp ne ptr %t61, null
  %t63 = select i1 %t62, ptr %t61, ptr null
  %t64 = icmp eq ptr %t63, %t57
  call void @__olang_region_settle(ptr %t57, i1 %t64)
  br label %bb18
bb18:
  %t65 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l66
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t65, ptr %l5
  store i64 0, ptr %l6, !tbaa !24
  %t66 = load i64, ptr %l1, !tbaa !24
  store i64 %t66, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t68 = load i64, ptr %l7, !tbaa !24
  %t69 = load i64, ptr %l6, !tbaa !24
  %t72 = icmp sgt i64 %t68, %t69
  br i1 %t72, label %bb19, label %bb20
bb19:
  %t74 = load i64, ptr %l8, !tbaa !24
  %t76 = icmp sgt i64 %t74, 0
  br i1 %t76, label %bb21, label %bb22
bb20:
  store i64 0, ptr %l72, !tbaa !24
  br label %bb24
bb21:
  %t78 = load i64, ptr %l7, !tbaa !24
  %t79 = load i64, ptr %l6, !tbaa !24
  %t82 = sub i64 %t78, %t79
  %t83 = load i64, ptr %l8, !tbaa !24
  %t86 = add i64 %t82, %t83
  %t88 = sub i64 %t86, 1
  %t89 = load i64, ptr %l8, !tbaa !24
  %t92 = sdiv i64 %t88, %t89
  store i64 %t92, ptr %l75, !tbaa !24
  br label %bb23
bb22:
  store i64 0, ptr %l75, !tbaa !24
  br label %bb23
bb23:
  %t94 = load i64, ptr %l75, !tbaa !24
  store i64 %t94, ptr %l72, !tbaa !24
  br label %bb24
bb24:
  %t95 = load i64, ptr %l72, !tbaa !24
  store i64 %t95, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb25
bb25:
  %t96 = load i64, ptr %l10, !tbaa !24
  %t97 = load i64, ptr %l9, !tbaa !24
  %t100 = icmp slt i64 %t96, %t97
  %t102 = xor i1 %t100, true
  br i1 %t102, label %bb26, label %bb27
bb26:
  br label %bb110
bb27:
  br label %bb28
bb28:
  %t104 = load i64, ptr %l6, !tbaa !24
  %t105 = load i64, ptr %l10, !tbaa !24
  %t106 = load i64, ptr %l8, !tbaa !24
  %t109 = mul i64 %t105, %t106
  %t112 = add i64 %t104, %t109
  store i64 %t112, ptr %l11, !tbaa !24
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t116 = getelementptr %"compiler/diag:Diagnostics", ptr %t114, i32 0, i32 7
  %t117 = load i64, ptr %l11, !tbaa !24
  %t120 = call %"compiler/diag:record" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2eAt_3ccompiler_2fdiag_3arecord_3e(ptr %v0, ptr %v0, ptr %t116, i64 %t117)
  store %"compiler/diag:record" %t120, ptr %l96
  br label %bb29
bb29:
  %t121 = load %"compiler/diag:record", ptr %l96
  store %"compiler/diag:record" %t121, ptr %l12
  %t122 = load i64, ptr %l11, !tbaa !24
  %t124 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t125 = load ptr, ptr %t124, !tbaa !27
  %t126 = getelementptr i64, ptr %t125, i64 %t122
  store i64 -1, ptr %t126, !tbaa !34
  %t127 = load i64, ptr %l11, !tbaa !24
  %t129 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t130 = load ptr, ptr %t129, !tbaa !27
  %t131 = getelementptr i64, ptr %t130, i64 %t127
  store i64 9223372036854775807, ptr %t131, !tbaa !34
  %t132 = getelementptr %"compiler/diag:record", ptr %l12, i32 0, i32 0
  %t133 = load { i64, [3 x i64] }, ptr %t132
  store { i64, [3 x i64] } %t133, ptr %l13
  %t135 = load { i64, [3 x i64] }, ptr %l13
  %t137 = extractvalue { i64, [3 x i64] } %t135, 0
  %t138 = icmp eq i64 %t137, 3
  br i1 %t138, label %bb30, label %bb31
bb30:
  %t140 = getelementptr { i64, [3 x i64] }, ptr %l13, i32 0, i32 1
  %t141 = getelementptr { i64, i64, i64 }, ptr %t140, i32 0, i32 0
  %t142 = load i64, ptr %t141
  store i64 %t142, ptr %l14, !tbaa !24
  %t144 = getelementptr { i64, [3 x i64] }, ptr %l13, i32 0, i32 1
  %t145 = getelementptr { i64, i64, i64 }, ptr %t144, i32 0, i32 1
  %t146 = load i64, ptr %t145
  store i64 %t146, ptr %l15, !tbaa !24
  br label %bb32
bb31:
  br label %bb34
bb32:
  %t148 = load i64, ptr %l11, !tbaa !24
  %t149 = load i64, ptr %l14, !tbaa !24
  %t152 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t153 = load ptr, ptr %t152, !tbaa !27
  %t154 = getelementptr i64, ptr %t153, i64 %t148
  store i64 %t149, ptr %t154, !tbaa !34
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t156 = load i64, ptr %l14, !tbaa !24
  %t157 = load i64, ptr %l15, !tbaa !24
  %t161 = call { i64, i64 } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2elineOf(ptr %v0, ptr %t155, i64 %t156, i64 %t157)
  store { i64, i64 } %t161, ptr %l109
  br label %bb33
bb33:
  %t162 = load { i64, i64 }, ptr %l109
  store { i64, i64 } %t162, ptr %l16
  %t163 = getelementptr { i64, i64 }, ptr %l16, i32 0, i32 0
  %t164 = load i64, ptr %t163, !tbaa !24
  %t166 = getelementptr { i64, i64 }, ptr %l16, i32 0, i32 1
  %t167 = load i64, ptr %t166, !tbaa !24
  %t169 = load i64, ptr %l11, !tbaa !24
  %t173 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t174 = load ptr, ptr %t173, !tbaa !27
  %t175 = getelementptr i64, ptr %t174, i64 %t169
  store i64 %t164, ptr %t175, !tbaa !34
  %t176 = load i64, ptr %l11, !tbaa !24
  %t177 = load i64, ptr %l15, !tbaa !24
  %t181 = sub i64 %t177, %t167
  %t183 = add i64 %t181, 1
  %t186 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t187 = load ptr, ptr %t186, !tbaa !27
  %t188 = getelementptr i64, ptr %t187, i64 %t176
  store i64 %t183, ptr %t188, !tbaa !34
  br label %bb47
bb34:
  %t189 = load { i64, [3 x i64] }, ptr %l13
  %t191 = extractvalue { i64, [3 x i64] } %t189, 0
  %t192 = icmp eq i64 %t191, 2
  br i1 %t192, label %bb35, label %bb36
bb35:
  %t194 = getelementptr { i64, [3 x i64] }, ptr %l13, i32 0, i32 1
  %t195 = getelementptr { i64, i64 }, ptr %t194, i32 0, i32 0
  %t196 = load i64, ptr %t195
  store i64 %t196, ptr %l19, !tbaa !24
  %t198 = getelementptr { i64, [3 x i64] }, ptr %l13, i32 0, i32 1
  %t199 = getelementptr { i64, i64 }, ptr %t198, i32 0, i32 1
  %t200 = load i64, ptr %t199
  store i64 %t200, ptr %l20, !tbaa !24
  br label %bb37
bb36:
  br label %bb38
bb37:
  %t202 = load i64, ptr %l11, !tbaa !24
  %t203 = load i64, ptr %l19, !tbaa !24
  %t206 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t207 = load ptr, ptr %t206, !tbaa !27
  %t208 = getelementptr i64, ptr %t207, i64 %t202
  store i64 %t203, ptr %t208, !tbaa !34
  %t209 = load i64, ptr %l11, !tbaa !24
  %t210 = load i64, ptr %l20, !tbaa !24
  %t213 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t214 = load ptr, ptr %t213, !tbaa !27
  %t215 = getelementptr i64, ptr %t214, i64 %t209
  store i64 %t210, ptr %t215, !tbaa !34
  br label %bb47
bb38:
  %t216 = load { i64, [3 x i64] }, ptr %l13
  %t218 = extractvalue { i64, [3 x i64] } %t216, 0
  %t219 = icmp eq i64 %t218, 1
  br i1 %t219, label %bb39, label %bb40
bb39:
  %t221 = getelementptr { i64, [3 x i64] }, ptr %l13, i32 0, i32 1
  %t222 = getelementptr { i64 }, ptr %t221, i32 0, i32 0
  %t223 = load i64, ptr %t222
  store i64 %t223, ptr %l21, !tbaa !24
  br label %bb41
bb40:
  br label %bb42
bb41:
  %t225 = load i64, ptr %l11, !tbaa !24
  %t226 = load i64, ptr %l21, !tbaa !24
  %t229 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t230 = load ptr, ptr %t229, !tbaa !27
  %t231 = getelementptr i64, ptr %t230, i64 %t225
  store i64 %t226, ptr %t231, !tbaa !34
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
  %t232 = load ptr, ptr %l0, !tbaa !29
  %t233 = getelementptr %"compiler/diag:record", ptr %l12, i32 0, i32 4
  %t234 = load i64, ptr %t233, !tbaa !24
  %t237 = call i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2echosen(ptr %v0, ptr %t232, i64 %t234)
  store i1 %t237, ptr %l134
  br label %bb48
bb48:
  %t238 = load i1, ptr %l134, !tbaa !21
  %t239 = xor i1 %t238, true
  br i1 %t239, label %bb49, label %bb50
bb49:
  br label %bb109
bb50:
  br label %bb51
bb51:
  store i1 false, ptr %l22, !tbaa !21
  store i64 0, ptr %l23, !tbaa !24
  %t242 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l5)
  store i64 %t242, ptr %l137
  br label %bb52
bb52:
  %t243 = load i64, ptr %l137, !tbaa !24
  store i64 %t243, ptr %l24, !tbaa !24
  store i64 1, ptr %l25, !tbaa !24
  %t244 = load i64, ptr %l24, !tbaa !24
  %t245 = load i64, ptr %l23, !tbaa !24
  %t248 = icmp sgt i64 %t244, %t245
  br i1 %t248, label %bb53, label %bb54
bb53:
  %t250 = load i64, ptr %l25, !tbaa !24
  %t252 = icmp sgt i64 %t250, 0
  br i1 %t252, label %bb55, label %bb56
bb54:
  store i64 0, ptr %l141, !tbaa !24
  br label %bb58
bb55:
  %t254 = load i64, ptr %l24, !tbaa !24
  %t255 = load i64, ptr %l23, !tbaa !24
  %t258 = sub i64 %t254, %t255
  %t259 = load i64, ptr %l25, !tbaa !24
  %t262 = add i64 %t258, %t259
  %t264 = sub i64 %t262, 1
  %t265 = load i64, ptr %l25, !tbaa !24
  %t268 = sdiv i64 %t264, %t265
  store i64 %t268, ptr %l144, !tbaa !24
  br label %bb57
bb56:
  store i64 0, ptr %l144, !tbaa !24
  br label %bb57
bb57:
  %t270 = load i64, ptr %l144, !tbaa !24
  store i64 %t270, ptr %l141, !tbaa !24
  br label %bb58
bb58:
  %t271 = load i64, ptr %l141, !tbaa !24
  store i64 %t271, ptr %l26, !tbaa !24
  store i64 0, ptr %l27, !tbaa !24
  br label %bb59
bb59:
  %t272 = load i64, ptr %l27, !tbaa !24
  %t273 = load i64, ptr %l26, !tbaa !24
  %t276 = icmp slt i64 %t272, %t273
  %t278 = xor i1 %t276, true
  br i1 %t278, label %bb60, label %bb61
bb60:
  br label %bb104
bb61:
  br label %bb62
bb62:
  %t280 = load i64, ptr %l23, !tbaa !24
  %t281 = load i64, ptr %l27, !tbaa !24
  %t282 = load i64, ptr %l25, !tbaa !24
  %t285 = mul i64 %t281, %t282
  %t288 = add i64 %t280, %t285
  store i64 %t288, ptr %l28, !tbaa !24
  %t290 = load i64, ptr %l28, !tbaa !24
  %t293 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l5, i64 %t290)
  store i64 %t293, ptr %l164
  br label %bb63
bb63:
  %t294 = load i64, ptr %l164, !tbaa !24
  store i64 %t294, ptr %l29, !tbaa !24
  %t295 = load ptr, ptr %l0, !tbaa !29
  %t297 = getelementptr %"compiler/diag:Diagnostics", ptr %t295, i32 0, i32 7
  %t298 = load i64, ptr %l29, !tbaa !24
  %t301 = call %"compiler/diag:record" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2eAt_3ccompiler_2fdiag_3arecord_3e(ptr %v0, ptr %v0, ptr %t297, i64 %t298)
  store %"compiler/diag:record" %t301, ptr %l168
  br label %bb64
bb64:
  %t302 = load %"compiler/diag:record", ptr %l168
  store %"compiler/diag:record" %t302, ptr %l30
  %t303 = load i64, ptr %l29, !tbaa !24
  %t305 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t306 = load ptr, ptr %t305, !tbaa !27
  %t307 = getelementptr i64, ptr %t306, i64 %t303
  %t308 = load i64, ptr %t307, !tbaa !34
  %t309 = load i64, ptr %l11, !tbaa !24
  %t311 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t312 = load ptr, ptr %t311, !tbaa !27
  %t313 = getelementptr i64, ptr %t312, i64 %t309
  %t314 = load i64, ptr %t313, !tbaa !34
  %t317 = icmp eq i64 %t308, %t314
  br i1 %t317, label %bb65, label %bb66
bb65:
  %t319 = load i64, ptr %l29, !tbaa !24
  %t321 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t322 = load ptr, ptr %t321, !tbaa !27
  %t323 = getelementptr i64, ptr %t322, i64 %t319
  %t324 = load i64, ptr %t323, !tbaa !34
  %t325 = load i64, ptr %l11, !tbaa !24
  %t327 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t328 = load ptr, ptr %t327, !tbaa !27
  %t329 = getelementptr i64, ptr %t328, i64 %t325
  %t330 = load i64, ptr %t329, !tbaa !34
  %t333 = icmp eq i64 %t324, %t330
  store i1 %t333, ptr %l174, !tbaa !21
  br label %bb67
bb66:
  store i1 false, ptr %l174, !tbaa !21
  br label %bb67
bb67:
  %t335 = load i1, ptr %l174, !tbaa !21
  br i1 %t335, label %bb68, label %bb69
bb68:
  %t336 = load i64, ptr %l29, !tbaa !24
  %t338 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t339 = load ptr, ptr %t338, !tbaa !27
  %t340 = getelementptr i64, ptr %t339, i64 %t336
  %t341 = load i64, ptr %t340, !tbaa !34
  %t342 = load i64, ptr %l11, !tbaa !24
  %t344 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t345 = load ptr, ptr %t344, !tbaa !27
  %t346 = getelementptr i64, ptr %t345, i64 %t342
  %t347 = load i64, ptr %t346, !tbaa !34
  %t350 = icmp eq i64 %t341, %t347
  store i1 %t350, ptr %l180, !tbaa !21
  br label %bb70
bb69:
  store i1 false, ptr %l180, !tbaa !21
  br label %bb70
bb70:
  %t352 = load i1, ptr %l180, !tbaa !21
  br i1 %t352, label %bb71, label %bb72
bb71:
  %t353 = getelementptr %"compiler/diag:record", ptr %l30, i32 0, i32 2
  %t354 = load { i64, ptr }, ptr %t353, !tbaa !27
  %t355 = getelementptr %"compiler/diag:record", ptr %l12, i32 0, i32 2
  %t356 = load { i64, ptr }, ptr %t355, !tbaa !27
  %t359 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v0, { i64, ptr } %t354, { i64, ptr } %t356)
  store i1 %t359, ptr %l189
  br label %bb73
bb72:
  store i1 false, ptr %l186, !tbaa !21
  br label %bb74
bb73:
  %t360 = load i1, ptr %l189, !tbaa !21
  store i1 %t360, ptr %l186, !tbaa !21
  br label %bb74
bb74:
  %t361 = load i1, ptr %l186, !tbaa !21
  br i1 %t361, label %bb75, label %bb76
bb75:
  store i1 true, ptr %l22, !tbaa !21
  %t362 = load i64, ptr %l29, !tbaa !24
  %t364 = load ptr, ptr %l0, !tbaa !29
  %t366 = getelementptr %"compiler/diag:Diagnostics", ptr %t364, i32 0, i32 16
  %t370 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %t366, i64 %t362)
  store i1 %t370, ptr %l194
  br label %bb77
bb76:
  br label %bb86
bb77:
  %t371 = load i1, ptr %l194, !tbaa !21
  br i1 %t371, label %bb78, label %bb79
bb78:
  %t372 = load i64, ptr %l11, !tbaa !24
  %t374 = load ptr, ptr %l0, !tbaa !29
  %t376 = getelementptr %"compiler/diag:Diagnostics", ptr %t374, i32 0, i32 16
  %t380 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %t376, i64 %t372)
  store i1 %t380, ptr %l200
  br label %bb80
bb79:
  store i1 false, ptr %l195, !tbaa !21
  br label %bb81
bb80:
  %t381 = load i1, ptr %l200, !tbaa !21
  %t382 = xor i1 %t381, true
  store i1 %t382, ptr %l195, !tbaa !21
  br label %bb81
bb81:
  %t384 = load i1, ptr %l195, !tbaa !21
  br i1 %t384, label %bb82, label %bb83
bb82:
  %t385 = load i64, ptr %l28, !tbaa !24
  %t386 = load i64, ptr %l11, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %s0, ptr %l5, i64 %t385, i64 %t386)
  br label %bb84
bb83:
  br label %bb85
bb84:
  br label %bb85
bb85:
  br label %bb86
bb86:
  %t390 = getelementptr %"compiler/diag:record", ptr %l12, i32 0, i32 5
  %t391 = load i1, ptr %t390, !tbaa !21
  br i1 %t391, label %bb87, label %bb88
bb87:
  %t393 = getelementptr %"compiler/diag:record", ptr %l30, i32 0, i32 5
  %t394 = load i1, ptr %t393, !tbaa !21
  store i1 %t394, ptr %l206, !tbaa !21
  br label %bb89
bb88:
  store i1 false, ptr %l206, !tbaa !21
  br label %bb89
bb89:
  %t396 = load i1, ptr %l206, !tbaa !21
  br i1 %t396, label %bb90, label %bb91
bb90:
  %t397 = getelementptr %"compiler/diag:record", ptr %l30, i32 0, i32 3
  %t398 = load i32, ptr %t397, !range !{i32 0, i32 884}
  store i32 %t398, ptr %l209
  %t399 = getelementptr %"compiler/diag:record", ptr %l12, i32 0, i32 3
  %t400 = load i32, ptr %t399, !range !{i32 0, i32 884}
  store i32 %t400, ptr %l211
  %t403 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fmsgs_3aDiag(ptr %l209, ptr %l211)
  store i1 %t403, ptr %l213
  br label %bb92
bb91:
  store i1 false, ptr %l208, !tbaa !21
  br label %bb93
bb92:
  %t404 = load i1, ptr %l213, !tbaa !21
  store i1 %t404, ptr %l208, !tbaa !21
  br label %bb93
bb93:
  %t405 = load i1, ptr %l208, !tbaa !21
  br i1 %t405, label %bb94, label %bb95
bb94:
  %t406 = load i64, ptr %l29, !tbaa !24
  %t408 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t409 = load ptr, ptr %t408, !tbaa !27
  %t410 = getelementptr i64, ptr %t409, i64 %t406
  %t411 = load i64, ptr %t410, !tbaa !34
  %t412 = load i64, ptr %l11, !tbaa !24
  %t414 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t415 = load ptr, ptr %t414, !tbaa !27
  %t416 = getelementptr i64, ptr %t415, i64 %t412
  %t417 = load i64, ptr %t416, !tbaa !34
  %t420 = icmp eq i64 %t411, %t417
  store i1 %t420, ptr %l214, !tbaa !21
  br label %bb96
bb95:
  store i1 false, ptr %l214, !tbaa !21
  br label %bb96
bb96:
  %t422 = load i1, ptr %l214, !tbaa !21
  br i1 %t422, label %bb97, label %bb98
bb97:
  %t423 = load i64, ptr %l29, !tbaa !24
  %t425 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t426 = load ptr, ptr %t425, !tbaa !27
  %t427 = getelementptr i64, ptr %t426, i64 %t423
  %t428 = load i64, ptr %t427, !tbaa !34
  %t429 = load i64, ptr %l11, !tbaa !24
  %t431 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t432 = load ptr, ptr %t431, !tbaa !27
  %t433 = getelementptr i64, ptr %t432, i64 %t429
  %t434 = load i64, ptr %t433, !tbaa !34
  %t437 = icmp eq i64 %t428, %t434
  store i1 %t437, ptr %l220, !tbaa !21
  br label %bb99
bb98:
  store i1 false, ptr %l220, !tbaa !21
  br label %bb99
bb99:
  %t439 = load i1, ptr %l220, !tbaa !21
  br i1 %t439, label %bb100, label %bb101
bb100:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb102
bb101:
  br label %bb102
bb102:
  br label %bb103
bb103:
  %t440 = load i64, ptr %l27, !tbaa !24
  %t442 = add i64 %t440, 1
  store i64 %t442, ptr %l27, !tbaa !24
  br label %bb59
bb104:
  %t444 = load i1, ptr %l22, !tbaa !21
  %t446 = xor i1 %t444, true
  br i1 %t446, label %bb105, label %bb106
bb105:
  %t448 = load i64, ptr %l11, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l5, i64 %t448)
  br label %bb107
bb106:
  br label %bb108
bb107:
  br label %bb108
bb108:
  br label %bb109
bb109:
  %t451 = load i64, ptr %l10, !tbaa !24
  %t453 = add i64 %t451, 1
  store i64 %t453, ptr %l10, !tbaa !24
  br label %bb25
bb110:
  %t455 = load ptr, ptr %l0, !tbaa !29
  %t457 = getelementptr %"compiler/diag:Diagnostics", ptr %t455, i32 0, i32 17
  %t459 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t457)
  store i64 %t459, ptr %l236
  br label %bb111
bb111:
  %t460 = load i64, ptr %l236, !tbaa !24
  %t461 = icmp sgt i64 %t460, 0
  br i1 %t461, label %bb112, label %bb113
bb112:
  store i1 false, ptr %l33, !tbaa !21
  store ptr %l5, ptr %l34, !tbaa !29
  store i64 0, ptr %l35, !tbaa !24
  br label %bb114
bb113:
  br label %bb150
bb114:
  %t464 = load i64, ptr %l35, !tbaa !24
  store i64 %t464, ptr %l239, !tbaa !24
  %t465 = load ptr, ptr %l34, !tbaa !29
  %t467 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t465)
  store i64 %t467, ptr %l241
  br label %bb115
bb115:
  %t468 = load i64, ptr %l239, !tbaa !24
  %t469 = load i64, ptr %l241, !tbaa !24
  %t470 = icmp slt i64 %t468, %t469
  %t472 = xor i1 %t470, true
  br i1 %t472, label %bb116, label %bb117
bb116:
  br label %bb125
bb117:
  br label %bb118
bb118:
  %t474 = load ptr, ptr %l34, !tbaa !29
  %t475 = load i64, ptr %l35, !tbaa !24
  %t478 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t474, i64 %t475)
  store i64 %t478, ptr %l246
  br label %bb119
bb119:
  %t479 = load i64, ptr %l246, !tbaa !24
  store i64 %t479, ptr %l36, !tbaa !24
  %t480 = load i1, ptr %l33, !tbaa !21
  br i1 %t480, label %bb120, label %bb121
bb120:
  store i1 true, ptr %l248, !tbaa !21
  br label %bb123
bb121:
  %t482 = load i64, ptr %l36, !tbaa !24
  %t484 = load ptr, ptr %l0, !tbaa !29
  %t486 = getelementptr %"compiler/diag:Diagnostics", ptr %t484, i32 0, i32 17
  %t490 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %t486, i64 %t482)
  store i1 %t490, ptr %l253
  br label %bb122
bb122:
  %t491 = load i1, ptr %l253, !tbaa !21
  %t492 = xor i1 %t491, true
  store i1 %t492, ptr %l248, !tbaa !21
  br label %bb123
bb123:
  %t494 = load i1, ptr %l248, !tbaa !21
  store i1 %t494, ptr %l33, !tbaa !21
  br label %bb124
bb124:
  %t495 = load i64, ptr %l35, !tbaa !24
  %t497 = add i64 %t495, 1
  store i64 %t497, ptr %l35, !tbaa !24
  br label %bb114
bb125:
  %t499 = load i1, ptr %l33, !tbaa !21
  br i1 %t499, label %bb126, label %bb127
bb126:
  %t501 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t501, ptr %l258
  br label %bb128
bb127:
  br label %bb149
bb128:
  %t502 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 32, i64 8)
  store ptr %t502, ptr %lp38
  %t503 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l258
  %t504 = load ptr, ptr %lp38
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t503, ptr %t504
  store ptr %l5, ptr %l39, !tbaa !29
  store i64 0, ptr %l40, !tbaa !24
  br label %bb129
bb129:
  %t506 = load i64, ptr %l40, !tbaa !24
  store i64 %t506, ptr %l260, !tbaa !24
  %t507 = load ptr, ptr %l39, !tbaa !29
  %t509 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t507)
  store i64 %t509, ptr %l262
  br label %bb130
bb130:
  %t510 = load i64, ptr %l260, !tbaa !24
  %t511 = load i64, ptr %l262, !tbaa !24
  %t512 = icmp slt i64 %t510, %t511
  %t514 = xor i1 %t512, true
  br i1 %t514, label %bb131, label %bb132
bb131:
  br label %bb141
bb132:
  br label %bb133
bb133:
  %t516 = load ptr, ptr %l39, !tbaa !29
  %t517 = load i64, ptr %l40, !tbaa !24
  %t520 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t516, i64 %t517)
  store i64 %t520, ptr %l267
  br label %bb134
bb134:
  %t521 = load i64, ptr %l267, !tbaa !24
  store i64 %t521, ptr %l41, !tbaa !24
  %t522 = load i64, ptr %l41, !tbaa !24
  %t524 = load ptr, ptr %l0, !tbaa !29
  %t526 = getelementptr %"compiler/diag:Diagnostics", ptr %t524, i32 0, i32 17
  %t530 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %t526, i64 %t522)
  store i1 %t530, ptr %l272
  br label %bb135
bb135:
  %t531 = load i1, ptr %l272, !tbaa !21
  %t532 = xor i1 %t531, true
  br i1 %t532, label %bb136, label %bb137
bb136:
  %t534 = load ptr, ptr %lp38
  %t535 = load i64, ptr %l41, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %t534, i64 %t535)
  br label %bb138
bb137:
  br label %bb139
bb138:
  br label %bb139
bb139:
  br label %bb140
bb140:
  %t538 = load i64, ptr %l40, !tbaa !24
  %t540 = add i64 %t538, 1
  store i64 %t540, ptr %l40, !tbaa !24
  br label %bb129
bb141:
  %t542 = ptrtoint ptr %s0 to i64
  store i64 %t542, ptr %l278, !tbaa !24
  %t543 = load i1, ptr @olang_2esole_2ecompiler__2fdiag__2ecompiler__2fdiag__3aDiagnostics__2ewritten_2elocal_2e5
  br i1 %t543, label %bb142, label %bb143
bb142:
  %t545 = call ptr @__olang_region_make(ptr %s0)
  %t546 = ptrtoint ptr %t545 to i64
  store i64 %t546, ptr %l278, !tbaa !24
  br label %bb143
bb143:
  %t547 = load ptr, ptr %lp38
  %t548 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t547
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t548, ptr %l280
  %t549 = load i64, ptr %l278
  %t550 = inttoptr i64 %t549 to ptr
  %t552 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %t550, ptr %l280)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t552, ptr %l282
  br label %bb144
bb144:
  %t553 = load i1, ptr @olang_2esole_2ecompiler__2fdiag__2ecompiler__2fdiag__3aDiagnostics__2ewritten_2elocal_2e5
  br i1 %t553, label %bb145, label %bb146
bb145:
  %t555 = load i64, ptr %l278
  %t556 = inttoptr i64 %t555 to ptr
  %t557 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l282, i32 0, i32 0
  %t558 = load { i64, ptr }, ptr %t557
  %t559 = extractvalue { i64, ptr } %t558, 1
  %t560 = call ptr @__olang_region_or(ptr %t559, ptr null)
  %t561 = icmp ne ptr %t560, null
  %t562 = select i1 %t561, ptr %t560, ptr null
  %t563 = icmp eq ptr %t562, %t556
  call void @__olang_region_settle(ptr %t556, i1 %t563)
  br label %bb146
bb146:
  %t564 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t564, ptr %l284
  %t565 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l282
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t565, ptr %l5
  %t566 = load i1, ptr @olang_2esole_2ecompiler__2fdiag__2ecompiler__2fdiag__3aDiagnostics__2ewritten_2elocal_2e5
  br i1 %t566, label %bb147, label %bb148
bb147:
  %t568 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l284, i32 0, i32 0
  %t569 = load { i64, ptr }, ptr %t568
  %t570 = extractvalue { i64, ptr } %t569, 1
  %t571 = call ptr @__olang_region_or(ptr %t570, ptr null)
  %t572 = icmp ne ptr %t571, null
  %t573 = select i1 %t572, ptr %t571, ptr null
  call void @__olang_region_drop(ptr %t573)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l284
  br label %bb148
bb148:
  br label %bb149
bb149:
  br label %bb150
bb150:
  %t574 = load ptr, ptr %l0, !tbaa !29
  %t576 = getelementptr %"compiler/diag:Diagnostics", ptr %t574, i32 0, i32 1
  %t578 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t576)
  store i64 %t578, ptr %l288
  br label %bb151
bb151:
  %t579 = load i64, ptr %l288, !tbaa !24
  %t580 = add i64 %t579, 1
  store i64 %t580, ptr %l289, !tbaa !24
  %t581 = load i64, ptr %l289, !tbaa !24
  %t582 = icmp sge i64 %t581, 0
  br i1 %t582, label %bb152, label %bb153
bb152:
  %t584 = load i64, ptr %l289, !tbaa !24
  %t585 = icmp sle i64 %t584, 1152921504606846975
  br i1 %t585, label %bb154, label %bb155
bb153:
  call void @__olang_check_failed(ptr @olang_loc_c2f4506e7327945e_f97af0abefd7d9d2)
  unreachable
bb154:
  %t587 = load i64, ptr %l289, !tbaa !24
  %t588 = mul i64 %t587, 8
  %t589 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t588)
  store i64 0, ptr %t590
  br label %fill.591
fill.591:
  %t594 = load i64, ptr %t590
  %t595 = icmp slt i64 %t594, %t587
  br i1 %t595, label %fillb.592, label %filld.593
fillb.592:
  %t596 = getelementptr i64, ptr %t589, i64 %t594
  store i64 -1, ptr %t596
  %t597 = add i64 %t594, 1
  store i64 %t597, ptr %t590
  br label %fill.591
filld.593:
  %t598 = insertvalue { i64, ptr } undef, i64 %t587, 0
  %t599 = insertvalue { i64, ptr } %t598, ptr %t589, 1
  store { i64, ptr } %t599, ptr %l43, !tbaa !27
  store i64 0, ptr %l44, !tbaa !24
  store ptr %l5, ptr %l45, !tbaa !29
  store i64 0, ptr %l46, !tbaa !24
  br label %bb156
bb155:
  call void @__olang_check_failed(ptr @olang_loc_c2f4506e7327945e_f97af0abefd7d9d2)
  unreachable
bb156:
  %t602 = load i64, ptr %l46, !tbaa !24
  store i64 %t602, ptr %l294, !tbaa !24
  %t603 = load ptr, ptr %l45, !tbaa !29
  %t605 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t603)
  store i64 %t605, ptr %l296
  br label %bb157
bb157:
  %t606 = load i64, ptr %l294, !tbaa !24
  %t607 = load i64, ptr %l296, !tbaa !24
  %t608 = icmp slt i64 %t606, %t607
  %t610 = xor i1 %t608, true
  br i1 %t610, label %bb158, label %bb159
bb158:
  br label %bb166
bb159:
  br label %bb160
bb160:
  %t612 = load ptr, ptr %l45, !tbaa !29
  %t613 = load i64, ptr %l46, !tbaa !24
  %t616 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t612, i64 %t613)
  store i64 %t616, ptr %l301
  br label %bb161
bb161:
  %t617 = load i64, ptr %l301, !tbaa !24
  store i64 %t617, ptr %l47, !tbaa !24
  %t618 = load i64, ptr %l47, !tbaa !24
  %t620 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t621 = load ptr, ptr %t620, !tbaa !27
  %t622 = getelementptr i64, ptr %t621, i64 %t618
  %t623 = load i64, ptr %t622, !tbaa !34
  %t625 = add i64 %t623, 1
  %t627 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t628 = load ptr, ptr %t627, !tbaa !27
  %t629 = getelementptr i64, ptr %t628, i64 %t625
  %t630 = load i64, ptr %t629, !tbaa !34
  %t632 = icmp slt i64 %t630, 0
  br i1 %t632, label %bb162, label %bb163
bb162:
  %t634 = load i64, ptr %l47, !tbaa !24
  %t636 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t637 = load ptr, ptr %t636, !tbaa !27
  %t638 = getelementptr i64, ptr %t637, i64 %t634
  %t639 = load i64, ptr %t638, !tbaa !34
  %t641 = add i64 %t639, 1
  %t642 = load i64, ptr %l44, !tbaa !24
  %t645 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t646 = load ptr, ptr %t645, !tbaa !27
  %t647 = getelementptr i64, ptr %t646, i64 %t641
  store i64 %t642, ptr %t647, !tbaa !34
  %t648 = load i64, ptr %l44, !tbaa !24
  %t650 = add i64 %t648, 1
  store i64 %t650, ptr %l44, !tbaa !24
  br label %bb164
bb163:
  br label %bb164
bb164:
  br label %bb165
bb165:
  %t652 = load i64, ptr %l46, !tbaa !24
  %t654 = add i64 %t652, 1
  store i64 %t654, ptr %l46, !tbaa !24
  br label %bb156
bb166:
  %t657 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %s0, ptr %s0, ptr %l5)
  store { i64, ptr } %t657, ptr %l316
  br label %bb167
bb167:
  %t658 = load { i64, ptr }, ptr %l316, !tbaa !27
  store { i64, ptr } %t658, ptr %l48, !tbaa !27
  %t659 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t660 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t661 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t662 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t663 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr }, ptr null, i32 1
  %t664 = ptrtoint ptr %t663 to i64
  %t666 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr }, ptr %t665, i32 0, i32 0
  store { i64, ptr } %t660, ptr %t666, !tbaa !28
  %t668 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr }, ptr %t665, i32 0, i32 1
  store { i64, ptr } %t661, ptr %t668, !tbaa !28
  %t670 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr }, ptr %t665, i32 0, i32 2
  store { i64, ptr } %t662, ptr %t670, !tbaa !28
  call void @__olang_scope_escape(ptr %s0)
  %t672 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr }, ptr %t665, i32 0, i32 3
  store ptr %s0, ptr %t672, !tbaa !28
  call void @__olang_scope_escape(ptr %s0)
  %t673 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr }, ptr %t665, i32 0, i32 4
  store ptr %s0, ptr %t673, !tbaa !28
  call void @__olang_scope_escape(ptr %s0)
  %t674 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr }, ptr %t665, i32 0, i32 5
  store ptr %s0, ptr %t674, !tbaa !28
  %t675 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_56, 0
  %t676 = insertvalue { ptr, ptr } %t675, ptr %t665, 1
  %t679 = extractvalue { ptr, ptr } %t676, 0
  %t680 = extractvalue { ptr, ptr } %t676, 1
  call void @std_2fprelude_2farray_2eArray_3cI64_3e_2eSort_3cI64_2c_20_3f_3e(ptr %s0, ptr %s0, { i64, ptr } %t659, ptr %t679, ptr %t680)
  br label %bb168
bb168:
  %t681 = load { i64, ptr }, ptr %l48, !tbaa !27
  store { i64, ptr } %t681, ptr %l323, !tbaa !27
  %t683 = load { i64, ptr }, ptr %l323, !tbaa !27
  %t684 = extractvalue { i64, ptr } %t683, 0
  store i64 %t684, ptr %l324, !tbaa !24
  %t685 = load i64, ptr %l324, !tbaa !24
  %t686 = mul i64 %t685, 8
  %t687 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t686)
  %t688 = insertvalue { i64, ptr } undef, i64 %t685, 0
  %t689 = insertvalue { i64, ptr } %t688, ptr %t687, 1
  store { i64, ptr } %t689, ptr %l325, !tbaa !27
  %t690 = getelementptr { i64, ptr }, ptr %l325, i32 0, i32 1
  %t691 = load ptr, ptr %t690, !tbaa !27
  %t692 = getelementptr { i64, ptr }, ptr %l323, i32 0, i32 1
  %t693 = load ptr, ptr %t692, !tbaa !27
  %t694 = load i64, ptr %l324, !tbaa !24
  %t695 = mul i64 %t694, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t691, ptr %t693, i64 %t695, i1 false)
  %t696 = load { i64, ptr }, ptr %l325, !tbaa !27
  store { i64, ptr } %t696, ptr %l323, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t697 = load { i64, ptr }, ptr %l323, !tbaa !27
  store { i64, ptr } %t697, ptr %rv
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
  %t28 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t26, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d57, i32 0, i32 1) })
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
  %t32 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t30, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d58, i32 0, i32 1) })
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
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d59, i32 0, i32 1) })
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
  %t62 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t60, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d60, i32 0, i32 1) })
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
  %t184 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t182, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d61, i32 0, i32 1) })
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
  %t216 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t214, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d62, i32 0, i32 1) })
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
  %t1 = call { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %s0, ptr %s0, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d63, i32 0, i32 1) })
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
  %t16 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t13, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d64, i32 0, i32 1) })
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
  %l20 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l25 = alloca i64
  %l27 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l29 = alloca i64
  %l31 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l33 = alloca i64
  %l35 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l37 = alloca i64
  %l39 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l41 = alloca i64
  %l43 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l45 = alloca i64
  %l47 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l49 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l50 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l51 = alloca i64
  %l53 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l55 = alloca i64
  %l57 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l59 = alloca i64
  %l61 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l63 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l64 = alloca i64
  %l66 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l68 = alloca i64
  %l70 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l73 = alloca %"compiler/diag:Diagnostics"
  %t229 = alloca { i64, [3 x i64] }, align 8
  br label %start
start:
  br label %bb0
bb0:
  store i1 %a0, ptr %l1, !tbaa !21
  %t3 = ptrtoint ptr %v0 to i64
  store i64 %t3, ptr %l25, !tbaa !24
  %t4 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e1
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = call ptr @__olang_region_make(ptr %v0)
  %t7 = ptrtoint ptr %t6 to i64
  store i64 %t7, ptr %l25, !tbaa !24
  br label %bb2
bb2:
  %t8 = load i64, ptr %l25
  %t9 = inttoptr i64 %t8 to ptr
  %t10 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t9, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %l27
  br label %bb3
bb3:
  %t11 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e1
  br i1 %t11, label %bb4, label %bb5
bb4:
  %t13 = load i64, ptr %l25
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27, i32 0, i32 0
  %t16 = load { i64, ptr }, ptr %t15
  %t17 = extractvalue { i64, ptr } %t16, 1
  %t18 = call ptr @__olang_region_or(ptr %t17, ptr null)
  %t19 = icmp ne ptr %t18, null
  %t20 = select i1 %t19, ptr %t18, ptr null
  %t21 = icmp eq ptr %t20, %t14
  call void @__olang_region_settle(ptr %t14, i1 %t21)
  br label %bb5
bb5:
  %t22 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t22, ptr %l2
  %t23 = ptrtoint ptr %v0 to i64
  store i64 %t23, ptr %l29, !tbaa !24
  %t24 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e2
  br i1 %t24, label %bb6, label %bb7
bb6:
  %t26 = call ptr @__olang_region_make(ptr %v0)
  %t27 = ptrtoint ptr %t26 to i64
  store i64 %t27, ptr %l29, !tbaa !24
  br label %bb7
bb7:
  %t28 = load i64, ptr %l29
  %t29 = inttoptr i64 %t28 to ptr
  %t30 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t29, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t30, ptr %l31
  br label %bb8
bb8:
  %t31 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e2
  br i1 %t31, label %bb9, label %bb10
bb9:
  %t33 = load i64, ptr %l29
  %t34 = inttoptr i64 %t33 to ptr
  %t35 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l31, i32 0, i32 0
  %t36 = load { i64, ptr }, ptr %t35
  %t37 = extractvalue { i64, ptr } %t36, 1
  %t38 = call ptr @__olang_region_or(ptr %t37, ptr null)
  %t39 = icmp ne ptr %t38, null
  %t40 = select i1 %t39, ptr %t38, ptr null
  %t41 = icmp eq ptr %t40, %t34
  call void @__olang_region_settle(ptr %t34, i1 %t41)
  br label %bb10
bb10:
  %t42 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l31
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t42, ptr %l3
  %t43 = ptrtoint ptr %v0 to i64
  store i64 %t43, ptr %l33, !tbaa !24
  %t44 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e3
  br i1 %t44, label %bb11, label %bb12
bb11:
  %t46 = call ptr @__olang_region_make(ptr %v0)
  %t47 = ptrtoint ptr %t46 to i64
  store i64 %t47, ptr %l33, !tbaa !24
  br label %bb12
bb12:
  %t48 = load i64, ptr %l33
  %t49 = inttoptr i64 %t48 to ptr
  %t50 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t49, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t50, ptr %l35
  br label %bb13
bb13:
  %t51 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e3
  br i1 %t51, label %bb14, label %bb15
bb14:
  %t53 = load i64, ptr %l33
  %t54 = inttoptr i64 %t53 to ptr
  %t55 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l35, i32 0, i32 0
  %t56 = load { i64, ptr }, ptr %t55
  %t57 = extractvalue { i64, ptr } %t56, 1
  %t58 = call ptr @__olang_region_or(ptr %t57, ptr null)
  %t59 = icmp ne ptr %t58, null
  %t60 = select i1 %t59, ptr %t58, ptr null
  %t61 = icmp eq ptr %t60, %t54
  call void @__olang_region_settle(ptr %t54, i1 %t61)
  br label %bb15
bb15:
  %t62 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l35
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t62, ptr %l4
  %t63 = ptrtoint ptr %v0 to i64
  store i64 %t63, ptr %l37, !tbaa !24
  %t64 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e4
  br i1 %t64, label %bb16, label %bb17
bb16:
  %t66 = call ptr @__olang_region_make(ptr %v0)
  %t67 = ptrtoint ptr %t66 to i64
  store i64 %t67, ptr %l37, !tbaa !24
  br label %bb17
bb17:
  %t68 = load i64, ptr %l37
  %t69 = inttoptr i64 %t68 to ptr
  %t70 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t69, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t70, ptr %l39
  br label %bb18
bb18:
  %t71 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e4
  br i1 %t71, label %bb19, label %bb20
bb19:
  %t73 = load i64, ptr %l37
  %t74 = inttoptr i64 %t73 to ptr
  %t75 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l39, i32 0, i32 0
  %t76 = load { i64, ptr }, ptr %t75
  %t77 = extractvalue { i64, ptr } %t76, 1
  %t78 = call ptr @__olang_region_or(ptr %t77, ptr null)
  %t79 = icmp ne ptr %t78, null
  %t80 = select i1 %t79, ptr %t78, ptr null
  %t81 = icmp eq ptr %t80, %t74
  call void @__olang_region_settle(ptr %t74, i1 %t81)
  br label %bb20
bb20:
  %t82 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l39
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t82, ptr %l5
  %t83 = ptrtoint ptr %v0 to i64
  store i64 %t83, ptr %l41, !tbaa !24
  %t84 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e5
  br i1 %t84, label %bb21, label %bb22
bb21:
  %t86 = call ptr @__olang_region_make(ptr %v0)
  %t87 = ptrtoint ptr %t86 to i64
  store i64 %t87, ptr %l41, !tbaa !24
  br label %bb22
bb22:
  %t88 = load i64, ptr %l41
  %t89 = inttoptr i64 %t88 to ptr
  %t90 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t89, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t90, ptr %l43
  br label %bb23
bb23:
  %t91 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e5
  br i1 %t91, label %bb24, label %bb25
bb24:
  %t93 = load i64, ptr %l41
  %t94 = inttoptr i64 %t93 to ptr
  %t95 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l43, i32 0, i32 0
  %t96 = load { i64, ptr }, ptr %t95
  %t97 = extractvalue { i64, ptr } %t96, 1
  %t98 = call ptr @__olang_region_or(ptr %t97, ptr null)
  %t99 = icmp ne ptr %t98, null
  %t100 = select i1 %t99, ptr %t98, ptr null
  %t101 = icmp eq ptr %t100, %t94
  call void @__olang_region_settle(ptr %t94, i1 %t101)
  br label %bb25
bb25:
  %t102 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l43
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t102, ptr %l6
  %t103 = ptrtoint ptr %v0 to i64
  store i64 %t103, ptr %l45, !tbaa !24
  %t104 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e6
  br i1 %t104, label %bb26, label %bb27
bb26:
  %t106 = call ptr @__olang_region_make(ptr %v0)
  %t107 = ptrtoint ptr %t106 to i64
  store i64 %t107, ptr %l45, !tbaa !24
  br label %bb27
bb27:
  %t108 = load i64, ptr %l45
  %t109 = inttoptr i64 %t108 to ptr
  %t110 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t109, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t110, ptr %l47
  br label %bb28
bb28:
  %t111 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e6
  br i1 %t111, label %bb29, label %bb30
bb29:
  %t113 = load i64, ptr %l45
  %t114 = inttoptr i64 %t113 to ptr
  %t115 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l47, i32 0, i32 0
  %t116 = load { i64, ptr }, ptr %t115
  %t117 = extractvalue { i64, ptr } %t116, 1
  %t118 = call ptr @__olang_region_or(ptr %t117, ptr null)
  %t119 = icmp ne ptr %t118, null
  %t120 = select i1 %t119, ptr %t118, ptr null
  %t121 = icmp eq ptr %t120, %t114
  call void @__olang_region_settle(ptr %t114, i1 %t121)
  br label %bb30
bb30:
  %t122 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l47
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t122, ptr %l7
  %t123 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3arecord_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t123, ptr %l49
  br label %bb31
bb31:
  %t124 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l49
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t124, ptr %l8
  %t125 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3anote_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t125, ptr %l50
  br label %bb32
bb32:
  %t126 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l50
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t126, ptr %l9
  %t127 = ptrtoint ptr %v0 to i64
  store i64 %t127, ptr %l51, !tbaa !24
  %t128 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e9
  br i1 %t128, label %bb33, label %bb34
bb33:
  %t130 = call ptr @__olang_region_make(ptr %v0)
  %t131 = ptrtoint ptr %t130 to i64
  store i64 %t131, ptr %l51, !tbaa !24
  br label %bb34
bb34:
  %t132 = load i64, ptr %l51
  %t133 = inttoptr i64 %t132 to ptr
  %t134 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t133, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t134, ptr %l53
  br label %bb35
bb35:
  %t135 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e9
  br i1 %t135, label %bb36, label %bb37
bb36:
  %t137 = load i64, ptr %l51
  %t138 = inttoptr i64 %t137 to ptr
  %t139 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l53, i32 0, i32 0
  %t140 = load { i64, ptr }, ptr %t139
  %t141 = extractvalue { i64, ptr } %t140, 1
  %t142 = call ptr @__olang_region_or(ptr %t141, ptr null)
  %t143 = icmp ne ptr %t142, null
  %t144 = select i1 %t143, ptr %t142, ptr null
  %t145 = icmp eq ptr %t144, %t138
  call void @__olang_region_settle(ptr %t138, i1 %t145)
  br label %bb37
bb37:
  %t146 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l53
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t146, ptr %l10
  %t147 = ptrtoint ptr %v0 to i64
  store i64 %t147, ptr %l55, !tbaa !24
  %t148 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e10
  br i1 %t148, label %bb38, label %bb39
bb38:
  %t150 = call ptr @__olang_region_make(ptr %v0)
  %t151 = ptrtoint ptr %t150 to i64
  store i64 %t151, ptr %l55, !tbaa !24
  br label %bb39
bb39:
  %t152 = load i64, ptr %l55
  %t153 = inttoptr i64 %t152 to ptr
  %t154 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t153, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t154, ptr %l57
  br label %bb40
bb40:
  %t155 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e10
  br i1 %t155, label %bb41, label %bb42
bb41:
  %t157 = load i64, ptr %l55
  %t158 = inttoptr i64 %t157 to ptr
  %t159 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l57, i32 0, i32 0
  %t160 = load { i64, ptr }, ptr %t159
  %t161 = extractvalue { i64, ptr } %t160, 1
  %t162 = call ptr @__olang_region_or(ptr %t161, ptr null)
  %t163 = icmp ne ptr %t162, null
  %t164 = select i1 %t163, ptr %t162, ptr null
  %t165 = icmp eq ptr %t164, %t158
  call void @__olang_region_settle(ptr %t158, i1 %t165)
  br label %bb42
bb42:
  %t166 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l57
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t166, ptr %l11
  %t167 = ptrtoint ptr %v0 to i64
  store i64 %t167, ptr %l59, !tbaa !24
  %t168 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e11
  br i1 %t168, label %bb43, label %bb44
bb43:
  %t170 = call ptr @__olang_region_make(ptr %v0)
  %t171 = ptrtoint ptr %t170 to i64
  store i64 %t171, ptr %l59, !tbaa !24
  br label %bb44
bb44:
  %t172 = load i64, ptr %l59
  %t173 = inttoptr i64 %t172 to ptr
  %t174 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t173, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t174, ptr %l61
  br label %bb45
bb45:
  %t175 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e11
  br i1 %t175, label %bb46, label %bb47
bb46:
  %t177 = load i64, ptr %l59
  %t178 = inttoptr i64 %t177 to ptr
  %t179 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l61, i32 0, i32 0
  %t180 = load { i64, ptr }, ptr %t179
  %t181 = extractvalue { i64, ptr } %t180, 1
  %t182 = call ptr @__olang_region_or(ptr %t181, ptr null)
  %t183 = icmp ne ptr %t182, null
  %t184 = select i1 %t183, ptr %t182, ptr null
  %t185 = icmp eq ptr %t184, %t178
  call void @__olang_region_settle(ptr %t178, i1 %t185)
  br label %bb47
bb47:
  %t186 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l61
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t186, ptr %l12
  %t187 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3acontext_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t187, ptr %l63
  br label %bb48
bb48:
  %t188 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l63
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t188, ptr %l13
  store i64 0, ptr %l14, !tbaa !24
  store i1 false, ptr %l15, !tbaa !21
  store i1 false, ptr %l16, !tbaa !21
  %t189 = ptrtoint ptr %v0 to i64
  store i64 %t189, ptr %l64, !tbaa !24
  %t190 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e16
  br i1 %t190, label %bb49, label %bb50
bb49:
  %t192 = call ptr @__olang_region_make(ptr %v0)
  %t193 = ptrtoint ptr %t192 to i64
  store i64 %t193, ptr %l64, !tbaa !24
  br label %bb50
bb50:
  %t194 = load i64, ptr %l64
  %t195 = inttoptr i64 %t194 to ptr
  %t196 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t195, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t196, ptr %l66
  br label %bb51
bb51:
  %t197 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e16
  br i1 %t197, label %bb52, label %bb53
bb52:
  %t199 = load i64, ptr %l64
  %t200 = inttoptr i64 %t199 to ptr
  %t201 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l66, i32 0, i32 0
  %t202 = load { i64, ptr }, ptr %t201
  %t203 = extractvalue { i64, ptr } %t202, 1
  %t204 = call ptr @__olang_region_or(ptr %t203, ptr null)
  %t205 = icmp ne ptr %t204, null
  %t206 = select i1 %t205, ptr %t204, ptr null
  %t207 = icmp eq ptr %t206, %t200
  call void @__olang_region_settle(ptr %t200, i1 %t207)
  br label %bb53
bb53:
  %t208 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l66
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t208, ptr %l17
  %t209 = ptrtoint ptr %v0 to i64
  store i64 %t209, ptr %l68, !tbaa !24
  %t210 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e17
  br i1 %t210, label %bb54, label %bb55
bb54:
  %t212 = call ptr @__olang_region_make(ptr %v0)
  %t213 = ptrtoint ptr %t212 to i64
  store i64 %t213, ptr %l68, !tbaa !24
  br label %bb55
bb55:
  %t214 = load i64, ptr %l68
  %t215 = inttoptr i64 %t214 to ptr
  %t216 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t215, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t216, ptr %l70
  br label %bb56
bb56:
  %t217 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e17
  br i1 %t217, label %bb57, label %bb58
bb57:
  %t219 = load i64, ptr %l68
  %t220 = inttoptr i64 %t219 to ptr
  %t221 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l70, i32 0, i32 0
  %t222 = load { i64, ptr }, ptr %t221
  %t223 = extractvalue { i64, ptr } %t222, 1
  %t224 = call ptr @__olang_region_or(ptr %t223, ptr null)
  %t225 = icmp ne ptr %t224, null
  %t226 = select i1 %t225, ptr %t224, ptr null
  %t227 = icmp eq ptr %t226, %t220
  call void @__olang_region_settle(ptr %t220, i1 %t227)
  br label %bb58
bb58:
  %t228 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l70
  store { i64, [3 x i64] } zeroinitializer, ptr %t229
  %t230 = getelementptr { i64, [3 x i64] }, ptr %t229, i32 0, i32 0
  store i64 0, ptr %t230
  %t231 = load { i64, [3 x i64] }, ptr %t229
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d65, i32 0, i32 1) }, ptr %l20, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d66, i32 0, i32 1) }, ptr %l21, !tbaa !27
  %t233 = getelementptr %"compiler/diag:Diagnostics", ptr %l73, i32 0, i32 0
  %t234 = load i1, ptr %l1, !tbaa !21
  store i1 %t234, ptr %t233, !tbaa !21
  %t235 = getelementptr %"compiler/diag:Diagnostics", ptr %l73, i32 0, i32 1
  %t236 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t236, ptr %t235
  %t237 = getelementptr %"compiler/diag:Diagnostics", ptr %l73, i32 0, i32 2
  %t238 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t238, ptr %t237
  %t239 = getelementptr %"compiler/diag:Diagnostics", ptr %l73, i32 0, i32 3
  %t240 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t240, ptr %t239
  %t241 = getelementptr %"compiler/diag:Diagnostics", ptr %l73, i32 0, i32 4
  %t242 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t242, ptr %t241
  %t243 = getelementptr %"compiler/diag:Diagnostics", ptr %l73, i32 0, i32 5
  %t244 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t244, ptr %t243
  %t245 = getelementptr %"compiler/diag:Diagnostics", ptr %l73, i32 0, i32 6
  %t246 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t246, ptr %t245
  %t247 = getelementptr %"compiler/diag:Diagnostics", ptr %l73, i32 0, i32 7
  %t248 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t248, ptr %t247
  %t249 = getelementptr %"compiler/diag:Diagnostics", ptr %l73, i32 0, i32 8
  %t250 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t250, ptr %t249
  %t251 = getelementptr %"compiler/diag:Diagnostics", ptr %l73, i32 0, i32 9
  %t252 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t252, ptr %t251
  %t253 = getelementptr %"compiler/diag:Diagnostics", ptr %l73, i32 0, i32 10
  %t254 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t254, ptr %t253
  %t255 = getelementptr %"compiler/diag:Diagnostics", ptr %l73, i32 0, i32 11
  %t256 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t256, ptr %t255
  %t257 = getelementptr %"compiler/diag:Diagnostics", ptr %l73, i32 0, i32 12
  %t258 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t258, ptr %t257
  %t259 = getelementptr %"compiler/diag:Diagnostics", ptr %l73, i32 0, i32 13
  %t260 = load i64, ptr %l14, !tbaa !24
  store i64 %t260, ptr %t259, !tbaa !24
  %t261 = getelementptr %"compiler/diag:Diagnostics", ptr %l73, i32 0, i32 14
  %t262 = load i1, ptr %l15, !tbaa !21
  store i1 %t262, ptr %t261, !tbaa !21
  %t263 = getelementptr %"compiler/diag:Diagnostics", ptr %l73, i32 0, i32 15
  %t264 = load i1, ptr %l16, !tbaa !21
  store i1 %t264, ptr %t263, !tbaa !21
  %t265 = getelementptr %"compiler/diag:Diagnostics", ptr %l73, i32 0, i32 16
  %t266 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t266, ptr %t265
  %t267 = getelementptr %"compiler/diag:Diagnostics", ptr %l73, i32 0, i32 17
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t228, ptr %t267
  %t269 = getelementptr %"compiler/diag:Diagnostics", ptr %l73, i32 0, i32 18
  store { i64, [3 x i64] } %t231, ptr %t269
  %t271 = getelementptr %"compiler/diag:Diagnostics", ptr %l73, i32 0, i32 19
  %t272 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t272, ptr %t271, !tbaa !27
  %t273 = getelementptr %"compiler/diag:Diagnostics", ptr %l73, i32 0, i32 20
  %t274 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t274, ptr %t273, !tbaa !27
  %t275 = getelementptr %"compiler/diag:Diagnostics", ptr %l73, i32 0, i32 21
  store i1 false, ptr %t275, !tbaa !21
  %t277 = getelementptr %"compiler/diag:Diagnostics", ptr %l73, i32 0, i32 22
  store i1 false, ptr %t277, !tbaa !21
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l73, i64 544, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/diag:Item" @compiler_2fdiag_3aItem_2ector(ptr %v0, ptr %v1, ptr %v2, i1 %a0, { i64, ptr } %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, { i64, ptr } %a6) #0 {
entry:
  %rv = alloca %"compiler/diag:Item"
  br label %start
start:
  br label %bb0
bb0:
  %t16 = insertvalue %"compiler/diag:Item" undef, i1 %a0, 0
  %t18 = insertvalue %"compiler/diag:Item" %t16, { i64, ptr } %a1, 1
  %t20 = insertvalue %"compiler/diag:Item" %t18, i64 %a2, 2
  %t22 = insertvalue %"compiler/diag:Item" %t20, i64 %a3, 3
  %t24 = insertvalue %"compiler/diag:Item" %t22, i64 %a4, 4
  %t26 = insertvalue %"compiler/diag:Item" %t24, i64 %a5, 5
  %t28 = insertvalue %"compiler/diag:Item" %t26, { i64, ptr } %a6, 6
  store %"compiler/diag:Item" %t28, ptr %rv
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
  %t21 = icmp ne ptr %t20, null
  %t22 = select i1 %t21, ptr %t20, ptr null
  %t23 = icmp eq ptr %t22, %t16
  call void @__olang_region_settle(ptr %t16, i1 %t23)
  br label %bb7
bb7:
  %t24 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t24, ptr %l2
  %t25 = ptrtoint ptr %v0 to i64
  store i64 %t25, ptr %l10, !tbaa !24
  %t26 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aTaken_2e3
  br i1 %t26, label %bb8, label %bb9
bb8:
  %t28 = call ptr @__olang_region_make(ptr %v0)
  %t29 = ptrtoint ptr %t28 to i64
  store i64 %t29, ptr %l10, !tbaa !24
  br label %bb9
bb9:
  %t30 = load i64, ptr %l10
  %t31 = inttoptr i64 %t30 to ptr
  %t32 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t31, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t32, ptr %l12
  br label %bb10
bb10:
  %t33 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aTaken_2e3
  br i1 %t33, label %bb11, label %bb12
bb11:
  %t35 = load i64, ptr %l10
  %t36 = inttoptr i64 %t35 to ptr
  %t37 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12, i32 0, i32 0
  %t38 = load { i64, ptr }, ptr %t37
  %t39 = extractvalue { i64, ptr } %t38, 1
  %t40 = call ptr @__olang_region_or(ptr %t39, ptr null)
  %t41 = icmp ne ptr %t40, null
  %t42 = select i1 %t41, ptr %t40, ptr null
  %t43 = icmp eq ptr %t42, %t36
  call void @__olang_region_settle(ptr %t36, i1 %t43)
  br label %bb12
bb12:
  %t44 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  %t45 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l0
  %t46 = insertvalue %"compiler/diag:Taken" undef, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t45, 0
  %t47 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1
  %t48 = insertvalue %"compiler/diag:Taken" %t46, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t47, 1
  %t49 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  %t50 = insertvalue %"compiler/diag:Taken" %t48, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t49, 2
  %t52 = insertvalue %"compiler/diag:Taken" %t50, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t44, 3
  store %"compiler/diag:Taken" %t52, ptr %rv
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

define dso_local %"compiler/diag:note" @compiler_2fdiag_3anote_2ector(ptr %v0, ptr %v1, i64 %a0, { i64, [3 x i64] } %a1, { i64, ptr } %a2) #0 {
entry:
  %rv = alloca %"compiler/diag:note"
  br label %start
start:
  br label %bb0
bb0:
  %t8 = insertvalue %"compiler/diag:note" undef, i64 %a0, 0
  %t10 = insertvalue %"compiler/diag:note" %t8, { i64, [3 x i64] } %a1, 1
  %t12 = insertvalue %"compiler/diag:note" %t10, { i64, ptr } %a2, 2
  store %"compiler/diag:note" %t12, ptr %rv
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
@olang_2esole_2ecompiler_2fdiag_3aItem_2e1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
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
@olang_2esole_2ecompiler_2fdiag_3aItem_2e6 = weak hidden constant i1 false
@.d2 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"/proc/self/exe" }>, align 8
@.d3 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"SPEC.md" }>, align 8
@.d4 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d5 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"SPEC.md" }>, align 8
@.d6 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"/../SPEC.md" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
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
@olang_2esole_2ecompiler_2fdiag_3aSaid_2e0 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fdiag_3aSaid_2e3 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fdiag_3arecord_2e1 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fdiag_3arecord_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e19 = weak hidden constant i1 false
declare void @__olang_region_release(ptr) noinline
@olang_2esole_2ecompiler_2fdiag_3aDiagnostics_2e20 = weak hidden constant i1 false
@.d7 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d8 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"?" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d9 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@olang_2esole_2ecompiler_2fdiag_3anote_2e2 = weak hidden constant i1 false
@.d10 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"?" }>, align 8
@olang_2esole_2ecompiler_2fdiag_3acontext_2e1 = weak hidden constant i1 false
@.d11 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"error" }>, align 8
@.d12 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"note" }>, align 8
@.d13 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d14 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"1" }>, align 8
@.d15 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"0" }>, align 8
@.d16 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"compilation successful" }>, align 8
@.d17 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d18 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"1;31" }>, align 8
@.d19 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d20 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"s" }>, align 8
@.d21 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"0" }>, align 8
@.d22 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"compilation failed with " }>, align 8
@.d23 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" error" }>, align 8
@.d24 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d25 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d26 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"1;31" }>, align 8
@.d27 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"0" }>, align 8
@.d28 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"error:" }>, align 8
@.d29 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d30 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"1;31" }>, align 8
@.d31 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"0" }>, align 8
@.d32 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"error[" }>, align 8
@.d33 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"]:" }>, align 8
@.d34 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d35 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" | " }>, align 8
@.d36 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"..." }>, align 8
@.d37 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"..." }>, align 8
@.d38 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"\0A      | " }>, align 8
@.d39 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"   " }>, align 8
@.d40 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"1;32" }>, align 8
@.d41 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"0" }>, align 8
@.d42 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"1" }>, align 8
@.d43 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"olang" }>, align 8
@.d44 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d45 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d46 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d47 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"0" }>, align 8
@.d48 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"error" }>, align 8
@.d49 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"1;36" }>, align 8
@.d50 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"0" }>, align 8
@.d51 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"note:" }>, align 8
@.d52 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d53 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d54 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"[" }>, align 8
@.d55 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"m" }>, align 8
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@olang_2esole_2ecompiler__2fdiag__2ecompiler__2fdiag__3aDiagnostics__2ewritten_2elocal_2e5 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
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
  %t2 = load i32, ptr %a0, !range !{i32 0, i32 884}
  %t3 = sext i32 %t2 to i64
  %t5 = load i32, ptr %a1, !range !{i32 0, i32 884}
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
define internal i1 @olang_lambda_56(ptr %env, i64 %a0, i64 %a1) #0 {
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

@.d57 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"C2d" }>, align 8
@.d58 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"T17c" }>, align 8
@.d59 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"- " }>, align 8
@.d60 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"**" }>, align 8
@.d61 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c".**" }>, align 8
@.d62 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" (" }>, align 8
@.d63 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"TERM" }>, align 8
@.d64 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"dumb" }>, align 8
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
@.d65 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d66 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3anote_3e_2ePush_3ccompiler_2fdiag_3anote_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/diag:note" %a1)
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

attributes #0 = { null_pointer_is_valid "target-cpu"="sapphirerapids" "target-features"="+64bit,+adx,+aes,+amx-bf16,+amx-int8,+amx-tile,+avx,+avx2,-avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512fp16,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+cldemote,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+rtm,+sahf,+serialize,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+tsxldtrk,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-complex,-amx-fp16,-avx10.1-256,-avx10.1-512,-avx512er,-avx512pf,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnniint16,-avxvnniint8,-clzero,-cmpccxadd,-enqcmd,-fma4,-hreset,-kl,-lwp,-mwaitx,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rdpru,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-uintr,-usermsr,-waitpkg,-widekl,-xop" "prefer-vector-width"="512" nounwind }
