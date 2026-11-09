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
%"compiler/token:Token" = type { i32, i8, i32, i32 }
@G_2ecompiler_2ftoken_2eLineBreak = constant <{ [1 x i8] }> <{ [1 x i8] c"\01" }>, align 8
@G_2ecompiler_2ftoken_2eLineStart = constant <{ [1 x i8] }> <{ [1 x i8] c"\04" }>, align 8
@G_2ecompiler_2ftoken_2eSpace = constant <{ [1 x i8] }> <{ [1 x i8] c"\02" }>, align 8
define dso_local i32 @compiler_2ftoken_2eTok_2eKeyword(ptr %v0, { i64, ptr } %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i8
  %l4 = alloca i8
  %l5 = alloca { i64, ptr }
  %l10 = alloca i1
  %l13 = alloca i1
  %l16 = alloca i1
  %l24 = alloca i1
  %l27 = alloca i1
  %l31 = alloca i1
  %l32 = alloca { i64, ptr }
  %l40 = alloca i1
  %l43 = alloca i1
  %l47 = alloca i1
  %l50 = alloca i1
  %l56 = alloca i1
  %l59 = alloca i1
  %l63 = alloca i1
  %l66 = alloca i1
  %l70 = alloca i1
  %l73 = alloca i1
  %l79 = alloca i1
  %l82 = alloca i1
  %l86 = alloca i1
  %l89 = alloca i1
  %l93 = alloca i1
  %l96 = alloca i1
  %l100 = alloca i1
  %l103 = alloca i1
  %l107 = alloca i1
  %l110 = alloca i1
  %l116 = alloca i1
  %l117 = alloca { i64, ptr }
  %l125 = alloca i1
  %l128 = alloca i1
  %l132 = alloca i1
  %l135 = alloca i1
  %l139 = alloca i1
  %l142 = alloca i1
  %l148 = alloca i1
  %l151 = alloca i1
  %l155 = alloca i1
  %l158 = alloca i1
  %l162 = alloca i1
  %l165 = alloca i1
  %l169 = alloca i1
  %l172 = alloca i1
  %l176 = alloca i1
  %l179 = alloca i1
  %l183 = alloca i1
  %l186 = alloca i1
  %l190 = alloca i1
  %l193 = alloca i1
  %l199 = alloca i1
  %l200 = alloca { i64, ptr }
  %l208 = alloca i1
  %l211 = alloca i1
  %l215 = alloca i1
  %l218 = alloca i1
  %l224 = alloca i1
  %l227 = alloca i1
  %l231 = alloca { i64, ptr }
  %l246 = alloca i1
  %l249 = alloca i1
  %l255 = alloca i1
  %l258 = alloca i1
  %l264 = alloca i1
  %l267 = alloca i1
  %l271 = alloca i1
  %l274 = alloca i1
  %l280 = alloca i1
  %l283 = alloca i1
  %l287 = alloca i1
  %l290 = alloca i1
  %l294 = alloca i1
  %l297 = alloca i1
  %l301 = alloca i1
  %l304 = alloca i1
  %l308 = alloca i1
  %l311 = alloca i1
  %l315 = alloca i1
  %l318 = alloca i1
  %l322 = alloca i1
  %l325 = alloca i1
  %l329 = alloca i1
  %l332 = alloca i1
  %l336 = alloca i1
  %l339 = alloca i1
  %l345 = alloca i1
  %l346 = alloca { i64, ptr }
  %l356 = alloca i1
  %l359 = alloca i1
  %l363 = alloca i1
  %l366 = alloca i1
  %l370 = alloca i1
  %l373 = alloca i1
  %l379 = alloca i1
  %l382 = alloca i1
  %l386 = alloca i1
  %l389 = alloca i1
  %l395 = alloca i1
  %l398 = alloca i1
  %l404 = alloca i1
  %l408 = alloca i1
  %l412 = alloca i1
  %l416 = alloca i1
  %l419 = alloca i1
  %l425 = alloca i1
  %l428 = alloca i1
  %l434 = alloca i1
  %l437 = alloca i1
  %l441 = alloca i1
  %l444 = alloca i1
  %l450 = alloca i1
  %l453 = alloca i1
  %l457 = alloca i1
  %l460 = alloca i1
  %l466 = alloca i1
  %l469 = alloca i1
  %l475 = alloca i1
  %l478 = alloca i1
  %l484 = alloca i1
  %l487 = alloca i1
  %s2 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s22 = alloca %olang.scope
  %s30 = alloca %olang.scope
  %s34 = alloca %olang.scope
  %s41 = alloca %olang.scope
  %s43 = alloca %olang.scope
  %s46 = alloca %olang.scope
  %s58 = alloca %olang.scope
  %s62 = alloca %olang.scope
  %s65 = alloca %olang.scope
  %s67 = alloca %olang.scope
  %s72 = alloca %olang.scope
  %s74 = alloca %olang.scope
  %s77 = alloca %olang.scope
  %s80 = alloca %olang.scope
  %s82 = alloca %olang.scope
  %s84 = alloca %olang.scope
  %rv = alloca i32
  store { i64, ptr } %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t1, ptr %l5, !tbaa !27
  %t2 = load i64, ptr %l1, !tbaa !24
  %t4 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t5 = load ptr, ptr %t4, !tbaa !27
  %t6 = getelementptr i8, ptr %t5, i64 %t2
  %t7 = load i8, ptr %t6, !tbaa !32
  store i8 %t7, ptr %l3, !tbaa !22
  %t9 = load i64, ptr %l2, !tbaa !24
  %t11 = icmp slt i64 %t9, 2
  br i1 %t11, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb3
bb2:
  %t13 = load i64, ptr %l2, !tbaa !24
  %t15 = icmp sgt i64 %t13, 11
  store i1 %t15, ptr %l10, !tbaa !21
  br label %bb3
bb3:
  %t17 = load i1, ptr %l10, !tbaa !21
  br i1 %t17, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l13, !tbaa !21
  br label %bb6
bb5:
  %t18 = load i8, ptr %l3, !tbaa !22
  %t20 = icmp ult i8 %t18, 97
  store i1 %t20, ptr %l13, !tbaa !21
  br label %bb6
bb6:
  %t22 = load i1, ptr %l13, !tbaa !21
  br i1 %t22, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb9
bb8:
  %t23 = load i8, ptr %l3, !tbaa !22
  %t25 = icmp ugt i8 %t23, 121
  store i1 %t25, ptr %l16, !tbaa !21
  br label %bb9
bb9:
  %t27 = load i1, ptr %l16, !tbaa !21
  br i1 %t27, label %bb10, label %bb11
bb10:
  store i32 1, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t29 = load i8, ptr %l3, !tbaa !22
  %t31 = icmp eq i8 %t29, 97
  br i1 %t31, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb43
bb15:
  store %olang.scope zeroinitializer, ptr %s2
  %t33 = load i64, ptr %l2, !tbaa !24
  %t35 = icmp eq i64 %t33, 3
  br i1 %t35, label %bb16, label %bb17
bb16:
  %t37 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t38 = load i64, ptr %l1, !tbaa !24
  %t41 = call i1 @compiler_2ftoken_2espells(ptr %v0, ptr %s2, { i64, ptr } %t37, i64 %t38, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d0, i32 0, i32 1) })
  store i1 %t41, ptr %l27
  br label %bb18
bb17:
  store i1 false, ptr %l24, !tbaa !21
  br label %bb19
bb18:
  %t42 = load i1, ptr %l27, !tbaa !21
  store i1 %t42, ptr %l24, !tbaa !21
  br label %bb19
bb19:
  %t43 = load i1, ptr %l24, !tbaa !21
  br i1 %t43, label %bb20, label %bb21
bb20:
  call void @__olang_scope_close(ptr %s2)
  store i32 52, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  %t45 = load i64, ptr %l2, !tbaa !24
  %t47 = icmp eq i64 %t45, 2
  br i1 %t47, label %bb23, label %bb24
bb23:
  %t49 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t49, ptr %l32, !tbaa !27
  %t50 = load i64, ptr %l1, !tbaa !24
  %t52 = add i64 %t50, 1
  %t54 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr i8, ptr %t55, i64 %t52
  %t57 = load i8, ptr %t56, !tbaa !32
  %t59 = icmp eq i8 %t57, 115
  store i1 %t59, ptr %l31, !tbaa !21
  br label %bb25
bb24:
  store i1 false, ptr %l31, !tbaa !21
  br label %bb25
bb25:
  %t61 = load i1, ptr %l31, !tbaa !21
  br i1 %t61, label %bb26, label %bb27
bb26:
  call void @__olang_scope_close(ptr %s2)
  store i32 29, ptr %rv
  br label %ret
bb27:
  br label %bb28
bb28:
  %t63 = load i64, ptr %l2, !tbaa !24
  %t65 = icmp eq i64 %t63, 3
  br i1 %t65, label %bb29, label %bb30
bb29:
  %t67 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t68 = load i64, ptr %l1, !tbaa !24
  %t71 = call i1 @compiler_2ftoken_2espells(ptr %v0, ptr %s2, { i64, ptr } %t67, i64 %t68, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d1, i32 0, i32 1) })
  store i1 %t71, ptr %l43
  br label %bb31
bb30:
  store i1 false, ptr %l40, !tbaa !21
  br label %bb32
bb31:
  %t72 = load i1, ptr %l43, !tbaa !21
  store i1 %t72, ptr %l40, !tbaa !21
  br label %bb32
bb32:
  %t73 = load i1, ptr %l40, !tbaa !21
  br i1 %t73, label %bb33, label %bb34
bb33:
  call void @__olang_scope_close(ptr %s2)
  store i32 45, ptr %rv
  br label %ret
bb34:
  br label %bb35
bb35:
  %t75 = load i64, ptr %l2, !tbaa !24
  %t77 = icmp eq i64 %t75, 6
  br i1 %t77, label %bb36, label %bb37
bb36:
  %t79 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t80 = load i64, ptr %l1, !tbaa !24
  %t83 = call i1 @compiler_2ftoken_2espells(ptr %v0, ptr %s2, { i64, ptr } %t79, i64 %t80, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d2, i32 0, i32 1) })
  store i1 %t83, ptr %l50
  br label %bb38
bb37:
  store i1 false, ptr %l47, !tbaa !21
  br label %bb39
bb38:
  %t84 = load i1, ptr %l50, !tbaa !21
  store i1 %t84, ptr %l47, !tbaa !21
  br label %bb39
bb39:
  %t85 = load i1, ptr %l47, !tbaa !21
  br i1 %t85, label %bb40, label %bb41
bb40:
  call void @__olang_scope_close(ptr %s2)
  store i32 24, ptr %rv
  br label %ret
bb41:
  br label %bb42
bb42:
  call void @__olang_scope_close(ptr %s2)
  br label %bb512
bb43:
  %t87 = load i8, ptr %l3, !tbaa !22
  %t89 = icmp eq i8 %t87, 98
  br i1 %t89, label %bb44, label %bb45
bb44:
  br label %bb46
bb45:
  br label %bb68
bb46:
  store %olang.scope zeroinitializer, ptr %s7
  %t91 = load i64, ptr %l2, !tbaa !24
  %t93 = icmp eq i64 %t91, 7
  br i1 %t93, label %bb47, label %bb48
bb47:
  %t95 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t96 = load i64, ptr %l1, !tbaa !24
  %t99 = call i1 @compiler_2ftoken_2espells(ptr %v0, ptr %s7, { i64, ptr } %t95, i64 %t96, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store i1 %t99, ptr %l59
  br label %bb49
bb48:
  store i1 false, ptr %l56, !tbaa !21
  br label %bb50
bb49:
  %t100 = load i1, ptr %l59, !tbaa !21
  store i1 %t100, ptr %l56, !tbaa !21
  br label %bb50
bb50:
  %t101 = load i1, ptr %l56, !tbaa !21
  br i1 %t101, label %bb51, label %bb52
bb51:
  call void @__olang_scope_close(ptr %s7)
  store i32 65, ptr %rv
  br label %ret
bb52:
  br label %bb53
bb53:
  %t103 = load i64, ptr %l2, !tbaa !24
  %t105 = icmp eq i64 %t103, 5
  br i1 %t105, label %bb54, label %bb55
bb54:
  %t107 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t108 = load i64, ptr %l1, !tbaa !24
  %t111 = call i1 @compiler_2ftoken_2espells(ptr %v0, ptr %s7, { i64, ptr } %t107, i64 %t108, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d4, i32 0, i32 1) })
  store i1 %t111, ptr %l66
  br label %bb56
bb55:
  store i1 false, ptr %l63, !tbaa !21
  br label %bb57
bb56:
  %t112 = load i1, ptr %l66, !tbaa !21
  store i1 %t112, ptr %l63, !tbaa !21
  br label %bb57
bb57:
  %t113 = load i1, ptr %l63, !tbaa !21
  br i1 %t113, label %bb58, label %bb59
bb58:
  call void @__olang_scope_close(ptr %s7)
  store i32 19, ptr %rv
  br label %ret
bb59:
  br label %bb60
bb60:
  %t115 = load i64, ptr %l2, !tbaa !24
  %t117 = icmp eq i64 %t115, 6
  br i1 %t117, label %bb61, label %bb62
bb61:
  %t119 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t120 = load i64, ptr %l1, !tbaa !24
  %t123 = call i1 @compiler_2ftoken_2espells(ptr %v0, ptr %s7, { i64, ptr } %t119, i64 %t120, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d5, i32 0, i32 1) })
  store i1 %t123, ptr %l73
  br label %bb63
bb62:
  store i1 false, ptr %l70, !tbaa !21
  br label %bb64
bb63:
  %t124 = load i1, ptr %l73, !tbaa !21
  store i1 %t124, ptr %l70, !tbaa !21
  br label %bb64
bb64:
  %t125 = load i1, ptr %l70, !tbaa !21
  br i1 %t125, label %bb65, label %bb66
bb65:
  call void @__olang_scope_close(ptr %s7)
  store i32 50, ptr %rv
  br label %ret
bb66:
  br label %bb67
bb67:
  call void @__olang_scope_close(ptr %s7)
  br label %bb512
bb68:
  %t127 = load i8, ptr %l3, !tbaa !22
  %t129 = icmp eq i8 %t127, 99
  br i1 %t129, label %bb69, label %bb70
bb69:
  br label %bb71
bb70:
  br label %bb107
bb71:
  store %olang.scope zeroinitializer, ptr %s11
  %t131 = load i64, ptr %l2, !tbaa !24
  %t133 = icmp eq i64 %t131, 8
  br i1 %t133, label %bb72, label %bb73
bb72:
  %t135 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t136 = load i64, ptr %l1, !tbaa !24
  %t139 = call i1 @compiler_2ftoken_2espells(ptr %v0, ptr %s11, { i64, ptr } %t135, i64 %t136, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d6, i32 0, i32 1) })
  store i1 %t139, ptr %l82
  br label %bb74
bb73:
  store i1 false, ptr %l79, !tbaa !21
  br label %bb75
bb74:
  %t140 = load i1, ptr %l82, !tbaa !21
  store i1 %t140, ptr %l79, !tbaa !21
  br label %bb75
bb75:
  %t141 = load i1, ptr %l79, !tbaa !21
  br i1 %t141, label %bb76, label %bb77
bb76:
  call void @__olang_scope_close(ptr %s11)
  store i32 56, ptr %rv
  br label %ret
bb77:
  br label %bb78
bb78:
  %t143 = load i64, ptr %l2, !tbaa !24
  %t145 = icmp eq i64 %t143, 4
  br i1 %t145, label %bb79, label %bb80
bb79:
  %t147 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t148 = load i64, ptr %l1, !tbaa !24
  %t151 = call i1 @compiler_2ftoken_2espells(ptr %v0, ptr %s11, { i64, ptr } %t147, i64 %t148, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d7, i32 0, i32 1) })
  store i1 %t151, ptr %l89
  br label %bb81
bb80:
  store i1 false, ptr %l86, !tbaa !21
  br label %bb82
bb81:
  %t152 = load i1, ptr %l89, !tbaa !21
  store i1 %t152, ptr %l86, !tbaa !21
  br label %bb82
bb82:
  %t153 = load i1, ptr %l86, !tbaa !21
  br i1 %t153, label %bb83, label %bb84
bb83:
  call void @__olang_scope_close(ptr %s11)
  store i32 32, ptr %rv
  br label %ret
bb84:
  br label %bb85
bb85:
  %t155 = load i64, ptr %l2, !tbaa !24
  %t157 = icmp eq i64 %t155, 5
  br i1 %t157, label %bb86, label %bb87
bb86:
  %t159 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t160 = load i64, ptr %l1, !tbaa !24
  %t163 = call i1 @compiler_2ftoken_2espells(ptr %v0, ptr %s11, { i64, ptr } %t159, i64 %t160, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d8, i32 0, i32 1) })
  store i1 %t163, ptr %l96
  br label %bb88
bb87:
  store i1 false, ptr %l93, !tbaa !21
  br label %bb89
bb88:
  %t164 = load i1, ptr %l96, !tbaa !21
  store i1 %t164, ptr %l93, !tbaa !21
  br label %bb89
bb89:
  %t165 = load i1, ptr %l93, !tbaa !21
  br i1 %t165, label %bb90, label %bb91
bb90:
  call void @__olang_scope_close(ptr %s11)
  store i32 12, ptr %rv
  br label %ret
bb91:
  br label %bb92
bb92:
  %t167 = load i64, ptr %l2, !tbaa !24
  %t169 = icmp eq i64 %t167, 8
  br i1 %t169, label %bb93, label %bb94
bb93:
  %t171 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t172 = load i64, ptr %l1, !tbaa !24
  %t175 = call i1 @compiler_2ftoken_2espells(ptr %v0, ptr %s11, { i64, ptr } %t171, i64 %t172, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d9, i32 0, i32 1) })
  store i1 %t175, ptr %l103
  br label %bb95
bb94:
  store i1 false, ptr %l100, !tbaa !21
  br label %bb96
bb95:
  %t176 = load i1, ptr %l103, !tbaa !21
  store i1 %t176, ptr %l100, !tbaa !21
  br label %bb96
bb96:
  %t177 = load i1, ptr %l100, !tbaa !21
  br i1 %t177, label %bb97, label %bb98
bb97:
  call void @__olang_scope_close(ptr %s11)
  store i32 20, ptr %rv
  br label %ret
bb98:
  br label %bb99
bb99:
  %t179 = load i64, ptr %l2, !tbaa !24
  %t181 = icmp eq i64 %t179, 8
  br i1 %t181, label %bb100, label %bb101
bb100:
  %t183 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t184 = load i64, ptr %l1, !tbaa !24
  %t187 = call i1 @compiler_2ftoken_2espells(ptr %v0, ptr %s11, { i64, ptr } %t183, i64 %t184, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d10, i32 0, i32 1) })
  store i1 %t187, ptr %l110
  br label %bb102
bb101:
  store i1 false, ptr %l107, !tbaa !21
  br label %bb103
bb102:
  %t188 = load i1, ptr %l110, !tbaa !21
  store i1 %t188, ptr %l107, !tbaa !21
  br label %bb103
bb103:
  %t189 = load i1, ptr %l107, !tbaa !21
  br i1 %t189, label %bb104, label %bb105
bb104:
  call void @__olang_scope_close(ptr %s11)
  store i32 51, ptr %rv
  br label %ret
bb105:
  br label %bb106
bb106:
  call void @__olang_scope_close(ptr %s11)
  br label %bb512
bb107:
  %t191 = load i8, ptr %l3, !tbaa !22
  %t193 = icmp eq i8 %t191, 100
  br i1 %t193, label %bb108, label %bb109
bb108:
  br label %bb110
bb109:
  br label %bb138
bb110:
  store %olang.scope zeroinitializer, ptr %s17
  %t195 = load i64, ptr %l2, !tbaa !24
  %t197 = icmp eq i64 %t195, 2
  br i1 %t197, label %bb111, label %bb112
bb111:
  %t199 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t199, ptr %l117, !tbaa !27
  %t200 = load i64, ptr %l1, !tbaa !24
  %t202 = add i64 %t200, 1
  %t204 = getelementptr { i64, ptr }, ptr %l117, i32 0, i32 1
  %t205 = load ptr, ptr %t204, !tbaa !27
  %t206 = getelementptr i8, ptr %t205, i64 %t202
  %t207 = load i8, ptr %t206, !tbaa !32
  %t209 = icmp eq i8 %t207, 111
  store i1 %t209, ptr %l116, !tbaa !21
  br label %bb113
bb112:
  store i1 false, ptr %l116, !tbaa !21
  br label %bb113
bb113:
  %t211 = load i1, ptr %l116, !tbaa !21
  br i1 %t211, label %bb114, label %bb115
bb114:
  call void @__olang_scope_close(ptr %s17)
  store i32 26, ptr %rv
  br label %ret
bb115:
  br label %bb116
bb116:
  %t213 = load i64, ptr %l2, !tbaa !24
  %t215 = icmp eq i64 %t213, 5
  br i1 %t215, label %bb117, label %bb118
bb117:
  %t217 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t218 = load i64, ptr %l1, !tbaa !24
  %t221 = call i1 @compiler_2ftoken_2espells(ptr %v0, ptr %s17, { i64, ptr } %t217, i64 %t218, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d11, i32 0, i32 1) })
  store i1 %t221, ptr %l128
  br label %bb119
bb118:
  store i1 false, ptr %l125, !tbaa !21
  br label %bb120
bb119:
  %t222 = load i1, ptr %l128, !tbaa !21
  store i1 %t222, ptr %l125, !tbaa !21
  br label %bb120
bb120:
  %t223 = load i1, ptr %l125, !tbaa !21
  br i1 %t223, label %bb121, label %bb122
bb121:
  call void @__olang_scope_close(ptr %s17)
  store i32 16, ptr %rv
  br label %ret
bb122:
  br label %bb123
bb123:
  %t225 = load i64, ptr %l2, !tbaa !24
  %t227 = icmp eq i64 %t225, 7
  br i1 %t227, label %bb124, label %bb125
bb124:
  %t229 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t230 = load i64, ptr %l1, !tbaa !24
  %t233 = call i1 @compiler_2ftoken_2espells(ptr %v0, ptr %s17, { i64, ptr } %t229, i64 %t230, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d12, i32 0, i32 1) })
  store i1 %t233, ptr %l135
  br label %bb126
bb125:
  store i1 false, ptr %l132, !tbaa !21
  br label %bb127
bb126:
  %t234 = load i1, ptr %l135, !tbaa !21
  store i1 %t234, ptr %l132, !tbaa !21
  br label %bb127
bb127:
  %t235 = load i1, ptr %l132, !tbaa !21
  br i1 %t235, label %bb128, label %bb129
bb128:
  call void @__olang_scope_close(ptr %s17)
  store i32 44, ptr %rv
  br label %ret
bb129:
  br label %bb130
bb130:
  %t237 = load i64, ptr %l2, !tbaa !24
  %t239 = icmp eq i64 %t237, 8
  br i1 %t239, label %bb131, label %bb132
bb131:
  %t241 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t242 = load i64, ptr %l1, !tbaa !24
  %t245 = call i1 @compiler_2ftoken_2espells(ptr %v0, ptr %s17, { i64, ptr } %t241, i64 %t242, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d13, i32 0, i32 1) })
  store i1 %t245, ptr %l142
  br label %bb133
bb132:
  store i1 false, ptr %l139, !tbaa !21
  br label %bb134
bb133:
  %t246 = load i1, ptr %l142, !tbaa !21
  store i1 %t246, ptr %l139, !tbaa !21
  br label %bb134
bb134:
  %t247 = load i1, ptr %l139, !tbaa !21
  br i1 %t247, label %bb135, label %bb136
bb135:
  call void @__olang_scope_close(ptr %s17)
  store i32 42, ptr %rv
  br label %ret
bb136:
  br label %bb137
bb137:
  call void @__olang_scope_close(ptr %s17)
  br label %bb512
bb138:
  %t249 = load i8, ptr %l3, !tbaa !22
  %t251 = icmp eq i8 %t249, 101
  br i1 %t251, label %bb139, label %bb140
bb139:
  br label %bb141
bb140:
  br label %bb191
bb141:
  store %olang.scope zeroinitializer, ptr %s22
  %t253 = load i64, ptr %l2, !tbaa !24
  %t255 = icmp eq i64 %t253, 4
  br i1 %t255, label %bb142, label %bb143
bb142:
  %t257 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t258 = load i64, ptr %l1, !tbaa !24
  %t261 = call i1 @compiler_2ftoken_2espells(ptr %v0, ptr %s22, { i64, ptr } %t257, i64 %t258, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d14, i32 0, i32 1) })
  store i1 %t261, ptr %l151
  br label %bb144
bb143:
  store i1 false, ptr %l148, !tbaa !21
  br label %bb145
bb144:
  %t262 = load i1, ptr %l151, !tbaa !21
  store i1 %t262, ptr %l148, !tbaa !21
  br label %bb145
bb145:
  %t263 = load i1, ptr %l148, !tbaa !21
  br i1 %t263, label %bb146, label %bb147
bb146:
  call void @__olang_scope_close(ptr %s22)
  store i32 10, ptr %rv
  br label %ret
bb147:
  br label %bb148
bb148:
  %t265 = load i64, ptr %l2, !tbaa !24
  %t267 = icmp eq i64 %t265, 4
  br i1 %t267, label %bb149, label %bb150
bb149:
  %t269 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t270 = load i64, ptr %l1, !tbaa !24
  %t273 = call i1 @compiler_2ftoken_2espells(ptr %v0, ptr %s22, { i64, ptr } %t269, i64 %t270, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d15, i32 0, i32 1) })
  store i1 %t273, ptr %l158
  br label %bb151
bb150:
  store i1 false, ptr %l155, !tbaa !21
  br label %bb152
bb151:
  %t274 = load i1, ptr %l158, !tbaa !21
  store i1 %t274, ptr %l155, !tbaa !21
  br label %bb152
bb152:
  %t275 = load i1, ptr %l155, !tbaa !21
  br i1 %t275, label %bb153, label %bb154
bb153:
  call void @__olang_scope_close(ptr %s22)
  store i32 35, ptr %rv
  br label %ret
bb154:
  br label %bb155
bb155:
  %t277 = load i64, ptr %l2, !tbaa !24
  %t279 = icmp eq i64 %t277, 5
  br i1 %t279, label %bb156, label %bb157
bb156:
  %t281 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t282 = load i64, ptr %l1, !tbaa !24
  %t285 = call i1 @compiler_2ftoken_2espells(ptr %v0, ptr %s22, { i64, ptr } %t281, i64 %t282, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d16, i32 0, i32 1) })
  store i1 %t285, ptr %l165
  br label %bb158
bb157:
  store i1 false, ptr %l162, !tbaa !21
  br label %bb159
bb158:
  %t286 = load i1, ptr %l165, !tbaa !21
  store i1 %t286, ptr %l162, !tbaa !21
  br label %bb159
bb159:
  %t287 = load i1, ptr %l162, !tbaa !21
  br i1 %t287, label %bb160, label %bb161
bb160:
  call void @__olang_scope_close(ptr %s22)
  store i32 18, ptr %rv
  br label %ret
bb161:
  br label %bb162
bb162:
  %t289 = load i64, ptr %l2, !tbaa !24
  %t291 = icmp eq i64 %t289, 5
  br i1 %t291, label %bb163, label %bb164
bb163:
  %t293 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t294 = load i64, ptr %l1, !tbaa !24
  %t297 = call i1 @compiler_2ftoken_2espells(ptr %v0, ptr %s22, { i64, ptr } %t293, i64 %t294, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d17, i32 0, i32 1) })
  store i1 %t297, ptr %l172
  br label %bb165
bb164:
  store i1 false, ptr %l169, !tbaa !21
  br label %bb166
bb165:
  %t298 = load i1, ptr %l172, !tbaa !21
  store i1 %t298, ptr %l169, !tbaa !21
  br label %bb166
bb166:
  %t299 = load i1, ptr %l169, !tbaa !21
  br i1 %t299, label %bb167, label %bb168
bb167:
  call void @__olang_scope_close(ptr %s22)
  store i32 38, ptr %rv
  br label %ret
bb168:
  br label %bb169
bb169:
  %t301 = load i64, ptr %l2, !tbaa !24
  %t303 = icmp eq i64 %t301, 7
  br i1 %t303, label %bb170, label %bb171
bb170:
  %t305 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t306 = load i64, ptr %l1, !tbaa !24
  %t309 = call i1 @compiler_2ftoken_2espells(ptr %v0, ptr %s22, { i64, ptr } %t305, i64 %t306, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d18, i32 0, i32 1) })
  store i1 %t309, ptr %l179
  br label %bb172
bb171:
  store i1 false, ptr %l176, !tbaa !21
  br label %bb173
bb172:
  %t310 = load i1, ptr %l179, !tbaa !21
  store i1 %t310, ptr %l176, !tbaa !21
  br label %bb173
bb173:
  %t311 = load i1, ptr %l176, !tbaa !21
  br i1 %t311, label %bb174, label %bb175
bb174:
  call void @__olang_scope_close(ptr %s22)
  store i32 22, ptr %rv
  br label %ret
bb175:
  br label %bb176
bb176:
  %t313 = load i64, ptr %l2, !tbaa !24
  %t315 = icmp eq i64 %t313, 8
  br i1 %t315, label %bb177, label %bb178
bb177:
  %t317 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t318 = load i64, ptr %l1, !tbaa !24
  %t321 = call i1 @compiler_2ftoken_2espells(ptr %v0, ptr %s22, { i64, ptr } %t317, i64 %t318, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d19, i32 0, i32 1) })
  store i1 %t321, ptr %l186
  br label %bb179
bb178:
  store i1 false, ptr %l183, !tbaa !21
  br label %bb180
bb179:
  %t322 = load i1, ptr %l186, !tbaa !21
  store i1 %t322, ptr %l183, !tbaa !21
  br label %bb180
bb180:
  %t323 = load i1, ptr %l183, !tbaa !21
  br i1 %t323, label %bb181, label %bb182
bb181:
  call void @__olang_scope_close(ptr %s22)
  store i32 17, ptr %rv
  br label %ret
bb182:
  br label %bb183
bb183:
  %t325 = load i64, ptr %l2, !tbaa !24
  %t327 = icmp eq i64 %t325, 6
  br i1 %t327, label %bb184, label %bb185
bb184:
  %t329 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t330 = load i64, ptr %l1, !tbaa !24
  %t333 = call i1 @compiler_2ftoken_2espells(ptr %v0, ptr %s22, { i64, ptr } %t329, i64 %t330, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d20, i32 0, i32 1) })
  store i1 %t333, ptr %l193
  br label %bb186
bb185:
  store i1 false, ptr %l190, !tbaa !21
  br label %bb187
bb186:
  %t334 = load i1, ptr %l193, !tbaa !21
  store i1 %t334, ptr %l190, !tbaa !21
  br label %bb187
bb187:
  %t335 = load i1, ptr %l190, !tbaa !21
  br i1 %t335, label %bb188, label %bb189
bb188:
  call void @__olang_scope_close(ptr %s22)
  store i32 43, ptr %rv
  br label %ret
bb189:
  br label %bb190
bb190:
  call void @__olang_scope_close(ptr %s22)
  br label %bb512
bb191:
  %t337 = load i8, ptr %l3, !tbaa !22
  %t339 = icmp eq i8 %t337, 102
  br i1 %t339, label %bb192, label %bb193
bb192:
  br label %bb194
bb193:
  br label %bb215
bb194:
  store %olang.scope zeroinitializer, ptr %s30
  %t341 = load i64, ptr %l2, !tbaa !24
  %t343 = icmp eq i64 %t341, 2
  br i1 %t343, label %bb195, label %bb196
bb195:
  %t345 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t345, ptr %l200, !tbaa !27
  %t346 = load i64, ptr %l1, !tbaa !24
  %t348 = add i64 %t346, 1
  %t350 = getelementptr { i64, ptr }, ptr %l200, i32 0, i32 1
  %t351 = load ptr, ptr %t350, !tbaa !27
  %t352 = getelementptr i8, ptr %t351, i64 %t348
  %t353 = load i8, ptr %t352, !tbaa !32
  %t355 = icmp eq i8 %t353, 110
  store i1 %t355, ptr %l199, !tbaa !21
  br label %bb197
bb196:
  store i1 false, ptr %l199, !tbaa !21
  br label %bb197
bb197:
  %t357 = load i1, ptr %l199, !tbaa !21
  br i1 %t357, label %bb198, label %bb199
bb198:
  call void @__olang_scope_close(ptr %s30)
  store i32 37, ptr %rv
  br label %ret
bb199:
  br label %bb200
bb200:
  %t359 = load i64, ptr %l2, !tbaa !24
  %t361 = icmp eq i64 %t359, 3
  br i1 %t361, label %bb201, label %bb202
bb201:
  %t363 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t364 = load i64, ptr %l1, !tbaa !24
  %t367 = call i1 @compiler_2ftoken_2espells(ptr %v0, ptr %s30, { i64, ptr } %t363, i64 %t364, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d21, i32 0, i32 1) })
  store i1 %t367, ptr %l211
  br label %bb203
bb202:
  store i1 false, ptr %l208, !tbaa !21
  br label %bb204
bb203:
  %t368 = load i1, ptr %l211, !tbaa !21
  store i1 %t368, ptr %l208, !tbaa !21
  br label %bb204
bb204:
  %t369 = load i1, ptr %l208, !tbaa !21
  br i1 %t369, label %bb205, label %bb206
bb205:
  call void @__olang_scope_close(ptr %s30)
  store i32 25, ptr %rv
  br label %ret
bb206:
  br label %bb207
bb207:
  %t371 = load i64, ptr %l2, !tbaa !24
  %t373 = icmp eq i64 %t371, 5
  br i1 %t373, label %bb208, label %bb209
bb208:
  %t375 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t376 = load i64, ptr %l1, !tbaa !24
  %t379 = call i1 @compiler_2ftoken_2espells(ptr %v0, ptr %s30, { i64, ptr } %t375, i64 %t376, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d22, i32 0, i32 1) })
  store i1 %t379, ptr %l218
  br label %bb210
bb209:
  store i1 false, ptr %l215, !tbaa !21
  br label %bb211
bb210:
  %t380 = load i1, ptr %l218, !tbaa !21
  store i1 %t380, ptr %l215, !tbaa !21
  br label %bb211
bb211:
  %t381 = load i1, ptr %l215, !tbaa !21
  br i1 %t381, label %bb212, label %bb213
bb212:
  call void @__olang_scope_close(ptr %s30)
  store i32 6, ptr %rv
  br label %ret
bb213:
  br label %bb214
bb214:
  call void @__olang_scope_close(ptr %s30)
  br label %bb512
bb215:
  %t383 = load i8, ptr %l3, !tbaa !22
  %t385 = icmp eq i8 %t383, 105
  br i1 %t385, label %bb216, label %bb217
bb216:
  br label %bb218
bb217:
  br label %bb245
bb218:
  store %olang.scope zeroinitializer, ptr %s34
  %t387 = load i64, ptr %l2, !tbaa !24
  %t389 = icmp eq i64 %t387, 5
  br i1 %t389, label %bb219, label %bb220
bb219:
  %t391 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t392 = load i64, ptr %l1, !tbaa !24
  %t395 = call i1 @compiler_2ftoken_2espells(ptr %v0, ptr %s34, { i64, ptr } %t391, i64 %t392, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d23, i32 0, i32 1) })
  store i1 %t395, ptr %l227
  br label %bb221
bb220:
  store i1 false, ptr %l224, !tbaa !21
  br label %bb222
bb221:
  %t396 = load i1, ptr %l227, !tbaa !21
  store i1 %t396, ptr %l224, !tbaa !21
  br label %bb222
bb222:
  %t397 = load i1, ptr %l224, !tbaa !21
  br i1 %t397, label %bb223, label %bb224
bb223:
  call void @__olang_scope_close(ptr %s34)
  store i32 54, ptr %rv
  br label %ret
bb224:
  br label %bb225
bb225:
  %t399 = load i64, ptr %l2, !tbaa !24
  %t401 = icmp eq i64 %t399, 2
  br i1 %t401, label %bb226, label %bb227
bb226:
  %t403 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t403, ptr %l231, !tbaa !27
  %t404 = load i64, ptr %l1, !tbaa !24
  %t406 = add i64 %t404, 1
  %t408 = getelementptr { i64, ptr }, ptr %l231, i32 0, i32 1
  %t409 = load ptr, ptr %t408, !tbaa !27
  %t410 = getelementptr i8, ptr %t409, i64 %t406
  %t411 = load i8, ptr %t410, !tbaa !32
  store i8 %t411, ptr %l4, !tbaa !22
  %t413 = load i8, ptr %l4, !tbaa !22
  %t415 = icmp eq i8 %t413, 102
  br i1 %t415, label %bb228, label %bb229
bb227:
  br label %bb237
bb228:
  call void @__olang_scope_close(ptr %s34)
  store i32 9, ptr %rv
  br label %ret
bb229:
  br label %bb230
bb230:
  %t418 = load i8, ptr %l4, !tbaa !22
  %t420 = icmp eq i8 %t418, 110
  br i1 %t420, label %bb231, label %bb232
bb231:
  call void @__olang_scope_close(ptr %s34)
  store i32 27, ptr %rv
  br label %ret
bb232:
  br label %bb233
bb233:
  %t423 = load i8, ptr %l4, !tbaa !22
  %t425 = icmp eq i8 %t423, 115
  br i1 %t425, label %bb234, label %bb235
bb234:
  call void @__olang_scope_close(ptr %s34)
  store i32 28, ptr %rv
  br label %ret
bb235:
  br label %bb236
bb236:
  br label %bb237
bb237:
  %t428 = load i64, ptr %l2, !tbaa !24
  %t430 = icmp eq i64 %t428, 6
  br i1 %t430, label %bb238, label %bb239
bb238:
  %t432 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t433 = load i64, ptr %l1, !tbaa !24
  %t436 = call i1 @compiler_2ftoken_2espells(ptr %v0, ptr %s34, { i64, ptr } %t432, i64 %t433, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d24, i32 0, i32 1) })
  store i1 %t436, ptr %l249
  br label %bb240
bb239:
  store i1 false, ptr %l246, !tbaa !21
  br label %bb241
bb240:
  %t437 = load i1, ptr %l249, !tbaa !21
  store i1 %t437, ptr %l246, !tbaa !21
  br label %bb241
bb241:
  %t438 = load i1, ptr %l246, !tbaa !21
  br i1 %t438, label %bb242, label %bb243
bb242:
  call void @__olang_scope_close(ptr %s34)
  store i32 40, ptr %rv
  br label %ret
bb243:
  br label %bb244
bb244:
  call void @__olang_scope_close(ptr %s34)
  br label %bb512
bb245:
  %t440 = load i8, ptr %l3, !tbaa !22
  %t442 = icmp eq i8 %t440, 106
  br i1 %t442, label %bb246, label %bb247
bb246:
  br label %bb248
bb247:
  br label %bb256
bb248:
  store %olang.scope zeroinitializer, ptr %s41
  %t444 = load i64, ptr %l2, !tbaa !24
  %t446 = icmp eq i64 %t444, 4
  br i1 %t446, label %bb249, label %bb250
bb249:
  %t448 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t449 = load i64, ptr %l1, !tbaa !24
  %t452 = call i1 @compiler_2ftoken_2espells(ptr %v0, ptr %s41, { i64, ptr } %t448, i64 %t449, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d25, i32 0, i32 1) })
  store i1 %t452, ptr %l258
  br label %bb251
bb250:
  store i1 false, ptr %l255, !tbaa !21
  br label %bb252
bb251:
  %t453 = load i1, ptr %l258, !tbaa !21
  store i1 %t453, ptr %l255, !tbaa !21
  br label %bb252
bb252:
  %t454 = load i1, ptr %l255, !tbaa !21
  br i1 %t454, label %bb253, label %bb254
bb253:
  call void @__olang_scope_close(ptr %s41)
  store i32 14, ptr %rv
  br label %ret
bb254:
  br label %bb255
bb255:
  call void @__olang_scope_close(ptr %s41)
  br label %bb512
bb256:
  %t456 = load i8, ptr %l3, !tbaa !22
  %t458 = icmp eq i8 %t456, 109
  br i1 %t458, label %bb257, label %bb258
bb257:
  br label %bb259
bb258:
  br label %bb274
bb259:
  store %olang.scope zeroinitializer, ptr %s43
  %t460 = load i64, ptr %l2, !tbaa !24
  %t462 = icmp eq i64 %t460, 3
  br i1 %t462, label %bb260, label %bb261
bb260:
  %t464 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t465 = load i64, ptr %l1, !tbaa !24
  %t468 = call i1 @compiler_2ftoken_2espells(ptr %v0, ptr %s43, { i64, ptr } %t464, i64 %t465, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d26, i32 0, i32 1) })
  store i1 %t468, ptr %l267
  br label %bb262
bb261:
  store i1 false, ptr %l264, !tbaa !21
  br label %bb263
bb262:
  %t469 = load i1, ptr %l267, !tbaa !21
  store i1 %t469, ptr %l264, !tbaa !21
  br label %bb263
bb263:
  %t470 = load i1, ptr %l264, !tbaa !21
  br i1 %t470, label %bb264, label %bb265
bb264:
  call void @__olang_scope_close(ptr %s43)
  store i32 39, ptr %rv
  br label %ret
bb265:
  br label %bb266
bb266:
  %t472 = load i64, ptr %l2, !tbaa !24
  %t474 = icmp eq i64 %t472, 5
  br i1 %t474, label %bb267, label %bb268
bb267:
  %t476 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t477 = load i64, ptr %l1, !tbaa !24
  %t480 = call i1 @compiler_2ftoken_2espells(ptr %v0, ptr %s43, { i64, ptr } %t476, i64 %t477, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d27, i32 0, i32 1) })
  store i1 %t480, ptr %l274
  br label %bb269
bb268:
  store i1 false, ptr %l271, !tbaa !21
  br label %bb270
bb269:
  %t481 = load i1, ptr %l274, !tbaa !21
  store i1 %t481, ptr %l271, !tbaa !21
  br label %bb270
bb270:
  %t482 = load i1, ptr %l271, !tbaa !21
  br i1 %t482, label %bb271, label %bb272
bb271:
  call void @__olang_scope_close(ptr %s43)
  store i32 31, ptr %rv
  br label %ret
bb272:
  br label %bb273
bb273:
  call void @__olang_scope_close(ptr %s43)
  br label %bb512
bb274:
  %t484 = load i8, ptr %l3, !tbaa !22
  %t486 = icmp eq i8 %t484, 110
  br i1 %t486, label %bb275, label %bb276
bb275:
  br label %bb277
bb276:
  br label %bb341
bb277:
  store %olang.scope zeroinitializer, ptr %s46
  %t488 = load i64, ptr %l2, !tbaa !24
  %t490 = icmp eq i64 %t488, 7
  br i1 %t490, label %bb278, label %bb279
bb278:
  %t492 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t493 = load i64, ptr %l1, !tbaa !24
  %t496 = call i1 @compiler_2ftoken_2espells(ptr %v0, ptr %s46, { i64, ptr } %t492, i64 %t493, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d28, i32 0, i32 1) })
  store i1 %t496, ptr %l283
  br label %bb280
bb279:
  store i1 false, ptr %l280, !tbaa !21
  br label %bb281
bb280:
  %t497 = load i1, ptr %l283, !tbaa !21
  store i1 %t497, ptr %l280, !tbaa !21
  br label %bb281
bb281:
  %t498 = load i1, ptr %l280, !tbaa !21
  br i1 %t498, label %bb282, label %bb283
bb282:
  call void @__olang_scope_close(ptr %s46)
  store i32 58, ptr %rv
  br label %ret
bb283:
  br label %bb284
bb284:
  %t500 = load i64, ptr %l2, !tbaa !24
  %t502 = icmp eq i64 %t500, 7
  br i1 %t502, label %bb285, label %bb286
bb285:
  %t504 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t505 = load i64, ptr %l1, !tbaa !24
  %t508 = call i1 @compiler_2ftoken_2espells(ptr %v0, ptr %s46, { i64, ptr } %t504, i64 %t505, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d29, i32 0, i32 1) })
  store i1 %t508, ptr %l290
  br label %bb287
bb286:
  store i1 false, ptr %l287, !tbaa !21
  br label %bb288
bb287:
  %t509 = load i1, ptr %l290, !tbaa !21
  store i1 %t509, ptr %l287, !tbaa !21
  br label %bb288
bb288:
  %t510 = load i1, ptr %l287, !tbaa !21
  br i1 %t510, label %bb289, label %bb290
bb289:
  call void @__olang_scope_close(ptr %s46)
  store i32 59, ptr %rv
  br label %ret
bb290:
  br label %bb291
bb291:
  %t512 = load i64, ptr %l2, !tbaa !24
  %t514 = icmp eq i64 %t512, 7
  br i1 %t514, label %bb292, label %bb293
bb292:
  %t516 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t517 = load i64, ptr %l1, !tbaa !24
  %t520 = call i1 @compiler_2ftoken_2espells(ptr %v0, ptr %s46, { i64, ptr } %t516, i64 %t517, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d30, i32 0, i32 1) })
  store i1 %t520, ptr %l297
  br label %bb294
bb293:
  store i1 false, ptr %l294, !tbaa !21
  br label %bb295
bb294:
  %t521 = load i1, ptr %l297, !tbaa !21
  store i1 %t521, ptr %l294, !tbaa !21
  br label %bb295
bb295:
  %t522 = load i1, ptr %l294, !tbaa !21
  br i1 %t522, label %bb296, label %bb297
bb296:
  call void @__olang_scope_close(ptr %s46)
  store i32 60, ptr %rv
  br label %ret
bb297:
  br label %bb298
bb298:
  %t524 = load i64, ptr %l2, !tbaa !24
  %t526 = icmp eq i64 %t524, 9
  br i1 %t526, label %bb299, label %bb300
bb299:
  %t528 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t529 = load i64, ptr %l1, !tbaa !24
  %t532 = call i1 @compiler_2ftoken_2espells(ptr %v0, ptr %s46, { i64, ptr } %t528, i64 %t529, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d31, i32 0, i32 1) })
  store i1 %t532, ptr %l304
  br label %bb301
bb300:
  store i1 false, ptr %l301, !tbaa !21
  br label %bb302
bb301:
  %t533 = load i1, ptr %l304, !tbaa !21
  store i1 %t533, ptr %l301, !tbaa !21
  br label %bb302
bb302:
  %t534 = load i1, ptr %l301, !tbaa !21
  br i1 %t534, label %bb303, label %bb304
bb303:
  call void @__olang_scope_close(ptr %s46)
  store i32 61, ptr %rv
  br label %ret
bb304:
  br label %bb305
bb305:
  %t536 = load i64, ptr %l2, !tbaa !24
  %t538 = icmp eq i64 %t536, 8
  br i1 %t538, label %bb306, label %bb307
bb306:
  %t540 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t541 = load i64, ptr %l1, !tbaa !24
  %t544 = call i1 @compiler_2ftoken_2espells(ptr %v0, ptr %s46, { i64, ptr } %t540, i64 %t541, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d32, i32 0, i32 1) })
  store i1 %t544, ptr %l311
  br label %bb308
bb307:
  store i1 false, ptr %l308, !tbaa !21
  br label %bb309
bb308:
  %t545 = load i1, ptr %l311, !tbaa !21
  store i1 %t545, ptr %l308, !tbaa !21
  br label %bb309
bb309:
  %t546 = load i1, ptr %l308, !tbaa !21
  br i1 %t546, label %bb310, label %bb311
bb310:
  call void @__olang_scope_close(ptr %s46)
  store i32 62, ptr %rv
  br label %ret
bb311:
  br label %bb312
bb312:
  %t548 = load i64, ptr %l2, !tbaa !24
  %t550 = icmp eq i64 %t548, 8
  br i1 %t550, label %bb313, label %bb314
bb313:
  %t552 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t553 = load i64, ptr %l1, !tbaa !24
  %t556 = call i1 @compiler_2ftoken_2espells(ptr %v0, ptr %s46, { i64, ptr } %t552, i64 %t553, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d33, i32 0, i32 1) })
  store i1 %t556, ptr %l318
  br label %bb315
bb314:
  store i1 false, ptr %l315, !tbaa !21
  br label %bb316
bb315:
  %t557 = load i1, ptr %l318, !tbaa !21
  store i1 %t557, ptr %l315, !tbaa !21
  br label %bb316
bb316:
  %t558 = load i1, ptr %l315, !tbaa !21
  br i1 %t558, label %bb317, label %bb318
bb317:
  call void @__olang_scope_close(ptr %s46)
  store i32 66, ptr %rv
  br label %ret
bb318:
  br label %bb319
bb319:
  %t560 = load i64, ptr %l2, !tbaa !24
  %t562 = icmp eq i64 %t560, 3
  br i1 %t562, label %bb320, label %bb321
bb320:
  %t564 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t565 = load i64, ptr %l1, !tbaa !24
  %t568 = call i1 @compiler_2ftoken_2espells(ptr %v0, ptr %s46, { i64, ptr } %t564, i64 %t565, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d34, i32 0, i32 1) })
  store i1 %t568, ptr %l325
  br label %bb322
bb321:
  store i1 false, ptr %l322, !tbaa !21
  br label %bb323
bb322:
  %t569 = load i1, ptr %l325, !tbaa !21
  store i1 %t569, ptr %l322, !tbaa !21
  br label %bb323
bb323:
  %t570 = load i1, ptr %l322, !tbaa !21
  br i1 %t570, label %bb324, label %bb325
bb324:
  call void @__olang_scope_close(ptr %s46)
  store i32 48, ptr %rv
  br label %ret
bb325:
  br label %bb326
bb326:
  %t572 = load i64, ptr %l2, !tbaa !24
  %t574 = icmp eq i64 %t572, 4
  br i1 %t574, label %bb327, label %bb328
bb327:
  %t576 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t577 = load i64, ptr %l1, !tbaa !24
  %t580 = call i1 @compiler_2ftoken_2espells(ptr %v0, ptr %s46, { i64, ptr } %t576, i64 %t577, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d35, i32 0, i32 1) })
  store i1 %t580, ptr %l332
  br label %bb329
bb328:
  store i1 false, ptr %l329, !tbaa !21
  br label %bb330
bb329:
  %t581 = load i1, ptr %l332, !tbaa !21
  store i1 %t581, ptr %l329, !tbaa !21
  br label %bb330
bb330:
  %t582 = load i1, ptr %l329, !tbaa !21
  br i1 %t582, label %bb331, label %bb332
bb331:
  call void @__olang_scope_close(ptr %s46)
  store i32 7, ptr %rv
  br label %ret
bb332:
  br label %bb333
bb333:
  %t584 = load i64, ptr %l2, !tbaa !24
  %t586 = icmp eq i64 %t584, 8
  br i1 %t586, label %bb334, label %bb335
bb334:
  %t588 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t589 = load i64, ptr %l1, !tbaa !24
  %t592 = call i1 @compiler_2ftoken_2espells(ptr %v0, ptr %s46, { i64, ptr } %t588, i64 %t589, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d36, i32 0, i32 1) })
  store i1 %t592, ptr %l339
  br label %bb336
bb335:
  store i1 false, ptr %l336, !tbaa !21
  br label %bb337
bb336:
  %t593 = load i1, ptr %l339, !tbaa !21
  store i1 %t593, ptr %l336, !tbaa !21
  br label %bb337
bb337:
  %t594 = load i1, ptr %l336, !tbaa !21
  br i1 %t594, label %bb338, label %bb339
bb338:
  call void @__olang_scope_close(ptr %s46)
  store i32 23, ptr %rv
  br label %ret
bb339:
  br label %bb340
bb340:
  call void @__olang_scope_close(ptr %s46)
  br label %bb512
bb341:
  %t596 = load i8, ptr %l3, !tbaa !22
  %t598 = icmp eq i8 %t596, 111
  br i1 %t598, label %bb342, label %bb343
bb342:
  br label %bb344
bb343:
  br label %bb351
bb344:
  %t600 = load i64, ptr %l2, !tbaa !24
  %t602 = icmp eq i64 %t600, 2
  br i1 %t602, label %bb345, label %bb346
bb345:
  %t604 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t604, ptr %l346, !tbaa !27
  %t605 = load i64, ptr %l1, !tbaa !24
  %t607 = add i64 %t605, 1
  %t609 = getelementptr { i64, ptr }, ptr %l346, i32 0, i32 1
  %t610 = load ptr, ptr %t609, !tbaa !27
  %t611 = getelementptr i8, ptr %t610, i64 %t607
  %t612 = load i8, ptr %t611, !tbaa !32
  %t614 = icmp eq i8 %t612, 114
  store i1 %t614, ptr %l345, !tbaa !21
  br label %bb347
bb346:
  store i1 false, ptr %l345, !tbaa !21
  br label %bb347
bb347:
  %t616 = load i1, ptr %l345, !tbaa !21
  br i1 %t616, label %bb348, label %bb349
bb348:
  store i32 46, ptr %rv
  br label %ret
bb349:
  br label %bb350
bb350:
  br label %bb512
bb351:
  %t618 = load i8, ptr %l3, !tbaa !22
  %t620 = icmp eq i8 %t618, 114
  br i1 %t620, label %bb352, label %bb353
bb352:
  br label %bb354
bb353:
  br label %bb376
bb354:
  store %olang.scope zeroinitializer, ptr %s58
  %t622 = load i64, ptr %l2, !tbaa !24
  %t624 = icmp eq i64 %t622, 7
  br i1 %t624, label %bb355, label %bb356
bb355:
  %t626 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t627 = load i64, ptr %l1, !tbaa !24
  %t630 = call i1 @compiler_2ftoken_2espells(ptr %v0, ptr %s58, { i64, ptr } %t626, i64 %t627, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d37, i32 0, i32 1) })
  store i1 %t630, ptr %l359
  br label %bb357
bb356:
  store i1 false, ptr %l356, !tbaa !21
  br label %bb358
bb357:
  %t631 = load i1, ptr %l359, !tbaa !21
  store i1 %t631, ptr %l356, !tbaa !21
  br label %bb358
bb358:
  %t632 = load i1, ptr %l356, !tbaa !21
  br i1 %t632, label %bb359, label %bb360
bb359:
  call void @__olang_scope_close(ptr %s58)
  store i32 57, ptr %rv
  br label %ret
bb360:
  br label %bb361
bb361:
  %t634 = load i64, ptr %l2, !tbaa !24
  %t636 = icmp eq i64 %t634, 5
  br i1 %t636, label %bb362, label %bb363
bb362:
  %t638 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t639 = load i64, ptr %l1, !tbaa !24
  %t642 = call i1 @compiler_2ftoken_2espells(ptr %v0, ptr %s58, { i64, ptr } %t638, i64 %t639, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d38, i32 0, i32 1) })
  store i1 %t642, ptr %l366
  br label %bb364
bb363:
  store i1 false, ptr %l363, !tbaa !21
  br label %bb365
bb364:
  %t643 = load i1, ptr %l366, !tbaa !21
  store i1 %t643, ptr %l363, !tbaa !21
  br label %bb365
bb365:
  %t644 = load i1, ptr %l363, !tbaa !21
  br i1 %t644, label %bb366, label %bb367
bb366:
  call void @__olang_scope_close(ptr %s58)
  store i32 30, ptr %rv
  br label %ret
bb367:
  br label %bb368
bb368:
  %t646 = load i64, ptr %l2, !tbaa !24
  %t648 = icmp eq i64 %t646, 6
  br i1 %t648, label %bb369, label %bb370
bb369:
  %t650 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t651 = load i64, ptr %l1, !tbaa !24
  %t654 = call i1 @compiler_2ftoken_2espells(ptr %v0, ptr %s58, { i64, ptr } %t650, i64 %t651, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d39, i32 0, i32 1) })
  store i1 %t654, ptr %l373
  br label %bb371
bb370:
  store i1 false, ptr %l370, !tbaa !21
  br label %bb372
bb371:
  %t655 = load i1, ptr %l373, !tbaa !21
  store i1 %t655, ptr %l370, !tbaa !21
  br label %bb372
bb372:
  %t656 = load i1, ptr %l370, !tbaa !21
  br i1 %t656, label %bb373, label %bb374
bb373:
  call void @__olang_scope_close(ptr %s58)
  store i32 13, ptr %rv
  br label %ret
bb374:
  br label %bb375
bb375:
  call void @__olang_scope_close(ptr %s58)
  br label %bb512
bb376:
  %t658 = load i8, ptr %l3, !tbaa !22
  %t660 = icmp eq i8 %t658, 115
  br i1 %t660, label %bb377, label %bb378
bb377:
  br label %bb379
bb378:
  br label %bb394
bb379:
  store %olang.scope zeroinitializer, ptr %s62
  %t662 = load i64, ptr %l2, !tbaa !24
  %t664 = icmp eq i64 %t662, 5
  br i1 %t664, label %bb380, label %bb381
bb380:
  %t666 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t667 = load i64, ptr %l1, !tbaa !24
  %t670 = call i1 @compiler_2ftoken_2espells(ptr %v0, ptr %s62, { i64, ptr } %t666, i64 %t667, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d40, i32 0, i32 1) })
  store i1 %t670, ptr %l382
  br label %bb382
bb381:
  store i1 false, ptr %l379, !tbaa !21
  br label %bb383
bb382:
  %t671 = load i1, ptr %l382, !tbaa !21
  store i1 %t671, ptr %l379, !tbaa !21
  br label %bb383
bb383:
  %t672 = load i1, ptr %l379, !tbaa !21
  br i1 %t672, label %bb384, label %bb385
bb384:
  call void @__olang_scope_close(ptr %s62)
  store i32 15, ptr %rv
  br label %ret
bb385:
  br label %bb386
bb386:
  %t674 = load i64, ptr %l2, !tbaa !24
  %t676 = icmp eq i64 %t674, 6
  br i1 %t676, label %bb387, label %bb388
bb387:
  %t678 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t679 = load i64, ptr %l1, !tbaa !24
  %t682 = call i1 @compiler_2ftoken_2espells(ptr %v0, ptr %s62, { i64, ptr } %t678, i64 %t679, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d41, i32 0, i32 1) })
  store i1 %t682, ptr %l389
  br label %bb389
bb388:
  store i1 false, ptr %l386, !tbaa !21
  br label %bb390
bb389:
  %t683 = load i1, ptr %l389, !tbaa !21
  store i1 %t683, ptr %l386, !tbaa !21
  br label %bb390
bb390:
  %t684 = load i1, ptr %l386, !tbaa !21
  br i1 %t684, label %bb391, label %bb392
bb391:
  call void @__olang_scope_close(ptr %s62)
  store i32 34, ptr %rv
  br label %ret
bb392:
  br label %bb393
bb393:
  call void @__olang_scope_close(ptr %s62)
  br label %bb512
bb394:
  %t686 = load i8, ptr %l3, !tbaa !22
  %t688 = icmp eq i8 %t686, 116
  br i1 %t688, label %bb395, label %bb396
bb395:
  br label %bb397
bb396:
  br label %bb427
bb397:
  store %olang.scope zeroinitializer, ptr %s65
  %t690 = load i64, ptr %l2, !tbaa !24
  %t692 = icmp eq i64 %t690, 3
  br i1 %t692, label %bb398, label %bb399
bb398:
  %t694 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t695 = load i64, ptr %l1, !tbaa !24
  %t698 = call i1 @compiler_2ftoken_2espells(ptr %v0, ptr %s65, { i64, ptr } %t694, i64 %t695, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d42, i32 0, i32 1) })
  store i1 %t698, ptr %l398
  br label %bb400
bb399:
  store i1 false, ptr %l395, !tbaa !21
  br label %bb401
bb400:
  %t699 = load i1, ptr %l398, !tbaa !21
  store i1 %t699, ptr %l395, !tbaa !21
  br label %bb401
bb401:
  %t700 = load i1, ptr %l395, !tbaa !21
  br i1 %t700, label %bb402, label %bb403
bb402:
  call void @__olang_scope_close(ptr %s65)
  store i32 11, ptr %rv
  br label %ret
bb403:
  br label %bb404
bb404:
  %t702 = load i64, ptr %l2, !tbaa !24
  %t704 = icmp eq i64 %t702, 4
  br i1 %t704, label %bb405, label %bb406
bb405:
  store %olang.scope zeroinitializer, ptr %s67
  %t706 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t707 = load i64, ptr %l1, !tbaa !24
  %t710 = call i1 @compiler_2ftoken_2espells(ptr %v0, ptr %s67, { i64, ptr } %t706, i64 %t707, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d43, i32 0, i32 1) })
  store i1 %t710, ptr %l404
  br label %bb407
bb406:
  br label %bb419
bb407:
  %t711 = load i1, ptr %l404, !tbaa !21
  br i1 %t711, label %bb408, label %bb409
bb408:
  call void @__olang_scope_close(ptr %s67)
  call void @__olang_scope_close(ptr %s65)
  store i32 33, ptr %rv
  br label %ret
bb409:
  br label %bb410
bb410:
  %t713 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t714 = load i64, ptr %l1, !tbaa !24
  %t717 = call i1 @compiler_2ftoken_2espells(ptr %v0, ptr %s67, { i64, ptr } %t713, i64 %t714, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d44, i32 0, i32 1) })
  store i1 %t717, ptr %l408
  br label %bb411
bb411:
  %t718 = load i1, ptr %l408, !tbaa !21
  br i1 %t718, label %bb412, label %bb413
bb412:
  call void @__olang_scope_close(ptr %s67)
  call void @__olang_scope_close(ptr %s65)
  store i32 41, ptr %rv
  br label %ret
bb413:
  br label %bb414
bb414:
  %t720 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t721 = load i64, ptr %l1, !tbaa !24
  %t724 = call i1 @compiler_2ftoken_2espells(ptr %v0, ptr %s67, { i64, ptr } %t720, i64 %t721, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d45, i32 0, i32 1) })
  store i1 %t724, ptr %l412
  br label %bb415
bb415:
  %t725 = load i1, ptr %l412, !tbaa !21
  br i1 %t725, label %bb416, label %bb417
bb416:
  call void @__olang_scope_close(ptr %s67)
  call void @__olang_scope_close(ptr %s65)
  store i32 6, ptr %rv
  br label %ret
bb417:
  br label %bb418
bb418:
  call void @__olang_scope_close(ptr %s67)
  br label %bb419
bb419:
  %t727 = load i64, ptr %l2, !tbaa !24
  %t729 = icmp eq i64 %t727, 5
  br i1 %t729, label %bb420, label %bb421
bb420:
  %t731 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t732 = load i64, ptr %l1, !tbaa !24
  %t735 = call i1 @compiler_2ftoken_2espells(ptr %v0, ptr %s65, { i64, ptr } %t731, i64 %t732, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d46, i32 0, i32 1) })
  store i1 %t735, ptr %l419
  br label %bb422
bb421:
  store i1 false, ptr %l416, !tbaa !21
  br label %bb423
bb422:
  %t736 = load i1, ptr %l419, !tbaa !21
  store i1 %t736, ptr %l416, !tbaa !21
  br label %bb423
bb423:
  %t737 = load i1, ptr %l416, !tbaa !21
  br i1 %t737, label %bb424, label %bb425
bb424:
  call void @__olang_scope_close(ptr %s65)
  store i32 36, ptr %rv
  br label %ret
bb425:
  br label %bb426
bb426:
  call void @__olang_scope_close(ptr %s65)
  br label %bb512
bb427:
  %t739 = load i8, ptr %l3, !tbaa !22
  %t741 = icmp eq i8 %t739, 107
  br i1 %t741, label %bb428, label %bb429
bb428:
  br label %bb430
bb429:
  br label %bb438
bb430:
  store %olang.scope zeroinitializer, ptr %s72
  %t743 = load i64, ptr %l2, !tbaa !24
  %t745 = icmp eq i64 %t743, 5
  br i1 %t745, label %bb431, label %bb432
bb431:
  %t747 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t748 = load i64, ptr %l1, !tbaa !24
  %t751 = call i1 @compiler_2ftoken_2espells(ptr %v0, ptr %s72, { i64, ptr } %t747, i64 %t748, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d47, i32 0, i32 1) })
  store i1 %t751, ptr %l428
  br label %bb433
bb432:
  store i1 false, ptr %l425, !tbaa !21
  br label %bb434
bb433:
  %t752 = load i1, ptr %l428, !tbaa !21
  store i1 %t752, ptr %l425, !tbaa !21
  br label %bb434
bb434:
  %t753 = load i1, ptr %l425, !tbaa !21
  br i1 %t753, label %bb435, label %bb436
bb435:
  call void @__olang_scope_close(ptr %s72)
  store i32 64, ptr %rv
  br label %ret
bb436:
  br label %bb437
bb437:
  call void @__olang_scope_close(ptr %s72)
  br label %bb512
bb438:
  %t755 = load i8, ptr %l3, !tbaa !22
  %t757 = icmp eq i8 %t755, 112
  br i1 %t757, label %bb439, label %bb440
bb439:
  br label %bb441
bb440:
  br label %bb456
bb441:
  store %olang.scope zeroinitializer, ptr %s74
  %t759 = load i64, ptr %l2, !tbaa !24
  %t761 = icmp eq i64 %t759, 4
  br i1 %t761, label %bb442, label %bb443
bb442:
  %t763 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t764 = load i64, ptr %l1, !tbaa !24
  %t767 = call i1 @compiler_2ftoken_2espells(ptr %v0, ptr %s74, { i64, ptr } %t763, i64 %t764, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d48, i32 0, i32 1) })
  store i1 %t767, ptr %l437
  br label %bb444
bb443:
  store i1 false, ptr %l434, !tbaa !21
  br label %bb445
bb444:
  %t768 = load i1, ptr %l437, !tbaa !21
  store i1 %t768, ptr %l434, !tbaa !21
  br label %bb445
bb445:
  %t769 = load i1, ptr %l434, !tbaa !21
  br i1 %t769, label %bb446, label %bb447
bb446:
  call void @__olang_scope_close(ptr %s74)
  store i32 63, ptr %rv
  br label %ret
bb447:
  br label %bb448
bb448:
  %t771 = load i64, ptr %l2, !tbaa !24
  %t773 = icmp eq i64 %t771, 6
  br i1 %t773, label %bb449, label %bb450
bb449:
  %t775 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t776 = load i64, ptr %l1, !tbaa !24
  %t779 = call i1 @compiler_2ftoken_2espells(ptr %v0, ptr %s74, { i64, ptr } %t775, i64 %t776, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d49, i32 0, i32 1) })
  store i1 %t779, ptr %l444
  br label %bb451
bb450:
  store i1 false, ptr %l441, !tbaa !21
  br label %bb452
bb451:
  %t780 = load i1, ptr %l444, !tbaa !21
  store i1 %t780, ptr %l441, !tbaa !21
  br label %bb452
bb452:
  %t781 = load i1, ptr %l441, !tbaa !21
  br i1 %t781, label %bb453, label %bb454
bb453:
  call void @__olang_scope_close(ptr %s74)
  store i32 55, ptr %rv
  br label %ret
bb454:
  br label %bb455
bb455:
  call void @__olang_scope_close(ptr %s74)
  br label %bb512
bb456:
  %t783 = load i8, ptr %l3, !tbaa !22
  %t785 = icmp eq i8 %t783, 117
  br i1 %t785, label %bb457, label %bb458
bb457:
  br label %bb459
bb458:
  br label %bb474
bb459:
  store %olang.scope zeroinitializer, ptr %s77
  %t787 = load i64, ptr %l2, !tbaa !24
  %t789 = icmp eq i64 %t787, 6
  br i1 %t789, label %bb460, label %bb461
bb460:
  %t791 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t792 = load i64, ptr %l1, !tbaa !24
  %t795 = call i1 @compiler_2ftoken_2espells(ptr %v0, ptr %s77, { i64, ptr } %t791, i64 %t792, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d50, i32 0, i32 1) })
  store i1 %t795, ptr %l453
  br label %bb462
bb461:
  store i1 false, ptr %l450, !tbaa !21
  br label %bb463
bb462:
  %t796 = load i1, ptr %l453, !tbaa !21
  store i1 %t796, ptr %l450, !tbaa !21
  br label %bb463
bb463:
  %t797 = load i1, ptr %l450, !tbaa !21
  br i1 %t797, label %bb464, label %bb465
bb464:
  call void @__olang_scope_close(ptr %s77)
  store i32 53, ptr %rv
  br label %ret
bb465:
  br label %bb466
bb466:
  %t799 = load i64, ptr %l2, !tbaa !24
  %t801 = icmp eq i64 %t799, 11
  br i1 %t801, label %bb467, label %bb468
bb467:
  %t803 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t804 = load i64, ptr %l1, !tbaa !24
  %t807 = call i1 @compiler_2ftoken_2espells(ptr %v0, ptr %s77, { i64, ptr } %t803, i64 %t804, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d51, i32 0, i32 1) })
  store i1 %t807, ptr %l460
  br label %bb469
bb468:
  store i1 false, ptr %l457, !tbaa !21
  br label %bb470
bb469:
  %t808 = load i1, ptr %l460, !tbaa !21
  store i1 %t808, ptr %l457, !tbaa !21
  br label %bb470
bb470:
  %t809 = load i1, ptr %l457, !tbaa !21
  br i1 %t809, label %bb471, label %bb472
bb471:
  call void @__olang_scope_close(ptr %s77)
  store i32 21, ptr %rv
  br label %ret
bb472:
  br label %bb473
bb473:
  call void @__olang_scope_close(ptr %s77)
  br label %bb512
bb474:
  %t811 = load i8, ptr %l3, !tbaa !22
  %t813 = icmp eq i8 %t811, 120
  br i1 %t813, label %bb475, label %bb476
bb475:
  br label %bb477
bb476:
  br label %bb485
bb477:
  store %olang.scope zeroinitializer, ptr %s80
  %t815 = load i64, ptr %l2, !tbaa !24
  %t817 = icmp eq i64 %t815, 3
  br i1 %t817, label %bb478, label %bb479
bb478:
  %t819 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t820 = load i64, ptr %l1, !tbaa !24
  %t823 = call i1 @compiler_2ftoken_2espells(ptr %v0, ptr %s80, { i64, ptr } %t819, i64 %t820, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d52, i32 0, i32 1) })
  store i1 %t823, ptr %l469
  br label %bb480
bb479:
  store i1 false, ptr %l466, !tbaa !21
  br label %bb481
bb480:
  %t824 = load i1, ptr %l469, !tbaa !21
  store i1 %t824, ptr %l466, !tbaa !21
  br label %bb481
bb481:
  %t825 = load i1, ptr %l466, !tbaa !21
  br i1 %t825, label %bb482, label %bb483
bb482:
  call void @__olang_scope_close(ptr %s80)
  store i32 47, ptr %rv
  br label %ret
bb483:
  br label %bb484
bb484:
  call void @__olang_scope_close(ptr %s80)
  br label %bb512
bb485:
  %t827 = load i8, ptr %l3, !tbaa !22
  %t829 = icmp eq i8 %t827, 119
  br i1 %t829, label %bb486, label %bb487
bb486:
  br label %bb488
bb487:
  br label %bb496
bb488:
  store %olang.scope zeroinitializer, ptr %s82
  %t831 = load i64, ptr %l2, !tbaa !24
  %t833 = icmp eq i64 %t831, 4
  br i1 %t833, label %bb489, label %bb490
bb489:
  %t835 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t836 = load i64, ptr %l1, !tbaa !24
  %t839 = call i1 @compiler_2ftoken_2espells(ptr %v0, ptr %s82, { i64, ptr } %t835, i64 %t836, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d53, i32 0, i32 1) })
  store i1 %t839, ptr %l478
  br label %bb491
bb490:
  store i1 false, ptr %l475, !tbaa !21
  br label %bb492
bb491:
  %t840 = load i1, ptr %l478, !tbaa !21
  store i1 %t840, ptr %l475, !tbaa !21
  br label %bb492
bb492:
  %t841 = load i1, ptr %l475, !tbaa !21
  br i1 %t841, label %bb493, label %bb494
bb493:
  call void @__olang_scope_close(ptr %s82)
  store i32 67, ptr %rv
  br label %ret
bb494:
  br label %bb495
bb495:
  call void @__olang_scope_close(ptr %s82)
  br label %bb512
bb496:
  %t843 = load i8, ptr %l3, !tbaa !22
  %t845 = icmp eq i8 %t843, 121
  br i1 %t845, label %bb497, label %bb498
bb497:
  br label %bb499
bb498:
  br label %bb507
bb499:
  store %olang.scope zeroinitializer, ptr %s84
  %t847 = load i64, ptr %l2, !tbaa !24
  %t849 = icmp eq i64 %t847, 5
  br i1 %t849, label %bb500, label %bb501
bb500:
  %t851 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t852 = load i64, ptr %l1, !tbaa !24
  %t855 = call i1 @compiler_2ftoken_2espells(ptr %v0, ptr %s84, { i64, ptr } %t851, i64 %t852, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d54, i32 0, i32 1) })
  store i1 %t855, ptr %l487
  br label %bb502
bb501:
  store i1 false, ptr %l484, !tbaa !21
  br label %bb503
bb502:
  %t856 = load i1, ptr %l487, !tbaa !21
  store i1 %t856, ptr %l484, !tbaa !21
  br label %bb503
bb503:
  %t857 = load i1, ptr %l484, !tbaa !21
  br i1 %t857, label %bb504, label %bb505
bb504:
  call void @__olang_scope_close(ptr %s84)
  store i32 49, ptr %rv
  br label %ret
bb505:
  br label %bb506
bb506:
  call void @__olang_scope_close(ptr %s84)
  br label %bb512
bb507:
  br i1 true, label %bb508, label %bb509
bb508:
  br label %bb510
bb509:
  br label %bb511
bb510:
  br label %bb512
bb511:
  call void @__olang_check_failed(ptr @olang_loc_a8f8505ea607fe55_8ebbaef23bfb5239)
  unreachable
bb512:
  store i32 1, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eDescribe(ptr %v0, i32 %a0) #0 {
entry:
  %l0 = alloca i32
  %l1 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l32 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l37 = alloca i64
  %l38 = alloca { i64, ptr }
  %s9 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store i32 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t3 = trunc i64 0 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  store { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d55, i32 0, i32 1) }, ptr %l4, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t6, ptr %l1, !tbaa !27
  br label %bb38
bb4:
  %t8 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t10 = trunc i64 1 to i32
  %t11 = icmp eq i32 %t8, %t10
  br i1 %t11, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d56, i32 0, i32 1) }, ptr %l8, !tbaa !27
  %t13 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t13, ptr %l1, !tbaa !27
  br label %bb38
bb8:
  %t15 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t17 = trunc i64 2 to i32
  %t18 = icmp eq i32 %t15, %t17
  br i1 %t18, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  store { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d57, i32 0, i32 1) }, ptr %l12, !tbaa !27
  %t20 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t20, ptr %l1, !tbaa !27
  br label %bb38
bb12:
  %t22 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t24 = trunc i64 3 to i32
  %t25 = icmp eq i32 %t22, %t24
  br i1 %t25, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d58, i32 0, i32 1) }, ptr %l16, !tbaa !27
  %t27 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t27, ptr %l1, !tbaa !27
  br label %bb38
bb16:
  %t29 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t31 = trunc i64 4 to i32
  %t32 = icmp eq i32 %t29, %t31
  br i1 %t32, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d59, i32 0, i32 1) }, ptr %l20, !tbaa !27
  %t34 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t34, ptr %l1, !tbaa !27
  br label %bb38
bb20:
  %t36 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t38 = trunc i64 5 to i32
  %t39 = icmp eq i32 %t36, %t38
  br i1 %t39, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  store { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d60, i32 0, i32 1) }, ptr %l24, !tbaa !27
  %t41 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t41, ptr %l1, !tbaa !27
  br label %bb38
bb24:
  %t43 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t45 = trunc i64 6 to i32
  %t46 = icmp eq i32 %t43, %t45
  br i1 %t46, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  store { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d61, i32 0, i32 1) }, ptr %l28, !tbaa !27
  %t48 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t48, ptr %l1, !tbaa !27
  br label %bb38
bb28:
  %t50 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t52 = trunc i64 8 to i32
  %t53 = icmp eq i32 %t50, %t52
  br i1 %t53, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  store { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d62, i32 0, i32 1) }, ptr %l32, !tbaa !27
  %t55 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t55, ptr %l1, !tbaa !27
  br label %bb38
bb32:
  br i1 true, label %bb33, label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb37
bb35:
  store %olang.scope zeroinitializer, ptr %s9
  %t57 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t59 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %s9, i32 %t57)
  store { i64, ptr } %t59, ptr %l35
  br label %bb36
bb36:
  %t60 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d63, i32 0, i32 1) }, 1
  %t61 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d63, i32 0, i32 1) }, 0
  %t62 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t63 = extractvalue { i64, ptr } %t62, 1
  %t64 = extractvalue { i64, ptr } %t62, 0
  %t65 = add i64 %t61, %t64
  %t66 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d63, i32 0, i32 1) }, 1
  %t67 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d63, i32 0, i32 1) }, 0
  %t68 = add i64 %t65, %t67
  %t69 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t68)
  call void @olang_textcopy(ptr %t69, ptr %t60, i64 %t61)
  %t70 = getelementptr i8, ptr %t69, i64 %t61
  call void @olang_textcopy(ptr %t70, ptr %t63, i64 %t64)
  %t71 = getelementptr i8, ptr %t70, i64 %t64
  call void @olang_textcopy(ptr %t71, ptr %t66, i64 %t67)
  %t72 = insertvalue { i64, ptr } undef, i64 %t68, 0
  %t73 = insertvalue { i64, ptr } %t72, ptr %t69, 1
  store { i64, ptr } %t73, ptr %l1, !tbaa !27
  call void @__olang_scope_close(ptr %s9)
  br label %bb38
bb37:
  call void @__olang_check_failed(ptr @olang_loc_68bd4249b8d73c4b_5d7571019b0b81ef)
  unreachable
bb38:
  %t75 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t76 = extractvalue { i64, ptr } %t75, 0
  store i64 %t76, ptr %l37, !tbaa !24
  %t77 = load i64, ptr %l37, !tbaa !24
  %t78 = mul i64 %t77, 1
  %t79 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t78)
  %t80 = insertvalue { i64, ptr } undef, i64 %t77, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t79, 1
  store { i64, ptr } %t81, ptr %l38, !tbaa !27
  %t82 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !27
  %t84 = getelementptr { i64, ptr }, ptr %l1, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !27
  %t86 = load i64, ptr %l37, !tbaa !24
  %t87 = mul i64 %t86, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t83, ptr %t85, i64 %t87, i1 false)
  %t88 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t88, ptr %l1, !tbaa !27
  %t89 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t89, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eEndsStatement(i32 %a0) #0 {
entry:
  %l0 = alloca i32
  %l1 = alloca i1
  %rv = alloca i1
  store i32 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t3 = trunc i64 1 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb15
bb2:
  %t6 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t8 = trunc i64 2 to i32
  %t9 = icmp eq i32 %t6, %t8
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb15
bb4:
  %t11 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t13 = trunc i64 3 to i32
  %t14 = icmp eq i32 %t11, %t13
  br i1 %t14, label %bb5, label %bb6
bb5:
  br label %bb15
bb6:
  %t16 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t18 = trunc i64 4 to i32
  %t19 = icmp eq i32 %t16, %t18
  br i1 %t19, label %bb7, label %bb8
bb7:
  br label %bb15
bb8:
  %t21 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t23 = trunc i64 5 to i32
  %t24 = icmp eq i32 %t21, %t23
  br i1 %t24, label %bb9, label %bb10
bb9:
  br label %bb15
bb10:
  %t26 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t28 = trunc i64 6 to i32
  %t29 = icmp eq i32 %t26, %t28
  br i1 %t29, label %bb11, label %bb12
bb11:
  br label %bb15
bb12:
  %t31 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t33 = trunc i64 7 to i32
  %t34 = icmp eq i32 %t31, %t33
  br i1 %t34, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store i1 true, ptr %l1, !tbaa !21
  br label %bb65
bb16:
  %t36 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t38 = trunc i64 92 to i32
  %t39 = icmp eq i32 %t36, %t38
  br i1 %t39, label %bb17, label %bb18
bb17:
  br label %bb27
bb18:
  %t41 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t43 = trunc i64 93 to i32
  %t44 = icmp eq i32 %t41, %t43
  br i1 %t44, label %bb19, label %bb20
bb19:
  br label %bb27
bb20:
  %t46 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t48 = trunc i64 96 to i32
  %t49 = icmp eq i32 %t46, %t48
  br i1 %t49, label %bb21, label %bb22
bb21:
  br label %bb27
bb22:
  %t51 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t53 = trunc i64 109 to i32
  %t54 = icmp eq i32 %t51, %t53
  br i1 %t54, label %bb23, label %bb24
bb23:
  br label %bb27
bb24:
  %t56 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t58 = trunc i64 111 to i32
  %t59 = icmp eq i32 %t56, %t58
  br i1 %t59, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  store i1 true, ptr %l1, !tbaa !21
  br label %bb65
bb28:
  %t61 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t63 = trunc i64 13 to i32
  %t64 = icmp eq i32 %t61, %t63
  br i1 %t64, label %bb29, label %bb30
bb29:
  br label %bb41
bb30:
  %t66 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t68 = trunc i64 38 to i32
  %t69 = icmp eq i32 %t66, %t68
  br i1 %t69, label %bb31, label %bb32
bb31:
  br label %bb41
bb32:
  %t71 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t73 = trunc i64 23 to i32
  %t74 = icmp eq i32 %t71, %t73
  br i1 %t74, label %bb33, label %bb34
bb33:
  br label %bb41
bb34:
  %t76 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t78 = trunc i64 19 to i32
  %t79 = icmp eq i32 %t76, %t78
  br i1 %t79, label %bb35, label %bb36
bb35:
  br label %bb41
bb36:
  %t81 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t83 = trunc i64 20 to i32
  %t84 = icmp eq i32 %t81, %t83
  br i1 %t84, label %bb37, label %bb38
bb37:
  br label %bb41
bb38:
  %t86 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t88 = trunc i64 21 to i32
  %t89 = icmp eq i32 %t86, %t88
  br i1 %t89, label %bb39, label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb42
bb41:
  store i1 true, ptr %l1, !tbaa !21
  br label %bb65
bb42:
  %t91 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t93 = trunc i64 57 to i32
  %t94 = icmp eq i32 %t91, %t93
  br i1 %t94, label %bb43, label %bb44
bb43:
  br label %bb59
bb44:
  %t96 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t98 = trunc i64 58 to i32
  %t99 = icmp eq i32 %t96, %t98
  br i1 %t99, label %bb45, label %bb46
bb45:
  br label %bb59
bb46:
  %t101 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t103 = trunc i64 59 to i32
  %t104 = icmp eq i32 %t101, %t103
  br i1 %t104, label %bb47, label %bb48
bb47:
  br label %bb59
bb48:
  %t106 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t108 = trunc i64 60 to i32
  %t109 = icmp eq i32 %t106, %t108
  br i1 %t109, label %bb49, label %bb50
bb49:
  br label %bb59
bb50:
  %t111 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t113 = trunc i64 61 to i32
  %t114 = icmp eq i32 %t111, %t113
  br i1 %t114, label %bb51, label %bb52
bb51:
  br label %bb59
bb52:
  %t116 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t118 = trunc i64 62 to i32
  %t119 = icmp eq i32 %t116, %t118
  br i1 %t119, label %bb53, label %bb54
bb53:
  br label %bb59
bb54:
  %t121 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t123 = trunc i64 63 to i32
  %t124 = icmp eq i32 %t121, %t123
  br i1 %t124, label %bb55, label %bb56
bb55:
  br label %bb59
bb56:
  %t126 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t128 = trunc i64 66 to i32
  %t129 = icmp eq i32 %t126, %t128
  br i1 %t129, label %bb57, label %bb58
bb57:
  br label %bb59
bb58:
  br label %bb60
bb59:
  store i1 true, ptr %l1, !tbaa !21
  br label %bb65
bb60:
  br i1 true, label %bb61, label %bb62
bb61:
  br label %bb63
bb62:
  br label %bb64
bb63:
  store i1 false, ptr %l1, !tbaa !21
  br label %bb65
bb64:
  call void @__olang_check_failed(ptr @olang_loc_4831fd819d5e12f9_2de476e8196a26d)
  unreachable
bb65:
  %t131 = load i1, ptr %l1, !tbaa !21
  store i1 %t131, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %v0, i32 %a0) #0 {
entry:
  %l0 = alloca i32
  %l1 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store i32 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t3 = trunc i64 9 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d64, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb4:
  %t6 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t8 = trunc i64 10 to i32
  %t9 = icmp eq i32 %t6, %t8
  br i1 %t9, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d65, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb8:
  %t11 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t13 = trunc i64 11 to i32
  %t14 = icmp eq i32 %t11, %t13
  br i1 %t14, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d66, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb12:
  %t16 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t18 = trunc i64 12 to i32
  %t19 = icmp eq i32 %t16, %t18
  br i1 %t19, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d67, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb16:
  %t21 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t23 = trunc i64 13 to i32
  %t24 = icmp eq i32 %t21, %t23
  br i1 %t24, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d68, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb20:
  %t26 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t28 = trunc i64 14 to i32
  %t29 = icmp eq i32 %t26, %t28
  br i1 %t29, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d69, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb24:
  %t31 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t33 = trunc i64 15 to i32
  %t34 = icmp eq i32 %t31, %t33
  br i1 %t34, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d70, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb28:
  %t36 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t38 = trunc i64 16 to i32
  %t39 = icmp eq i32 %t36, %t38
  br i1 %t39, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d71, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb32:
  %t41 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t43 = trunc i64 17 to i32
  %t44 = icmp eq i32 %t41, %t43
  br i1 %t44, label %bb33, label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb36
bb35:
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d72, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb36:
  %t46 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t48 = trunc i64 18 to i32
  %t49 = icmp eq i32 %t46, %t48
  br i1 %t49, label %bb37, label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb40
bb39:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d73, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb40:
  %t51 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t53 = trunc i64 19 to i32
  %t54 = icmp eq i32 %t51, %t53
  br i1 %t54, label %bb41, label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb44
bb43:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d74, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb44:
  %t56 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t58 = trunc i64 20 to i32
  %t59 = icmp eq i32 %t56, %t58
  br i1 %t59, label %bb45, label %bb46
bb45:
  br label %bb47
bb46:
  br label %bb48
bb47:
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d75, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb48:
  %t61 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t63 = trunc i64 21 to i32
  %t64 = icmp eq i32 %t61, %t63
  br i1 %t64, label %bb49, label %bb50
bb49:
  br label %bb51
bb50:
  br label %bb52
bb51:
  store { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d76, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb52:
  %t66 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t68 = trunc i64 22 to i32
  %t69 = icmp eq i32 %t66, %t68
  br i1 %t69, label %bb53, label %bb54
bb53:
  br label %bb55
bb54:
  br label %bb56
bb55:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d77, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb56:
  %t71 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t73 = trunc i64 23 to i32
  %t74 = icmp eq i32 %t71, %t73
  br i1 %t74, label %bb57, label %bb58
bb57:
  br label %bb59
bb58:
  br label %bb60
bb59:
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d78, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb60:
  %t76 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t78 = trunc i64 24 to i32
  %t79 = icmp eq i32 %t76, %t78
  br i1 %t79, label %bb61, label %bb62
bb61:
  br label %bb63
bb62:
  br label %bb64
bb63:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d79, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb64:
  %t81 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t83 = trunc i64 25 to i32
  %t84 = icmp eq i32 %t81, %t83
  br i1 %t84, label %bb65, label %bb66
bb65:
  br label %bb67
bb66:
  br label %bb68
bb67:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d80, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb68:
  %t86 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t88 = trunc i64 26 to i32
  %t89 = icmp eq i32 %t86, %t88
  br i1 %t89, label %bb69, label %bb70
bb69:
  br label %bb71
bb70:
  br label %bb72
bb71:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d81, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb72:
  %t91 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t93 = trunc i64 27 to i32
  %t94 = icmp eq i32 %t91, %t93
  br i1 %t94, label %bb73, label %bb74
bb73:
  br label %bb75
bb74:
  br label %bb76
bb75:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d82, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb76:
  %t96 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t98 = trunc i64 28 to i32
  %t99 = icmp eq i32 %t96, %t98
  br i1 %t99, label %bb77, label %bb78
bb77:
  br label %bb79
bb78:
  br label %bb80
bb79:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d83, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb80:
  %t101 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t103 = trunc i64 29 to i32
  %t104 = icmp eq i32 %t101, %t103
  br i1 %t104, label %bb81, label %bb82
bb81:
  br label %bb83
bb82:
  br label %bb84
bb83:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d84, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb84:
  %t106 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t108 = trunc i64 30 to i32
  %t109 = icmp eq i32 %t106, %t108
  br i1 %t109, label %bb85, label %bb86
bb85:
  br label %bb87
bb86:
  br label %bb88
bb87:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d85, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb88:
  %t111 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t113 = trunc i64 31 to i32
  %t114 = icmp eq i32 %t111, %t113
  br i1 %t114, label %bb89, label %bb90
bb89:
  br label %bb91
bb90:
  br label %bb92
bb91:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d86, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb92:
  %t116 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t118 = trunc i64 32 to i32
  %t119 = icmp eq i32 %t116, %t118
  br i1 %t119, label %bb93, label %bb94
bb93:
  br label %bb95
bb94:
  br label %bb96
bb95:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d87, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb96:
  %t121 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t123 = trunc i64 33 to i32
  %t124 = icmp eq i32 %t121, %t123
  br i1 %t124, label %bb97, label %bb98
bb97:
  br label %bb99
bb98:
  br label %bb100
bb99:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d88, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb100:
  %t126 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t128 = trunc i64 34 to i32
  %t129 = icmp eq i32 %t126, %t128
  br i1 %t129, label %bb101, label %bb102
bb101:
  br label %bb103
bb102:
  br label %bb104
bb103:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d89, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb104:
  %t131 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t133 = trunc i64 35 to i32
  %t134 = icmp eq i32 %t131, %t133
  br i1 %t134, label %bb105, label %bb106
bb105:
  br label %bb107
bb106:
  br label %bb108
bb107:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d90, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb108:
  %t136 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t138 = trunc i64 36 to i32
  %t139 = icmp eq i32 %t136, %t138
  br i1 %t139, label %bb109, label %bb110
bb109:
  br label %bb111
bb110:
  br label %bb112
bb111:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d91, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb112:
  %t141 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t143 = trunc i64 37 to i32
  %t144 = icmp eq i32 %t141, %t143
  br i1 %t144, label %bb113, label %bb114
bb113:
  br label %bb115
bb114:
  br label %bb116
bb115:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d92, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb116:
  %t146 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t148 = trunc i64 38 to i32
  %t149 = icmp eq i32 %t146, %t148
  br i1 %t149, label %bb117, label %bb118
bb117:
  br label %bb119
bb118:
  br label %bb120
bb119:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d93, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb120:
  %t151 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t153 = trunc i64 39 to i32
  %t154 = icmp eq i32 %t151, %t153
  br i1 %t154, label %bb121, label %bb122
bb121:
  br label %bb123
bb122:
  br label %bb124
bb123:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d94, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb124:
  %t156 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t158 = trunc i64 40 to i32
  %t159 = icmp eq i32 %t156, %t158
  br i1 %t159, label %bb125, label %bb126
bb125:
  br label %bb127
bb126:
  br label %bb128
bb127:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d95, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb128:
  %t161 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t163 = trunc i64 41 to i32
  %t164 = icmp eq i32 %t161, %t163
  br i1 %t164, label %bb129, label %bb130
bb129:
  br label %bb131
bb130:
  br label %bb132
bb131:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d96, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb132:
  %t166 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t168 = trunc i64 42 to i32
  %t169 = icmp eq i32 %t166, %t168
  br i1 %t169, label %bb133, label %bb134
bb133:
  br label %bb135
bb134:
  br label %bb136
bb135:
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d97, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb136:
  %t171 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t173 = trunc i64 43 to i32
  %t174 = icmp eq i32 %t171, %t173
  br i1 %t174, label %bb137, label %bb138
bb137:
  br label %bb139
bb138:
  br label %bb140
bb139:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d98, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb140:
  %t176 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t178 = trunc i64 44 to i32
  %t179 = icmp eq i32 %t176, %t178
  br i1 %t179, label %bb141, label %bb142
bb141:
  br label %bb143
bb142:
  br label %bb144
bb143:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d99, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb144:
  %t181 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t183 = trunc i64 45 to i32
  %t184 = icmp eq i32 %t181, %t183
  br i1 %t184, label %bb145, label %bb146
bb145:
  br label %bb147
bb146:
  br label %bb148
bb147:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d100, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb148:
  %t186 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t188 = trunc i64 46 to i32
  %t189 = icmp eq i32 %t186, %t188
  br i1 %t189, label %bb149, label %bb150
bb149:
  br label %bb151
bb150:
  br label %bb152
bb151:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d101, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb152:
  %t191 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t193 = trunc i64 47 to i32
  %t194 = icmp eq i32 %t191, %t193
  br i1 %t194, label %bb153, label %bb154
bb153:
  br label %bb155
bb154:
  br label %bb156
bb155:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d102, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb156:
  %t196 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t198 = trunc i64 48 to i32
  %t199 = icmp eq i32 %t196, %t198
  br i1 %t199, label %bb157, label %bb158
bb157:
  br label %bb159
bb158:
  br label %bb160
bb159:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d103, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb160:
  %t201 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t203 = trunc i64 49 to i32
  %t204 = icmp eq i32 %t201, %t203
  br i1 %t204, label %bb161, label %bb162
bb161:
  br label %bb163
bb162:
  br label %bb164
bb163:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d104, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb164:
  %t206 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t208 = trunc i64 50 to i32
  %t209 = icmp eq i32 %t206, %t208
  br i1 %t209, label %bb165, label %bb166
bb165:
  br label %bb167
bb166:
  br label %bb168
bb167:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d105, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb168:
  %t211 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t213 = trunc i64 51 to i32
  %t214 = icmp eq i32 %t211, %t213
  br i1 %t214, label %bb169, label %bb170
bb169:
  br label %bb171
bb170:
  br label %bb172
bb171:
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d106, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb172:
  %t216 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t218 = trunc i64 52 to i32
  %t219 = icmp eq i32 %t216, %t218
  br i1 %t219, label %bb173, label %bb174
bb173:
  br label %bb175
bb174:
  br label %bb176
bb175:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d107, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb176:
  %t221 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t223 = trunc i64 53 to i32
  %t224 = icmp eq i32 %t221, %t223
  br i1 %t224, label %bb177, label %bb178
bb177:
  br label %bb179
bb178:
  br label %bb180
bb179:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d108, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb180:
  %t226 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t228 = trunc i64 54 to i32
  %t229 = icmp eq i32 %t226, %t228
  br i1 %t229, label %bb181, label %bb182
bb181:
  br label %bb183
bb182:
  br label %bb184
bb183:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d109, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb184:
  %t231 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t233 = trunc i64 55 to i32
  %t234 = icmp eq i32 %t231, %t233
  br i1 %t234, label %bb185, label %bb186
bb185:
  br label %bb187
bb186:
  br label %bb188
bb187:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d110, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb188:
  %t236 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t238 = trunc i64 56 to i32
  %t239 = icmp eq i32 %t236, %t238
  br i1 %t239, label %bb189, label %bb190
bb189:
  br label %bb191
bb190:
  br label %bb192
bb191:
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d111, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb192:
  %t241 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t243 = trunc i64 57 to i32
  %t244 = icmp eq i32 %t241, %t243
  br i1 %t244, label %bb193, label %bb194
bb193:
  br label %bb195
bb194:
  br label %bb196
bb195:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d112, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb196:
  %t246 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t248 = trunc i64 58 to i32
  %t249 = icmp eq i32 %t246, %t248
  br i1 %t249, label %bb197, label %bb198
bb197:
  br label %bb199
bb198:
  br label %bb200
bb199:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d113, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb200:
  %t251 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t253 = trunc i64 59 to i32
  %t254 = icmp eq i32 %t251, %t253
  br i1 %t254, label %bb201, label %bb202
bb201:
  br label %bb203
bb202:
  br label %bb204
bb203:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d114, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb204:
  %t256 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t258 = trunc i64 60 to i32
  %t259 = icmp eq i32 %t256, %t258
  br i1 %t259, label %bb205, label %bb206
bb205:
  br label %bb207
bb206:
  br label %bb208
bb207:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d115, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb208:
  %t261 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t263 = trunc i64 61 to i32
  %t264 = icmp eq i32 %t261, %t263
  br i1 %t264, label %bb209, label %bb210
bb209:
  br label %bb211
bb210:
  br label %bb212
bb211:
  store { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d116, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb212:
  %t266 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t268 = trunc i64 62 to i32
  %t269 = icmp eq i32 %t266, %t268
  br i1 %t269, label %bb213, label %bb214
bb213:
  br label %bb215
bb214:
  br label %bb216
bb215:
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d117, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb216:
  %t271 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t273 = trunc i64 63 to i32
  %t274 = icmp eq i32 %t271, %t273
  br i1 %t274, label %bb217, label %bb218
bb217:
  br label %bb219
bb218:
  br label %bb220
bb219:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d118, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb220:
  %t276 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t278 = trunc i64 64 to i32
  %t279 = icmp eq i32 %t276, %t278
  br i1 %t279, label %bb221, label %bb222
bb221:
  br label %bb223
bb222:
  br label %bb224
bb223:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d119, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb224:
  %t281 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t283 = trunc i64 65 to i32
  %t284 = icmp eq i32 %t281, %t283
  br i1 %t284, label %bb225, label %bb226
bb225:
  br label %bb227
bb226:
  br label %bb228
bb227:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d120, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb228:
  %t286 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t288 = trunc i64 66 to i32
  %t289 = icmp eq i32 %t286, %t288
  br i1 %t289, label %bb229, label %bb230
bb229:
  br label %bb231
bb230:
  br label %bb232
bb231:
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d121, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb232:
  %t291 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t293 = trunc i64 67 to i32
  %t294 = icmp eq i32 %t291, %t293
  br i1 %t294, label %bb233, label %bb234
bb233:
  br label %bb235
bb234:
  br label %bb236
bb235:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d122, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb236:
  %t296 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t298 = trunc i64 7 to i32
  %t299 = icmp eq i32 %t296, %t298
  br i1 %t299, label %bb237, label %bb238
bb237:
  br label %bb239
bb238:
  br label %bb240
bb239:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d123, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb240:
  %t301 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t303 = trunc i64 68 to i32
  %t304 = icmp eq i32 %t301, %t303
  br i1 %t304, label %bb241, label %bb242
bb241:
  br label %bb243
bb242:
  br label %bb244
bb243:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d124, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb244:
  %t306 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t308 = trunc i64 69 to i32
  %t309 = icmp eq i32 %t306, %t308
  br i1 %t309, label %bb245, label %bb246
bb245:
  br label %bb247
bb246:
  br label %bb248
bb247:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d125, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb248:
  %t311 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t313 = trunc i64 70 to i32
  %t314 = icmp eq i32 %t311, %t313
  br i1 %t314, label %bb249, label %bb250
bb249:
  br label %bb251
bb250:
  br label %bb252
bb251:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d126, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb252:
  %t316 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t318 = trunc i64 71 to i32
  %t319 = icmp eq i32 %t316, %t318
  br i1 %t319, label %bb253, label %bb254
bb253:
  br label %bb255
bb254:
  br label %bb256
bb255:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d127, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb256:
  %t321 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t323 = trunc i64 72 to i32
  %t324 = icmp eq i32 %t321, %t323
  br i1 %t324, label %bb257, label %bb258
bb257:
  br label %bb259
bb258:
  br label %bb260
bb259:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d128, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb260:
  %t326 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t328 = trunc i64 73 to i32
  %t329 = icmp eq i32 %t326, %t328
  br i1 %t329, label %bb261, label %bb262
bb261:
  br label %bb263
bb262:
  br label %bb264
bb263:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d129, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb264:
  %t331 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t333 = trunc i64 74 to i32
  %t334 = icmp eq i32 %t331, %t333
  br i1 %t334, label %bb265, label %bb266
bb265:
  br label %bb267
bb266:
  br label %bb268
bb267:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d130, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb268:
  %t336 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t338 = trunc i64 75 to i32
  %t339 = icmp eq i32 %t336, %t338
  br i1 %t339, label %bb269, label %bb270
bb269:
  br label %bb271
bb270:
  br label %bb272
bb271:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d131, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb272:
  %t341 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t343 = trunc i64 76 to i32
  %t344 = icmp eq i32 %t341, %t343
  br i1 %t344, label %bb273, label %bb274
bb273:
  br label %bb275
bb274:
  br label %bb276
bb275:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d132, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb276:
  %t346 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t348 = trunc i64 77 to i32
  %t349 = icmp eq i32 %t346, %t348
  br i1 %t349, label %bb277, label %bb278
bb277:
  br label %bb279
bb278:
  br label %bb280
bb279:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d133, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb280:
  %t351 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t353 = trunc i64 78 to i32
  %t354 = icmp eq i32 %t351, %t353
  br i1 %t354, label %bb281, label %bb282
bb281:
  br label %bb283
bb282:
  br label %bb284
bb283:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d134, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb284:
  %t356 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t358 = trunc i64 79 to i32
  %t359 = icmp eq i32 %t356, %t358
  br i1 %t359, label %bb285, label %bb286
bb285:
  br label %bb287
bb286:
  br label %bb288
bb287:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d135, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb288:
  %t361 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t363 = trunc i64 80 to i32
  %t364 = icmp eq i32 %t361, %t363
  br i1 %t364, label %bb289, label %bb290
bb289:
  br label %bb291
bb290:
  br label %bb292
bb291:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d136, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb292:
  %t366 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t368 = trunc i64 81 to i32
  %t369 = icmp eq i32 %t366, %t368
  br i1 %t369, label %bb293, label %bb294
bb293:
  br label %bb295
bb294:
  br label %bb296
bb295:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d137, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb296:
  %t371 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t373 = trunc i64 82 to i32
  %t374 = icmp eq i32 %t371, %t373
  br i1 %t374, label %bb297, label %bb298
bb297:
  br label %bb299
bb298:
  br label %bb300
bb299:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d138, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb300:
  %t376 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t378 = trunc i64 83 to i32
  %t379 = icmp eq i32 %t376, %t378
  br i1 %t379, label %bb301, label %bb302
bb301:
  br label %bb303
bb302:
  br label %bb304
bb303:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d139, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb304:
  %t381 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t383 = trunc i64 84 to i32
  %t384 = icmp eq i32 %t381, %t383
  br i1 %t384, label %bb305, label %bb306
bb305:
  br label %bb307
bb306:
  br label %bb308
bb307:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d140, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb308:
  %t386 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t388 = trunc i64 85 to i32
  %t389 = icmp eq i32 %t386, %t388
  br i1 %t389, label %bb309, label %bb310
bb309:
  br label %bb311
bb310:
  br label %bb312
bb311:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d141, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb312:
  %t391 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t393 = trunc i64 86 to i32
  %t394 = icmp eq i32 %t391, %t393
  br i1 %t394, label %bb313, label %bb314
bb313:
  br label %bb315
bb314:
  br label %bb316
bb315:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d142, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb316:
  %t396 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t398 = trunc i64 87 to i32
  %t399 = icmp eq i32 %t396, %t398
  br i1 %t399, label %bb317, label %bb318
bb317:
  br label %bb319
bb318:
  br label %bb320
bb319:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d143, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb320:
  %t401 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t403 = trunc i64 88 to i32
  %t404 = icmp eq i32 %t401, %t403
  br i1 %t404, label %bb321, label %bb322
bb321:
  br label %bb323
bb322:
  br label %bb324
bb323:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d144, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb324:
  %t406 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t408 = trunc i64 89 to i32
  %t409 = icmp eq i32 %t406, %t408
  br i1 %t409, label %bb325, label %bb326
bb325:
  br label %bb327
bb326:
  br label %bb328
bb327:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d145, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb328:
  %t411 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t413 = trunc i64 90 to i32
  %t414 = icmp eq i32 %t411, %t413
  br i1 %t414, label %bb329, label %bb330
bb329:
  br label %bb331
bb330:
  br label %bb332
bb331:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d146, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb332:
  %t416 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t418 = trunc i64 91 to i32
  %t419 = icmp eq i32 %t416, %t418
  br i1 %t419, label %bb333, label %bb334
bb333:
  br label %bb335
bb334:
  br label %bb336
bb335:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d147, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb336:
  %t421 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t423 = trunc i64 92 to i32
  %t424 = icmp eq i32 %t421, %t423
  br i1 %t424, label %bb337, label %bb338
bb337:
  br label %bb339
bb338:
  br label %bb340
bb339:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d148, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb340:
  %t426 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t428 = trunc i64 93 to i32
  %t429 = icmp eq i32 %t426, %t428
  br i1 %t429, label %bb341, label %bb342
bb341:
  br label %bb343
bb342:
  br label %bb344
bb343:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d149, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb344:
  %t431 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t433 = trunc i64 94 to i32
  %t434 = icmp eq i32 %t431, %t433
  br i1 %t434, label %bb345, label %bb346
bb345:
  br label %bb347
bb346:
  br label %bb348
bb347:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d150, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb348:
  %t436 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t438 = trunc i64 95 to i32
  %t439 = icmp eq i32 %t436, %t438
  br i1 %t439, label %bb349, label %bb350
bb349:
  br label %bb351
bb350:
  br label %bb352
bb351:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d151, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb352:
  %t441 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t443 = trunc i64 96 to i32
  %t444 = icmp eq i32 %t441, %t443
  br i1 %t444, label %bb353, label %bb354
bb353:
  br label %bb355
bb354:
  br label %bb356
bb355:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d152, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb356:
  %t446 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t448 = trunc i64 97 to i32
  %t449 = icmp eq i32 %t446, %t448
  br i1 %t449, label %bb357, label %bb358
bb357:
  br label %bb359
bb358:
  br label %bb360
bb359:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d153, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb360:
  %t451 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t453 = trunc i64 98 to i32
  %t454 = icmp eq i32 %t451, %t453
  br i1 %t454, label %bb361, label %bb362
bb361:
  br label %bb363
bb362:
  br label %bb364
bb363:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d154, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb364:
  %t456 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t458 = trunc i64 99 to i32
  %t459 = icmp eq i32 %t456, %t458
  br i1 %t459, label %bb365, label %bb366
bb365:
  br label %bb367
bb366:
  br label %bb368
bb367:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d155, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb368:
  %t461 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t463 = trunc i64 100 to i32
  %t464 = icmp eq i32 %t461, %t463
  br i1 %t464, label %bb369, label %bb370
bb369:
  br label %bb371
bb370:
  br label %bb372
bb371:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d156, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb372:
  %t466 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t468 = trunc i64 101 to i32
  %t469 = icmp eq i32 %t466, %t468
  br i1 %t469, label %bb373, label %bb374
bb373:
  br label %bb375
bb374:
  br label %bb376
bb375:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d157, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb376:
  %t471 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t473 = trunc i64 102 to i32
  %t474 = icmp eq i32 %t471, %t473
  br i1 %t474, label %bb377, label %bb378
bb377:
  br label %bb379
bb378:
  br label %bb380
bb379:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d158, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb380:
  %t476 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t478 = trunc i64 103 to i32
  %t479 = icmp eq i32 %t476, %t478
  br i1 %t479, label %bb381, label %bb382
bb381:
  br label %bb383
bb382:
  br label %bb384
bb383:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d159, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb384:
  %t481 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t483 = trunc i64 104 to i32
  %t484 = icmp eq i32 %t481, %t483
  br i1 %t484, label %bb385, label %bb386
bb385:
  br label %bb387
bb386:
  br label %bb388
bb387:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d160, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb388:
  %t486 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t488 = trunc i64 105 to i32
  %t489 = icmp eq i32 %t486, %t488
  br i1 %t489, label %bb389, label %bb390
bb389:
  br label %bb391
bb390:
  br label %bb392
bb391:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d161, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb392:
  %t491 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t493 = trunc i64 106 to i32
  %t494 = icmp eq i32 %t491, %t493
  br i1 %t494, label %bb393, label %bb394
bb393:
  br label %bb395
bb394:
  br label %bb396
bb395:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d162, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb396:
  %t496 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t498 = trunc i64 107 to i32
  %t499 = icmp eq i32 %t496, %t498
  br i1 %t499, label %bb397, label %bb398
bb397:
  br label %bb399
bb398:
  br label %bb400
bb399:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d163, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb400:
  %t501 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t503 = trunc i64 108 to i32
  %t504 = icmp eq i32 %t501, %t503
  br i1 %t504, label %bb401, label %bb402
bb401:
  br label %bb403
bb402:
  br label %bb404
bb403:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d164, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb404:
  %t506 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t508 = trunc i64 109 to i32
  %t509 = icmp eq i32 %t506, %t508
  br i1 %t509, label %bb405, label %bb406
bb405:
  br label %bb407
bb406:
  br label %bb408
bb407:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d165, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb408:
  %t511 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t513 = trunc i64 110 to i32
  %t514 = icmp eq i32 %t511, %t513
  br i1 %t514, label %bb409, label %bb410
bb409:
  br label %bb411
bb410:
  br label %bb412
bb411:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d166, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb412:
  %t516 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t518 = trunc i64 111 to i32
  %t519 = icmp eq i32 %t516, %t518
  br i1 %t519, label %bb413, label %bb414
bb413:
  br label %bb415
bb414:
  br label %bb416
bb415:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d167, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb416:
  %t521 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t523 = trunc i64 112 to i32
  %t524 = icmp eq i32 %t521, %t523
  br i1 %t524, label %bb417, label %bb418
bb417:
  br label %bb419
bb418:
  br label %bb420
bb419:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d168, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb420:
  %t526 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t528 = trunc i64 113 to i32
  %t529 = icmp eq i32 %t526, %t528
  br i1 %t529, label %bb421, label %bb422
bb421:
  br label %bb423
bb422:
  br label %bb424
bb423:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d169, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb424:
  br i1 true, label %bb425, label %bb426
bb425:
  br label %bb427
bb426:
  br label %bb428
bb427:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d170, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb429
bb428:
  call void @__olang_check_failed(ptr @olang_loc_8335b6838977a45d_7f00c755aebb82a1)
  unreachable
bb429:
  %t531 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t531, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2ftoken_2ecompiler_2ftoken_3aToken_2eHas(%"compiler/token:Token" %a0, i8 %a1) #0 {
entry:
  %l0 = alloca %"compiler/token:Token"
  %rv = alloca i1
  store %"compiler/token:Token" %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/token:Token", ptr %l0, i32 0, i32 1
  %t2 = load i8, ptr %t1, !tbaa !22
  %t6 = and i8 %t2, %a1
  %t8 = icmp ne i8 %t6, 0
  store i1 %t8, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftoken_2espells(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l14 = alloca i64
  %l17 = alloca i64
  %l35 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %rv = alloca i1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store i64 1, ptr %l3, !tbaa !24
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
  br label %bb15
bb9:
  br label %bb10
bb10:
  %t41 = load i64, ptr %l3, !tbaa !24
  %t42 = load i64, ptr %l7, !tbaa !24
  %t43 = load i64, ptr %l5, !tbaa !24
  %t46 = mul i64 %t42, %t43
  %t49 = add i64 %t41, %t46
  store i64 %t49, ptr %l8, !tbaa !24
  store { i64, ptr } %a0, ptr %l35, !tbaa !27
  %t53 = load i64, ptr %l8, !tbaa !24
  %t56 = add i64 %a1, %t53
  %t58 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !27
  %t60 = getelementptr i8, ptr %t59, i64 %t56
  %t61 = load i8, ptr %t60, !tbaa !32
  %t62 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t62, ptr %l40, !tbaa !27
  %t63 = load i64, ptr %l8, !tbaa !24
  %t65 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !27
  %t67 = getelementptr i8, ptr %t66, i64 %t63
  %t68 = load i8, ptr %t67, !tbaa !32
  %t71 = icmp ne i8 %t61, %t68
  br i1 %t71, label %bb11, label %bb12
bb11:
  store i1 false, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t74 = load i64, ptr %l7, !tbaa !24
  %t76 = add i64 %t74, 1
  store i64 %t76, ptr %l7, !tbaa !24
  br label %bb7
bb15:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/token:Token" @compiler_2ftoken_3aToken_2ector(ptr %v0, i32 %a0, i8 %a1, i32 %a2, i32 %a3) #0 {
entry:
  %rv = alloca %"compiler/token:Token"
  br label %start
start:
  br label %bb0
bb0:
  %t10 = insertvalue %"compiler/token:Token" undef, i32 %a0, 0
  %t12 = insertvalue %"compiler/token:Token" %t10, i8 %a1, 1
  %t14 = insertvalue %"compiler/token:Token" %t12, i32 %a2, 2
  %t16 = insertvalue %"compiler/token:Token" %t14, i32 %a3, 3
  store %"compiler/token:Token" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/token:Token", ptr %rv
  ret %"compiler/token:Token" %rr
}

@.d0 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"any" }>, align 8
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
@.d1 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"and" }>, align 8
@.d2 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"assert" }>, align 8
@.d3 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"borrows" }>, align 8
@.d4 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"break" }>, align 8
@.d5 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"become" }>, align 8
@.d6 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"commutes" }>, align 8
@.d7 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"case" }>, align 8
@.d8 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"catch" }>, align 8
@.d9 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"continue" }>, align 8
@.d10 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"comptime" }>, align 8
@.d11 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"defer" }>, align 8
@.d12 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"default" }>, align 8
@.d13 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"destruct" }>, align 8
@.d14 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"else" }>, align 8
@.d15 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"enum" }>, align 8
@.d16 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"embed" }>, align 8
@.d17 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"error" }>, align 8
@.d18 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"extends" }>, align 8
@.d19 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"errdefer" }>, align 8
@.d20 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"extern" }>, align 8
@.d21 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"for" }>, align 8
@.d22 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"false" }>, align 8
@.d23 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"immut" }>, align 8
@.d24 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"import" }>, align 8
@.d25 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"join" }>, align 8
@.d26 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"mut" }>, align 8
@.d27 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"match" }>, align 8
@.d28 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"noalloc" }>, align 8
@.d29 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"noblock" }>, align 8
@.d30 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"nospawn" }>, align 8
@.d31 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"norecurse" }>, align 8
@.d32 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"noextern" }>, align 8
@.d33 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"noborrow" }>, align 8
@.d34 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"not" }>, align 8
@.d35 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d36 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"noreturn" }>, align 8
@.d37 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"returns" }>, align 8
@.d38 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"range" }>, align 8
@.d39 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"return" }>, align 8
@.d40 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"spawn" }>, align 8
@.d41 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"struct" }>, align 8
@.d42 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"try" }>, align 8
@.d43 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"type" }>, align 8
@.d44 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"test" }>, align 8
@.d45 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"true" }>, align 8
@.d46 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"trait" }>, align 8
@.d47 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"keeps" }>, align 8
@.d48 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"pure" }>, align 8
@.d49 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"packed" }>, align 8
@.d50 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"unique" }>, align 8
@.d51 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"unreachable" }>, align 8
@.d52 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"xor" }>, align 8
@.d53 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"weak" }>, align 8
@.d54 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"yield" }>, align 8
declare void @__olang_check_failed(ptr) cold noreturn
@.d55 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"end of file" }>, align 8
@.d56 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"a name" }>, align 8
@.d57 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"an integer literal" }>, align 8
@.d58 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"a float literal" }>, align 8
@.d59 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"a character literal" }>, align 8
@.d60 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"a string literal" }>, align 8
@.d61 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"a Bool literal" }>, align 8
@.d62 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"end of line" }>, align 8
@.d63 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
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
@.d64 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"if" }>, align 8
@.d65 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"else" }>, align 8
@.d66 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"try" }>, align 8
@.d67 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"catch" }>, align 8
@.d68 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"return" }>, align 8
@.d69 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"join" }>, align 8
@.d70 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"spawn" }>, align 8
@.d71 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"defer" }>, align 8
@.d72 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"errdefer" }>, align 8
@.d73 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"embed" }>, align 8
@.d74 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"break" }>, align 8
@.d75 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"continue" }>, align 8
@.d76 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"unreachable" }>, align 8
@.d77 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"extends" }>, align 8
@.d78 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"noreturn" }>, align 8
@.d79 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"assert" }>, align 8
@.d80 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"for" }>, align 8
@.d81 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"do" }>, align 8
@.d82 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"in" }>, align 8
@.d83 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"is" }>, align 8
@.d84 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"as" }>, align 8
@.d85 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"range" }>, align 8
@.d86 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"match" }>, align 8
@.d87 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"case" }>, align 8
@.d88 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"type" }>, align 8
@.d89 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"struct" }>, align 8
@.d90 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"enum" }>, align 8
@.d91 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"trait" }>, align 8
@.d92 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"fn" }>, align 8
@.d93 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"error" }>, align 8
@.d94 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"mut" }>, align 8
@.d95 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"import" }>, align 8
@.d96 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"test" }>, align 8
@.d97 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"destruct" }>, align 8
@.d98 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"extern" }>, align 8
@.d99 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"default" }>, align 8
@.d100 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"and" }>, align 8
@.d101 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"or" }>, align 8
@.d102 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"xor" }>, align 8
@.d103 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"not" }>, align 8
@.d104 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"yield" }>, align 8
@.d105 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"become" }>, align 8
@.d106 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"comptime" }>, align 8
@.d107 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"any" }>, align 8
@.d108 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"unique" }>, align 8
@.d109 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"immut" }>, align 8
@.d110 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"packed" }>, align 8
@.d111 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"commutes" }>, align 8
@.d112 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"returns" }>, align 8
@.d113 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"noalloc" }>, align 8
@.d114 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"noblock" }>, align 8
@.d115 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"nospawn" }>, align 8
@.d116 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"norecurse" }>, align 8
@.d117 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"noextern" }>, align 8
@.d118 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"pure" }>, align 8
@.d119 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"keeps" }>, align 8
@.d120 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"borrows" }>, align 8
@.d121 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"noborrow" }>, align 8
@.d122 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"weak" }>, align 8
@.d123 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d124 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"+" }>, align 8
@.d125 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"-" }>, align 8
@.d126 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"*" }>, align 8
@.d127 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"**" }>, align 8
@.d128 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d129 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"%" }>, align 8
@.d130 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"@" }>, align 8
@.d131 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"," }>, align 8
@.d132 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d133 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"?" }>, align 8
@.d134 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"=" }>, align 8
@.d135 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d136 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c":=" }>, align 8
@.d137 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"+=" }>, align 8
@.d138 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-=" }>, align 8
@.d139 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"*=" }>, align 8
@.d140 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"**=" }>, align 8
@.d141 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"/=" }>, align 8
@.d142 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"%=" }>, align 8
@.d143 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"<<=" }>, align 8
@.d144 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c">>=" }>, align 8
@.d145 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"&=" }>, align 8
@.d146 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"|=" }>, align 8
@.d147 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"^=" }>, align 8
@.d148 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"++" }>, align 8
@.d149 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"--" }>, align 8
@.d150 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"==" }>, align 8
@.d151 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"!=" }>, align 8
@.d152 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"!" }>, align 8
@.d153 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"<" }>, align 8
@.d154 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"<=" }>, align 8
@.d155 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c">" }>, align 8
@.d156 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c">=" }>, align 8
@.d157 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"&" }>, align 8
@.d158 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"|" }>, align 8
@.d159 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"^" }>, align 8
@.d160 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"~" }>, align 8
@.d161 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"$" }>, align 8
@.d162 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"<<" }>, align 8
@.d163 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c">>" }>, align 8
@.d164 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d165 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d166 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"[" }>, align 8
@.d167 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"]" }>, align 8
@.d168 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"{" }>, align 8
@.d169 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"}" }>, align 8
@.d170 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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
@olang_loc_a8f8505ea607fe55_8ebbaef23bfb5239 = external constant [0 x i8]
@olang_loc_68bd4249b8d73c4b_5d7571019b0b81ef = external constant [0 x i8]
@olang_loc_4831fd819d5e12f9_2de476e8196a26d = external constant [0 x i8]
@olang_loc_8335b6838977a45d_7f00c755aebb82a1 = external constant [0 x i8]

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
